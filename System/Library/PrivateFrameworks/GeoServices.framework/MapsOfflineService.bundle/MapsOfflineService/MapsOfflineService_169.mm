uint64_t sub_A40650(uint64_t *a1, __int128 *a2, __int128 *a3, unsigned int *a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v8 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v6;
  }

  v17 = a1;
  if (v8)
  {
    if (v8 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 96 * v5;
  v15 = 96 * v5;
  v16 = 0;
  sub_C7BDA8(96 * v5, a2, a3, *a4, a5);
  v15 = 96 * v5 + 96;
  sub_A39F80(a1, &__p);
  v9 = a1[1];
  v10 = v14;
  while (1)
  {
    v11 = v15;
    if (v15 == v10)
    {
      break;
    }

    v15 -= 96;
    sub_A31EF4((v11 - 24));
    if (*(v11 - 49) < 0)
    {
      operator delete(*(v11 - 72));
      if (*(v11 - 73) < 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v11 - 73) < 0)
    {
LABEL_16:
      operator delete(*(v11 - 96));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_A407DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A3570C(va);
  _Unwind_Resume(a1);
}

void sub_A42510(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
    if ((*(v2 - 65) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v2 - 65) & 0x80000000) == 0)
  {
LABEL_3:
    if ((*(v2 - 89) & 0x80000000) == 0)
    {
LABEL_8:
      sub_A31E68(v1 + 88);
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(*(v2 - 112));
    goto LABEL_8;
  }

  operator delete(*(v2 - 88));
  if ((*(v2 - 89) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_A42ACC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 23);
  if ((*(result + 23) & 0x80000000) == 0)
  {
    if (*(result + 23) > 6u)
    {
      goto LABEL_7;
    }

    if (v2 != 3)
    {
      if (v2 != 4)
      {
        goto LABEL_54;
      }

      if (*result != 1852399981)
      {
        if (*result != 1701736302)
        {
LABEL_7:
          if (v2 != 7)
          {
            v3 = result;
            if (v2 != 8)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (*result != 1819044198 || *(result + 3) != 1852399468)
          {
LABEL_54:
            exception = __cxa_allocate_exception(0x40uLL);
            std::operator+<char>();
            sub_30F54(&v16, "", &v15);
            if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v12 = &v16;
            }

            else
            {
              v12 = v16.__r_.__value_.__r.__words[0];
            }

            if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v16.__r_.__value_.__l.__size_;
            }

            v14 = sub_2D390(exception, v12, size);
          }

LABEL_37:
          a2[3] = a2;
          *a2 = off_2670298;
          return result;
        }

LABEL_49:
        a2[3] = a2;
        *a2 = off_26705B0;
        return result;
      }

      goto LABEL_50;
    }

    if (*result != 28257 || *(result + 2) != 121)
    {
      if (*result != 28532 || *(result + 2) != 112)
      {
        goto LABEL_54;
      }

LABEL_47:
      a2[3] = a2;
      *a2 = off_2670630;
      return result;
    }

LABEL_48:
    a2[3] = a2;
    *a2 = off_26700D8;
    return result;
  }

  if (*(result + 8) == 3 && **result == 28257 && *(*result + 2) == 121)
  {
    goto LABEL_48;
  }

  if (*(result + 8) == 4 && **result == 1701736302)
  {
    goto LABEL_49;
  }

  if (*(result + 8) == 4 && **result == 1852399981)
  {
LABEL_50:
    a2[3] = a2;
    *a2 = off_2670218;
    return result;
  }

  if (*(result + 8) == 3)
  {
    if (**result == 28532 && *(*result + 2) == 112)
    {
      goto LABEL_47;
    }

    if ((v2 & 0x80) == 0)
    {
      goto LABEL_54;
    }
  }

  v6 = *(result + 8);
  if (v6 != 8)
  {
    if (v6 != 7)
    {
      goto LABEL_54;
    }

    if (**result != 1819044198 || *(*result + 3) != 1852399468)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v3 = *result;
LABEL_52:
  if (*v3 != 0x656D69746C616572)
  {
    goto LABEL_54;
  }

  a2[3] = a2;
  *a2 = off_26706B0;
  return result;
}

void sub_A42E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A42F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate4noneEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A43050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate3topEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A43160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate8realtimeEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_A43740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A439A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3B889C(va);
  sub_1F1A8(v3 - 72);
  _Unwind_Resume(a1);
}

void sub_A439E8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A43A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v24);
  if (sub_C7E5D0(a2))
  {
    *(a1 + 4320) = 0;
    *(a1 + 4304) = 0u;
    *(a1 + 4288) = 0u;
    *(a1 + 4272) = 0u;
    *(a1 + 4256) = 0u;
    *(a1 + 4240) = 0u;
    *(a1 + 4224) = 0u;
    sub_C9E4D8(a1 + 3920);
    if (*a1)
    {
      v6 = *(a2 + 60);
    }

    else
    {
      v6 = 0;
    }

    sub_C9E54C(a1 + 3920, v6);
    sub_A4495C(a1, a2);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v13);
    sub_4A5C(&v13, "Inconsistent request provided to journey updater; failing request.", 66);
    if ((v23 & 0x10) != 0)
    {
      v9 = v22;
      if (v22 < v19)
      {
        v22 = v19;
        v9 = v19;
      }

      v10 = v18;
      v8 = v9 - v18;
      if (v9 - v18 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((v23 & 8) == 0)
      {
        v8 = 0;
        v12 = 0;
LABEL_18:
        *(&__dst + v8) = 0;
        sub_7E854(&__dst, 3u);
        if (v12 < 0)
        {
          operator delete(__dst);
        }

        if (v21 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v15);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_23;
      }

      v10 = v16;
      v8 = v17 - v16;
      if ((v17 - v16) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_25:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v12 = v8;
    if (v8)
    {
      memmove(&__dst, v10, v8);
    }

    goto LABEL_18;
  }

LABEL_23:
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = &off_2669FE0;
  return result;
}

void sub_A446A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a38);
  sub_A448F4(&a16);
  sub_A325C4(&a33);
  sub_A37AFC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_A44814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_A44AC8(a1, a3, a4);
  sub_A44D28(a1, a4);
  sub_A44F00(a1, a3, a4);
}

char **sub_A448F4(char **a1)
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
        v5 = v3 - 240;
        sub_A30978(v3 - 29);
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

void sub_A44A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A44A68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E974(a1 + 4352);
  sub_A74AD4((a1 + 24), a2, a3);
  result = sub_7EA60(a1 + 4352) + *(a1 + 4256);
  *(a1 + 4256) = result;
  return result;
}

uint64_t sub_A44AC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 3) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A44CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A44CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_A31E68(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A44D28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2) == 1)
  {
    sub_7E974(a1 + 4352);
    operator new();
  }
}

void sub_A44ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A44EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A45160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_A3FCA4(va);
  _Unwind_Resume(a1);
}

void sub_A45174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_A31E68(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A451A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    sub_7E974(a1 + 4352);
    operator new();
  }
}

void sub_A45344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A45358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A45374(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 5) == 1)
  {
    sub_7E974(a1 + 4352);
    operator new();
  }
}

void sub_A45518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A4552C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A45548(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 6) == 1)
  {
    sub_7E974(a1 + 4352);
    v7 = v6;
    v6[0] = off_26700D8;
    sub_C283C8(&v5, a2, v6);
    if (v7 == v6)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))();
    }

    result = sub_7EA60(a1 + 4352) + *(a1 + 4312);
    *(a1 + 4312) = result;
  }

  return result;
}

void sub_A45668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A4567C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 7) == 1)
  {
    sub_7E974(a1 + 4352);
    operator new();
  }
}

void sub_A4582C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_A31E68(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_A45864(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_7E974(a1 + 4352);
    nullsub_1();
    v7 = v6;
    v6[0] = off_26700D8;
    sub_C1A170(&v5, a2, v6);
    if (v7 == v6)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))();
    }

    result = sub_7EA60(a1 + 4352) + *(a1 + 4312);
    *(a1 + 4312) = result;
  }

  return result;
}

void sub_A4598C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

double sub_A459A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1) == 1 && *(a2 + 56) != 0)
  {
    v9[5] = v3;
    v9[6] = v4;
    sub_7E974(a1 + 4352);
    sub_501CE8(v9, a1 + 24);
    sub_BD9AA4(v9, a3);
    result = sub_7EA60(a1 + 4352) + *(a1 + 4264);
    *(a1 + 4264) = result;
  }

  return result;
}

uint64_t sub_A45A28(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 9) == 1)
  {
    sub_7E974(result + 4352);
    operator new();
  }

  return result;
}

void sub_A45C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A45C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_A31E68(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A45C94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10) == 1)
  {
    sub_7E974(a1 + 4352);
    operator new();
  }
}

void sub_A45E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A45E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A45E70(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 11) == 1)
  {
    sub_7E974(a1 + 4352);
    operator new();
  }
}

void sub_A46018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_A31E68(va);
  _Unwind_Resume(a1);
}

void sub_A4602C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A46048(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == 1)
  {
    sub_7E974(a1 + 4352);
    operator new();
  }
}

void sub_A461FC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

double sub_A46218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_7E974(a1 + 4352);
  sub_A4FDCC(a1 + 24, a2, a3, a4, a5);
  result = sub_7EA60(a1 + 4352) + *(a1 + 4320);
  *(a1 + 4320) = result;
  return result;
}

void sub_A46290(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  HIBYTE(v26[2]) = 21;
  strcpy(v26, "enable_coverage_check");
  v6 = sub_5F9D0(a3, v26);
  if (SHIBYTE(v26[2]) < 0)
  {
    v7 = v6;
    operator delete(v26[0]);
    v6 = v7;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  sub_3AF114();
  v9 = v8[1];
  *&v25 = *v8;
  *(&v25 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = sub_3AF234(*(a1 + 8));
  v11 = v10[1];
  *&v16 = *v10;
  *(&v16 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v10[3];
  v17 = v10[2];
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v10[5];
  v19 = v10[4];
  v20 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v10[7];
  v21 = v10[6];
  v22 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v10[9];
  v23 = v10[8];
  v24 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  sub_A30418((a1 + 16), &v25, 1, &v16);
}

void sub_A4647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_3B889C(&a9);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_A46498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_A464AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_A464CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v36);
  if (!sub_C803CC(a2))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_32:
      *a3 = 0;
      *(a3 + 8) = 1;
      *(a3 + 16) = &off_2669FE0;
      return;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "Inconsistent request provided to payment method lookup module; failing request.", 79);
    if ((v35 & 0x10) != 0)
    {
      v14 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v14 = v31;
      }

      v15 = v30;
      v12 = v14 - v30;
      if (v14 - v30 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v12 = 0;
        BYTE7(__dst[1]) = 0;
LABEL_27:
        *(__dst + v12) = 0;
        sub_7E854(__dst, 3u);
        if (SBYTE7(__dst[1]) < 0)
        {
          operator delete(*&__dst[0]);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }

        std::locale::~locale(&__p[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_32;
      }

      v15 = v27;
      v12 = v29 - v27;
      if ((v29 - v27) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    BYTE7(__dst[1]) = v12;
    if (v12)
    {
      memmove(__dst, v15, v12);
    }

    goto LABEL_27;
  }

  sub_C9E53C(a1 + 3912, *(a2 + 5));
  v6 = sub_3B0454(*(a1 + 8));
  sub_64AEEC((a1 + 3912), v6);
  memset(__dst, 0, 72);
  v7 = *(a2 + 1624);
  for (i = *(a2 + 1632); v7 != i; v7 += 592)
  {
    if (*(v7 + 584) != 2)
    {
      sub_5AF20();
    }

    sub_A46C14(a1, v7, &v25);
    v9 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) >= *&__dst[1])
    {
      *(&__dst[0] + 1) = sub_A47260(__dst, &v25);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      **(&__dst[0] + 1) = LODWORD(v25);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      *(v9 + 8) = *__p;
      *(v9 + 24) = v27;
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
      *(v9 + 32) = v28;
      *(&__dst[0] + 1) = v9 + 40;
    }

    sub_CC7110((&__dst[1] + 8), (a1 + 4216));
    *&__dst[2] = *&__dst[2] + 1.0;
  }

  if (sub_C806C4(a2, __dst))
  {
    *&__dst[3] = sub_7EA60(v36);
    *a3 = 1;
    *(a3 + 8) = __dst[0];
    *(a3 + 24) = *&__dst[1];
    v10 = *(&__dst[3] + 8);
    v11 = *(&__dst[2] + 8);
    *(a3 + 32) = *(&__dst[1] + 8);
    *(a3 + 48) = v11;
    *(a3 + 64) = v10;
    return;
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_48;
  }

  sub_19594F8(&v25);
  sub_4A5C(&v25, "Inconsistent response computed whilst processing payment method lookup; failing solution.", 89);
  if ((v35 & 0x10) != 0)
  {
    v16 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v16 = v31;
    }

    v17 = v30;
    v13 = v16 - v30;
    if (v16 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_58:
      sub_3244();
    }

LABEL_38:
    if (v13 >= 0x17)
    {
      operator new();
    }

    v23 = v13;
    if (v13)
    {
      memmove(&v22, v17, v13);
    }

    goto LABEL_43;
  }

  if ((v35 & 8) != 0)
  {
    v17 = v27;
    v13 = v29 - v27;
    if ((v29 - v27) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_58;
    }

    goto LABEL_38;
  }

  v13 = 0;
  v23 = 0;
LABEL_43:
  *(&v22 + v13) = 0;
  sub_7E854(&v22, 3u);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::locale::~locale(&__p[1]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_48:
  *a3 = 0;
  *(a3 + 8) = 3;
  *(a3 + 16) = &off_2669FE0;
  v18 = *&__dst[0];
  if (*&__dst[0])
  {
    v19 = *(&__dst[0] + 1);
    v20 = *&__dst[0];
    if (*(&__dst[0] + 1) != *&__dst[0])
    {
      do
      {
        v21 = *(v19 - 32);
        if (v21)
        {
          *(v19 - 24) = v21;
          operator delete(v21);
        }

        v19 -= 40;
      }

      while (v19 != v18);
      v20 = *&__dst[0];
    }

    *(&__dst[0] + 1) = v18;
    operator delete(v20);
  }
}

void sub_A46B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a26);
    sub_A473F0(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a26);
  sub_A473F0(&a16);
  _Unwind_Resume(a1);
}

void sub_A46B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a26);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a26);
  _Unwind_Resume(a1);
}

void sub_A46BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
    sub_A473F0(&a13);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xA46C04);
}

void sub_A46C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A473F0(va);
  _Unwind_Resume(a1);
}

void sub_A46C14(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a1 + 4232) = 0u;
  *(a1 + 4248) = 0u;
  *(a1 + 4216) = 0u;
  if (sub_C80120(a2))
  {
    sub_A47464(a1, a2);
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v11);
    sub_4A5C(&v11, "Inconsistent nearby payment method lookup parameters provided to payment method lookup module; failing solution.", 112);
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
      if (v7 - v16 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v6 = 0;
        HIBYTE(v10) = 0;
LABEL_15:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__dst);
        }

        if (v19 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v13);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_20;
      }

      v8 = v14;
      v6 = v15 - v14;
      if ((v15 - v14) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_15;
  }

LABEL_20:
  sub_D4F488(1, a3);
}

void sub_A471AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a21);
  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A47260(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
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
  *(v6 + 32) = *(a2 + 32);
  v7 = 40 * v2 + 40;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = *(v11 + 1);
      *(v12 + 24) = v11[3];
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0;
      *(v12 + 32) = *(v11 + 32);
      v11 += 5;
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[1];
      if (v13)
      {
        v8[2] = v13;
        operator delete(v13);
      }

      v8 += 5;
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

char **sub_A473F0(char **a1)
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
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_A47594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A475B0(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_7E974((a1 + 4264));
    operator new();
  }

  return 0;
}

void sub_A4773C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A47758(uint64_t a1)
{
  v2 = *(a1 + 584);
  if (v2 != -1)
  {
    (off_2670740[v2])(&v4, a1);
  }

  *(a1 + 584) = -1;
  return a1;
}

void sub_A4841C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_A4863C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3B889C(&a9);
  sub_1F1A8(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_A48684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v45);
  if (!sub_C83E0C(a2))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_36:
      *a3 = 0;
      *(a3 + 8) = 1;
      *(a3 + 16) = &off_2669FE0;
      return;
    }

    sub_19594F8(v42);
    sub_4A5C(v42, "Inconsistent request provided to schedule lookup module; failing request.", 73);
    if ((LOBYTE(v44[5].f64[0]) & 0x10) != 0)
    {
      v18 = v44[4].f64[1];
      if (*&v44[4].f64[1] < *&v44[2].f64[0])
      {
        v44[4].f64[1] = v44[2].f64[0];
        v18 = v44[2].f64[0];
      }

      v19 = v44[1].f64[1];
      v16 = *&v18 - *&v44[1].f64[1];
      if (*&v18 - *&v44[1].f64[1] > 0x7FFFFFFFFFFFFFF7uLL)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((LOBYTE(v44[5].f64[0]) & 8) == 0)
      {
        v16 = 0;
        HIBYTE(v28) = 0;
LABEL_31:
        *(&__dst + v16) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(*&__dst);
        }

        if (SHIBYTE(v44[4].f64[0]) < 0)
        {
          operator delete(*&v44[3].f64[0]);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_36;
      }

      v19 = v44[0].f64[0];
      v16 = *&v44[1].f64[0] - *&v44[0].f64[0];
      if (*&v44[1].f64[0] - *&v44[0].f64[0] > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v28) = v16;
    if (v16)
    {
      memmove(&__dst, *&v19, v16);
    }

    goto LABEL_31;
  }

  v42[0] = 0;
  v42[1] = 0;
  v43.__locale_ = 0;
  sub_CC7424(v44);
  v6 = *(a2 + 1624);
  for (i = *(a2 + 1632); v6 != i; v6 += 592)
  {
    sub_A48E58(a1, a2, v6, &__dst);
    v8 = v42[1];
    if (v42[1] >= v43.__locale_)
    {
      v15 = sub_A4A51C(v42, &__dst);
    }

    else
    {
      v9 = __dst;
      *(v42[1] + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = v9;
      *(v8 + 8) = v28;
      *(v8 + 3) = v29;
      v28 = 0uLL;
      *(v8 + 5) = 0;
      *(v8 + 6) = 0;
      *(v8 + 2) = v30;
      *(v8 + 6) = v31;
      *(v8 + 7) = 0;
      v29 = 0;
      v30 = 0uLL;
      v31 = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 56) = v32;
      v32 = 0uLL;
      *(v8 + 9) = v33;
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      *(v8 + 12) = 0;
      *(v8 + 5) = v34;
      *(v8 + 12) = v35;
      v33 = 0;
      v34 = 0uLL;
      v35 = 0;
      *(v8 + 26) = v36;
      v10 = v37;
      v37 = 0;
      *(v8 + 14) = v10;
      *(v8 + 15) = v38;
      v38 = 0;
      v11 = v39;
      *(v8 + 16) = v39;
      v12 = v40;
      *(v8 + 17) = v40;
      *(v8 + 36) = v41;
      if (v12)
      {
        v13 = *(v11 + 8);
        v14 = *(v8 + 15);
        if ((v14 & (v14 - 1)) != 0)
        {
          if (v13 >= v14)
          {
            v13 %= v14;
          }
        }

        else
        {
          v13 &= v14 - 1;
        }

        *(v10 + 8 * v13) = v8 + 128;
        v39 = 0;
        v40 = 0;
      }

      v15 = v8 + 152;
    }

    v42[1] = v15;
    sub_A4A778(&__dst);
    *(a1 + 4272) = 0x3FF0000000000000;
    sub_CC74A0(v44, (a1 + 4240));
  }

  if (sub_C871E8(a2, v42))
  {
    v44[6].f64[1] = sub_7EA60(v45);
    *a3 = 1;
    *(a3 + 8) = *v42;
    *(a3 + 24) = v43;
    memcpy((a3 + 32), v44, 0x220uLL);
    return;
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_52;
  }

  sub_19594F8(&__dst);
  sub_4A5C(&__dst, "Inconsistent response computed whilst processing schedule lookup; failing solution.", 83);
  if ((v36 & 0x10) != 0)
  {
    v20 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v20 = v32;
    }

    v21 = v31;
    v17 = v20 - v31;
    if (v20 - v31 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

LABEL_42:
    if (v17 >= 0x17)
    {
      operator new();
    }

    v26 = v17;
    if (v17)
    {
      memmove(&v25, v21, v17);
    }

    goto LABEL_47;
  }

  if ((v36 & 8) != 0)
  {
    v21 = v29;
    v17 = *(&v30 + 1) - v29;
    if (*(&v30 + 1) - v29 > 0x7FFFFFFFFFFFFFF7uLL)
    {
      goto LABEL_59;
    }

    goto LABEL_42;
  }

  v17 = 0;
  v26 = 0;
