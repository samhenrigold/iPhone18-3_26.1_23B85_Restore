void sub_121D0E4(_Unwind_Exception *a1)
{
  if (v1[126])
  {
    operator delete[]();
  }

  sub_121F5D8(v4);
  sub_121E6F4(v1 + 93);
  if (*v6)
  {
    operator delete[]();
  }

  if (*v5)
  {
    operator delete[]();
  }

  sub_121D16C(v3);
  sub_121D16C(v2);
  sub_121D16C(v1);
  _Unwind_Resume(a1);
}

void *sub_121D16C(void *a1)
{
  if (a1[20])
  {
    operator delete[]();
  }

  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[8])
  {
    operator delete[]();
  }

  if (*a1)
  {
    operator delete[]();
  }

  return a1;
}

void *sub_121D1E4(void *a1)
{
  sub_121CCFC((a1 + 137));
  if (a1[126])
  {
    operator delete[]();
  }

  sub_121F5D8(a1 + 125);
  if (a1[119])
  {
    operator delete[]();
  }

  if (a1[113])
  {
    operator delete[]();
  }

  if (a1[107])
  {
    operator delete[]();
  }

  if (a1[99])
  {
    operator delete[]();
  }

  if (a1[93])
  {
    operator delete[]();
  }

  if (a1[84])
  {
    operator delete[]();
  }

  if (a1[78])
  {
    operator delete[]();
  }

  if (a1[72])
  {
    operator delete[]();
  }

  if (a1[66])
  {
    operator delete[]();
  }

  if (a1[60])
  {
    operator delete[]();
  }

  if (a1[52])
  {
    operator delete[]();
  }

  if (a1[46])
  {
    operator delete[]();
  }

  if (a1[40])
  {
    operator delete[]();
  }

  if (a1[34])
  {
    operator delete[]();
  }

  if (a1[26])
  {
    operator delete[]();
  }

  if (a1[20])
  {
    operator delete[]();
  }

  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[8])
  {
    operator delete[]();
  }

  if (*a1)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t *sub_121D368(uint64_t a1, uint64_t a2)
{
  sub_121DEA8(a1, a2);
  sub_121DEA8((a1 + 208), (a2 + 208));
  sub_121DEA8((a1 + 416), (a2 + 416));
  sub_121DF20((a1 + 624), (a2 + 624));
  sub_121DF20((a1 + 672), (a2 + 672));
  v4 = *(a1 + 720);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = v4;
  LODWORD(v4) = *(a1 + 728);
  *(a1 + 728) = *(a2 + 728);
  *(a2 + 728) = v4;
  v5 = *(a1 + 736);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 736) = v5;
  sub_121F6C4((a1 + 744), (a2 + 744));
  v6 = *(a1 + 1000);
  *(a1 + 1000) = *(a2 + 1000);
  *(a2 + 1000) = v6;
  sub_121DF20((a1 + 1008), (a2 + 1008));
  v7 = *(a1 + 1056);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = v7;
  v8 = *(a1 + 1064);
  *(a1 + 1064) = *(a2 + 1064);
  *(a2 + 1064) = v8;
  v9 = *(a1 + 1072);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = v9;
  v10 = *(a1 + 1080);
  *(a1 + 1080) = *(a2 + 1080);
  *(a2 + 1080) = v10;
  LODWORD(v9) = *(a1 + 1088);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = v9;

  return sub_121CD00((a1 + 1096), (a2 + 1096));
}

void *sub_121D480(uint64_t a1, uint64_t *a2)
{
  sub_121D508(v5, a2);
  sub_121CFAC(v5);
  sub_121D5C8(v5, a2);
  sub_121CD00(v6, a2);
  sub_121D368(a1, v5);
  return sub_121D1E4(v5);
}

