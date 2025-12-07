void sub_2713D6564(void *a1, uint64_t *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v11 = v3 >= v2;
  v4 = v3 - v2;
  if (!v11)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_17;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  v11 = v9 >= v10;
  v12 = v9 - v10;
  if (v12 != 0 && v11)
  {
    sub_2713D06C0(a2, v12);
    v6 = *a2;
    v7 = a2[1];
  }

  else if (!v11)
  {
    v7 = v6 + 12 * v9;
    a2[1] = v7;
  }

  if (v7 != v6)
  {
    v14 = a1[6];
    while (1)
    {
      v15 = a1[7];
      v11 = v15 >= v14;
      v16 = v15 - v14;
      if (!v11)
      {
        v16 = 0;
      }

      if (v16 <= 0xB)
      {
        break;
      }

      v17 = a1[3] + v14;
      v18 = *v17;
      *(v6 + 8) = *(v17 + 8);
      *v6 = v18;
      v6 += 12;
      v14 = a1[6] + 12;
      a1[6] = v14;
      if (v6 == v7)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_17:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }
}

void sub_2713D66B8(void *a1, uint64_t *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v11 = v3 >= v2;
  v4 = v3 - v2;
  if (!v11)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_17;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  v11 = v9 >= v10;
  v12 = v9 - v10;
  if (v12 != 0 && v11)
  {
    sub_2713D0BEC(a2, v12);
    v6 = *a2;
    v7 = a2[1];
  }

  else if (!v11)
  {
    v7 = v6 + 12 * v9;
    a2[1] = v7;
  }

  if (v7 != v6)
  {
    v14 = a1[6];
    while (1)
    {
      v15 = a1[7];
      v11 = v15 >= v14;
      v16 = v15 - v14;
      if (!v11)
      {
        v16 = 0;
      }

      if (v16 <= 0xB)
      {
        break;
      }

      v17 = a1[3] + v14;
      v18 = *v17;
      *(v6 + 8) = *(v17 + 8);
      *v6 = v18;
      v6 += 12;
      v14 = a1[6] + 12;
      a1[6] = v14;
      if (v6 == v7)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_17:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }
}

void sub_2713D680C(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_16;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  if (v10 <= v9 >> 3)
  {
    if (v10 < v9 >> 3)
    {
      v8 = &v7[v10];
      a2[1] = v8;
    }
  }

  else
  {
    sub_2713D0F78(a2, v10 - (v9 >> 3));
    v7 = *a2;
    v8 = a2[1];
  }

  if (v8 != v7)
  {
    v12 = a1[6];
    while (1)
    {
      v13 = a1[7];
      v4 = v13 >= v12;
      v14 = v13 - v12;
      if (!v4)
      {
        v14 = 0;
      }

      if (v14 <= 7)
      {
        break;
      }

      *v7++ = *(a1[3] + v12);
      v12 = a1[6] + 8;
      a1[6] = v12;
      if (v7 == v8)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_16:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }
}

void sub_2713D6944(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    goto LABEL_16;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  if (v10 <= v9 >> 3)
  {
    if (v10 < v9 >> 3)
    {
      v8 = &v7[v10];
      a2[1] = v8;
    }
  }

  else
  {
    sub_2713D129C(a2, v10 - (v9 >> 3));
    v7 = *a2;
    v8 = a2[1];
  }

  if (v8 != v7)
  {
    v12 = a1[6];
    while (1)
    {
      v13 = a1[7];
      v4 = v13 >= v12;
      v14 = v13 - v12;
      if (!v4)
      {
        v14 = 0;
      }

      if (v14 <= 7)
      {
        break;
      }

      *v7++ = *(a1[3] + v12);
      v12 = a1[6] + 8;
      a1[6] = v12;
      if (v7 == v8)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
LABEL_16:
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }
}

void *sub_2713D6A7C(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xB)
  {
    goto LABEL_8;
  }

  v6 = (result[3] + v2);
  v7 = *v6;
  *(a2 + 8) = *(v6 + 2);
  *a2 = v7;
  v8 = result[7];
  v9 = result[6] + 12;
  result[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0xB)
  {
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v11 = result[3] + v9;
  v12 = *v11;
  *(a2 + 20) = *(v11 + 8);
  *(a2 + 12) = v12;
  result[6] += 12;
  return result;
}

void sub_2713D6B80(int *a1, _BYTE *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 3)
    {
LABEL_17:
      sub_2713D6F44(a2, a3, v4);
      return;
    }

    v12 = 3;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 5)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_28087B880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B880))
      {
        sub_2713D6D5C();
      }

      sub_271847D5C(&stru_28087B8A0, v11, 4);
    }

    v7 = *a1;
  }

  if (v4 < 3 || v7 <= 0)
  {
    if (v4 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v4;
    }

    if (v4 > 2)
    {
      sub_2713D765C(a2, a3, v10);
      return;
    }

    v4 = v10;
    goto LABEL_17;
  }

  (*(*a2 + 16))(a2);
  if (v4 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v4;
  }

  sub_2713D765C(a2, a3, v9);
  (*(*a2 + 24))(a2);
}

void sub_2713D6EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_27137F4D0(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2713D6F44(_BYTE *a1, uint64_t *a2, unsigned int a3)
{
  v20 = 0u;
  v22 = 0;
  v21 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v34[32] = 0;
  LOBYTE(v35) = 0;
  v38 = 0;
  memset(v34, 0, 28);
  memset(&v34[8], 0, 28);
  memset(&v34[16], 0, 28);
  memset(&v34[24], 0, 28);
  sub_2713D7DD8(a1, &v20);
  v19[0] = &v22 + 1;
  sub_2713D7F2C(a1, v19);
  sub_2713D7DD8(a1, v23);
  v19[0] = &v24 + 1;
  sub_2713D7F2C(a1, v19);
  sub_2713D7DD8(a1, v25);
  v19[0] = &v26 + 1;
  sub_2713D7F2C(a1, v19);
  v19[0] = (v28 - v27);
  (*(*a1 + 120))(a1, v19);
  v6 = v28;
  v7 = v27;
  if (v19[0] <= (v28 - v27))
  {
    if (v19[0] < (v28 - v27))
    {
      v6 = &v27[v19[0]];
      v28 = &v27[v19[0]];
    }
  }

  else
  {
    sub_271358BDC(&v27, v19[0] - (v28 - v27));
    v7 = v27;
    v6 = v28;
  }

  for (; v7 != v6; ++v7)
  {
    (*(*a1 + 80))(a1, v7);
  }

  v19[0] = &v30 + 1;
  sub_2713D7F2C(a1, v19);
  v19[0] = (v32 - v31);
  (*(*a1 + 120))(a1, v19);
  v8 = v32;
  v9 = v31;
  if (v19[0] <= (v32 - v31))
  {
    if (v19[0] < (v32 - v31))
    {
      v8 = &v31[v19[0]];
      v32 = &v31[v19[0]];
    }
  }

  else
  {
    sub_271358BDC(&v31, v19[0] - (v32 - v31));
    v9 = v31;
    v8 = v32;
  }

  for (; v9 != v8; ++v9)
  {
    (*(*a1 + 80))(a1, v9);
  }

  sub_2713D80A4(a1, &v34[1]);
  v19[0] = ((*&v34[11] - *&v34[9]) >> 3);
  (*(*a1 + 120))(a1, v19);
  v10 = *&v34[11];
  v11 = *&v34[9];
  v12 = (*&v34[11] - *&v34[9]) >> 3;
  if (v19[0] <= v12)
  {
    if (v19[0] < v12)
    {
      v10 = *&v34[9] + 8 * v19[0];
      *&v34[11] = v10;
    }
  }

  else
  {
    sub_2713D0F78(&v34[9], v19[0] - v12);
    v11 = *&v34[9];
    v10 = *&v34[11];
  }

  for (; v11 != v10; v11 = v13 + 4)
  {
    (*(*a1 + 104))(a1, v11);
    v13 = v11 + 4;
    (*(*a1 + 104))(a1, v13);
  }

  v19[0] = ((*&v34[19] - *&v34[17]) >> 3);
  (*(*a1 + 120))(a1, v19);
  v14 = *&v34[19];
  v15 = *&v34[17];
  v16 = (*&v34[19] - *&v34[17]) >> 3;
  if (v19[0] <= v16)
  {
    if (v19[0] < v16)
    {
      v14 = *&v34[17] + 8 * v19[0];
      *&v34[19] = v14;
    }
  }

  else
  {
    sub_2713D129C(&v34[17], v19[0] - v16);
    v15 = *&v34[17];
    v14 = *&v34[19];
  }

  for (; v15 != v14; v15 = v17 + 4)
  {
    (*(*a1 + 128))(a1, v15);
    v17 = v15 + 4;
    (*(*a1 + 128))(a1, v17);
  }

  sub_2713D80A4(a1, &v34[25]);
  if (a3 >= 2)
  {
    v39 = 0;
    (*(*a1 + 80))(a1, &v39);
    if (v39)
    {
      if ((v38 & 1) == 0)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 1;
      }

      LODWORD(v19[0]) = 1;
      (*(*a1 + 104))(a1, v19);
      (*(*a1 + 128))(a1, &v35);
      (*(*a1 + 128))(a1, &v35 + 4);
      (*(*a1 + 128))(a1, &v36);
      (*(*a1 + 128))(a1, &v36 + 4);
      (*(*a1 + 128))(a1, &v37);
      (*(*a1 + 128))(a1, &v37 + 4);
    }

    else if (v38)
    {
      v38 = 0;
    }
  }

  sub_2713D1524(v19, &v20);
  sub_2713D1670(a2, v19);
  sub_2713AE52C(v19);
  return sub_2713D1DB4(&v20);
}

void sub_2713D765C(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  sub_2713D7DD8(a1, a2);
  v22 = a2 + 32;
  sub_2713D7F2C(a1, &v22);
  sub_2713D7DD8(a1, (a2 + 40));
  v22 = a2 + 72;
  sub_2713D7F2C(a1, &v22);
  sub_2713D7DD8(a1, (a2 + 80));
  v22 = a2 + 112;
  sub_2713D7F2C(a1, &v22);
  v22 = *(a2 + 128) - *(a2 + 120);
  (*(*a1 + 120))(a1, &v22);
  v6 = *(a2 + 120);
  v7 = *(a2 + 128);
  if (v22 <= v7 - v6)
  {
    if (v22 < v7 - v6)
    {
      v7 = &v6[v22];
      *(a2 + 128) = &v6[v22];
    }
  }

  else
  {
    sub_271358BDC(a2 + 120, v22 - (v7 - v6));
    v6 = *(a2 + 120);
    v7 = *(a2 + 128);
  }

  for (; v6 != v7; ++v6)
  {
    (*(*a1 + 80))(a1, v6);
  }

  v22 = a2 + 152;
  sub_2713D7F2C(a1, &v22);
  v22 = *(a2 + 168) - *(a2 + 160);
  (*(*a1 + 120))(a1, &v22);
  v8 = *(a2 + 160);
  v9 = *(a2 + 168);
  if (v22 <= v9 - v8)
  {
    if (v22 < v9 - v8)
    {
      v9 = &v8[v22];
      *(a2 + 168) = &v8[v22];
    }
  }

  else
  {
    sub_271358BDC(a2 + 160, v22 - (v9 - v8));
    v8 = *(a2 + 160);
    v9 = *(a2 + 168);
  }

  for (; v8 != v9; ++v8)
  {
    (*(*a1 + 80))(a1, v8);
  }

  sub_2713D80A4(a1, (a2 + 192));
  v22 = (*(a2 + 232) - *(a2 + 224)) >> 3;
  (*(*a1 + 120))(a1, &v22);
  v10 = *(a2 + 224);
  v11 = *(a2 + 232);
  v12 = (v11 - v10) >> 3;
  if (v22 <= v12)
  {
    if (v22 < v12)
    {
      v11 = v10 + 8 * v22;
      *(a2 + 232) = v11;
    }
  }

  else
  {
    sub_2713D0F78(a2 + 224, v22 - v12);
    v10 = *(a2 + 224);
    v11 = *(a2 + 232);
  }

  for (; v10 != v11; v10 += 8)
  {
    (*(*a1 + 104))(a1, v10);
    (*(*a1 + 104))(a1, v10 + 4);
  }

  v22 = (*(a2 + 264) - *(a2 + 256)) >> 3;
  (*(*a1 + 120))(a1, &v22);
  v13 = *(a2 + 256);
  v14 = *(a2 + 264);
  v15 = (v14 - v13) >> 3;
  if (v22 <= v15)
  {
    if (v22 < v15)
    {
      v14 = v13 + 8 * v22;
      *(a2 + 264) = v14;
    }
  }

  else
  {
    sub_2713D129C(a2 + 256, v22 - v15);
    v13 = *(a2 + 256);
    v14 = *(a2 + 264);
  }

  for (; v13 != v14; v13 += 8)
  {
    (*(*a1 + 128))(a1, v13);
    (*(*a1 + 128))(a1, v13 + 4);
  }

  sub_2713D80A4(a1, (a2 + 288));
  if (a3 >= 2)
  {
    v21 = 0;
    (*(*a1 + 80))(a1, &v21);
    if (!v21)
    {
      if (*(a2 + 344))
      {
        *(a2 + 344) = 0;
      }

      goto LABEL_40;
    }

    if ((*(a2 + 344) & 1) == 0)
    {
      *(a2 + 320) = 0;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      *(a2 + 344) = 1;
    }

    v16 = a1[2];
    LODWORD(v22) = 2;
    (*(*a1 + 104))(a1, &v22);
    if (v16 >= 1)
    {
      if (v16 == 2)
      {
        if (v22 >= 2)
        {
          LODWORD(v22) = 2;
          (*(*a1 + 104))(a1, &v22);
          v17 = v22;
          if (v22 >= 3)
          {
            if ((atomic_load_explicit(&qword_28087B878, memory_order_acquire) & 1) == 0)
            {
              if (__cxa_guard_acquire(&qword_28087B878))
              {
                sub_2713D1420();
              }
            }

            sub_271847D5C(&stru_28087B888, v17, 2);
          }

          goto LABEL_38;
        }
      }

      else if (v22 > 1)
      {
LABEL_38:
        (*(*a1 + 16))(a1);
        (*(*a1 + 128))(a1, a2 + 320);
        (*(*a1 + 128))(a1, a2 + 324);
        (*(*a1 + 128))(a1, a2 + 328);
        (*(*a1 + 128))(a1, a2 + 332);
        (*(*a1 + 128))(a1, a2 + 336);
        (*(*a1 + 128))(a1, a2 + 340);
        (*(*a1 + 24))(a1);
        goto LABEL_40;
      }
    }

    sub_2713D81F8(a1, a2 + 320, v22);
LABEL_40:
    if (a3 >= 4)
    {
      v22 = a2 + 348;
      sub_2713D7F2C(a1, &v22);
      v22 = (*(a2 + 360) - *(a2 + 352)) >> 2;
      (*(*a1 + 120))(a1, &v22);
      v18 = *(a2 + 352);
      v19 = *(a2 + 360);
      v20 = (v19 - v18) >> 2;
      if (v22 <= v20)
      {
        if (v22 < v20)
        {
          v19 = v18 + 4 * v22;
          *(a2 + 360) = v19;
        }
      }

      else
      {
        sub_2713591A4(a2 + 352, v22 - v20);
        v18 = *(a2 + 352);
        v19 = *(a2 + 360);
      }

      for (; v18 != v19; v18 += 4)
      {
        (*(*a1 + 128))(a1, v18);
      }
    }
  }
}

