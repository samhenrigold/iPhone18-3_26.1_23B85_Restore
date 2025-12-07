float sub_1B5D2AAC0(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 4)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DADC08(v4, a2, v5);
}

float sub_1B5D2AAF8(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 3)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DAD5C8(v4, a2, v5);
}

float sub_1B5D2AB30(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32) != 2)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5DACE78(v4, a2, v5);
}

float sub_1B5D2AB68(unsigned int ***a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4[8] != 1)
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  sub_1B5DAC73C(v4, a2, v5);
  return result;
}

float sub_1B5D2ABA0(uint64_t **a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = **a1;
  if (*(v4 + 32))
  {
    sub_1B5D24008();
  }

  v5 = *(v3 + 8);

  return sub_1B5D93028(v4, a2, v5);
}

uint64_t sub_1B5D2ACAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5[0] = sub_1B5CF3294(*(a1 + 48));
  v5[1] = v3;
  v6 = 12;
  sub_1B5DB9C6C(a2, v5);
  return sub_1B5D264A0(v5);
}

void sub_1B5D2ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AD10@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 11;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AD68@<X0>(uint64_t a1@<X8>)
{
  memset(v2, 0, sizeof(v2));
  v3 = 10;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

uint64_t sub_1B5D2ADC4@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 9;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AE1C@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 8;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AE74@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 7;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5[0] = sub_1B5CF3294(*(a1 + 56));
  v5[1] = v3;
  v6 = 6;
  sub_1B5DB9C6C(a2, v5);
  return sub_1B5D264A0(v5);
}

void sub_1B5D2AF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AF30@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 5;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2AF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2AF88@<X0>(uint64_t a1@<X8>)
{
  memset(v2, 0, sizeof(v2));
  v3 = 4;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

uint64_t sub_1B5D2AFE4@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 3;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2B03C@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 2;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2B094@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 1;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2B0EC@<X0>(uint64_t a1@<X8>)
{
  v2[0] = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_1B5DB9C6C(a1, v2);
  return sub_1B5D264A0(v2);
}

void sub_1B5D2B138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D264A0(va);
  _Unwind_Resume(a1);
}

void sub_1B5D2B14C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1488);
  *a2 = *(a1 + 1480);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B16C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1504);
  *a2 = *(a1 + 1496);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B18C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1504);
  *a2 = *(a1 + 1496);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B1AC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 2048);
  *a2 = *(a1 + 2040);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B1CC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1480);
  *a2 = *(a1 + 1472);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B1EC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1544);
  *a2 = *(a1 + 1536);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B20C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1520);
  *a2 = *(a1 + 1512);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B22C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1536);
  *a2 = *(a1 + 1528);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B24C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1536);
  *a2 = *(a1 + 1528);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B26C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 2080);
  *a2 = *(a1 + 2072);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B28C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1576);
  *a2 = *(a1 + 1568);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B5D2B2AC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 1512);
  *a2 = *(a1 + 1504);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

os_log_t sub_1B5D2B38C()
{
  result = os_log_create("com.apple.Lexicon", "StaticDictionaryImpl");
  qword_1ED833A40 = result;
  return result;
}

void sub_1B5D2B3BC(char a1, void *__p)
{
  if (a1)
  {
    if (*(__p + 8) >= 0xFu)
    {
      v3 = __p[3];
      if (v3)
      {
        MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1B5D2B490(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B544(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B5F8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B6AC(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B760(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B814(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B8C8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2B97C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BA30(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BAE4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BB98(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BC4C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (mlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "mlock() failed for words file");
    if (mlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "mlock() failed for index file");
  }
}

void sub_1B5D2BD00(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) == 1)
  {
    sub_1B5CE410C(__p, "words");
    sub_1B5D93F6C((a2 + 14328), *(a2 + 8), __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1B5CE410C(__p, "index");
    sub_1B5D93F6C((a2 + 14329), *a2, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B5D2BD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D2BDBC(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2BE70(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2BF24(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2BFD8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C08C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C140(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C1F4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C2A8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C35C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C410(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C4C4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C578(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if (munlock(**(a2 + 24), *(*(a2 + 24) + 8)))
    {
      v3 = *__error();
      v4 = std::generic_category();
    }

    else
    {
      v4 = std::system_category();
      v3 = 0;
    }

    *&v7.__val_ = v3;
    v7.__cat_ = v4;
    sub_1B5DB2410(&v7, "munlock() failed for words file");
    if (munlock(**(a2 + 32), *(*(a2 + 32) + 8)))
    {
      v5 = *__error();
      v6 = std::generic_category();
    }

    else
    {
      v6 = std::system_category();
      v5 = 0;
    }

    *&v7.__val_ = v5;
    v7.__cat_ = v6;
    sub_1B5DB2410(&v7, "munlock() failed for index file");
  }
}

void sub_1B5D2C62C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) == 1)
  {
    sub_1B5CE410C(&__p, "words");
    sub_1B5D94200((a2 + 14328), *(a2 + 8), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1B5CE410C(&__p, "index");
    sub_1B5D94200((a2 + 14329), *a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B5D2C6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D2C6E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = *(result + 8);
    v7 = v6;
    do
    {
      v8 = *v5;
      if (*v5 == v7)
      {
        v9 = v7;
      }

      else
      {
        while (1)
        {
          if (v8 == v4 || (result = sub_1B5D5DD60(v8, v4), result))
          {
            if (*(v8 + 40) == *(v4 + 40))
            {
              break;
            }
          }

          v8 += 88;
          if (v8 == v7)
          {
            v9 = v6;
            v8 = v7;
            goto LABEL_11;
          }
        }

        v9 = v6;
      }

LABEL_11:
      if (v8 == v9)
      {
        if (v9 >= v5[2])
        {
          result = sub_1B5D2C828(v5, v4);
          v6 = result;
        }

        else
        {
          result = sub_1B5D5CABC(v9, v4);
          v10 = *(v4 + 32);
          v11 = *(v4 + 48);
          v12 = *(v4 + 64);
          *(v9 + 80) = *(v4 + 80);
          *(v9 + 48) = v11;
          *(v9 + 64) = v12;
          *(v9 + 32) = v10;
          v6 = v9 + 88;
          v5[1] = v9 + 88;
        }

        v5[1] = v6;
        v9 = v6;
      }

      else
      {
        *(v8 + 32) = *(v8 + 32) + *(v4 + 32);
        *(v8 + 36) = *(v4 + 36);
        *(v8 + 56) = *(v4 + 56);
      }

      v4 += 88;
      v7 = v9;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_1B5D2C828(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1B5D04FA0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1B5D2C984(v6);
  }

  v17 = 0;
  v18 = 88 * v2;
  v19 = (88 * v2);
  v7 = sub_1B5D5CABC(88 * v2, a2);
  v9 = *(a2 + 48);
  v8 = *(a2 + 64);
  v10 = *(a2 + 80);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v9;
  *(v7 + 80) = v10;
  *(v7 + 64) = v8;
  *&v19 = v19 + 88;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  sub_1B5D2C9E0(*a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1B5D2CAC4(&v17);
  return v16;
}

void sub_1B5D2C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1B5D2CAC4(va);
  _Unwind_Resume(a1);
}

void sub_1B5D2C984(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D2C9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      sub_1B5D5CABC(a3 + v6, (v5 + v6));
      v8 = *(v5 + v6 + 32);
      v9 = *(v5 + v6 + 48);
      v10 = *(v5 + v6 + 64);
      *(v7 + 80) = *(v5 + v6 + 80);
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v6 += 88;
    }

    while (v5 + v6 != a2);
    do
    {
      v11 = *(v5 + 8);
      if (v11)
      {
        if (*(v5 + 6) == 1)
        {
          free(v11);
        }
      }

      v5 += 88;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1B5D2CAC4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 88;
      *(a1 + 16) = v2 - 88;
      v5 = *(v2 - 80);
      if (v5 && *(v2 - 82) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_1B5D2CB30(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2 >= 0xF)
  {
    v3 = *(a1 + 160);
    if (v2 > 0x16)
    {
      operator new();
    }

    v12 = *(a1 + 152);
    goto LABEL_7;
  }

  v12 = *(a1 + 152);
  if (v2)
  {
    v3 = (a1 + 154);
LABEL_7:
    memmove(__dst, v3, v2);
    goto LABEL_8;
  }

  v2 = 0;
LABEL_8:
  *(__dst + v2) = 0;
  v4 = v12;
  v5 = __dst[0];
  if (v12 >= 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if (v12 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = sub_1B5D2CC6C(v6, v7);
  v9 = (*(**(a1 + 8) + 112))(*(a1 + 8));
  if (v4 < 0)
  {
    operator delete(v5);
  }

  return v9 ^ v8;
}

void sub_1B5D2CC54(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1B5D2CC6C(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

uint64_t sub_1B5D2D0A0(uint64_t a1)
{
  if (*(a1 + 104) > 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v6 = a1 + 16;
  v4 = *(v3 + 14360);
  if (v4 == -1)
  {
    goto LABEL_9;
  }

  v7 = &v6;
  if ((off_1F2D5A6C0[v4])(&v7, v3 + 8))
  {
    return 1;
  }

  v6 = a1 + 56;
  v5 = *(v3 + 28720);
  if (v5 == -1)
  {
LABEL_9:
    sub_1B5D24008();
  }

  v7 = &v6;
  return (off_1F2D5A6C0[v5])(&v7, v3 + 14368);
}

CFStringRef sub_1B5D2D168(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (!v1)
  {
    v1 = (a1 + 136);
  }

  return sub_1B5CDFA10(v1, *(a1 + 120));
}

void sub_1B5D2D1D0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *(a1 + 8) + 8;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B5D2D2A4;
  v3[3] = &unk_1E7C20C50;
  v3[4] = a2;
  v3[5] = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1B5D2D3A0;
  v5[3] = &unk_1E7C20CC8;
  v5[6] = a1 + 152;
  v5[7] = a1 + 120;
  v5[8] = 0;
  v5[9] = &v4;
  v5[4] = v3;
  v5[5] = v2;
  sub_1B5D9A37C(a1 + 16, v2, v5);
}

void sub_1B5D2D2A4(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, double a5)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 208);
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D58048);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D2D6C4(Instance + 16, *(v10 + 8), a2, a3, a4, a5, v11 + a5);
  (*(*(a1 + 32) + 16))();

  CFRelease(Instance);
}

void sub_1B5D2D3A0(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  sub_1B5D7FC58(&v17, *(a1 + 40) + 28744, *(a1 + 48), *(a2 + 84));
  if (v21 == -1)
  {
    sub_1B5D7FC58(&v22, *(a1 + 40) + 28744, *(a1 + 48), *(a2 + 84));
    if (v25 >= 0xFu && v26)
    {
      MEMORY[0x1B8C880C0](v26, 0x1000C8077774924);
    }

    if (v22 >= 0xFu && v23)
    {
      MEMORY[0x1B8C880C0](v23, 0x1000C8077774924);
    }
  }

  else if (v21 == -2)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = sub_1B5D99B18(a2, v6);
    v10 = log10f(v9);
    v11 = *(a1 + 72);
    v12 = *(a1 + 32);
    v22 = MEMORY[0x1E69E9820];
    v23 = 0x40000000;
    v24 = sub_1B5D2D3A0;
    v25 = &unk_1E7C20CC8;
    v28 = &v17;
    v29 = v7;
    v30 = v8 + v10;
    v31 = v11;
    v26 = v12;
    v27 = v6;
    sub_1B5D9A37C(a2, v6, &v22);
  }

  else
  {
    v13 = *(a1 + 32);
    sub_1B5D5DC60(&v22, *(a1 + 56), v21);
    v14 = *(a1 + 64);
    v15 = sub_1B5D99B18(a2, *(a1 + 40));
    v16 = log10f(v15);
    (*(v13 + 16))(v13, a2, &v22, &v17, *(a1 + 72), v14 + v16);
    if (v23 && BYTE6(v22) == 1)
    {
      free(v23);
    }
  }

  *a3 = **(a1 + 72) != 0;
  if (v19 >= 0xFu && v20)
  {
    MEMORY[0x1B8C880C0](v20, 0x1000C8077774924);
  }

  if (v17 >= 0xFu)
  {
    if (v18)
    {
      MEMORY[0x1B8C880C0](v18, 0x1000C8077774924);
    }
  }
}

unsigned __int16 *sub_1B5D2D650(unsigned __int16 *a1)
{
  if (a1[12] >= 0xFu)
  {
    v2 = *(a1 + 4);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*a1 >= 0xFu)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  return a1;
}

uint64_t sub_1B5D2D6C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, double a6, double a7)
{
  *a1 = &unk_1F2D56A48;
  *(a1 + 8) = a2;
  sub_1B5D9A194(a1 + 16, a3);
  sub_1B5D5CABC(a1 + 120, a4);
  v12 = *a5;
  if (v12 >= 0xF)
  {
    *(a1 + 152) = v12;
    operator new[]();
  }

  *(a1 + 152) = *a5;
  *(a1 + 168) = *(a5 + 16);
  v13 = a5[12];
  if (v13 >= 0xF)
  {
    *(a1 + 176) = v13;
    operator new[]();
  }

  *(a1 + 176) = *(a5 + 12);
  *(a1 + 192) = *(a5 + 10);
  *(a1 + 200) = a6;
  *(a1 + 208) = a7;
  return a1;
}

void sub_1B5D2D7D0(_Unwind_Exception *a1)
{
  if (*(v1 + 152) >= 0xFu)
  {
    v3 = *(v1 + 160);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(v1 + 128);
  if (v4)
  {
    if (*(v1 + 126) == 1)
    {
      free(v4);
    }
  }

  sub_1B5D2D834(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2D834(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    v3 = sub_1B5D27078(v2);
    MEMORY[0x1B8C880F0](v3, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 40);
  sub_1B5D264A0(a1);
  return a1;
}

uint64_t sub_1B5D2D88C()
{
  qword_1ED833AF0 = 0;
  *algn_1ED833AF8 = "LXCursor";
  qword_1ED833B00 = 0;
  unk_1ED833B08 = 0;
  qword_1ED833B10 = sub_1B5D2D8E0;
  unk_1ED833B18 = 0u;
  unk_1ED833B28 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833AE0 = result;
  return result;
}

uint64_t sub_1B5D2D904(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 112);
  if (v3 && (sub_1B5D8A778(v3, v2 + 8) & 1) != 0)
  {
    return 1;
  }

  v7 = a1 + 16;
  v4 = *(v2 + 14360);
  if (v4 == -1)
  {
    goto LABEL_9;
  }

  v8 = &v7;
  if ((off_1F2D5A860[v4])(&v8, v2 + 8))
  {
    return 1;
  }

  v7 = a1 + 56;
  v6 = *(v2 + 28720);
  if (v6 == -1)
  {
LABEL_9:
    sub_1B5D24008();
  }

  v8 = &v7;
  return (off_1F2D5A860[v6])(&v8, v2 + 14368);
}

void sub_1B5D2D9C4(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = sub_1B5D2DA30;
  v2[3] = &unk_1E7C20C78;
  v2[4] = a2;
  sub_1B5D2DAC0(a1, v2);
}

void sub_1B5D2DA30(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3;
  v4 = sub_1B5D2DF44(a2, &v5);
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1B5D2DAC0(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 8);
  v4 = (a1 + 152);
  v35 = (a1 + 16);
  v36 = (a1 + 152);
  v5 = *(v3 + 14360);
  if (v5 == -1)
  {
    sub_1B5D24008();
  }

  v33 = &v35;
  (off_1F2D5A728[v5])(&v31, &v33, v3 + 8);
  v8 = sub_1B5D9A294(v2, v3 + 8);
  v9 = sub_1B5D996DC(v2, v3 + 8);
  if (v8 > 0.0)
  {
    v33 = v2;
    v10 = *(v3 + 14360);
    if (v10 == -1)
    {
      sub_1B5D24008();
    }

    v35 = &v33;
    v9 = (v9 * (off_1F2D5A5F0[v10])(&v35, v3 + 8)) / v8;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    __assert_rtn("probability_of_baseline_given_termination", "TIStaticDictionaryImplCursor.cpp", 124, "isfinite(result)");
  }

  v11 = v31;
  v12 = v32;
  while (v11 != v12)
  {
    *(v11 + 32) = v9 * *(v11 + 32);
    v11 += 88;
  }

  v33 = (a1 + 56);
  v34 = v4;
  v13 = *(v3 + 28720);
  if (v13 == -1)
  {
    sub_1B5D24008();
  }

  v37 = &v33;
  (off_1F2D5A728[v13])(&v35, &v37, v3 + 14368);
  v14 = v35;
  v15 = v36;
  if (v35 != v36)
  {
    v16 = v35;
    do
    {
      *(v16 + 8) = (1.0 - v9) * *(v16 + 8);
      v16 += 11;
    }

    while (v16 != v15);
  }

  sub_1B5D2C6E8(&v31, v14, v15);
  if (*(a1 + 104) > 0)
  {
    v17 = *(v3 + 30128);
    if (!v17)
    {
      __assert_rtn("derive_words", "TIStaticDictionaryImplCursor.cpp", 347, "converter");
    }

    v18 = v31;
    v19 = v32;
    if (v31 != v32)
    {
      while ((*(v18 + 59) & 0x20) == 0 && (sub_1B5D4D950(v17, *(v18 + 60), 0, 0) & 1) == 0)
      {
        v18 += 88;
        if (v18 == v19)
        {
          goto LABEL_35;
        }
      }

      if (v18 != v19)
      {
        v20 = v18 + 88;
        if (v18 + 88 != v19)
        {
          do
          {
            if ((*(v20 + 59) & 0x20) == 0 && (sub_1B5D4D950(v17, *(v20 + 60), 0, 0) & 1) == 0)
            {
              sub_1B5D5CBBC(v18, v20);
              v21 = *(v20 + 32);
              v22 = *(v20 + 48);
              v23 = *(v20 + 64);
              *(v18 + 80) = *(v20 + 80);
              *(v18 + 48) = v22;
              *(v18 + 64) = v23;
              *(v18 + 32) = v21;
              v18 += 88;
            }

            v20 += 88;
          }

          while (v20 != v19);
          v19 = v32;
        }
      }
    }

    if (v18 != v19)
    {
      while (v19 != v18)
      {
        v24 = *(v19 - 80);
        if (v24 && *(v19 - 82) == 1)
        {
          free(v24);
        }

        v19 -= 88;
      }

      v32 = v18;
    }

LABEL_35:
    v25 = *(a1 + 112);
    if (v25)
    {
      sub_1B5D8ACC0(&v33, v25, v3 + 8, v4);
      sub_1B5D2C6E8(&v31, v33, v34);
      v38 = &v33;
      sub_1B5D26264(&v38);
    }
  }

  v33 = &v35;
  sub_1B5D26264(&v33);
  LOBYTE(v35) = 0;
  v26 = v31;
  for (i = v32; v26 != i; v26 += 88)
  {
    v28 = (*(*a1 + 80))(a1);
    v29 = v28 + (*(*a1 + 88))(a1);
    v30 = log10f(*(v26 + 32));
    (*(a2 + 16))(a2, v26, &v35, v29 + v30);
    if (v35)
    {
      break;
    }
  }

  v35 = &v31;
  sub_1B5D26264(&v35);
}

void sub_1B5D2DED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void ***a20)
{
  a20 = &a13;
  sub_1B5D26264(&a20);
  a13 = &a16;
  sub_1B5D26264(&a13);
  a20 = &a10;
  sub_1B5D26264(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D2DF44(uint64_t a1, uint64_t *a2)
{
  if (qword_1ED833AC8 != -1)
  {
    dispatch_once(&qword_1ED833AC8, &unk_1F2D58068);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = *a2;
  sub_1B5D5CABC(Instance + 16, a1);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  *(Instance + 96) = *(a1 + 80);
  *(Instance + 64) = v7;
  *(Instance + 80) = v8;
  *(Instance + 48) = v6;
  *(Instance + 104) = v5;
  *(Instance + 112) = 0;
  *(Instance + 120) = 0;
  return Instance;
}

uint64_t sub_1B5D2E010()
{
  qword_1ED833A60 = 0;
  *algn_1ED833A68 = "LXEntry";
  qword_1ED833A70 = 0;
  unk_1ED833A78 = 0;
  qword_1ED833A80 = sub_1B5D2E064;
  unk_1ED833A88 = 0u;
  unk_1ED833A98 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833A50 = result;
  return result;
}

void sub_1B5D2E064(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 22) == 1)
    {
      free(v2);
    }
  }
}

uint64_t sub_1B5D2E084(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 104);
  if (v3 < 1)
  {
    v7 = a1 + 16;
    v5 = *(v2 + 14360);
    if (v5 != -1)
    {
      v8 = &v7;
      if ((off_1F2D5A658[v5])(&v8, v2 + 8))
      {
        return 1;
      }

      v7 = a1 + 56;
      v6 = *(v2 + 28720);
      if (v6 != -1)
      {
        v8 = &v7;
        return (off_1F2D5A658[v6])(&v8, v2 + 14368);
      }
    }

    sub_1B5D24008();
  }

  if (v3 == 2)
  {
    return 1;
  }

  result = *(a1 + 112);
  if (result)
  {

    return sub_1B5D8BAD4(result, v2 + 8);
  }

  return result;
}

uint64_t sub_1B5D2E18C(uint64_t a1, unsigned __int16 *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  sub_1B5D9A194(v35, a1 + 16);
  if (*(a1 + 152) >= 0xFuLL)
  {
    LOWORD(v31) = *(a1 + 152);
    operator new[]();
  }

  v31 = *(a1 + 152);
  v4 = *(a1 + 176);
  v32 = *(a1 + 168);
  if (v4 >= 0xF)
  {
    LOWORD(v33) = v4;
    operator new[]();
  }

  v33 = *(a1 + 176);
  v34 = *(a1 + 192);
  if (*(a2 + 1))
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = a2 + 8;
  }

  v27 = v5;
  v20 = a2;
  v6 = *a2;
  v28 = 0;
  v29 = v6;
  v30 = 0;
  sub_1B5CDCF70(&v27);
  v23 = v5;
  v24 = v6;
  v25 = v6;
  v26 = 0;
  sub_1B5CDCF70(&v23);
  v7 = v23;
  v8 = 0.0;
  v9 = v24;
  while (1)
  {
    if (v27 != v7)
    {
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    if (v28 == v9)
    {
      break;
    }

    v10 = v30;
    sub_1B5CDC2F8(&v38, *(a1 + 8) + 8);
    (*(*v38 + 16))(&v21);
    if (*(&v38 + 1))
    {
      sub_1B5CDD904(*(&v38 + 1));
    }

    v11 = v31;
    sub_1B5CDD368(&v38, *(a1 + 8) + 28752, &v31, v10, &v21);
    if (v11 >= 0xF && *(&v31 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v31 + 1), 0x1000C8077774924);
    }

    v31 = v38;
    if (v38 >= 0xFu)
    {
      LOWORD(v38) = 0;
    }

    v32 = v39;
    if (v33 >= 0xFu && *(&v33 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v33 + 1), 0x1000C8077774924);
    }

    v33 = v40;
    if (v40 >= 0xFu)
    {
      LOWORD(v40) = 0;
    }

    v34 = v41;
    if (v38 >= 0xFu && *(&v38 + 1))
    {
      MEMORY[0x1B8C880C0](*(&v38 + 1), 0x1000C8077774924);
    }

    while (sub_1B5D99510(v35) && v11 < v31)
    {
      if (v31 <= 0xEu)
      {
        v12 = &v31 + 2;
      }

      else
      {
        v12 = *(&v31 + 1);
      }

      v13 = sub_1B5D995A8(v35, *(a1 + 8) + 8, v12[v11]);
      v8 = v8 + log10f(v13);
      ++v11;
    }

    v14 = sub_1B5D99510(v35);
    if (v21 >= 0xFu && v22)
    {
      MEMORY[0x1B8C880C0](v22, 0x1000C8077774924);
    }

    if (!v14)
    {
      Instance = 0;
      goto LABEL_44;
    }

    sub_1B5CDCF70(&v27);
  }

  if ((sub_1B5D99510(v35) & 1) == 0)
  {
    __assert_rtn("create_child", "LXCursor.cpp", 170, "impl.valid()");
  }

  sub_1B5D5DD0C(&v38, (a1 + 120), v20);
  v15 = *(a1 + 208);
  if (qword_1ED833B58[0] != -1)
  {
    dispatch_once(qword_1ED833B58, &unk_1F2D58048);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D2D6C4(Instance + 16, *(a1 + 8), v35, &v38, &v31, v8, v15 + v8);
  if (*(&v38 + 1) && BYTE6(v38) == 1)
  {
    free(*(&v38 + 1));
  }

LABEL_44:
  if (v33 >= 0xFu && *(&v33 + 1))
  {
    MEMORY[0x1B8C880C0](*(&v33 + 1), 0x1000C8077774924);
  }

  if (v31 >= 0xFu && *(&v31 + 1))
  {
    MEMORY[0x1B8C880C0](*(&v31 + 1), 0x1000C8077774924);
  }

  v17 = v37;
  v37 = 0;
  if (v17)
  {
    v18 = sub_1B5D27078(v17);
    MEMORY[0x1B8C880F0](v18, 0x1032C40198927B0);
  }

  sub_1B5D264A0(&v36);
  sub_1B5D264A0(v35);
  return Instance;
}

void sub_1B5D2E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int16 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (a19 >= 0xFu)
  {
    if (a20)
    {
      MEMORY[0x1B8C880C0](a20, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
    }
  }

  sub_1B5D2D834(va);
  _Unwind_Resume(a1);
}

void sub_1B5D2E6F8(uint64_t a1)
{
  *a1 = &unk_1F2D56A48;
  if (*(a1 + 176) >= 0xFu)
  {
    v2 = *(a1 + 184);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 152) >= 0xFu)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 128);
  if (v4 && *(a1 + 126) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5)
  {
    v6 = sub_1B5D27078(v5);
    MEMORY[0x1B8C880F0](v6, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 56);
  sub_1B5D264A0(a1 + 16);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D2E7F4(uint64_t a1)
{
  *a1 = &unk_1F2D56A48;
  if (*(a1 + 176) >= 0xFu)
  {
    v2 = *(a1 + 184);
    if (v2)
    {
      MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
    }
  }

  if (*(a1 + 152) >= 0xFu)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
    }
  }

  v4 = *(a1 + 128);
  if (v4 && *(a1 + 126) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v5)
  {
    v6 = sub_1B5D27078(v5);
    MEMORY[0x1B8C880F0](v6, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 56);
  sub_1B5D264A0(a1 + 16);
  return a1;
}

uint64_t sub_1B5D2E8D0(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = result;
  v6[6] = MEMORY[0x1E69E9820];
  v6[7] = 0x40000000;
  v6[8] = sub_1B5D2EA00;
  v6[9] = &unk_1E7C20BB0;
  v6[10] = a3;
  v6[11] = a2;
  if (result)
  {
    result = (*(*(result + 16) + 48))();
  }

  if (!*a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = sub_1B5D2EA40;
    v6[3] = &unk_1E7C20BD8;
    v6[4] = a3;
    v6[5] = a2;
    if (v5)
    {
      return (*(*(v5 + 16) + 64))(v5 + 16, v6);
    }
  }

  return result;
}

uint64_t sub_1B5D2EA00(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  **(a1 + 40) = *a3;
  return result;
}

uint64_t sub_1B5D2EA40(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_1B5D2E8D0(a2, a3, *(a1 + 32));
  **(a1 + 40) = *a3;
  return result;
}

uint64_t LXCursorEnumerateEntries(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 48))();
  }

  return result;
}

uint64_t LXCursorEnumerateChildren(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 64))();
  }

  return result;
}

void sub_1B5D2EAD8(const void *a1, uint64_t a2)
{
  v92 = 0;
  v93 = &v92;
  v94 = 0x4802000000;
  v95 = sub_1B5D2F3A0;
  v96 = sub_1B5D2F3C8;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = &unk_1B5DC4897;
  v83 = 0;
  v84 = &v83;
  v85 = 0x4802000000;
  v86 = sub_1B5D2F3E0;
  v87 = sub_1B5D2F408;
  __p = 0;
  v89 = 0;
  v90 = 0;
  v91 = &unk_1B5DC4898;
  v3 = CFRetain(a1);
  v4 = v3;
  v5 = v98;
  if (v98 >= v99)
  {
    v7 = (v98 - v97) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v8 = (v99 - v97) >> 2;
    if (v8 <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    if (v99 - v97 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_1B5D2F420(v9);
    }

    v10 = (8 * v7);
    *v10 = v4;
    v6 = 8 * v7 + 8;
    v11 = v10 - (v98 - v97);
    memcpy(v11, v97, v98 - v97);
    v12 = v97;
    v97 = v11;
    v98 = v6;
    v99 = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v98 = v3;
    v6 = (v5 + 8);
  }

  v98 = v6;
  sub_1B5D2F468(v97, v6, (v6 - v97) >> 3);
  v82 = 0;
  v13 = v93;
  v14 = v93[5];
  v16 = v93 + 6;
  v15 = v93[6];
  if (v14 == v15)
  {
    goto LABEL_57;
  }

  do
  {
    v17 = *v14;
    cf = *v14;
    v18 = v15 - v14;
    if (v18 < 2)
    {
      goto LABEL_28;
    }

    v72 = v17;
    v73 = v15;
    v19 = 0;
    v20 = v14;
    do
    {
      v21 = &v20[v19 + 1];
      v22 = (2 * v19) | 1;
      v23 = 2 * v19 + 2;
      if (v23 >= v18)
      {
        goto LABEL_24;
      }

      v24 = v20[v19 + 2];
      if (*v21)
      {
        v25 = (*(*(*v21 + 16) + 80))();
        if (v24)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v25 = -INFINITY;
        if (v24)
        {
LABEL_19:
          (*(*(v24 + 16) + 80))(v24 + 16);
          goto LABEL_22;
        }
      }

      v26 = -INFINITY;
LABEL_22:
      if (v25 < v26)
      {
        v21 += 8;
        v22 = v23;
      }

LABEL_24:
      *v20 = *v21;
      v20 = v21;
      v19 = v22;
    }

    while (v22 <= ((v18 - 2) >> 1));
    v27 = v73 - 1;
    if (v21 == v73 - 1)
    {
      *v21 = v72;
    }

    else
    {
      *v21 = *v27;
      *v27 = v72;
      sub_1B5D2F468(v14, v21 + 8, (v21 + 8 - v14) >> 3);
    }

LABEL_28:
    *v16 -= 8;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 0x40000000;
    v80[2] = sub_1B5D2F5E8;
    v80[3] = &unk_1E7C20C00;
    v80[4] = &v83;
    if (cf)
    {
      v28 = cf + 16;
      (*(*(cf + 2) + 48))(cf + 16, v80);
      v75 = MEMORY[0x1E69E9820];
      v76 = 0x40000000;
      v77 = sub_1B5D2F70C;
      v78 = &unk_1E7C20C28;
      v79 = &v92;
      (*(*v28 + 64))(v28, &v75);
    }

    else
    {
      v75 = MEMORY[0x1E69E9820];
      v76 = 0x40000000;
      v77 = sub_1B5D2F70C;
      v78 = &unk_1E7C20C28;
      v79 = &v92;
    }

    v29 = v84;
    v30 = v93;
    do
    {
      v31 = v29[5];
      v32 = v29[6];
      if (v31 == v32)
      {
        break;
      }

      v33 = v30[5];
      if (v33 != v30[6])
      {
        v34 = *(*v31 + 104);
        if (v34 >= (*(*(*v33 + 16) + 80))())
        {
          v31 = v29[5];
          v32 = v29[6];
        }

        else
        {
          if ((v30[6] - v30[5]) < 0x27101)
          {
            break;
          }

          v31 = v29[5];
          v32 = v29[6];
          if ((v32 - v31) < 0x3E81)
          {
            break;
          }
        }
      }

      v35 = *v31;
      v101 = *v31;
      v36 = (v32 - v31) >> 3;
      if (v36 >= 2)
      {
        v37 = 0;
        v38 = v31;
        do
        {
          v39 = v38;
          v38 += v37 + 1;
          v40 = 2 * v37;
          v37 = (2 * v37) | 1;
          v41 = v40 + 2;
          if (v41 < v36 && *(*v38 + 104) < *(v38[1] + 104))
          {
            ++v38;
            v37 = v41;
          }

          *v39 = *v38;
        }

        while (v37 <= ((v36 - 2) >> 1));
        v42 = (v32 - 8);
        if (v38 == v42)
        {
          *v38 = v35;
        }

        else
        {
          *v38 = *v42;
          *v42 = v35;
          sub_1B5D2F800(v31, (v38 + 1), (v38 - v31 + 8) >> 3);
        }
      }

      v29[6] -= 8;
      v43 = v101;
      (*(a2 + 16))(a2, v101, &v82);
      v44 = v82;
      if (v43)
      {
        CFRelease(v43);
      }
    }

    while (!v44);
    if (cf)
    {
      CFRelease(cf);
    }

    v13 = v93;
    v14 = v93[5];
    v16 = v93 + 6;
    v15 = v93[6];
  }

  while (v14 != v15 && v82 == 0);
LABEL_57:
  v46 = v84[5];
  if (v46 != v84[6])
  {
    do
    {
      CFRelease(*v46);
      v47 = v84;
      v48 = v84[5];
      v49 = v84[6];
      v50 = (v49 - v48) >> 3;
      if (v50 >= 2)
      {
        v51 = 0;
        v52 = *v48;
        v53 = v84[5];
        do
        {
          v54 = v53;
          v53 += v51 + 1;
          v55 = 2 * v51;
          v51 = (2 * v51) | 1;
          v56 = v55 + 2;
          if (v56 < v50 && *(*v53 + 104) < *(v53[1] + 104))
          {
            ++v53;
            v51 = v56;
          }

          *v54 = *v53;
        }

        while (v51 <= ((v50 - 2) >> 1));
        v57 = (v49 - 8);
        if (v53 == v57)
        {
          *v53 = v52;
        }

        else
        {
          *v53 = *v57;
          *v57 = v52;
          sub_1B5D2F800(v48, (v53 + 1), v53 + 1 - v48);
        }
      }

      v47[6] -= 8;
      v46 = v84[5];
    }

    while (v46 != v84[6]);
    goto LABEL_70;
  }

LABEL_71:
  v58 = v13[5];
  if (v58 != v13[6])
  {
    CFRelease(*v58);
    v59 = v93;
    v60 = v93[5];
    v61 = v93[6];
    v62 = (v61 - v60) >> 3;
    if (v62 < 2)
    {
      goto LABEL_86;
    }

    v63 = 0;
    v74 = *v60;
    v64 = v93[5];
    while (1)
    {
      v65 = &v64[v63 + 1];
      v66 = (2 * v63) | 1;
      v67 = 2 * v63 + 2;
      if (v67 < v62)
      {
        break;
      }

LABEL_82:
      *v64 = *v65;
      v64 = v65;
      v63 = v66;
      if (v66 > ((v62 - 2) >> 1))
      {
        v71 = (v61 - 8);
        if (v65 == v61 - 8)
        {
          *v65 = v74;
        }

        else
        {
          *v65 = *v71;
          *v71 = v74;
          sub_1B5D2F468(v60, v65 + 8, (v65 + 8 - v60) >> 3);
        }

LABEL_86:
        v59[6] -= 8;
LABEL_70:
        v13 = v93;
        goto LABEL_71;
      }
    }

    v68 = v64[v63 + 2];
    if (*v65)
    {
      v69 = (*(*(*v65 + 16) + 80))();
      if (v68)
      {
        goto LABEL_77;
      }

LABEL_79:
      v70 = -INFINITY;
    }

    else
    {
      v69 = -INFINITY;
      if (!v68)
      {
        goto LABEL_79;
      }

LABEL_77:
      (*(*(v68 + 16) + 80))(v68 + 16);
    }

    if (v69 < v70)
    {
      v65 += 8;
      v66 = v67;
    }

    goto LABEL_82;
  }

  _Block_object_dispose(&v83, 8);
  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v92, 8);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

__n128 sub_1B5D2F3A0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  v3 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  a1[8] = v3;
  return result;
}

void sub_1B5D2F3C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 sub_1B5D2F3E0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  v3 = *(a2 + 64);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  a1[8] = v3;
  return result;
}

void sub_1B5D2F408(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1B5D2F420(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D2F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 8 * (v3 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    if (*v6)
    {
      v9 = (*(*(*v6 + 16) + 80))();
      if (v8)
      {
LABEL_4:
        (*(*(v8 + 16) + 80))(v8 + 16);
LABEL_7:
        if (v9 >= v10)
        {
          return;
        }

        v11 = *v7;
        v12 = *v7 + 16;
        while (1)
        {
          v13 = v6;
          *v7 = *v6;
          if (!v5)
          {
LABEL_16:
            *v13 = v11;
            return;
          }

          v5 = (v5 - 1) >> 1;
          v6 = (a1 + 8 * v5);
          if (*v6)
          {
            v14 = (*(*(*v6 + 16) + 80))();
            if (!v11)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v14 = -INFINITY;
            if (!v11)
            {
LABEL_14:
              v15 = -INFINITY;
              goto LABEL_15;
            }
          }

          (*(*v12 + 80))(v12);
LABEL_15:
          v7 = v13;
          if (v14 >= v15)
          {
            goto LABEL_16;
          }
        }
      }
    }

    else
    {
      v9 = -INFINITY;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v10 = -INFINITY;
    goto LABEL_7;
  }
}

uint64_t sub_1B5D2F5E8(uint64_t a1, CFTypeRef cf)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = CFRetain(cf);
  v5 = v2[6];
  v4 = v2[7];
  if (v5 >= v4)
  {
    v7 = v2[5];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v13 = v9;
    v14 = (8 * v9);
    v15 = &v14[-v13];
    *v14 = v3;
    v6 = (v14 + 1);
    memcpy(v15, v7, v8);
    v2[5] = v15;
    v2[6] = v6;
    v2[7] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 8);
  }

  v2[6] = v6;
  v16 = v2[5];

  return sub_1B5D2F800(v16, v6, (v6 - v16) >> 3);
}

void sub_1B5D2F70C(uint64_t a1, CFTypeRef cf)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = CFRetain(cf);
  v4 = v3;
  v6 = v2[6];
  v5 = v2[7];
  if (v6 >= v5)
  {
    v8 = v2[5];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_1B5D2F420(v12);
    }

    v13 = (8 * v9);
    *v13 = v4;
    v7 = 8 * v9 + 8;
    v14 = v2[5];
    v15 = v2[6] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v2[5];
    v2[5] = v16;
    v2[6] = v7;
    v2[7] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = v3;
    v7 = (v6 + 1);
  }

  v2[6] = v7;
  v18 = v2[5];

  sub_1B5D2F468(v18, v7, (v7 - v18) >> 3);
}

uint64_t sub_1B5D2F800(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 104);
    if (*(*v4 + 104) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 104) < v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t LXCursorIsRoot(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 32))();
  }

  return result;
}

uint64_t LXCursorCopyTraversedCharacters(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 112))();
  }

  return result;
}