_BYTE *sub_121D508(uint64_t a1, uint64_t *a2)
{
  result = sub_121CED0(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = aWeLoveMarisa[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
  }

  return result;
}

double sub_121D5C8(uint64_t a1, uint64_t *a2)
{
  sub_121E010(a1, a2);
  sub_121E010((a1 + 208), a2);
  sub_121E010((a1 + 416), a2);
  sub_121E0DC((a1 + 624), a2);
  sub_121E19C((a1 + 672), a2);
  sub_121F704((a1 + 744), a2);
  if (*(a1 + 472) && !*(a1 + 768))
  {
    v4 = operator new(0x470uLL, &std::nothrow);
    v5 = v4;
    if (v4)
    {
      sub_121CFAC(v4);
    }

    sub_121DF74((a1 + 1000), v5);
    v6 = *(a1 + 1000);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &off_26782D0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x80000021ELL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:542: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    sub_121D5C8(v6, a2);
  }

  sub_121E298((a1 + 1008), a2);
  *(a1 + 1056) = *(a1 + 1032) - 1;
  *(a1 + 1064) = *sub_121CED0(a2, 4uLL);
  v7 = *sub_121CED0(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  sub_121E778(&v10, v7);
  *(a1 + 1072) = v10;
  result = v11;
  *(a1 + 1080) = v11;
  *(a1 + 1088) = v12;
  return result;
}

uint64_t *sub_121D780(uint64_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < (v4 + 1))
  {
    v7 = 2 * v5;
    if (v5 < 0)
    {
      v7 = -1;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_121EA28(result, v8);
    v4 = v3[3];
  }

  *(v3[1] + v4) = *a2;
  ++v3[3];
  return result;
}

uint64_t sub_121D7EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v4 + 108);
  if (v5 == 2)
  {
    do
    {
      while (1)
      {
LABEL_10:
        v10 = *(v4 + 104);
        if (*(v4 + 72) == v10)
        {
          v11 = *(v4 + 56) + 20 * v10;
          *v30 = xmmword_22A7520;
          *&v30[16] = -1;
          v12 = sub_121FBD8(a1, *(v11 - 20));
          *&v30[4] = v12 + 1;
          *v30 = v12 - *(v11 - 20);
          sub_121DDCC((v4 + 48), v30);
          LODWORD(v10) = *(v4 + 104);
        }

        v13 = (*(v4 + 56) + 20 * v10);
        v14 = v13[1];
        v15 = *(*(a1 + 16) + ((v14 >> 3) & 0x1FFFFFF8));
        v13[1] = v14 + 1;
        if ((v15 >> v14))
        {
          break;
        }

        if (v10 == 1)
        {
LABEL_7:
          result = 0;
          *(v4 + 108) = 4;
          return result;
        }

        ++*(v13 - 5);
        sub_121DE58(v4, *(v13 - 8));
        --*(v4 + 104);
      }

      *(v4 + 104) = v10 + 1;
      v16 = *v13;
      if ((*(*(a1 + 432) + ((v16 >> 3) & 0x1FFFFFF8)) >> v16))
      {
        v17 = v13[3];
        if (v17 == -1)
        {
          v18 = sub_121FADC(a1 + 416, v16);
          v16 = *v13;
        }

        else
        {
          v18 = v17 + 1;
        }

        v13[3] = v18;
        v19 = *(a1 + 720);
        v20 = v19 * v18;
        v21 = (v20 & 0x3F) + v19;
        v22 = (*(a1 + 688) + 8 * (v20 >> 6));
        v23 = *v22;
        if (v21 > 0x40)
        {
          v24 = ((2 * v22[1]) << ~v20) | (v23 >> v20);
        }

        else
        {
          v24 = v23 >> (v20 & 0x3F);
        }

        v25 = *(*(a1 + 640) + v16) | ((*(a1 + 728) & v24) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          sub_121E358(v26, a2, v25);
        }

        else
        {
          sub_121F840((a1 + 744), a2, v25);
        }
      }

      else
      {
        v30[0] = *(*(a1 + 640) + v16);
        sub_121D780(v4, v30);
      }

      v27 = *(v4 + 24);
      v13[2] = v27;
      v28 = *v13;
    }

    while (((*(*(a1 + 224) + ((v28 >> 3) & 0x1FFFFFF8)) >> v28) & 1) == 0);
    v29 = v13[4];
    if (v29 == -1)
    {
      v9 = sub_121FADC(a1 + 208, v28);
      v27 = *(v4 + 24);
    }

    else
    {
      v9 = v29 + 1;
    }

    v13[4] = v9;
    *(a2 + 24) = *(v4 + 8);
    *(a2 + 32) = v27;
  }

  else
  {
    if (v5 == 4)
    {
      return 0;
    }

    sub_121DAE8(*(a2 + 40));
    while (*(a2 + 8) > *(v4 + 100))
    {
      if ((sub_121DB68(a1, a2) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *&v30[12] = -1;
    *v30 = *(v4 + 96);
    *&v30[8] = *(v4 + 24);
    sub_121DDCC((v4 + 48), v30);
    *(v4 + 104) = 1;
    v7 = *(v4 + 96);
    if (((*(*(a1 + 224) + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = *(v4 + 24);
    *(a2 + 24) = *(v4 + 8);
    *(a2 + 32) = v8;
    v9 = sub_121FADC(a1 + 208, v7);
  }

  *(a2 + 36) = v9;
  return 1;
}

double sub_121DAE8(uint64_t a1)
{
  *(a1 + 24) = 0;
  v2 = *(a1 + 32);
  if (v2 <= 0x3F)
  {
    if (v2 <= 0x20)
    {
      v3 = 64;
    }

    else
    {
      v3 = 2 * v2;
    }

    sub_121EA28(a1, v3);
  }

  sub_121EAC0((a1 + 48), 0);
  v4 = *(a1 + 80);
  if (v4 <= 3)
  {
    if (v4 == 3)
    {
      v5 = 6;
    }

    else
    {
      v5 = 4;
    }

    sub_121EB58((a1 + 48), v5);
  }

  result = 0.0;
  *(a1 + 96) = xmmword_22B2F00;
  return result;
}

uint64_t sub_121DB68(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v5 = *(v4 + 96);
  v6 = (*(*a2 + *(v4 + 100)) ^ (32 * v5) ^ v5) & *(a1 + 1056);
  v7 = (*(a1 + 1024) + 12 * v6);
  if (v5 != *v7)
  {
    v9 = sub_121FBD8(a1, v5);
    v10 = *(a1 + 16);
    if ((*(v10 + (((v9 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 1)))
    {
      v11 = v9 - *(v4 + 96);
      *(v4 + 96) = v11;
      v12 = v9 + 2;
      v13 = 0xFFFFFFFFLL;
      while (1)
      {
        v14 = v11;
        if ((*(*(a1 + 432) + ((v11 >> 3) & 0x1FFFFFF8)) >> v11))
        {
          if (v13 == 0xFFFFFFFFLL)
          {
            v13 = sub_121FADC(a1 + 416, v11);
            v14 = *(v4 + 96);
          }

          else
          {
            ++v13;
          }

          v15 = *(v4 + 100);
          v16 = *(a1 + 720);
          v17 = v16 * v13;
          v18 = (v16 * v13) & 0x3F;
          v19 = v18 + v16;
          v20 = (*(a1 + 688) + 8 * ((v16 * v13) >> 6));
          v21 = *v20;
          if (v19 > 0x40)
          {
            v22 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
          }

          else
          {
            v22 = v21 >> v18;
          }

          v23 = *(*(a1 + 640) + v14) | ((*(a1 + 728) & v22) << 8);
          v24 = *(a1 + 1000);
          if (v24)
          {
            if (sub_121E4EC(v24, a2, v23))
            {
              return 1;
            }
          }

          else if (sub_121F8CC((a1 + 744), a2, v23))
          {
            return 1;
          }

          if (*(v4 + 100) != v15)
          {
            return 0;
          }

          v11 = *(v4 + 96);
          v10 = *(a1 + 16);
        }

        else if (*(*(a1 + 640) + v11) == *(*a2 + *(v4 + 100)))
        {
          v28 = *(*(a1 + 640) + v11);
          sub_121D780(v4, &v28);
          ++*(v4 + 100);
          return 1;
        }

        *(v4 + 96) = ++v11;
        v25 = *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12;
        ++v12;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v8 = v7[2];
  if (v8 > 0xFFFFFEFF)
  {
    v29 = v7[2];
    sub_121D780(v4, &v29);
    ++*(v4 + 100);
    goto LABEL_25;
  }

  v26 = *(a1 + 1000);
  if (v26)
  {
    if (sub_121E4EC(v26, a2, v8))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!sub_121F8CC((a1 + 744), a2, v8))
  {
    return 0;
  }

LABEL_25:
  *(v4 + 96) = *(*(a1 + 1024) + 12 * v6 + 4);
  return 1;
}

__n128 sub_121DDCC(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x666666666666666)
    {
      v7 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    sub_121EB58(a1, v8);
    v4 = a1[3];
  }

  v9 = (a1[1] + 20 * v4);
  result = *a2;
  v9[1].n128_u32[0] = a2[1].n128_u32[0];
  *v9 = result;
  ++a1[3];
  return result;
}

uint64_t *sub_121DE58(uint64_t *result, size_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if ((v4 & 0x8000000000000000) != 0)
    {
      v5 = -1;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_121EA28(result, a2);
  }

  v3[3] = v2;
  return result;
}

uint64_t *sub_121DEA8(uint64_t *a1, uint64_t *a2)
{
  sub_121DF20(a1, a2);
  v4 = a1[6];
  a1[6] = a2[6];
  a2[6] = v4;
  v5 = a1[7];
  a1[7] = a2[7];
  a2[7] = v5;
  sub_121DF20(a1 + 8, a2 + 8);
  sub_121DF20(a1 + 14, a2 + 14);

  return sub_121DF20(a1 + 20, a2 + 20);
}

uint64_t *sub_121DF20(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

void **sub_121DF74(uint64_t *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return sub_121F5D8(&v4);
}

uint64_t sub_121E010(uint64_t *a1, uint64_t *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_121EC00(v4, a2);
  sub_121DEA8(a1, v4);
  if (v9)
  {
    operator delete[]();
  }

  if (v7)
  {
    operator delete[]();
  }

  if (v5)
  {
    operator delete[]();
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_121E0DC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F61C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121E174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121E19C(__int128 *a1, uint64_t *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_121F50C(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121E270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121E298(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F16C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121E330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_121E358(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 40);
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 1056) & a3;
      v8 = *(a1 + 1024) + 12 * v7;
      if (a3 != *(v8 + 4))
      {
        break;
      }

      v9 = *(v8 + 8);
      if (v9 <= 0xFFFFFEFF)
      {
        v20 = *(a1 + 1000);
        if (v20)
        {
          result = sub_121E358(v20, a2, v9);
        }

        else
        {
          result = sub_121F840((a1 + 744), a2, v9);
        }
      }

      else
      {
        v24 = *(v8 + 8);
        result = sub_121D780(v6, &v24);
      }

      a3 = *(*(a1 + 1024) + 12 * v7);
      if (!a3)
      {
        return result;
      }
    }

    if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v11 = *(*(a1 + 640) + a3);
      v12 = sub_121FADC(a1 + 416, a3);
      v13 = *(a1 + 720);
      v14 = v13 * v12;
      v15 = (v13 * v12) & 0x3F;
      v16 = v15 + v13;
      v17 = (*(a1 + 688) + 8 * ((v13 * v12) >> 6));
      v18 = *v17;
      v19 = v16 > 0x40 ? ((2 * v17[1]) << ~v14) | (v18 >> v14) : v18 >> v15;
      v21 = v11 | ((*(a1 + 728) & v19) << 8);
      v22 = *(a1 + 1000);
      result = v22 ? sub_121E358(v22, a2, v21) : sub_121F840((a1 + 744), a2, v21);
    }

    else
    {
      v23 = *(*(a1 + 640) + a3);
      result = sub_121D780(v6, &v23);
    }

    if (a3 <= *(a1 + 1064))
    {
      break;
    }

    a3 = sub_121FE3C(a1, a3) + ~a3;
  }

  return result;
}

uint64_t sub_121E4EC(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2[5];
  while (1)
  {
    v7 = *(a1 + 1056) & a3;
    v8 = *(a1 + 1024) + 12 * v7;
    if (a3 != *(v8 + 4))
    {
      v10 = *(*(a1 + 640) + a3);
      if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        v11 = sub_121FADC(a1 + 416, a3);
        v12 = *(a1 + 720);
        v13 = v12 * v11;
        v14 = (v12 * v11) & 0x3F;
        v15 = v14 + v12;
        v16 = (*(a1 + 688) + 8 * ((v12 * v11) >> 6));
        v17 = *v16;
        if (v15 > 0x40)
        {
          v18 = ((2 * v16[1]) << ~v13) | (v17 >> v13);
        }

        else
        {
          v18 = v17 >> v14;
        }

        v20 = v10 | ((*(a1 + 728) & v18) << 8);
        v21 = *(a1 + 1000);
        if (v21)
        {
          if ((sub_121E4EC(v21, a2, v20) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!sub_121F8CC((a1 + 744), a2, v20))
        {
          return 0;
        }
      }

      else
      {
        if (v10 != *(*a2 + *(v6 + 100)))
        {
          return 0;
        }

        v23 = *(*(a1 + 640) + a3);
        sub_121D780(v6, &v23);
        ++*(v6 + 100);
      }

      if (a3 <= *(a1 + 1064))
      {
        return 1;
      }

      a3 = sub_121FE3C(a1, a3) + ~a3;
      goto LABEL_23;
    }

    v9 = *(v8 + 8);
    if (v9 > 0xFFFFFEFF)
    {
      if (*(*a2 + *(v6 + 100)) != v9)
      {
        return 0;
      }

      v24 = *(v8 + 8);
      sub_121D780(v6, &v24);
      ++*(v6 + 100);
      goto LABEL_22;
    }

    v19 = *(a1 + 1000);
    if (!v19)
    {
      break;
    }

    if ((sub_121E4EC(v19, a2, v9) & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    a3 = *(*(a1 + 1024) + 12 * v7);
    if (!a3)
    {
      return 1;
    }

LABEL_23:
    if (a2[1] <= *(v6 + 100))
    {
      sub_121E358(a1, a2, a3);
      return 1;
    }
  }

  if (sub_121F8CC((a1 + 744), a2, v9))
  {
    goto LABEL_22;
  }

  return 0;
}

void *sub_121E6F4(void *a1)
{
  if (a1[26])
  {
    operator delete[]();
  }

  if (a1[20])
  {
    operator delete[]();
  }

  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[6])
  {
    operator delete[]();
  }

  if (*a1)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_121E778(uint64_t *a1, uint64_t a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x50000003BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:59: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
  }

  v2 = a2;
  if ((a2 & 0x7F) != 0)
  {
    *a1 = a2 & 0x7F;
  }

  sub_121E840(a1, a2);
  sub_121E900(a1, v2);

  return sub_121E994(a1, v2);
}

uint64_t sub_121E840(uint64_t result, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000065;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:101: MARISA_CODE_ERROR: undefined cache level";
  }

LABEL_11:
  *(result + 8) = v3;
  return result;
}

uint64_t sub_121E900(uint64_t result, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &off_26782D0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000079;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:121: MARISA_CODE_ERROR: undefined tail mode";
    }

    v2 = 0x2000;
  }

  *(result + 12) = v2;
  return result;
}

uint64_t sub_121E994(uint64_t result, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &off_26782D0;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008DLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:141: MARISA_CODE_ERROR: undefined node order";
    }

    v2 = 0x10000;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *sub_121EA28(uint64_t *a1, size_t __sz)
{
  result = operator new[](__sz, &std::nothrow);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = __sz;
  if (v9)
  {

    operator delete[]();
  }

  return result;
}

uint64_t *sub_121EAC0(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0x666666666666666)
    {
      v5 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_121EB58(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = (v3[1] + 20 * v6 + 16);
    do
    {
      *(v8 - 1) = xmmword_22A7520;
      *v8 = -1;
      v8 += 5;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

_DWORD *sub_121EB58(uint64_t *a1, uint64_t a2)
{
  result = operator new[](20 * a2, &std::nothrow);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[4] = *(v6 + 16);
      *v7 = v8;
      v7 += 5;
      v6 += 20;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    operator delete[]();
  }

  return result;
}

uint64_t sub_121EC00(uint64_t a1, uint64_t *a2)
{
  sub_121ECEC(a1, a2);
  *(a1 + 48) = *sub_121CED0(a2, 4uLL);
  v4 = *sub_121CED0(a2, 4uLL);
  if (*(a1 + 48) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h";
    exception[2] = 0xA00000087;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h:135: MARISA_FORMAT_ERROR: temp_num_1s > size_";
  }

  *(a1 + 56) = v4;
  sub_121EDAC((a1 + 64), a2);
  sub_121EE6C((a1 + 112), a2);

  return sub_121EE6C((a1 + 160), a2);
}

uint64_t sub_121ECEC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121EF2C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121ED84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121EDAC(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F16C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121EE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121EE6C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F34C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121EF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121EF2C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = v4 >> 3;
  sub_121F008(a2, (a1 + 16), v4 >> 3);
  sub_121CDF4(a2, 0);
  *(a1 + 24) = v5;

  return sub_121F0E8(a1);
}

uint64_t sub_121F008(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = sub_121CED0(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_121F0E8(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0x10000006BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:107: MARISA_STATE_ERROR: fixed_";
  }

  *(result + 40) = 1;
  return result;
}

uint64_t sub_121F16C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  sub_121F25C(a2, (a1 + 16), v5);
  sub_121CDF4(a2, -v4 & 7);
  *(a1 + 24) = v5;

  return sub_121F0E8(a1);
}

uint64_t sub_121F25C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = sub_121CED0(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_121F34C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  sub_121F42C(a2, (a1 + 16), v4 >> 2);
  sub_121CDF4(a2, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return sub_121F0E8(a1);
}

uint64_t sub_121F42C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = sub_121CED0(a1, 4 * a3);
  *a2 = result;
  return result;
}

void *sub_121F50C(uint64_t a1, uint64_t *a2)
{
  sub_121ECEC(a1, a2);
  v4 = *sub_121CED0(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h:134: MARISA_FORMAT_ERROR: temp_value_size > 32";
  }

  *(a1 + 48) = v4;
  *(a1 + 56) = *sub_121CED0(a2, 4uLL);
  result = sub_121CED0(a2, 8uLL);
  *(a1 + 64) = *result;
  return result;
}

void **sub_121F5D8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_121D1E4(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_121F61C(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_121CED0(a2, 8uLL);
  *(a1 + 16) = sub_121CED0(a2, v4);
  sub_121CDF4(a2, -v4 & 7);
  *(a1 + 24) = v4;

  return sub_121F0E8(a1);
}

double sub_121F690(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *(a1 + 73) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  *(a1 + 185) = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  *(a1 + 233) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  *(a1 + 137) = 0u;
  return result;
}

uint64_t *sub_121F6C4(uint64_t *a1, uint64_t *a2)
{
  sub_121DF20(a1, a2);

  return sub_121DEA8(a1 + 6, a2 + 6);
}

uint64_t sub_121F704(__int128 *a1, uint64_t *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_121FA1C(v8, a2);
  sub_121E010(v9, a2);
  v4 = *a1;
  *a1 = v8[0];
  v8[0] = v4;
  v5 = *(a1 + 2);
  *(a1 + 2) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  sub_121DEA8(a1 + 6, v9);
  if (v14)
  {
    operator delete[]();
  }

  if (v12)
  {
    operator delete[]();
  }

  if (v10)
  {
    operator delete[]();
  }

  if (*&v9[0])
  {
    operator delete[]();
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    operator delete[]();
  }

  return result;
}

uint64_t *sub_121F840(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *(a2 + 40);
  if (result[12])
  {
    do
    {
      result = sub_121D780(v5, (v4[2] + v3));
      v6 = *(v4[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = (result[2] + a3);
    if (*v7)
    {
      do
      {
        result = sub_121D780(v5, v7);
      }

      while (*++v7);
    }
  }

  return result;
}

BOOL sub_121F8CC(void *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v6 = a2[5];
  if (a1[12])
  {
    v7 = *(v6 + 100);
    while (1)
    {
      v8 = a1[2];
      v9 = *(v8 + v3);
      v10 = *(*a2 + v7);
      v11 = v9 == v10;
      if (v9 != v10)
      {
        break;
      }

      sub_121D780(v6, (v8 + v3));
      v7 = *(v6 + 100) + 1;
      *(v6 + 100) = v7;
      if ((*(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      if (a2[1] <= v7)
      {
        do
        {
          sub_121D780(v6, (a1[2] + v3));
          v12 = *(a1[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
          ++v3;
        }

        while ((v12 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v15 = a1[2] + a3;
    v13 = (v15 - *(v6 + 100));
    v14 = *v15;
    LODWORD(v15) = *(v6 + 100);
    while (1)
    {
      v16 = *(*a2 + v15);
      v11 = v14 == v16;
      if (v14 != v16)
      {
        break;
      }

      sub_121D780(v6, &v13[v15]);
      v15 = (*(v6 + 100) + 1);
      *(v6 + 100) = v15;
      v14 = v13[v15];
      if (!v13[v15])
      {
        break;
      }

      if (a2[1] <= v15)
      {
        v17 = &v13[v15];
        do
        {
          sub_121D780(v6, v17);
        }

        while (*++v17);
        return 1;
      }
    }
  }

  return v11;
}

uint64_t sub_121FA1C(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_121F61C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    operator delete[]();
  }

  return result;
}

void sub_121FAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_121FADC(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 80) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(a1 + 16) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

uint64_t sub_121FBD8(void *a1, unint64_t a2)
{
  v2 = (a1[16] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = a2 - (v3 << 9) + *v11;
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = v13 + v19 - 448;
      }

      else
      {
        v14 |= 6uLL;
        v13 = v13 + v17 - 384;
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = v13 + (v16 & 0x1FF) - 320;
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v12 >> 23) + v13 - 256;
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = v13 + v18 - 192;
    }

    else
    {
      v14 |= 2uLL;
      v13 = v13 + (v12 >> 7) - 128;
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = v15 + v13 - 64;
    }
  }

  return sub_121FDB4(v13, v14 << 6, ~*(a1[2] + 8 * v14));
}

uint64_t sub_121FDB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * a1 - 0x101010101010101) >> 7) & 0x101010101010101));
  return v5 + a2 + asc_22B2F20[256 * (a1 - ((0x101010101010100 * v4) >> v5)) + (a3 >> v5)];
}

uint64_t sub_121FE3C(void *a1, unint64_t a2)
{
  v2 = (a1[22] + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = a1[10];
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = v12 - v25;
    }

    else
    {
      v29 = v12 - v26;
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = v12 - v23;
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = v12 - v30;
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = v12 - (v11 >> 7);
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = v12 - v15;
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = v12 - v18;
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }

  return sub_121FDB4(v21, v22 << 6, *(a1[2] + 8 * v22));
}

void **sub_121FFB4(void **a1, uint64_t a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &off_26782D0;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, &std::nothrow);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &off_26782D0;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  sub_121D1E0(v6);
  v13 = v7;
  sub_121CC98(v12);
  sub_121CD44(v12, a2, a3);
  sub_121D480(v13, v12);
  v8 = *a1;
  *a1 = v13;
  v13 = v8;
  sub_121CCFC(v12);
  return sub_121F5D8(&v13);
}

void sub_1220120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_121F5D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1220160(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (!*(a2 + 40))
    {
      sub_121CA34(a2);
      result = *a1;
    }

    return sub_121D7EC(result, a2);
  }

  return result;
}

void sub_12201C0(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v14 = [NSData dataWithBytes:v6 length:v7];
  v8 = [v14 base64EncodedDataWithOptions:0];
  sub_194E7E8(a3, [v8 bytes], objc_msgSend(v8, "length"));
  if (a2)
  {
    v9 = *(a3 + 23);
    v10 = *a3;
    v11 = a3[1];
    if (v9 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v9 >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = a3[1];
    }

    if (v13)
    {
      do
      {
        if (*v12 == 43)
        {
          *v12 = 45;
        }

        ++v12;
        --v13;
      }

      while (v13);
      v9 = *(a3 + 23);
      v10 = *a3;
      v11 = a3[1];
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = v11;
    }

    else
    {
      v10 = a3;
    }

    for (; v9; --v9)
    {
      if (*v10 == 47)
      {
        *v10 = 95;
      }

      ++v10;
    }
  }
}

void sub_122030C(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_325C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v16 = *(a1 + 16);
  }

  v5 = __p[0];
  if (a2)
  {
    v6 = SHIBYTE(v16);
    v7 = __p;
    if (v16 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = __p[1];
    if (v16 >= 0)
    {
      v10 = SHIBYTE(v16);
    }

    else
    {
      v10 = __p[1];
    }

    if (v10)
    {
      do
      {
        if (*v8 == 45)
        {
          *v8 = 43;
        }

        v8 = (v8 + 1);
        v10 = v10 - 1;
      }

      while (v10);
      v6 = HIBYTE(v16);
      v5 = __p[0];
      v9 = __p[1];
    }

    if ((v6 & 0x80u) != 0)
    {
      v7 = v5;
      v6 = v9;
    }

    if (v6)
    {
      do
      {
        if (*v7 == 95)
        {
          *v7 = 47;
        }

        v7 = (v7 + 1);
        --v6;
      }

      while (v6);
      v5 = __p[0];
    }
  }

  if (v16 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = v5;
  }

  if (v16 >= 0)
  {
    v12 = HIBYTE(v16);
  }

  else
  {
    v12 = __p[1];
  }

  v13 = [NSData dataWithBytes:v11 length:v12, __p[0]];
  v14 = [[NSData alloc] initWithBase64EncodedData:v13 options:0];
  sub_194E7E8(a3, [v14 bytes], objc_msgSend(v14, "length"));

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1220474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_12204A8(const void *a1, CC_LONG a2)
{
  *md = 0;
  v13 = 0;
  v14 = 0;
  CC_SHA1(a1, a2, md);
  sub_19594F8(&v7);
  v2 = v7;
  v3 = (&v7 + *(*&v7 - 24));
  if (v3[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v3);
    v4 = std::locale::use_facet(&v11, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v11);
    v2 = v7;
  }

  v5 = 0;
  v3[1].__fmtflags_ = 48;
  *(&v7 + *(*&v2 - 24) + 8) = *(&v7 + *(*&v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v7 + *(*&v2 - 24) + 8) |= 0x4000u;
  do
  {
    *(&v9[1].__locale_ + *(*&v7 - 24)) = (&dword_0 + 2);
    std::ostream::operator<<();
    ++v5;
  }

  while (v5 != 20);
  std::stringbuf::str();
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1220764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::locale::~locale((v23 - 104));
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_12207A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_12208C4(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_195CB10(a1);
  return a1;
}

void sub_1220958(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1220984(std::runtime_error *a1)
{
  sub_12209BC(a1);

  operator delete();
}

void sub_12209BC(std::runtime_error *this)
{
  this->__vftable = &off_2678310;
  imp = this[1].__imp_.__imp_;
  if (imp)
  {
    sub_1220A18(imp);
  }

  std::runtime_error::~runtime_error(this);
}

void sub_1220A18(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

unint64_t sub_1220A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_AAD8(&v5, a2, v3);
}

BOOL sub_1220AC4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t sub_1220B3C(std::runtime_error_vtbl **a1, _DWORD *a2)
{
  v3 = *a1;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_3608D0(&v9, "Cannot convert datum to int");
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v8;
    exception[1].__imp_.__imp_ = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }
  }

  result = (*(v3->~runtime_error + 5))(v3);
  *a2 = result;
  return result;
}

void sub_1220C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v15);
  goto LABEL_8;
}

double sub_1220C7C(std::runtime_error_vtbl **a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_3608D0(&v9, "Cannot convert datum to string");
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v8;
    exception[1].__imp_.__imp_ = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }
  }

  (*(v3->~runtime_error + 11))(&v9);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v9.__r_.__value_.__l.__data_;
  *a2 = v9;
  return result;
}

void sub_1220D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v15);
  goto LABEL_8;
}

uint64_t sub_1220DDC(std::runtime_error_vtbl **a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_3608D0(&v9, "Cannot convert datum to BOOLean");
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &v9);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v8;
    exception[1].__imp_.__imp_ = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->~runtime_error_0, 1uLL, memory_order_relaxed);
    }
  }

  result = (*(v3->~runtime_error + 10))(v3);
  *a2 = result;
  return result;
}

void sub_1220ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v15);
  goto LABEL_8;
}

BOOL sub_1220F1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = 0;
    }

    v9 = v4;
    sub_1220B3C(&v9, a3);
    if (v10)
    {
      sub_1220A18(v10);
    }

    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  if (v8)
  {
    sub_1220A18(v8);
  }

  return v4 != 0;
}

void sub_1220FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::string *a12, std::string *a13, uint64_t a14, __int128 a15, std::string::size_type a16, uint64_t a17, __int128 a18, std::string::size_type a19)
{
  v23 = *(v20 - 56);
  if (v23)
  {
    sub_1220A18(v23);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v26 = std::string::append(&a12, "': ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    a16 = v26->__r_.__value_.__r.__words[2];
    a15 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = (*(*v24 + 16))(v24);
    v29 = std::string::append(&a15, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    a19 = v29->__r_.__value_.__r.__words[2];
    a18 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = v24[2];
    v31 = v24[3];
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &a18);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v32;
    exception[1].__imp_.__imp_ = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_12211CC(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = sub_1220F1C(a1, a2, a3);
  if (!result)
  {
    *a3 = *a4;
  }

  return result;
}

BOOL sub_1221200(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = 0;
    }

    v9 = v4;
    sub_1220DDC(&v9, a3);
    if (v10)
    {
      sub_1220A18(v10);
    }

    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  if (v8)
  {
    sub_1220A18(v8);
  }

  return v4 != 0;
}

void sub_12212CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::string *a12, std::string *a13, uint64_t a14, __int128 a15, std::string::size_type a16, uint64_t a17, __int128 a18, std::string::size_type a19)
{
  v23 = *(v20 - 56);
  if (v23)
  {
    sub_1220A18(v23);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v26 = std::string::append(&a12, "': ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    a16 = v26->__r_.__value_.__r.__words[2];
    a15 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = (*(*v24 + 16))(v24);
    v29 = std::string::append(&a15, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    a19 = v29->__r_.__value_.__r.__words[2];
    a18 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = v24[2];
    v31 = v24[3];
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &a18);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v32;
    exception[1].__imp_.__imp_ = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_12214B0(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = sub_1221200(a1, a2, a3);
  if (!result)
  {
    *a3 = *a4;
  }

  return result;
}

BOOL sub_12214E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = 0;
    }

    v9 = v4;
    sub_1220C7C(&v9, a3);
    if (v10)
    {
      sub_1220A18(v10);
    }

    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  if (v8)
  {
    sub_1220A18(v8);
  }

  return v4 != 0;
}

void sub_12215B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::string *a12, std::string *a13, uint64_t a14, __int128 a15, std::string::size_type a16, uint64_t a17, __int128 a18, std::string::size_type a19)
{
  v23 = *(v20 - 56);
  if (v23)
  {
    sub_1220A18(v23);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v26 = std::string::append(&a12, "': ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    a16 = v26->__r_.__value_.__r.__words[2];
    a15 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = (*(*v24 + 16))(v24);
    v29 = std::string::append(&a15, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    a19 = v29->__r_.__value_.__r.__words[2];
    a18 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = v24[2];
    v31 = v24[3];
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &a18);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v32;
    exception[1].__imp_.__imp_ = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1221794(uint64_t a1, uint64_t a2, std::string *a3, const std::string *a4)
{
  v6 = sub_12214E4(a1, a2, a3);
  if (!v6)
  {
    std::string::operator=(a3, a4);
  }

  return v6;
}

BOOL sub_12217DC(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  if (v8)
  {
    v5 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = a3[1];
    *a3 = v4;
    a3[1] = v5;
    if (v6)
    {
      sub_1220A18(v6);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }

  return v4 != 0;
}

void *sub_122186C(void *a1, uint64_t a2)
{
  v4 = (***a2)();
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v45 = *a2;
        v6 = *(a2 + 8);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = *(v45 + 24);
        if (v46)
        {
          v47 = "true";
        }

        else
        {
          v47 = "false";
        }

        if (v46)
        {
          v48 = 4;
        }

        else
        {
          v48 = 5;
        }

        sub_4A5C(a1, v47, v48);
        goto LABEL_158;
      }

      v9 = *a2;
      v6 = *(a2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_3608D0(&v61, "{");
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v61;
      }

      else
      {
        v10 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v61.__r_.__value_.__l.__size_;
      }

      sub_4A5C(a1, v10, size);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v12 = v9[3];
      if (v12)
      {
        v13 = 1;
        do
        {
          if ((v13 & 1) == 0)
          {
            sub_3608D0(&v61, ",");
            v14 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
            v15 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v61.__r_.__value_.__r.__words[2]) : v61.__r_.__value_.__l.__size_;
            sub_4A5C(a1, v14, v15);
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }
          }

          sub_3608D0(&v61, "");
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v61;
          }

          else
          {
            v16 = v61.__r_.__value_.__r.__words[0];
          }

          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v17 = v61.__r_.__value_.__l.__size_;
          }

          v18 = sub_4A5C(a1, v16, v17);
          v19 = *(v12 + 39);
          if (v19 >= 0)
          {
            v20 = (v12 + 2);
          }

          else
          {
            v20 = v12[2];
          }

          if (v19 >= 0)
          {
            v21 = *(v12 + 39);
          }

          else
          {
            v21 = v12[3];
          }

          v22 = sub_4A5C(v18, v20, v21);
          sub_3608D0(&__p, ":");
          if ((v60 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v60 & 0x80u) == 0)
          {
            v24 = v60;
          }

          else
          {
            v24 = v59;
          }

          v25 = sub_4A5C(v22, p_p, v24);
          sub_122186C(v25, (v12 + 5));
          if (v60 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }

          v13 = 0;
          v12 = *v12;
        }

        while (v12);
      }

      sub_3608D0(&v61, "}");
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v61;
      }

      else
      {
        v26 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v61.__r_.__value_.__l.__size_;
      }

      sub_4A5C(a1, v26, v27);
LABEL_156:
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

LABEL_158:
      if (v6)
      {
        sub_1220A18(v6);
      }

      return a1;
    }

    if (v4 != 7)
    {
      if (v4 != 8)
      {
        return a1;
      }

      sub_3608D0(&v61, "");
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v61;
      }

      else
      {
        v29 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v61.__r_.__value_.__l.__size_;
      }

      v31 = sub_4A5C(a1, v29, v30);
      v32 = *a2;
      v33 = *(a2 + 8);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = v32[1];
      v34 = v32 + 1;
      v35 = v36;
      v37 = *(v34 + 23);
      if (v37 >= 0)
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      if (v37 >= 0)
      {
        v39 = *(v34 + 23);
      }

      else
      {
        v39 = v34[1];
      }

      v40 = sub_4A5C(v31, v38, v39);
      sub_3608D0(&__p, "");
      if ((v60 & 0x80u) == 0)
      {
        v41 = &__p;
      }

      else
      {
        v41 = __p;
      }

      if ((v60 & 0x80u) == 0)
      {
        v42 = v60;
      }

      else
      {
        v42 = v59;
      }

      sub_4A5C(v40, v41, v42);
      if (v60 < 0)
      {
        operator delete(__p);
      }

      if (v33)
      {
        sub_1220A18(v33);
      }

      goto LABEL_108;
    }

    v50 = *a2;
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_3608D0(&v61, "[");
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v61;
    }

    else
    {
      v51 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v61.__r_.__value_.__l.__size_;
    }

    sub_4A5C(a1, v51, v52);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v53 = v50[1];
    if (v53 != v50[2])
    {
      v54 = 1;
      do
      {
        if ((v54 & 1) == 0)
        {
          sub_3608D0(&v61, ",");
          v55 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
          v56 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v61.__r_.__value_.__r.__words[2]) : v61.__r_.__value_.__l.__size_;
          sub_4A5C(a1, v55, v56);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }
        }

        sub_122186C(a1, v53);
        v54 = 0;
        v53 += 16;
      }

      while (v53 != v50[2]);
    }

    sub_3608D0(&v61, "]");
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v61;
    }

    else
    {
      v7 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = v61.__r_.__value_.__l.__size_;
    }

