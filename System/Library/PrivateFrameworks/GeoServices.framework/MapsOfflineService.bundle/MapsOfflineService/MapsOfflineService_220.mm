void sub_D0E1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0E1DC(uint64_t a1, char *__s, char *a3, unsigned int *a4)
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

uint64_t sub_D0E32C(__int128 **a1, char *a2, char *a3, int *a4)
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
  sub_D0E4E0(v17 * 16, a2, a3, a4);
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

void sub_D0E4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0E4E0(uint64_t a1, char *__s, char *a3, int *a4)
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

__int128 *sub_D0E630(uint64_t *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      sub_1794();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = 16 * (a2 - v11);
    v81 = v30;
    v31 = 48 * a5;
    v32 = v30 + 48 * a5;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v30, *v7, *(v7 + 1));
      }

      else
      {
        v33 = *v7;
        *(v30 + 16) = *(v7 + 2);
        *v30 = v33;
      }

      v34 = *(v7 + 24);
      *(v30 + 40) = *(v7 + 10);
      *(v30 + 24) = v34;
      v30 += 48;
      v7 += 3;
      v31 -= 48;
    }

    while (v31);
    v35 = a1[1];
    v36 = v5;
    if (v35 != v5)
    {
      v37 = v5;
      v38 = v32;
      do
      {
        v39 = *v37;
        *(v38 + 16) = *(v37 + 2);
        *v38 = v39;
        *(v37 + 1) = 0;
        *(v37 + 2) = 0;
        *v37 = 0;
        v40 = *(v37 + 24);
        *(v38 + 40) = *(v37 + 10);
        *(v38 + 24) = v40;
        v37 += 3;
        v38 += 48;
      }

      while (v37 != v35);
      v41 = v5;
      do
      {
        if (*(v41 + 23) < 0)
        {
          operator delete(*v41);
        }

        v41 += 3;
      }

      while (v41 != v35);
      v36 = a1[1];
    }

    v42 = v32 + v36 - v5;
    a1[1] = v5;
    v43 = *a1;
    v44 = v81 + *a1 - v5;
    if (*a1 != v5)
    {
      v45 = *a1;
      v46 = v81 + *a1 - v5;
      do
      {
        v47 = *v45;
        *(v46 + 16) = *(v45 + 2);
        *v46 = v47;
        *(v45 + 1) = 0;
        *(v45 + 2) = 0;
        *v45 = 0;
        v48 = *(v45 + 24);
        *(v46 + 40) = *(v45 + 10);
        *(v46 + 24) = v48;
        v45 += 3;
        v46 += 48;
      }

      while (v45 != v5);
      do
      {
        if (*(v43 + 23) < 0)
        {
          operator delete(*v43);
        }

        v43 += 3;
      }

      while (v43 != v5);
      v43 = *a1;
    }

    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v43)
    {
      operator delete(v43);
    }

    return v81;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) < a5)
  {
    v16 = (a3 + v15);
    v17 = sub_D0EC10(a1, (a3 + v15), a4, a1[1]);
    v18 = v17;
    a1[1] = v17;
    if (v15 >= 1)
    {
      v19 = v17 - 48 * a5;
      if (v19 >= v10)
      {
        v21 = v17;
      }

      else
      {
        v20 = v17 - 48 * a5;
        v21 = v17;
        do
        {
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *v20 = 0;
          v23 = *(v20 + 24);
          *(v21 + 40) = *(v20 + 40);
          *(v21 + 24) = v23;
          v20 += 48;
          v21 += 48;
        }

        while (v20 < v10);
      }

      a1[1] = v21;
      if (v17 != &v5[3 * a5])
      {
        v66 = 0;
        v67 = &v5[3 * a5] - v17;
        do
        {
          v71 = &v66[v18];
          v72 = &v66[v18 - 48];
          if (v66[v18 - 25] < 0)
          {
            operator delete(*v72);
          }

          v68 = &v66[v19 - 48];
          v69 = *v68;
          *&v66[v18 - 32] = *&v66[v19 - 32];
          *v72 = v69;
          v66[v19 - 25] = 0;
          *v68 = 0;
          v70 = *&v66[v19 - 24];
          *(v71 - 2) = *&v66[v19 - 8];
          *(v71 - 24) = v70;
          v66 -= 48;
        }

        while (v67 != v66);
      }

      v73 = 0;
      do
      {
        v77 = &v5[v73];
        v78 = &v7[v73];
        if (v7 != v5)
        {
          v79 = *(v78 + 23);
          if (*(v77 + 23) < 0)
          {
            if (v79 >= 0)
            {
              v74 = &v7[v73];
            }

            else
            {
              v74 = *&v7[v73];
            }

            if (v79 >= 0)
            {
              v75 = *(v78 + 23);
            }

            else
            {
              v75 = *(&v7[v73] + 1);
            }

            sub_13B38(&v5[v73], v74, v75);
          }

          else if ((*(v78 + 23) & 0x80) != 0)
          {
            sub_13A68(&v5[v73], *&v7[v73], *(&v7[v73] + 1));
          }

          else
          {
            v80 = *v78;
            *(v77 + 2) = *(v78 + 2);
            *v77 = v80;
          }
        }

        v76 = *(v78 + 24);
        *(v77 + 10) = *(v78 + 10);
        *(v77 + 24) = v76;
        v73 += 3;
      }

      while (&v7[v73] != v16);
    }

    return v5;
  }

  v24 = &a2[3 * a5];
  v25 = v10 - 48 * a5;
  if (v25 >= v10)
  {
    a1[1] = v10;
    if (v10 == v24)
    {
      goto LABEL_53;
    }

LABEL_49:
    v50 = 0;
    v51 = &a2[3 * a5] - v10;
    do
    {
      v55 = &v50[v10];
      v56 = &v50[v10 - 48];
      if (v50[v10 - 25] < 0)
      {
        operator delete(*v56);
      }

      v52 = &v50[v25 - 48];
      v53 = *v52;
      *&v50[v10 - 32] = *&v50[v25 - 32];
      *v56 = v53;
      v50[v25 - 25] = 0;
      *v52 = 0;
      v54 = *&v50[v25 - 24];
      *(v55 - 2) = *&v50[v25 - 8];
      *(v55 - 24) = v54;
      v50 -= 48;
    }

    while (v51 != v50);
    goto LABEL_53;
  }

  v26 = v10 - 48 * a5;
  v27 = a1[1];
  do
  {
    v28 = *v26;
    *(v27 + 16) = *(v26 + 16);
    *v27 = v28;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = 0;
    v29 = *(v26 + 24);
    *(v27 + 40) = *(v26 + 40);
    *(v27 + 24) = v29;
    v26 += 48;
    v27 += 48;
  }

  while (v26 < v10);
  a1[1] = v27;
  if (v10 != v24)
  {
    goto LABEL_49;
  }

LABEL_53:
  v57 = 0;
  v58 = &v7[3 * a5];
  do
  {
    v62 = &v5[v57];
    v63 = &v7[v57];
    if (v7 != v5)
    {
      v64 = *(v63 + 23);
      if (*(v62 + 23) < 0)
      {
        if (v64 >= 0)
        {
          v59 = &v7[v57];
        }

        else
        {
          v59 = *&v7[v57];
        }

        if (v64 >= 0)
        {
          v60 = *(v63 + 23);
        }

        else
        {
          v60 = *(&v7[v57] + 1);
        }

        sub_13B38(&v5[v57], v59, v60);
      }

      else if ((*(v63 + 23) & 0x80) != 0)
      {
        sub_13A68(&v5[v57], *&v7[v57], *(&v7[v57] + 1));
      }

      else
      {
        v65 = *v63;
        *(v62 + 2) = *(v63 + 2);
        *v62 = v65;
      }
    }

    v61 = *(v63 + 24);
    *(v62 + 10) = *(v63 + 10);
    *(v62 + 24) = v61;
    v57 += 3;
  }

  while (&v7[v57] != v58);
  return v5;
}

void sub_D0EBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D0EC10(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v4, *v7, *(v7 + 1));
        v9 = v11;
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
        v9 = v4;
      }

      v10 = *(v7 + 24);
      *(v4 + 40) = *(v7 + 10);
      *(v4 + 24) = v10;
      v7 += 3;
      v4 = v9 + 48;
      v11 = v9 + 48;
    }

    while (v7 != a3);
  }

  return v4;
}

uint64_t sub_D0ECD8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D0ED74(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D0ED74(uint64_t a1)
{
  v2 = *(a1 + 5040);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673638[v4])(&v14, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 5024);
  *(a1 + 5024) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 5023) < 0)
  {
    operator delete(*(a1 + 5000));
  }

  v6 = *(a1 + 4976);
  if (v6)
  {
    *(a1 + 4984) = v6;
    operator delete(v6);
  }

  sub_5C0F34(a1 + 1136);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = *(a1 + 1120);
    v9 = *(a1 + 1112);
    if (v8 != v7)
    {
      do
      {
        v8 = sub_3A9518(v8 - 1120);
      }

      while (v8 != v7);
      v9 = *(a1 + 1112);
    }

    *(a1 + 1120) = v7;
    operator delete(v9);
  }

  sub_559E70((a1 + 24));
  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 8);
    v12 = *a1;
    if (v11 != v10)
    {
      do
      {
        v11 = sub_789448(v11 - 7808);
      }

      while (v11 != v10);
      v12 = *a1;
    }

    *(a1 + 8) = v10;
    operator delete(v12);
  }

  return a1;
}

void sub_D0EECC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_559C9C(a1 + 24);
  bzero((a1 + 1112), 0x348uLL);
  sub_5C0A00(a1 + 1136);
  *(a1 + 2144) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2154) = 0u;
  sub_787B20(a1 + 2176);
  sub_D09A7C(a1 + 1952, v2);
  *__p = *v2;
  v5 = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  sub_44F3E4(a1 + 5000, __p);
}

void sub_D0F010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_9DA0(&a9);
  v22 = *(v20 + 4976);
  if (v22)
  {
    *(v20 + 4984) = v22;
    operator delete(v22);
  }

  sub_D0AA6C(v20 + 24);
  sub_785D84(v20);
  _Unwind_Resume(a1);
}

void sub_D0F064(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1112));
  sub_559E70((v1 + 24));
  sub_785D84(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D0F09C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D0F138(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D0F138(uint64_t a1)
{
  v2 = *(a1 + 5040);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673638[v4])(&v14, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 5024);
  *(a1 + 5024) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 5023) < 0)
  {
    operator delete(*(a1 + 5000));
  }

  v6 = *(a1 + 4976);
  if (v6)
  {
    *(a1 + 4984) = v6;
    operator delete(v6);
  }

  sub_5C0F34(a1 + 1136);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = *(a1 + 1120);
    v9 = *(a1 + 1112);
    if (v8 != v7)
    {
      do
      {
        v8 = sub_3A9518(v8 - 1120);
      }

      while (v8 != v7);
      v9 = *(a1 + 1112);
    }

    *(a1 + 1120) = v7;
    operator delete(v9);
  }

  sub_559E70((a1 + 24));
  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 8);
    v12 = *a1;
    if (v11 != v10)
    {
      do
      {
        v11 = sub_78B5C0(v11 - 7808);
      }

      while (v11 != v10);
      v12 = *a1;
    }

    *(a1 + 8) = v10;
    operator delete(v12);
  }

  return a1;
}

void sub_D0F290(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_559C9C(a1 + 24);
  bzero((a1 + 1112), 0x348uLL);
  sub_5C0A00(a1 + 1136);
  *(a1 + 2144) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2154) = 0u;
  sub_787B20(a1 + 2176);
  sub_D09A7C(a1 + 1952, v2);
  *__p = *v2;
  v5 = v3;
  v2[1] = 0;
  v3 = 0;
  v2[0] = 0;
  sub_44F3E4(a1 + 5000, __p);
}

void sub_D0F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_9DA0(&a9);
  v22 = *(v20 + 4976);
  if (v22)
  {
    *(v20 + 4984) = v22;
    operator delete(v22);
  }

  sub_D0AA6C(v20 + 24);
  sub_5DAA94(v20);
  _Unwind_Resume(a1);
}

void sub_D0F428(_Unwind_Exception *a1)
{
  sub_5706DC((v1 + 1112));
  sub_559E70((v1 + 24));
  sub_5DAA94(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D0F460(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D0F4FC(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D0F4FC(uint64_t a1)
{
  v2 = *(a1 + 5040);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673638[v4])(&v14, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 5024);
  *(a1 + 5024) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 5023) < 0)
  {
    operator delete(*(a1 + 5000));
  }

  v6 = *(a1 + 4976);
  if (v6)
  {
    *(a1 + 4984) = v6;
    operator delete(v6);
  }

  sub_5C0F34(a1 + 1136);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = *(a1 + 1120);
    v9 = *(a1 + 1112);
    if (v8 != v7)
    {
      do
      {
        v8 = sub_3A9518(v8 - 1120);
      }

      while (v8 != v7);
      v9 = *(a1 + 1112);
    }

    *(a1 + 1120) = v7;
    operator delete(v9);
  }

  sub_559E70((a1 + 24));
  v10 = *a1;
  if (*a1)
  {
    v11 = *(a1 + 8);
    v12 = *a1;
    if (v11 != v10)
    {
      do
      {
        v11 = sub_5C1158(v11 - 7808);
      }

      while (v11 != v10);
      v12 = *a1;
    }

    *(a1 + 8) = v10;
    operator delete(v12);
  }

  return a1;
}

void sub_D0F654()
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
  xmmword_27B4D88 = 0u;
  unk_27B4D98 = 0u;
  dword_27B4DA8 = 1065353216;
  sub_3A9A34(&xmmword_27B4D88, v0, v0);
  sub_3A9A34(&xmmword_27B4D88, v3, v3);
  sub_3A9A34(&xmmword_27B4D88, __p, __p);
  sub_3A9A34(&xmmword_27B4D88, v9, v9);
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
    qword_27B4D30 = 0;
    qword_27B4D38 = 0;
    qword_27B4D28 = 0;
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

void sub_D0FA6C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  v10 = a2;
  if (byte_27B4E6F < 0)
  {
    sub_21E42CC();
  }

  sub_21E42EC(a1, v10, &exception_object);
  _Unwind_Resume(exception_object);
}

void sub_D0FA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4D40)
  {
    qword_27B4D48 = qword_27B4D40;
    operator delete(qword_27B4D40);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_D0FB60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  strcpy(v13, "HikingTourLookupModule");
  HIBYTE(v13[2]) = 22;
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_3AEC94(a2, v13, &__p);
  v16 = 0;
  v17 = 0;
  v15 = a2;
  sub_D0FC90(v14, a1, a3);
  v6 = __p;
  if (__p)
  {
    v7 = v11;
    v8 = __p;
    if (v11 != __p)
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
      v8 = __p;
    }

    v11 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_D0FC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D0FC90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v26);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 16);
  if ((sub_6EECC() & 1) == 0)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_31:
      *a3 = 0;
      v27.n128_u64[0] = 1;
      v27.n128_u64[1] = &off_2669FE0;
      sub_434934((a3 + 8), &v27);
      return;
    }

    sub_19594F8(v27.n128_f64);
    sub_4A5C(&v27, "Inconsistent input provided to hiking tour lookup module; failing module.", 73);
    if ((v36 & 0x10) != 0)
    {
      v13 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v13 = v32;
      }

      v14 = v31;
      v11 = v13 - v31;
      if (v13 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v11 = 0;
        BYTE7(v24) = 0;
LABEL_26:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 3u);
        if (SBYTE7(v24) < 0)
        {
          operator delete(__dst);
        }

        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_31;
      }

      v14 = v29;
      v11 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    BYTE7(v24) = v11;
    if (v11)
    {
      memmove(&__dst, v14, v11);
    }

    goto LABEL_26;
  }

  v25 = 0;
  __dst = 0u;
  v24 = 0u;
  sub_D10FF4(&__dst, 0x14C1BACF914C1BADLL * ((*(a2 + 1632) - *(a2 + 1624)) >> 4));
  v7 = *(a2 + 1624);
  for (i = *(a2 + 1632); v7 != i; v7 += 148)
  {
    sub_D103B8(a1, v7, &v27);
    v10 = *(&__dst + 1);
    if (*(&__dst + 1) < v24)
    {
      **(&__dst + 1) = v27.n128_u32[0];
      sub_4C6AE8(v10 + 8, &v27.n128_i64[1]);
      v9 = (v10 + 1104);
    }

    else
    {
      v9 = sub_D11158(&__dst, &v27);
    }

    *(&__dst + 1) = v9;
    sub_3EEA68(&v27.n128_i64[1]);
  }

  if (sub_D11318(a2, &__dst))
  {
    *v6 = sub_7EA60(v26);
    *a3 = 1;
    *(a3 + 8) = __dst;
    *(a3 + 24) = v24;
    *(a3 + 32) = *v6;
    return;
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_47;
  }

  sub_19594F8(v27.n128_f64);
  sub_4A5C(&v27, "Inconsistent output computed whilst processing hiking tour lookup module; failing solution.", 91);
  if ((v36 & 0x10) != 0)
  {
    v15 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v15 = v32;
    }

    v16 = v31;
    v12 = v15 - v31;
    if (v15 - v31 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_54:
      sub_3244();
    }

LABEL_37:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v22 = v12;
    if (v12)
    {
      memmove(&v21, v16, v12);
    }

    goto LABEL_42;
  }

  if ((v36 & 8) != 0)
  {
    v16 = v29;
    v12 = v30 - v29;
    if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v12 = 0;
  v22 = 0;
LABEL_42:
  *(&v21 + v12) = 0;
  sub_7E854(&v21, 3u);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v28);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_47:
  *a3 = 0;
  v27.n128_u64[0] = 3;
  v27.n128_u64[1] = &off_2669FE0;
  sub_434934((a3 + 8), &v27);
  v17 = __dst;
  if (__dst)
  {
    v18 = *(&__dst + 1);
    v19 = __dst;
    if (*(&__dst + 1) != __dst)
    {
      do
      {
        v20 = v18 - 1104;
        sub_3EEA68(v18 - 1096);
        v18 = v20;
      }

      while (v20 != v17);
      v19 = __dst;
    }

    *(&__dst + 1) = v17;
    operator delete(v19);
  }
}

void sub_D102A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a24);
    sub_D10F8C(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a24);
  sub_D10F8C(&a16);
  _Unwind_Resume(a1);
}

void sub_D10300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D10314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a24);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a24);
  _Unwind_Resume(a1);
}

void sub_D10360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D10374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D10388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3EEA68(v9 + 8);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

void sub_D103A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_D10F8C(va);
  _Unwind_Resume(a1);
}

double sub_D103B8@<D0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (a2[146] == 4)
  {
    if (a2[2])
    {
      v4 = a2[3] == -1;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v9 = sub_6EECC();
      if (v9)
      {
        if (a2[146] == 4)
        {
          sub_D10D0C(a1, a2);
        }

        sub_5AF20();
      }

      if (!sub_7E7E4(3u))
      {
        goto LABEL_36;
      }

      sub_19594F8(&v23);
      sub_4A5C(&v23, "Inconsistent hiking tour lookup parameters provided to hiking tour lookup module; failing solution.", 99);
      if ((v33 & 0x10) != 0)
      {
        v18 = v32;
        if (v32 < v29)
        {
          v32 = v29;
          v18 = v29;
        }

        v19 = &v28;
      }

      else
      {
        if ((v33 & 8) == 0)
        {
          v10 = 0;
          v22 = 0;
LABEL_66:
          *(&__dst + v10) = 0;
          sub_7E854(&__dst, 3u);
          goto LABEL_31;
        }

        v19 = &v26;
        v18 = v27;
      }

      v20 = *v19;
      v10 = v18 - *v19;
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v22 = v18 - *v19;
      if (v10)
      {
        memmove(&__dst, v20, v10);
      }

      goto LABEL_66;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_52:
      v13 = a3;
      v14 = 17;
      return sub_D11644(v14, v13);
    }

    sub_19594F8(&v23);
    sub_4A5C(&v23, "Provided place request parameters are not valid; skipping solution in hiking tour lookup module.", 96);
    if ((v33 & 0x10) != 0)
    {
      v15 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v15 = v29;
      }

      v16 = v28;
      v5 = v15 - v28;
      if (v15 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v5 = 0;
        v22 = 0;
LABEL_47:
        *(&__dst + v5) = 0;
        sub_7E854(&__dst, 2u);
        if (v22 < 0)
        {
          operator delete(__dst);
        }

        if (v31 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_52;
      }

      v16 = v26;
      v5 = v27 - v26;
      if (v27 - v26 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v22 = v5;
    if (v5)
    {
      memmove(&__dst, v16, v5);
    }

    goto LABEL_47;
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v23);
    sub_4A5C(&v23, "Unknown type of place request parameters provided; skipping solution in hiking tour lookup module.", 98);
    if ((v33 & 0x10) != 0)
    {
      v11 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v11 = v29;
      }

      v12 = v28;
      v6 = v11 - v28;
      if (v11 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v6 = 0;
        v22 = 0;
LABEL_30:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 2u);
LABEL_31:
        if (v22 < 0)
        {
          operator delete(__dst);
        }

        if (v31 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_36;
      }

      v12 = v26;
      v6 = v27 - v26;
      if (v27 - v26 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_44:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v22 = v6;
    if (v6)
    {
      memmove(&__dst, v12, v6);
    }

    goto LABEL_30;
  }

LABEL_36:
  v13 = a3;
  v14 = 1;
  return sub_D11644(v14, v13);
}

void sub_D10BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  sub_3EEA68(&a49);
  _Unwind_Resume(a1);
}