uint64_t LXCursorLastTraversedCharacter(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 120))();
  }

  return result;
}

double LXCursorConditionalProbability(uint64_t a1)
{
  if (!a1)
  {
    return -INFINITY;
  }

  (*(*(a1 + 16) + 72))();
  return result;
}

double LXCursorPrefixProbability(uint64_t a1)
{
  if (!a1)
  {
    return -INFINITY;
  }

  (*(*(a1 + 16) + 80))();
  return result;
}

uint64_t LXCursorUsageCount(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 96))();
  }

  return result;
}

uint64_t LXCursorUsageCountRecursive(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 104))();
  }

  return result;
}

double LXCursorTerminationProbability(uint64_t a1)
{
  if (!a1)
  {
    return -INFINITY;
  }

  (*(*(a1 + 16) + 88))();
  return result;
}

uint64_t LXCursorTerminatesWordStem(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 128))();
  }

  return result;
}

uint64_t LXCursorCreateByAdvancing(uint64_t a1, const __CFString *a2)
{
  v2 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    sub_1B5CDC4B4(v4, a2);
    v2 = (*(*(v2 + 16) + 16))(v2 + 16, v4);
    if (v5)
    {
      if (v4[6] == 1)
      {
        free(v5);
      }
    }
  }

  return v2;
}

void sub_1B5D2FAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    if (a12 == 1)
    {
      free(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXCursorCreateByAdvancingWithUTF8(uint64_t a1, char *a2, unsigned __int16 a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    sub_1B5D5CA18(&v7, a2, a3);
    v4 = (*(*(a1 + 16) + 16))(a1 + 16, &v7);
    if (*&v8[4] && v8[2] == 1)
    {
      free(*&v8[4]);
    }
  }

  else
  {
    if (qword_1EB90CA68 != -1)
    {
      dispatch_once(&qword_1EB90CA68, &unk_1F2D58028);
    }

    v5 = qword_1EB90CA60;
    if (os_log_type_enabled(qword_1EB90CA60, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      *v8 = "LXCursorCreateByAdvancingWithUTF8";
      _os_log_fault_impl(&dword_1B5CDB000, v5, OS_LOG_TYPE_FAULT, "%s: Missing cursor", &v7, 0xCu);
    }

    return 0;
  }

  return v4;
}

void sub_1B5D2FC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, void *a12)
{
  if (a12)
  {
    if (a11 == 1)
    {
      free(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_1B5D2FC64()
{
  result = os_log_create("com.apple.Lexicon", "Cursor");
  qword_1EB90CA60 = result;
  return result;
}

uint64_t LXCursorCreateByAdvancingWithUTF16(uint64_t a1, UChar *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("LXCursorCreateByAdvancingWithUTF16", "LXCursor.cpp", 392, "false && missing cursor");
  }

  v6 = 0x100000;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_1B5D5D888(&v6, a2, a3);
  v4 = (*(*(a1 + 16) + 16))(a1 + 16, &v6);
  if (v9 && v8 == 1)
  {
    free(v9);
  }

  return v4;
}

void sub_1B5D2FD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXCursorCreateByAdvancingWithUTF32(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("LXCursorCreateByAdvancingWithUTF32", "LXCursor.cpp", 403, "false && missing cursor");
  }

  v3 = a3;
  v9 = 0x100000;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  for (i = 0; v3; --v3)
  {
    v6 = *a2++;
    sub_1B5D5CC40(&v9, v6);
  }

  v7 = (*(*(a1 + 16) + 16))(a1 + 16, &v9);
  if (v12 && v11 == 1)
  {
    free(v12);
  }

  return v7;
}

void sub_1B5D2FEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXCursorHasChildren(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 56))();
  }

  return result;
}

void LXCursorEnumerateEntriesRecursively(const void *a1, uint64_t a2)
{
  if (a1)
  {
    sub_1B5D2EAD8(a1, a2);
  }
}

void LXCursorEnumerateEntriesRecursivelyWithPolicy(const void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 == 1)
    {

      sub_1B5D2EAD8(a1, a3);
    }

    else
    {
      if (a2)
      {
        if (qword_1EB90CA68 != -1)
        {
          dispatch_once(&qword_1EB90CA68, &unk_1F2D58028);
        }

        v3 = qword_1EB90CA60;
        if (os_log_type_enabled(qword_1EB90CA60, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v6 = a2;
          _os_log_error_impl(&dword_1B5CDB000, v3, OS_LOG_TYPE_ERROR, "Unsupported enumeration policy: %ld", buf, 0xCu);
        }

        __assert_rtn("LXCursorEnumerateEntriesRecursivelyWithPolicy", "LXCursor.cpp", 451, "false && unsupported enumeration policy");
      }

      buf[0] = 0;
      sub_1B5D2E8D0(a1, buf, a3);
    }
  }
}

uint64_t LXCursorHasEntries(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 40))();
  }

  return result;
}

uint64_t LXCursorCopyFirstEntry(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (a1)
  {
    (*(*(a1 + 16) + 48))();
    v1 = v4[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1B5D30194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_1B5D301AC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  result = CFRetain(*(*(*(a1 + 32) + 8) + 24));
  *a3 = 1;
  return result;
}

uint64_t LXCursorHash(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 136))();
  }

  return result;
}

void sub_1B5D3021C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_1B5CE5968();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_1B5D30420(void *a1, int a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1B5D304B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1B5D304D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = a1 + 32 * (v3 >> 1);
    v7 = *(a2 - 8);
    if (*(v6 + 24) > v7)
    {
      v8 = 0;
      v9 = a2 - 32;
      v13 = *(a2 - 32);
      v10 = *(a2 - 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      while (1)
      {
        v11 = v6;
        if (v8)
        {
          *(v9 + 8) = v8;
          operator delete(v8);
          *v9 = 0;
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
        }

        *v9 = *v11;
        *(v9 + 16) = *(v11 + 16);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *(v9 + 24) = *(v11 + 24);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 32 * v5;
        if (*(v6 + 24) <= v7)
        {
          break;
        }

        v8 = *v11;
        v9 = v11;
      }

      result = v13;
      *v11 = v13;
      *(v11 + 16) = v10;
      *(v11 + 24) = v7;
    }
  }

  return result;
}

uint64_t *sub_1B5D305BC(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D320C0(result, a4);
  }

  return result;
}

void sub_1B5D30614(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D30630(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v7 = a1;
    v8 = *(a1 + 6);
    do
    {
      v9 = v7 + 32 * v3 + 32;
      v10 = (2 * v3) | 1;
      v11 = 2 * v3 + 2;
      if (v11 < a3)
      {
        v12 = *(v9 + 24);
        v13 = *(v9 + 56);
        v9 += 32 * (v12 > v13);
        if (v12 > v13)
        {
          v10 = v11;
        }
      }

      v14 = *(v9 + 24);
      *v7 = *v9;
      *(v7 + 16) = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v7 + 24) = v14;
      v7 = v9;
      v3 = v10;
    }

    while (v10 <= ((a3 - 2) >> 1));
    if (a2 - 32 == v9)
    {
      *v9 = v4;
      *(v9 + 8) = v5;
      *(v9 + 16) = v6;
      *(v9 + 24) = v8;
    }

    else
    {
      v15 = *(a2 - 8);
      *v9 = *(a2 - 32);
      *(v9 + 16) = *(a2 - 16);
      *(v9 + 24) = v15;
      *(a2 - 32) = v4;
      *(a2 - 24) = v5;
      *(a2 - 16) = v6;
      *(a2 - 8) = v8;
      sub_1B5D304D4(a1, v9 + 32, (v9 + 32 - a1) >> 5);
    }
  }
}

uint64_t *sub_1B5D30714(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a1 == a2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    sub_1B5D308DC(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v6 = *a1;
    v7 = a1[1];
  }

  v9 = *a3;
  v8 = *(a3 + 8);
  v10 = v8 - *a3;
  if (v10 >> 3 >= 1)
  {
    v11 = a1[2];
    if (v11 - v7 >= v10)
    {
      while (v9 != v8)
      {
        v16 = *v9++;
        *v7++ = v16;
      }

      a1[1] = v7;
    }

    else
    {
      v12 = v7 - v6;
      v13 = (v10 >> 3) + ((v7 - v6) >> 3);
      if (v13 >> 61)
      {
        sub_1B5D04FA0();
      }

      v14 = v11 - v6;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_1B5CE1BC0(v15);
      }

      v17 = 8 * (v12 >> 3);
      v18 = (v17 + v10);
      v19 = v17;
      do
      {
        v20 = *v9++;
        *v19++ = v20;
        v10 -= 8;
      }

      while (v10);
      memcpy(v18, v7, a1[1] - v7);
      v21 = *a1;
      v22 = v18 + a1[1] - v7;
      a1[1] = v7;
      v23 = v7 - v21;
      v24 = (v17 - (v7 - v21));
      memcpy(v24, v21, v23);
      v25 = *a1;
      *a1 = v24;
      a1[1] = v22;
      a1[2] = 0;
      if (v25)
      {
        operator delete(v25);
        v7 = a1[1];
      }

      else
      {
        v7 = v22;
      }
    }
  }

  for (i = *a1; i != v7; i += 8)
  {
    ++*(i + 4);
  }

  *(a1 + 6) = *(a3 + 24) + *(a2 + 24);
  return a1;
}