LABEL_155:
    sub_4A5C(a1, v7, v8);
    goto LABEL_156;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v49 = *a2;
      v6 = *(a2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v61, v49[3]);
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v61;
      }

      else
      {
        v7 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v61.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v28 = *a2;
      v6 = *(a2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v61, *(v28 + 3));
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v61;
      }

      else
      {
        v7 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v61.__r_.__value_.__l.__size_;
      }
    }

    goto LABEL_155;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return a1;
    }

    v5 = *a2;
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v61, v5[3]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v61;
    }

    else
    {
      v7 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = v61.__r_.__value_.__l.__size_;
    }

    goto LABEL_155;
  }

  sub_3608D0(&v61, "null");
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v61;
  }

  else
  {
    v43 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v61.__r_.__value_.__l.__size_;
  }

  sub_4A5C(a1, v43, v44);
LABEL_108:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1221E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_1220A18(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1221EF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1221ED0);
}

void *sub_1221F78@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = *(a1 + 36) | a2;
  }

  else
  {
    v6 = *(a1 + 36) & ~a2;
  }

  *(a1 + 36) = v6;
  return sub_4AAFCC(a4, (a1 + 8));
}

void *sub_1221FA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = *(a1 + 36) | a2;
  }

  else
  {
    v6 = *(a1 + 36) & ~a2;
  }

  *(a1 + 36) = v6;
  return sub_4AAFCC(a4, (a1 + 8));
}

