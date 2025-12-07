int *Type1ScalerOpen(uint64_t a1, uint64_t a2)
{
  if (qword_28151C200 != -1)
  {
    sub_24BC05CA8();
  }

  sub_24BBCFAB8(a1, a2);
  return &dword_27F0784E0;
}

int *sub_24BBCFAB8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_27F0784D8, memory_order_acquire) & 1) == 0)
  {
    sub_24BC05BE4();
  }

  return &dword_27F0784E0;
}

uint64_t sub_24BBCFAF0(uint64_t a1, _DWORD *a2)
{
  result = 8;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_24BBCFB0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 8;
  if (a2 && a3)
  {
    v6 = 0;
    v7 = 0;
    sub_24BBCFBC8(a2, &v6);
    if (v6)
    {
      sub_24BBD5F24(v6, a3);
    }

    if (v7)
    {
      sub_24BBECA0C(v7);
    }

    return 0;
  }

  return v3;
}

void sub_24BBCFB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_24BBECA0C(a10);
  }

  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    sub_24BBE2308(v12);
    __cxa_end_catch();
    JUMPOUT(0x24BBCFB60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BBCFBC8@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  if (!result[5] || (v3 = result, v4 = *(result + 6), v4 >= 0x11))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  if (v4)
  {
    result = memcpy(__dst, result[4], 8 * v4);
  }

  v5 = v3[1];
  v6 = v3[2];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    operator new();
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

void sub_24BBCFD20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BBECA0C(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BBCFD6C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_285F89D48;
  v9 = a1 + 1;
  sub_24BBCFF00(a2, a1 + 1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = (*(*a1[1] + 56))(a1[1], a3, a4, 0);
  v10 = (*(**v9 + 64))();
  a1[4] = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  a1[5] = (*(**v9 + 64))(*v9, a1[3], a5, 4);
  return a1;
}

void sub_24BBCFEC8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_24BBECA0C(v4);
  }

  MCacheData::~MCacheData(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BBCFF00@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[3];
  v4 = result[4];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    v5 = (*(*result + 40))(result);
    if (v5 > 22)
    {
      if (v5 > 26)
      {
        if ((v5 - 27) < 2)
        {
          operator new();
        }

        if (v5 == 29)
        {
          operator new();
        }
      }

      else
      {
        if ((v5 - 23) < 2)
        {
          operator new();
        }

        if ((v5 - 25) < 2)
        {
          operator new();
        }
      }
    }

    else
    {
      if (v5 > 16)
      {
        if (v5 <= 18)
        {
          if (v5 == 17)
          {
            operator new();
          }

LABEL_23:
          operator new();
        }

        if (v5 != 19)
        {
          if (v5 == 22)
          {
            operator new();
          }

          goto LABEL_29;
        }

LABEL_25:
        operator new();
      }

      switch(v5)
      {
        case 14:
          goto LABEL_23;
        case 15:
          goto LABEL_25;
        case 16:
          operator new();
      }
    }

LABEL_29:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 3);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

void sub_24BBD01C4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    sub_24BBECA0C(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BBD0240(uint64_t a1, uint64_t a2)
{
  result = sub_24BBD02B0(a1, a2);
  *result = &unk_285F8A090;
  *(result + 8) = 0;
  v3 = *(result + 48);
  *(result + 32) = *(*(v3 + 128) + 56);
  if (*(v3 + 148))
  {
    *(result + 8) = 1;
    v4 = 16385;
  }

  else
  {
    v4 = 0x4000;
  }

  if (*(v3 + 200))
  {
    *(result + 8) = v4;
  }

  return result;
}

uint64_t sub_24BBD02B0(uint64_t result, uint64_t a2)
{
  *result = &unk_285F8A2D0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  return result;
}

void *sub_24BBD02DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_24BBD038C(v10, a1);
  v8 = sub_24BBD0430(a1, a2, a3, v4);
  sub_24BBD1704(v10);
  return v8;
}

uint64_t sub_24BBD0390(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285F8A7E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 256) = 1;
  pthread_mutex_lock(&stru_28151BBD0);
  *(a1 + 248) = qword_27F078540;
  qword_27F078540 = a1;
  return a1;
}

void *sub_24BBD0430(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v31[2] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 1) == 0)
  {
    return 0;
  }

  v30 = 0;
  *__src = 0u;
  memset(v28, 0, sizeof(v28));
  v9 = (*(*a1 + 280))(a1);
  sub_24BBD09E4(v28, v9, 1112297028);
  v10 = LODWORD(v28[0]);
  if (LODWORD(v28[0]) <= 0xD)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 5);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v11 = sub_24BBD0E00(v28[0], qword_28151C040, 0);
  v12 = v11;
  if (v11)
  {
    v27 = v11;
    memmove(v11, __src[1], v10);
    v13 = *(a1 + 48);
    v14 = *(v13 + 148);
    v15 = *(v13 + 150);
    if (!*(a1 + 24))
    {
      if (__PAIR64__(v15, v14) != __PAIR64__(bswap32(v12[3]) >> 16, bswap32(v12[2]) >> 16))
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(v25, 5);
        __cxa_throw(v25, &unk_285F89D90, nullsub_8);
      }

      *(a1 + 24) = sub_24BBF24B0(v12, v10);
    }

    if (a4)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_24BBD0F68(4 * (v16 + v15), 0);
    v18 = v17;
    v26 = v17;
    v31[0] = 0;
    v31[1] = 0;
    if (a4)
    {
      v19 = &v17[v15];
      (*(*a1 + 312))(a1, a2, a3, v12, v10, v19);
    }

    else
    {
      (*(*a1 + 312))(a1, a2, a3, v12, v10, v31);
      v19 = v31;
      sub_24BBD12E8(*(a1 + 24), v18, v31, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    v20 = *(a1 + 24);
    v21 = *(*(*(a1 + 48) + 128) + 2);
    if (!qword_28151C130)
    {
      qword_28151C138 = sub_24BBF2FD8;
      qword_28151C140 = sub_24BBF3008;
      qword_28151C148 = sub_24BBF3038;
      qword_28151C150 = sub_24BBF3040;
      unk_28151C158 = 0;
      qword_28151C160 = sub_24BBF30D8;
      qword_28151C170 = 0;
      unk_28151C178 = 0;
      qword_28151C168 = sub_24BBF30E4;
      qword_28151C130 = &qword_28151C138;
    }

    if (!sub_24BBF0574(v20, v12, v10, v19, v19, v18, v21, &qword_28151C130, 0))
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(v24, 1);
      __cxa_throw(v24, &unk_285F89D90, nullsub_8);
    }

    v4 = v26;
    v26 = 0;
    sub_24BBF33B8(&v26);
    sub_24BBF33B8(&v27);
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x24C252010](v28 + 8);
  return v4;
}

void sub_24BBD0808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void *);
  v18 = va_arg(va1, void);
  sub_24BBF33B8(va);
  MEMORY[0x24C252010](va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBD0888(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    operator new();
  }

  return *(a1 + 40);
}

uint64_t sub_24BBD0900(uint64_t a1, uint64_t a2)
{
  v4 = TFontSurrogate::TFontSurrogate();
  *v4 = &unk_285F8A030;
  v4[2] = 0;
  if (a2 && (*(*a2 + 40))(a2) != 22)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return a1;
}

void sub_24BBD09C0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  TFontSurrogate::~TFontSurrogate(v1);
  _Unwind_Resume(a1);
}

void *sub_24BBD09E4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  TDataReference::TDataReference((a1 + 1));
  a1[6] = a2;
  v10 = 0;
  (*(*a2 + 40))(v9, a2, a3, 0, &v10);
  TDataReference::operator=();
  MEMORY[0x24C252010](v9);
  *a1 = v10;
  Data = TDataReference::GetData((a1 + 1));
  a1[5] = Data;
  if (!Data)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return a1;
}

void sub_24BBD0ACC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x24C252010](v1 + 8);
  _Unwind_Resume(a1);
}

void sub_24BBD0B04(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X3>, TDataReference *a4@<X8>)
{
  if (a2 != 1112297028)
  {
    if ((*(*a1 + 16))(a1) != a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 4);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    if (a3)
    {
      v9 = (*(**(a1 + 8) + 56))(*(a1 + 8));
      *a3 = (*(*v9 + 24))(v9);
    }

    v8 = *(**(a1 + 8) + 48);

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (a3)
    {
      *a3 = (*(*v7 + 24))(v7);
      v7 = *(a1 + 16);
    }

    v8 = *(*v7 + 32);

LABEL_7:
    v8();
    return;
  }

  v10 = (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (TResourceForkFileReference::GetResourceCount(*(*(v10 + 8) + 48)) == 1)
  {
    operator new();
  }

  TDataReference::TDataReference(a4);
}

uint64_t sub_24BBD0E00(unsigned int a1, uint64_t *a2, char a3)
{
  if (!a2 || ((v3 = *a2, (a3 & 1) == 0) ? (result = (*(v3 + 16))(a2, a1)) : (result = (*(v3 + 24))(a2, a1, 1)), !result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 20);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

_BYTE *sub_24BBD0EE4(int a1, int a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  if ((a1 - 16) < 0xFFFFFFF1 || a2 > 16)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  v8 = (1 << a1);
  v9 = a3((v8 + 3), a4);
  v5 = v9;
  if (v9)
  {
    *v9 = v7;
    v9[1] = v6;
    memset(v9 + 2, 255, v8);
  }

  return v5;
}

unint64_t sub_24BBD0F7C(const char *a1)
{
  v1 = sub_24BBD0FA4(a1);

  return sub_24BBD11BC(v1);
}

unint64_t sub_24BBD0FA4(const char *a1)
{
  v1 = 0;
  v2 = *a1;
  if (v2 == 45 || v2 == 43)
  {
    v4 = a1 + 1;
  }

  else
  {
    v4 = a1;
  }

  do
  {
    v5 = v4[v1];
    v6 = byte_24BC06072[v4[v1++]];
  }

  while ((v6 & 0x40) != 0);
  v7 = &v4[v1];
  if (v5 != 35)
  {
    v12 = strtol(v4, 0, 10);
    v13 = sub_24BBD116C(v12);
    if (v5 == 46)
    {
      v14 = 0;
      do
      {
        v5 = v4[v14 + v1];
        v15 = byte_24BC06072[v4[v14++ + v1]];
      }

      while ((v15 & 0x40) != 0);
      v16 = &v4[v1 - 1 + v14];
      if (v14 != 1)
      {
        v17 = strtol(v7, 0, 10);
        v18 = sub_24BBD116C(v17);
        v19 = sub_24BBEDBA0(v18, 1 - v14);
        v13 = sub_24BBFB6EC(v13, v19);
      }
    }

    else
    {
      v16 = (v7 - 1);
    }

    if ((v5 & 0xFFFFFFDF) == 0x45)
    {
      v5 = *(v16 + 1);
      if (v5 == 45 || (v20 = v16 + 1, v5 == 43))
      {
        v5 = *(v16 + 2);
        v20 = v16 + 2;
      }

      if ((byte_24BC06072[v5] & 0x40) != 0)
      {
        v21 = (v20 + 1);
        do
        {
          v22 = *v21++;
          v5 = v22;
        }

        while ((byte_24BC06072[v22] & 0x40) != 0);
      }

      v23 = atoi((v16 + 1));
      v13 = sub_24BBEDBA0(v13, v23);
    }

    if (v2 == 45)
    {
      v10 = -v13;
    }

    else
    {
      LODWORD(v10) = v13;
    }

    if (!v5)
    {
      v11 = v13 & 0xFFFFFFFF00000000;
      return v11 | v10;
    }

    goto LABEL_33;
  }

  if (v1 == 1 || (v8 = atoi(v4), v8 > 0x24) || (__endptr = 0, v9 = strtol(&v4[v1], &__endptr, v8), *__endptr))
  {
LABEL_33:
    v11 = 0x753000000000;
    LODWORD(v10) = 1;
    return v11 | v10;
  }

  if (v2 == 45)
  {
    v9 = -v9;
  }

  v10 = sub_24BBD116C(v9);
  v11 = v10 & 0xFFFFFFFF00000000;
  return v11 | v10;
}

uint64_t sub_24BBD116C(int a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 >= 0)
  {
    LODWORD(v1) = a1;
  }

  else
  {
    LODWORD(v1) = -a1;
  }

  v2 = 0x1E00000000;
  v3 = v1 >> 30;
  v4 = __clz(v1) ^ 0x1F;
  v5 = v1 << (30 - v4);
  v6 = v4 << 32;
  if (!(v1 >> 30))
  {
    LODWORD(v1) = v5;
  }

  if (!v3)
  {
    v2 = v6;
  }

  if (a1 >= 0)
  {
    v1 = v1;
  }

  else
  {
    v1 = -v1;
  }

  return v2 | v1;
}

unint64_t sub_24BBD11BC(unint64_t result)
{
  if (result && HIDWORD(result) != 14)
  {
    if ((result & 0x80000000) == 0)
    {
      v1 = result;
    }

    else
    {
      v1 = -result;
    }

    v2 = ((v1 >> (13 - BYTE4(result))) & 1) + (v1 >> (13 - BYTE4(result)) >> 1);
    if ((result & 0x80000000) != 0)
    {
      v2 = -v2;
    }

    if (SHIDWORD(result) <= 13)
    {
      return v2;
    }

    else
    {
      return (result >> 31) ^ 0x7FFFFFFFu;
    }
  }

  return result;
}

uint64_t *sub_24BBD1200()
{
  if (!qword_28151C130)
  {
    qword_28151C138 = sub_24BBF2FD8;
    qword_28151C140 = sub_24BBF3008;
    qword_28151C148 = sub_24BBF3038;
    qword_28151C150 = sub_24BBF3040;
    unk_28151C158 = 0;
    qword_28151C160 = sub_24BBF30D8;
    qword_28151C170 = 0;
    unk_28151C178 = 0;
    qword_28151C168 = sub_24BBF30E4;
    qword_28151C130 = &qword_28151C138;
  }

  return &qword_28151C130;
}

uint64_t sub_24BBD1288(_BYTE *a1, unsigned int a2, int *a3)
{
  v3 = *a1;
  if (a2 >> v3)
  {
    return 0;
  }

  v5 = 0;
  if (*a1)
  {
    v6 = 1;
    do
    {
      v8 = *a3++;
      v7 = v8;
      if (v8)
      {
        if (v7 != 0x10000)
        {
          return 0;
        }

        v5 |= v6;
      }

      v6 *= 2;
      --v3;
    }

    while (v3);
    if (v5 < 0)
    {
      return 0;
    }
  }

  if (a1[v5 + 2] != 255)
  {
    return 0;
  }

  a1[v5 + 2] = a2;
  return 1;
}

BOOL sub_24BBD12E8(unsigned __int8 *a1, _DWORD *a2, int *a3, int *a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, __int16 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13)
{
  v15 = a5;
  v52 = *MEMORY[0x277D85DE8];
  memset(v45, 0, sizeof(v45));
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  LODWORD(v48) = a1[1];
  *(&v48 + 1) = a2;
  v19 = *a1;
  LODWORD(v49) = v19;
  *(&v49 + 1) = a3;
  LODWORD(v50) = v19;
  *(&v50 + 1) = a4;
  v47[5] = 0;
  v47[6] = a12;
  v47[4] = 0x10000;
  memset(v47, 0, 32);
  v46 = 0;
  *(&v45[0] + 1) = 0;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  if (a8)
  {
    *&v43[0] = a8;
    LOWORD(v44) = a9;
    if (sub_24BBE3DC8(v47, v43, a5, v45, &v48, a11, a13))
    {
      return 0;
    }
  }

  else
  {
    v21 = a10;
    if (a10 && v19)
    {
      v22 = 0;
      v23 = a3;
      do
      {
        v24 = *a4;
        v25 = v21;
        do
        {
          v21 = v25;
          v27 = *(v25 + 8);
          v26 = *(v25 + 12);
          v25 += 8;
        }

        while (v24 >= v27 && v26 < 0x10000);
        v29 = *(v25 - 8);
        v28 = *(v25 - 4);
        v30 = (v24 - v29) * (v26 - v28) * 0.0000152587891;
        if (v30 >= 0.0)
        {
          v31 = 0.5;
        }

        else
        {
          v31 = -0.5;
        }

        v32 = v30 + v31;
        if (v32 >= 2147483650.0)
        {
          v33 = 0x7FFFFFFF;
        }

        else if (v32 <= -2147483650.0)
        {
          v33 = 0x80000000;
        }

        else
        {
          v33 = v32;
        }

        v34 = v27 - v29;
        if (v34)
        {
          v36 = v33 / v34 * 65536.0;
          if (v36 >= 0.0)
          {
            v37 = 0.5;
          }

          else
          {
            v37 = -0.5;
          }

          v38 = v36 + v37;
          if (v38 >= 2147483650.0)
          {
            v35 = 0x7FFFFFFF;
          }

          else if (v38 <= -2147483650.0)
          {
            v35 = 0x80000000;
          }

          else
          {
            v35 = v38;
          }
        }

        else
        {
          v35 = (v33 >> 31) ^ 0x7FFFFFFF;
        }

        *v23 = v35 + v28;
        do
        {
          v39 = *(v21 + 12);
          v21 += 8;
        }

        while (v39 != 0x10000);
        ++v22;
        ++v23;
        ++a4;
      }

      while (v22 != v19);
    }
  }

  if (a6)
  {
    *&v43[0] = a6;
    LOWORD(v44) = a7;
    return sub_24BBE3DC8(v47, v43, v15, v45, &v48, a11, a13) == 0;
  }

  else
  {
    if (a2)
    {
      if (a1[1])
      {
        v40 = a1 + 2;
        v41 = a1[1];
        do
        {
          v42 = *v40++;
          if (v42 >= a1[1])
          {
            return 0;
          }
        }

        while (--v41);
      }

      sub_24BBD15B0(a1, a2, a3);
    }

    return 1;
  }
}

void sub_24BBD15B0(unsigned __int8 *a1, _DWORD *a2, int *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = 1;
    v8 = a3;
    v9 = *a1;
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11)
      {
        if (v10 != 0x10000)
        {
          goto LABEL_8;
        }

        v6 |= v7;
      }

      v7 *= 2;
      --v9;
    }

    while (v9);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_8:
    v12 = a1[1];
    if (a1[1])
    {
      v13 = 0;
      do
      {
        v14 = 1;
        v15 = 0x10000;
        v16 = a3;
        v17 = v5;
        do
        {
          v19 = *v16++;
          v18 = v19;
          v20 = 0x10000 - v19;
          if ((v14 & v13) == 0)
          {
            v18 = v20;
          }

          v21 = v15 * v18 * 0.0000152587891;
          if (v21 >= 0.0)
          {
            v22 = 0.5;
          }

          else
          {
            v22 = -0.5;
          }

          v23 = v21 + v22;
          if (v23 >= 2147483650.0)
          {
            v15 = 0x7FFFFFFF;
          }

          else if (v23 <= -2147483650.0)
          {
            v15 = 0x80000000;
          }

          else
          {
            v15 = v23;
          }

          v14 *= 2;
          --v17;
        }

        while (v17);
        a2[a1[v13++ + 2]] = v15;
      }

      while (v13 != v12);
    }
  }

  else
  {
    v6 = 0;
LABEL_25:
    if (a1[1])
    {
      bzero(a2, 4 * a1[1]);
    }

    a2[a1[v6 + 2]] = 0x10000;
  }
}

uint64_t sub_24BBD1708(uint64_t a1)
{
  *a1 = &unk_285F8A7E0;
  v2 = *(a1 + 152);
  if (v2)
  {
    j__free(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    j__free(v3);
  }

  qword_27F078540 = *(a1 + 248);
  if (*(a1 + 256) == 1)
  {
    pthread_mutex_unlock(&stru_28151BBD0);
  }

  return a1;
}

uint64_t sub_24BBD1788(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (sub_24BBD1868(a3))
  {
    v8 = sub_24BBD1894(0x50u);
    sub_24BBF907C(v8, a1, a2, a3, a4);
  }

  else
  {
    v8 = sub_24BBD1894(0x30u);
    sub_24BBD18A8(v8, a1, a2, a3, a4);
  }

  return v8;
}

void sub_24BBD1820(_Unwind_Exception *a1, int a2)
{
  j__free(v2);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BBD17C0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BBD18AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, __n128 a6)
{
  v7 = *a4;
  v8 = a4[1];
  *(a1 + 8) = *a4;
  *(a1 + 12) = v8;
  *a1 = &unk_285F8B098;
  *(a1 + 16) = 0;
  v9 = a4[12];
  v10 = a4[11] / 4718592.0 * 65536.0;
  v11 = 0.5;
  if (v10 >= 0.0)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = -0.5;
  }

  v13 = v10 + v12;
  a6.n128_u64[0] = 0x41DFFFFFFFC00000;
  if (v13 > -2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x80000000;
  }

  if (v13 < 2147483650.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x7FFFFFFF;
  }

  *(a1 + 24) = v15;
  v16 = v9 / 4718592.0 * 65536.0;
  if (v16 < 0.0)
  {
    v11 = -0.5;
  }

  v17 = v16 + v11;
  if (v17 >= 2147483650.0)
  {
    v18 = 0x7FFFFFFF;
  }

  else if (v17 <= -2147483650.0)
  {
    v18 = 0x80000000;
  }

  else
  {
    v18 = v17;
  }

  *(a1 + 28) = v18;
  v19 = a4[2];
  *(a1 + 32) = v19;
  v20 = a4[3];
  *(a1 + 36) = v20;
  v21 = a4[5];
  *(a1 + 40) = v21;
  v22 = a4[6];
  *(a1 + 44) = v22;
  if (v8 < 1 || a4[11] < 1 || a4[12] < 1 || !(v21 | v20 | v19 | v22))
  {
LABEL_127:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  if (a3)
  {
    v23 = 0;
  }

  else
  {
    v23 = (v21 | v20) == 0;
  }

  v25 = v23 && v19 == v22;
  v26 = v8 * a5;
  *(a1 + 12) = v8 * a5;
  if (!v19)
  {
    v35 = 0;
    if (v20)
    {
      goto LABEL_70;
    }

LABEL_48:
    v36 = 0;
    if (v21)
    {
      goto LABEL_89;
    }

LABEL_49:
    if (!v22)
    {
      goto LABEL_108;
    }

    goto LABEL_50;
  }

  v27 = v15 * v19 * 0.0000152587891;
  v28 = 0.5;
  if (v27 >= 0.0)
  {
    v29 = 0.5;
  }

  else
  {
    v29 = -0.5;
  }

  v30 = v27 + v29;
  if (v30 >= 2147483650.0 || v30 <= -2147483650.0 || (v30 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v33 = v26 * v30 * 0.0000152587891;
  if (v33 < 0.0)
  {
    v28 = -0.5;
  }

  v34 = v33 + v28;
  if (v34 >= 2147483650.0)
  {
    v35 = 0x7FFFFFFF;
  }

  else if (v34 <= -2147483650.0)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = v34;
  }

  *(a1 + 32) = v35;
  if (!v20)
  {
    goto LABEL_48;
  }

LABEL_70:
  v46 = v15 * v20 * 0.0000152587891;
  v47 = 0.5;
  if (v46 >= 0.0)
  {
    v48 = 0.5;
  }

  else
  {
    v48 = -0.5;
  }

  v49 = v46 + v48;
  if (v49 >= 2147483650.0 || v49 <= -2147483650.0 || (v49 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v52 = v26 * v49 * 0.0000152587891;
  if (v52 < 0.0)
  {
    v47 = -0.5;
  }

  v53 = v52 + v47;
  if (v53 >= 2147483650.0)
  {
    v54 = 0x7FFFFFFF;
  }

  else if (v53 <= -2147483650.0)
  {
    v54 = 0x80000000;
  }

  else
  {
    v54 = v53;
  }

  v36 = -v54;
  *(a1 + 36) = v36;
  if (!v21)
  {
    goto LABEL_49;
  }

LABEL_89:
  v55 = v18 * v21 * 0.0000152587891;
  v56 = 0.5;
  if (v55 >= 0.0)
  {
    v57 = 0.5;
  }

  else
  {
    v57 = -0.5;
  }

  v58 = v55 + v57;
  if (v58 >= 2147483650.0 || v58 <= -2147483650.0 || (v58 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v61 = v26 * v58 * 0.0000152587891;
  if (v61 < 0.0)
  {
    v56 = -0.5;
  }

  v62 = v61 + v56;
  if (v62 >= 2147483650.0)
  {
    v21 = 0x7FFFFFFF;
  }

  else if (v62 <= -2147483650.0)
  {
    v21 = 0x80000000;
  }

  else
  {
    v21 = v62;
  }

  *(a1 + 40) = v21;
  if (!v22)
  {
LABEL_108:
    v63 = 0;
    if (!v25)
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_50:
  v37 = v18 * v22 * 0.0000152587891;
  v38 = 0.5;
  if (v37 >= 0.0)
  {
    v39 = 0.5;
  }

  else
  {
    v39 = -0.5;
  }

  v40 = v37 + v39;
  if (v40 >= 2147483650.0 || v40 <= -2147483650.0 || (v40 - 0x7FFFFFFF) <= 1)
  {
    goto LABEL_127;
  }

  v43 = v26 * v40 * 0.0000152587891;
  if (v43 < 0.0)
  {
    v38 = -0.5;
  }

  v44 = v43 + v38;
  if (v44 >= 2147483650.0)
  {
    v45 = 0x7FFFFFFF;
  }

  else
  {
    a6.n128_u64[0] = 0xC1E0000000000000;
    if (v44 <= -2147483650.0)
    {
      v45 = 0x80000000;
    }

    else
    {
      v45 = v44;
    }
  }

  v63 = -v45;
  *(a1 + 44) = v63;
  if (v25)
  {
LABEL_112:
    if (!v35 && (v35 - 393216) <= 0x7A0000)
    {
      *(a1 + 8) = v7 | 0x80000000;
    }
  }

LABEL_115:
  if (v21 >= 0)
  {
    v64 = v21;
  }

  else
  {
    v64 = -v21;
  }

  if (v63 >= 0)
  {
    v65 = v63;
  }

  else
  {
    v65 = -v63;
  }

  if (v64 <= v65)
  {
    v66 = v65;
  }

  else
  {
    v66 = v64;
  }

  if (v64 >= v65)
  {
    v64 = v65;
  }

  *(a1 + 12) = v66 + (v64 >> 1) - (v64 >> 4);
  v69[0] = v35;
  v69[1] = v36;
  v69[2] = v21;
  v69[3] = v63;
  v70 = 0;
  *(a1 + 16) = (*(*a2 + 80))(a2, a3, v69, a4 + 13, a6);
  return a1;
}

void *sub_24BBD1E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24BBD1894(0x18u);
  sub_24BBD1EB0(v10, a1, a2, a3, a4, a5);
  return v10;
}

void *sub_24BBD1EB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_285F89FD8;
  a1[1] = 0;
  v8 = a1 + 2;
  a1[1] = (*(*a2 + 72))(a2, a3, a4, a5, a6, &v8);
  return a1;
}

void *sub_24BBD1F44(uint64_t a1, uint64_t a2, int *a3, int32x2_t *a4, uint64_t a5, uint64_t *a6)
{
  v7 = a5;
  v12 = *a6;
  if (*a6)
  {
    v13 = 0;
  }

  else
  {
    v12 = sub_24BBD0F68(8u, 0);
    v13 = v12;
  }

  v19 = v13;
  v14 = sub_24BBD20B4(a1, *(*(a1 + 48) + 128), a2, a3, a4, v7, v12);
  v18 = v14;
  v15 = sub_24BBD0F68(0x3D8u, 0);
  memcpy(v15, v14, 0x3D8uLL);
  if (a2)
  {
    v16 = v15[109];
    if (v16)
    {
      if (v16 == v14 + 648)
      {
        v15[109] = v15 + 81;
      }
    }
  }

  v19 = 0;
  if (!*a6)
  {
    *a6 = v12;
  }

  sub_24BBEC42C(&v18);
  sub_24BBF33B8(&v19);
  return v15;
}

void sub_24BBD204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_24BBEC42C(&a9);
  sub_24BBF33B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BBD2070(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    a1 = sub_24BBD0F68(8 * a2, 0);
    v4 = a1;
  }

  *a3 = a1;
  return v4;
}

uint64_t sub_24BBD20B4(uint64_t a1, _DWORD *a2, uint64_t a3, int *a4, int32x2_t *a5, int a6, void *a7)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  sub_24BBD23A4(a2 + 1, a4, &v54);
  v14 = a2[1];
  if (v14 == a2[4])
  {
    if (a2[2] || a2[3])
    {
      goto LABEL_16;
    }

    if (v54 >= 0)
    {
      v15 = v54;
    }

    else
    {
      v15 = -v54;
    }

    v16 = HIDWORD(v55);
    if (v55 < 0)
    {
      v16 = -HIDWORD(v55);
    }

    v17 = v15 == v16 && HIDWORD(v54) == 0;
    if (!v17 || v55 != 0)
    {
LABEL_16:
      v19 = 0;
      v20 = 0;
    }

    else
    {
      if (v14 == 1073742)
      {
        v28 = (0x4189374BC7 * *a4 + 0x8000) >> 16;
      }

      else
      {
        v28 = 4 * v14 * *a4;
      }

      v19 = v54 == (((v28 >> 31) + 1) >> 1);
      v20 = v28;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  *a7 = v56;
  v56 = 0;
  v21 = v20;
  v51 = vbsl_s8(vceqz_s32(*a5), vdup_n_s32(0x16A09u), *a5);
  v52 = a6;
  v53 = a6 == 1;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  sub_24BBD0390(&v34, a1);
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v31 = qword_28151C018;
  qword_28151C018 = v30;
  if (_setjmp(v30))
  {
    v22 = v32;
  }

  else
  {
    v23 = *sub_24BBD2908();
    sub_24BBD2CC8();
    v22 = v23(a2, &v54, a3, &v51, &qword_28151C188, &v33, 0);
    qword_28151C018 = v31;
  }

  v24 = sub_24BBD5D7C(v22);
  if (v35)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v25 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, v35);
    goto LABEL_33;
  }

  v26 = v33;
  if (!v33)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 1);
LABEL_33:
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  *(v33 + 962) = v19;
  *(v26 + 968) = v21;
  *(v26 + 976) = v54;
  sub_24BBD1708(&v34);
  return v26;
}

void sub_24BBD2374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  __cxa_free_exception(v36);
  sub_24BBD1708(va);
  _Unwind_Resume(a1);
}

int *sub_24BBD23A4(int *result, int *a2, int *a3)
{
  v3 = result[1];
  if (*(result + 1) || a2[1] || a2[2])
  {
    v4 = *result;
    v5 = *a2 * v4 * 9.31322575e-10;
    v6 = 0.5;
    if (v5 >= 0.0)
    {
      v7 = 0.5;
    }

    else
    {
      v7 = -0.5;
    }

    v8 = v5 + v7;
    if (v5 + v7 > -2147483650.0)
    {
      v9 = (v5 + v7);
    }

    else
    {
      v9 = 0x80000000;
    }

    v10 = a2[3];
    v11 = a2[2];
    if (v8 >= 2147483650.0)
    {
      v9 = 0x7FFFFFFF;
    }

    v12 = v3;
    v13 = v3 * v11 * 9.31322575e-10;
    if (v13 >= 0.0)
    {
      v14 = 0.5;
    }

    else
    {
      v14 = -0.5;
    }

    v15 = v13 + v14;
    if (v15 > -2147483650.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x80000000;
    }

    if (v15 >= 2147483650.0)
    {
      v16 = 0x7FFFFFFF;
    }

    v17 = v16 + v9;
    v18 = v4 * a2[1] * 9.31322575e-10;
    if (v18 >= 0.0)
    {
      v19 = 0.5;
    }

    else
    {
      v19 = -0.5;
    }

    v20 = v18 + v19;
    if (v20 > -2147483650.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0x80000000;
    }

    if (v20 >= 2147483650.0)
    {
      v21 = 0x7FFFFFFF;
    }

    v22 = v12 * v10 * 9.31322575e-10;
    if (v22 >= 0.0)
    {
      v23 = 0.5;
    }

    else
    {
      v23 = -0.5;
    }

    v24 = v22 + v23;
    if (v24 > -2147483650.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v24 >= 2147483650.0)
    {
      v25 = 0x7FFFFFFF;
    }

    *a3 = v17;
    a3[1] = v25 + v21;
    v26 = a2[1];
    v27 = *a2;
    v28 = result[3];
    v29 = result[2];
    v30 = v27 * v29 * 9.31322575e-10;
    if (v30 >= 0.0)
    {
      v31 = 0.5;
    }

    else
    {
      v31 = -0.5;
    }

    v32 = v30 + v31;
    if (v32 > -2147483650.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0x80000000;
    }

    if (v32 >= 2147483650.0)
    {
      v33 = 0x7FFFFFFF;
    }

    v34 = v28;
    v35 = v11 * v28 * 9.31322575e-10;
    if (v35 >= 0.0)
    {
      v36 = 0.5;
    }

    else
    {
      v36 = -0.5;
    }

    v37 = v35 + v36;
    if (v37 > -2147483650.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0x80000000;
    }

    if (v37 >= 2147483650.0)
    {
      v38 = 0x7FFFFFFF;
    }

    v39 = v38 + v33;
    v40 = v26;
    v41 = v29 * v26 * 9.31322575e-10;
    if (v41 >= 0.0)
    {
      v42 = 0.5;
    }

    else
    {
      v42 = -0.5;
    }

    v43 = v41 + v42;
    if (v43 > -2147483650.0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x80000000;
    }

    if (v43 < 2147483650.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x7FFFFFFF;
    }

    v46 = v10 * v34 * 9.31322575e-10;
    if (v46 >= 0.0)
    {
      v47 = 0.5;
    }

    else
    {
      v47 = -0.5;
    }

    v48 = v46 + v47;
    if (v48 > -2147483650.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x80000000;
    }

    if (v48 >= 2147483650.0)
    {
      v49 = 0x7FFFFFFF;
    }

    v50 = v49 + v45;
    v51 = result[5];
    v52 = result[4];
    a3[2] = v39;
    a3[3] = v50;
    v53 = v27 * v52 * 9.31322575e-10;
    if (v53 >= 0.0)
    {
      v54 = 0.5;
    }

    else
    {
      v54 = -0.5;
    }

    v55 = v53 + v54;
    if (v55 > -2147483650.0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0x80000000;
    }

    if (v55 < 2147483650.0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0x7FFFFFFF;
    }

    v58 = a2[3];
    v59 = v51;
    v60 = a2[2] * v51 * 9.31322575e-10;
    if (v60 >= 0.0)
    {
      v61 = 0.5;
    }

    else
    {
      v61 = -0.5;
    }

    v62 = v60 + v61;
    if (v62 > -2147483650.0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0x80000000;
    }

    if (v62 < 2147483650.0)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0x7FFFFFFF;
    }

    a3[4] = v64 + v57 + a2[4];
    v65 = v40 * v52 * 9.31322575e-10;
    if (v65 >= 0.0)
    {
      v66 = 0.5;
    }

    else
    {
      v66 = -0.5;
    }

    v67 = v65 + v66;
    if (v67 > -2147483650.0)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0x80000000;
    }

    if (v67 < 2147483650.0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0x7FFFFFFF;
    }

    v70 = v59 * v58 * 9.31322575e-10;
    if (v70 < 0.0)
    {
      v6 = -0.5;
    }

    v71 = v70 + v6;
    if (v71 >= 2147483650.0)
    {
      v72 = 0x7FFFFFFF;
    }

    else if (v71 <= -2147483650.0)
    {
      v72 = 0x80000000;
    }

    else
    {
      v72 = v71;
    }

    v73 = v72 + v69 + a2[5];
  }

  else
  {
    v74 = *a2 * *result * 9.31322575e-10;
    v75 = 0.5;
    if (v74 >= 0.0)
    {
      v76 = 0.5;
    }

    else
    {
      v76 = -0.5;
    }

    v77 = v74 + v76;
    if (v77 > -2147483650.0)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0x80000000;
    }

    if (v77 < 2147483650.0)
    {
      v79 = v78;
    }

    else
    {
      v79 = 0x7FFFFFFF;
    }

    a3[1] = 0;
    a3[2] = 0;
    *a3 = v79;
    v80 = a2[3] * result[3] * 9.31322575e-10;
    if (v80 < 0.0)
    {
      v75 = -0.5;
    }

    v81 = v80 + v75;
    if (v81 >= 2147483650.0)
    {
      v82 = 0x7FFFFFFF;
    }

    else if (v81 <= -2147483650.0)
    {
      v82 = 0x80000000;
    }

    else
    {
      v82 = v81;
    }

    a3[3] = v82;
    if (*(result + 2))
    {
      v83 = result[4] * *a2 * 9.31322575e-10;
      v84 = 0.5;
      if (v83 >= 0.0)
      {
        v85 = 0.5;
      }

      else
      {
        v85 = -0.5;
      }

      v86 = v83 + v85;
      if (v86 > -2147483650.0)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0x80000000;
      }

      if (v86 < 2147483650.0)
      {
        v88 = v87;
      }

      else
      {
        v88 = 0x7FFFFFFF;
      }

      v89 = a2[3];
      a3[4] = a2[4] + v88;
      v90 = v89 * result[5] * 9.31322575e-10;
      if (v90 < 0.0)
      {
        v84 = -0.5;
      }

      v91 = v90 + v84;
      if (v91 >= 2147483650.0)
      {
        v92 = 0x7FFFFFFF;
      }

      else if (v91 <= -2147483650.0)
      {
        v92 = 0x80000000;
      }

      else
      {
        v92 = v91;
      }

      v73 = a2[5] + v92;
    }

    else
    {
      v73 = a2[5];
      a3[4] = a2[4];
    }
  }

  a3[5] = v73;
  return result;
}