void sub_2713D7DD8(uint64_t a1, uint64_t *a2)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  (*(*a1 + 120))(a1, &v7);
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 2);
  if (v7 <= v6)
  {
    if (v7 < v6)
    {
      v5 = v4 + 12 * v7;
      a2[1] = v5;
    }
  }

  else
  {
    sub_2713D06C0(a2, v7 - v6);
    v4 = *a2;
    v5 = a2[1];
  }

  for (; v4 != v5; v4 += 12)
  {
    (*(*a1 + 128))(a1, v4);
    (*(*a1 + 128))(a1, v4 + 4);
    (*(*a1 + 128))(a1, v4 + 8);
  }
}

void sub_2713D7F2C(_BYTE *a1, _DWORD **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LODWORD(__p[0]) = 0;
  (*(*a1 + 104))(a1, __p);
  **a2 = __p[0];
}

void sub_2713D8050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713D80A4(uint64_t a1, uint64_t *a2)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  (*(*a1 + 120))(a1, &v7);
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 2);
  if (v7 <= v6)
  {
    if (v7 < v6)
    {
      v5 = v4 + 12 * v7;
      a2[1] = v5;
    }
  }

  else
  {
    sub_2713D0BEC(a2, v7 - v6);
    v4 = *a2;
    v5 = a2[1];
  }

  for (; v4 != v5; v4 += 12)
  {
    (*(*a1 + 104))(a1, v4);
    (*(*a1 + 104))(a1, v4 + 4);
    (*(*a1 + 104))(a1, v4 + 8);
  }
}

__n64 sub_2713D81F8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    memset(v9, 0, 24);
    (*(*a1 + 128))(a1, v9);
    (*(*a1 + 128))(a1, v9 + 4);
    (*(*a1 + 128))(a1, v9 + 8);
    (*(*a1 + 128))(a1, v9 | 0xC);
    (*(*a1 + 128))(a1, &v9[1]);
    (*(*a1 + 128))(a1, &v9[1] + 4);
    v7 = v9[0];
    v8 = *(v9 + 12);
    HIDWORD(v7) = HIDWORD(v9[0]);
    *a2 = v7;
    result.n64_u32[0] = vdup_lane_s32(v8, 1).u32[0];
    result.n64_u32[1] = DWORD1(v9[1]);
    *(a2 + 16) = result;
  }

  else
  {
    (*(*a1 + 128))(a1, a2);
    (*(*a1 + 128))(a1, a2 + 4);
    (*(*a1 + 128))(a1, a2 + 8);
    (*(*a1 + 128))(a1, a2 + 12);
    (*(*a1 + 128))(a1, a2 + 16);
    v5 = *(*a1 + 128);

    v5(a1, a2 + 20);
  }

  return result;
}

void sub_2713D8494(void *a1, uint64_t *a2, _OWORD *a3)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_2713D85C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9, a2, a3, a4, a5, a6, a7, a8);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2713D8600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2713D8648(v10);
  MEMORY[0x2743BF050](v9, 0x10B3C406BFE9A7DLL);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713D8648(void *result)
{
  *result = &unk_288130DD0;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

BOOL sub_2713D86DC(void *a1, uint64_t *a2)
{
  v22[0] = a1;
  v22[1] = a1 + 4;
  v22[2] = a1 + 5;
  v22[3] = a1 + 9;
  v22[4] = a1 + 10;
  v22[5] = a1 + 14;
  v22[6] = a1 + 15;
  v22[7] = a1 + 19;
  v22[8] = a1 + 20;
  v22[9] = a1 + 24;
  v22[10] = a1 + 28;
  v22[11] = a1 + 32;
  v22[12] = a1 + 36;
  v23 = (a1 + 40);
  v24 = a1 + 87;
  v25 = a1 + 44;
  v18[0] = a2;
  v18[1] = a2 + 4;
  v18[2] = a2 + 5;
  v18[3] = a2 + 9;
  v18[4] = a2 + 10;
  v18[5] = a2 + 14;
  v18[6] = a2 + 15;
  v18[7] = a2 + 19;
  v18[8] = a2 + 20;
  v18[9] = a2 + 24;
  v18[10] = a2 + 28;
  v18[11] = a2 + 32;
  v18[12] = a2 + 36;
  v19 = a2 + 40;
  v20 = a2 + 87;
  v21 = a2 + 44;
  if (!sub_2713D88EC(&v26, v22, v18))
  {
    return 0;
  }

  v2 = *(v23 + 24);
  v3 = v2 == *(v19 + 24);
  if (v2 == *(v19 + 24) && *(v23 + 24))
  {
    v4 = *v23 == *v19;
    if (*v23 == *v19)
    {
      v5 = v23[1];
      v6 = *(v19 + 1);
      v4 = v5 == v6;
      if (v5 == v6)
      {
        v4 = v23[2] == *(v19 + 2);
      }
    }

    if (!v4)
    {
      return 0;
    }

    v7 = v23[3];
    v8 = *(v19 + 3);
    v3 = v7 == v8;
    if (v7 == v8)
    {
      v9 = v23[4];
      v10 = *(v19 + 4);
      v3 = v9 == v10;
      if (v9 == v10)
      {
        v3 = v23[5] == *(v19 + 5);
      }
    }
  }

  if (!v3)
  {
    return 0;
  }

  if (*v24 != *v20)
  {
    return 0;
  }

  v12 = *v25;
  v11 = v25[1];
  v13 = *v21;
  if (v11 - *v25 != v21[1] - *v21)
  {
    return 0;
  }

  if (v12 == v11)
  {
    return 1;
  }

  v14 = v12 + 4;
  do
  {
    v15 = *v13++;
    result = *(v14 - 4) == v15;
    v17 = *(v14 - 4) != v15 || v14 == v11;
    v14 += 4;
  }

  while (!v17);
  return result;
}

BOOL sub_2713D88EC(uint64_t a1, void **a2, uint64_t **a3)
{
  if (!sub_2713D8A60(&v20, a2, a3))
  {
    return 0;
  }

  v6 = *a2[10];
  v5 = a2[10][1];
  v7 = *a3[10];
  if (v5 - v6 != a3[10][1] - v7)
  {
    return 0;
  }

  if (v6 != v5)
  {
    while (*v6 == *v7)
    {
      v6 += 8;
      ++v7;
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v9 = *a2[11];
  v8 = a2[11][1];
  v10 = *a3[11];
  if (v8 - v9 != a3[11][1] - v10)
  {
    return 0;
  }

  if (v9 != v8)
  {
    v11 = (v10 + 4);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v9 == v12;
      if (*v9 == v12)
      {
        v13 = v9[1] == *v11;
      }

      if (!v13)
      {
        return 0;
      }

      v9 += 2;
      v11 += 2;
    }

    while (v9 != v8);
  }

  v15 = *a2[12];
  v14 = a2[12][1];
  v16 = *a3[12];
  if (v14 - v15 != a3[12][1] - v16)
  {
    return 0;
  }

  if (v15 == v14)
  {
    return 1;
  }

  do
  {
    v17 = *v15 ^ *v16 | (*(v15 + 8) ^ *(v16 + 8));
    result = v17 == 0;
    v15 += 12;
    v16 += 12;
    if (v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = v15 == v14;
    }
  }

  while (!v19);
  return result;
}

BOOL sub_2713D8A60(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = **a2;
  v3 = *(*a2 + 8);
  v5 = **a3;
  if (v3 - v4 != (*a3)[1] - v5)
  {
    return 0;
  }

  if (v4 != v3)
  {
    v6 = (v5 + 4);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v4 == v7;
      if (*v4 == v7)
      {
        v9 = v4[1];
        v8 = v9 == *v6;
        if (v9 == *v6)
        {
          v8 = v4[2] == v6[1];
        }
      }

      if (!v8)
      {
        return 0;
      }

      v4 += 3;
      v6 += 3;
    }

    while (v4 != v3);
  }

  if (**(a2 + 8) != *a3[1])
  {
    return 0;
  }

  v11 = **(a2 + 16);
  v10 = *(*(a2 + 16) + 8);
  v12 = *a3[2];
  if (v10 - v11 != a3[2][1] - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    v13 = (v12 + 4);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v11 == v14;
      if (*v11 == v14)
      {
        v16 = v11[1];
        v15 = v16 == *v13;
        if (v16 == *v13)
        {
          v15 = v11[2] == v13[1];
        }
      }

      if (!v15)
      {
        return 0;
      }

      v11 += 3;
      v13 += 3;
    }

    while (v11 != v10);
  }

  if (**(a2 + 24) != *a3[3])
  {
    return 0;
  }

  v18 = **(a2 + 32);
  v17 = *(*(a2 + 32) + 8);
  v19 = *a3[4];
  if (v17 - v18 != a3[4][1] - v19)
  {
    return 0;
  }

  if (v18 != v17)
  {
    v20 = (v19 + 4);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v18 == v21;
      if (*v18 == v21)
      {
        v23 = v18[1];
        v22 = v23 == *v20;
        if (v23 == *v20)
        {
          v22 = v18[2] == v20[1];
        }
      }

      if (!v22)
      {
        return 0;
      }

      v18 += 3;
      v20 += 3;
    }

    while (v18 != v17);
  }

  if (**(a2 + 40) != *a3[5])
  {
    return 0;
  }

  v24 = *(a2 + 48);
  v25 = *v24;
  v26 = *(v24 + 8) - *v24;
  if (v26 != a3[6][1] - *a3[6])
  {
    return 0;
  }

  if (memcmp(v25, *a3[6], v26))
  {
    return 0;
  }

  if (**(a2 + 56) != *a3[7])
  {
    return 0;
  }

  v29 = *(a2 + 64);
  v30 = a3[8];
  v31 = *(v29 + 8) - *v29;
  if (v31 != v30[1] - *v30)
  {
    return 0;
  }

  if (memcmp(*v29, *v30, v31))
  {
    return 0;
  }

  v33 = **(a2 + 72);
  v32 = *(*(a2 + 72) + 8);
  v34 = *a3[9];
  if (v32 - v33 != a3[9][1] - v34)
  {
    return 0;
  }

  if (v33 == v32)
  {
    return 1;
  }

  do
  {
    v35 = *v33 ^ *v34 | (*(v33 + 8) ^ *(v34 + 8));
    result = v35 == 0;
    v33 += 12;
    v34 += 12;
    if (v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = v33 == v32;
    }
  }

  while (!v37);
  return result;
}

void sub_2713D8D2C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "info";
    *(a1 + 80) = 4;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 6;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 6;
    v11 = sub_2718289B0(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CC40C(&v14, v12);
  }

  sub_2713B29CC(a1, a2 + 16, 6);
}

void sub_2713D8F50(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    i = (v6 + 16);
    sub_2718460EC(&i, 6u);
  }

  else
  {
    sub_27184636C(&i, (v6 + 8), 6u);
  }

  sub_271840ADC(*(a1 + 24));
  sub_2713B5730(a1, a2 + 16, 6);
  v7 = *(a1 + 24);
  v8 = *(*(v7 + 88) - 8);
  sub_2718404E0((v7 + 48), *(v7 + 16) - v8 - 9);
  v9 = *(v7 + 48);
  if (v9)
  {
    memmove((*(v7 + 24) + v8), *(v7 + 56), v9);
  }

  *(v7 + 48) = 0;
  v10 = *(v7 + 80);
  v11 = *(v7 + 88) - 8;
  *(v7 + 88) = v11;
  if (v10 == v11)
  {
    std::ostream::write();
    if (*(v7 + 40) == 1)
    {
      free(*(v7 + 24));
      *(v7 + 40) = 0;
    }
  }

  sub_2713CB048(&i, a1, a2 + 192);
  if (a3 >= 3)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    v13 = *(a1 + 24);
    if (*(v13 + 40) == 1)
    {
      i = (v13 + 16);
      sub_271846AEC(&i, v12);
      v14 = *(a2 + 576);
      v15 = *(a2 + 584);
      v16 = *(a1 + 24);
      if (*(v16 + 40) != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_271846E00((v13 + 8), v12);
      v14 = *(a2 + 576);
      v15 = *(a2 + 584);
      v16 = *(a1 + 24);
      if (*(v16 + 40) != 1)
      {
LABEL_12:
        while (v14 != v15)
        {
          sub_271847654((v16 + 8), v14);
          v14 += 3;
        }

        return;
      }
    }

    for (i = (v16 + 16); v14 != v15; v14 += 3)
    {
      sub_271847238(&i, v14);
    }
  }
}

void sub_2713D912C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "info";
    *(a1 + 80) = 4;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 6;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 6;
    v11 = sub_27182815C(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CA870(&v14, v12);
  }

  sub_2713B6988(a1, a2 + 16, 6);
}

void sub_2713D9350(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_271120E64(v6, v20, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 6);
  ++*(a1 + 40);
  sub_2713B8244(a1, a2 + 16, 6);
  v7 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v8 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_271120E64(v8, v20, 1);
  }

  v9 = *(a1 + 24);
  LOBYTE(v20[0]) = v7;
  sub_271120E64(v9, v20, 1);
  v10 = *(a1 + 40);
  *(a1 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_271120E64(v11, v20, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 4);
  ++*(a1 + 40);
  sub_2713C9DA4(v20, a2 + 192);
  sub_2713CD23C(a1, v20, 4u);
  sub_2713AE52C(v20);
  v12 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v13 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_271120E64(v13, v20, 1);
  }

  v14 = *(a1 + 24);
  LOBYTE(v20[0]) = v12;
  sub_271120E64(v14, v20, 1);
  v15 = *(a1 + 40) + 1;
  *(a1 + 40) = v15;
  if (a3 >= 3)
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    if (v15)
    {
      v17 = *(a1 + 24);
      LOBYTE(v20[0]) = *(a1 + 32);
      sub_271120E64(v17, v20, 1);
    }

    MEMORY[0x2743BE850](*(a1 + 24), v16);
    ++*(a1 + 40);
    v18 = *(a2 + 576);
    for (i = *(a2 + 584); v18 != i; v18 += 24)
    {
      sub_271839128(a1, v18);
    }
  }
}

uint64_t *sub_2713D954C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__src) = 6;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  v6 = __src;
  sub_2717312C0(a1);
  sub_2713B93E0(a1, a2 + 16, v6);
  v7 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v7 + 10) = *(a1 + 32) - v7 - 18;
  *(a1 + 56) -= 8;
  result = sub_2713CE060(&__src, a1, a2 + 192);
  if (a3 >= 3)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    result = sub_27173318C((a1 + 24), *(a1 + 32), &v15, &__src, 8);
    v9 = *(a2 + 576);
    for (i = *(a2 + 584); v9 != i; v9 += 24)
    {
      v11 = *(v9 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v9 + 8);
      }

      __src = v11;
      sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v17, 8);
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = v9;
      }

      else
      {
        v13 = *v9;
      }

      if (v12 >= 0)
      {
        v14 = *(v9 + 23);
      }

      else
      {
        v14 = *(v9 + 8);
      }

      result = sub_27173318C((a1 + 24), *(a1 + 32), v13, &v13[v14], v14);
    }
  }

  return result;
}