uint64_t sub_1221FF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1222028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1222140(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26C7310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_12221BC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_1220A18(v5);
      }
    }
  }
}

void *sub_12222B0(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_26C7360;
  sub_128985C((a1 + 3), a2);
  return a1;
}

void sub_122232C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26C7360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1222388(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_1222448(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return *(v4[1] + 8);
  }

  v8 = 0x700000000000000;
  if (sub_12224A8(a2, &v8))
  {
    v7 = sub_1222448(a1 + 64, &v8);
    if (*(a1 + 8272) == v7)
    {
      sub_1223448(&v8, &v9);
      v5 = v9;
    }

    else
    {
      v5 = *(v7[1] + 8);
    }
  }

  else
  {
    v5 = &unk_26C74F0;
  }

  *sub_1222534(a1 + 64, a2) = v5;
  return v5;
}

void *sub_1222448(uint64_t a1, void *a2)
{
  v2 = 16 * *(a1 + 4 * (*a2 & 0x7FFLL));
  v3 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v2 == 16 * v3)
  {
    return *(a1 + 8208);
  }

  v4 = *(a1 + 8200);
  v5 = (v4 + 16 * v3);
  v6 = (v2 + v4);
  while (*v6 != (*a2 & 0xFFFFFFFFFFFFFFLL))
  {
    v6 += 2;
    if (v6 == v5)
    {
      return *(a1 + 8208);
    }
  }

  return v6;
}

BOOL sub_12224A8(unsigned __int8 *a1, uint64_t *a2)
{
  *a2 = 0x700000000000000;
  if (*a1 >> 58 == 1 && (v5 = sub_21F24F4(a1, 0), HIBYTE(v5) == 1))
  {
    *a2 = v5 & 0xFFFFFF | 0x500000000000000;
    return 1;
  }

  else
  {

    return sub_12225F0(a1, a2);
  }
}

uint64_t sub_1222534(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = v5;
  v6 = ((v4 & 0x7FF) << 32) + 0x100000000;
  v7 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v8 = *(a1 + (v6 >> 30));
  v9 = *(a1 + 8200);
  v10 = (v9 + 16 * v8);
  if (v7 == 16 * v8)
  {
LABEL_5:
    sub_1222C6C((a1 + 8200), v10, &v13, a2);
  }

  v11 = (v7 + v9);
  while (*v11 != v5)
  {
    v11 += 2;
    if (v11 == v10)
    {
      goto LABEL_5;
    }
  }

  return v11[1] + 8;
}