void sub_D10C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a48);
  _Unwind_Resume(a1);
}

void sub_D10D0C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v16 = -1;
  v17 = 0xFFFF;
  v18 = -1;
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  *&v23[4] = 0u;
  v21 = 0x7FFFFFFF;
  v22 = 0x7FFFFFFF;
  *v23 = 0x7FFFFFFF7FFFFFFFLL;
  v24 = 0x8000000080000000;
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v29 = 0x7FFFFFFF;
  v30 = 0x8000000080000000;
  v31 = 0;
  v32 = 0;
  v33 = xmmword_2266550;
  v34 = -1;
  v35 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0x7FFFFFFF;
  *&v39[4] = 0u;
  v38 = 0x7FFFFFFF;
  *v39 = 0x7FFFFFFF7FFFFFFFLL;
  v40 = 0x8000000080000000;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v44 = 0;
  v45 = 0x7FFFFFFF;
  v46 = 0x8000000080000000;
  v47 = 0;
  v48 = 0;
  v49 = xmmword_2266550;
  v50 = 0x7FFFFFFF;
  v51 = 0x7FFFFFFF7FFFFFFFLL;
  v53 = 0;
  v52 = 0u;
  v54 = 0x8000000080000000;
  v55 = 0x7FFFFFFF;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = 0x8000000080000000;
  v58 = 0x7FFFFFFF;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  *&v5 = 0x8000000080000000;
  *(&v5 + 1) = 0x8000000080000000;
  v73 = 0u;
  v74 = v5;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v75 = v5;
  v76 = 0u;
  sub_7E9A4(v6);
  sub_11613A0(*(a1 + 8), *(a2 + 8));
}

char **sub_D10F8C(char **a1)
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
        v5 = v3 - 1104;
        sub_3EEA68((v3 - 1096));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D10FF4(uint64_t *a1, unint64_t a2)
{
  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x3B5CC0ED7303B6)
    {
      operator new();
    }

    sub_1794();
  }
}

char *sub_D11158(void **a1, _DWORD *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x3B5CC0ED7303B5)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 4) >= 0x1DAE6076B981DALL)
  {
    v5 = 0x3B5CC0ED7303B5;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x3B5CC0ED7303B5)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (16 * ((a1[1] - *a1) >> 4));
  *v6 = *a2;
  sub_4C6AE8(1104 * v2 + 8, (a2 + 2));
  v7 = *a1;
  v8 = a1[1];
  v9 = 1104 * v2 - (v8 - *a1);
  if (v8 != *a1)
  {
    v10 = 1104 * v2 - 16 * ((v8 - *a1) >> 4) + 8;
    v11 = *a1;
    do
    {
      *(v10 - 8) = *v11;
      sub_4C6AE8(v10, (v11 + 8));
      v11 += 1104;
      v10 = v12 + 1104;
    }

    while (v11 != v8);
    do
    {
      sub_3EEA68((v7 + 8));
      v7 += 1104;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6 + 276;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return (v6 + 276);
}

uint64_t sub_D11300(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  else
  {
    return sub_4D6530((a1 + 8));
  }
}

BOOL sub_D11318(uint64_t a1, void *a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((*(a1 + 1632) - *(a1 + 1624)) >> 4);
  v3 = 0xF128CFC4A33F128DLL * ((a2[1] - *a2) >> 4);
  if (v2 == v3 || !sub_7E7E4(1u))
  {
    return v2 == v3;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The hiking tour lookup module output has a different number of solutions than there are place request parameters in the hiking tour lookup module request: ", 155);
  v4 = std::ostream::operator<<();
  sub_4A5C(v4, " != ", 4);
  std::ostream::operator<<();
  if ((v21 & 0x10) != 0)
  {
    v6 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v6 = v17;
    }

    v7 = v16;
    v5 = v6 - v16;
    if (v6 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v5 >= 0x17)
    {
      operator new();
    }

    v10 = v5;
    if (v5)
    {
      memmove(&__p, v7, v5);
    }

    goto LABEL_14;
  }

  if ((v21 & 8) != 0)
  {
    v7 = v14;
    v5 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v5 = 0;
  v10 = 0;
LABEL_14:
  *(&__p + v5) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return v2 == v3;
}

void sub_D11600(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

double sub_D11644@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 128) = -1;
  *(a2 + 136) = 0xFFFF;
  *(a2 + 144) = -1;
  *(a2 + 146) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 166) = 0;
  *(a2 + 176) = 0x7FFFFFFF;
  *(a2 + 192) = 0u;
  *(a2 + 184) = 0x7FFFFFFF;
  *(a2 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a2 + 208) = 0x8000000080000000;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 268) = 0x7FFFFFFF;
  *(a2 + 272) = 0x8000000080000000;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = xmmword_2266550;
  *(a2 + 320) = -1;
  *(a2 + 322) = 0;
  *(a2 + 342) = 0;
  *(a2 + 328) = 0u;
  *(a2 + 352) = 0x7FFFFFFF;
  *(a2 + 368) = 0u;
  *(a2 + 360) = 0x7FFFFFFF;
  *(a2 + 364) = 0x7FFFFFFF7FFFFFFFLL;
  *(a2 + 384) = 0x8000000080000000;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 444) = 0x7FFFFFFF;
  *(a2 + 448) = 0x8000000080000000;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 480) = xmmword_2266550;
  *(a2 + 496) = 0x7FFFFFFF;
  *(a2 + 500) = 0x7FFFFFFF7FFFFFFFLL;
  *(a2 + 528) = 0;
  *(a2 + 512) = 0u;
  *(a2 + 536) = 0x8000000080000000;
  *(a2 + 544) = 0x7FFFFFFF;
  *(a2 + 552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 560) = 0x8000000080000000;
  *(a2 + 568) = 0x7FFFFFFF;
  *(a2 + 768) = 0u;
  *(a2 + 784) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  *(a2 + 800) = 0u;
  *(a2 + 816) = v3;
  *(a2 + 1088) = 0u;
  *(a2 + 1072) = 0u;
  *(a2 + 1056) = 0u;
  *(a2 + 1040) = 0u;
  *(a2 + 1008) = 0u;
  *(a2 + 1024) = 0u;
  *(a2 + 976) = 0u;
  *(a2 + 992) = 0u;
  *(a2 + 944) = 0u;
  *(a2 + 960) = 0u;
  *(a2 + 912) = 0u;
  *(a2 + 928) = 0u;
  *(a2 + 880) = 0u;
  *(a2 + 896) = 0u;
  *(a2 + 848) = 0u;
  *(a2 + 864) = 0u;
  *(a2 + 832) = v3;
  *a2 = a1;
  return result;
}

uint64_t sub_D117AC@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  v4 = (a2 + 24);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  strcpy(a2, "HikingTourLookupModule");
  *(a2 + 23) = 22;
  v10 = 1;
  v5 = sub_CCEBC0((a2 + 24), "Runtime", &v10, a1);
  v6 = v5;
  v7 = *(a2 + 40);
  *(a2 + 32) = v5;
  v9 = 1;
  if (v5 >= v7)
  {
    result = sub_D118C8(v4, "Runtime.HikingTourLookup", &v9, a1 + 1);
  }

  else
  {
    sub_D11A7C(v5, "Runtime.HikingTourLookup", &v9, a1 + 1);
    result = v6 + 48;
  }

  *(a2 + 32) = result;
  return result;
}

void sub_D1189C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D118C8(__int128 **a1, char *a2, char *a3, double *a4)
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
  sub_D11A7C(v17 * 16, a2, a3, a4);
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

void sub_D11A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D11A7C(uint64_t a1, char *__s, char *a3, double *a4)
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

void sub_D11BD4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v69);
  *a2 = 1;
  *(a2 + 8) = 0u;
  v4 = a2 + 8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 66) = 0u;
  *(a2 + 82) = 1;
  *(a2 + 88) = 0;
  v5 = a1[2];
  *v59 = a1[4];
  v6 = sub_E6359C(v68, v5, v59);
  sub_E63864(v6, a1, v59);
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *(a2 + 16);
    v9 = *v4;
    if (v8 != v7)
    {
      do
      {
        v8 = sub_44FDEC(v8 - 440);
      }

      while (v8 != v7);
      v9 = *v4;
    }

    *(a2 + 16) = v7;
    operator delete(v9);
  }

  *(a2 + 8) = *v59;
  *(a2 + 24) = *&v59[16];
  if (!sub_E65180(v68, (a2 + 8)))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_64;
    }

    sub_19594F8(v59);
    sub_4A5C(v59, "InputPointTransformerModule::run failed", 39);
    if ((v67 & 0x10) != 0)
    {
      v34 = v66;
      if (v66 < v63)
      {
        v66 = v63;
        v34 = v63;
      }

      v35 = v62;
      v33 = v34 - v62;
      if (v34 - v62 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if ((v67 & 8) == 0)
      {
        v33 = 0;
        BYTE7(v52) = 0;
LABEL_59:
        __dst.n128_u8[v33] = 0;
        sub_7E854(&__dst, 1u);
        if (SBYTE7(v52) < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (v65 < 0)
        {
          operator delete(v64);
        }

        std::locale::~locale(&v59[16]);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_64:
        v55.n128_u64[0] = 1;
        v55.n128_u64[1] = &off_2669FE0;
        sub_434934(&__dst, &v55);
        v59[0] = 0;
        *&v59[8] = __dst;
        v60 = v52;
        v61 = v53;
        v52 = 0uLL;
        v53 = 0;
        LODWORD(v62) = v54;
        sub_D12F1C(a2, v59);
        if (v59[0] == 1)
        {
          v44 = *&v59[8];
          if (*&v59[8])
          {
            v45 = *&v59[16];
            v46 = *&v59[8];
            if (*&v59[16] != *&v59[8])
            {
              do
              {
                v45 -= 440;
                sub_44FDEC(v45);
              }

              while (v45 != v44);
              v46 = *&v59[8];
            }

            *&v59[16] = v44;
LABEL_78:
            operator delete(v46);
          }
        }

        else
        {
          v47 = v60;
          if (v60)
          {
            v48 = *(&v60 + 1);
            v46 = v60;
            if (*(&v60 + 1) != v60)
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
              v46 = v60;
            }

            *(&v60 + 1) = v47;
            goto LABEL_78;
          }
        }

        v49 = v52;
        if (!v52)
        {
          return;
        }

        v50 = *(&v52 + 1);
        v43 = v52;
        if (*(&v52 + 1) != v52)
        {
          do
          {
            if (*(v50 - 1) < 0)
            {
              operator delete(*(v50 - 24));
            }

            v50 -= 32;
          }

          while (v50 != v49);
          v43 = v52;
        }

        *(&v52 + 1) = v49;
        goto LABEL_87;
      }

      v35 = v60;
      v33 = v61 - v60;
      if ((v61 - v60) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_90:
        sub_3244();
      }
    }

    if (v33 >= 0x17)
    {
      operator new();
    }

    BYTE7(v52) = v33;
    if (v33)
    {
      memmove(&__dst, v35, v33);
    }

    goto LABEL_59;
  }

  sub_D1247C(a1, a2);
  if (*a2 == 1)
  {
    v10 = sub_3B84F8(a1[2]);
    *(a2 + 32) = vcvtad_u64_f64(sub_7EA60(v69));
    *(a2 + 80) = *sub_E651D0(v68);
    *(a2 + 81) = *(sub_E651D0(v68) + 1);
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    if (v14 != v15)
    {
      v16 = 0;
      v17 = *v10;
      v18 = v10[1];
      v20 = *(a2 + 56);
      v19 = *(a2 + 64);
      v21 = *(a2 + 40);
      v22 = *(a2 + 8);
      v23 = *(a2 + 72);
      while (1)
      {
        while (1)
        {
          v24 = *(v22 + 44);
          if (v24 <= 2)
          {
            break;
          }

          if (v24 == 3)
          {
            *(a2 + 56) = ++v20;
            if (v17 == v18)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

          if (v24 == 6)
          {
            *(a2 + 72) = ++v23;
            if (v17 == v18)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          if (v17 == v18)
          {
            goto LABEL_15;
          }

LABEL_23:
          v25 = 0;
          v26 = *(v22 + 1);
          LODWORD(v11) = *v22;
          v11 = *&v11;
          v27 = v17;
          do
          {
            v28 = v27[1];
            v29 = (*v27 + 12);
            if (*v27 != v28 && v29 != v28)
            {
              do
              {
                v31 = *(v29 - 2);
                v32 = v29[1];
                if (v31 < v26 != v32 < v26)
                {
                  LODWORD(v12) = *v29;
                  LODWORD(v13) = *(v29 - 3);
                  v13 = *&v13;
                  v12 = (v26 - v31) / (v32 - v31) * (*&v12 - v13) + v13;
                  if (v12 < v11)
                  {
                    v25 ^= 1u;
                  }
                }

                v29 += 3;
              }

              while (v29 != v28);
            }

            v27 += 3;
          }

          while (v27 != v18);
          v16 += v25 & 1;
          v22 += 440;
          if (v22 == v15)
          {
            goto LABEL_48;
          }
        }

        if (v24 == 1)
        {
          *(a2 + 40) = ++v21;
          goto LABEL_22;
        }

        if (v24 != 2)
        {
          goto LABEL_22;
        }

        *(a2 + 64) = ++v19;
        if (v17 != v18)
        {
          goto LABEL_23;
        }

LABEL_15:
        v22 += 440;
        if (v22 == v15)
        {
          goto LABEL_48;
        }
      }
    }

    v16 = 0;
LABEL_48:
    v36 = 0x6FB586FB586FB587 * ((v15 - v14) >> 3);
    *(a2 + 82) = v36 == v16;
    v37 = v36 > v16 && v16 != 0;
    *(a2 + 83) = v37;
    if (*(a1 + 2) == 1)
    {
      v38 = *a1;
      if (sub_E8885C(*a1))
      {
        v57 = sub_E80738(v38);
        v58 = v39;
        v40 = *(sub_3B6890(a1[2]) + 4);
        v41 = (*v4 + 728);
        v56 = *(*v4 + 744);
        v55 = *v41;
        v42 = a1[2];
        sub_4FAEB4(v59, &v55, &v57, v40, 0, 0x7FFFFFFFFFFFFFFFuLL);
        sub_4E8D48(&__dst, v42, a2 + 8, v59, a1[4]);
        if (sub_4E94CC(&__dst))
        {
          sub_4E9A34(&__dst, v59);
        }

        v43 = __dst.n128_u64[0];
        if (__dst.n128_u64[0])
        {
          __dst.n128_u64[1] = __dst.n128_u64[0];
LABEL_87:
          operator delete(v43);
        }
      }
    }
  }
}

void sub_D123A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a31);
  if (a15)
  {
    operator delete(a15);
    sub_D130AC(v31);
    _Unwind_Resume(a1);
  }

  sub_D130AC(v31);
  _Unwind_Resume(a1);
}

void sub_D1247C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a2 + 16))
  {
    operator new();
  }
}

void sub_D12734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D12758(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  v6[0] = &v7;
  v3 = *(a2 + 8);
  if (v3 != -1)
  {
    v10[0] = v6;
    (off_2673750[v3])(v10);
    sub_5F328(v10);
    v9 = 8;
    strcpy(__dst, "any_mode");
    v5 = sub_5F5AC(a3, __dst);
    sub_5ADDC(v6, v5);
    if (v9 < 0)
    {
      operator delete(__dst[0]);
    }

    operator new();
  }

  sub_5AF20();
}

void sub_D12DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (*(v16 - 105) < 0)
  {
    operator delete(*(v16 - 128));
  }

  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D12DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_5BC80(&__p);
  if (*(v34 - 129) < 0)
  {
    operator delete(*(v34 - 152));
  }

  sub_5C010(&a17);
  sub_5C010(v34 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_D12F1C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(a1 + 16);
        v7 = v5;
        if (v6 != v5)
        {
          do
          {
            v6 = sub_44FDEC(v6 - 440);
          }

          while (v6 != v5);
          v7 = *v4;
        }

        *(a1 + 16) = v5;
        operator delete(v7);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_26:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v15 = *(a2 + 32);
      v16 = *(a2 + 48);
      v17 = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 48) = v16;
      *(a1 + 64) = v17;
      *(a1 + 32) = v15;
      goto LABEL_27;
    }

    v11 = (a1 + 8);
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(a1 + 16);
      v14 = v12;
      if (v13 != v12)
      {
        do
        {
          v13 = sub_44FDEC(v13 - 440);
        }

        while (v13 != v12);
        v14 = *v11;
      }

      *(a1 + 16) = v12;
      operator delete(v14);
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
      goto LABEL_26;
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
LABEL_27:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D130AC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 440;
          sub_44FDEC(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
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
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_D13168(uint64_t **a1)
{
  v1 = **a1;
  v3 = -1;
  v4 = 0x7FFFFFFF;
  return sub_D1378C(v1, &v3);
}

uint64_t sub_D131A4(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v5 = sub_E80868(*a2);
  v6 = v3;
  return sub_D1378C(v2, &v5);
}

void sub_D131EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(*a1 + 8);
  sub_E8328C(*a2, &v27);
  v3 = *(*v2 + 8);
  if (*v3 == -1)
  {
    goto LABEL_43;
  }

  for (i = v3 + 110; i != *(*v2 + 16); i += 110)
  {
    v7 = *i;
    v8 = i[1];
    if (v7 == -1 && v8 == -1)
    {
      v5 = 0;
    }

    else
    {
      v10 = sqrt(((*v3 - v7) * (*v3 - v7) + (v3[1] - v8) * (v3[1] - v8))) / 100.0 * 100.0;
      if (v10 >= 4.50359963e15)
      {
        if (v10 < 9.22337204e18)
        {
LABEL_16:
          v5 = v10;
          goto LABEL_5;
        }
      }

      else
      {
        v10 = (((v10 + v10) + 1) >> 1);
        if (v10 < 9.22337204e18)
        {
          goto LABEL_16;
        }
      }

      v5 = 0x7FFFFFFFFFFFFFFELL;
    }

LABEL_5:
    v6 = v2[1];
    if (*v6 > v5)
    {
      v5 = *v6;
    }

    *v6 = v5;
  }

  v11 = v27;
  if (v27 != v28)
  {
    v12 = sub_1218A44(v52, 0, 0);
    if (!sub_194DB28(v12, v27))
    {
      goto LABEL_42;
    }

    v13 = v55 & 0xFFFFFFFFFFFFFFFELL;
    if ((*((v55 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v13 + 8))
      {
        goto LABEL_24;
      }
    }

    else if (!*(v13 + 23))
    {
LABEL_24:
      if (v53)
      {
        v14 = *(*(v54 + 8 * v53) + 32);
        if (!v14)
        {
          v14 = &off_2734B00;
        }

        v15 = *(v14 + 7) / 10000000.0;
        v16 = -1;
        if (v15 <= 180.0)
        {
          v17 = *(v14 + 6) / 10000000.0;
          if (fabs(v17) <= 85.0511288 && v15 >= -180.0)
          {
            v18 = sin(fmin(fmax(v17, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
            LODWORD(v19) = ((log((v18 + 1.0) / (1.0 - v18)) / -12.5663706 + 0.5) * 4294967300.0);
            if (v19 >= 0xFFFFFFFE)
            {
              v19 = 4294967294;
            }

            else
            {
              v19 = v19;
            }

            v16 = ((v15 + 180.0) / 360.0 * 4294967300.0) | (v19 << 32);
          }
        }

        v20 = v2[1];
        v21 = v3[1] - HIDWORD(v16);
        v22 = sqrt(((*v3 - v16) * (*v3 - v16) + v21 * v21)) / 100.0 * 100.0;
        if (v22 >= 4.50359963e15)
        {
          if (v22 < 9.22337204e18)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v22 = (((v22 + v22) + 1) >> 1);
          if (v22 < 9.22337204e18)
          {
LABEL_36:
            v23 = v22;
LABEL_39:
            if (*v20 > v23)
            {
              v23 = *v20;
            }

            *v20 = v23;
            goto LABEL_42;
          }
        }

        v23 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_39;
      }

LABEL_42:
      sub_1218EBC(v52);
LABEL_43:
      v11 = v27;
      goto LABEL_44;
    }

    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v40 = 0u;
    v34 = 0x1312D0000000000;
    v33 = 0;
    v29 = 0x4039000000000000;
    v30 = 5000;
    v31 = xmmword_2297CF0;
    v32 = xmmword_2297D00;
    v35 = 0x3FF199999999999ALL;
    v37 = 0xA00002710;
    v39 = 2;
    *&v40 = 0x4049000000000000;
    HIDWORD(v40) = 2000;
    v41 = 0x3FF0000000000000;
    v51 = 0;
    v36 = 0x3E800002710;
    v38 = 0x3200000064;
    v42 = 0xBB800000258;
    v43 = xmmword_22AC298;
    *&v47 = 0x3FD999999999999ALL;
    v46 = unk_22AC2C8;
    v45 = xmmword_22AC2B8;
    v44 = unk_22AC2A8;
    operator new();
  }

LABEL_44:
  if (v11)
  {
    v24 = v28;
    v25 = v11;
    if (v28 != v11)
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v11);
      v25 = v27;
    }

    v28 = v11;
    operator delete(v25);
  }
}

void sub_D13720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    a40 = __p;
    operator delete(__p);
    sub_1218EBC(v40 - 128);
    sub_1A104(&a10);
    _Unwind_Resume(a1);
  }

  sub_1218EBC(v40 - 128);
  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_D1376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1378C(uint64_t result, unsigned int *a2)
{
  v2 = result;
  v3 = *result;
  if (*a2 != -1 || a2[1] != -1)
  {
    v5 = *(v3 + 8);
    if (*v5 != -1 || v5[1] != -1)
    {
      result = sub_D138D8(a2, *(v3 + 8), 0);
      **(v2 + 8) += result;
      v3 = *v2;
    }
  }

  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v7 != v6 && v7 + 110 != v6)
  {
    v9 = *(v2 + 8);
    v10 = *v9;
    do
    {
      v13 = *v7;
      v14 = v7[1];
      v15 = v13 == -1 && v14 == -1;
      if (v15 || ((v16 = v7[110], result = v7[111], v16 == -1) ? (v17 = result == -1) : (v17 = 0), v17))
      {
        v11 = 0;
      }

      else
      {
        v18 = sqrt(((v13 - v16) * (v13 - v16) + (v14 - result) * (v14 - result))) / 100.0 * 100.0;
        if (v18 >= 4.50359963e15)
        {
          if (v18 < 9.22337204e18)
          {
LABEL_28:
            v11 = v18;
            goto LABEL_15;
          }
        }

        else
        {
          v18 = (((v18 + v18) + 1) >> 1);
          if (v18 < 9.22337204e18)
          {
            goto LABEL_28;
          }
        }

        v11 = 0x7FFFFFFFFFFFFFFELL;
      }

LABEL_15:
      v10 += v11;
      *v9 = v10;
      v12 = v7 + 220;
      v7 += 110;
    }

    while (v12 != v6);
  }

  return result;
}