LABEL_47:
  *(&v25 + v17) = 0;
  sub_7E854(&v25, 3u);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  std::locale::~locale(&v28 + 1);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_52:
  *a3 = 0;
  *(a3 + 8) = 3;
  *(a3 + 16) = &off_2669FE0;
  v22 = v42[0];
  if (v42[0])
  {
    v23 = v42[1];
    v24 = v42[0];
    if (v42[1] != v42[0])
    {
      do
      {
        v23 = sub_A4A778(v23 - 19);
      }

      while (v23 != v22);
      v24 = v42[0];
    }

    v42[1] = v22;
    operator delete(v24);
  }
}

void sub_A48D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A4A4C0(&a48);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A4A4C0(&a48);
  _Unwind_Resume(a1);
}

void sub_A48DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
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

void sub_A48DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_A4A4C0(va);
  _Unwind_Resume(a1);
}

void sub_A48E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_A4A4C0(va);
  _Unwind_Resume(a1);
}

void sub_A48E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_A4A778(&a12);
  sub_A4A4C0(va);
  _Unwind_Resume(a1);
}

void sub_A48E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_A4A4C0(va);
  _Unwind_Resume(a1);
}

void sub_A48E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_A4A4C0(va);
  _Unwind_Resume(a1);
}

void sub_A48E58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_CC7424(__src);
  memcpy((a1 + 4240), __src, 0x220uLL);
  v8 = *(a3 + 584);
  if (v8 < 2)
  {
    if (v8)
    {
      if (*(a1 + 1))
      {
        goto LABEL_4;
      }
    }

    else if (*a1)
    {
LABEL_4:
      sub_C8751C(__src, *(a1 + 32));
      if (sub_C8756C(__src, a3))
      {
        if (*(a2 + 20))
        {
          operator new();
        }

        if (!sub_7E7E4(2u))
        {
          goto LABEL_84;
        }

        sub_19594F8(__src);
        sub_4A5C(__src, "Schedule component not requested; skipping solution in schedule lookup module.", 78);
        if ((BYTE8(__src[6]) & 0x10) != 0)
        {
          v22 = *&__src[6];
          if (*&__src[6] < *(&__src[3] + 1))
          {
            *&__src[6] = *(&__src[3] + 1);
            v22 = *(&__src[3] + 1);
          }

          v23 = &__src[3];
        }

        else
        {
          if ((BYTE8(__src[6]) & 8) == 0)
          {
            v16 = 0;
            v26 = 0;
LABEL_79:
            *(&__p + v16) = 0;
            sub_7E854(&__p, 2u);
            if (v26 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(__src[5]) < 0)
            {
              operator delete(*(&__src[4] + 1));
            }

            std::locale::~locale(&__src[1]);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_84:
            v14 = a4;
            v15 = 0;
            goto LABEL_68;
          }

          v23 = &__src[1] + 1;
          v22 = *(&__src[2] + 1);
        }

        v24 = *v23;
        v16 = v22 - *v23;
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v16 >= 0x17)
        {
          operator new();
        }

        v26 = v22 - *v23;
        if (v16)
        {
          memmove(&__p, v24, v16);
        }

        goto LABEL_79;
      }

      if (!sub_7E7E4(1u))
      {
        goto LABEL_67;
      }

      sub_19594F8(__src);
      sub_4A5C(__src, "Place request parameters do not conform to partial data requirements; failing solution.", 87);
      if ((BYTE8(__src[6]) & 0x10) != 0)
      {
        v19 = *&__src[6];
        if (*&__src[6] < *(&__src[3] + 1))
        {
          *&__src[6] = *(&__src[3] + 1);
          v19 = *(&__src[3] + 1);
        }

        v20 = &__src[3];
      }

      else
      {
        if ((BYTE8(__src[6]) & 8) == 0)
        {
          v11 = 0;
          v26 = 0;
LABEL_61:
          *(&__p + v11) = 0;
          sub_7E854(&__p, 1u);
          goto LABEL_62;
        }

        v20 = &__src[1] + 1;
        v19 = *(&__src[2] + 1);
      }

      v21 = *v20;
      v11 = v19 - *v20;
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      v26 = v19 - *v20;
      if (v11)
      {
        memmove(&__p, v21, v11);
      }

      goto LABEL_61;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_67:
      v14 = a4;
      v15 = 17;
      goto LABEL_68;
    }

    sub_19594F8(__src);
    sub_4A5C(__src, "Request disabled in schedule lookup configuration; skipping solution in schedule lookup module.", 95);
    if ((BYTE8(__src[6]) & 0x10) != 0)
    {
      v17 = *&__src[6];
      if (*&__src[6] < *(&__src[3] + 1))
      {
        *&__src[6] = *(&__src[3] + 1);
        v17 = *(&__src[3] + 1);
      }

      v18 = *&__src[3];
      v10 = v17 - *&__src[3];
      if ((v17 - *&__src[3]) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if ((BYTE8(__src[6]) & 8) == 0)
      {
        v10 = 0;
        v26 = 0;
LABEL_48:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 2u);
LABEL_62:
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__src[5]) < 0)
        {
          operator delete(*(&__src[4] + 1));
        }

        std::locale::~locale(&__src[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_67;
      }

      v18 = *(&__src[1] + 1);
      v10 = *(&__src[2] + 1) - *(&__src[1] + 1);
      if (*(&__src[2] + 1) - *(&__src[1] + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_50:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v26 = v10;
    if (v10)
    {
      memmove(&__p, v18, v10);
    }

    goto LABEL_48;
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(__src);
    sub_4A5C(__src, "Unknown type of place request parameters provided; skipping solution in schedule lookup module.", 95);
    if ((BYTE8(__src[6]) & 0x10) != 0)
    {
      v12 = *&__src[6];
      if (*&__src[6] < *(&__src[3] + 1))
      {
        *&__src[6] = *(&__src[3] + 1);
        v12 = *(&__src[3] + 1);
      }

      v13 = *&__src[3];
      v9 = v12 - *&__src[3];
      if ((v12 - *&__src[3]) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if ((BYTE8(__src[6]) & 8) == 0)
      {
        v9 = 0;
        v26 = 0;
LABEL_28:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 2u);
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__src[5]) < 0)
        {
          operator delete(*(&__src[4] + 1));
        }

        std::locale::~locale(&__src[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v13 = *(&__src[1] + 1);
      v9 = *(&__src[2] + 1) - *(&__src[1] + 1);
      if (*(&__src[2] + 1) - *(&__src[1] + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_39:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v26 = v9;
    if (v9)
    {
      memmove(&__p, v13, v9);
    }

    goto LABEL_28;
  }

LABEL_33:
  v14 = a4;
  v15 = 1;
LABEL_68:
  sub_D50D4C(v15, v14);
}

void sub_A499E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a49);
  sub_A4A778(&a15);
  sub_A4AB5C(&a34);
  sub_A4AD48(&STACK[0x230]);
  sub_A4ADAC(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

void **sub_A4A4C0(void **a1)
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
        v3 = sub_A4A778(v3 - 19);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_A4A51C(void **a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_A4A680(v6, a2);
  v7 = (152 * v2 + 152);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_A4A680(v12, v11);
      v11 += 152;
      v12 += 152;
    }

    while (v11 != v9);
    do
    {
      sub_A4A778(v8);
      v8 += 152;
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

uint64_t sub_A4A680(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = *(a2 + 32);
  *(result + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = *(a2 + 56);
  *(result + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  v4 = *(a2 + 128);
  v2 = a2 + 128;
  v3 = v4;
  *(result + 80) = *(v2 - 48);
  *(result + 96) = *(v2 - 32);
  *(v2 - 40) = 0;
  *(v2 - 32) = 0;
  *(v2 - 48) = 0;
  *(result + 128) = v4;
  *(result + 104) = *(v2 - 24);
  v5 = *(v2 - 16);
  *(result + 120) = *(v2 - 8);
  *(v2 - 16) = 0;
  *(result + 112) = v5;
  *(v2 - 8) = 0;
  v6 = *(v2 + 8);
  *(result + 136) = v6;
  *(result + 144) = *(v2 + 16);
  if (v6)
  {
    v7 = *(v3 + 8);
    v8 = *(result + 120);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v7 %= v8;
      }
    }

    else
    {
      v7 &= v8 - 1;
    }

    *(v5 + 8 * v7) = result + 128;
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  return result;
}

void *sub_A4A778(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2670768[v4])(&v28, v2 + 5);
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

  v5 = a1[14];
  a1[14] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = a1[8];
    v9 = a1[7];
    if (v8 != v7)
    {
      do
      {
        v8 = sub_93C358(v8 - 15);
      }

      while (v8 != v7);
      v9 = a1[7];
    }

    a1[8] = v7;
    operator delete(v9);
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = a1[5];
    v12 = a1[4];
    if (v11 != v10)
    {
      v13 = a1[5];
      do
      {
        v15 = *(v13 - 48);
        v13 -= 48;
        v14 = v15;
        if (v15)
        {
          *(v11 - 40) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = a1[4];
    }

    a1[5] = v10;
    operator delete(v12);
  }

  v16 = a1[1];
  if (v16)
  {
    v17 = a1[2];
    v18 = a1[1];
    if (v17 != v16)
    {
      v19 = a1[2];
      do
      {
        v22 = *(v19 - 4);
        v19 -= 4;
        v21 = v22;
        if (v22)
        {
          v23 = *(v17 - 3);
          v20 = v21;
          if (v23 != v21)
          {
            do
            {
              v24 = *(v23 - 3);
              if (v24)
              {
                *(v23 - 2) = v24;
                operator delete(v24);
              }

              v25 = v23 - 56;
              v26 = *(v23 - 7);
              if (v26)
              {
                *(v23 - 6) = v26;
                operator delete(v26);
              }

              v23 -= 56;
            }

            while (v25 != v21);
            v20 = *v19;
          }

          *(v17 - 3) = v21;
          operator delete(v20);
        }

        v17 = v19;
      }

      while (v19 != v16);
      v18 = a1[1];
    }

    a1[2] = v16;
    operator delete(v18);
  }

  return a1;
}

uint64_t sub_A4A958(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_93B37C((a1 + 8), (a2 + 8));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_93B9CC(a1 + 56, *(a2 + 56), *(a2 + 64), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v7 = *(a2 + 80);
  v6 = *(a2 + 88);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = *(a2 + 104);
  sub_5ADDC(a1 + 112, a2 + 112);
  return a1;
}

void sub_A4AAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v10 + 40) = v11;
  sub_93C664(&a9);
  sub_93A4BC(v9);
  _Unwind_Resume(a1);
}

void sub_A4AB00(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    *(v3 + 88) = v7;
    operator delete(v7);
  }

  sub_93A460(v4);
  sub_93A3E8(v2);
  sub_93A4BC(v1);
  _Unwind_Resume(a1);
}

void sub_A4AB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_93C664(&a9);
  sub_93A4BC(v9);
  _Unwind_Resume(a1);
}

char **sub_A4AB5C(char **a1)
{
  v2 = a1[12];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2670768[v4])(&v25, v2 + 5);
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

  v5 = a1[10];
  a1[10] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = a1[7];
    v8 = a1[6];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 3);
        if (v9)
        {
          *(v7 - 2) = v9;
          operator delete(v9);
        }

        v10 = *(v7 - 8);
        if (v10)
        {
          *(v7 - 7) = v10;
          operator delete(v10);
        }

        v11 = *(v7 - 19);
        if (v11)
        {
          *(v7 - 18) = v11;
          operator delete(v11);
        }

        v12 = *(v7 - 22);
        if (v12)
        {
          *(v7 - 21) = v12;
          operator delete(v12);
        }

        v7 -= 248;
      }

      while (v7 != v6);
      v8 = a1[6];
    }

    a1[7] = v6;
    operator delete(v8);
  }

  v13 = a1[3];
  if (v13)
  {
    v14 = a1[4];
    v15 = a1[3];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 11);
        if (v16)
        {
          *(v14 - 10) = v16;
          operator delete(v16);
        }

        v14 -= 160;
      }

      while (v14 != v13);
      v15 = a1[3];
    }

    a1[4] = v13;
    operator delete(v15);
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = a1[1];
    v19 = *a1;
    if (v18 != v17)
    {
      do
      {
        v21 = *(v18 - 4);
        if (v21)
        {
          v22 = *(v18 - 3);
          v20 = *(v18 - 4);
          if (v22 != v21)
          {
            do
            {
              v23 = *(v22 - 32);
              if (v23)
              {
                *(v22 - 24) = v23;
                operator delete(v23);
              }

              v22 -= 112;
            }

            while (v22 != v21);
            v20 = *(v18 - 4);
          }

          *(v18 - 3) = v21;
          operator delete(v20);
        }

        v18 -= 112;
      }

      while (v18 != v17);
      v19 = *a1;
    }

    a1[1] = v17;
    operator delete(v19);
  }

  return a1;
}

void *sub_A4AD48(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_A4ADAC(uint64_t a1)
{
  sub_A325C4(a1 + 1624);
  v2 = *(a1 + 1600);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 1584);
  *(a1 + 1584) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (*(a1 + 1576) == 1)
  {
    sub_A327E4((a1 + 1464));
    sub_A327E4((a1 + 1352));
    if ((*(a1 + 1055) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 1031) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_A327E4((a1 + 1352));
    if ((*(a1 + 1055) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*(a1 + 1032));
  if ((*(a1 + 1031) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 1008));
  if ((*(a1 + 399) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 375) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    operator delete(*(a1 + 352));
    v5 = *a1;
    if (!*a1)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_16:
  operator delete(*(a1 + 376));
  if (*(a1 + 375) < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v5 = *a1;
  if (*a1)
  {
LABEL_11:
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

double sub_A4AEA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    v7 = a4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF27A0(v11, a2, a3, v7);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4AF34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    v7 = a4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF2EF0(v11, a2, a3, v7);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 27) == 1)
  {
    v12[7] = v4;
    v12[8] = v5;
    v7 = a4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v12, a1 + 40);
    sub_BF37B8(v12, a2, a3, v7, v10);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4B05C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    v7 = a4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF3B90(v11, a2, a3, v7);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4B0F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    v7 = a4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF4124(v11, a2, a3, v7);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

double sub_A4B184(uint64_t a1, uint64_t a2, __n128 **a3, uint64_t a4)
{
  if (*(a1 + 27) == 1)
  {
    v11[7] = v4;
    v11[8] = v5;
    v7 = a4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v11, a1 + 40);
    sub_BF44D4(v11, a2, a3, v7);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4464);
    *(a1 + 4464) = result;
  }

  return result;
}

void sub_A4B308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A4B324(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }

  return 0;
}

void sub_A4B45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4B56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4B588(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 5) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4B680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4B69C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 6) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4B794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A4B7B0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 7) == 1)
  {
    v10[5] = v3;
    v10[6] = v4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v10, a1 + 40);
    sub_BC9028(v10, a2, a3, v8);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4376);
    *(a1 + 4376) = result;
  }

  return result;
}

void sub_A4B834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4B93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4B958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 9) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4BA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4BA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 10) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4BB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4BBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 11) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4BCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4BCC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4BDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4BDDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 13) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4BEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4BEF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4BFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4C004(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4C130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 14) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A4C24C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 18) == 1)
  {
    v8 = v2;
    v9 = v3;
    sub_7E974(a1 + 4784);
    nullsub_1();
    sub_C1A4A8(&v7, a2);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4384);
    *(a1 + 4384) = result;
  }

  return result;
}

void sub_A4C2C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 15) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4C3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 19) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4C4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 20) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4C604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 21) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4C720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 22) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_A4D340(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A4C874(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4C960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A4C97C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4CA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A4CA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 25) == 1)
  {
    v9[5] = v3;
    v9[6] = v4;
    sub_7E974(a1 + 4784);
    sub_501CE8(v9, a1 + 40);
    sub_BC7F54(v9, a2, a3);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4432);
    *(a1 + 4432) = result;
  }

  return result;
}

double sub_A4CB08(uint64_t a1, uint64_t a2)
{
  sub_7E974(a1 + 4784);
  sub_BD9EC0(&v5, a2);
  result = sub_7EA60(a1 + 4784) + *(a1 + 4440);
  *(a1 + 4440) = result;
  return result;
}

void sub_A4CB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 26) == 1)
  {
    operator new();
  }
}

void sub_A4CEA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28) == 1)
  {
    sub_7E974(a1 + 4784);
    operator new();
  }
}

void sub_A4D120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_A31E68(&a22);
  sub_A31E68(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_A4D164(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3) == 1)
  {
    v7[6] = v2;
    v7[7] = v3;
    sub_7E974(a1 + 4784);
    sub_BA538C(v7, *(a1 + 32), a1 + 40);
    sub_BA54BC(v7, a2);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4480);
    *(a1 + 4480) = result;
  }

  return result;
}

double sub_A4D1E4(uint64_t a1, int *a2, uint64_t a3)
{
  if (*(a1 + 29) == 1)
  {
    v9[5] = v3;
    v9[6] = v4;
    sub_7E974(a1 + 4784);
    sub_C17B84(v9, *(a1 + 32));
    sub_C17BB4(v9, a2, a3);
    result = sub_7EA60(a1 + 4784) + *(a1 + 4384);
    *(a1 + 4384) = result;
  }

  return result;
}

void sub_A4D268(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 30) == 1)
  {
    sub_7E974(a1 + 4784);
    sub_BDE76C(a2);
  }
}

void sub_A4D2CC(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_7E9A4(v10);
  sub_A50170((a1 + 40), a2, a3, a4, a5);
  *(a1 + 4504) = sub_7EA60(v10);
}