uint64_t *sub_2713D96B8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = a1[2];
  LODWORD(v11) = 6;
  (*(*a1 + 104))(a1, &v11);
  v7 = v11;
  if (v6 < 1)
  {
    sub_2713B9F84(a1, a2 + 16, v11);
    result = sub_2713CE684(a1, a2 + 192);
    if (a3 < 3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {
    LODWORD(v11) = 3;
    (*(*a1 + 104))(a1, &v11);
  }

  (*(*a1 + 16))(a1);
  sub_2713B9F84(a1, a2 + 16, v7);
  (*(*a1 + 24))(a1);
  result = sub_2713CE684(a1, a2 + 192);
  if (a3 >= 3)
  {
LABEL_7:
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    result = (*(*a1 + 120))(a1, &v11);
    v9 = *(a2 + 576);
    for (i = *(a2 + 584); v9 != i; v9 += 24)
    {
      result = (*(*a1 + 144))(a1, v9);
    }
  }

  return result;
}

void sub_2713D98A4(void **a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  *v10 = a1[1];
  v11 = 6;
  v6[13](a1, &v11);
  if (v10[0] < 1)
  {
    if (v11 < 3)
    {
      sub_2713C66D4(&v11, a1, a2 + 16, v11);
    }

    else
    {
      sub_2713C68E0(a1, a2 + 16, v11);
    }
  }

  else
  {
    sub_2713C62C8(v10, a1, a2 + 16, v11);
  }

  v7 = *a1;
  *v10 = a1[1];
  v8 = v10[0];
  v11 = 4;
  v7[13](a1, &v11);
  if (v8 >= 1)
  {
    sub_2713D6B80(v10, a1, (a2 + 192), v11);
    if (a3 < 3)
    {
      return;
    }

    goto LABEL_13;
  }

  v9 = (a2 + 192);
  if (v11 < 3)
  {
    sub_2713D6F44(a1, v9, v11);
    if (a3 < 3)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_2713D765C(a1, v9, v11);
  if (a3 >= 3)
  {
LABEL_13:
    sub_2713C774C(a1, (a2 + 576));
  }
}

uint64_t sub_2713D99F8(uint64_t a1, uint64_t a2, float *a3)
{
  v10 = a2;
  v11 = "{";
  v12 = a2;
  v13 = "{";
  v14 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1 || (v15 = &v10, (*(&off_2881319B8 + v3))(&v15), sub_2711CDE78(&v10, a2, a3), v10 = a2, v11 = ",", v12 = a2, v13 = ",", v14 = ",", v6 = *(a2 + 24), v6 == -1) || (v15 = &v10, (*(&off_2881319B8 + v6))(&v15, a2), sub_2711CDE78(&v10, a2, a3 + 1), v10 = a2, v11 = ",", v12 = a2, v13 = ",", v14 = ",", v7 = *(a2 + 24), v7 == -1) || (v15 = &v10, (*(&off_2881319B8 + v7))(&v15, a2), sub_2711CDE78(&v10, a2, a3 + 2), v10 = a2, v11 = "}", v12 = a2, v13 = "}", v14 = "}", v8 = *(a2 + 24), v8 == -1))
  {
    sub_2711308D4();
  }

  v15 = &v10;
  return (*(&off_2881319B8 + v8))(&v15, a2);
}

uint64_t sub_2713D9B44(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881319B8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v19 = &v14;
  (off_288131928[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881319B8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_288131928[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_2711308D4();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_2881319B8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_2711308D4();
  }

  v19 = &v14;
  (off_288131928[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_2881319B8 + v11))(&v13, a2);
}

void sub_2713D9D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713D9D88(uint64_t a1, uint64_t a2, float *a3)
{
  v9 = a2;
  v10 = "{";
  v11 = a2;
  v12 = "{";
  v13 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1 || (v14 = &v9, (*(&off_2881319B8 + v3))(&v14), sub_2711CDE78(&v9, a2, a3), v9 = a2, v10 = ",", v11 = a2, v12 = ",", v13 = ",", v6 = *(a2 + 24), v6 == -1) || (v14 = &v9, (*(&off_2881319B8 + v6))(&v14, a2), sub_2711CDE78(&v9, a2, a3 + 1), v9 = a2, v10 = "}", v11 = a2, v12 = "}", v13 = "}", v7 = *(a2 + 24), v7 == -1))
  {
    sub_2711308D4();
  }

  v14 = &v9;
  return (*(&off_2881319B8 + v7))(&v14, a2);
}

void sub_2713D9E8C(uint64_t a1, void **a2, float *a3)
{
  std::to_string(&v19, *a3);
  v5 = v19.__r_.__value_.__r.__words[0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = size;
  do
  {
    if (!v8)
    {
      v8 = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (v8 != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_16;
      }

LABEL_15:
      sub_271120E64(*a2, v6, size);
LABEL_46:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_49;
    }

    v9 = v6->__r_.__value_.__s.__data_[--v8];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v8 == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (strtof(v5, 0) != *a3)
  {
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v19;
    }

    else
    {
      v6 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    goto LABEL_15;
  }

  v10 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v19;
  }

  else
  {
    v11 = v19.__r_.__value_.__r.__words[0];
  }

  v12 = 1;
  if (v11->__r_.__value_.__s.__data_[v8] == 46)
  {
    v12 = 2;
  }

  v13 = v12 + v8;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v19.__r_.__value_.__l.__size_;
  }

  if (v10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  v18 = v14;
  if (v14)
  {
    memmove(__p, v11, v14);
  }

  *(__p + v14) = 0;
  if ((v18 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v16 = v18;
  }

  else
  {
    v16 = __p[1];
  }

  sub_271120E64(*a2, v15, v16);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_49:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_2713DA094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_2713DA100(void *a1, char *a2, _OWORD *a3)
{
  v3[33] = *MEMORY[0x277D85DE8];
  sub_27135D80C(v3, a2, a3);
  v3[0] = &unk_28812E6D0;
  operator new();
}

void sub_2713DA33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9, a2, a3, a4, a5, a6, a7, a8);
  sub_2713DA3BC(&a9);
  _Unwind_Resume(a1);
}

void sub_2713DA378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2743BF050](v9, 0x10B3C404AAF6798, a3, a4, a5, a6, a7, a8);
  sub_2713DA3BC(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713DA3BC(void *a1)
{
  *a1 = &unk_28812E748;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812E790;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2713DA430@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = (a2 + 16);
  *(a2 + 40) = 0;
  if (*(result + 48) == 1)
  {
    if (*(result + 47) < 0)
    {
      result = sub_271127178(v5, *(result + 24), *(result + 32));
    }

    else
    {
      *v5 = *(result + 24);
      *(a2 + 32) = *(result + 40);
    }

    *(a2 + 40) = 1;
  }

  if (*(v2 + 72) == 1)
  {
    v6 = *(v2 + 64);
    *(a2 + 48) = *(v2 + 56);
    *(a2 + 56) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 72) = 0;
  *(a2 + 64) = v7;
  *(a2 + 96) = 0;
  if (*(v2 + 104) == 1)
  {
    if (*(v2 + 103) < 0)
    {
      result = sub_271127178((a2 + 72), *(v2 + 80), *(v2 + 88));
    }

    else
    {
      *(a2 + 72) = *(v2 + 80);
      *(a2 + 88) = *(v2 + 96);
    }

    *(a2 + 96) = 1;
  }

  if (*(v2 + 136))
  {
    if (*(v2 + 135) < 0)
    {
      result = sub_271127178(v13, *(v2 + 112), *(v2 + 120));
    }

    else
    {
      *v13 = *(v2 + 112);
      *&v13[16] = *(v2 + 128);
    }

    *&v14[7] = *&v13[15];
    *v14 = *&v13[8];
    v11 = v13[23];
    v12 = *&v13[8];
    *(a2 + 112) = *v13;
    *(a2 + 120) = v12;
    *(a2 + 127) = *&v14[7];
    *(a2 + 135) = v11;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    if (*(v2 + 168) != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    *(a2 + 160) = 0;
    if (*(v2 + 168) != 1)
    {
LABEL_21:
      v10 = 0;
      *(a2 + 176) = 0;
      goto LABEL_22;
    }
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 152) - *(v2 + 144)) >> 3);
  memset(v13, 0, sizeof(v13));
  sub_27139E20C(v13, v8);
  result = sub_27139E2F4(*(v2 + 144), *(v2 + 152), v13, sub_2714FB29C);
  v9 = *&v13[16];
  *(a2 + 176) = *v13;
  *(a2 + 192) = v9;
  v10 = 1;
LABEL_22:
  *(a2 + 200) = v10;
  return result;
}

void sub_2713DA64C(_Unwind_Exception *exception_object)
{
  if (v1[96] == 1 && v1[95] < 0)
  {
    operator delete(*v3);
  }

  if (v1[40] == 1 && v1[39] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DA6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *MEMORY[0x277D85DE8];
  sub_2713DAD58(v5, a2);
  sub_2713DA7FC(a1, v5, v3);
}

void sub_2713DA7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DA7FC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 2;
    v11 = sub_2718289B0(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CC40C(&v14, v12);
  }

  sub_2713B337C(a1, (a2 + 8));
}

uint64_t sub_2713DAD58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = 1;
  }

  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      sub_271127178((a1 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v8;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178((a1 + 112), *(a2 + 112), *(a2 + 120));
    }

    else
    {
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v9;
    }

    *(a1 + 136) = 1;
  }

  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    sub_2713B3234((a1 + 144), (a2 + 144));
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_2713DAEAC(_Unwind_Exception *exception_object)
{
  if (v2[136] == 1 && v2[135] < 0)
  {
    operator delete(*v4);
  }

  if (v2[104] == 1 && v2[103] < 0)
  {
    operator delete(*v3);
  }

  if (v2[48] == 1 && v2[47] < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DAF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *MEMORY[0x277D85DE8];
  sub_2713DB358(v5, a2);
  sub_2713DB064(a1, v5, v3);
}

void sub_2713DB04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DB064(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 2;
    v11 = sub_2718289B0(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CC40C(&v14, v12);
  }

  sub_2713B337C(a1, (a2 + 8));
}

uint64_t sub_2713DB358(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = 1;
  }

  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      sub_271127178((a1 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v8;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178((a1 + 112), *(a2 + 112), *(a2 + 120));
    }

    else
    {
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v9;
    }

    *(a1 + 136) = 1;
  }

  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    sub_2713B3234((a1 + 144), (a2 + 144));
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_2713DB4AC(_Unwind_Exception *exception_object)
{
  if (v2[136] == 1 && v2[135] < 0)
  {
    operator delete(*v4);
  }

  if (v2[104] == 1 && v2[103] < 0)
  {
    operator delete(*v3);
  }

  if (v2[48] == 1 && v2[47] < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DB534(uint64_t a1, uint64_t a2)
{
  v4[0] = *a2;
  v4[8] = *(a2 + 8);
  v6 = 0;
  v7 = 0;
  __p = 0;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v8[0] = "value_type";
  v8[1] = 10;
  v8[2] = v4;
  sub_2713DB624(a1, v8);
}

void sub_2713DB608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DB624(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v5 = 0;
  sub_2711E6DB4(&v6, v4, v3);
}

void sub_2713DB71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DB738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713DB74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713DB760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v4 = *sub_271835268(a2 + 8);
        if (**(a3 + 40) >= 2u)
        {
          if ((*(a3 + 88) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v11 = *(a3 + 88);
          *(a3 + 72) = "number";
          *(a3 + 80) = 6;
          if ((v11 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        if (*(a3 + 80) != 7)
        {
          goto LABEL_94;
        }

        v28 = *(a3 + 72);
        v29 = *v28;
        v30 = *(v28 + 3);
        if (v29 != *"version" || v30 != *"sion")
        {
          goto LABEL_94;
        }

        return;
      }

      v4 = *sub_271835358(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v9 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v9 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v20 = *(a3 + 72);
      v21 = *v20;
      v22 = *(v20 + 3);
      if (v21 != *"version" || v22 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 == 8)
    {
      v4 = *sub_271835448(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v13 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v13 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v36 = *(a3 + 72);
      v37 = *v36;
      v38 = *(v36 + 3);
      if (v37 != *"version" || v38 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_43;
      }

      v60 = *sub_271835628(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v6 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v6 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v46 = *(a3 + 72);
        v47 = *v46;
        v48 = *(v46 + 3);
        if (v47 == *"version" && v48 == *"sion")
        {
          return;
        }
      }

LABEL_101:
      sub_27182AFE4(a3, &v60);
      return;
    }

    LODWORD(v60) = *sub_271835538(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v15 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v15 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v56 = *(a3 + 72);
      v57 = *v56;
      v58 = *(v56 + 3);
      if (v57 == *"version" && v58 == *"sion")
      {
        return;
      }
    }

LABEL_117:
    sub_27182ADE0(a3, &v60);
    return;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = *sub_271834C28(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v10 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v10 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v24 = *(a3 + 72);
        v25 = *v24;
        v26 = *(v24 + 3);
        if (v25 == *"version" && v26 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

    if (a1 == 1)
    {
      v7 = *sub_271834EA8(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v8 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v8 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v16 = *(a3 + 72);
        v17 = *v16;
        v18 = *(v16 + 3);
        if (v17 == *"version" && v18 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

LABEL_43:

    sub_27183428C(a1);
  }

  if (a1 == 2)
  {
    v7 = *sub_271834F98(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v12 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v12 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v32 = *(a3 + 72);
      v33 = *v32;
      v34 = *(v32 + 3);
      if (v33 == *"version" && v34 == *"sion")
      {
        *(a3 + 96) = v7;
        *(a3 + 100) = 1;
        *(a3 + 88) = 0;
        return;
      }
    }

    goto LABEL_109;
  }

  if (a1 == 3)
  {
    v7 = *sub_271835088(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v14 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v14 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v50 = *(a3 + 72);
      v51 = *v50;
      v52 = *(v50 + 3);
      if (v51 == *"version" && v52 == *"sion")
      {
        return;
      }
    }

LABEL_109:
    v44 = 6;
    LOBYTE(v60) = 6;
    v61 = v7;
    v45 = sub_2718289B0(a3);
    goto LABEL_110;
  }

  if (a1 != 5)
  {
    goto LABEL_43;
  }

  v4 = *sub_271835178(a2 + 8);
  if (**(a3 + 40) >= 2u)
  {
    if (*(a3 + 88))
    {
      goto LABEL_89;
    }

LABEL_94:
    v44 = 5;
    LOBYTE(v60) = 5;
    v61 = v4;
    v45 = sub_2718289B0(a3);
LABEL_110:
    v54 = *v45;
    *v45 = v44;
    LOBYTE(v60) = v54;
    v55 = v45[1];
    v45[1] = v61;
    v61 = v55;
    sub_2715CC40C(&v61, v54);
    return;
  }

  v5 = *(a3 + 88);
  *(a3 + 72) = "number";
  *(a3 + 80) = 6;
  if ((v5 & 1) == 0)
  {
    *(a3 + 88) = 1;
  }

LABEL_89:
  if (*(a3 + 80) != 7)
  {
    goto LABEL_94;
  }

  v40 = *(a3 + 72);
  v41 = *v40;
  v42 = *(v40 + 3);
  if (v41 != *"version" || v42 != *"sion")
  {
    goto LABEL_94;
  }
}

void sub_2713DBEE0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DAD58(v9, a2);
  sub_2713B5860(a1, v9, a3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DBFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DC010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DB358(v9, a2);
  sub_2713DC140(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DC128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713DC140(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v19[0] = (v6 + 16);
    sub_2718460EC(v19, 2u);
    sub_271840ADC(*(a1 + 24));
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v19[0] = (v7 + 16);
    sub_271846460(v19, *(a2 + 8));
    v8 = *(a2 + 16);
    v20 = *(a2 + 16);
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v19[0] = (v9 + 16);
    sub_2718454CC(v19, &v20);
    goto LABEL_11;
  }

  sub_27184636C(v19, (v6 + 8), 2u);
  sub_271840ADC(*(a1 + 24));
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_2718469A8((v7 + 8), *(a2 + 8));
  v8 = *(a2 + 16);
  v20 = *(a2 + 16);
  v9 = *(a1 + 24);
  if (*(v9 + 40) == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8 < 0)
  {
    LOBYTE(v19[0]) = -52;
    BYTE1(v19[0]) = v8;
  }

  else
  {
    LOBYTE(v19[0]) = v8;
  }

  std::ostream::write();
LABEL_11:
  v10 = *(a1 + 24);
  v11 = *(*(v10 + 88) - 8);
  sub_2718404E0((v10 + 48), *(v10 + 16) - v11 - 9);
  v12 = *(v10 + 48);
  if (v12)
  {
    memmove((*(v10 + 24) + v11), *(v10 + 56), v12);
  }

  *(v10 + 48) = 0;
  v13 = *(v10 + 80);
  v14 = *(v10 + 88) - 8;
  *(v10 + 88) = v14;
  if (v13 == v14)
  {
    std::ostream::write();
    if (*(v10 + 40) == 1)
    {
      free(*(v10 + 24));
      *(v10 + 40) = 0;
    }
  }

  if (*(a2 + 48) == 1)
  {
    v20 = 1;
    v15 = *(a1 + 24);
    if (*(v15 + 40) == 1)
    {
      v19[0] = (v15 + 16);
      sub_2718454CC(v19, &v20);
      v16 = *(a1 + 24);
      if (*(v16 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v19[0]) = 1;
      std::ostream::write();
      v16 = *(a1 + 24);
      if (*(v16 + 40) != 1)
      {
LABEL_19:
        result = sub_271847654((v16 + 8), (a2 + 24));
        if (a3 < 4)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    v19[0] = (v16 + 16);
    result = sub_271847238(v19, (a2 + 24));
    if (a3 >= 4)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v20 = 0;
    v18 = *(a1 + 24);
    if (*(v18 + 40) != 1)
    {
      LOBYTE(v19[0]) = 0;
      result = std::ostream::write();
      if (a3 < 4)
      {
        return result;
      }

      goto LABEL_28;
    }

    v19[0] = (v18 + 16);
    result = sub_2718454CC(v19, &v20);
    if (a3 >= 4)
    {
LABEL_28:
      v19[0] = "custom_timestamp";
      v19[1] = 16;
      v19[2] = (a2 + 56);
      return sub_2713B5F50(a1, v19);
    }
  }

  return result;
}

void sub_2713DC40C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v7[0] = *a2;
  v7[8] = a2[8];
  v9 = 0;
  v10 = 0;
  __p = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v11 = v3;
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v12 = (v6 + 16);
    sub_2718454CC(&v12, &v11);
  }

  else
  {
    if ((v3 & 0x80) != 0)
    {
      LOBYTE(v12) = -52;
      BYTE1(v12) = v3;
    }

    else
    {
      LOBYTE(v12) = v3;
    }

    std::ostream::write();
  }

  sub_2713DC544(v3, v7, a1);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_2713DC528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2713DC544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v16 = *sub_271835268(a2 + 8);
        v17 = *(a3 + 24);
        if (*(v17 + 40) == 1)
        {
          *v29 = v17 + 16;
          return sub_27184561C(v29, v16);
        }

        else
        {

          return sub_2718458EC((v17 + 8), v16);
        }
      }

      else
      {
        v12 = *sub_271835358(a2 + 8);
        v13 = *(a3 + 24);
        if (*(v13 + 40) == 1)
        {
          *v29 = v13 + 16;
          return sub_271845BC4(v29, v12);
        }

        else
        {

          return sub_271845FEC((v13 + 8), v12);
        }
      }
    }

    else
    {
      if (a1 != 8)
      {
        if (a1 == 11)
        {
          v24 = *sub_271835538(a2 + 8);
          LODWORD(v27) = v24;
          v25 = *(a3 + 24);
          if (*(v25 + 40) == 1)
          {
            *v29 = v25 + 16;
            return sub_271846EFC(&v28, v29, &v27);
          }

          v29[0] = -54;
          *&v29[1] = bswap32(v24);
          return std::ostream::write();
        }

        if (a1 == 12)
        {
          v8 = *sub_271835628(a2 + 8);
          v27 = v8;
          v9 = *(a3 + 24);
          if (*(v9 + 40) == 1)
          {
            *v29 = v9 + 16;
            return sub_271846FE4(&v28, v29, &v27);
          }

          v29[0] = -53;
          *&v29[1] = bswap64(v8);
          return std::ostream::write();
        }

        goto LABEL_33;
      }

      v20 = *sub_271835448(a2 + 8);
      v21 = *(a3 + 24);
      if (*(v21 + 40) == 1)
      {
        *v29 = v21 + 16;
        return sub_271846460(v29, v20);
      }

      else
      {

        return sub_2718469A8((v21 + 8), v20);
      }
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          goto LABEL_33;
        }

        v10 = sub_271834EA8(a2 + 8);
        v5 = *v10;
        LOWORD(v27) = *v10;
        v11 = *(a3 + 24);
        if (*(v11 + 40) == 1)
        {
          *v29 = v11 + 16;
          return sub_2718459EC(v29, &v27);
        }

        if (v5 <= 0x7F)
        {
          goto LABEL_54;
        }

        if (v5 > 0xFF)
        {
          v29[0] = -51;
          *&v29[1] = __rev16(v5);
          return std::ostream::write();
        }
      }

      else
      {
        v14 = sub_271834C28(a2 + 8);
        v5 = *v14;
        LOBYTE(v27) = *v14;
        v15 = *(a3 + 24);
        if (*(v15 + 40) == 1)
        {
          *v29 = v15 + 16;
          return sub_2718454CC(v29, &v27);
        }

        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_54;
        }
      }

      v26 = -52;
LABEL_53:
      v29[0] = v26;
      v29[1] = v5;
      return std::ostream::write();
    }

    switch(a1)
    {
      case 2:
        v18 = *sub_271834F98(a2 + 8);
        v19 = *(a3 + 24);
        if (*(v19 + 40) == 1)
        {
          *v29 = v19 + 16;
          return sub_2718460EC(v29, v18);
        }

        else
        {
          return sub_27184636C(v29, (v19 + 8), v18);
        }

      case 3:
        v22 = *sub_271835088(a2 + 8);
        v23 = *(a3 + 24);
        if (*(v23 + 40) == 1)
        {
          *v29 = v23 + 16;
          return sub_271846AEC(v29, v22);
        }

        else
        {

          return sub_271846E00((v23 + 8), v22);
        }

      case 5:
        v4 = sub_271835178(a2 + 8);
        v5 = *v4;
        LOBYTE(v27) = *v4;
        v6 = *(a3 + 24);
        if (*(v6 + 40) == 1)
        {
          *v29 = v6 + 16;
          return sub_271845378(v29, &v27);
        }

        if (v5 <= -33)
        {
          v26 = -48;
          goto LABEL_53;
        }

LABEL_54:
        v29[0] = v5;
        return std::ostream::write();
      default:
LABEL_33:

        sub_27183428C(a1);
    }
  }
}

void sub_2713DCA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *MEMORY[0x277D85DE8];
  sub_2713DAD58(v5, a2);
  sub_2713DCB34(a1, v5, v3);
}

void sub_2713DCB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DCB34(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 2;
    v11 = sub_27182815C(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CA870(&v14, v12);
  }

  sub_2713B7014(a1, (a2 + 8));
}

void sub_2713DD090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *MEMORY[0x277D85DE8];
  sub_2713DB358(v5, a2);
  sub_2713DD1C0(a1, v5, v3);
}

void sub_2713DD1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DD1C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 40) <= 1u)
  {
    v5 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v5 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v14 = 2;
    v11 = sub_27182815C(a1);
    v12 = *v11;
    *v11 = 6;
    v13 = v11[1];
    v11[1] = v14;
    v14 = v13;
    sub_2715CA870(&v14, v12);
  }

  sub_2713B7014(a1, (a2 + 8));
}

void sub_2713DD4B4(uint64_t a1, uint64_t a2)
{
  v4[0] = *a2;
  v4[8] = *(a2 + 8);
  v6 = 0;
  v7 = 0;
  __p = 0;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v8[0] = "value_type";
  v8[1] = 10;
  v8[2] = v4;
  sub_2713DD5A4(a1, v8);
}

void sub_2713DD588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DD5A4(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v5 = 0;
  sub_2711E6DB4(&v6, v4, v3);
}

void sub_2713DD69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DD6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713DD6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713DD6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v4 = *sub_271835268(a2 + 8);
        if (**(a3 + 40) >= 2u)
        {
          if ((*(a3 + 88) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v11 = *(a3 + 88);
          *(a3 + 72) = "number";
          *(a3 + 80) = 6;
          if ((v11 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        if (*(a3 + 80) != 7)
        {
          goto LABEL_94;
        }

        v28 = *(a3 + 72);
        v29 = *v28;
        v30 = *(v28 + 3);
        if (v29 != *"version" || v30 != *"sion")
        {
          goto LABEL_94;
        }

        return;
      }

      v4 = *sub_271835358(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v9 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v9 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v20 = *(a3 + 72);
      v21 = *v20;
      v22 = *(v20 + 3);
      if (v21 != *"version" || v22 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 == 8)
    {
      v4 = *sub_271835448(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v13 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v13 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v36 = *(a3 + 72);
      v37 = *v36;
      v38 = *(v36 + 3);
      if (v37 != *"version" || v38 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_43;
      }

      v60 = *sub_271835628(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v6 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v6 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v46 = *(a3 + 72);
        v47 = *v46;
        v48 = *(v46 + 3);
        if (v47 == *"version" && v48 == *"sion")
        {
          return;
        }
      }

LABEL_101:
      sub_271829154(a3, &v60);
      return;
    }

    LODWORD(v60) = *sub_271835538(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v15 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v15 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v56 = *(a3 + 72);
      v57 = *v56;
      v58 = *(v56 + 3);
      if (v57 == *"version" && v58 == *"sion")
      {
        return;
      }
    }

LABEL_117:
    sub_271828F50(a3, &v60);
    return;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = *sub_271834C28(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v10 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v10 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v24 = *(a3 + 72);
        v25 = *v24;
        v26 = *(v24 + 3);
        if (v25 == *"version" && v26 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

    if (a1 == 1)
    {
      v7 = *sub_271834EA8(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v8 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v8 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v16 = *(a3 + 72);
        v17 = *v16;
        v18 = *(v16 + 3);
        if (v17 == *"version" && v18 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

LABEL_43:

    sub_27183428C(a1);
  }

  if (a1 == 2)
  {
    v7 = *sub_271834F98(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v12 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v12 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v32 = *(a3 + 72);
      v33 = *v32;
      v34 = *(v32 + 3);
      if (v33 == *"version" && v34 == *"sion")
      {
        *(a3 + 96) = v7;
        *(a3 + 100) = 1;
        *(a3 + 88) = 0;
        return;
      }
    }

    goto LABEL_109;
  }

  if (a1 == 3)
  {
    v7 = *sub_271835088(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v14 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v14 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v50 = *(a3 + 72);
      v51 = *v50;
      v52 = *(v50 + 3);
      if (v51 == *"version" && v52 == *"sion")
      {
        return;
      }
    }

LABEL_109:
    v44 = 6;
    LOBYTE(v60) = 6;
    v61 = v7;
    v45 = sub_27182815C(a3);
    goto LABEL_110;
  }

  if (a1 != 5)
  {
    goto LABEL_43;
  }

  v4 = *sub_271835178(a2 + 8);
  if (**(a3 + 40) >= 2u)
  {
    if (*(a3 + 88))
    {
      goto LABEL_89;
    }

LABEL_94:
    v44 = 5;
    LOBYTE(v60) = 5;
    v61 = v4;
    v45 = sub_27182815C(a3);
LABEL_110:
    v54 = *v45;
    *v45 = v44;
    LOBYTE(v60) = v54;
    v55 = v45[1];
    v45[1] = v61;
    v61 = v55;
    sub_2715CA870(&v61, v54);
    return;
  }

  v5 = *(a3 + 88);
  *(a3 + 72) = "number";
  *(a3 + 80) = 6;
  if ((v5 & 1) == 0)
  {
    *(a3 + 88) = 1;
  }

LABEL_89:
  if (*(a3 + 80) != 7)
  {
    goto LABEL_94;
  }

  v40 = *(a3 + 72);
  v41 = *v40;
  v42 = *(v40 + 3);
  if (v41 != *"version" || v42 != *"sion")
  {
    goto LABEL_94;
  }
}

void sub_2713DDE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DAD58(v9, a2);
  sub_2713DDF90(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DDF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DDF90(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v6, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v7 = *(a1 + 40);
  *(a1 + 40) = v7 + 1;
  if (v7 != -1)
  {
    v8 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v8, &__p, 1);
  }

  MEMORY[0x2743BE840](*(a1 + 24), *(a2 + 8));
  ++*(a1 + 40);
  __p.__r_.__value_.__s.__data_[0] = *(a2 + 16);
  sub_2718388F8(a1, &__p);
  v9 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v10, &__p, 1);
  }

  v11 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = v9;
  sub_271120E64(v11, &__p, 1);
  ++*(a1 + 40);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    sub_2718388F8(a1, &__p);
    sub_271839128(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  sub_2713B87F0(a1, a2 + 56);
  if (a3 == 5)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      sub_2718388F8(a1, &__p);
      sub_271839128(a1, a2 + 80);
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      sub_2718388F8(a1, &__p);
    }

    return;
  }

  if (a3 < 6)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (*(a1 + 40))
    {
      v15 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v15, &__p, 1);
      ++*(a1 + 40);
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 40) = 1;
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

LABEL_17:
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (*(a1 + 40))
    {
      v13 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v13, &__p, 1);
      v14 = *(a1 + 40) + 1;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 40) = v14;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v26 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  sub_2718388F8(a1, &__p);
  sub_271839128(a1, a2 + 80);
  v12 = *(a2 + 136);
  if (v12 != 1)
  {
    goto LABEL_17;
  }

LABEL_28:
  __p.__r_.__value_.__s.__data_[0] = v12;
  sub_2718388F8(a1, &__p);
  sub_271839128(a1, a2 + 112);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v26 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_25:
    v24.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &v24);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      v24.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v16, &v24, 1);
      ++*(a1 + 40);
    }

    else
    {
      *(a1 + 40) = 1;
    }

    return;
  }

LABEL_29:
  v17 = *(a2 + 144);
  v18 = *(a2 + 152);
  if (v17 == v18)
  {
LABEL_46:
    sub_271130B58(v17, v18, ";", 1uLL, &v24);
  }

  else
  {
    v19 = *(a2 + 144);
    while (1)
    {
      size = HIBYTE(v19->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = v19->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = v19->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v22 = 0;
        while (1)
        {
          v23 = v21->__r_.__value_.__s.__data_[v22];
          if (v23 == 59 || v23 == 92)
          {
            break;
          }

          if (size == ++v22)
          {
            goto LABEL_31;
          }
        }

        if (size != v22 && v22 != -1)
        {
          break;
        }
      }

LABEL_31:
      if (++v19 == v18)
      {
        goto LABEL_46;
      }
    }

    sub_2713B3DE4(v17, 0, *(a2 + 152), ";", 1uLL, &v24);
  }

  __p = v24;
  v26 = 1;
  v24.__r_.__value_.__s.__data_[0] = 1;
  sub_2718388F8(a1, &v24);
  sub_271839128(a1, &__p);
  if ((v26 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2713DE3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DE40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DB358(v9, a2);
  sub_2713DE53C(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DE524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DE53C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    v15 = *(a1 + 32);
    sub_271120E64(v6, &v15, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v7 = *(a1 + 40);
  *(a1 + 40) = v7 + 1;
  if (v7 != -1)
  {
    v8 = *(a1 + 24);
    v16 = *(a1 + 32);
    sub_271120E64(v8, &v16, 1);
  }

  MEMORY[0x2743BE840](*(a1 + 24), *(a2 + 8));
  ++*(a1 + 40);
  v12 = *(a2 + 16);
  sub_2718388F8(a1, &v12);
  v9 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);
    v17 = *(a1 + 32);
    sub_271120E64(v10, &v17, 1);
  }

  v11 = *(a1 + 24);
  v18 = v9;
  sub_271120E64(v11, &v18, 1);
  ++*(a1 + 40);
  if (*(a2 + 48) != 1)
  {
    v13 = 0;
    sub_2718388F8(a1, &v13);
    if (a3 < 4)
    {
      return;
    }

    goto LABEL_11;
  }

  v14 = 1;
  sub_2718388F8(a1, &v14);
  sub_271839128(a1, a2 + 24);
  if (a3 >= 4)
  {
LABEL_11:
    sub_2713B87F0(a1, a2 + 56);
  }
}

void sub_2713DE694(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v6[0] = *a2;
  v6[8] = a2[8];
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v10 = v3;
  sub_2718388F8(a1, &v10);
  sub_2713DE778(v3, v6, a1);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_2713DE75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DE778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        LOBYTE(v16) = *sub_271834C28(a2 + 8);
        sub_2718388F8(a3, &v16);
        return;
      }

      if (a1 != 1)
      {
        goto LABEL_36;
      }

      v4 = *sub_271834EA8(a2 + 8);
      if (*(a3 + 40))
      {
        v5 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_271120E64(v5, &v16, 1);
      }

      MEMORY[0x2743BE830](*(a3 + 24), v4);
    }

    else
    {
      switch(a1)
      {
        case 2:
          v10 = *sub_271834F98(a2 + 8);
          if (*(a3 + 40))
          {
            v11 = *(a3 + 24);
            LOBYTE(v16) = *(a3 + 32);
            sub_271120E64(v11, &v16, 1);
          }

          MEMORY[0x2743BE7F0](*(a3 + 24), v10);
          break;
        case 3:
          v14 = *sub_271835088(a2 + 8);
          if (*(a3 + 40))
          {
            v15 = *(a3 + 24);
            LOBYTE(v16) = *(a3 + 32);
            sub_271120E64(v15, &v16, 1);
          }

          MEMORY[0x2743BE850](*(a3 + 24), v14);
          break;
        case 5:
          LOBYTE(v16) = *sub_271835178(a2 + 8);
          sub_271838810(a3, &v16);
          return;
        default:
LABEL_36:

          sub_27183428C(a1);
      }
    }

    goto LABEL_34;
  }

  if (a1 <= 7)
  {
    if (a1 == 6)
    {
      v8 = *sub_271835268(a2 + 8);
      if (*(a3 + 40))
      {
        v9 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_271120E64(v9, &v16, 1);
      }

      MEMORY[0x2743BE820](*(a3 + 24), v8);
    }

    else
    {
      v6 = *sub_271835358(a2 + 8);
      if (*(a3 + 40))
      {
        v7 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_271120E64(v7, &v16, 1);
      }

      MEMORY[0x2743BE7E0](*(a3 + 24), v6);
    }

    goto LABEL_34;
  }

  switch(a1)
  {
    case 8:
      v12 = *sub_271835448(a2 + 8);
      if (*(a3 + 40))
      {
        v13 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_271120E64(v13, &v16, 1);
      }

      MEMORY[0x2743BE840](*(a3 + 24), v12);
LABEL_34:
      ++*(a3 + 40);
      return;
    case 0xB:
      LODWORD(v16) = *sub_271835538(a2 + 8);
      sub_271838C54(a3, &v16);
      break;
    case 0xC:
      v16 = *sub_271835628(a2 + 8);
      sub_271838EC0(a3, &v16);
      break;
    default:
      goto LABEL_36;
  }
}

void sub_2713DEA44(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DAD58(v9, a2);
  sub_2713B9510(a1, v9, a3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DEB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DEB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DB358(v9, a2);
  sub_2713DECA4(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DEC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

char *sub_2713DECA4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__src) = 2;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 4, 4);
  sub_2717312C0(a1);
  sub_27173318C((a1 + 24), *(a1 + 32), (a2 + 8), (a2 + 16), 8);
  LOBYTE(__src) = *(a2 + 16);
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
  v6 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v6 + 10) = *(a1 + 32) - v6 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 48) != 1)
  {
    LOBYTE(__src) = 0;
    result = sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
    if (a3 < 4)
    {
      return result;
    }

    goto LABEL_13;
  }

  LOBYTE(__src) = 1;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &__src + 1, 1);
  v7 = *(a2 + 47);
  if (v7 < 0)
  {
    v7 = *(a2 + 32);
  }

  __src = v7;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, v13, 8);
  v8 = *(a2 + 47);
  if (v8 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 24);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 47);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  result = sub_27173318C((a1 + 24), *(a1 + 32), v9, &v9[v10], v10);
  if (a3 >= 4)
  {
LABEL_13:
    __src = "custom_timestamp";
    v13[0] = 16;
    v13[1] = a2 + 56;
    return sub_2713B99E4(a1, &__src);
  }

  return result;
}