void sub_1B5D308BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1B5D308DC(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1B5D320C0(a1, v10);
    }

    sub_1B5D04FA0();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v15 = *v5++;
      *result = v15;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    while (v13 != a3)
    {
      v16 = *v13++;
      *v11 = v16;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

uint64_t sub_1B5D309E4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 1);
  v135 = a2 - 2;
  v133 = a2 - 1;
  v134 = a2 - 3;
  v130 = a2 - 5;
  v131 = a2 - 3;
  v10 = v8;
  v137 = a2;
  v132 = a2 - 1;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      break;
    }

    switch(v11)
    {
      case 3:
        v87 = (*(*a3 + 16))();
        result = (*(*a3 + 16))();
        if (v87)
        {
          v89 = (v10 + 4);
          v88 = *v10;
          if (result)
          {
            *v10 = *v9;
          }

          else
          {
            v129 = *(v10 + 8);
            *(v10 + 12) = *(v10 + 4);
            v89 = (v10 + 12);
            *(v10 + 8) = v88;
            *v10 = v129;
            result = (*(*a3 + 16))();
            if (!result)
            {
              return result;
            }

            v88 = *(v10 + 8);
            *(v10 + 8) = *v9;
          }

          *v9 = v88;
        }

        else
        {
          if (!result)
          {
            return result;
          }

          v121 = *(v10 + 8);
          *(v10 + 8) = *v9;
          *v9 = v121;
          v122 = *(v10 + 12);
          *(v10 + 12) = *v133;
          *v133 = v122;
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          v123 = *v10;
          *v10 = *(v10 + 8);
          *(v10 + 8) = v123;
          v89 = (v10 + 4);
          v133 = (v10 + 12);
        }

        v85 = *v89;
        v86 = v133;
        *v89 = *v133;
        goto LABEL_179;
      case 4:

        return sub_1B5D31A30(v10, (v10 + 8), (v10 + 16), v9, a3);
      case 5:
        sub_1B5D31A30(v10, (v10 + 8), (v10 + 16), (v10 + 24), a3);
        result = (*(*a3 + 16))();
        if (result)
        {
          v82 = *(v10 + 24);
          *(v10 + 24) = *v9;
          *v9 = v82;
          v83 = *(v10 + 28);
          *(v10 + 28) = *v133;
          *v133 = v83;
          result = (*(*a3 + 16))();
          if (result)
          {
            *(v10 + 16) = vextq_s8(*(v10 + 16), *(v10 + 16), 8uLL);
            result = (*(*a3 + 16))();
            if (result)
            {
              *(v10 + 8) = vextq_s8(*(v10 + 8), *(v10 + 8), 8uLL);
              result = (*(*a3 + 16))();
              if (result)
              {
                *v10 = vextq_s8(*v10, *v10, 8uLL);
              }
            }
          }
        }

        return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v90 = (v10 + 8);
          if ((v10 + 8) != a2)
          {
            v91 = 0;
            do
            {
              v92 = v90;
              result = (*(*a3 + 16))();
              if (result)
              {
                v141 = *v92;
                v93 = v91;
                while (1)
                {
                  v94 = v10 + v93;
                  v95 = *(v10 + v93 + 4);
                  *(v94 + 8) = *(v10 + v93);
                  *(v94 + 12) = v95;
                  if (!v93)
                  {
                    break;
                  }

                  v93 -= 8;
                  result = (*(*a3 + 16))();
                  if ((result & 1) == 0)
                  {
                    v96 = (v10 + v93 + 8);
                    goto LABEL_128;
                  }
                }

                v96 = v10;
LABEL_128:
                *v96 = v141;
              }

              v90 = v92 + 1;
              v91 += 8;
            }

            while (v92 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v124 = (v10 + 8);
        if ((v10 + 8) != a2)
        {
          v125 = (v10 - 8);
          do
          {
            v126 = v124;
            result = (*(*a3 + 16))();
            if (result)
            {
              v144 = *v126;
              v127 = v125;
              do
              {
                v128 = v127[3];
                v127[4] = v127[2];
                v127[5] = v128;
                result = (*(*a3 + 16))();
                v127 -= 2;
              }

              while ((result & 1) != 0);
              *(v127 + 2) = v144;
            }

            v124 = v126 + 1;
            v125 += 2;
          }

          while (v126 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v97 = v12 >> 1;
        v98 = v12 >> 1;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v8[2 * v100];
            if (2 * v98 + 2 < v11 && (*(*a3 + 16))())
            {
              v101 += 2;
              v100 = 2 * v99 + 2;
            }

            v102 = &v8[2 * v99];
            result = (*(*a3 + 16))();
            if ((result & 1) == 0)
            {
              v142 = *v102;
              do
              {
                v103 = v101;
                *v102 = *v101;
                v102[1] = v101[1];
                if (v97 < v100)
                {
                  break;
                }

                v104 = (2 * v100) | 1;
                v101 = &v8[2 * v104];
                v105 = 2 * v100 + 2;
                if (v105 < v11 && (*(*a3 + 16))())
                {
                  v101 += 2;
                  v104 = v105;
                }

                result = (*(*a3 + 16))();
                v102 = v103;
                v100 = v104;
              }

              while (!result);
              *v103 = v142;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        v106 = v137;
        do
        {
          v138 = v106;
          v107 = 0;
          v108 = *v8;
          v109 = v8;
          do
          {
            v110 = &v109[2 * v107];
            v111 = v110 + 2;
            v112 = (2 * v107) | 1;
            v113 = 2 * v107 + 2;
            if (v113 < v11)
            {
              v114 = v110 + 4;
              result = (*(*a3 + 16))();
              if (result)
              {
                v111 = v114;
                v112 = v113;
              }
            }

            *v109 = *v111;
            v109[1] = v111[1];
            v109 = v111;
            v107 = v112;
          }

          while (v112 <= (v11 - 2) / 2);
          --v106;
          if (v111 == (v138 - 1))
          {
            *v111 = v108;
          }

          else
          {
            *v111 = *(v138 - 2);
            v111[1] = *(v138 - 1);
            *(v138 - 1) = v108;
            v115 = (v111 - v8 + 8) >> 3;
            v116 = v115 < 2;
            v117 = v115 - 2;
            if (!v116)
            {
              v118 = v117 >> 1;
              v119 = &v8[2 * (v117 >> 1)];
              result = (*(*a3 + 16))();
              if (result)
              {
                v143 = *v111;
                do
                {
                  v120 = v119;
                  *v111 = *v119;
                  v111[1] = v119[1];
                  if (!v118)
                  {
                    break;
                  }

                  v118 = (v118 - 1) >> 1;
                  v119 = &v8[2 * v118];
                  result = (*(*a3 + 16))();
                  v111 = v120;
                }

                while ((result & 1) != 0);
                *v120 = v143;
              }
            }
          }

          v116 = v11-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = (v10 + 8 * (v11 >> 1));
    v15 = *(*a3 + 16);
    if (v11 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        v19 = v8 + 1;
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_27;
        }

        v32 = v8[1];
        *v8 = v14->i64[0];
        v14->i32[1] = v32;
        v19 = &v14->i32[1];
        v14->i32[0] = v18;
        if ((*(*a3 + 16))())
        {
          v18 = v14->i32[0];
          v14->i32[0] = *v9;
LABEL_27:
          *v9 = v18;
          v26 = v133;
LABEL_28:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = v14->i32[0];
        v14->i32[0] = *v9;
        *v9 = v24;
        v26 = &v14->i32[1];
        v25 = v14->i32[1];
        v14->i32[1] = *v133;
        *v133 = v25;
        if ((*(*a3 + 16))())
        {
          v27 = *v8;
          *v8 = v14->i32[0];
          v19 = v8 + 1;
          v14->i32[0] = v27;
          goto LABEL_28;
        }
      }

      v34 = &v14[-1].i64[1];
      v35 = (*(*a3 + 16))();
      v36 = (*(*a3 + 16))();
      if (v35)
      {
        v37 = v8[2];
        v38 = v8 + 3;
        if (v36)
        {
          v39 = v135;
          v8[2] = *v135;
          goto LABEL_40;
        }

        v45 = *v38;
        *(v8 + 1) = *v34;
        v14[-1].i32[3] = v45;
        v38 = &v14[-1].i32[3];
        *v34 = v37;
        if ((*(*a3 + 16))())
        {
          v37 = *v34;
          v39 = v135;
          *v34 = *v135;
LABEL_40:
          *v39 = v37;
          v42 = v131;
LABEL_41:
          v46 = *v38;
          *v38 = *v42;
          *v42 = v46;
        }
      }

      else if (v36)
      {
        v40 = *v34;
        *v34 = *v135;
        *v135 = v40;
        v42 = &v14[-1].i32[3];
        v41 = v14[-1].i32[3];
        v14[-1].i32[3] = *v131;
        *v131 = v41;
        if ((*(*a3 + 16))())
        {
          v43 = v8[2];
          v8[2] = *v34;
          *v34 = v43;
          v38 = v8 + 3;
          goto LABEL_41;
        }
      }

      v47 = v13 + 1;
      v48 = &v8[2 * v13 + 2];
      v49 = (*(*a3 + 16))();
      v50 = (*(*a3 + 16))();
      if (v49)
      {
        v51 = v8[4];
        v52 = v8 + 5;
        if (v50)
        {
          v53 = v134;
          v8[4] = *v134;
          goto LABEL_50;
        }

        v58 = *v52;
        *(v8 + 2) = *v48;
        v48[1] = v58;
        v52 = v48 + 1;
        *v48 = v51;
        if ((*(*a3 + 16))())
        {
          v51 = *v48;
          v53 = v134;
          *v48 = *v134;
LABEL_50:
          *v53 = v51;
          v56 = v130;
LABEL_51:
          v59 = *v52;
          *v52 = *v56;
          *v56 = v59;
        }
      }

      else if (v50)
      {
        v54 = *v48;
        *v48 = *v134;
        *v134 = v54;
        v56 = v48 + 1;
        v55 = v48[1];
        v48[1] = *v130;
        *v130 = v55;
        if ((*(*a3 + 16))())
        {
          v57 = v8[4];
          v8[4] = *v48;
          *v48 = v57;
          v52 = v8 + 5;
          goto LABEL_51;
        }
      }

      v60 = (*(*a3 + 16))();
      v61 = (*(*a3 + 16))();
      if (v60)
      {
        v62 = *v34;
        a2 = v137;
        if (v61)
        {
          *v34 = *v48;
          *v48 = v62;
          v63 = &v14[-1].i32[3];
          goto LABEL_60;
        }

        v65 = v14->i64[0];
        v14->i32[1] = v14[-1].i32[3];
        v14->i32[0] = v62;
        *v34 = v65;
        if ((*(*a3 + 16))())
        {
          v66 = v14->i32[0];
          v14->i32[0] = *v48;
          *v48 = v66;
          v63 = &v14->i32[1];
LABEL_60:
          v67 = &v8[2 * v47];
          v68 = *v63;
          *v63 = v67[1];
          v67[1] = v68;
        }
      }

      else
      {
        a2 = v137;
        if (v61)
        {
          *v14 = vextq_s8(*v14, *v14, 8uLL);
          if ((*(*a3 + 16))())
          {
            v64 = *v34;
            *v34 = v14->i32[0];
            v63 = &v14[-1].i32[3];
            v14->i32[0] = v64;
            v47 = v13;
            goto LABEL_60;
          }
        }
      }

      v69 = *v8;
      *v8 = v14->i32[0];
      v23 = v8 + 1;
      v14->i32[0] = v69;
      v31 = &v14->i32[1];
      v9 = v132;
      goto LABEL_62;
    }

    v20 = v15();
    v21 = (*(*a3 + 16))();
    if (v20)
    {
      v23 = &v14->i32[1];
      v22 = v14->i32[0];
      if (v21)
      {
        v14->i32[0] = *v9;
      }

      else
      {
        v44 = v14->i32[1];
        v14->i64[0] = *v8;
        v8[1] = v44;
        v23 = v8 + 1;
        *v8 = v22;
        if (!(*(*a3 + 16))())
        {
          goto LABEL_63;
        }

        v22 = *v8;
        *v8 = *v9;
      }

      *v9 = v22;
      v31 = v133;
    }

    else
    {
      if (!v21)
      {
        goto LABEL_63;
      }

      v28 = *v8;
      *v8 = *v9;
      *v9 = v28;
      v29 = v8[1];
      v8[1] = *v133;
      *v133 = v29;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_63;
      }

      v30 = v14->i32[0];
      v14->i32[0] = *v8;
      *v8 = v30;
      v23 = &v14->i32[1];
      v31 = v8 + 1;
    }

LABEL_62:
    v70 = *v23;
    *v23 = *v31;
    *v31 = v70;
LABEL_63:
    --a4;
    if (a5 & 1) != 0 || ((*(*a3 + 16))())
    {
      v139 = *v8;
      v71 = v8;
      do
      {
        v72 = v71;
        v71 += 2;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v73 = a2;
      if (v72 == v8)
      {
        v73 = a2;
        do
        {
          if (v71 >= v73)
          {
            break;
          }

          --v73;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        do
        {
          --v73;
        }

        while (!(*(*a3 + 16))());
      }

      v10 = v71;
      if (v71 < v73)
      {
        v74 = v73;
        do
        {
          v75 = *v10;
          *v10 = *v74;
          *v74 = v75;
          v76 = *(v10 + 4);
          *(v10 + 4) = *(v74 + 1);
          *(v74 + 1) = v76;
          do
          {
            v10 += 8;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          do
          {
            --v74;
          }

          while (!(*(*a3 + 16))());
        }

        while (v10 < v74);
      }

      if ((v10 - 8) != v8)
      {
        *v8 = *(v10 - 8);
        v8[1] = *(v10 - 4);
      }

      *(v10 - 8) = v139;
      if (v71 < v73)
      {
        goto LABEL_84;
      }

      v77 = sub_1B5D31C34(v8, (v10 - 8), a3);
      result = sub_1B5D31C34(v10, a2, a3);
      if (result)
      {
        a2 = (v10 - 8);
        if (!v77)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v77)
      {
LABEL_84:
        result = sub_1B5D309E4(v8, (v10 - 8), a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v140 = *v8;
      result = (*(*a3 + 16))();
      if (result)
      {
        v10 = v8;
        do
        {
          v10 += 8;
          result = (*(*a3 + 16))();
        }

        while ((result & 1) == 0);
      }

      else
      {
        v78 = (v8 + 2);
        do
        {
          v10 = v78;
          if (v78 >= a2)
          {
            break;
          }

          result = (*(*a3 + 16))();
          v78 = v10 + 8;
        }

        while (!result);
      }

      v79 = a2;
      if (v10 < a2)
      {
        v79 = a2;
        do
        {
          --v79;
          result = (*(*a3 + 16))();
        }

        while ((result & 1) != 0);
      }

      while (v10 < v79)
      {
        v80 = *v10;
        *v10 = *v79;
        *v79 = v80;
        v81 = *(v10 + 4);
        *(v10 + 4) = *(v79 + 1);
        *(v79 + 1) = v81;
        do
        {
          v10 += 8;
        }

        while (!(*(*a3 + 16))());
        do
        {
          --v79;
          result = (*(*a3 + 16))();
        }

        while ((result & 1) != 0);
      }

      if ((v10 - 8) != v8)
      {
        *v8 = *(v10 - 8);
        v8[1] = *(v10 - 4);
      }

      a5 = 0;
      *(v10 - 8) = v140;
    }
  }

  if (v11 < 2)
  {
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_10;
  }

  result = (*(*a3 + 16))();
  if (result)
  {
    v84 = *v10;
    *v10 = *v9;
    *v9 = v84;
    v85 = *(v10 + 4);
    v86 = v133;
    *(v10 + 4) = *v133;
LABEL_179:
    *v86 = v85;
  }

  return result;
}

void sub_1B5D31948(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D319D8(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1B5D31A30(int *a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 1;
    v18 = a1[1];
    a1[1] = a2[1];
    a2[1] = v18;
    if ((*(*a5 + 16))())
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 1;
    v15 = a2[1];
    a2[1] = a3[1];
    a3[1] = v15;
    if ((*(*a5 + 16))())
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 1;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*(*a5 + 16))();
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = a3[1];
    a3[1] = a4[1];
    a4[1] = v22;
    result = (*(*a5 + 16))();
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      result = (*(*a5 + 16))();
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = a1[1];
        a1[1] = a2[1];
        a2[1] = v26;
      }
    }
  }

  return result;
}

BOOL sub_1B5D31C34(int *a1, char *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (*(*a3 + 16))();
      v12 = (*(*a3 + 16))();
      if (v11)
      {
        v14 = a1 + 1;
        v13 = *a1;
        if (v12)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v25 = *(a1 + 1);
          a1[3] = a1[1];
          v14 = a1 + 3;
          a1[2] = v13;
          *a1 = v25;
          if (!(*(*a3 + 16))())
          {
            return 1;
          }

          v13 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v13;
        v21 = (a2 - 4);
      }

      else
      {
        if (!v12)
        {
          return 1;
        }

        v19 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v19;
        v21 = a1 + 3;
        v20 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v20;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v22 = *a1;
        *a1 = a1[2];
        a1[2] = v22;
        v14 = a1 + 1;
      }

      v26 = *v14;
      *v14 = *v21;
      *v21 = v26;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        sub_1B5D31A30(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*(*a3 + 16))())
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*(*a3 + 16))())
          {
            *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            if ((*(*a3 + 16))())
            {
              *(a1 + 2) = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
              if ((*(*a3 + 16))())
              {
                *a1 = vextq_s8(*a1, *a1, 8uLL);
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_1B5D31A30(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*(*a3 + 16))())
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v15 = (*(*a3 + 16))();
  v16 = (*(*a3 + 16))();
  if (v15)
  {
    v18 = a1 + 1;
    v17 = *a1;
    if (v16)
    {
      *a1 = a1[4];
    }

    else
    {
      v27 = *(a1 + 1);
      a1[3] = a1[1];
      v18 = a1 + 3;
      a1[2] = v17;
      *a1 = v27;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_35;
      }

      v17 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v17;
    v23 = a1 + 5;
    goto LABEL_34;
  }

  if (v16)
  {
    *(a1 + 2) = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
    if ((*(*a3 + 16))())
    {
      v23 = a1 + 3;
      v24 = *a1;
      *a1 = a1[2];
      a1[2] = v24;
      v18 = a1 + 1;
LABEL_34:
      v28 = *v18;
      *v18 = *v23;
      *v23 = v28;
    }
  }

LABEL_35:
  v29 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v37 = *v29;
      v32 = v30;
      while (1)
      {
        v33 = a1 + v32;
        v34 = *(a1 + v32 + 20);
        *(v33 + 6) = *(a1 + v32 + 16);
        *(v33 + 7) = v34;
        if (v32 == -16)
        {
          break;
        }

        v32 -= 8;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v35 = (a1 + v32 + 24);
          goto LABEL_43;
        }
      }

      v35 = a1;
LABEL_43:
      *v35 = v37;
      if (++v31 == 8)
      {
        return v29 + 8 == a2;
      }
    }

    v30 += 8;
    v29 += 8;
    if (v29 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_1B5D320A0(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = v3 == v4;
  v6 = v3 < v4;
  if (v5)
  {
    return *a2 < *a3;
  }

  else
  {
    return v6;
  }
}

void sub_1B5D320C0(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1B5CE1BC0(a2);
  }

  sub_1B5D04FA0();
}

void sub_1B5D32100(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_1B5CE5968();
}

void sub_1B5D32148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }

    while (v5 != a3);
  }
}

uint64_t sub_1B5D321D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1B5D32234(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void sub_1B5D32260(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1B5D32278(uint64_t a1, unsigned int a2)
{
  v3 = sub_1B5D32600((*(a1 + 40) + 40), a2);
  if (!v3)
  {
    __assert_rtn("encode_block_invoke", "TIHuffmanCoder.cpp", 207, "it != m_dictionary.end()");
  }

  v4 = v3[4];
  v5 = v4 & 0x3F;
  if (v4 > 0x3F || v5 != 0)
  {
    v7 = 0;
    v8 = *(*(a1 + 32) + 8);
    v9 = v3[3];
    v10 = &v9[v4 >> 6];
    v11 = *(v8 + 64);
    do
    {
      v12 = *v9;
      if (v11 == 8)
      {
        *(v8 + 64) = 0;
        v14 = *(v8 + 48);
        v13 = *(v8 + 56);
        if (v14 >= v13)
        {
          v16 = *(v8 + 40);
          v17 = (v14 - v16);
          v18 = v14 - v16 + 1;
          if (v18 < 0)
          {
            sub_1B5D04FA0();
          }

          v19 = v13 - v16;
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            operator new();
          }

          v21 = v14 - v16;
          *v17 = 0;
          v15 = v17 + 1;
          memcpy(0, v16, v21);
          *(v8 + 40) = 0;
          *(v8 + 48) = v17 + 1;
          *(v8 + 56) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v14 = 0;
          v15 = v14 + 1;
        }

        *(v8 + 48) = v15;
        v11 = *(v8 + 64);
      }

      if ((v12 & (1 << v7)) != 0)
      {
        *(*(v8 + 48) - 1) |= 1 << v11;
        v11 = *(v8 + 64);
      }

      *(v8 + 64) = ++v11;
      v9 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (v9 != v10 || v7 != v5);
  }
}

uint64_t sub_1B5D32430(uint64_t a1, unsigned __int16 *a2)
{
  if (!*(a1 + 64))
  {
    __assert_rtn("encoded_size", "TIHuffmanCoder.cpp", 223, "is_compiled()");
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = sub_1B5D325B8;
  v19 = &unk_1E7C20D90;
  v20 = a1;
  if (*(a2 + 1))
  {
    v2 = *(a2 + 1);
  }

  else
  {
    v2 = a2 + 8;
  }

  v13 = v2;
  v3 = *a2;
  v14 = 0;
  v15 = v3;
  v16 = 0;
  sub_1B5CDCF70(&v13);
  v9 = v2;
  v10 = v3;
  v11 = v3;
  v12 = 0;
  sub_1B5CDCF70(&v9);
  v4 = v13;
  if (v13 != v9)
  {
LABEL_9:
    __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
  }

  v5 = 0;
  v6 = v10;
  while (v14 != v6)
  {
    v5 += v18(v17, v16);
    sub_1B5CDCF70(&v13);
    if (v13 != v4)
    {
      goto LABEL_9;
    }
  }

  v7 = v5 + v18(v17, 0);
  if (!v7)
  {
    __assert_rtn("encoded_size", "TIHuffmanCoder.cpp", 234, "bit_count > 0");
  }

  return ((v7 - 1) >> 3) + 1;
}

uint64_t sub_1B5D325B8(uint64_t a1, unsigned int a2)
{
  v2 = sub_1B5D32600((*(a1 + 32) + 40), a2);
  if (!v2)
  {
    __assert_rtn("encoded_size_block_invoke", "TIHuffmanCoder.cpp", 227, "it != m_dictionary.end()");
  }

  return v2[4];
}

uint64_t *sub_1B5D32600(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1B5D326B4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D32740(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1B5CE1E70(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL sub_1B5D32794(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 32);
  if (v3 == *(a1 + 40))
  {
    __assert_rtn("decode", "TIHuffmanCoder.cpp", 399, "valid()");
  }

  v4 = *v3;
  if (!*v3)
  {
LABEL_19:
    __assert_rtn("decode", "TIHuffmanCoder.cpp", 407, "table.bit_length >= 1");
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 32);
  while (1)
  {
    if (v8 >= v4)
    {
LABEL_11:
      v15 = v8;
      v14 = v9;
    }

    else
    {
      v13 = *a2;
      v12 = a2[1];
      v14 = v9;
      v15 = v8;
      v16 = a2[2];
      do
      {
        v17 = v16 + 1;
        if (v12 && v17 > v12)
        {
          break;
        }

        a2[2] = v17;
        if (!v13)
        {
          goto LABEL_11;
        }

        v14 |= *(v13 + v16) << v15;
        v15 += 8;
        ++v16;
      }

      while (v15 < v4);
    }

    v18 = *(v11 + 1) + 12 * (v14 & ~(-1 << v4));
    v19 = *(v18 + 4);
    v8 = v15 - v19;
    if (v15 < v19)
    {
      return v15 >= v19;
    }

    if (*v18 == 1)
    {
      v10 = *(v18 + 8);
    }

    else if (!*v18)
    {
      v20 = *(v18 + 8);
      if (!v20)
      {
        if (v8 >= 8)
        {
          a2[2] -= v8 >> 3;
        }

        return v15 >= v19;
      }

      sub_1B5D5CC40(a3, v20);
      v10 = 0;
      v3 = *(a1 + 32);
    }

    v9 = v14 >> v19;
    v11 = &v3[8 * v10];
    v4 = *v11;
    if (!*v11)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_1B5D32914()
{
  if ((atomic_load_explicit(&qword_1EB90C860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90C860))
  {
    sub_1B5D32968();
    __cxa_guard_release(&qword_1EB90C860);
  }

  return qword_1EB90C818;
}

void sub_1B5D32968()
{
  v1 = 13;
  strcpy(category, "DefaultLogger");
  qword_1EB90C818 = os_log_create("com.apple.Lexicon", category);
  if (v1 < 0)
  {
    operator delete(*category);
  }
}

uint64_t sub_1B5D329D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    if (*(v3 + 8) >= 0xFu)
    {
      v4 = v3[3];
      if (v4)
      {
        MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
      }
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

const void *sub_1B5D32A54(void *a1, uint64_t a2)
{
  result = sub_1B5D03500(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1B5D114C8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

void *sub_1B5D32AFC(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D55760;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_1B5CE4AC4(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_1B5D32B78(void *a1)
{
  if (a1)
  {
    sub_1B5D32B78(*a1);
    sub_1B5D32B78(a1[1]);
    if (*(a1 + 20) >= 0xFu)
    {
      v2 = a1[6];
      if (v2)
      {
        MEMORY[0x1B8C880C0](v2, 0x1000C8077774924);
      }
    }

    operator delete(a1);
  }
}

void sub_1B5D32BEC(std::exception *this)
{
  this->__vftable = &unk_1F2D55760;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_1B5D32C4C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1B5D32C68(std::exception *this)
{
  this->__vftable = &unk_1F2D55760;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B8C880F0);
}

BOOL sub_1B5D32CDC(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = 0x100000;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v6 = *(a3 + 1);
  v7 = a3 + 8;
  if (!v6)
  {
    v6 = a3 + 8;
  }

  v37 = v6;
  v8 = *a3;
  v38 = 0;
  v39 = v8;
  v40 = 0;
  sub_1B5CDCF70(&v37);
  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v13 = a2[1];
    v12 = a2[2];
    v14 = v12 + 1;
    if (v13)
    {
      v15 = v14 > v13;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      v16 = *a2;
      a2[2] = v14;
      if (v16)
      {
        v17 = *(v16 + v12);
        __p[0] = 0;
        __p[1] = 0;
        v36 = 0;
        v18 = sub_1B5DA4F1C(a2, __p);
        if (v18)
        {
          if (v36 >= 0)
          {
            v19 = __p;
          }

          else
          {
            v19 = __p[0];
          }

          sub_1B5D5C9B0(&v41, v19);
          if (v9 < (v17 & 0x1Fu))
          {
            while (1)
            {
              v20 = *a3;
              v21 = *(a3 + 1);
              if (!v21)
              {
                v21 = v7;
              }

              v31 = v21;
              v32 = v20;
              v33 = v20;
              v34 = 0;
              sub_1B5CDCF70(&v31);
              if (v37 != v31)
              {
                __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
              }

              if (v38 == v32)
              {
                break;
              }

              sub_1B5D5CC40(&v44, v40);
              sub_1B5CDCF70(&v37);
              if ((v17 & 0x1F) == ++v9)
              {
                v9 = v17 & 0x1F;
                break;
              }
            }
          }

          sub_1B5D5D820(&v44, &v41);
          if ((v17 & 0x20) != 0)
          {
            sub_1B5CDCF70(&v37);
            sub_1B5CDCF70(&v37);
            v9 += 2;
          }

          else if ((v17 & 0x40) != 0)
          {
            *(a1 + 36) |= 0x400000u;
          }

          else
          {
            v22 = a1;
            v23 = 0;
            v24 = WORD2(v41);
            if (WORD2(v41))
            {
              goto LABEL_27;
            }

LABEL_26:
            sub_1B5CDF8F4(&v41);
            v24 = WORD2(v41);
LABEL_27:
            while (v23 < v24)
            {
              sub_1B5CDCF70(&v37);
              ++v9;
              ++v23;
              if (!v24)
              {
                goto LABEL_26;
              }
            }

            a1 = v22;
          }

          v10 = v17 < 0;
          if (v42)
          {
            v25 = BYTE6(v41) == 1;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            free(v42);
          }
        }

        else
        {
          v10 = 1;
        }

        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p[0]);
        }

        if (v18)
        {
          continue;
        }
      }
    }

    goto LABEL_51;
  }

  while (1)
  {
    v26 = *a3;
    v27 = *(a3 + 1);
    if (!v27)
    {
      v27 = v7;
    }

    v41 = v27;
    LODWORD(v42) = v26;
    HIDWORD(v42) = v26;
    v43 = 0;
    sub_1B5CDCF70(&v41);
    if (v37 != v41)
    {
      __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
    }

    if (v38 == v42)
    {
      break;
    }

    sub_1B5D5CC40(&v44, v40);
    sub_1B5CDCF70(&v37);
    ++v9;
  }

  v28 = a3[2];
  if (!a3[2])
  {
    sub_1B5CDF8F4(a3);
    v28 = a3[2];
  }

  if (v9 != v28)
  {
    __assert_rtn("parse_substitution_list", "TIWord.cpp", 79, "count == base_surface_form.length()");
  }

  sub_1B5CDF770(a1, &v44);
LABEL_51:
  if (v47)
  {
    v29 = v46 == 1;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    free(v47);
  }

  return !v11;
}

void sub_1B5D3304C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, void *a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, void *a30)
{
  if (a24 && a23 == 1)
  {
    free(a24);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    if (a29 == 1)
    {
      free(a30);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D330BC(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v54 = *MEMORY[0x1E69E9840];
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 37) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  HIDWORD(v13) = 0;
  *(a1 + 64) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  v14 = a2[1];
  v15 = a2[2];
  v16 = v15 + 1;
  if (v14 && v16 > v14)
  {
    return a1;
  }

  v17 = *a2;
  a2[2] = v16;
  if (!v17)
  {
    return a1;
  }

  v18 = v15 + 2;
  if (v14)
  {
    if (v18 > v14)
    {
      return a1;
    }
  }

  a2[2] = v18;
  v20 = *(v17 + v16);
  *(a1 + 44) = v20;
  LODWORD(v13) = 1.0;
  if ((v20 & 4) != 0)
  {
    v21 = v15 + 3;
    if (v14 && v21 > v14)
    {
      return a1;
    }

    a2[2] = v21;
    LOBYTE(v13) = *(v17 + v18);
    v22 = v13 * 0.00392156863;
    *&v13 = v22 * v22;
    v18 = v21;
  }

  *(a1 + 32) = v13;
  if ((v20 & 0x20) != 0)
  {
    v24 = v18 + 1;
    if (v14 && v24 > v14)
    {
      return a1;
    }

    a2[2] = v24;
    v23 = *(v17 + v18);
  }

  else
  {
    v23 = 0;
  }

  v25 = (*(*a6 + 16))(a6, v23);
  *(a1 + 36) = v25;
  if (v25)
  {
    *(a1 + 40) = 1;
  }

  v26 = *(a1 + 44);
  if (v26)
  {
    v28 = a2[1];
    v27 = a2[2];
    v29 = v27 + 4;
    if (v28 && v29 > v28)
    {
      return a1;
    }

    v30 = *a2;
    a2[2] = v29;
    if (!v30)
    {
      return a1;
    }

    v31 = bswap32(*(v30 + v27));
    *(a1 + 36) = v25 | 0x200000;
    *(a1 + 40) = v31;
  }

  if ((v26 & 0x40) != 0)
  {
    v33 = a2[1];
    v32 = a2[2];
    v34 = v32 + 4;
    if (v33 && v34 > v33)
    {
      return a1;
    }

    v35 = *a2;
    a2[2] = v34;
    if (!v35)
    {
      return a1;
    }

    *(a1 + 56) = bswap32(*(v35 + v32));
  }

  if ((v26 & 0x10) == 0)
  {
    if (*a3)
    {
      sub_1B5D80088(&v49, a4, a3);
      if (!v49)
      {
        __assert_rtn("Word", "TIWord.cpp", 157, "!common_letter_base.is_empty()");
      }

      if ((*(a1 + 44) & 8) == 0)
      {
        goto LABEL_32;
      }

      if (sub_1B5D32CDC(a1, a2, &v49))
      {
        goto LABEL_47;
      }

LABEL_56:
      if (v52 && v51 == 1)
      {
        free(v52);
      }

      return a1;
    }

    v45 = "!sort_key_for_derivation.empty()";
    v46 = 155;
    goto LABEL_75;
  }

  if ((a7 & 0x40000) != 0)
  {
    if (a5)
    {
      v49 = 0x100000;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      if (sub_1B5D32794(a5, a2, &v49))
      {
LABEL_32:
        sub_1B5CDF770(a1, &v49);
LABEL_47:
        if (v52 && v51 == 1)
        {
          free(v52);
        }

        goto LABEL_50;
      }

      goto LABEL_56;
    }

    v45 = "huffman_decoder";
    v46 = 143;
LABEL_75:
    __assert_rtn("Word", "TIWord.cpp", v46, v45);
  }

  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  if (sub_1B5DA4F1C(a2, __p))
  {
    if (v48 >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    sub_1B5D5C9B0(&v49, v36);
    sub_1B5CDF770(a1, &v49);
    if (v52 && v51 == 1)
    {
      free(v52);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_50:
    if ((a7 & 0x10000) != 0)
    {
      v49 = 0;
      if ((sub_1B5DA5074(a2, &v49) & 1) == 0)
      {
        goto LABEL_69;
      }

      *(a1 + 60) = v49;
    }

    if ((a7 & 0x200000) == 0)
    {
      if ((a7 & 0x80000) == 0)
      {
        return a1;
      }

      v37 = a2[1];
      v38 = a2[2];
      goto LABEL_63;
    }

    v37 = a2[1];
    v39 = a2[2];
    v38 = v39 + 4;
    if (!v37 || v38 <= v37)
    {
      v40 = *a2;
      a2[2] = v38;
      if (v40)
      {
        *(a1 + 64) = bswap32(*(v40 + v39));
        if ((a7 & 0x80000) == 0)
        {
          return a1;
        }

LABEL_63:
        *(a1 + 72) = 1;
        v41 = v38 + 4;
        if (!v37 || v41 <= v37)
        {
          v42 = *a2;
          a2[2] = v41;
          if (v42)
          {
            v43 = bswap32(*(v42 + v38));
            *(a1 + 72) = 1;
            *(a1 + 76) = v43;
            v44 = v38 + 6;
            if (!v37 || v44 <= v37)
            {
              a2[2] = v44;
              *(a1 + 80) = bswap32(*(v42 + v41)) >> 16;
            }
          }
        }

        return a1;
      }
    }

LABEL_69:
    sub_1B5CDF8A0(a1);
    return a1;
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1B5D33520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, void *a18)
{
  if (a18 && a17 == 1)
  {
    free(a18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v18 + 8);
  if (v20)
  {
    if (*(v18 + 6) == 1)
    {
      free(v20);
    }
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1B5D335A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_1B5D335E0(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = *(a1 + 32) * a2[8];
  sub_1B5D5D250(&v9, a2, a3, *a2);
  sub_1B5D5D820(a1, &v9);
  if (v10)
  {
    v7 = BYTE6(v9) == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v10);
  }

  *(a1 + 56) &= ~0x20000000u;
  *(a1 + 60) = a4;
  v8 = *(a2 + 9);
  if ((v8 & 2) != 0)
  {
    *(a1 + 36) |= 2u;
    v8 = *(a2 + 9);
    if ((v8 & 0x80) == 0)
    {
LABEL_9:
      if ((v8 & 4) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  *(a1 + 36) |= 0x80u;
  if ((a2[9] & 4) == 0)
  {
    return;
  }

LABEL_10:
  *(a1 + 36) |= 4u;
}

void sub_1B5D336D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1B5D33704(uint64_t a1, unsigned __int16 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a2 + 10))
  {
    *a1 = 0x100000;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (*(a2 + 1))
    {
      v4 = *(a2 + 1);
    }

    else
    {
      v4 = a2 + 8;
    }

    v15 = v4;
    v5 = *a2;
    v16 = 0;
    v17 = v5;
    c = 0;
    sub_1B5CDCF70(&v15);
    v11 = v4;
    v12 = v5;
    v13 = v5;
    v14 = 0;
    result = sub_1B5CDCF70(&v11);
    v7 = 0;
    v8 = v11;
    v9 = v12;
    while (1)
    {
      if (v15 != v8)
      {
        __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
      }

      if (v16 == v9)
      {
        break;
      }

      v10 = c;
      if (v7 <= 0x1F && ((*(a2 + 10) >> v7) & 1) != 0 && !u_istitle(c))
      {
        sub_1B5D8C080(v19, v10, 0);
        sub_1B5D5D820(a1, v19);
        if (v20)
        {
          if (v19[6] == 1)
          {
            free(v20);
          }
        }
      }

      else
      {
        sub_1B5D5CC40(a1, v10);
      }

      ++v7;
      result = sub_1B5CDCF70(&v15);
    }
  }

  else
  {

    return sub_1B5D5CABC(a1, a2);
  }

  return result;
}

void sub_1B5D338D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, void *a19)
{
  if (a19 && a18 == 1)
  {
    free(a19);
  }

  v21 = *(v19 + 8);
  if (v21)
  {
    if (*(v19 + 6) == 1)
    {
      free(v21);
    }
  }

  _Unwind_Resume(exception_object);
}

void LXLatticeCreateMutable(uint64_t a1)
{
  if (qword_1EB90CA70 != -1)
  {
    dispatch_once(&qword_1EB90CA70, &unk_1F2D580A8);
  }

  *(_CFRuntimeCreateInstance() + 16) = 0;
  operator new();
}

void sub_1B5D33A10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D33A50()
{
  qword_1EB90CA78 = 0;
  unk_1EB90CA80 = "LXLattice";
  qword_1EB90CA88 = 0;
  unk_1EB90CA90 = 0;
  qword_1EB90CA98 = sub_1B5D33AA4;
  unk_1EB90CAA0 = 0u;
  unk_1EB90CAB0 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EB90CAD8 = result;
  return result;
}

uint64_t sub_1B5D33AA4(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t LXLatticeAddNode(uint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, double a5)
{
  if ((*(**(a1 + 16) + 24))(*(a1 + 16)) <= a2)
  {
    sub_1B5D7CCF8(*(a1 + 16), a2 + 1);
  }

  Length = CFStringGetLength(a3);
  CharactersPtr = CFStringGetCharactersPtr(a3);
  if (!CharactersPtr)
  {
    operator new[]();
  }

  v12 = CharactersPtr;
  if ((*(**(a1 + 16) + 16))(*(a1 + 16), a2))
  {
    v13 = 1;
  }

  else
  {
    v13 = Length == a4;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = (*(*(a1 + 16) + 8) + 24 * a2);
  v16 = v14[1];
  v15 = v14[2];
  if (v16 >= v15)
  {
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v14) >> 3);
    if (v20 + 1 > 0x666666666666666)
    {
      sub_1B5D04FA0();
    }

    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v14) >> 3);
    v22 = 2 * v21;
    if (2 * v21 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x333333333333333)
    {
      v23 = 0x666666666666666;
    }

    else
    {
      v23 = v22;
    }

    v36 = v14;
    if (v23)
    {
      if (v23 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1B5CE5968();
    }

    v33 = 0;
    v34 = 40 * v20;
    sub_1B5D7CC44((40 * v20), v12, Length, a4, a5);
    v35 = 40 * v20 + 40;
    v25 = *v14;
    v24 = v14[1];
    v26 = 40 * v20 + *v14 - v24;
    if (*v14 != v24)
    {
      v27 = *v14;
      v28 = v34 + *v14 - v24;
      do
      {
        v29 = *v27;
        *(v28 + 16) = *(v27 + 16);
        *v28 = v29;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0;
        *v27 = 0;
        *(v28 + 24) = *(v27 + 24);
        v27 += 40;
        v28 += 40;
      }

      while (v27 != v24);
      do
      {
        if (*(v25 + 23) < 0)
        {
          operator delete(*v25);
        }

        v25 += 40;
      }

      while (v25 != v24);
    }

    v30 = *v14;
    *v14 = v26;
    v34 = v30;
    v31 = v14[2];
    v32 = v35;
    *&v35 = v30;
    *(v14 + 1) = v32;
    *(&v35 + 1) = v31;
    v33 = v30;
    sub_1B5D33E38(&v33);
    v17 = v32;
  }

  else
  {
    sub_1B5D7CC44(v14[1], v12, Length, a4, a5);
    v17 = v16 + 40;
    v14[1] = v16 + 40;
  }

  v14[1] = v17;
  return 1;
}

void sub_1B5D33DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1B5D33E38(va);
  if (v7)
  {
    MEMORY[0x1B8C880C0](v7, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D33E38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D33E9C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 16, "0 < end");
  }

  v4 = a4 - a3;
  if (a4 <= a3)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 17, "begin < end");
  }

  v5 = (a2 - result) >> 2;
  if (v5 <= a3)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 18, "begin < m_ranges.size()");
  }

  if (v5 < a4)
  {
    __assert_rtn("markRange", "CoverageVector.cpp", 19, "end <= m_ranges.size()");
  }

  if (v5 > a4 && *(result + 4 * a4))
  {
    LODWORD(a4) = *(result + 4 * a4);
  }

  v6 = 0;
  v7 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = vdupq_n_s64(v4 - 1);
  v9 = (result + 4 * a3 + 8);
  do
  {
    v10 = vdupq_n_s64(v6);
    v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1B5DC2630)));
    if (vuzp1_s16(v11, *v8.i8).u8[0])
    {
      *(v9 - 2) = a4;
    }

    if (vuzp1_s16(v11, *&v8).i8[2])
    {
      *(v9 - 1) = a4;
    }

    if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1B5DC2640)))).i32[1])
    {
      *v9 = a4;
      v9[1] = a4;
    }

    v6 += 4;
    v9 += 4;
  }

  while (v7 != v6);
  return result;
}

BOOL sub_1B5D33FFC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 33, "0 < end");
  }

  if (a3 >= a4)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 34, "begin < end");
  }

  v4 = (a2 - a1) >> 2;
  if (v4 <= a3)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 35, "begin < m_ranges.size()");
  }

  if (v4 < a4)
  {
    __assert_rtn("isCovered", "CoverageVector.cpp", 36, "end <= m_ranges.size()");
  }

  while (1)
  {
    a3 = *(a1 + 4 * a3);
    if (!a3)
    {
      break;
    }

    if (v4 <= a3)
    {
      return a3 >= a4;
    }

    if (a3 >= a4)
    {
      return 1;
    }
  }

  a3 = 0;
  return a3 >= a4;
}