void *sub_24BBD2908()
{
  if ((byte_28151C0C0 & 1) == 0)
  {
    if (sub_24BBD2998(&unk_28151C0C8))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BBE0934(exception, 1);
      __cxa_throw(exception, &unk_285F89D90, nullsub_8);
    }

    byte_28151C0C0 = 1;
  }

  return &unk_28151C0C8;
}

uint64_t sub_24BBD2998(uint64_t a1)
{
  result = sub_24BBD29CC(a1);
  if (!result)
  {
    qword_28151BD78 = sub_24BBDFF28;
  }

  return result;
}

uint64_t sub_24BBD29CC(uint64_t a1)
{
  *a1 = sub_24BBD2D48;
  *(a1 + 8) = sub_24BBE4058;
  *(a1 + 64) = sub_24BBD3788;
  *(a1 + 16) = sub_24BBE40BC;
  *(a1 + 24) = sub_24BBE40F0;
  *(a1 + 32) = sub_24BBD81D8;
  *(a1 + 40) = sub_24BBE1500;
  *(a1 + 72) = sub_24BBD71E0;
  *(a1 + 80) = sub_24BBE4254;
  *(a1 + 48) = sub_24BBE425C;
  *(a1 + 56) = sub_24BBE4264;
  *(a1 + 88) = sub_24BBE7C6C;
  *(a1 + 96) = 103;
  dword_28151BD70 = 0;
  qword_28151BD78 = sub_24BBDFF28;
  qword_28151BC10[0] = sub_24BBE4294;
  qword_28151BC18 = sub_24BBE42D0;
  qword_28151BC20 = sub_24BBDFB50;
  qword_28151BC28 = sub_24BBE4310;
  qword_28151BC30 = sub_24BBE4350;
  qword_28151BC38 = sub_24BBE4390;
  qword_28151BC40 = sub_24BBE43D0;
  qword_28151BC48 = sub_24BBE4410;
  qword_28151BC50 = sub_24BBE4454;
  qword_28151BC58 = sub_24BBE44D0;
  qword_28151BC60 = sub_24BBE4550;
  qword_28151BC68 = sub_24BBE45D4;
  qword_28151BC70 = sub_24BBE4658;
  qword_28151BC78 = sub_24BBE46DC;
  qword_28151BC80 = sub_24BBE4760;
  qword_28151BC88 = sub_24BBE47E0;
  qword_28151BC90[0] = sub_24BBE4864;
  qword_28151BC98 = sub_24BBE48A0;
  qword_28151BCA0 = sub_24BBDFBC8;
  qword_28151BCA8 = sub_24BBE48E0;
  qword_28151BCB0 = sub_24BBE4920;
  qword_28151BCB8 = sub_24BBE4960;
  qword_28151BCC0 = sub_24BBE49A0;
  qword_28151BCC8 = sub_24BBE49E0;
  qword_28151BCD0 = sub_24BBE4A24;
  qword_28151BCD8 = sub_24BBE4A8C;
  qword_28151BCE0 = sub_24BBE4AF8;
  qword_28151BCE8 = sub_24BBE4B68;
  qword_28151BCF0 = sub_24BBE4BD8;
  qword_28151BCF8 = sub_24BBE4C48;
  qword_28151BD00 = sub_24BBE4CB8;
  qword_28151BD08 = sub_24BBE4D24;
  return 0;
}

uint64_t *sub_24BBD2CC8()
{
  if ((byte_28151C180 & 1) == 0)
  {
    qword_28151C188 = 0;
    unk_28151C190 = sub_24BBF41D4;
    qword_28151C198 = sub_24BBF4254;
    qword_28151C1A0 = sub_24BBF432C;
    qword_28151C1B8 = sub_24BBD1200();
    qword_28151C1B0 = sub_24BBD1200();
    byte_28151C180 = 1;
  }

  return &qword_28151C188;
}

uint64_t sub_24BBD2D48(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v13 = (***(a5 + 48))(*(a5 + 48), 984);
  *a6 = v13;
  if (!v13)
  {
    return 4294967292;
  }

  bzero(v13, 0x3D8uLL);
  v14 = sub_24BBD2E38(a1, a2, a3, a4, sub_24BBD45C8, a5, *a6);
  if (v14)
  {
    v15 = *a6;
    if (*a6)
    {
      if (*(v15 + 800))
      {
        (*(**(a5 + 48) + 16))(*(a5 + 48));
      }

      (*(**(a5 + 48) + 16))(*(a5 + 48), v15);
    }

    *a6 = 0;
  }

  return v14;
}

uint64_t sub_24BBD2E38(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t (*a5)(uint64_t, void, uint64_t, int *, char *, uint64_t *, uint64_t), uint64_t a6, uint64_t a7)
{
  if (*a1 != 5)
  {
    sub_24BBEDB70(-1, 0);
  }

  v91 = 0;
  memset(v90, 0, sizeof(v90));
  *(a7 + 800) = 0;
  *(a7 + 960) = *(a1 + 2);
  *(a6 + 32) = 0x10000;
  v12 = *(a1 + 72);
  if (v12 < 2)
  {
    v17 = (a1 + 88);
    *(a7 + 644) = 0;
    *(a7 + 864) = 0;
    *(a7 + 872) = 0;
  }

  else
  {
    if (!a3 || v12 - 17 < 0xFFFFFFF0)
    {
      sub_24BBEDB70(-1, 0);
    }

    v13 = *(a1 + 72);
    v14 = (a7 + 648);
    v15 = a3;
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v13;
    }

    while (v13);
    *(a7 + 644) = v12;
    *(a7 + 864) = v12;
    *(a7 + 872) = a7 + 648;
    v17 = v90;
    sub_24BBD37D8(a1, a3, v90);
  }

  v89 = 0;
  v88 = 0;
  *(a7 + 220) = sub_24BBD42F8(*(a1 + 62), v17 + 13);
  v18 = sub_24BBD42F8(*(a1 + 64), v17 + 25);
  *(a7 + 24) = v18;
  if (*(v17 + 4) <= 0)
  {
    v19 = *(a7 + 220);
    if (v19)
    {
      v19 = *(v17 + 13);
    }

    *(v17 + 4) = v19;
  }

  if (*(v17 + 5) <= 0)
  {
    if (v18)
    {
      v20 = *(v17 + 25);
    }

    else
    {
      v20 = 0;
    }

    *(v17 + 5) = v20;
  }

  v21 = *(a1 + 58);
  *(a7 + 720) = v21;
  v22 = *(a1 + 74);
  *(a7 + 820) = v22;
  if (a4)
  {
    v24 = *a4;
    v23 = a4[1];
    v26 = a4[2];
    v25 = a4[3];
    *(a7 + 760) = *a4;
    *(a7 + 764) = v23;
    *(a7 + 824) = v26;
    *(a7 + 828) = v25;
    result = 4294967283;
    if ((v24 - 524289) < 0xFFF5FFFF || (v23 - 524289) < 0xFFF5FFFF || v26 > 0x10 || ((1 << v26) & 0x10016) == 0 || v25 > 1)
    {
      return result;
    }
  }

  else
  {
    *(a7 + 760) = vdup_n_s32(0x16A09u);
    *(a7 + 824) = 0x100000001;
  }

  *(a7 + 812) = *(a1 + 80);
  v28 = *(a7 + 960);
  if (v28 == 13 || v28 == 2)
  {
    if (v21 > 0x4D7)
    {
      if (v21 > 0x846B)
      {
        v29 = 0x8000;
      }

      else
      {
        v29 = 1131;
      }
    }

    else
    {
      v29 = 107;
    }

    *(a7 + 808) = v29;
    if (v22 > 0x4D7)
    {
      if (v22 > 0x846B)
      {
        v30 = 0x8000;
      }

      else
      {
        v30 = 1131;
      }
    }

    else
    {
      v30 = 107;
    }
  }

  else
  {
    *(a7 + 808) = *(a1 + 76);
    v30 = *(a1 + 78);
  }

  *(a7 + 816) = v30;
  *(a7 + 768) = *(a1 + 52);
  sub_24BBD43E0((a1 + 4), &v88);
  *(a7 + 716) = 0;
  result = a5(a2, v88, a7, a4, &v89 + 4, &v89, a7 + 716);
  if (result)
  {
    if (result == 1)
    {
      return 4294967286;
    }

    else if (result == 2)
    {
      return 4294967293;
    }
  }

  else
  {
    v31 = *(a1 + 44);
    if (*v17 || *(v17 + 1) || *(v17 + 2) || *(v17 + 3))
    {
      v33 = *v17;
      v32 = *(v17 + 1);
      v35 = *(v17 + 2);
      v34 = *(v17 + 3);
    }

    else
    {
      v85 = v88 * 163840.0 * 0.0000152587891;
      v86 = 0.5;
      if (v85 < 0.0)
      {
        v86 = -0.5;
      }

      v87 = v85 + v86;
      if (v87 >= 2147483650.0)
      {
        v34 = 0x7FFFFFFF;
      }

      else if (v87 <= -2147483650.0)
      {
        v34 = 0x80000000;
      }

      else
      {
        v34 = v87;
      }

      v32 = -v34;
      v33 = -v34;
      v35 = v34;
    }

    v36 = v31;
    v37 = v31 * (v35 - v33) * 0.0000152587891;
    v38 = 0.5;
    if (v37 >= 0.0)
    {
      v39 = 0.5;
    }

    else
    {
      v39 = -0.5;
    }

    v40 = v37 + v39;
    if (v40 < 2147483650.0 && v40 > -2147483650.0)
    {
      if (((v40 + 0x8000) & 0xFFFF0000) >= 2031616)
      {
        v42 = 2031616;
      }

      else
      {
        v42 = (v40 + 0x8000) & 0xFFFF0000;
      }
    }

    else
    {
      v42 = 0x80000000;
    }

    v43 = v33 - v42;
    v44 = v42 + v35;
    v45 = v36 * (v34 - v32) * 0.0000152587891;
    if (v45 < 0.0)
    {
      v38 = -0.5;
    }

    v46 = v45 + v38;
    if (v46 < 2147483650.0 && v46 > -2147483650.0)
    {
      v48 = (v46 + 0x8000) & 0xFFFF0000;
      if (v48 >= 2031616)
      {
        v48 = 2031616;
      }
    }

    else
    {
      v48 = 0x80000000;
    }

    v49 = (v32 - v48);
    v50 = (v48 + v34);
    v95 = 0;
    v92 = 0;
    v94 = __PAIR64__(v49, v44);
    v93.i32[0] = v43;
    v93.i32[1] = v48 + v34;
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(v43 | (v49 << 32), &v95);
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(*&v94, &v94);
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(*&v93, &v93);
    if (!off_28151BD50)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD50(v44 | (v50 << 32), &v92);
    v51 = v95;
    *(a7 + 928) = v95;
    *(a7 + 936) = v92;
    sub_24BBD53EC(v51, &v95, a7);
    sub_24BBD53EC(*&v94, &v94, a7);
    sub_24BBD53EC(*&v93, &v93, a7);
    sub_24BBD53EC(*&v92, &v92, a7);
    v53 = v92;
    v52 = v93;
    v54 = v94;
    v55 = v95;
    *(a7 + 728) = vmin_s32(v95, vmin_s32(v94, vmin_s32(v93, v92)));
    *(a7 + 736) = vmax_s32(v55, vmax_s32(v54, vmax_s32(v52, v53)));
    sub_24BBD5418(a7, v88, (a7 + 624), (a7 + 628));
    if (*(a7 + 624) <= *(a7 + 628))
    {
      v56 = *(a7 + 628);
    }

    else
    {
      v56 = *(a7 + 624);
    }

    if (v56 > 0x80000)
    {
      v57 = 102400;
      if (v56 <= 0x31FFFF)
      {
        v57 = -2147381249;
        v58 = (v56 - 0x80000) * 25565281.0 * 9.31322575e-10 + 0.5;
        if (v58 < 2147483650.0)
        {
          if (v58 <= -2147483650.0)
          {
            v57 = -2147381248;
          }

          else
          {
            v57 = v58 + 102400;
          }
        }
      }
    }

    else
    {
      v57 = 36864;
    }

    *(a7 + 632) = v57;
    v59 = v89 != 0;
    if (v89)
    {
      v60 = v56 >= 0x40000;
    }

    else
    {
      v60 = 0;
    }

    v61 = *(a1 + 60);
    *(a7 + 724) = v61;
    if (v61 == 2)
    {
      v62 = *(a1 + 40);
    }

    else
    {
      v62 = 0;
    }

    *(a7 + 712) = v62;
    v95.i32[0] = 0;
    v94.i32[0] = 0;
    sub_24BBD55AC(v17 + 52, *(a7 + 220), *(v17 + 4), 1, v60, (a7 + 224), (a7 + 220), &v94, *(a7 + 824));
    sub_24BBD55AC(v17 + 100, *(a7 + 24), *(v17 + 5), 0, v60, (a7 + 28), (a7 + 24), &v95, *(a7 + 824));
    v63 = v95.i32[0];
    v64 = (v95.i32[0] + 0x8000) & 0xFFFF0000;
    if (!v64)
    {
      v64 = 0x10000;
    }

    if (v95.i32[0])
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v66 = v94.i32[0];
    if (v94.i32[0])
    {
      v67 = v94.i32[0] + v95.i32[0];
      if (((v94.i32[0] + 0x8000) & 0xFFFF0000) != 0)
      {
        v68 = (v94.i32[0] + 0x8000) & 0xFFFF0000;
      }

      else
      {
        v68 = 0x10000;
      }

      v65 += v68;
      if (v95.i32[0])
      {
        v67 >>= 1;
        v65 >>= 1;
      }
    }

    else
    {
      v67 = v95.i32[0];
    }

    *(a7 + 748) = v67;
    if (v63 <= v66)
    {
      v63 = v66;
    }

    *(a7 + 756) = v63;
    if (v60)
    {
      sub_24BBE7900(a1, v17, a7 + 432, (a7 + 428), (a7 + 744), v66, v60, *(a7 + 824));
      v69 = *(a7 + 428);
    }

    else
    {
      v69 = 0;
      *(a7 + 428) = 0;
    }

    *(a7 + 420) = *(v17 + 19);
    *(a7 + 944) = *(v17 + 88);
    v70 = *(v17 + 37);
    v71 = 0;
    if (v69)
    {
      v72 = (v17 + 10);
      do
      {
        v73 = *v72;
        v74 = v72[1];
        v72 += 2;
        v75 = v73 - v74;
        if (v75 > v71)
        {
          v71 = v75;
        }

        --v69;
      }

      while (v69);
    }

    v76 = v70 * v71 * 0.0000152587891;
    v77 = 0.5;
    if (v76 < 0.0)
    {
      v77 = -0.5;
    }

    v78 = v76 + v77;
    if (v78 >= 2147483650.0 || v78 > -2147483650.0 && v78 >= 0x10000)
    {
      if (v71 && (v79 = 65536.0 / v71 * 65536.0 + 0.5, v79 < 2147483650.0))
      {
        if (v79 <= -2147483650.0)
        {
          v70 = 0x7FFFFFFF;
        }

        else
        {
          v70 = v79 - 1;
        }
      }

      else
      {
        v70 = 2147483646;
      }
    }

    *(a7 + 416) = v70;
    *(a7 + 640) = *(a1 + 44);
    *(a7 + 636) = *(a1 + 28);
    *(a7 + 772) = *(v17 + 24);
    *(a7 + 788) = *(v17 + 5);
    *(a7 + 796) = *(v17 + 12);
    if (v60 && HIDWORD(v89) != 0)
    {
      v80 = 0x40000000;
    }

    else
    {
      v80 = 0;
    }

    if (v60 && v89 != 0)
    {
      v81 = 0x80000000;
    }

    else
    {
      v81 = 0;
    }

    if ((v56 - 425985) < 0xAFFFF && v59)
    {
      v82 = 16;
    }

    else
    {
      v82 = 0;
    }

    if (v60 && *(a1 + 70) == 1)
    {
      v83 = 32;
    }

    else
    {
      v83 = 0;
    }

    if (v65)
    {
      if (*(a7 + 748))
      {
        v84 = (v65 <= 0x10000) << 6;
      }

      else
      {
        v84 = 0;
      }
    }

    else
    {
      v84 = 0;
    }

    result = 0;
    *(a7 + 716) |= v80 | v82 | v81 | v83 | v84 | ((*(v17 + 89) & 1) << 7);
    *(a7 + 880) = 0;
    *(a7 + 896) = 0;
  }

  return result;
}

uint64_t sub_24BBD3788(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0xFFFFFFFFLL;
  if ((a2 - 17) >= 0xFFFFFFF0 && a1 && a3)
  {
    v4 = 0;
    v5 = a3 + 648;
    do
    {
      *(v5 + 4 * v4) = *(a1 + 4 * v4);
      ++v4;
    }

    while (a2 != v4);
    v3 = 0;
    *(a3 + 644) = a2;
    *(a3 + 864) = a2;
    *(a3 + 872) = v5;
  }

  return v3;
}