uint64_t sub_A4D340(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A4D38C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_A4D3D8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  sub_5F328(a8 + 96);
  *(a8 + 20) = *(a3 + 12);
  if (*(a4 + 192) != *(a4 + 200))
  {
    operator new();
  }

  v31 = *(a8 + 48);
  if (v31)
  {
    *(a8 + 56) = v31;
    operator delete(v31);
  }

  *(a8 + 48) = 0;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  v16 = a2;
  v17 = *(a4 + 8);
  for (i = *(a4 + 16); v17 != i; v17 += 37)
  {
    v48[0] = 0;
    sub_A4D898(&v35, a1, v16, v17, v48, a7);
    if (v47 == 1)
    {
      v19 = *(a8 + 32);
      if (v19 >= *(a8 + 40))
      {
        v20 = sub_A5AE5C((a8 + 24), &v35);
      }

      else
      {
        sub_A31084(*(a8 + 32), &v35);
        v20 = (v19 + 232);
      }

      *(a8 + 32) = v20;
      if (v47)
      {
        v21 = __p;
        if (__p)
        {
          v22 = v46;
          v23 = __p;
          if (v46 != __p)
          {
            do
            {
              v24 = *(v22 - 3);
              if (v24)
              {
                v25 = *(v22 - 2);
                v26 = *(v22 - 3);
                if (v25 != v24)
                {
                  do
                  {
                    v27 = v25 - 32;
                    v28 = *(v25 - 2);
                    if (v28 != -1)
                    {
                      (off_26708A8[v28])(v48, v25 - 32);
                    }

                    *(v25 - 2) = -1;
                    v25 -= 32;
                  }

                  while (v27 != v24);
                  v26 = *(v22 - 3);
                }

                *(v22 - 2) = v24;
                operator delete(v26);
              }

              v29 = *(v22 - 8);
              if (v29 != -1)
              {
                (off_26708A8[v29])(v48, v22 - 7);
              }

              v30 = v22 - 10;
              *(v22 - 8) = -1;
              if (*(v22 - 57) < 0)
              {
                operator delete(*v30);
              }

              v22 -= 10;
            }

            while (v30 != v21);
            v23 = __p;
          }

          v46 = v21;
          operator delete(v23);
          v16 = a2;
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        v48[0] = &v36;
        sub_A30A34(v48);
      }
    }
  }

  if (a8 + 72 != a4 + 216)
  {
    sub_31F64((a8 + 72), *(a4 + 216), *(a4 + 224), (*(a4 + 224) - *(a4 + 216)) >> 3);
  }

  sub_A5D870(a1, v16, a4 + 240, v11, v12, v13, v14, v15);
}

void sub_A4D898(_BYTE *a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a4[25] == a4[26])
  {
    *a1 = 0;
    a1[232] = 0;
    return;
  }

  v8 = a4;
  v249 = 0x8000000080000000;
  v250 = 0;
  v251 = 0x8000000080000000;
  v252 = 0;
  v253 = 0u;
  *__src = 0u;
  v255 = 0u;
  *v256 = 0u;
  *v257 = 0u;
  v258 = 0u;
  v259 = 0;
  v260 = -1;
  v261 = 0;
  v263 = 0;
  v262 = 0;
  v265 = 0;
  v264 = 0;
  v267 = 0;
  v266 = 0;
  v268 = 0x3FF0000000000000;
  v269[0] = 0;
  v270 = 0;
  v269[1] = 0;
  v244 = 0;
  v245 = sub_A51E58(a4, 1);
  v246 = v10;
  v247 = sub_A520DC(v8);
  v248 = v11;
  v12 = *a5;
  if (*a5)
  {
    v13 = *(v12 + 24);
    v250 = *(v12 + 32);
    v249 = v13;
    v14 = (v12 + 36);
  }

  else
  {
    v14 = &v247;
    v249 = v245;
    v250 = v246;
  }

  v15 = *v14;
  v252 = *(v14 + 4);
  v251 = v15;
  v16 = v8[25];
  v17 = *v16;
  if (*(*v16 + 160) != 1)
  {
    sub_5AF20();
  }

  v210 = v8;
  v214 = a2;
  if (*(v17 + 8) != *(v17 + 4) || (v18 = v8[26], v18 - v16 == 72))
  {
    sub_A521F8(&v226, a2, a3, v17, a6, &v244);
    if ((v229 & 1) == 0)
    {
      *a1 = 0;
      a1[232] = 0;
      goto LABEL_316;
    }

    memset(v242, 0, sizeof(v242));
    *v241 = 0u;
    v243[0] = 1;
    *&v243[4] = 0x8000000080000000;
    *&v243[12] = 0;
    v239 = 0;
    __p = 0u;
    memset(v237, 0, sizeof(v237));
    v236 = 0u;
    memset(v235, 0, sizeof(v235));
    *v234 = 0u;
    v240[0] = 1;
    *&v240[4] = 0x8000000080000000;
    v240[12] = 0;
    LODWORD(v233) = 0;
    sub_A55288(v234, 0, v226, v227, 0x193D4BB7E327A977 * ((v227 - v226) >> 4));
    v19 = v241[1];
    if (v241[1] >= v242[0])
    {
      v21 = sub_A55ECC(v241, &v233);
    }

    else
    {
      *v241[1] = v233;
      v19[3] = 0;
      v19[4] = 0;
      v19[1] = 0;
      v19[2] = 0;
      *(v19 + 1) = *v234;
      v19[3] = v235[0];
      *v234 = 0uLL;
      v235[0] = 0;
      v19[5] = 0;
      v19[6] = 0;
      *(v19 + 2) = *&v235[1];
      v235[1] = 0;
      v235[2] = 0;
      v19[6] = v235[3];
      v19[7] = 0;
      v19[8] = 0;
      v19[9] = 0;
      *(v19 + 7) = v236;
      v19[9] = v237[0];
      v19[10] = 0;
      v235[3] = 0;
      v236 = 0uLL;
      v237[0] = 0;
      v19[11] = 0;
      v19[12] = 0;
      *(v19 + 5) = *&v237[1];
      v237[1] = 0;
      v237[2] = 0;
      v19[12] = v237[3];
      v19[13] = 0;
      v19[14] = 0;
      v19[15] = 0;
      *(v19 + 13) = __p;
      v19[15] = v239;
      v237[3] = 0;
      __p = 0uLL;
      v239 = 0;
      v20 = *v240;
      *(v19 + 133) = *&v240[5];
      v19[16] = v20;
      v21 = v19 + 18;
    }

    v241[1] = v21;
    v22 = *(&v253 + 1);
    if (*(&v253 + 1) >= __src[0])
    {
      v24 = sub_A5624C(&v253, v241);
    }

    else
    {
      *(*(&v253 + 1) + 16) = 0;
      *(v22 + 24) = 0;
      *v22 = 0;
      *(v22 + 8) = 0;
      *v22 = *v241;
      *(v22 + 16) = v242[0];
      v241[0] = 0;
      v241[1] = 0;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0;
      *(v22 + 24) = *&v242[1];
      *(v22 + 40) = v242[3];
      memset(v242, 0, sizeof(v242));
      v23 = *v243;
      *(v22 + 54) = *&v243[6];
      *(v22 + 48) = v23;
      v24 = v22 + 64;
    }

    *(&v253 + 1) = v24;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v237[1])
    {
      v237[2] = v237[1];
      operator delete(v237[1]);
    }

    if (v236)
    {
      *(&v236 + 1) = v236;
      operator delete(v236);
    }

    if (v235[1])
    {
      v235[2] = v235[1];
      operator delete(v235[1]);
    }

    v25 = v234[0];
    if (v234[0])
    {
      v26 = v234[1];
      v27 = v234[0];
      if (v234[1] != v234[0])
      {
        do
        {
          v28 = v26 - 1136;
          v29 = *(v26 - 2);
          if (v29 != -1)
          {
            (off_26707C0[v29])(v222, v26 - 1136);
          }

          *(v26 - 2) = -1;
          v26 -= 1136;
        }

        while (v28 != v25);
        v27 = v234[0];
      }

      v234[1] = v25;
      operator delete(v27);
    }

    if (v242[1])
    {
      v242[2] = v242[1];
      operator delete(v242[1]);
    }

    v30 = v241[0];
    if (v241[0])
    {
      v31 = v241[1];
      v32 = v241[0];
      if (v241[1] != v241[0])
      {
        do
        {
          v31 = sub_9FFEB4(v31 - 18);
        }

        while (v31 != v30);
        v32 = v241[0];
      }

      v241[1] = v30;
      operator delete(v32);
    }

    if (v229)
    {
      v33 = v226;
      if (v226)
      {
        v34 = v227;
        v35 = v226;
        if (v227 != v226)
        {
          do
          {
            v36 = v34 - 1136;
            v37 = *(v34 - 2);
            if (v37 != -1)
            {
              (off_26707C0[v37])(&v233, v34 - 1136);
            }

            *(v34 - 2) = -1;
            v34 -= 1136;
          }

          while (v36 != v33);
          v35 = v226;
        }

        v227 = v33;
        operator delete(v35);
      }
    }

    v16 = v8[25];
    v18 = v8[26];
  }

  v38 = v16 + 9;
  v209 = a1;
  if (v18 == v16 + 9)
  {
    goto LABEL_248;
  }

  while (2)
  {
    if (*(v38 + 24) == 1)
    {
      goto LABEL_52;
    }

    memset(v242, 0, sizeof(v242));
    *v241 = 0u;
    *&v243[4] = 0x8000000080000000;
    *&v243[12] = 0;
    v243[0] = *(v38 + 56);
    *&v243[4] = *(v38 + 60);
    v243[12] = *(v38 + 68);
    v243[13] = *(v38 + 70);
    v40 = v38[4];
    v39 = v38[5];
    v212 = v38;
    if (v40 != v39)
    {
      v41 = 0;
      v217 = v39;
      do
      {
        while (1)
        {
          v42 = *v40;
          v43 = *(v40 + 4);
          v45 = *(v40 + 8);
          v44 = *(v40 + 12);
          v46 = *(v40 + 16);
          v47 = *(v40 + 24);
          v48 = *(v40 + 32);
          if (v41 >= v242[3])
          {
            break;
          }

          *v41 = v42;
          v41[1] = v43;
          v41[2] = v45;
          v41[3] = v44;
          v41[4] = v46;
          *(v41 + 3) = v47;
          *(v41 + 32) = v48;
          *(v41 + 33) = v233;
          v41[9] = *(&v233 + 3);
          v41 += 10;
          v242[2] = v41;
          v40 += 40;
          if (v40 == v39)
          {
            goto LABEL_70;
          }
        }

        v49 = v242[1];
        v50 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v242[1]) >> 3);
        v51 = v50 + 1;
        if (v50 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        if (0x999999999999999ALL * ((v242[3] - v242[1]) >> 3) > v51)
        {
          v51 = 0x999999999999999ALL * ((v242[3] - v242[1]) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v242[3] - v242[1]) >> 3) >= 0x333333333333333)
        {
          v52 = 0x666666666666666;
        }

        else
        {
          v52 = v51;
        }

        if (v52)
        {
          if (v52 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v53 = v41;
        v54 = 8 * ((v41 - v242[1]) >> 3);
        *v54 = v42;
        *(v54 + 4) = v43;
        *(v54 + 8) = v45;
        *(v54 + 12) = v44;
        *(v54 + 16) = v46;
        *(v54 + 24) = v47;
        *(v54 + 32) = v48;
        v41 = (40 * v50 + 40);
        v55 = (40 * v50 - (v53 - v49));
        memcpy((v54 - (v53 - v49)), v49, v53 - v49);
        v242[1] = v55;
        *&v242[2] = v41;
        if (v49)
        {
          operator delete(v49);
        }

        v39 = v217;
        v242[2] = v41;
        v40 += 40;
      }

      while (v40 != v217);
    }

LABEL_70:
    v56 = *v212;
    v57 = v214;
    if (*v212 == v212[1])
    {
LABEL_208:
      v140 = *(&v253 + 1);
      if (*(&v253 + 1) >= __src[0])
      {
        v38 = v212;
        v8 = v210;
        *(&v253 + 1) = sub_A5B49C(&v253, v241);
        v141 = 1;
        v142 = v242[1];
        if (!v242[1])
        {
          goto LABEL_213;
        }
      }

      else
      {
        sub_A314BC(*(&v253 + 1), v241);
        v38 = v212;
        v8 = v210;
        *(&v253 + 1) = v140 + 64;
        v141 = 1;
        v142 = v242[1];
        if (!v242[1])
        {
          goto LABEL_213;
        }
      }

      goto LABEL_212;
    }

    v211 = v212 + 9;
    while (2)
    {
      if (*(v56 + 160))
      {
        sub_5AF20();
      }

      v239 = 0;
      __p = 0u;
      memset(v237, 0, sizeof(v237));
      v236 = 0u;
      memset(v235, 0, sizeof(v235));
      *v234 = 0u;
      v240[0] = 1;
      *&v240[4] = 0x8000000080000000;
      v240[12] = 0;
      LODWORD(v233) = v56 != *v212;
      v226 = 0;
      v227 = 0;
      v228 = 0;
      v215 = v56;
      sub_A81424(v57, v56, v222);
      v60 = v222[0];
      v59 = v222[1];
      v213 = v222[1];
      if (v222[0] == v222[1])
      {
        if (!v222[0])
        {
          goto LABEL_79;
        }

LABEL_78:
        v222[1] = v60;
        operator delete(v60);
        goto LABEL_79;
      }

      do
      {
        while (1)
        {
          v64 = v244++;
          v216 = *v60;
          v65 = v60[3];
          v218 = v60[2];
          v66 = v215[11];
          v221 = v60[4];
          if (v66 != -1)
          {
            break;
          }

          v75 = v60[3];
          v67 = sub_A56700(v57 + 523, v60, v65, 0x7FFFFFFF);
          v77 = v76;
          v70 = sub_A56A5C(v57 + 523, v60, v60[4], 0x7FFFFFFF);
          LOWORD(v69) = HIBYTE(v77);
          v68 = v77;
          v71 = v78;
          LOWORD(v72) = v79;
          v65 = v75;
          v74 = v227;
          v73 = v228;
          if (v227 >= v228)
          {
            goto LABEL_87;
          }

LABEL_82:
          *v74 = v64;
          *(v74 + 1) = v216;
          v74[3] = v218;
          v74[4] = v65;
          v74[5] = v221;
          *(v74 + 3) = v67;
          *(v74 + 16) = v68 | (v69 << 8);
          *(v74 + 9) = v70;
          *(v74 + 22) = v71 | (v72 << 8);
          v74[12] = v66;
          *(v74 + 26) = 0;
          *(v74 + 56) = 0;
          *(v74 + 60) = 0;
          v74[282] = 0;
          v57 = v214;
          v227 = v74 + 284;
          v60 += 5;
          if (v60 == v59)
          {
            goto LABEL_109;
          }
        }

        v67 = *(v215 + 1);
        v68 = *(v215 + 8);
        v69 = HIBYTE(*(v215 + 8));
        v70 = *(v215 + 5);
        v71 = *(v215 + 14);
        v72 = HIBYTE(*(v215 + 14));
        v74 = v227;
        v73 = v228;
        if (v227 < v228)
        {
          goto LABEL_82;
        }

LABEL_87:
        v80 = v226;
        v81 = v74 - v226;
        v82 = 0x193D4BB7E327A977 * ((v74 - v226) >> 4) + 1;
        if (v82 > 0x39B0AD12073615)
        {
          sub_1794();
        }

        v83 = 0x193D4BB7E327A977 * ((v73 - v226) >> 4);
        if (2 * v83 > v82)
        {
          v82 = 2 * v83;
        }

        if (v83 >= 0x1CD85689039B0ALL)
        {
          v84 = 0x39B0AD12073615;
        }

        else
        {
          v84 = v82;
        }

        if (v84)
        {
          if (v84 <= 0x39B0AD12073615)
          {
            operator new();
          }

          sub_1808();
        }

        v85 = 16 * ((v74 - v226) >> 4);
        *v85 = v64;
        *(v85 + 4) = v216;
        *(v85 + 12) = v218;
        *(v85 + 16) = v65;
        *(v85 + 20) = v221;
        *(v85 + 24) = v67;
        *(v85 + 32) = v68 | (v69 << 8);
        *(v85 + 36) = v70;
        *(v85 + 44) = v71 | (v72 << 8);
        *(v85 + 48) = v66;
        *(v85 + 52) = 0;
        *(v85 + 56) = 0;
        *(v85 + 60) = 0;
        v86 = (v85 - v81);
        *(v85 + 1128) = 0;
        if (v80 != v74)
        {
          v87 = v85 - v81;
          v88 = v80;
          do
          {
            *v87 = 0;
            *(v87 + 1128) = -1;
            v89 = v88[282];
            if (v89 != -1)
            {
              v271[0] = v87;
              (off_26707E8[v89])(v271, v88);
              *(v87 + 1128) = v89;
            }

            v88 += 284;
            v87 += 1136;
          }

          while (v88 != v74);
          do
          {
            v90 = v80[282];
            if (v90 != -1)
            {
              (off_26707C0[v90])(v271, v80);
            }

            v80[282] = -1;
            v80 += 284;
          }

          while (v80 != v74);
          v80 = v226;
        }

        v226 = v86;
        v227 = (v85 + 1136);
        v228 = 0;
        if (v80)
        {
          operator delete(v80);
        }

        v57 = v214;
        v59 = v213;
        v227 = (v85 + 1136);
        v60 += 5;
      }

      while (v60 != v213);
LABEL_109:
      v60 = v222[0];
      if (v222[0])
      {
        goto LABEL_78;
      }

LABEL_79:
      v61 = v226;
      v62 = v227;
      if (v226 == v227)
      {
        LOBYTE(v231[0]) = 0;
        v232 = 0;
        v63 = v209;
        if (v226)
        {
LABEL_112:
          if (v62 == v61)
          {
            v227 = v61;
            operator delete(v61);
            if (v232)
            {
              goto LABEL_119;
            }
          }

          else
          {
            do
            {
              v91 = v62 - 1136;
              v92 = *(v62 - 2);
              if (v92 != -1)
              {
                (off_26707C0[v92])(v222, v62 - 1136);
              }

              *(v62 - 2) = -1;
              v62 -= 1136;
            }

            while (v91 != v61);
            v227 = v61;
            operator delete(v226);
            if (v232)
            {
              goto LABEL_119;
            }
          }
        }

        *v63 = 0;
        v63[232] = 0;
        v8 = v210;
        v38 = v212;
        goto LABEL_221;
      }

      sub_93BED8(v231, &v226);
      v63 = v209;
      v232 = 1;
      v61 = v226;
      if (v226)
      {
        v62 = v227;
        goto LABEL_112;
      }

LABEL_119:
      v93 = v231[1];
      v94 = v231[0];
      if (v231[0] != v231[1])
      {
        v95 = *(v215 + 156);
        v96 = *(v215 + 159);
        v97 = v231[0];
        do
        {
          if (v97[282])
          {
            sub_5AF20();
          }

          *(v97 + 52) = v95;
          *(v97 + 53) = v96;
          v97 += 284;
        }

        while (v97 != v93);
      }

      sub_A55288(v234, v234[1], v94, v93, 0x193D4BB7E327A977 * ((v93 - v94) >> 4));
      if (v210[26] <= v211)
      {
LABEL_157:
        sub_A52CD0(&v226, v57, v215, 0);
        sub_9FFF9C(&v236, v226, v227, 0x6DB6DB6DB6DB6DB7 * ((v227 - v226) >> 2));
        sub_9FFF9C(&v235[1], v229, v230, 0x6DB6DB6DB6DB6DB7 * ((v230 - v229) >> 2));
        sub_A52CD0(v222, v57, v215, 1);
        if (v237[1])
        {
          v237[2] = v237[1];
          operator delete(v237[1]);
        }

        *&v237[1] = *v222;
        v237[3] = v223;
        v222[1] = 0;
        v223 = 0;
        v222[0] = 0;
        if (v224)
        {
          v225 = v224;
          operator delete(v224);
          if (v222[0])
          {
            v222[1] = v222[0];
            operator delete(v222[0]);
          }
        }

        v113 = *(v215 + 15);
        v112 = *(v215 + 16);
        if (v113 != v112)
        {
          v114 = *(&__p + 1);
          v219 = *(v215 + 16);
          do
          {
            while (1)
            {
              v115 = *v113;
              v116 = v113[1];
              v118 = v113[2];
              v117 = v113[3];
              v119 = v113[4];
              v120 = *(v113 + 3);
              v121 = *(v113 + 32);
              if (v114 >= v239)
              {
                break;
              }

              *v114 = v115;
              *(v114 + 4) = v116;
              *(v114 + 8) = v118;
              *(v114 + 12) = v117;
              *(v114 + 16) = v119;
              *(v114 + 24) = v120;
              *(v114 + 32) = v121;
              *(v114 + 33) = v222[0];
              *(v114 + 36) = *(v222 + 3);
              v114 += 40;
              *(&__p + 1) = v114;
              v113 += 10;
              if (v113 == v112)
              {
                goto LABEL_178;
              }
            }

            v122 = __p;
            v123 = 0xCCCCCCCCCCCCCCCDLL * ((v114 - __p) >> 3);
            v124 = v123 + 1;
            if (v123 + 1 > 0x666666666666666)
            {
              sub_1794();
            }

            if (0x999999999999999ALL * ((v239 - __p) >> 3) > v124)
            {
              v124 = 0x999999999999999ALL * ((v239 - __p) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v239 - __p) >> 3) >= 0x333333333333333)
            {
              v125 = 0x666666666666666;
            }

            else
            {
              v125 = v124;
            }

            if (v125)
            {
              if (v125 <= 0x666666666666666)
              {
                operator new();
              }

              sub_1808();
            }

            v126 = v114;
            v127 = 8 * ((v114 - __p) >> 3);
            *v127 = v115;
            *(v127 + 4) = v116;
            *(v127 + 8) = v118;
            *(v127 + 12) = v117;
            *(v127 + 16) = v119;
            *(v127 + 24) = v120;
            *(v127 + 32) = v121;
            v114 = 40 * v123 + 40;
            v128 = 40 * v123 - (v126 - v122);
            memcpy((v127 - (v126 - v122)), v122, v126 - v122);
            *&__p = v128;
            *(&__p + 1) = v114;
            v239 = 0;
            if (v122)
            {
              operator delete(v122);
            }

            v112 = v219;
            *(&__p + 1) = v114;
            v113 += 10;
          }

          while (v113 != v219);
        }

LABEL_178:
        v240[0] = *(v215 + 144);
        *&v240[4] = *(v215 + 37);
        v240[12] = *(v215 + 157);
        v129 = v241[1];
        if (v241[1] >= v242[0])
        {
          v130 = sub_A5B338(v241, &v233);
          v57 = v214;
        }

        else
        {
          sub_A316EC(v241[1], &v233);
          v57 = v214;
          v130 = v129 + 144;
        }

        v241[1] = v130;
        if (v229)
        {
          v230 = v229;
          operator delete(v229);
        }

        if (v226)
        {
          v227 = v226;
          operator delete(v226);
        }

        if (v232 == 1)
        {
          v131 = v231[0];
          if (v231[0])
          {
            v132 = v231[1];
            v133 = v231[0];
            if (v231[1] != v231[0])
            {
              do
              {
                v134 = v132 - 1136;
                v135 = *(v132 - 2);
                if (v135 != -1)
                {
                  (off_26707C0[v135])(&v226, v132 - 1136);
                }

                *(v132 - 2) = -1;
                v132 -= 1136;
              }

              while (v134 != v131);
              v133 = v231[0];
            }

            v231[1] = v131;
            operator delete(v133);
          }
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (v237[1])
        {
          v237[2] = v237[1];
          operator delete(v237[1]);
        }

        if (v236)
        {
          *(&v236 + 1) = v236;
          operator delete(v236);
        }

        if (v235[1])
        {
          v235[2] = v235[1];
          operator delete(v235[1]);
        }

        v136 = v234[0];
        if (v234[0])
        {
          v137 = v234[1];
          v58 = v234[0];
          if (v234[1] != v234[0])
          {
            do
            {
              v138 = v137 - 1136;
              v139 = *(v137 - 2);
              if (v139 != -1)
              {
                (off_26707C0[v139])(&v226, v137 - 1136);
              }

              *(v137 - 2) = -1;
              v137 -= 1136;
            }

            while (v138 != v136);
            v58 = v234[0];
          }

          v234[1] = v136;
          operator delete(v58);
        }

        v56 = (v215 + 42);
        if (v215 + 42 == v212[1])
        {
          goto LABEL_208;
        }

        continue;
      }

      break;
    }

    v98 = *v211 + 168 * *v215;
    if (*(v98 + 160) != 1)
    {
      sub_5AF20();
    }

    v99 = *(v98 + 20);
    v100 = HIDWORD(v99);
    if (*(v98 + 16) == HIDWORD(v99))
    {
      v101 = *(v98 + 12) == v99;
      v104 = v100 == 1 && v99 == -3 && *(v98 + 8) <= *(v98 + 4);
      if (v101)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v104 = v100 == 1 && v99 == -3 && *(v98 + 8) <= *(v98 + 4);
    }

    if (v104)
    {
      goto LABEL_157;
    }

    sub_A521F8(&v226, v57, a3, v98, a6, &v244);
    if (v229)
    {
      sub_A55288(v234, v234[1], v226, v227, 0x193D4BB7E327A977 * ((v227 - v226) >> 4));
      if (v229)
      {
        v107 = v226;
        if (v226)
        {
          v108 = v227;
          if (v227 == v226)
          {
            v109 = v226;
          }

          else
          {
            do
            {
              v110 = v108 - 1136;
              v111 = *(v108 - 2);
              if (v111 != -1)
              {
                (off_26707C0[v111])(v222, v108 - 1136);
              }

              *(v108 - 2) = -1;
              v108 -= 1136;
            }

            while (v110 != v107);
            v109 = v226;
            v227 = v107;
          }

          operator delete(v109);
        }
      }

      goto LABEL_157;
    }

    *v63 = 0;
    v63[232] = 0;
    v8 = v210;
    v38 = v212;
    if (v232)
    {
      v151 = v231[0];
      if (v231[0])
      {
        v152 = v231[1];
        v153 = v231[0];
        if (v231[1] != v231[0])
        {
          do
          {
            v154 = v152 - 1136;
            v155 = *(v152 - 2);
            if (v155 != -1)
            {
              (off_26707C0[v155])(&v226, v152 - 1136);
            }

            *(v152 - 2) = -1;
            v152 -= 1136;
          }

          while (v154 != v151);
          v153 = v231[0];
        }

        v231[1] = v151;
        operator delete(v153);
      }
    }

LABEL_221:
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v237[1])
    {
      v237[2] = v237[1];
      operator delete(v237[1]);
    }

    if (v236)
    {
      *(&v236 + 1) = v236;
      operator delete(v236);
    }

    if (v235[1])
    {
      v235[2] = v235[1];
      operator delete(v235[1]);
    }

    v146 = v234[0];
    if (v234[0])
    {
      v147 = v234[1];
      v148 = v234[0];
      if (v234[1] != v234[0])
      {
        do
        {
          v149 = v147 - 1136;
          v150 = *(v147 - 2);
          if (v150 != -1)
          {
            (off_26707C0[v150])(&v226, v147 - 1136);
          }

          *(v147 - 2) = -1;
          v147 -= 1136;
        }

        while (v149 != v146);
        v148 = v234[0];
      }

      v234[1] = v146;
      operator delete(v148);
    }

    v141 = 0;
    v142 = v242[1];
    if (v242[1])
    {
LABEL_212:
      v242[2] = v142;
      operator delete(v142);
    }

