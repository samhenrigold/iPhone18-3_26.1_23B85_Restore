void sub_255A1C354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  sub_255A1B334(&a9);
  if (a19 != v19)
  {
    free(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255A1C3A0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *(result + 33);
      if (v7 == 1)
      {
        v8 = result;
        result = *result;
        v7 = v8[1];
      }

      else
      {
        LOBYTE(v3) = 2;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = result;
      *(a3 + 8) = v7;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

uint64_t sub_255A1C46C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_255A115A0();
    return (*(v2 + 8))();
  }

  return result;
}

uint64_t sub_255A1C4AC(uint64_t *a1)
{
  result = sub_255A115AC(a1);
  if (result)
  {
    sub_255A115A0();
    result = (*(v5 + 8))();
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_255A1C500(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    sub_255A115A0();
    (*(v5 + 8))();
  }

  return MEMORY[0x259C46B00](a2, 0xA1C4030951706);
}

uint64_t sub_255A1C598(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_255A115A0();
    return (*(v3 + 8))();
  }

  return result;
}

uint64_t sub_255A1C5E0(uint64_t *a1)
{
  result = sub_255A115AC(a1);
  if (result)
  {
    sub_255A115A0();
    result = (*(v5 + 8))();
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_255A1C634(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2)
  {
    result = *a3;
    *a3 = 0;
    if (result)
    {
      sub_255A115A0();
      return (*(v4 + 8))();
    }
  }

  return result;
}

void sub_255A1C680()
{
  if (__cxa_guard_acquire(byte_27F7DAF68))
  {
    dword_27F7DAF60 = getpagesize();

    __cxa_guard_release(byte_27F7DAF68);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}