uint64_t sub_D138D8(unsigned int *a1, unsigned int *a2, int a3)
{
  if (!a3 || (v3 = a1[2], v3 == 0x7FFFFFFF) || (v4 = a2[2], v4 == 0x7FFFFFFF))
  {
    v5 = 0;
  }

  else
  {
    v5 = fabs((v3 - v4));
  }

  v6 = sqrt(((*a1 - *a2) * (*a1 - *a2) + (a1[1] - a2[1]) * (a1[1] - a2[1]) + v5 * v5)) / 100.0 * 100.0;
  if (v6 >= 4.50359963e15)
  {
    if (v6 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    v6 = (((v6 + v6) + 1) >> 1);
    if (v6 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  return v6;
}

uint64_t sub_D139A0(uint64_t ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E838F0(*a2);
  **v2 = result;
  return result;
}

BOOL sub_D139D0(_BOOL8 ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E81C04(*a2);
  **v2 = result;
  return result;
}

unint64_t sub_D13A00(unint64_t ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E83954(*a2);
  **v2 = result;
  return result;
}

uint64_t sub_D13A34(uint64_t ***a1)
{
  v1 = *a1;
  result = sub_6910B0();
  **v1 = result;
  return result;
}

void sub_D13A68(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v217);
  *a2 = 1;
  bzero((a2 + 8), 0x368uLL);
  sub_4E3D18((a2 + 8));
  sub_4E3D18((a2 + 56));
  *(a2 + 112) = 0u;
  v4 = (a2 + 112);
  *(a2 + 104) = -1;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 424) = 0;
  *(a2 + 556) = 0;
  *(a2 + 544) = 0;
  *(a2 + 552) = 0;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 524) = 0u;
  *(a2 + 608) = 0x3FF0000000000000;
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a2 + 640) = 5;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 696) = 0x7FFFFFFF;
  *(a2 + 784) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 761) = 0u;
  *(a2 + 800) = -1;
  *(a2 + 808) = 0x7FFFFFFF;
  *(a2 + 812) = 0;
  *(a2 + 820) = 0;
  *(a2 + 824) = -1;
  *(a2 + 832) = -1;
  *(a2 + 840) = 0;
  *(a2 + 848) = 0;
  *(a2 + 872) = 0;
  *(a2 + 880) = 0;
  *(a2 + 888) = 0;
  *(a2 + 896) = 0u;
  *(a2 + 912) = 0;
  v176 = a2;
  sub_485B58(v212, *(a1 + 49), a1[380], a1[402]);
  v5 = sub_4EE130(*(a1 + 48));
  v7 = v5 != 3 && v5 != 5;
  nullsub_1();
  v9 = v8;
  sub_4E3D18(&v198);
  v173 = (a2 + 56);
  v174 = v9;
  sub_4E3D18(&v202);
  v210 = 0;
  v206 = 0u;
  memset(v207, 0, sizeof(v207));
  LOBYTE(v208) = 0;
  v211 = 0uLL;
  if (a1[400] == 1 && sub_4EDAF4(*(a1 + 48)))
  {
    v11 = sub_4EDB10(*(a1 + 48), v10);
    sub_4F1328(v183, v11);
    *(a2 + 104) = sub_3F80(v183);
    sub_4F9780(v183, v181);
    sub_487F20(v212, v181, (a1 + 112), *(a1 + 36), 0, 1, v7, 0, 0);
  }

  if (*(a1 + 10) != *(a1 + 11))
  {
    v183[1] = 0x7FFFFFFF;
    v186 = 0u;
    v187 = 0u;
    v190 = 0u;
    v191 = 0u;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v183[0] = -1;
    v184[0] = -1;
    v184[1] = -1;
    v185 = 0x7FFFFFFFFFFFFFFFLL;
    DWORD2(v186) = -1935635296;
    *&v187 = 0;
    *(&v187 + 7) = 0;
    v188 = 0;
    v189 = 0;
    *&v190 = 0;
    DWORD2(v190) = 0;
    *&v191 = 0x7FFFFFFFFFFFFFFFLL;
    BYTE8(v191) = 100;
    v192 = 0;
    v193 = 0;
    v194 = vnegq_f64(v12);
    __p = 0;
    v196 = 0;
    v197 = 0;
    sub_485B5C();
  }

  if (*(a1 + 2) != *(a1 + 3))
  {
    v13 = *(a1 + 1);
    if (v13 == 2)
    {
      if (*(a1 + 36) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }
    }

    else if (v13 == 1)
    {
      v14 = 0;
      v15 = *a1;
      if (v15 > 0xD)
      {
        v16 = 0;
        *(a2 + 888) = 1;
        if (*(a1 + 6) != -1)
        {
LABEL_29:
          if (!v16)
          {
            sub_48B0AC(__dst);
            sub_D1635C(&v198, __dst);
            sub_49AD08(__dst);
          }
        }

LABEL_31:
        if (a1[403] & v16)
        {
          v183[1] = 0x7FFFFFFF;
          v186 = 0u;
          v187 = 0u;
          v190 = 0u;
          v191 = 0u;
          v19.f64[0] = NAN;
          v19.f64[1] = NAN;
          v183[0] = -1;
          v184[0] = -1;
          v184[1] = -1;
          v185 = 0x7FFFFFFFFFFFFFFFLL;
          DWORD2(v186) = -1935635296;
          *&v187 = 0;
          *(&v187 + 7) = 0;
          v188 = 0;
          v189 = 0;
          *&v190 = 0;
          DWORD2(v190) = 0;
          *&v191 = 0x7FFFFFFFFFFFFFFFLL;
          BYTE8(v191) = 100;
          v192 = 0;
          v193 = 0;
          v194 = vnegq_f64(v19);
          __p = 0;
          v196 = 0;
          v197 = 0;
          sub_487F20(v212, a1 + 2, v183, 0x7FFFFFFFFFFFFFFFLL, 0, 0, v7, 0, 0);
        }

        if (sub_F63D58(&v198))
        {
          sub_487F20(v212, a1 + 2, (a1 + 112), *(a1 + 36), v14, 0, v7, 0, 0);
        }

        *(a2 + 104) = *(a1 + 10);
LABEL_55:
        v26 = sub_3B8500(*(a1 + 49));
        HIBYTE(v184[0]) = 15;
        strcpy(v183, "RequestWithPath");
        if (*v26)
        {
          sub_499F74(__dst, *v26);
        }

        else
        {
          sub_2C0888(__dst);
        }

        sub_7BDA0(1, v183, __dst);
        sub_2C1D4C(__dst);
        if (SHIBYTE(v184[0]) < 0)
        {
          operator delete(v183[0]);
        }

        v27 = sub_F63D58(&v198);
        if (v27)
        {
          *__dst = 12;
          *&__dst[8] = &off_2669FE0;
          sub_434934(v183, __dst);
          __dst[0] = 0;
          *&__dst[8] = *v183;
          *v219 = *v184;
          v220 = v185;
          v184[0] = 0;
          v184[1] = 0;
          v185 = 0;
          LODWORD(v221) = v186;
          sub_D1E024(a2, __dst);
          if (__dst[0] == 1)
          {
            sub_D1D6D4(&__dst[8]);
          }

          else
          {
            v44 = v219[0];
            if (v219[0])
            {
              v45 = v219[1];
              v46 = v219[0];
              if (v219[1] != v219[0])
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
                v46 = v219[0];
              }

              v219[1] = v44;
              operator delete(v46);
            }
          }

          v47 = v184[0];
          if (v184[0])
          {
            v48 = v184[1];
            v49 = v184[0];
            if (v184[1] != v184[0])
            {
              do
              {
                if (*(v48 - 1) < 0)
                {
                  operator delete(*(v48 - 3));
                }

                v48 -= 4;
              }

              while (v48 != v47);
              v49 = v184[0];
            }

            v184[1] = v47;
            operator delete(v49);
          }

          *(a2 + 880) = sub_7EA60(v217);
          sub_49AD08(&v198);
          if (v27)
          {
LABEL_308:
            v167 = v215;
            if (!v215)
            {
              goto LABEL_310;
            }

            goto LABEL_309;
          }

LABEL_191:
          v96 = *(a1 + 38);
          v97 = *(a1 + 39);
          if (v96 == v97)
          {
            goto LABEL_230;
          }

          v98 = sub_F63FF4((a2 + 8));
          v99 = sub_45AC50(a2 + 8);
          v100 = *(a1 + 38);
          v101 = sub_588D8(a2 + 8);
          if (v99 != v101)
          {
            v106 = (v100 + 136 * (0xF0F0F0F0F0F0F0F1 * ((v97 - v96) >> 3) - v98));
            do
            {
              sub_3EDBB0(__dst, v106);
              v229 = xmmword_22AC2E0;
              sub_F68F5C(v99, __dst);
              if (v223[0])
              {
                v223[1] = v223[0];
                operator delete(v223[0]);
              }

              if (v220)
              {
                v221 = v220;
                operator delete(v220);
              }

              v99 += 552;
              v106 = (v106 + 136);
            }

            while (v99 != v101);
          }

          v102 = sub_45AC50(a2 + 8);
          v103 = sub_73EEC(v102);
          v104 = v103;
          v105 = *(v103 + 112);
          switch(v105)
          {
            case 0:
              goto LABEL_230;
            case 2:
              v107 = *(v103 + 104);
              if (v107 > 0xFFFFFFFEFFFFFFFFLL || !v107)
              {
                goto LABEL_230;
              }

              break;
            case 1:
              if (*(v103 + 104) == -1)
              {
                goto LABEL_230;
              }

              break;
            default:
              sub_5AF20();
          }

          v108 = sub_3B1D8C(*(a1 + 49));
          sub_2AB8BC(v108, *(v104 + 104), *(v104 + 112));
          *(*(a2 + 136) + 16) = v109;
          v110 = sub_2AB71C(v108, *(v104 + 104), *(v104 + 112));
          v111 = sub_2ACC94(v108, v110);
          v112 = HIDWORD(v111) - *(a1 + 29);
          v113 = v111 - *(a1 + 28);
          v114 = sqrt((v113 * v113 + v112 * v112)) / 100.0 * 100.0;
          if (v114 >= 4.50359963e15)
          {
            if (v114 >= 9.22337204e18)
            {
LABEL_211:
              if (sub_7E7E4(1u))
              {
                sub_19594F8(__dst);
                sub_4A5C(__dst, "Distance between user location and the user route's origin charging station is approximately ", 93);
                v115 = std::ostream::operator<<();
                sub_4A5C(v115, " meters.", 8);
                if ((v227 & 0x10) != 0)
                {
                  v117 = v226;
                  if (v226 < v222)
                  {
                    v226 = v222;
                    v117 = v222;
                  }

                  v118 = &v221;
                }

                else
                {
                  if ((v227 & 8) == 0)
                  {
                    v116 = 0;
                    HIBYTE(v184[0]) = 0;
LABEL_225:
                    *(v183 + v116) = 0;
                    sub_7E854(v183, 1u);
                    if (SHIBYTE(v184[0]) < 0)
                    {
                      operator delete(v183[0]);
                    }

                    if (v225 < 0)
                    {
                      operator delete(v223[1]);
                    }

                    std::locale::~locale(&__dst[16]);
                    std::ostream::~ostream();
                    std::ios::~ios();
                    goto LABEL_230;
                  }

                  v118 = v219;
                  v117 = v220;
                }

                v119 = *v118;
                v116 = v117 - *v118;
                if (v116 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v116 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v184[0]) = v117 - *v118;
                if (v116)
                {
                  memmove(v183, v119, v116);
                }

                goto LABEL_225;
              }

LABEL_230:
              if (*(a2 + 872) == 1)
              {
                nullsub_1();
                v121 = v120;
                v124 = v120;
                v122 = *v120;
                v123 = v124[1];
                v125 = v123 - v122;
                if (v123 != v122)
                {
                  *__dst = 0;
                  sub_F69690(v122, __dst);
                  v126 = *v121;
                  v127 = v121[1] - *v121 == 552 ? 1 : 327679;
                  *__dst = v127;
                  sub_F6969C(v126, __dst);
                  if (v125 != 552)
                  {
                    v128 = 1;
                    v129 = 552;
                    do
                    {
                      v130 = *v121;
                      *__dst = 327679;
                      sub_F69690(v130 + v129, __dst);
                      v131 = *v121;
                      if (v128 == -1 - 0xED7303B5CC0ED73 * ((v121[1] - *v121) >> 3))
                      {
                        v132 = 1;
                      }

                      else
                      {
                        v132 = 327679;
                      }

                      *__dst = v132;
                      sub_F6969C(v131 + v129, __dst);
                      ++v128;
                      v129 += 552;
                    }

                    while (0xF128CFC4A33F128DLL * (v125 >> 3) != v128);
                  }
                }

                goto LABEL_300;
              }

              v134 = *(a1 + 41);
              v133 = *(a1 + 42);
              v135 = sub_F63FF4((a2 + 8));
              if (v133 - v134 >= v135 + 1)
              {
                v136 = v133 - v134 - (v135 + 1);
              }

              else
              {
                v136 = 0;
              }

              nullsub_1();
              v138 = v137[1] - *v137;
              if (!v138)
              {
LABEL_300:
                if (a1[401] == 1)
                {
                  sub_11767F4(__dst, *(a1 + 49));
                  v163 = *sub_3B6890(*(a1 + 49));
                  v164 = a1[8];
                  v165 = sub_117890C(__dst);
                  sub_11767F8(__dst, (v176 + 8), v165, v163, v164);
                  *&v232[2] = v166;
                  if (v235 < 0)
                  {
                    operator delete(v234[7].__locale_);
                  }

                  std::locale::~locale(v234);
                  std::iostream::~basic_iostream();
                  std::ios::~ios();
                  if (v230)
                  {
                    v231 = v230;
                    operator delete(v230);
                  }

                  if (v223[0])
                  {
                    v223[1] = v223[0];
                    operator delete(v223[0]);
                  }
                }

                *(v176 + 880) = vcvtad_u64_f64(sub_7EA60(v217));
                goto LABEL_308;
              }

              v139 = 0;
              v140 = 0;
              v175 = 0xF128CFC4A33F128DLL * (v138 >> 3);
              while (1)
              {
                v141 = v140 + 1;
                v142 = *(a1 + 44);
                if (v142 == *(a1 + 45))
                {
                  v183[0] = 0;
                  v183[1] = 0;
                  v184[0] = 0;
                  v198 = 0uLL;
                  v199 = 0;
                  if (!v140)
                  {
LABEL_253:
                    v147 = 1;
                    goto LABEL_256;
                  }
                }

                else
                {
                  v143 = v142 + 24 * v136;
                  v144 = v143 + 24 * v140;
                  *v183 = *v144;
                  v184[0] = *(v144 + 16);
                  v145 = (v143 + 24 * v141);
                  v198 = *v145;
                  v199 = *(v145 + 2);
                  if (!v140)
                  {
                    goto LABEL_253;
                  }
                }

                nullsub_1();
                if (v140 + v136 == 0xF128CFC4A33F128DLL * ((v146[1] - *v146) >> 3))
                {
                  v147 = 1;
                  if (v140 == -1)
                  {
                    goto LABEL_275;
                  }
                }

                else
                {
                  v148 = *(a1 + 41);
                  if (v148 == *(a1 + 42))
                  {
                    v147 = 0;
                    if (v140 == -1)
                    {
LABEL_275:
                      v150 = 1;
                      v151 = 1;
                      if (v147)
                      {
LABEL_258:
                        *v181 = *v183;
                        v182 = v184[0];
                        if (**(a1 + 37) == *(*(a1 + 37) + 8))
                        {
                          v155 = 0x1FFFF;
                        }

                        else if (v140)
                        {
                          if (sub_585D8(v181))
                          {
                            v152 = *(a1 + 37);
                            v154 = *v152;
                            v153 = v152[1];
                            *__dst = *v181;
                            *&__dst[16] = v182;
                            if (v154 != v153)
                            {
                              while (!sub_588E8((v154 + 288), __dst))
                              {
                                v154 += 440;
                                if (v154 == v153)
                                {
                                  v154 = v153;
                                  break;
                                }
                              }

                              v152 = *(a1 + 37);
                            }

                            if (v154 == v152[1])
                            {
                              v155 = 393215;
                            }

                            else
                            {
                              v155 = (-19065 * ((v154 - *v152) >> 3));
                            }
                          }

                          else
                          {
                            v155 = v139;
                          }
                        }

                        else
                        {
                          v155 = 196607;
                          if (*(a1 + 1) != 2)
                          {
                            v155 = 0;
                          }
                        }

                        goto LABEL_281;
                      }

                      goto LABEL_270;
                    }
                  }

                  else
                  {
                    v147 = *(v148 + v140 + v136) == 1;
                    if (v140 == -1)
                    {
                      goto LABEL_275;
                    }
                  }
                }

LABEL_256:
                nullsub_1();
                if (v141 + v136 == 0xF128CFC4A33F128DLL * ((v149[1] - *v149) >> 3))
                {
                  v150 = 0;
                  v151 = 1;
                  if (v147)
                  {
                    goto LABEL_258;
                  }
                }

                else
                {
                  v156 = *(a1 + 41);
                  if (v156 == *(a1 + 42))
                  {
                    v150 = 0;
                    v151 = 0;
                    if (v147)
                    {
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    v150 = 0;
                    v151 = *(v156 + v141 + v136) == 1;
                    if (v147)
                    {
                      goto LABEL_258;
                    }
                  }
                }

LABEL_270:
                v155 = 0x3FFFF;
LABEL_281:
                *v180 = v155;
                nullsub_1();
                sub_F69690(*v157 + 552 * v140, v180);
                v139 += v151;
                if (v151)
                {
                  *v181 = v198;
                  v182 = v199;
                  if (**(a1 + 37) == *(*(a1 + 37) + 8))
                  {
                    v158 = 0x1FFFF;
                  }

                  else if (v150)
                  {
                    v158 = 196607;
                    if (*(a1 + 1) != 2)
                    {
                      v158 = 0;
                    }
                  }

                  else if (sub_585D8(v181))
                  {
                    v159 = *(a1 + 37);
                    v160 = *v159;
                    v161 = v159[1];
                    *__dst = *v181;
                    *&__dst[16] = v182;
                    if (v160 != v161)
                    {
                      while (!sub_588E8((v160 + 288), __dst))
                      {
                        v160 += 440;
                        if (v160 == v161)
                        {
                          v160 = v161;
                          break;
                        }
                      }

                      v159 = *(a1 + 37);
                    }

                    if (v160 == v159[1])
                    {
                      v158 = 393215;
                    }

                    else
                    {
                      v158 = (-19065 * ((v160 - *v159) >> 3));
                    }
                  }

                  else
                  {
                    v158 = v139;
                  }

                  LODWORD(v179[0]) = v158;
                }

                else
                {
                  LODWORD(v179[0]) = 0x3FFFF;
                }

                nullsub_1();
                sub_F6969C(*v162 + 552 * v140++, v179);
                if (v141 == v175)
                {
                  goto LABEL_300;
                }
              }
            }
          }

          else
          {
            v114 = (((v114 + v114) + 1) >> 1);
            if (v114 >= 9.22337204e18)
            {
              goto LABEL_211;
            }
          }

          if (v114 < 5001)
          {
            goto LABEL_230;
          }

          goto LABEL_211;
        }

        if (*(v9 + 128) != 1)
        {
          sub_614924(a2 + 160, *(a1 + 48));
          goto LABEL_152;
        }

        v28 = sub_4C5154(v9);
        v29 = sub_4F9718(v9) + v28;
        if (sub_F63FF4(&v198) <= v29 || (v210 & 1) != 0 || (v30 = sub_74700(), !sub_7E7E4(1u)))
        {
LABEL_118:
          v53 = sub_F63FF4(&v198);
          if (v29 >= v53)
          {
            v54 = v29 - v53;
          }

          else
          {
            v54 = 0;
          }

          v55 = *(a1 + 94) + v53;
          if (v29 >= v55)
          {
            v56 = v29 - v55;
          }

          else
          {
            v56 = 0;
          }

          sub_4EC9D4(*(a1 + 48), __dst);
          sub_D16C58(a2 + 160, __dst);
          sub_5287C0(__dst);
          v183[0] = 0;
          v183[1] = 0;
          v184[0] = 0;
          v57 = sub_F63FF4(&v198);
          sub_4FA4DC(v183, v57);
          sub_4F970C(v174, __dst);
          v172 = v29;
          v58 = *__dst;
          sub_4F970C(v174, v181);
          v59 = (v58 + 144 * v56);
          v60 = v181[1];
          if (v59 != v181[1])
          {
            v67 = v183[1];
            do
            {
              if (v67 >= v184[0])
              {
                v67 = sub_D1D4D4(v183, v59);
              }

              else
              {
                sub_4F15C8(v67, v59);
                v67 += 144;
              }

              v183[1] = v67;
              v59 += 18;
            }

            while (v59 != v60);
          }

          v171 = sub_3F80(v174);
          v61 = sub_4F96B8(v174);
          v62 = sub_588D8(v174);
          v170 = sub_4F96C0(v174);
          v169 = sub_4F96C8(v174);
          v63 = sub_4F96D0(v174);
          v64 = sub_4F96D8(v174);
          v168 = v62;
          sub_4C35D4(v174, v179);
          v65 = v179[0];
          sub_4C35D4(v174, &v177);
          v181[1] = 0;
          v182 = 0;
          v181[0] = 0;
          if (v178 != v65)
          {
            if (((v178 - v65) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          if (v172 <= v55)
          {
            v66 = v174;
            a2 = v176;
            v68 = sub_57478(v174);
            v69 = *v68;
            *&v180[16] = *(v68 + 16);
            *v180 = v69;
          }

          else
          {
            *v180 = 0x8000000080000000;
            *&v180[8] = xmmword_2297C00;
            *&v180[8] = 0x7FFFFFFF;
            a2 = v176;
            v66 = v174;
          }

          v70 = sub_73ED4(v66);
          sub_4F9688(__dst, v171, v61, v168, v170, v169, v63, v64, v54 - v56, v181, v180, v183, v70);
          sub_4EC0C0(a2 + 160, __dst);
          if (v227)
          {
            v228 = v227;
            operator delete(v227);
          }

          v71 = v223[1];
          if (v223[1])
          {
            v72 = v224;
            v73 = v223[1];
            if (v224 != v223[1])
            {
              do
              {
                v72 = sub_4F0FB4(v72 - 144);
              }

              while (v72 != v71);
              v73 = v223[1];
            }

            v224 = v71;
            operator delete(v73);
          }

          if (v219[0])
          {
            v219[1] = v219[0];
            operator delete(v219[0]);
          }

          if (v181[0])
          {
            v181[1] = v181[0];
            operator delete(v181[0]);
          }

          v74 = v183[0];
          if (v183[0])
          {
            v75 = v183[1];
            v76 = v183[0];
            if (v183[1] != v183[0])
            {
              do
              {
                v75 = sub_4F0FB4(v75 - 144);
              }

              while (v75 != v74);
              v76 = v183[0];
            }

            v183[1] = v74;
            operator delete(v76);
          }

LABEL_152:
          v77 = *(a2 + 8);
          if (v77)
          {
            v78 = *(a2 + 16);
            v79 = *(a2 + 8);
            if (v78 != v77)
            {
              do
              {
                v78 = sub_4547F0(v78 - 552);
              }

              while (v78 != v77);
              v79 = *(a2 + 8);
            }

            *(a2 + 16) = v77;
            operator delete(v79);
          }

          *(a2 + 8) = v198;
          *(a2 + 24) = v199;
          v199 = 0;
          v198 = 0uLL;
          if (*(a2 + 55) < 0)
          {
            operator delete(*(a2 + 32));
          }

          *(a2 + 32) = v200;
          *(a2 + 48) = v201;
          HIBYTE(v201) = 0;
          LOBYTE(v200) = 0;
          v80 = *v173;
          if (*v173)
          {
            v81 = *(a2 + 64);
            v82 = *v173;
            if (v81 != v80)
            {
              do
              {
                v81 = sub_4547F0(v81 - 552);
              }

              while (v81 != v80);
              v82 = *v173;
            }

            *(a2 + 64) = v80;
            operator delete(v82);
          }

          *(a2 + 56) = v202;
          *(a2 + 72) = v203;
          v203 = 0;
          v202 = 0uLL;
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 80) = v204;
          *(a2 + 96) = v205;
          HIBYTE(v205) = 0;
          LOBYTE(v204) = 0;
          v83 = *v4;
          if (*v4)
          {
            v84 = *(a2 + 120);
            v85 = *v4;
            if (v84 != v83)
            {
              v86 = *(a2 + 120);
              do
              {
                v88 = *(v86 - 3);
                v86 -= 24;
                v87 = v88;
                if (v88)
                {
                  *(v84 - 2) = v87;
                  operator delete(v87);
                }

                v84 = v86;
              }

              while (v86 != v83);
              v85 = *v4;
            }

            *(a2 + 120) = v83;
            operator delete(v85);
          }

          *(a2 + 112) = v206;
          *(a2 + 128) = *&v207[0];
          *&v207[0] = 0;
          v206 = 0uLL;
          v89 = *(a2 + 136);
          if (v89)
          {
            v90 = *(a2 + 144);
            v91 = *(a2 + 136);
            if (v90 != v89)
            {
              do
              {
                v90 = sub_49AEC0(v90 - 30);
              }

              while (v90 != v89);
              v91 = *(a2 + 136);
            }

            *(a2 + 144) = v89;
            operator delete(v91);
          }

          v92 = v4 + 98;
          *(a2 + 136) = *(v207 + 8);
          *(a2 + 152) = *(&v207[1] + 1);
          memset(v207 + 8, 0, 24);
          if (*(a2 + 872) == v210)
          {
            if (!*(a2 + 872))
            {
LABEL_183:
              *v92 = 0;
              sub_49AD08(&v198);
              goto LABEL_191;
            }

            v93 = *(a2 + 848);
            if (v93)
            {
              *(a2 + 856) = v93;
              operator delete(v93);
              v94 = *(a2 + 872);
              *(a2 + 848) = v208;
              *(a2 + 864) = v209;
              v209 = 0;
              v208 = 0uLL;
              if ((v94 & 1) == 0)
              {
                goto LABEL_183;
              }
            }

            else
            {
              *(a2 + 848) = v208;
              *(a2 + 864) = v209;
              v209 = 0;
              v208 = 0uLL;
            }
          }

          else
          {
            if (*(a2 + 872))
            {
              v95 = *(a2 + 848);
              if (v95)
              {
                *(a2 + 856) = v95;
                operator delete(v95);
              }

              *(a2 + 872) = 0;
              *v92 = 0;
              sub_49AD08(&v198);
              goto LABEL_191;
            }

            *(a2 + 848) = v208;
            *(a2 + 864) = v209;
            v209 = 0;
            v208 = 0uLL;
            *(a2 + 872) = 1;
          }

          *v92 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 856) - *(a2 + 848)) >> 3);
          sub_49AD08(&v198);
          goto LABEL_191;
        }

        sub_19594F8(__dst);
        sub_4A5C(__dst, "Got a request where the session_state contains fewer legs (", 59);
        v31 = std::ostream::operator<<();
        sub_4A5C(v31, ") than the number of legs decoded (", 35);
        sub_F63FF4(&v198);
        v32 = std::ostream::operator<<();
        v33 = sub_4A5C(v32, "): ", 3);
        LODWORD(v181[0]) = sub_7421C(v30);
        sub_7230C(v181, v183);
        if (SHIBYTE(v184[0]) >= 0)
        {
          v34 = v183;
        }

        else
        {
          v34 = v183[0];
        }

        if (SHIBYTE(v184[0]) >= 0)
        {
          v35 = HIBYTE(v184[0]);
        }

        else
        {
          v35 = v183[1];
        }

        v36 = sub_4A5C(v33, v34, v35);
        v37 = sub_4A5C(v36, " request: ", 10);
        v38 = sub_73F1C(v30);
        v39 = *(v38 + 23);
        if (v39 >= 0)
        {
          v40 = v38;
        }

        else
        {
          v40 = *v38;
        }

        if (v39 >= 0)
        {
          v41 = *(v38 + 23);
        }

        else
        {
          v41 = *(v38 + 8);
        }

        sub_4A5C(v37, v40, v41);
        if (SHIBYTE(v184[0]) < 0)
        {
          operator delete(v183[0]);
        }

        if ((v227 & 0x10) != 0)
        {
          v50 = v226;
          if (v226 < v222)
          {
            v226 = v222;
            v50 = v222;
          }

          v51 = &v221;
        }

        else
        {
          if ((v227 & 8) == 0)
          {
            v42 = v29;
            v43 = 0;
            HIBYTE(v184[0]) = 0;
LABEL_113:
            *(v183 + v43) = 0;
            sub_7E854(v183, 1u);
            v29 = v42;
            if (SHIBYTE(v184[0]) < 0)
            {
              operator delete(v183[0]);
            }

            if (v225 < 0)
            {
              operator delete(v223[1]);
            }

            std::locale::~locale(&__dst[16]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_118;
          }

          v51 = v219;
          v50 = v220;
        }

        v52 = *v51;
        v43 = v50 - *v51;
        if (v43 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        v42 = v29;
        if (v43 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v184[0]) = v50 - *v51;
        if (v43)
        {
          memmove(v183, v52, v43);
        }

        goto LABEL_113;
      }

      v16 = 0;
      if (((1 << v15) & 0x2A86) == 0)
      {
LABEL_28:
        *(a2 + 888) = 1;
        if (*(a1 + 6) != -1)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }

LABEL_27:
      v16 = *(a1 + 36) != 0x7FFFFFFFFFFFFFFFLL;
      v14 = 1;
      goto LABEL_28;
    }

    v14 = 0;
    v16 = 0;
    *(a2 + 888) = 1;
    if (*(a1 + 6) != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  nullsub_1();
  if (*(v17 + 128) == 1)
  {
    nullsub_1();
    sub_4F96F4(v18, __dst);
    if (*__dst != *&__dst[8] && sub_4F8F28(*__dst))
    {
      sub_4F96F4(v9, v183);
      sub_48B108(v212, v183, (a1 + 112));
    }
  }

  if (*(a1 + 7) != *(a1 + 8))
  {
    sub_48714C();
    sub_D1635C(&v198, __dst);
    sub_49AD08(__dst);
    goto LABEL_55;
  }

  *__dst = 12;
  *&__dst[8] = &off_2669FE0;
  sub_434934(v183, __dst);
  __dst[0] = 0;
  *&__dst[8] = *v183;
  *v219 = *v184;
  v220 = v185;
  v184[0] = 0;
  v184[1] = 0;
  v185 = 0;
  LODWORD(v221) = v186;
  sub_D1E024(a2, __dst);
  if (__dst[0] == 1)
  {
    sub_D1D6D4(&__dst[8]);
  }

  else
  {
    v20 = v219[0];
    if (v219[0])
    {
      v21 = v219[1];
      v22 = v219[0];
      if (v219[1] != v219[0])
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
        v22 = v219[0];
      }

      v219[1] = v20;
      operator delete(v22);
    }
  }

  v23 = v184[0];
  if (v184[0])
  {
    v24 = v184[1];
    v25 = v184[0];
    if (v184[1] != v184[0])
    {
      do
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 3));
        }

        v24 -= 4;
      }

      while (v24 != v23);
      v25 = v184[0];
    }

    v184[1] = v23;
    operator delete(v25);
  }

  *(a2 + 880) = sub_7EA60(v217);
  sub_49AD08(&v198);
  v167 = v215;
  if (v215)
  {
LABEL_309:
    v216 = v167;
    operator delete(v167);
  }