LABEL_213:
    v143 = v241[0];
    if (v241[0])
    {
      v144 = v241[1];
      v145 = v241[0];
      if (v241[1] != v241[0])
      {
        do
        {
          v144 = sub_9FFEB4(v144 - 18);
        }

        while (v144 != v143);
        v145 = v241[0];
      }

      v241[1] = v143;
      operator delete(v145);
    }

    if (v141)
    {
      v18 = v8[26];
LABEL_52:
      v38 += 9;
      if (v38 != v18)
      {
        continue;
      }

LABEL_248:
      v156 = v8[28];
      v157 = v8[29];
      if (v156 == v157)
      {
LABEL_283:
        v178 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v256[1] - v256[0]) >> 2));
        if (v256[1] == v256[0])
        {
          v179 = 0;
        }

        else
        {
          v179 = v178;
        }

        sub_A5811C(v256[0], v256[1], v179, 1);
        v180 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v255 - __src[1]) >> 2));
        if (v255 == __src[1])
        {
          v181 = 0;
        }

        else
        {
          v181 = v180;
        }

        sub_A597BC(__src[1], v255, v181, 1);
        v182 = v8;
        v183 = v8[31];
        v184 = v182[32];
        if (v183 != v184)
        {
          v185 = v258;
          v220 = v182[32];
          do
          {
            while (1)
            {
              v186 = *v183;
              v187 = v183[1];
              v189 = v183[2];
              v188 = v183[3];
              v190 = v183[4];
              v191 = *(v183 + 3);
              v192 = *(v183 + 32);
              if (v185 >= *(&v258 + 1))
              {
                break;
              }

              *v185 = v186;
              *(v185 + 4) = v187;
              *(v185 + 8) = v189;
              *(v185 + 12) = v188;
              *(v185 + 16) = v190;
              *(v185 + 24) = v191;
              *(v185 + 32) = v192;
              *(v185 + 33) = v233;
              *(v185 + 36) = *(&v233 + 3);
              v185 += 40;
              *&v258 = v185;
              v183 += 10;
              if (v183 == v184)
              {
                goto LABEL_305;
              }
            }

            v193 = v257[1];
            v194 = 0xCCCCCCCCCCCCCCCDLL * ((v185 - v257[1]) >> 3);
            v195 = v194 + 1;
            if (v194 + 1 > 0x666666666666666)
            {
              sub_1794();
            }

            if (0x999999999999999ALL * ((*(&v258 + 1) - v257[1]) >> 3) > v195)
            {
              v195 = 0x999999999999999ALL * ((*(&v258 + 1) - v257[1]) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(&v258 + 1) - v257[1]) >> 3) >= 0x333333333333333)
            {
              v196 = 0x666666666666666;
            }

            else
            {
              v196 = v195;
            }

            if (v196)
            {
              if (v196 <= 0x666666666666666)
              {
                operator new();
              }

              sub_1808();
            }

            v197 = v185;
            v198 = 8 * ((v185 - v257[1]) >> 3);
            *v198 = v186;
            *(v198 + 4) = v187;
            *(v198 + 8) = v189;
            *(v198 + 12) = v188;
            *(v198 + 16) = v190;
            *(v198 + 24) = v191;
            *(v198 + 32) = v192;
            v185 = 40 * v194 + 40;
            v199 = (40 * v194 - (v197 - v193));
            memcpy((v198 - (v197 - v193)), v193, v197 - v193);
            v257[1] = v199;
            v258 = v185;
            if (v193)
            {
              operator delete(v193);
            }

            v184 = v220;
            *&v258 = v185;
            v183 += 10;
          }

          while (v183 != v220);
        }

LABEL_305:
        if (*(v210 + 4) != -1)
        {
          v260 = *(v210 + 4);
        }

        v259 = *(v210 + 13);
        v262 = *(v210 + 4);
        v261 = *(v210 + 14);
        v263 = *(v210 + 2);
        v200 = v210[34];
        v201 = v210[35];
        if (v200 != v201)
        {
          operator new();
        }

        if (v264)
        {
          v265 = v264;
          operator delete(v264);
        }

        v264 = 0;
        v265 = 0;
        v266 = 0;
        if (*(v210 + 26) == 0x7FFFFFFF)
        {
          v202 = 0;
        }

        else
        {
          v203 = *(v210 + 135);
          if ((v203 & 0x80u) != 0)
          {
            v203 = v210[15];
          }

          v202 = v203 != 0;
        }

        v267 = v202;
        v268 = v210[24];
        sub_A85864(v210, &v233);
      }

      while (1)
      {
        if (*v156 >= sub_A51E58(v8, 1))
        {
          if (*v156 > sub_A51E58(v8, 1))
          {
            v165 = v256[1];
            if (v256[1] >= v257[0])
            {
              v168 = v256[0];
              v169 = 0xAAAAAAAAAAAAAAABLL * ((v256[1] - v256[0]) >> 2);
              v170 = v169 + 1;
              if (v169 + 1 > 0x1555555555555555)
              {
LABEL_342:
                sub_1794();
              }

              if (0x5555555555555556 * ((v257[0] - v256[0]) >> 2) > v170)
              {
                v170 = 0x5555555555555556 * ((v257[0] - v256[0]) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v257[0] - v256[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v171 = 0x1555555555555555;
              }

              else
              {
                v171 = v170;
              }

              if (v171)
              {
                if (v171 <= 0x1555555555555555)
                {
                  operator new();
                }

LABEL_344:
                sub_1808();
              }

              v175 = 4 * ((v256[1] - v256[0]) >> 2);
              v176 = *v156;
              *(v175 + 8) = *(v156 + 2);
              *v175 = v176;
              v167 = (12 * v169 + 12);
              v177 = (12 * v169 - (v165 - v168));
              memcpy((v175 - (v165 - v168)), v168, v165 - v168);
              v256[0] = v177;
              v256[1] = v167;
              v257[0] = 0;
              if (v168)
              {
                operator delete(v168);
              }

              v8 = v210;
            }

            else
            {
              v166 = *v156;
              *(v256[1] + 2) = *(v156 + 2);
              *v165 = v166;
              v167 = v165 + 12;
            }

            v256[1] = v167;
          }
        }

        else
        {
          v160 = v255;
          if (v255 < *(&v255 + 1))
          {
            v158 = *v156;
            *(v255 + 8) = *(v156 + 2);
            *v160 = v158;
            v159 = (v160 + 12);
          }

          else
          {
            v161 = __src[1];
            v162 = 0xAAAAAAAAAAAAAAABLL * ((v255 - __src[1]) >> 2);
            v163 = v162 + 1;
            if (v162 + 1 > 0x1555555555555555)
            {
              goto LABEL_342;
            }

            if (0x5555555555555556 * ((*(&v255 + 1) - __src[1]) >> 2) > v163)
            {
              v163 = 0x5555555555555556 * ((*(&v255 + 1) - __src[1]) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(&v255 + 1) - __src[1]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v164 = 0x1555555555555555;
            }

            else
            {
              v164 = v163;
            }

            if (v164)
            {
              if (v164 <= 0x1555555555555555)
              {
                operator new();
              }

              goto LABEL_344;
            }

            v172 = 4 * ((v255 - __src[1]) >> 2);
            v173 = *v156;
            *(v172 + 8) = *(v156 + 2);
            *v172 = v173;
            v159 = 12 * v162 + 12;
            v174 = (12 * v162 - (v160 - v161));
            memcpy((v172 - (v160 - v161)), v161, v160 - v161);
            __src[1] = v174;
            v255 = v159;
            if (v161)
            {
              operator delete(v161);
            }

            v8 = v210;
          }

          *&v255 = v159;
        }

        v156 += 2;
        if (v156 == v157)
        {
          goto LABEL_283;
        }
      }
    }

    break;
  }

LABEL_316:
  v204 = v269[0];
  if (v269[0])
  {
    v205 = v269[1];
    v206 = v269[0];
    if (v269[1] != v269[0])
    {
      do
      {
        v205 -= 80;
        sub_3ED230(v205);
      }

      while (v205 != v204);
      v206 = v269[0];
    }

    v269[1] = v204;
    operator delete(v206);
  }

  if (v264)
  {
    v265 = v264;
    operator delete(v264);
  }

  if (v257[1])
  {
    *&v258 = v257[1];
    operator delete(v257[1]);
  }

  if (v256[0])
  {
    v256[1] = v256[0];
    operator delete(v256[0]);
  }

  if (__src[1])
  {
    *&v255 = __src[1];
    operator delete(__src[1]);
  }

  v233 = &v253;
  sub_A30A34(&v233);
}

void sub_A4F304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_9FFEB4(&a41);
  sub_9FFE48(&a59);
  sub_A52C1C(&a31);
  sub_A30978(&a65);
  _Unwind_Resume(a1);
}

void sub_A4F388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x218] = v65;
  sub_9FFE48(&a59);
  sub_A30978(&a65);
  _Unwind_Resume(a1);
}

void sub_A4F528(uint64_t a1@<X0>, unint64_t **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v100 = a3;
  if (*a2 == a2[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v39 = sub_2D390(exception, "Cannot generate self-transfer solution from an empty set of stop refs", 0x45uLL);
  }

  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  sub_5F328(a6 + 96);
  v99 = 0x7FFFFFFF;
  v98 = xmmword_22A7440;
  *(&v98 + 4) = **a2;
  HIDWORD(v98) = v100;
  v99 = v100;
  v94 = 0;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v95 = 1;
  v96 = 0x8000000080000000;
  v97 = 0;
  v86 = 0;
  *(&v87 + 1) = sub_A5B144(&v87, &v98);
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v83 = 1;
  v84 = 0x8000000080000000;
  v85 = 0;
  *(&v80 + 1) = sub_A5B338(&v80, &v86);
  v53 = 0x8000000080000000;
  v54 = 0;
  v55 = 0x8000000080000000;
  v56 = 0;
  v57 = 0x8000000080000000;
  v58 = 0;
  v59 = 0x8000000080000000;
  v60 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  v68 = -1;
  v69 = 0;
  v71 = 0;
  v70 = 0;
  v72 = 0;
  v73 = 0;
  v75 = 0;
  v74 = 0;
  v76 = 0x3FF0000000000000;
  __p = 0;
  v79 = 0;
  v78 = 0;
  v11 = sub_A5B49C(&v61, &v80);
  v13 = *(a6 + 32);
  v12 = *(a6 + 40);
  *(&v61 + 1) = v11;
  v53 = v100 | (v100 << 32);
  v54 = 0;
  v55 = v53;
  v56 = 0;
  v57 = v53;
  v58 = 0;
  v59 = v53;
  v60 = 0;
  v75 = 0;
  v76 = 0x3FF0000000000000;
  if (v13 >= v12)
  {
    v14 = sub_A5B5C8(a6 + 24, &v53);
  }

  else
  {
    sub_A31084(v13, &v53);
    v14 = v13 + 232;
  }

  *(a6 + 32) = v14;
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 16) = 0;
  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v42);
    v15 = sub_4A5C(&v42, "Generated self-transfer solution at stop ", 41);
    v16 = sub_2FF718(v15, **a2);
    v17 = sub_4A5C(v16, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), **a2);
    v19 = std::ostream::operator<<(v17, v18);
    v20 = sub_4A5C(v19, ") and departure time ", 21);
    v21 = sub_258D4(v20, &v100);
    sub_4A5C(v21, " (solution origin index: ", 25);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, "; destination index: ", 21);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, ")", 1);
    if ((v52 & 0x10) != 0)
    {
      v25 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v25 = v48;
      }

      v26 = v47;
      v24 = v25 - v47;
      if (v25 - v47 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v24 = 0;
        v41 = 0;
LABEL_17:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 1u);
        if (v41 < 0)
        {
          operator delete(__dst);
        }

        if (v50 < 0)
        {
          operator delete(v49);
        }

        std::locale::~locale(&v44);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v26 = v45;
      v24 = v46 - v45;
      if ((v46 - v45) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_60:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v41 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_17;
  }