uint64_t sub_24BBD37D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v178 = *(a1 + 72);
  *(a3 + 352) = 0;
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
  v5 = *(a1 + 104);
  v4 = *(a1 + 108);
  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  v6 = *(a1 + 112);
  v7 = *(a1 + 116);
  *(a3 + 24) = v6;
  *(a3 + 28) = v7;
  *(a3 + 352) = *(a1 + 440);
  v8 = *(a1 + 120);
  v9 = *(a1 + 124);
  *(a3 + 32) = v8;
  *(a3 + 36) = v9;
  *(a3 + 148) = *(a1 + 236);
  v11 = (a1 + 88);
  v10 = *(a1 + 88);
  *(a3 + 156) = *(a1 + 244);
  v12 = *(a1 + 92);
  v13 = *(a1 + 96);
  *a3 = v10;
  *(a3 + 4) = v12;
  v14 = *(a1 + 100);
  *(a3 + 8) = v13;
  *(a3 + 12) = v14;
  v15 = *(a1 + 128);
  v16 = *(a1 + 132);
  *(a3 + 40) = v15;
  *(a3 + 44) = v16;
  v17 = *(a1 + 136);
  *(a3 + 48) = v17;
  v177 = *(a1 + 62);
  if (*(a1 + 62))
  {
    v18 = (a1 + 140);
    v19 = (a3 + 52);
    v20 = v177;
    do
    {
      v21 = *v18++;
      *v19++ = v21;
      --v20;
    }

    while (v20);
  }

  v176 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v22 = (a1 + 188);
    v23 = (a3 + 100);
    v24 = *(a1 + 64);
    do
    {
      v25 = *v22++;
      *v23++ = v25;
      --v24;
    }

    while (v24);
  }

  v175 = *(a1 + 66);
  if (*(a1 + 66))
  {
    v26 = (a1 + 248);
    v27 = (a3 + 160);
    v28 = *(a1 + 66);
    do
    {
      v29 = *v26++;
      *v27++ = v29;
      --v28;
    }

    while (v28);
  }

  v174 = *(a1 + 68);
  if (*(a1 + 68))
  {
    v30 = (a1 + 344);
    v31 = (a3 + 256);
    v32 = *(a1 + 68);
    do
    {
      v33 = *v30++;
      *v31++ = v33;
      --v32;
    }

    while (v32);
  }

  result = *(a1 + 444);
  v35 = *(a1 + 444) & 1;
  if (v178 >= 2)
  {
    v36 = 0;
    v37 = 1;
    v38 = 500;
    v39 = 548;
    v172 = v11;
    do
    {
      v40 = &v11[90 * v37];
      v41 = *(a2 + 4 * v37);
      v42 = v41;
      v43 = v41 * (v40[4] - *(a1 + 104)) * 0.0000152587891;
      if (v43 >= 0.0)
      {
        v44 = 0.5;
      }

      else
      {
        v44 = -0.5;
      }

      v45 = v43 + v44;
      if (v45 >= 2147483650.0)
      {
        v46 = 0x7FFFFFFF;
      }

      else if (v45 <= -2147483650.0)
      {
        v46 = 0x80000000;
      }

      else
      {
        v46 = v45;
      }

      v47 = v5 + v46;
      *(a3 + 16) = v47;
      v48 = v42 * (v40[5] - *(a1 + 108)) * 0.0000152587891;
      if (v48 >= 0.0)
      {
        v49 = 0.5;
      }

      else
      {
        v49 = -0.5;
      }

      v50 = v48 + v49;
      if (v50 >= 2147483650.0)
      {
        v51 = 0x7FFFFFFF;
      }

      else if (v50 <= -2147483650.0)
      {
        v51 = 0x80000000;
      }

      else
      {
        v51 = v50;
      }

      v52 = v4 + v51;
      *(a3 + 20) = v52;
      v53 = v42 * (v40[6] - *(a1 + 112)) * 0.0000152587891;
      if (v53 >= 0.0)
      {
        v54 = 0.5;
      }

      else
      {
        v54 = -0.5;
      }

      v55 = v53 + v54;
      if (v55 >= 2147483650.0)
      {
        v56 = 0x7FFFFFFF;
      }

      else if (v55 <= -2147483650.0)
      {
        v56 = 0x80000000;
      }

      else
      {
        v56 = v55;
      }

      v57 = v6 + v56;
      *(a3 + 24) = v57;
      v58 = v42 * (v40[7] - *(a1 + 116)) * 0.0000152587891;
      if (v58 >= 0.0)
      {
        v59 = 0.5;
      }

      else
      {
        v59 = -0.5;
      }

      v60 = v58 + v59;
      if (v60 >= 2147483650.0)
      {
        v61 = 0x7FFFFFFF;
      }

      else if (v60 <= -2147483650.0)
      {
        v61 = 0x80000000;
      }

      else
      {
        v61 = v60;
      }

      v62 = v7 + v61;
      *(a3 + 28) = v62;
      v63 = v42 * (v40[88] - *(a1 + 440)) * 0.0000152587891;
      if (v63 >= 0.0)
      {
        v64 = 0.5;
      }

      else
      {
        v64 = -0.5;
      }

      v65 = v63 + v64;
      if (v65 >= 2147483650.0)
      {
        v66 = 0x7FFFFFFF;
      }

      else if (v65 <= -2147483650.0)
      {
        v66 = 0x80000000;
      }

      else
      {
        v66 = v65;
      }

      *(a3 + 352) += v66;
      v67 = v42 * (v40[8] - *(a1 + 120)) * 0.0000152587891;
      if (v67 >= 0.0)
      {
        v68 = 0.5;
      }

      else
      {
        v68 = -0.5;
      }

      v69 = v67 + v68;
      if (v69 >= 2147483650.0)
      {
        v70 = 0x7FFFFFFF;
      }

      else if (v69 <= -2147483650.0)
      {
        v70 = 0x80000000;
      }

      else
      {
        v70 = v69;
      }

      v71 = v8 + v70;
      *(a3 + 32) = v71;
      v72 = v42 * (v40[9] - *(a1 + 124)) * 0.0000152587891;
      if (v72 >= 0.0)
      {
        v73 = 0.5;
      }

      else
      {
        v73 = -0.5;
      }

      v74 = v72 + v73;
      if (v74 >= 2147483650.0)
      {
        v75 = 0x7FFFFFFF;
      }

      else if (v74 <= -2147483650.0)
      {
        v75 = 0x80000000;
      }

      else
      {
        v75 = v74;
      }

      v76 = v9 + v75;
      *(a3 + 36) = v76;
      v77 = v42 * (v40[37] - *(a1 + 236)) * 0.0000152587891;
      if (v77 >= 0.0)
      {
        v78 = 0.5;
      }

      else
      {
        v78 = -0.5;
      }

      v79 = v77 + v78;
      if (v79 >= 2147483650.0)
      {
        v80 = 0x7FFFFFFF;
      }

      else if (v79 <= -2147483650.0)
      {
        v80 = 0x80000000;
      }

      else
      {
        v80 = v79;
      }

      *(a3 + 148) += v80;
      v81 = v42 * (v40[38] - *(a1 + 240)) * 0.0000152587891;
      if (v81 >= 0.0)
      {
        v82 = 0.5;
      }

      else
      {
        v82 = -0.5;
      }

      v83 = v81 + v82;
      if (v83 >= 2147483650.0)
      {
        v84 = 0x7FFFFFFF;
      }

      else if (v83 <= -2147483650.0)
      {
        v84 = 0x80000000;
      }

      else
      {
        v84 = v83;
      }

      *(a3 + 152) += v84;
      v85 = v42 * (v40[39] - *(a1 + 244)) * 0.0000152587891;
      if (v85 >= 0.0)
      {
        v86 = 0.5;
      }

      else
      {
        v86 = -0.5;
      }

      v87 = v85 + v86;
      if (v87 >= 2147483650.0)
      {
        v88 = 0x7FFFFFFF;
      }

      else if (v87 <= -2147483650.0)
      {
        v88 = 0x80000000;
      }

      else
      {
        v88 = v87;
      }

      *(a3 + 156) += v88;
      v89 = v42 * (*v40 - *v11) * 0.0000152587891;
      if (v89 >= 0.0)
      {
        v90 = 0.5;
      }

      else
      {
        v90 = -0.5;
      }

      v91 = v89 + v90;
      if (v91 >= 2147483650.0)
      {
        v92 = 0x7FFFFFFF;
      }

      else if (v91 <= -2147483650.0)
      {
        v92 = 0x80000000;
      }

      else
      {
        v92 = v91;
      }

      v93 = v10 + v92;
      *a3 = v93;
      v94 = v42 * (v40[1] - *(a1 + 92)) * 0.0000152587891;
      if (v94 >= 0.0)
      {
        v95 = 0.5;
      }

      else
      {
        v95 = -0.5;
      }

      v96 = v94 + v95;
      if (v96 >= 2147483650.0)
      {
        v97 = 0x7FFFFFFF;
      }

      else if (v96 <= -2147483650.0)
      {
        v97 = 0x80000000;
      }

      else
      {
        v97 = v96;
      }

      v98 = v12 + v97;
      *(a3 + 4) = v98;
      v99 = v42 * (v40[2] - *(a1 + 96)) * 0.0000152587891;
      if (v99 >= 0.0)
      {
        v100 = 0.5;
      }

      else
      {
        v100 = -0.5;
      }

      v101 = v99 + v100;
      if (v101 >= 2147483650.0)
      {
        v102 = 0x7FFFFFFF;
      }

      else if (v101 <= -2147483650.0)
      {
        v102 = 0x80000000;
      }

      else
      {
        v102 = v101;
      }

      v103 = v13 + v102;
      *(a3 + 8) = v103;
      v104 = v42 * (v40[3] - *(a1 + 100)) * 0.0000152587891;
      if (v104 >= 0.0)
      {
        v105 = 0.5;
      }

      else
      {
        v105 = -0.5;
      }

      v106 = v104 + v105;
      if (v106 >= 2147483650.0)
      {
        v107 = 0x7FFFFFFF;
      }

      else if (v106 <= -2147483650.0)
      {
        v107 = 0x80000000;
      }

      else
      {
        v107 = v106;
      }

      v108 = v14 + v107;
      *(a3 + 12) = v108;
      v109 = v42 * (v40[10] - *(a1 + 128)) * 0.0000152587891;
      if (v109 >= 0.0)
      {
        v110 = 0.5;
      }

      else
      {
        v110 = -0.5;
      }

      v111 = v109 + v110;
      if (v111 >= 2147483650.0)
      {
        v112 = 0x7FFFFFFF;
      }

      else if (v111 <= -2147483650.0)
      {
        v112 = 0x80000000;
      }

      else
      {
        v112 = v111;
      }

      v113 = v15 + v112;
      *(a3 + 40) = v113;
      v114 = v42 * (v40[11] - *(a1 + 132)) * 0.0000152587891;
      if (v114 >= 0.0)
      {
        v115 = 0.5;
      }

      else
      {
        v115 = -0.5;
      }

      v116 = v114 + v115;
      if (v116 >= 2147483650.0)
      {
        v117 = 0x7FFFFFFF;
      }

      else if (v116 <= -2147483650.0)
      {
        v117 = 0x80000000;
      }

      else
      {
        v117 = v116;
      }

      v118 = v16 + v117;
      *(a3 + 44) = v118;
      v119 = v42 * (v40[12] - *(a1 + 136)) * 0.0000152587891;
      if (v119 >= 0.0)
      {
        v120 = 0.5;
      }

      else
      {
        v120 = -0.5;
      }

      v121 = v119 + v120;
      v181 = v118;
      v182 = v113;
      v179 = v108;
      if (v121 >= 2147483650.0)
      {
        v122 = v41;
        v123 = v103;
        v124 = v98;
        v125 = v93;
        v126 = v76;
        v127 = v71;
        v128 = v62;
        v129 = v57;
        v130 = v47;
        v131 = v52;
        v132 = 0x7FFFFFFF;
      }

      else
      {
        v122 = v41;
        v123 = v103;
        v124 = v98;
        v125 = v93;
        v126 = v76;
        v127 = v71;
        v128 = v62;
        v129 = v57;
        v130 = v47;
        v131 = v52;
        if (v121 <= -2147483650.0)
        {
          v132 = 0x80000000;
        }

        else
        {
          v132 = v121;
        }
      }

      v180 = v17 + v132;
      *(a3 + 48) = v17 + v132;
      v133 = v177;
      v134 = a1;
      v135 = (a3 + 52);
      if (v177)
      {
        do
        {
          v136 = v42 * (*(v134 + v38) - *(v134 + 140)) * 0.0000152587891;
          if (v136 >= 0.0)
          {
            v137 = 0.5;
          }

          else
          {
            v137 = -0.5;
          }

          v138 = v136 + v137;
          if (v138 >= 2147483650.0)
          {
            v139 = 0x7FFFFFFF;
          }

          else if (v138 <= -2147483650.0)
          {
            v139 = 0x80000000;
          }

          else
          {
            v139 = v138;
          }

          v134 += 4;
          *v135++ += v139;
          --v133;
        }

        while (v133);
      }

      v140 = v176;
      v141 = a1;
      v142 = (a3 + 100);
      if (v176)
      {
        do
        {
          v143 = v42 * (*(v141 + v39) - *(v141 + 188)) * 0.0000152587891;
          if (v143 >= 0.0)
          {
            v144 = 0.5;
          }

          else
          {
            v144 = -0.5;
          }

          v145 = v143 + v144;
          if (v145 >= 2147483650.0)
          {
            v146 = 0x7FFFFFFF;
          }

          else if (v145 <= -2147483650.0)
          {
            v146 = 0x80000000;
          }

          else
          {
            v146 = v145;
          }

          v141 += 4;
          *v142++ += v146;
          --v140;
        }

        while (v140);
      }

      v147 = a1;
      v148 = (a3 + 164);
      v149 = v175;
      if (v175)
      {
        do
        {
          v150 = *(v147 + 252);
          v151 = v42 * (*(v147 + v36 + 608) - *(v147 + 248)) * 0.0000152587891;
          if (v151 >= 0.0)
          {
            v152 = 0.5;
          }

          else
          {
            v152 = -0.5;
          }

          v153 = v151 + v152;
          v154 = v153;
          if (v153 <= -2147483650.0)
          {
            v154 = 0x80000000;
          }

          if (v153 >= 2147483650.0)
          {
            v154 = 0x7FFFFFFF;
          }

          *(v148 - 1) += v154;
          v155 = v42 * (*(v147 + v36 + 612) - v150) * 0.0000152587891;
          if (v155 >= 0.0)
          {
            v156 = 0.5;
          }

          else
          {
            v156 = -0.5;
          }

          v157 = v155 + v156;
          if (v157 >= 2147483650.0)
          {
            v158 = 0x7FFFFFFF;
          }

          else if (v157 <= -2147483650.0)
          {
            v158 = 0x80000000;
          }

          else
          {
            v158 = v157;
          }

          *v148 += v158;
          v148 += 2;
          v147 += 8;
          --v149;
        }

        while (v149);
      }

      v159 = a1;
      v160 = (a3 + 260);
      v161 = v174;
      if (v174)
      {
        do
        {
          v162 = v42 * (*(v159 + v36 + 704) - *(v159 + 344)) * 0.0000152587891;
          if (v162 >= 0.0)
          {
            v163 = 0.5;
          }

          else
          {
            v163 = -0.5;
          }

          v164 = v162 + v163;
          v165 = v164;
          if (v164 <= -2147483650.0)
          {
            v165 = 0x80000000;
          }

          if (v164 >= 2147483650.0)
          {
            v165 = 0x7FFFFFFF;
          }

          *(v160 - 1) += v165;
          v166 = v42 * (*(v159 + v36 + 708) - *(v159 + 348)) * 0.0000152587891;
          if (v166 >= 0.0)
          {
            v167 = 0.5;
          }

          else
          {
            v167 = -0.5;
          }

          v168 = v166 + v167;
          if (v168 >= 2147483650.0)
          {
            v169 = 0x7FFFFFFF;
          }

          else if (v168 <= -2147483650.0)
          {
            v169 = 0x80000000;
          }

          else
          {
            v169 = v168;
          }

          *v160 += v169;
          v160 += 2;
          v159 += 8;
          --v161;
        }

        while (v161);
      }

      result = *(a1 + 444);
      if (result)
      {
        v170 = 0;
      }

      else
      {
        v170 = v122;
      }

      if (v40[89])
      {
        v171 = v170;
      }

      else
      {
        v171 = -(((result << 31) >> 31) & v122);
      }

      v35 += v171;
      ++v37;
      v38 += 360;
      v39 += 360;
      v36 += 360;
      v4 = v131;
      v5 = v130;
      v6 = v129;
      v7 = v128;
      v8 = v127;
      v9 = v126;
      v11 = v172;
      v10 = v125;
      v12 = v124;
      v13 = v123;
      v14 = v179;
      v17 = v180;
      v16 = v181;
      v15 = v182;
    }

    while (v37 != v178);
  }

  if (v5 < 0)
  {
    *(a3 + 16) = 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_214;
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_214;
  }

  *(a3 + 20) = 0;
LABEL_214:
  *(a3 + 356) = result;
  if (v35 > *(a1 + 48))
  {
    *(a3 + 356) = result | 1;
  }

  return result;
}

uint64_t sub_24BBD42F8(uint64_t a1, int *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    LODWORD(v8) = 1;
    v7 = 1;
    if (*a2 >= 1)
    {
      return v7;
    }
  }

  else
  {
    v2 = a2 - 1;
    v3 = a1 - 1;
    do
    {
      while (1)
      {
        while (1)
        {
          v4 = v2[v3];
          v5 = a2[v3];
          if (!v4 || v4 != v5)
          {
            break;
          }

          v2[v3] = 0;
          if (!v3)
          {
            goto LABEL_16;
          }
        }

        if (v4 > v5)
        {
          break;
        }

        if (!--v3)
        {
          goto LABEL_16;
        }
      }

      a2[v3] = v4;
      v2[v3] = v5;
      if (v3 < (a1 - 1))
      {
        ++v3;
      }
    }

    while (v3);
LABEL_16:
    if (*a2 >= 1)
    {
      return a1;
    }

    v10 = a1 <= 2 ? 2 : a1;
    v8 = 1;
    while (a2[v8] <= 0)
    {
      if (v10 == ++v8)
      {
        return 0;
      }
    }
  }

  v7 = (a1 - v8);
  if (a1 <= v8)
  {
    return 0;
  }

  v9 = (a1 - v8);
  do
  {
    *a2 = a2[v8];
    ++a2;
    --v9;
  }

  while (v9);
  return v7;
}

uint64_t sub_24BBD43E0(int8x16_t *a1, int *a2)
{
  v3 = *a1;
  v4 = vceqz_s32(*&vextq_s8(v3, v3, 4uLL));
  v5 = vabsq_s32(*a1);
  result = v5.u32[0];
  v7 = v5.i32[3];
  if (((v4.i32[0] | v4.i32[1]) & 1) == 0)
  {
    v8 = vceqz_s32(*&vextq_s8(v3, v3, 0xCuLL));
    v9 = v5.i32[1];
    if (((v8.i32[1] | v8.i32[0]) & 1) == 0)
    {
      v11.i64[0] = 0xC0000000C0000000;
      v11.i64[1] = 0xC0000000C0000000;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v5, v11))))
      {
        sub_24BBEDB70(-1, 0);
      }

      v12 = v5.i32[0] * v5.i32[3] * 9.31322575e-10;
      v13 = 0.5;
      if (v12 >= 0.0)
      {
        v14 = 0.5;
      }

      else
      {
        v14 = -0.5;
      }

      v15 = v12 + v14;
      if (v15 >= 2147483650.0)
      {
        v16 = 0x7FFFFFFF;
      }

      else if (v15 <= -2147483650.0)
      {
        v16 = 0x80000000;
      }

      else
      {
        v16 = v15;
      }

      v17 = v9 * v5.i32[2] * 9.31322575e-10;
      if (v17 < 0.0)
      {
        v13 = -0.5;
      }

      v18 = v17 + v13;
      if (v18 >= 2147483650.0)
      {
        v19 = 0x7FFFFFFF;
      }

      else if (v18 <= -2147483650.0)
      {
        v19 = 0x80000000;
      }

      else
      {
        v19 = v18;
      }

      v20 = v16 - v19;
      if (v20 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = -v20;
      }

      result = sub_24BC05B04(v21);
      if (result > 0)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    result = v5.u32[1];
    v7 = v5.i32[2];
  }

  if (result <= v7)
  {
LABEL_28:
    if (result)
    {
      v10 = result;
      goto LABEL_30;
    }

LABEL_35:
    v25 = 0;
    goto LABEL_38;
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  v10 = v7;
LABEL_30:
  v22 = 1073741820.0 / v10 * 65536.0;
  v23 = 0.5;
  if (v22 < 0.0)
  {
    v23 = -0.5;
  }

  v24 = v22 + v23;
  if (v24 >= 2147483650.0)
  {
    v25 = 0x7FFFFFFF;
  }

  else if (v24 <= -2147483650.0)
  {
    v25 = 0x80000000;
  }

  else
  {
    v25 = v24;
  }

LABEL_38:
  *a2 = v25;
  return result;
}