void sub_2713DEE50(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v6[0] = *a2;
  v6[8] = a2[8];
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  __src = v3;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v11, 1);
  sub_2713DEF44(v3, v6, a1);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_2713DEF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2713DEF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          if (a1 == 5)
          {
            v4 = sub_271835178(a2 + 8);
LABEL_18:
            LOBYTE(__src) = *v4;
            return sub_27173318C((a3 + 24), *(a3 + 32), &__src, &__src + 1, 1);
          }

          goto LABEL_29;
        }

        v8 = sub_271835088(a2 + 8);
        goto LABEL_25;
      }

      v6 = sub_271834F98(a2 + 8);
      goto LABEL_22;
    }

    if (!a1)
    {
      v4 = sub_271834C28(a2 + 8);
      goto LABEL_18;
    }

    if (a1 != 1)
    {
LABEL_29:

      sub_27183428C(a1);
    }

    v5 = sub_271834EA8(a2 + 8);
    goto LABEL_20;
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      v6 = sub_271835358(a2 + 8);
LABEL_22:
      LODWORD(__src) = *v6;
      return sub_27173318C((a3 + 24), *(a3 + 32), &__src, &__src + 4, 4);
    }

    v5 = sub_271835268(a2 + 8);
LABEL_20:
    LOWORD(__src) = *v5;
    return sub_27173318C((a3 + 24), *(a3 + 32), &__src, &__src + 2, 2);
  }

  if (a1 == 8)
  {
    v8 = sub_271835448(a2 + 8);
LABEL_25:
    __src = *v8;
    return sub_27173318C((a3 + 24), *(a3 + 32), &__src, &v10, 8);
  }

  if (a1 != 11)
  {
    if (a1 != 12)
    {
      goto LABEL_29;
    }

    __src = *sub_271835628(a2 + 8);
    return sub_27173318C((a3 + 24), *(a3 + 32), &__src, &v10, 8);
  }

  LODWORD(__src) = *sub_271835538(a2 + 8);
  return sub_27173318C((a3 + 24), *(a3 + 32), &__src, &__src + 4, 4);
}

