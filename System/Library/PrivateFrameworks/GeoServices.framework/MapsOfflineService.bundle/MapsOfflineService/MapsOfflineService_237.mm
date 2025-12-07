void sub_E7A8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7A8D8(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 336));
  if ((v6 & 4) != 0)
  {
    sub_1491CB4(v3, v7);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 16) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

double sub_E7A988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 336);
  v6 = sub_3B6890(a2);
  if (sub_E7F33C(a1))
  {
    v7 = &off_2772E28;
    if (v5)
    {
      v7 = v5;
    }

    v8 = *(v6 + 4);
    v9 = v7[11];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &off_2773678;
    }

    sub_E7F3EC(v8, v10, a3);
  }

  else
  {
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *a3 = 0x7FFFFFFF;
    *(a3 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    sub_5F328(a3 + 56);
    *(a3 + 96) = 0;
    sub_5F328(a3 + 104);
    result = NAN;
    *(a3 + 144) = xmmword_229BA60;
  }

  return result;
}

void sub_E7AA8C(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

BOOL sub_E7AAC4(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  if (*(v1 + 32) != 2)
  {
    return 0;
  }

  if (*(a1 + 42))
  {
    v2 = *(a1 + 424);
    if ((*(v2 + 16) & 8) != 0 && (*(v2 + 60) - 1) < 2)
    {
      return 1;
    }
  }

  v4 = sub_E7A5E0(a1);
  return v4 == 8 || v4 == 4 || v4 == 2;
}

void sub_E7AB44(uint64_t a1)
{
  if (*(a1 + 42))
  {
    v1 = *(a1 + 424);
    if (*(v1 + 32) >= 1 && (*(*(*(v1 + 40) + 8) + 40) & 0x20) != 0)
    {
      nullsub_1();
    }
  }
}

void **sub_E7AB7C(void **a1)
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
        v3 = sub_154CF7C(v3 - 11);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_E7BD4C(_Unwind_Exception *a1)
{
  sub_E7AB7C((v2 - 176));
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

void *sub_E7BE68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 41) & 0x10) != 0)
  {
    v4 = *(*(a1 + 360) + 160);
    goto LABEL_6;
  }

  v4 = *(a1 + 80);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = *(*(a1 + 88) + 8);
  if (*(v5 + 40))
  {
    v10 = *(v5 + 456) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      if (*(v10 + 8) >= 4uLL)
      {
        v10 = *v10;
LABEL_26:
        v4 = *v10;
        goto LABEL_6;
      }
    }

    else if (*(v10 + 23) >= 4u)
    {
      goto LABEL_26;
    }

    v4 = 0;
LABEL_6:
    v7 = v4 & 0xFFFFFF00;
    v6 = 0x100000000;
    goto LABEL_9;
  }

  v6 = 0;
  LOBYTE(v4) = 0;
LABEL_8:
  v7 = 0;
LABEL_9:
  result = sub_E86338(a1, v6 | v7 | v4, a2);
  if ((*(a1 + 40) & 0x80) != 0)
  {
    if ((*(*(a1 + 320) + 263) & 1) != 0 || *(a1 + 128) < 1)
    {
      return result;
    }
  }

  else if (*(a1 + 128) <= 0)
  {
    return result;
  }

  v9 = *(*(a1 + 136) + 8);
  if ((*(v9 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v9 + 8))
    {
      return result;
    }
  }

  else if (!*(v9 + 23))
  {
    return result;
  }

  return sub_4EC344(a2, v9);
}

uint64_t sub_E7BF98@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 104) >= 1)
  {
    sub_14CD334(v3, *(*(result + 112) + 8));
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_E7C07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = v11;
  *(v10 + 8) = v12;
  sub_E8B92C(&a9);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

void sub_E7C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_E8B92C(&a9);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7C0C0(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 320))
  {
    v2 = *(a1 + 320);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5;
      v5 = (v5 + 4);
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
    LOBYTE(v3) = v4 & 1;
  }

  v8 = *(a1 + 312);
  if (!v8)
  {
    v8 = &off_2772E28;
  }

  return (*(v8 + 32) != 0) | (v3 & 1);
}

unint64_t sub_E7C160(uint64_t a1)
{
  if (*(a1 + 320))
  {
    v2 = *(a1 + 320);
  }

  else
  {
    v2 = &off_2776700;
  }

  if (*(a1 + 312))
  {
    v3 = *(a1 + 312);
  }

  else
  {
    v3 = &off_2772E28;
  }

  v4 = &off_2773750;
  if (v3[15])
  {
    v4 = v3[15];
  }

  v5 = v4[3];
  v6 = &off_2773710;
  if (v5)
  {
    v6 = v5;
  }

  v7 = *(v6 + 26);
  v8 = *(v6 + 25);
  v9 = v3[11];
  if (!v9)
  {
    v9 = &off_2773678;
  }

  v10 = v9[3];
  if (!v10)
  {
    v10 = &off_2773640;
  }

  v11 = *(v10 + 48);
  v12 = *(v10 + 49);
  v13 = *(v2 + 244);
  v14 = *(v2 + 253);
  v15 = *(v9 + 41);
  v16 = v3[13];
  v17 = &off_2773810;
  if (v16)
  {
    v17 = v16;
  }

  v18 = *(v17 + 6);
  if (v18)
  {
    v19 = v17[4];
    v20 = 4 * v18;
    do
    {
      if (!*v19)
      {
        break;
      }

      v19 = (v19 + 4);
      v20 -= 4;
    }

    while (v20);
  }

  v21 = v7 | (v8 << 8) | (v11 << 40) | (v12 << 48) | (v13 << 32) | (v14 << 24) | (v15 << 56);
  v22 = v21 >> 40;
  v23 = HIWORD(v21);
  if ((*(a1 + 40) & 2) != 0)
  {
    sub_11FD59C(v35, 0, 0);
    if ((sub_194DB28(v35, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
    {
LABEL_42:
      sub_11FD994(v35);
      return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
    }

    if ((*(a1 + 41) & 0x10) != 0)
    {
      v24 = *(*(a1 + 360) + 160);
      goto LABEL_35;
    }

    v24 = *(a1 + 80);
    if (!v24)
    {
      goto LABEL_27;
    }

    v25 = *(*(a1 + 88) + 8);
    if ((*(v25 + 40) & 1) == 0)
    {
      LOBYTE(v24) = 0;
LABEL_27:
      v26 = 0;
      if (v37)
      {
        v27 = (v37 + 8);
      }

      else
      {
        v27 = 0;
      }

      v28 = v36;
      if (!v36)
      {
LABEL_31:
        v29 = v27;
LABEL_32:
        if (v29 != &v27[v28])
        {
          v30 = *v29;
          LOBYTE(v22) = v11 & *(v30 + 161);
          LOBYTE(v23) = v12 & *(v30 + 162);
        }

        goto LABEL_42;
      }

LABEL_39:
      v31 = v26 | v24;
      v32 = 8 * v28;
      v29 = v27;
      while (*(*v29 + 144) != v31)
      {
        ++v29;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_32;
    }

    v34 = *(v25 + 456) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v34 + 23) < 0)
    {
      if (*(v34 + 8) >= 4uLL)
      {
        v34 = *v34;
LABEL_50:
        v24 = *v34;
LABEL_35:
        v26 = v24 & 0xFFFFFF00;
        if (v37)
        {
          v27 = (v37 + 8);
        }

        else
        {
          v27 = 0;
        }

        v28 = v36;
        if (!v36)
        {
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    else if (*(v34 + 23) >= 4u)
    {
      goto LABEL_50;
    }

    v24 = 0;
    goto LABEL_35;
  }

  return v21 & 0xFF0000FFFFFFFFFFLL | (v22 << 40) & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
}

void sub_E7C400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7C414(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[11];
  if (!v2)
  {
    v2 = &off_2773678;
  }

  v3 = v1 + 41;
  if ((v2[2] & 0x10) != 0)
  {
    v3 = v2 + 11;
  }

  v4 = *v3;
  if (v4 == 3)
  {
    return 2;
  }

  else
  {
    return v4 == 2;
  }
}

BOOL sub_E7C46C(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 320))
  {
    v2 = *(a1 + 320);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5;
      v5 = (v5 + 4);
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
    LODWORD(v3) = v4 & 1;
  }

  v8 = &off_2772E28;
  if (*(a1 + 312))
  {
    v8 = *(a1 + 312);
  }

  if (*(v8 + 32))
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 == 0;
  }

  return !v9 && *(a1 + 152) > 1;
}

BOOL sub_E7C52C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

uint64_t sub_E7C550(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 312));
  if ((v6 & 0x40) != 0)
  {
    sub_1491CC0(v3, v7);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 24);
    }

    else
    {
      v2 = 0;
    }

    sub_14AD440(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2 & 1;
}

void sub_E7C5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7C5FC(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 312));
  if ((v6 & 4) != 0)
  {
    sub_1491CB4(v3, v7);
    if ((v3[16] & 2) != 0)
    {
      v2 = *(v4 + 16) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7C698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

double sub_E7C6AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 312);
  v6 = sub_3B6890(a2);
  if (sub_E7F8D4(a1))
  {
    v7 = &off_2772E28;
    if (v5)
    {
      v7 = v5;
    }

    v8 = *(v6 + 4);
    v9 = v7[11];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &off_2773678;
    }

    sub_E7F3EC(v8, v10, a3);
  }

  else
  {
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 56) = 0u;
    *a3 = 0x7FFFFFFF;
    *(a3 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    sub_5F328(a3 + 56);
    *(a3 + 96) = 0;
    sub_5F328(a3 + 104);
    result = NAN;
    *(a3 + 144) = xmmword_229BA60;
  }

  return result;
}

void sub_E7C7B0(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_E7D8F8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27B9BC0);
  sub_E7AB7C((v2 - 176));
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

void sub_E7D920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  sub_E7AB7C((v29 - 176));
  sub_528AB4(v28);
  _Unwind_Resume(a1);
}

double sub_E7DA20@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 264) = 0;
  *(a1 + 396) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 480) = 5;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0x7FFFFFFF;
  *(a1 + 624) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 601) = 0u;
  result = NAN;
  *(a1 + 640) = -1;
  *(a1 + 648) = 0x7FFFFFFF;
  *(a1 + 660) = 0;
  *(a1 + 652) = 0;
  *(a1 + 664) = -1;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  return result;
}

uint64_t sub_E7DAD0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 80);
  if (v3 >= 2)
  {
    sub_14CD334(v4, *(*(result + 88) + 8 * (v3 - 1) + 8));
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_E7DBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = v11;
  *(v10 + 8) = v12;
  sub_E8B92C(&a9);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

void sub_E7DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_E8B92C(&a9);
  sub_154CF7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7DBEC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 136);
  }

  else
  {
    v1 = &off_2776700;
  }

  if (*(a1 + 152))
  {
    v2 = *(a1 + 152);
  }

  else
  {
    v2 = &off_2772E28;
  }

  v3 = v2[15];
  if (!v3)
  {
    v3 = &off_2773750;
  }

  v4 = v3[3];
  v5 = &off_2773710;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 26);
  v7 = *(v5 + 25);
  if (v2[11])
  {
    v8 = v2[11];
  }

  else
  {
    v8 = &off_2773678;
  }

  v9 = &off_2773640;
  if (v8[3])
  {
    v9 = v8[3];
  }

  v10 = *(v9 + 48);
  v11 = *(v9 + 49);
  v12 = *(v1 + 244);
  v13 = *(v1 + 253);
  v14 = *(v8 + 41);
  v15 = v2[13];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &off_2773810;
  }

  v17 = *(v16 + 6);
  if (v17)
  {
    v18 = v16[4];
    v19 = 4 * v17;
    do
    {
      if (!*v18)
      {
        break;
      }

      v18 = (v18 + 4);
      v19 -= 4;
    }

    while (v19);
  }

  return v6 | (v7 << 8) | (v10 << 40) | (v11 << 48) | (v12 << 32) | (v13 << 24) | (v14 << 56);
}

BOOL sub_E7DD0C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

uint64_t sub_E7DD30(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = *(v1 + 74);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_E7DD60(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[12];
  if (!v2)
  {
    v2 = &off_2773798;
  }

  return (*(v2 + 19) - 1) < 2;
}

uint64_t sub_E7DD9C(uint64_t *a1)
{
  v2 = sub_6EAFC();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, &qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v3 = sub_12330DC(1u);
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = 0;
  v13 = v5;
  v8[0] = qword_27BAC10;
  v8[1] = unk_27BAC18;
  v9 = 2;
  v10 = (unk_27BAC18 - qword_27BAC10) >> 3;
  v6 = (*(*v2 + 40))(v2, v11, v8);
  if ((v6 & 0x80000000) == 0 && v6 < ((unk_27BAC18 - qword_27BAC10) >> 3))
  {
    v3 = *(8 * (v6 & 0x7FFFFFFF) + qword_27BAC10);
  }

  v11[0] = v3;
  return sub_1232E98(v11);
}

uint64_t sub_E7DEE0(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  v3 = sub_6EC50();
  if (*(a1 + 23) < 0)
  {
    sub_325C(&v19, *a1, *(a1 + 8));
  }

  else
  {
    v19 = *a1;
    v20 = *(a1 + 16);
  }

  sub_5275EC(&__p, &v19, 1uLL);
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, &qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v5 = sub_12330DC(0x14u);
  v16[0] = __p;
  v16[1] = v12;
  v17 = 0;
  v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 3);
  v13[0] = qword_27BAC10;
  v13[1] = unk_27BAC18;
  v14 = 2;
  v15 = (unk_27BAC18 - qword_27BAC10) >> 3;
  v6 = (*(*v3 + 40))(v3, v16, v13);
  if ((v6 & 0x80000000) == 0 && v6 < ((unk_27BAC18 - qword_27BAC10) >> 3))
  {
    v5 = *(8 * (v6 & 0x7FFFFFFF) + qword_27BAC10);
  }

  v16[0] = v5;
  v7 = __p;
  if (__p)
  {
    v8 = v12;
    v9 = __p;
    if (v12 != __p)
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

      while (v8 != v7);
      v9 = __p;
    }

    v12 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  return sub_1232E98(v16);
}