uint64_t sub_24BBD45C8(__int128 *a1, int a2, int32x2_t *a3, uint64_t a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v7 = *a1;
  a3[2] = a1[1];
  *a3->i8 = v7;
  if (!a4)
  {
LABEL_8:
    v13 = a3[2].i32[0];
    if (v13 > 0x8000)
    {
      return 4294967284;
    }

    v14 = a3[2].i32[1] - 32769;
    v15 = v13 < -32768;
    v16 = -65537;
    goto LABEL_17;
  }

  v8 = *(a4 + 8);
  if (v8 == 2)
  {
    v18 = a3[2].i32[0];
    if (v18 > 0x10000)
    {
      return 4294967284;
    }

    v14 = a3[2].i32[1] - 65537;
    v15 = v18 < -65536;
    v16 = -131073;
LABEL_17:
    if (!v15 && v14 >= v16)
    {
LABEL_22:
      a3[2] = 0;
      v20 = a2 * 163840.0 * 0.0000152587891;
      v21 = 0.5;
      if (v20 >= 0.0)
      {
        v22 = 0.5;
      }

      else
      {
        v22 = -0.5;
      }

      v23 = v20 + v22;
      if (v23 >= 2147483650.0)
      {
        v24 = 0x7FFFFFFF;
      }

      else if (v23 <= -2147483650.0)
      {
        v24 = 0x80000000;
      }

      else
      {
        v24 = v23;
        if (!v23)
        {
          goto LABEL_36;
        }
      }

      v25 = 2147483650.0 / v24 * 65536.0;
      if (v25 < 0.0)
      {
        v21 = -0.5;
      }

      v26 = v25 + v21;
      if (v26 < 2147483650.0)
      {
        if (v26 <= -2147483650.0)
        {
          v27 = 0xFFFFFFFF80000000;
        }

        else
        {
          v27 = v26;
        }

LABEL_38:
        v28 = *a3;
        v29 = vabs_s32(*a3);
        if ((v29.u32[1] + v29.u32[0]) > v27)
        {
          return 1;
        }

        v30 = a3[1];
        v31 = vabs_s32(v30);
        if (v31.u32[1] + v31.u32[0] > v27)
        {
          return 1;
        }

        if (v28.i32[0] && (v32 = HIDWORD(*&a3[1]), v30.i32[1]))
        {
          if ((v28.i32[0] & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          *a7 |= 0x10000u;
          v34 = *a3->i8;
          *a3->i8 = vrev64q_s32(*a3->i8);
          a3[2] = vrev64_s32(a3[2]);
          v32 = DWORD2(v34);
          if ((DWORD1(v34) & 0x80000000) == 0)
          {
LABEL_44:
            if ((v32 & 0x80000000) == 0)
            {
LABEL_45:
              v33 = a3->i32[1];
LABEL_49:
              *a6 = v33 == 0;
              *a5 = a3[1].i32[0] == 0;
              return sub_24BBD4880(a3);
            }

LABEL_48:
            *a7 |= 0x400000u;
            v33 = -a3->i32[1];
            a3->i32[1] = v33;
            a3[1].i32[1] = -a3[1].i32[1];
            a3[2].i32[1] = -a3[2].i32[1];
            goto LABEL_49;
          }
        }

        *a7 |= 0x80000u;
        a3->i32[0] = -a3->i32[0];
        v35 = a3[1].i32[1];
        a3[1].i32[0] = -a3[1].i32[0];
        a3[2].i32[0] = -a3[2].i32[0];
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }

LABEL_36:
      v27 = 0x7FFFFFFFLL;
      goto LABEL_38;
    }

    return 4294967284;
  }

  if (v8 != 4)
  {
    if (v8 == 16)
    {
      v9 = a3[2].i32[0];
      if (v9 <= 0x80000)
      {
        result = 4294967284;
        if (v9 < -524288)
        {
          return result;
        }

        v11 = a3[2].i32[1] - 524289;
        v12 = -1048577;
        goto LABEL_13;
      }

      return 4294967284;
    }

    goto LABEL_8;
  }

  v17 = a3[2].i32[0];
  if (v17 > 0x20000)
  {
    return 4294967284;
  }

  result = 4294967284;
  if (v17 < -131072)
  {
    return result;
  }

  v11 = a3[2].i32[1] - 131073;
  v12 = -262145;
LABEL_13:
  if (v11 >= v12)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24BBD4880(uint64_t result)
{
  if (result)
  {
    qword_28151BD48 = &qword_28151BD10;
    v1 = *(result + 16);
    *&dword_28151BD18 = *result;
    qword_28151BD28 = v1;
    if (dword_28151BD18 | dword_28151BD24)
    {
      if (qword_28151BD1C)
      {
        v2 = 3;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 2;
    }

    LODWORD(qword_28151BD10) = v2;
    if (sub_24BBD4A74(&dword_28151BD18, &xmmword_28151BD30))
    {
      v3 = qword_28151BD48;
      if (*(qword_28151BD48 + 32) || *(qword_28151BD48 + 44))
      {
        v4 = 3;
        if (!*(qword_28151BD48 + 36))
        {
          if (*(qword_28151BD48 + 40))
          {
            v4 = 3;
          }

          else
          {
            v4 = 1;
          }
        }
      }

      else
      {
        v4 = 2;
      }

      *(qword_28151BD48 + 4) = v4;
      v5 = sub_24BBE62C0;
      v6 = sub_24BBD5328;
      if (*v3 != 1)
      {
        if (*v3 == 2)
        {
          v5 = sub_24BBE6390;
          v6 = sub_24BBE65C4;
        }

        else
        {
          v5 = sub_24BBE6460;
          v6 = sub_24BBE6684;
        }
      }

      off_28151BD60 = v6;
      off_28151BD50 = v5;
      if (!v3[6] && !v3[7])
      {
        off_28151BD50 = v6;
      }

      v7 = sub_24BBE67D8;
      v8 = sub_24BBE6ADC;
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v7 = sub_24BBE68A8;
          v8 = sub_24BBE6BA0;
        }

        else
        {
          v7 = sub_24BBE6978;
          v8 = sub_24BBE6C60;
        }
      }

      off_28151BD68 = v8;
      off_28151BD58 = v7;
      if (v3[12] || v3[13])
      {
        return 0;
      }

      else
      {
        result = 0;
        off_28151BD58 = v8;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_24BBD4A74(int *a1, int32x4_t *a2)
{
  result = sub_24BBD4C58(a1, a2);
  if (result)
  {
    v5 = a1[4];
    v6 = v5 * a2->i32[0] * 0.0000152587891;
    v7 = 0.5;
    if (v6 >= 0.0)
    {
      v8 = 0.5;
    }

    else
    {
      v8 = -0.5;
    }

    v9 = v6 + v8;
    if (v9 >= 2147483650.0)
    {
      v10 = 0x7FFFFFFF;
    }

    else if (v9 <= -2147483650.0)
    {
      v10 = 0x80000000;
    }

    else
    {
      v10 = v9;
      if (v9 == -2147483647)
      {
        return 0;
      }
    }

    v11 = a1[5];
    v12 = v11 * a2->i32[2] * 0.0000152587891;
    if (v12 < 0.0)
    {
      v7 = -0.5;
    }

    v13 = v12 + v7;
    if (v13 >= 2147483650.0)
    {
      v14 = 0x7FFFFFFF;
    }

    else if (v13 <= -2147483650.0)
    {
      v14 = 0x80000000;
    }

    else
    {
      v14 = v13;
    }

    v15 = v14 + v10;
    if (v15 < -2147483646)
    {
      return 0;
    }

    v16 = v5 * a2->i32[1] * 0.0000152587891;
    v17 = 0.5;
    if (v16 >= 0.0)
    {
      v18 = 0.5;
    }

    else
    {
      v18 = -0.5;
    }

    v19 = v16 + v18;
    if (v19 >= 2147483650.0)
    {
      v20 = 0x7FFFFFFF;
    }

    else if (v19 <= -2147483650.0)
    {
      v20 = 0x80000000;
    }

    else
    {
      v20 = v19;
      if (v19 == -2147483647)
      {
        return 0;
      }
    }

    v21 = v11 * a2->i32[3] * 0.0000152587891;
    if (v21 < 0.0)
    {
      v17 = -0.5;
    }

    v22 = v21 + v17;
    if (v22 >= 2147483650.0)
    {
      v23 = 0x7FFFFFFF;
    }

    else if (v22 <= -2147483650.0)
    {
      v23 = 0x80000000;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23 + v20;
    if (v24 >= -2147483646)
    {
      a2[1].i32[0] = -v15;
      a2[1].i32[1] = -v24;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24BBD4C58(int *a1, int32x4_t *a2)
{
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  v5 = a1[2];
  if (v5 >= 0)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = -v5;
  }

  if (v4 >= v6)
  {
    if (v3)
    {
      v10 = v5 / v3 * 1073741820.0;
      v11 = 0.5;
      if (v10 < 0.0)
      {
        v11 = -0.5;
      }

      v12 = v10 + v11;
      if (v12 >= 2147483650.0 || v12 <= -2147483650.0)
      {
        return 0;
      }

      v14 = v12;
    }

    else
    {
      v14 = (v5 >> 31) ^ 0x7FFFFFFF;
    }

    if ((v14 - 0x7FFFFFFF) < 2)
    {
      return 0;
    }

    v15 = a1[3];
    v16 = a1[1];
    v17 = v16;
    v18 = v14;
    v19 = v14 * v16 * 9.31322575e-10;
    v20 = 0.5;
    if (v19 < 0.0)
    {
      v20 = -0.5;
    }

    v21 = v19 + v20;
    if (v21 >= 2147483650.0)
    {
      v22 = 0x7FFFFFFF;
    }

    else if (v21 <= -2147483650.0)
    {
      v22 = 0x80000000;
    }

    else
    {
      v22 = v21;
    }

    v23 = v15 - v22;
    if (v15 - v22 >= 0)
    {
      v24 = v15 - v22;
    }

    else
    {
      v24 = v22 - v15;
    }

    if (v24 >= 0x10000)
    {
      if (v15 == v22)
      {
        return 0;
      }

      v25 = 65536.0 / v23 * 1073741820.0;
      v26 = 0.5;
      if (v25 < 0.0)
      {
        v26 = -0.5;
      }

      v27 = v25 + v26;
      if (v27 >= 2147483650.0 || v27 <= -2147483650.0)
      {
        return 0;
      }

      v29 = v27;
      if ((v27 - 0x7FFFFFFF) < 2)
      {
        return 0;
      }

      v30 = (v29 + 0x2000) >> 14;
      a2->i32[3] = v30;
      v31 = v18 * v29 * 9.31322575e-10;
      v32 = 0.5;
      v33 = -0.5;
      if (v31 < 0.0)
      {
        v32 = -0.5;
      }

      v34 = v31 + v32;
      v35 = v34 > -2147483650.0 && v34 < 2147483650.0;
      v36 = (0x2000 - v34) >> 14;
      if (!v35)
      {
        v36 = -131072;
      }

      goto LABEL_66;
    }

    if (v15 == v22)
    {
      goto LABEL_79;
    }

    v37 = 65536.0 / v23 * 65536.0;
    v38 = 0.5;
    if (v37 < 0.0)
    {
      v38 = -0.5;
    }

    v39 = v37 + v38;
    if (v39 >= 2147483650.0)
    {
LABEL_79:
      v51 = 0x7FFFFFFF;
    }

    else
    {
      if (v39 > -2147483650.0)
      {
        v30 = v39;
        a2->i32[3] = v39;
        if ((v39 - 0x7FFFFFFF) < 2)
        {
          return 0;
        }

        v40 = v18 * v30 * 9.31322575e-10;
        v41 = 0.5;
        v33 = -0.5;
        if (v40 < 0.0)
        {
          v41 = -0.5;
        }

        v42 = v40 + v41;
        if (v42 > -2147483650.0)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0x80000000;
        }

        if (v42 < 2147483650.0)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0x7FFFFFFF;
        }

        v36 = -v44;
LABEL_66:
        a2->i32[2] = v36;
        if (v16 >= 0)
        {
          v45 = v16;
        }

        else
        {
          v45 = -v16;
        }

        if (v45 >= v4)
        {
          if (v30 >= 0)
          {
            v52 = v30;
          }

          else
          {
            v52 = -v30;
          }

          if (v52 >= v4)
          {
            if (v3)
            {
              v57 = v17 / v3 * 65536.0;
              v58 = 0.5;
              if (v57 < 0.0)
              {
                v58 = -0.5;
              }

              v59 = v57 + v58;
              if (v59 > -2147483650.0)
              {
                v60 = v59;
              }

              else
              {
                v60 = 0x80000000;
              }

              if (v59 < 2147483650.0)
              {
                v61 = v60;
              }

              else
              {
                v61 = 0x7FFFFFFF;
              }
            }

            else
            {
              v61 = (v16 >> 31) ^ 0x7FFFFFFF;
            }

            v63 = v30 * v61 * 0.0000152587891;
            v64 = 0.5;
            v65 = -0.5;
            if (v63 < 0.0)
            {
              v64 = -0.5;
            }

            v66 = v63 + v64;
            if (v66 >= 2147483650.0)
            {
              v68 = 0x7FFFFFFF;
            }

            else
            {
              if (v66 > -2147483650.0)
              {
                v67 = v66;
                a2->i32[1] = v66;
                if ((v66 - 0x7FFFFFFF) < 2)
                {
                  return 0;
                }

LABEL_125:
                a2->i32[1] = -v67;
                v73 = a1[1];
                v74 = v73 * v36 * 0.0000152587891;
                v75 = 0.5;
                if (v74 < 0.0)
                {
                  v75 = v65;
                }

                v76 = v74 + v75;
                v77 = v76 < 2147483650.0 && v76 > -2147483650.0;
                v78 = v76;
                if (!v77 || (v76 - 0x7FFFFFFF) <= 1)
                {
                  if (v73 >= 0)
                  {
                    v80 = a1[1];
                  }

                  else
                  {
                    v80 = -v73;
                  }

                  if (v36 >= 0)
                  {
                    v81 = v36;
                  }

                  else
                  {
                    v81 = -v36;
                  }

                  v82 = v80 > v81;
                  if (v80 <= v81)
                  {
                    v83 = v36;
                  }

                  else
                  {
                    v83 = a1[1];
                  }

                  if (!v82)
                  {
                    v36 = a1[1];
                  }

                  if (v3)
                  {
                    v84 = v83 / v3 * 65536.0;
                    v85 = 0.5;
                    if (v84 < 0.0)
                    {
                      v85 = v65;
                    }

                    v86 = v84 + v85;
                    if (v86 >= 2147483650.0)
                    {
                      v87 = 0x7FFFFFFF;
                    }

                    else if (v86 <= -2147483650.0)
                    {
                      v87 = 0x80000000;
                    }

                    else
                    {
                      v87 = v86;
                    }
                  }

                  else
                  {
                    v87 = (v83 >> 31) ^ 0x7FFFFFFF;
                  }

                  v92 = v36 * v87 * 0.0000152587891;
                  v93 = 0.5;
                  if (v92 < 0.0)
                  {
                    v93 = v65;
                  }

                  v94 = v92 + v93;
                  if (v94 < 2147483650.0)
                  {
                    if (v94 > -2147483650.0)
                    {
                      a2->i32[0] = v94;
                      if ((v94 - 0x7FFFFFFF) >= 2)
                      {
                        a2->i32[0] = -v94;
                        return 1;
                      }

                      return 0;
                    }

                    goto LABEL_167;
                  }

LABEL_166:
                  v95 = 0x7FFFFFFF;
LABEL_168:
                  result = 0;
                  a2->i32[0] = v95;
                  return result;
                }

                if (v3)
                {
                  v88 = (0x10000 - v78) / v3 * 65536.0;
                  v89 = 0.5;
                  if (v88 < 0.0)
                  {
                    v89 = v65;
                  }

                  v90 = v88 + v89;
                  if (v90 >= 2147483650.0)
                  {
                    goto LABEL_166;
                  }

                  if (v90 <= -2147483650.0)
                  {
LABEL_167:
                    v95 = 0x80000000;
                    goto LABEL_168;
                  }

                  v91 = v90;
                }

                else if (v78 <= 0x10000)
                {
                  v91 = 0x7FFFFFFF;
                }

                else
                {
                  v91 = 0x80000000;
                }

                a2->i32[0] = v91;
                return (v91 - 0x7FFFFFFF) >= 2;
              }

              v68 = 0x80000000;
            }

            result = 0;
            a2->i32[1] = v68;
            return result;
          }

          if (v3)
          {
            v53 = v30 / v3 * 1073741820.0;
            v54 = 0.5;
            if (v53 < 0.0)
            {
              v54 = v33;
            }

            v55 = v53 + v54;
            if (v55 >= 2147483650.0)
            {
              v56 = 0x7FFFFFFF;
            }

            else if (v55 <= -2147483650.0)
            {
              v56 = 0x80000000;
            }

            else
            {
              v56 = v55;
            }
          }

          else
          {
            v56 = (v30 >> 31) ^ 0x7FFFFFFF;
          }

          v62 = v17 * v56;
        }

        else
        {
          if (v3)
          {
            v46 = v17 / v3 * 1073741820.0;
            v47 = 0.5;
            if (v46 < 0.0)
            {
              v47 = -0.5;
            }

            v48 = v46 + v47;
            if (v48 > -2147483650.0)
            {
              v49 = v48;
            }

            else
            {
              v49 = 0x80000000;
            }

            if (v48 < 2147483650.0)
            {
              v50 = v49;
            }

            else
            {
              v50 = 0x7FFFFFFF;
            }
          }

          else
          {
            v50 = (v16 >> 31) ^ 0x7FFFFFFF;
          }

          v62 = v50 * v30;
        }

        v69 = v62 * 9.31322575e-10;
        v70 = 0.5;
        v65 = -0.5;
        if (v69 < 0.0)
        {
          v70 = -0.5;
        }

        v71 = v69 + v70;
        if (v71 > -2147483650.0)
        {
          v72 = v71;
        }

        else
        {
          v72 = 0x80000000;
        }

        if (v71 < 2147483650.0)
        {
          v67 = v72;
        }

        else
        {
          v67 = 0x7FFFFFFF;
        }

        goto LABEL_125;
      }

      v51 = 0x80000000;
    }

    result = 0;
    a2->i32[3] = v51;
    return result;
  }

  v97 = 0;
  v7 = a1[3];
  v96[0] = v5;
  v96[1] = v7;
  v8 = a1[1];
  v96[2] = v3;
  v96[3] = v8;
  result = sub_24BBD4C58(v96, a2);
  if (result)
  {
    *a2 = vrev64q_s32(*a2);
    return 1;
  }

  return result;
}

uint64_t sub_24BBD5328(uint64_t result, int *a2)
{
  v2 = result * *(qword_28151BD48 + 8) * 0.0000152587891;
  v3 = 0.5;
  if (v2 >= 0.0)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = -0.5;
  }

  v5 = v2 + v4;
  if (v5 > -2147483650.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x80000000;
  }

  if (v5 < 2147483650.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = SHIDWORD(result) * *(qword_28151BD48 + 20) * 0.0000152587891;
  if (v8 < 0.0)
  {
    v3 = -0.5;
  }

  v9 = v8 + v3;
  if (v9 >= 2147483650.0)
  {
    v10 = 0x7FFFFFFF;
  }

  else if (v9 <= -2147483650.0)
  {
    v10 = 0x80000000;
  }

  else
  {
    v10 = v9;
  }

  *a2 = v7;
  a2[1] = v10;
  return result;
}

unint64_t sub_24BBD53EC(unint64_t result, int *a2, uint64_t a3)
{
  v3 = HIDWORD(result);
  v4 = *(a3 + 716);
  if ((v4 & 0x80000) != 0)
  {
    v5 = -result;
  }

  else
  {
    v5 = result;
  }

  if ((*&v4 & 0x400000) != 0)
  {
    LODWORD(v3) = -HIDWORD(result);
  }

  v6 = (*&v4 & 0x10000) == 0;
  if ((*&v4 & 0x10000) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (!v6)
  {
    LODWORD(v3) = v5;
  }

  *a2 = v7;
  a2[1] = v3;
  return result;
}

uint64_t sub_24BBD5418(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v7 = a2;
  v8 = 0;
  *a3 = sub_24BBD5470(&v7);
  v7 = 0;
  v8 = a2;
  result = sub_24BBD5470(&v7);
  *a4 = result;
  return result;
}

uint64_t sub_24BBD5470(int *a1)
{
  if (!off_28151BD60)
  {
    sub_24BBEDB70(257, 0);
  }

  off_28151BD60(*a1, a1);
  if (*a1 < 0)
  {
    *a1 = -*a1;
  }

  v2 = a1[1];
  if (v2 < 0)
  {
    v2 = -v2;
    a1[1] = v2;
  }

  v3 = *a1;
  if (*a1 >= v2)
  {
    v8 = v2 * 22046.0 * 0.0000152587891 + 0.5;
    if (v8 >= 2147483650.0)
    {
      v9 = 0x7FFFFFFF;
    }

    else if (v8 <= -2147483650.0)
    {
      v9 = 0x80000000;
    }

    else
    {
      v9 = v8;
    }

    return (v9 + v3);
  }

  else
  {
    v4 = v3 * 22046.0 * 0.0000152587891;
    v5 = 0.5;
    if (v4 < 0.0)
    {
      v5 = -0.5;
    }

    v6 = v4 + v5;
    if (v6 >= 2147483650.0)
    {
      v7 = 0x7FFFFFFF;
    }

    else if (v6 <= -2147483650.0)
    {
      v7 = 0x80000000;
    }

    else
    {
      v7 = v6;
    }

    return (v7 + v2);
  }
}

uint64_t sub_24BBD55AC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7, int *a8, int a9)
{
  v10 = a7;
  v71 = a3;
  if (!a2)
  {
    *a7 = 0;
    v10 = a8;
    goto LABEL_35;
  }

  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = result;
  v70 = 0;
  if (a3)
  {
    result = sub_24BBD5C00(&v71, 1, a4, a5, &v70);
  }

  if (a9 == 2)
  {
    v17 = 196608;
  }

  else
  {
    v17 = 98304;
  }

  if (a9 == 4)
  {
    v17 = 393216;
  }

  if (a9 == 16)
  {
    v17 = 1572864;
  }

  v18 = v70;
  if (!v70)
  {
    if (v15 != 1)
    {
      goto LABEL_14;
    }

LABEL_34:
    *v10 = 1;
    *a6 = a3;
    a6[12] = v18;
    a6[36] = 0;
    a6[24] = 0;
    *a8 = v18;
    if (v18 > 16711680)
    {
      goto LABEL_35;
    }

    return result;
  }

  if (v15 == 1 || v70 < v17)
  {
    goto LABEL_34;
  }

LABEL_14:
  *v10 = v15;
  sub_24BBD5C00(v16, v15, v13, v12, a6 + 12);
  v19 = 0;
  v20 = -1;
  do
  {
    a6[v19] = v16[v19];
    a6[(v19 + 36)] = 0x7FFFFFFF;
    a6[(v19 + 24)] = 0x7FFFFFFF;
    if (v16[v19] == a3)
    {
      a6[(v19 + 36)] = 0;
      a6[(v19 + 24)] = 0;
      v20 = v19;
    }

    ++v19;
  }

  while (v15 != v19);
  if (v20 == -1)
  {
    v20 = 0;
    v18 = a6[12];
    a6[36] = 0;
    a6[24] = 0;
    *a8 = v18;
  }

  else
  {
    *a8 = v18;
    if (v20)
    {
      v21 = a6[12];
      v22 = v18 - v21 <= 22272 && (v18 - 0x7FFFFFFF) >= 2;
      if (v22 && (v21 - 0x7FFFFFFF) >= 2)
      {
        if (v18 == v21)
        {
          goto LABEL_39;
        }

        v23 = 22272.0 / (v18 - v21) * 65536.0;
        v24 = 0.5;
        if (v23 < 0.0)
        {
          v24 = -0.5;
        }

        v25 = v23 + v24;
        if (v25 >= 2147483650.0)
        {
LABEL_39:
          v26 = 0x7FFFFFFF;
        }

        else if (v25 <= -2147483650.0)
        {
          v26 = 0x80000000;
        }

        else
        {
          v26 = v25;
        }

        a6[36] = v26;
        v27 = v21 * v26 * 0.0000152587891;
        v28 = 0.5;
        if (v27 < 0.0)
        {
          v28 = -0.5;
        }

        v29 = v27 + v28;
        if (v29 >= 2147483650.0)
        {
          v30 = 0x7FFFFFFF;
        }

        else if (v29 <= -2147483650.0)
        {
          v30 = 0x80000000;
        }

        else
        {
          v30 = v29;
        }

        a6[24] = v30;
      }

      else
      {
        a6[36] = 0;
        a6[24] = 0;
      }
    }
  }

  if (v20 + 1 < v15)
  {
    v31 = a6[v15 + 11];
    v32 = v31 - v18 <= 44544 && (v18 - 0x7FFFFFFF) >= 2;
    if (v32 && (v31 - 0x7FFFFFFF) >= 2)
    {
      if (v31 == v18)
      {
        goto LABEL_62;
      }

      v33 = 44544.0 / (v31 - v18) * 65536.0;
      v34 = 0.5;
      if (v33 < 0.0)
      {
        v34 = -0.5;
      }

      v35 = v33 + v34;
      if (v35 >= 2147483650.0)
      {
LABEL_62:
        v36 = 0x7FFFFFFF;
      }

      else if (v35 <= -2147483650.0)
      {
        v36 = 0x80000000;
      }

      else
      {
        v36 = v35;
      }

      a6[v15 + 35] = v36;
      v38 = v31 * v36 * 0.0000152587891;
      v39 = 0.5;
      if (v38 < 0.0)
      {
        v39 = -0.5;
      }

      v40 = v38 + v39;
      if (v40 >= 2147483650.0)
      {
        v37 = 0x7FFFFFFF;
      }

      else if (v40 <= -2147483650.0)
      {
        v37 = 0x80000000;
      }

      else
      {
        v37 = v40;
      }
    }

    else
    {
      v37 = 0;
      a6[v15 + 35] = 0;
    }

    a6[v15 + 23] = v37;
  }

  if (v15 <= 2)
  {
    v41 = 2;
  }

  else
  {
    v41 = v15;
  }

  v42 = 1 - v41;
  v43 = -2;
  while (1)
  {
    v44 = 25;
    while (1)
    {
      result = a6[v44];
      if (result == 0x7FFFFFFF)
      {
        break;
      }

      ++v44;
      result = v42 + v44;
      if (v42 + v44 == 25)
      {
        v45 = v41;
        goto LABEL_80;
      }
    }

    v45 = v44 - 24;
LABEL_80:
    if (v45 == v15)
    {
      break;
    }

    result = v45;
    LODWORD(v46) = v45;
    if (v45 < v15)
    {
      v46 = v45;
      while (a6[(v46 + 24)] == 0x7FFFFFFF)
      {
        if (v15 == ++v46)
        {
          LODWORD(v46) = v15;
          break;
        }
      }
    }

    if (v45 >= v46)
    {
      break;
    }

    v47 = 0;
    v48 = a6[v45 - 1];
    v49 = a6[v45 + 11];
    v50 = a6[(v46 + 12)];
    v51 = -1;
    do
    {
      v52 = a6[result];
      v53 = 2 * (a6[v46] - v52);
      v54 = v52 - v48;
      if (v53 < v54)
      {
        v54 = v53;
      }

      if (v54 > v47)
      {
        v47 = v54;
        v51 = result;
      }

      ++result;
    }

    while (v46 != result);
    if (v51 == -1)
    {
      break;
    }

    v55 = a6[v51 + 12];
    v56 = v50 - v55;
    v57 = v55 - v49;
    if (v55 - v49 <= 2 * (v50 - v55))
    {
      if (v57 <= 44544)
      {
        if (v55 != v49)
        {
          v58 = 44544.0 / v57;
LABEL_101:
          v59 = v58 * 65536.0;
          v60 = v59 >= 0.0 ? 0.5 : -0.5;
          v61 = v59 + v60;
          if (v61 < 2147483650.0)
          {
            if (v61 <= -2147483650.0)
            {
              v62 = 0x80000000;
            }

            else
            {
              v62 = v61;
            }

LABEL_109:
            a6[v51 + 36] = v62;
            v63 = v55 * v62 * 0.0000152587891;
            if (v63 >= 0.0)
            {
              v64 = 0.5;
            }

            else
            {
              v64 = -0.5;
            }

            v65 = v63 + v64;
            if (v65 >= 2147483650.0)
            {
              result = 0x7FFFFFFFLL;
            }

            else if (v65 <= -2147483650.0)
            {
              result = 0x80000000;
            }

            else
            {
              result = v65;
            }

            goto LABEL_117;
          }
        }

LABEL_108:
        v62 = 0x7FFFFFFF;
        goto LABEL_109;
      }
    }

    else if (v56 <= 22272)
    {
      if (v50 != v55)
      {
        v58 = 22272.0 / v56;
        goto LABEL_101;
      }

      goto LABEL_108;
    }

    result = 0;
    a6[v51 + 36] = 0;
LABEL_117:
    a6[v51 + 24] = result;
    if (v43-- == 0)
    {
      goto LABEL_123;
    }
  }

  if (!v43)
  {
    sub_24BBEDB70(-1, 0);
  }

LABEL_123:
  v67 = 0;
  *v10 = 0;
  v68 = 12;
  do
  {
    v69 = a6[v68];
    if (v69 >= 16711680)
    {
      break;
    }

    if (a6[(v68 + 12)] < 1)
    {
      ++v67;
    }

    else
    {
      a6[v68] = -v69;
    }

    *v10 = v68++ - 11;
  }

  while (v68 - v15 != 12);
  if (!v67)
  {
LABEL_35:
    *v10 = 0;
  }

  return result;
}

unsigned int *sub_24BBD5C00(unsigned int *result, int a2, int a3, int a4, int *a5)
{
  v6 = a2;
  v7 = result;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        do
        {
          v8 = *v7++;
          LODWORD(v13) = 0;
          HIDWORD(v13) = v8;
          if (!off_28151BD60)
          {
            sub_24BBEDB70(257, 0);
          }

          result = off_28151BD60(v13, &v13);
          if (v13 >= 0)
          {
            v9 = HIDWORD(v13);
          }

          else
          {
            v9 = -HIDWORD(v13);
          }

          *a5++ = v9;
          --v6;
        }

        while (v6);
      }
    }

    else if (a2)
    {
      do
      {
        v11 = *v7++;
        v13 = v11;
        if (!off_28151BD60)
        {
          sub_24BBEDB70(257, 0);
        }

        result = off_28151BD60(v13, &v13);
        v12 = v13;
        if (v13 < 0)
        {
          v12 = -v13;
        }

        *a5++ = v12;
        --v6;
      }

      while (v6);
    }
  }

  else if (a2)
  {
    do
    {
      v10 = *v7++;
      v13 = v10;
      result = sub_24BBD5470(&v13);
      *a5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_24BBD5D14(int a1, _DWORD *a2)
{
  LODWORD(v4) = 0;
  HIDWORD(v4) = a1;
  if (!off_28151BD50)
  {
    sub_24BBEDB70(257, 0);
  }

  result = off_28151BD50(v4, &v4);
  *a2 = HIDWORD(v4);
  return result;
}

BOOL sub_24BBD5D7C(int a1)
{
  if (a1)
  {
    switch(a1)
    {
      case -18:
      case -16:
      case -13:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 8);
        goto LABEL_11;
      case -17:
      case -15:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 4);
        goto LABEL_11;
      case -14:
      case -8:
      case -7:
      case -1:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 5);
        goto LABEL_11;
      case -12:
      case -3:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 15);
        goto LABEL_11;
      case -10:
      case -9:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 13);
        goto LABEL_11;
      case -6:
      case -5:
      case -4:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 20);
        goto LABEL_11;
      case -2:
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BBE0934(exception, 1);
LABEL_11:
        __cxa_throw(exception, &unk_285F89D90, nullsub_8);
      default:
        return a1 != 0;
    }
  }

  return a1 != 0;
}

uint64_t sub_24BBD5F24(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  (*(**(a1 + 8) + 40))(*(a1 + 8), &v6);
  v4 = v6;
  *(a2 + 56) = HIWORD(v6);
  *(a2 + 60) = v4;
  return (*(**(a1 + 8) + 96))(*(a1 + 8), *(a1 + 32), a2, a2 + 8, a2 + 16, a2 + 24, a2 + 32, a2 + 40, a2 + 64);
}

uint64_t sub_24BBD5FDC(void **a1, uint64_t a2)
{
  v4 = (*(*a1[6] + 72))(a1[6]);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1000;
  }

  *(a2 + 4) = v5;
  *a2 = 16;
  result = ((*a1)[2])(a1);
  *(a2 + 6) = result;
  *(a2 + 8) = 6;
  return result;
}

uint64_t sub_24BBD6074(uint64_t a1)
{
  LODWORD(result) = (*(**(a1 + 48) + 168))(*(a1 + 48));
  if (result >= 0xFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t sub_24BBD60BC(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, uint64_t a7, int32x4_t *a8, uint64_t a9)
{
  v16 = (*(*a2 + 64))(a2);
  v17 = (*(*v16 + 16))(v16);
  v18 = *(*(a1 + 48) + 128);
  *v59 = 0;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  if (*(v18 + 72) > 1u)
  {
    v19 = v57;
    sub_24BBD6C0C(v18, &v17[40].i64[1], v57);
  }

  else
  {
    v19 = (v18 + 88);
  }

  LODWORD(v51) = 0;
  v55 = 0;
  v56 = 0;
  if (sub_24BBD6C14(a2))
  {
    sub_24BBE0618(&v53, a1);
    sub_24BBE070C(&v53, *(*(a1 + 48) + 150), &v17[40].i32[2], &v51, &v56 + 1, &v56, &v55 + 1, &v55);
    sub_24BBE0958(&v53);
    *&v52 = 0;
    v53.i64[0] = v51;
    *(&v52 + 1) = HIDWORD(v56);
    (*(*a2 + 24))(a2, &v53, &v53);
    (*(*a2 + 24))(a2, &v52 + 8, &v52 + 8);
    v20 = v53.i32[0];
    v21 = v53.i32[1];
    *a3 = v53.i32[0];
    *a9 = v20;
    a3[1] = -v21;
    v22 = DWORD2(v52);
    v23 = HIDWORD(v52);
    *a4 = DWORD2(v52);
    *(a9 + 4) = v22;
    a4[1] = -v23;
    *(a9 + 8) = 0;
    *a7 = 0;
    v53.i64[0] = 0;
    HIDWORD(v52) = v56;
    *(&v52 + 4) = v55;
  }

  else
  {
    v54 = 0;
    sub_24BBD6C20(&v53, a1);
    sub_24BBD6EA8(&v53, *(*(a1 + 48) + 150), &v17[40].i32[2], &v51, &v56 + 1, &v56, &v55 + 1, &v55, &v54);
    sub_24BBD70C8(&v53);
    v53.i32[0] = 0;
    v53.i32[1] = v51;
    HIDWORD(v52) = HIDWORD(v56);
    LODWORD(v52) = 0;
    *(&v52 + 4) = v56;
    (*(*a2 + 24))(a2, &v53, &v53);
    (*(*a2 + 24))(a2, &v52 + 8, &v52 + 8);
    (*(*a2 + 24))(a2, &v52, &v52);
    v24 = -v53.i32[1];
    *a3 = v53.i32[0];
    a3[1] = v24;
    *a9 = v24;
    v25 = v52;
    v26 = DWORD1(v52);
    v27 = HIDWORD(v52);
    v28 = DWORD1(v52) - HIDWORD(v52);
    *a4 = DWORD2(v52) - v52;
    a4[1] = v28;
    *(a9 + 4) = -v27;
    v29 = -v26;
    *a7 = v25;
    *(a7 + 4) = v29;
    *(a9 + 8) = v29;
    v53.i64[0] = 0;
    *(&v52 + 1) = v55;
    *&v52 = v54;
  }

  (*(*a2 + 24))(a2, &v53, &v53);
  (*(*a2 + 24))(a2, &v52 + 8, &v52 + 8);
  (*(*a2 + 24))(a2, &v52, &v52);
  v30 = v53.i32[1] - HIDWORD(v52);
  *a5 = DWORD2(v52) - v53.i32[0];
  a5[1] = v30;
  *a6 = v52;
  *a8 = vtrn1q_s32(v17[58], vextq_s8(v17[58], v17[58], 0xCuLL));
  *(a9 + 72) = 0;
  if (sub_24BBD6C14(a2))
  {
    if ((v19[22].i8[4] & 3) != 0)
    {
      *(a9 + 72) |= 0x40000u;
    }

    *v59 = v19[1].u32[1];
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 28) = v59[0];
    v31 = -v19[1].i32[0];
    v59[0] = 0;
    v59[1] = v31;
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 32) = v59[1];
    v32 = (a9 + 32);
    if (v19[2].i64[1])
    {
      (*(*a2 + 32))(a2, &v19[2].i64[1], v59);
    }

    else
    {
      v48 = *v19;
      v53 = vtrn1q_s32(*v19, vextq_s8(v48, v48, 0xCuLL));
      if (v17[48].i32[3])
      {
        v49 = v48.i32[2] - v48.i32[0];
      }

      else
      {
        v49 = 0;
      }

      v52 = 0uLL;
      v51 = 0;
      sub_24BBF4B68(a1, 0, 0, &v17[40].i64[1], v17->i32[0], &v53, v49, v59, &v52 + 2, &v52, &v51);
      v59[1] = -v59[1];
      (*(*a2 + 24))(a2, v59, v59);
    }

    v33.i64[0] = *v59;
    v33.i64[1] = *v59;
    v34 = vsubq_s32(v17[58], v33);
    *(a9 + 48) = v34.i32[0];
    *(a9 + 56) = v34;
    v35 = (*(**(a1 + 48) + 304))();
    if (v35)
    {
      *v59 = (v35 << 16);
      v32 = v59;
      (*(*a2 + 24))(a2, v59, v59);
    }

    v36 = *v32;
    *(a9 + 48) -= *v32;
    *(a9 + 52) = v36;
    *(a9 + 44) = *(*(a1 + 48) + 152);
    v37 = v19[2].i32[1];
    v59[0] = 0;
    v59[1] = v37;
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 12) = v59[1];
    *(a9 + 16) = v17[58].i32[3] - v17[58].i32[1];
    v38 = v19[1].i32[3];
    v59[0] = 0;
    v59[1] = v38;
    (*(*a2 + 24))(a2, v59, v59);
    v39 = -v59[1];
    *(a9 + 20) = v59[1];
    *(a9 + 24) = v39;
    *(a9 + 36) = 0;
    *(a9 + 40) = 0;
  }

  else
  {
    v40 = (*(**(a1 + 48) + 296))(*(a1 + 48));
    if (v40)
    {
      v59[0] = 0;
      v59[1] = -65536 * v40;
      (*(*a2 + 24))(a2, v59, v59);
      v41 = v59[1];
    }

    else
    {
      v41 = *(a9 + 4) >> 1;
    }

    *(a9 + 48) = v41;
    if ((v19[22].i8[4] & 3) != 0)
    {
      *(a9 + 72) |= 0x40000u;
    }

    *v59 = v19[1].u32[1];
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 28) = v59[0];
    v42 = -v19[1].i32[0];
    v59[0] = 0;
    v59[1] = v42;
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 32) = v59[1];
    v43 = (*(**(a1 + 48) + 304))();
    if (v43)
    {
      v59[0] = 0;
      v59[1] = -65536 * v43;
      (*(*a2 + 24))(a2, v59, v59);
      v44 = v59[1];
    }

    else
    {
      v44 = *(a9 + 32);
    }

    *(a9 + 52) = v44;
    *(a9 + 44) = *(*(a1 + 48) + 152);
    *v59 = v19[2].u32[0];
    (*(*a2 + 24))(a2, v59, v59);
    *(a9 + 12) = v59[0];
    *(a9 + 16) = v17[58].i32[2] - v17[58].i32[0];
    *v59 = v19[1].u32[2];
    (*(*a2 + 24))(a2, v59, v59);
    v45 = v59[0];
    *(a9 + 20) = v59[0];
    *(a9 + 24) = -v45;
    v46 = v17[58];
    *(a9 + 40) = 0;
    *(a9 + 56) = v46;
    *(a9 + 36) = 0;
    sub_24BBD7374(a1, a2, (a9 + 36), (a9 + 40));
    if (!*(a9 + 36))
    {
      *(a9 + 36) = 8 * *a9 / 9;
    }

    if (!*(a9 + 40))
    {
      *(a9 + 40) = 2 * *a9 / 3;
    }
  }

  result = (*(**(a1 + 48) + 312))(*(a1 + 48));
  if (result)
  {
    *(a9 + 72) |= 1u;
  }

  if (*(*(a1 + 48) + 152))
  {
    *(a9 + 72) |= 0x40u;
  }

  return result;
}

void sub_24BBD6AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, int a25, int a26, int a27)
{
  sub_24BBD70C8(&a19);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v29 = *(v28 + 4);
    a26 = 0;
    a27 = v29;
    v30 = *(*(v27 + 48) + 152);
    v31 = 18 * (-v30 >> 8);
    if (v30)
    {
      v32 = 65536000;
    }

    else
    {
      v32 = 0x10000;
    }

    a24 = v31;
    a25 = v32;
    a23 = 0;
    __cxa_end_catch();
    JUMPOUT(0x24BBD6320);
  }

  _Unwind_Resume(a1);
}

void *sub_24BBD6C20(void *a1, uint64_t a2)
{
  *a1 = &unk_285F8AC80;
  a1[1] = (*(*a2 + 248))(a2);
  return a1;
}

void *sub_24BBD6C8C(void **a1)
{
  (*(*a1[6] + 72))(a1[6]);
  v2 = *(a1[6] + 74);
  v3 = sub_24BBD6D84(0x18u);
  v4 = ((*a1)[35])(a1);
  if (v2)
  {
    sub_24BBD6D98(v3, v4);
  }

  else
  {
    sub_24BBF1C9C(v3, v4);
  }

  return v3;
}

void *sub_24BBD6D98(void *a1, uint64_t a2)
{
  v4 = sub_24BBD6E88(a1);
  *v4 = &unk_285F8A208;
  v4[1] = a2;
  v5 = (*(**(a2 + 8) + 504))();
  a1[2] = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 4);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return a1;
}

void sub_24BBD6E64(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  nullsub_1();
  _Unwind_Resume(a1);
}

unsigned __int16 *sub_24BBD6EA8(uint64_t a1, int a2, int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v17 = (a2 - 1);
  if (a2 > 1)
  {
    v19 = 0;
    v20 = a2;
    v21 = result;
    v22 = a3;
    do
    {
      v23 = *v21++;
      v24 = bswap32(v23);
      v25 = *v22++;
      v19 += v25 * (v24 >> 16);
      --v20;
    }

    while (v20);
    v26 = 0;
    v27 = v17;
    *a4 = v19;
    v28 = a2;
    v29 = &result[v17 + 1];
    v30 = a3;
    do
    {
      v31 = *v29++;
      v32 = bswap32(v31);
      v33 = *v30++;
      v26 += v33 * (v32 >> 16);
      --v28;
    }

    while (v28);
    *a5 = v26;
    v34 = a2;
    v35 = &result[v17 + 2 + v27];
    v36 = a3;
    do
    {
      v37 = *v35++;
      v38 = bswap32(v37);
      v39 = *v36++;
      v28 += v39 * (v38 >> 16);
      --v34;
    }

    while (v34);
    *a6 = v28;
    v40 = a2;
    v41 = &result[v17 + 3 + v27 + v27];
    v42 = a3;
    do
    {
      v43 = *v41++;
      v44 = bswap32(v43);
      v45 = *v42++;
      v34 += v45 * (v44 >> 16);
      --v40;
    }

    while (v40);
    v46 = &result[v17 + 4 + v27 + v27 + v27];
    *a7 = v34;
    v47 = a2;
    v48 = a3;
    do
    {
      v49 = *v46++;
      v50 = bswap32(v49);
      v51 = *v48++;
      v40 += v51 * (v50 >> 16);
      --v47;
    }

    while (v47);
    v18 = 0;
    *a8 = v40;
    v52 = &result[5 * v17 + 5];
    do
    {
      v53 = *v52++;
      v54 = bswap32(v53);
      v55 = *a3++;
      v18 += v55 * (v54 >> 16);
      --a2;
    }

    while (a2);
  }

  else
  {
    *a4 = bswap32(*result) & 0xFFFF0000;
    *a5 = bswap32(result[1]) & 0xFFFF0000;
    *a6 = bswap32(result[2]) & 0xFFFF0000;
    *a7 = bswap32(result[3]) & 0xFFFF0000;
    *a8 = bswap32(result[4]) & 0xFFFF0000;
    v18 = bswap32(result[5]) & 0xFFFF0000;
  }

  *a9 = v18;
  return result;
}

void *sub_24BBD70C8(void *a1)
{
  *a1 = &unk_285F8AC80;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BBD7134(uint64_t a1)
{
  nullsub_1();

  sub_24BBD7160(v1);
}

int *sub_24BBD717C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v6 = *a2;

  return sub_24BBD71E0(v5, v6, a3);
}