LABEL_22:
  v27 = __p;
  if (__p)
  {
    v28 = v78;
    v29 = __p;
    if (v78 != __p)
    {
      do
      {
        v28 -= 80;
        sub_3ED230(v28);
      }

      while (v28 != v27);
      v29 = __p;
    }

    v78 = v27;
    operator delete(v29);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (*(&v65 + 1))
  {
    *&v66 = *(&v65 + 1);
    operator delete(*(&v65 + 1));
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

  if (*(&v62 + 1))
  {
    *&v63 = *(&v62 + 1);
    operator delete(*(&v62 + 1));
  }

  v42 = COERCE_DOUBLE(&v61);
  sub_A30A34(&v42);
  if (*(&v81 + 1))
  {
    *&v82 = *(&v81 + 1);
    operator delete(*(&v81 + 1));
  }

  v30 = v80;
  if (v80)
  {
    v31 = *(&v80 + 1);
    v32 = v80;
    if (*(&v80 + 1) != v80)
    {
      do
      {
        v31 = sub_9FFEB4(v31 - 18);
      }

      while (v31 != v30);
      v32 = v80;
    }

    *(&v80 + 1) = v30;
    operator delete(v32);
  }

  if (v93)
  {
    *(&v93 + 1) = v93;
    operator delete(v93);
  }

  if (*(&v91 + 1))
  {
    *&v92 = *(&v91 + 1);
    operator delete(*(&v91 + 1));
  }

  if (v90)
  {
    *(&v90 + 1) = v90;
    operator delete(v90);
  }

  if (*(&v88 + 1))
  {
    *&v89 = *(&v88 + 1);
    operator delete(*(&v88 + 1));
  }

  v33 = v87;
  if (v87)
  {
    v34 = *(&v87 + 1);
    v35 = v87;
    if (*(&v87 + 1) != v87)
    {
      do
      {
        v36 = v34 - 1136;
        v37 = *(v34 - 8);
        if (v37 != -1)
        {
          (off_26707C0[v37])(&v42, v34 - 1136);
        }

        *(v34 - 8) = -1;
        v34 -= 1136;
      }

      while (v36 != v33);
      v35 = v87;
    }

    *(&v87 + 1) = v33;
    operator delete(v35);
  }
}

void sub_A4FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  sub_A30978(&a49);
  sub_9FFE48(&STACK[0x210]);
  sub_9FFEB4(&STACK[0x250]);
  sub_A30CBC(v49);
  _Unwind_Resume(a1);
}