void sub_E7E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  if (*(v3 - 41) < 0)
  {
    operator delete(*(v3 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_E7E130(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = *(a1 + 352);
  if (!v4)
  {
    v4 = &off_2776700;
  }

  v5 = v4[6];
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 10);
  if (!v7)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_34:
      v14 = sub_E7DEE0(a2);
      if (v14)
      {
        sub_123316C(v14);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_36:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v15 = a2;
  v8 = 8 * v7;
  while (1)
  {
    v9 = *(*v6 + 23);
    if (v9 >= 0)
    {
      v10 = *v6;
    }

    else
    {
      v10 = **v6;
    }

    if (v9 >= 0)
    {
      v11 = *(*v6 + 23);
    }

    else
    {
      v11 = (*v6)[1];
    }

    if (v11 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v11;
    }

    if (v11)
    {
      switch(v11)
      {
        case 1uLL:
          *&v17 = *v10;
          v13 = 1;
          break;
        case 2uLL:
          *&v17 = *v10;
          v13 = 2;
          break;
        case 3uLL:
          *&v17 = *v10 | (v10[2] << 16);
          v13 = 3;
          break;
        default:
          sub_852E4(v10, v12, &v17);
          goto LABEL_27;
      }

      *(&v17 + 1) = v13;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

LABEL_27:
    v16 = sub_1232F28(&v17, 0);
    if (sub_1232E98(&v16))
    {
      operator new();
    }

    ++v6;
    v8 -= 8;
    if (!v8)
    {
      a2 = v15;
      if (*(v15 + 72) == 1)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }
}

void sub_E7E410(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E7E444(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 56);
  if (!v6)
  {
    if (*(a2 + 72) == 1)
    {
LABEL_32:
      v13 = sub_E7DEE0(a2);
      if (v13)
      {
        sub_123316C(v13);
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        operator new();
      }
    }

LABEL_34:
    sub_123316C(0xBu);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  v14 = a2;
  v7 = 8 * v6;
  while (1)
  {
    v8 = *(*v5 + 23);
    if (v8 >= 0)
    {
      v9 = *v5;
    }

    else
    {
      v9 = **v5;
    }

    if (v8 >= 0)
    {
      v10 = *(*v5 + 23);
    }

    else
    {
      v10 = (*v5)[1];
    }

    if (v10 >= 0x1F)
    {
      v11 = 31;
    }

    else
    {
      v11 = v10;
    }

    if (v10)
    {
      switch(v10)
      {
        case 1uLL:
          *&v16 = *v9;
          v12 = 1;
          break;
        case 2uLL:
          *&v16 = *v9;
          v12 = 2;
          break;
        case 3uLL:
          *&v16 = *v9 | (v9[2] << 16);
          v12 = 3;
          break;
        default:
          sub_852E4(v9, v11, &v16);
          goto LABEL_25;
      }

      *(&v16 + 1) = v12;
      v17 = 0u;
      v18 = 0u;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

LABEL_25:
    v15 = sub_1232F28(&v16, 0);
    if (sub_1232E98(&v15))
    {
      operator new();
    }

    ++v5;
    v7 -= 8;
    if (!v7)
    {
      a2 = v14;
      if (*(v14 + 72) == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }
  }
}

void sub_E7E710(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7E744(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 352))
  {
    v3 = *(a1 + 352);
  }

  else
  {
    v3 = &off_2776700;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = v3[6];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 10);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v10 = *v5;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v5;
    v8 -= 8;
  }

  while (v8);
  if (!*(v3 + 10))
  {
LABEL_23:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, &qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10;
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_24:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_31:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E7E9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7E9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7EA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7EA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E7EA30(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 8 * v5;
  do
  {
    v10 = *v4;
    if (v7 < v23)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v7, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v7 + 16) = *(v10 + 16);
        *v7 = v9;
      }

      v7 += 24;
    }

    else
    {
      v7 = sub_1CEE8(&__p, v10);
    }

    v22 = v7;
    ++v4;
    v8 -= 8;
  }

  while (v8);
  if (!*(a1 + 56))
  {
LABEL_20:
    v14 = 0;
    v15 = __p;
    if (!__p)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v11 = sub_6E9A8();
  if ((atomic_load_explicit(&qword_27B9BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9BC8))
  {
    sub_E89FD8();
    sub_E8A5B8(qword_27BAC28, &qword_27BAC10);
    __cxa_guard_release(&qword_27B9BC8);
  }

  v12 = sub_12330DC(0x14u);
  v27[0] = __p;
  v27[1] = v22;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3);
  v24[0] = qword_27BAC10;
  v24[1] = unk_27BAC18;
  v25 = 2;
  v26 = (unk_27BAC18 - qword_27BAC10) >> 3;
  v13 = (*(*v11 + 40))(v11, v27, v24);
  if ((v13 & 0x80000000) == 0 && v13 < ((unk_27BAC18 - qword_27BAC10) >> 3))
  {
    v12 = *(8 * (v13 & 0x7FFFFFFF) + qword_27BAC10);
  }

  v20 = v12;
  v14 = sub_1232E98(&v20);
  v15 = __p;
  if (__p)
  {
LABEL_21:
    v16 = v22;
    v17 = v15;
    if (v22 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v22 = v15;
    operator delete(v17);
  }

LABEL_28:
  if (!v14)
  {
    if (*(a2 + 72) != 1)
    {
      return 11;
    }

    v14 = sub_E7DEE0(a2);
    if (!v14)
    {
      return 11;
    }
  }

  return v14;
}

void sub_E7EC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27B9BC8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E7ED0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 352);
  if (!v3)
  {
    v3 = &off_2776700;
  }

  v4 = v3[25];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E7EFF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_E7F024(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    v3 = &off_278B980;
  }

  v4 = v3[37];
  v5 = &off_277EBA8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 6);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    operator new();
  }

  v7 = v5[4];
  v8 = 4 * v6;
  do
  {
    v9 = *v7;
    if (*v7 == 2)
    {
      operator new();
    }

    if (v9 == 1)
    {
      operator new();
    }

    if (!v9)
    {
      operator new();
    }

    v7 = (v7 + 4);
    v8 -= 4;
  }

  while (v8);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E7F310(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7F33C(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 336));
  if ((v6 & 4) != 0)
  {
    sub_1491CB4(v3, v7);
    if ((v3[16] & 2) != 0)
    {
      v2 = (*(v4 + 16) >> 1) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7F3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

void sub_E7F3EC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = *(a2 + 32);
  if (!v6)
  {
    v6 = &off_2773608;
  }

  v7 = v6[4];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &off_2773580;
  }

  v64 = 0;
  v65 = 0;
  v63 = 0;
  if ((v8[2] & 0x10) != 0)
  {
    sub_1478514(v59, v8[7]);
    v10 = v61;
    if (v61 >= 1)
    {
      v11 = 8;
      do
      {
        v13 = *(v62 + v11);
        if ((v13[6] - 1) >= 0xA)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13[6];
        }

        LODWORD(v9) = v13[7];
        v15 = v9 * 1000.0;
        if (v15 < 4.50359963e15)
        {
          v15 = (((v15 + v15) + 1) >> 1);
        }

        v16 = v15;
        LODWORD(v15) = v13[8];
        v17 = llround(*&v15 * 1000.0);
        v18 = v64;
        if (v64 < v65)
        {
          sub_96DCC(v64, v14, v16, v17, 0);
          v12 = v18 + 16;
        }

        else
        {
          v19 = (v64 - v63) >> 4;
          if ((v19 + 1) >> 60)
          {
            sub_1794();
          }

          v20 = (v65 - v63) >> 3;
          if (v20 <= v19 + 1)
          {
            v20 = v19 + 1;
          }

          if (v65 - v63 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (!(v21 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = sub_96DCC(16 * v19, v14, v16, v17, 0);
          v12 = (v22 + 16);
          v23 = v63;
          v24 = (v22 - (v64 - v63));
          memcpy(v24, v63, v64 - v63);
          v63 = v24;
          v65 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        v64 = v12;
        v11 += 8;
        --v10;
      }

      while (v10);
    }

    sub_14785A0(v59);
    v4 = a1;
    v3 = a2;
  }

  sub_E842C0(v59, (v8[3] & 0xFFFFFFFFFFFFFFFELL));
  sub_E842C0(v57, (v8[4] & 0xFFFFFFFFFFFFFFFELL));
  v25 = *(v8 + 4);
  if ((v25 & 0x800) != 0)
  {
    v26 = *(v8 + 22) + 978307200;
    if ((v25 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v26 = 0x7FFFFFFF;
    if ((v25 & 0x20) != 0)
    {
LABEL_31:
      v27 = *(v8 + 16);
      goto LABEL_34;
    }
  }

  v27 = 0xFFFFFFFFLL;
LABEL_34:
  v28 = *(v3 + 32);
  if (!v28)
  {
    v28 = &off_2773608;
  }

  v29 = v28[4];
  if (!v29)
  {
    v29 = &off_2773580;
  }

  v30 = *(v29 + 21);
  v33 = v29 + 9;
  v31 = *(v29 + 18);
  v32 = *(v33 + 1);
  if (v32 >= v31)
  {
    v34 = v31;
  }

  else
  {
    v34 = v32;
  }

  if (v31 >= v30)
  {
    v35 = v34;
  }

  else
  {
    v35 = v30;
  }

  sub_456538(&v66, 1000 * v35, 1000 * v30, 1000 * v32);
  v55 = v66;
  v56 = v67;
  v36 = *(v3 + 32);
  if (!v36)
  {
    v36 = &off_2773608;
  }

  v37 = v36[5];
  if (!v37)
  {
    v37 = &off_27735E8;
  }

  v38 = *(v37 + 4);
  v40 = *(v37 + 6);
  v39 = *(v37 + 7);
  v41 = v40 == 1;
  v42 = v40 == 1;
  v43 = !v41;
  if (v39 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  if ((~v38 & 3) != 0)
  {
    v44 = 0;
  }

  if ((v38 & v42) != 0)
  {
    v44 = 2;
  }

  sub_E6EFFC(a3, &v55, *(v8 + 80), v59, v57, &v63, v4, v26, v27, SHIDWORD(v27), v44);
  v45 = __p;
  if (__p)
  {
    do
    {
      v46 = *v45;
      v47 = *(v45 + 12);
      if (v47 != -1)
      {
        (off_26743C0[v47])(&v66, v45 + 5);
      }

      *(v45 + 12) = -1;
      if (*(v45 + 39) < 0)
      {
        operator delete(v45[2]);
      }

      operator delete(v45);
      v45 = v46;
    }

    while (v46);
  }

  v48 = v57[0];
  v57[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }

  v49 = v60;
  if (v60)
  {
    do
    {
      v50 = *v49;
      v51 = *(v49 + 12);
      if (v51 != -1)
      {
        (off_26743C0[v51])(v57, v49 + 5);
      }

      *(v49 + 12) = -1;
      if (*(v49 + 39) < 0)
      {
        operator delete(v49[2]);
      }

      operator delete(v49);
      v49 = v50;
    }

    while (v50);
  }

  v52 = v59[0];
  v59[0] = 0;
  if (v52)
  {
    operator delete(v52);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_E7F854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = *(v22 - 144);
  if (v24)
  {
    *(v22 - 136) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7F8D4(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return 0;
  }

  sub_1491CC4(v5, *(a1 + 312));
  if ((v6 & 4) != 0)
  {
    sub_1491CB4(v3, v7);
    if ((v3[16] & 2) != 0)
    {
      v2 = (*(v4 + 16) >> 1) & 1;
    }

    else
    {
      v2 = 0;
    }

    sub_14AB24C(v3);
  }

  else
  {
    v2 = 0;
  }

  sub_1491E84(v5);
  return v2;
}

void sub_E7F970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1491E84(va);
  _Unwind_Resume(a1);
}

void sub_E7F984(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = &off_2772E28;
  if (*(a1 + 336))
  {
    v3 = *(a1 + 336);
  }

  v4 = v3[11];
  if (!v4)
  {
    v4 = &off_2773678;
  }

  v5 = v4[3];
  if (!v5)
  {
    v5 = &off_2773640;
  }

  v6 = v5[5];
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = 0;
    v10 = 8 * v8;
    do
    {
      while (1)
      {
        v11 = *(*v7 + 8) >= 3u ? 0 : *(*v7 + 8);
        nullsub_1();
        v13 = a2[2];
        if (v9 >= v13)
        {
          break;
        }

        *v9 = v12;
        *(v9 + 8) = v11;
        v9 += 16;
        a2[1] = v9;
        ++v7;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_27;
        }
      }

      v14 = v9;
      v15 = v9 >> 4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        *a2 = 0;
        sub_1794();
      }

      if (v13 >> 3 > v16)
      {
        v16 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        *a2 = 0;
        sub_1808();
      }

      v18 = 16 * v15;
      *v18 = v12;
      *(v18 + 8) = v11;
      v9 = 16 * v15 + 16;
      memcpy(0, 0, v14);
      a2[1] = v9;
      a2[2] = 0;
      a2[1] = v9;
      ++v7;
      v10 -= 8;
    }

    while (v10);
  }

LABEL_27:
  *a2 = 0;
}

void sub_E7FB5C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7FB84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 3)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

void sub_E7FB98(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = &off_2772E28;
  if (*(a1 + 312))
  {
    v3 = *(a1 + 312);
  }

  v4 = v3[11];
  if (!v4)
  {
    v4 = &off_2773678;
  }

  v5 = v4[3];
  if (!v5)
  {
    v5 = &off_2773640;
  }

  v6 = v5[5];
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = 0;
    v10 = 8 * v8;
    do
    {
      while (1)
      {
        v11 = *(*v7 + 8) >= 3u ? 0 : *(*v7 + 8);
        nullsub_1();
        v13 = a2[2];
        if (v9 >= v13)
        {
          break;
        }

        *v9 = v12;
        *(v9 + 8) = v11;
        v9 += 16;
        a2[1] = v9;
        ++v7;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_27;
        }
      }

      v14 = v9;
      v15 = v9 >> 4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        *a2 = 0;
        sub_1794();
      }

      if (v13 >> 3 > v16)
      {
        v16 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        *a2 = 0;
        sub_1808();
      }

      v18 = 16 * v15;
      *v18 = v12;
      *(v18 + 8) = v11;
      v9 = 16 * v15 + 16;
      memcpy(0, 0, v14);
      a2[1] = v9;
      a2[2] = 0;
      a2[1] = v9;
      ++v7;
      v10 -= 8;
    }

    while (v10);
  }

LABEL_27:
  *a2 = 0;
}

void sub_E7FD70(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E7FD98(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0x10000) != 0)
  {
    v2 = *(a1 + 424);
    if (*(v2 + 16))
    {
      return *(v2 + 48) | 0x100000000;
    }
  }

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(a1 + 296) & 0xFFFFFFFFFFFFFFFELL);
  if (*(v4 + 23) < 0)
  {
    if (*(v4 + 1) < 4uLL)
    {
      return 0x100000000;
    }

    v4 = *v4;
  }

  else if (*(v4 + 23) < 4u)
  {
    return 0x100000000;
  }

  return *v4 | 0x100000000;
}

unint64_t sub_E7FE50(uint64_t a1)
{
  if (*(a1 + 352))
  {
    v2 = *(a1 + 352);
  }

  else
  {
    v2 = &off_2776700;
  }

  v3 = &off_2773750;
  if (*(a1 + 376))
  {
    v3 = *(a1 + 376);
  }

  v4 = v3[3];
  v5 = &off_2773710;
  if (v4)
  {
    v5 = v4;
  }

  v6 = *(v5 + 26);
  v7 = *(v5 + 25);
  v8 = *(a1 + 320);
  if (!v8)
  {
    v8 = &off_2773678;
  }

  v9 = v8[3];
  if (!v9)
  {
    v9 = &off_2773640;
  }

  v10 = *(v9 + 48);
  v11 = *(v9 + 49);
  v12 = *(v2 + 244);
  v13 = *(v2 + 253);
  v14 = *(v8 + 41);
  v15 = &off_2773810;
  if (*(a1 + 336))
  {
    v15 = *(a1 + 336);
  }

  v16 = *(v15 + 6);
  if (v16)
  {
    v17 = v15[4];
    v18 = 4 * v16;
    do
    {
      if (!*v17)
      {
        break;
      }

      v17 = (v17 + 4);
      v18 -= 4;
    }

    while (v18);
  }

  v19 = v6 | (v7 << 8) | (v10 << 40) | (v11 << 48) | (v12 << 32) | (v13 << 24) | (v14 << 56);
  v20 = v19 >> 40;
  v21 = HIWORD(v19);
  if (*(a1 + 40))
  {
    sub_11FD59C(v29, 0, 0);
    if ((sub_194DB28(v29, *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
    {
LABEL_41:
      sub_11FD994(v29);
      return v19 & 0xFF0000FFFFFFFFFFLL | (v20 << 40) & 0xFF00FFFFFFFFFFFFLL | (v21 << 48);
    }

    if ((*(a1 + 40) & 2) != 0)
    {
      v22 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v22 + 23) < 0)
      {
        if (*(v22 + 8) >= 4uLL)
        {
          v22 = *v22;
          goto LABEL_34;
        }
      }

      else if (*(v22 + 23) >= 4u)
      {
LABEL_34:
        v23 = *v22;
        if (v31)
        {
          v24 = v31 + 8;
        }

        else
        {
          v24 = 0;
        }

        v25 = v30;
        if (!v30)
        {
LABEL_38:
          v27 = v24;
LABEL_39:
          if (v27 != v24 + 8 * v25)
          {
            LOBYTE(v20) = v10 & *(*v27 + 161);
            LOBYTE(v21) = v11 & *(*v27 + 162);
          }

          goto LABEL_41;
        }

LABEL_29:
        v26 = 8 * v25;
        v27 = v24;
        while (*(*v27 + 144) != v23)
        {
          v27 += 8;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_39;
      }
    }

    v23 = 0;
    if (v31)
    {
      v24 = v31 + 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = v30;
    if (!v30)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  return v19 & 0xFF0000FFFFFFFFFFLL | (v20 << 40) & 0xFF00FFFFFFFFFFFFLL | (v21 << 48);
}

void sub_E800A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E800B8(uint64_t a1)
{
  if ((*(a1 + 41) & 0x10) != 0)
  {
    return *(*(a1 + 360) + 160) & 0xFFFFFF00 | *(*(a1 + 360) + 160) | 0x100000000;
  }

  if (!*(a1 + 80))
  {
    return 0;
  }

  v1 = *(*(a1 + 88) + 8);
  if ((*(v1 + 40) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(v1 + 456) & 0xFFFFFFFFFFFFFFFELL);
  if (*(v3 + 23) < 0)
  {
    if (*(v3 + 1) < 4uLL)
    {
      return 0x100000000;
    }

    v3 = *v3;
  }

  else if (*(v3 + 23) < 4u)
  {
    return 0x100000000;
  }

  return *v3 | 0x100000000;
}

void sub_E80194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  *(a2 + 63) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = vnegq_f64(v2);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  if ((*(a1 + 40) & 0x40) != 0)
  {
    v3 = *(a1 + 344);
    v4 = &off_277E5E8;
    if (*(v3 + 48))
    {
      v4 = *(v3 + 48);
    }

    v5 = *(v4 + 7);
    v6 = -1;
    if (v5 <= 180.0)
    {
      v7 = *(v4 + 6);
      if (fabs(v7) <= 85.0511288 && v5 >= -180.0)
      {
        v8 = a2;
        v9 = sin(fmin(fmax(v7, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        v10 = log((v9 + 1.0) / (1.0 - v9));
        a2 = v8;
        LODWORD(v11) = ((v10 / -12.5663706 + 0.5) * 4294967300.0);
        if (v11 >= 0xFFFFFFFE)
        {
          v11 = 4294967294;
        }

        else
        {
          v11 = v11;
        }

        v6 = ((v5 + 180.0) / 360.0 * 4294967300.0) | (v11 << 32);
      }
    }

    *a2 = v6;
    *(a2 + 8) = 0x7FFFFFFF;
    v12 = fmax(*(v3 + 88), 0.0) * 3.6;
    v13 = 0x406F400000000000;
    if (v12 <= 250.0)
    {
      v13 = *&v12;
    }

    *(a2 + 56) = v13;
    *(a2 + 40) = *(v3 + 72);
    v14 = *(v3 + 40);
    if ((v14 & 0x200) != 0)
    {
      v15 = *(v3 + 112);
      if (v15 >= 0.0)
      {
        v16 = llround(v15 * 100.0) % 36000;
        if (v16 > 0xFFFF735F)
        {
          LOWORD(v16) = v16 - 29536;
        }

        *(a2 + 50) = v16;
        if ((v14 & 0x400) != 0)
        {
          v17 = *(v3 + 120);
          if (v17 >= 0.0)
          {
            v18 = llround(fabs(v17) * 100.0) % 36000;
            if (v18 > 0xFFFF735F)
            {
              LOWORD(v18) = v18 - 29536;
            }

            *(a2 + 48) = v18;
          }
        }
      }
    }
  }
}

void sub_E8041C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 16) = -1;
  v3 = (a2 + 16);
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  *(a2 + 63) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = vnegq_f64(v2);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v4 = *(a1 + 40);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(a1 + 304);
    v6 = &off_277E5E8;
    if (*(v5 + 48))
    {
      v6 = *(v5 + 48);
    }

    v7 = *(v6 + 7);
    v8 = -1;
    if (v7 <= 180.0)
    {
      v9 = *(v6 + 6);
      if (fabs(v9) <= 85.0511288 && v7 >= -180.0)
      {
        v10 = a2;
        v11 = a1;
        v12 = sin(fmin(fmax(v9, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        v13 = log((v12 + 1.0) / (1.0 - v12));
        a1 = v11;
        a2 = v10;
        LODWORD(v14) = ((v13 / -12.5663706 + 0.5) * 4294967300.0);
        if (v14 >= 0xFFFFFFFE)
        {
          v14 = 4294967294;
        }

        else
        {
          v14 = v14;
        }

        v8 = ((v7 + 180.0) / 360.0 * 4294967300.0) | (v14 << 32);
      }
    }

    *a2 = v8;
    *(a2 + 8) = 0x7FFFFFFF;
    v15 = fmax(*(v5 + 88), 0.0) * 3.6;
    v16 = 0x406F400000000000;
    if (v15 <= 250.0)
    {
      v16 = *&v15;
    }

    *(a2 + 56) = v16;
    *(a2 + 40) = *(v5 + 72);
    if ((v4 & 0x1000) != 0 && (v17 = *(a1 + 360), *(v17 + 32) >= 1) && (*(*(*(v17 + 40) + 8) + 40) & 8) != 0)
    {
      v23 = a2;
      nullsub_1();
      a2 = v23;
      *v3 = v24;
      v18 = *(v5 + 40);
      if ((v18 & 0x200) == 0)
      {
        return;
      }
    }

    else
    {
      *v3 = -1;
      v18 = *(v5 + 40);
      if ((v18 & 0x200) == 0)
      {
        return;
      }
    }

    v19 = *(v5 + 112);
    if (v19 >= 0.0)
    {
      v20 = llround(v19 * 100.0) % 36000;
      if (v20 > 0xFFFF735F)
      {
        LOWORD(v20) = v20 - 29536;
      }

      *(a2 + 50) = v20;
      if ((v18 & 0x400) != 0)
      {
        v21 = *(v5 + 120);
        if (v21 >= 0.0)
        {
          v22 = llround(fabs(v21) * 100.0) % 36000;
          if (v22 > 0xFFFF735F)
          {
            LOWORD(v22) = v22 - 29536;
          }

          *(a2 + 48) = v22;
        }
      }
    }
  }
}

unint64_t sub_E80738(uint64_t a1)
{
  if ((*(a1 + 40) & 0x40) == 0)
  {
    return -1;
  }

  v2 = *(*(a1 + 344) + 48);
  if (!v2)
  {
    v2 = &off_277E5E8;
  }

  v3 = *(v2 + 7);
  result = -1;
  if (v3 <= 180.0)
  {
    v4 = *(v2 + 6);
    if (fabs(v4) <= 85.0511288 && v3 >= -180.0)
    {
      v5 = sin(fmin(fmax(v4, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v6) = ((log((v5 + 1.0) / (1.0 - v5)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v6 >= 0xFFFFFFFE)
      {
        v6 = 4294967294;
      }

      else
      {
        v6 = v6;
      }

      return ((v3 + 180.0) / 360.0 * 4294967300.0) | (v6 << 32);
    }
  }

  return result;
}

unint64_t sub_E80868(uint64_t a1)
{
  if ((*(a1 + 40) & 0x20) == 0)
  {
    return -1;
  }

  v2 = *(*(a1 + 304) + 48);
  if (!v2)
  {
    v2 = &off_277E5E8;
  }

  v3 = *(v2 + 7);
  result = -1;
  if (v3 <= 180.0)
  {
    v4 = *(v2 + 6);
    if (fabs(v4) <= 85.0511288 && v3 >= -180.0)
    {
      v5 = sin(fmin(fmax(v4, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v6) = ((log((v5 + 1.0) / (1.0 - v5)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v6 >= 0xFFFFFFFE)
      {
        v6 = 4294967294;
      }

      else
      {
        v6 = v6;
      }

      return ((v3 + 180.0) / 360.0 * 4294967300.0) | (v6 << 32);
    }
  }

  return result;
}

uint64_t sub_E80998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_E8BF4C(a2, *(a1 + 256));
  v4 = *(a1 + 264);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  return sub_E8C0F0(v5, &v5[*(a1 + 256)], a2);
}

void **sub_E80A18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_E8BF4C(a2, *(a1 + 224));
  v4 = *(a1 + 232);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  return sub_E8C2FC(v5, &v5[*(a1 + 224)], a2);
}

void **sub_E80A98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_E8BF4C(a2, *(a1 + 208));
  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  return sub_E8C3E0(v5, &v5[*(a1 + 208)], a2);
}

uint64_t sub_E80B18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 280);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8C4C4(a1 + 272, a2);
}

uint64_t sub_E80BFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 248);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8C6EC(a1 + 240, a2);
}

uint64_t sub_E80CE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 232);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8C7AC(a1 + 224, a2);
}

uint64_t sub_E80DC4(uint64_t a1)
{
  if (*(a1 + 44))
  {
    return *(a1 + 512);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_E80DDC(uint64_t a1)
{
  if ((*(a1 + 43) & 4) != 0)
  {
    return *(a1 + 452);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_E80DF4(uint64_t a1)
{
  if (*(a1 + 40) >= 0)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return *(a1 + 444);
  }
}

BOOL sub_E80E0C(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  return *(v1 + 6) > 0;
}

BOOL sub_E80E30(uint64_t a1)
{
  v1 = &off_278B980;
  if (*(a1 + 184))
  {
    v1 = *(a1 + 184);
  }

  v2 = v1[35];
  if (!v2)
  {
    v2 = &off_27770C8;
  }

  return *(v2 + 6) > 0;
}

uint64_t sub_E80E68(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = *(v1 + 74);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E80E98(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (!v1)
  {
    v1 = &off_278B980;
  }

  v2 = *(v1 + 87);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_E80EC8(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return sub_5080D4(*(v1 + 69));
}

uint64_t sub_E80EE4(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = *(v1 + 39);
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  v3 = v2 * 100.0;
  if (v3 >= 4.50359963e15)
  {
    if (v3 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  else
  {
    v3 = (((v3 + v3) + 1) >> 1);
    if (v3 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }
  }

  return v3;
}

uint64_t sub_E80F64(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 241);
}

uint64_t sub_E80F80(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 241);
}

uint64_t sub_E80F9C(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 241);
}

uint64_t sub_E80FB8(unint64_t a1)
{
  sub_3AC578(v18);
  v16 = 0;
  v2 = sub_E6359C(v19, v18, &v16);
  v16 = a1;
  v17 = 1;
  sub_E63864(v2, &v16, &v20);
  sub_3AD9F4(v18);
  v3 = v20;
  if ((0x6FB586FB586FB587 * ((v21 - v20) >> 3)) > 1)
  {
    if (*v20 == -1 && v20[1] == -1 || *(v21 - 110) == -1 && *(v21 - 109) == -1)
    {
      v22 = -1;
      v23 = -1;
      v4 = v21;
      v5 = v20;
      if (v21 != v20)
      {
        goto LABEL_4;
      }

      goto LABEL_6;
    }

    sub_320C0(v18, v20, v21 - 110);
    v7 = sub_32DBC(v18);
    v19[2] = v8;
    v9 = sub_32DA0(v18);
    v17 = v10;
    v11 = vcvtad_u64_f64(sqrt((v9 - v7) * (v9 - v7) + (HIDWORD(v7) - HIDWORD(v9)) * (HIDWORD(v7) - HIDWORD(v9))));
    v12 = v7 - v11;
    if (v7 < v11)
    {
      v12 = 0;
    }

    v13 = HIDWORD(v7) + v11;
    if (-2 - v11 <= HIDWORD(v7))
    {
      v13 = -2;
    }

    v19[0] = v12;
    v19[1] = v13;
    v14 = v11 + v9;
    if (__CFADD__(v11, v9))
    {
      v14 = -1;
    }

    v15 = HIDWORD(v9) - v11;
    if (HIDWORD(v9) < v11)
    {
      v15 = 0;
    }

    v16 = __PAIR64__(v15, v14);
    sub_320C0(&v22, v19, &v16);
    v3 = v20;
    if (v20)
    {
LABEL_3:
      v4 = v21;
      v5 = v3;
      if (v21 != v3)
      {
        do
        {
LABEL_4:
          v4 = sub_44FDEC(v4 - 440);
        }

        while (v4 != v3);
        v5 = v20;
      }

LABEL_6:
      v21 = v3;
      operator delete(v5);
    }
  }

  else
  {
    v22 = -1;
    v23 = -1;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  return v22;
}

void sub_E811CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3AD9F4(va);
  _Unwind_Resume(a1);
}

void sub_E811E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3AD9F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E811F4(unint64_t a1)
{
  sub_3AC578(v18);
  v16 = 0;
  v2 = sub_E6359C(v19, v18, &v16);
  v16 = a1;
  v17 = 2;
  sub_E63864(v2, &v16, &v20);
  sub_3AD9F4(v18);
  v3 = v20;
  if ((0x6FB586FB586FB587 * ((v21 - v20) >> 3)) > 1)
  {
    if (*v20 == -1 && v20[1] == -1 || *(v21 - 110) == -1 && *(v21 - 109) == -1)
    {
      v22 = -1;
      v23 = -1;
      v4 = v21;
      v5 = v20;
      if (v21 != v20)
      {
        goto LABEL_4;
      }

      goto LABEL_6;
    }

    sub_320C0(v18, v20, v21 - 110);
    v7 = sub_32DBC(v18);
    v19[2] = v8;
    v9 = sub_32DA0(v18);
    v17 = v10;
    v11 = vcvtad_u64_f64(sqrt((v9 - v7) * (v9 - v7) + (HIDWORD(v7) - HIDWORD(v9)) * (HIDWORD(v7) - HIDWORD(v9))));
    v12 = v7 - v11;
    if (v7 < v11)
    {
      v12 = 0;
    }

    v13 = HIDWORD(v7) + v11;
    if (-2 - v11 <= HIDWORD(v7))
    {
      v13 = -2;
    }

    v19[0] = v12;
    v19[1] = v13;
    v14 = v11 + v9;
    if (__CFADD__(v11, v9))
    {
      v14 = -1;
    }

    v15 = HIDWORD(v9) - v11;
    if (HIDWORD(v9) < v11)
    {
      v15 = 0;
    }

    v16 = __PAIR64__(v15, v14);
    sub_320C0(&v22, v19, &v16);
    v3 = v20;
    if (v20)
    {
LABEL_3:
      v4 = v21;
      v5 = v3;
      if (v21 != v3)
      {
        do
        {
LABEL_4:
          v4 = sub_44FDEC(v4 - 440);
        }

        while (v4 != v3);
        v5 = v20;
      }

LABEL_6:
      v21 = v3;
      operator delete(v5);
    }
  }

  else
  {
    v22 = -1;
    v23 = -1;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  return v22;
}

void sub_E81408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3AD9F4(va);
  _Unwind_Resume(a1);
}

void sub_E8141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3AD9F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E81430(unint64_t a1)
{
  sub_3AC578(v18);
  v16 = 0;
  v2 = sub_E6359C(v19, v18, &v16);
  v16 = a1;
  v17 = 3;
  sub_E63864(v2, &v16, &v20);
  sub_3AD9F4(v18);
  v3 = v20;
  if ((0x6FB586FB586FB587 * ((v21 - v20) >> 3)) > 1)
  {
    if (*v20 == -1 && v20[1] == -1 || *(v21 - 110) == -1 && *(v21 - 109) == -1)
    {
      v22 = -1;
      v23 = -1;
      v4 = v21;
      v5 = v20;
      if (v21 != v20)
      {
        goto LABEL_4;
      }

      goto LABEL_6;
    }

    sub_320C0(v18, v20, v21 - 110);
    v7 = sub_32DBC(v18);
    v19[2] = v8;
    v9 = sub_32DA0(v18);
    v17 = v10;
    v11 = vcvtad_u64_f64(sqrt((v9 - v7) * (v9 - v7) + (HIDWORD(v7) - HIDWORD(v9)) * (HIDWORD(v7) - HIDWORD(v9))));
    v12 = v7 - v11;
    if (v7 < v11)
    {
      v12 = 0;
    }

    v13 = HIDWORD(v7) + v11;
    if (-2 - v11 <= HIDWORD(v7))
    {
      v13 = -2;
    }

    v19[0] = v12;
    v19[1] = v13;
    v14 = v11 + v9;
    if (__CFADD__(v11, v9))
    {
      v14 = -1;
    }

    v15 = HIDWORD(v9) - v11;
    if (HIDWORD(v9) < v11)
    {
      v15 = 0;
    }

    v16 = __PAIR64__(v15, v14);
    sub_320C0(&v22, v19, &v16);
    v3 = v20;
    if (v20)
    {
LABEL_3:
      v4 = v21;
      v5 = v3;
      if (v21 != v3)
      {
        do
        {
LABEL_4:
          v4 = sub_44FDEC(v4 - 440);
        }

        while (v4 != v3);
        v5 = v20;
      }

LABEL_6:
      v21 = v3;
      operator delete(v5);
    }
  }

  else
  {
    v22 = -1;
    v23 = -1;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  return v22;
}

void sub_E81644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3AD9F4(va);
  _Unwind_Resume(a1);
}

void sub_E81658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3AD9F4(va);
  _Unwind_Resume(a1);
}

BOOL sub_E8169C(uint64_t a1)
{
  v1 = *(a1 + 424);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  return *(v1 + 8) != 0;
}

BOOL sub_E816C0(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  return *(v1 + 8) != 0;
}

BOOL sub_E816E4(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  return *(v1 + 32) == 2;
}

BOOL sub_E81708(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0x800) != 0)
  {
    return 1;
  }

  if ((v1 & 0x400000) != 0)
  {
    return *(a1 + 424) == 2;
  }

  return 0;
}

void sub_E81754(uint64_t a1, uint64_t a2)
{
  sub_E7A5E0(a1);
  sub_3B6984(a2);
  sub_E7F33C(a1);
  v4 = *(a1 + 424);
  if (!v4)
  {
    v4 = &off_27721B8;
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = v4[5];
    if (v6)
    {
      v7 = (v6 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * v5 - 8;
    do
    {
      v9 = *v7++;
      if ((*(v9 + 40) & 4) == 0)
      {
        break;
      }

      v10 = v8;
      v8 -= 8;
    }

    while (v10);
  }

  v13 = 13;
  strcpy(v12, "RequestParser");
  memset(v11, 0, sizeof(v11));
  sub_3AEC94(a2, v12, v11);
  operator new();
}

void sub_E81934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

uint64_t sub_E819B0(uint64_t a1)
{
  v1 = *(a1 + 424);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[5];
  if (v3)
  {
    v4 = (v3 + 1);
  }

  else
  {
    v4 = 0;
  }

  v5 = 8 * v2 - 8;
  do
  {
    v6 = *v4++;
    v7 = *(v6 + 40);
    if ((v7 & 4) == 0)
    {
      break;
    }

    v8 = v5;
    v5 -= 8;
  }

  while (v8);
  return (v7 >> 2) & 1;
}

uint64_t sub_E81A0C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2773F38;
  }

  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = v1[5];
    if (v3)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = &v4[v2];
    while (1)
    {
      v6 = *(*v4 + 14);
      v7 = *(*v4 + 8);
      v8 = v7 ? (v7 + 8) : 0;
      if (v6)
      {
        v9 = 8 * v6 - 8;
        do
        {
          v10 = *v8++;
          v11 = *(v10 + 40);
          if ((v11 & 4) == 0)
          {
            break;
          }

          v12 = v9;
          v9 -= 8;
        }

        while (v12);
        if ((v11 & 4) == 0)
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_E81AA0(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[5];
  if (v3)
  {
    v4 = (v3 + 1);
  }

  else
  {
    v4 = 0;
  }

  v5 = 8 * v2 - 8;
  do
  {
    v6 = *v4++;
    v7 = *(v6 + 40);
    if ((v7 & 4) == 0)
    {
      break;
    }

    v8 = v5;
    v5 -= 8;
  }

  while (v8);
  return (v7 >> 2) & 1;
}

BOOL sub_E81AFC(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  v2 = *(v1 + 6);
  v3 = &off_2776700;
  if (*(a1 + 360))
  {
    v3 = *(a1 + 360);
  }

  v4 = *(v3 + 18);
  if (v4)
  {
    v5 = 0;
    v6 = v3[10];
    v7 = 4 * v4;
    do
    {
      v8 = *v6;
      v6 = (v6 + 4);
      v5 |= 1 << sub_899A0(v8);
      v7 -= 4;
    }

    while (v7);
  }

  return v2 > 0;
}

BOOL sub_E81B98(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  return *(v1 + 32) == 0;
}

BOOL sub_E81BBC(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  return *(v1 + 32) == 3;
}

BOOL sub_E81BE0(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  return *(v1 + 32) == 1;
}

BOOL sub_E81C04(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  return *(v1 + 32) == 0;
}

uint64_t sub_E81C28(uint64_t a1)
{
  v2 = &off_2776700;
  if (*(a1 + 352))
  {
    v2 = *(a1 + 352);
  }

  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = 0;
    v5 = v2[10];
    v6 = 4 * v3;
    do
    {
      v7 = *v5;
      v5 = (v5 + 4);
      v4 |= 1 << sub_899A0(v7);
      v6 -= 4;
    }

    while (v6);
    v8 = *(a1 + 40);
    if ((v8 & 0x200) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
    v8 = *(a1 + 40);
    if ((v8 & 0x200) != 0)
    {
      goto LABEL_11;
    }
  }

  v9 = *(a1 + 424);
  if ((v8 & 0x400000) == 0 || v9)
  {
    if ((v8 & 0x800) == 0 && (v8 & 0x400) == 0 && (v8 & 0x10000) == 0 && !v9 && (v4 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_18;
  }

LABEL_11:
  if ((v4 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if ((v8 & 0x10000) != 0)
  {
    if ((v4 & 8) == 0)
    {
      return 0;
    }
  }

  else if ((v8 & 0x400000) != 0 && *(a1 + 424) == 3 && (v4 & 8) == 0)
  {
    return 0;
  }

  if ((v8 & 0x800) != 0)
  {
    if ((v4 & 4) == 0)
    {
      return 0;
    }
  }

  else if ((v8 & 0x400000) != 0 && *(a1 + 424) == 2 && (v4 & 4) == 0)
  {
    return 0;
  }

  if ((v8 & 0x400) != 0)
  {
    if ((v4 & 2) == 0)
    {
      return 0;
    }
  }

  else if ((v8 & 0x400000) != 0 && *(a1 + 424) == 1 && (v4 & 2) == 0)
  {
    return 0;
  }

  return 1;
}

BOOL sub_E81DF0(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (!v1)
  {
    v1 = &off_27770C8;
  }

  v2 = *(v1 + 6);
  v3 = &off_2776700;
  if (*(a1 + 352))
  {
    v3 = *(a1 + 352);
  }

  v4 = *(v3 + 18);
  if (v4)
  {
    v5 = 0;
    v6 = v3[10];
    v7 = 4 * v4;
    do
    {
      v8 = *v6;
      v6 = (v6 + 4);
      v5 |= 1 << sub_899A0(v8);
      v7 -= 4;
    }

    while (v7);
  }

  return v2 > 0;
}

uint64_t sub_E81E8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (v2 >> 9) & 1;
  if ((v2 & 0x200) == 0)
  {
    v4 = *(a1 + 424);
    if ((v2 & 0x400000) == 0 || v4)
    {
      v5 = (v2 & 0x10000 | v4) == 0;
      if ((v2 & 0x400) != 0)
      {
        v5 = (v2 >> 9) & 1;
      }

      if ((v2 & 0x800) != 0)
      {
        return result;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_E81ED4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0x10000) != 0)
  {
    return 1;
  }

  if ((v1 & 0x400000) != 0)
  {
    return *(a1 + 424) == 3;
  }

  return 0;
}

BOOL sub_E81F00(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0x400) != 0)
  {
    return 1;
  }

  if ((v1 & 0x400000) != 0)
  {
    return *(a1 + 424) == 1;
  }

  return 0;
}

uint64_t sub_E81F2C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = v1[26];
  if (!v2)
  {
    v2 = &off_27766A0;
  }

  return *(v2 + 25);
}

uint64_t sub_E81F5C(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = v1[26];
  if (!v2)
  {
    v2 = &off_27766A0;
  }

  return *(v2 + 25);
}

uint64_t sub_E81F8C(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  v2 = v1[26];
  if (!v2)
  {
    v2 = &off_27766A0;
  }

  return *(v2 + 25);
}

uint64_t sub_E81FBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::chrono::system_clock::to_time_t(&__t);
  *a3 = 1;
  v6 = a1[42];
  if (!v6)
  {
    v6 = &off_2772E28;
  }

  v7 = v6[11];
  if (!v7)
  {
    v7 = &off_2773678;
  }

  v8 = *(v7 + 4);
  v9 = v7 + 11;
  v10 = v6 + 41;
  if ((v8 & 0x10) != 0)
  {
    v10 = v9;
  }

  v11 = *v10;
  if (v11 == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 2;
  }

  *(a3 + 16) = v12;
  v13 = sub_3B6890(a2);
  *(a3 + 4) = *v13;
  *(a3 + 12) = *(v13 + 8);
  *(a3 + 17) = sub_E7A124(a1);
  *(a3 + 25) = v14;
  result = sub_E7A5E0(a1);
  *(a3 + 29) = result;
  v16 = a1[48];
  if (!v16)
  {
    v16 = &off_27770C8;
  }

  v17 = *(v16 + 6);
  v18 = &off_2776700;
  if (a1[45])
  {
    v18 = a1[45];
  }

  v19 = *(v18 + 18);
  if (v19)
  {
    v20 = 0;
    v21 = v18[10];
    v22 = 4 * v19;
    do
    {
      v23 = *v21;
      v21 = (v21 + 4);
      result = sub_899A0(v23);
      v20 |= 1 << result;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v20 = 0;
  }

  *(a3 + 32) = v17 > 0;
  *(a3 + 40) = v20;
  return result;
}

unint64_t sub_E82110@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::chrono::system_clock::to_time_t(&__t);
  *a3 = 2;
  v6 = a1[39];
  if (!v6)
  {
    v6 = &off_2772E28;
  }

  v7 = v6[11];
  if (!v7)
  {
    v7 = &off_2773678;
  }

  v8 = *(v7 + 4);
  v9 = v7 + 11;
  v10 = v6 + 41;
  if ((v8 & 0x10) != 0)
  {
    v10 = v9;
  }

  v11 = *v10;
  if (v11 == 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 2;
  }

  *(a3 + 16) = v12;
  v13 = sub_3B6890(a2);
  *(a3 + 4) = *v13;
  *(a3 + 12) = *(v13 + 8);
  result = sub_E7C160(a1);
  *(a3 + 17) = result;
  *(a3 + 25) = v15;
  *(a3 + 29) = 0;
  v16 = a1[42];
  if (!v16)
  {
    v16 = &off_27770C8;
  }

  v17 = *(v16 + 6);
  v18 = &off_2776700;
  if (a1[40])
  {
    v18 = a1[40];
  }

  v19 = *(v18 + 18);
  if (v19)
  {
    v20 = 0;
    v21 = v18[10];
    v22 = 4 * v19;
    do
    {
      v23 = *v21;
      v21 = (v21 + 4);
      result = sub_899A0(v23);
      v20 |= 1 << result;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v20 = 0;
  }

  *(a3 + 32) = v17 > 0;
  *(a3 + 40) = v20;
  return result;
}

unint64_t sub_E82258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::chrono::system_clock::to_time_t(&__t);
  *a3 = 3;
  v6 = a1[40];
  if (!v6)
  {
    v6 = &off_2773678;
  }

  v7 = *(v6 + 11);
  if (v7 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 2;
  }

  *(a3 + 16) = v8;
  v9 = sub_3B6890(a2);
  *(a3 + 4) = *v9;
  *(a3 + 12) = *(v9 + 8);
  result = sub_E7FE50(a1);
  *(a3 + 17) = result;
  *(a3 + 25) = v11;
  *(a3 + 29) = 0;
  v12 = a1[38];
  if (!v12)
  {
    v12 = &off_27770C8;
  }

  v13 = *(v12 + 6);
  v14 = &off_2776700;
  if (a1[44])
  {
    v14 = a1[44];
  }

  v15 = *(v14 + 18);
  if (v15)
  {
    v16 = 0;
    v17 = v14[10];
    v18 = 4 * v15;
    do
    {
      v19 = *v17;
      v17 = (v17 + 4);
      result = sub_899A0(v19);
      v16 |= 1 << result;
      v18 -= 4;
    }

    while (v18);
  }

  else
  {
    v16 = 0;
  }

  *(a3 + 32) = v13 > 0;
  *(a3 + 40) = v16;
  return result;
}

uint64_t sub_E8237C(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2773678;
  }

  v2 = *(v1 + 11);
  if (v2 == 3)
  {
    return 2;
  }

  else
  {
    return v2 == 2;
  }
}

uint64_t sub_E823AC(uint64_t a1)
{
  v1 = *(a1 + 424);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  if (!*(v1 + 8))
  {
    return 0x7FFFFFFFLL;
  }

  v2 = *(v1[5][1] + 8);
  if (!v2)
  {
    v2 = &off_2772248;
  }

  if ((v2[2] & 2) != 0)
  {
    return (1000 * *(v2 + 7));
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_E82404(uint64_t a1)
{
  v1 = *(a1 + 384);
  if (!v1)
  {
    v1 = &off_27721B8;
  }

  if (!*(v1 + 8))
  {
    return 0x7FFFFFFFLL;
  }

  v2 = *(v1[5][1] + 8);
  if (!v2)
  {
    v2 = &off_2772248;
  }

  if ((v2[2] & 2) != 0)
  {
    return (1000 * *(v2 + 7));
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_E8245C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 42) & 1) != 0 && (v3 = result, result = sub_E7F33C(result), (result))
  {
    v4 = *(v3 + 336);
    if (!v4)
    {
      v4 = &off_2772E28;
    }

    v5 = v4[11];
    if (!v5)
    {
      v5 = &off_2773678;
    }

    v6 = v5[4];
    if (!v6)
    {
      v6 = &off_2773608;
    }

    v7 = v6[4];
    if (!v7)
    {
      v7 = &off_2773580;
    }

    v8 = *(v7 + 21);
    v11 = v7 + 9;
    v9 = *(v7 + 18);
    v10 = *(v11 + 1);
    if (v10 >= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (v9 >= v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8;
    }

    sub_456538(&v17, 1000 * v13, 1000 * v8, 1000 * v10);
    if (*(v3 + 424))
    {
      v14 = *(v3 + 424);
    }

    else
    {
      v14 = &off_27721B8;
    }

    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_E8B9A4(a2, *(v14 + 8));
    v15 = v14[5];
    if (v15)
    {
      v16 = (v15 + 1);
    }

    else
    {
      v16 = 0;
    }

    return sub_E8C86C(v16, v16 + 8 * *(v14 + 8), a2, &v17);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_E825B4(uint64_t a1@<X0>, char **a2@<X8>)
{
  if (*(a1 + 42))
  {
    v3 = *(a1 + 424);
    v4 = *(v3 + 32);
    if (v4)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      if (v4 != -1)
      {
        if (v4 > -2)
        {
          operator new();
        }

        sub_1794();
      }

      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E8280C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_E8283C(uint64_t a1@<X0>, char **a2@<X8>)
{
  if ((*(a1 + 42) & 2) != 0)
  {
    v3 = *(a1 + 384);
    v4 = *(v3 + 32);
    if (v4)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      if (v4 != -1)
      {
        if (v4 > -2)
        {
          operator new();
        }

        sub_1794();
      }

      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E82A94(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_E82AC4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 42))
  {
    v2 = *(a1 + 424);
    v3 = *(v2 + 32);
    if (v3)
    {
      if (v3 != -1)
      {
        if (v3 > -2)
        {
          operator new();
        }

        sub_1794();
      }

      v4 = *(*(*(v2 + 40) + 8) + 72);
      if (!v4)
      {
        v4 = &off_2772310;
      }

      if ((v4[2] & 0x80) == 0 || (v5 = v4[10], (~*(v5 + 4) & 3) != 0))
      {
        v6 = 0uLL;
        v7 = 0;
      }

      else
      {
        sub_58558(&v6, v5[3], v5[4]);
      }

      operator new();
    }
  }
}

void sub_E82CF0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E82D18@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 16) & 0x80) != 0)
  {
    v2 = *(result + 80);
    if ((~*(v2 + 16) & 3) == 0)
    {
      return sub_58558(a2, *(v2 + 24), *(v2 + 32));
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_E82D4C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((*(a1 + 42) & 2) != 0)
  {
    v2 = *(a1 + 384);
    v3 = *(v2 + 32);
    if (v3)
    {
      if (v3 != -1)
      {
        if (v3 > -2)
        {
          operator new();
        }

        sub_1794();
      }

      v4 = *(*(*(v2 + 40) + 8) + 72);
      if (!v4)
      {
        v4 = &off_2772310;
      }

      if ((v4[2] & 0x80) == 0 || (v5 = v4[10], (~*(v5 + 4) & 3) != 0))
      {
        v6 = 0uLL;
        v7 = 0;
      }

      else
      {
        sub_58558(&v6, v5[3], v5[4]);
      }

      operator new();
    }
  }
}

void sub_E82F78(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_E82FC4(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return v1[20] & 0xFFFFFFFFFFFFFFFELL;
}

unint64_t sub_E82FE4(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return v1[20] & 0xFFFFFFFFFFFFFFFELL;
}

unint64_t sub_E83004(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return v1[20] & 0xFFFFFFFFFFFFFFFELL;
}

uint64_t sub_E83024(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 232);
}

uint64_t sub_E83040(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 232);
}

uint64_t sub_E8305C(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 232);
}

uint64_t sub_E83078(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 233);
}

uint64_t sub_E83094(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 233);
}

uint64_t sub_E830B0(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 233);
}

uint64_t sub_E830CC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 41) & 2) != 0)
  {
    return sub_58558(a2, *(*(result + 368) + 32), *(*(result + 368) + 24));
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_E830F0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 40) & 0x40) != 0)
  {
    return sub_58558(a2, *(*(result + 296) + 32), *(*(result + 296) + 24));
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_E83114@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 42))
  {
    return sub_E83130(*(result + 424), a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_E83130@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 32);
  if (v5)
  {
    v6 = 8 * v5;
    while ((*(*v4 + 40) & 2) != 0)
    {
      v7 = *(*v4 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v7 + 23);
      if (v8 < 0)
      {
        v8 = *(v7 + 8);
      }

      if (!v8)
      {
        break;
      }

      v4 += 8;
      v6 -= 8;
      if (!v6)
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        if ((v5 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return sub_E8DCD4(result + 24, a2);
  }

  return result;
}

uint64_t sub_E8328C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 42) & 2) != 0)
  {
    return sub_E83130(*(result + 384), a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_E832A8@<X0>(uint64_t result@<X0>, void ***a2@<X8>)
{
  if ((*(result + 42) & 0x20) != 0)
  {
    v3 = *(result + 464);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_E8CA28(a2, *(v3 + 48));
    v4 = *(v3 + 56);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    return sub_E8CBA0(v5, &v5[*(v3 + 48)], a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_E83344@<X0>(uint64_t result@<X0>, void ***a2@<X8>)
{
  if ((*(result + 42) & 4) != 0)
  {
    v3 = *(result + 408);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_E8CA28(a2, *(v3 + 48));
    v4 = *(v3 + 56);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    return sub_E8D2FC(v5, &v5[*(v3 + 48)], a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_E833E0@<X0>(uint64_t result@<X0>, void ***a2@<X8>)
{
  if ((*(result + 42) & 0x20) != 0)
  {
    v3 = *(result + 416);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_E8CA28(a2, *(v3 + 48));
    v4 = *(v3 + 56);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    return sub_E8D71C(v5, &v5[*(v3 + 48)], a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t *sub_E8347C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 22);
  if (v3 >= 1)
  {
    v4 = result[12];
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    return sub_E8BE00(a2, v5, &v5[v3]);
  }

  if ((*(result + 42) & 1) == 0)
  {
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v6 = result[53];
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = 8 * v9;
    while ((*(*v8 + 40) & 1) != 0)
    {
      v11 = *(*v8 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      if (v12 < 0)
      {
        v12 = *(v11 + 8);
      }

      if (!v12)
      {
        break;
      }

      v8 += 8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_7;
  }

LABEL_18:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v13 = *(v6 + 32);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8DB3C(v6 + 24, a2);
}

uint64_t *sub_E83604@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 28);
  if (v3 >= 1)
  {
    v4 = result[15];
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    return sub_E8BE00(a2, v5, &v5[v3]);
  }

  if ((*(result + 42) & 2) == 0)
  {
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v6 = result[48];
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = 8 * v9;
    while ((*(*v8 + 40) & 1) != 0)
    {
      v11 = *(*v8 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      if (v12 < 0)
      {
        v12 = *(v11 + 8);
      }

      if (!v12)
      {
        break;
      }

      v8 += 8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_7;
  }

LABEL_18:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v13 = *(v6 + 32);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return sub_E8DC08(v6 + 24, a2);
}

uint64_t sub_E83794@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 32);
  if (v5)
  {
    v6 = 8 * v5;
    while ((*(*v4 + 40) & 2) != 0)
    {
      v7 = *(*v4 + 464) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v7 + 23);
      if (v8 < 0)
      {
        v8 = *(v7 + 8);
      }

      if (!v8)
      {
        break;
      }

      v4 += 8;
      v6 -= 8;
      if (!v6)
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        if ((v5 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return sub_E8DDA0(result + 24, a2);
  }

  return result;
}

uint64_t sub_E838F0(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = *(v1 + 32);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return 8;
      }

      return 0;
    }

    return 4;
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

unint64_t sub_E83954(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0x10000) != 0)
  {
    v2 = 8;
    if ((v1 & 0x200) != 0)
    {
LABEL_9:
      v2 |= 1uLL;
      goto LABEL_10;
    }
  }

  else
  {
    v2 = 8;
    if (((*(a1 + 424) == 3) & (v1 >> 22)) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 0x200) != 0)
    {
      goto LABEL_9;
    }
  }

  v3 = *(a1 + 424);
  if ((v1 & 0x400000) != 0 && !v3 || (v1 & 0x800) == 0 && (v1 & 0x400) == 0 && !(v1 & 0x10000 | v3))
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v1 & 0x400) != 0 || (v1 & 0x400000) != 0 && *(a1 + 424) == 1)
  {
    v4 = v2 | 2;
    if ((v1 & 0x800) != 0)
    {
      return v4 | 4;
    }
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFDLL;
    if ((v1 & 0x800) != 0)
    {
      return v4 | 4;
    }
  }

  if ((v1 & 0x400000) != 0 && *(a1 + 424) == 2)
  {
    return v4 | 4;
  }

  return v4 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t sub_E839F4(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  if (*(v1 + 268))
  {
    return 19;
  }

  if (*(v1 + 269))
  {
    return 18;
  }

  v3 = v1[26];
  if (!v3)
  {
    v3 = &off_27766A0;
  }

  if (*(v3 + 25))
  {
    return 17;
  }

  if (*(v1 + 18))
  {
    return 16;
  }

  if (*(v1 + 250))
  {
    return 15;
  }

  if (*(v1 + 248))
  {
    return 14;
  }

  else
  {
    return 13;
  }
}

uint64_t sub_E83A98(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  if (*(v1 + 268))
  {
    return 19;
  }

  if (*(v1 + 269))
  {
    return 18;
  }

  v3 = v1[26];
  if (!v3)
  {
    v3 = &off_27766A0;
  }

  if (*(v3 + 25))
  {
    return 17;
  }

  if (*(v1 + 18))
  {
    return 16;
  }

  if (*(v1 + 250))
  {
    return 15;
  }

  if (*(v1 + 248))
  {
    return 14;
  }

  else
  {
    return 13;
  }
}

uint64_t sub_E83B3C(uint64_t a1)
{
  v1 = *(a1 + 352);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  if (*(v1 + 268))
  {
    return 19;
  }

  if (*(v1 + 269))
  {
    return 18;
  }

  v3 = v1[26];
  if (!v3)
  {
    v3 = &off_27766A0;
  }

  if (*(v3 + 25))
  {
    return 17;
  }

  if (*(v1 + 18))
  {
    return 16;
  }

  if (*(v1 + 250))
  {
    return 15;
  }

  if (*(v1 + 248))
  {
    return 14;
  }

  else
  {
    return 13;
  }
}

uint64_t sub_E83BE0(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  if (*(v1 + 268))
  {
    return 19;
  }

  if (*(v1 + 269))
  {
    return 18;
  }

  v3 = v1[26];
  if (!v3)
  {
    v3 = &off_27766A0;
  }

  if (*(v3 + 25))
  {
    return 17;
  }

  if (*(v1 + 18))
  {
    return 16;
  }

  if (*(v1 + 250))
  {
    return 15;
  }

  if (*(v1 + 248))
  {
    return 14;
  }

  else
  {
    return 13;
  }
}

unint64_t sub_E83C84(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[10];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_2772DF8;
  }

  return sub_E83CC8(v3);
}

unint64_t sub_E83CC8(uint64_t a1)
{
  v2 = sub_74700();
  if (sub_73F04(v2) && sub_742F0(v2) != 0x7FFFFFFF)
  {
    v3 = sub_742F0(v2);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    v3 = (*(a1 + 32) + 978307200.0);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v5 = *(a1 + 24) + 978307200.0;
    if (v5 < 2147483650.0 || !sub_7E7E4(1u))
    {
LABEL_33:
      v4 = v5;
      return v4 | (v3 << 32);
    }

    sub_19594F8(&__t.__d_.__rep_);
    sub_4A5C(&__t, "Request time in Unix epoch seconds=", 35);
    v6 = std::ostream::operator<<();
    sub_4A5C(v6, " is higher than max TimeStamp value=", 36);
    v7 = std::ostream::operator<<();
    v8 = sub_4A5C(v7, "in request: ", 12);
    v9 = sub_73F1C(v2);
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = *v9;
    }

    if (v10 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    sub_4A5C(v8, v11, v12);
    if ((v29 & 0x10) != 0)
    {
      v14 = v28;
      if (v28 < v25)
      {
        v28 = v25;
        v14 = v25;
      }

      v15 = v24;
      v13 = v14 - v24;
      if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v29 & 8) == 0)
      {
        v13 = 0;
        v18 = 0;
LABEL_28:
        *(&__p + v13) = 0;
        sub_7E854(&__p, 1u);
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        std::locale::~locale(&v21);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v15 = v22;
      v13 = v23 - v22;
      if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v18 = v13;
    if (v13)
    {
      memmove(&__p, v15, v13);
    }

    goto LABEL_28;
  }

  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v3 = std::chrono::system_clock::to_time_t(&__t);
  if (*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v4 = v3;
  return v4 | (v3 << 32);
}

void sub_E84044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

unint64_t sub_E84090(uint64_t a1)
{
  v1 = *(a1 + 312);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[10];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_2772DF8;
  }

  return sub_E83CC8(v3);
}

unint64_t sub_E840D4(uint64_t a1)
{
  if (*(a1 + 360))
  {
    v1 = *(a1 + 360);
  }

  else
  {
    v1 = &off_2776700;
  }

  v2 = *(v1 + 234);
  v3 = v1[8];
  v4 = *(v1 + 14);
  v5 = (v3 + 4 * v4);
  v6 = 4 * v4;
  v7 = v3;
  if (v4)
  {
    v8 = 4 * v4;
    v7 = v3;
    while (*v7 != 4)
    {
      v7 = (v7 + 4);
      v8 -= 4;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  if (v7 == v5)
  {
LABEL_12:
    v10 = *(a1 + 336);
    if (!v10)
    {
      v10 = &off_2772E28;
    }

    v11 = v10[12];
    if (!v11)
    {
      v11 = &off_2773798;
    }

    if ((*(v11 + 19) - 3) > 0xFFFFFFFD)
    {
      v9 = 0x100000000;
      if (!v4)
      {
        return v9 | v2;
      }
    }

    else
    {
      v12 = v3;
      if (v4)
      {
        v13 = 4 * v4;
        v12 = v3;
        while ((*v12 & 0xFFFFFFFD) != 1)
        {
          ++v12;
          v13 -= 4;
          if (!v13)
          {
            v12 = v3 + v4;
            break;
          }
        }
      }

      v9 = (v12 != v5) << 32;
      if (!v4)
      {
        return v9 | v2;
      }
    }
  }

  else
  {
    v9 = 0x200000000;
    if (!v4)
    {
      return v9 | v2;
    }
  }

  v14 = 4 * v4;
  v15 = v3;
  do
  {
    if (*v15 == 1)
    {
      break;
    }

    v15 = (v15 + 4);
    v14 -= 4;
  }

  while (v14);
  v16 = v6;
  v17 = v3;
  do
  {
    if (*v17 == 3)
    {
      break;
    }

    v17 = (v17 + 4);
    v16 -= 4;
  }

  while (v16);
  v18 = v6;
  v19 = v3;
  do
  {
    if (*v19 == 5)
    {
      break;
    }

    v19 = (v19 + 4);
    v18 -= 4;
  }

  while (v18);
  do
  {
    if (*v3 == 6)
    {
      break;
    }

    v3 = (v3 + 4);
    v6 -= 4;
  }

  while (v6);
  return v9 | v2;
}

uint64_t sub_E84290(uint64_t a1)
{
  LODWORD(result) = sub_E81C28(a1);
  if (*(a1 + 160))
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_E842C0(uint64_t a1, uint64_t **a2)
{
  sub_66E3C(a2, &v5);
  if (v6 != 5)
  {
    sub_5AF20();
  }

  result = sub_5ADDC(a1, v5);
  if (v6 != -1)
  {
    return (off_26743C0[v6])(&v4, &v5);
  }

  return result;
}

void sub_E84354(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v60 = v59;
    if (!sub_7E7E4(3u))
    {
      goto LABEL_9;
    }

    sub_19594F8(v74);
    v61 = sub_4A5C(v74, "Failed to parse ", 16);
    v62 = sub_4A5C(v61, v57, v56);
    v63 = sub_4A5C(v62, " parameters from request with exception: ", 41);
    v64 = sub_2D51C(v60);
    v65 = strlen(v64);
    v66 = sub_4A5C(v63, v64, v65);
    v67 = sub_4A5C(v66, "\n", 1);
    v68 = sub_2D538(v60);
    v69 = strlen(v68);
    sub_4A5C(v67, v68, v69);
    sub_1959680(v74, v72);
    sub_7E854(v72, 3u);
  }

  else
  {
    if (!sub_7E7E4(3u))
    {
      goto LABEL_9;
    }

    sub_19594F8(v74);
    v70 = sub_4A5C(v74, "Failed to parse ", 16);
    v71 = sub_4A5C(v70, v57, v56);
    sub_4A5C(v71, " parameters from request with unknown exception.", 48);
    sub_1959680(v74, v72);
    sub_7E854(v72, 3u);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  sub_1959728(v74);
LABEL_9:
  __cxa_end_catch();
  sub_5F328(v55);
}

void sub_E844D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a15);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

double sub_E84558@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_3B6890(a1);
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 56) = 0u;
  *a2 = 0x7FFFFFFF;
  *(a2 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  sub_5F328(a2 + 56);
  *(a2 + 96) = 0;
  sub_5F328(a2 + 104);
  result = NAN;
  *(a2 + 144) = xmmword_229BA60;
  return result;
}

void sub_E845F8(_Unwind_Exception *a1)
{
  sub_5C010(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_E84624(uint64_t a1)
{
  if (*(a1 + 280))
  {
    v1 = *(a1 + 280);
  }

  else
  {
    v1 = &off_2772DF8;
  }

  return sub_E83CC8(v1);
}

unint64_t sub_E84654(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[10];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_2772DF8;
  }

  return sub_E83CC8(v3);
}

void sub_E84698(void **a1, unint64_t a2)
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

void sub_E84778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_E89EA4(va);
  _Unwind_Resume(a1);
}

void sub_E84974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D71D80(&a9);
  sub_528AB4(v9);
  _Unwind_Resume(a1);
}

void sub_E849A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E7EA30(a1, a2);
  sub_E7E444(a1, a2, v11);
  v7 = sub_E84E80(a1, a2);
  sub_E7F024(a1, __p);
  v8 = *(a1 + 184);
  if (!v8)
  {
    v8 = &off_278B980;
  }

  v9 = v8[37];
  if (!v9)
  {
    v9 = &off_277EBA8;
  }

  sub_E89D34(a3, v6, v11, v7, __p, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), *(v9 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_E84A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E84AD8(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

void sub_E84AEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 352))
  {
    v6 = *(a1 + 352);
  }

  else
  {
    v6 = &off_2776700;
  }

  v7 = sub_E7E744(a1, a2);
  sub_E7E130(a1, a2, v23);
  v8 = sub_E84D0C(a1, a2);
  sub_E7ED0C(a1, __p);
  v9 = *(a1 + 352);
  if (!v9)
  {
    v9 = &off_2776700;
  }

  v10 = v9[16];
  v11 = v9[25];
  if (!v11)
  {
    v11 = &off_277EBA8;
  }

  sub_E89D34(&v24, v7, v23, v8, __p, (v10 & 0xFFFFFFFFFFFFFFFELL), *(v11 + 40));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  v12 = *(a1 + 320);
  if (!v12)
  {
    v12 = &off_2773678;
  }

  v13 = *(v12 + 11);
  v14 = *(a1 + 442);
  v15 = *(v6 + 248);
  v16 = *(v6 + 246);
  v17 = *(v6 + 253);
  v18 = *(v6 + 265);
  v19 = *(v6 + 270);
  sub_528460(a3, &v24);
  *(a3 + 96) = v15;
  v20 = v13 == 2;
  *(a3 + 97) = v16;
  if (v13 == 3)
  {
    v20 = 2;
  }

  *(a3 + 98) = v20;
  *(a3 + 99) = v14;
  *(a3 + 100) = 6;
  *(a3 + 104) = v14;
  *(a3 + 105) = v17;
  *(a3 + 106) = 0;
  *(a3 + 107) = v18;
  *(a3 + 108) = v19;
  *(a3 + 109) = 0;
  if (v14)
  {
    *(a3 + 100) = 14;
    if (v30 < 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v21 = v27;
    if (!v27)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  operator delete(v29);
  v21 = v27;
  if (v27)
  {
LABEL_22:
    v28 = v21;
    operator delete(v21);
  }

LABEL_23:
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_E84CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5285C8(va);
  _Unwind_Resume(a1);
}

void sub_E84CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!a12)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a12);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E84D0C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    v4 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      sub_325C(v15, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      v16 = *(v4 + 16);
      *v15 = v5;
    }

    sub_5275EC(&__p, v15, 1uLL);
    result = sub_E7DD9C(&__p);
    v7 = __p;
    if (__p)
    {
      v8 = result;
      v9 = v14;
      v10 = __p;
      if (v14 != __p)
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

        while (v9 != v7);
        v10 = __p;
      }

      v14 = v7;
      operator delete(v10);
      result = v8;
    }

    if (SHIBYTE(v16) < 0)
    {
      v12 = result;
      operator delete(v15[0]);
      result = v12;
      if (v12)
      {
        return result;
      }
    }

    else if (result)
    {
      return result;
    }
  }

  return sub_E7E744(a1, a2);
}

void sub_E84E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E84E80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (!v4)
  {
    return sub_E7EA30(a1, a2);
  }

  v5 = 0;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = 8 * v4;
  do
  {
    v10 = *v7;
    if (v5 < v19)
    {
      if (*(v10 + 23) < 0)
      {
        sub_325C(v5, *v10, *(v10 + 8));
      }

      else
      {
        v9 = *v10;
        *(v5 + 16) = *(v10 + 16);
        *v5 = v9;
      }

      v5 += 24;
    }

    else
    {
      v5 = sub_1CEE8(&__p, v10);
    }

    v18 = v5;
    ++v7;
    v8 -= 8;
  }

  while (v8);
  result = sub_E7DD9C(&__p);
  v12 = __p;
  if (__p)
  {
    v13 = result;
    v14 = v18;
    v15 = __p;
    if (v18 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v12);
      v15 = __p;
    }

    v18 = v12;
    operator delete(v15);
    result = v13;
  }

  if (!result)
  {
    return sub_E7EA30(a1, a2);
  }

  return result;
}

void sub_E84FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E84FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E84FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_E85008(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 336);
  if (!v6)
  {
    v6 = &off_2772E28;
  }

  v43 = v6;
  if (*(a1 + 360))
  {
    v7 = *(a1 + 360);
  }

  else
  {
    v7 = &off_2776700;
  }

  v8 = sub_E840D4(a1);
  v41 = v9;
  v42 = sub_1950CD0(a1 + 16, dword_278D168, qword_278D170);
  v10 = *(a1 + 384);
  if (!v10)
  {
    v10 = &off_27770C8;
  }

  v11 = *(v10 + 6);
  v12 = *(a1 + 360);
  if (!v12)
  {
    v12 = &off_2776700;
  }

  v38 = *(v12 + 70);
  v39 = v11;
  v40 = sub_E728B8(a1, a2);
  sub_E72784(a1, a2, v49);
  v13 = *(a1 + 336);
  if (v13)
  {
    v14 = *(a1 + 336);
  }

  else
  {
    v14 = &off_2772E28;
  }

  if (*(v14 + 32))
  {
    goto LABEL_14;
  }

  if (*(a1 + 360))
  {
    v16 = *(a1 + 360);
  }

  else
  {
    v16 = &off_2776700;
  }

  v17 = *(v16 + 18);
  if (v17)
  {
    v18 = 0;
    v19 = v16[10];
    v20 = 4 * v17;
    do
    {
      v18 |= 1 << sub_899A0(*v19);
      v19 = (v19 + 4);
      v20 -= 4;
    }

    while (v20);
    v21 = *(a1 + 336);
    if (!v21)
    {
      v21 = &off_2772E28;
    }

    v22 = *(v21 + 32);
    if (v22 <= 1)
    {
LABEL_24:
      if (v22)
      {
        if (v22 != 1 || (v18 & 2) != 0)
        {
          goto LABEL_38;
        }

LABEL_14:
        v15 = 0;
        goto LABEL_39;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_38;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    if (!v13)
    {
      v13 = &off_2772E28;
    }

    v22 = *(v13 + 32);
    if (v22 <= 1)
    {
      goto LABEL_24;
    }
  }

  if (v22 != 2)
  {
    if (v22 != 3 || (v18 & 8) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if ((v18 & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_38:
  v15 = *(a1 + 112) > 2;
LABEL_39:
  v23 = sub_E7F33C(a1);
  v24 = *(a1 + 360);
  if (!v24)
  {
    v24 = &off_2776700;
  }

  v36 = v8;
  if (v24[29])
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v24 + 233);
  }

  v33 = v25;
  v34 = v23;
  v35 = v15;
  v37 = a1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v44 = v7;
  if (*(v7 + 22))
  {
    operator new();
  }

  v26 = *(v42 + 56);
  v27 = *(v43 + 136);
  v28 = *(v43 + 137);
  v29 = *(v43 + 138);
  v30 = *(v43 + 160);
  sub_E76D44(v37, __p);
  v31 = *(v43 + 33);
  if (v31 == 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v31 == 1;
  }

  sub_E8A910(a3, v26, v27, v28, v29, v30, __p, *(v44 + 239), *(v44 + 242), *(v44 + 248), *(v44 + 246), *(v44 + 263), *(v44 + 262), *(v44 + 270), *(v44 + 265), v39 > 0, v38 > 65, v32, v36, v41, 0, v40, v49, *(v44 + 75), v35, v34, *(v44 + 266), *(v44 + 264), v33 & 1, &v46, *(v43 + 145));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_E85480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  sub_5285C8(v34 - 184);
  _Unwind_Resume(a1);
}

double sub_E854F8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_E855B8(a1, a2, &v6);
  *a3 = v6;
  *(a3 + 3) = *(&v6 + 3);
  *(a3 + 8) = v7;
  *(a3 + 24) = v8;
  v4 = v10;
  *(a3 + 32) = v9;
  *(a3 + 48) = v4;
  *(a3 + 64) = v11;
  *(a3 + 72) = v12;
  *(a3 + 88) = v13;
  *(a3 + 96) = v14;
  *(a3 + 104) = v15;
  *(a3 + 120) = v16;
  *(a3 + 128) = v17;
  *(a3 + 144) = v18;
  *(a3 + 152) = v19;
  *(a3 + 160) = v20;
  *(a3 + 168) = v21;
  result = *&v22;
  *(a3 + 176) = v22;
  *(a3 + 192) = v23;
  return result;
}

void sub_E855B8(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1;
  v6 = a1[39];
  if (!v6)
  {
    v6 = &off_2772E28;
  }

  v41 = v6;
  if (a1[40])
  {
    v7 = a1[40];
  }

  else
  {
    v7 = &off_2776700;
  }

  v8 = a1[42];
  if (!v8)
  {
    v8 = &off_27770C8;
  }

  v39 = *(v8 + 6);
  v40 = sub_E73488(a1, a2);
  sub_E73354(v4, a2, v57);
  v9 = v4[39];
  if (v9)
  {
    v10 = v4[39];
  }

  else
  {
    v10 = &off_2772E28;
  }

  if (*(v10 + 32))
  {
    goto LABEL_26;
  }

  if (v4[40])
  {
    v11 = v4[40];
  }

  else
  {
    v11 = &off_2776700;
  }

  v12 = *(v11 + 18);
  if (v12)
  {
    v13 = v4;
    v14 = 0;
    v15 = v11[10];
    v16 = 4 * v12;
    do
    {
      v14 |= 1 << sub_899A0(*v15);
      v15 = (v15 + 4);
      v16 -= 4;
    }

    while (v16);
    LODWORD(v12) = v14 & 1;
    v4 = v13;
    v9 = v13[39];
  }

  if (!v9)
  {
    v9 = &off_2772E28;
  }

  if (!*(v9 + 32) && v12 == 0)
  {
LABEL_26:
    v18 = 0;
  }

  else
  {
    v18 = *(v4 + 38) > 1;
  }

  v19 = sub_E7F8D4(v4);
  v20 = v4[40];
  if (!v20)
  {
    v20 = &off_2776700;
  }

  v36 = a3;
  if (v20[29])
  {
    v21 = 1;
  }

  else
  {
    v21 = *(v20 + 233);
  }

  v37 = v21;
  v38 = v19;
  v35 = *(v4 + 112);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (*(v7 + 22))
  {
    operator new();
  }

  v22 = *(v41 + 136);
  v23 = *(v41 + 137);
  v24 = *(v41 + 138);
  v25 = *(v41 + 160);
  sub_E76EAC(v4, __p);
  v26 = v4[40];
  if (!v26)
  {
    v26 = &off_2776700;
  }

  v27 = *(v26 + 70) > 65;
  v28 = *(v41 + 33);
  if (v28 == 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = v28 == 1;
  }

  sub_E8A910(&v43, 0, v22, v23, v24, v25, __p, *(v7 + 239), *(v7 + 242), *(v7 + 248), *(v7 + 246), *(v7 + 263), *(v7 + 262), *(v7 + 270), *(v7 + 265), v39 > 0, v27, v29, 1, 0, 0, v40, v57, *(v7 + 75), v18, v38, *(v7 + 266), *(v7 + 264), v37 & 1, &v54, *(v41 + 145));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v30 = *(v41 + 141);
  v31 = *(v41 + 142);
  v32 = *(v41 + 161);
  v33 = v41[11];
  if (!v33)
  {
    v33 = &off_2773678;
  }

  v34 = *(v33 + 48);
  sub_D71F30(v36, &v43);
  v36[200] = v30;
  v36[201] = v31;
  v36[202] = v32;
  v36[203] = v34;
  v36[204] = (v35 < 6) & (0x38u >> v35);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v51 < 0)
  {
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

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_E85A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_D71D0C(va);
  v31 = *(v29 - 208);
  if (v31)
  {
    *(v29 - 200) = v31;
    operator delete(v31);
  }

  sub_5285C8(v29 - 184);
  _Unwind_Resume(a1);
}

uint64_t sub_E85B20(uint64_t a1)
{
  *&v6[1] = 0;
  v1 = *(a1 + 40);
  if ((v1 & 0x1000) != 0)
  {
    v2 = *(a1 + 344);
    v6[0] = *(v2 + 30);
    *&v6[3] = *(v2 + 24);
    v6[6] = *(v2 + 27);
  }

  if ((v1 & 0x200) != 0)
  {
    v4 = *(a1 + 320);
    v3 = *(v4 + 40);
    v6[2] = *(v4 + 48);
  }

  else
  {
    v3 = 0;
  }

  v6[5] = *(a1 + 430);
  v6[7] = *(a1 + 440);
  v6[1] = *(a1 + 428) & (v1 << 8 >> 31) | v3;
  return *v6;
}

BOOL sub_E85BB8(uint64_t a1)
{
  v1 = *(a1 + 400);
  if (!v1)
  {
    v1 = &off_2772ED0;
  }

  v2 = *(v1 + 26);
  if (v2 != 1)
  {
    return 0;
  }

  if ((*(a1 + 484) & 1) == 0 && *(a1 + 540) != 2)
  {
    v3 = &off_27721B8;
    if (*(a1 + 424))
    {
      v3 = *(a1 + 424);
    }

    return *(v3 + 16) == 2;
  }

  return v2;
}

uint64_t sub_E85C1C(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    v1 = &off_2773488;
  }

  v2 = *(v1 + 10);
  if (v2 >= 0x10)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_E85C40(uint64_t a1)
{
  v1 = *(a1 + 448);
  if (v1 >= 8)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

BOOL sub_E85C54(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (!v1)
  {
    v1 = &off_2773798;
  }

  return (*(v1 + 19) - 1) < 2;
}

uint64_t sub_E85C7C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[12];
  if (!v2)
  {
    v2 = &off_2773798;
  }

  return *(v2 + 80);
}

uint64_t sub_E85CAC(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (!v1)
  {
    v1 = &off_2773798;
  }

  return *(v1 + 80);
}

uint64_t sub_E85CC8(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  v2 = v1[12];
  if (!v2)
  {
    v2 = &off_2773798;
  }

  return *(v2 + 80);
}

void sub_E85CF8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_84D10(a2, *(a1 + 56));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = v4 + 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = a2[1];
    v8 = 8 * v6;
    do
    {
      while (1)
      {
        v11 = *(*v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
        v12 = *(*v5 + 56) & 0xFFFFFFFFFFFFFFFELL;
        if (v7 < a2[2])
        {
          break;
        }

        v7 = sub_E8AB00(a2, v11, (*(*v5 + 56) & 0xFFFFFFFFFFFFFFFELL));
        a2[1] = v7;
        v5 += 8;
        v8 -= 8;
        if (!v8)
        {
          return;
        }
      }

      if (*(v11 + 23) < 0)
      {
        sub_325C(&v16, *v11, *(v11 + 8));
      }

      else
      {
        v13 = *v11;
        v17 = *(v11 + 16);
        v16 = v13;
      }

      if (*(v12 + 23) < 0)
      {
        sub_325C(&v14, *v12, *(v12 + 8));
      }

      else
      {
        v9 = *v12;
        v15 = *(v12 + 16);
        v14 = v9;
      }

      v10 = v16;
      *(v7 + 16) = v17;
      *v7 = v10;
      *(v7 + 24) = v14;
      *(v7 + 40) = v15;
      v7 += 48;
      a2[1] = v7;
      v5 += 8;
      v8 -= 8;
    }

    while (v8);
  }
}

void sub_E85E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    *(v18 + 8) = v19;
    sub_1AA90(v18);
    _Unwind_Resume(a1);
  }

  *(v18 + 8) = v19;
  sub_1AA90(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_E85E9C(uint64_t a1)
{
  v1 = *(a1 + 320);
  if (!v1)
  {
    v1 = &off_2776700;
  }

  return *(v1 + 255);
}

void *sub_E85EB8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result[5] & 4) == 0)
  {
    *a3 = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 264) = 0;
    *(a3 + 396) = 0;
    *(a3 + 384) = 0;
    *(a3 + 392) = 0;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 364) = 0u;
    *(a3 + 448) = 0x3FF0000000000000;
    *(a3 + 472) = 0;
    *(a3 + 456) = 0u;
    *(a3 + 480) = 5;
    *(a3 + 488) = 0u;
    *(a3 + 504) = 0u;
    *(a3 + 520) = 0u;
    *(a3 + 536) = 0x7FFFFFFF;
    *(a3 + 624) = 0u;
    *(a3 + 544) = 0u;
    *(a3 + 560) = 0u;
    *(a3 + 576) = 0u;
    *(a3 + 592) = 0u;
    *(a3 + 601) = 0u;
    *(a3 + 640) = -1;
    *(a3 + 648) = 0x7FFFFFFF;
    *(a3 + 660) = 0;
    *(a3 + 652) = 0;
    *(a3 + 664) = -1;
    *(a3 + 672) = -1;
    *(a3 + 680) = 0;
    return result;
  }

  v4 = result;
  sub_11FD59C(v22, 0, 0);
  if ((sub_194DB28(v22, v4[39] & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_22:
      *a3 = 0;
      *(a3 + 128) = 0;
      *(a3 + 136) = 0;
      *(a3 + 264) = 0;
      *(a3 + 396) = 0;
      *(a3 + 384) = 0;
      *(a3 + 392) = 0;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 364) = 0u;
      *(a3 + 448) = 0x3FF0000000000000;
      *(a3 + 472) = 0;
      *(a3 + 456) = 0u;
      *(a3 + 480) = 5;
      *(a3 + 488) = 0u;
      *(a3 + 504) = 0u;
      *(a3 + 520) = 0u;
      *(a3 + 536) = 0x7FFFFFFF;
      *(a3 + 624) = 0u;
      *(a3 + 544) = 0u;
      *(a3 + 560) = 0u;
      *(a3 + 576) = 0u;
      *(a3 + 592) = 0u;
      *(a3 + 601) = 0u;
      *(a3 + 640) = -1;
      *(a3 + 648) = 0x7FFFFFFF;
      *(a3 + 660) = 0;
      *(a3 + 652) = 0;
      *(a3 + 664) = -1;
      *(a3 + 672) = -1;
      *(a3 + 680) = 0;
      return sub_11FD994(v22);
    }

    sub_19594F8(&v11);
    sub_4A5C(&v11, "Could not parse session_state from request", 42);
    if ((v21 & 0x10) != 0)
    {
      v7 = v20;
      if (v20 < v17)
      {
        v20 = v17;
        v7 = v17;
      }

      v8 = v16;
      v6 = v7 - v16;
      if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v6 = 0;
        v10 = 0;
LABEL_17:
        *(&__p + v6) = 0;
        sub_7E854(&__p, 3u);
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
        goto LABEL_22;
      }

      v8 = v14;
      v6 = v15 - v14;
      if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_25:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_17;
  }

  sub_4EC9D0(a3, v22, a2);
  return sub_11FD994(v22);
}

