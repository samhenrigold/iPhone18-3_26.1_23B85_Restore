void sub_F8B720(uint64_t *a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v7 = a1[3];
  v8 = a1[4];
  v6 = (a1 + 3);
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v24 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v24 - v10);
        v7 = a1[3];
        v8 = a1[4];
        v9 = v8 - v7;
        v25 = (v8 - v7) >> 2;
        if (v10 < v25)
        {
          goto LABEL_15;
        }
      }

      else if (v24 < v10)
      {
        v8 = v7 + 4 * v24;
        a1[4] = v8;
        v9 = 4 * v24;
        v25 = (4 * v24) >> 2;
        if (v10 < v25)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v25 = (v8 - v7) >> 2;
        if (v10 < v25)
        {
          goto LABEL_15;
        }
      }

      v10 = v25;
    }

    while (v25 <= v5);
  }

  v26 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v26);
  v11 = *(a1 + 12);
  *(a1[3] + 4 * v5) = v11;
  *(a1 + 12) = v11 + 1;
  if (v11)
  {
    v12 = *a1;
    do
    {
      v13 = v11 - 1;
      v14 = (v11 - 1) >> 2;
      v15 = (v12 + 8 * v14);
      v16 = (v12 + 8 * v11);
      v17 = v15[1];
      v18 = v16[1];
      if (v17 < v18)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v17;
      *v15 = v19;
      v15[1] = v18;
      v12 = *a1;
      v20 = *(*a1 + 8 * v11);
      v21 = a1[3];
      v22 = *(*a1 + 8 * v14);
      v23 = *(v21 + 4 * v20);
      *(v21 + 4 * v20) = *(v21 + 4 * v22);
      *(v21 + 4 * v22) = v23;
      v11 = v13 >> 2;
    }

    while (v13 > 3);
  }
}

double sub_F8B8B0(uint64_t *a1, unsigned int a2, int *a3)
{
  v3 = *(a1[3] + 4 * a2);
  v4 = *a1 + 8 * v3;
  v5 = *(v4 + 4);
  v6 = *a3;
  *(v4 + 4) = *a3;
  if (v6 >= v5)
  {
    v18 = (4 * v3) | 1;
    v19 = *(a1 + 12);
    if (v18 < v19)
    {
      v20 = 4 * v3;
      do
      {
        v21 = v20 + 5;
        if (v21 >= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v21;
        }

        if (v21 <= v18)
        {
          break;
        }

        v23 = *a1;
        v24 = v3;
        v25 = *(*a1 + 8 * v3 + 4);
        v26 = (*a1 + 8 * v18 + 4);
        LODWORD(v3) = -1;
        v27 = v25;
        do
        {
          v29 = *v26;
          v26 += 2;
          v28 = v29;
          if (v29 < v27)
          {
            v27 = v28;
            LODWORD(v3) = v18;
          }

          ++v18;
        }

        while (v18 < v22);
        if (v3 >= v19)
        {
          break;
        }

        v30 = 8 * v3;
        v31 = (v23 + v30);
        v32 = 8 * v24;
        result = *(v23 + v30);
        *v31 = *(v23 + v32);
        v31[1] = v25;
        *(v23 + v32) = result;
        v34 = *(*a1 + v30);
        v35 = a1[3];
        v36 = *(*a1 + v32);
        v37 = *(v35 + 4 * v34);
        *(v35 + 4 * v34) = *(v35 + 4 * v36);
        *(v35 + 4 * v36) = v37;
        v20 = 4 * v3;
        v18 = (4 * v3) | 1;
        v19 = *(a1 + 12);
      }

      while (v18 < v19);
    }
  }

  else if (v3)
  {
    v7 = *a1;
    do
    {
      v8 = v3 - 1;
      v9 = (v3 - 1) >> 2;
      v10 = (v7 + 8 * v9);
      v11 = (v7 + 8 * v3);
      v12 = v10[1];
      v13 = v11[1];
      if (v12 < v13)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v12;
      *v10 = v14;
      v10[1] = v13;
      v7 = *a1;
      v3 = *(*a1 + 8 * v3);
      v15 = a1[3];
      v16 = *(*a1 + 8 * v9);
      v17 = *(v15 + 4 * v3);
      *(v15 + 4 * v3) = *(v15 + 4 * v16);
      *(v15 + 4 * v16) = v17;
      LODWORD(v3) = v8 >> 2;
    }

    while (v8 >= 4);
  }

  return result;
}

BOOL sub_F8BA10(unsigned __int8 **a1, unsigned int a2, signed int *a3, unsigned int *a4)
{
  v7 = *a1;
  v10 = a1 + 1;
  v8 = a1[1];
  v9 = v10[1];
  v11 = *v7;
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v12 = a2;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a4;
  }

  if (sub_F75E1C(v8, v12) && *sub_F75E48(a1[1], v12) == 3)
  {
    v14 = *(sub_F75E48(a1[1], v12) + 8);
    v15 = sub_F75E48(a1[1], v12);
    v16 = *(v15 + 64);
    v37[2] = *(v15 + 48);
    v37[3] = v16;
    v37[4] = *(v15 + 80);
    v38 = *(v15 + 96);
    v17 = *(v15 + 32);
    v37[0] = *(v15 + 16);
    v37[1] = v17;
    v18 = *(sub_F75E48(a1[1], v13) + 104);
    v19 = sub_F75E48(a1[1], v13);
    v20 = *(v19 + 160);
    v35[2] = *(v19 + 144);
    v35[3] = v20;
    v35[4] = *(v19 + 176);
    v36 = *(v19 + 192);
    v21 = *(v19 + 128);
    v35[0] = *(v19 + 112);
    v35[1] = v21;
    v34 = sub_394BD0();
    v22 = sub_F862F4(&v34, v14, v37, v18, v35, a1[3]);
    a4[14] = v34;
    goto LABEL_21;
  }

  v23 = *a1[4];
  v24 = *a3;
  if (*a3 < 0)
  {
    v25 = -5;
  }

  else
  {
    v25 = 5;
  }

  v26 = v25 + *a3 % 10;
  if (**a1)
  {
    v27 = v24 / -10 + v23 + (((-103 * v26) >> 15) & 1) + ((-103 * v26) >> 10);
    v24 = (*a1[5] - v24) & ~((*a1[5] - v24) >> 31);
    if (sub_F75E1C(a1[1], v12))
    {
      goto LABEL_15;
    }

LABEL_18:
    v28 = 0;
    if (!sub_F75E1C(a1[1], v13))
    {
      goto LABEL_16;
    }

LABEL_19:
    v29 = *(sub_F75E48(a1[1], v13) + 16);
    goto LABEL_20;
  }

  v27 = *a3 / 10 + v23 + (((103 * v26) >> 15) & 1) + ((103 * v26) >> 10);
  if (!sub_F75E1C(a1[1], v12))
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = *(sub_F75E48(a1[1], v12) + 112);
  if (sub_F75E1C(a1[1], v13))
  {
    goto LABEL_19;
  }

LABEL_16:
  v29 = 0;
LABEL_20:
  v22 = sub_F87C78(v9, v12, v13, a4, a1[1], a1[6], a1[7], a1[8], v27, 0, v24, 0, v28, SHIDWORD(v28), v29);
LABEL_21:
  a3[1] = v22;
  return *a4 == -1 || a4[15] == -1 || a4[16] == -1 || v22 == 0x7FFFFFFF;
}

uint64_t sub_F8BCBC(uint64_t a1, unsigned int *a2, int *a3)
{
  v6 = 0;
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    ++*(a1 + 816);
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 776) - *(a1 + 768)) >> 2);
    sub_F8B0C4(a1, a2, &v43);
    v20 = v44;
    v21 = *(v43 + 8);
    if (v45 == 1)
    {
      *(v21 + 8 * v44) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v25) >> 2) + 1;
      if (v26 > 0x1555555555555555)
      {
        sub_1794();
      }

      v27 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v25) >> 2);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0xAAAAAAAAAAAAAAALL)
      {
        v28 = 0x1555555555555555;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v38 = 4 * ((v22 - v25) >> 2);
      *v38 = *a2;
      *(v38 + 4) = *a3;
      v24 = v38 + 12;
      v39 = (v38 - (v22 - v25));
      memcpy(v39, v25, v22 - v25);
      *(a1 + 768) = v39;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 4) = *a3;
      v24 = v22 + 12;
    }

    *(a1 + 776) = v24;
    v40 = *(a1 + 848);
    if (v19 < ((*(a1 + 856) - v40) >> 2) && *(v40 + 4 * v19) != -1)
    {
      v37 = (a1 + 824);
      LODWORD(v35) = v19;
      goto LABEL_31;
    }

    v41 = (a1 + 824);
    LODWORD(v35) = v19;
    goto LABEL_33;
  }

  v29 = v17 + 8 * v18;
  v31 = *(v29 + 4);
  v30 = (v29 + 4);
  v32 = *(a1 + 768) + 12 * v31;
  v34 = *(v32 + 4);
  v33 = (v32 + 4);
  if (*a3 < v34)
  {
    ++*(a1 + 816);
    *v33 = *a3;
    v35 = *v30;
    v36 = *(a1 + 848);
    if (v35 < (*(a1 + 856) - v36) >> 2 && *(v36 + 4 * v35) != -1)
    {
      v37 = (a1 + 824);
LABEL_31:
      sub_F8B8B0(v37, v35, a3);
      return 1;
    }

    v41 = (a1 + 824);
LABEL_33:
    sub_F8B720(v41, v35, a3);
    return 1;
  }

  return 0;
}

void *sub_F8C00C(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C(v5 + 103, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 2) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_F8C110(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

BOOL sub_F8C170(unsigned __int8 **a1, unsigned int a2, signed int *a3, unsigned int *a4)
{
  v7 = *a1;
  v10 = a1 + 1;
  v8 = a1[1];
  v9 = v10[1];
  v11 = *v7;
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v12 = a2;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a4;
  }

  if (sub_F75E1C(v8, v12) && *sub_F75E48(a1[1], v12) == 3)
  {
    v14 = *(sub_F75E48(a1[1], v12) + 8);
    v15 = sub_F75E48(a1[1], v12);
    v16 = *(v15 + 64);
    v37[2] = *(v15 + 48);
    v37[3] = v16;
    v37[4] = *(v15 + 80);
    v38 = *(v15 + 96);
    v17 = *(v15 + 32);
    v37[0] = *(v15 + 16);
    v37[1] = v17;
    v18 = *(sub_F75E48(a1[1], v13) + 104);
    v19 = sub_F75E48(a1[1], v13);
    v20 = *(v19 + 160);
    v35[2] = *(v19 + 144);
    v35[3] = v20;
    v35[4] = *(v19 + 176);
    v36 = *(v19 + 192);
    v21 = *(v19 + 128);
    v35[0] = *(v19 + 112);
    v35[1] = v21;
    v34 = sub_394BD0();
    v22 = sub_F862F4(&v34, v14, v37, v18, v35, a1[3]);
    a4[14] = v34;
    goto LABEL_21;
  }

  v23 = *a1[4];
  v24 = *a3;
  if (*a3 < 0)
  {
    v25 = -5;
  }

  else
  {
    v25 = 5;
  }

  v26 = v25 + *a3 % 10;
  if (**a1)
  {
    v27 = v24 / -10 + v23 + (((-103 * v26) >> 15) & 1) + ((-103 * v26) >> 10);
    v24 = (*a1[5] - v24) & ~((*a1[5] - v24) >> 31);
    if (sub_F75E1C(a1[1], v12))
    {
      goto LABEL_15;
    }

LABEL_18:
    v28 = 0;
    if (!sub_F75E1C(a1[1], v13))
    {
      goto LABEL_16;
    }

LABEL_19:
    v29 = *(sub_F75E48(a1[1], v13) + 16);
    goto LABEL_20;
  }

  v27 = *a3 / 10 + v23 + (((103 * v26) >> 15) & 1) + ((103 * v26) >> 10);
  if (!sub_F75E1C(a1[1], v12))
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = *(sub_F75E48(a1[1], v12) + 112);
  if (sub_F75E1C(a1[1], v13))
  {
    goto LABEL_19;
  }

LABEL_16:
  v29 = 0;
LABEL_20:
  v22 = sub_F88960(v9, v12, v13, a4, a1[1], a1[6], a1[7], a1[8], v27, 0, v24, 0, v28, SHIDWORD(v28), v29);
LABEL_21:
  a3[1] = v22;
  return *a4 == -1 || a4[15] == -1 || a4[16] == -1 || v22 == 0x7FFFFFFF;
}

void sub_F8C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_334D18(va);
  v18 = *(v16 - 96);
  if (v18)
  {
    *(v16 - 88) = v18;
    operator delete(v18);
    v19 = *(v16 - 72);
    if (!v19)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = *(v16 - 72);
    if (!v19)
    {
      goto LABEL_3;
    }
  }

  *(v16 - 64) = v19;
  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_F8C5B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F8C6A4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F8C6D8(uint64_t a1, void *a2, void *a3, char a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F8C878(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F8C8AC(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C(v5 + 103, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 2) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_F8C9B0(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

BOOL sub_F8CA10(unsigned __int8 **a1, unsigned int a2, signed int *a3, uint64_t a4)
{
  v7 = *a1;
  v10 = a1 + 1;
  v8 = a1[1];
  v9 = v10[1];
  v11 = *v7;
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v12 = a2;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a4;
  }

  if (sub_F75E1C(v8, v12) && *sub_F75E48(a1[1], v12) == 3)
  {
    v14 = *(sub_F75E48(a1[1], v12) + 8);
    v15 = sub_F75E48(a1[1], v12);
    v16 = *(v15 + 48);
    v17 = *(v15 + 80);
    v39[3] = *(v15 + 64);
    v39[4] = v17;
    v40 = *(v15 + 96);
    v18 = *(v15 + 32);
    v39[0] = *(v15 + 16);
    v39[1] = v18;
    v39[2] = v16;
    v19 = *(sub_F75E48(a1[1], v13) + 104);
    v20 = sub_F75E48(a1[1], v13);
    v21 = *(v20 + 160);
    v37[2] = *(v20 + 144);
    v37[3] = v21;
    v37[4] = *(v20 + 176);
    v38 = *(v20 + 192);
    v22 = *(v20 + 128);
    v37[0] = *(v20 + 112);
    v37[1] = v22;
    sub_F86BE4(&v35);
    v23 = sub_F86F7C(&v35, v14, v39, v19, v37, a1[3], *(v9 + 16));
    *(a4 + 16) = v35;
    *(a4 + 32) = v36;
    goto LABEL_21;
  }

  v24 = *a1[4];
  v25 = *a3;
  if (*a3 < 0)
  {
    v26 = -5;
  }

  else
  {
    v26 = 5;
  }

  v27 = v26 + *a3 % 10;
  if (**a1)
  {
    v28 = v25 / -10 + v24 + (((-103 * v27) >> 15) & 1) + ((-103 * v27) >> 10);
    v25 = (*a1[5] - v25) & ~((*a1[5] - v25) >> 31);
    if (sub_F75E1C(a1[1], v12))
    {
      goto LABEL_15;
    }

LABEL_18:
    v29 = 0;
    if (!sub_F75E1C(a1[1], v13))
    {
      goto LABEL_16;
    }

LABEL_19:
    v30 = *(sub_F75E48(a1[1], v13) + 16);
    goto LABEL_20;
  }

  v28 = *a3 / 10 + v24 + (((103 * v27) >> 15) & 1) + ((103 * v27) >> 10);
  if (!sub_F75E1C(a1[1], v12))
  {
    goto LABEL_18;
  }

LABEL_15:
  v29 = *(sub_F75E48(a1[1], v12) + 112);
  if (sub_F75E1C(a1[1], v13))
  {
    goto LABEL_19;
  }

LABEL_16:
  v30 = 0;
LABEL_20:
  v23 = sub_F8987C(v9, v12, v13, a4, a1[1], a1[6], a1[7], a1[8], v28, 0, v25, 0, v29, SHIDWORD(v29), v30);
LABEL_21:
  a3[1] = v23;
  return *a4 == -1 || *(a4 + 36) == -1 || *(a4 + 40) == -1 || v23 == 0x7FFFFFFF;
}

void sub_F8CCC4()
{
  byte_27C009F = 3;
  LODWORD(qword_27C0088) = 5136193;
  byte_27C00B7 = 3;
  LODWORD(qword_27C00A0) = 5136194;
  byte_27C00CF = 3;
  LODWORD(qword_27C00B8) = 5136195;
  byte_27C00E7 = 15;
  strcpy(&qword_27C00D0, "vehicle_mass_kg");
  byte_27C00FF = 21;
  strcpy(&xmmword_27C00E8, "vehicle_cargo_mass_kg");
  byte_27C0117 = 19;
  strcpy(&qword_27C0100, "vehicle_aux_power_w");
  byte_27C012F = 15;
  strcpy(&qword_27C0118, "dcdc_efficiency");
  strcpy(&qword_27C0130, "drive_train_efficiency");
  HIBYTE(word_27C0146) = 22;
  operator new();
}

void sub_F8CEA0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0146) < 0)
  {
    sub_21E5D2C();
  }

  sub_21E5D38();
  _Unwind_Resume(a1);
}

void sub_F8D134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8D268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_F8D290(uint64_t a1, unint64_t a2, unsigned int *a3, unint64_t a4, unsigned int *a5)
{
  v6 = HIDWORD(a2);
  v7 = a2 << 16;
  v8 = ((a2 << 16) & 0xFFFF00000000 | HIDWORD(a2) | (((a2 >> 1) & 1) << 48)) ^ 0x1000000000000;
  v9 = *a3;
  v10 = HIDWORD(a4);
  v11 = *a5;
  v12 = (((a4 << 16) & 0xFFFF00000000 | (((a4 >> 1) & 1) << 48) | HIDWORD(a4)) ^ 0x1000000000000) >> 48;
  if (WORD1(a2) == WORD1(a4) && HIWORD(v8) == v12 && v6 == v10 && v11 == v9)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (v6 != v10 || WORD2(v7) != WORD1(a4) || ((a2 << 47) & 0x1000000000000) >> 48 != v12 || v11 != 1000000000 - v9)
    {
      sub_2B7A20(*(a1 + 64), v8, v16);
      sub_31A76C(v16);
      sub_31AA0C(v16);
      operator new();
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 20);
  }

  return v14 | (v13 << 32);
}

void sub_F8DBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_21DB4B4(va);
  operator delete(v33);
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v32);
  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void sub_F8DC28(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int *a3@<X2>, unint64_t a4@<X3>, unsigned int *a5@<X4>, __n128 *a6@<X8>)
{
  v8 = sub_F8D290(a1, a2, a3, a4, a5);
  *&v17 = v8;
  *(&v17 + 1) = v9;
  if (v8 != -1 && (v8 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v9)
    {
      v13 = sub_456D70();
LABEL_16:
      v16.n128_u64[0] = v13;
      v16.n128_u64[1] = v14;
      sub_446CD4(a6, &v17, &v16);
      return;
    }

    v10 = v9 / 100000.0 * *(a1 + 40);
    v11 = v10 * sub_4495BC(*(*(a1 + 56) + 8));
    if (v11 >= 0.0)
    {
      if (v11 < 4.50359963e15)
      {
        v12 = (v11 + v11) + 1;
        goto LABEL_14;
      }
    }

    else if (v11 > -4.50359963e15)
    {
      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
LABEL_14:
      v11 = (v12 >> 1);
    }

    v15 = v11;
    v13 = sub_456D5C(&v15);
    goto LABEL_16;
  }

  sub_446C94(a6);
}