int *sub_24BBD71E0(int *result, uint64_t a2, int *a3)
{
  v3 = a2 * *result * 0.0000152587891;
  v4 = 0.5;
  if (v3 >= 0.0)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = -0.5;
  }

  v6 = v3 + v5;
  if (v6 > -2147483650.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x80000000;
  }

  if (v6 < 2147483650.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  v9 = SHIDWORD(a2) * result[2] * 0.0000152587891;
  if (v9 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v9 + v10;
  if (v11 >= 2147483650.0)
  {
    v12 = 0x7FFFFFFF;
  }

  else if (v11 > -2147483650.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x80000000;
  }

  v13 = SHIDWORD(a2) * result[3] * 0.0000152587891;
  if (v13 < 0.0)
  {
    v4 = -0.5;
  }

  v14 = v13 + v4;
  if (v14 >= 2147483650.0)
  {
    v15 = 0x7FFFFFFF;
  }

  else if (v14 > -2147483650.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x80000000;
  }

  v16 = a2 * result[1] * 0.0000152587891;
  v17 = 0.5;
  if (v16 < 0.0)
  {
    v17 = -0.5;
  }

  v18 = v16 + v17;
  if (v18 >= 2147483650.0)
  {
    v19 = 0x7FFFFFFF;
  }

  else if (v18 <= -2147483650.0)
  {
    v19 = 0x80000000;
  }

  else
  {
    v19 = v18;
  }

  v20 = v12 + v8 + result[4];
  v21 = v19 + v15 + result[5];
  v22 = result[179];
  if ((v22 & 0x80000) != 0)
  {
    v20 = -v20;
  }

  if ((*&v22 & 0x400000) != 0)
  {
    v21 = -v21;
  }

  v23 = (*&v22 & 0x10000) == 0;
  if ((*&v22 & 0x10000) != 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v23)
  {
    v20 = v21;
  }

  *a3 = v24;
  a3[1] = v20;
  return result;
}

uint64_t sub_24BBD7374(void **a1, uint64_t a2, int *a3, int *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = 0x4F0048006F0078;
  v12 = 4;
  result = (*(*a1[6] + 120))(a1[6], v14, &v13, &v12, 0);
  if (v12)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        if (*(&v14[-1] + v10))
        {
          result = ((*a1)[16])(a1, a2);
          ++v9;
        }

        if (v10 != 2 || !v9)
        {
          break;
        }

        *a4 = 0 / v9;
        v10 = 4;
        v9 = 0;
      }

      v11 = v10 >= 6;
      v10 += 2;
    }

    while (!v11);
    if (v9)
    {
      *a3 = 0 / v9;
    }
  }

  return result;
}

void *sub_24BBD7508(uint64_t a1, uint64_t a2, unsigned __int16 a3, int32x2_t *a4)
{
  v11 = a3;
  v10 = 0;
  v7 = (*(*a2 + 64))(a2);
  v9 = (*(*a1 + 200))(a1, v7, &v11, &v10);
  sub_24BBD77F0(a1, a2, v11, v9, v10, a4);
  return sub_24BBEC42C(&v9);
}

unsigned __int8 *sub_24BBD760C(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v6 = (*(**(a1 + 48) + 168))(*(a1 + 48));
  if (v6 >= 0xFFFF)
  {
    v7 = 0xFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, 8);
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  v8 = (*(*(a1 + 48) + 104) + 8 * a2);
  v9 = sub_24BBD0E00(v8[1], qword_28151C040, 0);
  sub_24BBD770C(v9, (*(*(a1 + 48) + 232) + *v8), v8[1], *(a1 + 32));
  *a3 = v8[1];
  return v9;
}

unsigned __int8 *sub_24BBD770C(unsigned __int8 *result, unsigned __int8 *a2, int a3, int a4)
{
  if (a3 <= a4)
  {
    return result;
  }

  if ((a4 & 0x80000000) == 0)
  {
    v4 = 4330;
    v5 = a2;
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        if (a4 != 4)
        {
          goto LABEL_15;
        }

        v5 = a2 + 1;
        v4 = 52845 * *a2 + 228841569;
      }

      v6 = *v5++;
      v4 = 52845 * (v4 + v6) + 22719;
    }

    else
    {
      if (a4 == 1)
      {
LABEL_14:
        v8 = *v5++;
        v4 = 52845 * (v4 + v8) + 22719;
        goto LABEL_15;
      }

      if (a4 != 2)
      {
LABEL_15:
        if (v5 < &a2[a3])
        {
          v9 = (&a2[a3] - v5);
          do
          {
            v10 = *v5++;
            v11 = v10 ^ (v4 >> 8);
            v4 = 52845 * (v4 + v10) + 22719;
            *result++ = v11;
            --v9;
          }

          while (v9);
        }

        return result;
      }
    }

    v7 = *v5++;
    v4 = 52845 * (v4 + v7) + 22719;
    goto LABEL_14;
  }

  if (result != a2)
  {
    return memcpy(result, a2, a3);
  }

  return result;
}

int32x2_t sub_24BBD77F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int32x2_t *a6)
{
  v12 = (*(*a2 + 64))(a2);
  v13 = (*(*v12 + 16))(v12);
  if ((*(*a2 + 40))(a2))
  {
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v27 = 0uLL;
    sub_24BBD7BD4(&v27, a1, a2, a4, a5);
    BYTE12(v51) = 0;
    *&v27 = &unk_285F8A928;
    *&v48 = &unk_285F8A9A8;
    *(&v48 + 1) = a2;
    sub_24BBF48E0(&v27, v13, 0, a6, &a6[2] + 1, &a6[3] + 1);
    v14 = DWORD1(v43);
    if (DWORD1(v43) != 0x7FFFFFFF)
    {
      v14 = v47 - DWORD2(v47) + DWORD1(v43);
    }

    if (HIDWORD(v43) == 0x80000000)
    {
      v15 = 0x8000;
    }

    else
    {
      v15 = (HIDWORD(v43) + 0xFFFF + v47 - DWORD2(v47)) >> 16;
    }

    v16 = DWORD1(v47) + DWORD2(v43);
    v17 = -(v44 + DWORD1(v47));
    a6[1].i32[0] = v14;
    a6[1].i32[1] = -v16;
    a6[2].i16[0] = ((0xFFFF - v16) >> 16) - HIWORD(v17);
    a6[2].i16[1] = v15 - HIWORD(v14);
    if (sub_24BBD6C14(a2))
    {
      v26 = 0;
      v18 = *v13;
      v25 = vzip2q_s32(vzip1q_s32(v49, vextq_s8(v49, v49, 0xCuLL)), v49);
      sub_24BBF4C28(a1, a3, a2, (v13 + 162), v18, DWORD1(v43) == 0x7FFFFFFF, &v25, HIDWORD(v44), a6, &a6[2] + 1, &a6[3] + 1, &v26);
      a6[1] = vadd_s32(a6[1], v26);
    }

    sub_24BBE04C0(&v27);
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v27 = 0uLL;
    sub_24BBD7BD4(&v27, a1, a2, a4, a5);
    v20 = sub_24BBD7F18(a2);
    sub_24BBD7F24(&v27, v13, v20, a6, &a6[2] + 1, &a6[3] + 1);
    v21 = DWORD1(v43);
    if (DWORD1(v43) != 0x7FFFFFFF)
    {
      v21 = v47 - DWORD2(v47) + DWORD1(v43);
    }

    if (HIDWORD(v43) == 0x80000000)
    {
      v22 = 0x8000;
    }

    else
    {
      v22 = (HIDWORD(v43) + 0xFFFF + v47 - DWORD2(v47)) >> 16;
    }

    v23 = DWORD1(v47) + DWORD2(v43);
    v24 = -(v44 + DWORD1(v47));
    a6[1].i32[0] = v21;
    a6[1].i32[1] = -v23;
    a6[2].i16[0] = ((0xFFFF - v23) >> 16) - HIWORD(v24);
    a6[2].i16[1] = v22 - HIWORD(v21);
    sub_24BBE04C0(&v27);
    if (sub_24BBD6C14(a2))
    {
      *&v27 = 0;
      sub_24BBF513C(a1, a3, a2, a4, a5, a6, &a6[2] + 1, &a6[3] + 1, &v27);
      result = vadd_s32(a6[1], *&v27);
      a6[1] = result;
    }
  }

  return result;
}

void sub_24BBD7BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_24BBE04C0(va);
  _Unwind_Resume(a1);
}

void *sub_24BBD7BD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24BBD7C94(a1, a2, a4, a5, 1);
  *v7 = &unk_285F8A888;
  *(v7 + 82) = 0;
  v8 = (*(*a3 + 64))(a3);
  a1[40] = *(*(*v8 + 24))(v8);
  return a1;
}

void *sub_24BBD7C94(void *a1, uint64_t a2, uint64_t a3, __int16 a4, int a5)
{
  v6 = sub_24BBD7D34(a1, a2, a3, a4, a5);
  *v6 = &unk_285F8A820;
  v6[39] = &off_281C0A890;
  a1[24] = sub_24BBD7EAC(0);
  a1[25] = sub_24BBD7EAC(1u);
  a1[26] = sub_24BBD7EAC(2u);
  a1[27] = sub_24BBD7EAC(3u);
  a1[28] = sub_24BBD7EAC(4u);
  return a1;
}

uint64_t sub_24BBD7D34(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, int a5)
{
  *a1 = &unk_285F8A7E0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 48) = (*(*a2 + 208))(a2, a1 + 40, a1 + 34, a1 + 80);
  *(a1 + 56) = (*(*a2 + 216))(a2);
  *(a1 + 96) = (*(*a2 + 224))(a2, a1 + 88, a1 + 120, a1 + 104, a1 + 128, a1 + 136);
  *(a1 + 112) = (*(*a2 + 232))(a2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a5;
  if (a5)
  {
    pthread_mutex_lock(&stru_28151BBD0);
  }

  *(a1 + 248) = qword_27F078540;
  qword_27F078540 = a1;
  return a1;
}

char *sub_24BBD7EAC(unsigned int a1)
{
  v1 = &unk_28151BAE0 + 24 * a1;
  if (!*v1)
  {
    v2 = *(v1 + 5);
    if (v2)
    {
      *v1 = sub_24BBD0E00(v2, qword_28151C040, 0);
      v3 = *(v1 + 5);
      *(v1 + 4) = v3;
      *(v1 + 2) = v3;
    }
  }

  return v1;
}

uint64_t sub_24BBD7F24(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  (*(*a1 + 16))(a1, a2, a3);
  result = (*(**(a1 + 8) + 240))(*(a1 + 8), a2, a1 + 276);
  *(a1 + 328) = result;
  v12 = -*(a1 + 308);
  *a4 = *(a1 + 304);
  a4[1] = v12;
  v13 = *(a1 + 296);
  v14 = *(a1 + 300);
  *a5 = v13;
  a5[1] = -v14;
  *a6 = -v13;
  a6[1] = v14;
  v15 = *(a1 + 320);
  v16 = *(a1 + 324);
  v17 = a5[1] - v16;
  *a5 += v15;
  a5[1] = v17;
  v18 = a6[1] - v16;
  *a6 += v15;
  a6[1] = v18;
  return result;
}

BOOL sub_24BBD800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v21 = vextq_s8(v6, v6, 8uLL);
  v7 = *(a1 + 96);
  v24 = vextq_s8(v7, v7, 8uLL);
  v8 = *(a1 + 34);
  v25 = 0x40000000000;
  BYTE4(v25) = v8;
  BYTE6(v25) = *(a1 + 88);
  v26 = *(a1 + 32);
  v27 = *(a1 + 56);
  v28 = *(a1 + 112);
  v9 = *(a1 + 80) - v6.i32[0];
  v10 = *(a1 + 136) - v7.i32[0];
  v11 = *(a1 + 24);
  v22 = 0;
  v23 = 0;
  v19[4] = 0;
  v20 = v11;
  v29 = 0;
  v30 = v9;
  v31 = v10;
  v19[0] = a1 + 192;
  v19[1] = a1 + 276;
  v19[2] = a1 + 260;
  v19[3] = 0;
  *(a1 + 292) = 0;
  v18 = 0;
  memset(v15, 0, sizeof(v15));
  v17 = 0;
  v16 = qword_28151C018;
  qword_28151C018 = v15;
  if (_setjmp(v15))
  {
    v18 = v17;
  }

  else
  {
    v12 = *(sub_24BBD2908() + 4);
    sub_24BBD2CC8();
    v18 = v12(a2, &qword_28151C188, &v20, v19, *(a1 + 312), a3, a1);
    qword_28151C018 = v16;
  }

  result = sub_24BBD5D7C(v18);
  if (result || *(a1 + 16) && *(a1 + 16) != 19)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BBE0934(exception, *(a1 + 16));
    __cxa_throw(exception, &unk_285F89D90, nullsub_8);
  }

  return result;
}

uint64_t sub_24BBD81D8(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v62 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v42 = 0;
  v43 = a5;
  v44 = a2;
  v45 = 0;
  v41 = a7;
  DWORD2(v48) = 0;
  *&v50 = sub_24BBDDB9C;
  *(&v50 + 1) = sub_24BBDFB90;
  v51 = sub_24BBDFC08;
  v52 = sub_24BBDFD8C;
  v53 = sub_24BBDFE6C;
  v54 = sub_24BBDFEE0;
  v14 = a6 & 1;
  *&v38 = v14 | dword_28151BD70 | 2;
  v39 = a7;
  v40 = &v41;
  *(&v38 + 1) = v61;
  memset(v35, 0, sizeof(v35));
  v37 = 0;
  v36 = qword_28151C018;
  qword_28151C018 = v35;
  if (_setjmp(v35))
  {
    if (v45)
    {
      v15 = v45;
      do
      {
        v16 = *v15;
        (*(**(v44 + 48) + 16))(*(v44 + 48));
        v15 = v16;
      }

      while (v16);
    }

    v45 = 0;
    *&v46 = 0;
    if ((v37 - 256) >= 0x13)
    {
      sub_24BBEDB70(v37, 0);
    }

    return (256 - v37);
  }

  else
  {
    sub_24BBD8608(&v41);
    v62 = sub_24BBD86F8(a1, a2, a3, a4, 0, &v50, &v38);
    if (v62 == 1)
    {
      v18 = v61[0];
      v19 = HIDWORD(v61[0]);
      v20 = *(&v47 + 1);
      if (*(&v47 + 1) + 40 >= v48)
      {
        v21 = a4;
        v22 = v61[0];
        sub_24BBD8608(&v41);
        v18 = v22;
        a4 = v21;
        v20 = *(&v47 + 1);
      }

      *v20 = 1548;
      v20[3] = v18;
      v20[4] = v19;
      *&v47 = 0;
      *(&v47 + 1) = v20 + 5;
      *(&v46 + 1) = 0;
      LODWORD(v59) = 0;
      v23 = *(a4 + 32);
      v24 = *(a4 + 16);
      v34 = a4;
      *&v55 = *a4;
      v56 = v24;
      v57 = v23;
      *(&v55 + 1) = &v58;
      LODWORD(v38) = v38 | 0x10;
      v25 = v18;
      v62 = sub_24BBD86F8(a1, a2, a3, &v55, 0, &v50, &v38);
      if (!v62)
      {
        v26 = *(&v47 + 1);
        if (*(&v47 + 1) + 40 >= v48)
        {
          sub_24BBD8608(&v41);
          v26 = *(&v47 + 1);
        }

        *v26 = 1548;
        v26[3] = v25;
        v26[4] = v19;
        *(&v47 + 1) = v26 + 5;
        *(&v46 + 1) = 0;
        *&v47 = 0;
        *&v50 = 0;
        LODWORD(v38) = v14 | 0x8A | dword_28151BD70;
        v62 = sub_24BBD86F8(a1, a2, a3, v34, 0, &v50, &v38);
      }

      a4 = v34;
      if (v62 == 1)
      {
        v62 = -8;
      }
    }

    if (!v62)
    {
      v27 = *(a1 + 716);
      v28 = *(&v47 + 1);
      if (*(&v47 + 1) + 40 >= v48)
      {
        sub_24BBD8608(&v41);
        v28 = *(&v47 + 1);
      }

      *v28 = 14;
      *(&v47 + 1) = v28 + 1;
      v29 = (v38 & 0x100) == 0 || (a6 & 2) == 0;
      v30 = qword_28151BD78;
      if (v29)
      {
        v30 = sub_24BBDFF28;
      }

      v62 = (v30)(v45, a2, a5, *(a4 + 16), 0, ((v27 >> 19) ^ (v27 >> 22) ^ HIWORD(v27)) & 1, a7);
    }

    if (v45)
    {
      v31 = v45;
      do
      {
        v32 = *v31;
        (*(**(v44 + 48) + 16))(*(v44 + 48));
        v31 = v32;
      }

      while (v32);
    }

    qword_28151C018 = v36;
    if (!v42)
    {
      v33 = *(a4 + 16);
      *v33 = 0;
      v33[1] = 0;
    }

    return v62;
  }
}

uint64_t sub_24BBD8608(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    v2 = **(result + 40);
    if (v2)
    {
      **(result + 64) = 16;
      *(result + 40) = v2;
      *(result + 64) = v2 + 8;
      *(result + 72) = v2 + 808;
    }

    else
    {
      result = (***(*(result + 24) + 48))(*(*(result + 24) + 48), 808);
      if (!result)
      {
        sub_24BBEDB70(260, 0);
      }

      **(v1 + 40) = result;
      **(v1 + 64) = 16;
      *(v1 + 40) = result;
      *result = 0;
      *(v1 + 64) = result + 8;
      *(v1 + 72) = result + 808;
    }
  }

  else
  {
    result = (***(*(result + 24) + 48))(*(*(result + 24) + 48), 808);
    if (!result)
    {
      sub_24BBEDB70(260, 0);
    }

    *result = 0;
    *(v1 + 32) = result;
    *(v1 + 40) = result;
    *(v1 + 64) = result + 8;
    *(v1 + 72) = result + 808;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  return result;
}

uint64_t sub_24BBD86F8(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t **a4, unsigned __int16 *a5, __int128 *a6, __int128 *a7)
{
  v31 = a6;
  v30 = a7;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v22 = 0;
  if (a6 && (*(v31 + 2) == sub_24BBF16E8) != (*(v31 + 1) == sub_24BBF164C))
  {
    sub_24BBEDB70(-1, 0);
  }

  v12 = v30[1];
  v23 = *v30;
  v24 = v12;
  qword_28151C028 = a1;
  if (v31)
  {
    v13 = *(a1 + 716);
    if (*(v31 + 2) != sub_24BBF16E8 || (v13 & 0x490000) != 0x400000)
    {
      v14 = (8 * (*(v31 + 2) == sub_24BBF16E8)) | (v13 >> 17) & 4 | (v13 >> 21) & 2 | HIWORD(v13) & 1;
      v15 = qword_28151BC10[v14];
      v16 = qword_28151BC90[v14];
      *(&v27 + 1) = v15;
      *&v28 = v16;
      *&v27 = sub_24BBDDB84;
      v17 = sub_24BBDFCE4;
      if (*(v31 + 3) == sub_24BBED660)
      {
        v17 = sub_24BBFBF18;
      }

      *(&v28 + 1) = v17;
      *&v29 = sub_24BBDFE54;
      *(&v29 + 1) = sub_24BBDFEC8;
      *&v25 = *(v30 + 3);
      *(&v25 + 1) = a1;
      *&v26 = &v27;
      *(&v26 + 1) = v31;
      LODWORD(v23) = v23 | 0x40;
      *(&v24 + 1) = &v25;
      v31 = &v27;
    }
  }

  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v20 = qword_28151C018;
  qword_28151C018 = v19;
  if (_setjmp(v19))
  {
    if (v21 == 260 || (v21 - 256) >= 0x13)
    {
      sub_24BBEDB70(v21, 0);
    }

    return (256 - v21);
  }

  else
  {
    if (*(a1 + 960) == 13)
    {
      v22 = -8;
    }

    else
    {
      v22 = sub_24BBD89BC(a1, a2, a3, a4, a5, v31, &v23);
    }

    *v30 |= v23 & 0x180;
    qword_28151C018 = v20;
  }

  return v22;
}

uint64_t sub_24BBD89BC(int *a1, uint64_t a2, unsigned __int8 **a3, uint64_t **a4, unsigned __int16 *a5, uint64_t a6, unsigned int *a7)
{
  v546[158] = *MEMORY[0x277D85DE8];
  bzero(&v543, 0x528uLL);
  v542 = 0;
  v541 = 0;
  v540 = 0u;
  v539 = 0u;
  memset(v538, 0, sizeof(v538));
  v537 = 0u;
  bzero(v535, 0x300uLL);
  memset(v534, 0, sizeof(v534));
  LODWORD(v533) = 0;
  v531 = 0u;
  v532 = 0u;
  v529 = 0u;
  v530 = 0u;
  v527 = 0u;
  v528 = 0u;
  v525 = 0u;
  v526 = 0u;
  v523 = 0u;
  v524 = 0u;
  v521 = 0u;
  v522 = 0u;
  v519 = 0u;
  v520 = 0u;
  memset(v518, 0, sizeof(v518));
  v515 = 0;
  v514 = 0;
  v513 = 0;
  v512 = 0;
  v502 = *(a7 + 3);
  v486 = a2;
  v487 = a1[179];
  v511 = 0;
  v14 = *a7;
  v15 = *a7 & 1;
  v510 = 0;
  qword_28151C038 = a2;
  v503 = a6;
  v16 = (v14 & 0x404) != 0 || a6 == 0;
  v17 = v16;
  v506 = v17;
  v489 = *(a4 + 6);
  v462 = *(a4 + 7);
  if (v16)
  {
    v18 = v14 & 1;
  }

  else
  {
    v19 = (*a4)[4];
    v20 = *v19;
    if (*(v19 + 8) >> 4 <= 0x202u)
    {
      v21 = a2;
      if (v20)
      {
        (*(**(a2 + 40) + 16))(*(a2 + 40));
        v21 = qword_28151C038;
      }

      v22 = (***(v21 + 40))(*(v21 + 40), 8240);
      v23 = (*a4)[4];
      *v23 = v22;
      if (!v22)
      {
        *(v23 + 8) = 0;
        return 4294967292;
      }

      v20 = v22;
      *(v23 + 8) = 8240;
    }

    qword_28151C1C0 = v20;
    qword_28151C1C8 = v20 + 4120;
    *v20 = 1;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 24) = 0u;
    v24 = vdup_n_s32(0xE8300001);
    *(v20 + 64) = v24;
    *(v20 + 72) = 0;
    *(v20 + 80) = v20 + 56;
    *(v20 + 4120) = 1;
    *(v20 + 4176) = 0u;
    *(v20 + 4144) = 0u;
    *(v20 + 4160) = 0u;
    *(v20 + 4192) = 0;
    *(v20 + 4184) = v24;
    *(v20 + 4200) = v20 + 4176;
    v14 = *a7;
    v18 = *a7 & 1;
  }

  qword_28151C1D0 = 0;
  byte_28151C1D8 = 1;
  qword_28151C1E0 = (a1 + 7);
  qword_28151C1E8 = (a1 + 56);
  LODWORD(qword_28151C1F0) = a1[6];
  HIDWORD(qword_28151C1F0) = a1[55];
  if ((v487 & 0xC0000000) != 0)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0;
  }

  v485 = v25;
  if (v487 < 0)
  {
    v26 = v18;
  }

  else
  {
    v26 = 0;
  }

  v494 = v26;
  if ((v14 & 0x400) == 0)
  {
    sub_24BBDDADC(a1, 0);
  }

  dword_27F078468 = v487 & 0x10;
  v27 = v506;
  if ((v487 & 0x10) == 0)
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v512 = 0x1000000000000;
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD68(v512, &v512);
    *(qword_28151C1C8 + 16) = HIDWORD(v512);
    v512 = 0x10000;
    if (!off_28151BD68)
    {
      sub_24BBEDB70(257, 0);
    }

    off_28151BD68(v512, &v512);
    *(qword_28151C1C0 + 16) = v512;
  }

  dword_28151C030 = 0x10000;
  v16 = a1[181] == 2;
  dword_27F07846C = v16;
  if (v16)
  {
    v28 = 1;
    if (a1[178])
    {
      HIDWORD(v517) = a1[178];
      LODWORD(v517) = 0;
      v29 = (sub_24BBD5470(&v517) + 0x8000) & 0xFFFF0000;
      if (v29 <= 0x10000)
      {
        v29 = 0x10000;
      }

      v28 = ((v29 + 98304) & 0x10000) == 0;
    }

    dword_27F078470 = v28;
  }

  v457 = a5;
  v491 = v18 & ((v487 & 0x40000000) != 0);
  byte_27F078474 = 0;
  v30 = v506;
  if ((v487 & 0x20) == 0)
  {
    v30 = 1;
  }

  v31 = v485 ^ 1;
  v504 = a1;
  v497 = a7;
  v488 = a4;
  v484 = a3;
  v461 = v15;
  if ((v30 & 1) != 0 || v31)
  {
    v454 = v485 ^ 1;
    v460 = 0;
    v499 = 0;
    v464 = 0;
    v505 = 0;
    dword_28151C1F8 = 2;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
LABEL_45:
    v505 = v35;
    v499 = v33;
    v464 = v34;
    v460 = v32;
    v454 = v31;
    dword_28151C1F8 = 0;
    sub_24BBFCA78(**a4, (*a4)[1], (*a4)[2]);
  }

  v36 = a1 + 237;
  v478 = a1 + 162;
  v465 = a1 + 216;
  v472 = a3 + 1;
  v469 = a3 + 66;
  v474 = a3 + 60;
  v468 = a3 + 9;
  v475 = (a3 + 6);
  v476 = (a3 + 2);
  v471 = a3 + 5;
  v473 = a3 + 62;
  v466 = (a3 + 76);
  v467 = a3 + 68;
  v37 = 0x27F078000uLL;
  v38 = 0uLL;
  v39 = vdupq_n_s64(2uLL);
  v500 = v39;
  v501 = vdupq_n_s64(0x21uLL);
  v40 = vneg_f16(0xFFFFFFFF00000000);
  v41 = 0x27F078000uLL;
  v490 = a1 + 237;
LABEL_48:
  *(v37 + 1352) = 0;
  *(a4 + 9) = 0;
  v515 = 0;
  *(v41 + 1148) = 0;
  *v36 = 0;
  a1[239] = 0;
  v42 = *a7;
  if ((*a7 & 0x18) == 0)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v544 = 0;
    v545 = 1;
    v47 = *a3;
    v505 = &(*a3)[*(a3 + 32)];
    if (!*a3)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

  if ((v42 & 0x20) == 0)
  {
    if ((v42 & 0x10) != 0)
    {
      v44 = *(*(a7 + 1) + 8);
      v544 = v44;
      v545 = 2;
      v39 = 0uLL;
LABEL_62:
      v50 = v464;
      goto LABEL_66;
    }

    v43 = 0;
LABEL_57:
    if ((v42 & 8) == 0)
    {
      sub_24BBEDB70(-1, 0);
    }

    v49 = *(a7 + 1);
    v44 = v49[1].i32[1];
    v544 = v44;
    v545 = 2;
    v39.n128_u64[0] = vshr_n_u32(vadd_s32(*v49, 0x800000008000), 0x10uLL);
    if ((v42 & 0x20) != 0)
    {
      v50 = v464;
      *v43 = v464;
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v48 = v502;
  if ((v42 & 0x40) != 0)
  {
    v48 = *v502;
  }

  v43 = (v48 + 2);
  if ((v42 & 0x10) == 0)
  {
    goto LABEL_57;
  }

  v51 = *(a7 + 1);
  v44 = *(v51 + 8);
  v544 = v44;
  v545 = 2;
  v50 = *v43;
  if (*v43)
  {
    v52.i64[0] = *v51;
    v52.i64[1] = *v51;
    *v52.i8 = vsub_s16(*v50, vraddhn_s32(v52, v38));
    v38 = 0uLL;
    v511 = vbsl_s8(vceq_s16(*v50, v40), v40, *v52.i8);
    *v43 = &v511;
  }

  v39 = 0uLL;
LABEL_66:
  v464 = v50;
  v53 = a3[4];
  if (v53)
  {
    v507 = v39;
    v54 = sub_24BBFCB24(v53, v44, *(a3 + 61));
    if (v54)
    {
      v47 = &a3[3][v54];
    }

    else
    {
      v47 = 0;
    }

    v38 = 0uLL;
    v39 = v507;
  }

  else
  {
    v47 = 0;
  }

  v45 = v39.n128_u32[1] << 16;
  v46 = v39.n128_u32[0];
  if (!v47)
  {
LABEL_73:
    *(a3 + 14) = v44;
    v55 = *(v486 + 24);
    if (!v55)
    {
      goto LABEL_1081;
    }

    v56 = 34;
    v57 = v546;
    v58 = xmmword_24BC06060;
    do
    {
      if (vmovn_s64(vcgtq_u64(v501, v58)).u8[0])
      {
        *(v57 - 5) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v58)).i32[1])
      {
        *v57 = 0;
      }

      v58 = vaddq_s64(v58, v500);
      v57 += 10;
      v56 -= 2;
    }

    while (v56);
    v59 = v55(v58);
    v38 = 0uLL;
    if (!v59)
    {
      goto LABEL_1081;
    }

    v47 = v59;
    v505 = (v59 + *(a3 + 35));
  }

LABEL_82:
  v543 = v47;
  v498 = sub_24BBDFBA4;
  if (v485)
  {
    if (dword_28151C1F8)
    {
      v60 = qword_28151BD10 == 1;
    }

    else
    {
      v60 = 0;
    }

    v62 = v60 && dword_28151BD24 < 65537 && dword_28151BD18 < 65537;
    v63 = sub_24BBFCC1C;
    if (v62)
    {
      v63 = sub_24BBFCB98;
    }

    v498 = v63;
  }

  v458 = v46;
  v459 = v45;
  if ((v506 & 1) == 0 && *v503)
  {
    (*v503)(v502);
    v38 = 0uLL;
  }

  v492 = 0;
  v477 = 0;
  v64 = 0;
  v470 = 0;
  v65 = 0;
  v463 = 0;
  v481 = 0;
  v482 = 0;
  v495 = 0;
  v493 = 0;
  v480 = 0;
  v479 = 0;
  v483 = 0;
  v66 = v518;
  v496 = 1;