void sub_E862C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_11FD994(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_11FD994(&a48);
  _Unwind_Resume(a1);
}

void sub_E86324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

void *sub_E86338@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result[5] & 2) == 0)
  {
    *a3 = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 264) = 0;
    *(a3 + 396) = 0;
    *(a3 + 384) = 0;
    *(a3 + 392) = 0;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 364) = 0u;
    *(a3 + 448) = 0x3FF0000000000000;
    *(a3 + 472) = 0;
    *(a3 + 456) = 0u;
    *(a3 + 480) = 5;
    *(a3 + 488) = 0u;
    *(a3 + 504) = 0u;
    *(a3 + 520) = 0u;
    *(a3 + 536) = 0x7FFFFFFF;
    *(a3 + 624) = 0u;
    *(a3 + 544) = 0u;
    *(a3 + 560) = 0u;
    *(a3 + 576) = 0u;
    *(a3 + 592) = 0u;
    *(a3 + 601) = 0u;
    *(a3 + 640) = -1;
    *(a3 + 648) = 0x7FFFFFFF;
    *(a3 + 660) = 0;
    *(a3 + 652) = 0;
    *(a3 + 664) = -1;
    *(a3 + 672) = -1;
    *(a3 + 680) = 0;
    return result;
  }

  v4 = result;
  sub_11FD59C(v22, 0, 0);
  if ((sub_194DB28(v22, v4[34] & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_22:
      *a3 = 0;
      *(a3 + 128) = 0;
      *(a3 + 136) = 0;
      *(a3 + 264) = 0;
      *(a3 + 396) = 0;
      *(a3 + 384) = 0;
      *(a3 + 392) = 0;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 364) = 0u;
      *(a3 + 448) = 0x3FF0000000000000;
      *(a3 + 472) = 0;
      *(a3 + 456) = 0u;
      *(a3 + 480) = 5;
      *(a3 + 488) = 0u;
      *(a3 + 504) = 0u;
      *(a3 + 520) = 0u;
      *(a3 + 536) = 0x7FFFFFFF;
      *(a3 + 624) = 0u;
      *(a3 + 544) = 0u;
      *(a3 + 560) = 0u;
      *(a3 + 576) = 0u;
      *(a3 + 592) = 0u;
      *(a3 + 601) = 0u;
      *(a3 + 640) = -1;
      *(a3 + 648) = 0x7FFFFFFF;
      *(a3 + 660) = 0;
      *(a3 + 652) = 0;
      *(a3 + 664) = -1;
      *(a3 + 672) = -1;
      *(a3 + 680) = 0;
      return sub_11FD994(v22);
    }

    sub_19594F8(&v11);
    sub_4A5C(&v11, "Could not parse session_state from request", 42);
    if ((v21 & 0x10) != 0)
    {
      v7 = v20;
      if (v20 < v17)
      {
        v20 = v17;
        v7 = v17;
      }

      v8 = v16;
      v6 = v7 - v16;
      if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v6 = 0;
        v10 = 0;
LABEL_17:
        *(&__p + v6) = 0;
        sub_7E854(&__p, 3u);
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
        goto LABEL_22;
      }

      v8 = v14;
      v6 = v15 - v14;
      if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_25:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_17;
  }

  sub_4EC9D0(a3, v22, a2);
  return sub_11FD994(v22);
}