void sub_A4FC74(void *a1, unint64_t a2)
{
  if (HIDWORD(a2) != 1 || (a2 + 3) >= 2)
  {
    v3 = sub_502FF8(*a1 + 24, __ROR8__(a2, 32), 0, "stop");
    v4 = (v3 - *v3);
    if (*v4 >= 5u && v4[2])
    {
      v5 = sub_2C939C(*a1 + 24, 1u, 0);
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v5 = sub_2C939C(*a1 + 24, 1u, 0);
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    v6 = &v5[-*v5];
    if (*v6 < 0xDu || (v7 = *(v6 + 6)) == 0)
    {
LABEL_17:
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
}

void sub_A4FDCC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v6 = 0x34F72C234F72C235 * ((*(a2 + 32) - *(a2 + 24)) >> 3);
  v8 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (v6 == 0x14C1BACF914C1BADLL * ((v7 - v8) >> 3) && v7 != v8)
  {
    v14 = 0;
    do
    {
      v16 = (*(a3 + 8) + 296 * v14);
      if (v16[25] == v16[26])
      {
        LODWORD(v25[0]) = 41;
        v20 = *(a5 + 8);
        if (v20 < *(a5 + 16))
        {
          *v20 = 41;
          *(v20 + 8) = 0x8000000080000000;
          *(v20 + 16) = 0;
          *(v20 + 20) = 0x8000000080000000;
          *(v20 + 28) = 0;
          *(v20 + 32) = 0x8000000080000000;
          *(v20 + 40) = 0;
          *(v20 + 44) = 0x8000000080000000;
          *(v20 + 52) = 0;
          *(v20 + 56) = 0u;
          *(v20 + 72) = 0u;
          *(v20 + 88) = 0u;
          *(v20 + 104) = 0u;
          *(v20 + 120) = 0u;
          *(v20 + 136) = 0u;
          *(v20 + 152) = 0;
          *(v20 + 156) = -1;
          *(v20 + 160) = 0;
          *(v20 + 172) = 0;
          *(v20 + 164) = 0;
          *(v20 + 184) = 0;
          *(v20 + 192) = 0;
          *(v20 + 176) = 0;
          *(v20 + 200) = 0;
          *(v20 + 208) = 0x3FF0000000000000;
          *(v20 + 216) = 0;
          *(v20 + 224) = 0;
          *(v20 + 232) = 0;
          v15 = v20 + 240;
        }

        else
        {
          sub_A5B71C(a5, v25);
        }

        *(a5 + 8) = v15;
      }

      else
      {
        v17 = (*(a2 + 24) + 232 * v14);
        v38 = 0;
        v39[0] = v17;
        sub_A4D898(v25, a1, a4, v16, v39, &v38);
        if (v37 == 1)
        {
          v18 = *(a5 + 8);
          if (v18 >= *(a5 + 16))
          {
            v19 = sub_A5BA70(a5, v25);
          }

          else
          {
            *v18 = 0;
            sub_A31084((v18 + 2), v25);
            v19 = v18 + 60;
          }
        }

        else
        {
          LODWORD(v39[0]) = 3;
          v21 = *(a5 + 8);
          if (v21 >= *(a5 + 16))
          {
            sub_A5B71C(a5, v39);
          }

          else
          {
            *v21 = 3;
            *(v21 + 8) = 0x8000000080000000;
            *(v21 + 16) = 0;
            *(v21 + 20) = 0x8000000080000000;
            *(v21 + 28) = 0;
            *(v21 + 32) = 0x8000000080000000;
            *(v21 + 40) = 0;
            *(v21 + 44) = 0x8000000080000000;
            *(v21 + 52) = 0;
            *(v21 + 56) = 0u;
            *(v21 + 72) = 0u;
            *(v21 + 88) = 0u;
            *(v21 + 104) = 0u;
            *(v21 + 120) = 0u;
            *(v21 + 136) = 0u;
            *(v21 + 152) = 0;
            *(v21 + 156) = -1;
            *(v21 + 160) = 0;
            *(v21 + 172) = 0;
            *(v21 + 164) = 0;
            *(v21 + 184) = 0;
            *(v21 + 192) = 0;
            *(v21 + 176) = 0;
            *(v21 + 200) = 0;
            *(v21 + 208) = 0x3FF0000000000000;
            *(v21 + 216) = 0;
            *(v21 + 224) = 0;
            *(v21 + 232) = 0;
            v19 = (v21 + 240);
          }
        }

        *(a5 + 8) = v19;
        if (v37 == 1)
        {
          v22 = __p;
          if (__p)
          {
            v23 = v36;
            v24 = __p;
            if (v36 != __p)
            {
              do
              {
                v23 -= 80;
                sub_3ED230(v23);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v36 = v22;
            operator delete(v24);
          }

          if (v33)
          {
            v34 = v33;
            operator delete(v33);
          }

          if (v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }

          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }

          v39[0] = &v26;
          sub_A30A34(v39);
        }
      }

      ++v14;
    }

    while (v14 != v6);
  }
}

void sub_A50110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  *(v39 + 8) = v40;
  if (a39 == 1)
  {
    sub_A30978(&a10);
    sub_A448F4(v39);
    _Unwind_Resume(a1);
  }

  sub_A448F4(v39);
  _Unwind_Resume(a1);
}

void sub_A50170(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 92) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  sub_5F328(a5 + 112);
  *(a5 + 4) = a2[1];
  v9 = a3[6];
  v215 = a3[7];
  v216 = a2;
  v238 = a3;
  v214 = v10;
  v222 = a1;
  if (v9 != v215)
  {
    do
    {
      *v239 = xmmword_22A7450;
      LODWORD(v240) = -1;
      v245 = 0;
      v244 = 0uLL;
      __p[1] = 0;
      v242 = 0;
      __p[0] = 0;
      v243 = 0;
      LOBYTE(v246[0]) = 1;
      *(v246 + 4) = 0x8000000080000000;
      v247[1] = 0;
      v248 = 0;
      v247[0] = 0;
      if (*(v9 + 120) != -1)
      {
        v243 = *(v9 + 120);
      }

      v252 = 0;
      v220 = v9;
      v12 = *(v9 + 104) - *(v9 + 96);
      if (v12)
      {
        v13 = 0;
        v219 = 0xEEEEEEEEEEEEEEEFLL * (v12 >> 2);
        do
        {
          v15 = *(v220 + 96) + 60 * v13;
          sub_A81CC8(a1, v15, v256);
          v221 = v13;
          v16 = v256[0];
          v223 = v256[1];
          v224 = v15;
          if (v256[0] == v256[1])
          {
            v17 = 0;
            v41 = 0;
          }

          else
          {
            v235 = 0;
            v17 = 0;
            do
            {
              v18 = v252++;
              v225 = *v16;
              v19 = v16[3];
              v227 = v16[2];
              v229 = v16[4];
              v231 = *(v15 + 40);
              if (v231 == -1)
              {
                v26 = v16[3];
                v20 = sub_A56700(a1 + 523, v16, v19, 0x7FFFFFFF);
                v28 = v27;
                v23 = sub_A56A5C(a1 + 523, v16, v16[4], 0x7FFFFFFF);
                LOWORD(v22) = HIBYTE(v28);
                v21 = v28;
                v24 = v29;
                LOWORD(v25) = v30;
                v19 = v26;
              }

              else
              {
                v20 = *(v15 + 4);
                v21 = *(v15 + 12);
                v22 = HIBYTE(*(v15 + 12));
                v23 = *(v15 + 16);
                v24 = *(v15 + 24);
                v25 = HIBYTE(*(v15 + 24));
              }

              v31 = &v17[-v235];
              v32 = 0x193D4BB7E327A977 * (&v17[-v235] >> 4) + 1;
              if (v32 > 0x39B0AD12073615)
              {
                sub_1794();
              }

              if (0x327A976FC64F52EELL * (-v235 >> 4) > v32)
              {
                v32 = 0x327A976FC64F52EELL * (-v235 >> 4);
              }

              if ((0x193D4BB7E327A977 * (-v235 >> 4)) >= 0x1CD85689039B0ALL)
              {
                v33 = 0x39B0AD12073615;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                if (v33 <= 0x39B0AD12073615)
                {
                  operator new();
                }

                sub_1808();
              }

              v34 = 16 * (&v17[-v235] >> 4);
              *v34 = v18;
              *(v34 + 4) = v225;
              *(v34 + 12) = v227;
              *(v34 + 16) = v19;
              *(v34 + 20) = v229;
              *(v34 + 24) = v20;
              *(v34 + 32) = v21 | (v22 << 8);
              *(v34 + 36) = v23;
              *(v34 + 44) = v24 | (v25 << 8);
              *(v34 + 48) = v231;
              *(v34 + 52) = 0;
              *(v34 + 56) = 0;
              *(v34 + 60) = 0;
              v35 = v34 - v31;
              *(v34 + 1128) = 0;
              v15 = v224;
              if (v235 != v17)
              {
                v36 = v34 - v31;
                v37 = v235;
                do
                {
                  *v36 = 0;
                  *(v36 + 1128) = -1;
                  v38 = *(v37 + 1128);
                  if (v38 != -1)
                  {
                    v253 = v36;
                    (off_26707E8[v38])(&v253, v37);
                    *(v36 + 1128) = v38;
                  }

                  v37 += 1136;
                  v36 += 1136;
                }

                while (v37 != v17);
                v39 = v235;
                v15 = v224;
                do
                {
                  v40 = *(v39 + 1128);
                  if (v40 != -1)
                  {
                    (off_26707C0[v40])(&v253, v39);
                  }

                  *(v39 + 1128) = -1;
                  v39 += 1136;
                }

                while (v39 != v17);
              }

              v17 = (v34 + 1136);
              if (v235)
              {
                operator delete(v235);
              }

              v235 = v35;
              a1 = v222;
              v16 += 5;
            }

            while (v16 != v223);
            v16 = v256[0];
            v41 = v235;
          }

          if (v16)
          {
            v256[1] = v16;
            operator delete(v16);
          }

          if (v41 != v17)
          {
            v249[0] = 0;
            v249[1] = 0;
            v250 = 0;
            v253 = v249;
            LOBYTE(v254) = 0;
            if ((0x193D4BB7E327A977 * ((v17 - v41) >> 4)) <= 0x39B0AD12073615)
            {
              operator new();
            }

            sub_1794();
          }

          LOBYTE(v249[0]) = 0;
          v251 = 0;
          if (v17 && (operator delete(v41), (v251 & 1) != 0))
          {
            v42 = v249[1];
            v43 = v249[0];
            for (i = 0; v43 != v42; v43 += 284)
            {
              if (v43[282])
              {
                sub_5AF20();
              }

              v45 = i;
              v46 = i >> 6;
              if (((i >> 6) + 1) >> 58)
              {
                sub_1794();
              }

              if (i >> 6 != -1)
              {
                if (!(((i >> 6) + 1) >> 58))
                {
                  operator new();
                }

                sub_1808();
              }

              v47 = (v46 << 6);
              v48 = *v43;
              v49 = *(v43 + 1);
              v50 = *(v43 + 3);
              v47[2] = *(v43 + 2);
              v47[3] = v50;
              *v47 = v48;
              v47[1] = v49;
              i = (v46 << 6) + 64;
              memcpy(0, 0, v45);
            }

            v51 = *(v224 + 56);
            v52 = __p[1];
            if (__p[1] >= v242)
            {
              v55 = __p[0];
              v56 = (__p[1] - __p[0]) >> 5;
              v57 = v56 + 1;
              v54 = v221;
              if ((v56 + 1) >> 59)
              {
                sub_1794();
              }

              v58 = v242 - __p[0];
              if ((v242 - __p[0]) >> 4 > v57)
              {
                v57 = v58 >> 4;
              }

              if (v58 >= 0x7FFFFFFFFFFFFFE0)
              {
                v59 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                if (!(v59 >> 59))
                {
                  operator new();
                }

                sub_1808();
              }

              v60 = (__p[1] - __p[0]) >> 5;
              v61 = 32 * v56;
              *v61 = 0;
              *(v61 + 8) = i;
              *(v61 + 16) = 0;
              *(v61 + 24) = v51;
              v62 = (v61 - 32 * v60);
              if (v55 != v52)
              {
                v63 = v55;
                v64 = v62;
                do
                {
                  *v64 = *v63;
                  v64[2] = v63[2];
                  *v63 = 0;
                  v63[1] = 0;
                  v63[2] = 0;
                  *(v64 + 24) = *(v63 + 24);
                  v63 += 4;
                  v64 += 4;
                }

                while (v63 != v52);
                do
                {
                  v65 = *v55;
                  if (*v55)
                  {
                    v55[1] = v65;
                    operator delete(v65);
                  }

                  v55 += 4;
                }

                while (v55 != v52);
                v55 = __p[0];
              }

              v53 = (v61 + 32);
              __p[0] = v62;
              __p[1] = (v61 + 32);
              v242 = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *__p[1] = 0;
              v52[1] = i;
              v52[2] = 0;
              v53 = v52 + 4;
              *(v52 + 24) = v51;
              v54 = v221;
            }

            __p[1] = v53;
            if (v251)
            {
              v66 = v249[0];
              if (v249[0])
              {
                v67 = v249[1];
                v14 = v249[0];
                if (v249[1] != v249[0])
                {
                  do
                  {
                    v68 = v67 - 1136;
                    v69 = *(v67 - 2);
                    if (v69 != -1)
                    {
                      (off_26707C0[v69])(v256, v67 - 1136);
                    }

                    *(v67 - 2) = -1;
                    v67 -= 1136;
                  }

                  while (v68 != v66);
                  v14 = v249[0];
                }

                v249[1] = v66;
                operator delete(v14);
              }
            }
          }

          else
          {
            v54 = v221;
            if (v221 <= v243)
            {
              v243 = 0;
            }
          }

          v13 = v54 + 1;
          a1 = v222;
        }

        while (v13 != v219);
      }

      sub_A5BC7C(v256, a1, v220 + 124);
      *v239 = *v256;
      LODWORD(v240) = v257;
      v71 = *(v220 + 184);
      v70 = *(v220 + 192);
      if (v71 != v70)
      {
        v72 = *(&v244 + 1);
        v233 = *(v220 + 192);
        do
        {
          while (1)
          {
            v73 = *v71;
            v74 = v71[1];
            v76 = v71[2];
            v75 = v71[3];
            v77 = v71[4];
            v78 = *(v71 + 3);
            v79 = *(v71 + 32);
            if (v72 >= v245)
            {
              break;
            }

            *v72 = v73;
            *(v72 + 4) = v74;
            *(v72 + 8) = v76;
            *(v72 + 12) = v75;
            *(v72 + 16) = v77;
            *(v72 + 24) = v78;
            *(v72 + 32) = v79;
            *(v72 + 33) = v256[0];
            *(v72 + 36) = *(v256 + 3);
            v72 += 40;
            *(&v244 + 1) = v72;
            v71 += 10;
            if (v71 == v70)
            {
              goto LABEL_101;
            }
          }

          v80 = v244;
          v81 = 0xCCCCCCCCCCCCCCCDLL * ((v72 - v244) >> 3);
          v82 = v81 + 1;
          if (v81 + 1 > 0x666666666666666)
          {
            sub_1794();
          }

          if (0x999999999999999ALL * ((v245 - v244) >> 3) > v82)
          {
            v82 = 0x999999999999999ALL * ((v245 - v244) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v245 - v244) >> 3) >= 0x333333333333333)
          {
            v83 = 0x666666666666666;
          }

          else
          {
            v83 = v82;
          }

          if (v83)
          {
            if (v83 <= 0x666666666666666)
            {
              operator new();
            }

            sub_1808();
          }

          v84 = v72;
          v85 = 8 * ((v72 - v244) >> 3);
          *v85 = v73;
          *(v85 + 4) = v74;
          *(v85 + 8) = v76;
          *(v85 + 12) = v75;
          *(v85 + 16) = v77;
          *(v85 + 24) = v78;
          *(v85 + 32) = v79;
          v72 = 40 * v81 + 40;
          v86 = 40 * v81 - (v84 - v80);
          memcpy((v85 - (v84 - v80)), v80, v84 - v80);
          *&v244 = v86;
          *(&v244 + 1) = v72;
          v245 = 0;
          if (v80)
          {
            operator delete(v80);
          }

          v70 = v233;
          *(&v244 + 1) = v72;
          v71 += 10;
        }

        while (v71 != v233);
      }

LABEL_101:
      LOBYTE(v246[0]) = *(v220 + 208);
      *(v246 + 4) = *(v220 + 212);
      v87 = *(v220 + 172);
      v88 = sub_A57920(v222 + 517, *(v220 + 152));
      v89 = (v88 - *v88);
      if (*v89 >= 9u && (v90 = v89[4]) != 0)
      {
        v91 = (v88 + v90 + *(v88 + v90));
      }

      else
      {
        v91 = 0;
      }

      v92 = __ROR8__(*sub_A571D4(v91, v87), 32);
      v253 = 0x1FFFFFFFELL;
      v254 = v92;
      if (sub_A5436C(a4, &v253))
      {
        v93 = sub_A5436C(a4, &v253);
        if (!v93)
        {
          goto LABEL_286;
        }

        if (v93[4] == v93[5])
        {
          v111 = v252++;
          v112 = *v216;
          *(v256 + 4) = v92;
          LODWORD(v256[0]) = v111;
          HIDWORD(v256[1]) = v112;
          LODWORD(v257) = v112;
          v260 = 4;
          sub_A5BE18(v249, v256, 1uLL);
          a3 = v238;
          if (v260 != -1)
          {
            (off_26707C0[v260])(&v255, v256);
          }

          goto LABEL_112;
        }

        v94 = sub_A5436C(a4, &v253);
        if (!v94)
        {
LABEL_286:
          sub_49EC("unordered_map::at: key not found");
        }

        sub_A5350C(v256, v222, v94[4], v94[5], *v216, &v252, v95, v96);
        *v249 = *v256;
        v250 = v257;
      }

      else
      {
        v249[0] = 0;
        v249[1] = 0;
        v250 = 0;
      }

      a3 = v238;
LABEL_112:
      v97 = v247[0];
      if (v247[0])
      {
        v98 = v247[1];
        v99 = v247[0];
        if (v247[1] != v247[0])
        {
          do
          {
            v100 = v98 - 1136;
            v101 = *(v98 - 2);
            if (v101 != -1)
            {
              (off_26707C0[v101])(v256, v98 - 1136);
            }

            *(v98 - 2) = -1;
            v98 -= 1136;
          }

          while (v100 != v97);
          v99 = v247[0];
        }

        v247[1] = v97;
        operator delete(v99);
      }

      *v247 = *v249;
      v248 = v250;
      v102 = *(a5 + 64);
      if (v102 >= *(a5 + 72))
      {
        v105 = sub_A5BF80((a5 + 56), v239);
        v106 = v247[0];
        *(a5 + 64) = v105;
        if (v106)
        {
          v107 = v247[1];
          v108 = v106;
          if (v247[1] != v106)
          {
            do
            {
              v109 = v107 - 1136;
              v110 = *(v107 - 2);
              if (v110 != -1)
              {
                (off_26707C0[v110])(v256, v107 - 1136);
              }

              *(v107 - 2) = -1;
              v107 -= 1136;
            }

            while (v109 != v106);
            v108 = v247[0];
          }

          v247[1] = v106;
          operator delete(v108);
        }
      }

      else
      {
        v103 = *v239;
        *(v102 + 16) = v240;
        *v102 = v103;
        *(v102 + 32) = 0;
        *(v102 + 40) = 0;
        *(v102 + 24) = 0;
        *(v102 + 24) = *__p;
        *(v102 + 40) = v242;
        __p[0] = 0;
        __p[1] = 0;
        v242 = 0;
        *(v102 + 48) = v243;
        *(v102 + 56) = 0;
        *(v102 + 64) = 0;
        *(v102 + 72) = 0;
        *(v102 + 56) = v244;
        *(v102 + 72) = v245;
        v244 = 0uLL;
        v245 = 0;
        v104 = v246[0];
        *(v102 + 88) = v246[1];
        *(v102 + 80) = v104;
        *(v102 + 96) = 0;
        *(v102 + 104) = 0;
        *(v102 + 112) = 0;
        *(v102 + 96) = *v247;
        *(v102 + 112) = v248;
        v247[0] = 0;
        v247[1] = 0;
        v248 = 0;
        *(a5 + 64) = v102 + 120;
      }

      if (v244)
      {
        *(&v244 + 1) = v244;
        operator delete(v244);
      }

      v113 = __p[0];
      a1 = v222;
      if (__p[0])
      {
        v114 = __p[1];
        v11 = __p[0];
        if (__p[1] != __p[0])
        {
          v115 = __p[1];
          do
          {
            v117 = *(v115 - 4);
            v115 -= 32;
            v116 = v117;
            if (v117)
            {
              *(v114 - 3) = v116;
              operator delete(v116);
            }

            v114 = v115;
          }

          while (v115 != v113);
          v11 = __p[0];
          a1 = v222;
        }

        __p[1] = v113;
        operator delete(v11);
      }

      v9 = v220 + 248;
    }

    while (v220 + 248 != v215);
  }

  v118 = a3[3];
  v234 = a3 + 3;
  for (j = a3[4]; v118 != j; v118 += 160)
  {
    v256[0] = 0;
    v256[1] = 0;
    v257 = 0;
    *v258 = xmmword_22A7450;
    *&v258[16] = -1;
    *&v258[20] = 256;
    v120 = *(v118 + 72);
    v121 = *(v118 + 80);
    if (v120 != v121)
    {
      v122 = 0;
      do
      {
        v123 = *v120;
        if (v122 < v257)
        {
          *v122 = v123;
          v122 += 8;
        }

        else
        {
          v124 = v256[0];
          v125 = v122 - v256[0];
          v126 = (v122 - v256[0]) >> 3;
          v127 = v126 + 1;
          if ((v126 + 1) >> 61)
          {
            sub_1794();
          }

          v128 = v257 - v256[0];
          if ((v257 - v256[0]) >> 2 > v127)
          {
            v127 = v128 >> 2;
          }

          if (v128 >= 0x7FFFFFFFFFFFFFF8)
          {
            v129 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = v127;
          }

          if (v129)
          {
            if (!(v129 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v130 = (v122 - v256[0]) >> 3;
          v131 = (8 * v126);
          v132 = (8 * v126 - 8 * v130);
          *v131 = v123;
          v122 = (v131 + 1);
          memcpy(v132, v124, v125);
          v256[0] = v132;
          v256[1] = v122;
          v257 = 0;
          if (v124)
          {
            operator delete(v124);
          }
        }

        v256[1] = v122;
        v120 += 4;
      }

      while (v120 != v121);
    }

    sub_A5BC7C(v239, v222, v118 + 96);
    *v258 = *v239;
    *&v258[16] = v240;
    *&v258[20] = *(v118 + 156);
    v133 = *(a5 + 40);
    if (v133 < *(a5 + 48))
    {
      *v133 = 0;
      *(v133 + 8) = 0;
      *(v133 + 16) = 0;
      *v133 = *v256;
      *(v133 + 16) = v257;
      v256[0] = 0;
      v256[1] = 0;
      v257 = 0;
      v119 = *&v258[14];
      *(v133 + 24) = *v258;
      *(v133 + 38) = v119;
      *(a5 + 40) = v133 + 48;
    }

    else
    {
      v134 = sub_A5C188((a5 + 32), v256);
      v135 = v256[0];
      *(a5 + 40) = v134;
      if (v135)
      {
        v256[1] = v135;
        operator delete(v135);
      }
    }
  }

  v136 = v238;
  v137 = *v238;
  v226 = v238[1];
  if (*v238 != v226)
  {
    while (1)
    {
      v239[0] = 0;
      v239[1] = 0;
      v240 = 0;
      LOBYTE(__p[0]) = *(v137 + 104);
      v138 = *(v137 + 80);
      v230 = *(v137 + 88);
      if (v138 != v230)
      {
        break;
      }

LABEL_252:
      v203 = *(a5 + 16);
      if (v203 < *(a5 + 24))
      {
        *v203 = 0;
        *(v203 + 8) = 0;
        *(v203 + 16) = 0;
        *v203 = *v239;
        *(v203 + 16) = v240;
        v239[0] = 0;
        v239[1] = 0;
        v240 = 0;
        *(v203 + 24) = __p[0];
        *(a5 + 16) = v203 + 32;
      }

      else
      {
        v204 = sub_A5C860((a5 + 8), v239);
        v205 = v239[0];
        *(a5 + 16) = v204;
        if (v205)
        {
          v206 = v239[1];
          v207 = v205;
          if (v239[1] != v205)
          {
            do
            {
              v208 = *(v206 - 3);
              if (v208)
              {
                *(v206 - 2) = v208;
                operator delete(v208);
              }

              v209 = v206 - 56;
              v210 = *(v206 - 7);
              if (v210)
              {
                *(v206 - 6) = v210;
                operator delete(v210);
              }

              v206 -= 56;
            }

            while (v209 != v205);
            v207 = v239[0];
          }

          v239[1] = v205;
          operator delete(v207);
        }
      }

      v137 += 112;
      if (v137 == v226)
      {
        goto LABEL_263;
      }
    }

    v228 = v137;
    while (1)
    {
      *&v258[8] = 0;
      *&v258[16] = 0;
      v259 = 0;
      v256[1] = 0;
      v257 = 0;
      v256[0] = 0;
      v258[0] = *(v138 + 104);
      v139 = *(v138 + 80);
      v140 = *(v138 + 88);
      v232 = v138;
      if (v139 != v140)
      {
        v141 = 0;
        do
        {
          v142 = *v139;
          if (v141 < v257)
          {
            *v141 = v142;
            v141 += 8;
          }

          else
          {
            v143 = v256[0];
            v144 = v141 - v256[0];
            v145 = (v141 - v256[0]) >> 3;
            v146 = v145 + 1;
            if ((v145 + 1) >> 61)
            {
              sub_1794();
            }

            v147 = v257 - v256[0];
            if ((v257 - v256[0]) >> 2 > v146)
            {
              v146 = v147 >> 2;
            }

            if (v147 >= 0x7FFFFFFFFFFFFFF8)
            {
              v148 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v148 = v146;
            }

            if (v148)
            {
              if (!(v148 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v149 = (v141 - v256[0]) >> 3;
            v150 = (8 * v145);
            v151 = (8 * v145 - 8 * v149);
            *v150 = v142;
            v141 = (v150 + 1);
            memcpy(v151, v143, v144);
            v256[0] = v151;
            v256[1] = v141;
            v257 = 0;
            if (v143)
            {
              operator delete(v143);
            }
          }

          v256[1] = v141;
          v139 += 4;
        }

        while (v139 != v140);
        v139 = *(v232 + 80);
        v140 = *(v232 + 88);
      }

      if (v139 != v140)
      {
        break;
      }

LABEL_223:
      v190 = 126 - 2 * __clz((*&v258[16] - *&v258[8]) >> 3);
      if (*&v258[16] == *&v258[8])
      {
        v191 = 0;
      }

      else
      {
        v191 = v190;
      }

      sub_95F8B4(*&v258[8], *&v258[16], v249, v191, 1);
      v193 = *&v258[8];
      v192 = *&v258[16];
      if (*&v258[8] == *&v258[16])
      {
        v137 = v228;
        v194 = v232;
      }

      else
      {
        v137 = v228;
        v194 = v232;
        while (1)
        {
          v195 = v193 + 8;
          if (v193 + 8 == *&v258[16])
          {
            break;
          }

          v196 = *v193 == *(v193 + 8) && *(v193 + 4) == *(v193 + 12);
          v193 += 8;
          if (v196)
          {
            v197 = v195 + 8;
            v198 = v195 - 8;
            if (v197 == *&v258[16])
            {
              v199 = v198 + 8;
              if (v198 + 8 == *&v258[16])
              {
                break;
              }
            }

            else
            {
              do
              {
                if (*v198 != *v197 || *(v198 + 4) != *(v197 + 4))
                {
                  v202 = *(v197 + 4);
                  *(v198 + 8) = *v197;
                  v198 += 8;
                  *(v198 + 4) = v202;
                }

                v197 += 8;
              }

              while (v197 != v192);
              v199 = v198 + 8;
              if (v198 + 8 == *&v258[16])
              {
                break;
              }
            }

            *&v258[16] = v199;
            v200 = v239[1];
            if (v239[1] < v240)
            {
              goto LABEL_237;
            }

            goto LABEL_246;
          }
        }
      }

      v200 = v239[1];
      if (v239[1] >= v240)
      {
LABEL_246:
        v239[1] = sub_A5C530(v239, v256);
        if (*&v258[8])
        {
          *&v258[16] = *&v258[8];
          operator delete(*&v258[8]);
        }
      }

      else
      {
LABEL_237:
        v200[1] = 0;
        v200[2] = 0;
        *v200 = 0;
        *v200 = *v256;
        v200[2] = v257;
        v256[0] = 0;
        v256[1] = 0;
        v257 = 0;
        *(v200 + 24) = v258[0];
        v200[5] = 0;
        v200[6] = 0;
        v200[4] = 0;
        *(v200 + 2) = *&v258[8];
        v200[6] = v259;
        *&v258[16] = 0;
        v259 = 0;
        *&v258[8] = 0;
        v239[1] = v200 + 7;
      }

      if (v256[0])
      {
        v256[1] = v256[0];
        operator delete(v256[0]);
      }

      v138 = v194 + 112;
      if (v138 == v230)
      {
        goto LABEL_252;
      }
    }

    v237 = v140;
LABEL_190:
    v152 = sub_A5C314(v234, *v139);
    v153 = *(v152 + 72);
    v154 = *(v152 + 80);
    while (1)
    {
      while (1)
      {
        if (v153 == v154)
        {
          v139 += 4;
          if (v139 == v237)
          {
            goto LABEL_223;
          }

          goto LABEL_190;
        }

        v155 = v136[6] + 248 * *v153;
        v157 = *(v155 + 224);
        v156 = *(v155 + 232);
        v158 = v156 - v157;
        v159 = (v156 - v157) >> 3;
        if (v159 >= 1)
        {
          break;
        }

LABEL_191:
        v153 += 4;
      }

      v160 = *&v258[16];
      if (v259 - *&v258[16] < v158)
      {
        break;
      }

      if (v157 == v156)
      {
        v153 += 4;
      }

      else
      {
        if ((v158 - 8) < 0x18)
        {
          goto LABEL_211;
        }

        if (*&v258[16] - v157 < 0x20uLL)
        {
          goto LABEL_211;
        }

        v166 = ((v158 - 8) >> 3) + 1;
        v167 = 8 * (v166 & 0x3FFFFFFFFFFFFFFCLL);
        v168 = &v157[v167];
        v169 = (*&v258[16] + v167);
        v170 = (*&v258[16] + 16);
        v171 = (v157 + 16);
        v172 = v166 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v173 = *v171;
          *(v170 - 1) = *(v171 - 1);
          *v170 = v173;
          v170 += 2;
          v171 += 2;
          v172 -= 4;
        }

        while (v172);
        v157 = v168;
        v160 = v169;
        if (v166 != (v166 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_211:
          v169 = v160;
          do
          {
            v174 = *v157;
            v157 += 8;
            *v169++ = v174;
          }

          while (v157 != v156);
        }

        *&v258[16] = v169;
        v153 += 4;
      }
    }

    v161 = (*&v258[16] - *&v258[8]) >> 3;
    v162 = v161 + v159;
    if (v162 >> 61)
    {
      sub_1794();
    }

    v163 = v259 - *&v258[8];
    if ((v259 - *&v258[8]) >> 2 > v162)
    {
      v162 = v163 >> 2;
    }

    if (v163 >= 0x7FFFFFFFFFFFFFF8)
    {
      v164 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v164 = v162;
    }

    if (v164)
    {
      if (!(v164 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v175 = 8 * v161;
    v176 = (8 * v161 + v158);
    if ((v158 - 8) < 0x18)
    {
      v165 = v175;
    }

    else
    {
      v165 = v175;
      if (*&v258[16] - *&v258[8] - v157 >= 0x20uLL)
      {
        v177 = ((v158 - 8) >> 3) + 1;
        v178 = 8 * (v177 & 0x3FFFFFFFFFFFFFFCLL);
        v165 = (v175 + v178);
        v179 = &v157[v178];
        v180 = (v157 + 16);
        v181 = (v175 + 16);
        v182 = v177 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v183 = *v180;
          *(v181 - 1) = *(v180 - 1);
          *v181 = v183;
          v180 += 2;
          v181 += 2;
          v182 -= 4;
        }

        while (v182);
        v157 = v179;
        if (v177 == (v177 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_221:
          v185 = *&v258[16] - v160;
          memcpy(v176, v160, *&v258[16] - v160);
          v186 = &v176[v185];
          *&v258[16] = v160;
          v187 = *&v258[8];
          v188 = v160 - *&v258[8];
          v189 = (v175 - (v160 - *&v258[8]));
          memcpy(v189, *&v258[8], v188);
          *&v258[8] = v189;
          *&v258[16] = v186;
          v259 = 0;
          v136 = v238;
          if (v187)
          {
            operator delete(v187);
          }

          goto LABEL_191;
        }
      }
    }

    do
    {
      v184 = *v157;
      v157 += 8;
      *v165 = v184;
      v165 += 8;
    }

    while (v165 != v176);
    goto LABEL_221;
  }

LABEL_263:
  v211 = *(v136 + 18);
  if (v211 != -1)
  {
    *(a5 + 104) = v211;
  }

  v212 = v136[6];
  for (k = v136[7]; v212 != k; v212 += 248)
  {
    sub_95F494((a5 + 80), *(a5 + 88), *(v212 + 224), *(v212 + 232), (*(v212 + 232) - *(v212 + 224)) >> 3);
  }

  sub_A51D40((a5 + 80));
  if (v214 != v136 + 10)
  {
    *(a5 + 144) = *(v136 + 28);
    sub_618D4(v214, v136[12], 0);
  }
}

void sub_A518F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 + 80);
  if (v19)
  {
    *(a17 + 88) = v19;
    operator delete(v19);
  }

  sub_21E3944(a17);
  _Unwind_Resume(a1);
}

void sub_A51D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a65)
  {
    JUMPOUT(0xA51D20);
  }

  JUMPOUT(0xA51C5CLL);
}

uint64_t sub_A51D40(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_95F8B4(v2, v3, &v15, v5, 1);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_22:
    if (v8 != v7)
    {
      a1[1] = v8;
    }
  }

  else
  {
    v9 = v8 - 8;
    while (v9 + 16 != v7)
    {
      v10 = *(v9 + 8);
      v9 += 8;
      if (v10 == *(v9 + 8) && *(v9 + 4) == *(v9 + 12))
      {
        v12 = v9 + 16;
        if (v9 + 16 != v7)
        {
          do
          {
            if (*v9 != *v12 || *(v9 + 4) != *(v12 + 4))
            {
              v14 = *(v12 + 4);
              *(v9 + 8) = *v12;
              v9 += 8;
              *(v9 + 4) = v14;
            }

            v12 += 8;
          }

          while (v12 != v7);
          v7 = a1[1];
        }

        v8 = v9 + 8;
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_A51E58(uint64_t a1, int a2)
{
  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  v2 = (a1 + 200);
  if (v3 == v4)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  if (v4 - v3 == 72 && v3[24] == 1)
  {
    v5 = *v3;
    v6 = *(*v3 + 160);
LABEL_8:
    if (v6 == 1)
    {
      v7 = *(v5 + 4) | (*(v5 + 4) << 32);
      return v7 | (HIDWORD(v7) << 32);
    }

    if (!v6)
    {
      v7 = *(v5 + 8);
      return v7 | (HIDWORD(v7) << 32);
    }

LABEL_37:
    sub_5AF20();
  }

  v5 = *v3;
  v6 = *(*v3 + 160);
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_37;
    }

    if (*(v5 + 8) != *(v5 + 4))
    {
      goto LABEL_8;
    }
  }

  else if (*(v5 + 20) != *(v5 + 8))
  {
    goto LABEL_8;
  }

  v10 = sub_A532F0(v2, 1uLL);
  v11 = *v10;
  v12 = *(*v10 + 160);
  if (!a2)
  {
    if (v12 == 1)
    {
      v14 = *(v11 + 4) | (*(v11 + 4) << 32);
      v15 = 0;
      if (HIDWORD(v14) != 0x7FFFFFFF)
      {
LABEL_25:
        v17 = v15 / -10;
        v18 = v15 % 10;
        if (v15 < 0)
        {
          v19 = -5;
        }

        else
        {
          v19 = 5;
        }

        v20 = v17 + HIDWORD(v14) + (((-103 * (v19 + v18)) >> 15) & 1) + ((-103 * (v19 + v18)) >> 10);
        goto LABEL_33;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_37;
      }

      v14 = *(v11 + 8);
      v15 = *(v11 + 4);
      if (HIDWORD(v14) != 0x7FFFFFFF && v15 != 0x7FFFFFFF)
      {
        goto LABEL_25;
      }
    }

    v17 = v15 / -10;
    v18 = v15 % 10;
    v20 = 0x7FFFFFFFLL;
LABEL_33:
    v21 = v17 + v14;
    if (v15 < 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = 5;
    }

    return (v21 + (((-103 * (v22 + v18)) >> 15) & 1) + ((-103 * (v22 + v18)) >> 10)) | (v20 << 32);
  }

  if (v12 == 1)
  {
    v13 = *(v11 + 4) | (*(v11 + 4) << 32);
  }

  else
  {
    if (v12)
    {
      goto LABEL_37;
    }

    v13 = *(v11 + 8);
  }

  return v13 | (HIDWORD(v13) << 32);
}

uint64_t sub_A520DC(uint64_t a1)
{
  v3 = *(a1 + 200);
  v2 = *(a1 + 208);
  v1 = (a1 + 200);
  if (v3 == v2)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v4 = v2 - v3;
  if (v2 - v3 == 72 && *(v3 + 24) == 1)
  {
    v5 = *(v2 - 72);
    v6 = *(v5 + 160);
    goto LABEL_8;
  }

  v5 = *(v2 - 72);
  v6 = *(v5 + 160);
  if (!v6)
  {
    if (*(v5 + 20) != *(v5 + 8))
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = sub_A532F0(v1, 0x8E38E38E38E38E39 * (v4 >> 3) - 2);
    v5 = *v8;
    v9 = *(*v8 + 160);
    if (v9 != 1)
    {
      if (!v9)
      {
        return *(v5 + 20);
      }

      goto LABEL_15;
    }

    return *(v5 + 8) | (*(v5 + 8) << 32);
  }

  if (v6 != 1)
  {
    goto LABEL_15;
  }

  if (*(v5 + 8) == *(v5 + 4))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v6 != 1)
  {
    if (!v6)
    {
      return *(v5 + 20);
    }

LABEL_15:
    sub_5AF20();
  }

  return *(v5 + 8) | (*(v5 + 8) << 32);
}

void sub_A521F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v66 = *(a4 + 12);
  if (!sub_A5436C(a3, &v66))
  {
    if (!sub_7E7E4(1u))
    {
LABEL_39:
      ++*a5;
      *a1 = 0;
      *(a1 + 24) = 0;
      return;
    }

    sub_19594F8(&v56);
    v15 = sub_4A5C(&v56, "Unable to unpack walking from stop ", 35);
    sub_A4FC74((a2 + 4120), *(a4 + 12));
    v17 = std::ostream::operator<<(v15, v16);
    v18 = sub_4A5C(v17, " to stop ", 9);
    sub_A4FC74((a2 + 4120), *(a4 + 20));
    v20 = std::ostream::operator<<(v18, v19);
    sub_4A5C(v20, " (expected duration: ", 21);
    *__p = *a4;
    *(&__p[1] + 4) = *(a4 + 12);
    v55 = 1;
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, " dsec): no valid path found; journey will be dropped from response", 66);
    (nullsub_1998)(&v51, __p);
    if ((v65 & 0x10) != 0)
    {
      v41 = v64;
      if (v64 < v61)
      {
        v64 = v61;
        v41 = v61;
      }

      v42 = v60;
      v22 = v41 - v60;
      if (v41 - v60 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((v65 & 8) == 0)
      {
        v22 = 0;
        HIBYTE(__p[2]) = 0;
LABEL_34:
        *(__p + v22) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62);
        }

        std::locale::~locale(&v57);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_39;
      }

      v42 = v58;
      v22 = v59 - v58;
      if (v59 - v58 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_43:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v22;
    if (v22)
    {
      memmove(__p, v42, v22);
    }

    goto LABEL_34;
  }

  v12 = sub_A5436C(a3, &v66);
  if (!v12)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  memset(__p, 0, 24);
  v53 = 0x7FFFFFFF;
  sub_A5350C(&v56, a2, v12[4], v12[5], *(a4 + 4), a6, v13, v14);
  *__p = v56;
  __p[2] = v57.__locale_;
  v53 = v58;
  if (v58 == 0x7FFFFFFF)
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_61;
    }

    sub_19594F8(&v56);
    v23 = sub_4A5C(&v56, "Unable to unpack walking from stop ", 35);
    sub_A4FC74((a2 + 4120), *(a4 + 12));
    v25 = std::ostream::operator<<(v23, v24);
    v26 = sub_4A5C(v25, " to stop ", 9);
    sub_A4FC74((a2 + 4120), *(a4 + 20));
    v28 = std::ostream::operator<<(v26, v27);
    sub_4A5C(v28, "; journey will be dropped from response", 39);
    if ((v65 & 0x10) != 0)
    {
      v43 = v64;
      if (v64 < v61)
      {
        v64 = v61;
        v43 = v61;
      }

      v44 = v60;
      v29 = v43 - v60;
      if (v43 - v60 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if ((v65 & 8) == 0)
      {
        v29 = 0;
        v52 = 0;
LABEL_56:
        *(&v51 + v29) = 0;
        sub_7E854(&v51, 1u);
        if (v52 < 0)
        {
          operator delete(v51);
        }

        if (v63 < 0)
        {
          operator delete(v62);
        }

        std::locale::~locale(&v57);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_61:
        ++*a5;
        *a1 = 0;
        *(a1 + 24) = 0;
        v40 = __p[0];
        if (!__p[0])
        {
          return;
        }

        goto LABEL_62;
      }

      v44 = v58;
      v29 = v59 - v58;
      if (v59 - v58 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_45:
        sub_3244();
      }
    }

    if (v29 >= 0x17)
    {
      operator new();
    }

    v52 = v29;
    if (!v29)
    {
      goto LABEL_56;
    }

LABEL_55:
    memmove(&v51, v44, v29);
    goto LABEL_56;
  }

  if (v58 > *(a4 + 8))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_61;
    }

    sub_19594F8(&v56);
    v30 = sub_4A5C(&v56, "Unable to unpack walking from stop ", 35);
    sub_A4FC74((a2 + 4120), *(a4 + 12));
    v32 = std::ostream::operator<<(v30, v31);
    v33 = sub_4A5C(v32, " to stop ", 9);
    sub_A4FC74((a2 + 4120), *(a4 + 20));
    v35 = std::ostream::operator<<(v33, v34);
    v36 = sub_4A5C(v35, ": expected arrival time ", 24);
    v37 = sub_258D4(v36, (a4 + 8));
    v38 = sub_4A5C(v37, " but got ", 9);
    v39 = sub_258D4(v38, &v53);
    sub_4A5C(v39, "; journey will be dropped from response", 39);
    if ((v65 & 0x10) != 0)
    {
      v45 = v64;
      if (v64 < v61)
      {
        v64 = v61;
        v45 = v61;
      }

      v46 = &v60;
    }

    else
    {
      if ((v65 & 8) == 0)
      {
        v29 = 0;
        v52 = 0;
        goto LABEL_56;
      }

      v46 = &v58;
      v45 = v59;
    }

    v44 = *v46;
    v29 = v45 - *v46;
    if (v29 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v29 >= 0x17)
    {
      operator new();
    }

    v52 = v45 - *v46;
    if (!v29)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  sub_93BED8(a1, __p);
  *(a1 + 24) = 1;
  v40 = __p[0];
  if (!__p[0])
  {
    return;
  }

LABEL_62:
  v47 = __p[1];
  v48 = v40;
  if (__p[1] != v40)
  {
    do
    {
      v49 = v47 - 1136;
      v50 = *(v47 - 2);
      if (v50 != -1)
      {
        (off_26707C0[v50])(&v56, v47 - 1136);
      }

      *(v47 - 2) = -1;
      v47 -= 1136;
    }

    while (v49 != v40);
    v48 = __p[0];
  }

  __p[1] = v40;
  operator delete(v48);
}

void sub_A52AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a41);
    sub_A542C4(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a41);
  sub_A542C4(&a16);
  _Unwind_Resume(a1);
}