LABEL_99:
  while (2)
  {
    v508 = v65;
    v67 = v64;
    v68 = v505;
    if (v47 >= v505)
    {
      sub_24BBEDB70(-1, 0);
    }

    v70 = *v47++;
    v69 = v70;
    v71 = v66;
LABEL_102:
    if (v71 < v518)
    {
      sub_24BBEDB70(-1, 0);
    }

    switch(v69)
    {
      case 0u:
      case 2u:
        goto LABEL_1078;
      case 1u:
        goto LABEL_147;
      case 3u:
        goto LABEL_162;
      case 4u:
        if (v71 - v518 == 4)
        {
          HIDWORD(v518[1]) = v518[0];
          DWORD2(v518[1]) = 0;
          goto LABEL_296;
        }

        HIDWORD(v518[1]) = DWORD1(v518[0]);
        DWORD2(v518[1]) = 0;
        goto LABEL_529;
      case 5u:
        goto LABEL_520;
      case 6u:
        v140 = 1;
        goto LABEL_264;
      case 7u:
        v140 = 0;
LABEL_264:
        LODWORD(v496) = 0;
        v64 = v67;
        v65 = v508;
        v66 = v518;
        if (((v71 - v518) >> 2) < 1)
        {
          continue;
        }

        v149 = ((v71 - v518) >> 2) & 0x7FFFFFFF;
        v150 = v518;
        do
        {
          v151 = v140;
          v153 = *v150++;
          v152 = v153;
          if (v140)
          {
            v140 = 0;
            v515.i32[0] += v152;
          }

          else
          {
            v515.i32[1] += v152;
            v140 = 1;
          }

          if (dword_28151C1F8)
          {
            if ((v506 & 1) == 0)
            {
              if (qword_28151C1D0 == sub_24BBFCB98)
              {
                if (v151)
                {
                  LODWORD(v513) = sub_24BBFD400(qword_28151C1C0, v515.i32[0]);
                }

                else
                {
                  HIDWORD(v513) = sub_24BBFD400(qword_28151C1C8, v515.i32[1]);
                }
              }

              else
              {
                v498(&v515, &v513);
              }

              (*(v503 + 16))(&v513, v502);
              v38 = 0uLL;
            }
          }

          else
          {
            sub_24BBFD2E4(v499, *&v515);
            v38 = 0uLL;
            v499 = v515;
            v513 = v515;
          }

          --v149;
        }

        while (v149);
        LODWORD(v496) = 0;
        v64 = v67;
        goto LABEL_904;
      case 8u:
      case 0x18u:
        goto LABEL_504;
      case 9u:
        if (!dword_28151C1F8)
        {
          sub_24BBFD2E4(*&v515, v460);
          v38 = 0uLL;
          goto LABEL_707;
        }

        if (v496)
        {
          v141 = 1;
        }

        else
        {
          v141 = v506;
        }

        LODWORD(v496) = 1;
        v64 = v67;
        v65 = v508;
        v66 = v518;
        if ((v141 & 1) == 0)
        {
          (*(v503 + 32))(v502);
          v38 = 0uLL;
          LODWORD(v496) = 1;
          goto LABEL_707;
        }

        continue;
      case 0xAu:
        v66 = v71 - 1;
        if ((v71 - 4) < v518)
        {
          sub_24BBEDB70(-1, 0);
        }

        v84 = *(v71 - 1) + v504[202];
        if (v84 >= v504[180] || v84 < 0)
        {
          goto LABEL_1078;
        }

        v85 = 0;
        v86 = v476;
        v87 = v472;
        v89 = v468;
        v88 = v469;
        v90 = v474;
        goto LABEL_201;
      case 0xBu:
        v66 = v71;
        goto LABEL_711;
      case 0xCu:
        if (v47 >= v68)
        {
          sub_24BBEDB70(-1, 0);
        }

        v72 = v67;
        ++v47;
LABEL_108:
        v66 = v518;
        v64 = v72;
        v65 = v508;
        v73 = v71;
        v74 = HIDWORD(v496);
        v75 = HIDWORD(v496);
        switch(v72)
        {
          case 0:
            continue;
          case 1:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            v64 = v72;
            v65 = v508;
            v66 = v518;
            if (!v491)
            {
              continue;
            }

            sub_24BBFD278(v518, v493, *(v497 + 2));
            goto LABEL_421;
          case 2:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            v64 = v72;
            v65 = v508;
            v66 = v518;
            if (!v494)
            {
              continue;
            }

            sub_24BBFD20C(v518, v495, *(v497 + 2));
LABEL_421:
            v38 = 0uLL;
            v93 = byte_27F078474 != 1 || dword_28151C1F8 == 2;
            v64 = v72;
            goto LABEL_425;
          case 3:
            v205 = v71 - 2;
            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v219 = *(v71 - 1);
            v71 = (v71 - 4);
            v206 = v219;
            if (!v219)
            {
              goto LABEL_948;
            }

            goto LABEL_441;
          case 4:
            v205 = v71 - 2;
            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v220 = *(v71 - 1);
            v71 = (v71 - 4);
            if (v220)
            {
              v206 = 0x10000;
            }

            else
            {
LABEL_441:
              v208 = *v205 != 0;
LABEL_442:
              v206 = v208 << 16;
            }

            goto LABEL_948;
          case 5:
            v205 = v71 - 1;
            if ((v71 - 4) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v208 = *v205 == 0;
            goto LABEL_442;
          case 6:
            a1 = v504;
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            a7 = v497;
            v430 = *v497;
            *v497 |= 0x80u;
            if ((v430 & 0x18) != 0)
            {
              return 0xFFFFFFFFLL;
            }

            sub_24BBFD570(v518, *(v497 + 1), v493, v495, v504);
            a4 = v488;
            a3 = v484;
            v162 = &qword_28151C000;
            v36 = v490;
            v41 = 0x27F078000;
            goto LABEL_1031;
          case 7:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            v96 = DWORD1(v518[0]);
            v95 = v492;
            v36 = v490;
            v67 = v72;
            goto LABEL_554;
          case 8:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            v66 = (v71 - 1);
            if (v71 - 1 < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v197 = *(v71 - 1);
            v198 = *(v71 - 3);
            v199 = *(v71 - 5);
            v200 = *(v71 - 7);
            v201 = *(v504 + 100);
            if (!v201)
            {
              v202 = *(**(v486 + 48) + 8);
              if (!v202)
              {
                goto LABEL_1078;
              }

              v201 = v202();
              v38 = 0uLL;
              *(v504 + 100) = v201;
              if (!v201)
              {
                goto LABEL_1078;
              }
            }

            v64 = v72;
            v65 = v508;
            if (v200 > 3)
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            if (v197 < 0)
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            if ((v198 & 0x80000000) != 0)
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            if ((v198 + v197) > v504[203])
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            if ((v199 & 0x80000000) != 0)
            {
              continue;
            }

            v203 = &v465[4 * v200];
            v64 = v72;
            v65 = v508;
            if ((v199 + v197) > *v203)
            {
              continue;
            }

            v204 = *(v203 + 1);
            v64 = v72;
            v65 = v508;
            if (!v204)
            {
              continue;
            }

            v195 = 4 * (v197 & 0x3FFFu);
            v194 = (v201 + 4 * v198);
            v196 = (v204 + 4 * v199);
            goto LABEL_388;
          case 9:
            v205 = v71 - 1;
            if ((v71 - 4) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v206 = *v205;
            if (*v205 < 0)
            {
              v206 = -v206;
            }

            goto LABEL_948;
          case 10:
LABEL_337:
            if (&v73[-1] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v182 = v73[-1].i32[1];
            v73 = (v73 - 4);
            v178 = v73[-1].i32[1] + v182;
            goto LABEL_340;
          case 11:
LABEL_325:
            if (&v73[-1] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v177 = v73[-1].i32[1];
            v73 = (v73 - 4);
            v178 = v73[-1].i32[1] - v177;
LABEL_340:
            v73[-1].i32[1] = v178;
            goto LABEL_836;
          case 12:
            v205 = v71 - 2;
            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v222 = *(v71 - 1);
            v71 = (v71 - 4);
            v221 = v222;
            v223 = v222 >> 16;
            if (v463)
            {
              v221 = v223;
            }

            v224 = *(v71 - 1);
            if (v221)
            {
              v225 = v224 / v221 * 65536.0;
              v226 = 0.5;
              if (v225 < 0.0)
              {
                v226 = -0.5;
              }

              v227 = v225 + v226;
              if (v227 >= 2147483650.0)
              {
                v206 = 0x7FFFFFFF;
              }

              else if (v227 <= -2147483650.0)
              {
                v206 = 0x80000000;
              }

              else
              {
                v206 = v227;
              }

              v38 = 0uLL;
            }

            else
            {
              v206 = (v224 >> 31) ^ 0x7FFFFFFF;
            }

            v463 = 0;
            goto LABEL_948;
          case 13:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            v66 = v71 - 3;
            if ((v71 - 12) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v188 = *(v71 - 1);
            v189 = *(v71 - 3);
            v190 = *(v71 - 5);
            v191 = *(v504 + 100);
            if (!v191)
            {
              v192 = *(**(v486 + 48) + 8);
              if (!v192)
              {
                goto LABEL_1078;
              }

              v191 = v192();
              v38 = 0uLL;
              *(v504 + 100) = v191;
              if (!v191)
              {
                goto LABEL_1078;
              }
            }

            v64 = v72;
            v65 = v508;
            if (v190 > 3)
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            if (v188 < 0)
            {
              continue;
            }

            v193 = &v465[4 * v190];
            v64 = v72;
            v65 = v508;
            if (v188 > *v193)
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            if ((v189 & 0x80000000) != 0)
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            if ((v189 + v188) > v504[203])
            {
              continue;
            }

            v194 = *(v193 + 1);
            v64 = v72;
            v65 = v508;
            if (!v194)
            {
              continue;
            }

            v195 = 4 * (v188 & 0x3FFFu);
            v196 = (v191 + 4 * v189);
LABEL_388:
            memmove(v196, v194, v195);
            goto LABEL_1026;
          case 14:
            v205 = v71 - 1;
            if ((v71 - 4) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v206 = -*v205;
            goto LABEL_948;
          case 15:
            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v187 = *(v71 - 1);
            v71 = (v71 - 4);
            *(v71 - 1) = (v187 == *(v71 - 1)) << 16;
            goto LABEL_949;
          case 16:
            v66 = v71 - 2;
            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            break;
          case 17:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            if (SHIDWORD(v496) < 1)
            {
              v385 = v470;
              if (v470 <= 0)
              {
LABEL_1078:
                sub_24BBEDB70(-1, 0);
              }

              if (v71 - v518 >= 252)
              {
                sub_24BBEDB70(-1, 0);
              }

              --v470;
              *v71 = *(&v541 + (v385 - 1));
              v71 = (v71 + 4);
            }

            else
            {
              --HIDWORD(v496);
            }

LABEL_949:
            v64 = v72;
LABEL_950:
            v65 = v508;
            v66 = v71;
            continue;
          case 18:
            v66 = v71 - 1;
            goto LABEL_936;
          case 20:
LABEL_129:
            v66 = &v73[-1];
            if (&v73[-1] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v80 = v73[-1].i16[3];
            v81 = v73[-1].i32[0];
            v82 = *(v504 + 100);
            if (!v82)
            {
              v83 = *(**(v486 + 48) + 8);
              if (!v83)
              {
                goto LABEL_1078;
              }

              v82 = v83();
              *(v504 + 100) = v82;
              if (!v82)
              {
                goto LABEL_1078;
              }
            }

            if (v80 < 0 || v80 >= v504[203])
            {
              sub_24BBEDB70(-1, 0);
            }

            *(v82 + 4 * v80) = v81;
            HIDWORD(v496) = v74;
LABEL_773:
            v64 = v72;
            goto LABEL_774;
          case 21:
LABEL_328:
            if (&v73[-1].u8[4] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v179 = v73[-1].i16[3];
            v180 = *(v504 + 100);
            if (!v180)
            {
              v181 = *(**(v486 + 48) + 8);
              if (!v181)
              {
                goto LABEL_1078;
              }

              v180 = v181();
              *(v504 + 100) = v180;
              if (!v180)
              {
                goto LABEL_1078;
              }
            }

            if (v179 < 0 || v179 >= v504[203])
            {
              sub_24BBEDB70(-1, 0);
            }

            v73[-1].i32[1] = *(v180 + 4 * v179);
            HIDWORD(v496) = v75;
            v64 = v72;
            v65 = v508;
            v66 = v73;
            v38 = 0uLL;
            continue;
          case 22:
LABEL_313:
            if (&v73[-2] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v73[-1].i32[0] > v73[-1].i32[1])
            {
              v73[-2].i32[0] = v73[-2].i32[1];
            }

            v66 = &v73[-2] + 1;
            HIDWORD(v496) = v75;
            goto LABEL_936;
          case 24:
LABEL_318:
            v171 = &v73[-1];
            if (&v73[-1] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v172 = v73[-1].i32[1];
            v73 = (v73 - 4);
            v173 = v172 * v73[-1].i32[1] * 0.0000152587891;
            v174 = 0.5;
            if (v173 < 0.0)
            {
              v174 = -0.5;
            }

            v175 = v173 + v174;
            if (v175 >= 2147483650.0)
            {
              v176 = 0x7FFFFFFF;
            }

            else if (v175 <= -2147483650.0)
            {
              v176 = 0x80000000;
            }

            else
            {
              v176 = v175;
            }

            v38 = 0uLL;
            *v171 = v176;
LABEL_836:
            HIDWORD(v496) = v75;
            goto LABEL_837;
          case 25:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

LABEL_721:
            v205 = v71 - 2;
            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v325 = *(v71 - 1);
            v71 = (v71 - 4);
            v324 = v325;
            v326 = *(v71 - 1);
            if (v325)
            {
              v327 = v326 / v324 * 65536.0;
              v328 = 0.5;
              if (v327 < 0.0)
              {
                v328 = -0.5;
              }

              v329 = v327 + v328;
              if (v329 >= 2147483650.0)
              {
                v206 = 0x7FFFFFFF;
              }

              else if (v329 <= -2147483650.0)
              {
                v206 = 0x80000000;
              }

              else
              {
                v206 = v329;
              }

              v38 = 0uLL;
            }

            else
            {
              v206 = (v326 >> 31) ^ 0x7FFFFFFF;
            }

            goto LABEL_948;
          case 26:
            if ((v71 - 4) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            *(v71 - 1) = (sub_24BC05B04(*(v71 - 1)) + 64) >> 7;
            v64 = v72;
            v65 = v508;
            v66 = v71;
            v38 = 0uLL;
            continue;
          case 27:
LABEL_341:
            if (v73 - v518 >= 252)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (&v73[-1].u8[4] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v73->i32[0] = v73[-1].i32[1];
            v66 = v73 + 1;
            goto LABEL_936;
          case 28:
LABEL_346:
            if (v73 >= &v533)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (&v73[-1] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v73[-1] = vrev64_s32(v73[-1]);
LABEL_837:
            v64 = v72;
            v65 = v508;
            v66 = v73;
            continue;
          case 29:
            v205 = v71 - 1;
            if ((v71 - 4) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v207 = v71 - 4 * (*(v71 - 1) & ~(*(v71 - 1) >> 31));
            if (v207 - 8 < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v206 = *(v207 - 2);
LABEL_948:
            *v205 = v206;
            goto LABEL_949;
          case 30:
            v66 = v71 - 2;
            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v228 = *(v71 - 2);
            v229 = (v228 >> 16);
            if ((v229 & 0x80000000) != 0 || &v66[-v229] < v518)
            {
              goto LABEL_1078;
            }

            v64 = v72;
            v65 = v508;
            if (v228 < 0x10000)
            {
              continue;
            }

            v230 = (*(v71 - 1) >> 16) % v229;
            if (v230 < 0)
            {
              v394 = 0;
              do
              {
                v395 = v66[-v229];
                if (v229 >= 2)
                {
                  v396 = (v229 - 1);
                  v397 = v71 - v229 - 1;
                  do
                  {
                    *(v397 - 1) = *v397;
                    ++v397;
                    --v396;
                  }

                  while (v396);
                }

                *(v71 - 3) = v395;
                --v394;
              }

              while (v394 > v230);
            }

            else
            {
              v64 = v72;
              v65 = v508;
              if (!((*(v71 - 1) >> 16) % v229))
              {
                continue;
              }

              v231 = 0;
              do
              {
                v232 = *(v71 - 3);
                if (v229 >= 2)
                {
                  v233 = (v229 - 1);
                  v234 = v71 - 1;
                  do
                  {
                    *(v234 + 1) = *v234;
                    v234 = (v234 - 4);
                    --v233;
                  }

                  while (v233);
                }

                v66[-v229] = v232;
                ++v231;
              }

              while (v231 != v230);
            }

            goto LABEL_936;
          case 33:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            if ((v71 - 8) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v515 = *(v71 - 8);
            goto LABEL_903;
          case 34:
            v183 = v515.i32[1];
            v184 = DWORD2(v518[0]) + v515.i32[1];
            HIDWORD(v538[0]) = v515.i32[1];
            LODWORD(v538[0]) = v515.i32[0] + LODWORD(v518[0]);
            HIDWORD(v538[1]) = DWORD2(v518[0]) + v515.i32[1];
            LODWORD(v538[1]) = v515.i32[0] + LODWORD(v518[0]) + DWORD1(v518[0]);
            v185 = LODWORD(v538[1]) + HIDWORD(v518[0]);
            HIDWORD(v538[2]) = DWORD2(v518[0]) + v515.i32[1];
            LODWORD(v538[2]) = LODWORD(v538[1]) + HIDWORD(v518[0]);
            DWORD1(v539) = DWORD2(v518[0]) + v515.i32[1];
            LODWORD(v539) = LODWORD(v538[1]) + HIDWORD(v518[0]) + LODWORD(v518[1]);
            HIDWORD(v539) = v515.i32[1];
            DWORD2(v539) = v539 + DWORD1(v518[1]);
            v186 = v539 + DWORD1(v518[1]) + DWORD2(v518[1]);
            *&v540 = __PAIR64__(v515.u32[1], v186);
            goto LABEL_431;
          case 35:
            v217 = v520;
            v183 = v515.i32[1];
            v185 = v515.i32[0] + LODWORD(v518[0]) + DWORD2(v518[0]) + LODWORD(v518[1]);
            LODWORD(v538[0]) = v515.i32[0] + LODWORD(v518[0]);
            HIDWORD(v538[0]) = v515.i32[1] + DWORD1(v518[0]);
            LODWORD(v538[1]) = v515.i32[0] + LODWORD(v518[0]) + DWORD2(v518[0]);
            HIDWORD(v538[1]) = v515.i32[1] + DWORD1(v518[0]) + HIDWORD(v518[0]);
            v184 = HIDWORD(v538[1]) + DWORD1(v518[1]);
            v186 = v185 + DWORD2(v518[1]) + v519 + DWORD2(v519);
            LODWORD(v538[2]) = v185;
            HIDWORD(v538[2]) = HIDWORD(v538[1]) + DWORD1(v518[1]);
            LODWORD(v539) = v185 + DWORD2(v518[1]);
            DWORD1(v539) = HIDWORD(v538[1]) + DWORD1(v518[1]) + HIDWORD(v518[1]);
            DWORD2(v539) = v185 + DWORD2(v518[1]) + v519;
            HIDWORD(v539) = DWORD1(v539) + DWORD1(v519);
            v218 = DWORD1(v539) + DWORD1(v519) + HIDWORD(v519);
            *&v540 = __PAIR64__(v218, v186);
            goto LABEL_783;
          case 36:
            v183 = v515.i32[1];
            v184 = DWORD1(v518[0]) + v515.i32[1] + HIDWORD(v518[0]);
            HIDWORD(v538[0]) = DWORD1(v518[0]) + v515.i32[1];
            LODWORD(v538[0]) = v515.i32[0] + LODWORD(v518[0]);
            HIDWORD(v538[1]) = v184;
            LODWORD(v538[1]) = v515.i32[0] + LODWORD(v518[0]) + DWORD2(v518[0]);
            v185 = LODWORD(v538[1]) + LODWORD(v518[1]);
            HIDWORD(v538[2]) = v184;
            LODWORD(v538[2]) = LODWORD(v538[1]) + LODWORD(v518[1]);
            DWORD1(v539) = v184;
            LODWORD(v539) = LODWORD(v538[1]) + LODWORD(v518[1]) + DWORD1(v518[1]);
            HIDWORD(v539) = v184 + HIDWORD(v518[1]);
            DWORD2(v539) = v539 + DWORD2(v518[1]);
            v186 = v539 + DWORD2(v518[1]) + v519;
            v217 = 3276800;
            v218 = v515.i32[1];
            *&v540 = __PAIR64__(v515.u32[1], v186);
            goto LABEL_783;
          case 37:
            v210 = vadd_s32(v515, *&v518[0]);
            v211 = vadd_s32(v210, *(v518 + 8));
            v212 = vadd_s32(v211, *&v518[1]);
            v213 = vadd_s32(v212, *(&v518[1] + 8));
            v214 = vext_s8(v211, v212, 4uLL);
            v184 = v212.i32[1];
            HIDWORD(v538[2]) = v212.i32[1];
            v185 = v212.i32[0];
            LODWORD(v538[0]) = v210.i32[0];
            LODWORD(v539) = v213.i32[0];
            v215 = vadd_s32(v213, *&v519);
            *(v538 + 4) = vext_s8(v210, v211, 4uLL);
            *(&v538[1] + 4) = v214;
            HIDWORD(v539) = v215.i32[1];
            *(&v539 + 4) = vext_s8(v213, v215, 4uLL);
            v216 = vabd_s32(v215, v515);
            if (vcgt_u32(v216, vdup_lane_s32(v216, 1)).u32[0])
            {
              v186 = DWORD2(v519) + v215.i32[0];
              v183 = v515.i32[1];
              LODWORD(v540) = DWORD2(v519) + v215.i32[0];
              DWORD1(v540) = v515.i32[1];
LABEL_431:
              v217 = 3276800;
              v218 = v183;
            }

            else
            {
              v186 = v515.i32[0];
              LODWORD(v540) = v515.i32[0];
              v218 = DWORD2(v519) + v215.i32[1];
              DWORD1(v540) = DWORD2(v519) + v215.i32[1];
              v183 = v515.i32[1];
              v217 = 3276800;
            }

LABEL_783:
            v342 = v504;
            v348 = v186 - v515.i32[0];
            if (v348 < 0)
            {
              v348 = -v348;
            }

            v349 = v218 - v183;
            if (v349 < 0)
            {
              v349 = -v349;
            }

            if (v348 >= v349)
            {
              v184 = v183;
            }

            else
            {
              v185 = v515.i32[0];
            }

            *&v537 = __PAIR64__(v184, v185);
            *(&v537 + 1) = __PAIR64__(v184, v185);
            v538[3] = v538[2];
            *(&v540 + 1) = v540;
            v515 = v540;
            v498(&v537 + 1, &v537 + 8);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(*(&v537 + 1), &v537 + 8);
            v498(v538, v538);
            v343 = v461;
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v538[0], v538);
            v498(&v538[1], &v538[1]);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v538[1], &v538[1]);
            v498(&v538[3], &v538[3]);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v538[3], &v538[3]);
            v498(&v539, &v539);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v539, &v539);
            v498(&v539 + 1, &v539 + 8);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(*(&v539 + 1), &v539 + 8);
            v498(&v540, &v540);
            if (!off_28151BD58)
            {
              sub_24BBEDB70(257, 0);
            }

            off_28151BD58(v540, &v540);
            v66 = v518;
            v38 = 0uLL;
LABEL_811:
            if (((dword_28151C1F8 != 0) & ~v506) != 0)
            {
              if (v343)
              {
                sub_24BBECAF8(&v537, v217, &v513, *(v503 + 16), *(v503 + 24), v502, v342[158], dword_28151C030, dword_27F07846C);
              }

              else
              {
                sub_24BBED5F0(&v537, &v513, *(v503 + 24), v502);
              }

              v351 = DWORD2(v537);
              v514 = *(&v537 + 1);
              v350 = HIDWORD(*(&v537 + 1));
              v38 = 0uLL;
            }

            else
            {
              LODWORD(v350) = HIDWORD(v514);
              v351 = v514;
            }

            v496 = 0;
            v65 = 0;
            v541 = __PAIR64__(v351, v350);
            v470 = 2;
            v64 = v72;
            continue;
          case 38:
            if (*(v504 + 480) != 1)
            {
              goto LABEL_1078;
            }

            if (dword_28151C1F8 == 2)
            {
              v209 = v454;
            }

            else
            {
              v209 = 1;
            }

            v64 = v72;
            v65 = v508;
            v66 = v71;
            if (v209)
            {
              continue;
            }

            v64 = v72;
            v65 = v508;
            v66 = v71;
            if (byte_27F078474)
            {
              continue;
            }

LABEL_1088:
            a1 = v504;
            a7 = v497;
            a4 = v488;
            a3 = v484;
            v31 = v454;
            v32 = v460;
            v34 = v464;
            v33 = v499;
            v35 = v505;
            goto LABEL_45;
          default:
            goto LABEL_1078;
        }

        v65 = *(v71 - 1);
        v76 = *(v71 - 2);
        v77 = (v76 >> 16);
        v64 = 0;
        v74 = 0;
        v75 = 1;
        v73 = v71 - 1;
        switch(*(v71 - 1))
        {
          case 0:
            if (v72 != 9 || v77 != 3)
            {
              goto LABEL_1078;
            }

            v66 = v71 - 5;
            if ((v71 - 20) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            HIDWORD(v514) = v495 - v480 + *(v71 - 3);
            LODWORD(v514) = v493 - v479 + *(v71 - 4);
            v217 = *(v71 - 5);
            *(&v540 + 1) = v514;
            v342 = v504;
            v343 = v461;
            goto LABEL_811;
          case 1:
            continue;
          case 2:
            goto LABEL_936;
          case 3:
            if (v77 != 1)
            {
              goto LABEL_1078;
            }

            v66 = v71 - 3;
            if ((v71 - 12) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            *(&v541 + v470) = *v66;
            if (v470 >= 2)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (!dword_28151C1F8)
            {
              for (i = qword_27F078548; i; i = *i)
              {
                *(i + 72) &= ~4u;
              }
            }

            ++v470;
            qword_28151C1D0 = 0;
            v331 = qword_28151C1C0;
            *qword_28151C1C0 = 1;
            v332 = qword_28151C1C8;
            *qword_28151C1C8 = 1;
            v333 = vdup_n_s32(0xE8300001);
            *(v331 + 64) = v333;
            *(v332 + 64) = v333;
            *(v331 + 80) = v331 + 56;
            *(v332 + 80) = v332 + 56;
            byte_28151C1D8 = 0;
            v64 = v72;
            v65 = v508;
            if (byte_27F07847C)
            {
              goto LABEL_1041;
            }

            continue;
          case 4:
            if (v77 != 1)
            {
              goto LABEL_1078;
            }

            v463 = 0;
            v345 = v470;
            *(&v541 + v470) = 196608;
            v66 = v71 - 3;
            v64 = v72;
            v65 = v508;
            ++v470;
            if (v345 >= 2)
            {
              sub_24BBEDB70(-1, 0);
            }

            continue;
          case 6:
            if (v76 >= 0x10000)
            {
              goto LABEL_1078;
            }

            if (dword_28151C1F8 == 2)
            {
              v340 = v454;
            }

            else
            {
              v340 = 1;
            }

            v64 = v72;
            v65 = v508;
            if ((v340 & 1) == 0)
            {
              v64 = v72;
              v65 = v508;
              if ((byte_27F078474 & 1) == 0)
              {
                goto LABEL_1088;
              }
            }

            continue;
          case 0xC:
          case 0xD:
            if ((v77 - 23) <= 0xFFFFFFE9)
            {
              goto LABEL_1078;
            }

            if (dword_28151C1F8 == 2)
            {
              v66 -= v77;
              goto LABEL_936;
            }

            v346 = qword_27F078488;
            v67 = v72;
            if (qword_27F078488)
            {
              goto LABEL_956;
            }

            if (*(qword_27F078490 + 8) >> 4 >= 0x145u)
            {
              v346 = *qword_27F078490;
            }

            else
            {
              v346 = (*(**(qword_28151C038 + 40) + 40))(*(qword_28151C038 + 40), *qword_27F078490, 5200);
              v347 = qword_27F078490;
              *qword_27F078490 = v346;
              if (!v346)
              {
                *(v347 + 8) = 0;
                dword_28151C1F8 = 2;
                v66 -= v77;
LABEL_195:
                v64 = v67;
LABEL_774:
                v65 = v508;
                v38 = 0uLL;
                continue;
              }

              *(v347 + 8) = 5200;
              v38 = 0uLL;
            }

            dword_27F078498 = 0;
            qword_27F078488 = v346;
            qword_27F0784A0 = (v346 + 300);
LABEL_956:
            if (&v66[-v77] < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (&v346[v77] > qword_27F0784A0)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v76 >= 0x10000)
            {
              v399 = v71 - 3;
              v400 = dword_27F078498 + 1;
              do
              {
                dword_27F078498 = v400;
                v401 = *v399--;
                *v346++ = v401;
                ++v400;
                LODWORD(v77) = v77 - 1;
              }

              while (v77);
              qword_27F078488 = v346;
              v66 = v399 + 1;
            }

            if (v66 != v518)
            {
              goto LABEL_1078;
            }

            v64 = v72;
            v16 = v65 == 12;
            v65 = v508;
            if (v16)
            {
              continue;
            }

            v402 = dword_27F078498;
            if (!dword_27F078498)
            {
              goto LABEL_1022;
            }

            LOWORD(v455) = 0;
            v403 = v480;
            v450 = v504[160];
            v449 = *(*v488 + 16);
            v404 = v479;
            v516 = 0;
            v517 = 0;
            v405 = 1;
            while (2)
            {
              if (v402 <= 0)
              {
                sub_24BBEDB70(-1, 0);
              }

              dword_27F078498 = v402 - 1;
              v406 = *(qword_27F078488 - 4);
              qword_27F078488 -= 4;
              v456 = v405;
              if ((v406 & 0x80000000) != 0)
              {
                sub_24BBEDB70(-1, 0);
              }

              v453 = v405 == 0;
              if (v405)
              {
                v407 = v403;
              }

              else
              {
                v407 = v404;
              }

              if (v406 >= 0x10000)
              {
                v408 = 0;
                v409 = HIWORD(v406);
                v452 = v405 & 1;
                v451 = v407;
                v410 = v407;
                do
                {
                  if (dword_27F078498 <= 1)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  dword_27F078498 -= 2;
                  v411 = *(qword_27F078488 - 8);
                  v412 = *(qword_27F078488 - 4) + v410;
                  qword_27F078488 -= 8;
                  v410 = v411 + v412;
                  if (v411 >= 0)
                  {
                    v413 = v412;
                  }

                  else
                  {
                    v413 = v411 + v412;
                  }

                  if (v411 >= 0)
                  {
                    v414 = v411 + v412;
                  }

                  else
                  {
                    v414 = v412;
                  }

                  if (!v411)
                  {
                    goto LABEL_1022;
                  }

                  v415 = sub_24BBFDA4C(v413, v414, v456);
                  if (v415)
                  {
                    if (!v408)
                    {
                      goto LABEL_1003;
                    }

                    goto LABEL_1001;
                  }

                  v416 = sub_24BBFDAA0(&v517, &v516);
                  if (!v416)
                  {
                    goto LABEL_1022;
                  }

                  v415 = v416;
                  *v416 = 0;
                  v417 = &qword_27F078548;
                  if (qword_27F078548)
                  {
                    v417 = v517;
                    if (!v517)
                    {
                      goto LABEL_994;
                    }

                    *v416 = *v517;
                  }

                  *v417 = v416;
LABEL_994:
                  *(v416 + 28) = 0x3E8000000000000;
                  v418 = *(v416 + 72) & 0xFFF2;
                  *(v416 + 12) = v413;
                  *(v416 + 16) = v414;
                  *(v416 + 72) = v452 | v418 | 4;
                  if (v453)
                  {
                    sub_24BBFE034(v413, (v416 + 20));
                    sub_24BBFE034(v414, (v415 + 24));
                    v419 = *(v415 + 24) - *(v415 + 20);
                    *(v415 + 44) = v419;
                    *(v415 + 8) = v419;
                    v420 = qword_28151C1F0;
                    if (!qword_28151C1F0)
                    {
                      goto LABEL_1000;
                    }

                    v421 = v414 - v413;
                    v422 = qword_28151C1E0;
                    v423 = *(qword_28151C028 + 760);
                  }

                  else
                  {
                    sub_24BBFDC20(v413, (v416 + 20));
                    sub_24BBFDC20(v414, (v415 + 24));
                    v424 = *(v415 + 24) - *(v415 + 20);
                    *(v415 + 44) = v424;
                    *(v415 + 8) = v424;
                    v420 = HIDWORD(qword_28151C1F0);
                    if (!HIDWORD(qword_28151C1F0))
                    {
                      goto LABEL_1000;
                    }

                    v421 = v414 - v413;
                    v422 = qword_28151C1E8;
                    v423 = *(qword_28151C028 + 764);
                  }

                  sub_24BBFDC88(v421, (v415 + 8), v422, v420, v423);
LABEL_1000:
                  *(v415 + 72) = *(v415 + 72) & 0xD | 0x10;
                  *(v415 + 56) = 0;
                  *(v415 + 64) = 0;
                  sub_24BBFC29C(v415);
                  v517 = v415;
                  if (!v408)
                  {
                    goto LABEL_1003;
                  }

LABEL_1001:
                  v425 = sub_24BBFE09C();
                  if (!v425)
                  {
                    goto LABEL_1022;
                  }

                  v426 = v516;
                  *(v425 + 8) = *(v415 + 20) - *(v516 + 24);
                  *(v425 + 16) = v415;
                  *(v425 + 24) = v426;
                  *v425 = qword_27F078550;
                  qword_27F078550 = v425;
                  *(v415 + 64) = v425;
                  *(v426 + 56) = v425;
LABEL_1003:
                  v516 = v415;
                  if (v411 < 0)
                  {
                    v427 = qword_27F078548;
                    if (qword_27F078548)
                    {
                      do
                      {
                        sub_24BBFC844(v427);
                        v427 = *v427;
                      }

                      while (v427);
                      for (j = qword_27F078548; j; j = *j)
                      {
                        *(j + 8) = *(j + 40) - *(j + 36);
                      }
                    }

                    if (!*(v415 + 64))
                    {
                      sub_24BBEDB70(-1, 0);
                    }

                    sub_24BBEE680(v415, qword_27F0784A0, 0x1F4uLL, v450);
                    v455 = (v455 + 1);
                    if (v455 > 63)
                    {
                      goto LABEL_1022;
                    }

                    v408 = 0;
                    LOWORD(v409) = v409 - 1;
                    v410 = v451;
                  }

                  else
                  {
                    v408 = 1;
                  }
                }

                while (v409);
              }

              if (v456)
              {
                v405 = v456 - 1;
                v402 = dword_27F078498;
                v404 = v479;
                v403 = v480;
                continue;
              }

              break;
            }

            if (!sub_24BBEF764(qword_27F078548, v449, dword_27F078480, dword_27F078484))
            {
LABEL_1022:
              byte_27F078474 = 1;
              v429 = 2;
              goto LABEL_1023;
            }

            if (byte_27F078474)
            {
              v429 = 2;
            }

            else
            {
              v429 = 3;
            }

LABEL_1023:
            qword_27F078550 = 0;
            qword_27F078488 = 0;
            v64 = v72;
            v65 = v508;
            dword_28151C1F8 = v429;
            v38 = 0uLL;
            if ((v506 & 1) == 0)
            {
              v64 = v72;
              v65 = v508;
              if (*v503)
              {
                (*v503)(v502);
LABEL_1026:
                v38 = 0uLL;
LABEL_936:
                v64 = v72;
                v65 = v508;
              }
            }

            break;
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
            v79 = v65 - 13;
            goto LABEL_768;
          case 0x12:
            v79 = 6;
LABEL_768:
            v344 = v504[161];
            if ((v518 + 4 * (v344 * v79)) > v66)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (!v344)
            {
              sub_24BBEDB70(-1, 0);
            }

            HIDWORD(v496) = v79;
            v66 = sub_24BBDDBD8(v71 - 8, v478, v344, v79);
            goto LABEL_773;
          case 0x13:
            v66 = v71 - 3;
            if ((v71 - 12) < v518)
            {
              sub_24BBEDB70(-1, 0);
            }

            v334 = *(v71 - 5);
            if (!*(v504 + 100))
            {
              v335 = *(**(v486 + 48) + 8);
              if (!v335)
              {
                goto LABEL_1078;
              }

              v336 = v335();
              *(v504 + 100) = v336;
              if (!v336)
              {
                goto LABEL_1078;
              }
            }

            if (v334 < 0 || (v337 = v504[161], v337 + v334 > v504[203]))
            {
              sub_24BBEDB70(-1, 0);
            }

            HIDWORD(v496) = 0;
            v64 = v72;
            v65 = v508;
            v38 = 0uLL;
            if (v337 < 1)
            {
              continue;
            }

            v338 = 0;
            v339 = *(v504 + 100) + 4 * v334;
            do
            {
              *(v339 + 4 * v338) = v478[v338];
              ++v338;
            }

            while (v338 < v504[161]);
            HIDWORD(v496) = 0;
            goto LABEL_936;
          case 0x14:
            goto LABEL_337;
          case 0x15:
            goto LABEL_325;
          case 0x16:
            goto LABEL_318;
          case 0x17:
            HIDWORD(v496) = 1;
            v71 = (v71 - 8);
            goto LABEL_721;
          case 0x18:
          case 0x1A:
            goto LABEL_129;
          case 0x19:
            goto LABEL_328;
          case 0x1B:
            goto LABEL_313;
          case 0x1C:
            v341 = 1103515245 * v504[192] + 12345;
            v504[192] = v341;
            if (v66 - v518 >= 252)
            {
              sub_24BBEDB70(-1, 0);
            }

            *v66 = HIWORD(v341) + 1;
            v66 = v71 - 1;
            v488[9] |= 1u;
            HIDWORD(v496) = 1;
            goto LABEL_936;
          case 0x1D:
            goto LABEL_341;
          case 0x1E:
            goto LABEL_346;
          default:
            if ((v77 & 0x80000000) != 0)
            {
              goto LABEL_1078;
            }

            v71 = &v66[-v77];
            if (v71 < v518)
            {
              goto LABEL_1078;
            }

            if (*v486)
            {
              (*v486)((v77 + 1), &v66[-v77], *(v497 + 2));
              v38 = 0uLL;
            }

            v67 = v72;
            if (v76 < 0x10000)
            {
              goto LABEL_179;
            }

            v78 = v77 + 1;
            ++v47;
            v68 = v505;
            do
            {
              if (v47 - 1 >= v505)
              {
                sub_24BBEDB70(-1, 0);
              }

              v69 = *(v47 - 1);
              if (v69 != 12)
              {
                goto LABEL_102;
              }

              if (v47 >= v505)
              {
                sub_24BBEDB70(-1, 0);
              }

              if (*v47 != 17)
              {
                ++v47;
                goto LABEL_108;
              }

              v71 = (v71 + 4);
              --v78;
              v47 += 2;
            }

            while (v78 > 1);
            --v47;
LABEL_179:
            v64 = v67;
            goto LABEL_950;
        }

        continue;
      case 0xDu:
        v96 = 0;
        *(&v518[0] + 1) = DWORD1(v518[0]);
        DWORD1(v518[0]) = 0;
        v95 = v492;
        goto LABEL_498;
      case 0xEu:
        a3 = v484;
        v162 = &qword_28151C000;
        v36 = v490;
        v41 = 0x27F078000;
        if (*(v504 + 480) == 1)
        {
          goto LABEL_1045;
        }

        v163 = *v497;
        v164 = v71 - v518;
        if ((*v497 & 0x400) != 0)
        {
          v444 = v164 >> 2;
          v504[228] = v444;
          if (v444 < 1)
          {
            return 0;
          }

          v445 = *(v504 + 115);
          v446 = v518;
          v443 = 0;
          do
          {
            v447 = *v446++;
            *v445++ = v447;
            --v444;
          }

          while (v444);
          return v443;
        }

        if (v164 <= 4)
        {
          if (*v490)
          {
LABEL_1045:
            v435 = dword_28151C1F8;
            if (dword_28151C1F8)
            {
              v436 = v506;
            }

            else
            {
              v436 = 1;
            }

            if (dword_28151C1F8)
            {
              v437 = 1;
            }

            else
            {
              v437 = v496;
            }

            if ((v436 & 1) == 0)
            {
              a1 = v504;
              a7 = v497;
              a4 = v488;
              if (!v496)
              {
                (*(v503 + 32))(v502);
              }

              goto LABEL_1057;
            }

            a1 = v504;
            a7 = v497;
            a4 = v488;
            goto LABEL_1061;
          }

          v16 = v71 == v518;
          v71 = (&v518[1] + 4);
          if (v16)
          {
            LODWORD(v518[0]) = -1;
            v71 = (&v518[1] + 4);
          }

LABEL_530:
          v37 = 0x27F078000uLL;
          if (v504[239] && !dword_28151C1F8)
          {
            if (!sub_24BBEF764(qword_27F078548, *(*v488 + 16), dword_27F078480, dword_27F078484))
            {
              byte_27F078474 = 1;
              a1 = v504;
              a7 = v497;
              a4 = v488;
              v38 = 0uLL;
              goto LABEL_48;
            }

            dword_28151C1F8 = 3;
            qword_27F078550 = 0;
            qword_27F078488 = 0;
            v38 = 0uLL;
            if (byte_27F078474 == 1)
            {
              dword_28151C1F8 = 2;
            }

            if ((v506 & 1) == 0 && *v503)
            {
              (*v503)(v502);
              v38 = 0uLL;
            }
          }

          if (*v36)
          {
            v270 = v496;
LABEL_622:
            if (v504[238])
            {
              goto LABEL_664;
            }

            v504[238] = 1;
            if (!v485)
            {
              goto LABEL_664;
            }

            if (v487 < 0)
            {
              v290 = (v483 - 1);
              if (v483 >= 1)
              {
                v291 = 0;
                v292 = v534;
                v293 = v536;
                for (k = v483; k; --k)
                {
                  if (*v292++)
                  {
                    v296 = v518 + v291;
                    v297 = *v293;
                    *v296 = *(v293 - 1);
                    v296[1] = v297;
                    v291 += 2;
                    if (v291 == 6)
                    {
                      sub_24BBFD20C(v518, v495, *(v497 + 2));
                      v291 = 0;
                      goto LABEL_635;
                    }
                  }

                  else
                  {
                    v298 = *v293;
                    LODWORD(v518[1]) = *(v293 - 1);
                    DWORD1(v518[1]) = v298;
                    sub_24BBFCD0C(&v518[1], v495, v504, *(v497 + 2));
                  }

                  if (!v290)
                  {
                    if (v291)
                    {
                      sub_24BBFCD0C(v518, v495, v504, *(v497 + 2));
                      if (v291 == 4)
                      {
                        sub_24BBFCD0C(v518 + 2, v495, v504, *(v497 + 2));
                      }
                    }
                  }

LABEL_635:
                  if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
                  {
LABEL_1036:
                    dword_28151C1F8 = 2;
                    a1 = v504;
                    a7 = v497;
                    a4 = v488;
                    a3 = v484;
                    v36 = v490;
                    goto LABEL_1038;
                  }

                  --v290;
                  v293 += 2;
                }
              }
            }

            if (!v491)
            {
              goto LABEL_664;
            }

            if (v483 >= 0x61)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v482 >= 0x61)
            {
              sub_24BBEDB70(-1, 0);
            }

            v300 = v483 + v482;
            if (v483 + v482 >= 97)
            {
              sub_24BBEDB70(-1, 0);
            }

            if (v482 < 1)
            {
LABEL_664:
              v515 = vadd_s32(v515, *(&v518[1] + 8));
              v498(&v515, &v514);
              if (v508 && v67 <= 9)
              {
                if ((v67 & 0xFFFFFFFB) == 0)
                {
                  v538[v67 - 2] = v515;
                  LODWORD(v67) = v67 | 1;
                }

                if (!off_28151BD58)
                {
                  sub_24BBEDB70(257, 0);
                }

                off_28151BD58(v514, &v538[v67 - 2]);
                v64 = (v67 + 1);
                LODWORD(v496) = v270;
                goto LABEL_676;
              }

              v513 = v514;
              v64 = v67;
              LODWORD(v496) = v270;
              v65 = v508;
              v460 = v515;
              v499 = v515;
              v66 = v518;
              v38 = 0uLL;
              if (!dword_28151C1F8)
              {
                continue;
              }

              LODWORD(v496) = 1;
              v64 = v67;
              v65 = v508;
              v499 = v515;
              v66 = v518;
              if (v506)
              {
                continue;
              }

              if (!v270)
              {
                v39.n128_f64[0] = (*(v503 + 32))(v502);
              }

              (*(v503 + 8))(&v513, v502, v39, v38);
              LODWORD(v496) = 1;
              v64 = v67;
              v65 = v508;
              v499 = v460;
LABEL_677:
              v66 = v518;
              v38 = 0uLL;
              continue;
            }

            v301 = 0;
            v302 = v483;
            v303 = &v536[v483];
            while (1)
            {
              if (v534[v302])
              {
                v304 = v518 + v301;
                v305 = *v303;
                *v304 = *(v303 - 1);
                v304[1] = v305;
                v301 += 2;
                if (v301 == 6)
                {
                  sub_24BBFD278(v518, v493, *(v497 + 2));
                  v301 = 0;
                  goto LABEL_658;
                }
              }

              else
              {
                v306 = *v303;
                LODWORD(v518[1]) = *(v303 - 1);
                DWORD1(v518[1]) = v306;
                sub_24BBFCE9C(&v518[1], v493, *(v497 + 2));
              }

              if (v300 - 1 == v302)
              {
                if (v301)
                {
                  sub_24BBFCE9C(v518, v493, *(v497 + 2));
                  if (v301 == 4)
                  {
                    sub_24BBFCE9C(&v518[1], v493, *(v497 + 2));
                  }
                }
              }

LABEL_658:
              if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
              {
                goto LABEL_1036;
              }

              ++v302;
              v303 += 2;
              if (v302 >= v300)
              {
                goto LABEL_664;
              }
            }
          }

          if (LODWORD(v518[0]) == -1)
          {
            if (v488[8])
            {
              HIDWORD(v518[0]) = v504[196];
              v96 = v504[194];
              LODWORD(v518[0]) = 0;
              *(v518 + 4) = v96;
            }

            else
            {
              v96 = 0;
              *(&v518[0] + 1) = v504[195];
              *&v518[0] = v504[193];
            }
          }

          else
          {
            v96 = 0;
            *(&v518[0] + 1) = (v504[236] + LODWORD(v518[0]));
            *&v518[0] = 0;
          }

          v95 = v492;
LABEL_554:
          *v36 = 1;
          v479 = v518[0];
          v515 = __PAIR64__(v96, v518[0]);
          v480 = v96;
          v271 = *(v488 + 1);
          v492 = v95;
          v64 = v67;
          v65 = v508;
          v66 = v518;
          if (!v271)
          {
            continue;
          }

          v72 = v67;
          v272 = HIDWORD(v518[0]);
          v273 = v271[4];
          if (v273 != 1)
          {
            if (v273 != 2)
            {
              if (v273 != 4)
              {
                v274 = DWORD2(v518[0]);
LABEL_567:
                v162 = &qword_28151C000;
                if (v489 | v462)
                {
                  v517 = 0;
                  if (!off_28151BD68)
                  {
                    sub_24BBEDB70(257, 0);
                  }

                  off_28151BD68(v489 | (v462 << 32), &v517);
                  v515 = vadd_s32(v515, v517);
                  v275 = v515.i32[1];
                }

                else
                {
                  v275 = v515.i32[1];
                }

                v495 = v275;
                v493 = v515.i32[0];
                v276 = *(v488 + 1);
                if ((*v497 & 0x10) == 0)
                {
                  *v276 = v515;
                  v276 = *(v488 + 1);
                  v276[1].i32[0] = v274;
                  v276[1].i32[1] = v272;
                }

                sub_24BBD71E0(v504, *&v515, &v276[2] + 1);
                sub_24BBD71E0(v504, v274 | (v272 << 32), (*(v488 + 1) + 28));
                if (v506)
                {
                  return 0;
                }

                if (dword_28151C1F8 && !v496)
                {
                  (*(v503 + 32))(v502);
                }

                a3 = v484;
                v36 = v490;
                if (!off_28151BD50)
                {
                  sub_24BBEDB70(257, 0);
                }

                off_28151BD50(*&v515, &v513);
                (*(v503 + 8))(&v513, v502);
                v277 = v71 - v518;
                if (v71 - v518 == 36)
                {
                  *&v518[0] = *(&v518[1] + 1);
                  v270 = 1;
                  v492 = v95;
                  v37 = 0x27F078000;
                  goto LABEL_622;
                }

                v38 = 0uLL;
                if (v277 == 20)
                {
                  a1 = v504;
                  a7 = v497;
                  a4 = v488;
                  v41 = 0x27F078000;
                  if (!dword_28151C1F8)
                  {
                    goto LABEL_1071;
                  }

LABEL_1057:
                  if ((*a7 & 0x20) == 0)
                  {
                    v438 = *(v503 + 40);
                    if (v438)
                    {
                      goto LABEL_1059;
                    }

                    goto LABEL_1060;
                  }

                  v448 = v448 & 0xFFFFFFFF00000000 | v458 | v459;
                  v441 = sub_24BBFD608(a1, v457, a4, v448, v486, *(a7 + 2));
                  if (v441)
                  {
                    return v441;
                  }

                  v438 = *v503;
                  if (*v503)
                  {
LABEL_1059:
                    v438(v502);
                  }

LABEL_1060:
                  v435 = dword_28151C1F8;
                  v437 = 1;
                  v38 = 0uLL;
LABEL_1061:
                  if (!v435)
                  {
LABEL_1071:
                    dword_28151C1F8 = 3;
                    sub_24BBFD810();
                    sub_24BBFD8E4(a1, (*a4)[2], a1[160]);
                    v37 = 0x27F078000;
                    if (byte_27F078474 == 1)
                    {
                      dword_28151C1F8 = 2;
                    }

                    qword_27F078550 = 0;
                    v38 = 0uLL;
                    goto LABEL_48;
                  }

                  v439 = v506;
                  if (v437)
                  {
                    v439 = 1;
                  }

                  if ((v439 & 1) == 0)
                  {
                    (*(v503 + 32))(v502);
                    v38 = 0uLL;
                  }

                  if ((~*a7 & 0x30) == 0)
                  {
                    *a7 = *a7 & 0xFFFFFFE7 | 8;
                    if (!dword_28151C1F8)
                    {
                      for (m = qword_27F078548; m; m = *m)
                      {
                        *(m + 72) &= ~4u;
                      }
                    }

                    goto LABEL_1035;
                  }

                  return 0;
                }

                a1 = v504;
                if (v277 == 32)
                {
                  *&v518[0] = *&v518[1];
                  DWORD2(v518[0]) = DWORD2(v518[1]);
                  v41 = 0x27F078000;
                  goto LABEL_1077;
                }

                if (v477)
                {
                  LODWORD(v496) = 1;
                  v492 = v95;
LABEL_586:
                  v41 = 0x27F078000uLL;
                  if (a1[239] && !dword_28151C1F8)
                  {
                    if (!sub_24BBEF764(qword_27F078548, *(*v488 + 16), dword_27F078480, dword_27F078484))
                    {
                      byte_27F078474 = 1;
                      a7 = v497;
                      a4 = v488;
                      v37 = 0x27F078000;
                      v38 = 0uLL;
                      goto LABEL_48;
                    }

                    dword_28151C1F8 = 3;
                    qword_27F078550 = 0;
                    qword_27F078488 = 0;
                    v38 = 0uLL;
                    if (byte_27F078474 == 1)
                    {
                      dword_28151C1F8 = 2;
                    }

                    if ((v506 & 1) == 0 && *v503)
                    {
                      (*v503)(v502);
                      v38 = 0uLL;
                    }
                  }

                  if (a1[238])
                  {
                    if (!dword_28151C1F8)
                    {
                      for (n = qword_27F078548; n; n = *n)
                      {
                        *(n + 72) &= ~4u;
                      }
                    }

                    v162[58] = 0;
                    v279 = qword_28151C1C0;
                    *qword_28151C1C0 = 1;
                    v280 = qword_28151C1C8;
                    *qword_28151C1C8 = 1;
                    v281 = vdup_n_s32(0xE8300001);
                    *(v279 + 64) = v281;
                    *(v280 + 64) = v281;
                    *(v279 + 80) = v279 + 56;
                    *(v280 + 80) = v280 + 56;
                    byte_28151C1D8 = 0;
                    if (byte_27F07847C)
                    {
                      a7 = v497;
                      a4 = v488;
                      v37 = 0x27F078000;
                      goto LABEL_48;
                    }
                  }

                  if (v483 >= 1)
                  {
                    v282 = 0;
                    v283 = 0;
                    v284 = 0;
                    v285 = v536;
                    v37 = 0x27F078000;
                    while (1)
                    {
                      if ((v282 & 7) == 0)
                      {
                        if (v47 >= v505)
                        {
                          sub_24BBEDB70(-1, 0);
                        }

                        v286 = *v47++;
                        v284 = v286;
                      }

                      if (v494)
                      {
                        if (v284 < 0)
                        {
                          if (v534[v282])
                          {
                            v287 = *v285;
                            v288 = v518 + v283;
                            *v288 = *(v285 - 1);
                            v288[1] = v287;
                            v283 += 2;
                          }

                          else
                          {
                            v289 = *v285;
                            LODWORD(v518[1]) = *(v285 - 1);
                            DWORD1(v518[1]) = v289;
                            sub_24BBFCD0C(&v518[1], v495, v504, *(v497 + 2));
                            v38 = 0uLL;
                          }
                        }

                        if (v283 == 6)
                        {
                          sub_24BBFD20C(v518, v495, *(v497 + 2));
                          v38 = 0uLL;
                          v283 = 0;
                        }

                        else if (v483 - 1 == v282)
                        {
                          if (v283)
                          {
                            sub_24BBFCD0C(v518, v495, v504, *(v497 + 2));
                            v38 = 0uLL;
                            if (v283 == 4)
                            {
                              sub_24BBFCD0C(v518 + 2, v495, v504, *(v497 + 2));
                              v38 = 0uLL;
                            }
                          }
                        }

                        if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
                        {
LABEL_1027:
                          dword_28151C1F8 = 2;
                          a1 = v504;
                          a7 = v497;
                          a4 = v488;
                          a3 = v484;
                          v36 = v490;
                          v41 = 0x27F078000;
                          goto LABEL_48;
                        }

                        v284 *= 2;
                      }

                      ++v282;
                      v285 += 2;
                      if (v483 == v282)
                      {
                        goto LABEL_679;
                      }
                    }
                  }

                  v284 = 0;
                  v37 = 0x27F078000;
LABEL_679:
                  if (v483 >= 0x61)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  if (v482 >= 0x61)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  v308 = v483 + v482;
                  if (v483 + v482 >= 97)
                  {
                    sub_24BBEDB70(-1, 0);
                  }

                  if (v482 >= 1)
                  {
                    v309 = 0;
                    v310 = v483;
                    v311 = &v536[v483];
                    do
                    {
                      if ((v310 & 7) == 0)
                      {
                        if (v47 >= v505)
                        {
                          sub_24BBEDB70(-1, 0);
                        }

                        v312 = *v47++;
                        v284 = v312;
                      }

                      if (v491)
                      {
                        if (v284 < 0)
                        {
                          if (v534[v310])
                          {
                            v313 = *v311;
                            v314 = v518 + v309;
                            *v314 = *(v311 - 1);
                            v314[1] = v313;
                            v309 += 2;
                          }

                          else
                          {
                            v315 = *v311;
                            LODWORD(v518[1]) = *(v311 - 1);
                            DWORD1(v518[1]) = v315;
                            sub_24BBFCE9C(&v518[1], v493, *(v497 + 2));
                          }
                        }

                        if (v309 == 6)
                        {
                          sub_24BBFD278(v518, v493, *(v497 + 2));
                          v309 = 0;
                        }

                        else if (v308 - 1 == v310)
                        {
                          if (v309)
                          {
                            sub_24BBFCE9C(v518, v493, *(v497 + 2));
                            if (v309 == 4)
                            {
                              sub_24BBFCE9C(&v518[1], v493, *(v497 + 2));
                            }
                          }
                        }

                        v38 = 0uLL;
                        if (byte_27F078474 == 1 && dword_28151C1F8 != 2)
                        {
                          goto LABEL_1027;
                        }

                        v284 *= 2;
                      }

                      ++v310;
                      v311 += 2;
                    }

                    while (v310 < v308);
                  }

                  v477 = 0;
                  v504[238] = 1;
                  goto LABEL_707;
                }

                v492 = 0;
                v477 = 0;
                LODWORD(v496) = 1;
                goto LABEL_840;
              }

              v272 = v271[3];
              if ((v272 - 399507456) < 0xD0600001)
              {
                sub_24BBEDB70(266, 0);
              }

              v515.i32[1] = v271[1];
              if ((v515.i32[1] - 131072001) <= 0xF05FFFFE)
              {
                sub_24BBEDB70(266, 0);
              }
            }

            v515.i32[0] = *v271;
            if ((v515.i32[0] - 131072001) <= 0xF05FFFFE)
            {
              sub_24BBEDB70(266, 0);
            }
          }

          v274 = v271[2];
          if (v274 - 399507456 < 0xD0600001)
          {
            sub_24BBEDB70(266, 0);
          }

          goto LABEL_567;
        }

        *v497 = v163 | 0x80;
        if ((v163 & 0x18) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        if (v164 == 20)
        {
          v39.n128_u64[1] = *(v518 + 12);
          v518[1] = *(v518 + 4);
        }

        else
        {
          v39.n128_u64[1] = *(&v518[0] + 1);
          v518[1] = v518[0];
          LODWORD(v518[0]) = -1;
        }

        v71 = &v519;
        if (!*v490)
        {
          goto LABEL_530;
        }

        a1 = v504;
LABEL_1077:
        HIDWORD(v518[0]) = 0;
        a7 = v497;
        sub_24BBFD570(v518 | 0xC, *(v497 + 1), v493, v495, a1);
        a4 = v488;
LABEL_1031:
        v38 = 0uLL;
        if ((*a7 & 2) == 0)
        {
          *a7 |= 0x10u;
          if (!dword_28151C1F8)
          {
            for (ii = qword_27F078548; ii; ii = *ii)
            {
              *(ii + 72) &= ~4u;
            }
          }

LABEL_1035:
          v162[58] = 0;
          v432 = qword_28151C1C0;
          *qword_28151C1C0 = 1;
          v433 = qword_28151C1C8;
          *qword_28151C1C8 = 1;
          v434 = vdup_n_s32(0xE8300001);
          *(v432 + 64) = v434;
          *(v433 + 64) = v434;
          *(v432 + 80) = v432 + 56;
          *(v433 + 80) = v433 + 56;
          byte_28151C1D8 = 1;
          v37 = 0x27F078000;
          goto LABEL_48;
        }

        return 1;
      case 0xFu:
        if (*(v504 + 480) != 1)
        {
          goto LABEL_1078;
        }

        v97 = LODWORD(v518[0]) + v493;
        HIDWORD(v518[1]) = DWORD1(v518[0]);
        goto LABEL_305;
      case 0x10u:
        if (*(v504 + 480) != 1)
        {
          goto LABEL_1078;
        }

        v111 = v71 - 4;
        if ((v71 - 4) < v518)
        {
          sub_24BBEDB70(-1, 0);
        }

        v112 = *(v71 - 1);
        if ((v112 - 1) >= 0x10)
        {
          sub_24BBEDB70(-1, 0);
        }

        v113 = v504[161];
        if (v518 + 4 * (v113 * v112) > v111)
        {
          sub_24BBEDB70(-1, 0);
        }

        if (!v113)
        {
          sub_24BBEDB70(-1, 0);
        }

        v66 = sub_24BBDDBD8(v111, v478, v113, *(v111 + 2));
        goto LABEL_195;
      case 0x11u:
        if (*(v504 + 480) != 1)
        {
          goto LABEL_1078;
        }

        *&v518[1] = vsub_s32(*&v518[1], *(v518 + 8));
        *v98.i8 = v515;
        v99.i32[1] = DWORD1(v518[0]);
        v98.i64[1] = *&v518[0];
        v99.i32[0] = LODWORD(v518[0]) + v493;
        v99.i64[1] = *(&v518[0] + 1);
        v38 = 0uLL;
        v39 = vsubq_s32(v99, v98);
        v518[0] = v39;
LABEL_504:
        LODWORD(v496) = 0;
        v249 = (v71 - v518) >> 2;
        v64 = v67;
        v65 = v508;
        v66 = v518;
        v250 = v249 - 6;
        if (v249 < 6)
        {
          continue;
        }

        v251 = 0;
        v252 = v249 - 8;
        v253 = v518 | 0xC;
        while (qword_28151C1D0 == sub_24BBFCB98)
        {
          v517 = 0;
          v516 = 0;
          v509 = 0;
          if (!dword_28151C1F8)
          {
            sub_24BBEDB70(-1, 0);
          }

          v257 = v515.i32[0] + *(v253 - 12);
          LODWORD(v517) = sub_24BBFD400(qword_28151C1C0, v257);
          v258 = *(v253 - 4) + v257;
          LODWORD(v516) = sub_24BBFD400(qword_28151C1C0, v258);
          v259 = *(v253 + 4) + v258;
          LODWORD(v509) = sub_24BBFD400(qword_28151C1C0, v259);
          v515.i32[0] = v259;
          v260 = v515.i32[1] + *(v253 - 8);
          HIDWORD(v517) = sub_24BBFD400(qword_28151C1C8, v260);
          v261 = *v253 + v260;
          HIDWORD(v516) = sub_24BBFD400(qword_28151C1C8, v261);
          v262 = *(v253 + 8) + v261;
          HIDWORD(v509) = sub_24BBFD400(qword_28151C1C8, v262);
          v515.i32[1] = v262;
          if ((v506 & 1) == 0)
          {
            goto LABEL_513;
          }

LABEL_516:
          v513 = v509;
          v38 = 0uLL;
          if (v252 == v251)
          {
            v264 = *(v518 + (v251 + 7));
            LODWORD(v518[0]) = *(v518 + ((v251 + 6) & 0xFFFFFFFE));
            DWORD1(v518[0]) = v264;
            v71 = (v518 + 8);
LABEL_520:
            LODWORD(v496) = 0;
            v265 = (v71 - v518) >> 2;
            v64 = v67;
            v65 = v508;
            v66 = v518;
            v266 = v265 - 2;
            if (v265 < 2)
            {
              goto LABEL_99;
            }

            v267 = 0;
            v268 = v518;
            v269 = v499;
            do
            {
              v515 = vadd_s32(v515, *v268);
              if (dword_28151C1F8)
              {
                if ((v506 & 1) == 0)
                {
                  v498(&v515, &v513);
                  (*(v503 + 16))(&v513, v502);
                }
              }

              else
              {
                sub_24BBFD2E4(v269, *&v515);
                v269 = v515;
                v513 = v515;
              }

              ++v268;
              v267 += 2;
            }

            while (v266 >= v267);
            v499 = v269;
            LODWORD(v496) = 0;
            v64 = v67;
LABEL_676:
            v65 = v508;
            goto LABEL_677;
          }

          v251 += 6;
          v253 += 24;
          if (v250 < v251)
          {
            goto LABEL_518;
          }
        }

        v254 = vadd_s32(*(v253 - 12), v515);
        *(v253 - 12) = v254;
        v255 = vadd_s32(*(v253 - 4), v254);
        *(v253 - 4) = v255;
        v256 = vadd_s32(*(v253 + 4), v255);
        *(v253 + 4) = v256;
        v515 = v256;
        v517 = v254;
        v516 = v255;
        v509 = v256;
        if (!dword_28151C1F8)
        {
          sub_24BBFD2E4(v499, v517);
          sub_24BBFD2E4(v516, v509);
          v499 = v515;
          goto LABEL_516;
        }

        if (v506)
        {
          goto LABEL_516;
        }

        v498(&v517, &v517);
        v498(&v516, &v516);
        v498(&v509, &v509);
LABEL_513:
        v263 = *(v503 + 24);
        if (v263)
        {
          v263(&v513, &v517, &v516, &v509, v502);
        }

        goto LABEL_516;
      case 0x12u:
        byte_28151C1D8 = 0;
LABEL_147:
        if (*(v504 + 480) == 1)
        {
          v64 = v67;
          v65 = v508;
          v66 = v518;
          if (!v494)
          {
            continue;
          }

          sub_24BBFCD0C(v518, v495, v504, *(v497 + 2));
          v38 = 0uLL;
          v93 = byte_27F078474 != 1 || dword_28151C1F8 == 2;
          v64 = v67;
LABEL_425:
          v65 = v508;
          v66 = v518;
          if (v93)
          {
            continue;
          }

          goto LABEL_1040;
        }

        v106 = v71 - v518;
        v107 = v106 >> 2;
        v108 = v483;
        if ((v483 + ((v106 >> 2) >> 1)) >= 0x60)
        {
          sub_24BBEDB70(-1, 0);
        }

        v109 = (v106 >> 2) & 1;
        v110 = (v107 - 2);
        if (v109 <= v110)
        {
          bzero(&v534[v483], (v110 >> 1) + 1);
          v241 = 0;
          v242 = v518 + v109 + 1;
          v243 = v109;
          v244 = &v536[v483];
          v38 = 0uLL;
          do
          {
            v245 = *v242;
            v246 = *(v242 - 1) + v241;
            v241 = *v242 + v246;
            v243 += 2;
            *(v244 - 1) = v246;
            *v244 = v245;
            v108 = (v108 + 1);
            v242 += 2;
            v244 += 2;
          }

          while (v243 <= v110);
        }

        else
        {
          v38 = 0uLL;
        }

        v483 = v108;
        if (v109)
        {
          v96 = 0;
          v247 = v504[236] + LODWORD(v518[0]);
        }

        else
        {
          v64 = v67;
          v65 = v508;
          v66 = v518;
          if (*v490)
          {
            continue;
          }

          v96 = 0;
          v247 = v504[195];
        }

        *(&v518[0] + 1) = v247;
        *&v518[0] = 0;
        v95 = v492;
        goto LABEL_497;
      case 0x13u:
        if (v71 == v518)
        {
          a1 = v504;
          a3 = v484;
          v162 = &qword_28151C000;
          v36 = v490;
          goto LABEL_586;
        }

        v477 = 1;
LABEL_162:
        v95 = v492;
        v94 = v482;
        goto LABEL_163;
      case 0x14u:
        v94 = v482;
        if (v71 == v518)
        {
          v72 = v67;
LABEL_841:
          v517 = 0;
          if (!v504[239])
          {
            v510 = 0;
          }

          if (v483 >= 0x61)
          {
            sub_24BBEDB70(-1, 0);
          }

          if (v482 >= 0x61)
          {
            sub_24BBEDB70(-1, 0);
          }

          v355 = (v483 + v482);
          v356 = v505;
          if (v355 >= 97)
          {
            sub_24BBEDB70(-1, 0);
          }

          if (v355 < 1)
          {
LABEL_902:
            v492 = 0;
            goto LABEL_903;
          }

          v357 = 0;
          v358 = 0;
          v359 = 0;
          v360 = 0;
          v361 = 0;
          v362 = 0;
          while (1)
          {
            if ((v361 & 7) == 0)
            {
              if (v47 >= v356)
              {
                sub_24BBEDB70(-1, 0);
              }

              v363 = *v47++;
              v362 = v363;
            }

            if (dword_28151C1F8)
            {
              v534[v361] = v362 < 0 && dword_28151C1F8 == 2 && (byte_27F078474 & 1) == 0;
              goto LABEL_901;
            }

            v534[v361] = 0;
            if (v362 < 0)
            {
              break;
            }

LABEL_883:
            if (v361 == v483 - 1)
            {
              if (!*&v358)
              {
                v359 = 0;
                v360 = 0;
                goto LABEL_901;
              }
            }

            else if (v361 != v355 - 1 || !v359)
            {
              v360 = v359;
              goto LABEL_901;
            }

            v379 = qword_27F078548;
            v380 = v504;
            if (qword_27F078548)
            {
              do
              {
                sub_24BBFC844(v379);
                v379 = *v379;
              }

              while (v379);
              for (jj = qword_27F078548; jj; jj = *jj)
              {
                *(jj + 8) = *(jj + 40) - *(jj + 36);
              }
            }

            if (qword_27F078488)
            {
              v382 = qword_27F0784A0;
            }

            else
            {
              if (*(qword_27F078490 + 8) >> 4 >= 0x145u)
              {
                v383 = *qword_27F078490;
              }

              else
              {
                v383 = (*(**(qword_28151C038 + 40) + 40))(*(qword_28151C038 + 40), *qword_27F078490, 5200);
                v384 = qword_27F078490;
                *qword_27F078490 = v383;
                if (!v383)
                {
                  *(v384 + 8) = 0;
                  dword_28151C1F8 = 2;
                  v38 = 0uLL;
                  goto LABEL_902;
                }

                *(v384 + 8) = 5200;
              }

              v380 = v504;
              dword_27F078498 = 0;
              qword_27F078488 = v383;
              v382 = (v383 + 1200);
              qword_27F0784A0 = v383 + 1200;
              v504[239] = 1;
            }

            sub_24BBEE680(*&v357, v382, 0x1F4uLL, v380[160]);
            v357 = 0;
            v358 = 0;
            v359 = 0;
            v360 = 0;
            v517 = 0;
            v38 = 0uLL;
LABEL_901:
            v362 *= 2;
            if (++v361 == v355)
            {
              goto LABEL_902;
            }
          }

          v364 = &v535[8 * v361];
          v366 = *v364;
          v365 = v364[1];
          v367 = v365 + *v364;
          v357 = sub_24BBFDA4C(v366, v365 + v366, v361 < v483);
          if (v357)
          {
            if (!v360)
            {
              goto LABEL_882;
            }

            goto LABEL_880;
          }

          v368 = sub_24BBFDAA0(&v510, &v517);
          if (!v368)
          {
            goto LABEL_1037;
          }

          v357 = v368;
          v369 = &qword_27F078548;
          v370 = qword_27F078548;
          if (qword_27F078548)
          {
            v369 = v510;
            if (!v510)
            {
              goto LABEL_1078;
            }

            v370 = *v510;
          }

          *v368 = v370;
          *v369 = v368;
          *(v368 + 28) = 0x3E8000000000000;
          v371 = *(v368 + 72) & 0xFFF2;
          *(v368 + 12) = v366;
          *(v368 + 16) = v367;
          if (v361 < v483)
          {
            ++v371;
          }

          *(v368 + 72) = v371 | 4;
          v372 = (v368 + 20);
          if (v361 < v483)
          {
            sub_24BBFDC20(v366, v372);
            sub_24BBFDC20(*(*&v357 + 16), (*&v357 + 24));
            v373 = *(*&v357 + 24) - *(*&v357 + 20);
            *(*&v357 + 44) = v373;
            *(*&v357 + 8) = v373;
            v374 = HIDWORD(qword_28151C1F0);
            if (!HIDWORD(qword_28151C1F0))
            {
              goto LABEL_879;
            }

            v375 = qword_28151C1E8;
            v376 = *(qword_28151C028 + 764);
          }

          else
          {
            sub_24BBFE034(v366, v372);
            sub_24BBFE034(*(*&v357 + 16), (*&v357 + 24));
            v377 = *(*&v357 + 24) - *(*&v357 + 20);
            *(*&v357 + 44) = v377;
            *(*&v357 + 8) = v377;
            v374 = qword_28151C1F0;
            if (!qword_28151C1F0)
            {
LABEL_879:
              *(*&v357 + 72) = *(*&v357 + 72) & 0xD | 0x10;
              *(*&v357 + 56) = 0;
              *(*&v357 + 64) = 0;
              sub_24BBFC29C(*&v357);
              v510 = v357;
              v360 = v517;
              if (!v517)
              {
LABEL_882:
                v517 = v357;
                v358 = v357;
                v359 = v357;
                v38 = 0uLL;
                v356 = v505;
                goto LABEL_883;
              }

LABEL_880:
              v378 = sub_24BBFE09C();
              if (!v378)
              {
LABEL_1037:
                byte_27F078474 = 1;
                a1 = v504;
                a7 = v497;
                a4 = v488;
                a3 = v484;
                v36 = v490;
                v37 = 0x27F078000;
LABEL_1038:
                v38 = 0uLL;
                v41 = 0x27F078000;
                goto LABEL_48;
              }

              *(v378 + 8) = *(*&v357 + 20) - *(v360 + 6);
              *(v378 + 16) = v357;
              *(v378 + 24) = v360;
              *v378 = qword_27F078550;
              qword_27F078550 = v378;
              *(*&v357 + 64) = v378;
              v360[7] = v378;
              goto LABEL_882;
            }

            v375 = qword_28151C1E0;
            v376 = *(qword_28151C028 + 760);
          }

          sub_24BBFDC88(v365, (*&v357 + 8), v375, v374, v376);
          goto LABEL_879;
        }

        v95 = 1;
LABEL_163:
        if (*(v504 + 480) == 1)
        {
          v492 = v95;
          v64 = v67;
          v65 = v508;
          v66 = v518;
          if (!v491)
          {
            continue;
          }

          sub_24BBFCE9C(v518, v493, *(v497 + 2));
          v38 = 0uLL;
          v492 = v95;
          v64 = v67;
          v65 = v508;
          v66 = v518;
          if (byte_27F078474 != 1)
          {
            continue;
          }

          v492 = v95;
          v64 = v67;
          v65 = v508;
          v66 = v518;
          if (dword_28151C1F8 == 2)
          {
            continue;
          }

LABEL_1040:
          dword_28151C1F8 = 2;
LABEL_1041:
          a1 = v504;
          a7 = v497;
          a4 = v488;
          a3 = v484;
          v36 = v490;
          v37 = 0x27F078000;
          v41 = 0x27F078000;
          goto LABEL_48;
        }

        v100 = (v71 - v518) >> 2;
        if ((v483 + v94 + (v100 >> 1)) >= 0x60)
        {
          sub_24BBEDB70(-1, 0);
        }

        v101 = ((v71 - v518) >> 2) & 1;
        v102 = (v100 - 2);
        if (v101 <= v102)
        {
          bzero(&v534[v483 + v94], (v102 >> 1) + 1);
          v38 = 0uLL;
          v165 = 0;
          v166 = v518 + v101 + 1;
          v167 = &v536[v94 + v483];
          v168 = ((v71 - v518) >> 2) & 1;
          a1 = v504;
          do
          {
            v169 = *v166;
            v170 = *(v166 - 1) + v165;
            v165 = *v166 + v170;
            v168 += 2;
            *(v167 - 1) = v170;
            *v167 = v169;
            v94 = (v94 + 1);
            v166 += 2;
            v167 += 2;
          }

          while (v168 <= v102);
        }

        else
        {
          a1 = v504;
        }

        v482 = v94;
        if (v101)
        {
          v96 = 0;
          *(&v518[0] + 1) = (a1[236] + LODWORD(v518[0]));
          *&v518[0] = 0;
LABEL_497:
          v71 = &v518[1];
LABEL_498:
          v36 = v490;
        }

        else
        {
          v36 = v490;
          if (*v490)
          {
            if (v477)
            {
              v492 = v95;
              a3 = v484;
              v162 = &qword_28151C000;
              goto LABEL_586;
            }

            v492 = 0;
            v477 = 0;
            v72 = v67;
LABEL_840:
            v64 = v67;
            v65 = v508;
            v66 = v518;
            if (!v95)
            {
              continue;
            }

            goto LABEL_841;
          }

          v96 = 0;
          *(&v518[0] + 1) = a1[195];
          *&v518[0] = 0;
          v71 = &v518[1];
        }

        goto LABEL_554;
      case 0x15u:
        if (v71 - v518 == 8)
        {
          *(&v518[1] + 1) = *&v518[0];
LABEL_296:
          LODWORD(v518[0]) = -1;
        }

        else
        {
          *(&v518[1] + 1) = *(v518 + 4);
        }

LABEL_529:
        v71 = (&v519 + 4);
        a3 = v484;
        v36 = v490;
        v41 = 0x27F078000;
        goto LABEL_530;
      case 0x16u:
        if (v71 - v518 == 4)
        {
          v97 = v518[0];
          HIDWORD(v518[1]) = 0;
LABEL_305:
          DWORD2(v518[1]) = v97;
          LODWORD(v518[0]) = -1;
        }

        else
        {
          *(&v518[1] + 1) = DWORD1(v518[0]);
        }

        goto LABEL_529;
      case 0x17u:
        byte_28151C1D8 = 0;
        goto LABEL_162;
      case 0x19u:
        v144 = (v71 - v518) >> 2;
        if (v144 <= 5)
        {
          sub_24BBEDB70(-1, 0);
        }

        v145 = v144 - 6;
        v146 = v499;
        if (v145)
        {
          v147 = 0;
          v148 = v518;
          do
          {
            v515 = vadd_s32(v515, *v148);
            if (dword_28151C1F8)
            {
              if ((v506 & 1) == 0)
              {
                v498(&v515, &v513);
                (*(v503 + 16))(&v513, v502);
              }
            }

            else
            {
              sub_24BBFD2E4(v146, *&v515);
              v146 = v515;
              v513 = v515;
            }

            v38 = 0uLL;
            ++v148;
            v147 += 2;
          }

          while (v145 > v147);
        }

        v499 = v146;
        for (kk = 0; kk != 24; kk += 4)
        {
          *(v518 + kk) = *(v518 + v145++);
        }

        v71 = (&v518[1] + 8);
        goto LABEL_504;
      case 0x1Au:
        v517 = 0;
        v516 = 0;
        v154 = (v71 - v518) >> 2;
        if (v154 < 4)
        {
          goto LABEL_518;
        }

        v155 = 0;
        while (1)
        {
          if ((v154 - v155))
          {
            v156 = v515.i32[0] + *(v518 + v155);
            LODWORD(v517) = v156;
            v160 = v155 + 1;
            v157 = 4;
            v158 = 3;
            v159 = 2;
          }

          else
          {
            v156 = v515.i32[0];
            LODWORD(v517) = v515.i32[0];
            v157 = 3;
            v158 = 2;
            v159 = 1;
            v160 = v155;
          }

          HIDWORD(v517) = v515.i32[1] + *(v518 + v160);
          v161 = *(v518 + v155 + v158) + HIDWORD(v517);
          LODWORD(v516) = *(v518 + v155 + v159) + v156;
          HIDWORD(v516) = v161;
          HIDWORD(v509) = *(v518 + v155 + v157) + v161;
          LODWORD(v509) = v516;
          v515 = v509;
          if (qword_28151C1D0 == sub_24BBFCB98)
          {
            break;
          }

          if (!dword_28151C1F8)
          {
            sub_24BBFD2E4(v499, v517);
            sub_24BBFD2E4(v516, v509);
            v38 = 0uLL;
            v499 = v515;
            goto LABEL_292;
          }

          if ((v506 & 1) == 0)
          {
            v498(&v517, &v517);
            v498(&v516, &v516);
            v498(&v509, &v509);
LABEL_290:
            (*(v503 + 24))(&v513, &v517, &v516, &v509, v502);
            v38 = 0uLL;
          }

LABEL_292:
          v513 = v509;
          v155 += ((v154 - v155) & 1) + 4;
          if (v155 > v154 - 4)
          {
            goto LABEL_518;
          }
        }

        LODWORD(v517) = sub_24BBFD400(qword_28151C1C0, v517);
        HIDWORD(v517) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v517));
        LODWORD(v516) = sub_24BBFD400(qword_28151C1C0, v516);
        HIDWORD(v516) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v516));
        LODWORD(v509) = sub_24BBFD400(qword_28151C1C0, v509);
        HIDWORD(v509) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v509));
        goto LABEL_290;
      case 0x1Bu:
        v517 = 0;
        v516 = 0;
        v509 = 0;
        v91 = (v71 - v518) >> 2;
        if (v91 < 4)
        {
          v92 = v499;
          goto LABEL_488;
        }

        v235 = 0;
        v92 = v499;
        while (1)
        {
          if ((v91 - v235))
          {
            if (v235)
            {
              sub_24BBEDB70(-1, 0);
            }

            v236 = v515.i32[1] + LODWORD(v518[0]);
            HIDWORD(v517) = v515.i32[1] + LODWORD(v518[0]);
            v235 = 1;
          }

          else
          {
            v236 = v515.i32[1];
            HIDWORD(v517) = v515.i32[1];
          }

          v237 = v518 + v235;
          v238 = v237[1];
          v239 = v515.i32[0] + *v237;
          LODWORD(v517) = v239;
          v240 = v237[2];
          LODWORD(v237) = v237[3];
          LODWORD(v516) = v238 + v239;
          HIDWORD(v516) = v236 + v240;
          LODWORD(v509) = v237 + v238 + v239;
          HIDWORD(v509) = v236 + v240;
          v515 = v509;
          if (qword_28151C1D0 == sub_24BBFCB98)
          {
            break;
          }

          if (!dword_28151C1F8)
          {
            sub_24BBFD2E4(v92, v517);
            sub_24BBFD2E4(v516, v509);
            v38 = 0uLL;
            v92 = v515;
            goto LABEL_487;
          }

          if ((v506 & 1) == 0)
          {
            v498(&v517, &v517);
            v498(&v516, &v516);
            v498(&v509, &v509);
LABEL_485:
            (*(v503 + 24))(&v513, &v517, &v516, &v509, v502);
            v38 = 0uLL;
          }

LABEL_487:
          v513 = v509;
          v235 += 4;
          if (v235 > v91 - 4)
          {
LABEL_488:
            v499 = v92;
LABEL_518:
            LODWORD(v496) = 0;
LABEL_707:
            v64 = v67;
LABEL_904:
            v65 = v508;
            v66 = v518;
            goto LABEL_99;
          }
        }

        LODWORD(v517) = sub_24BBFD400(qword_28151C1C0, v239);
        HIDWORD(v517) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v517));
        LODWORD(v516) = sub_24BBFD400(qword_28151C1C0, v516);
        HIDWORD(v516) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v516));
        LODWORD(v509) = sub_24BBFD400(qword_28151C1C0, v509);
        HIDWORD(v509) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v509));
        goto LABEL_485;
      case 0x1Cu:
        if (v47 >= v68)
        {
          sub_24BBEDB70(-1, 0);
        }

        v103 = *v47;
        if ((v47 + 1) >= v68)
        {
          sub_24BBEDB70(-1, 0);
        }

        v104 = v47[1];
        if (v71 - v518 >= 252)
        {
          sub_24BBEDB70(-1, 0);
        }

        v47 += 2;
        *v71 = (v103 << 24) | (v104 << 16);
        v71 = (v71 + 4);
        goto LABEL_179;
      case 0x1Du:
        v66 = v71 - 1;
        if ((v71 - 4) < v518)
        {
          sub_24BBEDB70(-1, 0);
        }

        v84 = *(v71 - 1) + v504[204];
        if (v84 >= v504[205] || v84 < 0)
        {
          goto LABEL_1078;
        }

        v85 = 5;
        v86 = v475;
        v87 = v471;
        v89 = v466;
        v88 = v467;
        v90 = v473;
LABEL_201:
        v114 = *v90;
        v115 = *v88;
        v116 = *v87;
        v117 = *v86;
        if (*v86 != *v87 && *v89 <= v114 + v114 * v115 || v481 == 32)
        {
          goto LABEL_1078;
        }

        v118 = &(&v543)[5 * v481];
        *(v118 + 2) = v47 - *v118;
        v118[2] = v47;
        v118[3] = v505;
        ++v481;
        if (!v117 || v84 >= v115 || (v119 = sub_24BBFCB24(v117, v84, v114), v120 = sub_24BBFCB24(v117, v84 + 1, v114), v38 = 0uLL, !v119))
        {
          *(v484 + 14) = v84;
          v122 = *(v486 + 24);
          if (v122)
          {
            v123 = xmmword_24BC06060;
            v124 = 34;
            v125 = v546;
            do
            {
              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), v123)).u8[0])
              {
                *(v125 - 5) = 0;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v123)).i32[1])
              {
                *v125 = 0;
              }

              v123 = vaddq_s64(v123, vdupq_n_s64(2uLL));
              v125 += 10;
              v124 -= 2;
            }

            while (v124);
            v126 = v122(v85, v484, *(v497 + 2), v123);
            v38 = 0uLL;
            if (v126)
            {
              v47 = v126;
              v121 = (v126 + *(v484 + 35));
              goto LABEL_218;
            }
          }

          goto LABEL_1081;
        }

        if (v119 < v120)
        {
          v47 = &v116[v119];
          v121 = &v116[v120];
LABEL_218:
          v505 = v121;
          v118[5] = v47;
          *(v118 + 13) = v84;
          v64 = v67;
          v65 = v508;
          *(v118 + 18) = v85;
          continue;
        }

        *(v118 + 12) = 0;
        *(v118 + 13) = v84;
        *(v118 + 18) = v85;