void sub_E86744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_11FD994(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_11FD994(&a48);
  _Unwind_Resume(a1);
}

void sub_E867A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

void *sub_E867B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    v3 = (*(a1 + 256) & 0xFFFFFFFFFFFFFFFELL);
    if (*(v3 + 23) < 0)
    {
      if (v3[1] >= 4)
      {
        v2 = **v3 | 0x100000000;
        return sub_E86820(a1, v2, a2);
      }
    }

    else if (*(v3 + 23) >= 4u)
    {
      v2 = *v3 | 0x100000000;
      return sub_E86820(a1, v2, a2);
    }

    v2 = 0x100000000;
    return sub_E86820(a1, v2, a2);
  }

  v2 = 0;
  return sub_E86820(a1, v2, a2);
}

void *sub_E86820@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result[5] & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 264) = 0;
    *(a3 + 396) = 0;
    *(a3 + 384) = 0;
    *(a3 + 392) = 0;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 364) = 0u;
    *(a3 + 448) = 0x3FF0000000000000;
    *(a3 + 472) = 0;
    *(a3 + 456) = 0u;
    *(a3 + 480) = 5;
    *(a3 + 488) = 0u;
    *(a3 + 504) = 0u;
    *(a3 + 520) = 0u;
    *(a3 + 536) = 0x7FFFFFFF;
    *(a3 + 624) = 0u;
    *(a3 + 544) = 0u;
    *(a3 + 560) = 0u;
    *(a3 + 576) = 0u;
    *(a3 + 592) = 0u;
    *(a3 + 601) = 0u;
    *(a3 + 640) = -1;
    *(a3 + 648) = 0x7FFFFFFF;
    *(a3 + 660) = 0;
    *(a3 + 652) = 0;
    *(a3 + 664) = -1;
    *(a3 + 672) = -1;
    *(a3 + 680) = 0;
    return result;
  }

  v4 = result;
  sub_11FD59C(v22, 0, 0);
  if ((sub_194DB28(v22, v4[31] & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_22:
      *a3 = 0;
      *(a3 + 128) = 0;
      *(a3 + 136) = 0;
      *(a3 + 264) = 0;
      *(a3 + 396) = 0;
      *(a3 + 384) = 0;
      *(a3 + 392) = 0;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 364) = 0u;
      *(a3 + 448) = 0x3FF0000000000000;
      *(a3 + 472) = 0;
      *(a3 + 456) = 0u;
      *(a3 + 480) = 5;
      *(a3 + 488) = 0u;
      *(a3 + 504) = 0u;
      *(a3 + 520) = 0u;
      *(a3 + 536) = 0x7FFFFFFF;
      *(a3 + 624) = 0u;
      *(a3 + 544) = 0u;
      *(a3 + 560) = 0u;
      *(a3 + 576) = 0u;
      *(a3 + 592) = 0u;
      *(a3 + 601) = 0u;
      *(a3 + 640) = -1;
      *(a3 + 648) = 0x7FFFFFFF;
      *(a3 + 660) = 0;
      *(a3 + 652) = 0;
      *(a3 + 664) = -1;
      *(a3 + 672) = -1;
      *(a3 + 680) = 0;
      return sub_11FD994(v22);
    }

    sub_19594F8(&v11);
    sub_4A5C(&v11, "Could not parse session_state from request", 42);
    if ((v21 & 0x10) != 0)
    {
      v7 = v20;
      if (v20 < v17)
      {
        v20 = v17;
        v7 = v17;
      }

      v8 = v16;
      v6 = v7 - v16;
      if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v6 = 0;
        v10 = 0;
LABEL_17:
        *(&__p + v6) = 0;
        sub_7E854(&__p, 3u);
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
        goto LABEL_22;
      }

      v8 = v14;
      v6 = v15 - v14;
      if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_25:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_17;
  }

  sub_4EC9D0(a3, v22, a2);
  return sub_11FD994(v22);
}