void sub_2713DF128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DAD58(v9, a2);
  sub_2713DF258(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DF240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DF258(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_2713BA8E0(&__p, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  if (*(a2 + 72) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    sub_2713BA8E0(&__p, a1, a2 + 56);
    if (a3 != 5)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      return;
    }

    goto LABEL_25;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  if (a3 == 5)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (a3 < 6)
  {
    return;
  }

  if ((*(a1 + 12) & 4) == 0)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
LABEL_11:
        __p.__r_.__value_.__s.__data_[0] = 0;
        (*(*a1 + 80))(a1, &__p);
        v7 = *(a2 + 168);
        if (v7 != 1)
        {
          goto LABEL_25;
        }

LABEL_22:
        __p.__r_.__value_.__s.__data_[0] = v7;
        (*(*a1 + 80))(a1, &__p);
        __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        (*(*a1 + 120))(a1, &__p);
        v10 = *(a2 + 144);
        for (i = *(a2 + 152); v10 != i; v10 += 24)
        {
          (*(*a1 + 144))(a1, v10);
        }

        return;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = v6;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    v7 = *(a2 + 168);
    if (v7 != 1)
    {
LABEL_25:
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      return;
    }

    goto LABEL_22;
  }

  if (*(a2 + 104) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 80);
    v8 = *(a2 + 136);
    if (v8 != 1)
    {
      goto LABEL_18;
    }

LABEL_27:
    __p.__r_.__value_.__s.__data_[0] = v8;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v20 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_27188F5E7);
  v8 = *(a2 + 136);
  if (v8 == 1)
  {
    goto LABEL_27;
  }

LABEL_18:
  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_27188F5E7);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v20 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_19:
    v18.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &v18);
    (*(*a1 + 288))(a1, &unk_27188F5E7);
    return;
  }

LABEL_28:
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v11 == v12)
  {
LABEL_45:
    sub_271130B58(v11, v12, ";", 1uLL, &v18);
  }

  else
  {
    v13 = *(a2 + 144);
    while (1)
    {
      size = HIBYTE(v13->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v13->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = v13->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v16 = 0;
        while (1)
        {
          v17 = v15->__r_.__value_.__s.__data_[v16];
          if (v17 == 59 || v17 == 92)
          {
            break;
          }

          if (size == ++v16)
          {
            goto LABEL_30;
          }
        }

        if (size != v16 && v16 != -1)
        {
          break;
        }
      }

LABEL_30:
      if (++v13 == v12)
      {
        goto LABEL_45;
      }
    }

    sub_2713B3DE4(v11, 0, *(a2 + 152), ";", 1uLL, &v18);
  }

  __p = v18;
  v20 = 1;
  v18.__r_.__value_.__s.__data_[0] = 1;
  (*(*a1 + 80))(a1, &v18);
  (*(*a1 + 144))(a1, &__p);
  if ((v20 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2713DFA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DFA84(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  sub_2713DB358(v9, a2);
  sub_2713DFBB4(a1, v9, v3);
  if (v21 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
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
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }
  }

  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2713DFB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713DFBB4(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  sub_2713BA8E0(&v6, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    v8 = 1;
    (*(*a1 + 80))(a1, &v8);
    (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    v7 = 0;
    (*(*a1 + 80))(a1, &v7);
    if (a3 < 4)
    {
      return;
    }
  }

  if (*(a2 + 72) == 1)
  {
    v10 = 1;
    (*(*a1 + 80))(a1, &v10);
    sub_2713BA8E0(&v11, a1, a2 + 56);
  }

  else
  {
    v9 = 0;
    (*(*a1 + 80))(a1, &v9);
  }
}

void sub_2713DFD48(_BYTE *a1, uint64_t a2)
{
  v5[0] = *a2;
  v5[8] = *(a2 + 8);
  v7 = 0;
  v8 = 0;
  __p = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_2713E01B4(a1, v5);
  sub_2713DFE20(v5[0], v5, a1);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_2713DFE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713DFE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        LOWORD(v5) = *sub_271835268(a2 + 8);
        return (*(*a3 + 48))(a3, &v5);
      }

      else
      {
        LODWORD(v5) = *sub_271835358(a2 + 8);
        return (*(*a3 + 56))(a3, &v5);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v5 = *sub_271835448(a2 + 8);
          return (*(*a3 + 72))(a3, &v5);
        case 0xB:
          LODWORD(v5) = *sub_271835538(a2 + 8);
          return (*(*a3 + 128))(a3, &v5);
        case 0xC:
          v5 = *sub_271835628(a2 + 8);
          return (*(*a3 + 136))(a3, &v5);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      LOWORD(v5) = *sub_271834EA8(a2 + 8);
      return (*(*a3 + 96))(a3, &v5);
    }

    else
    {
      LOBYTE(v5) = *sub_271834C28(a2 + 8);
      return (*(*a3 + 80))(a3, &v5);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v5) = *sub_271834F98(a2 + 8);
        return (*(*a3 + 104))(a3, &v5);
      case 3:
        v5 = *sub_271835088(a2 + 8);
        return (*(*a3 + 120))(a3, &v5);
      case 5:
        LOBYTE(v5) = *sub_271835178(a2 + 8);
        return (*(*a3 + 88))(a3, &v5);
      default:
LABEL_23:

        sub_27183428C(a1);
    }
  }
}

void sub_2713E01B4(_BYTE *a1, _BYTE *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v3 = 0;
    sub_2711E6DB4(&v4, v2, a2);
  }

  v2[0] = *a2;
  (*(*a1 + 80))(a1, v2);
}