LABEL_711:
        if (v481 <= 0)
        {
          sub_24BBEDB70(-1, 0);
        }

        v316 = &(&v543)[5 * --v481];
        v47 = v316[2];
        v505 = v316[3];
        v64 = v67;
        v65 = v508;
        if (v47)
        {
          continue;
        }

        v72 = v67;
        v317 = *(v316 + 3);
        v318 = *(v316 + 8);
        if (v318 == 5)
        {
          v319 = v497;
          v320 = v484;
          v321 = v316[3];
          if (*v475)
          {
            v322 = sub_24BBFCB24(*v475, *(v316 + 3), *v473);
            v38 = 0uLL;
            if (v322)
            {
              v323 = v471;
              goto LABEL_920;
            }
          }
        }

        else
        {
          v319 = v497;
          v320 = v484;
          if (v318 == 1)
          {
            v387 = *v484;
            v321 = v316[3];
            goto LABEL_925;
          }

          v321 = v316[3];
          if (v318)
          {
            v389 = v484[4];
            if (v389)
            {
              v322 = sub_24BBFCB24(v389, *(v316 + 3), *(v484 + 61));
              v38 = 0uLL;
              if (v322)
              {
                v388 = v484[3];
                goto LABEL_924;
              }
            }
          }

          else if (*v476)
          {
            v322 = sub_24BBFCB24(*v476, *(v316 + 3), *v474);
            v38 = 0uLL;
            if (v322)
            {
              v323 = v472;
LABEL_920:
              v388 = *v323;
LABEL_924:
              v387 = &v388[v322];
LABEL_925:
              if (v387)
              {
LABEL_935:
                v505 = v321;
                *v316 = v387;
                v47 = &v387[*(v316 + 2)];
                goto LABEL_936;
              }
            }
          }
        }

        *(v320 + 14) = v317;
        v390 = *(v486 + 24);
        if (v390)
        {
          v391 = xmmword_24BC06060;
          v392 = 34;
          v393 = v546;
          do
          {
            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), v391)).u8[0])
            {
              *(v393 - 5) = 0;
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v391)).i32[1])
            {
              *v393 = 0;
            }

            v391 = vaddq_s64(v391, vdupq_n_s64(2uLL));
            v393 += 10;
            v392 -= 2;
          }

          while (v392);
          v387 = v390(v318, v320, *(v319 + 2), v391);
          v38 = 0uLL;
          if (v387)
          {
            v321 = &v387[*(v320 + 35)];
            goto LABEL_935;
          }
        }