void sub_E86C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_11FD994(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_11FD994(&a48);
  _Unwind_Resume(a1);
}

void sub_E86C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

float64x2_t sub_E86CA0@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 48) = -1935635296;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = vnegq_f64(v1);
  *(a1 + 136) = result;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return result;
}

unsigned int *sub_E86D24@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result[14];
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (result[26])
  {
    v4 = result + 24;
  }

  else
  {
    if (!result[38])
    {
      return result;
    }

    v4 = result + 36;
  }

  result = sub_E86F8C(&v6, v4);
  v5 = v7;
  *a2 = v6;
  a2[2] = v5;
  return result;
}

void sub_E86F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_E86F8C(uint64_t *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_E87224(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E87240@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D118, qword_278D120);
  if ((*(result + 16) & 4) != 0)
  {
    result = sub_132A70C(a2, *(result + 40));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

uint64_t sub_E872AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D108, qword_278D110);
  if ((*(result + 16) & 4) != 0)
  {
    result = sub_132A70C(a2, *(result + 40));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

uint64_t sub_E87318@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D0F8, qword_278D100);
  if ((*(result + 16) & 4) != 0)
  {
    result = sub_132A70C(a2, *(result + 40));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

uint64_t sub_E87384@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D128, qword_278D130);
  if ((*(result + 16) & 4) != 0)
  {
    result = sub_132A70C(a2, *(result + 40));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

uint64_t sub_E873FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D118, qword_278D120);
  if ((*(result + 16) & 8) != 0)
  {
    result = sub_1329A88(a2, *(result + 48));
    a2[48] = 1;
  }

  else
  {
    *a2 = 0;
    a2[48] = 0;
  }

  return result;
}