void sub_2713E02D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E02F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713E0308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713E031C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  if (v3 != -1)
  {
    if (!v3)
    {
      sub_2713BCEE8(a1, a2);
      return a1;
    }

    v5 = a2;
    (off_288131910[v3])(&v14, a1);
    a2 = v5;
  }

  *(a1 + 176) = -1;
  v6 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v6;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 104) != 1)
  {
    *(a1 + 112) = 0;
    v10 = a1 + 112;
    *(a1 + 136) = 0;
    if (*(a2 + 136) != 1)
    {
      goto LABEL_9;
    }

LABEL_13:
    v13 = *(a2 + 112);
    *(v10 + 16) = *(a2 + 128);
    *v10 = v13;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 1;
    *(a1 + 144) = 0;
    v11 = (a1 + 144);
    *(a1 + 168) = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v12;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  v10 = a1 + 112;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(a1 + 144) = 0;
  v11 = (a1 + 144);
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
LABEL_10:
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a1 + 168) = 1;
  }

LABEL_11:
  *(a1 + 176) = 0;
  return a1;
}

void sub_2713E04D8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7[0] = *(a2 + 32);
  v5 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, v7);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v8);
  if (v8 >= 2)
  {
    v6 = *(a2 + 104);
    *(a2 + 88) = "value_type";
    *(a2 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    v7[0] = a3;
    sub_2713E0CC8(a2, v7);
  }

  sub_2713E0600(v7, a2, a3);
}

void sub_2713E0600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 7;
  v4 = 7;
  operator new();
}

void sub_2713E0760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E0780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v17) = 0;
        v7 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v7 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182EAD4(a2, &v17);
        operator new();
      }

      LOWORD(v17) = 0;
      v9 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v9 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182E9A4(a2, &v17);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v11 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v11 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v12 = sub_27182D6C4(a2);
        ++*(a2 + 112);
        v17 = 0;
        sub_2715D6A90(v12, &v17);
        operator new();
      case 0xB:
        v15 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v15 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v16 = sub_27182D6C4(a2);
        ++*(a2 + 112);
        sub_271833EE4(v16);
        operator new();
      case 0xC:
        v17 = 0;
        v5 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v5 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182EC04(a2, &v17);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v17) = 0;
      v8 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v8 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182E90C(a2, &v17);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v17) = 0;
      v6 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v6 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182EA3C(a2, &v17);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v17) = 0;
        v10 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v10 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182EB6C(a2, &v17);
        operator new();
      case 3:
        v13 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v13 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v14 = sub_27182D6C4(a2);
        ++*(a2 + 112);
        v17 = 0;
        sub_2715D693C(v14, &v17);
        operator new();
      case 5:
        LOBYTE(v17) = 0;
        v4 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v4 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182E874(a2, &v17);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E0CC8(void *a1, _BYTE **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D6C4(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D6E6C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713E0DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713E0E4C(uint64_t a1, void *a2, _BYTE *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v8 = 0;
    sub_27183FF6C(a2[6], &v8);
    *&v7 = (*(a2[2] + 32))(a2 + 2);
    *(&v7 + 1) = v8;
    sub_2713BF82C((a2 + 3), &v7);
    LOBYTE(v7) = 0;
    sub_27183F824(a2[6], &v7);
    v6 = v7;
    *a3 = v7;
    sub_2713E10EC(v6, a2, a3);
  }

  sub_2713E0F8C(&v7, a2, a3);
}

void sub_2713E0F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 7;
  v4 = 7;
  operator new();
}

void sub_2713E10CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E10EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v3) = 0;
        sub_27183FACC(*(a2 + 48), &v3);
        operator new();
      }

      LOWORD(v3) = 0;
      sub_27183F920(*(a2 + 48), &v3);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v3 = 0;
        sub_27183FE6C(*(a2 + 48), &v3);
        operator new();
      case 0xB:
        LODWORD(v3) = 0;
        sub_271840060(*(a2 + 48), &v3);
        operator new();
      case 0xC:
        v3 = 0;
        sub_2718401A8(*(a2 + 48), &v3);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v3) = 0;
      sub_27183F824(*(a2 + 48), &v3);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v3) = 0;
      sub_27183F9D0(*(a2 + 48), &v3);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v3) = 0;
        sub_27183FB7C(*(a2 + 48), &v3);
        operator new();
      case 3:
        v3 = 0;
        sub_27183FF6C(*(a2 + 48), &v3);
        operator new();
      case 5:
        LOBYTE(v3) = 0;
        sub_27183F774(*(a2 + 48), &v3);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E14B0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7[0] = *(a2 + 32);
  v5 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, v7);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v8);
  if (v8 >= 2)
  {
    v6 = *(a2 + 104);
    *(a2 + 88) = "value_type";
    *(a2 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    v7[0] = a3;
    sub_2713E1CA0(a2, v7);
  }

  sub_2713E15D8(v7, a2, a3);
}

void sub_2713E15D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 7;
  v4 = 7;
  operator new();
}

void sub_2713E1738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E1758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v17) = 0;
        v7 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v7 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182DB48(a2, &v17);
        operator new();
      }

      LOWORD(v17) = 0;
      v9 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v9 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182DA18(a2, &v17);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v11 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v11 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v12 = sub_27182D2AC(a2);
        ++*(a2 + 112);
        v17 = 0;
        sub_2715D6290(v12, &v17);
        operator new();
      case 0xB:
        v15 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v15 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v16 = sub_27182D2AC(a2);
        ++*(a2 + 112);
        sub_2718338E8(v16);
        operator new();
      case 0xC:
        v17 = 0;
        v5 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v5 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182DC78(a2, &v17);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v17) = 0;
      v8 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v8 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182D980(a2, &v17);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v17) = 0;
      v6 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v6 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182DAB0(a2, &v17);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v17) = 0;
        v10 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v10 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182DBE0(a2, &v17);
        operator new();
      case 3:
        v13 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v13 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v14 = sub_27182D2AC(a2);
        ++*(a2 + 112);
        v17 = 0;
        sub_2715D613C(v14, &v17);
        operator new();
      case 5:
        LOBYTE(v17) = 0;
        v4 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v4 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182D8E8(a2, &v17);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E1CA0(void *a1, _BYTE **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = sub_27182D2AC(a1);
  ++a1[14];
  v7 = 0;
  v6 = 0uLL;
  sub_2715D666C(v3, &v6);
  v5 = v7;
  *__p = v6;
  operator new();
}

void sub_2713E1D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2713E1E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 7;
  v4 = 7;
  operator new();
}

void sub_2713E1F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E1F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v3) = 0;
        sub_27183A66C(a2, &v3);
        operator new();
      }

      LOWORD(v3) = 0;
      sub_271839FEC(a2, &v3);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v3 = 0;
        sub_27183B36C(a2, &v3);
        operator new();
      case 0xB:
        LODWORD(v3) = 0;
        sub_27183BD60(a2, &v3);
        operator new();
      case 0xC:
        v3 = 0;
        sub_27183C0A0(a2, &v3);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v3) = 0;
      sub_271839D90(a2, &v3);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v3) = 0;
      sub_27183A32C(a2, &v3);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v3) = 0;
        sub_27183A9AC(a2, &v3);
        operator new();
      case 3:
        v3 = 0;
        sub_27183B6AC(a2, &v3);
        operator new();
      case 5:
        LOBYTE(v3) = 0;
        sub_271839B34(a2, &v3);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E234C(uint64_t a1, void *a2, _BYTE *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v8 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v8 <= 1)
    {
      sub_2713E2494(&v13, a2, a3);
    }

    sub_27173170C(a2);
    v10 = a2[6];
    if (a2[7] > v10)
    {
      v11 = *(a2[3] + v10);
      a2[6] = v10 + 1;
      *a3 = v11;
      sub_2713E2664(v11, a2, a3);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2494(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 7;
  v4 = 7;
  operator new();
}

void sub_2713E2634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713E2664(uint64_t a1, void *a2, uint64_t a3)
{
  v13[0] = a2;
  v13[1] = a3;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          sub_2713E2D14(v13);
        case 0xB:
          sub_2713E2E04(v13);
        case 0xC:
          sub_2713E2EF4(v13);
      }

      goto LABEL_31;
    }

    if (a1 != 6)
    {
      sub_2713E2C24(v13);
    }

    v9 = a2[6];
    v10 = a2[7];
    v6 = v10 >= v9;
    v11 = v10 - v9;
    if (!v6)
    {
      v11 = 0;
    }

    if (v11 > 1)
    {
      a2[6] = v9 + 2;
      operator new();
    }
  }

  else
  {
    if (a1 > 1)
    {
      switch(a1)
      {
        case 2:
          sub_2713E2A44(v13);
        case 3:
          sub_2713E2B34(v13);
        case 5:
          v3 = a2[6];
          if (a2[7] > v3)
          {
            a2[6] = v3 + 1;
            operator new();
          }

          goto LABEL_34;
      }

LABEL_31:

      sub_27183428C(a1);
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_31;
      }

      v4 = a2[6];
      v5 = a2[7];
      v6 = v5 >= v4;
      v7 = v5 - v4;
      if (!v6)
      {
        v7 = 0;
      }

      if (v7 > 1)
      {
        a2[6] = v4 + 2;
        operator new();
      }
    }

    else
    {
      v8 = a2[6];
      if (a2[7] > v8)
      {
        a2[6] = v8 + 1;
        operator new();
      }
    }
  }

LABEL_34:
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2A44(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 3)
  {
    *(*a1 + 48) = v1 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2B34(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 7)
  {
    *(*a1 + 48) = v1 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2C24(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 3)
  {
    *(*a1 + 48) = v1 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2D14(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 7)
  {
    *(*a1 + 48) = v1 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2E04(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 3)
  {
    *(*a1 + 48) = v1 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2EF4(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 7)
  {
    *(*a1 + 48) = v1 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2FE4(uint64_t a1, void *a2, uint64_t a3)
{
  v13[0] = a2;
  v13[1] = a3;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          sub_2713E3694(v13);
        case 0xB:
          sub_2713E3784(v13);
        case 0xC:
          sub_2713E3874(v13);
      }

      goto LABEL_31;
    }

    if (a1 != 6)
    {
      sub_2713E35A4(v13);
    }

    v9 = a2[6];
    v10 = a2[7];
    v6 = v10 >= v9;
    v11 = v10 - v9;
    if (!v6)
    {
      v11 = 0;
    }

    if (v11 > 1)
    {
      a2[6] = v9 + 2;
      operator new();
    }
  }

  else
  {
    if (a1 > 1)
    {
      switch(a1)
      {
        case 2:
          sub_2713E33C4(v13);
        case 3:
          sub_2713E34B4(v13);
        case 5:
          v3 = a2[6];
          if (a2[7] > v3)
          {
            a2[6] = v3 + 1;
            operator new();
          }

          goto LABEL_34;
      }

LABEL_31:

      sub_27183428C(a1);
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_31;
      }

      v4 = a2[6];
      v5 = a2[7];
      v6 = v5 >= v4;
      v7 = v5 - v4;
      if (!v6)
      {
        v7 = 0;
      }

      if (v7 > 1)
      {
        a2[6] = v4 + 2;
        operator new();
      }
    }

    else
    {
      v8 = a2[6];
      if (a2[7] > v8)
      {
        a2[6] = v8 + 1;
        operator new();
      }
    }
  }

LABEL_34:
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E33C4(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 3)
  {
    *(*a1 + 48) = v1 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E34B4(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 7)
  {
    *(*a1 + 48) = v1 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E35A4(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 3)
  {
    *(*a1 + 48) = v1 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3694(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 7)
  {
    *(*a1 + 48) = v1 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3784(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 3)
  {
    *(*a1 + 48) = v1 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3874(void *a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 > 7)
  {
    *(*a1 + 48) = v1 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3964(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = *a2;
  v6 = a2[1];
  LODWORD(v7) = 2;
  (*(v5 + 104))(a2, &v7);
  if (v6 >= 1)
  {
    sub_2713E3A4C(&v6, a2, a3, v7);
  }

  if (v7 >= 2)
  {
    v7 = a3;
    sub_2713E42BC(a2, &v7);
    sub_2713E3DB4(*a3, a2, a3);
  }

  sub_2713E3C54(&v7, a2, a3);
}

void sub_2713E3A4C(int *a1, _BYTE *a2, unsigned __int8 *a3, unsigned int a4)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v7 = a4;
    v8 = a3;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878AB0))
      {
        sub_2718519B4(qword_280878A98, "cv3d::kit::commonio::NumberSample]", 0x21uLL);
        __cxa_guard_release(&qword_280878AB0);
        sub_271847D5C(qword_280878A98, v11, 2);
      }

      sub_271847D5C(qword_280878A98, v11, 2);
    }

    v5 = *a1;
    a3 = v8;
    a4 = v7;
  }

  if (a4 >= 2 && v5 >= 1)
  {
    v9 = a3;
    (*(*a2 + 16))(a2);
    v14 = v9;
    sub_2713E42BC(a2, &v14);
    sub_2713E3DB4(*v9, a2, v9);
  }

  if (a4 > 1)
  {
    v14 = a3;
    v10 = a3;
    sub_2713E42BC(a2, &v14);
    sub_2713E3DB4(*v10, a2, v10);
  }

LABEL_10:
  sub_2713E3C54(&v13, a2, a3);
}

void sub_2713E3C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 7;
  v4 = 7;
  operator new();
}

void sub_2713E3D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E3DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v3) = 0;
        (*(*a2 + 56))(a2, &v3, a3);
        operator new();
      }

      LOWORD(v3) = 0;
      (*(*a2 + 48))(a2, &v3, a3);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v3 = 0;
        (*(*a2 + 72))(a2, &v3, a3);
        operator new();
      case 0xB:
        LODWORD(v3) = 0;
        (*(*a2 + 128))(a2, &v3, a3);
        operator new();
      case 0xC:
        v3 = 0;
        (*(*a2 + 136))(a2, &v3, a3);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v3) = 0;
      (*(*a2 + 80))(a2, &v3, a3);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v3) = 0;
      (*(*a2 + 96))(a2, &v3, a3);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v3) = 0;
        (*(*a2 + 104))(a2, &v3, a3);
        operator new();
      case 3:
        v3 = 0;
        (*(*a2 + 120))(a2, &v3, a3);
        operator new();
      case 5:
        LOBYTE(v3) = 0;
        (*(*a2 + 88))(a2, &v3, a3);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E42BC(_BYTE *a1, _BYTE **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOBYTE(__p[0]) = 0;
  (*(*a1 + 80))(a1, __p);
  **a2 = __p[0];
}

void sub_2713E43E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713E4434(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_27113523C(&v4, a4 + 1);
  operator new();
}