LABEL_1081:
        sub_24BBEDB70(-1, 0);
      case 0x1Eu:
        v72 = v67;
        v105 = 0;
        goto LABEL_220;
      case 0x1Fu:
        v72 = v67;
        v105 = 1;
LABEL_220:
        v517 = 0;
        v516 = 0;
        v509 = 0;
        v127 = ((v71 - v518) >> 2) - 4;
        if (((v71 - v518) >> 2) < 4)
        {
          goto LABEL_236;
        }

        v128 = 0;
        v129 = (((v71 - v518) >> 2) & 0x7FFFFFFF) - 5;
        v130 = v518 + 2;
        break;
      default:
        if (v71 >= &v533)
        {
          sub_24BBEDB70(-1, 0);
        }

        *v71 = (v69 << 16) - 9109504;
        if (v69 < 0xF7)
        {
          goto LABEL_914;
        }

        if (v69 > 0xFA)
        {
          if (v69 == 255)
          {
            if (v47 >= v68)
            {
              sub_24BBEDB70(-1, 0);
            }

            if ((v47 + 1) >= v68)
            {
              sub_24BBEDB70(-1, 0);
            }

            if ((v47 + 2) >= v68)
            {
              sub_24BBEDB70(-1, 0);
            }

            if ((v47 + 3) >= v68)
            {
              sub_24BBEDB70(-1, 0);
            }

            v352 = v47 + 4;
            v353 = v47[3] | (((*v47 << 16) | (v47[1] << 8) | v47[2]) << 8);
            v354 = *(v504 + 480);
            if (v354 == 1 && (v353 + 32000) <= 0xFA00)
            {
              *v71 = v353 << 16;
            }

            else
            {
              *v71 = v353;
              v398 = v463;
              if (v354 == 1)
              {
                v398 = 1;
              }

              v463 = v398;
            }

            goto LABEL_915;
          }

          if (v47 >= v68)
          {
            sub_24BBEDB70(-1, 0);
          }

          v386 = *v47++;
          v143 = -7077888 - ((((v69 << 8) + 1280) | v386) << 16);
        }

        else
        {
          if (v47 >= v68)
          {
            sub_24BBEDB70(-1, 0);
          }

          v142 = *v47++;
          v143 = ((((v69 << 8) + 2304) | v142) << 16) + 7077888;
        }

        *v71 = v143;
LABEL_914:
        v352 = v47;
LABEL_915:
        v66 = v71 + 1;
        v47 = v352;
        v64 = v67;
        v65 = v508;
        continue;
    }

    break;
  }

  while (1)
  {
    if (v105)
    {
      v136 = *(v130 - 1);
      LODWORD(v517) = v515.i32[0] + *(v130 - 2);
      HIDWORD(v517) = v515.i32[1];
      v137 = v136 + v517;
      v138 = *v130;
      v139 = v130[1];
      LODWORD(v516) = v137;
      HIDWORD(v516) = v138 + v515.i32[1];
      HIDWORD(v509) = v139 + v138 + v515.i32[1];
      LODWORD(v509) = v137;
      v105 = 0;
      if (v129 == v128)
      {
        LODWORD(v509) = v130[2] + v137;
      }
    }

    else
    {
      v131 = *(v130 - 1);
      v132 = v515.i32[1] + *(v130 - 2);
      v517 = __PAIR64__(v132, v515.u32[0]);
      v133 = v131 + v515.i32[0];
      v134 = v130[1];
      v135 = *v130 + v132;
      v516 = __PAIR64__(v135, v133);
      LODWORD(v509) = v134 + v133;
      HIDWORD(v509) = v135;
      if (v129 == v128)
      {
        HIDWORD(v509) = v130[2] + v135;
      }

      v105 = 1;
    }

    v515 = v509;
    if (qword_28151C1D0 == sub_24BBFCB98)
    {
      break;
    }

    if (!dword_28151C1F8)
    {
      sub_24BBFD2E4(v499, v517);
      sub_24BBFD2E4(v516, v509);
      v38 = 0uLL;
      v499 = v515;
      goto LABEL_235;
    }

    if ((v506 & 1) == 0)
    {
      v498(&v517, &v517);
      v498(&v516, &v516);
      v498(&v509, &v509);
LABEL_233:
      (*(v503 + 24))(&v513, &v517, &v516, &v509, v502);
      v38 = 0uLL;
    }

LABEL_235:
    v513 = v509;
    v128 += 4;
    v130 += 4;
    if (v127 < v128)
    {
LABEL_236:
      LODWORD(v496) = 0;
LABEL_903:
      v64 = v72;
      goto LABEL_904;
    }
  }

  LODWORD(v517) = sub_24BBFD400(qword_28151C1C0, v517);
  HIDWORD(v517) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v517));
  LODWORD(v516) = sub_24BBFD400(qword_28151C1C0, v516);
  HIDWORD(v516) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v516));
  LODWORD(v509) = sub_24BBFD400(qword_28151C1C0, v509);
  HIDWORD(v509) = sub_24BBFD400(qword_28151C1C8, SHIDWORD(v509));
  goto LABEL_233;
}