LABEL_310:
  if (v213)
  {
    v214 = v213;
    operator delete(v213);
  }
}

void sub_D15FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49AD08(&STACK[0x200]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D16318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49A8F8(&STACK[0x350]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D16340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

uint64_t sub_D1635C(uint64_t a1, uint64_t a2)
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
        v5 = sub_4547F0(v5 - 552);
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
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v8 = (a1 + 48);
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 48);
    if (v10 != v9)
    {
      do
      {
        v10 = sub_4547F0(v10 - 552);
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 56) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v12 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v12;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  v13 = (a1 + 96);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *(a1 + 104);
    v16 = *(a1 + 96);
    if (v15 != v14)
    {
      v17 = *(a1 + 104);
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *v13;
    }

    *(a1 + 104) = v14;
    operator delete(v16);
    *v13 = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v20 = (a1 + 120);
  v21 = *(a1 + 120);
  if (v21)
  {
    v22 = *(a1 + 128);
    v23 = *(a1 + 120);
    if (v22 != v21)
    {
      do
      {
        v22 = sub_49AEC0(v22 - 30);
      }

      while (v22 != v21);
      v23 = *v20;
    }

    *(a1 + 128) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  if (*(a1 + 168) == *(a2 + 168))
  {
    if (*(a1 + 168))
    {
      v24 = *(a1 + 144);
      if (v24)
      {
        *(a1 + 152) = v24;
        operator delete(v24);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
      }

      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
    }
  }

  else if (*(a1 + 168))
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      *(a1 + 152) = v25;
      operator delete(v25);
    }

    *(a1 + 168) = 0;
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a1 + 168) = 1;
  }

  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t sub_D165F8(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v9 = *a2;
  v8[0] = 0;
  *__p = v3;
  v11 = *(a2 + 4);
  a2[1] = 0uLL;
  *(a2 + 4) = 0;
  v12 = *(a2 + 10);
  sub_D1E024(a1, v8);
  if (v8[0] == 1)
  {
    sub_D1D6D4(&v9);
    return a1;
  }

  v5 = __p[0];
  if (!__p[0])
  {
    return a1;
  }

  v6 = __p[1];
  v7 = __p[0];
  if (__p[1] != __p[0])
  {
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      v6 -= 4;
    }

    while (v6 != v5);
    v7 = __p[0];
  }

  __p[1] = v5;
  operator delete(v7);
  return a1;
}

void sub_D166D4(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    sub_435B54(v5, &v18);
    v6 = std::string::append(&v18, " ", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a1 + 1);
    v9 = a1 + 8;
    v8 = v10;
    v11 = v9[23];
    if (v11 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    if (v11 >= 0)
    {
      v13 = v9[23];
    }

    else
    {
      v13 = *(v9 + 1);
    }

    v14 = std::string::append(&v19, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v14->__r_.__value_.__l + 2);
    *a2 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_14:
      operator delete(v18.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }
  }

  else if (a1[31] < 0)
  {
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);

    sub_325C(a2, v16, v17);
  }

  else
  {
    *a2 = *(a1 + 8);
    *(a2 + 16) = *(a1 + 3);
  }
}

void sub_D16800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

unint64_t sub_D1684C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_D1CD64(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 552;
  }

  else
  {
    sub_49D2CC(*(a1 + 8), a2);
    *(a1 + 8) = v3 + 552;
    *(a1 + 8) = v3 + 552;
    return v3;
  }
}

void sub_D168B4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_49ABAC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 4 * a2;
  }
}

uint64_t sub_D168E0(uint64_t *a1, unsigned int a2)
{
  v2 = a2 / 1000000000.0 * *a1;
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      return (v3 >> 1);
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
    return (v3 >> 1);
  }

  return v2;
}

uint64_t sub_D16958(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  if (a1 != a2)
  {
    sub_146EC((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  sub_3E428((a1 + 152), a2 + 152);
  return a1;
}

uint64_t sub_D169E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 16) = v5;
  v9 = (a1 + 72);
  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  v10 = *(a2 + 6);
  v11 = *(a1 + 152);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v10;
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  if (v11)
  {
    operator delete(v11);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = a2[19];
  *(a1 + 160) = *(a2 + 10);
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  return a1;
}

__int128 *sub_D16AC4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_49C304(v7, v4);
        v4 = (v4 + 552);
        v7 += 552;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 = (v6 - 552);
      sub_4547F0(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_D16B54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v13 = a2;
      if (v5 == a2)
      {
LABEL_14:
        a1[1] = v13;
        return a2;
      }
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a2;
      v9 = *a1 + a3;
      do
      {
        v11 = (v8 + v7);
        v12 = *(v8 + v7);
        if (v12)
        {
          v11[1] = v12;
          operator delete(v12);
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
        }

        v10 = (v9 + v7);
        *v11 = *(v9 + v7);
        v11[2] = *(v9 + v7 + 16);
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        v8 += 24;
        v9 += 24;
      }

      while (v9 + v7 != v5);
      v5 = a1[1];
      v13 = v8 - v6;
      if (v5 == v13)
      {
        goto LABEL_14;
      }
    }

    v14 = v5;
    do
    {
      v16 = *(v14 - 24);
      v14 -= 24;
      v15 = v16;
      if (v16)
      {
        *(v5 - 16) = v15;
        operator delete(v15);
      }

      v5 = v14;
    }

    while (v14 != v13);
    goto LABEL_14;
  }

  return a2;
}

uint64_t sub_D16C58(uint64_t a1, uint64_t a2)
{
  sub_4F3734(a1, a2);
  sub_4F3734(a1 + 136, a2 + 136);
  v4 = *(a1 + 272);
  if (v4)
  {
    sub_614F28(a1 + 272, v4);
    operator delete(*(a1 + 272));
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  v5 = *(a1 + 304);
  if (v5)
  {
    v6 = *(a1 + 312);
    v7 = *(a1 + 304);
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
      v7 = *(a1 + 304);
    }

    *(a1 + 312) = v5;
    operator delete(v7);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  v9 = *(a1 + 328);
  if (v9)
  {
    *(a1 + 336) = v9;
    operator delete(v9);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  v10 = *(a1 + 352);
  if (v10)
  {
    v11 = *(a1 + 360);
    v12 = *(a1 + 352);
    if (v11 != v10)
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
      v12 = *(a1 + 352);
    }

    *(a1 + 360) = v10;
    operator delete(v12);
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a1 + 376) = *(a2 + 376);
  sub_D1D064(a1 + 384, (a2 + 384));
  v14 = (a1 + 568);
  if (*(a1 + 591) < 0)
  {
    operator delete(*v14);
  }

  v15 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *v14 = v15;
  *(a2 + 591) = 0;
  *(a2 + 568) = 0;
  v16 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *v16 = v17;
  *(a2 + 615) = 0;
  *(a2 + 592) = 0;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  v18 = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 640) = v18;
  v19 = *(a2 + 652);
  *(a1 + 665) = *(a2 + 665);
  *(a1 + 652) = v19;
  return a1;
}