uint64_t sub_E87468@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D108, qword_278D110);
  if ((*(result + 16) & 8) != 0)
  {
    result = sub_1329A88(a2, *(result + 48));
    a2[48] = 1;
  }

  else
  {
    *a2 = 0;
    a2[48] = 0;
  }

  return result;
}

uint64_t sub_E874D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D0F8, qword_278D100);
  if ((*(result + 16) & 8) != 0)
  {
    result = sub_1329A88(a2, *(result + 48));
    a2[48] = 1;
  }

  else
  {
    *a2 = 0;
    a2[48] = 0;
  }

  return result;
}

uint64_t sub_E87540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D128, qword_278D130);
  if ((*(result + 16) & 8) != 0)
  {
    result = sub_1329A88(a2, *(result + 48));
    a2[48] = 1;
  }

  else
  {
    *a2 = 0;
    a2[48] = 0;
  }

  return result;
}

uint64_t sub_E875B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D118, qword_278D120);
  if ((*(result + 16) & 0x10) != 0)
  {
    result = sub_132B5B4(a2, *(result + 56));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

uint64_t sub_E87624@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D108, qword_278D110);
  if ((*(result + 16) & 0x10) != 0)
  {
    result = sub_132B5B4(a2, *(result + 56));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

uint64_t sub_E87690@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D0F8, qword_278D100);
  if ((*(result + 16) & 0x10) != 0)
  {
    result = sub_132B5B4(a2, *(result + 56));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

uint64_t sub_E876FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278D128, qword_278D130);
  if ((*(result + 16) & 0x10) != 0)
  {
    result = sub_132B5B4(a2, *(result + 56));
    a2[56] = 1;
  }

  else
  {
    *a2 = 0;
    a2[56] = 0;
  }

  return result;
}