unint64_t sub_F8DD60(void *a1)
{
  v10 = 4;
  strcpy(__p, "cost");
  v2 = sub_6AF620(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 4;
  strcpy(__p, "time");
  v3 = sub_6AF620(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 6;
  strcpy(__p, "length");
  v4 = sub_6AF620(a1, __p);
  if (v10 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  v6 = ((v2 | v3 | v4) & 0x8000000000000000) != 0;
  v7 = v2 | (v3 << 32);
  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void sub_F8DE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8DF54(_Unwind_Exception *a1)
{
  v5 = *(v1 + v3);
  if (v5)
  {
    *(v1 + 4280) = v5;
    operator delete(v5);
  }

  sub_21DB4B4(v1 + v2);
  sub_3E3EF8((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_F8DF80(_Unwind_Exception *a1)
{
  v4 = v1[531];
  if (v4)
  {
    v1[532] = v4;
    operator delete(v4);
    v5 = *(v1 + v2);
    if (!v5)
    {
LABEL_3:
      sub_3E3EF8(v1 + 1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[529] = v5;
  operator delete(v5);
  sub_3E3EF8(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_F8DFCC(BOOL *a1, void *a2)
{
  strcpy(__p, "obey_turn_restrictions");
  v6 = 22;
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_F8E0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8E0E0(uint64_t a1, unsigned __int16 a2, int **a3, int **a4, int a5, uint64_t a6, int a7, int a8, char a9, char a10, uint64_t a11)
{
  v12 = a7;
  if (a7)
  {
    v14 = a3;
  }

  else
  {
    v14 = a4;
  }

  if (a7)
  {
    v15 = a2 >> 2;
  }

  else
  {
    v15 = a5;
  }

  if (a7)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  v76 = a2;
  v77 = v16;
  if (a7)
  {
    v17 = a5;
  }

  else
  {
    v17 = a2 >> 2;
  }

  if (*(a1 + 4216) != 1 || (v18 = sub_2BBF84(*(a1 + 4208), v14[4] & 0xFFFFFFFFFFFFFFLL, 0), (v19 & 1) == 0))
  {
    v18 = sub_30F984(a1 + 4208, v14);
  }

  v20 = v18;
  if (*(a1 + 4216) != 1 || (v21 = sub_2BBF84(*(a1 + 4208), v77[4] & 0xFFFFFFFFFFFFFFLL, 0), (v22 & 1) == 0))
  {
    v21 = sub_30F984(a1 + 4208, v77);
  }

  v23 = v21;
  v74 = v15;
  if (v20 == v21)
  {
    v24 = a11;
    v25 = 0;
    v26 = 0;
    v27 = v76;
    if (v76)
    {
      goto LABEL_21;
    }

LABEL_41:
    v30 = 0;
    goto LABEL_42;
  }

  v31 = v21 & v20;
  if ((v21 & v20) == v21)
  {
LABEL_26:
    v26 = 0;
    if (v31 == v20)
    {
      goto LABEL_40;
    }

LABEL_35:
    for (i = *(a1 + 4224); i != *(a1 + 4232); i += 4)
    {
      if ((i[1] & v20) == *i && (i[3] & v21) == i[2])
      {
        goto LABEL_40;
      }
    }

    v49 = *(a1 + 4248);
    v50 = *(a1 + 4256);
    if (v49 != v50)
    {
      while ((*(v49 + 8) & v20) != *v49 || (*(v49 + 24) & v21) != *(v49 + 16))
      {
        v49 += 40;
        if (v49 == v50)
        {
          v24 = a11;
          v25 = 1;
          v27 = v76;
          if ((v76 & 1) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_21;
        }
      }
    }

    v24 = a11;
    v27 = v76;
    if (v49 == v50)
    {
      v25 = 1;
      if ((v76 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v25 = *(v49 + 32) != 0;
      if ((v76 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_21;
  }

  for (j = *(a1 + 4224); j != *(a1 + 4232); j += 4)
  {
    if ((j[3] & v20) == j[2] && (j[1] & v21) == *j)
    {
      goto LABEL_26;
    }
  }

  v26 = 1;
  if (v31 != v20)
  {
    goto LABEL_35;
  }

LABEL_40:
  v24 = a11;
  v25 = 0;
  v27 = v76;
  if ((v76 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  v72 = v26;
  if (*(a1 + 4216) != 1 || (v28 = sub_2BBF84(*(a1 + 4208), a4[4] & 0xFFFFFFFFFFFFFFLL, 0), (v29 & 1) == 0))
  {
    v28 = sub_30F984(a1 + 4208, a4);
  }

  v30 = v28 != 0;
  v27 = v76;
  v26 = v72;
LABEL_42:
  v80 = *v14;
  v82 = *(v14 + 1);
  *&v84[8] = *v77;
  if (v12)
  {
    v34 = v27;
  }

  else
  {
    v34 = v30;
  }

  if (!v12)
  {
    v30 = v27;
  }

  *v84 = v14[4];
  *&v84[24] = *(v77 + 1);
  *&v84[40] = v77[4];
  v35 = v74 | (v17 << 16);
  if (v30)
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  if (a8)
  {
    v37 = 4;
  }

  else
  {
    v37 = 0;
  }

  if (v25 | v26)
  {
    v38 = 8;
  }

  else
  {
    v38 = 0;
  }

  v39 = (v38 | v37) & 0xFE | v34 | v36;
  v40 = *(v24 + 8);
  v41 = *(v24 + 16);
  if (v40 >= v41)
  {
    v75 = v12;
    v43 = *v24;
    v44 = 0x2E8BA2E8BA2E8BA3 * ((v40 - *v24) >> 3);
    v45 = v44 + 1;
    if ((v44 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      goto LABEL_112;
    }

    v46 = v24;
    v47 = 0x2E8BA2E8BA2E8BA3 * ((v41 - v43) >> 3);
    if (2 * v47 > v45)
    {
      v45 = 2 * v47;
    }

    if (v47 >= 0x1745D1745D1745DLL)
    {
      v48 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v48 = v45;
    }

    if (v48)
    {
      if (v48 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      goto LABEL_113;
    }

    v51 = 88 * v44;
    *(v51 + 32) = *v84;
    *(v51 + 48) = *&v84[16];
    *(v51 + 64) = *&v84[32];
    *v51 = v80;
    *(v51 + 16) = v82;
    *(v51 + 80) = v35;
    *(v51 + 84) = v39;
    v42 = 88 * v44 + 88;
    v52 = (v51 - (v40 - v43));
    memcpy(v52, v43, v40 - v43);
    *v46 = v52;
    v46[1] = v42;
    v46[2] = 0;
    v24 = v46;
    if (v43)
    {
      operator delete(v43);
    }

    v12 = v75;
  }

  else
  {
    *(v40 + 32) = *v84;
    *(v40 + 48) = *&v84[16];
    *(v40 + 64) = *&v84[32];
    *v40 = v80;
    *(v40 + 16) = v82;
    *(v40 + 80) = v35;
    v42 = v40 + 88;
    *(v40 + 84) = v39;
  }

  *(v24 + 8) = v42;
  if (*(a1 + 4216) != 1 || (v53 = sub_2BBF84(*(a1 + 4208), v14[4] & 0xFFFFFFFFFFFFFFLL, 0), (v54 & 1) == 0))
  {
    v53 = sub_30F984(a1 + 4208, v14);
  }

  v55 = v53;
  if (*(a1 + 4216) != 1 || (v56 = sub_2BBF84(*(a1 + 4208), v77[4] & 0xFFFFFFFFFFFFFFLL, 0), (v57 & 1) == 0))
  {
    v56 = sub_30F984(a1 + 4208, v77);
  }

  if (v20 != v23 && (v12 && v56 || (v12 & 1) == 0 && v55) && a10)
  {
    v58 = *(v24 + 8);
    v59 = *(v24 + 16);
    v85 = *(v58 - 40);
    v86 = *(v58 - 24);
    v87 = *(v58 - 8);
    v81 = *(v58 - 88);
    v83 = *(v58 - 72);
    v78 = *(v58 - 3);
    v79 = *(v58 - 1);
    if (v12)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    v61 = *(v58 - 4) ^ v60;
    if (v58 < v59)
    {
      v62 = *(v58 - 40);
      *(v58 + 32) = *(v58 - 56);
      *(v58 + 48) = v62;
      *(v58 + 64) = *(v58 - 24);
      *(v58 + 80) = *(v58 - 8);
      v63 = *(v58 - 72);
      *v58 = *(v58 - 88);
      *(v58 + 16) = v63;
      *(v58 + 84) = v61;
      *(v58 + 85) = *(v58 - 3);
      v64 = v58 + 88;
      *(v58 + 87) = *(v58 - 1);
LABEL_108:
      *(v24 + 8) = v64;
      return;
    }

    v65 = *v24;
    v66 = 0x2E8BA2E8BA2E8BA3 * ((v58 - *v24) >> 3);
    v67 = v66 + 1;
    if ((v66 + 1) <= 0x2E8BA2E8BA2E8BALL)
    {
      v68 = 0x2E8BA2E8BA2E8BA3 * ((v59 - v65) >> 3);
      if (2 * v68 > v67)
      {
        v67 = 2 * v68;
      }

      if (v68 >= 0x1745D1745D1745DLL)
      {
        v69 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v69 = v67;
      }

      if (!v69)
      {
        v70 = 8 * ((v58 - *v24) >> 3);
        *(v70 + 32) = *(v58 - 56);
        *(v70 + 48) = v85;
        *(v70 + 64) = v86;
        *(v70 + 80) = v87;
        *v70 = v81;
        *(v70 + 16) = v83;
        *(v70 + 84) = v61;
        *(v70 + 85) = v78;
        v64 = 88 * v66 + 88;
        v71 = (v70 - (v58 - v65));
        *(v70 + 87) = v79;
        memcpy(v71, v65, v58 - v65);
        *v24 = v71;
        *(v24 + 8) = v64;
        *(v24 + 16) = 0;
        if (v65)
        {
          operator delete(v65);
        }

        goto LABEL_108;
      }

      if (v69 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

LABEL_113:
      sub_1808();
    }

LABEL_112:
    sub_1794();
  }
}

void sub_F8E7AC(BOOL *a1, uint64_t a2, char a3)
{
  HIBYTE(v7[2]) = 19;
  strcpy(v7, "CyclingRoutingGraph");
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = sub_3AEC94(a2, v7, __p);
  sub_F8DFCC(a1, v4);
}

void sub_F8EB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_5BF68((v32 - 80));
  v34 = v30[534];
  if (v34)
  {
    v30[535] = v34;
    operator delete(v34);
  }

  sub_21DB4B4(v30 + v31);
  sub_3E3EF8(v30 + 1);
  _Unwind_Resume(a1);
}

void sub_F8EC30()
{
  v2 = v0[531];
  if (v2)
  {
    v0[532] = v2;
    operator delete(v2);
  }

  v3 = *(v0 + v1);
  if (v3)
  {
    v0[529] = v3;
    operator delete(v3);
  }

  JUMPOUT(0xF8EC20);
}

void sub_F8EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1A104(va);
  if (*(v18 - 57) < 0)
  {
    operator delete(*(v18 - 80));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xF8EC28);
}

char *sub_F8EC88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 4296);
  v6 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    v7 = sub_30C50C(v5 + 3896, a2, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = v9 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v9 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v5, a2 & 0xFFFFFFFFFFFFLL, 1);
  *a3 = v6;
  a3[1] = v10;
  a3[2] = result;
  a3[3] = v12;
  a3[4] = a2;
  return result;
}

void sub_F8ED58(uint64_t a1, unint64_t a2, int a3, void *a4, int a5)
{
  v83 = a2;
  v82 = a5;
  a4[1] = *a4;
  v9 = *(a1 + 4296);
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
  v12 = (HIDWORD(a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 48)) ^ 0x1000000000000;
  v13 = sub_2B51D8(v9, v11);
  if (*(v9 + 7772) == 1)
  {
    v14 = sub_30C50C(v9 + 3896, v10, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = (v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4 + *(v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v17 = 0;
  }

  v80[0] = v13;
  v80[1] = v17;
  v80[2] = sub_31D7E8(v9, v11, 1);
  v80[3] = v18;
  v81 = v12;
  v19 = (v13 - *v13);
  v20 = *v19;
  v21 = a3;
  if (HIWORD(v12))
  {
    if (v20 < 0x47)
    {
      if (v20 <= 0x38)
      {
        return;
      }
    }

    else if (v19[35] && (*(v13 + v19[35]) & 2) != 0)
    {
      goto LABEL_26;
    }

    v24 = v19[28];
    if (!v24)
    {
      return;
    }

    v23 = *(v13 + v24);
    if ((v23 & 2) != 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    if ((v23 & 7) != 4 && (v23 & 0x23) != 0x20)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v20 < 0x47)
  {
    if (v20 <= 0x38)
    {
      return;
    }
  }

  else if (v19[35] && (*(v13 + v19[35]) & 1) != 0)
  {
    goto LABEL_26;
  }

  v22 = v19[28];
  if (!v22)
  {
    return;
  }

  v23 = *(v13 + v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v79 = a3 == 0;
  v25 = *(a1 + 4296);
  if (a3)
  {
    v26 = sub_311544(v80);
  }

  else
  {
    v26 = sub_3116D0(v80);
  }

  v27 = sub_31BA24(v25, v26, (a1 + 4272), a3 != 0, 1, 1);
  v28 = *(a1 + 4280);
  v29 = *(a1 + 4272);
  v30 = v28 - v29;
  v78 = v28 - v29 == 80;
  if (v28 - v29 != 120)
  {
    goto LABEL_66;
  }

  if (v29 != v28)
  {
    v31 = v29;
    while (1)
    {
      v32 = (*v31 - **v31);
      if (*v32 < 0x9Bu)
      {
        break;
      }

      v33 = v32[77];
      if (!v33 || ((*(*v31 + v33) ^ (*(*v31 + v33) >> 1) & 1) & 1) == 0)
      {
        break;
      }

      v31 += 5;
      if (v31 == v28)
      {
        goto LABEL_36;
      }
    }

LABEL_66:
    v34 = 0;
    v77 = 0;
    if (v29 != v28)
    {
      goto LABEL_67;
    }

LABEL_37:
    v35 = *(a1 + 1) & 1;
    v76 = v35;
    if ((a2 & 0xFFFC) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_38;
  }

LABEL_36:
  v34 = 1;
  v77 = 1;
  if (v29 == v28)
  {
    goto LABEL_37;
  }

LABEL_67:
  v47 = 0;
  do
  {
    v48 = *v29;
    v49 = (*v29 - **v29);
    v50 = *v49;
    if (*(v29 + 38))
    {
      if (v50 >= 0x47)
      {
        v51 = v49[35];
        if (v51)
        {
          v52 = *(v48 + v51);
          if (v52 & 2) != 0 || (v52)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else if (v50 >= 0x47)
    {
      v53 = v49[35];
      if (v53)
      {
        v54 = *(v48 + v53);
        if ((v54 & 1) != 0 || (v54 & 2) != 0)
        {
LABEL_68:
          ++v47;
        }
      }
    }

    v29 += 5;
  }

  while (v29 != v28);
  v55 = 3;
  if (v47 < 3)
  {
    v55 = v47;
  }

  v35 = *(a1 + 1) & (v55 != 2);
  v76 = v35;
  if ((a2 & 0xFFFC) == 0)
  {
LABEL_38:
    v62 = v34;
    sub_30A454(a1 + 8, v12, v21, a5 == 0, &v72);
    v36 = (-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3));
    if (!(-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3)))
    {
LABEL_92:
      if (a5 != 1 && (*a1 & 1) != 0)
      {
        *&v64 = a1;
        *(&v64 + 1) = &v76;
        v65 = v80;
        v66 = &v83;
        v67 = &v79;
        v68 = &v78;
        v69 = &v77;
        v70 = &v82;
        v71 = a4;
        sub_F8F394(&v72, &v64);
      }

      return;
    }

    v37 = 0;
    v38 = 32;
    while (1)
    {
      v39 = *(a1 + 4272);
      v41 = (v39 + v38 - 32);
      v40 = *v41;
      v42 = (v40 - *v40);
      v43 = *v42;
      if (*(v39 + v38 + 6))
      {
        if (v43 < 0x47)
        {
          if (v43 <= 0x38)
          {
            goto LABEL_41;
          }
        }

        else if (v42[35] && (*(v40 + v42[35]) & 2) != 0)
        {
          goto LABEL_60;
        }

        v44 = v42[28];
        if (!v44)
        {
          goto LABEL_41;
        }

        v45 = *(v40 + v44);
        if ((v45 & 2) != 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v43 < 0x47)
        {
          if (v43 <= 0x38)
          {
            goto LABEL_41;
          }
        }

        else if (v42[35] && (*(v40 + v42[35]) & 1) != 0)
        {
LABEL_60:
          if (v81 != *(v39 + v38) || (WORD2(v81) != *(v39 + v38 + 4)) | v35 & 1)
          {
            if (a5 == 1 || (*a1 & 1) == 0 || (v64 = v72, v65 = v73, v84 = v74, v85 = v75, v86[0] = v37, (sub_F91960(&v64, &v84, v86) & 1) == 0))
            {
              sub_F8E0E0(a1, a2, v80, v41, 0, 0, v21 == 0, v30 == 80, v62, a5 == 0, a4);
            }
          }

          goto LABEL_41;
        }

        v46 = v42[28];
        if (!v46)
        {
          goto LABEL_41;
        }

        v45 = *(v40 + v46);
        if (v45)
        {
          goto LABEL_60;
        }
      }

      if ((v45 & 7) == 4 || (v45 & 0x23) == 0x20)
      {
        goto LABEL_60;
      }

LABEL_41:
      ++v37;
      v38 += 40;
      if (v36 == v37)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_84:
  v56 = sub_30A630(a1 + 8, v12, a2 >> 2, v21, a5 == 0);
  if ((~v56 & 0xFF0000) != 0 && v27)
  {
    v57 = *(a1 + 4272);
    if (v57 != *(a1 + 4280))
    {
      if ((v35 & 1) != 0 || ((v58 = v57 + 40 * BYTE2(v56), v59 = *(v58 + 36), v60 = *(v58 + 32), v59 == WORD2(v81)) ? (v61 = v60 == v81) : (v61 = 0), !v61))
      {
        sub_F8E0E0(a1, a2, v80, (v57 + 40 * BYTE2(v56)), v56, (v56 >> 25) & 1, v21 == 0, v30 == 80, v34, a5 == 0, a4);
      }
    }
  }
}

void sub_F8F394(uint64_t result, uint64_t a2)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v9;
  v22 = *(a2 + 64);
  v10 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v10;
  v12 = v4 == v6 && v3 == v8;
  if (!v12 || v7 != v5)
  {
    if (v4)
    {
      if (!v12)
      {
        for (i = 4 * v5; ; i += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + i) | (*(*v4 + i + 2) << 16) | (*(*v4 + i + 3) << 24);
          sub_F91BA4(v21, v2);
        }
      }

      v14 = v7 - v5;
      v15 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + v15) | (*(*v4 + v15 + 2) << 16) | (*(*v4 + v15 + 3) << 24);
        sub_F91BA4(v21, v2);
        v15 += 4;
        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = v3 + 4;
      if (!v12)
      {
        for (j = 4 * v5; ; j += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (j & 0x3FFFFFFFCLL)) | (*(v16 + (j & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (j & 0x3FFFFFFFCLL) + 3) << 24);
          sub_F91BA4(v21, v2);
        }
      }

      v17 = v7 - v5;
      v18 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (v18 & 0x3FFFFFFFCLL)) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 3) << 24);
        sub_F91BA4(v21, v2);
        v18 += 4;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_F8F5EC(_Unwind_Exception *a1)
{
  v5 = *(v1 + v3);
  if (v5)
  {
    *(v1 + 4280) = v5;
    operator delete(v5);
  }

  sub_21DB4B4(v1 + v2);
  sub_3E3EF8((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_F8F618(_Unwind_Exception *a1)
{
  v4 = v1[531];
  if (v4)
  {
    v1[532] = v4;
    operator delete(v4);
    v5 = *(v1 + v2);
    if (!v5)
    {
LABEL_3:
      sub_3E3EF8(v1 + 1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[529] = v5;
  operator delete(v5);
  sub_3E3EF8(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_F8F664(BOOL *a1, void *a2)
{
  strcpy(__p, "obey_turn_restrictions");
  v6 = 22;
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_F8F758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F8F778(uint64_t a1, unsigned __int16 a2, int **a3, int **a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, char a10, void **a11)
{
  v14 = a2;
  if (a7)
  {
    v16 = a3;
  }

  else
  {
    v16 = a4;
  }

  v17 = a2 >> 2;
  if (a7)
  {
    v18 = a2 >> 2;
  }

  else
  {
    v18 = a5;
  }

  if (a7)
  {
    v19 = a4;
  }

  else
  {
    v19 = a3;
  }

  if (a7)
  {
    v17 = a5;
  }

  v81 = v17;
  v82 = v18;
  if (*(a1 + 4216) != 1 || (v20 = sub_2BC10C(*(a1 + 4208), v16[4] & 0xFFFFFFFFFFFFFFLL, 0), (v21 & 1) == 0))
  {
    v20 = sub_30F8F8(a1 + 4208, v16);
  }

  v22 = v20;
  if (*(a1 + 4216) != 1 || (v23 = sub_2BC10C(*(a1 + 4208), v19[4] & 0xFFFFFFFFFFFFFFLL, 0), (v24 & 1) == 0))
  {
    v23 = sub_30F8F8(a1 + 4208, v19);
  }

  v25 = v23;
  v86 = v16;
  v85 = a6;
  if (v22 == v23)
  {
    v26 = v19;
    v79 = 0;
    v80 = 0;
    v27 = a9;
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_40:
    v31 = 0;
    v30 = a11;
    goto LABEL_41;
  }

  v32 = v23 & v22;
  if ((v23 & v22) == v23)
  {
LABEL_25:
    v80 = 0;
    if (v32 == v22)
    {
      goto LABEL_39;
    }

LABEL_34:
    for (i = *(a1 + 4224); i != *(a1 + 4232); i += 4)
    {
      if ((i[1] & v22) == *i && (i[3] & v23) == i[2])
      {
        goto LABEL_39;
      }
    }

    v55 = *(a1 + 4248);
    v56 = *(a1 + 4256);
    if (v55 != v56)
    {
      while ((*(v55 + 8) & v22) != *v55 || (*(v55 + 24) & v23) != *(v55 + 16))
      {
        v55 += 40;
        if (v55 == v56)
        {
          v26 = v19;
          goto LABEL_110;
        }
      }
    }

    v26 = v19;
    if (v55 == v56)
    {
LABEL_110:
      v79 = 64;
      v27 = a9;
      if ((v14 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v79 = (*(v55 + 32) != 0) << 6;
      v27 = a9;
      if ((v14 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_20;
  }

  for (j = *(a1 + 4224); j != *(a1 + 4232); j += 4)
  {
    if ((j[3] & v22) == j[2] && (j[1] & v23) == *j)
    {
      goto LABEL_25;
    }
  }

  v80 = 1;
  if (v32 != v22)
  {
    goto LABEL_34;
  }

LABEL_39:
  v26 = v19;
  v79 = 0;
  v27 = a9;
  if ((v14 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (*(a1 + 4216) != 1 || (v28 = sub_2BC10C(*(a1 + 4208), a4[4] & 0xFFFFFFFFFFFFFFLL, 0), (v29 & 1) == 0))
  {
    v28 = sub_30F8F8(a1 + 4208, a4);
  }

  v30 = a11;
  v31 = v28 != 0;
LABEL_41:
  v35 = a7 == 0;
  v36 = a7;
  if (a7)
  {
    v37 = v14;
  }

  else
  {
    v37 = v31;
  }

  if (v35)
  {
    v38 = v14;
  }

  else
  {
    v38 = v31;
  }

  v78 = v36;
  v39 = sub_41DAF8(v86, v26, (a1 + 4272), a1 + 4208, v36 ^ 1u, 0);
  v88 = *v86;
  v90 = *(v86 + 1);
  *&v92[8] = *v26;
  *v92 = v86[4];
  *&v92[24] = *(v26 + 1);
  v40 = v82 | (v81 << 16);
  v83 = v26;
  *&v92[40] = v26[4];
  if (v38)
  {
    v41 = 2;
  }

  else
  {
    v41 = 0;
  }

  if (a8)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  if (v27)
  {
    v43 = 8;
  }

  else
  {
    v43 = 0;
  }

  if (v85)
  {
    v44 = 16;
  }

  else
  {
    v44 = 0;
  }

  if (v80)
  {
    v45 = 32;
  }

  else
  {
    v45 = 0;
  }

  v46 = v42 | v44 | v43 | v79 | v45 | v37 | v41;
  v47 = v30[1];
  v48 = v30[2];
  if (v47 >= v48)
  {
    v50 = *v30;
    v51 = 0xAAAAAAAAAAAAAAABLL * ((v47 - *v30) >> 5);
    v52 = v51 + 1;
    if (v51 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      goto LABEL_116;
    }

    v53 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v50) >> 5);
    if (2 * v53 > v52)
    {
      v52 = 2 * v53;
    }

    if (v53 >= 0x155555555555555)
    {
      v54 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v54 = v52;
    }

    if (v54)
    {
      if (v54 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_117;
    }

    v30 = a11;
    v57 = 96 * v51;
    *(v57 + 32) = *v92;
    *(v57 + 48) = *&v92[16];
    *(v57 + 64) = *&v92[32];
    *v57 = v88;
    *(v57 + 16) = v90;
    *(v57 + 80) = v40;
    *(v57 + 84) = v39;
    *(v57 + 88) = v46;
    v49 = 96 * v51 + 96;
    v58 = (96 * v51 - (v47 - v50));
    memcpy(v58, v50, v47 - v50);
    *a11 = v58;
    a11[1] = v49;
    a11[2] = 0;
    if (v50)
    {
      operator delete(v50);
    }
  }

  else
  {
    *(v47 + 2) = *v92;
    *(v47 + 3) = *&v92[16];
    *(v47 + 4) = *&v92[32];
    *v47 = v88;
    *(v47 + 1) = v90;
    *(v47 + 20) = v40;
    *(v47 + 21) = v39;
    v49 = (v47 + 96);
    v47[88] = v46;
  }

  v30[1] = v49;
  if (*(a1 + 4216) != 1 || (v59 = sub_2BC10C(*(a1 + 4208), v86[4] & 0xFFFFFFFFFFFFFFLL, 0), (v60 & 1) == 0))
  {
    v59 = sub_30F8F8(a1 + 4208, v86);
  }

  v61 = v59;
  if (*(a1 + 4216) != 1 || (v62 = sub_2BC10C(*(a1 + 4208), v83[4] & 0xFFFFFFFFFFFFFFLL, 0), (v63 & 1) == 0))
  {
    v62 = sub_30F8F8(a1 + 4208, v83);
  }

  if (v22 != v25 && (v78 && v62 || (v78 & 1) == 0 && v61) && a10)
  {
    v64 = v30[1];
    v65 = v30[2];
    v93 = *(v64 - 3);
    v94 = *(v64 - 2);
    v95 = *(v64 - 2);
    v89 = *(v64 - 6);
    v91 = *(v64 - 5);
    *v87 = *(v64 - 7);
    *&v87[3] = *(v64 - 1);
    if (v78)
    {
      v66 = 2;
    }

    else
    {
      v66 = 1;
    }

    v67 = *(v64 - 8) ^ v66;
    if (v64 < v65)
    {
      v68 = *(v64 - 3);
      *(v64 + 2) = *(v64 - 4);
      *(v64 + 3) = v68;
      *(v64 + 4) = *(v64 - 2);
      *(v64 + 10) = *(v64 - 2);
      v69 = *(v64 - 5);
      *v64 = *(v64 - 6);
      *(v64 + 1) = v69;
      v64[88] = v67;
      *(v64 + 89) = *(v64 - 7);
      v70 = (v64 + 96);
      *(v64 + 23) = *(v64 - 1);
LABEL_114:
      v30[1] = v70;
      return;
    }

    v71 = *v30;
    v72 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *v30) >> 5);
    v73 = v72 + 1;
    if (v72 + 1 <= 0x2AAAAAAAAAAAAAALL)
    {
      v74 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v71) >> 5);
      if (2 * v74 > v73)
      {
        v73 = 2 * v74;
      }

      if (v74 >= 0x155555555555555)
      {
        v75 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v75 = v73;
      }

      if (!v75)
      {
        v76 = 32 * ((v64 - *v30) >> 5);
        *(v76 + 32) = *(v64 - 4);
        *(v76 + 48) = v93;
        *(v76 + 64) = v94;
        *(v76 + 80) = v95;
        *v76 = v89;
        *(v76 + 16) = v91;
        *(v76 + 88) = v67;
        *(v76 + 89) = *v87;
        v70 = 96 * v72 + 96;
        v77 = (96 * v72 - (v64 - v71));
        *(v76 + 92) = *&v87[3];
        memcpy(v77, v71, v64 - v71);
        *v30 = v77;
        v30[1] = v70;
        v30[2] = 0;
        if (v71)
        {
          operator delete(v71);
        }

        goto LABEL_114;
      }

      if (v75 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_117:
      sub_1808();
    }

LABEL_116:
    sub_1794();
  }
}

void sub_F8FE74(BOOL *a1, uint64_t a2, char a3)
{
  HIBYTE(v7[2]) = 19;
  strcpy(v7, "DrivingRoutingGraph");
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  v4 = sub_3AEC94(a2, v7, __p);
  sub_F8F664(a1, v4);
}

void sub_F90258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_5BF68((v32 - 80));
  v34 = v30[534];
  if (v34)
  {
    v30[535] = v34;
    operator delete(v34);
  }

  sub_21DB4B4(v30 + v31);
  sub_3E3EF8(v30 + 1);
  _Unwind_Resume(a1);
}

void sub_F902F8()
{
  v2 = v0[531];
  if (v2)
  {
    v0[532] = v2;
    operator delete(v2);
  }

  v3 = *(v0 + v1);
  if (v3)
  {
    v0[529] = v3;
    operator delete(v3);
  }

  JUMPOUT(0xF902E8);
}

void sub_F90328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1A104(va);
  if (*(v18 - 57) < 0)
  {
    operator delete(*(v18 - 80));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xF902F0);
}

void sub_F90350(uint64_t a1, unint64_t a2, int a3, void **a4, int a5)
{
  v78 = a2;
  v77 = a5;
  a4[1] = *a4;
  v9 = *(a1 + 4296);
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
  v12 = (HIDWORD(a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 48)) ^ 0x1000000000000;
  v13 = sub_2B51D8(v9, v11);
  if (*(v9 + 7772) == 1)
  {
    v14 = sub_30C50C(v9 + 3896, v10, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = (v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4 + *(v16 + ((a2 << 16 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v17 = 0;
  }

  v75[0] = v13;
  v75[1] = v17;
  v75[2] = sub_31D7E8(v9, v11, 1);
  v75[3] = v18;
  v76 = v12;
  v19 = (v13 - *v13);
  v20 = *v19;
  if (!HIWORD(v12))
  {
    if (v20 < 0x9B)
    {
      if (v20 <= 0x38)
      {
        return;
      }
    }

    else if (v19[77])
    {
      v21 = *(v13 + v19[77]);
      if (v21)
      {
        goto LABEL_28;
      }

      if ((v21 & 2) != 0)
      {
        return;
      }
    }

    v23 = v19[28];
    if (!v23)
    {
      return;
    }

    v24 = *(v13 + v23);
    if (v24)
    {
      goto LABEL_28;
    }

LABEL_26:
    if ((v24 & 7) != 4 && (v24 & 0x23) != 0x20)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v20 < 0x9B)
  {
    if (v20 <= 0x38)
    {
      return;
    }
  }

  else if (v19[77])
  {
    v22 = *(v13 + v19[77]);
    if ((v22 & 2) != 0)
    {
      goto LABEL_28;
    }

    if (v22)
    {
      return;
    }
  }

  v25 = v19[28];
  if (!v25)
  {
    return;
  }

  v24 = *(v13 + v25);
  if ((v24 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v74 = a3 == 0;
  v26 = *(a1 + 4296);
  if (a3)
  {
    v27 = sub_311544(v75);
  }

  else
  {
    v27 = sub_3116D0(v75);
  }

  v28 = sub_31BA24(v26, v27, (a1 + 4272), a3 != 0, 1, 1);
  v29 = *(a1 + 4280);
  v30 = *(a1 + 4272);
  v73 = v29 - v30 == 80;
  v57 = v29 - v30;
  if (v29 - v30 != 120)
  {
    goto LABEL_51;
  }

  if (v30 != v29)
  {
    v31 = v30;
    while (1)
    {
      v32 = (*v31 - **v31);
      if (*v32 < 0x9Bu)
      {
        break;
      }

      v33 = v32[77];
      if (!v33 || ((*(*v31 + v33) ^ (*(*v31 + v33) >> 1) & 1) & 1) == 0)
      {
        break;
      }

      v31 += 5;
      if (v31 == v29)
      {
        goto LABEL_38;
      }
    }

LABEL_51:
    v34 = 0;
    v72 = 0;
    if (v30 != v29)
    {
      goto LABEL_52;
    }

LABEL_39:
    v35 = *(a1 + 1) & 1;
    v71 = v35;
    if ((a2 & 0xFFFC) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_40;
  }

LABEL_38:
  v34 = 1;
  v72 = 1;
  if (v30 == v29)
  {
    goto LABEL_39;
  }

LABEL_52:
  v41 = 0;
  do
  {
    v42 = *v30;
    v43 = (*v30 - **v30);
    v44 = *v43;
    if (*(v30 + 38))
    {
      if (v44 >= 0x9B)
      {
        v45 = v43[77];
        if (v45)
        {
          v46 = *(v42 + v45);
          if (v46 & 2) != 0 || (v46)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else if (v44 >= 0x9B)
    {
      v47 = v43[77];
      if (v47)
      {
        v48 = *(v42 + v47);
        if ((v48 & 1) != 0 || (v48 & 2) != 0)
        {
LABEL_53:
          ++v41;
        }
      }
    }

    v30 += 5;
  }

  while (v30 != v29);
  v49 = 3;
  if (v41 < 3)
  {
    v49 = v41;
  }

  v35 = *(a1 + 1) & (v49 != 2);
  v71 = v35;
  if ((a2 & 0xFFFC) == 0)
  {
LABEL_40:
    v56 = a4;
    v36 = v34;
    sub_30A454(a1 + 8, v12, a3, a5 == 0, &v67);
    v37 = (-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3));
    if (-51 * ((*(a1 + 4280) - *(a1 + 4272)) >> 3))
    {
      v38 = 0;
      v39 = 32;
      do
      {
        v40 = *(a1 + 4272);
        if (sub_313158((v40 + v39 - 32)) && (v76 != *(v40 + v39) || (WORD2(v76) != *(v40 + v39 + 4)) | v35 & 1))
        {
          if (a5 == 1 || (*a1 & 1) == 0 || (v59 = v67, v60 = v68, v79 = v69, v80 = v70, v81[0] = v38, (sub_F91960(&v59, &v79, v81) & 1) == 0))
          {
            sub_F8F778(a1, a2, v75, (v40 + v39 - 32), 0, 0, a3 == 0, v57 == 80, v36, a5 == 0, v56);
          }
        }

        ++v38;
        v39 += 40;
      }

      while (v37 != v38);
    }

    if (a5 != 1 && (*a1 & 1) != 0)
    {
      *&v59 = a1;
      *(&v59 + 1) = &v71;
      v60 = v75;
      v61 = &v78;
      v62 = &v74;
      v63 = &v73;
      v64 = &v72;
      v65 = &v77;
      v66 = v56;
      sub_F90914(&v67, &v59);
    }

    return;
  }

LABEL_69:
  v50 = sub_30A630(a1 + 8, v12, a2 >> 2, a3, a5 == 0);
  if ((~v50 & 0xFF0000) != 0 && v28)
  {
    v51 = *(a1 + 4272);
    if (v51 != *(a1 + 4280))
    {
      if ((v35 & 1) != 0 || ((v52 = v51 + 40 * BYTE2(v50), v53 = *(v52 + 36), v54 = *(v52 + 32), v53 == WORD2(v76)) ? (v55 = v54 == v76) : (v55 = 0), !v55))
      {
        sub_F8F778(a1, a2, v75, (v51 + 40 * BYTE2(v50)), v50, (v50 >> 25) & 1, a3 == 0, v57 == 80, v34, a5 == 0, a4);
      }
    }
  }
}

void sub_F90914(uint64_t result, uint64_t a2)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v9;
  v22 = *(a2 + 64);
  v10 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v10;
  v12 = v4 == v6 && v3 == v8;
  if (!v12 || v7 != v5)
  {
    if (v4)
    {
      if (!v12)
      {
        for (i = 4 * v5; ; i += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + i) | (*(*v4 + i + 2) << 16) | (*(*v4 + i + 3) << 24);
          sub_F91C88(v21, v2);
        }
      }

      v14 = v7 - v5;
      v15 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(*v4 + v15) | (*(*v4 + v15 + 2) << 16) | (*(*v4 + v15 + 3) << 24);
        sub_F91C88(v21, v2);
        v15 += 4;
        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = v3 + 4;
      if (!v12)
      {
        for (j = 4 * v5; ; j += 4)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (j & 0x3FFFFFFFCLL)) | (*(v16 + (j & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (j & 0x3FFFFFFFCLL) + 3) << 24);
          sub_F91C88(v21, v2);
        }
      }

      v17 = v7 - v5;
      v18 = 4 * v5;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(v16 + (v18 & 0x3FFFFFFFCLL)) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 2) << 16) | (*(v16 + (v18 & 0x3FFFFFFFCLL) + 3) << 24);
        sub_F91C88(v21, v2);
        v18 += 4;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_F90A90(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_F90350(a1, a2, 0, &v12, 0);
  v6 = v12;
  v7 = v12;
  if (v12 != v13)
  {
    v7 = v12;
    while (((((v7[9] >> 16) & 0xFFFF0000 | (v7[9] << 32) | (2 * ((v7[9] & 0xFF000000000000) == 0))) + 4 * *(v7 + 41)) & 0xFFFFFFFFFFFFFFFELL | (*(v7 + 88) >> 1) & 1) != a3)
    {
      v7 += 12;
      if (v7 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v13)
  {
LABEL_9:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0x1000000000000;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0x1000000000000;
    *(a4 + 80) = 0;
    *(a4 + 84) = *(a4 + 84) & 0x8000 | 0x280;
    *(a4 + 86) = 0;
    *(a4 + 88) &= 0xE0u;
    if (!v6)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + 1);
  *a4 = *v7;
  *(a4 + 16) = v8;
  v9 = *(v7 + 2);
  v10 = *(v7 + 3);
  v11 = *(v7 + 5);
  *(a4 + 64) = *(v7 + 4);
  *(a4 + 80) = v11;
  *(a4 + 32) = v9;
  *(a4 + 48) = v10;
  if (v6)
  {
LABEL_10:
    v13 = v6;
    operator delete(v6);
  }
}

void sub_F90BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F90BC0(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  a3[1] = *a3;
  v21[0] = a1;
  v21[1] = a3;
  sub_F90D8C(v21, (a2 & 0xFFFFFFFFFFFFLL));
  sub_F90D8C(v21, (a2 & 0xFFFFFFFFFFFFLL | 0x1000000000000));
  v5 = a3[1] - *a3;
  if (v5)
  {
    v6 = 0;
    v19 = v5 >> 3;
    do
    {
      v7 = (*a3)[v6];
      v8 = sub_30A33C(a1 + 8, (HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000);
      v9 = v8;
      if (v8)
      {
        v10 = a3[1];
        v11 = v7 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v12 = a3[2];
          if (v10 < v12)
          {
            *v10++ = v11;
          }

          else
          {
            v13 = *a3;
            v14 = v10 - *a3;
            v15 = v14 >> 3;
            v16 = (v14 >> 3) + 1;
            if (v16 >> 61)
            {
              sub_1794();
            }

            v17 = v12 - v13;
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
              if (!(v18 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v15) = v11;
            v10 = (8 * v15 + 8);
            memcpy(0, v13, v14);
            *a3 = 0;
            a3[1] = v10;
            a3[2] = 0;
            if (v13)
            {
              operator delete(v13);
            }
          }

          a3[1] = v10;
          v11 += 4;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v19);
  }
}

int *sub_F90D8C(void *a1, int *a2)
{
  v23 = a2;
  v4 = *a1;
  v5 = *(*a1 + 4296);
  v6 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    v7 = sub_30C50C(v5 + 3896, a2, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = (v9 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v9 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v5, a2 & 0xFFFFFFFFFFFFLL, 1);
  v22[0] = v6;
  v22[1] = v10;
  v22[2] = result;
  v22[3] = v12;
  v22[4] = a2;
  v13 = (v6 - *v6);
  v14 = *v13;
  if ((a2 & 0xFF000000000000) == 0)
  {
    if (v14 < 0x47)
    {
      if (v14 <= 0x38)
      {
        return result;
      }
    }

    else if (v13[35] && (*(v6 + v13[35]) & 1) != 0)
    {
      goto LABEL_27;
    }

    v17 = v13[28];
    if (!v17)
    {
      return result;
    }

    v16 = *(v6 + v17);
    if (v16)
    {
      goto LABEL_27;
    }

LABEL_24:
    if ((v16 & 7) != 4 && (v16 & 0x23) != 0x20)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v14 < 0x47)
  {
    if (v14 <= 0x38)
    {
      return result;
    }

LABEL_18:
    v15 = v13[28];
    if (!v15)
    {
      return result;
    }

    v16 = *(v6 + v15);
    if ((v16 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v13[35] || (*(v6 + v13[35]) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  sub_F916AC(a1[1], &v23);
  if (*(v4 + 4216) != 1 || (result = sub_2BBF84(*(v4 + 4208), a2 & 0xFFFFFFFFFFFFFFLL, 0), (v18 & 1) == 0))
  {
    result = sub_30F984(v4 + 4208, v22);
  }

  if (result)
  {
    v19 = a1[1];
    v21 = 0;
    v20 = 1;
    return sub_F917E4(v19, &v23, &v21, &v20);
  }

  return result;
}

void sub_F90F80(uint64_t a1, int *a2, unint64_t **a3)
{
  a3[1] = *a3;
  v20[0] = a1;
  v20[1] = a3;
  sub_F90D8C(v20, a2);
  v4 = a3[1] - *a3;
  if (v4)
  {
    v5 = 0;
    v18 = v4 >> 3;
    do
    {
      v6 = (*a3)[v5];
      v7 = sub_30A33C(a1 + 8, (HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000);
      v8 = v7;
      if (v7)
      {
        v9 = a3[1];
        v10 = v6 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v11 = a3[2];
          if (v9 < v11)
          {
            *v9++ = v10;
          }

          else
          {
            v12 = *a3;
            v13 = v9 - *a3;
            v14 = v13 >> 3;
            v15 = (v13 >> 3) + 1;
            if (v15 >> 61)
            {
              sub_1794();
            }

            v16 = v11 - v12;
            if (v16 >> 2 > v15)
            {
              v15 = v16 >> 2;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              if (!(v17 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v14) = v10;
            v9 = (8 * v14 + 8);
            memcpy(0, v12, v13);
            *a3 = 0;
            a3[1] = v9;
            a3[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          a3[1] = v9;
          v10 += 4;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v18);
  }
}

void sub_F91134(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  a3[1] = *a3;
  v21[0] = a1;
  v21[1] = a3;
  sub_F91300(v21, a2 & 0xFFFFFFFFFFFFLL);
  sub_F91300(v21, a2 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
  v5 = a3[1] - *a3;
  if (v5)
  {
    v6 = 0;
    v19 = v5 >> 3;
    do
    {
      v7 = (*a3)[v6];
      v8 = sub_30A33C(a1 + 8, (HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000);
      v9 = v8;
      if (v8)
      {
        v10 = a3[1];
        v11 = v7 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v7) & 0xFFFE0000FFFFFFFFLL | (((v7 >> 1) & 1) << 48) | (WORD1(v7) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v12 = a3[2];
          if (v10 < v12)
          {
            *v10++ = v11;
          }

          else
          {
            v13 = *a3;
            v14 = v10 - *a3;
            v15 = v14 >> 3;
            v16 = (v14 >> 3) + 1;
            if (v16 >> 61)
            {
              sub_1794();
            }

            v17 = v12 - v13;
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
              if (!(v18 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v15) = v11;
            v10 = (8 * v15 + 8);
            memcpy(0, v13, v14);
            *a3 = 0;
            a3[1] = v10;
            a3[2] = 0;
            if (v13)
            {
              operator delete(v13);
            }
          }

          a3[1] = v10;
          v11 += 4;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v19);
  }
}

void *sub_F91300(void *a1, unint64_t a2)
{
  v25 = a2;
  v4 = *a1;
  v5 = *(*a1 + 4296);
  v6 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    v7 = sub_30C50C(v5 + 3896, a2, 0);
    v8 = &v7[-*v7];
    if (*v8 < 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 2);
      if (v9)
      {
        v9 += &v7[*&v7[v9]];
      }
    }

    v10 = v9 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v9 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v10 = 0;
  }

  result = sub_31D7E8(v5, a2 & 0xFFFFFFFFFFFFLL, 1);
  v24[0] = v6;
  v24[1] = v10;
  v24[2] = result;
  v24[3] = v12;
  v24[4] = a2;
  v13 = (v6 - *v6);
  v14 = *v13;
  if ((a2 & 0xFF000000000000) == 0)
  {
    if (v14 < 0x9B)
    {
      if (v14 <= 0x38)
      {
        return result;
      }
    }

    else if (v13[77])
    {
      v16 = *(v6 + v13[77]);
      if (v16)
      {
        goto LABEL_28;
      }

      if ((v16 & 2) != 0)
      {
        return result;
      }
    }

    v19 = v13[28];
    if (!v19)
    {
      return result;
    }

    v18 = *(v6 + v19);
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v14 < 0x9B)
  {
    if (v14 <= 0x38)
    {
      return result;
    }

LABEL_20:
    v17 = v13[28];
    if (!v17)
    {
      return result;
    }

    v18 = *(v6 + v17);
    if ((v18 & 2) != 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    if ((v18 & 7) != 4 && (v18 & 0x23) != 0x20)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!v13[77])
  {
    goto LABEL_20;
  }

  v15 = *(v6 + v13[77]);
  if ((v15 & 2) == 0)
  {
    if (v15)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_28:
  sub_F916AC(a1[1], &v25);
  if (*(v4 + 4216) != 1 || (result = sub_2BC10C(*(v4 + 4208), a2 & 0xFFFFFFFFFFFFFFLL, 0), (v20 & 1) == 0))
  {
    result = sub_30F8F8(v4 + 4208, v24);
  }

  if (result)
  {
    v21 = a1[1];
    v23 = 0;
    v22 = 1;
    return sub_F917E4(v21, &v25, &v23, &v22);
  }

  return result;
}

void sub_F914F8(uint64_t a1, unint64_t a2, unint64_t **a3)
{
  a3[1] = *a3;
  v20[0] = a1;
  v20[1] = a3;
  sub_F91300(v20, a2);
  v4 = a3[1] - *a3;
  if (v4)
  {
    v5 = 0;
    v18 = v4 >> 3;
    do
    {
      v6 = (*a3)[v5];
      v7 = sub_30A33C(a1 + 8, (HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000);
      v8 = v7;
      if (v7)
      {
        v9 = a3[1];
        v10 = v6 & 0xFFFFFFFFFFFF0001 | (2 * (((HIDWORD(v6) & 0xFFFE0000FFFFFFFFLL | (((v6 >> 1) & 1) << 48) | (WORD1(v6) << 32)) ^ 0x1000000000000) >> 48 == 0)) | 4;
        do
        {
          v11 = a3[2];
          if (v9 < v11)
          {
            *v9++ = v10;
          }

          else
          {
            v12 = *a3;
            v13 = v9 - *a3;
            v14 = v13 >> 3;
            v15 = (v13 >> 3) + 1;
            if (v15 >> 61)
            {
              sub_1794();
            }

            v16 = v11 - v12;
            if (v16 >> 2 > v15)
            {
              v15 = v16 >> 2;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              if (!(v17 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v14) = v10;
            v9 = (8 * v14 + 8);
            memcpy(0, v12, v13);
            *a3 = 0;
            a3[1] = v9;
            a3[2] = 0;
            if (v12)
            {
              operator delete(v12);
            }
          }

          a3[1] = v9;
          v10 += 4;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v18);
  }
}

void *sub_F916AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v8) = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0));
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0));
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return (v5 - 8);
}

void *sub_F917E4(uint64_t a1, void *a2, _DWORD *a3, unsigned __int8 *a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = *a1;
    v10 = v7 - *a1;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      sub_1794();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v11) = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0)) | *a4) + 4 * *a3;
    v8 = 8 * v11 + 8;
    memcpy(0, v9, v10);
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32) | (2 * ((*a2 & 0xFF000000000000) == 0)) | *a4) + 4 * *a3;
    v8 = (v7 + 1);
  }

  *(a1 + 8) = v8;
  return (v8 - 8);
}

uint64_t sub_F91960(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = *a3;
  if (*a1 != *a2)
  {
    if (v3)
    {
      v5 = *v3;
      v6 = *(a1 + 16);
      v7 = (v5 + 4 * v6);
      if (v4 == v7[2] && (v7[3] & 1) != 0)
      {
        return 1;
      }

      v9 = (v7 + 7);
      do
      {
        ++v6;
        v10 = *(v9 - 1);
        v11 = *v9;
        v9 += 4;
        v12 = v11 & 1;
      }

      while (v4 != v10 || v12 == 0);
    }

    else
    {
      v6 = *(a1 + 16);
      v24 = *(a1 + 8) + 4;
      v25 = v24 + 4 * v6;
      v26 = *(v25 + 2);
      v27 = *(v25 + 3) & 1;
      if (v4 == v26 && v27 != 0)
      {
        return 1;
      }

      v29 = 4 * v6 + 4;
      do
      {
        ++v6;
        v30 = v24 + (v29 & 0x3FFFFFFFCLL);
        v31 = *(v30 + 2);
        v32 = *(v30 + 3) & 1;
        v29 += 4;
      }

      while (v4 != v31 || v32 == 0);
    }

LABEL_49:
    *(a1 + 16) = v6;
    return 1;
  }

  v14 = *(a1 + 8);
  v15 = a2[1];
  if (v3)
  {
    if (v14 != v15)
    {
      v16 = *v3;
      v6 = *(a1 + 16);
      v17 = (v16 + 4 * v6);
      if (v4 == v17[2] && (v17[3] & 1) != 0)
      {
        return 1;
      }

      v19 = (v17 + 7);
      do
      {
        ++v6;
        v20 = *(v19 - 1);
        v21 = *v19;
        v19 += 4;
        v22 = v21 & 1;
      }

      while (v4 != v20 || v22 == 0);
      goto LABEL_49;
    }

    v46 = *(a1 + 16);
    if (v46 != a2[2])
    {
      v48 = (*v3 + 4 * v46 + 3);
      do
      {
        v44 = (v4 == *(v48 - 1)) & *v48;
        if (((v4 == *(v48 - 1)) & *v48) != 0)
        {
          break;
        }

        v44 = 0;
        v48 += 4;
        *(a1 + 16) = ++v46;
      }

      while (v46 != a2[2]);
      return v44;
    }

    return 0;
  }

  else
  {
    if (v14 != v15)
    {
      v34 = v14 + 4;
      v6 = *(a1 + 16);
      v35 = v14 + 4 + 4 * v6;
      v36 = *(v35 + 2);
      v37 = *(v35 + 3) & 1;
      if (v4 == v36 && v37 != 0)
      {
        return 1;
      }

      v39 = 4 * v6 + 4;
      do
      {
        ++v6;
        v40 = v34 + (v39 & 0x3FFFFFFFCLL);
        v41 = *(v40 + 2);
        v42 = *(v40 + 3) & 1;
        v39 += 4;
      }

      while (v4 != v41 || v42 == 0);
      goto LABEL_49;
    }

    v47 = *(a1 + 16);
    if (v47 != a2[2])
    {
      v49 = v14 + 4;
      v50 = 4 * v47;
      do
      {
        v44 = (v4 == *(v49 + (v50 & 0x3FFFFFFFCLL) + 2)) & *(v49 + (v50 & 0x3FFFFFFFCLL) + 3);
        if (((v4 == *(v49 + (v50 & 0x3FFFFFFFCLL) + 2)) & *(v49 + (v50 & 0x3FFFFFFFCLL) + 3)) != 0)
        {
          break;
        }

        v44 = 0;
        *(a1 + 16) = ++v47;
        v50 += 4;
      }

      while (v47 != a2[2]);
      return v44;
    }

    return 0;
  }
}

void sub_F91BA4(uint64_t a1, int a2)
{
  if ((a2 & 0x1000000) == 0)
  {
    v3 = *a1;
    v4 = *(v3 + 4272);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 4280) - v4) >> 3) > BYTE2(a2))
    {
      if (!a2 || (**(a1 + 8) & 1) != 0)
      {
        v8 = *(a1 + 16);
LABEL_12:
        sub_F8E0E0(v3, **(a1 + 24), v8, (v4 + 40 * BYTE2(a2)), a2, (HIBYTE(a2) >> 1) & 1, **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) == 0, *(a1 + 64));
        return;
      }

      v5 = v4 + 40 * BYTE2(a2);
      v6 = *(v5 + 36);
      v7 = *(v5 + 32);
      v8 = *(a1 + 16);
      if (v6 != *(v8 + 36) || v7 != *(v8 + 32))
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_F91C88(uint64_t a1, int a2)
{
  if ((a2 & 0x1000000) == 0)
  {
    v3 = *a1;
    v4 = *(v3 + 4272);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 4280) - v4) >> 3) > BYTE2(a2))
    {
      if (!a2 || (**(a1 + 8) & 1) != 0)
      {
        v8 = *(a1 + 16);
LABEL_12:
        sub_F8F778(v3, **(a1 + 24), v8, (v4 + 40 * BYTE2(a2)), a2, (HIBYTE(a2) >> 1) & 1, **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) == 0, *(a1 + 64));
        return;
      }

      v5 = v4 + 40 * BYTE2(a2);
      v6 = *(v5 + 36);
      v7 = *(v5 + 32);
      v8 = *(a1 + 16);
      if (v6 != *(v8 + 36) || v7 != *(v8 + 32))
      {
        goto LABEL_12;
      }
    }
  }
}

void *sub_F91D6C(void *a1, void *a2)
{
  std::ostream::operator<<();
  v4 = sub_4A5C(a1, "+", 1);
  std::ostream::operator<<();
  v5 = sub_4A5C(v4, "/", 1);
  v6 = sub_70FBC(v5, a2[2]);
  v7 = sub_4A5C(v6, "+", 1);
  sub_70FBC(v7, a2[3]);
  return a1;
}

void sub_F91DF8(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3)
{
  *(a3 + 1) = *a3;
  v6[0] = a1;
  v6[1] = a3;
  v4 = HIDWORD(a2) & 0x1FFFFFFF;
  v5 = a2;
  sub_F91E9C(v6, a2 | ((v4 | 0x20000000) << 32));
  sub_F91E9C(v6, v5 | ((v4 | 0x80000000) << 32));
  sub_F91E9C(v6, v5 | ((v4 | 0xA0000000) << 32));
  sub_F91E9C(v6, a2 & 0x1FFFFFFFFFFFFFFFLL);
  sub_F91E9C(v6, v5 | ((v4 | 0x60000000) << 32));
  sub_F91E9C(v6, v5 | ((v4 | 0x40000000) << 32));
}

void sub_F91E9C(unsigned __int8 **a1, unint64_t a2)
{
  v37 = a2;
  v4 = *a1;
  v5 = *(*a1 + 17);
  v6 = **a1;
  v7 = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (v6 == 1 && *(v5 + 7772) == 1)
  {
    v8 = v7;
    v9 = sub_30C50C(v5 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v7 = v8;
    v12 = (v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v12 = 0;
  }

  v35[0] = v7;
  v35[1] = v12;
  v35[2] = 0;
  v35[3] = 0;
  v36 = a2 & 0x6000FFFFFFFFFFFFLL | ((a2 >> 62 == 2) << 63);
  if ((a2 & 0x4000000000000000) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 >> 62 == 2;
  }

  if (sub_314D1C(v35, v13))
  {
    sub_F931B4(a1[1], &v37);
    if (*(v4 + 16) != 1 || (v14 = sub_2BC294(v4[1], (((HIDWORD(v36) & 0x20000000) << 19) | (WORD2(v36) << 32) | v36) ^ 0x1000000000000, 0), (v15 & 1) == 0))
    {
      v14 = sub_30FA10((v4 + 1), v35);
    }

    if (v14)
    {
      v16 = a1[1];
      v17 = *(v16 + 1);
      v18 = *(v16 + 2);
      if (v17 >= v18)
      {
        v24 = *v16;
        v25 = v17 - *v16;
        v26 = (v25 >> 3) + 1;
        if (v26 >> 61)
        {
          sub_1794();
        }

        v27 = v18 - v24;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v29 = (8 * (v25 >> 3));
        v30 = HIDWORD(v37) & 0x40000000;
        v31 = v37 < 0 && v30 == 0;
        v32 = HIDWORD(v37) & 0xFFFFFFF | (v37 >> 33) & 0x10000000;
        if (v31)
        {
          v33 = 0x40000000;
        }

        else
        {
          v33 = 0;
        }

        *v29 = v37;
        dword_4[2 * (v25 >> 3)] = v32 | (v30 >> 1) | v33 | 0x80000000;
        v23 = v29 + 2;
        v34 = 0;
        memcpy(v34, v24, v25);
        *v16 = v34;
        *(v16 + 1) = v23;
        *(v16 + 2) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        v19 = HIDWORD(v37) & 0x40000000;
        v20 = v37 < 0 && v19 == 0;
        v21 = HIDWORD(v37) & 0xFFFFFFF | (v37 >> 33) & 0x10000000;
        if (v20)
        {
          v22 = 0x40000000;
        }

        else
        {
          v22 = 0;
        }

        *v17 = v37;
        v17[1] = v21 | (v19 >> 1) | v22 | 0x80000000;
        v23 = v17 + 2;
      }

      *(v16 + 1) = v23;
    }
  }
}

void sub_F92148(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  v3[0] = a1;
  v3[1] = a3;
  sub_F91E9C(v3, a2);
}

uint64_t sub_F92178(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a3 & 1;
  v5 = sub_3AF144(a2);
  *(a1 + 24) = 0u;
  *(a1 + 8) = v5;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_111CB34(a1 + 24);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 16) = (a3 & 2) != 0;
  return a1;
}

void sub_F92200(_Unwind_Exception *exception_object)
{
  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

uint64_t sub_F92244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *a1 = a8 & 1;
  *(a1 + 8) = a4;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_111CB34(a1 + 24);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 16) = (a8 & 2) != 0;
  return a1;
}

void sub_F922C8(_Unwind_Exception *exception_object)
{
  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

uint64_t sub_F92304(uint64_t a1, char **a2, int a3, char **a4, unint64_t *a5, unint64_t *a6, int a7, uint64_t a8, char a9, uint64_t a10)
{
  v10 = a8;
  v50 = a8;
  if (a9)
  {
    v14 = a4;
  }

  else
  {
    v14 = a2;
  }

  if (a9)
  {
    v15 = a7;
  }

  else
  {
    v15 = a3;
  }

  v49 = v15;
  if (a9)
  {
    v16 = a2;
  }

  else
  {
    v16 = a4;
  }

  if (a9)
  {
    v17 = a3;
  }

  else
  {
    v17 = a7;
  }

  v48 = v17;
  if (*(a1 + 16) != 1 || (v18 = sub_2BC294(*(a1 + 8), (((*(v14 + 9) & 0x20000000) << 19) | (*(v14 + 9) << 32) | *(v14 + 8)) ^ 0x1000000000000, 0), (v19 & 1) == 0))
  {
    v18 = sub_30FA10(a1 + 8, v14);
  }

  v20 = v18;
  if (*(a1 + 16) != 1 || (result = sub_2BC294(*(a1 + 8), (((*(v16 + 9) & 0x20000000) << 19) | (*(v16 + 9) << 32) | *(v16 + 8)) ^ 0x1000000000000, 0), (v22 & 1) == 0))
  {
    result = sub_30FA10(a1 + 8, v16);
  }

  v23 = result;
  if (v20 != result || ((a3 ^ a7) & 1) == 0)
  {
    v24 = sub_30F7C8(a1 + 8, v14);
    v25 = v24 ^ sub_30F7C8(a1 + 8, v16);
    v47 = v25;
    v26 = sub_F925C4(a1 + 24, v20, v23, v15, v17);
    v46 = v26;
    v27 = *(a10 + 8);
    if (v27 >= *(a10 + 16))
    {
      result = sub_F93324(a10, v14, v16, a5, a6, &v49, &v48, &v50, &v46, &v47);
    }

    else
    {
      v28 = *v14;
      v29 = *(v14 + 1);
      *(v27 + 32) = v14[4];
      *v27 = v28;
      *(v27 + 16) = v29;
      v30 = *v16;
      v31 = *(v16 + 1);
      *(v27 + 72) = v16[4];
      *(v27 + 56) = v31;
      *(v27 + 40) = v30;
      sub_F935A0((v27 + 80), a5, a6, v15, v17, v10, v26, v25);
      v54[0] = v14;
      v54[1] = v16;
      v32 = *(v27 + 80);
      v33 = v32 & 0x1F;
      if (v33 == 31)
      {
        v33 = -1;
      }

      v34 = (v32 >> 5) & 0x1F;
      if (v34 == 31)
      {
        v34 = -1;
      }

      v51.i64[0] = v33;
      v51.i64[1] = v34;
      if (((v32 >> 10) & 0x1FF) == 0x1FF)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = 50 * ((v32 >> 10) & 0x1FF);
      }

      v36 = (v32 >> 19) & 0x1FF;
      if (v36 == 511)
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = 50 * v36;
      }

      v52 = v35;
      v53 = v37;
      sub_49FC9C(v54, &v51, a5);
      v38 = *(v27 + 80);
      v39 = vdupq_n_s64(0x1FuLL);
      v40 = vandq_s8(vshlq_u64(vdupq_n_s64(v38), xmmword_2297E80), v39);
      v51 = vorrq_s8(v40, vceqq_s64(v40, v39));
      if (((v38 >> 38) & 0x1FF) == 0x1FF)
      {
        v41 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = 50 * ((v38 >> 38) & 0x1FF);
      }

      v42 = (v38 >> 47) & 0x1FF;
      if (v42 == 511)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = 50 * v42;
      }

      v52 = v41;
      v53 = v43;
      sub_49FC9C(v54, &v51, a6);
      result = v27 + 88;
      *(a10 + 8) = v27 + 88;
    }

    *(a10 + 8) = result;
  }

  return result;
}

uint64_t sub_F925C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (!a4)
  {
    if (a5)
    {
      if ((a3 & a2) == a3)
      {
        return 3;
      }

      v6 = *a1;
      v7 = *(a1 + 8);
      if (*a1 != v7)
      {
        while ((v6[3] & a2) != v6[2] || (v6[1] & a3) != *v6)
        {
          v6 += 4;
          if (v6 == v7)
          {
            return 0;
          }
        }

        return 3;
      }
    }

    else if ((a3 & a2) != a3)
    {
      for (i = *a1; i != *(a1 + 8); i += 4)
      {
        if ((i[3] & a2) == i[2] && (i[1] & a3) == *i)
        {
          return 0;
        }
      }

      return 3;
    }

    return 0;
  }

  if (!a5)
  {
    if (a3)
    {
      return 3;
    }

    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    if (v8 != v9)
    {
      while ((*(v8 + 8) & a2) != *v8 || *(v8 + 16))
      {
        v8 += 40;
        if (v8 == v9)
        {
          return 3;
        }
      }
    }

    goto LABEL_38;
  }

  if ((a2 & ~a3) == 0)
  {
    return 0;
  }

  for (j = *a1; j != *(a1 + 8); j += 4)
  {
    if ((j[1] & a2) == *j && (j[3] & a3) == j[2])
    {
      return 0;
    }
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v8 != v9)
  {
    while ((*(v8 + 8) & a2) != *v8 || (*(v8 + 24) & a3) != *(v8 + 16))
    {
      v8 += 40;
      if (v8 == v9)
      {
        return 3;
      }
    }
  }

LABEL_38:
  if (v8 != v9)
  {
    return *(v8 + 32);
  }

  return 3;
}

uint64_t sub_F92730@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(result + 112);
  v4 = *(result + 120);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      result = *v3;
      v9 = (*v3 - **v3);
      v10 = *v9;
      if (*(v3 + 38))
      {
        if (v10 < 0x39)
        {
          goto LABEL_18;
        }

        v11 = v9[28];
        if (!v11)
        {
          goto LABEL_18;
        }

        v12 = *(result + v11);
        if ((v12 & 3) != 0)
        {
          goto LABEL_4;
        }

        if ((v12 & 0x4000) == 0)
        {
          goto LABEL_18;
        }

        v13 = v12 & 0x1000;
        result = sub_314800(result);
        if (v13)
        {
LABEL_17:
          ++v7;
          v6 += result;
          goto LABEL_4;
        }
      }

      else
      {
        if (v10 < 0x39 || (v14 = v9[28]) == 0)
        {
LABEL_18:
          *a2 = -1;
          *(a2 + 8) = -1;
          v17.f64[0] = NAN;
          v17.f64[1] = NAN;
          *(a2 + 16) = vnegq_f64(v17);
          return result;
        }

        v15 = *(result + v14);
        if ((v15 & 3) != 0)
        {
          goto LABEL_4;
        }

        if ((v15 & 0x2000) == 0)
        {
          goto LABEL_18;
        }

        v16 = v15 & 0x800;
        result = sub_314800(result);
        if (v16)
        {
          goto LABEL_17;
        }
      }

      ++v8;
      v5 += result;
LABEL_4:
      v3 += 5;
      if (v3 == v4)
      {
        *(a2 + 16) = v5;
        *(a2 + 24) = v6;
        *(a2 + 8) = v7;
        goto LABEL_21;
      }
    }
  }

  v8 = 0;
LABEL_21:
  *a2 = v8;
  return result;
}

uint64_t sub_F92868@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 17);
  v6 = *a1;
  result = sub_2B51D8(v5, a2 & 0xFFFFFFFFFFFFLL);
  if (v6 == 1 && *(v5 + 7772) == 1)
  {
    v8 = result;
    v9 = sub_30C50C(v5 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    result = v8;
    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  *a3 = result;
  a3[1] = v12;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = a2 & 0x6000FFFFFFFFFFFFLL | ((a2 >> 62 == 2) << 63);
  return result;
}

double sub_F92948(unsigned __int8 *a1, unint64_t a2, int a3, void *a4)
{
  v8 = HIDWORD(a2);
  a4[1] = *a4;
  v9 = (a2 >> 31) & 0x60000000 | (((a2 & 0x6000000000000000) == 0x4000000000000000) << 31);
  v10 = a2 | ((v9 | HIDWORD(a2) & 0xFFFFFFF) << 32);
  v11 = *(a1 + 17);
  v12 = *a1;
  v13 = sub_2B51D8(v11, v10 & 0xFFFFFFFFFFFFLL);
  if (v12 == 1 && *(v11 + 7772) == 1)
  {
    v14 = v13;
    v15 = sub_30C50C(v11 + 3896, a2, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v13 = v14;
    v18 = (v17 + 4 * v8 + 4 + *(v17 + 4 * v8 + 4));
  }

  else
  {
    v18 = 0;
  }

  v91[0] = v13;
  v91[1] = v18;
  v91[2] = 0;
  v91[3] = 0;
  v91[4] = (v10 & 0x6000FFFFFFFFFFFFLL | (((v9 & 0xC0000000) == 0x80000000) << 63));
  if ((v10 & 0x4000000000000000) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = (v9 & 0xC0000000) == 0x80000000;
  }

  if (sub_314D1C(v91, v19))
  {
    v21 = a3 ? sub_314A00(v91) : sub_314B90(v91);
    sub_31BA24(*(a1 + 17), v21, a1 + 14, 0, *a1, 0);
    v23 = *(a1 + 14);
    v22 = *(a1 + 15);
    v24 = v8 & 0xFFFFFFF | (((v8 >> 28) & 3) << 29);
    v25 = v24 | (((v8 & 0x60000000) == 0x40000000) << 31);
    v26 = (v24 | ((v25 >> 30 == 0) << 31)) ^ 0x20000000;
    v27 = a3 ? v25 : v26;
    v28 = v22 - v23;
    if (v22 != v23)
    {
      v29 = 0;
      while ((*(v23 + 32) & 0xFFFFFFFFFFFFFFLL) != (((v27 << 19) & 0x1000000000000 | (v27 << 32) | a2) ^ 0x1000000000000))
      {
        v23 += 40;
        v29 += 40;
        if (v23 == v22)
        {
          return result;
        }
      }

      if (v23 != v22)
      {
        v30 = 0xCCCCCCCCCCCCCCCDLL * (v29 >> 3);
        sub_F92730(a1, &v88);
        v31 = v88;
        v32 = v27 >> 31;
        if ((v27 & 0x40000000) != 0)
        {
          LOBYTE(v32) = 2;
        }

        v66 = v30;
        v79[0] = a1 + 112;
        v79[1] = v30;
        v80 = v32;
        v81 = v30;
        v65 = v32;
        v82 = v32;
        v83 = 1;
        v84 = a3;
        v85 = 1;
        v86 = 0u;
        v87 = 0u;
        sub_F93034(v79);
        v33 = a2 >> 63;
        if (v85 == 1)
        {
          v67 = v89;
          v34 = v90;
          if (a3)
          {
            v35 = v71;
          }

          else
          {
            v35 = v78;
          }

          if (a3)
          {
            v36 = v78;
          }

          else
          {
            v36 = v71;
          }

          do
          {
            v37 = *v79[0] + 40 * v81;
            v38 = *(v37 + 32);
            v39 = WORD2(v38) | (((v38 & 0xFF000000000000) == 0) << 29) | ((v82 == 2) << 30);
            v40 = v39 | ((v82 == 1) << 31);
            v41 = (v39 | ((v40 >> 30 == 0) << 31)) ^ 0x20000000;
            if (!v84)
            {
              v41 = v40;
            }

            v92 = *v37;
            v93 = *(v37 + 16);
            *&v94 = v38 | (v41 << 32);
            *v71 = v86;
            *&v71[16] = v87;
            if (v31 == -1)
            {
              *v78 = -1;
              *&v78[8] = -1;
              v42 = 0x7FFFFFFFFFFFFFFFLL;
              *&v78[16] = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              *v78 = v31 - *v71;
              *&v78[8] = vsubq_s64(v67, *&v71[8]);
              v42 = v34 - *&v71[24];
            }

            *&v78[24] = v42;
            sub_F92304(a1, v91, v33, &v92, v35, v36, 0, v28 == 80, a3, a4);
            if (a1[16] != 1 || (v43 = sub_2BC294(*(a1 + 1), (((DWORD1(v94) & 0x20000000) << 19) | (WORD2(v94) << 32) | v94) ^ 0x1000000000000, 0), (v44 & 1) == 0))
            {
              v43 = sub_30FA10((a1 + 8), &v92);
            }

            if (v43)
            {
              sub_F92304(a1, v91, v33, &v92, v35, v36, 1, v28 == 80, a3, a4);
            }

            sub_F93034(v79);
          }

          while ((v85 & 1) != 0);
        }

        if (v31 == -1)
        {
          v64 = a4[1] - *a4;
          *v71 = a1 + 112;
          *&v71[8] = v66;
          v71[16] = v65;
          *&v71[24] = v66;
          v72 = v65;
          v73 = 0;
          v74 = a3;
          v75 = 1;
          v76 = 0u;
          v77 = 0u;
          sub_F93034(v71);
          if (v75 == 1)
          {
            if (a3)
            {
              v45 = v69;
            }

            else
            {
              v45 = v78;
            }

            if (a3)
            {
              v46 = v78;
            }

            else
            {
              v46 = v69;
            }

            v47.f64[0] = NAN;
            v47.f64[1] = NAN;
            v68 = vnegq_f64(v47);
            do
            {
              v48 = **v71 + 40 * *&v71[24];
              v49 = *(v48 + 32);
              v50 = WORD2(v49) | (((v49 & 0xFF000000000000) == 0) << 29) | ((v72 == 2) << 30);
              v92 = *v48;
              v51 = *(v48 + 16);
              v52 = (v50 | (((v50 | ((v72 == 1) << 31)) >> 30 == 0) << 31)) ^ 0x20000000;
              if (!v74)
              {
                v52 = v50 | ((v72 == 1) << 31);
              }

              v93 = v51;
              *&v94 = v49 | (v52 << 32);
              *v78 = v76;
              *&v78[16] = v77;
              v69[0] = -1;
              v69[1] = -1;
              v70 = v68;
              if (a1[16] != 1 || (v53 = sub_2BC294(*(a1 + 1), (((v52 & 0x20000000) << 19) | (v52 << 32) | v49) ^ 0x1000000000000, 0), (v54 & 1) == 0))
              {
                v53 = sub_30FA10((a1 + 8), &v92);
              }

              if (v53)
              {
                sub_F92304(a1, v91, v33, &v92, v45, v46, 1, v28 == 80, a3, a4);
              }

              sub_F92304(a1, v91, v33, &v92, v45, v46, 0, v28 == 80, a3, a4);
              sub_F93034(v71);
            }

            while ((v75 & 1) != 0);
          }

          v55 = a4[1];
          v56 = v64 + *a4;
          if (v56 != v55)
          {
            v57 = v55 - 88;
            if (v57 > v56)
            {
              v58 = v56 + 88;
              do
              {
                v94 = *(v58 - 56);
                v95 = *(v58 - 40);
                v96 = *(v58 - 24);
                v97 = *(v58 - 8);
                v92 = *(v58 - 88);
                v93 = *(v58 - 72);
                v59 = *(v57 + 16);
                *(v58 - 88) = *v57;
                *(v58 - 72) = v59;
                v61 = *(v57 + 48);
                v60 = *(v57 + 64);
                v62 = *(v57 + 80);
                *(v58 - 56) = *(v57 + 32);
                *(v58 - 8) = v62;
                *(v58 - 24) = v60;
                *(v58 - 40) = v61;
                *v57 = v92;
                *(v57 + 80) = v97;
                *(v57 + 64) = v96;
                *(v57 + 48) = v95;
                *(v57 + 32) = v94;
                result = *&v93;
                *(v57 + 16) = v93;
                v57 -= 88;
                v63 = v58 >= v57;
                v58 += 88;
              }

              while (!v63);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_F93034(_BOOL8 result)
{
  v1 = result;
  while (*(v1 + 35) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 33);
    if (v2 == 2 || v2 == ((v3 & 1) == 0))
    {
      v4 = *(v1 + 24);
      v5 = *v1;
      if (*(v1 + 33))
      {
        v6 = *v5;
        v7 = (v4 + 1) % (0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 3));
      }

      else
      {
        v6 = *v5;
        if (!v4)
        {
          v4 = 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - v6) >> 3);
        }

        v7 = v4 - 1;
      }

      *(v1 + 24) = v7;
      v8 = (v6 + 40 * v7);
      v9 = *(v8 + 38);
      v10 = *v8;
      v11 = (v10 - *v10);
      v12 = *v11;
      if (v9)
      {
        if (v12 >= 0x39)
        {
          v13 = v11[28];
          if (v13)
          {
            v14 = *(v10 + v13);
            if ((v14 & 2) != 0)
            {
              goto LABEL_20;
            }

            v15 = 1;
LABEL_19:
            if ((v14 & v15) != 0)
            {
LABEL_20:
              *(v1 + 32) = 2;
              if (v7 == *(v1 + 8))
              {
                goto LABEL_26;
              }

              goto LABEL_2;
            }
          }
        }

LABEL_22:
        LOBYTE(v15) = v3;
      }

      else
      {
        if (v12 < 0x39)
        {
          goto LABEL_22;
        }

        v16 = v11[28];
        if (!v16)
        {
          goto LABEL_22;
        }

        v14 = *(v10 + v16);
        v15 = 2;
        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      *(v1 + 32) = v15;
      if (v7 == *(v1 + 8))
      {
        goto LABEL_26;
      }

      goto LABEL_2;
    }

    sub_F93900(v1);
    if (*(v1 + 24) == *(v1 + 8))
    {
LABEL_26:
      if (*(v1 + 32) == *(v1 + 16))
      {
        *(v1 + 35) = 0;
      }
    }

LABEL_2:
    result = sub_F93788(v1);
    if (result)
    {
      return result;
    }
  }

  return result;
}

_DWORD *sub_F931B4(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v10 = *a1;
    v11 = v3 - *a1;
    v12 = (v11 >> 3) + 1;
    if (v12 >> 61)
    {
      sub_1794();
    }

    v13 = v4 - v10;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = (8 * (v11 >> 3));
    v16 = HIDWORD(*a2) & 0x40000000;
    v17 = (*a2 & 0x8000000000000000) != 0 && v16 == 0;
    v18 = (*a2 >> 33) & 0x10000000 | HIDWORD(*a2) & 0xFFFFFFF;
    if (v17)
    {
      v19 = 0x40000000;
    }

    else
    {
      v19 = 0;
    }

    *v15 = *a2;
    dword_4[2 * (v11 >> 3)] = v18 | (v16 >> 1) | v19;
    v9 = v15 + 2;
    v20 = 0;
    memcpy(v20, v10, v11);
    *a1 = v20;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v5 = HIDWORD(*a2) & 0x40000000;
    v6 = (*a2 & 0x8000000000000000) != 0 && v5 == 0;
    v7 = (*a2 >> 33) & 0x10000000 | HIDWORD(*a2) & 0xFFFFFFF;
    if (v6)
    {
      v8 = 0x40000000;
    }

    else
    {
      v8 = 0;
    }

    *v3 = *a2;
    v3[1] = v7 | (v5 >> 1) | v8;
    v9 = v3 + 2;
  }

  *(a1 + 8) = v9;
  return v9 - 2;
}

uint64_t sub_F93324(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, char *a9, unsigned __int8 *a10)
{
  v10 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v10 > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v10)
  {
    v10 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v15 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v15 = v10;
  }

  if (v15)
  {
    if (v15 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = *(a2 + 16);
  v17 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v17 = *a2;
  *(v17 + 16) = v16;
  v18 = *(a3 + 16);
  *(v17 + 40) = *a3;
  v19 = *a6;
  v20 = *a7;
  v21 = *a8;
  v22 = *a9;
  v23 = *a10;
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 56) = v18;
  *(v17 + 72) = *(a3 + 32);
  sub_F935A0((v17 + 80), a4, a5, v19, v20, v21, v22, v23);
  v45[0] = a2;
  v45[1] = a3;
  v24 = *(v17 + 80);
  v25 = v24 & 0x1F;
  if (v25 == 31)
  {
    v25 = -1;
  }

  v26 = (v24 >> 5) & 0x1F;
  if (v26 == 31)
  {
    v26 = -1;
  }

  v42.i64[0] = v25;
  v42.i64[1] = v26;
  if (((v24 >> 10) & 0x1FF) == 0x1FF)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = 50 * ((v24 >> 10) & 0x1FF);
  }

  v28 = (v24 >> 19) & 0x1FF;
  if (v28 == 511)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = 50 * v28;
  }

  v43 = v27;
  v44 = v29;
  sub_49FC9C(v45, &v42, a4);
  v30 = *(v17 + 80);
  v31 = vdupq_n_s64(0x1FuLL);
  v32 = vandq_s8(vshlq_u64(vdupq_n_s64(v30), xmmword_2297E80), v31);
  v42 = vorrq_s8(v32, vceqq_s64(v32, v31));
  if (((v30 >> 38) & 0x1FF) == 0x1FF)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = 50 * ((v30 >> 38) & 0x1FF);
  }

  v34 = (v30 >> 47) & 0x1FF;
  if (v34 == 511)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = 50 * v34;
  }

  v43 = v33;
  v44 = v35;
  sub_49FC9C(v45, &v42, a5);
  v36 = v17 + 88;
  v37 = *a1;
  v38 = *(a1 + 8) - *a1;
  v39 = (v17 - v38);
  memcpy(v39, *a1, v38);
  *a1 = v39;
  *(a1 + 8) = v36;
  *(a1 + 16) = 0;
  if (v37)
  {
    operator delete(v37);
  }

  return v36;
}

unint64_t *sub_F935A0(unint64_t *result, unint64_t *a2, unint64_t *a3, int a4, int a5, int a6, char a7, int a8)
{
  v8 = 30;
  if (*a2 >= 0x1E)
  {
    v9 = 30;
  }

  else
  {
    v9 = *a2;
  }

  v10 = 31;
  if (*a2 != -1)
  {
    v10 = v9;
  }

  v11 = *result & 0xFFFFFFFFFFFFFFE0 | v10;
  *result = v11;
  v12 = a2[1];
  if (v12 < 0x1E)
  {
    v8 = a2[1];
  }

  v13 = 32 * v8;
  if (v12 == -1)
  {
    v13 = 992;
  }

  *result = v13 | v11 & 0xFFFFFFFFFFFFFC1FLL;
  v14 = a2[2];
  v15 = v14 / 0x32;
  if (v14 / 0x32 >= 0x1FE)
  {
    v15 = 510;
  }

  v16 = v15 << 10;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 523264;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 | v13 & 0xFFFFFFFFFFF803FFLL | v11 & 0xFFFFFFFFFFF8001FLL;
  *result = v18;
  v19 = a2[3];
  v20 = v19 / 0x32;
  if (v19 / 0x32 >= 0x1FE)
  {
    v20 = 510;
  }

  v21 = v20 << 19;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 267911168;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 | v18 & 0xFFFFFFFFF007FFFFLL;
  *result = v23;
  v24 = 30;
  if (*a3 >= 0x1E)
  {
    v25 = 30;
  }

  else
  {
    v25 = *a3;
  }

  v26 = v25 << 28;
  v27 = 0x1F0000000;
  if (*a3 != -1)
  {
    v27 = v26;
  }

  v28 = v27 | v23 & 0xFFFFFFFE0FFFFFFFLL;
  *result = v28;
  v29 = a3[1];
  if (v29 < 0x1E)
  {
    v24 = a3[1];
  }

  v30 = v24 << 33;
  v31 = v29 == -1;
  v32 = 0x3E00000000;
  if (!v31)
  {
    v32 = v30;
  }

  v33 = v28 & 0xFFFFFFC1FFFFFFFFLL | v32;
  *result = v33;
  v34 = a3[2];
  v35 = v34 / 0x32;
  if (v34 / 0x32 >= 0x1FE)
  {
    v35 = 510;
  }

  v36 = v35 << 38;
  if (v34 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = 0x7FC000000000;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37 | v33 & 0xFFFF803FFFFFFFFFLL;
  *result = v38;
  v39 = a3[3];
  v40 = v39 / 0x32;
  if (v39 / 0x32 >= 0x1FE)
  {
    v40 = 510;
  }

  v41 = v40 << 47;
  if (v39 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 0xFF800000000000;
  }

  else
  {
    v42 = v41;
  }

  v43 = v38 & 0xC0007FFFFFFFFFFFLL;
  v44 = 0x100000000000000;
  if (!a4)
  {
    v44 = 0;
  }

  v45 = 0x200000000000000;
  if (!a5)
  {
    v45 = 0;
  }

  v46 = 0x400000000000000;
  if (!a6)
  {
    v46 = 0;
  }

  v47 = (v45 | v44 | v46 | v42 | v43) + ((a7 & 3) << 59);
  v48 = 0x2000000000000000;
  if (!a8)
  {
    v48 = 0;
  }

  *result = v47 + v48;
  return result;
}

BOOL sub_F93788(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == 2)
  {
    v17 = **a1 + 40 * *(a1 + 24);
    v18 = *(v17 + 38);
    v19 = *v17;
    v20 = (v19 - *v19);
    v21 = *v20;
    if (*(a1 + 34))
    {
      if (!v18)
      {
        if (v21 >= 0x39)
        {
          v22 = v20[28];
          if (v22)
          {
            return (*(v19 + v22) & 2) != 0;
          }
        }

        return 0;
      }
    }

    else if (v18)
    {
      if (v21 >= 0x39)
      {
        v23 = v20[28];
        if (v23)
        {
          return (*(v19 + v23) & 2) != 0;
        }
      }

      return 0;
    }

    if (v21 >= 0x39)
    {
      v24 = v20[28];
      if (v24)
      {
        return (*(v19 + v24) & 1) != 0;
      }
    }
  }

  else if (v1 == 1)
  {
    v10 = **a1 + 40 * *(a1 + 24);
    v11 = *(v10 + 38);
    v4 = *v10;
    v5 = (v4 - *v4);
    v12 = *v5;
    v7 = v12 >= 0x39;
    if (!v11)
    {
      goto LABEL_14;
    }

    if (v12 >= 0x39)
    {
      v13 = v5[28];
      if (v13)
      {
        v9 = *(v4 + v13);
        if ((v9 & 3) == 0)
        {
          return (v9 >> 2) & 1;
        }
      }
    }
  }

  else if (!*(a1 + 32))
  {
    v2 = **a1 + 40 * *(a1 + 24);
    v3 = *(v2 + 38);
    v4 = *v2;
    v5 = (v4 - *v4);
    v6 = *v5;
    v7 = v6 >= 0x39;
    if (!v3)
    {
      if (v6 >= 0x39)
      {
        v8 = v5[28];
        if (v8)
        {
          v9 = *(v4 + v8);
          if ((v9 & 3) == 0)
          {
            return (v9 >> 2) & 1;
          }
        }
      }

      return 0;
    }

LABEL_14:
    if (v7)
    {
      v15 = v5[28];
      if (v15)
      {
        v16 = *(v4 + v15);
        if ((v16 & 3) == 0)
        {
          return (v16 >> 5) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_F93900(uint64_t result)
{
  if (*(result + 32) == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = *(result + 32) == 0;
  }

  *(result + 32) = v1;
  v2 = **result + 40 * *(result + 24);
  v3 = *(v2 + 38);
  v4 = *v2;
  v5 = (v4 - *v4);
  v6 = *v5;
  if (v3)
  {
    if (v6 >= 0x39)
    {
      v7 = v5[28];
      if (v7)
      {
        v8 = *(v4 + v7);
        if ((v8 & 0x4000) != 0)
        {
          if ((v8 & 0x1000) != 0)
          {
LABEL_9:
            ++*(result + 48);
            v9 = result;
            result = sub_314800(v4);
            *(v9 + 64) += result;
            return result;
          }

          goto LABEL_15;
        }
      }
    }

LABEL_13:
    *(result + 35) = 0;
    return result;
  }

  if (v6 < 0x39)
  {
    goto LABEL_13;
  }

  v10 = v5[28];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v4 + v10);
  if ((v11 & 0x2000) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x800) != 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  ++*(result + 40);
  v12 = result;
  result = sub_314800(v4);
  *(v12 + 56) += result;
  return result;
}

void *sub_F93A08(void *result, int a2)
{
  if (a2 == 1)
  {
    v2 = "CONSERVATIVE";
    v3 = 12;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = "LIVE_SPEEDS";
    v3 = 11;
  }

  return sub_4A5C(result, v2, v3);
}

uint64_t sub_F93A38(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return *(a1 + 176) | 2;
  }

  else
  {
    return *(a1 + 176);
  }
}

void *sub_F93A50(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 72) = xmmword_2267060;
  v3 = a1 + 72;
  *(v3 - 48) = 0u;
  v85 = (v3 - 48);
  *(v3 + 26) = 0;
  *(v3 + 28) = 0;
  *(v3 - 32) = 0u;
  *(v3 - 16) = 0u;
  *(v3 + 16) = 0x3E4CCCCD3F000000;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 32;
  *(v3 + 64) = -1;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 24) = 0;
  LOWORD(v98) = -1;
  v100 = 0;
  v101 = 0;
  __p = 0;
  v97 = v3;
  v92 = v2;
  sub_F962DC(v3, &v98);
  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  v5 = v2[4];
  v4 = v2[5];
  if (v5 >= v4)
  {
    v7 = *v85;
    v8 = v5 - *v85;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_1794();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v9) = 0;
    v6 = 4 * v9 + 4;
    memcpy(0, v7, v8);
    v2[3] = 0;
    v2[4] = v6;
    v2[5] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = 0;
    v6 = (v5 + 4);
  }

  v2[4] = v6;
  v14 = v2[7];
  v13 = v2[8];
  if (v14 >= v13)
  {
    v16 = v2[6];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 1;
    if (v18 <= -2)
    {
      sub_1794();
    }

    v19 = v13 - v16;
    if (v19 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v19;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v22 = (v14 - v16) >> 1;
    v23 = (2 * v18);
    v24 = (2 * v18 - 2 * v22);
    *v23 = 0;
    v15 = (v23 + 1);
    memcpy(v24, v16, v17);
    v2[6] = v24;
    v2[7] = v15;
    v2[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = 0;
    v15 = (v14 + 2);
  }

  v26 = *v2;
  v25 = v2[1];
  v27 = v25 - *v2;
  v2[7] = v15;
  if (v25 != v26)
  {
    v28 = 0;
    v29 = 0;
    __src = 0;
    v89 = 0;
    v30 = 0;
    v31 = 0;
    v86 = 0xB195E8EFDB195E8FLL * (v27 >> 4);
    while (1)
    {
      v87 = v89;
      v90 = __src;
      v32 = *(v2[4] - 4);
      v94 = *(v15 - 2);
      v95 = (*v2 + 1776 * v31);
      v34 = v95[15];
      v33 = v95[16];
      if (v34 == v33)
      {
        goto LABEL_41;
      }

      v35 = v33 - v34 - 104;
      if (v35 <= 0x67)
      {
        break;
      }

      v37 = v35 / 0x68 + 1;
      v36 = &v34[104 * (v37 & 0x7FFFFFFFFFFFFFELL)];
      v38 = v37 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v39 = *(v34 + 26) + v32;
        *v34 += v32;
        *(v34 + 26) = v39;
        v34 += 208;
        v38 -= 2;
      }

      while (v38);
      if (v37 != (v37 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_40;
      }

LABEL_41:
      v91 = v28;
      sub_F99154(v95, &v98);
      v40 = v98;
      __src = v91;
      v89 = v29;
      v93 = __p;
      v96 = v31;
      if (v98 != __p)
      {
        while (1)
        {
          sub_F99154(v95, &v98);
          v45 = v98;
          v46 = *(v40 + 1);
          if (v46 != -1)
          {
            *(v40 + 1) = *(v2[4] - 4) + v46;
          }

          v47 = v32;
          v48 = *(v40 + 24);
          if (v48 != -1)
          {
            *(v40 + 24) = *(v2[4] - 4) + v48;
          }

          v49 = v94 - 0x5555555555555555 * ((v40 - v45) >> 6);
          if (v31)
          {
            if (*v40 == 1)
            {
              *v40 = 4;
              if (v90 != v30)
              {
                v50 = v90;
                do
                {
                  LOWORD(v98) = *v50;
                  v52 = sub_F96528(v97, &v98);
                  v53 = v52;
                  v55 = v52[2];
                  v54 = v52[3];
                  if (v55 < v54)
                  {
                    *v55 = v49;
                    v51 = v55 + 2;
                  }

                  else
                  {
                    v56 = v52[1];
                    v57 = v55 - v56;
                    v58 = (v55 - v56) >> 1;
                    if (v58 <= -2)
                    {
                      sub_1794();
                    }

                    v59 = v54 - v56;
                    if (v59 <= v58 + 1)
                    {
                      v60 = v58 + 1;
                    }

                    else
                    {
                      v60 = v59;
                    }

                    if (v59 >= 0x7FFFFFFFFFFFFFFELL)
                    {
                      v61 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v61 = v60;
                    }

                    if (v61)
                    {
                      if ((v61 & 0x8000000000000000) == 0)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v62 = (v55 - v56) >> 1;
                    v63 = (2 * v58);
                    v64 = (2 * v58 - 2 * v62);
                    *v63 = v49;
                    v51 = v63 + 1;
                    memcpy(v64, v56, v57);
                    v53[1] = v64;
                    v53[2] = v51;
                    v53[3] = 0;
                    if (v56)
                    {
                      operator delete(v56);
                    }
                  }

                  v53[2] = v51;
                  ++v50;
                }

                while (v50 != v30);
              }
            }
          }

          v31 = v96;
          if (v96 == v86 - 1)
          {
            break;
          }

          v32 = v47;
          if (*v40 == 2)
          {
            *v40 = 3;
            v2 = v92;
            if (v91 < v89)
            {
              *v91++ = v49;
              goto LABEL_45;
            }

            v65 = v91 - __src;
            v66 = v91 - __src;
            if (v66 <= -2)
            {
              sub_1794();
            }

            if (v89 - __src <= v66 + 1)
            {
              v67 = v66 + 1;
            }

            else
            {
              v67 = v89 - __src;
            }

            if (v89 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v68 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v68 = v67;
            }

            if (v68)
            {
              if ((v68 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1808();
            }

            v89 = 0;
            *(2 * v66) = v49;
            v91 = (2 * v66 + 2);
            memcpy(0, __src, v65);
            __src = 0;
            v31 = v96;
            goto LABEL_71;
          }

          v2 = v92;
LABEL_45:
          v40 += 192;
          if (v40 == v93)
          {
            goto LABEL_42;
          }
        }

        v2 = v92;
LABEL_71:
        v32 = v47;
        goto LABEL_45;
      }

LABEL_42:
      v30 = v91;
      v41 = v32 + ((v95[13] - v95[12]) >> 2);
      v43 = v2[4];
      v42 = v2[5];
      if (v43 >= v42)
      {
        v69 = *v85;
        v70 = v43 - *v85;
        v71 = (v70 >> 2) + 1;
        if (v71 >> 62)
        {
          sub_1794();
        }

        v72 = v42 - v69;
        if (v72 >> 1 > v71)
        {
          v71 = v72 >> 1;
        }

        if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v73 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v73 = v71;
        }

        if (v73)
        {
          if (!(v73 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v74 = (4 * (v70 >> 2));
        *v74 = v41;
        v44 = v74 + 1;
        memcpy(0, v69, v70);
        v2[3] = 0;
        v2[4] = v44;
        v2[5] = 0;
        if (v69)
        {
          operator delete(v69);
        }

        v31 = v96;
      }

      else
      {
        *v43 = v41;
        v44 = v43 + 4;
      }

      v2[4] = v44;
      v75 = sub_F99138(v95) + v94;
      v77 = v2[7];
      v76 = v2[8];
      if (v77 < v76)
      {
        *v77 = v75;
        v15 = (v77 + 2);
      }

      else
      {
        v78 = v2[6];
        v79 = v77 - v78;
        v80 = (v77 - v78) >> 1;
        if (v80 <= -2)
        {
          sub_1794();
        }

        v81 = v76 - v78;
        if (v81 <= v80 + 1)
        {
          v82 = v80 + 1;
        }

        else
        {
          v82 = v81;
        }

        if (v81 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v83 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v83 = v82;
        }

        if (v83)
        {
          if ((v83 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1808();
        }

        *(2 * v80) = v75;
        v15 = 2 * v80 + 2;
        memcpy(0, v78, v79);
        v2[6] = 0;
        v2[7] = v15;
        v2[8] = 0;
        if (v78)
        {
          operator delete(v78);
        }

        v31 = v96;
      }

      v29 = v87;
      v2[7] = v15;
      ++v31;
      v28 = v90;
      if (v31 == v86)
      {
        return v2;
      }
    }

    v36 = v95[15];
    do
    {
LABEL_40:
      *v36 += v32;
      v36 += 104;
    }

    while (v36 != v33);
    goto LABEL_41;
  }

  return v2;
}

void sub_F94290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, char **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = a18[21];
  if (v27)
  {
    v32 = a18[16];
    if (v32)
    {
      v33 = 0;
      do
      {
        v34 = &a18[21][v33];
        v35 = *(v34 + 1);
        if (v35)
        {
          *(v34 + 2) = v35;
          operator delete(v35);
        }

        v33 += 32;
        --v32;
      }

      while (v32);
      v27 = a18[21];
    }

    free(v27);
    v28 = *a9;
    if (!*a9)
    {
LABEL_5:
      v29 = a18[6];
      if (!v29)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v28 = *a9;
    if (!*a9)
    {
      goto LABEL_5;
    }
  }

  a18[19] = v28;
  operator delete(v28);
  v29 = a18[6];
  if (!v29)
  {
LABEL_6:
    v30 = *a10;
    if (!*a10)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  a18[7] = v29;
  operator delete(v29);
  v30 = *a10;
  if (!*a10)
  {
LABEL_7:
    v31 = *a18;
    if (!*a18)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  a18[4] = v30;
  operator delete(v30);
  v31 = *a18;
  if (!*a18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  v36 = a18[1];
  v37 = v31;
  if (v36 != v31)
  {
    do
    {
      v36 -= 1776;
      sub_F96138(v36);
    }

    while (v36 != v31);
    v37 = *a18;
  }

  a18[1] = v31;
  operator delete(v37);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F94464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0;
  v20 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  *&v17 = &v19;
  if (v5 != v6)
  {
    do
    {
      v21 = *(v5 + 120);
      sub_2C99C0(&v17, &v21);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v17 = 0uLL;
  v18 = 0;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * ((v6 - v5) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v21 = &v17;
  v8 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v19;
  *(a2 + 16) = v19;
  v10 = v20;
  *(a2 + 24) = v20;
  v19 = 0;
  v20 = 0uLL;
  *(a2 + 40) = v8;
  *(a2 + 56) = 0;
  v18 = 0;
  v17 = 0uLL;
  if (v9 != v10)
  {
    v11 = v10 - v9;
    v12 = v11 - 1;
    if (v11 == 1)
    {
      v13 = 0;
    }

    else
    {
      if (*v9 == *v8.i64[0])
      {
        v13 = 0;
        v14 = v11 - 2;
        while (v14 != v13)
        {
          v15 = v9[v13 + 1];
          v16 = *(v8.i64[0] + 8 + 8 * v13++);
          if (v15 != v16)
          {
            goto LABEL_20;
          }
        }

        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

LABEL_20:
      *(a2 + 8) = v13;
    }

    *a2 = v9[v13];
  }

  return result;
}

void sub_F946BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F94724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0;
  v15 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  v11 = &v14;
  if (v5 != v6)
  {
    do
    {
      v16 = *(v5 + 120);
      sub_2C99C0(&v11, &v16);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = v6 - v5;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * (v7 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v16 = &v11;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v14;
  *(a2 + 16) = v14;
  v10 = v15;
  *(a2 + 24) = v15;
  v14 = 0;
  v15 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (v9 != v10)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_F94920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F9495C@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[3];
  v4 = result[4];
  LODWORD(v5) = v3 + 4;
  v6 = v3;
  if ((v3 + 4) != v4)
  {
    v7 = (v3 + 4);
    while (*v7 <= a2)
    {
      ++v7;
      LODWORD(v5) = v5 + 4;
      if (v7 == v4)
      {
        v5 = result[4];
        break;
      }
    }

    v6 = v5 - 4;
  }

  v8 = ((v6 - v3) >> 2);
  v9 = a2 - *(v3 + 4 * v8);
  v10 = *result + 1776 * v8;
  v11 = *(v10 + 96);
  if (v9 >= (*(v10 + 104) - v11) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v12 = *(v11 + 4 * v9);
  *a3 = v10 + 120;
  *(a3 + 8) = v10 + 144;
  *(a3 + 16) = v12;
  return result;
}

unint64_t sub_F94A20(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      v4 += 4;
      if (v6 == v3)
      {
        v4 = *(a1 + 32);
        break;
      }
    }

    v5 = v4 - 4;
  }

  return (v5 - v2) >> 2;
}

void *sub_F94A68@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[3];
  v4 = result[4];
  LODWORD(v5) = v3 + 4;
  v6 = v3;
  if ((v3 + 4) != v4)
  {
    v7 = (v3 + 4);
    while (*v7 <= a2)
    {
      ++v7;
      LODWORD(v5) = v5 + 4;
      if (v7 == v4)
      {
        v5 = result[4];
        break;
      }
    }

    v6 = v5 - 4;
  }

  v8 = a2 - *(v3 + 4 * ((v6 - v3) >> 2));
  v9 = *result + 1776 * ((v6 - v3) >> 2);
  if (v8 >= (*(v9 + 104) - *(v9 + 96)) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  *a3 = v9 + 120;
  *(a3 + 8) = v9 + 144;
  *(a3 + 16) = -1;
  return result;
}

uint64_t sub_F94B2C(void *a1, unsigned int a2)
{
  v2 = a1[3];
  v3 = a1[4];
  LODWORD(v4) = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 4;
      if (v6 == v3)
      {
        v4 = a1[4];
        break;
      }
    }

    v5 = v4 - 4;
  }

  v7 = ((v5 - v2) >> 2);
  return *(*(*a1 + 1776 * v7 + 168) + 4 * (a2 - *(v2 + 4 * v7)));
}

uint64_t sub_F94B9C(void *a1, unsigned int a2)
{
  v2 = a1[3];
  v3 = a1[4];
  LODWORD(v4) = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 4;
      if (v6 == v3)
      {
        v4 = a1[4];
        break;
      }
    }

    v5 = v4 - 4;
  }

  return sub_F98E1C((*a1 + 1776 * ((v5 - v2) >> 2)), a2 - *(v2 + 4 * ((v5 - v2) >> 2)));
}

BOOL sub_F94BF8(void *a1, unsigned int a2)
{
  v2 = a1[3];
  v3 = a1[4];
  LODWORD(v4) = v2 + 4;
  v5 = v2;
  if ((v2 + 4) != v3)
  {
    v6 = (v2 + 4);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 4;
      if (v6 == v3)
      {
        v4 = a1[4];
        break;
      }
    }

    v5 = v4 - 4;
  }

  return sub_F9903C(*a1 + 1776 * ((v5 - v2) >> 2), a2 - *(v2 + 4 * ((v5 - v2) >> 2)));
}

uint64_t sub_F94C54(void *a1, unsigned __int16 a2)
{
  v2 = a1[6];
  v3 = a1[7];
  LODWORD(v4) = v2 + 2;
  v5 = v2;
  if ((v2 + 2) != v3)
  {
    v6 = (v2 + 2);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 2;
      if (v6 == v3)
      {
        v4 = a1[7];
        break;
      }
    }

    v5 = v4 - 2;
  }

  v7 = ((v5 - v2) >> 1);
  return sub_F99124(*a1 + 1776 * v7, a2 - *(v2 + 2 * v7));
}

uint64_t sub_F94CB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F99138(v1);
    v1 += 1776;
  }

  while (v1 != v2);
  return v3;
}

void *sub_F94D1C@<X0>(void *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  LODWORD(v5) = v3 + 4;
  v6 = v3;
  if ((v3 + 4) != v4)
  {
    v7 = (v3 + 4);
    while (*v7 <= a2)
    {
      ++v7;
      LODWORD(v5) = v5 + 4;
      if (v7 == v4)
      {
        v5 = a1[4];
        break;
      }
    }

    v6 = v5 - 4;
  }

  return sub_F99160(*a1 + 1776 * ((v6 - v3) >> 2), a2 - *(v3 + 4 * ((v6 - v3) >> 2)), a3);
}

uint64_t *sub_F94D78@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t **a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  LODWORD(v6) = v4 + 4;
  v7 = v4;
  if ((v4 + 4) != v5)
  {
    v8 = (v4 + 4);
    while (*v8 <= a2)
    {
      ++v8;
      LODWORD(v6) = v6 + 4;
      if (v8 == v5)
      {
        v6 = a1[4];
        break;
      }
    }

    v7 = v6 - 4;
  }

  result = sub_F992C4(*a1 + 1776 * ((v7 - v4) >> 2), a2 - *(v4 + 4 * ((v7 - v4) >> 2)), &v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = a3;
  return result;
}

void sub_F94E90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F94EAC@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 112);
  if (*(result + 120) == v3)
  {
    goto LABEL_12;
  }

  v4 = *(result + 128);
  v5 = v4 - 1;
  v6 = (a2 & (v4 - 1));
  v7 = *(result + 168);
  v8 = *(result + 136);
  v9 = *(v7 + 32 * v6);
  if (v9 == v8)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v11 = 1;
    while (v9 == *(result + 104) || v9 != a2)
    {
      v6 = (v6 + v11) & v5;
      v9 = *(v7 + 32 * v6);
      ++v11;
      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 1;
    while (v9 != a2)
    {
      v6 = (v6 + v13) & v5;
      v9 = *(v7 + 32 * v6);
      ++v13;
      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  if (v6 == -1 || (v12 = v7 + 32 * v6, v12 == v7 + 32 * v4))
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v10 = *(v12 + 16);
    *a3 = *(v12 + 8);
    a3[1] = v10;
  }

  return result;
}

void *sub_F94FA4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 72) = xmmword_2267060;
  v3 = a1 + 72;
  *(v3 - 48) = 0u;
  v84 = (v3 - 48);
  *(v3 + 26) = 0;
  *(v3 + 28) = 0;
  *(v3 - 32) = 0u;
  *(v3 - 16) = 0u;
  *(v3 + 16) = 0x3E4CCCCD3F000000;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 32;
  *(v3 + 64) = -1;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 24) = 0;
  LOWORD(v97) = -1;
  v99 = 0;
  v100 = 0;
  __p = 0;
  v96 = v3;
  v91 = v2;
  sub_F962DC(v3, &v97);
  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  v5 = v2[4];
  v4 = v2[5];
  if (v5 >= v4)
  {
    v7 = *v84;
    v8 = v5 - *v84;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_1794();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v9) = 0;
    v6 = 4 * v9 + 4;
    memcpy(0, v7, v8);
    v2[3] = 0;
    v2[4] = v6;
    v2[5] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = 0;
    v6 = (v5 + 4);
  }

  v2[4] = v6;
  v14 = v2[7];
  v13 = v2[8];
  if (v14 >= v13)
  {
    v16 = v2[6];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 1;
    if (v18 <= -2)
    {
      sub_1794();
    }

    v19 = v13 - v16;
    if (v19 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v19;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v22 = (v14 - v16) >> 1;
    v23 = (2 * v18);
    v24 = (2 * v18 - 2 * v22);
    *v23 = 0;
    v15 = (v23 + 1);
    memcpy(v24, v16, v17);
    v2[6] = v24;
    v2[7] = v15;
    v2[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = 0;
    v15 = (v14 + 2);
  }

  v26 = *v2;
  v25 = v2[1];
  v27 = v25 - *v2;
  v2[7] = v15;
  if (v25 != v26)
  {
    v28 = 0;
    v29 = 0;
    __src = 0;
    v88 = 0;
    v30 = 0;
    v31 = 0;
    v85 = 0xB195E8EFDB195E8FLL * (v27 >> 4);
    while (1)
    {
      v86 = v88;
      v89 = __src;
      v32 = *(v2[4] - 4);
      v93 = *(v15 - 2);
      v94 = (*v2 + 1776 * v31);
      v34 = v94[15];
      v33 = v94[16];
      if (v34 == v33)
      {
        goto LABEL_41;
      }

      v35 = v33 - v34 - 104;
      if (v35 <= 0x67)
      {
        break;
      }

      v37 = v35 / 0x68 + 1;
      v36 = &v34[104 * (v37 & 0x7FFFFFFFFFFFFFELL)];
      v38 = v37 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v39 = *(v34 + 26) + v32;
        *v34 += v32;
        *(v34 + 26) = v39;
        v34 += 208;
        v38 -= 2;
      }

      while (v38);
      if (v37 != (v37 & 0x7FFFFFFFFFFFFFELL))
      {
        goto LABEL_40;
      }

LABEL_41:
      v90 = v28;
      sub_F99154(v94, &v97);
      v40 = v97;
      __src = v90;
      v88 = v29;
      v92 = __p;
      v95 = v31;
      if (v97 != __p)
      {
        while (1)
        {
          sub_F99154(v94, &v97);
          v45 = *(v40 + 5);
          if (v45 != -1)
          {
            *(v40 + 5) = *(v2[4] - 4) + v45;
          }

          v46 = v32;
          v47 = *(v40 + 28);
          if (v47 != -1)
          {
            *(v40 + 28) = *(v2[4] - 4) + v47;
          }

          v48 = v93 + 0x4EC4EC4EC4EC4EC5 * ((v40 - v97) >> 4);
          if (v31)
          {
            if (v40[16] == 1)
            {
              v40[16] = 4;
              if (v89 != v30)
              {
                v49 = v89;
                do
                {
                  LOWORD(v97) = *v49;
                  v51 = sub_F96528(v96, &v97);
                  v52 = v51;
                  v54 = v51[2];
                  v53 = v51[3];
                  if (v54 < v53)
                  {
                    *v54 = v48;
                    v50 = v54 + 2;
                  }

                  else
                  {
                    v55 = v51[1];
                    v56 = v54 - v55;
                    v57 = (v54 - v55) >> 1;
                    if (v57 <= -2)
                    {
                      sub_1794();
                    }

                    v58 = v53 - v55;
                    if (v58 <= v57 + 1)
                    {
                      v59 = v57 + 1;
                    }

                    else
                    {
                      v59 = v58;
                    }

                    if (v58 >= 0x7FFFFFFFFFFFFFFELL)
                    {
                      v60 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v60 = v59;
                    }

                    if (v60)
                    {
                      if ((v60 & 0x8000000000000000) == 0)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v61 = (v54 - v55) >> 1;
                    v62 = (2 * v57);
                    v63 = (2 * v57 - 2 * v61);
                    *v62 = v48;
                    v50 = v62 + 1;
                    memcpy(v63, v55, v56);
                    v52[1] = v63;
                    v52[2] = v50;
                    v52[3] = 0;
                    if (v55)
                    {
                      operator delete(v55);
                    }
                  }

                  v52[2] = v50;
                  ++v49;
                }

                while (v49 != v30);
              }
            }
          }

          v31 = v95;
          if (v95 == v85 - 1)
          {
            break;
          }

          v32 = v46;
          if (v40[16] == 2)
          {
            v40[16] = 3;
            v2 = v91;
            if (v90 < v88)
            {
              *v90++ = v48;
              goto LABEL_45;
            }

            v64 = v90 - __src;
            v65 = v90 - __src;
            if (v65 <= -2)
            {
              sub_1794();
            }

            if (v88 - __src <= v65 + 1)
            {
              v66 = v65 + 1;
            }

            else
            {
              v66 = v88 - __src;
            }

            if (v88 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v67 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v67 = v66;
            }

            if (v67)
            {
              if ((v67 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1808();
            }

            v88 = 0;
            *(2 * v65) = v48;
            v90 = (2 * v65 + 2);
            memcpy(0, __src, v64);
            __src = 0;
            v31 = v95;
            goto LABEL_71;
          }

          v2 = v91;
LABEL_45:
          v40 += 208;
          if (v40 == v92)
          {
            goto LABEL_42;
          }
        }

        v2 = v91;
LABEL_71:
        v32 = v46;
        goto LABEL_45;
      }

LABEL_42:
      v30 = v90;
      v41 = v32 + ((v94[13] - v94[12]) >> 2);
      v43 = v2[4];
      v42 = v2[5];
      if (v43 >= v42)
      {
        v68 = *v84;
        v69 = v43 - *v84;
        v70 = (v69 >> 2) + 1;
        if (v70 >> 62)
        {
          sub_1794();
        }

        v71 = v42 - v68;
        if (v71 >> 1 > v70)
        {
          v70 = v71 >> 1;
        }

        if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v72 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v72 = v70;
        }

        if (v72)
        {
          if (!(v72 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v73 = (4 * (v69 >> 2));
        *v73 = v41;
        v44 = v73 + 1;
        memcpy(0, v68, v69);
        v2[3] = 0;
        v2[4] = v44;
        v2[5] = 0;
        if (v68)
        {
          operator delete(v68);
        }

        v31 = v95;
      }

      else
      {
        *v43 = v41;
        v44 = v43 + 4;
      }

      v2[4] = v44;
      v74 = sub_F9A9DC(v94) + v93;
      v76 = v2[7];
      v75 = v2[8];
      if (v76 < v75)
      {
        *v76 = v74;
        v15 = (v76 + 2);
      }

      else
      {
        v77 = v2[6];
        v78 = v76 - v77;
        v79 = (v76 - v77) >> 1;
        if (v79 <= -2)
        {
          sub_1794();
        }

        v80 = v75 - v77;
        if (v80 <= v79 + 1)
        {
          v81 = v79 + 1;
        }

        else
        {
          v81 = v80;
        }

        if (v80 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v82 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v81;
        }

        if (v82)
        {
          if ((v82 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1808();
        }

        *(2 * v79) = v74;
        v15 = 2 * v79 + 2;
        memcpy(0, v77, v78);
        v2[6] = 0;
        v2[7] = v15;
        v2[8] = 0;
        if (v77)
        {
          operator delete(v77);
        }

        v31 = v95;
      }

      v29 = v86;
      v2[7] = v15;
      ++v31;
      v28 = v89;
      if (v31 == v85)
      {
        return v2;
      }
    }

    v36 = v94[15];
    do
    {
LABEL_40:
      *v36 += v32;
      v36 += 104;
    }

    while (v36 != v33);
    goto LABEL_41;
  }

  return v2;
}

void sub_F957EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, char **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = a18[21];
  if (v27)
  {
    v32 = a18[16];
    if (v32)
    {
      v33 = 0;
      do
      {
        v34 = &a18[21][v33];
        v35 = *(v34 + 1);
        if (v35)
        {
          *(v34 + 2) = v35;
          operator delete(v35);
        }

        v33 += 32;
        --v32;
      }

      while (v32);
      v27 = a18[21];
    }

    free(v27);
    v28 = *a9;
    if (!*a9)
    {
LABEL_5:
      v29 = a18[6];
      if (!v29)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v28 = *a9;
    if (!*a9)
    {
      goto LABEL_5;
    }
  }

  a18[19] = v28;
  operator delete(v28);
  v29 = a18[6];
  if (!v29)
  {
LABEL_6:
    v30 = *a10;
    if (!*a10)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  a18[7] = v29;
  operator delete(v29);
  v30 = *a10;
  if (!*a10)
  {
LABEL_7:
    v31 = *a18;
    if (!*a18)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  a18[4] = v30;
  operator delete(v30);
  v31 = *a18;
  if (!*a18)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  v36 = a18[1];
  v37 = v31;
  if (v36 != v31)
  {
    do
    {
      v36 -= 1776;
      sub_F96138(v36);
    }

    while (v36 != v31);
    v37 = *a18;
  }

  a18[1] = v31;
  operator delete(v37);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F959C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0;
  v20 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  *&v17 = &v19;
  if (v5 != v6)
  {
    do
    {
      v21 = *(v5 + 120);
      sub_2C99C0(&v17, &v21);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v17 = 0uLL;
  v18 = 0;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * ((v6 - v5) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v21 = &v17;
  v8 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v19;
  *(a2 + 16) = v19;
  v10 = v20;
  *(a2 + 24) = v20;
  v19 = 0;
  v20 = 0uLL;
  *(a2 + 40) = v8;
  *(a2 + 56) = 0;
  v18 = 0;
  v17 = 0uLL;
  if (v9 != v10)
  {
    v11 = v10 - v9;
    v12 = v11 - 1;
    if (v11 == 1)
    {
      v13 = 0;
    }

    else
    {
      if (*v9 == *v8.i64[0])
      {
        v13 = 0;
        v14 = v11 - 2;
        while (v14 != v13)
        {
          v15 = v9[v13 + 1];
          v16 = *(v8.i64[0] + 8 + 8 * v13++);
          if (v15 != v16)
          {
            goto LABEL_20;
          }
        }

        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

LABEL_20:
      *(a2 + 8) = v13;
    }

    *a2 = v9[v13];
  }

  return result;
}

void sub_F95C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F95C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0;
  v15 = 0uLL;
  v4 = a1[1] - *a1;
  if (v4)
  {
    if (!((0xB195E8EFDB195E8FLL * (v4 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *a1;
  v6 = a1[1];
  v11 = &v14;
  if (v5 != v6)
  {
    do
    {
      v16 = *(v5 + 120);
      sub_2C99C0(&v11, &v16);
      v5 += 1776;
    }

    while (v5 != v6);
    v5 = *a1;
    v6 = a1[1];
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = v6 - v5;
  if (v6 != v5)
  {
    if (!((0xB195E8EFDB195E8FLL * (v7 >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v16 = &v11;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = v14;
  *(a2 + 16) = v14;
  v10 = v15;
  *(a2 + 24) = v15;
  v14 = 0;
  v15 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v7;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (v9 != v10)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_F95E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F95EB8(void *a1, unsigned __int16 a2)
{
  v2 = a1[6];
  v3 = a1[7];
  LODWORD(v4) = v2 + 2;
  v5 = v2;
  if ((v2 + 2) != v3)
  {
    v6 = (v2 + 2);
    while (*v6 <= a2)
    {
      ++v6;
      LODWORD(v4) = v4 + 2;
      if (v6 == v3)
      {
        v4 = a1[7];
        break;
      }
    }

    v5 = v4 - 2;
  }

  v7 = ((v5 - v2) >> 1);
  return sub_F9A9C8(*a1 + 1776 * v7, a2 - *(v2 + 2 * v7));
}

uint64_t sub_F95F18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_F9A9DC(v1);
    v1 += 1776;
  }

  while (v1 != v2);
  return v3;
}

uint64_t *sub_F95F80@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t **a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  LODWORD(v6) = v4 + 4;
  v7 = v4;
  if ((v4 + 4) != v5)
  {
    v8 = (v4 + 4);
    while (*v8 <= a2)
    {
      ++v8;
      LODWORD(v6) = v6 + 4;
      if (v8 == v5)
      {
        v6 = a1[4];
        break;
      }
    }

    v7 = v6 - 4;
  }

  result = sub_F992C4(*a1 + 1776 * ((v7 - v4) >> 2), a2 - *(v4 + 4 * ((v7 - v4) >> 2)), &v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = a3;
  return result;
}

void sub_F96098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F960B4(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = a1[7];
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = a1[12] + v4;
        v6 = *(v5 + 8);
        if (v6)
        {
          *(v5 + 16) = v6;
          operator delete(v6);
        }

        v4 += 32;
        --v3;
      }

      while (v3);
      v2 = a1[12];
    }

    free(v2);
  }

  v7 = a1[9];
  if (v7)
  {
    a1[10] = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_F96138(uint64_t a1)
{
  sub_360988(a1 + 1008);
  v2 = 1008;
  do
  {
    v3 = a1 + v2;
    v2 -= 48;
    v4 = *(v3 - 24);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = (v3 - 40);
      do
      {
        if ((*(*(a1 + v2) + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 8);
          if (v9)
          {
            *(v8 + 16) = v9;
            operator delete(v9);
            v4 = *(v3 - 24);
          }
        }

        ++v6;
        v5 += 32;
      }

      while (v6 != v4);
      operator delete(*(a1 + v2));
      *(a1 + v2) = &unk_2290750;
      *(v3 - 8) = 0;
      *(v3 - 32) = 0;
      *(v3 - 24) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 240);
  v10 = *(a1 + 216);
  if (v10)
  {
    *(a1 + 224) = v10;
    operator delete(v10);
  }

  return sub_F96228(a1);
}

uint64_t sub_F96228(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    *(a1 + 56) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_F962DC(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  *(v5 - 47) = 1;
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  *(a1 + 64) = *a2;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = malloc_type_malloc(32 * *(a1 + 56), 0x102004084B5A0ACuLL);
  *(a1 + 96) = v8;
  v9 = v8 + 32 * *(a1 + 56);

  return sub_F963E4(v8, v9, (v5 - 1));
}

void sub_F963C8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F963E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = 0;
  v4 = a1;
  do
  {
    *v4 = *a3;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    v6 = *(a3 + 8);
    v5 = *(a3 + 16);
    if (v5 != v6)
    {
      if (((v5 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v4 += 32;
    v3 -= 32;
  }

  while (v4 != a2);
  return v4;
}

void *sub_F96528(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 56) - 1;
  v5 = *a2;
  v6 = v4 & v5;
  v7 = *(a1 + 96);
  v8 = *(a1 + 64);
  v9 = *(v7 + 32 * (v4 & v5));
  if (v9 == v8)
  {
LABEL_2:
    v10 = v6;
    goto LABEL_3;
  }

  if (*(a1 + 40))
  {
    v10 = -1;
    v19 = 1;
    do
    {
      if (v9 == *(a1 + 32))
      {
        if (v10 == -1)
        {
          v10 = v6;
        }
      }

      else if (v9 == v5)
      {
        goto LABEL_16;
      }

      v6 = (v6 + v19) & v4;
      v9 = *(v7 + 32 * v6);
      ++v19;
    }

    while (v9 != v8);
    if (v10 == -1)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v21 = 1;
    while (v9 != v5)
    {
      v6 = (v6 + v21) & v4;
      v9 = *(v7 + 32 * v6);
      ++v21;
      if (v9 == v8)
      {
        goto LABEL_2;
      }
    }

LABEL_16:
    if (v6 != -1)
    {
      return (v7 + 32 * v6);
    }

    v10 = -1;
  }

LABEL_3:
  if (sub_F967E0(a1, 1))
  {
    LOWORD(v23) = *a2;
    v25 = 0;
    v26 = 0;
    __p = 0;
    v11 = *(a1 + 56) - 1;
    v12 = (v11 & v23);
    v13 = *(a1 + 96);
    v14 = *(a1 + 64);
    v15 = *(v13 + 32 * v12);
    if (v15 == v14)
    {
LABEL_5:
      v16 = v12;
      goto LABEL_6;
    }

    if (*(a1 + 40))
    {
      v16 = -1;
      v20 = 1;
      do
      {
        if (v15 == *(a1 + 32))
        {
          if (v16 == -1)
          {
            v16 = v12;
          }
        }

        else if (v15 == v23)
        {
          goto LABEL_27;
        }

        v12 = (v12 + v20) & v11;
        v15 = *(v13 + 32 * v12);
        ++v20;
      }

      while (v15 != v14);
      if (v16 != -1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v22 = 1;
    while (v15 != v23)
    {
      v12 = (v12 + v22) & v11;
      v15 = *(v13 + 32 * v12);
      ++v22;
      if (v15 == v14)
      {
        goto LABEL_5;
      }
    }

LABEL_27:
    if (v12 == -1)
    {
      v16 = -1;
LABEL_6:
      sub_F96A8C(a1, &v23, v16, &v27);
      LOBYTE(v30) = 1;
      v17 = v28;
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      return v17;
    }

    return (v13 + 32 * v12);
  }

  else
  {
    LOWORD(v27) = *a2;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    sub_F96A8C(a1, &v27, v10, &v23);
    v17 = __p;
    if (!v28)
    {
      return v17;
    }

    v29 = v28;
    operator delete(v28);
    return v17;
  }
}

void sub_F967B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F967E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_F96C20(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_35;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_35:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_35;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_35;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_F96FB0(v21, a1, v13);
      sub_F96D44(a1, v21);
      v16 = v25;
      if (v25)
      {
        v17 = v22;
        if (v22)
        {
          v18 = 0;
          do
          {
            v19 = *(v25 + v18 + 8);
            if (v19)
            {
              *(v25 + v18 + 16) = v19;
              operator delete(v19);
            }

            v18 += 32;
            --v17;
          }

          while (v17);
          v16 = v25;
        }

        free(v16);
      }

      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      return 1;
    }
  }

  return result;
}

void sub_F96A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F960B4(va);
  _Unwind_Resume(a1);
}

void sub_F96A8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v10 = *(a1 + 96);
  if (!v6 || *(v10 + 32 * a3) != *(a1 + 32))
  {
    *(a1 + 48) = v5 + 1;
    v11 = v10 + 32 * a3;
    v13 = (v11 + 8);
    v12 = *(v11 + 8);
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(a1 + 40) = v6 - 1;
  v11 = v10 + 32 * a3;
  v13 = (v11 + 8);
  v12 = *(v11 + 8);
  if (v12)
  {
LABEL_7:
    *(v11 + 16) = v12;
    operator delete(v12);
  }

LABEL_8:
  *v11 = *a2;
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  v15 = *(a2 + 8);
  v14 = *(a2 + 16);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = *(a1 + 96);
  v17 = v16 + 32 * a3;
  v18 = v16 + 32 * *(a1 + 56);
  *a4 = a1;
  a4[1] = v17;
  a4[2] = v18;
}

void sub_F96BFC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (!*v2)
  {
    _Unwind_Resume(exception_object);
  }

  *(v1 + 16) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

uint64_t sub_F96C20(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_F96FB0(v13, a1, v5);
    sub_F96D44(a1, v13);
    v8 = v17;
    if (v17)
    {
      v9 = v14;
      if (v14)
      {
        v10 = 0;
        do
        {
          v11 = *(v17 + v10 + 8);
          if (v11)
          {
            *(v17 + v10 + 16) = v11;
            operator delete(v11);
          }

          v10 += 32;
          --v9;
        }

        while (v9);
        v8 = v17;
      }

      free(v8);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_F96D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_F960B4(va);
  _Unwind_Resume(a1);
}

uint64x2_t sub_F96D44(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 16);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *a2 = v5;
  *(a2 + 16) = v4;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v7;
  v9 = (a1 + 72);
  v8 = *(a1 + 72);
  v10 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  v11 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v11;
  v12 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  if (v14 != v8)
  {
    if (((v14 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  *(a1 + 64) = *(a2 + 64);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  v16 = *(a2 + 72);
  v15 = *(a2 + 80);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v16)
  {
    *(a2 + 80) = v16;
    operator delete(v16);
  }

  *(a2 + 64) = v13;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v17 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v17;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 56))));
  *(a1 + 24) = 0;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a2 + 16), *(a2 + 56))));
  *a2 = result;
  *(a2 + 24) = 0;
  return result;
}

void sub_F96F74(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F96FB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 56))));
    *(a1 + 24) = 0;
    sub_F9718C(a1, a2, a3);
  }

  else
  {
    v8 = 4;
    if (a3 > 4)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v9 = *(a1 + 16) * v8;
      if (*(a2 + 48) - *(a2 + 40) < v9)
      {
        break;
      }

      do
      {
LABEL_8:
        if ((v8 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v8 *= 2;
      }

      while (v8 < a3);
    }

    *(a1 + 56) = v8;
    v10 = *(a1 + 20) * v8;
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_F9715C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_F9718C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_F97440(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    if (*(a2 + 40))
    {
      v9 = 32 * v7;
      v10 = *(a2 + 96);
      while (1)
      {
        v11 = *v10;
        if (v11 != v8 && v11 != *(a2 + 32))
        {
          break;
        }

        v10 += 16;
        v9 -= 32;
        if (!v9)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v27 = 32 * v7;
      v10 = *(a2 + 96);
      while (*v10 == v8)
      {
        v10 += 16;
        v27 -= 32;
        if (!v27)
        {
          goto LABEL_43;
        }
      }
    }
  }

  else
  {
    v10 = *(a2 + 96);
  }

  v13 = *(a2 + 96) + 32 * v7;
  if (v10 != v13)
  {
    do
    {
      v14 = *(a1 + 56) - 1;
      v15 = *v10;
      v16 = *(a1 + 96);
      v17 = *(a1 + 64);
      v18 = v14 & v15;
      if (*(v16 + 32 * (v14 & v15)) != v17)
      {
        v19 = 1;
        do
        {
          v18 = (v18 + v19++) & v14;
        }

        while (*(v16 + 32 * v18) != v17);
      }

      v20 = v16 + 32 * v18;
      v21 = *(v20 + 8);
      if (v21)
      {
        *(v20 + 16) = v21;
        operator delete(v21);
        LOWORD(v15) = *v10;
      }

      *v20 = v15;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 8) = 0;
      v23 = *(v10 + 1);
      v22 = *(v10 + 2);
      if (v22 != v23)
      {
        if (((v22 - v23) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      ++*(a1 + 48);
      v10 += 16;
      if (v10 != v13)
      {
        v24 = *(a2 + 64);
        if (*(a2 + 40))
        {
          do
          {
            v25 = *v10;
            if (v25 != v24 && v25 != *(a2 + 32))
            {
              break;
            }

            v10 += 16;
          }

          while (v10 != v13);
        }

        else
        {
          do
          {
            if (*v10 != v24)
            {
              break;
            }

            v10 += 16;
          }

          while (v10 != v13);
        }
      }
    }

    while (v10 != (*(a2 + 96) + 32 * *(a2 + 56)));
  }

LABEL_43:
  ++*(a1 + 28);
}

void sub_F9740C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64x2_t sub_F97440(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 96);
  if (!v4)
  {
    v4 = malloc_type_malloc(32 * a2, 0x102004084B5A0ACuLL);
LABEL_12:
    *(a1 + 96) = v4;
    goto LABEL_13;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = 0;
  do
  {
    v7 = *(a1 + 96) + v6;
    v8 = *(v7 + 8);
    if (v8)
    {
      *(v7 + 16) = v8;
      operator delete(v8);
    }

    v6 += 32;
    --v5;
  }

  while (v5);
  v4 = *(a1 + 96);
  if (*(a1 + 56) != a2)
  {
LABEL_11:
    v9 = v4;
    v4 = malloc_type_realloc(v4, 32 * a2, 0x102004084B5A0ACuLL);
    if (!v4)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v9);
      exit(1);
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_F963E4(v4, v4 + 32 * a2, a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

double sub_F97568(uint64_t a1)
{
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 768) = &unk_2290750;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 816) = &unk_2290750;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 864) = &unk_2290750;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 912) = &unk_2290750;
  *(a1 + 952) = 0;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 960) = &unk_2290750;
  *(a1 + 1000) = 0;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 1008) = &unk_2290750;
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1056) = &unk_2290750;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1104) = &unk_2290750;
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1152) = &unk_2290750;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1200) = &unk_2290750;
  *(a1 + 1240) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1248) = &unk_2290750;
  *(a1 + 1288) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1256) = 0u;
  *(a1 + 1296) = &unk_2290750;
  *(a1 + 1336) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1344) = &unk_2290750;
  *(a1 + 1384) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1392) = &unk_2290750;
  *(a1 + 1432) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1440) = &unk_2290750;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1448) = 0u;
  *(a1 + 1488) = &unk_2290750;
  *(a1 + 1528) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1496) = 0u;
  *(a1 + 1536) = &unk_2290750;
  *(a1 + 1576) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1584) = &unk_2290750;
  *(a1 + 1624) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1592) = 0u;
  *(a1 + 1632) = &unk_2290750;
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1640) = 0u;
  *(a1 + 1680) = &unk_2290750;
  *(a1 + 1720) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1728) = &unk_2290750;
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1736) = 0u;
  return result;
}

void sub_F977FC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_F97568(a2);
  v4 = *(sub_10E2C7C(a1) + 120);
  v117 = a1;
  v5 = *(sub_10E2C7C(a1) + 128);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      if (sub_10DF6A4(v4))
      {
        v7 = sub_10DF6C4(v4);
        v8 = *(v7 + 16);
        v123 = *v7;
        v124 = v8;
        v9 = *(v7 + 32);
        v10 = *(v7 + 56);
        v121 = *(v7 + 40);
        v122 = v10;
        v11 = *(v7 + 72);
        v12 = *(v7 + 80);
        v13 = *(v7 + 88);
        v120[0] = *(v7 + 89);
        *(v120 + 3) = *(v7 + 92);
        v118 = v12;
        v14 = v12;
        v15 = (((v9 >> 16) & 0xFFFF0000 | (v9 << 32) | (2 * ((v9 & 0xFF000000000000) == 0))) + 4 * v12) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
        *v133 = v15;
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v16 = *(*v125 + 8) + 16 * *&v125[8];
            *v16 = *v133;
            *(v16 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v18 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v18 = *v133;
            *(v18 + 8) = -1;
          }

          *(v18 + 8) = v6++;
        }

        v19 = (((v11 >> 16) & 0xFFFF0000 | (v11 << 32) | (2 * ((v11 & 0xFF000000000000) == 0))) + ((v14 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v13 >> 1) & 1;
        *v133 = v19;
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v20 = *(*v125 + 8) + 16 * *&v125[8];
            *v20 = *v133;
            *(v20 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v22 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v22 = *v133;
            *(v22 + 8) = -1;
          }

          *(v22 + 8) = v6++;
        }

        *v133 = v15;
        sub_40D9F8((a2 + 126), v133, v125);
        v23 = *(*v125 + 8) + 16 * *&v125[8];
        if (v125[16] == 1)
        {
          *v23 = *v133;
          *(v23 + 8) = -1;
        }

        v24 = *(v23 + 8);
        *v133 = v19;
        sub_40D9F8((a2 + 126), v133, v125);
        v25 = *(*v125 + 8) + 16 * *&v125[8];
        if (v125[16] == 1)
        {
          *v25 = *v133;
          *(v25 + 8) = -1;
        }

        v26 = *(v25 + 8);
        v27 = a2[12];
        v28 = a2[13] - v27;
        if (v24 >= (v28 >> 2) || v26 >= (v28 >> 2))
        {
          goto LABEL_33;
        }

        if (v24 >= v28 >> 2)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v116 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        v29 = *(v27 + 4 * v24);
        if (v29 == -1)
        {
LABEL_33:
          *&v133[4] = v123;
          *&v133[20] = v124;
          if (v26 <= v24)
          {
            v30 = v24;
          }

          else
          {
            v30 = v26;
          }

          sub_F98CE4(a2, v30);
          *v125 = v26;
          *&v125[4] = *v133;
          *&v125[20] = *&v133[16];
          *&v125[36] = *&v133[32];
          v127 = v121;
          v128 = v122;
          v126 = v9;
          v129 = v11;
          v130 = v118;
          v131 = v13;
          *v132 = v120[0];
          *&v132[3] = *(v120 + 3);
          sub_F9AD10(a2 + 12, v24, v125, v119);
          ++*(a2[21] + 4 * v24);
        }

        else
        {
          while (*(a2[15] + 104 * v29) != v26)
          {
            v29 = *(a2[18] + 4 * v29);
            if (v29 == -1)
            {
              goto LABEL_33;
            }
          }
        }
      }

      else
      {
        *v133 = *sub_10DF6E4(v4);
        sub_F98EF8((a2 + 126), v133, v125);
        if (*v125)
        {
          sub_40D9F8((a2 + 126), v133, v125);
          if (v125[16] == 1)
          {
            v17 = *(*v125 + 8) + 16 * *&v125[8];
            *v17 = *v133;
            *(v17 + 8) = -1;
          }
        }

        else
        {
          sub_40D9F8((a2 + 126), v133, v125);
          v21 = *(*v125 + 8) + 16 * *&v125[8];
          if (v125[16] == 1)
          {
            *v21 = *v133;
            *(v21 + 8) = -1;
          }

          *(v21 + 8) = v6++;
        }
      }

      v4 += 176;
    }

    while (v4 != v5);
  }

  v31 = sub_3068E4(v117);
  sub_F98648(a2, v117, v31, 1);
  v32 = sub_10E2C84(v117);
  sub_F98648(a2, v117, v32, 2);
  v33 = sub_10E2C8C(v117);
  sub_F98934(a2, v117, v33, 5);
  v34 = a2[28] - a2[27];
  if (v34)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 6);
    do
    {
      v39 = a2[27] + v35;
      v40 = *(v39 + 4);
      *v133 = v40;
      v41 = *(v39 + 96);
      LODWORD(v123) = v41;
      if (v40 != -1)
      {
        sub_F9AFE4((a2 + 30), v133, v125);
        v42 = *v125;
        if (v125[16] == 1)
        {
          v43 = *(*v125 + 8) + 32 * *&v125[8];
          *v43 = *v133;
          *(v43 + 16) = 0;
          *(v43 + 24) = 0;
          *(v43 + 8) = 0;
        }

        v44 = (*(v42 + 8) + 32 * *&v125[8]);
        v46 = v44[2];
        v45 = v44[3];
        if (v46 >= v45)
        {
          v48 = v44[1];
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 1;
          if (v50 <= -2)
          {
            goto LABEL_138;
          }

          v51 = v45 - v48;
          if (v51 <= v50 + 1)
          {
            v52 = v50 + 1;
          }

          else
          {
            v52 = v51;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v53 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            if ((v53 & 0x8000000000000000) == 0)
            {
              operator new();
            }

LABEL_139:
            sub_1808();
          }

          v54 = (v46 - v48) >> 1;
          v55 = (2 * v50);
          v56 = (2 * v50 - 2 * v54);
          *v55 = v36;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v44[1] = v56;
          v44[2] = v47;
          v44[3] = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v46 = v36;
          v47 = v46 + 2;
        }

        v44[2] = v47;
        v41 = v123;
        v40 = *v133;
      }

      if (v41 != -1 && v41 != v40)
      {
        sub_F9AFE4((a2 + 30), &v123, v125);
        v58 = *v125;
        if (v125[16] == 1)
        {
          v59 = *(*v125 + 8) + 32 * *&v125[8];
          *v59 = v123;
          *(v59 + 16) = 0;
          *(v59 + 24) = 0;
          *(v59 + 8) = 0;
        }

        v60 = (*(v58 + 8) + 32 * *&v125[8]);
        v62 = v60[2];
        v61 = v60[3];
        if (v62 < v61)
        {
          *v62 = v36;
          v38 = v62 + 2;
        }

        else
        {
          v63 = v60[1];
          v64 = v62 - v63;
          v65 = (v62 - v63) >> 1;
          if (v65 < -1)
          {
LABEL_138:
            sub_1794();
          }

          v66 = v61 - v63;
          if (v66 <= v65 + 1)
          {
            v67 = v65 + 1;
          }

          else
          {
            v67 = v66;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v68 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v67;
          }

          if (v68)
          {
            if ((v68 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_139;
          }

          v69 = (v62 - v63) >> 1;
          v70 = (2 * v65);
          v71 = (2 * v65 - 2 * v69);
          *v70 = v36;
          v38 = v70 + 1;
          memcpy(v71, v63, v64);
          v60[1] = v71;
          v60[2] = v38;
          v60[3] = 0;
          if (v63)
          {
            operator delete(v63);
          }
        }

        v60[2] = v38;
      }

      ++v36;
      v35 += 192;
    }

    while (v37 != v36);
  }

  v72 = (a2 + 126);
  v73 = a2[126];
  v74 = a2[127];
  v75 = *v73;
  v76 = v74;
  v77 = v73;
  if (v75 <= -2)
  {
    v76 = a2[127];
    v77 = a2[126];
    do
    {
      v78 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v77 = (v77 + v78);
      v76 += 16 * v78;
    }

    while (*v77 < -1);
  }

  v79 = &v73[a2[129]];
  if (v77 == v79)
  {
    v106 = 6;
    v80 = 1056;
    v107 = (a2 + 126);
    while (1)
    {
      v108 = *(a2 + v80);
      v76 = v107[7];
      v77 = v108;
      if (*v108 <= -2)
      {
        do
        {
          v109 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v77 = (v77 + v109);
          v76 += 16 * v109;
        }

        while (*v77 < -1);
      }

      v79 = &v107[9][v108];
      if (v77 != v79)
      {
        break;
      }

      v107 = &v72[v106];
      v80 = v106 * 8 + 1056;
      v106 += 6;
      if (v106 == 96)
      {
        v81 = 0;
        v101 = a2 + 222;
        if (v75 <= -2)
        {
          goto LABEL_114;
        }

        goto LABEL_124;
      }
    }
  }

  else
  {
    v80 = 1008;
  }

  v81 = 0;
  while (1)
  {
    v82 = v81;
    v83 = *v76;
    v84 = *(v76 + 8);
    v85 = a2[24];
    v86 = a2[13] - a2[12];
    v87 = v86 >> 2;
    v88 = v86 >> 2;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[25] - v85) >> 3) < v87 || v88 <= v84)
    {
      sub_F98CE4(a2, *(v76 + 8));
      v90 = (a2[13] - a2[12]) >> 2;
      *v125 = 0;
      *&v125[8] = 0;
      *&v125[16] = -1;
      v85 = a2[24];
      v91 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - v85) >> 3);
      if (v90 <= v91)
      {
        if (v90 < v91)
        {
          a2[25] = v85 + 24 * v90;
        }
      }

      else
      {
        sub_F9B6DC((a2 + 24), v90 - v91, v125);
        v85 = a2[24];
      }
    }

    *(v85 + 24 * v84) = v83;
    if (v83 == (v83 & 0xFFFFFFFFFFFF0002))
    {
      v81 = v82;
      v72 = (a2 + 126);
      v92 = *(v77 + 1);
      v77 = (v77 + 1);
      v76 += 16;
      if (v92 > -2)
      {
        goto LABEL_103;
      }

      do
      {
LABEL_102:
        v95 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v77 = (v77 + v95);
        v76 += 16 * v95;
      }

      while (*v77 < -1);
      goto LABEL_103;
    }

    v93 = v82 >> 4;
    if (((v82 >> 4) + 1) >> 60)
    {
      sub_1794();
    }

    if (v82 >> 4 != -1)
    {
      if (!(((v82 >> 4) + 1) >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v94 = 16 * v93;
    *v94 = v83 & 0xFFFFFFFFFFFF0002;
    *(v94 + 8) = v84;
    v81 = 16 * v93 + 16;
    memcpy(0, 0, v82);
    v72 = (a2 + 126);
    v100 = *(v77 + 1);
    v77 = (v77 + 1);
    v76 += 16;
    if (v100 <= -2)
    {
      goto LABEL_102;
    }

LABEL_103:
    if (v77 == v79)
    {
      break;
    }

LABEL_85:
    if (!a2)
    {
      goto LABEL_113;
    }
  }

  if (v80 != 1728)
  {
    v96 = a2 + v80;
    v80 += 48;
    do
    {
      v97 = a2 + v80;
      v98 = *(a2 + v80);
      v76 = *(v96 + 7);
      v77 = v98;
      if (*v98 <= -2)
      {
        do
        {
          v99 = (__clz(__rbit64(((*v77 >> 7) & ~*v77 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v77 = (v77 + v99);
          v76 += 16 * v99;
        }

        while (*v77 < -1);
      }

      v79 = &v98[*(v96 + 9)];
      if (v77 != v79)
      {
        goto LABEL_85;
      }

      v80 += 48;
      v96 = v97;
    }

    while (v80 != 1776);
  }

LABEL_113:
  v73 = a2[126];
  v74 = a2[127];
  v101 = a2 + 222;
  if (*v73 <= -2)
  {
LABEL_114:
    v102 = v73;
    do
    {
      v103 = (__clz(__rbit64(((*v102 >> 7) & ~*v102 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v102 += v103;
      v74 += 16 * v103;
    }

    while (*v102 < -1);
    v104 = &v73[a2[129]];
    v105 = v72;
    if (v102 == v104)
    {
      goto LABEL_125;
    }

    goto LABEL_134;
  }

LABEL_124:
  v102 = v73;
  v104 = &v73[a2[129]];
  v105 = v72;
  if (v102 == v104)
  {
LABEL_125:
    v105 = (a2 + 132);
    v110 = 6;
    v111 = v72;
    do
    {
      v112 = *v105;
      v74 = v111[7];
      if (**v105 > -2)
      {
        v102 = *v105;
        v104 = &v111[9][v112];
        if (v112 != v104)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v102 = *v105;
        do
        {
          v113 = (__clz(__rbit64(((*v102 >> 7) & ~*v102 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v102 += v113;
          v74 += 16 * v113;
        }

        while (*v102 < -1);
        v104 = &v111[9][v112];
        if (v102 != v104)
        {
          goto LABEL_134;
        }
      }

      v111 = &v72[v110];
      v110 += 6;
      v105 = &v72[v110];
    }

    while (v110 != 96);
    v105 = 0;
    v104 = v102;
  }

LABEL_134:
  *v125 = v72;
  *&v125[8] = v105;
  *&v125[16] = v101;
  *&v125[24] = v102;
  *&v125[32] = v74;
  v126 = v104;
  if (v81)
  {
    for (i = 0; i != v81; i += 16)
    {
      *v133 = *i;
      *&v133[8] = *(i + 8);
      sub_F9AA00(v125, v133);
    }
  }
}