void sub_2713E4874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9, a2, a3, a4, a5, a6, a7, a8);
  sub_2713E48D8(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713E48D8(void *a1)
{
  *a1 = &unk_28812E7F0;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E838;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2713E4998(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DB624(a1, v6);
}

void sub_2713E4B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_2713E4B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        sub_271759D80((a2 + 16), 0);
        v21 = *(a2 + 16);
        v22 = *(v21 + 40);
        v23 = *(v21 + 48);
        if (**(a3 + 40) <= 1u)
        {
          v24 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v24 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v22;
        v46 = v23;
        sub_271828DE4(a3, &v45);
      }

      if (a1 == 1)
      {
        sub_271759D80((a2 + 16), 1);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48) >> 1;
        if (**(a3 + 40) <= 1u)
        {
          v16 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v16 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v14;
        v46 = v15;
        sub_27182B768(a3, &v45);
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          sub_271759D80((a2 + 16), 2);
          v29 = *(a2 + 16);
          v30 = *(v29 + 40);
          v31 = *(v29 + 48) >> 2;
          if (**(a3 + 40) <= 1u)
          {
            v32 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v32 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v30;
          v46 = v31;
          sub_27182BA78(a3, &v45);
        case 3:
          sub_271759D80((a2 + 16), 3);
          v37 = *(a2 + 16);
          v38 = *(v37 + 40);
          v39 = *(v37 + 48) >> 3;
          if (**(a3 + 40) <= 1u)
          {
            v40 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v40 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v38;
          v46 = v39;
          sub_27182C098(a3, &v45);
        case 5:
          sub_271759D80((a2 + 16), 5);
          v5 = *(a2 + 16);
          v6 = *(v5 + 40);
          v7 = *(v5 + 48);
          if (**(a3 + 40) <= 1u)
          {
            v8 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v8 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v6;
          v46 = v7;
          sub_27182B474(a3, &v45);
      }
    }

LABEL_53:

    sub_27183428C(a1);
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      sub_271759D80((a2 + 16), 7);
      v17 = *(a2 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v20 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v20 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v18;
      v46 = v19;
      sub_27182B8F0(a3, &v45);
    }

    sub_271759D80((a2 + 16), 6);
    v25 = *(a2 + 16);
    v26 = *(v25 + 40);
    v27 = *(v25 + 48) >> 1;
    if (**(a3 + 40) <= 1u)
    {
      v28 = *(a3 + 88);
      *(a3 + 72) = "numbers";
      *(a3 + 80) = 7;
      if ((v28 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    v45 = v26;
    v46 = v27;
    sub_27182B5E0(a3, &v45);
  }

  switch(a1)
  {
    case 8:
      sub_271759D80((a2 + 16), 8);
      v33 = *(a2 + 16);
      v34 = *(v33 + 40);
      v35 = *(v33 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v36 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v36 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v34;
      v46 = v35;
      sub_27182BF10(a3, &v45);
    case 0xB:
      sub_271759D80((a2 + 16), 11);
      v41 = *(a2 + 16);
      v42 = *(v41 + 40);
      v43 = *(v41 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v44 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v44 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v42;
      v46 = v43;
      sub_27182C644(a3, &v45);
      break;
    case 0xC:
      sub_271759D80((a2 + 16), 12);
      v9 = *(a2 + 16);
      v10 = *(v9 + 40);
      v11 = *(v9 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v12 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v12 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v10;
      v46 = v11;
      sub_27182CAA4(a3, &v45);
      break;
    default:
      goto LABEL_53;
  }
}

void sub_2713E5004(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v3 = *(a2 + 3);
  v8 = *(a2 + 2);
  v9 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v7;
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v11 = (v4 + 16);
    sub_2718454CC(&v11, &v10);
  }

  else
  {
    if (v7 < 0)
    {
      LOBYTE(v11) = -52;
      BYTE1(v11) = v7;
    }

    else
    {
      LOBYTE(v11) = v7;
    }

    std::ostream::write();
  }

  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    v11 = (v5 + 16);
    sub_271846AEC(&v11, *(&v7 + 1));
  }

  else
  {
    sub_271846E00((v5 + 8), *(&v7 + 1));
  }

  sub_2713E5164(v7, &v7, a1);
  v6 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t sub_2713E5164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = sub_271759D80((a2 + 16), 6);
        v30 = *(a2 + 16);
        v32 = *(v30 + 40);
        v31 = *(v30 + 48);
        v33 = v31 >> 1;
        v34 = *(a3 + 24);
        if (*(v34 + 40) == 1)
        {
          *&v81 = v34 + 16;
          if (v31 >= 2)
          {
            v35 = 2 * v33;
            do
            {
              v36 = *v32++;
              result = sub_27184561C(&v81, v36);
              v35 -= 2;
            }

            while (v35);
          }
        }

        else if (v31 >= 2)
        {
          v67 = 2 * v33;
          do
          {
            v68 = *v32++;
            result = sub_2718458EC((v34 + 8), v68);
            v67 -= 2;
          }

          while (v67);
        }
      }

      else
      {
        result = sub_271759D80((a2 + 16), 7);
        v19 = *(a2 + 16);
        v21 = *(v19 + 40);
        v20 = *(v19 + 48);
        v22 = v20 >> 2;
        v23 = *(a3 + 24);
        if (*(v23 + 40) == 1)
        {
          *&v81 = v23 + 16;
          if (v20 >= 4)
          {
            v24 = 4 * v22;
            do
            {
              v25 = *v21++;
              result = sub_271845BC4(&v81, v25);
              v24 -= 4;
            }

            while (v24);
          }
        }

        else if (v20 >= 4)
        {
          v64 = 4 * v22;
          do
          {
            v65 = *v21++;
            result = sub_271845FEC((v23 + 8), v65);
            v64 -= 4;
          }

          while (v64);
        }
      }

      return result;
    }

    switch(a1)
    {
      case 8:
        result = sub_271759D80((a2 + 16), 8);
        v44 = *(a2 + 16);
        v46 = *(v44 + 40);
        v45 = *(v44 + 48);
        v47 = v45 >> 3;
        v48 = *(a3 + 24);
        if (*(v48 + 40) == 1)
        {
          *&v81 = v48 + 16;
          if (v45 >= 8)
          {
            v49 = 8 * v47;
            do
            {
              v50 = *v46++;
              result = sub_271846460(&v81, v50);
              v49 -= 8;
            }

            while (v49);
          }
        }

        else if (v45 >= 8)
        {
          v71 = 8 * v47;
          do
          {
            v72 = *v46++;
            result = sub_2718469A8((v48 + 8), v72);
            v71 -= 8;
          }

          while (v71);
        }

        return result;
      case 0xB:
        result = sub_271759D80((a2 + 16), 11);
        v58 = *(a2 + 16);
        v60 = *(v58 + 40);
        v59 = *(v58 + 48);
        v61 = v59 >> 2;
        v62 = *(a3 + 24);
        if (*(v62 + 40) == 1)
        {
          *&v81 = v62 + 16;
          if (v59 >= 4)
          {
            v63 = 4 * v61;
            do
            {
              result = sub_271846EFC(&v80, &v81, v60++);
              v63 -= 4;
            }

            while (v63);
          }
        }

        else if (v59 >= 4)
        {
          v78 = 4 * v61;
          do
          {
            v79 = *v60++;
            LOBYTE(v81) = -54;
            *(&v81 + 1) = bswap32(v79);
            result = std::ostream::write();
            v78 -= 4;
          }

          while (v78);
        }

        return result;
      case 0xC:
        result = sub_271759D80((a2 + 16), 12);
        v10 = *(a2 + 16);
        v12 = *(v10 + 40);
        v11 = *(v10 + 48);
        v13 = v11 >> 3;
        v14 = *(a3 + 24);
        if (*(v14 + 40) == 1)
        {
          *&v81 = v14 + 16;
          if (v11 >= 8)
          {
            v15 = 8 * v13;
            do
            {
              result = sub_271846FE4(&v80, &v81, v12++);
              v15 -= 8;
            }

            while (v15);
          }
        }

        else if (v11 >= 8)
        {
          v74 = 8 * v13;
          do
          {
            v75 = *v12++;
            LOBYTE(v81) = -53;
            *(&v81 + 1) = bswap64(v75);
            result = std::ostream::write();
            v74 -= 8;
          }

          while (v74);
        }

        return result;
    }

    goto LABEL_57;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        result = sub_271759D80((a2 + 16), 2);
        v37 = *(a2 + 16);
        v39 = *(v37 + 40);
        v38 = *(v37 + 48);
        v40 = v38 >> 2;
        v41 = *(a3 + 24);
        if (*(v41 + 40) == 1)
        {
          *&v81 = v41 + 16;
          if (v38 >= 4)
          {
            v42 = 4 * v40;
            do
            {
              v43 = *v39++;
              result = sub_2718460EC(&v81, v43);
              v42 -= 4;
            }

            while (v42);
          }
        }

        else if (v38 >= 4)
        {
          v69 = 4 * v40;
          do
          {
            v70 = *v39++;
            result = sub_27184636C(&v81, (v41 + 8), v70);
            v69 -= 4;
          }

          while (v69);
        }

        return result;
      case 3:
        result = sub_271759D80((a2 + 16), 3);
        v51 = *(a2 + 16);
        v53 = *(v51 + 40);
        v52 = *(v51 + 48);
        v54 = v52 >> 3;
        v55 = *(a3 + 24);
        if (*(v55 + 40) == 1)
        {
          *&v81 = v55 + 16;
          if (v52 >= 8)
          {
            v56 = 8 * v54;
            do
            {
              v57 = *v53++;
              result = sub_271846AEC(&v81, v57);
              v56 -= 8;
            }

            while (v56);
          }
        }

        else if (v52 >= 8)
        {
          v76 = 8 * v54;
          do
          {
            v77 = *v53++;
            result = sub_271846E00((v55 + 8), v77);
            v76 -= 8;
          }

          while (v76);
        }

        return result;
      case 5:
        result = sub_271759D80((a2 + 16), 5);
        v6 = *(a2 + 16);
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        v9 = *(a3 + 24);
        if (*(v9 + 40) == 1)
        {
          for (*&v81 = v9 + 16; v8; --v8)
          {
            result = sub_271845378(&v81, v7++);
          }
        }

        else
        {
          for (; v8; --v8)
          {
            while (1)
            {
              v73 = *v7;
              if (v73 <= -33)
              {
                break;
              }

              LOBYTE(v81) = *v7;
              result = std::ostream::write();
              ++v7;
              if (!--v8)
              {
                return result;
              }
            }

            LOBYTE(v81) = -48;
            BYTE1(v81) = v73;
            result = std::ostream::write();
            ++v7;
          }
        }

        return result;
    }

LABEL_57:

    sub_27183428C(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      sub_271759D80((a2 + 16), 1);
      v16 = *(a2 + 16);
      v17 = *(v16 + 40);
      v18 = *(v16 + 48) >> 1;
      *&v81 = v17;
      *(&v81 + 1) = v18;
      return sub_27183F518(a3, &v81);
    }

    goto LABEL_57;
  }

  result = sub_271759D80((a2 + 16), 0);
  v26 = *(a2 + 16);
  v27 = *(v26 + 40);
  v28 = *(v26 + 48);
  v29 = *(a3 + 24);
  if (*(v29 + 40) == 1)
  {
    for (*&v81 = v29 + 16; v28; --v28)
    {
      result = sub_2718454CC(&v81, v27++);
    }
  }

  else
  {
    for (; v28; --v28)
    {
      while (1)
      {
        v66 = *v27;
        if ((v66 & 0x80000000) == 0)
        {
          break;
        }

        LOBYTE(v81) = -52;
        BYTE1(v81) = v66;
        result = std::ostream::write();
        ++v27;
        if (!--v28)
        {
          return result;
        }
      }

      LOBYTE(v81) = *v27;
      result = std::ostream::write();
      ++v27;
    }
  }

  return result;
}

void sub_2713E576C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DD5A4(a1, v6);
}

void sub_2713E58FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_2713E5930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        sub_271759D80((a2 + 16), 0);
        v21 = *(a2 + 16);
        v22 = *(v21 + 40);
        v23 = *(v21 + 48);
        if (**(a3 + 40) <= 1u)
        {
          v24 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v24 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v22;
        v46 = v23;
        sub_271828638(a3, &v45);
      }

      if (a1 == 1)
      {
        sub_271759D80((a2 + 16), 1);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48) >> 1;
        if (**(a3 + 40) <= 1u)
        {
          v16 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v16 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v14;
        v46 = v15;
        sub_27182976C(a3, &v45);
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          sub_271759D80((a2 + 16), 2);
          v29 = *(a2 + 16);
          v30 = *(v29 + 40);
          v31 = *(v29 + 48) >> 2;
          if (**(a3 + 40) <= 1u)
          {
            v32 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v32 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v30;
          v46 = v31;
          sub_271829A7C(a3, &v45);
        case 3:
          sub_271759D80((a2 + 16), 3);
          v37 = *(a2 + 16);
          v38 = *(v37 + 40);
          v39 = *(v37 + 48) >> 3;
          if (**(a3 + 40) <= 1u)
          {
            v40 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v40 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v38;
          v46 = v39;
          sub_271829D8C(a3, &v45);
        case 5:
          sub_271759D80((a2 + 16), 5);
          v5 = *(a2 + 16);
          v6 = *(v5 + 40);
          v7 = *(v5 + 48);
          if (**(a3 + 40) <= 1u)
          {
            v8 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v8 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v6;
          v46 = v7;
          sub_271829478(a3, &v45);
      }
    }

LABEL_53:

    sub_27183428C(a1);
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      sub_271759D80((a2 + 16), 7);
      v17 = *(a2 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v20 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v20 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v18;
      v46 = v19;
      sub_2718298F4(a3, &v45);
    }

    sub_271759D80((a2 + 16), 6);
    v25 = *(a2 + 16);
    v26 = *(v25 + 40);
    v27 = *(v25 + 48) >> 1;
    if (**(a3 + 40) <= 1u)
    {
      v28 = *(a3 + 88);
      *(a3 + 72) = "numbers";
      *(a3 + 80) = 7;
      if ((v28 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    v45 = v26;
    v46 = v27;
    sub_2718295E4(a3, &v45);
  }

  switch(a1)
  {
    case 8:
      sub_271759D80((a2 + 16), 8);
      v33 = *(a2 + 16);
      v34 = *(v33 + 40);
      v35 = *(v33 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v36 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v36 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v34;
      v46 = v35;
      sub_271829C04(a3, &v45);
    case 0xB:
      sub_271759D80((a2 + 16), 11);
      v41 = *(a2 + 16);
      v42 = *(v41 + 40);
      v43 = *(v41 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v44 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v44 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v42;
      v46 = v43;
      sub_27182A338(a3, &v45);
      break;
    case 0xC:
      sub_271759D80((a2 + 16), 12);
      v9 = *(a2 + 16);
      v10 = *(v9 + 40);
      v11 = *(v9 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v12 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v12 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v10;
      v46 = v11;
      sub_27182A798(a3, &v45);
      break;
    default:
      goto LABEL_53;
  }
}

void sub_2713E5DD8(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v6;
  sub_2718388F8(a1, &v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v9 = *(a1 + 32);
    sub_271120E64(v4, &v9, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  sub_2713E5EE8(v6, &v6, a1);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_2713E5EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        v31 = *(a2 + 16);
        v32 = *(v31 + 48);
        if (v32 >= 2)
        {
          v33 = *(v31 + 40);
          v34 = v32 >> 1;
          v35 = *(a3 + 40);
          v36 = 2 * v34;
          do
          {
            if (v35)
            {
              v38 = *(a3 + 24);
              v70 = *(a3 + 32);
              sub_271120E64(v38, &v70, 1);
            }

            v37 = *v33++;
            MEMORY[0x2743BE820](*(a3 + 24), v37);
            v35 = *(a3 + 40) + 1;
            *(a3 + 40) = v35;
            v36 -= 2;
          }

          while (v36);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        v20 = *(a2 + 16);
        v21 = *(v20 + 48);
        if (v21 >= 4)
        {
          v22 = *(v20 + 40);
          v23 = v21 >> 2;
          v24 = *(a3 + 40);
          v25 = 4 * v23;
          do
          {
            if (v24)
            {
              v27 = *(a3 + 24);
              v71 = *(a3 + 32);
              sub_271120E64(v27, &v71, 1);
            }

            v26 = *v22++;
            MEMORY[0x2743BE7E0](*(a3 + 24), v26);
            v24 = *(a3 + 40) + 1;
            *(a3 + 40) = v24;
            v25 -= 4;
          }

          while (v25);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          v47 = *(a2 + 16);
          v48 = *(v47 + 48);
          if (v48 >= 8)
          {
            v49 = *(v47 + 40);
            v50 = v48 >> 3;
            v51 = *(a3 + 40);
            v52 = 8 * v50;
            do
            {
              if (v51)
              {
                v54 = *(a3 + 24);
                v72 = *(a3 + 32);
                sub_271120E64(v54, &v72, 1);
              }

              v53 = *v49++;
              MEMORY[0x2743BE840](*(a3 + 24), v53);
              v51 = *(a3 + 40) + 1;
              *(a3 + 40) = v51;
              v52 -= 8;
            }

            while (v52);
          }

          break;
        case 0xB:
          sub_271759D80((a2 + 16), 11);
          v63 = *(a2 + 16);
          v64 = *(v63 + 48);
          if (v64 >= 4)
          {
            v65 = *(v63 + 40);
            v66 = 4 * (v64 >> 2);
            do
            {
              sub_271838C54(a3, v65++);
              v66 -= 4;
            }

            while (v66);
          }

          break;
        case 0xC:
          sub_271759D80((a2 + 16), 12);
          v8 = *(a2 + 16);
          v9 = *(v8 + 48);
          if (v9 >= 8)
          {
            v10 = *(v8 + 40);
            v11 = 8 * (v9 >> 3);
            do
            {
              sub_271838EC0(a3, v10++);
              v11 -= 8;
            }

            while (v11);
          }

          break;
        default:
          goto LABEL_59;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_59;
      }

      sub_271759D80((a2 + 16), 1);
      v12 = *(a2 + 16);
      v13 = *(v12 + 48);
      if (v13 >= 2)
      {
        v14 = *(v12 + 40);
        v15 = v13 >> 1;
        v16 = *(a3 + 40);
        v17 = 2 * v15;
        do
        {
          if (v16)
          {
            v19 = *(a3 + 24);
            v67 = *(a3 + 32);
            sub_271120E64(v19, &v67, 1);
          }

          v18 = *v14++;
          MEMORY[0x2743BE830](*(a3 + 24), v18);
          v16 = *(a3 + 40) + 1;
          *(a3 + 40) = v16;
          v17 -= 2;
        }

        while (v17);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      v28 = *(a2 + 16);
      v29 = *(v28 + 48);
      if (v29)
      {
        v30 = *(v28 + 40);
        do
        {
          sub_2718388F8(a3, v30++);
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        v39 = *(a2 + 16);
        v40 = *(v39 + 48);
        if (v40 >= 4)
        {
          v41 = *(v39 + 40);
          v42 = v40 >> 2;
          v43 = *(a3 + 40);
          v44 = 4 * v42;
          do
          {
            if (v43)
            {
              v46 = *(a3 + 24);
              v68 = *(a3 + 32);
              sub_271120E64(v46, &v68, 1);
            }

            v45 = *v41++;
            MEMORY[0x2743BE7F0](*(a3 + 24), v45);
            v43 = *(a3 + 40) + 1;
            *(a3 + 40) = v43;
            v44 -= 4;
          }

          while (v44);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        v55 = *(a2 + 16);
        v56 = *(v55 + 48);
        if (v56 >= 8)
        {
          v57 = *(v55 + 40);
          v58 = v56 >> 3;
          v59 = *(a3 + 40);
          v60 = 8 * v58;
          do
          {
            if (v59)
            {
              v62 = *(a3 + 24);
              v69 = *(a3 + 32);
              sub_271120E64(v62, &v69, 1);
            }

            v61 = *v57++;
            MEMORY[0x2743BE850](*(a3 + 24), v61);
            v59 = *(a3 + 40) + 1;
            *(a3 + 40) = v59;
            v60 -= 8;
          }

          while (v60);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        v5 = *(a2 + 16);
        v6 = *(v5 + 48);
        if (v6)
        {
          v7 = *(v5 + 40);
          do
          {
            sub_271838810(a3, v7++);
            --v6;
          }

          while (v6);
        }

        return;
      default:
LABEL_59:

        sub_27183428C(a1);
    }
  }
}

void sub_2713E6338(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __src = v5;
  sub_27173318C((a1 + 24), *(a1 + 32), &__src, &v9, 1);
  sub_27173318C((a1 + 24), *(a1 + 32), &v5 + 8, &v6, 8);
  sub_2713E643C(v5, &v5, a1);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

char *sub_2713E643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          v7 = (a2 + 16);
          v8 = 8;
          break;
        case 0xB:
          v11 = (a2 + 16);
          v12 = 11;
          goto LABEL_26;
        case 0xC:
          v7 = (a2 + 16);
          v8 = 12;
          break;
        default:
          goto LABEL_30;
      }

LABEL_24:
      sub_271759D80(v7, v8);
      v17 = *(a2 + 16);
      v14 = *(v17 + 40);
      v15 = *(v17 + 48) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (a1 != 6)
    {
      v11 = (a2 + 16);
      v12 = 7;
      goto LABEL_26;
    }

    v9 = (a2 + 16);
    v10 = 6;
LABEL_20:
    sub_271759D80(v9, v10);
    v16 = *(a2 + 16);
    v14 = *(v16 + 40);
    v15 = *(v16 + 48) & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_27;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v5 = (a2 + 16);
      v6 = 0;
      goto LABEL_18;
    }

    if (a1 != 1)
    {
LABEL_30:

      sub_27183428C(a1);
    }

    v9 = (a2 + 16);
    v10 = 1;
    goto LABEL_20;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 5)
      {
        v5 = (a2 + 16);
        v6 = 5;
LABEL_18:
        sub_271759D80(v5, v6);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48);
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v7 = (a2 + 16);
    v8 = 3;
    goto LABEL_24;
  }

  v11 = (a2 + 16);
  v12 = 2;
LABEL_26:
  sub_271759D80(v11, v12);
  v18 = *(a2 + 16);
  v14 = *(v18 + 40);
  v15 = *(v18 + 48) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_27:
  v19 = *(a3 + 32);

  return sub_27173318C((a3 + 24), v19, v14, &v14[v15], v15);
}

void sub_2713E65AC(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2713E01B4(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  sub_2713E66AC(v5, &v5, a1);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

unsigned __int8 **sub_2713E66AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = sub_271759D80((a2 + 16), 6);
        v24 = *(a2 + 16);
        v25 = *(v24 + 48);
        if (v25 >= 2)
        {
          v26 = *(v24 + 40);
          v27 = 2 * (v25 >> 1);
          do
          {
            result = (*(*a3 + 48))(a3, v26);
            v26 += 2;
            v27 -= 2;
          }

          while (v27);
        }
      }

      else
      {
        result = sub_271759D80((a2 + 16), 7);
        v17 = *(a2 + 16);
        v18 = *(v17 + 48);
        if (v18 >= 4)
        {
          v19 = *(v17 + 40);
          v20 = 4 * (v18 >> 2);
          do
          {
            result = (*(*a3 + 56))(a3, v19);
            v19 += 4;
            v20 -= 4;
          }

          while (v20);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          result = sub_271759D80((a2 + 16), 8);
          v32 = *(a2 + 16);
          v33 = *(v32 + 48);
          if (v33 >= 8)
          {
            v34 = *(v32 + 40);
            v35 = 8 * (v33 >> 3);
            do
            {
              result = (*(*a3 + 72))(a3, v34);
              v34 += 8;
              v35 -= 8;
            }

            while (v35);
          }

          break;
        case 0xB:
          result = sub_271759D80((a2 + 16), 11);
          v40 = *(a2 + 16);
          v41 = *(v40 + 48);
          if (v41 >= 4)
          {
            v42 = *(v40 + 40);
            v43 = 4 * (v41 >> 2);
            do
            {
              result = (*(*a3 + 128))(a3, v42);
              v42 += 4;
              v43 -= 4;
            }

            while (v43);
          }

          break;
        case 0xC:
          result = sub_271759D80((a2 + 16), 12);
          v9 = *(a2 + 16);
          v10 = *(v9 + 48);
          if (v10 >= 8)
          {
            v11 = *(v9 + 40);
            v12 = 8 * (v10 >> 3);
            do
            {
              result = (*(*a3 + 136))(a3, v11);
              v11 += 8;
              v12 -= 8;
            }

            while (v12);
          }

          break;
        default:
          goto LABEL_53;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_53;
      }

      result = sub_271759D80((a2 + 16), 1);
      v13 = *(a2 + 16);
      v14 = *(v13 + 48);
      if (v14 >= 2)
      {
        v15 = *(v13 + 40);
        v16 = 2 * (v14 >> 1);
        do
        {
          result = (*(*a3 + 96))(a3, v15);
          v15 += 2;
          v16 -= 2;
        }

        while (v16);
      }
    }

    else
    {
      result = sub_271759D80((a2 + 16), 0);
      v21 = *(a2 + 16);
      v22 = *(v21 + 48);
      if (v22)
      {
        v23 = *(v21 + 40);
        do
        {
          result = (*(*a3 + 80))(a3, v23++);
          --v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        result = sub_271759D80((a2 + 16), 2);
        v28 = *(a2 + 16);
        v29 = *(v28 + 48);
        if (v29 >= 4)
        {
          v30 = *(v28 + 40);
          v31 = 4 * (v29 >> 2);
          do
          {
            result = (*(*a3 + 104))(a3, v30);
            v30 += 4;
            v31 -= 4;
          }

          while (v31);
        }

        break;
      case 3:
        result = sub_271759D80((a2 + 16), 3);
        v36 = *(a2 + 16);
        v37 = *(v36 + 48);
        if (v37 >= 8)
        {
          v38 = *(v36 + 40);
          v39 = 8 * (v37 >> 3);
          do
          {
            result = (*(*a3 + 120))(a3, v38);
            v38 += 8;
            v39 -= 8;
          }

          while (v39);
        }

        break;
      case 5:
        result = sub_271759D80((a2 + 16), 5);
        v6 = *(a2 + 16);
        v7 = *(v6 + 48);
        if (v7)
        {
          v8 = *(v6 + 40);
          do
          {
            result = (*(*a3 + 88))(a3, v8++);
            --v7;
          }

          while (v7);
        }

        return result;
      default:
LABEL_53:

        sub_27183428C(a1);
    }
  }

  return result;
}

void sub_2713E6B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v7[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v8);
  if (v8 >= 2)
  {
    v6 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7[0] = v4;
    sub_2713E0CC8(a1, v7);
  }

  sub_2713E6CB0(v7, a1, v4);
}

void sub_2713E6CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 7;
  v4 = 0;
  memset(__p, 0, sizeof(__p));
  sub_271758DF0(&v6, 7, __p);
}

void sub_2713E6E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E6E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713E6E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713E792C(v3);
      }

      sub_2713E77B4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713E7AA8(v3);
      case 0xB:
        sub_2713E7C70(v3);
      case 0xC:
        sub_2713E7DEC(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713E7018(v3);
    }

    if (a1 == 1)
    {
      sub_2713E7188(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713E7300(v3);
      case 3:
        sub_2713E747C(v3);
      case 5:
        sub_2713E7644(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713E7018(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182D810(v4, &v6);
  sub_27175862C(&v6, 0, __p);
}

void sub_2713E7160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7188(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F018(v4, &v6);
  sub_271758B58(&v6, 1, __p);
}

void sub_2713E72D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7300(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F1C8(v4, &v6);
  sub_271759088(&v6, 2, __p);
}

void sub_2713E7454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E747C(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  v7 = 0uLL;
  v8 = 0;
  sub_271831430(v4, &v7);
  v5 = v7;
  if (*(&v7 + 1) != v7)
  {
    memmove(0, v7, *(&v7 + 1) - v7);
  }

  if (v5)
  {
    *(&v7 + 1) = v5;
    operator delete(v5);
  }

  sub_2717595B8(&v7, 3, __p);
}

void sub_2713E75F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713E7644(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182EDD8(v4, &v6);
  sub_271758398(&v6, 5, __p);
}

void sub_2713E778C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E77B4(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182EEF8(v4, &v6);
  sub_2717588C0(&v6, 6, __p);
}

void sub_2713E7904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E792C(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F0F0(v4, &v6);
  sub_271758DF0(&v6, 7, __p);
}

void sub_2713E7A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7AA8(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  v7 = 0uLL;
  v8 = 0;
  sub_271831164(v4, &v7);
  v5 = v7;
  if (*(&v7 + 1) != v7)
  {
    memmove(0, v7, *(&v7 + 1) - v7);
  }

  if (v5)
  {
    *(&v7 + 1) = v5;
    operator delete(v5);
  }

  sub_271759320(&v7, 8, __p);
}

void sub_2713E7C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713E7C70(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F4D4(v4, &v6);
  sub_271759850(&v6, 11, __p);
}

void sub_2713E7DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7DEC(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F5F0(v4, &v6);
  sub_271759AE8(&v6, 12, __p);
}

void sub_2713E7F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713E8A00(v3);
      }

      sub_2713E8888(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713E8B7C(v3);
      case 0xB:
        sub_2713E8D44(v3);
      case 0xC:
        sub_2713E8EC0(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713E80EC(v3);
    }

    if (a1 == 1)
    {
      sub_2713E825C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713E83D4(v3);
      case 3:
        sub_2713E8550(v3);
      case 5:
        sub_2713E8718(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713E80EC(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182D810(v4, &v6);
  sub_27175862C(&v6, 0, __p);
}

void sub_2713E8234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E825C(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F018(v4, &v6);
  sub_271758B58(&v6, 1, __p);
}

void sub_2713E83AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E83D4(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F1C8(v4, &v6);
  sub_271759088(&v6, 2, __p);
}

void sub_2713E8528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E8550(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  v7 = 0uLL;
  v8 = 0;
  sub_271831430(v4, &v7);
  v5 = v7;
  if (*(&v7 + 1) != v7)
  {
    memmove(0, v7, *(&v7 + 1) - v7);
  }

  if (v5)
  {
    *(&v7 + 1) = v5;
    operator delete(v5);
  }

  sub_2717595B8(&v7, 3, __p);
}

void sub_2713E86C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713E8718(void *a1)
{
  v1 = *(*a1 + 8);
  memset(__p, 0, sizeof(__p));
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v6 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182EDD8(v4, &v6);
  sub_271758398(&v6, 5, __p);
}