void sub_E87768(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 56);
    v6 = 4 * v3;
    do
    {
      while (1)
      {
        v7 = *v5;
        v8 = a2[2];
        if (v4 >= v8)
        {
          break;
        }

        *v4++ = v7;
        a2[1] = v4;
        ++v5;
        v6 -= 4;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      v9 = v4;
      v10 = (v4 + 1);
      if ((v4 + 1) < 0)
      {
        *a2 = 0;
        sub_1794();
      }

      if (2 * v8 > v10)
      {
        v10 = 2 * v8;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        operator new();
      }

      *v4++ = v7;
      memcpy(0, 0, v9);
      a2[1] = v9 + 1;
      a2[2] = 0;
      a2[1] = v4;
      ++v5;
      v6 -= 4;
    }

    while (v6);
  }

LABEL_14:
  *a2 = 0;
}

void sub_E8789C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_E878C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 80);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3)
  {
    v4 = *(*(a1 + 88) + 8);
    v5 = *(v4 + 64);
    v6 = v5 ? v5 + 8 : 0;
    v7 = *(v4 + 56);
    if (v7)
    {
      v8 = 0;
      v9 = 8 * v7;
      do
      {
        while (1)
        {
          v10 = *v6;
          v11 = *(*v6 + 72);
          v12 = *(*v6 + 76);
          v15 = v12;
          v16 = v11;
          v13 = *(v10 + 88);
          v14 = v13;
          if (v8 < a2[2])
          {
            break;
          }

          v8 = sub_E8AD50(a2, &v16, &v15, &v14);
          a2[1] = v8;
          v6 += 8;
          v9 -= 8;
          if (!v9)
          {
            return;
          }
        }

        *&v19[4] = 0u;
        v24 = 0;
        v23 = 0;
        v17 = 0x7FFFFFFFLL;
        v18 = 0x7FFFFFFF;
        *v19 = 0x7FFFFFFF7FFFFFFFLL;
        v20 = 0x8000000080000000;
        memset(v22, 0, 36);
        *v21 = 0u;
        *&v22[9] = 0x8000000080000000;
        v22[11] = 0x7FFFFFFF;
        v25 = xmmword_2297C00;
        *v8 = v11;
        *(v8 + 4) = 10 * v12;
        *(v8 + 8) = v13;
        *(v8 + 16) = 0x7FFFFFFFFFFFFFFFLL;
        *(v8 + 24) = 0x7FFFFFFF;
        *(v8 + 28) = 0x7FFFFFFF7FFFFFFFLL;
        sub_3EDBB0(v8 + 40, &v17);
        if (*&v22[2])
        {
          *&v22[4] = *&v22[2];
          operator delete(*&v22[2]);
        }

        if (v21[0])
        {
          v21[1] = v21[0];
          operator delete(v21[0]);
        }

        v8 += 176;
        a2[1] = v8;
        v6 += 8;
        v9 -= 8;
      }

      while (v9);
    }
  }
}

void sub_E87A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_49A8F8(va);
  *(v9 + 8) = v10;
  sub_616D58(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_E87A94(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v1 = *(*(a1 + 88) + 8);
    v2 = *(v1 + 56);
    v3 = *(v1 + 64);
    v4 = (v3 + 8);
    if (!v3)
    {
      v4 = 0;
    }

    if (!v2)
    {
      return 0;
    }

    v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v5 + 1;
      v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v10 = &v4[v9];
      v11 = v4 + 1;
      v12 = v9;
      do
      {
        v6 += 10 * *(*(v11 - 1) + 76);
        v7 += 10 * *(*v11 + 76);
        v11 += 2;
        v12 -= 2;
      }

      while (v12);
      result = (v7 + v6);
      if (v8 == v9)
      {
        return result;
      }
    }

    else
    {
      LODWORD(result) = 0;
      v10 = v4;
    }

    v32 = &v4[v2];
    do
    {
      v33 = *v10++;
      result = (result + 10 * *(v33 + 76));
    }

    while (v10 != v32);
    return result;
  }

  v14 = *(a1 + 360);
  if (!v14)
  {
    v14 = &off_2773F38;
  }

  v15 = *(v14 + 8);
  v16 = v14[5];
  if (v16)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  result = 0;
  if (v15)
  {
    v18 = &v17[v15];
    do
    {
      v20 = *(*v17 + 14);
      v21 = *(*v17 + 8);
      v22 = (v21 + 8);
      if (!v21)
      {
        v22 = 0;
      }

      if (v20)
      {
        v19 = 0;
        v23 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v23)
        {
          v24 = 0;
          v25 = v23 + 1;
          v26 = (v23 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v27 = &v22[v26];
          v28 = v22 + 1;
          v29 = v26;
          do
          {
            v19 += 10 * *(*(v28 - 1) + 76);
            v24 += 10 * *(*v28 + 76);
            v28 += 2;
            v29 -= 2;
          }

          while (v29);
          v19 += v24;
          if (v25 == v26)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v27 = v22;
        }

        v30 = &v22[v20];
        do
        {
          v31 = *v27++;
          v19 += 10 * *(v31 + 76);
        }

        while (v27 != v30);
      }

      else
      {
        v19 = 0;
      }

LABEL_18:
      result = (v19 + result);
      ++v17;
    }

    while (v17 != v18);
  }

  return result;
}