BOOL sub_12225F0(unsigned __int8 *a1, unint64_t *a2)
{
  *a2 = 0x700000000000000;
  if (*a1 >> 59)
  {
    LODWORD(v8.__locale_) = 2;
    v9 = off_26C73A0;
    v10 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/territorysubdivisioncacheimpl.cpp";
    v11 = "makeIso3166_2";
    v12 = 81;
    sub_D7B0(v13);
    sub_4A5C(v14, "Received a TerritorySubdivision ID string with an invalid length: ", 66);
    std::ostream::operator<<();
    sub_4A5C(v14, " {", 2);
    sub_12228E0(&v8, a1, 8, ", ");
    v15 = 125;
    sub_4A5C(v14, &v15, 1);
    goto LABEL_3;
  }

  if ((~*a1 & 0x700000000000000) != 0)
  {
    v4 = 0;
    v5 = 0x700000000000000;
    while (1)
    {
      LODWORD(v6) = a1[v4];
      if ((v6 - 97) < 0x1A)
      {
        LOBYTE(v6) = v6 - 32;
      }

      v7 = (v6 - 48) >= 0xAu && ((v6 & 0xDF) - 65) >= 0x1Au;
      if (v7 && v6 != 45 && v6 != 95)
      {
        LODWORD(v8.__locale_) = 2;
        v9 = off_26C73A0;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/territorysubdivisioncacheimpl.cpp";
        v11 = "makeIso3166_2";
        v12 = 95;
        sub_D7B0(v13);
        sub_4A5C(v14, "Received an invalid TerritorySubdivision ID string: ", 53);
        std::ostream::write();
        sub_4A5C(v14, ", bytes: {", 11);
        sub_12228E0(&v8, a1, 7 - a1[7], ", ");
        v15 = 125;
        sub_4A5C(v14, &v15, 1);
LABEL_3:
        sub_12229BC(&v8);
        return 0;
      }

      if (v4 == 2)
      {
        if (v6 == 95 || v6 == 45)
        {
          if (HIBYTE(v5) - 1 < 8u)
          {
            v6 = 45;
LABEL_25:
            v5 = ((v6 << (56 - 8 * HIBYTE(v5))) | v5) - 0x100000000000000;
            *a2 = v5;
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        if (HIBYTE(v5) - 1 <= 7u)
        {
          v5 = ((45 << (56 - 8 * HIBYTE(v5))) | v5) - 0x100000000000000;
          *a2 = v5;
        }
      }

      if (HIBYTE(v5) - 1 <= 7u)
      {
        v6 = v6;
        goto LABEL_25;
      }

LABEL_26:
      if (++v4 >= 7 - a1[7])
      {
        return v5 >> 57 != 3;
      }
    }
  }

  return 0;
}

void *sub_12228E0(void *result, unsigned __int8 *a2, uint64_t a3, char *__s)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    v8 = 0;
    do
    {
      if (v8)
      {
        v9 = strlen(__s);
        sub_4A5C(v7 + 8, __s, v9);
      }

      v10 = *a2++;
      sub_4A5C(v7 + 8, "0x", 2);
      v11 = a0123456789abcd_0[v10 >> 4];
      v8 = 1;
      sub_4A5C(v7 + 8, &v11, 1);
      v12 = a0123456789abcd_0[v10 & 0xF];
      result = sub_4A5C(v7 + 8, &v12, 1);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::locale *sub_12229BC(std::locale *a1)
{
  v2 = sub_1230B14();
  locale_low = LODWORD(a1->__locale_);
  locale = a1[3].__locale_;
  v5 = a1[4].__locale_;
  v6 = LODWORD(a1[5].__locale_);
  v7 = sub_195CC18(&a1[9]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(__dst, v7, v8);
  }

  *(__dst + v9) = 0;
  v10 = v16;
  v11 = __dst;
  if ((v16 & 0x80u) != 0)
  {
    v11 = __dst[0];
    v10 = __dst[1];
  }

  v17[0] = v11;
  v17[1] = v10;
  (*(*v2 + 16))(v2, locale_low, a1 + 1, locale, v5, v6, v17);
  if (v16 < 0)
  {
    operator delete(__dst[0]);
  }

  a1[8].__locale_ = v13;
  if (SHIBYTE(a1[19].__locale_) < 0)
  {
    operator delete(a1[17].__locale_);
  }

  std::locale::~locale(a1 + 10);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_1222C6C(uint64_t *a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    sub_1222DF4(a1, a3, a4);
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = v7;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_1222EC8(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_1222E60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12230E0(&v13, a2, v7, v6);
}

void sub_1222EC8(unint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_12231B0(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_1223024(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1223230(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1223230(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_12230E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_1223168(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

uint64_t *sub_12231B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1223230(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_12232F4(v10);
}

uint64_t sub_12232F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122332C(a1);
  }

  return a1;
}

uint64_t sub_122332C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1223394(uint64_t a1)
{
  sub_12233CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_12233CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

_BYTE *sub_1223448(_BYTE *result, void *a2)
{
  v2 = (&unk_231117C + 2 * (*result & 0x7F));
  v3 = *v2;
  v4 = v2[1];
  if (v3 == v4)
  {
    v5 = &unk_26C74F0;
  }

  else
  {
    v6 = v4;
    v7 = (&off_2678328 + v3);
    v8 = 8 * v6 - 8 * v3;
    while (1)
    {
      v5 = *v7;
      if (**v7 == *result)
      {
        break;
      }

      ++v7;
      v8 -= 8;
      if (!v8)
      {
        v5 = &unk_26C74F0;
        break;
      }
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_12234C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *sub_122356C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_122356C(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_BA6DC(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_BA6DC(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *sub_12235F4(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_7E510(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_122364C(uint64_t a1)
{
  *a1 = 850045863;
  v2 = a1 + 8264;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_12241C0(v2, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_1224100(a1 + 16488, 0);
  *(a1 + 16528) = 0;
  *(a1 + 16512) = 0u;
  sub_1223740(a1);
  return a1;
}

void sub_1223704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  a10 = v12;
  sub_1223FF0(&a10);
  sub_12240AC(&a10);
  sub_122416C(&a10);
  std::mutex::~mutex(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1223740(uint64_t a1)
{
  v3.n128_u8[0] = 0;
  v3.n128_u8[8] = 0;
  LOBYTE(v4) = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = &unk_23221B0;
  sub_1223E28(a1 + 8288, &v3);
  v3 = 0uLL;
  v4 = &unk_23221B0;
  return sub_1223940(a1 + 64, &v3);
}

_OWORD *sub_12237BC(uint64_t a1, __int128 *a2)
{
  v4 = sub_1223A60(a1 + 8288, a2);
  if (*(a1 + 16496) != v4)
  {
    return *(v4[1] + 64);
  }

  v6 = a2[1];
  v15 = *a2;
  v16 = v6;
  v7 = a2[3];
  v17 = a2[2];
  v18 = v7;
  if (BYTE8(v6) == 1)
  {
    *&v12[0] = *sub_45AC50(&v16);
    v8 = 1;
  }

  else
  {
    v8 = 0;
    LOBYTE(v12[0]) = 0;
  }

  BYTE8(v12[0]) = v8;
  if (BYTE8(v17) == 1)
  {
    sub_45AC50(&v17);
  }

  sub_1223B7C(&v18, v12);
  v9 = sub_1223A60(a1 + 8288, &v15);
  if (*(a1 + 16496) == v9)
  {
    operator new();
  }

  v14 = *(v9[1] + 64);
  if (!sub_122431C(v12, &v15, a2))
  {
    v10 = a2[1];
    v12[0] = *a2;
    v12[1] = v10;
    v11 = a2[3];
    v12[2] = a2[2];
    v12[3] = v11;
    v13 = v14;
    sub_1223E28(a1 + 8288, v12);
  }

  return v14;
}

uint64_t sub_1223940(uint64_t a1, __n128 *a2)
{
  v4 = sub_1224610(&v16, a2->n128_u64[0], a2->n128_u64[1]);
  v17 = v4;
  v5 = *(a1 + 8200);
  v6 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v7 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v8 = (v5 + 16 * v7);
  if (v6 == 16 * v7)
  {
LABEL_7:
    sub_1224638((a1 + 8200), v8, &v17, a2);
  }

  v9 = v4;
  v10 = v6 + v5;
  v12 = a2->n128_u64[0];
  v11 = a2->n128_u64[1];
  v13 = (v6 + v5);
  while (1)
  {
    if (*v13 == v9)
    {
      v14 = v13[1];
      if (*(v14 + 8) == v11 && !memcmp(*v14, v12, v11))
      {
        return v10;
      }
    }

    v13 += 2;
    v10 += 16;
    if (v13 == v8)
    {
      goto LABEL_7;
    }
  }
}

void *sub_1223A60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = sub_1232EA0(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x9E3779B97F4A7C13;
  v6 = sub_1224DA4(v4 - 0x61C8864680B583EDLL, a2 + 16);
  v7 = sub_1224DA4(v6, a2 + 32);
  if (*(a2 + 56) == 1)
  {
    v5 = sub_12344A0(&v15, a2 + 48) - 0x61C8864680B583EDLL;
  }

  v8 = ((v7 >> 2) + (v7 << 6) + v5) ^ v7;
  v9 = 16 * *(a1 + 4 * (v8 & 0x7FF));
  v10 = *(a1 + ((((v8 & 0x7FF) << 32) + 0x100000000) >> 30));
  if (v9 == 16 * v10)
  {
    return *(a1 + 8208);
  }

  v11 = *(a1 + 8200);
  v12 = (v11 + 16 * v10);
  v13 = (v9 + v11);
  while (*v13 != v8 || !sub_122431C(&v16, v13[1], a2))
  {
    v13 += 2;
    if (v13 == v12)
    {
      return *(a1 + 8208);
    }
  }

  return v13;
}

uint64_t sub_1223B7C(uint64_t result, uint64_t *a2)
{
  if (*(result + 8) == 1 && *(a2 + 8) == 1)
  {
    v3 = result;
    result = sub_45AC50(result);
    v6 = 0x50000000000505ALL;
    if (*(result + 8) == 0x50000000000505ALL)
    {
      if ((atomic_load_explicit(&qword_2734C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C18))
      {
        nullsub_1();
        __cxa_guard_release(&qword_2734C18);
      }

      if ((atomic_load_explicit(&qword_27C4160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4160))
      {
        qword_27C4158 = sub_12306FC(&unk_2734C10, &v6);
        __cxa_guard_release(&qword_27C4160);
      }

      if ((atomic_load_explicit(&qword_27C4170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4170))
      {
        qword_27C4168 = sub_123077C();
        __cxa_guard_release(&qword_27C4170);
      }

      if (*(a2 + 8) != 1 || (v4 = *a2, v5 = &qword_27C4168, *a2 != 0x500000000004B48) && v4 != 0x500000000004E43 && v4 != 0x500000000004F4DLL)
      {
        v5 = &qword_27C4158;
      }

      return sub_1223F8C(v3, v5);
    }
  }

  return result;
}

void *sub_1223D2C(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = a1;
    if (v12)
    {
      sub_122422C(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_1224274(v17);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t sub_1223E28(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = sub_1232EA0(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x9E3779B97F4A7C13;
  v6 = sub_1224DA4(v4 - 0x61C8864680B583EDLL, a2 + 16);
  v7 = sub_1224DA4(v6, a2 + 32);
  if (*(a2 + 56) == 1)
  {
    v5 = sub_12344A0(&v17, a2 + 48) - 0x61C8864680B583EDLL;
  }

  v8 = ((v7 >> 2) + (v7 << 6) + v5) ^ v7;
  v16 = v8;
  v9 = *(a1 + 8200);
  v10 = 16 * *(a1 + 4 * (v8 & 0x7FF));
  v11 = *(a1 + ((((v8 & 0x7FF) << 32) + 0x100000000) >> 30));
  v12 = (v9 + 16 * v11);
  if (v10 == 16 * v11)
  {
LABEL_11:
    sub_1224E08((a1 + 8200), v12, &v16, a2);
  }

  v13 = v10 + v9;
  v14 = (v10 + v9);
  while (*v14 != v8 || !sub_122431C(&v18, v14[1], a2))
  {
    v14 += 2;
    v13 += 16;
    if (v14 == v12)
    {
      goto LABEL_11;
    }
  }

  return v13;
}

uint64_t sub_1223F8C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_501CE8(&v4, *a2);
    *a1 = v4;
  }

  else
  {
    sub_501CE8(a1, *a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_1223FF0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1224044(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1224044(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_12240AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1224100(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1224100(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122416C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_12241C0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_12241C0(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122422C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1224274(uint64_t a1)
{
  sub_12242AC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_12242AC(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

BOOL sub_122431C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1224378(&v9, a2, a3);
  if (result)
  {
    v6 = *(a3 + 56);
    v7 = *(a2 + 56);
    result = v7 == v6;
    if (v7 == v6 && v7 != 0)
    {
      return sub_123441C((a2 + 48), (a3 + 48));
    }
  }

  return result;
}

BOOL sub_1224378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_12243D8(&v9, a2, a3);
  if (result)
  {
    v6 = *(a3 + 40);
    v7 = *(a2 + 40);
    result = v7 == v6;
    if (v7 == v6 && v7 != 0)
    {
      return *(a2 + 32) == *(a3 + 32);
    }
  }

  return result;
}

BOOL sub_12243D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (!sub_1232EBC(a2, a3))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a2 + 24);
  result = v9 == v8;
  if (v9 == v8 && v9 != 0)
  {
    return *(a2 + 16) == *(a3 + 16);
  }

  return result;
}

unsigned __int8 *sub_1224458@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 0:
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    case 1:
      v3 = *result;
      v4 = 1;
LABEL_7:
      *a3 = v3;
      *(a3 + 8) = v4;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      return result;
    case 2:
      v3 = *result;
      v4 = 2;
      goto LABEL_7;
  }

  return sub_12244A4(result, a2, a3);
}

unsigned __int8 *sub_12244A4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 != 3)
  {
    return sub_852E4(result, a2, a3);
  }

  *a3 = *result | (result[2] << 16);
  *(a3 + 8) = 3;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  return result;
}

void *sub_12244D0(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v10 = 0;
        v3 = 0;
        do
        {
          v11 = *a2++;
          v3 |= v11 << v10;
          v10 += 8;
        }

        while (v10 != 48);
      }

      else
      {
        if (a3 != 7)
        {
LABEL_15:
          v6 = 0;
          v3 = 0;
          do
          {
            v7 = *a2++;
            v3 |= v7 << v6;
            v6 += 8;
          }

          while (v6 != 56);
          goto LABEL_17;
        }

        v12 = 0;
        v3 = 0;
        do
        {
          v13 = *a2++;
          v3 |= v13 << v12;
          v12 += 8;
        }

        while (v12 != 56);
      }
    }

    else if (a3 == 4)
    {
      v8 = 0;
      v3 = 0;
      do
      {
        v9 = *a2++;
        v3 |= v9 << v8;
        v8 += 8;
      }

      while (v8 != 32);
    }

    else
    {
      v4 = 0;
      v3 = 0;
      do
      {
        v5 = *a2++;
        v3 |= v5 << v4;
        v4 += 8;
      }

      while (v4 != 40);
    }
  }

  else
  {
    if (a3 <= 1)
    {
      v3 = a3;
      if (!a3)
      {
        goto LABEL_17;
      }

      if (a3 == 1)
      {
        v3 = *a2;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (a3 == 2)
    {
      v3 = *a2;
    }

    else
    {
      v3 = *a2 | (a2[2] << 16);
    }
  }

LABEL_17:
  *result = (v3 & 0xFFFFFFFFFFFFFFLL) - (a3 << 56) + 0x700000000000000;
  return result;
}

void sub_1224638(uint64_t *a1, void *a2, uint64_t *a3, __n128 *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    *v5 = *a3;
    operator new();
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_1224864(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_12247FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1224A84(&v13, a2, v7, v6);
}

void sub_1224864(unint64_t *a1, uint64_t *a2, __n128 *a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1224B0C(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_12249C8(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1224B8C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1224B8C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1224A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1224B0C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1224B8C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1224C50(v10);
}

uint64_t sub_1224C50(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1224C88(a1);
  }

  return a1;
}

uint64_t sub_1224C88(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1224CF0(uint64_t a1)
{
  sub_1224D28(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1224D28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

unint64_t sub_1224DA4(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v3 = sub_123414C(a2);
  }

  else
  {
    v3 = 0;
  }

  return ((a1 << 6) + (a1 >> 2) + v3 - 0x61C8864680B583EDLL) ^ a1;
}

void sub_1224E08(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    *v5 = *a3;
    operator new();
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_1225044(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_1224FDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122526C(&v13, a2, v7, v6);
}

void sub_1225044(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_12252F4(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_12251B0(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1225374(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1225374(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_122526C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_12252F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1225374(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1225438(v10);
}

uint64_t sub_1225438(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1225470(a1);
  }

  return a1;
}

uint64_t sub_1225470(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_12254D8(uint64_t a1)
{
  sub_1225510(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1225510(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_122558C(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *a2 & 0xFFFFFF;
  v13 = v5;
  v6 = 16 * *(a1 + 64 + 4 * (v4 & 0x7FF));
  v7 = *(a1 + 64 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v8 = *(a1 + 8264);
  v9 = (v8 + 16 * v7);
  if (v6 == 16 * v7)
  {
LABEL_5:
    v12 = sub_1233D6C(a2);
    sub_122585C((a1 + 8264), v9, &v13, a2, &v12);
  }

  v10 = (v6 + v8);
  while (*v10 != v5)
  {
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  return *(v10[1] + 4);
}

uint64_t sub_1225678(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 & 0xFFFFFFFFFFFFFFLL;
  v14 = v5;
  v6 = ((v4 & 0x7FF) << 32) + 0x100000000;
  v7 = 16 * *(a1 + 8288 + 4 * (v4 & 0x7FF));
  v8 = *(a1 + 8288 + (v6 >> 30));
  v9 = *(a1 + 16488);
  v10 = (v9 + 16 * v8);
  if (v7 == 16 * v8)
  {
LABEL_5:
    v13 = sub_1233DDC(a2);
    sub_1226024((a1 + 16488), v10, &v14, a2, &v13);
  }

  v11 = (v7 + v9);
  while (*v11 != v5)
  {
    v11 += 2;
    if (v11 == v10)
    {
      goto LABEL_5;
    }
  }

  return *(v11[1] + 8);
}

uint64_t sub_1225768(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *a2 & 0xFFFFFF;
  v13 = v5;
  v6 = 16 * *(a1 + 16512 + 4 * (v4 & 0x7FF));
  v7 = *(a1 + 16512 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v8 = *(a1 + 24712);
  v9 = (v8 + 16 * v7);
  if (v6 == 16 * v7)
  {
LABEL_5:
    v12 = sub_1233E5C(a2);
    sub_12267EC((a1 + 24712), v9, &v13, a2, &v12);
  }

  v10 = (v6 + v8);
  while (*v10 != v5)
  {
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  return *(v10[1] + 4);
}

void sub_122585C(uint64_t *a1, void *a2, uint64_t *a3, _DWORD *a4, _BYTE *a5)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 < v5)
  {
    if (a2 != v6)
    {
      operator new();
    }

    sub_1225A00(a1, a3, a4, a5);
  }

  v7 = *a1;
  v8 = ((v6 - *a1) >> 4) + 1;
  if (!(v8 >> 60))
  {
    v9 = a2 - v7;
    v10 = v5 - v7;
    v11 = v10 >> 3;
    if (v10 >> 3 <= v8)
    {
      v11 = v8;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v13 = v9 >> 4;
    v14[4] = a1;
    if (v12)
    {
      sub_1223168(a1, v12);
    }

    v14[0] = 0;
    v14[1] = 16 * v13;
    v14[2] = 16 * v13;
    v14[3] = 0;
    sub_1225AE0(v14, a3, a4, a5);
  }

  sub_1794();
}

uint64_t sub_1225A78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1225D04(&v13, a2, v7, v6);
}

void sub_1225AE0(unint64_t *a1, uint64_t *a2, _DWORD *a3, _BYTE *a4)
{
  v6 = a1[2];
  if (v6 == a1[3])
  {
    v7 = a1[1];
    if (v7 <= *a1)
    {
      if (v6 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v6 - *a1) >> 3;
      }

      v11 = a1[4];
      v12[4] = a1[4];
      sub_1223168(v11, v10);
    }

    v8 = (((v7 - *a1) >> 4) + 1 + ((((v7 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1225D8C(v12, v7, v6, &v7[-2 * v8]);
    v6 = v9;
    a1[1] -= 16 * v8;
    a1[2] = v9;
  }

  *v6 = *a2;
  operator new();
}

uint64_t sub_1225C48(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1225E0C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1225E0C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1225D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1225D8C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1225E0C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1225ED0(v10);
}

uint64_t sub_1225ED0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1225F08(a1);
  }

  return a1;
}

uint64_t sub_1225F08(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1225F70(uint64_t a1)
{
  sub_1225FA8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1225FA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1226024(uint64_t *a1, void *a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 < v5)
  {
    if (a2 != v6)
    {
      operator new();
    }

    sub_12261C8(a1, a3, a4, a5);
  }

  v7 = *a1;
  v8 = ((v6 - *a1) >> 4) + 1;
  if (!(v8 >> 60))
  {
    v9 = a2 - v7;
    v10 = v5 - v7;
    v11 = v10 >> 3;
    if (v10 >> 3 <= v8)
    {
      v11 = v8;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v13 = v9 >> 4;
    v14[4] = a1;
    if (v12)
    {
      sub_1223168(a1, v12);
    }

    v14[0] = 0;
    v14[1] = 16 * v13;
    v14[2] = 16 * v13;
    v14[3] = 0;
    sub_12262A8(v14, a3, a4, a5);
  }

  sub_1794();
}

uint64_t sub_1226240(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12264CC(&v13, a2, v7, v6);
}

void sub_12262A8(unint64_t *a1, uint64_t *a2, void *a3, _BYTE *a4)
{
  v6 = a1[2];
  if (v6 == a1[3])
  {
    v7 = a1[1];
    if (v7 <= *a1)
    {
      if (v6 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (v6 - *a1) >> 3;
      }

      v11 = a1[4];
      v12[4] = a1[4];
      sub_1223168(v11, v10);
    }

    v8 = (((v7 - *a1) >> 4) + 1 + ((((v7 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1226554(v12, v7, v6, &v7[-2 * v8]);
    v6 = v9;
    a1[1] -= 16 * v8;
    a1[2] = v9;
  }

  *v6 = *a2;
  operator new();
}

uint64_t sub_1226410(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_12265D4(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_12265D4(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_12264CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1226554(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_12265D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1226698(v10);
}

uint64_t sub_1226698(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12266D0(a1);
  }

  return a1;
}

uint64_t sub_12266D0(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1226738(uint64_t a1)
{
  sub_1226770(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1226770(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_12267EC(uint64_t *a1, void *a2, uint64_t *a3, _DWORD *a4, _BYTE *a5)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 < v5)
  {
    if (a2 != v6)
    {
      operator new();
    }

    sub_1226990(a1, a3, a4, a5);
  }

  v7 = *a1;
  v8 = ((v6 - *a1) >> 4) + 1;
  if (!(v8 >> 60))
  {
    v9 = a2 - v7;
    v10 = v5 - v7;
    v11 = v10 >> 3;
    if (v10 >> 3 <= v8)
    {
      v11 = v8;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v13 = v9 >> 4;
    v14[4] = a1;
    if (v12)
    {
      sub_1223168(a1, v12);
    }

    v14[0] = 0;
    v14[1] = 16 * v13;
    v14[2] = 16 * v13;
    v14[3] = 0;
    sub_1225AE0(v14, a3, a4, a5);
  }

  sub_1794();
}

uint64_t sub_1226A08(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1226AC4(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1226AC4(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1226AC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1226B88(v10);
}

uint64_t sub_1226B88(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1225F08(a1);
  }

  return a1;
}

uint64_t sub_1226BC0(uint64_t a1)
{
  *a1 = 850045863;
  v2 = a1 + 8264;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_1227394(v2, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_1227394(a1 + 16488, 0);
  *(a1 + 24728) = 0;
  *(a1 + 24712) = 0u;
  bzero((a1 + 16512), 0x2004uLL);
  sub_1227394(a1 + 24712, 0);
  *(a1 + 32952) = 0;
  *(a1 + 32936) = 0u;
  bzero((a1 + 24736), 0x2004uLL);
  sub_1227454(a1 + 32936, 0);
  *(a1 + 44488) = 0;
  *(a1 + 44472) = 0u;
  bzero((a1 + 32960), 0x2CF4uLL);
  sub_1227394(a1 + 44472, 0);
  *(a1 + 52712) = 0;
  *(a1 + 52696) = 0u;
  bzero((a1 + 44496), 0x2004uLL);
  sub_1227394(a1 + 52696, 0);
  std::mutex::lock(a1);
  bzero((a1 + 32960), 0xCF0uLL);
  std::mutex::unlock(a1);
  return a1;
}

void sub_1226D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1227340(va);
  sub_1227340(va);
  sub_1227400(va);
  sub_1227340(va);
  sub_1227340(va);
  sub_1227340(va);
  std::mutex::~mutex(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1226DA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1226E08(a1 + 64, a2);
  if (*(a1 + 8272) != v3)
  {
    return v3[1] + 48;
  }

  sub_1227D28();
  return v5;
}

void *sub_1226E08(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = 16 * *(a1 + 4 * (*a2 & 0x7FF));
  v5 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v4 == 16 * v5)
  {
    return *(a1 + 8208);
  }

  v7 = *(a1 + 8200);
  v8 = v7 + 16 * v5;
  v9 = v4 + v7;
  while (*v9 != v3 || !sub_12274C0(*(v9 + 8), a2))
  {
    v9 += 16;
    if (v9 == v8)
    {
      return *(a1 + 8208);
    }
  }

  return v9;
}

void *sub_1226EA4()
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2734C08);
  }

  return &unk_2734C00;
}

uint64_t sub_1226F1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_6:
    sub_1227548((a1 + 8200), v8, &v11, a2);
  }

  v9 = v5 + v7;
  while (*v9 != v4 || !sub_12274C0(*(v9 + 8), a2))
  {
    v9 += 16;
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  return *(v9 + 8) + 48;
}

_OWORD *sub_1227000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1226E08(a1 + 16512, a2);
  if (*(a1 + 24720) != v4)
  {
    return (v4[1] + 48);
  }

  if (sub_122A38C(a2))
  {
    sub_1224458((a2 + 16 * (*(a2 + 8) > 7uLL)), *(a2 + 8) - 3, v8);
  }

  else
  {
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v8[2] = *(a2 + 32);
  }

  v5 = sub_1226F1C(a1 + 16512, a2);
  *v5 = *sub_1226DA8(a1, v8);
  return v5;
}

uint64_t *sub_12270E8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16 * a2 + 32960);
  if (!*v2)
  {
    v3 = a2;
    if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
    {
      nullsub_1();
      __cxa_guard_release(&qword_2734C08);
    }

    v4 = sub_122F794(&unk_2734C00, v3);
    *v2 = v4;
    v2[1] = sub_122FBB0(&unk_2734C00, v4);
  }

  return v2;
}

uint64_t *sub_12271A4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16 * a2 + 35264);
  if (!*v2)
  {
    v3 = a2;
    if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
    {
      nullsub_1();
      __cxa_guard_release(&qword_2734C08);
    }

    v4 = sub_122F848(&unk_2734C00, v3);
    *v2 = v4;
    v2[1] = sub_122FBB0(&unk_2734C00, v4);
  }

  return v2;
}

uint64_t sub_1227260(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1226E08(a1 + 36272, a2);
  if (*(a1 + 44480) != v3)
  {
    return v3[1] + 48;
  }

  sub_1227D64();
  return v5;
}

uint64_t sub_12272D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1226E08(a1 + 44496, a2);
  if (*(a1 + 52704) != v3)
  {
    return v3[1] + 48;
  }

  sub_1227DA0();
  return v5;
}

void sub_1227340(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1227394(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1227394(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_1227400(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1227454(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1227454(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

BOOL sub_12274C0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 <= 7 && v3 < 8)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = 2 * (v2 > 7);
  v6 = &a2[v5];
  v7 = LOBYTE(a1[v5]);
  if (LOBYTE(a1[v5]))
  {
    v8 = &a1[v5] + 1;
    do
    {
      if (*v6 != v7)
      {
        break;
      }

      ++v6;
      v9 = *v8++;
      LOBYTE(v7) = v9;
    }

    while (v9);
    v7 = v7;
  }

  return v7 == *v6;
}

void sub_1227548(uint64_t *a1, void *a2, uint64_t *a3, _OWORD *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    *v5 = *a3;
    operator new();
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = ((v5 - *a1) >> 4) + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_122777C(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_1227714(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12279A0(&v13, a2, v7, v6);
}

void sub_122777C(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1227A28(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_12278E4(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1227AA8(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1227AA8(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_12279A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1227A28(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1227AA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1227B6C(v10);
}

uint64_t sub_1227B6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1227BA4(a1);
  }

  return a1;
}

uint64_t sub_1227BA4(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1227C0C(uint64_t a1)
{
  sub_1227C44(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1227C44(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_1227CD4()
{

  return sub_1226EA4();
}

uint64_t sub_1227CF0(_BYTE *a1)
{
  *v1 = a1;

  return sub_122FBB0(v2, a1);
}

uint64_t sub_1227D0C()
{

  return sub_1226F1C(v1, v0);
}

uint64_t sub_1227D28()
{
  sub_1227CD4();
  v1 = sub_1227D0C();
  v2 = sub_1227CC0(v1);
  v4 = sub_122F62C(v2, v3);
  result = sub_1227CF0(v4);
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_1227D64()
{
  sub_1227CD4();
  v1 = sub_1227D0C();
  v2 = sub_1227CC0(v1);
  v4 = sub_122F8FC(v2, v3);
  result = sub_1227CF0(v4);
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_1227DA0()
{
  sub_1227CD4();
  v1 = sub_1227D0C();
  v2 = sub_1227CC0(v1);
  v4 = sub_122F9B0(v2, v3);
  result = sub_1227CF0(v4);
  *(v0 + 8) = result;
  return result;
}

_DWORD *sub_1227DDC(uint64_t a1, int *a2)
{
  v4 = sub_1227E44(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return (v4[1] + 4);
  }

  v5 = sub_1227EA4(a1 + 64, a2);
  *v5 = sub_21F24F4(a2, 0);
  return v5;
}

void *sub_1227E44(uint64_t a1, _DWORD *a2)
{
  v2 = 16 * *(a1 + 4 * (*a2 & 0x7FFLL));
  v3 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v2 == 16 * v3)
  {
    return *(a1 + 8208);
  }

  v4 = *(a1 + 8200);
  v5 = (v4 + 16 * v3);
  v6 = (v2 + v4);
  while (*v6 != (*a2 & 0xFFFFFF))
  {
    v6 += 2;
    if (v6 == v5)
    {
      return *(a1 + 8208);
    }
  }

  return v6;
}

uint64_t sub_1227EA4(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *a2 & 0xFFFFFF;
  v12 = v5;
  v6 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v7 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v8 = *(a1 + 8200);
  v9 = (v8 + 16 * v7);
  if (v6 == 16 * v7)
  {
LABEL_5:
    sub_1228148((a1 + 8200), v9, &v12, a2);
  }

  v10 = (v6 + v8);
  while (*v10 != v5)
  {
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  return v10[1] + 4;
}

char *sub_1227F64(uint64_t a1, int *a2)
{
  v4 = sub_1227E44(a1 + 8288, a2);
  if (*(a1 + 16496) != v4)
  {
    return *(v4[1] + 8);
  }

  v7 = sub_21F24F4(a2, 0);
  if ((v7 & 0xFF000000) == 0x1000000)
  {
    v8 = v7;
  }

  else
  {
    v8 = 90;
  }

  v9 = (&unk_22BC828 + 2 * (v8 & 0x7F));
  v10 = *v9;
  v11 = v9[1];
  if (v10 == v11)
  {
LABEL_14:
    v16 = 16800346;
    v5 = sub_1227F64(a1, &v16);
  }

  else
  {
    v12 = 5 * v10;
    v5 = &unk_26C0CE8 + 8 * v12;
    if ((v7 & 0xFF000000) == 0x1000000)
    {
      v13 = v7 & 0xFFFFFF00;
    }

    else
    {
      v13 = 16800256;
    }

    v14 = v13 | v8;
    v15 = 40 * v11 - 8 * v12;
    while (*(v5 + 1) != v14)
    {
      v5 += 40;
      v15 -= 40;
      if (!v15)
      {
        goto LABEL_14;
      }
    }
  }

  *sub_1228088(a1 + 8288, a2) = v5;
  return v5;
}

uint64_t sub_1228088(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *a2 & 0xFFFFFF;
  v12 = v5;
  v6 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v7 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v8 = *(a1 + 8200);
  v9 = (v8 + 16 * v7);
  if (v6 == 16 * v7)
  {
LABEL_5:
    sub_12288E8((a1 + 8200), v9, &v12, a2);
  }

  v10 = (v6 + v8);
  while (*v10 != v5)
  {
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  return v10[1] + 8;
}

void sub_1228148(uint64_t *a1, void *a2, uint64_t *a3, _DWORD *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    sub_12282D4(a1, a3, a4);
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = v7;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_12283AC(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_1228344(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12285C8(&v13, a2, v7, v6);
}

void sub_12283AC(unint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1228650(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_122850C(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_12286D0(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_12286D0(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_12285C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1228650(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_12286D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1228794(v10);
}

uint64_t sub_1228794(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12287CC(a1);
  }

  return a1;
}

uint64_t sub_12287CC(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1228834(uint64_t a1)
{
  sub_122886C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122886C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_12288E8(uint64_t *a1, void *a2, uint64_t *a3, _DWORD *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    sub_1228A74(a1, a3, a4);
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = v7;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_1228B4C(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_1228AE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1228D68(&v13, a2, v7, v6);
}

void sub_1228B4C(unint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v5 = a1[2];
  if (v5 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      if (v5 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v5 - *a1) >> 3;
      }

      v10 = a1[4];
      v11[4] = a1[4];
      sub_1223168(v10, v9);
    }

    v7 = (((v6 - *a1) >> 4) + 1 + ((((v6 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1228DF0(v11, v6, v5, &v6[-2 * v7]);
    v5 = v8;
    a1[1] -= 16 * v7;
    a1[2] = v8;
  }

  *v5 = *a2;
  operator new();
}

uint64_t sub_1228CAC(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1228E70(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1228E70(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1228D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1228DF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1228E70(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1228F34(v10);
}

uint64_t sub_1228F34(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1228F6C(a1);
  }

  return a1;
}

uint64_t sub_1228F6C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1228FD4(uint64_t a1)
{
  sub_122900C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122900C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *sub_1229088(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1229288(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return *(*(v4 + 8) + 8);
  }

  v18 = 0;
  v6 = sub_21F2620(a2, &v18);
  v17 = (v6 & 0xFFFFFF | ((HIBYTE(v6) + 253) << 56)) + 0x700000000000000;
  if (*a2 == 0x700000000000000)
  {
    v7 = &unk_2322200;
  }

  else if (v18 == a2 || (((v6 & 0xFFFFFF | ((HIBYTE(v6) + 253) << 56)) + 0x700000000000000) & 0xFF00000000000000) != 0x500000000000000)
  {
    LODWORD(v9.__locale_) = 2;
    v10 = off_26C73B0;
    v11 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/marketlocationcacheimpl.cpp";
    v12 = "getOrCreateMarketLocationFromString";
    v13 = 36;
    sub_D7B0(&v14);
    sub_4A5C(v15, "Couldn't parse the MarketLocation string due to invalid value. String=", 71);
    std::ostream::write();
    sub_4A5C(v15, "", 1);
    sub_12229BC(&v9);
    v7 = &unk_2322210;
  }

  else
  {
    v8 = sub_1229288(a1 + 64, &v17);
    if (*(a1 + 8272) == v8)
    {
      operator new();
    }

    v7 = *(*(v8 + 8) + 8);
  }

  v16 = v7;
  *sub_12293F4(a1 + 64, a2) = v7;
  return v16;
}

uint64_t sub_1229288(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 16 * *(a1 + 4 * (*a2 & 0x7FF));
  v4 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v3 == 16 * v4)
  {
    return *(a1 + 8208);
  }

  v5 = *(a1 + 8200);
  v6 = v5 + 16 * v4;
  v7 = v3 + v5;
  while (*v7 != (v2 & 0xFFFFFFFFFFFFFFLL) || **(v7 + 8) != v2)
  {
    v7 += 16;
    if (v7 == v6)
    {
      return *(a1 + 8208);
    }
  }

  return v7;
}

char *sub_12292F8(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = a1;
    if (v12)
    {
      sub_122422C(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = (v13 + 1);
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_12294CC(v17);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
  return v6 - 8;
}

void *sub_12293F4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = v4;
  v5 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v6 = *(a1 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_6:
    sub_1229574((a1 + 8200), v8, &v12, a2);
  }

  v9 = (v5 + v7);
  while (1)
  {
    if (*v9 == v4)
    {
      v10 = v9[1];
      if (*v10 == v3)
      {
        return v10 + 1;
      }
    }

    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_12294CC(uint64_t a1)
{
  sub_1229504(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1229504(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1229574(uint64_t *a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 < v4)
  {
    if (a2 != v5)
    {
      operator new();
    }

    sub_12296FC(a1, a3, a4);
  }

  v6 = *a1;
  v7 = ((v5 - *a1) >> 4) + 1;
  if (!(v7 >> 60))
  {
    v8 = a2 - v6;
    v9 = v4 - v6;
    v10 = v9 >> 3;
    if (v9 >> 3 <= v7)
    {
      v10 = v7;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12 = v8 >> 4;
    v13[4] = a1;
    if (v11)
    {
      sub_1223168(a1, v11);
    }

    v13[0] = 0;
    v13[1] = 16 * v12;
    v13[2] = 16 * v12;
    v13[3] = 0;
    sub_1222EC8(v13, a3, a4);
  }

  sub_1794();
}

uint64_t sub_1229768(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = a2[1];
  sub_1229824(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  sub_1229824(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1229824(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_12298E8(v10);
}

uint64_t sub_12298E8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122332C(a1);
  }

  return a1;
}

uint64_t sub_1229920(uint64_t a1)
{
  *a1 = 850045863;
  v2 = a1 + 8264;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_122C42C(v2, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_122C42C(a1 + 16488, 0);
  *(a1 + 26384) = 0;
  *(a1 + 26368) = 0u;
  bzero((a1 + 18168), 0x2004uLL);
  sub_122C42C(a1 + 26368, 0);
  *(a1 + 34608) = 0;
  *(a1 + 34592) = 0u;
  bzero((a1 + 26392), 0x2004uLL);
  sub_122C42C(a1 + 34592, 0);
  *(a1 + 42832) = 0;
  *(a1 + 42816) = 0u;
  bzero((a1 + 34616), 0x2004uLL);
  sub_122C25C(a1 + 42816, 0);
  *(a1 + 51056) = 0;
  *(a1 + 51040) = 0u;
  bzero((a1 + 42840), 0x2004uLL);
  sub_122C4EC(a1 + 51040, 0);
  *(a1 + 59280) = 0;
  *(a1 + 59264) = 0u;
  bzero((a1 + 51064), 0x2004uLL);
  sub_122C4EC(a1 + 59264, 0);
  *(a1 + 67504) = 0;
  *(a1 + 67488) = 0u;
  bzero((a1 + 59288), 0x2004uLL);
  sub_122C42C(a1 + 67488, 0);
  *(a1 + 75752) = 0;
  *(a1 + 75736) = 0u;
  bzero((a1 + 67512), 0x201CuLL);
  sub_122C25C(a1 + 75736, 0);
  *(a1 + 83976) = 0;
  *(a1 + 83960) = 0u;
  bzero((a1 + 75760), 0x2004uLL);
  sub_122C148(a1 + 83960, 0);
  std::mutex::lock(a1);
  bzero((a1 + 16512), 0x678uLL);
  sub_1229C38(a1);
  std::mutex::unlock(a1);
  return a1;
}

void sub_1229B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::mutex::unlock(v12);
  sub_122C0F4(&a12);
  sub_122C208(&a12);
  sub_122C31C(&a12);
  sub_122C3D8(&a12);
  sub_122C498(&a12);
  sub_122C498(&a12);
  sub_122C208(&a12);
  sub_122C3D8(&a12);
  a12 = a10;
  sub_122C3D8(&a12);
  sub_122C3D8(&a12);
  a12 = a11;
  sub_122C3D8(&a12);
  std::mutex::~mutex(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_1229C38(uint64_t a1)
{
  sub_1224458("und", 3, v4);
  v3 = sub_122A6DC(a1, v4);
  *sub_122C03C(a1 + 42840, &v3) = v3;
  sub_1224458("", 0, v4);
  sub_122BE14(a1, v4, "und");
  sub_1224458("grl", 3, v4);
  sub_122BE14(a1, v4, "el-Latn");
  sub_1224458("rul", 3, v4);
  sub_122BE14(a1, v4, "ru-Latn");
  sub_1224458("ukl", 3, v4);
  sub_122BE14(a1, v4, "uk-Latn");
  sub_1224458("kol", 3, v4);
  sub_122BE14(a1, v4, "ko-Latn");
  sub_1224458("thl", 3, v4);
  sub_122BE14(a1, v4, "th-Latn");
  sub_1224458("bet", 3, v4);
  sub_122BE14(a1, v4, "be-Latn");
  sub_1224458("bun", 3, v4);
  sub_122BE14(a1, v4, "bg-Latn");
  sub_1224458("mat", 3, v4);
  sub_122BE14(a1, v4, "mk-Latn");
  sub_1224458("ja-kj", 5, v4);
  sub_122BE14(a1, v4, "ja-Kanj");
  sub_1224458("ja-kt", 5, v4);
  sub_122BE14(a1, v4, "ja-Kana");
  sub_1224458("ja-hg", 5, v4);
  sub_122BE14(a1, v4, "ja-Hira");
  sub_1224458("scc", 3, v4);
  sub_122BE14(a1, v4, "sr-Latn");
  sub_1224458("scy", 3, v4);
  sub_122BE14(a1, v4, "sr-Cyrl");
  sub_1224458("val", 3, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("val-Latn", 8, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("val-ES", 6, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("val-Latn-ES", 11, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("mol", 3, v4);
  sub_122BE14(a1, v4, "ro-MD");
  sub_1224458("hel", 3, v4);
  sub_122BE14(a1, v4, "he-Latn");
  sub_1224458("chl", 3, v4);
  sub_122BE14(a1, v4, "zh-Latn");
  sub_1224458("jp", 2, v4);
  sub_122BE14(a1, v4, "ja");
  sub_1224458("jp-JP", 5, v4);
  sub_122BE14(a1, v4, "ja-JP");
  sub_1224458("ctn", 3, v4);
  sub_122BE14(a1, v4, "yue-Latn");
  sub_1224458("smc", 3, v4);
  sub_122BE14(a1, v4, "cnr-Cyrl-ME");
  sub_1224458("sml", 3, v4);
  sub_122BE14(a1, v4, "cnr-Latn-ME");
  sub_1224458("Lithuanian [lt]", 15, v4);
  sub_122BE14(a1, v4, "lt");
  sub_1224458("Lithuanian[lt]", 14, v4);
  sub_122BE14(a1, v4, "lt");
  sub_1224458("Estonian [et]", 13, v4);
  sub_122BE14(a1, v4, "et");
  sub_1224458("Estonian[et]", 12, v4);
  sub_122BE14(a1, v4, "et");
  sub_1224458("Latvian [lv]", 12, v4);
  sub_122BE14(a1, v4, "lv");
  sub_1224458("Latvian[lv]", 11, v4);
  sub_122BE14(a1, v4, "lv");
  sub_1224458("ja-Kata", 7, v4);
  sub_122BE14(a1, v4, "ja-Kana");
  sub_1224458("es ", 3, v4);
  sub_122BE14(a1, v4, "es");
  sub_1224458("zh-yue-Latn", 11, v4);
  return sub_122BE14(a1, v4, "yue-Latn");
}

BOOL sub_122A240(uint64_t a1)
{
  v3 = *(a1 + 8);
  if ((v3 - 32) < 0xFFFFFFFFFFFFFFE8)
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  v5 = a1 + v3;
  v6 = *(a1 + v3 + 13);
  if (v6 != 95 && v6 != 45)
  {
    return 0;
  }

  v7 = *(v5 + 10);
  if (v7 != 95 && v7 != 45)
  {
    return 0;
  }

  v8 = (__toupper(*(v5 + 11)) | 0x3000000) - 0x1000000;
  v12 = v8;
  v9 = __toupper(*(v5 + 12));
  if (!(v8 >> 26))
  {
    v12 = (v8 | (v9 << 8)) - 0x1000000;
  }

  result = sub_1233E5C(&v12);
  if (result)
  {
    v12 = 50331648;
    v10 = __toupper(*(v5 + 14));
    if (HIBYTE(v12) - 1 <= 2u)
    {
      v12 = ((v10 << (24 - 8 * HIBYTE(v12))) | v12) - 0x1000000;
    }

    v11 = __toupper(*(v5 + 15));
    if (HIBYTE(v12) - 1 <= 2u)
    {
      v12 = ((v11 << (24 - 8 * HIBYTE(v12))) | v12) - 0x1000000;
    }

    return sub_1233E5C(&v12);
  }

  return result;
}

BOOL sub_122A38C(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 - 32 < 0xFFFFFFFFFFFFFFE5)
  {
    return 0;
  }

  v9 = v1;
  v10 = v2;
  v5 = a1 + 16 * (v3 > 7) + v3;
  if (*(v5 - 3) != 95)
  {
    return 0;
  }

  v6 = (__toupper(*(v5 - 2)) | 0x3000000) - 0x1000000;
  v8 = v6;
  v7 = __toupper(*(v5 - 1));
  if (!(v6 >> 26))
  {
    v8 = (v6 | (v7 << 8)) - 0x1000000;
  }

  return sub_1233E5C(&v8);
}

uint64_t sub_122A43C(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0x20)
  {
    LODWORD(v10.__locale_) = 2;
    v11 = off_26C73C0;
    v12 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/localecacheimpl.cpp";
    v13 = "isValidLocaleString";
    v14 = 162;
    sub_D7B0(v15);
    sub_4A5C(v16, "Trying to construct a locale with a malformed string: hash=", 59);
    std::ostream::operator<<();
    sub_4A5C(v16, " size=", 6);
    std::ostream::operator<<();
    goto LABEL_24;
  }

  v2 = &a1[2 * (v1 > 7)];
  if (v1)
  {
    v3 = 0;
    v4 = v2;
    while (1)
    {
      v5 = *v4;
      v7 = v5 == 95 || v5 == 45;
      if ((v5 - 48) < 0xA || (v5 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_14;
      }

      if (*v4 > 0x3Fu)
      {
        break;
      }

      if (v5 == 45)
      {
        goto LABEL_14;
      }

      if (v5 != 61)
      {
        goto LABEL_23;
      }

LABEL_15:
      ++v4;
      v3 = v7;
      if (!--v1)
      {
        goto LABEL_25;
      }
    }

    if (v5 == 64)
    {
      goto LABEL_15;
    }

    if (v5 != 95)
    {
LABEL_23:
      LODWORD(v10.__locale_) = 2;
      v11 = off_26C73C0;
      v12 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/localecacheimpl.cpp";
      v13 = "isValidLocaleString";
      v14 = 178;
      sub_D7B0(v15);
      sub_4A5C(v16, "Trying to construct a locale with a non-BCP47 standard conforming string: String='", 82);
      std::ostream::write();
      sub_4A5C(v16, "'.", 2);
      goto LABEL_24;
    }

LABEL_14:
    if (v3 && v7)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

LABEL_25:
  if (sub_21F2714(v2, 0) == 50331648)
  {
    LODWORD(v10.__locale_) = 2;
    v11 = off_26C73C0;
    v12 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/localecacheimpl.cpp";
    v13 = "isValidLocaleString";
    v14 = 189;
    sub_D7B0(v15);
    sub_4A5C(v16, "Trying to construct a locale with a non-BCP47 standard conforming string: String='", 82);
    std::ostream::write();
    sub_4A5C(v16, "'.", 2);
LABEL_24:
    sub_12229BC(&v10);
    return 0;
  }

  return 1;
}

void sub_122A6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_12229BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_122A6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1226E08(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return *(v4[1] + 48);
  }

  if (sub_122A43C(a2))
  {
    if (sub_122A240(a2))
    {
      sub_1224458((a2 + 16 * (*(a2 + 8) > 7uLL)), *(a2 + 8) - 3, &v14);
      return sub_122A6DC(a1, &v14);
    }

    else
    {
      sub_21F2820((a2 + 16 * (*(a2 + 8) > 7uLL)), &v14);
      v11 = sub_122A950(a1, &v14, &v14 + 1, &v15, &v15 + 1);
      if (!sub_12274C0(a2, (v11 + 56)))
      {
        v10 = *(a2 + 16);
        v12[0] = *a2;
        v12[1] = v10;
        v12[2] = *(a2 + 32);
        v13 = v11;
        sub_122A860(a1 + 64, v12);
      }

      return v11;
    }
  }

  else
  {
    v14 = xmmword_2322220;
    v15 = 0u;
    v16 = 0u;
    v7 = sub_122A6DC(a1, &v14);
    v8 = *(a2 + 16);
    v14 = *a2;
    v15 = v8;
    v9 = *(a2 + 32);
    v5 = v7;
    v16 = v9;
    v17 = v7;
    sub_122A860(a1 + 64, &v14);
  }

  return v5;
}

uint64_t sub_122A860(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v12 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_6:
    sub_122CB00((a1 + 8200), v8, &v12, a2);
  }

  v9 = v5 + v7;
  v10 = v5 + v7;
  while (*v10 != v4 || !sub_12274C0(*(v10 + 8), a2))
  {
    v10 += 16;
    v9 += 16;
    if (v10 == v8)
    {
      goto LABEL_6;
    }
  }

  return v9;
}

uint64_t sub_122A950(uint64_t a1, unint64_t *a2, unint64_t *a3, unsigned int *a4, unint64_t *a5)
{
  sub_122B0D4(a2, a3, a4, a5, &v8);
  v6 = sub_1226E08(a1 + 59288, &v8);
  if (*(a1 + 67496) == v6)
  {
    operator new();
  }

  return *(v6[1] + 48);
}

uint64_t sub_122AAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1226E08(a1 + 8288, a2);
  if (*(a1 + 16496) != v4)
  {
    return *(v4[1] + 48);
  }

  if (sub_122A38C(a2))
  {
    sub_1224458((a2 + 16 * (*(a2 + 8) > 7uLL)), *(a2 + 8) - 3, v8);
  }

  else
  {
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v8[2] = *(a2 + 32);
  }

  v7 = sub_122ABA4(a1 + 8288, a2);
  result = sub_122A6DC(a1, v8);
  *v7 = result;
  return result;
}

uint64_t sub_122ABA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_6:
    sub_122D284((a1 + 8200), v8, &v11, a2);
  }

  v9 = v5 + v7;
  while (*v9 != v4 || !sub_12274C0(*(v9 + 8), a2))
  {
    v9 += 16;
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  return *(v9 + 8) + 48;
}

uint64_t sub_122AC88(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 16512;
  v3 = *(a1 + 16512 + 8 * a2);
  if (!v3)
  {
    v6 = qword_22B3F80[a2];
    v7[0] = v6 & 0xFFFFFFFFFFFFFFLL;
    v7[1] = 7 - HIBYTE(v6);
    v8 = 0u;
    v9 = 0u;
    v3 = sub_122A6DC(a1, v7);
    *(v2 + 8 * a2) = v3;
  }

  return v3;
}

uint64_t sub_122AD2C(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 17664;
  v3 = *(a1 + 17664 + 8 * a2);
  if (!v3)
  {
    v6 = *&aUnd_0[8 * a2];
    v7[0] = v6 & 0xFFFFFFFFFFFFFFLL;
    v7[1] = 7 - HIBYTE(v6);
    v8 = 0u;
    v9 = 0u;
    v3 = sub_122A6DC(a1, v7);
    *(v2 + 8 * a2) = v3;
  }

  return v3;
}

uint64_t sub_122ADD0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1226E08(a1 + 18168, a2);
  if (*(a1 + 26376) != v4)
  {
    return *(v4[1] + 48);
  }

  v6 = sub_122ABA4(a1 + 18168, a2);
  v12 = 50331648;
  v11 = 0;
  if (sub_122AF18(&a2[2 * (a2[1] > 7)], &v12, &v11))
  {
    v7 = *v11;
    if (v7 == 95 || v7 == 45)
    {
      ++v11;
      v8 = sub_21F2924(v11, &v11);
    }

    else
    {
      v8 = 0x700000000000000;
    }

    v9 = &unk_2302590;
    v10 = 12672;
    while (*(v9 - 4) != v12 || *(v9 - 1) != v8)
    {
      v9 += 4;
      v10 -= 64;
      if (!v10)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    memset(&v13[1], 0, 32);
    v13[0] = xmmword_2322220;
    v9 = v13;
  }

  result = sub_122A6DC(a1, v9);
  *v6 = result;
  return result;
}

BOOL sub_122AF18(unsigned __int8 *a1, unsigned int *a2, void *a3)
{
  v6 = 50331648;
  while (1)
  {
    v7 = *a1;
    if (v7 == 45)
    {
      break;
    }

    if (v7 == 95 || v7 == 0)
    {
      break;
    }

    v9 = __tolower(v7);
    if (HIBYTE(v6) - 1 <= 2u)
    {
      v6 = ((v9 << (24 - 8 * HIBYTE(v6))) | v6) - 0x1000000;
    }

    ++a1;
  }

  *a2 = v6;
  if (a3)
  {
    *a3 = a1;
  }

  return HIBYTE(v6) == 0;
}

uint64_t sub_122AFC4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1226E08(a1 + 26392, a2);
  if (*(a1 + 34600) != v4)
  {
    return *(v4[1] + 48);
  }

  v6 = sub_122ABA4(a1 + 26392, a2);
  v10 = 50331648;
  v9 = 0;
  if (sub_122AF18(&a2[2 * (a2[1] > 7)], &v10, &v9))
  {
    v7 = "af-ZA";
    v8 = 8400;
    while (*(v7 - 2) != v10)
    {
      v7 += 56;
      v8 -= 56;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    memset(&v11[1], 0, 32);
    v11[0] = xmmword_2322220;
    v7 = v11;
  }

  result = sub_122A6DC(a1, v7);
  *v6 = result;
  return result;
}

unint64_t *sub_122B0D4@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unsigned int *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = (3 - HIBYTE(*result));
  *a5 = *result & 0xFFFFFF;
  *(a5 + 8) = v8;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  if (*a2 != 0x700000000000000)
  {
    if (v8 <= 0x1E)
    {
      sub_122C6C8(a5, 45);
    }

    result = sub_122C7CC(a5, a2);
  }

  if (*a3 != 50331648)
  {
    if ((*(a5 + 8) + 1) <= 0x1F)
    {
      sub_122C6C8(a5, 45);
    }

    result = sub_122C864(a5, a3);
  }

  if (a4[1])
  {
    return sub_122F09C((a5 + 8), a5, a4);
  }

  return result;
}

char *sub_122B1B8(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = a1;
    if (v12)
    {
      sub_122422C(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = (v13 + 1);
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_122C9B8(v17);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
  return v6 - 8;
}

uint64_t sub_122B2B4(uint64_t a1, _BYTE *a2)
{
  v19 = a2;
  v3 = sub_122B458(a1 + 42840, &v19);
  if (*(a1 + 51048) != v3)
  {
    return *(v3[1] + 8);
  }

  v6 = v19;
  v7 = (&unk_26C3560 + 16 * (*v19 & 0x7F));
  v8 = v7[1];
  v4 = v19;
  if (*v7 != v8)
  {
    v9 = *v7 + 16;
    while (!sub_122B4B4(v9 - 16, v6))
    {
      v10 = v9 + 16;
      v9 += 32;
      if (v10 == v8)
      {
        v4 = v6;
        goto LABEL_26;
      }
    }

    v11 = (v6 + 4);
    v12 = *v6;
    if (*v6 == 50331648 || v12 == 6581877)
    {
      v14 = v9;
    }

    else
    {
      v14 = v6;
    }

    v15 = *(v6 + 8);
    if (v15 == 0x700000000000000 || (v16 = (v6 + 8), v15 == 0x30000007A7A7A5ALL) && *(v9 - 8) != 0x700000000000000)
    {
      v16 = (v9 + 8);
    }

    if (*v11 == 50331648)
    {
      v17 = (v9 + 4);
    }

    else
    {
      v17 = (v6 + 4);
    }

    if (v12 != *v14 || v15 != *v16 || (v4 = v6, *v11 != *v17))
    {
      v4 = sub_122A950(a1, v14, v16, v17, (v6 + 16));
    }
  }

LABEL_26:
  if (*(v6 + 8) == 0x30000007A7A7A5ALL && *(v4 + 8) != 0x30000007A7A7A5ALL)
  {
    v4 = sub_122B2B4(a1, v4);
  }

  v18.n128_u64[0] = v19;
  v18.n128_u64[1] = v4;
  sub_122B508(a1 + 42840, &v18);
  return v4;
}

void *sub_122B458(uint64_t a1, void *a2)
{
  v2 = 16 * *(a1 + 4 * (*a2 & 0x7FFLL));
  v3 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v2 == 16 * v3)
  {
    return *(a1 + 8208);
  }

  v4 = *(a1 + 8200);
  v5 = (v4 + 16 * v3);
  v6 = (v2 + v4);
  while (*v6 != *a2)
  {
    v6 += 2;
    if (v6 == v5)
    {
      return *(a1 + 8208);
    }
  }

  return v6;
}

BOOL sub_122B4B4(uint64_t a1, uint64_t a2)
{
  if (*a1 != 50331648 && *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 != 0x700000000000000 && v3 != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 4);
  return v5 == 50331648 || v5 == *(a2 + 4);
}

uint64_t sub_122B508(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u64[0];
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_122D5B8((a1 + 8200), v8, &v11, a2);
  }

  result = v5 + v7;
  v10 = (v5 + v7);
  while (*v10 != v4)
  {
    v10 += 2;
    result += 16;
    if (v10 == v8)
    {
      goto LABEL_5;
    }
  }

  return result;
}

const void **sub_122B5C0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_122B458(a1 + 34616, &v21);
  if (*(a1 + 42824) != v3)
  {
    return (v3[1] + 8);
  }

  v6 = sub_122B77C(a1 + 34616, &v21);
  v4 = v6;
  v7 = (&unk_2302480 + 2 * (*(v21 + 16 * (*(v21 + 64) > 7uLL) + 56) & 0x7F));
  v8 = *v7;
  v9 = v7[1];
  if (v8 == v9)
  {
LABEL_16:
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v10 = v9;
    v11 = (&unk_26C3D60 + 32 * v8 + 16);
    v12 = 32 * v10 - 32 * v8;
    while (1)
    {
      v13 = *(v11 - 4);
      if (v13 == 50331648 || v13 == *v21)
      {
        v15 = *(v11 - 1);
        if (v15 == 0x700000000000000 || v15 == *(v21 + 8))
        {
          break;
        }
      }

      v11 += 4;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v17 = *v11;
    v18 = v11[1];
  }

  sub_122B834(v6, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
  for (; v17 != v18; v17 += 24)
  {
    v19 = 50331648;
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v20 = sub_122A950(a1, v17, (v17 + 8), &v19, v22);
    sub_122B8D4(v4, &v20, (v17 + 16));
  }

  return v4;
}

uint64_t sub_122B77C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_122DD0C((a1 + 8200), v8, &v11, a2);
  }

  v9 = (v5 + v7);
  while (*v9 != v4)
  {
    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  return v9[1] + 8;
}

void sub_122B834(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_122CA60(a1, a2);
    }

    sub_1794();
  }
}

void *sub_122B8D4(const void **a1, void *a2, uint64_t *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = v6 - *a1;
    v12 = v11 >> 4;
    v13 = (v11 >> 4) + 1;
    if (v13 >> 60)
    {
      sub_1794();
    }

    v14 = v7 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_122CA60(a1, v13);
    }

    v15 = (16 * v12);
    v16 = *a3;
    *v15 = *a2;
    v15[1] = v16;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    v17 = *a1;
    *a1 = 0;
    a1[1] = v9;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v8 = *a3;
    *v6 = *a2;
    *(v6 + 1) = v8;
    v9 = (v6 + 16);
  }

  a1[1] = v9;
  return (v9 - 16);
}

const void **sub_122B9D4(uint64_t a1, int *a2)
{
  v4 = sub_1227E44(a1 + 75760, a2);
  if (*(a1 + 83968) != v4)
  {
    return (v4[1] + 8);
  }

  result = sub_122BB60(a1 + 75760, a2);
  v6 = (&unk_22BC828 + 2 * (*a2 & 0x7F));
  v7 = *v6;
  v8 = v6[1];
  if (v7 != v8)
  {
    v9 = 5 * v7;
    v10 = (&unk_26C0CE8 + 40 * v7 + 24);
    v11 = 40 * v8 - 8 * v9;
    while (*(v10 - 5) != *a2)
    {
      v10 += 5;
      v11 -= 40;
      if (!v11)
      {
        return result;
      }
    }

    v13 = *(v10 - 1);
    v12 = *v10;
    v16 = result;
    sub_122BC20(result, (*v10 - v13) >> 5);
    if (v12 != v13)
    {
      v14 = v13;
      do
      {
        v17 = v14;
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        v15 = sub_122A950(a1, v14, v14 + 1, a2, v18);
        *&v18[0] = sub_122B2B4(a1, v15);
        sub_122BCE0(v16, v18, v17 + 2, v17 + 6);
        v14 = v17 + 4;
      }

      while (v17 + 4 != v12);
    }

    return v16;
  }

  return result;
}

uint64_t sub_122BB60(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *a2 & 0xFFFFFF;
  v12 = v5;
  v6 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v7 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v8 = *(a1 + 8200);
  v9 = (v8 + 16 * v7);
  if (v6 == 16 * v7)
  {
LABEL_5:
    sub_122E524((a1 + 8200), v9, &v12, a2);
  }

  v10 = (v6 + v8);
  while (*v10 != v5)
  {
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  return v10[1] + 8;
}

void sub_122BC20(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_122CAA8(a1, a2);
    }

    sub_1794();
  }
}

uint64_t sub_122BCE0(const void **a1, void *a2, uint64_t *a3, int *a4)
{
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v12 = 0xAAAAAAAAAAAAAAALL;
    v13 = *a1;
    v14 = v7 - *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) + 1;
    if (v15 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v13) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 < 0x555555555555555)
    {
      v12 = v15;
    }

    if (v12)
    {
      sub_122CAA8(a1, v12);
    }

    v17 = 8 * (v14 >> 3);
    v18 = *a3;
    v19 = *a4;
    *v17 = *a2;
    *(v17 + 8) = v18;
    *(v17 + 16) = v19;
    v11 = v17 + 24;
    v20 = v17 - v14;
    memcpy((v17 - v14), v13, v14);
    v21 = *a1;
    *a1 = v20;
    a1[1] = v11;
    a1[2] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v9 = *a3;
    v10 = *a4;
    *v7 = *a2;
    *(v7 + 1) = v9;
    *(v7 + 4) = v10;
    v11 = (v7 + 24);
  }

  a1[1] = v11;
  return v11 - 24;
}

uint64_t sub_122BE14(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  sub_122BF38(a3, &v8);
  v5 = sub_122A950(a1, &v8, &v9, &v10, v11);
  *sub_122ABA4(a1 + 64, a2) = v5;
  *sub_122ABA4(a1 + 59288, a2) = v5;
  sub_122BF38(&a2[2 * (a2[1] > 7)], &v12);
  sub_122B0D4(&v12, &v13, &v14, v15, v7);
  result = sub_12274C0(a2, v7);
  if ((result & 1) == 0)
  {
    if (v7[1])
    {
      *sub_122ABA4(a1 + 64, v7) = v5;
      result = sub_122ABA4(a1 + 59288, v7);
      *result = v5;
    }
  }

  return result;
}

double sub_122BF38@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  *(a2 + 8) = 0x700000000000000;
  *(a2 + 16) = 50331648;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *a2 = sub_21F2A28(a1, &v10);
  v4 = *v10;
  if (v4 == 95 || v4 == 45)
  {
    v9 = 0;
    *(a2 + 8) = sub_21F2924(v10 + 1, &v9);
    v5 = v10;
    if (v9 != v10 + 1)
    {
      v10 = v9;
      v5 = v9;
    }

    v6 = *v5;
    if (v6 == 95 || v6 == 45)
    {
      v8 = 0;
      *(a2 + 16) = sub_21F2620((v5 + 1), &v8);
      v7 = v10;
      if (v8 != v10 + 1)
      {
        v10 = v8;
        v7 = v8;
      }

      if (*v7 == 45)
      {
        return sub_122C558(v7 + 1, 45, a2 + 24);
      }
    }
  }

  return result;
}

uint64_t sub_122C03C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_122ED4C((a1 + 8200), v8, &v11, a2);
  }

  v9 = (v5 + v7);
  while (*v9 != v4)
  {
    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  return v9[1] + 8;
}