char **sub_A52C1C(char **a1)
{
  if (*(a1 + 24) == 1)
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
          v5 = v3 - 1136;
          v6 = *(v3 - 2);
          if (v6 != -1)
          {
            (off_26707C0[v6])(&v8, v3 - 1136);
          }

          *(v3 - 2) = -1;
          v3 -= 1136;
        }

        while (v5 != v2);
        v4 = *a1;
      }

      a1[1] = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_A52CD0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v70 = 0;
  v71 = 0;
  v72 = 0;
  __p = 0;
  v68 = 0;
  v69 = 0;
  v4 = 64;
  if (a4)
  {
    v4 = 88;
  }

  v5 = (a3 + v4);
  v6 = *v5;
  v66 = v5[1];
  if (*v5 != v66)
  {
    v7 = a2;
    if (a4)
    {
      v8 = 0;
      while (1)
      {
        while (1)
        {
          v9 = sub_A56F04((v7 + 4136), *(v6 + 28), *(v6 + 48), *(v6 + 36));
          v11 = v10;
          v12 = *(v6 + 4);
          v13 = *(v6 + 8);
          v14 = *(v6 + 12);
          v15 = *(v6 + 13);
          v16 = *(v6 + 48);
          v17 = sub_A57920((v7 + 4136), *(v6 + 28));
          v18 = (v17 - *v17);
          if (*v18 >= 9u && (v19 = v18[4]) != 0)
          {
            v20 = (v17 + v19 + *(v17 + v19));
          }

          else
          {
            v20 = 0;
          }

          v21 = *(sub_A571D4(v20, v16) + 6);
          if (v8 >= v72)
          {
            break;
          }

          *v8 = v9;
          *(v8 + 8) = v11;
          *(v8 + 12) = v21;
          *(v8 + 16) = v12;
          *(v8 + 20) = v13;
          *(v8 + 24) = v14;
          *(v8 + 25) = v15;
          v8 += 28;
          v71 = v8;
          v6 += 60;
          if (v6 == v66)
          {
            goto LABEL_24;
          }
        }

        v65 = v15;
        v22 = v70;
        v23 = v8 - v70;
        v24 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v70) >> 2);
        v25 = v24 + 1;
        if ((v24 + 1) > 0x924924924924924)
        {
          goto LABEL_67;
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2) > v25)
        {
          v25 = 0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2);
        }

        v26 = (0x6DB6DB6DB6DB6DB7 * ((v72 - v70) >> 2)) >= 0x492492492492492 ? 0x924924924924924 : v25;
        if (v26)
        {
          break;
        }

        v27 = 28 * v24;
        *v27 = v9;
        *(v27 + 8) = v11;
        *(v27 + 12) = v21;
        *(v27 + 16) = v12;
        *(v27 + 20) = v13;
        *(v27 + 24) = v14;
        *(v27 + 25) = v65;
        v8 = 28 * v24 + 28;
        v28 = (v27 - v23);
        memcpy((v27 - v23), v22, v23);
        v70 = v28;
        v72 = 0;
        if (v22)
        {
          operator delete(v22);
        }

        v7 = a2;
        v71 = v8;
        v6 += 60;
        if (v6 == v66)
        {
          goto LABEL_24;
        }
      }

      if (v26 <= 0x924924924924924)
      {
        operator new();
      }

LABEL_68:
      sub_1808();
    }

    v62 = 0;
    do
    {
      v30 = sub_A56F04((v7 + 4136), *(v6 + 28), *(v6 + 48), *(v6 + 36));
      v32 = v31;
      v34 = *(v6 + 4);
      v33 = *(v6 + 8);
      v35 = *(v6 + 12);
      v36 = *(v6 + 13);
      v37 = *(v6 + 48);
      v38 = sub_A57920((v7 + 4136), *(v6 + 28));
      v39 = (v38 - *v38);
      if (*v39 >= 9u && (v40 = v39[4]) != 0)
      {
        v41 = (v38 + v40 + *(v38 + v40));
      }

      else
      {
        v41 = 0;
      }

      v42 = *(sub_A571D4(v41, v37) + 6);
      v43 = *(v6 + 4);
      v44 = *(a3 + 8);
      if (v43 >= v44)
      {
        if (v43 > v44)
        {
          if (v62 >= v69)
          {
            v52 = __p;
            v53 = v62 - __p;
            v54 = 0x6DB6DB6DB6DB6DB7 * ((v62 - __p) >> 2);
            v55 = v54 + 1;
            if ((v54 + 1) > 0x924924924924924)
            {
LABEL_67:
              sub_1794();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v69 - __p) >> 2) > v55)
            {
              v55 = 0xDB6DB6DB6DB6DB6ELL * ((v69 - __p) >> 2);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v69 - __p) >> 2)) >= 0x492492492492492)
            {
              v56 = 0x924924924924924;
            }

            else
            {
              v56 = v55;
            }

            if (v56)
            {
              if (v56 <= 0x924924924924924)
              {
                operator new();
              }

              goto LABEL_68;
            }

            v59 = 4 * ((v62 - __p) >> 2);
            *v59 = v30;
            *(v59 + 8) = v32;
            *(v59 + 12) = v42;
            *(v59 + 16) = v34;
            *(v59 + 20) = v33;
            *(v59 + 24) = v35;
            *(v59 + 25) = v36;
            v60 = (28 * v54 - v53);
            memcpy(v60, v52, v53);
            __p = v60;
            v69 = 0;
            if (v52)
            {
              operator delete(v52);
            }

            v7 = a2;
            v51 = 28 * v54 + 28;
          }

          else
          {
            *v62 = v30;
            *(v62 + 8) = v32;
            *(v62 + 12) = v42;
            *(v62 + 16) = v34;
            *(v62 + 20) = v33;
            *(v62 + 24) = v35;
            *(v62 + 25) = v36;
            v51 = v62 + 28;
          }

          v62 = v51;
          v68 = v51;
        }
      }

      else
      {
        v45 = v71;
        if (v71 < v72)
        {
          *v71 = v30;
          *(v45 + 2) = v32;
          *(v45 + 3) = v42;
          *(v45 + 4) = v34;
          *(v45 + 5) = v33;
          v45[24] = v35;
          v29 = (v45 + 28);
          v45[25] = v36;
        }

        else
        {
          v46 = v70;
          v47 = v71 - v70;
          v48 = 0x6DB6DB6DB6DB6DB7 * ((v71 - v70) >> 2);
          v49 = v48 + 1;
          if ((v48 + 1) > 0x924924924924924)
          {
            goto LABEL_67;
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2) > v49)
          {
            v49 = 0xDB6DB6DB6DB6DB6ELL * ((v72 - v70) >> 2);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v72 - v70) >> 2)) >= 0x492492492492492)
          {
            v50 = 0x924924924924924;
          }

          else
          {
            v50 = v49;
          }

          if (v50)
          {
            if (v50 <= 0x924924924924924)
            {
              operator new();
            }

            goto LABEL_68;
          }

          v57 = 4 * ((v71 - v70) >> 2);
          *v57 = v30;
          *(v57 + 8) = v32;
          *(v57 + 12) = v42;
          *(v57 + 16) = v34;
          *(v57 + 20) = v33;
          *(v57 + 24) = v35;
          *(v57 + 25) = v36;
          v29 = 28 * v48 + 28;
          v58 = (28 * v48 - v47);
          memcpy(v58, v46, v47);
          v70 = v58;
          v72 = 0;
          if (v46)
          {
            operator delete(v46);
          }

          v7 = a2;
        }

        v71 = v29;
      }

      v6 += 60;
    }

    while (v6 != v66);
  }

LABEL_24:
  sub_A57FC4(a1, &v70, &__p);
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }
}

void sub_A53298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a20;
    if (!a20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v22 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  _Unwind_Resume(exception_object);
}

unint64_t sub_A532F0(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 72 * a2;
}