void sub_E87C30(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((*(a1 + 41) & 0x10) == 0 && *(a1 + 80) >= 1)
  {
    sub_E878C4(a1, v49);
    v3 = a2[1];
    if (v3 >= a2[2])
    {
      v35 = sub_E8B414(a2, v49);
      v36 = *v49;
      a2[1] = v35;
      if (v36)
      {
        v37 = *&v49[8];
        v38 = v36;
        if (*&v49[8] != v36)
        {
          do
          {
            v39 = *(v37 - 9);
            if (v39)
            {
              *(v37 - 8) = v39;
              operator delete(v39);
            }

            v40 = *(v37 - 12);
            if (v40)
            {
              *(v37 - 11) = v40;
              operator delete(v40);
            }

            v37 -= 176;
          }

          while (v37 != v36);
          v38 = *v49;
        }

        *&v49[8] = v36;
        operator delete(v38);
      }
    }

    else
    {
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      *v3 = *v49;
      v3[2] = *&v49[16];
      a2[1] = v3 + 3;
    }

    return;
  }

  v4 = *(a1 + 360);
  if (!v4)
  {
    v4 = &off_2773F38;
  }

  v5 = v4[5];
  v6 = v5 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 8);
  if (v7)
  {
    v41 = &v6[v7];
    v42 = a2;
    while (1)
    {
      v43 = v6;
      v8 = *v6;
      __p[0] = 0;
      __p[1] = 0;
      v48 = 0;
      v9 = *(v8 + 64);
      v10 = v9 ? v9 + 8 : 0;
      v11 = *(v8 + 56);
      if (v11)
      {
        break;
      }

LABEL_42:
      v28 = v42[1];
      if (v28 < v42[2])
      {
        *v28 = 0;
        v28[1] = 0;
        v28[2] = 0;
        *v28 = *__p;
        v28[2] = v48;
        v42[1] = v28 + 3;
      }

      else
      {
        v29 = sub_E8B414(v42, __p);
        v30 = __p[0];
        v42[1] = v29;
        if (v30)
        {
          v31 = __p[1];
          v32 = v30;
          if (__p[1] != v30)
          {
            do
            {
              v33 = *(v31 - 9);
              if (v33)
              {
                *(v31 - 8) = v33;
                operator delete(v33);
              }

              v34 = *(v31 - 12);
              if (v34)
              {
                *(v31 - 11) = v34;
                operator delete(v34);
              }

              v31 -= 176;
            }

            while (v31 != v30);
            v32 = __p[0];
          }

          __p[1] = v30;
          operator delete(v32);
        }
      }

      v6 = v43 + 1;
      if (v43 + 1 == v41)
      {
        return;
      }
    }

    v12 = 0;
    v13 = 8 * v11;
    while (1)
    {
      while (1)
      {
        v15 = *v10;
        if ((*(*v10 + 40) & 0x40) == 0)
        {
          break;
        }

        v22 = v15[18];
        v23 = v15[19];
        v45 = v23;
        v46 = v22;
        v24 = v15[21];
        v44 = v24;
        if (v12 < v48)
        {
          *&v49[16] = 0u;
          *v49 = 0x7FFFFFFFLL;
          *&v49[8] = 0x7FFFFFFF;
          *&v49[12] = 0x7FFFFFFF7FFFFFFFLL;
          v50 = 0x8000000080000000;
          memset(v53, 0, sizeof(v53));
          v52 = 0u;
          v51 = 0u;
          *(&v53[1] + 4) = 0x8000000080000000;
          HIDWORD(v53[1]) = 0x7FFFFFFF;
          v54 = xmmword_2297C00;
          *v12 = v22;
          *(v12 + 1) = 10 * v23;
          *(v12 + 2) = -1;
          *(v12 + 2) = v24;
          *(v12 + 6) = 0x7FFFFFFF;
          *(v12 + 28) = 0x7FFFFFFF7FFFFFFFLL;
          v25 = *v49;
          *(v12 + 56) = *&v49[16];
          *(v12 + 72) = v50;
          *(v12 + 40) = v25;
          *(v12 + 11) = 0;
          *(v12 + 12) = 0;
          v20 = v51;
          if (*(&v51 + 1) != v51)
          {
            if (((*(&v51 + 1) - v51) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          *(v12 + 13) = 0;
          *(v12 + 14) = 0;
          *(v12 + 15) = 0;
          v21 = *(&v52 + 1);
          if (*&v53[0] != *(&v52 + 1))
          {
            if (((*&v53[0] - *(&v52 + 1)) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          goto LABEL_35;
        }

        v14 = sub_E8B190(__p, &v46, &v45, &v44);
LABEL_19:
        v12 = v14;
        __p[1] = v14;
        v10 += 8;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_42;
        }
      }

      v16 = v15[18];
      v17 = v15[19];
      LODWORD(v44) = v16;
      v18 = v15[22];
      v45 = v18;
      v46 = v17;
      if (v12 >= v48)
      {
        v14 = sub_E8AD50(__p, &v44, &v46, &v45);
        goto LABEL_19;
      }

      *&v49[16] = 0u;
      *v49 = 0x7FFFFFFFLL;
      *&v49[8] = 0x7FFFFFFF;
      *&v49[12] = 0x7FFFFFFF7FFFFFFFLL;
      v50 = 0x8000000080000000;
      memset(v53, 0, sizeof(v53));
      v52 = 0u;
      v51 = 0u;
      *(&v53[1] + 4) = 0x8000000080000000;
      HIDWORD(v53[1]) = 0x7FFFFFFF;
      v54 = xmmword_2297C00;
      *v12 = v16;
      *(v12 + 1) = 10 * v17;
      *(v12 + 2) = v18;
      *(v12 + 2) = 0x7FFFFFFFFFFFFFFFLL;
      *(v12 + 6) = 0x7FFFFFFF;
      *(v12 + 28) = 0x7FFFFFFF7FFFFFFFLL;
      v19 = *v49;
      *(v12 + 56) = *&v49[16];
      *(v12 + 72) = v50;
      *(v12 + 40) = v19;
      *(v12 + 11) = 0;
      *(v12 + 12) = 0;
      v20 = v51;
      if (*(&v51 + 1) != v51)
      {
        if (((*(&v51 + 1) - v51) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      *(v12 + 13) = 0;
      *(v12 + 14) = 0;
      *(v12 + 15) = 0;
      v21 = *(&v52 + 1);
      if (*&v53[0] != *(&v52 + 1))
      {
        if (((*&v53[0] - *(&v52 + 1)) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

LABEL_35:
      v26 = v54;
      v27 = v53[2];
      *(v12 + 8) = v53[1];
      *(v12 + 9) = v27;
      *(v12 + 10) = v26;
      if (v21)
      {
        operator delete(v21);
      }

      if (v20)
      {
        operator delete(v20);
      }

      v12 += 176;
      __p[1] = v12;
      v10 += 8;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_42;
      }
    }
  }
}

void sub_E88188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_616D58(va);
  sub_615488(v20);
  _Unwind_Resume(a1);
}

void sub_E881B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_616D58(va);
  sub_615488(v16);
  _Unwind_Resume(a1);
}

void sub_E881D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void ***a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v22 = va_arg(va1, char *);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v20 = *v16;
  if (*v16)
  {
    *(v17 + 112) = v20;
    operator delete(v20);
  }

  v21 = *v18;
  if (*v18)
  {
    *(v17 + 88) = v21;
    operator delete(v21);
  }

  sub_49A8F8(va1);
  v24 = v17;
  sub_616D58(va);
  sub_615488(a11);
  _Unwind_Resume(a1);
}

uint64_t sub_E8824C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    v1 = &off_2773F38;
  }

  if (!*(v1 + 8))
  {
    return 0x7FFFFFFFLL;
  }

  v2 = v1[5][1];
  v3 = *(v2 + 14);
  if (!v3)
  {
    return 0x7FFFFFFFLL;
  }

  v4 = *(*(*(v2 + 8) + 8 * v3) + 64);
  if (!v4)
  {
    v4 = &off_2772248;
  }

  if ((v4[2] & 2) != 0)
  {
    return (1000 * *(v4 + 7));
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

void sub_E882B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 41) & 0x10) != 0 && (sub_E7F8D4(a1))
  {
    v4 = *(a1 + 312);
    if (!v4)
    {
      v4 = &off_2772E28;
    }

    v5 = v4[11];
    if (!v5)
    {
      v5 = &off_2773678;
    }

    v6 = v5[4];
    if (!v6)
    {
      v6 = &off_2773608;
    }

    v7 = v6[4];
    if (!v7)
    {
      v7 = &off_2773580;
    }

    v8 = *(v7 + 21);
    v11 = v7 + 9;
    v9 = *(v7 + 18);
    v10 = *(v11 + 1);
    if (v10 >= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (v9 >= v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8;
    }

    sub_456538(v28, 1000 * v13, 1000 * v8, 1000 * v10);
    v26 = *v28;
    v27 = *&v28[8];
    if (*(a1 + 360))
    {
      v14 = *(a1 + 360);
    }

    else
    {
      v14 = &off_2773F38;
    }

    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_E8B9A4(a2, *(v14 + 8));
    v15 = *(v14 + 8);
    v16 = v14[5];
    if (v16)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 0;
    }

    if (v15)
    {
      v18 = 8 * v15;
      do
      {
        if ((*(*v17 + 40) & 8) != 0)
        {
          sub_E88560(&v26, *(*v17 + 60), v28);
        }

        else
        {
          *&v28[16] = 0u;
          v32 = 0uLL;
          *v28 = 0x7FFFFFFFLL;
          *&v28[8] = 0x7FFFFFFF;
          *&v28[12] = 0x7FFFFFFF7FFFFFFFLL;
          v29 = 0x8000000080000000;
          *v30 = 0u;
          memset(v31, 0, 36);
          *&v31[36] = 0x8000000080000000;
          *&v31[44] = 0x7FFFFFFF;
          v33 = xmmword_2297C00;
        }

        v19 = a2[1];
        if (v19 >= a2[2])
        {
          v24 = sub_E8BC5C(a2, v28);
          v25 = *&v31[8];
          a2[1] = v24;
          if (v25)
          {
            *&v31[16] = v25;
            operator delete(v25);
          }
        }

        else
        {
          v20 = *&v28[16];
          v21 = v29;
          *v19 = *v28;
          *(v19 + 16) = v20;
          *(v19 + 32) = v21;
          *(v19 + 40) = 0;
          *(v19 + 48) = 0;
          *(v19 + 56) = 0;
          *(v19 + 40) = *v30;
          *v30 = 0uLL;
          *(v19 + 56) = *v31;
          *(v19 + 64) = 0;
          *(v19 + 72) = 0;
          *(v19 + 80) = 0;
          *(v19 + 64) = *&v31[8];
          *(v19 + 80) = *&v31[24];
          memset(v31, 0, 32);
          v22 = v32;
          v23 = v33;
          *(v19 + 88) = *&v31[32];
          *(v19 + 120) = v23;
          *(v19 + 104) = v22;
          a2[1] = v19 + 136;
        }

        if (v30[0])
        {
          v30[1] = v30[0];
          operator delete(v30[0]);
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_E88544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_49A8F8(va);
  sub_4E3C94(v9);
  _Unwind_Resume(a1);
}

double sub_E88560@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 16) & 0x10) != 0 && sub_4566B4(a1))
  {
    if (*(a2 + 56))
    {
      v6 = *(a2 + 56);
    }

    else
    {
      v6 = &off_27722B0;
    }

    v7 = 10 * *(v6 + 8);
    v8 = 1000 * *(v6 + 10);
    v9 = sub_5AAC4(a1);
    v10 = sub_4566A4(a1);
    v39 = sub_4566AC(a1);
    if (v10 >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v9 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    sub_456544(&v38, v12, &v39);
    sub_446E58(&v36, &v38, 0);
    nullsub_1();
    *(a3 + 89) = 0;
    *(a3 + 91) = 0;
    *a3 = v7;
    *(a3 + 8) = v36;
    *(a3 + 24) = v37;
    *(a3 + 32) = 0x7FFFFFFF;
    *(a3 + 36) = v7;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    *(a3 + 40) = 0u;
    *&result = 0x8000000080000000;
    *(a3 + 92) = 0x8000000080000000;
    *(a3 + 100) = 0x7FFFFFFF;
    *(a3 + 104) = v14;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    *(a3 + 128) = 0x7FFFFFFFFFFFFFFFLL;
    v15 = v6[3];
    if (v15)
    {
      v16 = v6[3];
    }

    else
    {
      v16 = &off_2772268;
    }

    v17 = *(v16 + 6);
    v18 = v16[4];
    if (v18)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    v40 = a3 + 40;
    if (v17)
    {
      v20 = 8 * v17;
      do
      {
        v21 = *v19;
        v22 = *(*v19 + 6);
        if ((v22 - 1) >= 0xA)
        {
          LOBYTE(v22) = 0;
        }

        v23 = *(v21 + 4);
        v24 = 1000 * *(v21 + 8);
        if ((v23 & 4) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0x7FFFFFFF;
        }

        sub_96DCC(&v41, v22, 1000 * *(*v19 + 7), v25, 0);
        sub_9A99C(&v40, &v41);
        ++v19;
        v20 -= 8;
      }

      while (v20);
      v15 = v6[3];
    }

    if (v15)
    {
      v26 = v15;
    }

    else
    {
      v26 = &off_2772268;
    }

    v27 = *(v26 + 12);
    v28 = v26[7];
    if (v28)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = 0;
    }

    v40 = a3 + 64;
    if (v27)
    {
      v30 = 8 * v27;
      do
      {
        v31 = *v29;
        v32 = *(*v29 + 6);
        if ((v32 - 1) >= 0xA)
        {
          LOBYTE(v32) = 0;
        }

        v33 = *(v31 + 4);
        v34 = 1000 * *(v31 + 8);
        if ((v33 & 4) != 0)
        {
          v35 = v34;
        }

        else
        {
          v35 = 0x7FFFFFFF;
        }

        sub_96DCC(&v41, v32, 1000 * *(*v29 + 7), v35, 0);
        sub_9A99C(&v40, &v41);
        ++v29;
        v30 -= 8;
      }

      while (v30);
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0;
    *a3 = 0x7FFFFFFF;
    *(a3 + 8) = 0x7FFFFFFF;
    *(a3 + 12) = 0x7FFFFFFF7FFFFFFFLL;
    *(a3 + 32) = 0x8000000080000000;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    *(a3 + 92) = 0x8000000080000000;
    *(a3 + 100) = 0x7FFFFFFF;
    result = 0.0;
    *(a3 + 120) = xmmword_2297C00;
  }

  return result;
}

BOOL sub_E8885C(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (!v1)
  {
    v1 = &off_2772E28;
  }

  if (*(v1 + 32))
  {
    return 0;
  }

  if (sub_E7A5E0(a1) != 1)
  {
    return 0;
  }

  if (*(a1 + 42))
  {
    v3 = *(a1 + 424);
    if (*(v3 + 32))
    {
      v4 = *(*(v3 + 40) + 8);
      if ((*(v4 + 40) & 0x10) != 0 && (*(*(v4 + 80) + 16) & 0x10) != 0)
      {
        return 0;
      }
    }
  }

  v5 = &off_2776700;
  if (*(a1 + 360))
  {
    v5 = *(a1 + 360);
  }

  v6 = *(v5 + 18);
  if (v6)
  {
    v7 = 0;
    v8 = v5[10];
    v9 = 4 * v6;
    do
    {
      v10 = *v8;
      v8 = (v8 + 4);
      v7 |= 1 << sub_899A0(v10);
      v9 -= 4;
    }

    while (v9);
    v11 = *(a1 + 336);
    if (!v11)
    {
      v11 = &off_2772E28;
    }

    v12 = *(v11 + 32);
    if (v12 <= 1)
    {
      goto LABEL_17;
    }

LABEL_24:
    if (v12 != 2)
    {
      if (v12 == 3 && (v7 & 8) == 0)
      {
        return 0;
      }

      return *(a1 + 112) > 2;
    }

    if ((v7 & 4) != 0)
    {
      return *(a1 + 112) > 2;
    }

    return 0;
  }

  LOBYTE(v7) = 0;
  v13 = *(a1 + 336);
  if (!v13)
  {
    v13 = &off_2772E28;
  }

  v12 = *(v13 + 32);
  if (v12 > 1)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (!v12)
  {
    if (v7)
    {
      return *(a1 + 112) > 2;
    }

    return 0;
  }

  if (v12 == 1 && (v7 & 2) == 0)
  {
    return 0;
  }

  return *(a1 + 112) > 2;
}

void sub_E889B4(uint64_t a1@<X0>, char **a2@<X8>)
{
  if ((*(a1 + 41) & 0x10) != 0)
  {
    v3 = *(a1 + 360);
    v4 = *(v3 + 32);
    if (v4)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      if (v4 != -1)
      {
        if (v4 > -2)
        {
          operator new();
        }

        sub_1794();
      }

      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_E88C0C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E88C3C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 16) & 0x10) != 0)
  {
    v2 = *(result + 56);
    if ((~*(v2 + 16) & 3) == 0)
    {
      return sub_58558(a2, *(v2 + 24), *(v2 + 32));
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_E88C70(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((*(a1 + 41) & 0x10) != 0)
  {
    v2 = *(a1 + 360);
    v3 = *(v2 + 32);
    if (v3)
    {
      if (v3 != -1)
      {
        if (v3 > -2)
        {
          operator new();
        }

        sub_1794();
      }

      v4 = *(*(*(v2 + 40) + 8) + 480);
      if (!v4)
      {
        v4 = &off_2772310;
      }

      if ((v4[2] & 0x80) == 0 || (v5 = v4[10], (~*(v5 + 4) & 3) != 0))
      {
        v6 = 0uLL;
        v7 = 0;
      }

      else
      {
        sub_58558(&v6, v5[3], v5[4]);
      }

      operator new();
    }
  }
}

void sub_E88E9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E88EC4(unsigned int *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) >= 4u)
    {
      return *a1;
    }

    return 0;
  }

  if (*(a1 + 1) < 4uLL)
  {
    return 0;
  }

  return **a1;
}

uint64_t sub_E88F00(uint64_t a1)
{
  if (*(a1 + 42) & 1) != 0 && (v1 = *(a1 + 424), (*(v1 + 16)))
  {
    return *(v1 + 48);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_E88F24(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    v1 = &off_2773488;
  }

  v2 = *(v1 + 10);
  if (v2 >= 0x10)
  {
    return sub_4211B8(0);
  }

  else
  {
    return sub_4211B8(v2);
  }
}