void sub_D16E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  sub_7E9A4(v262);
  *v10 = 1;
  bzero((v10 + 8), 0x368uLL);
  sub_4E3D18((v10 + 8));
  v197 = (v10 + 56);
  sub_4E3D18((v10 + 56));
  *(v10 + 112) = 0u;
  v11 = (v10 + 112);
  *(v10 + 104) = -1;
  *(v10 + 288) = 0;
  *(v10 + 296) = 0;
  *(v10 + 424) = 0;
  *(v10 + 556) = 0;
  *(v10 + 544) = 0;
  *(v10 + 552) = 0;
  *(v10 + 560) = 0u;
  *(v10 + 576) = 0u;
  *(v10 + 592) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0;
  *(v10 + 432) = 0u;
  *(v10 + 448) = 0u;
  *(v10 + 464) = 0u;
  *(v10 + 480) = 0u;
  *(v10 + 496) = 0u;
  *(v10 + 512) = 0u;
  *(v10 + 524) = 0u;
  *(v10 + 608) = 0x3FF0000000000000;
  *(v10 + 632) = 0;
  *(v10 + 616) = 0u;
  *(v10 + 640) = 5;
  *(v10 + 648) = 0u;
  *(v10 + 664) = 0u;
  *(v10 + 680) = 0u;
  *(v10 + 696) = 0x7FFFFFFF;
  *(v10 + 784) = 0u;
  *(v10 + 704) = 0u;
  *(v10 + 720) = 0u;
  *(v10 + 736) = 0u;
  *(v10 + 752) = 0u;
  *(v10 + 761) = 0u;
  *(v10 + 800) = -1;
  *(v10 + 808) = 0x7FFFFFFF;
  *(v10 + 812) = 0;
  *(v10 + 820) = 0;
  *(v10 + 824) = -1;
  *(v10 + 832) = -1;
  *(v10 + 840) = 0;
  *(v10 + 848) = 0;
  *(v10 + 872) = 0;
  *(v10 + 880) = 0;
  *(v10 + 888) = 0;
  *(v10 + 896) = 0u;
  *(v10 + 912) = 0;
  v200 = v10;
  sub_48D00C(v257, *(v8 + 49), v8[380], v8[402]);
  v12 = sub_4EE130(*(v8 + 48));
  v13 = v12 != 5 && v12 != 0;
  nullsub_1();
  v198 = v14;
  sub_4E3D18(&v243);
  sub_4E3D18(&v247);
  v255 = 0;
  v251 = 0u;
  memset(v252, 0, sizeof(v252));
  LOBYTE(v253) = 0;
  v256 = 0uLL;
  if (v8[400] == 1 && sub_4EDAF4(*(v8 + 48)))
  {
    v21 = sub_4EDB10(*(v8 + 48), v20);
    sub_4F1328(v226, v21);
    *(v10 + 104) = sub_3F80(v226);
    sub_4F9780(v226, v224);
    sub_48F31C(v257, v224, (v8 + 112), *(v8 + 36), 0, 1, v13, 0, 0);
  }

  if (*(v8 + 10) != *(v8 + 11))
  {
    v229 = 0u;
    v236 = 100;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v226[0] = -1;
    v226[1] = 0x7FFFFFFF;
    v227[0] = -1;
    v227[1] = -1;
    v228 = 0x7FFFFFFFFFFFFFFFLL;
    DWORD2(v229) = -1935635296;
    v230 = 0uLL;
    *(&v230 + 7) = 0;
    v231 = 0;
    v232 = 0;
    v233 = 0;
    v234 = 0;
    v235 = 0x7FFFFFFFFFFFFFFFLL;
    v237 = 0;
    v239 = vnegq_f64(v22);
    v238 = 0;
    __p = 0;
    v241 = 0;
    v242 = 0;
    sub_48D010(v257, (v8 + 80), v226, v15, v16, v17, v18, v19);
  }

  if (*(v8 + 2) != *(v8 + 3))
  {
    v23 = *(v8 + 1);
    if (v23 == 2)
    {
      if (*(v8 + 36) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_24;
      }
    }

    else if (v23 == 1)
    {
      v24 = 0;
      v25 = *v8;
      if (v25 > 0xD)
      {
        v26 = 0;
        *(v10 + 888) = 1;
        if (*(v8 + 6) != -1)
        {
LABEL_26:
          if (!v26)
          {
            sub_492454(__dst);
            sub_D1635C(&v243, __dst);
            sub_49AD08(__dst);
          }
        }

LABEL_28:
        if (v8[403] & v26)
        {
          v229 = 0u;
          v236 = 100;
          v34.f64[0] = NAN;
          v34.f64[1] = NAN;
          v226[0] = -1;
          v226[1] = 0x7FFFFFFF;
          v227[0] = -1;
          v227[1] = -1;
          v228 = 0x7FFFFFFFFFFFFFFFLL;
          DWORD2(v229) = -1935635296;
          v230 = 0uLL;
          *(&v230 + 7) = 0;
          v231 = 0;
          v232 = 0;
          v233 = 0;
          v234 = 0;
          v235 = 0x7FFFFFFFFFFFFFFFLL;
          v237 = 0;
          v239 = vnegq_f64(v34);
          v238 = 0;
          __p = 0;
          v241 = 0;
          v242 = 0;
          sub_48F31C(v257, v8 + 2, v226, 0x7FFFFFFFFFFFFFFFLL, 0, 0, v13, 0, 0);
        }

        if (sub_F63D58(&v243))
        {
          sub_48F31C(v257, v8 + 2, (v8 + 112), *(v8 + 36), v24, 0, v13, 0, 0);
        }

        *(v10 + 104) = *(v8 + 10);
LABEL_52:
        v41 = sub_3B8500(*(v8 + 49));
        HIBYTE(v227[0]) = 15;
        strcpy(v226, "RequestWithPath");
        if (*v41)
        {
          sub_499F74(__dst, *v41);
        }

        else
        {
          sub_2C0888(__dst);
        }

        sub_7BDA0(1, v226, __dst);
        sub_2C1D4C(__dst);
        if (SHIBYTE(v227[0]) < 0)
        {
          operator delete(v226[0]);
        }

        v42 = sub_F63D58(&v243);
        if (v42)
        {
          *__dst = 12;
          *&__dst[8] = &off_2669FE0;
          sub_434934(v226, __dst);
          __dst[0] = 0;
          *&__dst[8] = *v226;
          *v202 = *v227;
          v203 = v228;
          v227[0] = 0;
          v227[1] = 0;
          v228 = 0;
          LODWORD(v204) = v229;
          sub_D1E024(v10, __dst);
          if (__dst[0] == 1)
          {
            sub_D1D6D4(&__dst[8]);
          }

          else
          {
            v58 = v202[0];
            if (v202[0])
            {
              v59 = v202[1];
              v60 = v202[0];
              if (v202[1] != v202[0])
              {
                do
                {
                  if (*(v59 - 1) < 0)
                  {
                    operator delete(*(v59 - 3));
                  }

                  v59 -= 4;
                }

                while (v59 != v58);
                v60 = v202[0];
              }

              v202[1] = v58;
              operator delete(v60);
            }
          }

          v61 = v227[0];
          if (v227[0])
          {
            v62 = v227[1];
            v63 = v227[0];
            if (v227[1] != v227[0])
            {
              do
              {
                if (*(v62 - 1) < 0)
                {
                  operator delete(*(v62 - 3));
                }

                v62 -= 4;
              }

              while (v62 != v61);
              v63 = v227[0];
            }

            v227[1] = v61;
            operator delete(v63);
          }

          *(v10 + 880) = sub_7EA60(v262);
          sub_49AD08(&v243);
          if (v42)
          {
LABEL_345:
            v190 = v260;
            if (!v260)
            {
              goto LABEL_347;
            }

            goto LABEL_346;
          }

LABEL_188:
          if ((*(v8 + 1) - 1) <= 1 && sub_D19E84((v10 + 8)))
          {
            if (!sub_7E7E4(3u))
            {
LABEL_236:
              *__dst = 12;
              *&__dst[8] = &off_2669FE0;
              sub_434934(v226, __dst);
              __dst[0] = 0;
              *&__dst[8] = *v226;
              *v202 = *v227;
              v203 = v228;
              v227[0] = 0;
              v227[1] = 0;
              v228 = 0;
              LODWORD(v204) = v229;
              sub_D1E024(v10, __dst);
              if (__dst[0] == 1)
              {
                sub_D1D6D4(&__dst[8]);
              }

              else
              {
                v136 = v202[0];
                if (v202[0])
                {
                  v137 = v202[1];
                  v138 = v202[0];
                  if (v202[1] != v202[0])
                  {
                    do
                    {
                      if (*(v137 - 1) < 0)
                      {
                        operator delete(*(v137 - 3));
                      }

                      v137 -= 4;
                    }

                    while (v137 != v136);
                    v138 = v202[0];
                  }

                  v202[1] = v136;
                  operator delete(v138);
                }
              }

              v139 = v227[0];
              if (v227[0])
              {
                v140 = v227[1];
                v141 = v227[0];
                if (v227[1] != v227[0])
                {
                  do
                  {
                    if (*(v140 - 1) < 0)
                    {
                      operator delete(*(v140 - 3));
                    }

                    v140 -= 4;
                  }

                  while (v140 != v139);
                  v141 = v227[0];
                }

                v227[1] = v139;
                operator delete(v141);
              }

              *(v10 + 880) = sub_7EA60(v262);
              goto LABEL_345;
            }

            sub_19594F8(__dst);
            sub_4A5C(__dst, "Decoded path contains at least one leg with an invalid DRIVING to WALKING mode transition.", 90);
            if ((v210 & 0x10) != 0)
            {
              v131 = v209;
              if (v209 < v205)
              {
                v209 = v205;
                v131 = v205;
              }

              v132 = &v204;
            }

            else
            {
              if ((v210 & 8) == 0)
              {
                v109 = 0;
                HIBYTE(v227[0]) = 0;
LABEL_231:
                *(v226 + v109) = 0;
                sub_7E854(v226, 3u);
                if (SHIBYTE(v227[0]) < 0)
                {
                  operator delete(v226[0]);
                }

                if (SHIBYTE(v208) < 0)
                {
                  operator delete(v206[1]);
                }

                std::locale::~locale(&__dst[16]);
                std::ostream::~ostream();
                std::ios::~ios();
                goto LABEL_236;
              }

              v132 = v202;
              v131 = v203;
            }

            v135 = *v132;
            v109 = v131 - *v132;
            if (v109 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v109 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v227[0]) = v131 - *v132;
            if (v109)
            {
              memmove(v226, v135, v109);
            }

            goto LABEL_231;
          }

          v110 = *(v8 + 38);
          v111 = *(v8 + 39);
          if (v110 == v111)
          {
            goto LABEL_267;
          }

          v112 = sub_F63FF4((v10 + 8));
          v113 = sub_45AC50(v10 + 8);
          v114 = *(v8 + 38);
          v115 = sub_588D8(v10 + 8);
          if (v113 != v115)
          {
            v120 = (v114 + 136 * (0xF0F0F0F0F0F0F0F1 * ((v111 - v110) >> 3) - v112));
            do
            {
              sub_3EDBB0(__dst, v120);
              v212 = xmmword_22AC2E0;
              sub_F68F5C(v113, __dst);
              if (v206[0])
              {
                v206[1] = v206[0];
                operator delete(v206[0]);
              }

              if (v203)
              {
                v204 = v203;
                operator delete(v203);
              }

              v113 += 552;
              v120 = (v120 + 136);
            }

            while (v113 != v115);
          }

          v116 = sub_45AC50(v10 + 8);
          v117 = sub_73EEC(v116);
          v118 = v117;
          v119 = *(v117 + 112);
          switch(v119)
          {
            case 0:
              goto LABEL_267;
            case 2:
              v121 = *(v117 + 104);
              if (v121 > 0xFFFFFFFEFFFFFFFFLL || !v121)
              {
                goto LABEL_267;
              }

              break;
            case 1:
              if (*(v117 + 104) == -1)
              {
                goto LABEL_267;
              }

              break;
            default:
              sub_5AF20();
          }

          v122 = sub_3B1D8C(*(v8 + 49));
          sub_2AB8BC(v122, *(v118 + 104), *(v118 + 112));
          *(*(v10 + 136) + 16) = v123;
          v124 = sub_2AB71C(v122, *(v118 + 104), *(v118 + 112));
          v125 = sub_2ACC94(v122, v124);
          v126 = HIDWORD(v125) - *(v8 + 29);
          v127 = v125 - *(v8 + 28);
          v128 = sqrt((v127 * v127 + v126 * v126)) / 100.0 * 100.0;
          if (v128 >= 4.50359963e15)
          {
            if (v128 >= 9.22337204e18)
            {
LABEL_214:
              if (sub_7E7E4(1u))
              {
                sub_19594F8(__dst);
                sub_4A5C(__dst, "Distance between user location and the user route's origin charging station is approximately ", 93);
                v129 = std::ostream::operator<<();
                sub_4A5C(v129, " meters.", 8);
                if ((v210 & 0x10) != 0)
                {
                  v133 = v209;
                  if (v209 < v205)
                  {
                    v209 = v205;
                    v133 = v205;
                  }

                  v134 = &v204;
                }

                else
                {
                  if ((v210 & 8) == 0)
                  {
                    v130 = 0;
                    HIBYTE(v227[0]) = 0;
LABEL_262:
                    *(v226 + v130) = 0;
                    sub_7E854(v226, 1u);
                    if (SHIBYTE(v227[0]) < 0)
                    {
                      operator delete(v226[0]);
                    }

                    if (SHIBYTE(v208) < 0)
                    {
                      operator delete(v206[1]);
                    }

                    std::locale::~locale(&__dst[16]);
                    std::ostream::~ostream();
                    std::ios::~ios();
                    goto LABEL_267;
                  }

                  v134 = v202;
                  v133 = v203;
                }

                v142 = *v134;
                v130 = v133 - *v134;
                if (v130 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v130 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v227[0]) = v133 - *v134;
                if (v130)
                {
                  memmove(v226, v142, v130);
                }

                goto LABEL_262;
              }

LABEL_267:
              if (*(v10 + 872) == 1)
              {
                nullsub_1();
                v144 = v143;
                v147 = v143;
                v145 = *v143;
                v146 = v147[1];
                v148 = v146 - v145;
                if (v146 != v145)
                {
                  *__dst = 0;
                  sub_F69690(v145, __dst);
                  v149 = *v144;
                  v150 = v144[1] - *v144 == 552 ? 1 : 327679;
                  *__dst = v150;
                  sub_F6969C(v149, __dst);
                  if (v148 != 552)
                  {
                    v151 = 1;
                    v152 = 552;
                    do
                    {
                      v153 = *v144;
                      *__dst = 327679;
                      sub_F69690(v153 + v152, __dst);
                      v154 = *v144;
                      if (v151 == -1 - 0xED7303B5CC0ED73 * ((v144[1] - *v144) >> 3))
                      {
                        v155 = 1;
                      }

                      else
                      {
                        v155 = 327679;
                      }

                      *__dst = v155;
                      sub_F6969C(v154 + v152, __dst);
                      ++v151;
                      v152 += 552;
                    }

                    while (0xF128CFC4A33F128DLL * (v148 >> 3) != v151);
                  }
                }

LABEL_337:
                if (v8[401] == 1)
                {
                  sub_1175710(__dst, *(v8 + 49));
                  v186 = *sub_3B6890(*(v8 + 49));
                  v187 = v8[8];
                  v188 = sub_1178874(__dst);
                  sub_1175714(__dst, (v200 + 8), v188, v186, v187);
                  *&v216[2] = v189;
                  if (v219 < 0)
                  {
                    operator delete(v218[7].__locale_);
                  }

                  std::locale::~locale(v218);
                  std::iostream::~basic_iostream();
                  std::ios::~ios();
                  if (v215 == 1)
                  {
                    sub_3E3DF0(v214);
                  }

                  if (v213 == 1)
                  {
                    sub_3E3DF0(&v208);
                  }
                }

                sub_1184AF8(__dst, *(v8 + 49));
              }

              v157 = *(v8 + 41);
              v156 = *(v8 + 42);
              v158 = sub_F63FF4((v10 + 8));
              if (v156 - v157 >= v158 + 1)
              {
                v159 = v156 - v157 - (v158 + 1);
              }

              else
              {
                v159 = 0;
              }

              nullsub_1();
              v161 = v160[1] - *v160;
              if (!v161)
              {
                goto LABEL_337;
              }

              v162 = 0;
              v163 = 0;
              v199 = 0xF128CFC4A33F128DLL * (v161 >> 3);
              while (1)
              {
                v164 = v163 + 1;
                v165 = *(v8 + 44);
                if (v165 == *(v8 + 45))
                {
                  v226[1] = 0;
                  v226[0] = 0;
                  v227[0] = 0;
                  v243 = 0uLL;
                  v244 = 0;
                  if (!v163)
                  {
LABEL_290:
                    v170 = 1;
                    goto LABEL_293;
                  }
                }

                else
                {
                  v166 = v165 + 24 * v159;
                  v167 = v166 + 24 * v163;
                  *v226 = *v167;
                  v227[0] = *(v167 + 16);
                  v168 = (v166 + 24 * v164);
                  v243 = *v168;
                  v244 = *(v168 + 2);
                  if (!v163)
                  {
                    goto LABEL_290;
                  }
                }

                nullsub_1();
                if (v163 + v159 == 0xF128CFC4A33F128DLL * ((v169[1] - *v169) >> 3))
                {
                  v170 = 1;
                  if (v163 == -1)
                  {
                    goto LABEL_312;
                  }
                }

                else
                {
                  v171 = *(v8 + 41);
                  if (v171 == *(v8 + 42))
                  {
                    v170 = 0;
                    if (v163 == -1)
                    {
LABEL_312:
                      v173 = 1;
                      v174 = 1;
                      if (v170)
                      {
LABEL_295:
                        *v224 = *v226;
                        v225 = v227[0];
                        if (**(v8 + 37) == *(*(v8 + 37) + 8))
                        {
                          v178 = 0x1FFFF;
                        }

                        else if (v163)
                        {
                          if (sub_585D8(v224))
                          {
                            v175 = *(v8 + 37);
                            v177 = *v175;
                            v176 = v175[1];
                            *__dst = *v224;
                            *&__dst[16] = v225;
                            if (v177 != v176)
                            {
                              do
                              {
                                if (sub_588E8((v177 + 288), __dst))
                                {
                                  goto LABEL_302;
                                }

                                v177 += 440;
                              }

                              while (v177 != v176);
                              v177 = v176;
LABEL_302:
                              v175 = *(v8 + 37);
                            }

                            if (v177 == v175[1])
                            {
                              v178 = 393215;
                            }

                            else
                            {
                              v178 = (-19065 * ((v177 - *v175) >> 3));
                            }
                          }

                          else
                          {
                            v178 = v162;
                          }
                        }

                        else
                        {
                          v178 = 196607;
                          if (*(v8 + 1) != 2)
                          {
                            v178 = 0;
                          }
                        }

                        goto LABEL_318;
                      }

                      goto LABEL_307;
                    }
                  }

                  else
                  {
                    v170 = *(v171 + v163 + v159) == 1;
                    if (v163 == -1)
                    {
                      goto LABEL_312;
                    }
                  }
                }

LABEL_293:
                nullsub_1();
                if (v164 + v159 == 0xF128CFC4A33F128DLL * ((v172[1] - *v172) >> 3))
                {
                  v173 = 0;
                  v174 = 1;
                  if (v170)
                  {
                    goto LABEL_295;
                  }
                }

                else
                {
                  v179 = *(v8 + 41);
                  if (v179 == *(v8 + 42))
                  {
                    v173 = 0;
                    v174 = 0;
                    if (v170)
                    {
                      goto LABEL_295;
                    }
                  }

                  else
                  {
                    v173 = 0;
                    v174 = *(v179 + v164 + v159) == 1;
                    if (v170)
                    {
                      goto LABEL_295;
                    }
                  }
                }

LABEL_307:
                v178 = 0x3FFFF;
LABEL_318:
                *v223 = v178;
                nullsub_1();
                sub_F69690(*v180 + 552 * v163, v223);
                v162 += v174;
                if (v174)
                {
                  *v224 = v243;
                  v225 = v244;
                  if (**(v8 + 37) == *(*(v8 + 37) + 8))
                  {
                    v181 = 0x1FFFF;
                  }

                  else if (v173)
                  {
                    v181 = 196607;
                    if (*(v8 + 1) != 2)
                    {
                      v181 = 0;
                    }
                  }

                  else if (sub_585D8(v224))
                  {
                    v182 = *(v8 + 37);
                    v183 = *v182;
                    v184 = v182[1];
                    *__dst = *v224;
                    *&__dst[16] = v225;
                    if (v183 != v184)
                    {
                      do
                      {
                        if (sub_588E8((v183 + 288), __dst))
                        {
                          goto LABEL_330;
                        }

                        v183 += 440;
                      }

                      while (v183 != v184);
                      v183 = v184;
LABEL_330:
                      v182 = *(v8 + 37);
                    }

                    if (v183 == v182[1])
                    {
                      v181 = 393215;
                    }

                    else
                    {
                      v181 = (-19065 * ((v183 - *v182) >> 3));
                    }
                  }

                  else
                  {
                    v181 = v162;
                  }

                  LODWORD(v222[0]) = v181;
                }

                else
                {
                  LODWORD(v222[0]) = 0x3FFFF;
                }

                nullsub_1();
                sub_F6969C(*v185 + 552 * v163++, v222);
                if (v164 == v199)
                {
                  goto LABEL_337;
                }
              }
            }
          }

          else
          {
            v128 = (((v128 + v128) + 1) >> 1);
            if (v128 >= 9.22337204e18)
            {
              goto LABEL_214;
            }
          }

          if (v128 < 5001)
          {
            goto LABEL_267;
          }

          goto LABEL_214;
        }

        if (*(v198 + 128) != 1)
        {
          sub_614924(v10 + 160, *(v8 + 48));
          goto LABEL_149;
        }

        v43 = sub_4C5154(v198);
        v44 = sub_4F9718(v198) + v43;
        if (sub_F63FF4(&v243) <= v44 || (v255 & 1) != 0 || (v45 = sub_74700(), !sub_7E7E4(1u)))
        {
LABEL_115:
          v67 = sub_F63FF4(&v243);
          if (v44 >= v67)
          {
            v68 = v44 - v67;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(v8 + 94) + v67;
          if (v44 >= v69)
          {
            v70 = v44 - v69;
          }

          else
          {
            v70 = 0;
          }

          sub_4EC9D4(*(v8 + 48), __dst);
          sub_D16C58(v10 + 160, __dst);
          sub_5287C0(__dst);
          v226[1] = 0;
          v226[0] = 0;
          v227[0] = 0;
          v71 = sub_F63FF4(&v243);
          sub_4FA4DC(v226, v71);
          sub_4F970C(v198, __dst);
          v195 = v68;
          v196 = v69;
          v72 = *__dst;
          sub_4F970C(v198, v224);
          v194 = v70;
          v73 = (v72 + 144 * v70);
          v74 = v224[1];
          if (v73 != v224[1])
          {
            v80 = v226[1];
            do
            {
              if (v80 >= v227[0])
              {
                v80 = sub_D1D4D4(v226, v73);
              }

              else
              {
                sub_4F15C8(v80, v73);
                v80 += 144;
              }

              v226[1] = v80;
              v73 += 18;
            }

            while (v73 != v74);
          }

          v75 = sub_3F80(v198);
          v76 = sub_4F96B8(v198);
          v77 = sub_588D8(v198);
          v193 = sub_4F96C0(v198);
          v192 = sub_4F96C8(v198);
          v191 = sub_4F96D0(v198);
          v78 = sub_4F96D8(v198);
          sub_4C35D4(v198, v222);
          v79 = v222[0];
          sub_4C35D4(v198, &v220);
          v225 = 0;
          v224[0] = 0;
          v224[1] = 0;
          if (v221 != v79)
          {
            if (((v221 - v79) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          if (v44 <= v196)
          {
            v10 = v200;
            v81 = sub_57478(v198);
            v82 = *v81;
            *&v223[16] = *(v81 + 16);
            *v223 = v82;
          }

          else
          {
            *v223 = 0x8000000080000000;
            *&v223[8] = xmmword_2297C00;
            *&v223[8] = 0x7FFFFFFF;
            v10 = v200;
          }

          v83 = sub_73ED4(v198);
          sub_4F9688(__dst, v75, v76, v77, v193, v192, v191, v78, v195 - v194, v224, v223, v226, v83);
          sub_4EC0C0(v10 + 160, __dst);
          if (v210)
          {
            v211 = v210;
            operator delete(v210);
          }

          v84 = v206[1];
          if (v206[1])
          {
            v85 = v207;
            v86 = v206[1];
            if (v207 != v206[1])
            {
              do
              {
                v85 = sub_4F0FB4(v85 - 144);
              }

              while (v85 != v84);
              v86 = v206[1];
            }

            v207 = v84;
            operator delete(v86);
          }

          if (v202[0])
          {
            v202[1] = v202[0];
            operator delete(v202[0]);
          }

          if (v224[0])
          {
            v224[1] = v224[0];
            operator delete(v224[0]);
          }

          v87 = v226[0];
          if (v226[0])
          {
            v88 = v226[1];
            v89 = v226[0];
            if (v226[1] != v226[0])
            {
              do
              {
                v88 = sub_4F0FB4(v88 - 144);
              }

              while (v88 != v87);
              v89 = v226[0];
            }

            v226[1] = v87;
            operator delete(v89);
          }

LABEL_149:
          v90 = *(v10 + 8);
          if (v90)
          {
            v91 = *(v10 + 16);
            v92 = *(v10 + 8);
            if (v91 != v90)
            {
              do
              {
                v91 = sub_4547F0(v91 - 552);
              }

              while (v91 != v90);
              v92 = *(v10 + 8);
            }

            *(v10 + 16) = v90;
            operator delete(v92);
          }

          *(v10 + 8) = v243;
          *(v10 + 24) = v244;
          v244 = 0;
          v243 = 0uLL;
          if (*(v10 + 55) < 0)
          {
            operator delete(*(v10 + 32));
          }

          *(v10 + 32) = v245;
          *(v10 + 48) = v246;
          HIBYTE(v246) = 0;
          LOBYTE(v245) = 0;
          v93 = *v197;
          if (*v197)
          {
            v94 = *(v10 + 64);
            v95 = *v197;
            if (v94 != v93)
            {
              do
              {
                v94 = sub_4547F0(v94 - 552);
              }

              while (v94 != v93);
              v95 = *v197;
            }

            *(v10 + 64) = v93;
            operator delete(v95);
          }

          *(v10 + 56) = v247;
          *(v10 + 72) = v248;
          v248 = 0;
          v247 = 0uLL;
          if (*(v10 + 103) < 0)
          {
            operator delete(*(v10 + 80));
          }

          *(v10 + 80) = v249;
          *(v10 + 96) = v250;
          HIBYTE(v250) = 0;
          LOBYTE(v249) = 0;
          v96 = *v11;
          if (*v11)
          {
            v97 = *(v10 + 120);
            v98 = *v11;
            if (v97 != v96)
            {
              v99 = *(v10 + 120);
              do
              {
                v101 = *(v99 - 3);
                v99 -= 24;
                v100 = v101;
                if (v101)
                {
                  *(v97 - 2) = v100;
                  operator delete(v100);
                }

                v97 = v99;
              }

              while (v99 != v96);
              v98 = *v11;
            }

            *(v10 + 120) = v96;
            operator delete(v98);
          }

          *(v10 + 112) = v251;
          *(v10 + 128) = *&v252[0];
          *&v252[0] = 0;
          v251 = 0uLL;
          v102 = *(v10 + 136);
          if (v102)
          {
            v103 = *(v10 + 144);
            v104 = *(v10 + 136);
            if (v103 != v102)
            {
              do
              {
                v103 = sub_49AEC0(v103 - 30);
              }

              while (v103 != v102);
              v104 = *(v10 + 136);
            }

            *(v10 + 144) = v102;
            operator delete(v104);
          }

          v105 = v11 + 98;
          *(v10 + 136) = *(v252 + 8);
          *(v10 + 152) = *(&v252[1] + 1);
          memset(v252 + 8, 0, 24);
          if (*(v10 + 872) == v255)
          {
            if (!*(v10 + 872))
            {
LABEL_180:
              *v105 = 0;
              sub_49AD08(&v243);
              goto LABEL_188;
            }

            v106 = *(v10 + 848);
            if (v106)
            {
              *(v10 + 856) = v106;
              operator delete(v106);
              v107 = *(v10 + 872);
              *(v10 + 848) = v253;
              *(v10 + 864) = v254;
              v254 = 0;
              v253 = 0uLL;
              if ((v107 & 1) == 0)
              {
                goto LABEL_180;
              }
            }

            else
            {
              *(v10 + 848) = v253;
              *(v10 + 864) = v254;
              v254 = 0;
              v253 = 0uLL;
            }
          }

          else
          {
            if (*(v10 + 872))
            {
              v108 = *(v10 + 848);
              if (v108)
              {
                *(v10 + 856) = v108;
                operator delete(v108);
              }

              *(v10 + 872) = 0;
              *v105 = 0;
              sub_49AD08(&v243);
              goto LABEL_188;
            }

            *(v10 + 848) = v253;
            *(v10 + 864) = v254;
            v254 = 0;
            v253 = 0uLL;
            *(v10 + 872) = 1;
          }

          *v105 = 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 856) - *(v10 + 848)) >> 3);
          sub_49AD08(&v243);
          goto LABEL_188;
        }

        sub_19594F8(__dst);
        sub_4A5C(__dst, "Got a request where the session_state contains fewer legs (", 59);
        v46 = std::ostream::operator<<();
        sub_4A5C(v46, ") than the number of legs decoded (", 35);
        sub_F63FF4(&v243);
        v47 = std::ostream::operator<<();
        v48 = sub_4A5C(v47, "): ", 3);
        LODWORD(v224[0]) = sub_7421C(v45);
        sub_7230C(v224, v226);
        if (SHIBYTE(v227[0]) >= 0)
        {
          v49 = v226;
        }

        else
        {
          v49 = v226[0];
        }

        if (SHIBYTE(v227[0]) >= 0)
        {
          v50 = HIBYTE(v227[0]);
        }

        else
        {
          v50 = v226[1];
        }

        v51 = sub_4A5C(v48, v49, v50);
        v52 = sub_4A5C(v51, " request: ", 10);
        v53 = sub_73F1C(v45);
        v54 = *(v53 + 23);
        if (v54 >= 0)
        {
          v55 = v53;
        }

        else
        {
          v55 = *v53;
        }

        if (v54 >= 0)
        {
          v56 = *(v53 + 23);
        }

        else
        {
          v56 = *(v53 + 8);
        }

        sub_4A5C(v52, v55, v56);
        if (SHIBYTE(v227[0]) < 0)
        {
          operator delete(v226[0]);
        }

        if ((v210 & 0x10) != 0)
        {
          v64 = v209;
          if (v209 < v205)
          {
            v209 = v205;
            v64 = v205;
          }

          v65 = &v204;
        }

        else
        {
          if ((v210 & 8) == 0)
          {
            v57 = 0;
            HIBYTE(v227[0]) = 0;
LABEL_110:
            *(v226 + v57) = 0;
            sub_7E854(v226, 1u);
            if (SHIBYTE(v227[0]) < 0)
            {
              operator delete(v226[0]);
            }

            if (SHIBYTE(v208) < 0)
            {
              operator delete(v206[1]);
            }

            std::locale::~locale(&__dst[16]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_115;
          }

          v65 = v202;
          v64 = v203;
        }

        v66 = *v65;
        v57 = v64 - *v65;
        if (v57 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v57 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v227[0]) = v64 - *v65;
        if (v57)
        {
          memmove(v226, v66, v57);
        }

        goto LABEL_110;
      }

      v26 = 0;
      if (((1 << v25) & 0x2A86) == 0)
      {
LABEL_25:
        *(v10 + 888) = 1;
        if (*(v8 + 6) != -1)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

LABEL_24:
      v26 = *(v8 + 36) != 0x7FFFFFFFFFFFFFFFLL;
      v24 = 1;
      goto LABEL_25;
    }

    v24 = 0;
    v26 = 0;
    *(v10 + 888) = 1;
    if (*(v8 + 6) != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  nullsub_1();
  if (*(v32 + 128) == 1)
  {
    nullsub_1();
    sub_4F96F4(v33, __dst);
    if (*__dst != *&__dst[8] && sub_4F8F28(*__dst))
    {
      sub_4F96F4(v198, v226);
      sub_4924B0(v257, v226, (v8 + 112));
    }
  }

  if (*(v8 + 7) != *(v8 + 8))
  {
    sub_48E5A4(v257, (v8 + 56), (v8 + 112), v27, v28, v29, v30, v31);
    sub_D1635C(&v243, __dst);
    sub_49AD08(__dst);
    goto LABEL_52;
  }

  *__dst = 12;
  *&__dst[8] = &off_2669FE0;
  sub_434934(v226, __dst);
  __dst[0] = 0;
  *&__dst[8] = *v226;
  *v202 = *v227;
  v203 = v228;
  v227[0] = 0;
  v227[1] = 0;
  v228 = 0;
  LODWORD(v204) = v229;
  sub_D1E024(v10, __dst);
  if (__dst[0] == 1)
  {
    sub_D1D6D4(&__dst[8]);
  }

  else
  {
    v35 = v202[0];
    if (v202[0])
    {
      v36 = v202[1];
      v37 = v202[0];
      if (v202[1] != v202[0])
      {
        do
        {
          if (*(v36 - 1) < 0)
          {
            operator delete(*(v36 - 3));
          }

          v36 -= 4;
        }

        while (v36 != v35);
        v37 = v202[0];
      }

      v202[1] = v35;
      operator delete(v37);
    }
  }

  v38 = v227[0];
  if (v227[0])
  {
    v39 = v227[1];
    v40 = v227[0];
    if (v227[1] != v227[0])
    {
      do
      {
        if (*(v39 - 1) < 0)
        {
          operator delete(*(v39 - 3));
        }

        v39 -= 4;
      }

      while (v39 != v38);
      v40 = v227[0];
    }

    v227[1] = v38;
    operator delete(v40);
  }

  *(v10 + 880) = sub_7EA60(v262);
  sub_49AD08(&v243);
  v190 = v260;
  if (v260)
  {
LABEL_346:
    v261 = v190;
    operator delete(v190);
  }

LABEL_347:
  if (v258)
  {
    v259 = v258;
    operator delete(v258);
  }
}

void sub_D199F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49AD08(&STACK[0x2D80]);
  sub_D05E04((v22 - 232));
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D19DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_49A8F8(va);
  sub_D05E04((v22 - 232));
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D19DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_D05E04((v22 - 232));
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

unint64_t sub_D19E1C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_D1D838(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 552;
  }

  else
  {
    sub_49EA74(*(a1 + 8), a2);
    *(a1 + 8) = v3 + 552;
    *(a1 + 8) = v3 + 552;
    return v3;
  }
}

uint64_t sub_D19E84(void *a1)
{
  sub_68C448(a1, v61);
  v1 = v61[0];
  v2 = v61[1];
  while (1)
  {
    if (v1 == v2)
    {
      return 0;
    }

    sub_F6D05C(v1, v62);
    v3 = v62[0];
    v4 = v62[1];
    v5 = v63;
    v6 = v64;
    if (v62[0])
    {
      if (v63)
      {
        while (1)
        {
          v8 = sub_F6D024(v3);
          v9 = sub_F6D024(v5);
          if (v4 >= v8 || v6 >= v9)
          {
            if (v4 < v8 == v6 < v9)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v10 = sub_F6D17C(v3, v4);
            if (v10 == sub_F6D17C(v5, v6))
            {
              goto LABEL_48;
            }
          }

          v11 = sub_F6D17C(v3, v4);
          v12 = *v11;
          v13 = (*v11 - **v11);
          v14 = *v13;
          if (*(v11 + 38))
          {
            if (v14 < 0x9B)
            {
              goto LABEL_48;
            }

            v15 = v13[77];
            if (!v15 || (*(v12 + v15) & 2) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v14 < 0x9B)
            {
              goto LABEL_48;
            }

            v16 = v13[77];
            if (!v16 || (*(v12 + v16) & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v4 = (v4 + 1);
        }
      }

      if (v4 < sub_F6D024(v62[0]))
      {
        while (1)
        {
          v17 = sub_F6D17C(v3, v4);
          v18 = *v17;
          v19 = (*v17 - **v17);
          v20 = *v19;
          if (*(v17 + 38))
          {
            if (v20 < 0x9B)
            {
              goto LABEL_48;
            }

            v21 = v19[77];
            if (!v21 || (*(v18 + v21) & 2) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v20 < 0x9B)
            {
              goto LABEL_48;
            }

            v22 = v19[77];
            if (!v22 || (*(v18 + v22) & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v4 = (v4 + 1);
          if (v4 >= sub_F6D024(v3))
          {
            goto LABEL_48;
          }
        }
      }

      v5 = v63;
      v6 = v64;
      v7 = sub_F6D024(v3);
      if (!v5)
      {
        goto LABEL_9;
      }

LABEL_50:
      v29 = sub_F6D024(v5);
      if (v4 >= v7 || v6 >= v29)
      {
        if (v4 < v7 == v6 < v29)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v30 = sub_F6D17C(v3, v4);
        if (v30 == sub_F6D17C(v5, v6))
        {
          goto LABEL_3;
        }
      }

      goto LABEL_70;
    }

    if (v63)
    {
      break;
    }

LABEL_54:
    if (!v5 || v6 >= sub_F6D024(v5))
    {
      goto LABEL_3;
    }

    v31 = v4 + 1;
    v32 = v63;
    v33 = v64;
    if (!v63)
    {
      goto LABEL_100;
    }

    if (v33 >= sub_F6D024(v63))
    {
      v32 = v63;
      v33 = v64;
LABEL_100:
      v42 = 0;
      if (!v32)
      {
        goto LABEL_2;
      }

      goto LABEL_101;
    }

    while (1)
    {
      v34 = sub_F6D17C(v3, v31);
      v35 = *v34;
      v36 = (*v34 - **v34);
      v37 = *v36;
      if (!*(v34 + 38))
      {
        break;
      }

      if (v37 >= 0x9B)
      {
        v38 = v36[77];
        if (v38)
        {
          if ((*(v35 + v38) & 2) != 0)
          {
            goto LABEL_97;
          }
        }
      }

LABEL_59:
      ++v31;
      if (v33 >= sub_F6D024(v32))
      {
        goto LABEL_97;
      }
    }

    if (v37 < 0x9B)
    {
      goto LABEL_59;
    }

    v39 = v36[77];
    if (!v39 || (*(v35 + v39) & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_97:
    v32 = v63;
    v33 = v64;
    if (!v3)
    {
      goto LABEL_100;
    }

    v42 = v31 < sub_F6D024(v3);
    if (!v32)
    {
      goto LABEL_2;
    }

LABEL_101:
    v57 = sub_F6D024(v32);
    if (v33 < v57 && v42)
    {
      v59 = sub_F6D17C(v3, v31);
      if (v59 != sub_F6D17C(v32, v33))
      {
        return 1;
      }
    }

    else if ((v42 ^ (v33 < v57)))
    {
      return 1;
    }

LABEL_3:
    v1 += 69;
  }

  if (v6 >= sub_F6D024(v63))
  {
    v5 = v63;
    v6 = v64;
    goto LABEL_54;
  }

  while (1)
  {
    v23 = sub_F6D17C(0, v4);
    v24 = *v23;
    v25 = (*v23 - **v23);
    v26 = *v25;
    if (!*(v23 + 38))
    {
      break;
    }

    if (v26 < 0x9B)
    {
      goto LABEL_48;
    }

    v27 = v25[77];
    if (!v27 || (*(v24 + v27) & 2) == 0)
    {
      goto LABEL_48;
    }

LABEL_39:
    v4 = (v4 + 1);
    if (v6 >= sub_F6D024(v5))
    {
      goto LABEL_48;
    }
  }

  if (v26 >= 0x9B)
  {
    v28 = v25[77];
    if (v28)
    {
      if (*(v24 + v28))
      {
        goto LABEL_39;
      }
    }
  }

LABEL_48:
  v5 = v63;
  v6 = v64;
  if (!v3)
  {
    goto LABEL_54;
  }

  v7 = sub_F6D024(v3);
  if (v5)
  {
    goto LABEL_50;
  }

LABEL_9:
  if (v4 >= v7)
  {
    goto LABEL_3;
  }

LABEL_70:
  v31 = v4 + 1;
  v40 = v63;
  v41 = v64;
  if (v63)
  {
    while (1)
    {
      v43 = sub_F6D024(v3);
      v44 = sub_F6D024(v40);
      if (v31 >= v43 || v41 >= v44)
      {
        if (v31 < v43 == v41 < v44)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v45 = sub_F6D17C(v3, v31);
        if (v45 == sub_F6D17C(v40, v41))
        {
          goto LABEL_97;
        }
      }

      v46 = sub_F6D17C(v3, v31);
      v47 = (*v46 - **v46);
      v48 = *v47;
      if (*(v46 + 38))
      {
        if (v48 < 0x9B)
        {
          goto LABEL_75;
        }

        v49 = v47[77];
        if (!v49)
        {
          goto LABEL_75;
        }

        v50 = 2;
      }

      else
      {
        if (v48 < 0x9B)
        {
          goto LABEL_75;
        }

        v49 = v47[77];
        if (!v49)
        {
          goto LABEL_75;
        }

        v50 = 1;
      }

      if ((*(*v46 + v49) & v50) != 0)
      {
        goto LABEL_97;
      }

LABEL_75:
      ++v31;
    }
  }

  if (v31 < sub_F6D024(v3))
  {
    while (1)
    {
      v51 = sub_F6D17C(v3, v31);
      v52 = *v51;
      v53 = (*v51 - **v51);
      v54 = *v53;
      if (*(v51 + 38))
      {
        if (v54 >= 0x9B)
        {
          v55 = v53[77];
          if (v55)
          {
            if ((*(v52 + v55) & 2) != 0)
            {
              goto LABEL_97;
            }
          }
        }
      }

      else if (v54 >= 0x9B)
      {
        v56 = v53[77];
        if (v56)
        {
          if (*(v52 + v56))
          {
            goto LABEL_97;
          }
        }
      }

      if (++v31 >= sub_F6D024(v3))
      {
        goto LABEL_97;
      }
    }
  }

  v32 = v63;
  v33 = v64;
  v42 = v31 < sub_F6D024(v3);
  if (v32)
  {
    goto LABEL_101;
  }

LABEL_2:
  if (!v42)
  {
    goto LABEL_3;
  }

  return 1;
}

void sub_D1A428(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v227);
  *a2 = 1;
  bzero((a2 + 8), 0x368uLL);
  sub_4E3D18((a2 + 8));
  sub_4E3D18((a2 + 56));
  *(a2 + 112) = 0u;
  v4 = (a2 + 112);
  *(a2 + 104) = -1;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 424) = 0;
  *(a2 + 556) = 0;
  *(a2 + 544) = 0;
  *(a2 + 552) = 0;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 524) = 0u;
  *(a2 + 608) = 0x3FF0000000000000;
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a2 + 640) = 5;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 696) = 0x7FFFFFFF;
  *(a2 + 784) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 761) = 0u;
  *(a2 + 800) = -1;
  *(a2 + 808) = 0x7FFFFFFF;
  *(a2 + 812) = 0;
  *(a2 + 820) = 0;
  *(a2 + 824) = -1;
  *(a2 + 832) = -1;
  *(a2 + 840) = 0;
  *(a2 + 848) = 0;
  *(a2 + 872) = 0;
  *(a2 + 880) = 0;
  *(a2 + 888) = 0;
  *(a2 + 896) = 0u;
  *(a2 + 912) = 0;
  v189 = a2;
  sub_493F9C(v222, *(a1 + 49), a1[380], a1[402]);
  v5 = sub_4EE130(*(a1 + 48));
  v7 = v5 != 2 && v5 != 5;
  nullsub_1();
  v9 = v8;
  sub_4E3D18(&v208);
  v186 = (a2 + 56);
  v187 = v9;
  sub_4E3D18(&v212);
  v220 = 0;
  v216 = 0u;
  memset(v217, 0, sizeof(v217));
  LOBYTE(v218) = 0;
  v221 = 0uLL;
  if (a1[400] == 1 && sub_4EDAF4(*(a1 + 48)))
  {
    v11 = sub_4EDB10(*(a1 + 48), v10);
    sub_4F1328(v196, v11);
    *(a2 + 104) = sub_3F80(v196);
    sub_4F9780(v196, v194);
    sub_493FA0(v222, v194, (a1 + 112), *(a1 + 36), 0, 1, v7, 0, 0);
  }

  if (*(a1 + 10) != *(a1 + 11))
  {
    v196[1] = 0x7FFFFFFF;
    memset(&v198[8], 0, 40);
    v200 = 0u;
    v201 = 0u;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v196[0] = -1;
    v197[0] = -1;
    v197[1] = -1;
    *v198 = 0x7FFFFFFFFFFFFFFFLL;
    *&v198[16] = -1935635296;
    *&v198[24] = 0;
    *&v198[31] = 0;
    v199 = 0;
    *&v200 = 0;
    DWORD2(v200) = 0;
    *&v201 = 0x7FFFFFFFFFFFFFFFLL;
    BYTE8(v201) = 100;
    v202 = 0;
    v203 = 0;
    v204 = vnegq_f64(v12);
    __p = 0;
    v206 = 0;
    v207 = 0;
    sub_499B64(__dst);
    sub_D1635C(&v208, __dst);
    sub_49AD08(__dst);
    if (!sub_F64B34(&v208))
    {
      v13 = sub_F63FD8(&v208);
      v14 = *(v13 + 16);
      *__dst = *v13;
      *&__dst[16] = v14;
      v15 = *(v13 + 32);
      v16 = *(v13 + 48);
      v17 = *(v13 + 64);
      v231 = *(v13 + 80);
      v229 = v16;
      *v230 = v17;
      *&__dst[32] = v15;
      *__dst = *(a1 + 26);
      nullsub_1();
      sub_F68F20(*v18, __dst);
      v19 = sub_F63FE0(&v208);
      v20 = *(v19 + 16);
      *v196 = *v19;
      *v197 = v20;
      v21 = *(v19 + 32);
      v22 = *(v19 + 48);
      v23 = *(v19 + 64);
      v199 = *(v19 + 80);
      *&v198[16] = v22;
      *&v198[32] = v23;
      *v198 = v21;
      LODWORD(v196[0]) = *(a1 + 27);
      nullsub_1();
      sub_F6901C(*(v24 + 8) - 552, v196);
    }

    goto LABEL_56;
  }

  if (*(a1 + 2) != *(a1 + 3))
  {
    v25 = *(a1 + 1);
    if (v25 == 2)
    {
      if (*(a1 + 36) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }
    }

    else if (v25 == 1)
    {
      v26 = 0;
      v27 = *a1;
      if (v27 > 0xD)
      {
        v28 = 0;
        *(a2 + 888) = 1;
        v31 = *(a1 + 6);
        if (v31 != -1)
        {
LABEL_30:
          if (!v28)
          {
            sub_499C1C(v222, v31, (a1 + 112), v26, __dst);
            sub_D1635C(&v208, __dst);
            sub_49AD08(__dst);
          }
        }

LABEL_32:
        if (a1[403] & v28)
        {
          v196[1] = 0x7FFFFFFF;
          memset(&v198[8], 0, 40);
          v200 = 0u;
          v201 = 0u;
          v32.f64[0] = NAN;
          v32.f64[1] = NAN;
          v196[0] = -1;
          v197[0] = -1;
          v197[1] = -1;
          *v198 = 0x7FFFFFFFFFFFFFFFLL;
          *&v198[16] = -1935635296;
          *&v198[24] = 0;
          *&v198[31] = 0;
          v199 = 0;
          *&v200 = 0;
          DWORD2(v200) = 0;
          *&v201 = 0x7FFFFFFFFFFFFFFFLL;
          BYTE8(v201) = 100;
          v202 = 0;
          v203 = 0;
          v204 = vnegq_f64(v32);
          __p = 0;
          v206 = 0;
          v207 = 0;
          sub_493FA0(v222, a1 + 2, v196, 0x7FFFFFFFFFFFFFFFLL, 0, 0, v7, 0, 0);
        }

        if (sub_F64B34(&v208))
        {
          sub_493FA0(v222, a1 + 2, (a1 + 112), *(a1 + 36), v26, 0, v7, 0, 0);
        }

        *(a2 + 104) = *(a1 + 10);
LABEL_56:
        v39 = sub_3B8500(*(a1 + 49));
        HIBYTE(v197[0]) = 15;
        strcpy(v196, "RequestWithPath");
        if (*v39)
        {
          sub_499F74(__dst, *v39);
        }

        else
        {
          sub_2C0888(__dst);
        }

        sub_7BDA0(1, v196, __dst);
        sub_2C1D4C(__dst);
        if (SHIBYTE(v197[0]) < 0)
        {
          operator delete(v196[0]);
        }

        v40 = sub_F64B34(&v208);
        if (v40)
        {
          *__dst = 12;
          *&__dst[8] = &off_2669FE0;
          sub_434934(v196, __dst);
          __dst[0] = 0;
          *&__dst[8] = *v196;
          *&__dst[24] = *v197;
          *&__dst[40] = *v198;
          v197[0] = 0;
          v197[1] = 0;
          *v198 = 0;
          LODWORD(v229) = *&v198[8];
          sub_D1E024(a2, __dst);
          if (__dst[0] == 1)
          {
            sub_D1D6D4(&__dst[8]);
          }

          else
          {
            v57 = *&__dst[24];
            if (*&__dst[24])
            {
              v58 = *&__dst[32];
              v59 = *&__dst[24];
              if (*&__dst[32] != *&__dst[24])
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
                v59 = *&__dst[24];
              }

              *&__dst[32] = v57;
              operator delete(v59);
            }
          }

          v60 = v197[0];
          if (v197[0])
          {
            v61 = v197[1];
            v62 = v197[0];
            if (v197[1] != v197[0])
            {
              do
              {
                if (*(v61 - 1) < 0)
                {
                  operator delete(*(v61 - 3));
                }

                v61 -= 4;
              }

              while (v61 != v60);
              v62 = v197[0];
            }

            v197[1] = v60;
            operator delete(v62);
          }

          *(a2 + 880) = sub_7EA60(v227);
          sub_49AD08(&v208);
          if (v40)
          {
LABEL_306:
            v180 = v225;
            if (!v225)
            {
              goto LABEL_308;
            }

            goto LABEL_307;
          }

LABEL_192:
          v109 = *(a1 + 38);
          v110 = *(a1 + 39);
          if (v109 == v110)
          {
            goto LABEL_231;
          }

          v111 = sub_F63FF4((a2 + 8));
          v112 = sub_45AC50(a2 + 8);
          v113 = *(a1 + 38);
          v114 = sub_588D8(a2 + 8);
          if (v112 != v114)
          {
            v119 = (v113 + 136 * (0xF0F0F0F0F0F0F0F1 * ((v110 - v109) >> 3) - v111));
            do
            {
              sub_3EDBB0(__dst, v119);
              v236 = xmmword_22AC2E0;
              sub_F68F5C(v112, __dst);
              if (v230[0])
              {
                v230[1] = v230[0];
                operator delete(v230[0]);
              }

              if (*&__dst[40])
              {
                *&v229 = *&__dst[40];
                operator delete(*&__dst[40]);
              }

              v112 += 552;
              v119 = (v119 + 136);
            }

            while (v112 != v114);
          }

          v115 = sub_45AC50(a2 + 8);
          v116 = sub_73EEC(v115);
          v117 = v116;
          v118 = *(v116 + 112);
          switch(v118)
          {
            case 0:
              goto LABEL_231;
            case 2:
              v120 = *(v116 + 104);
              if (v120 > 0xFFFFFFFEFFFFFFFFLL || !v120)
              {
                goto LABEL_231;
              }

              break;
            case 1:
              if (*(v116 + 104) == -1)
              {
                goto LABEL_231;
              }

              break;
            default:
              sub_5AF20();
          }

          v121 = sub_3B1D8C(*(a1 + 49));
          sub_2AB8BC(v121, *(v117 + 104), *(v117 + 112));
          *(*(a2 + 136) + 16) = v122;
          v123 = sub_2AB71C(v121, *(v117 + 104), *(v117 + 112));
          v124 = sub_2ACC94(v121, v123);
          v125 = HIDWORD(v124) - *(a1 + 29);
          v126 = v124 - *(a1 + 28);
          v127 = sqrt((v126 * v126 + v125 * v125)) / 100.0 * 100.0;
          if (v127 >= 4.50359963e15)
          {
            if (v127 >= 9.22337204e18)
            {
LABEL_212:
              if (sub_7E7E4(1u))
              {
                sub_19594F8(__dst);
                sub_4A5C(__dst, "Distance between user location and the user route's origin charging station is approximately ", 93);
                v128 = std::ostream::operator<<();
                sub_4A5C(v128, " meters.", 8);
                if ((v234 & 0x10) != 0)
                {
                  v130 = v233;
                  if (*&v233 < *(&v229 + 1))
                  {
                    v233 = *(&v229 + 1);
                    v130 = *(&v229 + 1);
                  }

                  v131 = &v229;
                }

                else
                {
                  if ((v234 & 8) == 0)
                  {
                    v129 = 0;
                    HIBYTE(v197[0]) = 0;
LABEL_226:
                    *(v196 + v129) = 0;
                    sub_7E854(v196, 1u);
                    if (SHIBYTE(v197[0]) < 0)
                    {
                      operator delete(v196[0]);
                    }

                    if (v232 < 0)
                    {
                      operator delete(v230[1]);
                    }

                    std::locale::~locale(&__dst[16]);
                    std::ostream::~ostream();
                    std::ios::~ios();
                    goto LABEL_231;
                  }

                  v131 = &__dst[24];
                  v130 = *&__dst[40];
                }

                v132 = *v131;
                v129 = *&v130 - *v131;
                if (v129 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v129 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v197[0]) = LOBYTE(v130) - *v131;
                if (v129)
                {
                  memmove(v196, v132, v129);
                }

                goto LABEL_226;
              }

LABEL_231:
              if (*(a2 + 872) == 1)
              {
                nullsub_1();
                v134 = v133;
                v137 = v133;
                v135 = *v133;
                v136 = v137[1];
                v138 = v136 - v135;
                if (v136 != v135)
                {
                  *__dst = 0;
                  sub_F69690(v135, __dst);
                  v139 = *v134;
                  v140 = v134[1] - *v134 == 552 ? 1 : 327679;
                  *__dst = v140;
                  sub_F6969C(v139, __dst);
                  if (v138 != 552)
                  {
                    v141 = 1;
                    v142 = 552;
                    do
                    {
                      v143 = *v134;
                      *__dst = 327679;
                      sub_F69690(v143 + v142, __dst);
                      v144 = *v134;
                      if (v141 == -1 - 0xED7303B5CC0ED73 * ((v134[1] - *v134) >> 3))
                      {
                        v145 = 1;
                      }

                      else
                      {
                        v145 = 327679;
                      }

                      *__dst = v145;
                      sub_F6969C(v144 + v142, __dst);
                      ++v141;
                      v142 += 552;
                    }

                    while (0xF128CFC4A33F128DLL * (v138 >> 3) != v141);
                  }
                }

                goto LABEL_301;
              }

              v147 = *(a1 + 41);
              v146 = *(a1 + 42);
              v148 = sub_F63FF4((a2 + 8));
              if (v146 - v147 >= v148 + 1)
              {
                v149 = v146 - v147 - (v148 + 1);
              }

              else
              {
                v149 = 0;
              }

              nullsub_1();
              v151 = v150[1] - *v150;
              if (!v151)
              {
LABEL_301:
                if (a1[401] == 1)
                {
                  sub_11777EC(__dst, *(a1 + 49));
                  v176 = *sub_3B6890(*(a1 + 49));
                  v177 = a1[8];
                  v178 = sub_1178AC4(__dst);
                  sub_1177864(__dst, (v189 + 8), v178, v176, v177);
                  v233 = v179;
                  if (v238 < 0)
                  {
                    operator delete(v237);
                  }

                  std::locale::~locale(&v235);
                  std::iostream::~basic_iostream();
                  std::ios::~ios();
                }

                *(v189 + 880) = vcvtad_u64_f64(sub_7EA60(v227));
                goto LABEL_306;
              }

              v152 = 0;
              v153 = 0;
              v188 = 0xF128CFC4A33F128DLL * (v151 >> 3);
              while (1)
              {
                v154 = v153 + 1;
                v155 = *(a1 + 44);
                if (v155 == *(a1 + 45))
                {
                  v196[0] = 0;
                  v196[1] = 0;
                  v197[0] = 0;
                  v208 = 0uLL;
                  v209 = 0;
                  if (!v153)
                  {
LABEL_254:
                    v160 = 1;
                    goto LABEL_257;
                  }
                }

                else
                {
                  v156 = v155 + 24 * v149;
                  v157 = v156 + 24 * v153;
                  *v196 = *v157;
                  v197[0] = *(v157 + 16);
                  v158 = (v156 + 24 * v154);
                  v208 = *v158;
                  v209 = *(v158 + 2);
                  if (!v153)
                  {
                    goto LABEL_254;
                  }
                }

                nullsub_1();
                if (v153 + v149 == 0xF128CFC4A33F128DLL * ((v159[1] - *v159) >> 3))
                {
                  v160 = 1;
                  if (v153 == -1)
                  {
                    goto LABEL_276;
                  }
                }

                else
                {
                  v161 = *(a1 + 41);
                  if (v161 == *(a1 + 42))
                  {
                    v160 = 0;
                    if (v153 == -1)
                    {
LABEL_276:
                      v163 = 1;
                      v164 = 1;
                      if (v160)
                      {
LABEL_259:
                        *v194 = *v196;
                        v195 = v197[0];
                        if (**(a1 + 37) == *(*(a1 + 37) + 8))
                        {
                          v168 = 0x1FFFF;
                        }

                        else if (v153)
                        {
                          if (sub_585D8(v194))
                          {
                            v165 = *(a1 + 37);
                            v167 = *v165;
                            v166 = v165[1];
                            *__dst = *v194;
                            *&__dst[16] = v195;
                            if (v167 != v166)
                            {
                              while (!sub_588E8((v167 + 288), __dst))
                              {
                                v167 += 440;
                                if (v167 == v166)
                                {
                                  v167 = v166;
                                  break;
                                }
                              }

                              v165 = *(a1 + 37);
                            }

                            if (v167 == v165[1])
                            {
                              v168 = 393215;
                            }

                            else
                            {
                              v168 = (-19065 * ((v167 - *v165) >> 3));
                            }
                          }

                          else
                          {
                            v168 = v152;
                          }
                        }

                        else
                        {
                          v168 = 196607;
                          if (*(a1 + 1) != 2)
                          {
                            v168 = 0;
                          }
                        }

                        goto LABEL_282;
                      }

                      goto LABEL_271;
                    }
                  }

                  else
                  {
                    v160 = *(v161 + v153 + v149) == 1;
                    if (v153 == -1)
                    {
                      goto LABEL_276;
                    }
                  }
                }

LABEL_257:
                nullsub_1();
                if (v154 + v149 == 0xF128CFC4A33F128DLL * ((v162[1] - *v162) >> 3))
                {
                  v163 = 0;
                  v164 = 1;
                  if (v160)
                  {
                    goto LABEL_259;
                  }
                }

                else
                {
                  v169 = *(a1 + 41);
                  if (v169 == *(a1 + 42))
                  {
                    v163 = 0;
                    v164 = 0;
                    if (v160)
                    {
                      goto LABEL_259;
                    }
                  }

                  else
                  {
                    v163 = 0;
                    v164 = *(v169 + v154 + v149) == 1;
                    if (v160)
                    {
                      goto LABEL_259;
                    }
                  }
                }

LABEL_271:
                v168 = 0x3FFFF;
LABEL_282:
                *v193 = v168;
                nullsub_1();
                sub_F69690(*v170 + 552 * v153, v193);
                v152 += v164;
                if (v164)
                {
                  *v194 = v208;
                  v195 = v209;
                  if (**(a1 + 37) == *(*(a1 + 37) + 8))
                  {
                    v171 = 0x1FFFF;
                  }

                  else if (v163)
                  {
                    v171 = 196607;
                    if (*(a1 + 1) != 2)
                    {
                      v171 = 0;
                    }
                  }

                  else if (sub_585D8(v194))
                  {
                    v172 = *(a1 + 37);
                    v173 = *v172;
                    v174 = v172[1];
                    *__dst = *v194;
                    *&__dst[16] = v195;
                    if (v173 != v174)
                    {
                      while (!sub_588E8((v173 + 288), __dst))
                      {
                        v173 += 440;
                        if (v173 == v174)
                        {
                          v173 = v174;
                          break;
                        }
                      }

                      v172 = *(a1 + 37);
                    }

                    if (v173 == v172[1])
                    {
                      v171 = 393215;
                    }

                    else
                    {
                      v171 = (-19065 * ((v173 - *v172) >> 3));
                    }
                  }

                  else
                  {
                    v171 = v152;
                  }

                  LODWORD(v192[0]) = v171;
                }

                else
                {
                  LODWORD(v192[0]) = 0x3FFFF;
                }

                nullsub_1();
                sub_F6969C(*v175 + 552 * v153++, v192);
                if (v154 == v188)
                {
                  goto LABEL_301;
                }
              }
            }
          }

          else
          {
            v127 = (((v127 + v127) + 1) >> 1);
            if (v127 >= 9.22337204e18)
            {
              goto LABEL_212;
            }
          }

          if (v127 < 5001)
          {
            goto LABEL_231;
          }

          goto LABEL_212;
        }

        if (*(v9 + 128) != 1)
        {
          sub_614924(a2 + 160, *(a1 + 48));
          goto LABEL_153;
        }

        v41 = sub_4C5154(v9);
        v42 = sub_4F9718(v9) + v41;
        if (sub_F63FF4(&v208) <= v42 || (v220 & 1) != 0 || (v43 = sub_74700(), !sub_7E7E4(1u)))
        {
LABEL_119:
          v66 = sub_F63FF4(&v208);
          if (v42 >= v66)
          {
            v67 = v42 - v66;
          }

          else
          {
            v67 = 0;
          }

          v68 = *(a1 + 94) + v66;
          if (v42 >= v68)
          {
            v69 = v42 - v68;
          }

          else
          {
            v69 = 0;
          }

          sub_4EC9D4(*(a1 + 48), __dst);
          sub_D16C58(a2 + 160, __dst);
          sub_5287C0(__dst);
          v196[0] = 0;
          v196[1] = 0;
          v197[0] = 0;
          v70 = sub_F63FF4(&v208);
          sub_4FA4DC(v196, v70);
          sub_4F970C(v187, __dst);
          v185 = v42;
          v71 = *__dst;
          sub_4F970C(v187, v194);
          v72 = (v71 + 144 * v69);
          v73 = v194[1];
          if (v72 != v194[1])
          {
            v80 = v196[1];
            do
            {
              if (v80 >= v197[0])
              {
                v80 = sub_D1D4D4(v196, v72);
              }

              else
              {
                sub_4F15C8(v80, v72);
                v80 += 144;
              }

              v196[1] = v80;
              v72 += 18;
            }

            while (v72 != v73);
          }

          v184 = sub_3F80(v187);
          v74 = sub_4F96B8(v187);
          v75 = sub_588D8(v187);
          v183 = sub_4F96C0(v187);
          v182 = sub_4F96C8(v187);
          v76 = sub_4F96D0(v187);
          v77 = sub_4F96D8(v187);
          v181 = v75;
          sub_4C35D4(v187, v192);
          v78 = v192[0];
          sub_4C35D4(v187, &v190);
          v194[1] = 0;
          v195 = 0;
          v194[0] = 0;
          if (v191 != v78)
          {
            if (((v191 - v78) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          if (v185 <= v68)
          {
            v79 = v187;
            a2 = v189;
            v81 = sub_57478(v187);
            v82 = *v81;
            *&v193[16] = *(v81 + 16);
            *v193 = v82;
          }

          else
          {
            *v193 = 0x8000000080000000;
            *&v193[8] = xmmword_2297C00;
            *&v193[8] = 0x7FFFFFFF;
            a2 = v189;
            v79 = v187;
          }

          v83 = sub_73ED4(v79);
          sub_4F9688(__dst, v184, v74, v181, v183, v182, v76, v77, v67 - v69, v194, v193, v196, v83);
          sub_4EC0C0(a2 + 160, __dst);
          if (v234)
          {
            v235.__locale_ = v234;
            operator delete(v234);
          }

          v84 = v230[1];
          if (v230[1])
          {
            v85 = v231;
            v86 = v230[1];
            if (v231 != v230[1])
            {
              do
              {
                v85 = sub_4F0FB4(v85 - 144);
              }

              while (v85 != v84);
              v86 = v230[1];
            }

            v231 = v84;
            operator delete(v86);
          }

          if (*&__dst[24])
          {
            *&__dst[32] = *&__dst[24];
            operator delete(*&__dst[24]);
          }

          if (v194[0])
          {
            v194[1] = v194[0];
            operator delete(v194[0]);
          }

          v87 = v196[0];
          if (v196[0])
          {
            v88 = v196[1];
            v89 = v196[0];
            if (v196[1] != v196[0])
            {
              do
              {
                v88 = sub_4F0FB4(v88 - 144);
              }

              while (v88 != v87);
              v89 = v196[0];
            }

            v196[1] = v87;
            operator delete(v89);
          }

LABEL_153:
          v90 = *(a2 + 8);
          if (v90)
          {
            v91 = *(a2 + 16);
            v92 = *(a2 + 8);
            if (v91 != v90)
            {
              do
              {
                v91 = sub_4547F0(v91 - 552);
              }

              while (v91 != v90);
              v92 = *(a2 + 8);
            }

            *(a2 + 16) = v90;
            operator delete(v92);
          }

          *(a2 + 8) = v208;
          *(a2 + 24) = v209;
          v209 = 0;
          v208 = 0uLL;
          if (*(a2 + 55) < 0)
          {
            operator delete(*(a2 + 32));
          }

          *(a2 + 32) = v210;
          *(a2 + 48) = v211;
          HIBYTE(v211) = 0;
          LOBYTE(v210) = 0;
          v93 = *v186;
          if (*v186)
          {
            v94 = *(a2 + 64);
            v95 = *v186;
            if (v94 != v93)
            {
              do
              {
                v94 = sub_4547F0(v94 - 552);
              }

              while (v94 != v93);
              v95 = *v186;
            }

            *(a2 + 64) = v93;
            operator delete(v95);
          }

          *(a2 + 56) = v212;
          *(a2 + 72) = v213;
          v213 = 0;
          v212 = 0uLL;
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 80) = v214;
          *(a2 + 96) = v215;
          HIBYTE(v215) = 0;
          LOBYTE(v214) = 0;
          v96 = *v4;
          if (*v4)
          {
            v97 = *(a2 + 120);
            v98 = *v4;
            if (v97 != v96)
            {
              v99 = *(a2 + 120);
              do
              {
                v101 = *(v99 - 3);
                v99 -= 24;
                v100 = v101;
                if (v101)
                {
                  *(v97 - 2) = v100;
                  operator delete(v100);
                }

                v97 = v99;
              }

              while (v99 != v96);
              v98 = *v4;
            }

            *(a2 + 120) = v96;
            operator delete(v98);
          }

          *(a2 + 112) = v216;
          *(a2 + 128) = *&v217[0];
          *&v217[0] = 0;
          v216 = 0uLL;
          v102 = *(a2 + 136);
          if (v102)
          {
            v103 = *(a2 + 144);
            v104 = *(a2 + 136);
            if (v103 != v102)
            {
              do
              {
                v103 = sub_49AEC0(v103 - 30);
              }

              while (v103 != v102);
              v104 = *(a2 + 136);
            }

            *(a2 + 144) = v102;
            operator delete(v104);
          }

          v105 = v4 + 98;
          *(a2 + 136) = *(v217 + 8);
          *(a2 + 152) = *(&v217[1] + 1);
          memset(v217 + 8, 0, 24);
          if (*(a2 + 872) == v220)
          {
            if (!*(a2 + 872))
            {
LABEL_184:
              *v105 = 0;
              sub_49AD08(&v208);
              goto LABEL_192;
            }

            v106 = *(a2 + 848);
            if (v106)
            {
              *(a2 + 856) = v106;
              operator delete(v106);
              v107 = *(a2 + 872);
              *(a2 + 848) = v218;
              *(a2 + 864) = v219;
              v219 = 0;
              v218 = 0uLL;
              if ((v107 & 1) == 0)
              {
                goto LABEL_184;
              }
            }

            else
            {
              *(a2 + 848) = v218;
              *(a2 + 864) = v219;
              v219 = 0;
              v218 = 0uLL;
            }
          }

          else
          {
            if (*(a2 + 872))
            {
              v108 = *(a2 + 848);
              if (v108)
              {
                *(a2 + 856) = v108;
                operator delete(v108);
              }

              *(a2 + 872) = 0;
              *v105 = 0;
              sub_49AD08(&v208);
              goto LABEL_192;
            }

            *(a2 + 848) = v218;
            *(a2 + 864) = v219;
            v219 = 0;
            v218 = 0uLL;
            *(a2 + 872) = 1;
          }

          *v105 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 856) - *(a2 + 848)) >> 3);
          sub_49AD08(&v208);
          goto LABEL_192;
        }

        sub_19594F8(__dst);
        sub_4A5C(__dst, "Got a request where the session_state contains fewer legs (", 59);
        v44 = std::ostream::operator<<();
        sub_4A5C(v44, ") than the number of legs decoded (", 35);
        sub_F63FF4(&v208);
        v45 = std::ostream::operator<<();
        v46 = sub_4A5C(v45, "): ", 3);
        LODWORD(v194[0]) = sub_7421C(v43);
        sub_7230C(v194, v196);
        if (SHIBYTE(v197[0]) >= 0)
        {
          v47 = v196;
        }

        else
        {
          v47 = v196[0];
        }

        if (SHIBYTE(v197[0]) >= 0)
        {
          v48 = HIBYTE(v197[0]);
        }

        else
        {
          v48 = v196[1];
        }

        v49 = sub_4A5C(v46, v47, v48);
        v50 = sub_4A5C(v49, " request: ", 10);
        v51 = sub_73F1C(v43);
        v52 = *(v51 + 23);
        if (v52 >= 0)
        {
          v53 = v51;
        }

        else
        {
          v53 = *v51;
        }

        if (v52 >= 0)
        {
          v54 = *(v51 + 23);
        }

        else
        {
          v54 = *(v51 + 8);
        }

        sub_4A5C(v50, v53, v54);
        if (SHIBYTE(v197[0]) < 0)
        {
          operator delete(v196[0]);
        }

        if ((v234 & 0x10) != 0)
        {
          v63 = v233;
          if (*&v233 < *(&v229 + 1))
          {
            v233 = *(&v229 + 1);
            v63 = *(&v229 + 1);
          }

          v64 = &v229;
        }

        else
        {
          if ((v234 & 8) == 0)
          {
            v55 = v42;
            v56 = 0;
            HIBYTE(v197[0]) = 0;
LABEL_114:
            *(v196 + v56) = 0;
            sub_7E854(v196, 1u);
            v42 = v55;
            if (SHIBYTE(v197[0]) < 0)
            {
              operator delete(v196[0]);
            }

            if (v232 < 0)
            {
              operator delete(v230[1]);
            }

            std::locale::~locale(&__dst[16]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_119;
          }

          v64 = &__dst[24];
          v63 = *&__dst[40];
        }

        v65 = *v64;
        v56 = *&v63 - *v64;
        if (v56 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        v55 = v42;
        if (v56 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v197[0]) = LOBYTE(v63) - *v64;
        if (v56)
        {
          memmove(v196, v65, v56);
        }

        goto LABEL_114;
      }

      v28 = 0;
      if (((1 << v27) & 0x2A86) == 0)
      {
LABEL_29:
        *(a2 + 888) = 1;
        v31 = *(a1 + 6);
        if (v31 != -1)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }

LABEL_28:
      v28 = *(a1 + 36) != 0x7FFFFFFFFFFFFFFFLL;
      v26 = 1;
      goto LABEL_29;
    }

    v26 = 0;
    v28 = 0;
    *(a2 + 888) = 1;
    v31 = *(a1 + 6);
    if (v31 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  nullsub_1();
  if (*(v29 + 128) == 1)
  {
    nullsub_1();
    sub_4F96F4(v30, __dst);
    if (*__dst != *&__dst[8] && sub_4F8F28(*__dst))
    {
      sub_4F96F4(v9, v196);
      sub_497344(v222, v196, (a1 + 112));
    }
  }

  if (*(a1 + 7) != *(a1 + 8))
  {
    sub_499BC0(__dst);
    sub_D1635C(&v208, __dst);
    sub_49AD08(__dst);
    goto LABEL_56;
  }

  *__dst = 12;
  *&__dst[8] = &off_2669FE0;
  sub_434934(v196, __dst);
  __dst[0] = 0;
  *&__dst[8] = *v196;
  *&__dst[24] = *v197;
  *&__dst[40] = *v198;
  v197[0] = 0;
  v197[1] = 0;
  *v198 = 0;
  LODWORD(v229) = *&v198[8];
  sub_D1E024(a2, __dst);
  if (__dst[0] == 1)
  {
    sub_D1D6D4(&__dst[8]);
  }

  else
  {
    v33 = *&__dst[24];
    if (*&__dst[24])
    {
      v34 = *&__dst[32];
      v35 = *&__dst[24];
      if (*&__dst[32] != *&__dst[24])
      {
        do
        {
          if (*(v34 - 1) < 0)
          {
            operator delete(*(v34 - 24));
          }

          v34 -= 32;
        }

        while (v34 != v33);
        v35 = *&__dst[24];
      }

      *&__dst[32] = v33;
      operator delete(v35);
    }
  }

  v36 = v197[0];
  if (v197[0])
  {
    v37 = v197[1];
    v38 = v197[0];
    if (v197[1] != v197[0])
    {
      do
      {
        if (*(v37 - 1) < 0)
        {
          operator delete(*(v37 - 3));
        }

        v37 -= 4;
      }

      while (v37 != v36);
      v38 = v197[0];
    }

    v197[1] = v36;
    operator delete(v38);
  }

  *(a2 + 880) = sub_7EA60(v227);
  sub_49AD08(&v208);
  v180 = v225;
  if (v225)
  {
LABEL_307:
    v226 = v180;
    operator delete(v180);
  }

LABEL_308:
  if (v223)
  {
    v224 = v223;
    operator delete(v223);
  }
}

void sub_D1C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49AD08(&STACK[0x200]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D1CCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_49A8F8(&STACK[0x350]);
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

void sub_D1CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_D05E04(&STACK[0x2C8]);
  sub_D1D638(a22);
  _Unwind_Resume(a1);
}

unint64_t sub_D1CCFC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_D1DBCC(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 552;
  }

  else
  {
    sub_49F780(*(a1 + 8), a2);
    *(a1 + 8) = v3 + 552;
    *(a1 + 8) = v3 + 552;
    return v3;
  }
}

void *sub_D1CD64(void **a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v30 = 8 * ((a1[1] - *a1) >> 3);
  sub_49D2CC(v30, a2);
  v6 = (552 * v2 + 552);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v30 + *a1 - v8);
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = (v30 + *a1 - v8);
    do
    {
      v12 = *v10;
      *(v11 + 2) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 8) = 0uLL;
      *v10 = 0;
      *(v11 + 5) = 0;
      *(v11 + 24) = 0uLL;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 5) = *(v10 + 5);
      *(v10 + 5) = 0;
      *(v10 + 24) = 0uLL;
      v13 = *(v10 + 3);
      v14 = *(v10 + 5);
      v15 = *(v10 + 12);
      *(v11 + 4) = *(v10 + 4);
      *(v11 + 5) = v14;
      *(v11 + 3) = v13;
      *(v11 + 12) = v15;
      *(v11 + 13) = 0;
      *(v11 + 7) = 0uLL;
      *(v11 + 104) = *(v10 + 104);
      *(v11 + 15) = *(v10 + 15);
      *(v10 + 15) = 0;
      *(v10 + 104) = 0uLL;
      *(v11 + 18) = 0;
      *(v11 + 8) = 0uLL;
      *(v11 + 8) = *(v10 + 8);
      *(v11 + 18) = *(v10 + 18);
      *(v10 + 18) = 0;
      *(v10 + 8) = 0uLL;
      *(v11 + 21) = 0;
      *(v11 + 152) = 0uLL;
      *(v11 + 152) = *(v10 + 152);
      *(v11 + 21) = *(v10 + 21);
      *(v10 + 21) = 0;
      *(v10 + 152) = 0uLL;
      v16 = *(v10 + 12);
      v17 = *(v10 + 26);
      *(v11 + 11) = *(v10 + 11);
      *(v11 + 12) = v16;
      *(v11 + 26) = v17;
      *(v11 + 27) = 0;
      *(v11 + 14) = 0uLL;
      *(v11 + 216) = *(v10 + 216);
      *(v11 + 29) = *(v10 + 29);
      *(v10 + 29) = 0;
      *(v10 + 216) = 0uLL;
      *(v11 + 32) = 0;
      *(v11 + 15) = 0uLL;
      *(v11 + 15) = *(v10 + 15);
      *(v11 + 32) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 15) = 0uLL;
      v18 = *(v10 + 264);
      v19 = *(v10 + 296);
      *(v11 + 280) = *(v10 + 280);
      *(v11 + 296) = v19;
      *(v11 + 264) = v18;
      v20 = *(v10 + 424);
      v22 = *(v10 + 376);
      v21 = *(v10 + 392);
      *(v11 + 408) = *(v10 + 408);
      *(v11 + 424) = v20;
      *(v11 + 376) = v22;
      *(v11 + 392) = v21;
      v23 = *(v10 + 488);
      v25 = *(v10 + 440);
      v24 = *(v10 + 456);
      *(v11 + 472) = *(v10 + 472);
      *(v11 + 488) = v23;
      *(v11 + 440) = v25;
      *(v11 + 456) = v24;
      v26 = *(v10 + 312);
      v27 = *(v10 + 328);
      v28 = *(v10 + 360);
      *(v11 + 344) = *(v10 + 344);
      *(v11 + 360) = v28;
      *(v11 + 312) = v26;
      *(v11 + 328) = v27;
      *(v11 + 63) = *(v10 + 63);
      *(v11 + 32) = *(v10 + 32);
      *(v10 + 65) = 0;
      *(v10 + 504) = 0uLL;
      *(v11 + 68) = 0;
      *(v11 + 33) = 0uLL;
      *(v11 + 33) = *(v10 + 33);
      *(v11 + 68) = *(v10 + 68);
      *(v10 + 68) = 0;
      *(v10 + 33) = 0uLL;
      v10 += 552;
      v11 += 552;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_4547F0(v7) + 552);
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

void sub_D1D050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1D064(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v4;
  sub_4FB7B4((a1 + 16), (a2 + 2));
  v5 = (a1 + 72);
  v6 = *(a1 + 72);
  *(a1 + 64) = a2[8];
  if (v6)
  {
    v7 = *(a1 + 80);
    v8 = v6;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 6);
        if (v9)
        {
          *(v7 - 5) = v9;
          operator delete(v9);
        }

        v10 = v7 - 10;
        if (*(v7 - 57) < 0)
        {
          operator delete(*v10);
        }

        v7 -= 10;
      }

      while (v10 != v6);
      v8 = *v5;
    }

    *(a1 + 80) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  *(a1 + 96) = *(a2 + 96);
  sub_D1D18C((a1 + 104), (a2 + 13));
  v11 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 38);
  if (v11)
  {
    *(a1 + 168) = v11;
    operator delete(v11);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 10);
  *(a1 + 176) = a2[22];
  a2[20] = 0;
  a2[21] = 0;
  a2[22] = 0;
  return a1;
}