void sub_A5342C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_A5350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = v12;
  v88 = v14;
  v84 = v8;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  if (v9 == v10)
  {
LABEL_102:
    *(sub_93BED8(v84, &v192) + 6) = v13;
    goto LABEL_103;
  }

  v15 = v11;
  v16 = v10;
  v17 = v9;
  v86 = v11;
  v87 = v10;
  while (1)
  {
    v20 = *(v17 + 1632);
    if (v20 == 3)
    {
      break;
    }

    if (v20 == 2)
    {
      v56 = (*v15)++;
      *v178 = v56;
      *&v178[4] = v13;
      v57 = *(v17 + 16);
      v58 = v57 / 10;
      v59 = v57 % 10;
      if (v57 < 0)
      {
        v60 = -5;
      }

      else
      {
        v60 = 5;
      }

      v13 += v58 + (((103 * (v60 + v59)) >> 15) & 1) + ((103 * (v60 + v59)) >> 10);
      *&v178[8] = v13;
      *&v178[12] = *(v17 + 8);
      v61 = v193;
      if (v193 < v194)
      {
        v18 = *v178;
        *(v193 + 16) = *&v178[16];
        *v61 = v18;
        *(v61 + 1128) = 2;
        v19 = v61 + 1136;
      }

      else
      {
        v19 = sub_A549B0(&v192, v178);
      }

      v193 = v19;
    }

    else if (v20 == 1)
    {
      *&v178[4] = xmmword_22A7460;
      *&v178[20] = xmmword_22A7470;
      *&v178[36] = 0xFFFFFFFFLL;
      v180 = 0;
      v181 = 0;
      __p = 0;
      v182 = 0;
      v21 = (*v15)++;
      *v178 = v21;
      *&v178[4] = sub_A54564((v17 + 8));
      *&v178[12] = v22;
      *&v178[16] = sub_A54564((v17 + 264));
      *&v178[24] = v23;
      *&v178[28] = v13;
      v24 = *(v17 + 552);
      v25 = v24 / 10;
      v26 = v24 % 10;
      if (v24 < 0)
      {
        v27 = -5;
      }

      else
      {
        v27 = 5;
      }

      *&v178[32] = v25 + v13 + (((103 * (v27 + v26)) >> 15) & 1) + ((103 * (v27 + v26)) >> 10);
      *&v178[36] = *(v17 + 520);
      v28 = *(v17 + 528);
      v29 = *(v17 + 536);
      if (v28 != v29)
      {
        operator new();
      }

      if (__p)
      {
        v180 = __p;
        operator delete(__p);
      }

      __p = 0;
      v180 = 0;
      v181 = 0;
      v30 = *(v17 + 528);
      v31 = *(v17 + 536);
      v15 = v86;
      if (v30 == v31)
      {
LABEL_50:
        v182 = 0;
        v13 = *&v178[32];
        v52 = v193;
        if (v193 >= v194)
        {
          goto LABEL_69;
        }
      }

      else
      {
        while (1)
        {
          v32 = *(v88 + 4160);
          v33 = __ROR8__(*v30, 32);
          v89[0] = "transfer";
          LODWORD(v90[0]) = v33;
          LODWORD(v91[0]) = 0;
          *v92 = v91;
          *&v92[8] = v90;
          v34 = *(v32 + 3880) + 1;
          *(v32 + 3880) = v34;
          v35 = *(v32 + 24);
          if (!v35)
          {
LABEL_116:
            sub_2C9894(v92);
LABEL_117:
            exception = __cxa_allocate_exception(0x40uLL);
            v195[0] = HIDWORD(v33);
            LODWORD(v91[0]) = v33;
            v90[0] = sub_7FCF0(6u);
            v90[1] = v80;
            sub_2C956C("Failed to acquire entity ", v89, " in quad node ", " at position ", " on layer ", v90, v92);
            if (v92[23] >= 0)
            {
              v81 = v92;
            }

            else
            {
              v81 = *v92;
            }

            if (v92[23] >= 0)
            {
              v82 = v92[23];
            }

            else
            {
              v82 = *&v92[8];
            }

            v83 = sub_2D390(exception, v81, v82);
          }

          if (*(v32 + 616) == v33)
          {
            ++*(v32 + 3888);
            *(v32 + 624) = v34;
            v36 = *(v32 + 632);
            if (!v36)
            {
              goto LABEL_116;
            }
          }

          else if (*(v32 + 640) == v33)
          {
            ++*(v32 + 3888);
            *(v32 + 648) = v34;
            v36 = *(v32 + 656);
            if (!v36)
            {
              goto LABEL_116;
            }
          }

          else if (*(v32 + 664) == v33)
          {
            ++*(v32 + 3888);
            *(v32 + 672) = v34;
            v36 = *(v32 + 680);
            if (!v36)
            {
              goto LABEL_116;
            }
          }

          else if (*(v32 + 688) == v33)
          {
            ++*(v32 + 3888);
            *(v32 + 696) = v34;
            v36 = *(v32 + 704);
            if (!v36)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v37 = *(v32 + 672);
            v38 = *(v32 + 648);
            v39 = *(v32 + 624);
            v85 = *(v32 + 696);
            v36 = sub_2D52A4(v35, 6, v33, 1);
            if (v39 >= v34)
            {
              v40 = v34;
            }

            else
            {
              v40 = v39;
            }

            if (v39 >= v34)
            {
              v41 = 0;
            }

            else
            {
              v41 = 24;
            }

            if (v38 < v40)
            {
              v40 = v38;
              v41 = 25;
            }

            if (v37 < v40)
            {
              v41 = 26;
              v40 = v37;
            }

            v42 = v85 >= v40;
            v43 = 27;
            if (v42)
            {
              v43 = v41;
            }

            v44 = v32 + 40 + 24 * v43;
            *v44 = v90[0];
            *(v44 + 8) = *(v32 + 3880);
            *(v44 + 16) = v36;
            v15 = v86;
            if (!v36)
            {
              goto LABEL_116;
            }
          }

          v45 = (v36 + *v36);
          v46 = (v45 - *v45);
          if (*v46 < 0x23u)
          {
            goto LABEL_117;
          }

          v47 = v46[17];
          if (!v47)
          {
            goto LABEL_117;
          }

          v48 = (v45 + v47 + *(v45 + v47));
          if (*v48 <= HIDWORD(v33))
          {
            goto LABEL_117;
          }

          v49 = (&v48[HIDWORD(v33) + 1] + v48[HIDWORD(v33) + 1]);
          v50 = (v49 - *v49);
          if (*v50 < 0xBu)
          {
            break;
          }

          v51 = v50[5];
          if (!v51 || *(v49 + v51) == -1)
          {
            break;
          }

          if (++v30 == v31)
          {
            goto LABEL_50;
          }
        }

        v182 = 1;
        v13 = *&v178[32];
        v52 = v193;
        if (v193 >= v194)
        {
LABEL_69:
          v55 = sub_A545EC(&v192, v178);
LABEL_70:
          v16 = v87;
          v193 = v55;
          if (__p)
          {
            v180 = __p;
            operator delete(__p);
          }

          goto LABEL_5;
        }
      }

      v53 = *v178;
      v54 = *&v178[16];
      *(v52 + 28) = *&v178[28];
      *(v52 + 48) = 0;
      *v52 = v53;
      *(v52 + 16) = v54;
      *(v52 + 56) = 0;
      *(v52 + 64) = 0;
      if (v180 != __p)
      {
        if (((v180 - __p) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      *(v52 + 72) = v182;
      *(v52 + 1128) = 1;
      v55 = (v52 + 1136);
      goto LABEL_70;
    }

LABEL_5:
    v17 += 1640;
    if (v17 == v16)
    {
      goto LABEL_102;
    }
  }

  sub_A54BA4(v178, v17 + 8);
  if (*(v88 + 16) != 1 || (v190 & 1) != 0)
  {
    *&v92[4] = xmmword_22A7460;
    *&v92[20] = 0xFFFFFFFFLL;
    memset(v93, 0, sizeof(v93));
    v94 = 0;
    v95 = -1;
    v96 = 0xFFFF;
    v97 = -1;
    v98 = 0;
    v99 = 0;
    v100[0] = 0;
    *(v100 + 6) = 0;
    v101 = 0x7FFFFFFF;
    v102 = 0x7FFFFFFF;
    v104 = 0;
    v103 = 0x7FFFFFFF7FFFFFFFLL;
    v105 = 0;
    v106 = 0x8000000080000000;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0;
    v111 = 0x7FFFFFFF;
    v112 = 0x8000000080000000;
    v113 = 0;
    v114 = xmmword_2297C00;
    v115 = -1;
    v116 = -1;
    v117 = 0;
    *(v119 + 6) = 0;
    v118 = 0;
    v119[0] = 0;
    v120 = 0x7FFFFFFF;
    v124 = 0;
    v123 = 0;
    v121 = 0x7FFFFFFF;
    v122 = 0x7FFFFFFF7FFFFFFFLL;
    v125 = 0x8000000080000000;
    v129 = 0;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v130 = 0x7FFFFFFF;
    v131 = 0x8000000080000000;
    v132 = 0;
    v133 = xmmword_2297C00;
    v134 = -1;
    v135 = 0x7FFFFFFF;
    v136 = 0x7FFFFFFF7FFFFFFFLL;
    v138 = 0;
    v139 = 0;
    v137 = 0;
    v140 = 0x8000000080000000;
    v141 = 0x7FFFFFFF;
    v142 = 0x7FFFFFFFFFFFFFFFLL;
    v143 = 0x8000000080000000;
    v144 = 0x7FFFFFFF;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v145 = 0u;
    *&v62 = 0x8000000080000000;
    *(&v62 + 1) = 0x8000000080000000;
    v160 = v62;
    v161 = v62;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v63 = (*v15)++;
    *v92 = v63;
    if (v184 == 2)
    {
      if (v183)
      {
LABEL_124:
        sub_5AF20();
      }

      *&v92[4] = *v178 << 32;
      *&v92[12] = *&v178[4];
      v64 = v188;
      if (v188 != 2)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v184 != 1)
      {
        if (v184)
        {
          *&v92[4] = 0xFFFFFFFF00000003;
          *&v92[12] = 0;
          v64 = v188;
          if (v188 == 2)
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v183)
          {
            goto LABEL_124;
          }

          *&v92[4] = (*v178 << 32) | 3;
          *&v92[12] = *&v178[4];
          v64 = v188;
          if (v188 == 2)
          {
            goto LABEL_76;
          }
        }

LABEL_82:
        if (v64 == 1)
        {
          if (v187)
          {
LABEL_125:
            sub_5AF20();
          }

          v65 = v186;
          v66 = (v185 << 32) | 4;
        }

        else if (v64)
        {
          v65 = 0;
          v66 = 0xFFFFFFFF00000003;
        }

        else
        {
          if (v187)
          {
            goto LABEL_125;
          }

          v65 = v186;
          v66 = (v185 << 32) | 3;
        }

LABEL_89:
        *&v92[16] = v66;
        *&v92[24] = v65;
        v67 = sub_3CF22C(v189);
        sub_3EDCF4(v91, v67);
        LODWORD(v91[0]) = v13;
        sub_790648(v89, v189);
        sub_4D3414(v89, v91, v90);
        sub_4192A0(v93, v90);
        sub_3EEA68(v90);
        sub_3EEA68(v89);
        v68 = v191;
        if (v191 < 0)
        {
          v69 = -5;
        }

        else
        {
          v69 = 5;
        }

        v70 = v193;
        if (v193 >= v194)
        {
          v72 = sub_A54F0C(&v192, v92);
        }

        else
        {
          v71 = *v92;
          *(v193 + 12) = *&v92[12];
          *v70 = v71;
          sub_790648(v70 + 32, v93);
          *(v70 + 1128) = 3;
          v72 = (v70 + 1136);
        }

        v193 = v72;
        sub_3EE9A4(v91);
        sub_3EEA68(v93);
        if (v190 == 1)
        {
          sub_3EEA68(v189);
        }

        if (v187 != -1)
        {
          (off_2670810[v187])(v92, &v185);
        }

        v187 = -1;
        if (v183 != -1)
        {
          (off_2670810[v183])(v92, v178);
        }

        v73 = 103 * (v69 + v68 % 10);
        v13 += v68 / 10 + ((v73 >> 15) & 1) + (v73 >> 10);
        v16 = v87;
        goto LABEL_5;
      }

      if (v183)
      {
        goto LABEL_124;
      }

      *&v92[4] = (*v178 << 32) | 4;
      *&v92[12] = *&v178[4];
      v64 = v188;
      if (v188 != 2)
      {
        goto LABEL_82;
      }
    }

LABEL_76:
    if (v187)
    {
      goto LABEL_125;
    }

    v65 = v186;
    v66 = v185 << 32;
    goto LABEL_89;
  }

  *v84 = 0;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0x7FFFFFFF;
  if (v187 != -1)
  {
    (off_2670810[v187])(v92, &v185);
  }

  v187 = -1;
  if (v183 != -1)
  {
    (off_2670810[v183])(v92, v178);
  }

LABEL_103:
  v74 = v192;
  if (v192)
  {
    v75 = v193;
    v76 = v192;
    if (v193 != v192)
    {
      do
      {
        v77 = (v75 - 1136);
        v78 = *(v75 - 8);
        if (v78 != -1)
        {
          (off_26707C0[v78])(v178, v75 - 1136);
        }

        *(v75 - 8) = -1;
        v75 -= 1136;
      }

      while (v77 != v74);
      v76 = v192;
    }

    v193 = v74;
    operator delete(v76);
  }
}

void sub_A54194(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  *(v3 - 128) = v1;
  v6 = STACK[0xEE0];
  if (STACK[0xEE0])
  {
    STACK[0xEE8] = v6;
    operator delete(v6);
  }

  sub_A542C4((v3 - 136));
  _Unwind_Resume(a1);
}

char **sub_A542C4(char **a1)
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
        v5 = v3 - 1136;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_26707C0[v6])(&v8, v3 - 1136);
        }

        *(v3 - 2) = -1;
        v3 -= 1136;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_A5436C(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v8 = ((v7 ^ (v7 >> 33)) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v9 = vcnt_s8(v2);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v8;
    if (v8 >= *&v2)
    {
      v10 = v8 % *&v2;
    }
  }

  else
  {
    v10 = v8 & (*&v2 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  result = *v11;
  if (*v11)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v2 - 1;
      while (1)
      {
        v14 = result[1];
        if (v8 == v14)
        {
          v15 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
          if (v15 && result[3] == v4)
          {
            return result;
          }
        }

        else if ((v14 & v13) != v10)
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
      if (v8 == v16)
      {
        v17 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
        if (v17 && result[3] == v4)
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

        if (v16 != v10)
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

uint64_t sub_A54508(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 != -1)
  {
    (off_26707B0[v2])(&v4, a1);
  }

  *(a1 + 160) = -1;
  return a1;
}

unint64_t sub_A54564(unsigned int *a1)
{
  v1 = *(a1 + 248);
  if (v1 == 2)
  {
    if (a1[60])
    {
      goto LABEL_11;
    }

    return *a1 << 32;
  }

  else if (v1 == 1)
  {
    if (a1[60])
    {
      goto LABEL_11;
    }

    return (*a1 << 32) | 4;
  }

  else
  {
    if (!*(a1 + 248))
    {
      if (!a1[60])
      {
        return (*a1 << 32) | 3;
      }

LABEL_11:
      sub_5AF20();
    }

    return 0xFFFFFFFF00000003;
  }
}

unsigned int *sub_A545EC(char **a1, uint64_t a2)
{
  v2 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v5 = 0x39B0AD12073615;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  v8 = *(a2 + 28);
  *&stru_20.segname[1136 * v2 + 8] = 0;
  *(v6 + 28) = v8;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 72) = *(a2 + 72);
  *(v6 + 1128) = 1;
  v11 = (v6 + 1136);
  v12 = *a1;
  v13 = a1[1];
  v14 = (v6 + *a1 - v13);
  if (*a1 != v13)
  {
    v15 = v14;
    v16 = *a1;
    do
    {
      *v15 = 0;
      v15[282] = -1;
      v17 = *(v16 + 282);
      if (v17 != -1)
      {
        v20 = v15;
        (off_26707E8[v17])(&v20, v16);
        v15[282] = v17;
      }

      v16 += 1136;
      v15 += 284;
    }

    while (v16 != v13);
    do
    {
      v18 = *(v12 + 282);
      if (v18 != -1)
      {
        (off_26707C0[v18])(&v20, v12);
      }

      *(v12 + 282) = -1;
      v12 += 1136;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_A54844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v8 = *v6;
  if (*v6)
  {
    *(v5 + 56) = v8;
    operator delete(v8);
  }

  sub_A54870(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A54870(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 1136;
      *(a1 + 16) = v3 - 1136;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_26707C0[v5])(&v7);
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

uint64_t sub_A54910(uint64_t a1)
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
        v6 = v4 - 1136;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_26707C0[v7])(&v9, v4 - 1136);
        }

        *(v4 - 8) = -1;
        v4 -= 1136;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_A549B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x193D4BB7E327A977 * (v4 >> 4) + 1;
  if (v5 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4) > v5)
  {
    v5 = 0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((*(a1 + 16) - v2) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v7 = 0x39B0AD12073615;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (v4 >> 4);
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 1128) = 2;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 1128) = -1;
      v11 = v10[282];
      if (v11 != -1)
      {
        v15 = v9;
        (off_26707E8[v11])(&v15, v10);
        *(v9 + 1128) = v11;
      }

      v10 += 284;
      v9 += 1136;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[282];
      if (v12 != -1)
      {
        (off_26707C0[v12])(&v16, v2);
      }

      v2[282] = -1;
      v2 += 284;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 1136;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 1136;
}

uint64_t sub_A54BA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 240) = -1;
  v4 = *(a2 + 240);
  if (v4 != -1)
  {
    v7 = a1;
    (off_2670820[v4])(&v7, a2);
    *(a1 + 240) = v4;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 496) = -1;
  v5 = *(a2 + 496);
  if (v5 != -1)
  {
    v7 = a1 + 256;
    (off_2670820[v5])(&v7, a2 + 256);
    *(a1 + 496) = v5;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = 0;
  *(a1 + 1608) = 0;
  if (*(a2 + 1608) == 1)
  {
    sub_790648(a1 + 512, a2 + 512);
    *(a1 + 1608) = 1;
  }

  *(a1 + 1616) = *(a2 + 1616);
  return a1;
}

void sub_A54C8C(_Unwind_Exception *a1)
{
  if (*(v1 + 1608) == 1)
  {
    sub_3EEA68(v1 + 512);
  }

  sub_A54CEC(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

void sub_A54CBC(_Unwind_Exception *a1)
{
  sub_A54EB0(v2);
  sub_A54CEC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A54CEC(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 != -1)
  {
    (off_2670810[v2])(&v4, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

__n128 sub_A54D58(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *(v3 + 63) = *(a2 + 63);
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  *(v3 + 16) = v4;
  v7 = *a2;
  *(v3 + 72) = 0;
  *v3 = v7;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  v9 = *(a2 + 9);
  v8 = *(a2 + 10);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = a2[6];
  *(v3 + 112) = *(a2 + 112);
  *(v3 + 96) = v10;
  v11 = *(a2 + 120);
  *(v3 + 136) = *(a2 + 136);
  *(v3 + 120) = v11;
  sub_81988((v3 + 152), a2 + 152);
  sub_49DC18((v3 + 176), a2 + 22);
  sub_49DC18((v3 + 200), a2 + 25);
  result = a2[14];
  *(v3 + 224) = result;
  return result;
}

void sub_A54E60(_Unwind_Exception *a1)
{
  sub_48C8F4((v1 + 176));
  sub_44D36C(v1);
  _Unwind_Resume(a1);
}

void sub_A54E90(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A54EB0(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 != -1)
  {
    (off_2670810[v2])(&v4, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

unsigned int *sub_A54F0C(char **a1, _OWORD *a2)
{
  v2 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v5 = 0x39B0AD12073615;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  *v15 = *a2;
  *(v15 + 12) = *(a2 + 12);
  sub_790648(1136 * v2 + 32, (a2 + 2));
  *(v15 + 1128) = 3;
  v6 = (1136 * v2 + 1136);
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
      *(v10 + 282) = -1;
      v12 = *(v11 + 282);
      if (v12 != -1)
      {
        v16 = v10;
        (off_26707E8[v12])(&v16, v11);
        *(v10 + 282) = v12;
      }

      v11 += 1136;
      v10 += 1136;
    }

    while (v11 != v8);
    do
    {
      v13 = *(v7 + 282);
      if (v13 != -1)
      {
        (off_26707C0[v13])(&v16, v7);
      }

      *(v7 + 282) = -1;
      v7 += 1136;
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

uint64_t sub_A5512C(uint64_t a1)
{
  if (*(a1 + 1608) == 1)
  {
    sub_3EEA68(a1 + 512);
  }

  v2 = *(a1 + 496);
  if (v2 != -1)
  {
    (off_2670810[v2])(&v5, a1 + 256);
  }

  *(a1 + 496) = -1;
  v3 = *(a1 + 240);
  if (v3 != -1)
  {
    (off_2670810[v3])(&v6, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

void ***sub_A551C8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 284;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_26707C0[v7])(&v9, v4 - 284);
          }

          *(v4 - 2) = -1;
          v4 -= 284;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_A55288(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a3;
  v9 = a1[1];
  v8 = a1[2];
  if (0x193D4BB7E327A977 * ((v8 - v9) >> 4) >= a5)
  {
    v14 = v9 - a2;
    if (0x193D4BB7E327A977 * ((v9 - a2) >> 4) < a5)
    {
      v16 = v14 + a3;
      a1[1] = sub_A559D0(a1, v14 + a3, a4, a1[1]);
      if (v14 < 1)
      {
        return v5;
      }

      sub_A5566C(a1, v5, v9, v5 + 1136 * a5);
      for (i = v5; ; i += 284)
      {
        while (1)
        {
          v18 = i[282];
          v19 = *(v6 + 1128);
          if (v18 != -1)
          {
            break;
          }

          if (v19 != -1)
          {
            goto LABEL_16;
          }

LABEL_17:
          v6 += 1136;
          i += 284;
          if (v6 == v16)
          {
            return v5;
          }
        }

        if (v19 != -1)
        {
LABEL_16:
          __p = i;
          (off_2670880[v19])(&__p, i, v6);
          goto LABEL_17;
        }

        (off_26707C0[v18])(&__p, i);
        i[282] = -1;
        v6 += 1136;
        if (v6 == v16)
        {
          return v5;
        }
      }
    }

    v20 = 1136 * a5;
    sub_A5566C(a1, a2, a1[1], a2 + 1136 * a5);
    v21 = v20 + v6;
    for (j = v5; ; j += 284)
    {
      while (1)
      {
        v23 = j[282];
        v24 = *(v6 + 1128);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_24;
        }

LABEL_25:
        v6 += 1136;
        j += 284;
        if (v6 == v21)
        {
          return v5;
        }
      }

      if (v24 != -1)
      {
LABEL_24:
        __p = j;
        (off_2670880[v24])(&__p, j, v6);
        goto LABEL_25;
      }

      (off_26707C0[v23])(&__p, j);
      j[282] = -1;
      v6 += 1136;
      if (v6 == v21)
      {
        return v5;
      }
    }
  }

  v10 = *a1;
  v11 = a5 + 0x193D4BB7E327A977 * ((v9 - *a1) >> 4);
  if (v11 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  v12 = 0x193D4BB7E327A977 * ((v8 - v10) >> 4);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x1CD85689039B0ALL)
  {
    v13 = 0x39B0AD12073615;
  }

  else
  {
    v13 = v11;
  }

  v38 = a1;
  if (v13)
  {
    if (v13 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v25 = 16 * ((a2 - v10) >> 4);
  __p = 0;
  v35 = v25;
  v36 = v25;
  v37 = 0;
  v26 = 1136 * a5;
  v27 = v25 + 1136 * a5;
  do
  {
    *v25 = 0;
    *(v25 + 1128) = -1;
    v28 = *(v6 + 1128);
    if (v28 != -1)
    {
      v39 = v25;
      (off_2670830[v28])(&v39, v6, a3, a4);
      *(v25 + 1128) = v28;
    }

    v25 += 1136;
    v6 += 1136;
    v26 -= 1136;
  }

  while (v26);
  v36 = v27;
  v5 = sub_A557CC(a1, &__p, v5);
  v29 = v35;
  v30 = v36;
  if (v36 != v35)
  {
    do
    {
      v31 = v30 - 1136;
      v36 = v30 - 1136;
      v32 = *(v30 - 8);
      if (v32 != -1)
      {
        (off_26707C0[v32])(&v39);
        v31 = v36;
      }

      *(v30 - 8) = -1;
      v30 = v31;
    }

    while (v31 != v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}