void sub_1B5D340E0(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1B5CE5968();
}

uint64_t sub_1B5D34140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 8))(&v17);
  (*(*a1 + 8))(&v15, a1, a3);
  v5 = v17;
  if (v17 <= 0xEu)
  {
    v6 = &v17 + 2;
  }

  else
  {
    v6 = v18;
  }

  v7 = v15;
  v8 = v16;
  if (v15 >= 0xFu)
  {
    v9 = v16;
  }

  else
  {
    v9 = &v15 + 2;
  }

  if (v15 >= v17)
  {
    v10 = v17;
  }

  else
  {
    v10 = v15;
  }

  v11 = memcmp(v6, v9, v10);
  v12 = v5 < v7;
  if (v11)
  {
    v12 = v11 < 0;
  }

  if (v12)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = !sub_1B5CE401C(&v17, &v15);
  }

  if (v7 >= 0xF && v8)
  {
    MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
    v5 = v17;
  }

  if (v5 >= 0xF && v18)
  {
    MEMORY[0x1B8C880C0](v18, 0x1000C8077774924);
  }

  return v13;
}

void sub_1B5D34290(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12)
{
  if (a11 >= 0xFu)
  {
    if (a12)
    {
      MEMORY[0x1B8C880C0](a12, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D342C4(uint64_t a1, char *a2, unsigned __int16 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1B5D5CA18(v5, a2, a3);
  (*(*a1 + 8))(a1, v5);
  if (v6)
  {
    v4 = v5[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v6);
  }
}

void sub_1B5D34370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13)
{
  if (a13)
  {
    v14 = a12 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D3439C(uint64_t result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add <= 0)
  {
    __assert_rtn("derefBase", "WTFRefCounted.h", 70, "new_count >= 0");
  }

  if (add == 1)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3 && *(v2 + 14) == 1)
    {
      free(v3);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D3443C(uint64_t result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add <= 0)
  {
    __assert_rtn("derefBase", "WTFRefCounted.h", 70, "new_count >= 0");
  }

  if (add == 1)
  {
    v2 = result;
    v3 = result + 24;
    v4 = *(result + 16);
    if (v4)
    {
      v5 = 8 * v4;
      v6 = (result + 24);
      do
      {
        if (*v6)
        {
          sub_1B5D3439C(*v6);
        }

        ++v6;
        v5 -= 8;
      }

      while (v5);
      v7 = *(v2 + 16);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2 + 20);
    if (v8)
    {
      v9 = 8 * v8;
      v10 = (v3 + 8 * v7);
      do
      {
        if (*v10)
        {
          sub_1B5D3443C(*v10);
        }

        ++v10;
        v9 -= 8;
      }

      while (v9);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D34538(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v4 = a1 + 24;
    v5 = *(a1 + 16);
    v6 = *(a1 + 20);
    if (v6)
    {
      v7 = (v4 + 8 * v5);
      v8 = MEMORY[0x1E69E9820];
      v9 = 8 * v6;
      while (1)
      {
        v10 = *v7;
        v13[0] = v8;
        v13[1] = 0x40000000;
        v13[2] = sub_1B5D3469C;
        v13[3] = &unk_1E7C20DF8;
        v13[4] = a2;
        v13[5] = &v14;
        sub_1B5D34538(v10, v13);
        if (v15[3])
        {
          break;
        }

        ++v7;
        v9 -= 8;
        if (!v9)
        {
          v5 = *(a1 + 16);
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = 0;
      if (v5)
      {
        v11 = 8 * v5 - 8;
        do
        {
          (*(a2 + 16))(a2, v4, &v18);
          if (v18)
          {
            break;
          }

          v4 += 8;
          v12 = v11;
          v11 -= 8;
        }

        while (v12);
      }
    }

    _Block_object_dispose(&v14, 8);
  }
}

void sub_1B5D34680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B5D3469C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (a3)
  {
    if (*a3 == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_1B5D346F0(atomic_uint **a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v138 = *MEMORY[0x1E69E9840];
  v10 = (a2 + 8);
  v11 = *(a2 + 15);
  v12 = v11 - a6;
  v13 = 0;
  if (v11 >= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = *(a2 + 15);
  }

  if (v14)
  {
    while (v10[v13] == *(a5 + v13))
    {
      if (v14 == ++v13)
      {
        goto LABEL_12;
      }
    }
  }

  if (*(a2 + 15))
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  v14 = v13;
  if (v15)
  {
    __assert_rtn("merge", "TIDynamicTrie.cpp", 123, "is_root() || lcp_size > 0");
  }

LABEL_12:
  v127 = 0;
  if (a6 > v14 && v11 > v14)
  {
    v17 = *(a2 + 16);
    v126 = 0;
    v125 = 0uLL;
    sub_1B5D353B4(&v125, a2 + 24, a2 + 24 + 8 * v17, v17);
    v18 = *(a2 + 20);
    v19 = a2 + 24 + 8 * *(a2 + 16);
    v124 = 0;
    v123 = 0uLL;
    sub_1B5D354BC(&v123, v19, v19 + 8 * v18, v18);
    sub_1B5D355C4(v103, &v10[v14], v11 - v14, &v125, &v123);
    v134 = &v123;
    sub_1B5D3581C(&v134);
    v134 = &v125;
    sub_1B5D3589C(&v134);
    sub_1B5D3591C(&v128, *(a4 + 24), (a5 + v14), a6 - v14);
    v20 = v10[v14];
    v21 = *(a5 + v14);
    v22 = v20 > v21;
    if (v20 == v21)
    {
      __assert_rtn("merge", "TIDynamicTrie.cpp", 133, "child1_key[0] != child2_key[0]");
    }

    v23 = *&v103[0];
    if (v22)
    {
      v24 = *&v103[0];
    }

    else
    {
      v24 = v128;
    }

    if (v22)
    {
      v23 = v128;
    }

    v121 = 0;
    v119 = 0;
    v120 = 0uLL;
    *&v103[0] = 0;
    v128 = 0;
    v134 = v23;
    v135 = v24;
    v118 = 0uLL;
    sub_1B5D354BC(&v118, &v134, v136, 2uLL);
    sub_1B5D355C4(&v122, v10, v14, &v120, &v118);
    v25 = v122;
    v122 = 0;
    v127 = v25;
    v129 = &v118;
    sub_1B5D3581C(&v129);
    for (i = 1; i != -1; --i)
    {
      v27 = (&v134)[i];
      if (v27)
      {
        sub_1B5D3443C(v27);
      }
    }

    v134 = &v120;
    sub_1B5D3589C(&v134);
    if (v128)
    {
      sub_1B5D3443C(v128);
    }

    v28 = *&v103[0];
    if (!*&v103[0])
    {
      goto LABEL_122;
    }

    goto LABEL_27;
  }

  if (a6 != v14)
  {
    if (v11 == v14)
    {
      v33 = 156;
    }

    else
    {
      v33 = 155;
    }

    if (v11 == v14)
    {
      v34 = "lcp_size < new_key.size()";
    }

    else
    {
      v34 = "lcp_size == m_key_size";
    }

    if (v11 != v14 || a6 <= v14)
    {
LABEL_127:
      __assert_rtn("merge", "TIDynamicTrie.cpp", v33, v34);
    }

    v36 = *(a2 + 16);
    v35 = *(a2 + 20);
    v97 = a2 + 24;
    v37 = a2 + 24 + 8 * v36;
    if (v35)
    {
      v38 = a2 + 24 + 8 * v36;
      v39 = *(a2 + 20);
      do
      {
        v40 = v39 >> 1;
        v41 = (v38 + 8 * (v39 >> 1));
        v43 = *v41;
        v42 = v41 + 1;
        v39 += ~(v39 >> 1);
        if (*(v43 + 8) < *(a5 + v11))
        {
          v38 = v42;
        }

        else
        {
          v39 = v40;
        }
      }

      while (v39);
      v44 = a3;
    }

    else
    {
      v44 = a3;
      v35 = 0;
      v38 = a2 + 24 + 8 * v36;
    }

    memset(v103, 0, 24);
    sub_1B5D354BC(v103, a2 + 24 + 8 * v36, v37 + 8 * v35, v35);
    v51 = a6 - v11;
    v52 = v38 - v37;
    v53 = *&v103[0];
    if (v52 < *(&v103[0] + 1) - *&v103[0] && (v54 = *(*&v103[0] + v52), *(v54 + 8) == *(a5 + v11)))
    {
      sub_1B5D346F0(&v134, v54, v44, a4, a5 + v11, v51);
      v55 = v134;
      if (*(v134 + 4) || *(v134 + 5))
      {
        v134 = 0;
        v56 = *(*&v103[0] + v52);
        *(*&v103[0] + v52) = v55;
        if (v56)
        {
          sub_1B5D3443C(v56);
        }
      }

      else
      {
        sub_1B5D35CB0(v103, (v52 + *&v103[0]));
      }

      v57 = v134;
      if (!v134)
      {
        goto LABEL_121;
      }
    }

    else
    {
      sub_1B5D3591C(&v128, *(a4 + 24), (a5 + v11), v51);
      v58 = (v52 + v53);
      v59 = *(&v103[0] + 1);
      if (*(&v103[0] + 1) >= *&v103[1])
      {
        v63 = ((*(&v103[0] + 1) - *&v103[0]) >> 3) + 1;
        if (v63 >> 61)
        {
          sub_1B5D04FA0();
        }

        v64 = *&v103[1] - *&v103[0];
        if ((*&v103[1] - *&v103[0]) >> 2 > v63)
        {
          v63 = v64 >> 2;
        }

        if (v64 >= 0x7FFFFFFFFFFFFFF8)
        {
          v65 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v65 = v63;
        }

        v132 = v103;
        if (v65)
        {
          sub_1B5D051D8(v65);
        }

        v73 = v58 - *&v103[0];
        v74 = (v58 - *&v103[0]) >> 3;
        v75 = 8 * v74;
        v129 = 0;
        v130 = 8 * v74;
        v131 = (8 * v74);
        if (!v74)
        {
          if (v73 < 1)
          {
            v89 = v73 >> 2;
            if (v58 == *&v103[0])
            {
              v90 = 1;
            }

            else
            {
              v90 = v89;
            }

            v137 = v132;
            sub_1B5D051D8(v90);
          }

          v75 -= ((v73 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
          v130 = v75;
        }

        v91 = v128;
        v128 = 0;
        *v75 = v91;
        *&v131 = v75 + 8;
        sub_1B5D35DA8(v58, *(&v103[0] + 1), (v75 + 8));
        *&v131 = v131 + *(&v103[0] + 1) - v58;
        *(&v103[0] + 1) = v58;
        v92 = (v130 + *&v103[0] - v58);
        sub_1B5D35DA8(*&v103[0], v58, v92);
        v93 = *&v103[0];
        v94 = *&v103[1];
        *&v103[0] = v92;
        *(v103 + 8) = v131;
        *&v131 = v93;
        *(&v131 + 1) = v94;
        v129 = v93;
        v130 = v93;
        sub_1B5D35D38(&v129);
      }

      else if (v58 == *(&v103[0] + 1))
      {
        v72 = v128;
        v128 = 0;
        **(&v103[0] + 1) = v72;
        *(&v103[0] + 1) = v59 + 1;
      }

      else
      {
        v60 = (*(&v103[0] + 1) - 8);
        if (*(&v103[0] + 1) < 8uLL)
        {
          v62 = *(&v103[0] + 1);
        }

        else
        {
          v61 = *v60;
          *v60 = 0;
          *v59 = v61;
          v62 = v59 + 1;
        }

        *(&v103[0] + 1) = v62;
        if (v59 != v58 + 1)
        {
          v76 = v38 + v53 - (v59 + a2) - 8 * v36 - 16;
          v77 = (v59 - 2);
          do
          {
            v78 = *v77;
            *v77 = 0;
            v79 = *v60;
            *v60 = v78;
            if (v79)
            {
              sub_1B5D3443C(v79);
            }

            --v60;
            --v77;
            v76 += 8;
          }

          while (v76);
        }

        v80 = v128;
        v128 = 0;
        v81 = *v58;
        *v58 = v80;
        if (v81)
        {
          sub_1B5D3443C(v81);
        }
      }

      v57 = v128;
      if (!v128)
      {
        goto LABEL_121;
      }
    }

    sub_1B5D3443C(v57);
LABEL_121:
    v95 = *(a2 + 15);
    v96 = *(a2 + 16);
    v102 = 0;
    v101 = 0uLL;
    sub_1B5D353B4(&v101, v97, v97 + 8 * v96, v96);
    v99 = v103[0];
    v100 = *&v103[1];
    memset(v103, 0, 24);
    sub_1B5D355C4(&v129, v10, v95, &v101, &v99);
    v25 = v129;
    v129 = 0;
    v134 = &v99;
    sub_1B5D3581C(&v134);
    v134 = &v101;
    sub_1B5D3589C(&v134);
    v134 = v103;
    sub_1B5D3581C(&v134);
    goto LABEL_122;
  }

  if (a6 == v11)
  {
    v30 = *(a2 + 16);
    v115 = 0uLL;
    v114 = 0;
    sub_1B5D353B4(&v114, a2 + 24, a2 + 24 + 8 * v30, v30);
    v31 = v114;
    v117 = v115;
    v114 = 0;
    v115 = 0uLL;
    v116 = v31;
    v32 = v117;
    v134 = MEMORY[0x1E69E9820];
    v135 = 0x40000000;
    v136[0] = sub_1B5D35EEC;
    v136[1] = &unk_1E7C20E18;
    v137 = a3;
    if (v31 != v117)
    {
      while (((v136[0])(&v134, v31) & 1) == 0)
      {
        if (++v31 == v32)
        {
          goto LABEL_78;
        }
      }
    }

    if (v31 == v32)
    {
LABEL_78:
      sub_1B5D35A88(&v129, *(a4 + 24), 0);
      v68 = v129;
      if (!v129)
      {
        goto LABEL_113;
      }

      v69 = v117;
      if (v117 >= *(&v117 + 1))
      {
        v70 = sub_1B5D35AE4(&v116, &v129);
      }

      else
      {
        v129 = 0;
        *v117 = v68;
        v70 = v69 + 8;
      }

      *&v117 = v70;
      v82 = v129;
      if (!v129)
      {
        goto LABEL_113;
      }
    }

    else
    {
      sub_1B5D35A88(&v129, *(a4 + 24), *v31);
      v66 = v129;
      if (v129)
      {
        if (atomic_fetch_add(v129, 1u) <= 0)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        v67 = *v31;
        *v31 = v66;
        if (v67)
        {
          sub_1B5D3439C(v67);
        }
      }

      else
      {
        v83 = v31 + 1;
        v84 = v117;
        if (v31 + 1 != v117)
        {
          do
          {
            v85 = *(v83 - 1);
            *(v83 - 1) = *v83;
            *v83 = 0;
            if (v85)
            {
              sub_1B5D3439C(v85);
            }

            ++v83;
          }

          while (v83 != v84);
          v31 = v83 - 1;
        }

        while (v84 != v31)
        {
          v86 = *--v84;
          sub_1B5D35ECC(v86);
        }

        *&v117 = v31;
      }

      v82 = v129;
      if (!v129)
      {
        goto LABEL_113;
      }
    }

    sub_1B5D3439C(v82);
LABEL_113:
    v87 = *(a2 + 20);
    v88 = a2 + 24 + 8 * *(a2 + 16);
    v113 = 0;
    v112 = 0uLL;
    sub_1B5D354BC(&v112, v88, v88 + 8 * v87, v87);
    sub_1B5D355C4(a1, v10, a6, &v116, &v112);
    v134 = &v112;
    sub_1B5D3581C(&v134);
    v134 = &v116;
    sub_1B5D3589C(&v134);
    v134 = &v114;
    sub_1B5D3589C(&v134);
    return;
  }

  if (a6 >= v11)
  {
    v34 = "lcp_size < m_key_size";
    v33 = 143;
    goto LABEL_127;
  }

  v45 = *(a2 + 16);
  v111 = 0;
  v110 = 0uLL;
  sub_1B5D353B4(&v110, a2 + 24, a2 + 24 + 8 * v45, v45);
  v46 = *(a2 + 20);
  v47 = a2 + 24 + 8 * *(a2 + 16);
  v109 = 0;
  v108 = 0uLL;
  sub_1B5D354BC(&v108, v47, v47 + 8 * v46, v46);
  sub_1B5D355C4(v103, &v10[a6], v12, &v110, &v108);
  v134 = &v108;
  sub_1B5D3581C(&v134);
  v134 = &v110;
  sub_1B5D3589C(&v134);
  v134 = 0;
  v135 = 0;
  v136[0] = 0;
  sub_1B5D35A88(&v128, *(a4 + 24), 0);
  v48 = v128;
  if (v128)
  {
    v49 = sub_1B5D35AE4(&v134, &v128);
    v50 = v134;
    v48 = v136[0];
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  *&v106 = v50;
  *(&v106 + 1) = v49;
  v107 = v48;
  v135 = 0;
  v136[0] = 0;
  v71 = *&v103[0];
  *&v103[0] = 0;
  v133 = v71;
  v134 = 0;
  v105 = 0;
  v104 = 0uLL;
  sub_1B5D354BC(&v104, &v133, &v134, 1uLL);
  sub_1B5D355C4(&v122, v10, a6, &v106, &v104);
  v25 = v122;
  v122 = 0;
  v127 = v25;
  v129 = &v104;
  sub_1B5D3581C(&v129);
  if (v133)
  {
    sub_1B5D3443C(v133);
  }

  v129 = &v106;
  sub_1B5D3589C(&v129);
  if (v128)
  {
    sub_1B5D3439C(v128);
  }

  v129 = &v134;
  sub_1B5D3589C(&v129);
  v28 = *&v103[0];
  if (!*&v103[0])
  {
    goto LABEL_122;
  }

LABEL_27:
  sub_1B5D3443C(v28);
LABEL_122:
  *a1 = v25;
}

void sub_1B5D3516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1B5D35A54((v17 - 144));
  *(v17 - 200) = &a17;
  sub_1B5D3581C((v17 - 200));
  sub_1B5D35A54((v17 - 208));
  _Unwind_Resume(a1);
}

void sub_1B5D353B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D051D8(a4);
  }
}

void sub_1B5D354BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1B5D051D8(a4);
  }
}

void sub_1B5D355C4(void *a1, const void *a2, size_t a3, __int128 *a4, __int128 *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  if (a3 <= 7)
  {
    v20 = *a4;
    v21 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v18 = *a5;
    v19 = *(a5 + 2);
    *(a5 + 8) = 0uLL;
    *a5 = 0;
    sub_1B5D35F10(&v22, a2, a3, &v20, &v18);
    *a1 = v22;
    v23 = &v18;
    sub_1B5D3581C(&v23);
    v23 = &v20;
    sub_1B5D3589C(&v23);
  }

  else
  {
    v16 = *a4;
    v17 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v14 = *a5;
    v15 = *(a5 + 2);
    *(a5 + 8) = 0uLL;
    *a5 = 0;
    sub_1B5D355C4(&v22, a2 + 7, a3 - 7, &v16, &v14);
    v23 = &v14;
    sub_1B5D3581C(&v23);
    v23 = &v16;
    sub_1B5D3589C(&v23);
    v12 = 0;
    v10 = 0;
    v11 = 0uLL;
    v7 = v22;
    v22 = 0;
    v24 = v7;
    v9 = 0uLL;
    sub_1B5D354BC(&v9, &v24, &v25, 1uLL);
    sub_1B5D35F10(&v13, a2, 7uLL, &v11, &v9);
    v8 = v13;
    v13 = 0;
    *a1 = v8;
    v23 = &v9;
    sub_1B5D3581C(&v23);
    if (v24)
    {
      sub_1B5D3443C(v24);
    }

    v23 = &v11;
    sub_1B5D3589C(&v23);
    if (v22)
    {
      sub_1B5D3443C(v22);
    }
  }
}

void sub_1B5D3579C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D3581C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        sub_1B5D35D88(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D3589C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        sub_1B5D35ECC(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D3591C(void *a1, uint64_t a2, const void *a3, size_t a4)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_1B5D35A88(&v14, a2, 0);
  v7 = v14;
  if (v14)
  {
    v8 = sub_1B5D35AE4(&v15, &v14);
    v7 = v17;
    v9 = v15;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *&v12 = v9;
  *(&v12 + 1) = v8;
  v13 = v7;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v11 = 0;
  v10 = 0uLL;
  sub_1B5D355C4(a1, a3, a4, &v12, &v10);
  v18 = &v10;
  sub_1B5D3581C(&v18);
  v18 = &v12;
  sub_1B5D3589C(&v18);
  if (v14)
  {
    sub_1B5D3439C(v14);
  }

  v18 = &v15;
  sub_1B5D3589C(&v18);
}

void sub_1B5D35A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a18)
{
  sub_1B5D35C7C(&a16);
  *(v17 - 56) = &a18;
  sub_1B5D3589C((v17 - 56));
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5D35A54(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3443C(v2);
  }

  return a1;
}

uint64_t sub_1B5D35A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (!a2)
  {
    sub_1B5CEC274();
  }

  return (*(*a2 + 48))(a2, &v4);
}

uint64_t sub_1B5D35AE4(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (v2 - *a1) >> 3;
  v5 = v4 + 1;
  if ((v4 + 1) >> 61)
  {
    sub_1B5D04FA0();
  }

  v7 = *(a1 + 16) - v3;
  if (v7 >> 2 > v5)
  {
    v5 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v20 = a1;
  if (v8)
  {
    sub_1B5D051D8(v8);
  }

  v17 = 0;
  v18 = 8 * v4;
  v9 = *a2;
  *a2 = 0;
  *(8 * v4) = v9;
  v19 = (8 * v4 + 8);
  if (v3 != v2)
  {
    v10 = 0;
    do
    {
      v11 = *(v10 + v3);
      *v10 = v11;
      if (v11 && atomic_fetch_add(v11, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      ++v10;
    }

    while ((v10 + v3) != v2);
    do
    {
      v12 = *v3++;
      sub_1B5D35ECC(v12);
    }

    while (v3 != v2);
  }

  v13 = *a1;
  *a1 = 0;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1B5D35E7C(&v17);
  return v16;
}

uint64_t *sub_1B5D35C7C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3439C(v2);
  }

  return a1;
}

void *sub_1B5D35CB0(uint64_t a1, void *a2)
{
  v4 = a2 + 1;
  v5 = *(a1 + 8);
  if (a2 + 1 == v5)
  {
    v6 = a2;
  }

  else
  {
    do
    {
      v6 = v4;
      v7 = *(v4 - 1);
      *(v4 - 1) = *v4;
      *v4 = 0;
      if (v7)
      {
        sub_1B5D3443C(v7);
      }

      v4 = v6 + 1;
    }

    while (v6 + 1 != v5);
    v5 = *(a1 + 8);
  }

  while (v5 != v6)
  {
    v8 = *--v5;
    sub_1B5D35D88(v8);
  }

  *(a1 + 8) = v6;
  return a2;
}

uint64_t sub_1B5D35D38(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_1B5D35D88(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D35D88(uint64_t result)
{
  if (result)
  {
    return sub_1B5D3443C(result);
  }

  return result;
}

atomic_uint **sub_1B5D35DA8(atomic_uint **result, atomic_uint **a2, atomic_uint **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = result;
    do
    {
      v8 = *v6;
      *a3 = *v6;
      if (v8 && atomic_fetch_add(v8, 1u) <= 0)
      {
        __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
      }

      ++v6;
      ++a3;
      v5 -= 8;
    }

    while (v6 != a2);
    do
    {
      v9 = *v4++;
      result = sub_1B5D35D88(v9);
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1B5D35E7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_1B5D35ECC(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1B5D35ECC(uint64_t result)
{
  if (result)
  {
    return sub_1B5D3439C(result);
  }

  return result;
}

BOOL sub_1B5D35EEC(uint64_t a1, void *a2)
{
  v3 = (*a2 + 8);
  v4 = *(a1 + 32);
  return v3 == v4 || sub_1B5D5DD60(v3, v4);
}

void sub_1B5D35F10(void *a1, const void *a2, size_t a3, int64x2_t *a4, int64x2_t *a5)
{
  if (a3 >= 8)
  {
    __assert_rtn("create_single", "TIDynamicTrie.cpp", 213, "key.size() <= max_key_size()");
  }

  v10 = vaddq_s64(*a4, *a5);
  v11 = operator new((vsubq_s64(vdupq_laneq_s64(v10, 1), v10).u64[0] & 0xFFFFFFFFFFFFFFF8) + 24);
  v12 = v11;
  v33 = *a4;
  v13 = v33;
  v34 = a4[1].i64[0];
  a4->i64[0] = 0;
  a4->i64[1] = 0;
  a4[1].i64[0] = 0;
  v31 = *a5;
  v14 = v31;
  v32 = a5[1].i64[0];
  a5->i64[1] = 0;
  a5[1].i64[0] = 0;
  a5->i64[0] = 0;
  *v11 = 1;
  v11[15] = a3;
  v15 = v13.i64[1];
  v16 = v13.i64[0];
  v17 = v13.i64[1] - v13.i64[0];
  v18 = v14.i64[1];
  v19 = v14.i64[0];
  v20 = v14.i64[1] - v14.i64[0];
  *(v11 + 4) = (v13.i64[1] - v13.i64[0]) >> 3;
  *(v11 + 5) = (v14.i64[1] - v14.i64[0]) >> 3;
  if (a3)
  {
    memmove(v11 + 8, a2, a3);
  }

  if (v15 != v16)
  {
    v21 = 0;
    do
    {
      v22 = *(v16 + 8 * v21);
      *(v16 + 8 * v21) = 0;
      *&v12[8 * v21++ + 24] = v22;
    }

    while (v17 >> 3 > v21);
  }

  v23 = *(v12 + 4);
  if (v18 == v19)
  {
    v24 = 0;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    do
    {
      v26 = *(v19 + 8 * v25);
      *(v19 + 8 * v25) = 0;
      *&v12[8 * v23 + 24 + 8 * v25] = v26;
      v24 += *(v26 + 4);
      *(v12 + 1) = v24;
      ++v25;
    }

    while (v20 >> 3 > v25);
  }

  v27 = 0;
  if (v23)
  {
    v28 = 8 * v23;
    v29 = (v12 + 24);
    do
    {
      v30 = *v29++;
      v27 += *(v30 + 48);
      v28 -= 8;
    }

    while (v28);
  }

  *(v12 + 1) = v24 + v27;
  v35 = &v31;
  sub_1B5D3581C(&v35);
  v35 = &v33;
  sub_1B5D3589C(&v35);
  *a1 = v12;
}

void sub_1B5D360F8(void *a1)
{
  v3 = 0uLL;
  v4 = 0;
  v2 = 0;
  v1 = 0uLL;
  sub_1B5D355C4(a1, 0, 0, &v3, &v1);
  v5 = &v1;
  sub_1B5D3581C(&v5);
  v5 = &v3;
  sub_1B5D3589C(&v5);
}

void sub_1B5D36168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_1B5D3581C((v14 - 40));
  *(v14 - 40) = &a13;
  sub_1B5D3589C((v14 - 40));
  _Unwind_Resume(a1);
}

void *sub_1B5D36190(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1B5D360F8(a1 + 2);
  return a1;
}

void sub_1B5D361D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_1B5D361E8(atomic_uint *result, _OWORD *a2, uint64_t a3)
{
  if (*a2 <= 0x200u)
  {
    v5 = result;
    (*(**result + 8))(&v9);
    if (v9 <= 0xEuLL)
    {
      v6 = (&v9 + 2);
    }

    else
    {
      v6 = v10;
    }

    sub_1B5D346F0(&v8, *(v5 + 2), a2, a3, v6, v9);
    v7 = v8;
    v8 = 0;
    result = *(v5 + 2);
    *(v5 + 2) = v7;
    if (result)
    {
      sub_1B5D3443C(result);
      result = v8;
      if (v8)
      {
        result = sub_1B5D3443C(v8);
      }
    }

    if (v9 >= 0xFu)
    {
      result = v10;
      if (v10)
      {
        return MEMORY[0x1B8C880C0](v10, 0x1000C8077774924);
      }
    }
  }

  return result;
}

void sub_1B5D362D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, uint64_t a12)
{
  sub_1B5D35A54(&a10);
  if (a11 >= 0xFu)
  {
    if (a12)
    {
      MEMORY[0x1B8C880C0](a12, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D36318(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_18;
  }

  v4 = *(a2 + 8);
  if (v4 + 1 < *(v3 + 15))
  {
    if (*(v3 + v4 + 9) == a3)
    {
      v16 = *a2;
      if (atomic_fetch_add(v3, 1u) > 0)
      {
        sub_1B5D364B4(result, &v16, *(a2 + 8) + 1);
        result = v16;
        if (v16)
        {
          return sub_1B5D3443C(v16);
        }

        return result;
      }

LABEL_20:
      __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
    }

LABEL_18:
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

  v5 = *(v3 + 20);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v3 + 8 * *(v3 + 16) + 24;
  v7 = v6;
  v8 = v5;
  do
  {
    v9 = v8 >> 1;
    v10 = (v7 + 8 * (v8 >> 1));
    v12 = *v10;
    v11 = v10 + 1;
    v8 += ~(v8 >> 1);
    if (*(v12 + 8) < a3)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  v13 = v7 - v6;
  if (v5 <= v13 >> 3)
  {
    goto LABEL_18;
  }

  v14 = *(v6 + v13);
  if (*(v14 + 8) != a3)
  {
    goto LABEL_18;
  }

  v15 = *(v6 + v13);
  if (atomic_fetch_add(v14, 1u) <= 0)
  {
    goto LABEL_20;
  }

  sub_1B5D364B4(result, &v15, 0);
  result = v15;
  if (v15)
  {
    return sub_1B5D3443C(v15);
  }

  return result;
}

uint64_t *sub_1B5D36480(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3443C(v2);
  }

  return a1;
}

uint64_t sub_1B5D364B4(uint64_t result, uint64_t *a2, unsigned __int8 a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = v3;
  *(result + 8) = a3;
  if (*(v3 + 15) <= a3)
  {
    __assert_rtn("DynamicTrieCursor", "TIDynamicTrie.h", 211, "m_key_index < m_trie_node->key_size()");
  }

  return result;
}

uint64_t *sub_1B5D3652C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1B5D3443C(v2);
  }

  return a1;
}

uint64_t sub_1B5D36560(uint64_t a1)
{
  sub_1B5D360F8(&v4);
  v2 = v4;
  v4 = 0;
  result = *(a1 + 16);
  *(a1 + 16) = v2;
  if (result)
  {
    sub_1B5D3443C(result);
    result = v4;
    if (v4)
    {
      return sub_1B5D3443C(v4);
    }
  }

  return result;
}

void sub_1B5D365B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1B5D35A54(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1B5D365CC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    if (a2)
    {
      if (*(result + 8) + 1 >= *(v2 + 15))
      {
        v8 = 0;
        v4 = *(v2 + 16);
        if (v4)
        {
          v5 = v2 + 24;
          v6 = 8 * v4 - 8;
          do
          {
            result = (*(a2 + 16))(a2, v5, &v8);
            if (v8)
            {
              break;
            }

            v5 += 8;
            v7 = v6;
            v6 -= 8;
          }

          while (v7);
        }
      }
    }
  }

  return result;
}

atomic_uint *sub_1B5D36668(atomic_uint *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v13 = 0;
  if (*(result + 8) + 1 >= *(v2 + 15))
  {
    v4 = *(v2 + 20);
    if (!v4)
    {
      return result;
    }

    v5 = (v2 + 8 * *(v2 + 16) + 24);
    v6 = 8 * v4 - 8;
    while (1)
    {
      v7 = *v5;
      v9 = v7;
      if (v7)
      {
        if (atomic_fetch_add(v7, 1u) <= 0)
        {
          break;
        }
      }

      sub_1B5D364B4(v10, &v9, 0);
      (*(a2 + 16))(a2, v10, &v13);
      if (v10[0])
      {
        sub_1B5D3443C(v10[0]);
      }

      result = v9;
      if (v9)
      {
        result = sub_1B5D3443C(v9);
      }

      if ((v13 & 1) == 0)
      {
        ++v5;
        v8 = v6;
        v6 -= 8;
        if (v8)
        {
          continue;
        }
      }

      return result;
    }

LABEL_19:
    __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
  }

  v11 = v2;
  if (atomic_fetch_add(v2, 1u) <= 0)
  {
    goto LABEL_19;
  }

  sub_1B5D364B4(v12, &v11, *(result + 8) + 1);
  (*(a2 + 16))(a2, v12, &v13);
  if (v12[0])
  {
    sub_1B5D3443C(v12[0]);
  }

  result = v11;
  if (v11)
  {
    return sub_1B5D3443C(v11);
  }

  return result;
}

void sub_1B5D367D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  sub_1B5D36480(va1);
  sub_1B5D3652C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1B5D3681C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (sub_1B5CE401C((*a1 + 136), (*a2 + 136)))
  {
    if (*(v2 + 112))
    {
      v4 = *(v2 + 112);
    }

    else
    {
      v4 = (v2 + 120);
    }

    if (*(v3 + 112))
    {
      v5 = *(v3 + 112);
    }

    else
    {
      v5 = (v3 + 120);
    }

    v6 = strcmp(v4, v5);
    if (v6)
    {
      return v6 >> 31;
    }

    v7 = *(v2 + 8) ? *(v2 + 8) : (v2 + 16);
    v8 = *(v3 + 8) ? *(v3 + 8) : (v3 + 16);
    v6 = strcmp(v7, v8);
    if (v6)
    {
      return v6 >> 31;
    }

    else
    {
      v16 = *(v2 + 40) - *(v3 + 40);
      if (v16)
      {
        return v16 >> 31;
      }

      else
      {
        return *(v2 + 56) < *(v3 + 56);
      }
    }
  }

  else
  {
    v10 = *(v2 + 136);
    if (v10 <= 0xE)
    {
      v11 = (v2 + 138);
    }

    else
    {
      v11 = *(v2 + 144);
    }

    v12 = *(v3 + 136);
    if (v12 <= 0xE)
    {
      v13 = (v3 + 138);
    }

    else
    {
      v13 = *(v3 + 144);
    }

    if (v12 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = *(v3 + 136);
    }

    v15 = memcmp(v11, v13, v14);
    if (v15)
    {
      return v15 < 0;
    }

    else
    {
      return v10 < v12;
    }
  }
}

uint64_t sub_1B5D36924(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  sub_1B5D1BB0C(a1 + 40);

  return sub_1B5D1BB70(a1);
}

uint64_t sub_1B5D36970(uint64_t a1)
{
  *a1 = &unk_1F2D558B8;
  sub_1B5D1BBBC((a1 + 1392));
  v2 = *(a1 + 1384);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  *a1 = &unk_1F2D559C0;
  v3 = *(a1 + 1352);
  if (v3 && *(a1 + 1350) == 1)
  {
    free(v3);
  }

  sub_1B5D1BBBC((a1 + 1296));
  return a1;
}

uint64_t sub_1B5D36A00(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2 && *(a1 + 214) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 184);
  if (v3 && *(a1 + 182) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 152);
  if (v4 && *(a1 + 150) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 120);
  if (v5 && *(a1 + 118) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 88);
  if (v6 && *(a1 + 86) == 1)
  {
    free(v6);
  }

  v7 = *(a1 + 56);
  if (v7 && *(a1 + 54) == 1)
  {
    free(v7);
  }

  v8 = *(a1 + 24);
  if (v8 && *(a1 + 22) == 1)
  {
    free(v8);
  }

  return a1;
}

uint64_t sub_1B5D36ACC(uint64_t a1)
{
  *a1 = &unk_1F2D559C0;
  v2 = *(a1 + 1352);
  if (v2 && *(a1 + 1350) == 1)
  {
    free(v2);
  }

  sub_1B5D1BBBC((a1 + 1296));
  return a1;
}

void sub_1B5D36B2C(uint64_t a1)
{
  v1 = a1;
  v430 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 1912);
  if (*(a1 + 1904))
  {
    v3 = *(a1 + 1904);
  }

  else
  {
    v3 = (a1 + 1912);
  }

  sub_1B5CE410C(&md, v3);
  sub_1B5CE4C88(buf, &md, 0);
  if (SHIBYTE(md.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(md.__r_.__value_.__l.__data_);
  }

  *&md.__r_.__value_.__l.__data_ = 0uLL;
  if (buf[24] == 1)
  {
    CC_MD5(v429, len, &md);
  }

  *v1 = *&md.__r_.__value_.__l.__data_;
  sub_1B5DA4E0C(buf);
  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 1;
  *&buf[8] = 0;
  sub_1B5CDCAAC(buf, "dat", 0, 3u);
  sub_1B5D3AF54(v403, v1, buf);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 1;
  *&buf[8] = 0;
  sub_1B5CDCAAC(buf, "idx", 0, 3u);
  sub_1B5D3AF54(v401, v1, buf);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  v393 = 0;
  v394 = 0;
  ucol_getVersion();
  ucol_getUCAVersion();
  v4 = *(v1 + 240);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_696;
  }

  v392 = v1;
  if ((*(v1 + 1964) & 1) == 0 && *(v1 + 1965) != 1)
  {
    if ((v4 & 0x4000) == 0 && sub_1B5D9AAA8(&v394, &v393, v1, v403) && sub_1B5D9AAA8(&v394, &v393, v1, v401))
    {
      v9 = atomic_load(byte_1EB90C7D0);
      if (v9)
      {
        v10 = atomic_load(byte_1EB90CC20);
        if (v10)
        {
          v11 = *(v1 + 1904);
          if (!v11)
          {
            v11 = v2;
          }

          v12 = *(v1 + 24);
          if (!v12)
          {
            v12 = v1 + 32;
          }

          printf("Nothing to be done for %s (%s) ", v11, v12);
          putchar(10);
        }

        else
        {
          v343 = sub_1B5D32914();
          if (os_log_type_enabled(v343, OS_LOG_TYPE_DEFAULT))
          {
            v344 = *(v1 + 1904);
            if (!v344)
            {
              v344 = v2;
            }

            v345 = *(v1 + 24);
            if (!v345)
            {
              v345 = v1 + 32;
            }

            *buf = 136315394;
            *&buf[4] = v344;
            *&buf[12] = 2080;
            *&buf[14] = v345;
            _os_log_impl(&dword_1B5CDB000, v343, OS_LOG_TYPE_DEFAULT, "Nothing to be done for %s (%s) ", buf, 0x16u);
          }
        }
      }

      goto LABEL_696;
    }

    v13 = atomic_load(byte_1EB90C7D0);
    if (v13)
    {
      v14 = atomic_load(byte_1EB90CC20);
      if (v14)
      {
        v15 = *(v1 + 1904);
        if (!v15)
        {
          v15 = v2;
        }

        v16 = *(v1 + 24);
        if (!v16)
        {
          v16 = (v1 + 32);
        }

        printf("Compiling %s (%s) ", v15, v16);
        putchar(10);
      }

      else
      {
        v48 = sub_1B5D32914();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(v1 + 1904);
          if (!v49)
          {
            v49 = v2;
          }

          v50 = *(v1 + 24);
          if (!v50)
          {
            v50 = v1 + 32;
          }

          *buf = 136315394;
          *&buf[4] = v49;
          *&buf[12] = 2080;
          *&buf[14] = v50;
          _os_log_impl(&dword_1B5CDB000, v48, OS_LOG_TYPE_DEFAULT, "Compiling %s (%s) ", buf, 0x16u);
        }
      }
    }

    sub_1B5D3B4F0(v1);
    if ((*(v1 + 243) & 2) == 0)
    {
      *(v1 + 1992) = *(v1 + 1984);
      *&md.__r_.__value_.__r.__words[1] = 0uLL;
      md.__r_.__value_.__r.__words[0] = &md.__r_.__value_.__l.__size_;
      v51 = v1 + 1736;
      while (1)
      {
        v51 = *v51;
        if (!v51)
        {
          break;
        }

        if (!*sub_1B5D4171C(&md, buf, (v51 + 16)))
        {
          operator new();
        }
      }

      v52 = *(v1 + 24);
      if (!v52)
      {
        v52 = (v1 + 32);
      }

      if (*v52 == 116 && v52[1] == 97 && !v52[2])
      {
        for (i = 0; i != 212; i += 4)
        {
          (*(**(v1 + 248) + 16))(buf);
          if (!*sub_1B5D4171C(&md, &v419, buf))
          {
            operator new();
          }

          if (*buf >= 0xFu && *&buf[8])
          {
            MEMORY[0x1B8C880C0](*&buf[8], 0x1000C8077774924);
          }
        }
      }

      v388 = &buf[16];
      v54 = 1;
      while (1)
      {
        if ((v54 & 0xF800 | 0x400) != 0xDC00)
        {
          (*(**(v1 + 248) + 16))(&__n);
          v55 = __n;
          if (v54 < 0x10000)
          {
            if (__n)
            {
LABEL_136:
              size = md.__r_.__value_.__l.__size_;
              if (!md.__r_.__value_.__l.__size_)
              {
                goto LABEL_195;
              }

              v57 = __n <= 0xEu ? &__n + 2 : *v416;
              v58 = &md.__r_.__value_.__r.__words[1];
              do
              {
                v59 = size;
                v60 = v58;
                v61 = *(size + 32);
                v62 = *(size + 40);
                if (v61 <= 0xE)
                {
                  v63 = &v59[1].__r_.__value_.__r.__words[1] + 2;
                }

                else
                {
                  v63 = v62;
                }

                if (v55 >= v61)
                {
                  v64 = v61;
                }

                else
                {
                  v64 = v55;
                }

                v65 = memcmp(v63, v57, v64);
                v66 = v65 < 0;
                if (!v65)
                {
                  v66 = v61 < v55;
                }

                v67 = v66;
                if (v66)
                {
                  v58 = v60;
                }

                else
                {
                  v58 = v59;
                }

                size = v59->__r_.__value_.__r.__words[v67];
              }

              while (size);
              if (v58 == &md.__r_.__value_.__r.__words[1])
              {
                goto LABEL_195;
              }

              v68 = !v66;
              if (v66)
              {
                v69 = v60;
              }

              else
              {
                v69 = v59;
              }

              v70 = LOWORD(v69[1].__r_.__value_.__r.__words[1]);
              v71 = v69[1].__r_.__value_.__r.__words[2];
              v72 = &v60[1].__r_.__value_.__r.__words[1] + 2;
              if (v68)
              {
                v72 = &v59[1].__r_.__value_.__r.__words[1] + 2;
              }

              if (v70 <= 0xE)
              {
                v73 = v72;
              }

              else
              {
                v73 = v71;
              }

              if (v70 >= v55)
              {
                v74 = v55;
              }

              else
              {
                v74 = v70;
              }

              v75 = memcmp(v57, v73, v74);
              v76 = v55 < v70;
              if (v75)
              {
                v76 = v75 < 0;
              }

              if (v76)
              {
                goto LABEL_195;
              }

              if (*v57 == 2)
              {
                exception = __cxa_allocate_exception(0x20uLL);
                sub_1B5CE410C(buf, "Sort key top byte collides with 0x02!!");
                sub_1B5D32AFC(exception, buf);
                __cxa_throw(exception, &unk_1F2D56F00, sub_1B5D32BEC);
              }

              if (v55 >= 5)
              {
                v77 = atomic_load(byte_1EB90C7D0);
                if (v77)
                {
                  v78 = atomic_load(byte_1EB90CC20);
                  if (v78)
                  {
                    sub_1B5D523B0(buf, &__n);
                    v79 = *&buf[8];
                    if (!*&buf[8])
                    {
                      v79 = &buf[16];
                    }

                    printf("U+%04X: long sort key : %s", v54, v79);
                    if (*&buf[8] && buf[6] == 1)
                    {
                      free(*&buf[8]);
                    }

                    putchar(10);
                  }

                  else
                  {
                    v92 = sub_1B5D32914();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                    {
                      sub_1B5D523B0(buf, &__n);
                      v93 = *&buf[8];
                      if (!*&buf[8])
                      {
                        v93 = &buf[16];
                      }

                      LODWORD(v419.__r_.__value_.__l.__data_) = 67109378;
                      HIDWORD(v419.__r_.__value_.__r.__words[0]) = v54;
                      LOWORD(v419.__r_.__value_.__r.__words[1]) = 2080;
                      *(&v419.__r_.__value_.__r.__words[1] + 2) = v93;
                      _os_log_impl(&dword_1B5CDB000, v92, OS_LOG_TYPE_DEFAULT, "U+%04X: long sort key : %s", &v419, 0x12u);
                      if (*&buf[8] && buf[6] == 1)
                      {
                        free(*&buf[8]);
                      }
                    }
                  }
                }

                v94 = *(v1 + 2008);
                v95 = *(v1 + 2016) - v94;
                v96 = atomic_load(byte_1EB90C7D0);
                if (v96)
                {
                  v97 = atomic_load(byte_1EB90CC20);
                  if (v97)
                  {
                    printf(" offset=%X", *(v1 + 2016) - v94);
                    putchar(10);
                  }

                  else
                  {
                    v98 = sub_1B5D32914();
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      *&buf[4] = v95;
                      _os_log_impl(&dword_1B5CDB000, v98, OS_LOG_TYPE_DEFAULT, " offset=%X", buf, 8u);
                    }
                  }
                }

                v99 = v54 | 0x1000000;
                v100 = *(v1 + 1992);
                v101 = *(v1 + 2000);
                if (v100 >= v101)
                {
                  v103 = *(v1 + 1984);
                  v104 = (v100 - v103) >> 3;
                  if ((v104 + 1) >> 61)
                  {
                    sub_1B5D04FA0();
                  }

                  v105 = v101 - v103;
                  v106 = v105 >> 2;
                  if (v105 >> 2 <= (v104 + 1))
                  {
                    v106 = v104 + 1;
                  }

                  if (v105 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v107 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v107 = v106;
                  }

                  if (v107)
                  {
                    sub_1B5CE1BC0(v107);
                  }

                  v108 = (8 * v104);
                  *v108 = v99 | (v95 << 32);
                  v102 = 8 * v104 + 8;
                  v109 = *(v1 + 1984);
                  v110 = *(v1 + 1992) - v109;
                  v111 = v108 - v110;
                  memcpy(v108 - v110, v109, v110);
                  v112 = *(v1 + 1984);
                  *(v1 + 1984) = v111;
                  *(v1 + 1992) = v102;
                  *(v1 + 2000) = 0;
                  if (v112)
                  {
                    operator delete(v112);
                  }
                }

                else
                {
                  *v100 = v99 | (v95 << 32);
                  v102 = (v100 + 1);
                }

                v113 = v1;
                *(v1 + 1992) = v102;
                v114 = *(v1 + 2016);
                v115 = __n;
                if (__n <= 0xEu)
                {
                  v116 = &__n + 2;
                }

                else
                {
                  v116 = *v416;
                }

                if (__n)
                {
                  v117 = *(v1 + 2024);
                  if (v117 - v114 >= __n)
                  {
                    do
                    {
                      v123 = *v116++;
                      *v114++ = v123;
                      --v115;
                    }

                    while (v115);
                    v113 = v1;
                    *(v1 + 2016) = v114;
                  }

                  else
                  {
                    v118 = *(v1 + 2008);
                    v119 = (v114 - v118);
                    v120 = v114 - v118 + __n;
                    if (v120 < 0)
                    {
                      sub_1B5D04FA0();
                    }

                    v121 = v117 - v118;
                    if (2 * v121 > v120)
                    {
                      v120 = 2 * v121;
                    }

                    if (v121 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v122 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v122 = v120;
                    }

                    if (v122)
                    {
                      operator new();
                    }

                    v386 = *(v1 + 2016);
                    v113 = v1;
                    memcpy(v119, v116, __n);
                    memcpy(&v119[v115], v114, v386 - v114);
                    *(v1 + 2016) = v114;
                    memcpy(0, v118, v114 - v118);
                    *(v1 + 2008) = 0;
                    *(v1 + 2016) = v115 - v118 + v386;
                    *(v1 + 2024) = 0;
                    if (v118)
                    {
                      operator delete(v118);
                      v114 = *(v1 + 2016);
                    }

                    else
                    {
                      v114 = (v115 - v118 + v386);
                    }
                  }
                }

                v124 = *(v113 + 2024);
                if (v114 >= v124)
                {
                  v126 = *(v113 + 2008);
                  v127 = v114 - v126 + 1;
                  if (v127 < 0)
                  {
                    sub_1B5D04FA0();
                  }

                  v128 = v124 - v126;
                  if (2 * v128 > v127)
                  {
                    v127 = 2 * v128;
                  }

                  if (v128 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v129 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v129 = v127;
                  }

                  if (v129)
                  {
                    operator new();
                  }

                  v130 = v114 - v126;
                  *(v114 - v126) = 0;
                  v125 = v114 - v126 + 1;
                  memcpy(0, v126, v130);
                  *(v1 + 2008) = 0;
                  *(v1 + 2016) = v125;
                  *(v1 + 2024) = 0;
                  if (v126)
                  {
                    operator delete(v126);
                  }
                }

                else
                {
                  *v114 = 0;
                  v125 = (v114 + 1);
                }

                *(v1 + 2016) = v125;
LABEL_195:
                if (__n >= 0xFu && *v416)
                {
                  MEMORY[0x1B8C880C0](*v416, 0x1000C8077774924);
                }

                goto LABEL_130;
              }
            }

            *buf = v54;
            *&buf[4] = 0;
            strncpy(&buf[4], &__n + 2, v55);
            v80 = *(v1 + 1992);
            v81 = *(v1 + 2000);
            if (v80 >= v81)
            {
              v83 = *(v1 + 1984);
              v84 = (v80 - v83) >> 3;
              if ((v84 + 1) >> 61)
              {
                sub_1B5D04FA0();
              }

              v85 = v81 - v83;
              v86 = v85 >> 2;
              if (v85 >> 2 <= (v84 + 1))
              {
                v86 = v84 + 1;
              }

              if (v85 >= 0x7FFFFFFFFFFFFFF8)
              {
                v87 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v87 = v86;
              }

              if (v87)
              {
                sub_1B5CE1BC0(v87);
              }

              *(8 * v84) = *buf;
              v82 = 8 * v84 + 8;
              v88 = *(v1 + 1984);
              v89 = *(v1 + 1992) - v88;
              v90 = (8 * v84 - v89);
              memcpy(v90, v88, v89);
              v91 = *(v1 + 1984);
              *(v1 + 1984) = v90;
              *(v1 + 1992) = v82;
              *(v1 + 2000) = 0;
              if (v91)
              {
                operator delete(v91);
              }
            }

            else
            {
              *v80 = *buf;
              v82 = (v80 + 1);
            }

            *(v1 + 1992) = v82;
            goto LABEL_195;
          }

          if (__n)
          {
            goto LABEL_136;
          }
        }

LABEL_130:
        if (++v54 == 196608)
        {
          sub_1B5D416A8(md.__r_.__value_.__l.__size_);
          v131 = *(v1 + 1984);
          v132 = (*(v1 + 1992) - v131) >> 3;
          v133 = *(v1 + 2008);
          v134 = (*(v1 + 2016) - v133);
          *buf = &unk_1F2D580D8;
          *&buf[8] = v1 + 328;
          *&buf[16] = v131;
          *&buf[24] = v132;
          v424 = v133;
          v425 = v134;
          v135 = *(v1 + 280);
          v137 = *v135;
          v136 = v135[1];
          while (v137 != v136)
          {
            v138 = *v137;
            (*(*buf + 8))(&md, buf, *v137 + 104);
            v139 = sub_1B5CE401C(&md, (v138 + 136));
            if (LOWORD(md.__r_.__value_.__l.__data_) >= 0xFu && md.__r_.__value_.__l.__size_)
            {
              MEMORY[0x1B8C880C0](md.__r_.__value_.__l.__size_, 0x1000C8077774924);
            }

            if (!v139)
            {
              v352 = *v137;
              v353 = *(*v137 + 112);
              v354 = *v137 + 120;
              if (!v353)
              {
                v353 = *v137 + 120;
              }

              *&v409 = v353;
              v355 = *(v352 + 104);
              DWORD2(v409) = 0;
              HIDWORD(v409) = v355;
              v410[0] = 0;
              sub_1B5CDCF70(&v409);
              v356 = *(v352 + 104);
              v357 = *(v352 + 112);
              if (!v357)
              {
                v357 = v354;
              }

              *v405 = v357;
              *&v405[8] = v356;
              *v406 = v356;
              *&v406[4] = 0;
              sub_1B5CDCF70(v405);
              while (v409 == *v405)
              {
                if (DWORD2(v409) == *&v405[8])
                {
                  v379 = atomic_load(byte_1EB90C7D0);
                  if (v379)
                  {
                    v380 = atomic_load(byte_1EB90CC20);
                    if (v380)
                    {
                      sub_1B5D523B0(&md, (*v137 + 136));
                      v381 = md.__r_.__value_.__l.__size_;
                      if (!md.__r_.__value_.__l.__size_)
                      {
                        v381 = &md.__r_.__value_.__s.__data_[16];
                      }

                      printf("  ICU collator's original sort key: %s", v381);
                      if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                      {
                        free(md.__r_.__value_.__l.__size_);
                      }

                      putchar(10);
                    }

                    else
                    {
                      v382 = sub_1B5D32914();
                      if (os_log_type_enabled(v382, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_1B5D523B0(&md, (*v137 + 136));
                        v383 = md.__r_.__value_.__l.__size_;
                        if (!md.__r_.__value_.__l.__size_)
                        {
                          v383 = &md.__r_.__value_.__s.__data_[16];
                        }

                        LODWORD(v419.__r_.__value_.__l.__data_) = 136315138;
                        *(v419.__r_.__value_.__r.__words + 4) = v383;
                        _os_log_impl(&dword_1B5CDB000, v382, OS_LOG_TYPE_DEFAULT, "  ICU collator's original sort key: %s", &v419, 0xCu);
                        if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                        {
                          free(md.__r_.__value_.__l.__size_);
                        }
                      }
                    }
                  }

                  v384 = __cxa_allocate_exception(0x20uLL);
                  if (*(*v137 + 112))
                  {
                    v385 = *(*v137 + 112);
                  }

                  else
                  {
                    v385 = (*v137 + 120);
                  }

                  sub_1B5CE410C(&v419, v385);
                  sub_1B5D41644(&md, "sort key not matching for ", &v419);
                  sub_1B5D32AFC(v384, &md);
                  __cxa_throw(v384, &unk_1F2D56F00, sub_1B5D32BEC);
                }

                v358 = v410[0];
                sub_1B5CDD030(buf, v410[0], &v396);
                (*(**(v1 + 248) + 16))(&v399);
                v359 = atomic_load(byte_1EB90C7D0);
                if (v359)
                {
                  v360 = atomic_load(byte_1EB90CC20);
                  if (v360)
                  {
                    sub_1B5D523B0(&md, &v396);
                    v361 = md.__r_.__value_.__l.__size_;
                    sub_1B5D523B0(&v419, &v399);
                    if (v361)
                    {
                      v362 = v361;
                    }

                    else
                    {
                      v362 = &md.__r_.__value_.__s.__data_[16];
                    }

                    v363 = v419.__r_.__value_.__l.__size_;
                    if (!v419.__r_.__value_.__l.__size_)
                    {
                      v363 = &v419.__r_.__value_.__s.__data_[16];
                    }

                    printf("  Sort key mapping: U+%04X -> %s : %s", v358, v362, v363);
                    if (v419.__r_.__value_.__l.__size_ && v419.__r_.__value_.__s.__data_[6] == 1)
                    {
                      free(v419.__r_.__value_.__l.__size_);
                    }

                    if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                    {
                      free(md.__r_.__value_.__l.__size_);
                    }

                    putchar(10);
                  }

                  else
                  {
                    v364 = sub_1B5D32914();
                    if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
                    {
                      sub_1B5D523B0(&md, &v396);
                      v365 = md.__r_.__value_.__l.__size_;
                      sub_1B5D523B0(&v419, &v399);
                      v366 = v419.__r_.__value_.__l.__size_;
                      if (v365)
                      {
                        v367 = v365;
                      }

                      else
                      {
                        v367 = &md.__r_.__value_.__s.__data_[16];
                      }

                      LODWORD(__n) = 67109634;
                      if (!v419.__r_.__value_.__l.__size_)
                      {
                        v366 = &v419.__r_.__value_.__s.__data_[16];
                      }

                      HIDWORD(__n) = v358;
                      *v416 = 2080;
                      *&v416[2] = v367;
                      v417 = 2080;
                      v418 = v366;
                      _os_log_impl(&dword_1B5CDB000, v364, OS_LOG_TYPE_DEFAULT, "  Sort key mapping: U+%04X -> %s : %s", &__n, 0x1Cu);
                      if (v419.__r_.__value_.__l.__size_ && v419.__r_.__value_.__s.__data_[6] == 1)
                      {
                        free(v419.__r_.__value_.__l.__size_);
                      }

                      if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
                      {
                        free(md.__r_.__value_.__l.__size_);
                      }
                    }
                  }
                }

                if (v399 >= 0xFu && v400)
                {
                  MEMORY[0x1B8C880C0](v400, 0x1000C8077774924);
                }

                if (v396 >= 0xFu && v397)
                {
                  MEMORY[0x1B8C880C0](v397, 0x1000C8077774924);
                }

                sub_1B5CDCF70(&v409);
              }

              __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
            }

            ++v137;
          }

          break;
        }
      }
    }

    v140 = *(v1 + 280);
    v141 = *v140;
    v142 = v140[1];
    v143 = 126 - 2 * __clz(v142 - *v140);
    *buf = sub_1B5D3681C;
    if (v142 == v141)
    {
      v144 = 0;
    }

    else
    {
      v144 = v143;
    }

    sub_1B5D40274(v141, v142, buf, v144, 1);
    v145 = **(v1 + 280);
    if (*(*(v1 + 280) + 8) != v145)
    {
      v146 = 0;
      v147 = 1;
      do
      {
        sub_1B5DA5964(*(v1 + 272), *(v145 + 8 * v146), 0);
        v146 = v147;
        v145 = **(v1 + 280);
        ++v147;
      }

      while (v146 < (*(*(v1 + 280) + 8) - v145) >> 3);
    }

    v148 = atomic_load(byte_1EB90C7D0);
    if (v148)
    {
      v149 = atomic_load(byte_1EB90CC20);
      if (v149)
      {
        printf("\tInserted %d trie nodes.", dword_1EB90CBF8);
        putchar(10);
      }

      else
      {
        v150 = sub_1B5D32914();
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = dword_1EB90CBF8;
          _os_log_impl(&dword_1B5CDB000, v150, OS_LOG_TYPE_DEFAULT, "\tInserted %d trie nodes.", buf, 8u);
        }
      }
    }

    if (*(v1 + 240))
    {
      v151 = sub_1B5DA67C0(*(v1 + 272));
      v152 = atomic_load(byte_1EB90C7D0);
      if (v152)
      {
        v153 = v151;
        v154 = atomic_load(byte_1EB90CC20);
        if (v154)
        {
          printf("\tCondensed %d nodes into patricia nodes.", v151);
          putchar(10);
        }

        else
        {
          v155 = sub_1B5D32914();
          if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v153;
            _os_log_impl(&dword_1B5CDB000, v155, OS_LOG_TYPE_DEFAULT, "\tCondensed %d nodes into patricia nodes.", buf, 8u);
          }
        }
      }
    }

    *buf = 0x100000;
    *&buf[4] = 0;
    buf[6] = 1;
    *&buf[8] = 0;
    sub_1B5CDCAAC(buf, "dat", 0, 3u);
    sub_1B5D3AF54(&__n, v1, buf);
    if (*&buf[8] && buf[6] == 1)
    {
      free(*&buf[8]);
    }

    v156 = atomic_load(byte_1EB90C7D0);
    if (v156)
    {
      v157 = atomic_load(byte_1EB90CC20);
      if (v157)
      {
        v158 = *v416;
        if (!*v416)
        {
          v158 = &v416[8];
        }

        printf("writing: %s", v158);
        putchar(10);
      }

      else
      {
        v159 = sub_1B5D32914();
        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
        {
          v160 = *v416;
          if (!*v416)
          {
            v160 = &v416[8];
          }

          *buf = 136315138;
          *&buf[4] = v160;
          _os_log_impl(&dword_1B5CDB000, v159, OS_LOG_TYPE_DEFAULT, "writing: %s", buf, 0xCu);
        }
      }
    }

    v161 = &v416[8];
    if (*v416)
    {
      v162 = *v416;
    }

    else
    {
      v162 = &v416[8];
    }

    sub_1B5DA5160(&md, v162);
    if ((v412 & 1) == 0)
    {
      sub_1B5CF7CDC(buf);
      v368 = sub_1B5CE599C(&buf[16], "Failed to open data file at ", 28);
      if (*v416)
      {
        v161 = *v416;
      }

      v369 = strlen(v161);
      v370 = sub_1B5CE599C(v368, v161, v369);
      v371 = sub_1B5CE599C(v370, " (errno=", 8);
      v372 = MEMORY[0x1B8C87F00](v371, v413);
      sub_1B5CE599C(v372, ")", 1);
      v373 = __cxa_allocate_exception(0x20uLL);
      sub_1B5D3F684(&v419, buf);
      sub_1B5D32AFC(v373, &v419);
      __cxa_throw(v373, &unk_1F2D56F00, sub_1B5D32BEC);
    }

    sub_1B5D3F72C(v1, &md, 0);
    v163 = *(v1 + 280);
    v164 = *v163;
    v165 = v163[1] - *v163;
    if (!v165)
    {
LABEL_524:
      *buf = 0;
      if (v412 == 1)
      {
        v265 = 0;
        do
        {
          v266 = write(__fd, &buf[v265], 4 - v265);
          if (!v266)
          {
            goto LABEL_529;
          }

          v265 += v266;
        }

        while ((v266 & 0x8000000000000000) == 0);
        v412 = 0;
      }

LABEL_529:
      v267 = sub_1B5DA53A0(__fd);
      v268 = v267;
      if ((*(v1 + 241) & 0x10) != 0)
      {
        v269 = 0x80000000;
      }

      else
      {
        v269 = 0x800000;
      }

      if (v269 < v267)
      {
        sub_1B5CF7CDC(buf);
        v374 = sub_1B5CE599C(&buf[16], "Unigram index length=", 21);
        v375 = MEMORY[0x1B8C87F10](v374, v268);
        v376 = sub_1B5CE599C(v375, " bytes exceeds trie addressing capacity=", 40);
        MEMORY[0x1B8C87F10](v376, v269);
        if ((*(v392 + 241) & 0x10) == 0)
        {
          sub_1B5CE599C(&buf[16], " (try passing the '-4' option when compiling)", 45);
        }

        v377 = __cxa_allocate_exception(0x20uLL);
        sub_1B5D3F684(&v419, buf);
        sub_1B5D32AFC(v377, &v419);
        __cxa_throw(v377, &unk_1F2D56F00, sub_1B5D32BEC);
      }

      v270 = atomic_load(byte_1EB90C7D0);
      if (v270)
      {
        v271 = atomic_load(byte_1EB90CC20);
        if (v271)
        {
          printf("\tWrote %d non-derivable words in %d bytes", *(v1 + 1888), v267);
          putchar(10);
        }

        else
        {
          v272 = sub_1B5D32914();
          if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
          {
            v273 = *(v1 + 1888);
            *buf = 67109376;
            *&buf[4] = v273;
            *&buf[8] = 1024;
            *&buf[10] = v268;
            _os_log_impl(&dword_1B5CDB000, v272, OS_LOG_TYPE_DEFAULT, "\tWrote %d non-derivable words in %d bytes", buf, 0xEu);
          }
        }
      }

      v274 = atomic_load(byte_1EB90C7D0);
      if (v274)
      {
        v275 = atomic_load(byte_1EB90CC20);
        if (v275)
        {
          putchar(10);
        }

        else
        {
          v276 = sub_1B5D32914();
          if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B5CDB000, v276, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
          }
        }
      }

      v277 = *(v1 + 240);
      if ((v277 & 0x100) == 0)
      {
        goto LABEL_627;
      }

      v387 = sub_1B5DA53A0(__fd);
      memset(buf, 0, sizeof(buf));
      LODWORD(v424) = 1065353216;
      v278 = *(v1 + 280);
      v280 = *v278;
      v279 = v278[1];
      if (*v278 == v279)
      {
        v281 = 0;
        v282 = -1;
        goto LABEL_599;
      }

      v281 = 0;
      v282 = -1;
LABEL_546:
      v283 = *v280;
      v284 = *(*v280 + 15);
      LODWORD(v396) = v284;
      if (!v284)
      {
        goto LABEL_596;
      }

      v286 = *buf;
      v285 = *&buf[8];
      if (sub_1B5D3FF9C(*buf, *&buf[8], v284))
      {
        if (*(v283 + 96) == 1)
        {
          v419.__r_.__value_.__r.__words[0] = &v396;
          v1 = v392;
          sub_1B5D40048(buf, v284, &v419)[3] = v283;
        }

        else
        {
          v289 = atomic_load(byte_1EB90C7D0);
          v1 = v392;
          if (v289)
          {
            v290 = atomic_load(byte_1EB90CC20);
            if (v290)
            {
              *&v409 = &v396;
              v291 = sub_1B5D40048(buf, v396, &v409);
              sub_1B5D33704(&v419, v291[3]);
              v292 = v419.__r_.__value_.__l.__size_;
              sub_1B5D33704(&v409, *v280);
              v293 = &v419.__r_.__value_.__s.__data_[16];
              if (v292)
              {
                v293 = v292;
              }

              v294 = *(&v409 + 1);
              if (!*(&v409 + 1))
              {
                v294 = v410;
              }

              printf("WARNING: words [%s] and [%s] share word id %u; only former is stored in word id map", v293, v294, v396);
              if (*(&v409 + 1) && BYTE6(v409) == 1)
              {
                free(*(&v409 + 1));
              }

              if (v419.__r_.__value_.__l.__size_ && v419.__r_.__value_.__s.__data_[6] == 1)
              {
                free(v419.__r_.__value_.__l.__size_);
              }

              putchar(10);
            }

            else
            {
              v298 = sub_1B5D32914();
              if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
              {
                *&v409 = &v396;
                v299 = sub_1B5D40048(buf, v396, &v409);
                sub_1B5D33704(&v419, v299[3]);
                v300 = v419.__r_.__value_.__l.__size_;
                sub_1B5D33704(&v409, *v280);
                v301 = &v419.__r_.__value_.__s.__data_[16];
                if (v300)
                {
                  v301 = v300;
                }

                v302 = *(&v409 + 1);
                if (!*(&v409 + 1))
                {
                  v302 = v410;
                }

                *v405 = 136315650;
                *&v405[4] = v301;
                *v406 = 2080;
                *&v406[2] = v302;
                v407 = 1024;
                v408 = v396;
                _os_log_impl(&dword_1B5CDB000, v298, OS_LOG_TYPE_DEFAULT, "WARNING: words [%s] and [%s] share word id %u; only former is stored in word id map", v405, 0x1Cu);
                if (*(&v409 + 1) && BYTE6(v409) == 1)
                {
                  free(*(&v409 + 1));
                }

                if (v419.__r_.__value_.__l.__size_ && v419.__r_.__value_.__s.__data_[6] == 1)
                {
                  free(v419.__r_.__value_.__l.__size_);
                }
              }
            }
          }
        }

        goto LABEL_596;
      }

      if (!*&v285)
      {
        goto LABEL_579;
      }

      v287 = vcnt_s8(v285);
      v287.i16[0] = vaddlv_u8(v287);
      if (v287.u32[0] > 1uLL)
      {
        v288 = v284;
        if (*&v285 <= v284)
        {
          v288 = v284 % v285.i32[0];
        }
      }

      else
      {
        v288 = (v285.i32[0] - 1) & v284;
      }

      v295 = *(v286 + 8 * v288);
      if (!v295 || (v296 = *v295) == 0)
      {
LABEL_579:
        operator new();
      }

      while (1)
      {
        v297 = v296[1];
        if (v297 == v284)
        {
          if (*(v296 + 4) == v284)
          {
            if (v284 < v282)
            {
              v282 = v284;
            }

            if (v281 <= v284)
            {
              v281 = v284;
            }

            v1 = v392;
LABEL_596:
            if (++v280 == v279)
            {
LABEL_599:
              v419.__r_.__value_.__s.__data_[0] = (v281 - v282 + 1) >> 16;
              v419.__r_.__value_.__s.__data_[1] = (v281 - v282 + 1) >> 8;
              v419.__r_.__value_.__s.__data_[2] = v281 - v282 + 1;
              if (v412 != 1)
              {
                goto LABEL_604;
              }

              v303 = 0;
              do
              {
                v304 = write(__fd, &v419 + v303, 3 - v303);
                if (!v304)
                {
                  v419.__r_.__value_.__s.__data_[0] = BYTE2(v282);
                  v419.__r_.__value_.__s.__data_[1] = BYTE1(v282);
                  v419.__r_.__value_.__s.__data_[2] = v282;
                  if (v412)
                  {
                    v330 = 0;
                    do
                    {
                      v331 = write(__fd, &v419 + v330, 3 - v330);
                      if (!v331)
                      {
                        goto LABEL_605;
                      }

                      v330 += v331;
                    }

                    while ((v331 & 0x8000000000000000) == 0);
                    v412 = 0;
                  }

                  goto LABEL_605;
                }

                v303 += v304;
              }

              while ((v304 & 0x8000000000000000) == 0);
              v412 = 0;
LABEL_604:
              v419.__r_.__value_.__s.__data_[0] = BYTE2(v282);
              v419.__r_.__value_.__s.__data_[1] = BYTE1(v282);
              v419.__r_.__value_.__s.__data_[2] = v282;
LABEL_605:
              for (LODWORD(v409) = v282; v282 <= v281; LODWORD(v409) = v282)
              {
                if (sub_1B5D3FF9C(*buf, *&buf[8], v282))
                {
                  v419.__r_.__value_.__r.__words[0] = &v409;
                  v305 = *(sub_1B5D40048(buf, v282, &v419)[3] + 248);
                }

                else
                {
                  v305 = 0;
                }

                if ((*(v1 + 241) & 0x10) != 0)
                {
                  LODWORD(v419.__r_.__value_.__l.__data_) = bswap32(v305);
                  if (v412 == 1)
                  {
                    v308 = 0;
                    do
                    {
                      v309 = write(__fd, &v419 + v308, 4 - v308);
                      if (!v309)
                      {
                        goto LABEL_620;
                      }

                      v308 += v309;
                    }

                    while ((v309 & 0x8000000000000000) == 0);
LABEL_619:
                    v412 = 0;
                  }
                }

                else
                {
                  v419.__r_.__value_.__s.__data_[0] = BYTE2(v305);
                  v419.__r_.__value_.__s.__data_[1] = BYTE1(v305);
                  v419.__r_.__value_.__s.__data_[2] = v305;
                  if (v412 == 1)
                  {
                    v306 = 0;
                    while (1)
                    {
                      v307 = write(__fd, &v419 + v306, 3 - v306);
                      if (!v307)
                      {
                        break;
                      }

                      v306 += v307;
                      if (v307 < 0)
                      {
                        goto LABEL_619;
                      }
                    }
                  }
                }

LABEL_620:
                v282 = v409 + 1;
              }

              sub_1B5DA53E8(__fd, 72);
              LODWORD(v419.__r_.__value_.__l.__data_) = bswap32(v387);
              if (v412 == 1)
              {
                v310 = 0;
                do
                {
                  v311 = write(__fd, &v419 + v310, 4 - v310);
                  if (!v311)
                  {
                    goto LABEL_626;
                  }

                  v310 += v311;
                }

                while ((v311 & 0x8000000000000000) == 0);
                v412 = 0;
              }

LABEL_626:
              sub_1B5DA542C(__fd);
              sub_1B5D1BB70(buf);
              v277 = *(v1 + 240);
LABEL_627:
              if ((v277 & 8) != 0)
              {
                sub_1B5DA53A0(__fd);
                if (!*(v1 + 1840))
                {
                  __assert_rtn("write_unigram_data", "UnigramsCompiler.cpp", 1047, "m_huffman_coder.is_compiled()");
                }

                v312 = *(v1 + 1864);
                v313 = *(v312 - 4);
                if (v313 != -1)
                {
                  sub_1B5D0DF30((v313 + 1));
                }

                for (j = *(v1 + 1856); j != v312; j += 8)
                {
                  ++*(4 * *(j + 4));
                }

                buf[0] = -1;
                if (v412 == 1)
                {
                  v315 = 0;
                  do
                  {
                    v316 = write(__fd, &buf[v315], 1 - v315);
                    if (!v316)
                    {
                      goto LABEL_639;
                    }

                    v315 += v316;
                  }

                  while ((v316 & 0x8000000000000000) == 0);
                  v412 = 0;
                }

LABEL_639:
                for (k = 1; ; ++k)
                {
                  v318 = *(4 * k);
                  if (v318 >= 0x10000)
                  {
                    __assert_rtn("write", "TIHuffmanCoder.cpp", 191, "num_chars_in_depth[depth] <= 0xffff");
                  }

                  *buf = bswap32(v318) >> 16;
                  if (v412 == 1)
                  {
                    v319 = 0;
                    do
                    {
                      v320 = write(__fd, &buf[v319], 2 - v319);
                      if (!v320)
                      {
                        goto LABEL_646;
                      }

                      v319 += v320;
                    }

                    while ((v320 & 0x8000000000000000) == 0);
                    v412 = 0;
                  }

LABEL_646:
                  ;
                }
              }

              v321 = sub_1B5DA53A0(__fd);
              (*(**(v1 + 264) + 48))(*(v1 + 264), &md);
              sub_1B5DA53E8(__fd, 80);
              *buf = bswap32(v321);
              if (v412 == 1)
              {
                v322 = 0;
                do
                {
                  v323 = write(__fd, &buf[v322], 4 - v322);
                  if (!v323)
                  {
                    goto LABEL_652;
                  }

                  v322 += v323;
                }

                while ((v323 & 0x8000000000000000) == 0);
                v412 = 0;
              }

LABEL_652:
              sub_1B5DA542C(__fd);
              if ((*(v1 + 243) & 2) == 0)
              {
LABEL_653:
                while ((sub_1B5DA53A0(__fd) & 0x8000000000000003) >= 1)
                {
                  buf[0] = 0;
                  if (v412 == 1)
                  {
                    v324 = 0;
                    do
                    {
                      v325 = write(__fd, &buf[v324], 1 - v324);
                      if (!v325)
                      {
                        goto LABEL_653;
                      }

                      v324 += v325;
                    }

                    while ((v325 & 0x8000000000000000) == 0);
                    v412 = 0;
                  }
                }

                v326 = sub_1B5DA53A0(__fd);
                v327 = *(v1 + 1992) - *(v1 + 1984);
                v328 = atomic_load(byte_1EB90C7D0);
                if (v328)
                {
                  v329 = atomic_load(byte_1EB90CC20);
                  if (v329)
                  {
                    printf("sort key mapping table = %d bytes", v327 & 0xFFFFFFF8);
                    putchar(10);
                  }

                  else
                  {
                    v332 = sub_1B5D32914();
                    if (os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      *&buf[4] = v327 & 0xFFFFFFF8;
                      _os_log_impl(&dword_1B5CDB000, v332, OS_LOG_TYPE_DEFAULT, "sort key mapping table = %d bytes", buf, 8u);
                    }
                  }
                }

                *buf = bswap32(v327 & 0xFFFFFFF8);
                if (v412 != 1)
                {
                  goto LABEL_679;
                }

                v333 = 0;
                while (1)
                {
                  v334 = write(__fd, &buf[v333], 4 - v333);
                  if (!v334)
                  {
                    break;
                  }

                  v333 += v334;
                  if (v334 < 0)
                  {
LABEL_678:
                    v412 = 0;
                    goto LABEL_679;
                  }
                }

                if ((v412 & 1) == 0)
                {
LABEL_679:
                  *buf = bswap32(*(v1 + 2016) - *(v1 + 2008));
                  goto LABEL_680;
                }

                v335 = 0;
                v336 = *(v1 + 1984);
                v337 = v327 & 0xFFFFFFF8;
                while (1)
                {
                  v338 = write(__fd, (v336 + v335), v337 - v335);
                  if (!v338)
                  {
                    break;
                  }

                  v335 += v338;
                  if (v338 < 0)
                  {
                    goto LABEL_678;
                  }
                }

                *buf = bswap32(*(v1 + 2016) - *(v1 + 2008));
                if ((v412 & 1) == 0)
                {
                  goto LABEL_680;
                }

                v346 = 0;
                while (1)
                {
                  v347 = write(__fd, &buf[v346], 4 - v346);
                  if (!v347)
                  {
                    break;
                  }

                  v346 += v347;
                  if (v347 < 0)
                  {
LABEL_713:
                    v412 = 0;
                    goto LABEL_680;
                  }
                }

                if (v412)
                {
                  v348 = 0;
                  v349 = *(v1 + 2008);
                  v350 = *(v1 + 2016);
                  while (1)
                  {
                    v351 = write(__fd, (v349 + v348), v350 - (v349 + v348));
                    if (!v351)
                    {
                      break;
                    }

                    v348 += v351;
                    if (v351 < 0)
                    {
                      goto LABEL_713;
                    }
                  }
                }

LABEL_680:
                sub_1B5DA53E8(__fd, 64);
                *buf = bswap32(v326);
                if (v412 == 1)
                {
                  v339 = 0;
                  do
                  {
                    v340 = write(__fd, &buf[v339], 4 - v339);
                    if (!v340)
                    {
                      goto LABEL_685;
                    }

                    v339 += v340;
                  }

                  while ((v340 & 0x8000000000000000) == 0);
                  v412 = 0;
                }

LABEL_685:
                sub_1B5DA542C(__fd);
              }

              sub_1B5DA4D68(&md);
              if (*v416 && BYTE6(__n) == 1)
              {
                free(*v416);
              }

              sub_1B5D3D1A8(v1, v341, v342);
            }

            goto LABEL_546;
          }
        }

        else
        {
          if (v287.u32[0] > 1uLL)
          {
            if (v297 >= *&v285)
            {
              v297 %= *&v285;
            }
          }

          else
          {
            v297 &= *&v285 - 1;
          }

          if (v297 != v288)
          {
            goto LABEL_579;
          }
        }

        v296 = *v296;
        if (!v296)
        {
          goto LABEL_579;
        }
      }
    }

    v166 = 0;
    v167 = 0;
    v168 = v165 >> 3;
    __src = v1 + 1776;
    while (1)
    {
      v169 = v166;
      v170 = v167 + 1;
      do
      {
        v167 = v170;
        v166 = v170;
        if (v168 <= v170)
        {
          break;
        }

        v171 = *(*(v164 + 8 * v170++) + 304);
      }

      while ((v171 & 1) != 0);
      v172 = *(v164 + 8 * v169);
      if (v172[152])
      {
        goto LABEL_483;
      }

      v173 = *(v172 + 41);
      if ((v173 & 0x20) == 0)
      {
        goto LABEL_323;
      }

      if ((v173 & 0x100) != 0 && (*(v172 + 15) > 0x3FFEu || *(v1 + 1960) != 5))
      {
        goto LABEL_323;
      }

      if ((v173 & 0x200000) != 0 && *(v172 + 19) || *(v172 + 16) != -1)
      {
        goto LABEL_323;
      }

      v175 = *(v172 + 28);
      if (v175)
      {
        if (atomic_fetch_add(v175, 1u) <= 0)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        v176 = *(v172 + 28);
        if (atomic_fetch_add(v176, 1u) < 1)
        {
          __assert_rtn("ref", "WTFRefCounted.h", 42, "old_count > 0");
        }

        v388 = v176;
        v177 = *(v176 + 32);
        if (v177)
        {
          if (((v177[1] - *v177) & 0x7FFFFFFF0) != 0)
          {
            LOBYTE(v178) = 1;
            v179 = v176;
LABEL_319:
            v388 = v179;
            sub_1B5D1BCD4(v179);
            sub_1B5D1BCD4(v175);
            v163 = *(v1 + 280);
            if (v178)
            {
              goto LABEL_322;
            }

            goto LABEL_483;
          }
        }
      }

      v390 = v175;
      if ((*(v172 + 9) & 1) != 0 || *(v172 + 18) || *(v172 + 14) || *(v172 + 25) == *(v172 + 26) || !*(v1 + 1648))
      {
        goto LABEL_316;
      }

      LODWORD(v419.__r_.__value_.__l.__data_) = 0x100000;
      WORD2(v419.__r_.__value_.__r.__words[0]) = 0;
      v419.__r_.__value_.__s.__data_[6] = 0;
      v419.__r_.__value_.__l.__size_ = 0;
      v419.__r_.__value_.__s.__data_[16] = 0;
      sub_1B5D5CABC(buf, v172);
      v260 = 0;
      LODWORD(v424) = 0;
      while (1)
      {
        v261 = *&buf[4];
        if (!*&buf[4])
        {
          sub_1B5CDF8F4(buf);
          v261 = *&buf[4];
        }

        if (v260 >= v261)
        {
          v263 = sub_1B5D5DD60(&v419, v172);
          goto LABEL_511;
        }

        sub_1B5D8EBAC(buf);
        (*(**(v1 + 1704) + 16))(&v409);
        if (v409 >= 3u)
        {
          ++*(v1 + 336);
        }

        v262 = sub_1B5DA3158(v1 + 328, &v409);
        if (sub_1B5CE2F44(v1 + 328, &v409))
        {
          break;
        }

        if (v262)
        {
          sub_1B5D5CC40(&v419, v262);
        }

        if (v409 >= 0xFu && *(&v409 + 1))
        {
          MEMORY[0x1B8C880C0](*(&v409 + 1), 0x1000C8077774924);
        }

        v260 = WORD1(v424);
      }

      if (v409 >= 0xFu && *(&v409 + 1))
      {
        MEMORY[0x1B8C880C0](*(&v409 + 1), 0x1000C8077774924);
      }

      v263 = 0;
LABEL_511:
      if (*&buf[8] && buf[6] == 1)
      {
        free(*&buf[8]);
      }

      if (v419.__r_.__value_.__l.__size_ && v419.__r_.__value_.__s.__data_[6] == 1)
      {
        free(v419.__r_.__value_.__l.__size_);
      }

      if (!v263)
      {
LABEL_316:
        v175 = v390;
        if (!v390)
        {
          v163 = *(v1 + 280);
LABEL_322:
          v172 = *(v164 + 8 * v169);
          v164 = *v163;
LABEL_323:
          if (v166 < (v163[1] - v164) >> 3 && (v180 = *(v172 + 29)) != 0)
          {
            v181 = *v180;
            v182 = *(v180 + 8);
            if (v181 != v182)
            {
              do
              {
                if (*v181 == *(v164 + 8 * v166))
                {
                  goto LABEL_329;
                }

                ++v181;
              }

              while (v181 != v182);
              v181 = v182;
            }

LABEL_329:
            if (v181 == v182)
            {
              v183 = 2;
            }

            else
            {
              v183 = -126;
            }
          }

          else
          {
            v183 = 2;
          }

          v184 = *(v1 + 264);
          *(v172 + 62) = sub_1B5DA53A0(__fd);
          v185 = *(v172 + 11);
          v186 = 0.0;
          if (v185 != 0.0)
          {
            v187 = *(v172 + 28);
            if (v187)
            {
              v188 = *(v187 + 40);
              goto LABEL_338;
            }

            v189 = *(v172 + 84);
            if (v189)
            {
              v188 = v189;
LABEL_338:
              v186 = v185 / v188;
            }

            else
            {
              v186 = 1.0;
            }
          }

          if (*(v172 + 10) == 1)
          {
            *(v172 + 9) |= 1u;
          }

          v396 = 0;
          v397 = 0;
          v398 = 0;
          v395 = 0;
          if ((v172[164] & 0x20) == 0 || !sub_1B5DA31A4(v172, v1 + 328, &v396, &v395))
          {
            goto LABEL_351;
          }

          v190 = v396;
          v191 = 0;
          if (v397 != v396)
          {
            v192 = 1;
            do
            {
              v193 = *v190;
              v190 += 20;
              v191 += v193 + 2;
              v210 = 0xCCCCCCCCCCCCCCCDLL * ((v397 - v396) >> 3) > v192++;
            }

            while (v210);
          }

          v194 = (v172[164] & 8) != 0 ? sub_1B5D32430(__src, v172) : *v172 + 1;
          if (v191 < v194)
          {
            v195 = v183;
            v196 = 0;
            v197 = v396 != v397;
          }

          else
          {
LABEL_351:
            v195 = v183;
            v197 = 0;
            v196 = 1;
          }

          v391 = sub_1B5DA53A0(__fd);
          v419.__r_.__value_.__s.__data_[0] = 0;
          if (v412 == 1)
          {
            v198 = 0;
            do
            {
              v199 = write(__fd, &v419 + v198, 1 - v198);
              if (!v199)
              {
                goto LABEL_357;
              }

              v198 += v199;
            }

            while ((v199 & 0x8000000000000000) == 0);
            v412 = 0;
          }

LABEL_357:
          v200 = *(v172 + 29);
          if (v200)
          {
            if (v200[1] - *v200 <= 8uLL)
            {
              v201 = 0;
            }

            else
            {
              v201 = v195;
            }
          }

          else
          {
            v201 = 0;
          }

          v202 = (*(*v184 + 40))(v184, *(v172 + 9));
          v203 = v201 | 4;
          if (v186 >= 1.0)
          {
            v203 = v201;
          }

          if (v202)
          {
            v203 |= 0x20u;
          }

          v204 = v203 | (*(v172 + 10) > 1u);
          if (*(v172 + 14))
          {
            v204 |= 0x40u;
          }

          if (v197)
          {
            v204 |= 8u;
          }

          if (v196)
          {
            v205 = v204 | 0x10;
          }

          else
          {
            v205 = v204;
          }

          v419.__r_.__value_.__s.__data_[0] = v205;
          if (v412 == 1)
          {
            v206 = 0;
            do
            {
              v207 = write(__fd, &v419 + v206, 1 - v206);
              if (!v207)
              {
                goto LABEL_378;
              }

              v206 += v207;
            }

            while ((v207 & 0x8000000000000000) == 0);
            v412 = 0;
          }

LABEL_378:
          *(v172 + 44) = v205;
          v1 = v392;
          if (v186 < 1.0)
          {
            v208 = (sqrt(v186) * 255.0);
            v209 = v208 >= 0xFF ? -1 : v208;
            v210 = v208 || v186 <= 0.0;
            v211 = v210 ? v209 : 1;
            v419.__r_.__value_.__s.__data_[0] = v211;
            if (v412 == 1)
            {
              v212 = 0;
              do
              {
                v213 = write(__fd, &v419 + v212, 1 - v212);
                if (!v213)
                {
                  goto LABEL_393;
                }

                v212 += v213;
              }

              while ((v213 & 0x8000000000000000) == 0);
              v412 = 0;
            }
          }

LABEL_393:
          v214 = (*(*v184 + 40))(v184, *(v172 + 9));
          if (v214)
          {
            v419.__r_.__value_.__s.__data_[0] = v214;
            if (v412 == 1)
            {
              v215 = 0;
              do
              {
                v216 = write(__fd, &v419 + v215, 1 - v215);
                if (!v216)
                {
                  goto LABEL_399;
                }

                v215 += v216;
              }

              while ((v216 & 0x8000000000000000) == 0);
              v412 = 0;
            }
          }

LABEL_399:
          v217 = *(v172 + 10);
          if (v217 >= 2)
          {
            LODWORD(v419.__r_.__value_.__l.__data_) = bswap32(v217);
            if (v412 == 1)
            {
              v218 = 0;
              do
              {
                v219 = write(__fd, &v419 + v218, 4 - v218);
                if (!v219)
                {
                  goto LABEL_405;
                }

                v218 += v219;
              }

              while ((v219 & 0x8000000000000000) == 0);
              v412 = 0;
            }
          }

LABEL_405:
          v220 = *(v172 + 14);
          if (v220)
          {
            LODWORD(v419.__r_.__value_.__l.__data_) = bswap32(v220);
            if (v412 == 1)
            {
              v221 = 0;
              do
              {
                v222 = write(__fd, &v419 + v221, 4 - v221);
                if (!v222)
                {
                  goto LABEL_411;
                }

                v221 += v222;
              }

              while ((v222 & 0x8000000000000000) == 0);
              v412 = 0;
            }
          }

LABEL_411:
          if (v197)
          {
            v223 = v396;
            if (v397 != v396)
            {
              v224 = 0;
              LODWORD(v225) = 0;
              v226 = 0xCCCCCCCCCCCCCCCDLL * ((v397 - v396) >> 3);
              do
              {
                v227 = *(v223 + 40 * v224 + 32);
                v225 = (v225 + 1);
                if (v226 > v225)
                {
                  v227 |= 0x80u;
                }

                v419.__r_.__value_.__s.__data_[0] = v227;
                if (v412 == 1)
                {
                  v228 = 0;
                  do
                  {
                    v229 = write(__fd, &v419 + v228, 1 - v228);
                    if (!v229)
                    {
                      goto LABEL_421;
                    }

                    v228 += v229;
                  }

                  while ((v229 & 0x8000000000000000) == 0);
                  v412 = 0;
                }

LABEL_421:
                v230 = &v396[20 * v224];
                v231 = *(v230 + 1);
                v232 = (v230 + 8);
                if (v231)
                {
                  v233 = v231;
                }

                else
                {
                  v233 = v232;
                }

                sub_1B5DA5258(&md, v233);
                v223 = v396;
                v226 = 0xCCCCCCCCCCCCCCCDLL * ((v397 - v396) >> 3);
                v224 = v225;
              }

              while (v226 > v225);
            }
          }

          else if (v196)
          {
            if ((v172[164] & 8) != 0)
            {
              if (!*(v392 + 1840))
              {
                __assert_rtn("encode", "TIHuffmanCoder.cpp", 203, "is_compiled()");
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x4802000000;
              *&buf[24] = sub_1B5D32234;
              v424 = sub_1B5D32260;
              v426 = 0;
              v427 = 0;
              v425 = 0;
              len = 8;
              v419.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
              v419.__r_.__value_.__l.__size_ = 0x40000000;
              v419.__r_.__value_.__r.__words[2] = sub_1B5D32278;
              v420 = &unk_1E7C20D70;
              v421 = buf;
              v422 = __src;
              v235 = *(v172 + 1);
              if (!v235)
              {
                v235 = v172 + 8;
              }

              *&v409 = v235;
              DWORD2(v409) = 0;
              HIDWORD(v409) = *v172;
              v410[0] = 0;
              sub_1B5CDCF70(&v409);
              v236 = *v172;
              v237 = *(v172 + 1);
              if (!v237)
              {
                v237 = v172 + 8;
              }

              *v405 = v237;
              *&v405[8] = v236;
              *v406 = v236;
              *&v406[4] = 0;
              sub_1B5CDCF70(v405);
              v238 = *v405;
              v239 = *&v405[8];
              while (1)
              {
                if (v409 != v238)
                {
                  __assert_rtn("operator!=", "TIString.h", 202, "p==rhs.p");
                }

                if (DWORD2(v409) == v239)
                {
                  break;
                }

                (v419.__r_.__value_.__r.__words[2])(&v419, v410[0]);
                sub_1B5CDCF70(&v409);
              }

              (v419.__r_.__value_.__r.__words[2])(&v419, 0);
              v240 = *&buf[8];
              v242 = *(*&buf[8] + 40);
              v241 = *(*&buf[8] + 48);
              if (v241 - v242 != sub_1B5D32430(__src, v172))
              {
                __assert_rtn("encode", "TIHuffmanCoder.cpp", 215, "bytes.size() == encoded_size(str)");
              }

              sub_1B5CDD214(&v399, *(v240 + 48) - *(v240 + 40), *(v240 + 40), *(v240 + 48) - *(v240 + 40));
              _Block_object_dispose(buf, 8);
              if (v425)
              {
                v426 = v425;
                operator delete(v425);
              }

              v243 = v399;
              if (v399 <= 0xEuLL)
              {
                v244 = &v399 + 2;
              }

              else
              {
                v244 = v400;
              }

              if (v412 == 1)
              {
                v245 = 0;
                do
                {
                  v246 = write(__fd, &v244[v245], v243 - v245);
                  if (!v246)
                  {
                    goto LABEL_452;
                  }

                  v245 += v246;
                }

                while ((v246 & 0x8000000000000000) == 0);
                v412 = 0;
              }

LABEL_452:
              if (v399 >= 0xFu && v400)
              {
                MEMORY[0x1B8C880C0](v400, 0x1000C8077774924);
              }
            }

            else
            {
              if (*(v172 + 1))
              {
                v234 = *(v172 + 1);
              }

              else
              {
                v234 = (v172 + 8);
              }

              sub_1B5DA5258(&md, v234);
            }
          }

          v247 = *(v172 + 41);
          if ((v247 & 0x100) != 0)
          {
            v248 = *(v172 + 15);
            v419.__r_.__value_.__s.__data_[0] = BYTE2(v248);
            v419.__r_.__value_.__s.__data_[1] = BYTE1(v248);
            v419.__r_.__value_.__s.__data_[2] = v248;
            if (v412 == 1)
            {
              v249 = 0;
              do
              {
                v250 = write(__fd, &v419 + v249, 3 - v249);
                if (!v250)
                {
                  goto LABEL_461;
                }

                v249 += v250;
              }

              while ((v250 & 0x8000000000000000) == 0);
              v412 = 0;
            }

LABEL_461:
            v247 = *(v172 + 41);
          }

          if ((v247 & 0x1000000) != 0)
          {
            LODWORD(v419.__r_.__value_.__l.__data_) = bswap32(*(v172 + 16));
            if (v412 == 1)
            {
              v251 = 0;
              do
              {
                v252 = write(__fd, &v419 + v251, 4 - v251);
                if (!v252)
                {
                  goto LABEL_468;
                }

                v251 += v252;
              }

              while ((v252 & 0x8000000000000000) == 0);
              v412 = 0;
            }

LABEL_468:
            v247 = *(v172 + 41);
          }

          if ((v247 & 0x200000) == 0)
          {
            goto LABEL_476;
          }

          LODWORD(v419.__r_.__value_.__l.__data_) = bswap32(*(v172 + 19));
          if (v412 != 1)
          {
            goto LABEL_475;
          }

          v253 = 0;
          do
          {
            v254 = write(__fd, &v419 + v253, 4 - v253);
            if (!v254)
            {
              LOWORD(v419.__r_.__value_.__l.__data_) = bswap32(v172[40]) >> 16;
              if (v412)
              {
                v258 = 0;
                do
                {
                  v259 = write(__fd, &v419 + v258, 2 - v258);
                  if (!v259)
                  {
                    goto LABEL_476;
                  }

                  v258 += v259;
                }

                while ((v259 & 0x8000000000000000) == 0);
                v412 = 0;
              }

              goto LABEL_476;
            }

            v253 += v254;
          }

          while ((v254 & 0x8000000000000000) == 0);
          v412 = 0;
LABEL_475:
          LOWORD(v419.__r_.__value_.__l.__data_) = bswap32(v172[40]) >> 16;
LABEL_476:
          v255 = sub_1B5DA53A0(__fd);
          if (((v255 - v391) & 0xFFFFFF00) != 0)
          {
            __assert_rtn("write_unigram_record_v2", "UnigramWord.cpp", 726, "record_length <= 0xff");
          }

          sub_1B5DA53E8(__fd, v391);
          v419.__r_.__value_.__s.__data_[0] = v255 - v391;
          if (v412 == 1)
          {
            v256 = 0;
            do
            {
              v257 = write(__fd, &v419 + v256, 1 - v256);
              if (!v257)
              {
                goto LABEL_482;
              }

              v256 += v257;
            }

            while ((v257 & 0x8000000000000000) == 0);
            v412 = 0;
          }

LABEL_482:
          sub_1B5DA53E8(__fd, v255);
          *buf = &v396;
          sub_1B5D46D6C(buf);
          ++*(v392 + 1888);
          v163 = *(v392 + 280);
          goto LABEL_483;
        }

        LODWORD(v178) = 1;
      }

      else
      {
        v264 = *(v172 + 41);
        v175 = v390;
        if (!v390)
        {
          v163 = *(v1 + 280);
          if ((v264 & 0x800) != 0)
          {
            goto LABEL_322;
          }

          goto LABEL_483;
        }

        v178 = (v264 >> 11) & 1;
      }

      v179 = v388;
      if (v388)
      {
        goto LABEL_319;
      }

      sub_1B5D1BCD4(v175);
      v163 = *(v1 + 280);
      if (v178)
      {
        goto LABEL_322;
      }

LABEL_483:
      v164 = *v163;
      v168 = (v163[1] - *v163) >> 3;
      if (v168 <= v166)
      {
        goto LABEL_524;
      }
    }
  }

  v5 = atomic_load(byte_1EB90C7D0);
  if (v5)
  {
    v6 = atomic_load(byte_1EB90CC20);
    if (v6)
    {
      v7 = *(v1 + 1904);
      if (!v7)
      {
        v7 = v2;
      }

      v8 = *(v1 + 24);
      if (!v8)
      {
        v8 = (v1 + 32);
      }

      printf("Printing active unigrams from %s (%s) with prefix=%s, length<>%d, suffix=%s", v7, v8, "", *(v1 + 1968), "");
      putchar(10);
    }

    else
    {
      v17 = sub_1B5D32914();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v1 + 1904);
        if (!v18)
        {
          v18 = v2;
        }

        v19 = *(v1 + 24);
        if (!v19)
        {
          v19 = v1 + 32;
        }

        v20 = *(v1 + 1968);
        *buf = 136316162;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = v19;
        *&buf[22] = 2080;
        *&buf[24] = "";
        LOWORD(v424) = 1024;
        *(&v424 + 2) = v20;
        HIWORD(v424) = 2080;
        v425 = "";
        _os_log_impl(&dword_1B5CDB000, v17, OS_LOG_TYPE_DEFAULT, "Printing active unigrams from %s (%s) with prefix=%s, length<>%d, suffix=%s", buf, 0x30u);
      }
    }
  }

  sub_1B5D3B4F0(v1);
  LODWORD(md.__r_.__value_.__l.__data_) = 0x100000;
  WORD2(md.__r_.__value_.__r.__words[0]) = 0;
  md.__r_.__value_.__s.__data_[6] = 1;
  md.__r_.__value_.__l.__size_ = 0;
  sub_1B5CDCAAC(&md, "", 0, 0);
  v21 = *(v1 + 1968);
  LODWORD(v419.__r_.__value_.__l.__data_) = 0x100000;
  WORD2(v419.__r_.__value_.__r.__words[0]) = 0;
  v419.__r_.__value_.__s.__data_[6] = 1;
  v419.__r_.__value_.__l.__size_ = 0;
  sub_1B5CDCAAC(&v419, "", 0, 0);
  v22 = *(v1 + 280);
  v23 = *v22;
  v24 = v22[1];
  v25 = 126 - 2 * __clz(v24 - *v22);
  *buf = sub_1B5D3681C;
  if (v24 == v23)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  v27 = sub_1B5D40274(v23, v24, buf, v26, 1);
  (*(**(v1 + 248) + 8))(&__n, v27);
  v28 = *(v1 + 280);
  v29 = *v28;
  if (v28[1] != *v28)
  {
    v30 = 0;
    v31 = 1;
    do
    {
      v32 = *(v29 + 8 * v30);
      v33 = *(v32 + 4);
      if (!*(v32 + 4))
      {
        sub_1B5CDF8F4(*(v29 + 8 * v30));
        v33 = *(v32 + 4);
      }

      if (v21)
      {
        v34 = v21 >= v33;
      }

      else
      {
        v34 = 1;
      }

      v35 = !v34;
      v36 = __n;
      if (__n)
      {
        v37 = sub_1B5D5234C((*(v29 + 8 * v30) + 136), &__n);
      }

      else
      {
        v37 = 0;
      }

      data_low = LOWORD(v419.__r_.__value_.__l.__data_);
      if (LOWORD(v419.__r_.__value_.__l.__data_))
      {
        v39 = sub_1B5D5DDEC(*(v29 + 8 * v30), &v419);
        if (v21)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v39 = 0;
        if (v21)
        {
          goto LABEL_70;
        }
      }

      if (!v36)
      {
        if (data_low != 0 && !v37 && !v39)
        {
          goto LABEL_84;
        }

        goto LABEL_71;
      }

LABEL_70:
      if (((v35 | (v37 || v39)) & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_71:
      v40 = *(v1 + 1965);
      v41 = atomic_load(byte_1EB90C7D0);
      if (v40 == 1)
      {
        if (v41)
        {
          v42 = atomic_load(byte_1EB90CC20);
          if (v42)
          {
            sub_1B5DA3E54(buf, *(v29 + 8 * v30));
LABEL_78:
            v44 = *&buf[8];
            if (!*&buf[8])
            {
              v44 = &buf[16];
            }

            printf("%s", v44);
            if (*&buf[8] && buf[6] == 1)
            {
              free(*&buf[8]);
            }

            putchar(10);
            goto LABEL_84;
          }

          v46 = sub_1B5D32914();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            sub_1B5DA3E54(buf, *(v29 + 8 * v30));
            v47 = *&buf[8];
            if (!*&buf[8])
            {
              v47 = &buf[16];
            }

LABEL_93:
            LODWORD(v409) = 136315138;
            *(&v409 + 4) = v47;
            _os_log_impl(&dword_1B5CDB000, v46, OS_LOG_TYPE_DEFAULT, "%s", &v409, 0xCu);
            if (*&buf[8] && buf[6] == 1)
            {
              free(*&buf[8]);
            }
          }
        }
      }

      else if (v41)
      {
        v43 = atomic_load(byte_1EB90CC20);
        if (v43)
        {
          sub_1B5DA39D8(buf, *(v29 + 8 * v30));
          goto LABEL_78;
        }

        v46 = sub_1B5D32914();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          sub_1B5DA39D8(buf, *(v29 + 8 * v30));
          v47 = *&buf[8];
          if (!*&buf[8])
          {
            v47 = &buf[16];
          }

          goto LABEL_93;
        }
      }

LABEL_84:
      v30 = v31;
      v45 = *(v1 + 280);
      v29 = *v45;
      ++v31;
    }

    while (v30 < (v45[1] - *v45) >> 3);
  }

  if (__n >= 0xFu && *v416)
  {
    MEMORY[0x1B8C880C0](*v416, 0x1000C8077774924);
  }

  if (v419.__r_.__value_.__l.__size_ && v419.__r_.__value_.__s.__data_[6] == 1)
  {
    free(v419.__r_.__value_.__l.__size_);
  }

  if (md.__r_.__value_.__l.__size_ && md.__r_.__value_.__s.__data_[6] == 1)
  {
    free(md.__r_.__value_.__l.__size_);
  }

LABEL_696:
  if (v402 && v401[6] == 1)
  {
    free(v402);
  }

  if (v404)
  {
    if (v403[6] == 1)
    {
      free(v404);
    }
  }
}