double sub_D1D18C(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  a1[5] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[2];
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 85;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 170;
  }

  a1[4] = v8;
LABEL_8:
  sub_D1D268(a1);
  v10 = a1[1];
  v9 = a1[2];
  if (v9 != v10)
  {
    a1[2] = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_D1D364(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_D1D268(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0xAA)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 170;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 170 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0xAA)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  sub_D1D364(v7);
}

void sub_D1D364(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

uint64_t sub_D1D4D4(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 144 * v2;
  v13 = 0;
  sub_4F15C8(144 * v2, a2);
  v12 = 144 * v2 + 144;
  sub_4FA214(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_D1D624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D1D638(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D1D6D4(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_D1D6D4(uint64_t a1)
{
  if (*(a1 + 864) == 1)
  {
    v2 = *(a1 + 840);
    if (v2)
    {
      *(a1 + 848) = v2;
      operator delete(v2);
    }
  }

  sub_5287C0(a1 + 152);
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 128);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_49AEC0(v4 - 30);
      }

      while (v4 != v3);
      v5 = *(a1 + 128);
    }

    *(a1 + 136) = v3;
    operator delete(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = *(a1 + 112);
    v8 = *(a1 + 104);
    if (v7 != v6)
    {
      v9 = *(a1 + 112);
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(a1 + 104);
    }

    *(a1 + 112) = v6;
    operator delete(v8);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    if (v13 != v12)
    {
      do
      {
        v13 = sub_4547F0(v13 - 552);
      }

      while (v13 != v12);
      v14 = *(a1 + 48);
    }

    *(a1 + 56) = v12;
    operator delete(v14);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v15 = *a1;
  if (*a1)
  {
    v16 = *(a1 + 8);
    v17 = *a1;
    if (v16 != v15)
    {
      do
      {
        v16 = sub_4547F0(v16 - 552);
      }

      while (v16 != v15);
      v17 = *a1;
    }

    *(a1 + 8) = v15;
    operator delete(v17);
  }

  return a1;
}