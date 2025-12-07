void sub_262614D54(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v2, 0x60C40CE5A77A8);
  v4 = *(v1 + 24);
  if (v4)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void TLexerLexicon::~TLexerLexicon(TLexerLexicon *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    TRegExp::~TRegExp(v2);
    MEMORY[0x26672B1B0]();
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void TLexerLexicon::addRegExp(const void **a1, __int32 *a2, uint64_t a3)
{
  TRegExp::add(a1[6], a2, (a1[1] - *a1) >> 3);
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v8 = *a1;
    v9 = v6 - *a1;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    *(8 * v10) = a3;
    v7 = (8 * v10 + 8);
    memcpy(0, v8, v9);
    v15 = *a1;
    *a1 = 0;
    a1[1] = v7;
    a1[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 8;
  }

  a1[1] = v7;
}

void TLexerLexicon::addLiteral(const void **a1, const void **a2, uint64_t a3)
{
  v6 = v8;
  v7 = xmmword_26286B6F0;
  v9 = 1;
  TRegExp::stringToRegExp(a2, &v6, 0, 0);
  if (*(&v7 + 1) >= v7)
  {
    if (v9)
    {
      v10 = 0;
      TBuffer<wchar_t>::insert(&v6, *(&v7 + 1), &v10, 1uLL);
      v5 = v6;
      --*(&v7 + 1);
    }

    else
    {
      v5 = v6;
      if (v7)
      {
        v6[v7 - 1] = 0;
      }
    }
  }

  else
  {
    v5 = v6;
    v6[*(&v7 + 1)] = 0;
  }

  TLexerLexicon::addRegExp(a1, v5, a3);
  if (v9 == 1 && v6 != v8)
  {
    if (v6)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_262615080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v3);
  }

  _Unwind_Resume(a1);
}

void TLexerLexicon::addString(void *a1, int a2, uint64_t a3, int a4)
{
  v7 = a1[4];
  v8 = a1[5];
  if (v7 >= v8)
  {
    v10 = a1[3];
    v11 = v7 - v10;
    v12 = (v7 - v10) >> 4;
    v13 = v12 + 1;
    if ((v12 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v14 = v8 - v10;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenState>>((a1 + 3), v13);
    }

    v15 = 16 * v12;
    *v15 = a3;
    *(v15 + 8) = a2;
    *(v15 + 12) = a4;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    v16 = a1[3];
    a1[3] = 0;
    a1[4] = v9;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a3;
    v9 = v7 + 16;
    *(v7 + 8) = a2;
    *(v7 + 12) = a4;
  }

  a1[4] = v9;
}

uint64_t TLexerLexicon::findLongestMatch(void *a1, unsigned int **a2, TAllocator *this)
{
  v4 = a2;
  v6 = a1[3];
  v7 = *a2;
  v8 = a1[4] - v6;
  if (v8)
  {
    v9 = 0;
    v10 = v8 >> 4;
    v11 = *v7;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = v6 + 8;
    while (v11 != *(v12 + v9))
    {
      v9 += 16;
      if (!--v10)
      {
        goto LABEL_47;
      }
    }

    v13 = (v7 + 1);
    v14 = v7[1];
    v15 = v14 == v11;
    for (i = v7 + 1; !v15 && v14 != 0; v15 = *i == v11)
    {
      if (v14 == 92 && i[1])
      {
        v18 = 8;
      }

      else
      {
        v18 = 4;
      }

      i = (i + v18);
      v14 = *i;
    }

    if (v14 == v11)
    {
      *v4 = v13;
      v19 = (i - v13);
      v20 = i - v13;
      if ((v20 + 1) >> 62)
      {
        v21 = -1;
      }

      else
      {
        v21 = 4 * (v20 + 1);
      }

      v22 = TAllocator::allocate(this, v21);
      wcsncpy(v22, *v4, v20);
      *&v19[v22] = 0;
      v23 = a1[3] + v9;
      v24 = *(v23 + 8);
      v25 = *(v23 + 12);
      v26 = v22;
      for (j = v22; ; ++j)
      {
        v28 = *v26;
        if (*v26 == 92)
        {
          if (v25 == 2)
          {
            v32 = v26[1];
            if (v32 == v24)
            {
              v28 = v26[1];
            }

            else
            {
              v28 = 92;
            }

            if (v32 == 92 || v32 == v24)
            {
              ++v26;
            }
          }

          else if (v25 == 1)
          {
            v30 = v26[1];
            ++v26;
            v29 = v30;
            if (v30 == 114)
            {
              v31 = 13;
            }

            else
            {
              v31 = v29;
            }

            if (v29 == 116)
            {
              v31 = 9;
            }

            if (v29 == 110)
            {
              v28 = 10;
            }

            else
            {
              v28 = v31;
            }
          }

          else
          {
            v28 = 92;
          }
        }

        else if (!v28)
        {
          *j = 0;
          *v4 = i + 1;
          return *(a1[3] + v9);
        }

        *j = v28;
        ++v26;
      }
    }
  }

LABEL_47:
  __p = 0;
  v61 = 0;
  v62 = 0;
  TRegExp::match(a1[6], v7, 2, &__p);
  v34 = __p;
  if (v61 == __p)
  {
    goto LABEL_70;
  }

  v58 = a1;
  v59 = v4;
  v35 = 0;
  v36 = 0;
  v37 = 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 3);
  do
  {
    v38 = &v34[v35];
    v39 = *(*&v34[v35 + 8] - 4);
    {
      operator new();
    }

    if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v39))
    {
      goto LABEL_63;
    }

    v40 = **(v38 + 1);
    {
      operator new();
    }

    v41 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
    if ((v40 < 48 || v40 >= 0x3A && (v40 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v40) == -1)) && (TLocaleInfo::isAlpha(v41, v40) & 1) == 0)
    {
LABEL_63:
      if (v37 == 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 3) || (v42 = *(v38 + 1), v43 = __p + 24 * v37, v44 = *(v43 + 1), v42 > v44) || v42 == v44 && *&v34[v35 + 16] < *(v43 + 2))
      {
        v37 = v36;
      }
    }

    ++v36;
    v34 = __p;
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 3);
    v35 += 24;
  }

  while (v36 < v45);
  v4 = v59;
  if (v37 == v45)
  {
LABEL_70:
    v46 = TAllocator::allocate(this, 8);
    v47 = (*v4 + 1);
    *v46 = **v4;
    *v4 = v47;
    v48 = __p;
    v56 = -1;
    if (!__p)
    {
      return v56;
    }
  }

  else
  {
    v49 = *(__p + 3 * v37 + 1) - *v59;
    v50 = (v49 >> 2) + 1;
    if (v50 >> 62)
    {
      v51 = -1;
    }

    else
    {
      v51 = 4 * v50;
    }

    v52 = TAllocator::allocate(this, v51);
    wcsncpy(v52, *v59, v49 >> 2);
    *(v52 + v49) = 0;
    v48 = __p;
    v53 = __p + 24 * v37;
    v55 = *(v53 + 1);
    v54 = *(v53 + 2);
    *v59 = v55;
    v56 = *(*v58 + 8 * v54);
  }

  v61 = v48;
  operator delete(v48);
  return v56;
}

void sub_2626155D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  MEMORY[0x26672B1B0](v13, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t TLexer::TLexer(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = a1 + 32;
  TAllocator::TAllocator((a1 + 32), 2048);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 72) = v10;
  *(a1 + 80) = a4;
  *(a1 + 24) = 0;
  MEMORY[0x26672AEC0](a1, "'string'");
  v19 = a2;
  v11 = *a2;
  if (*a2)
  {
    do
    {
      {
        operator new();
      }

      if (v11 > 159)
      {
        if (v11 >= 12288)
        {
          if (v11 != 65279 && v11 != 12288)
          {
LABEL_19:
            LongestMatch = TLexerLexicon::findLongestMatch(*(a1 + 80), &v19, *(a1 + 72));
            v15 = v14;
            v16 = TAllocator::allocate(*(a1 + 72), 24);
            *v16 = LongestMatch;
            v16[1] = v15;
            v16[2] = 0;
            v18 = v16;
            std::vector<TWord const*>::push_back[abi:ne200100](a1 + 88, &v18);
            v12 = v19;
            goto LABEL_17;
          }
        }

        else if (v11 != 160 && v11 != 8203)
        {
          goto LABEL_19;
        }
      }

      else if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
      {
        goto LABEL_19;
      }

      v12 = ++v19;
LABEL_17:
      v11 = *v12;
    }

    while (*v12);
  }

  return a1;
}

void sub_2626157EC(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v4, 0x1070C40ADD13FEBLL);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  TAllocator::clear(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void TLexer::TLexer(TLexer *this, TInputStream *a2, unint64_t a3, const TLexerLexicon *a4, TAllocator *a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  TAllocator::TAllocator((this + 32), 2048);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v9;
  }

  *(this + 9) = v10;
  *(this + 10) = a4;
  *(this + 3) = 0;
  if (*(a2 + 39) >= 0)
  {
    v11 = a2 + 16;
  }

  else
  {
    v11 = *(a2 + 2);
  }

  MEMORY[0x26672AEC0](this, v11);
  MEMORY[0x26672AF30](a2 + 128, &unk_26287F798);
  __s1 = v36;
  v35 = xmmword_26286B6F0;
  v37 = 1;
LABEL_8:
  while (TInputStream::getNextLine(a2, &__s1))
  {
    if (*(&v35 + 1) >= v35)
    {
      if (v37)
      {
        *__p = 0;
        TBuffer<wchar_t>::insert(&__s1, *(&v35 + 1), __p, 1uLL);
        v12 = __s1;
        --*(&v35 + 1);
      }

      else
      {
        v12 = __s1;
        if (v35)
        {
          __s1[v35 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = __s1;
      __s1[*(&v35 + 1)] = 0;
    }

    v33 = v12;
    v13 = *v12;
    if (*v12)
    {
      while (1)
      {
        {
          operator new();
        }

        if (v13 > 159)
        {
          if (v13 >= 12288)
          {
            if (v13 == 65279 || v13 == 12288)
            {
LABEL_27:
              v14 = ++v33;
              goto LABEL_28;
            }
          }

          else if (v13 == 160 || v13 == 8203)
          {
            goto LABEL_27;
          }
        }

        else if (v13 <= 0x20 && ((1 << v13) & 0x100002600) != 0)
        {
          goto LABEL_27;
        }

        v14 = v33;
        if (!wcsncmp(v33, "/", 2uLL))
        {
          goto LABEL_8;
        }

        if (!wcsncmp(v14, "/", 2uLL))
        {
          while (TInputStream::getNextLine(a2, &__s1))
          {
            if (*(&v35 + 1) >= v35)
            {
              if (v37)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(&__s1, *(&v35 + 1), __p, 1uLL);
                v21 = __s1;
                --*(&v35 + 1);
              }

              else
              {
                v21 = __s1;
                if (v35)
                {
                  __s1[v35 - 1] = 0;
                }
              }
            }

            else
            {
              v21 = __s1;
              __s1[*(&v35 + 1)] = 0;
            }

            v22 = wcsstr(v21, "*");
            if (v22)
            {
              v14 = v22 + 2;
              v33 = v22 + 2;
              break;
            }
          }

          if ((*(*a2 + *(**a2 - 24) + 32) & 2) != 0)
          {
            v24 = a2 + 16;
            if (*(a2 + 39) < 0)
            {
              v24 = *(a2 + 2);
            }

            tknPrintf("Error: %s (%llu) : /* */ mismatch", v20, v24, *(a2 + 8));
            std::string::basic_string[abi:ne200100]<0>(v29, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v30) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v29[0], v29[1]);
            }

            else
            {
              *&__p[8] = *v29;
              v32 = v30;
            }

            *__p = &unk_287527330;
            if (v32 >= 0)
            {
              v25 = &__p[8];
            }

            else
            {
              v25 = *&__p[8];
            }

            conditionalAssert(v25, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lexer.cpp", 339);
            *__p = byte_287529580;
            if (SHIBYTE(v32) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v30) < 0)
            {
              operator delete(v29[0]);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *exception = byte_287529580;
            v27 = (exception + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v27, *__p, *&__p[8]);
            }

            else
            {
              v28 = *__p;
              exception[3] = *&__p[16];
              *&v27->__r_.__value_.__l.__data_ = v28;
            }

            *exception = &unk_287527330;
          }
        }

        else
        {
          LongestMatch = TLexerLexicon::findLongestMatch(*(this + 10), &v33, *(this + 9));
          v17 = v16;
          v18 = TAllocator::allocate(*(this + 9), 24);
          v19 = *(a2 + 8);
          *v18 = LongestMatch;
          v18[1] = v17;
          v18[2] = v19;
          *__p = v18;
          std::vector<TWord const*>::push_back[abi:ne200100](this + 88, __p);
          v14 = v33;
        }

LABEL_28:
        v13 = *v14;
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }
  }

  if (v37 == 1 && __s1 != v36 && __s1 != 0)
  {
    MEMORY[0x26672B1B0]();
  }
}

void sub_262615D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TAllocator *a13, uint64_t a14, void **a15, void *a16, uint64_t a17, uint64_t a18, void *__p, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (LOBYTE(STACK[0x490]) == 1 && a24 != a14 && a24 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  v27 = *a15;
  if (*a15)
  {
    *(v24 + 96) = v27;
    operator delete(v27);
  }

  TAllocator::clear(a13);
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(a1);
}

uint64_t *ArcGraphMgr::startupArcGraphMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  ArcGraphMgr::smpArcGraphMgr = result;
  return result;
}

void ArcGraphMgr::printSize(ArcGraphMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 64);
  if (v20)
  {
    v12 = v19;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  DgnString::~DgnString(&v19);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 65);
  if (v20)
  {
    v16 = v19;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v16, v14, v14, 0);
  DgnString::~DgnString(&v19);
  *a4 += v14;
  *a5 += v14;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 66);
  if (v20)
  {
    v18 = v19;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, a3, &byte_262899963, (35 - a3), (35 - a3), v18, *a4, *a5, *a6);
  DgnString::~DgnString(&v19);
}

void sub_2626160B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t ArcGraphMgr::getArcGraphOrThrow(ArcGraphMgr *this, unsigned int a2)
{
  if (*(*this + 8) <= a2 || (result = *(**this + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 73, "fst/agmgr", 1, "%u", a2);
    return *(**this + 8 * v4);
  }

  return result;
}

double checkValidityOfDouble(unsigned __int8 *result)
{
  v1 = result[6];
  if ((result[7] & 0x7F) != 0 || v1 > 0xF)
  {
    if ((result[7] & 0x7F) == 0x7F && v1 >= 0xF0)
    {
      return errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/littlend.cpp", 93, "dfutil/littlend", 2, "%.500s %02x %02x %02x %02x %02x %02x %02x %02x", "illegal (NaN/infinity)", *result, result[1], result[2]);
    }
  }

  else
  {
    if (*result)
    {
      v4 = result[1];
      return errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/littlend.cpp", 89, "dfutil/littlend", 2, "%.500s %02x %02x %02x %02x %02x %02x %02x %02x", "denormalized", *result, v4, result[2]);
    }

    if (result[2] || result[3] || (v4 = result[4]) != 0)
    {
      v4 = 0;
      return errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/littlend.cpp", 89, "dfutil/littlend", 2, "%.500s %02x %02x %02x %02x %02x %02x %02x %02x", "denormalized", *result, v4, result[2]);
    }

    if (result[5] || result[6])
    {
      return errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/littlend.cpp", 89, "dfutil/littlend", 2, "%.500s %02x %02x %02x %02x %02x %02x %02x %02x", "denormalized", *result, v4, result[2]);
    }
  }

  return v3;
}

void RecogCtlMgr::RecogCtlMgr(RecogCtlMgr *this)
{
  *this = 0x100010000001DLL;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0x10000001DLL;
  *(this + 13) = 0;
  *(this + 24) = 1;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 19) = 0x10000001DLL;
  *(this + 21) = 0;
  *(this + 40) = 1;
  *(this + 48) = 0;
  *(this + 11) = 0u;
  *(this + 248) = 0u;
  v2 = this + 248;
  *(this + 25) = 0x10000001DLL;
  *(this + 27) = 0;
  *(this + 52) = 1;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  v3 = this + 280;
  *(this + 39) = 0;
  *(this + 37) = 0x10000001DLL;
  *(this + 76) = 1;
  *(this + 20) = 0u;
  *(this + 344) = 0u;
  v4 = this + 344;
  *(this + 84) = 0;
  *(this + 45) = 0x10000001DLL;
  *(this + 47) = 0;
  *(this + 92) = 1;
  *(this + 100) = 0;
  *(this + 24) = 0u;
  *(this + 408) = 0u;
  v5 = this + 408;
  *(this + 53) = 0x10000001DLL;
  *(this + 55) = 0;
  *(this + 108) = 1;
  *(this + 116) = 0;
  *(this + 28) = 0u;
  *(this + 472) = 0u;
  *(this + 61) = 0x10000001DLL;
  *(this + 63) = 0;
  *(this + 124) = 1;
  *(this + 132) = 0;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  DgnPrimArray<unsigned long long>::reallocElts(this + 56, 1, 1);
  v6 = *(this + 65);
  v7 = *(this + 64);
  v8 = *(this + 16);
  *(*(this + 7) + 8 * v8) = 0;
  *(this + 16) = v8 + 1;
  if (v7 == v6)
  {
    DgnPrimArray<unsigned long long>::reallocElts(v2, 1, 1);
    v7 = *(this + 64);
  }

  *(*(this + 31) + 8 * v7) = 0;
  *(this + 64) = v7 + 1;
  v9 = *(this + 72);
  if (v9 == *(this + 73))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v3, 1, 1);
    v9 = *(this + 72);
  }

  *(*(this + 35) + 8 * v9) = 0;
  *(this + 72) = v9 + 1;
  v10 = *(this + 88);
  if (v10 == *(this + 89))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v4, 1, 1);
    v10 = *(this + 88);
  }

  *(*(this + 43) + 8 * v10) = 0;
  *(this + 88) = v10 + 1;
  v11 = *(this + 104);
  if (v11 == *(this + 105))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v5, 1, 1);
    v11 = *(this + 104);
  }

  *(*(this + 51) + 8 * v11) = 0;
  *(this + 104) = v11 + 1;
  v12 = *(this + 120);
  if (v12 == *(this + 121))
  {
    DgnPrimArray<unsigned long long>::reallocElts((v2 + 224), 1, 1);
    v12 = *(this + 120);
  }

  *(*(this + 59) + 8 * v12) = 0;
  *(this + 120) = v12 + 1;
}

void sub_26261653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  DgnIOwnArray<VirtMap *>::releaseAll(v22 + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22 + 256);
  DgnIOwnArray<AdaptControllerResults *>::releaseAll(v22 + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22 + 192);
  DgnIOwnArray<Sausage *>::releaseAll(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnIOwnArray<PrefilterResult *>::releaseAll(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnIOwnArray<WordLattice *>::releaseAll(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnIOwnArray<RecogControllerBase *>::releaseAll(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a9);
  DgnIOwnArray<AdaptApplyResult *>::releaseAll(a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a11);
  DgnIOwnArray<AdaptAccumResult *>::releaseAll(a12);
  DgnIOwnArray<AdaptController *>::releaseAll(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a14);
  _Unwind_Resume(a1);
}

void RecogCtlMgr::deleteRecogController(RecogCtlMgr *this, unsigned int a2)
{
  RecogController = RecogCtlMgr::getRecogController(this, a2);
  if (((*(*RecogController + 104))(RecogController) & 1) == 0 && (*(*RecogController + 96))(RecogController))
  {
    (*(*RecogController + 120))(RecogController);
  }

  DgnDelete<RecogControllerBase>(*(*(this + 31) + 8 * a2));
  *(*(this + 31) + 8 * a2) = 0;
  if (a2)
  {
    v5 = *(this + 68);
    if (v5)
    {
      v6 = *(this + 68);
      v7 = *(this + 33);
      while (*v7 != a2)
      {
        ++v7;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v8 = v5 - 1;
      *v7 = *(*(this + 33) + 4 * v8);
      *(this + 68) = v8;
    }
  }

LABEL_11:

  IdMgr<unsigned int>::recycleId(this + 50, a2);
}

void *DgnIOwnArray<AdaptAccumResult *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptAccumResult>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<AdaptApplyResult *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptApplyResult>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<WordLattice *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WordLattice>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<PrefilterResult *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<PrefilterResult>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<Sausage *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Sausage>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<AdaptControllerResults *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptControllerResults>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<VirtMap *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<VirtMap>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void RecogCtlMgr::startupRecogCtlMgr(RecogCtlMgr *this)
{
  v1 = MemChunkAlloc(0x228uLL, 0);
  RecogCtlMgr::RecogCtlMgr(v1);
  RecogCtlMgr::smpRecogCtlMgr = v2;
}

void RecogCtlMgr::printSize(RecogCtlMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 210);
  if (v237)
  {
    v12 = v236;
  }

  else
  {
    v12 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_26287F806, a3, &unk_26287F806, v12);
  DgnString::~DgnString(&v236);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_26287F806);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 212);
  if (v237)
  {
    v15 = v236;
  }

  else
  {
    v15 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v14, (a3 + 1), &unk_26287F806, (a3 + 1), &unk_26287F806, v15);
  v233 = a6;
  DgnString::~DgnString(&v236);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, (a3 + 1), &unk_26287F806);
  v17 = *(this + 16);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(this + 7);
      if (*(v22 + 8 * v18))
      {
        v235 = 0;
        v236 = 0;
        v234 = 0;
        AdaptController::printSize(*(v22 + 8 * v18), v18, (a3 + 2), &v236, &v235, &v234);
        v19 += v236;
        v20 += v235;
        v21 += v234;
        v17 = *(this + 16);
      }

      ++v18;
    }

    while (v18 < v17);
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v17 = 0;
  }

  v23 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 12;
  }

  v24 = v23 + v19;
  v25 = v23 + v20;
  v26 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v26 = 3;
  }

  v27 = v24 + (*(this + 17) << v26);
  v28 = v25 + (v17 << v26);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 212);
  if (v237)
  {
    v30 = v236;
  }

  else
  {
    v30 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, (a3 + 1), &unk_26287F806, (34 - a3), (34 - a3), v30, v27, v28, v21);
  DgnString::~DgnString(&v236);
  *a4 += v27;
  *a5 += v28;
  *v233 += v21;
  v31 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 12;
  }

  v32 = *(this + 12);
  v33 = *(this + 13);
  v34 = v31 + 2 * (v32 - 1) + 2;
  if (v32 <= 0)
  {
    v34 = v31;
  }

  if (v33 >= v32)
  {
    v35 = v34;
  }

  else
  {
    v35 = v31;
  }

  if (v33 >= v32)
  {
    v36 = v34 + 2 * (v33 - v32);
  }

  else
  {
    v36 = v31;
  }

  if (v33 >= v32)
  {
    v37 = 0;
  }

  else
  {
    v37 = 2 * v32;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 213);
  if (v237)
  {
    v39 = v236;
  }

  else
  {
    v39 = &unk_26287F806;
  }

  v231 = (34 - a3);
  v229 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v229, &unk_26287F806, v231, v231, v39, v36, v35, v37);
  DgnString::~DgnString(&v236);
  v230 = a4;
  *a4 += v36;
  *a5 += v35;
  *v233 += v37;
  v40 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 12;
  }

  v41 = *(this + 4);
  v42 = *(this + 5);
  v43 = v42 >= v41;
  v44 = v42 - v41;
  if (v43)
  {
    if (v41 > 0)
    {
      v40 += 2 * (v41 - 1) + 2;
    }

    v40 += 2 * v44;
  }

  v45 = v40 + 20;
  v46 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 2, 1u) + 8;
  v47 = *(this + 4);
  if (v47 <= *(this + 5))
  {
    v48 = 0;
  }

  else
  {
    v48 = 2 * v47;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 215);
  if (v237)
  {
    v50 = v236;
  }

  else
  {
    v50 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v229, &unk_26287F806, v231, v231, v50, v45, v46, v48);
  DgnString::~DgnString(&v236);
  *a4 += v45;
  *a5 += v46;
  *v233 += v48;
  v51 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  v52 = *(this + 28);
  v53 = *(this + 29);
  v43 = v53 >= v52;
  v54 = v53 - v52;
  if (v43)
  {
    if (v52 > 0)
    {
      v51 += 4 * (v52 - 1) + 4;
    }

    v51 += 4 * v54;
  }

  v55 = v51 + 24;
  v56 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 26, 1u) + 12;
  v57 = *(this + 28);
  if (v57 <= *(this + 29))
  {
    v58 = 0;
  }

  else
  {
    v58 = 4 * v57;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 217);
  if (v237)
  {
    v60 = v236;
  }

  else
  {
    v60 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v229, &unk_26287F806, v231, v231, v60, v55, v56, v58);
  DgnString::~DgnString(&v236);
  *a4 += v55;
  *a5 += v56;
  *v233 += v58;
  v61 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 12;
  }

  v62 = *(this + 44);
  v63 = *(this + 45);
  v43 = v63 >= v62;
  v64 = v63 - v62;
  if (v43)
  {
    if (v62 > 0)
    {
      v61 += 4 * (v62 - 1) + 4;
    }

    v61 += 4 * v64;
  }

  v65 = v61 + 24;
  v66 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 42, 1u) + 12;
  v67 = *(this + 44);
  if (v67 <= *(this + 45))
  {
    v68 = 0;
  }

  else
  {
    v68 = 4 * v67;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 219);
  if (v237)
  {
    v70 = v236;
  }

  else
  {
    v70 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v229, &unk_26287F806, v231, v231, v70, v65, v66, v68);
  DgnString::~DgnString(&v236);
  *a4 += v65;
  *a5 += v66;
  *v233 += v68;
  v71 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v71 = 12;
  }

  v72 = *(this + 56);
  v73 = *(this + 57);
  v43 = v73 >= v72;
  v74 = v73 - v72;
  if (v43)
  {
    if (v72 > 0)
    {
      v71 += 4 * (v72 - 1) + 4;
    }

    v71 += 4 * v74;
  }

  v75 = v71 + 24;
  v76 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 54, 1u) + 12;
  v77 = *(this + 56);
  if (v77 <= *(this + 57))
  {
    v78 = 0;
  }

  else
  {
    v78 = 4 * v77;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 221);
  if (v237)
  {
    v80 = v236;
  }

  else
  {
    v80 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v229, &unk_26287F806, v231, v231, v80, v75, v76, v78);
  DgnString::~DgnString(&v236);
  *a4 += v75;
  *a5 += v76;
  *v233 += v78;
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 223);
  if (v237)
  {
    v82 = v236;
  }

  else
  {
    v82 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v81, v229, &unk_26287F806, v229, &unk_26287F806, v82);
  DgnString::~DgnString(&v236);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v83, v229, &unk_26287F806);
  v84 = *(this + 64);
  if (v84)
  {
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    do
    {
      v89 = *(this + 31);
      if (*(v89 + 8 * v85))
      {
        v235 = 0;
        v236 = 0;
        v234 = 0;
        (*(**(v89 + 8 * v85) + 280))();
        v86 += v236;
        v87 += v235;
        v88 += v234;
        v84 = *(this + 64);
      }

      ++v85;
    }

    while (v85 < v84);
  }

  else
  {
    v88 = 0;
    v87 = 0;
    v86 = 0;
    v84 = 0;
  }

  v90 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  v91 = v90 + v86;
  v92 = v90 + v87;
  v93 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v93 = 3;
  }

  v94 = v91 + (*(this + 65) << v93);
  v95 = v92 + (v84 << v93);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 223);
  if (v237)
  {
    v97 = v236;
  }

  else
  {
    v97 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v229, &unk_26287F806, v231, v231, v97, v94, v95, v88);
  DgnString::~DgnString(&v236);
  *a4 += v94;
  *a5 += v95;
  *v233 += v88;
  v98 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v98 = 12;
  }

  v99 = *(this + 68);
  v100 = *(this + 69);
  v101 = v98 + 4 * (v99 - 1) + 4;
  if (v99 <= 0)
  {
    v101 = v98;
  }

  if (v100 >= v99)
  {
    v102 = v101;
  }

  else
  {
    v102 = v98;
  }

  if (v100 >= v99)
  {
    v103 = v101 + 4 * (v100 - v99);
  }

  else
  {
    v103 = v98;
  }

  if (v100 >= v99)
  {
    v104 = 0;
  }

  else
  {
    v104 = 4 * v99;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 225);
  if (v237)
  {
    v106 = v236;
  }

  else
  {
    v106 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v229, &unk_26287F806, v231, v231, v106, v103, v102, v104);
  DgnString::~DgnString(&v236);
  *a4 += v103;
  *a5 += v102;
  *v233 += v104;
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 226);
  if (v237)
  {
    v108 = v236;
  }

  else
  {
    v108 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v107, v229, &unk_26287F806, v229, &unk_26287F806, v108);
  DgnString::~DgnString(&v236);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v109, v229, &unk_26287F806);
  v110 = *(this + 72);
  if (v110)
  {
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v116 = a4;
    v115 = (34 - a3);
    do
    {
      v117 = *(this + 35);
      if (*(v117 + 8 * v111))
      {
        v235 = 0;
        v236 = 0;
        v234 = 0;
        (*(**(v117 + 8 * v111) + 64))(*(v117 + 8 * v111), v111, (a3 + 2), &v236, &v235, &v234);
        v112 += v236;
        v113 += v235;
        v114 += v234;
        v110 = *(this + 72);
      }

      ++v111;
    }

    while (v111 < v110);
  }

  else
  {
    v114 = 0;
    v113 = 0;
    v112 = 0;
    v110 = 0;
    v116 = a4;
    v115 = (34 - a3);
  }

  v118 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v118 = 12;
  }

  v119 = v118 + v112;
  v120 = v118 + v113;
  v121 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v121 = 3;
  }

  v122 = v119 + (*(this + 73) << v121);
  v123 = v120 + (v110 << v121);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 226);
  if (v237)
  {
    v125 = v236;
  }

  else
  {
    v125 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v229, &unk_26287F806, v115, v115, v125, v122, v123, v114);
  DgnString::~DgnString(&v236);
  *v116 += v122;
  *a5 += v123;
  *v233 += v114;
  v126 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v126 = 12;
  }

  v127 = *(this + 80);
  v128 = *(this + 81);
  v129 = v126 + 4 * (v127 - 1) + 4;
  if (v127 <= 0)
  {
    v129 = v126;
  }

  v43 = v128 >= v127;
  v130 = v129 + 4 * (v128 - v127);
  if (v43)
  {
    v126 = v130;
  }

  v131 = v126 + 24;
  v132 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 78, 1u) + 12;
  v133 = *(this + 80);
  if (v133 <= *(this + 81))
  {
    v134 = 0;
  }

  else
  {
    v134 = 4 * v133;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 228);
  if (v237)
  {
    v136 = v236;
  }

  else
  {
    v136 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v229, &unk_26287F806, v115, v115, v136, v131, v132, v134);
  DgnString::~DgnString(&v236);
  *v116 += v131;
  *a5 += v132;
  *v233 += v134;
  v137 = sizeObject<PrefilterResult *>(this + 344, 0);
  v138 = sizeObject<PrefilterResult *>(this + 344, 1);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 230);
  if (v237)
  {
    v140 = v236;
  }

  else
  {
    v140 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v229, &unk_26287F806, v115, v115, v140, v137, v138, 0);
  DgnString::~DgnString(&v236);
  *v116 += v137;
  *a5 += v138;
  v141 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v141 = 12;
  }

  v142 = *(this + 96);
  v143 = *(this + 97);
  v43 = v143 >= v142;
  v144 = v143 - v142;
  if (v43)
  {
    if (v142 > 0)
    {
      v141 += 4 * (v142 - 1) + 4;
    }

    v141 += 4 * v144;
  }

  v145 = v141 + 24;
  v146 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 94, 1u) + 12;
  v147 = *(this + 96);
  if (v147 <= *(this + 97))
  {
    v148 = 0;
  }

  else
  {
    v148 = 4 * v147;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 232);
  if (v237)
  {
    v150 = v236;
  }

  else
  {
    v150 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v229, &unk_26287F806, v231, v231, v150, v145, v146, v148);
  DgnString::~DgnString(&v236);
  *v230 += v145;
  *a5 += v146;
  *v233 += v148;
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 233);
  if (v237)
  {
    v152 = v236;
  }

  else
  {
    v152 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v151, v229, &unk_26287F806, v229, &unk_26287F806, v152);
  DgnString::~DgnString(&v236);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v153, v229, &unk_26287F806);
  v154 = *(this + 104);
  if (v154)
  {
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    do
    {
      v159 = *(this + 51);
      if (*(v159 + 8 * v155))
      {
        v235 = 0;
        v236 = 0;
        v234 = 0;
        Sausage::printSize(*(v159 + 8 * v155), v155, (a3 + 2), &v236, &v235, &v234);
        v158 += v236;
        v157 += v235;
        v156 += v234;
        v154 = *(this + 104);
      }

      ++v155;
    }

    while (v155 < v154);
  }

  else
  {
    v158 = 0;
    v157 = 0;
    v156 = 0;
    v154 = 0;
  }

  v160 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v160 = 12;
  }

  v161 = v160 + v158;
  v162 = v160 + v157;
  v163 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v163 = 3;
  }

  v164 = v161 + (*(this + 105) << v163);
  v165 = v162 + (v154 << v163);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 233);
  if (v237)
  {
    v167 = v236;
  }

  else
  {
    v167 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v229, &unk_26287F806, v231, v231, v167, v164, v165, v156);
  v168 = (a3 + 1);
  DgnString::~DgnString(&v236);
  *v230 += v164;
  *a5 += v165;
  *v233 += v156;
  v169 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v169 = 12;
  }

  v170 = *(this + 112);
  v171 = *(this + 113);
  v172 = v169 + 4 * (v170 - 1) + 4;
  if (v170 <= 0)
  {
    v172 = v169;
  }

  v43 = v171 >= v170;
  v173 = v172 + 4 * (v171 - v170);
  if (v43)
  {
    v169 = v173;
  }

  v174 = v169 + 24;
  v175 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 110, 1u) + 12;
  v176 = *(this + 112);
  if (v176 <= *(this + 113))
  {
    v177 = 0;
  }

  else
  {
    v177 = 4 * v176;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 235);
  if (v237)
  {
    v179 = v236;
  }

  else
  {
    v179 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v178, v229, &unk_26287F806, v231, v231, v179, v174, v175, v177);
  DgnString::~DgnString(&v236);
  *v230 += v174;
  *a5 += v175;
  *v233 += v177;
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 237);
  if (v237)
  {
    v181 = v236;
  }

  else
  {
    v181 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v180, v229, &unk_26287F806, v229, &unk_26287F806, v181);
  DgnString::~DgnString(&v236);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v182, v229, &unk_26287F806);
  v183 = *(this + 120);
  if (v183)
  {
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v188 = v230;
    do
    {
      v189 = *(this + 59);
      if (*(v189 + 8 * v184))
      {
        v235 = 0;
        v236 = 0;
        v234 = 0;
        AdaptControllerResults::printSize(*(v189 + 8 * v184), v184, (a3 + 2), &v236, &v235, &v234);
        v187 += v236;
        v186 += v235;
        v185 += v234;
        v183 = *(this + 120);
      }

      ++v184;
    }

    while (v184 < v183);
  }

  else
  {
    v187 = 0;
    v186 = 0;
    v185 = 0;
    v183 = 0;
    v188 = v230;
  }

  v190 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v190 = 12;
  }

  v191 = v190 + v187;
  v192 = v190 + v186;
  v193 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v193 = 3;
  }

  v194 = v191 + (*(this + 121) << v193);
  v195 = v192 + (v183 << v193);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 237);
  if (v237)
  {
    v197 = v236;
  }

  else
  {
    v197 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v196, v168, &unk_26287F806, v231, v231, v197, v194, v195, v185);
  DgnString::~DgnString(&v236);
  *v188 += v194;
  *a5 += v195;
  *v233 += v185;
  v198 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v198 = 12;
  }

  v199 = *(this + 128);
  v200 = *(this + 129);
  v201 = v198 + 4 * (v199 - 1) + 4;
  if (v199 <= 0)
  {
    v201 = v198;
  }

  v43 = v200 >= v199;
  v202 = v201 + 4 * (v200 - v199);
  if (v43)
  {
    v198 = v202;
  }

  v203 = v198 + 24;
  v204 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 126, 1u) + 12;
  v205 = *(this + 128);
  if (v205 <= *(this + 129))
  {
    v206 = 0;
  }

  else
  {
    v206 = 4 * v205;
  }

  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 239);
  if (v237)
  {
    v208 = v236;
  }

  else
  {
    v208 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v207, v168, &unk_26287F806, v231, v231, v208, v203, v204, v206);
  DgnString::~DgnString(&v236);
  *v188 += v203;
  *a5 += v204;
  *v233 += v206;
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 240);
  if (v237)
  {
    v210 = v236;
  }

  else
  {
    v210 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v209, v168, &unk_26287F806, v168, &unk_26287F806, v210);
  DgnString::~DgnString(&v236);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v211, v168, &unk_26287F806);
  v212 = *(this + 136);
  if (v212)
  {
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v216 = 0;
    v217 = v230;
    do
    {
      v218 = *(this + 67);
      if (*(v218 + 8 * v213))
      {
        v235 = 0;
        v236 = 0;
        v234 = 0;
        VirtMap::printSize(*(v218 + 8 * v213), v213, (a3 + 2), &v236, &v235, &v234);
        v216 += v236;
        v215 += v235;
        v214 += v234;
        v212 = *(this + 136);
      }

      ++v213;
    }

    while (v213 < v212);
  }

  else
  {
    v216 = 0;
    v215 = 0;
    v214 = 0;
    v212 = 0;
    v217 = v230;
  }

  v219 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v219 = 12;
  }

  v220 = v219 + v216;
  v221 = v219 + v215;
  v222 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v222 = 3;
  }

  v223 = v220 + (*(this + 137) << v222);
  v224 = v221 + (v212 << v222);
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 240);
  if (v237)
  {
    v226 = v236;
  }

  else
  {
    v226 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v225, v168, &unk_26287F806, v231, v231, v226, v223, v224, v214);
  DgnString::~DgnString(&v236);
  *v217 += v223;
  *a5 += v224;
  *v233 += v214;
  getShipObjectSizeDescription(&v236, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 241);
  if (v237)
  {
    v228 = v236;
  }

  else
  {
    v228 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v227, a3, &unk_26287F806, (35 - a3), (35 - a3), v228, *v217, *a5, *v233);
  DgnString::~DgnString(&v236);
}

uint64_t sizeObject<PrefilterResult *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += PrefilterResult::sizeObject(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t IdMgr<unsigned short>::getNextId(uint64_t a1)
{
  if (*(a1 + 32) <= *a1)
  {
    v2 = *(a1 + 6);
    do
    {
      DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::enqueue(a1 + 8, v2);
      v2 = *(a1 + 6) + 1;
      *(a1 + 6) = v2;
    }

    while (*(a1 + 32) <= *a1);
  }

  return DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::dequeue(a1 + 8);
}

AdaptController *DgnDelete<AdaptController>(AdaptController *result)
{
  if (result)
  {
    AdaptController::~AdaptController(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void IdMgr<unsigned short>::recycleId(unsigned int *a1, __int16 a2)
{
  DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::enqueue((a1 + 2), a2);
  v4 = *a1;
  v5 = a1[8];
  if (v5 > *a1)
  {
    v6 = a2 + 1;
    v7 = *(a1 + 3);
    v8 = v5 - 1;
    do
    {
      if (v6 != v7)
      {
        break;
      }

      a1[8] = v8;
      v9 = a1[7];
      if (!v9)
      {
        v9 = a1[4];
      }

      v10 = v9 - 1;
      a1[7] = v9 - 1;
      v11 = v7 - 1;
      *(a1 + 3) = v7 - 1;
      if (v8)
      {
        if (!v10)
        {
          v10 = a1[4];
        }

        LOWORD(v7) = *(*(a1 + 1) + 2 * (v10 - 1)) + 1;
      }

      v6 = v7;
      v7 = v11;
    }

    while (v8-- > v4);
  }
}

AdaptAccumResult *DgnDelete<AdaptAccumResult>(AdaptAccumResult *result)
{
  if (result)
  {
    AdaptAccumResult::~AdaptAccumResult(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

AdaptApplyResult *DgnDelete<AdaptApplyResult>(AdaptApplyResult *result)
{
  if (result)
  {
    AdaptApplyResult::~AdaptApplyResult(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t RecogCtlMgr::newRecogController(uint64_t a1, uint64_t a2, const RecogSpec *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, PrefiltererSearchParamSet *a8, SearchCrossLayerParamSet *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  NextId = IdMgr<unsigned int>::getNextId((a1 + 200));
  for (i = *(a1 + 256); i <= NextId; *(a1 + 256) = i)
  {
    if (i == *(a1 + 260))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 248, 1, 1);
      i = *(a1 + 256);
    }

    *(*(a1 + 248) + 8 * i++) = 0;
  }

  RecogControllerBase::makeRecogController(a2, a3, a7, a8, a9);
  v22 = v21;
  (*(*v21 + 16))(v21, a4, a5, a6, a10, a11, a12, a13, a14);
  *(*(a1 + 248) + 8 * NextId) = v22;
  v23 = *(a1 + 272);
  if (v23 == *(a1 + 276))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 264, 1, 1);
    v23 = *(a1 + 272);
  }

  *(*(a1 + 264) + 4 * v23) = NextId;
  ++*(a1 + 272);
  return NextId;
}

uint64_t RecogCtlMgr::getRecogController(RecogCtlMgr *this, unsigned int a2)
{
  if (*(this + 64) <= a2 || (result = *(*(this + 31) + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 408, "recogctl/rctlmgr", 8, "%u", a2);
    return *(*(this + 31) + 8 * v4);
  }

  return result;
}

void (***DgnDelete<RecogControllerBase>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t RecogCtlMgr::getVirtMap(RecogCtlMgr *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (this + 536);
  v5 = *(this + 136);
  v6 = a2 >> 6;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
  v8 = -1;
  do
  {
    result = *(*v4 + 8 * v7);
    if ((*(result + 60) & 1) == 0)
    {
      if (v6 + 1 == *(result + 56))
      {
        goto LABEL_29;
      }

      v8 = v7;
    }

    ++v7;
  }

  while (v5 != v7);
  if (v8 == -1)
  {
LABEL_11:
    v11 = MemChunkAlloc(0x40uLL, 0);
    VirtMap::VirtMap(v11);
    v10 = *(this + 136);
    v12 = v10;
    if (v10 == *(this + 137))
    {
      DgnPrimArray<unsigned long long>::reallocElts(v4, 1, 1);
      v12 = *(this + 136);
    }

    *(*(this + 67) + 8 * v12) = 0;
    *(this + 136) = v12 + 1;
    *(*(this + 67) + 8 * v10) = v11;
  }

  else
  {
    v10 = v8;
  }

  v13 = *(*v4 + 8 * v10);
  v14 = *(v13 + 56);
  if (v6 >= v14)
  {
    v15 = v6 + 1;
    *(v13 + 56) = v15;
    v16 = *(v13 + 12);
    if (v16 <= v6)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v13, v15 - v16, 0);
    }

    v17 = *(v13 + 8);
    if (v17 <= v15)
    {
      if (v17 <= v6)
      {
        v19 = (a2 >> 6) - v17 + 1;
        v20 = (*v13 + 16 * v17 + 8);
        do
        {
          *(v20 - 1) = 0;
          *v20 = 0;
          v20 += 4;
          --v19;
        }

        while (v19);
      }
    }

    else if (v17 > v15)
    {
      v18 = 16 * v17 - 16;
      do
      {
        --v17;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*v13 + v18);
        v18 -= 16;
      }

      while (v17 > v15);
    }

    *(v13 + 8) = v15;
    v21 = *(v13 + 56);
    v22 = *(v13 + 28);
    v14 = v21;
    if (v21 > v22)
    {
      DgnPrimArray<unsigned long long>::reallocElts(v13 + 16, v21 - v22, 0);
      v14 = *(v13 + 56);
    }

    *(v13 + 24) = v21;
    *(v13 + 52) = 0;
  }

  bzero(*(v13 + 16), 8 * v14);
  result = *(*v4 + 8 * v10);
LABEL_29:
  *(result + 60) = 1;
  return result;
}

uint64_t RecogCtlMgr::releaseVirtMap(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 544);
    if (v2)
    {
      for (i = *(result + 536); *i != a2; i += 8)
      {
        if (!--v2)
        {
          return result;
        }
      }

      *(*i + 60) = 0;
    }
  }

  return result;
}

PrefilterResult *DgnDelete<PrefilterResult>(PrefilterResult *result)
{
  if (result)
  {
    PrefilterResult::~PrefilterResult(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

Sausage *DgnDelete<Sausage>(Sausage *result)
{
  if (result)
  {
    Sausage::~Sausage(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnThreadTrace::add(uint64_t a1, int a2, char a3)
{
  v6 = *(a1 + 24);
  if (v6 == *(a1 + 28))
  {
    DgnPrimArray<char>::reallocElts(a1 + 16, 1, 1);
    v6 = *(a1 + 24);
  }

  *(*(a1 + 16) + v6) = a3;
  ++*(a1 + 24);
  result = mach_absolute_time();
  v8 = result;
  v9 = *(a1 + 40);
  if (v9 == *(a1 + 44))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 32, 1, 1);
    v9 = *(a1 + 40);
  }

  *(*(a1 + 32) + 8 * v9) = v8;
  *(a1 + 40) = v9 + 1;
  v10 = *(a1 + 56);
  if (v10 == *(a1 + 60))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a1 + 48, 1, 1);
    v10 = *(a1 + 56);
  }

  *(*(a1 + 48) + 4 * v10) = a2;
  ++*(a1 + 56);
  if (*a1 == 1)
  {
    CurrentCpuMicrosec = ClockTimer::getCurrentCpuMicrosec(&ClockTimer::smClockTimer);
    v12 = *(a1 + 72);
    if (v12 == *(a1 + 76))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 64, 1, 1);
      v12 = *(a1 + 72);
    }

    *(*(a1 + 64) + 8 * v12) = CurrentCpuMicrosec;
    *(a1 + 72) = v12 + 1;
    result = ClockTimer::getCurrentCpuMicrosec(&ClockTimer::smClockTimer);
    v13 = result;
    v14 = *(a1 + 88);
    if (v14 == *(a1 + 92))
    {
      result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 80, 1, 1);
      v14 = *(a1 + 88);
    }

    *(*(a1 + 80) + 8 * v14) = v13;
    *(a1 + 88) = v14 + 1;
  }

  if (*(a1 + 1) == 1)
  {
    result = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
    v15 = result;
    v16 = *(a1 + 104);
    if (v16 == *(a1 + 108))
    {
      result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 96, 1, 1);
      v16 = *(a1 + 104);
    }

    *(*(a1 + 96) + 8 * v16) = v15;
    *(a1 + 104) = v16 + 1;
  }

  return result;
}

void *DgnIOwnArray<AdaptController *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptController>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<RecogControllerBase *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<RecogControllerBase>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

VirtMap *DgnDelete<VirtMap>(VirtMap *result)
{
  if (result)
  {
    VirtMap::~VirtMap(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(_DWORD *a1, unsigned int a2)
{
  v4 = sizeObject<unsigned short>(a1, a2);
  v5 = 12;
  if (a2 == 3)
  {
    v5 = 0;
  }

  result = v5 + v4;
  if (a2 > 3 || a2 == 1)
  {
    v7 = a1[2];
    if (a1[6] < v7)
    {
      v8 = 0;
      v10 = a1[4];
      v9 = a1[5];
      do
      {
        if (v9 >= v10)
        {
          if (v8 >= v10 && v8 < v9)
          {
            goto LABEL_15;
          }
        }

        else if (v8 < v9 || v8 >= v10)
        {
          goto LABEL_15;
        }

        result -= 2;
LABEL_15:
        ++v8;
      }

      while (v7 != v8);
    }
  }

  return result;
}

void DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::enqueue(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = *(a1 + 12);
    if (v4 == v6)
    {
      DgnPrimArray<short>::reallocElts(a1, 1, 1);
      v6 = *(a1 + 12);
      v4 = *(a1 + 24);
    }

    *(a1 + 8) = v6;
    v7 = v6 - v4;
    if (v4)
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        memmove((*a1 + 2 * v8 + 2 * v7), (*a1 + 2 * v8), 2 * (v4 - v8));
        v4 = *(a1 + 20);
        *(a1 + 16) += v7;
      }

      else
      {
        *(a1 + 20) = v4;
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }

    bzero((*a1 + 2 * v4), 2 * v7);
    v5 = *(a1 + 8);
    v4 = *(a1 + 24);
  }

  v9 = *(a1 + 20);
  *(*a1 + 2 * v9) = a2;
  if (v9 + 1 == v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 + 1;
  }

  *(a1 + 20) = v10;
  *(a1 + 24) = v4 + 1;
}

uint64_t DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::dequeue(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + 2 * v1);
  *(*a1 + 2 * v1) = 0;
  v3 = v1 + 1;
  *(a1 + 16) = v3;
  v4 = *(a1 + 24) - 1;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v3 >= v5;
    v7 = v3 - v5;
    if (v6)
    {
      *(a1 + 16) = v7;
    }
  }

  else
  {
    *(a1 + 16) = 0;
  }

  return v2;
}

void AdaptAccumResult::~AdaptAccumResult(AdaptAccumResult *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    MemChunkFree(v1, 0);
  }
}

void AdaptApplyResult::~AdaptApplyResult(AdaptApplyResult *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    MemChunkFree(v1, 0);
  }
}

uint64_t SDEnv_GetData(int64_t *a1, EnvMgr *a2, void *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v50, "SDEnv_GetData", 1, 1, 91);
  if (v50[97] != 1)
  {
    goto LABEL_119;
  }

  if (!a2)
  {
    v9 = throwBadStringPointer();
  }

  v51 = 0;
  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v10 = a1;
    }

    else
    {
      v10 = 0;
    }

    if (gbShowCallPointerArguments)
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, '%.500s', Masked:0x%016llx, %llu)\n", v8, v9, "SDEnv_GetData", v10, a2, v11, a4);
  }

  if (!a1)
  {
    throwBadLengthForNullPointer(1, "DgnVerifyReadPtr");
  }

  v51 = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr");
  }

  if (!*a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenv.cpp", 48, "sdapi/sdenv", 1, "%s", &errStr_sdapi_sdenv_E_EMPTYNAME);
  }

  v12 = *a1;
  if (*a1 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v33 = ModelMgr::smpModelMgr;
        v34 = a1[1];
        if (HIDWORD(v34) || (v34 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhUser", v34);
        }

        if (v34 == 0xFFFF || !v34)
        {
          throwBadSdapiArgument("SDhUser", v34);
        }

        v17 = *ModelMgr::getUserOrThrow(v33, v34);
        TopEnvId = EnvMgr::getTopEnvId(v17);
      }

      else
      {
        if (v12 != 7)
        {
          goto LABEL_111;
        }

        v27 = ChannelMgr::smpChannelMgr;
        v28 = a1[1];
        if (HIDWORD(v28))
        {
          throwBadSdapiArgument("SDhUtt", v28);
        }

        if ((v28 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhUtt", v28);
        }

        Utterance = ChannelMgr::getUtterance(v27, v28);
        Utterance::getEnvMgr(Utterance);
        v17 = v30;
        TopEnvId = EnvMgr::getTopEnvId(v30);
      }
    }

    else
    {
      switch(v12)
      {
        case 8:
          v37 = ModelMgr::smpModelMgr;
          v38 = a1[1];
          if (HIDWORD(v38) || (v38 & 0xFFFF0000) != 0)
          {
            throwBadSdapiArgument("SDhVoc", v38);
          }

          if (v38 - 1 >= 0x7B)
          {
            throwBadSdapiArgument("SDhVoc", v38);
          }

          v17 = *ModelMgr::getVocOrThrow(v37, v38);
          TopEnvId = EnvMgr::getTopEnvId(v17);
          break;
        case 9:
          v43 = ModelMgr::smpModelMgr;
          v44 = a1[1];
          if (HIDWORD(v44) || (v44 & 0xFFFF0000) != 0)
          {
            throwBadSdapiArgument("SDhVoc", a1[1]);
          }

          if (v44 - 1 >= 0x7B)
          {
            throwBadSdapiArgument("SDhVoc", v44);
          }

          v45 = *(ModelMgr::getVocOrThrow(v43, v44) + 48);
          v17 = *(v45 + 3);
          v46 = a1[2];
          if ((v46 - 1) >> 32)
          {
            throwBadSdapiArgument("SDhWord", v46);
          }

          if ((v46 - 1) >= 0xFFFFF4)
          {
            throwBadSdapiArgument("SDhWord", v46);
          }

          WordList::verifyVisible(v45, v46 - 1);
          TopEnvId = EnvMgr::getItemEnvId(v17, v46 - 1);
          break;
        case 10:
          v21 = ParamSetHolderMgr::smpParamSetHolderMgr;
          v22 = a1[1];
          if (HIDWORD(v22))
          {
            throwBadSdapiArgument("SDhParamSetHolder", v22);
          }

          if ((v22 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", v22);
          }

          v17 = *(ParamSetHolderMgr::getParamSetHolder(v21, v22) + 1112);
          TopEnvId = EnvMgr::getTopEnvId(v17);
          break;
        default:
          goto LABEL_111;
      }
    }
  }

  else if (v12 <= 2)
  {
    if (v12 == 1)
    {
      v31 = EnvHolderMgr::smpEnvHolderMgr;
      v32 = a1[1];
      if (v32 == -1)
      {
        LODWORD(v32) = -1;
      }

      else
      {
        if (HIDWORD(v32))
        {
          throwBadSdapiArgument("SDhEnvHolder", v32);
        }

        if ((v32 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhEnvHolder", v32);
        }
      }

      v17 = *EnvHolderMgr::getEnvHolder(v31, v32);
      TopEnvId = EnvMgr::getTopEnvId(v17);
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_111;
      }

      v23 = ModelMgr::smpModelMgr;
      v24 = a1[1];
      if (HIDWORD(v24) || (v24 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhVoc", a1[1]);
      }

      if (v24 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v24);
      }

      v25 = *(ModelMgr::getVocOrThrow(v23, v24) + 64);
      v17 = *(v25 + 10);
      v26 = a1[2];
      if (HIDWORD(v26) || (v26 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhRule", v26);
      }

      if (v26 == 0xFFFF || !v26)
      {
        throwBadSdapiArgument("SDhRule", v26);
      }

      RuleMgr::verifyRule(v25, v26, 1);
      TopEnvId = EnvMgr::getItemEnvId(v17, v26);
    }
  }

  else
  {
    switch(v12)
    {
      case 3:
        v35 = ChannelMgr::smpChannelMgr;
        v36 = a1[1];
        if (v36 == -1)
        {
          LODWORD(v36) = -1;
        }

        else
        {
          if (HIDWORD(v36))
          {
            throwBadSdapiArgument("SDhSigProc", v36);
          }

          if ((v36 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSigProc", v36);
          }
        }

        v17 = *(ChannelMgr::getSigProc(v35, v36) + 424);
        TopEnvId = EnvMgr::getTopEnvId(v17);
        break;
      case 4:
        v39 = ModelMgr::smpModelMgr;
        v40 = a1[1];
        if (HIDWORD(v40) || (v40 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1]);
        }

        if (v40 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v40);
        }

        v41 = *(ModelMgr::getVocOrThrow(v39, v40) + 56);
        v17 = *(v41 + 752);
        v42 = a1[2];
        if (HIDWORD(v42))
        {
          throwBadSdapiArgument("SDhState", v42);
        }

        if ((v42 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhState", v42);
        }

        StateMgr::verifyVisible(v41, v42);
        TopEnvId = EnvMgr::getItemEnvId(v17, v42);
        break;
      case 5:
        v13 = ModelMgr::smpModelMgr;
        v14 = a1[1];
        if (HIDWORD(v14) || (v14 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1]);
        }

        if (v14 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v14);
        }

        VocOrThrow = ModelMgr::getVocOrThrow(v13, v14);
        v16 = *(VocOrThrow + 56);
        v17 = *(v16 + 760);
        v18 = a1[2];
        if (HIDWORD(v18))
        {
          throwBadSdapiArgument("SDhState", a1[2]);
        }

        if ((v18 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhState", v18);
        }

        StateMgr::verifyVisible(v16, v18);
        v19 = a1[3];
        if ((v19 - 1) >> 32)
        {
          throwBadSdapiArgument("SDhWord", v19);
        }

        if ((v19 - 1) >= 0xFFFFF4)
        {
          throwBadSdapiArgument("SDhWord", v19);
        }

        WordList::verifyVisible(*(VocOrThrow + 48), v19 - 1);
        TopEnvId = EnvMgr::getItemPairEnvId(v17, v18, v19 - 1);
        break;
      default:
LABEL_111:
        throwBadSdapiArgument("SDEnvContainerType", v12);
LABEL_119:
        v48 = 0;
        goto LABEL_120;
    }
  }

  if (!TopEnvId)
  {
    goto LABEL_119;
  }

  Data = EnvMgr::getData(v17, TopEnvId, a2);
  if (!Data)
  {
    goto LABEL_119;
  }

  v48 = sdUtilItemMove(1, *Data, *(Data + 8), a3, a4);
LABEL_120:
  SdapiInsurance::~SdapiInsurance(v50);
  return v48;
}

void SDEnv_SetData(int64_t *a1, char *a2, const unsigned __int8 *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v56, "SDEnv_SetData", 1, 1, 92);
  if (v56[97] != 1)
  {
    goto LABEL_148;
  }

  if (!a2)
  {
    v9 = throwBadStringPointer();
  }

  v57 = 0;
  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v10 = a1;
    }

    else
    {
      v10 = 0;
    }

    if (gbShowCallPointerArguments)
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, '%.500s', Masked:0x%016llx, %llu)\n", v8, v9, "SDEnv_SetData", v10, a2, v11, a4);
  }

  if (!a1)
  {
    throwBadLengthForNullPointer(1, "DgnVerifyReadPtr");
  }

  v57 = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyReadPtr");
  }

  v57 = 0;
  v12 = *a2;
  if (!*a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenv.cpp", 166, "sdapi/sdenv", 1, "%s", &errStr_sdapi_sdenv_E_EMPTYNAME);
    v12 = *a2;
  }

  if (v12 == 95)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenv.cpp", 167, "sdapi/sdenv", 2, "%.500s", a2);
  }

  v13 = *a1;
  if (*a1 <= 5)
  {
    if (v13 <= 2)
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_137;
        }

        v26 = ModelMgr::smpModelMgr;
        v27 = a1[1];
        if (HIDWORD(v27) || (v27 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1]);
        }

        if (v27 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v27);
        }

        v28 = *(ModelMgr::getVocOrThrow(v26, v27) + 64);
        v29 = *(v28 + 10);
        v30 = a1[2];
        if (HIDWORD(v30) || (v30 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhRule", v30);
        }

        if (v30 == 0xFFFF || !v30)
        {
          throwBadSdapiArgument("SDhRule", v30);
        }

        RuleMgr::verifyRule(v28, v30, 1);
        ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v29, v30, a4 != 0);
        if (ItemEnvIdMaybeNew)
        {
          EnvMgr::setData(v29, ItemEnvIdMaybeNew, a2, a3, a4, 0);
          if (!a4 && !*(EnvMgr::getNameIds(v29, ItemEnvIdMaybeNew) + 8))
          {
            EnvMgr::killEnv(v29, ItemEnvIdMaybeNew);
            EnvMgr::setItemEnvId(v29, v30, 0);
          }
        }

        goto LABEL_148;
      }

      v36 = EnvHolderMgr::smpEnvHolderMgr;
      v37 = a1[1];
      if (v37 == -1)
      {
        LODWORD(v37) = -1;
      }

      else
      {
        if (HIDWORD(v37))
        {
          throwBadSdapiArgument("SDhEnvHolder", v37);
        }

        if ((v37 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhEnvHolder", v37);
        }
      }

      v24 = *EnvHolderMgr::getEnvHolder(v36, v37);
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(v24, a4 != 0);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(v24, TopEnvIdMaybeNew, a2, a3, a4, 0);
      if (a4 || *(EnvMgr::getNameIds(v24, TopEnvIdMaybeNew) + 8))
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v13 != 3)
      {
        if (v13 != 4)
        {
          if (v13 == 5)
          {
            v14 = ModelMgr::smpModelMgr;
            v15 = a1[1];
            if (HIDWORD(v15) || (v15 & 0xFFFF0000) != 0)
            {
              throwBadSdapiArgument("SDhVoc", a1[1]);
            }

            if (v15 - 1 >= 0x7B)
            {
              throwBadSdapiArgument("SDhVoc", v15);
            }

            VocOrThrow = ModelMgr::getVocOrThrow(v14, v15);
            v17 = *(VocOrThrow + 56);
            v18 = *(v17 + 760);
            v19 = a1[2];
            if (HIDWORD(v19))
            {
              throwBadSdapiArgument("SDhState", a1[2]);
            }

            if ((v19 + 1) <= 1)
            {
              throwBadSdapiArgument("SDhState", v19);
            }

            StateMgr::verifyVisible(v17, v19);
            v20 = a1[3];
            if ((v20 - 1) >> 32)
            {
              throwBadSdapiArgument("SDhWord", v20);
            }

            if ((v20 - 1) >= 0xFFFFF4)
            {
              throwBadSdapiArgument("SDhWord", v20);
            }

            WordList::verifyVisible(*(VocOrThrow + 48), v20 - 1);
            ItemPairEnvIdMaybeNew = EnvMgr::getItemPairEnvIdMaybeNew(v18, v19, v20 - 1, a4 != 0);
            if (ItemPairEnvIdMaybeNew)
            {
              EnvMgr::setData(v18, ItemPairEnvIdMaybeNew, a2, a3, a4, 0);
              if (!a4 && !*(EnvMgr::getNameIds(v18, ItemPairEnvIdMaybeNew) + 8))
              {
                EnvMgr::killEnv(v18, ItemPairEnvIdMaybeNew);
                EnvMgr::setItemPairEnvId(v18, v19, v20 - 1, 0);
              }
            }

            goto LABEL_148;
          }

LABEL_137:
          throwBadSdapiArgument("SDEnvContainerType", v13);
          goto LABEL_148;
        }

        v44 = ModelMgr::smpModelMgr;
        v45 = a1[1];
        if (HIDWORD(v45) || (v45 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1]);
        }

        if (v45 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v45);
        }

        v46 = *(ModelMgr::getVocOrThrow(v44, v45) + 56);
        v47 = *(v46 + 752);
        v48 = a1[2];
        if (HIDWORD(v48))
        {
          throwBadSdapiArgument("SDhState", v48);
        }

        if ((v48 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhState", v48);
        }

        StateMgr::verifyVisible(v46, v48);
        v49 = EnvMgr::getItemEnvIdMaybeNew(v47, v48, a4 != 0);
        if (v49)
        {
          EnvMgr::setData(v47, v49, a2, a3, a4, 0);
          if (!a4 && !*(EnvMgr::getNameIds(v47, v49) + 8))
          {
            EnvMgr::killEnv(v47, v49);
            EnvMgr::setItemEnvId(v47, v48, 0);
          }
        }

        goto LABEL_148;
      }

      v40 = ChannelMgr::smpChannelMgr;
      v41 = a1[1];
      if (v41 == -1)
      {
        LODWORD(v41) = -1;
      }

      else
      {
        if (HIDWORD(v41))
        {
          throwBadSdapiArgument("SDhSigProc", v41);
        }

        if ((v41 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhSigProc", v41);
        }
      }

      v24 = *(ChannelMgr::getSigProc(v40, v41) + 424);
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(v24, a4 != 0);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(v24, TopEnvIdMaybeNew, a2, a3, a4, 0);
      if (a4 || *(EnvMgr::getNameIds(v24, TopEnvIdMaybeNew) + 8))
      {
        goto LABEL_148;
      }
    }

LABEL_147:
    EnvMgr::killEnv(v24, TopEnvIdMaybeNew);
    EnvMgr::setTopEnvId(v24, 0);
    goto LABEL_148;
  }

  if (v13 <= 7)
  {
    if (v13 == 6)
    {
      v38 = ModelMgr::smpModelMgr;
      v39 = a1[1];
      if (HIDWORD(v39) || (v39 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhUser", v39);
      }

      if (v39 == 0xFFFF || !v39)
      {
        throwBadSdapiArgument("SDhUser", v39);
      }

      v24 = *ModelMgr::getUserOrThrow(v38, v39);
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(v24, a4 != 0);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(v24, TopEnvIdMaybeNew, a2, a3, a4, 0);
      if (a4 || *(EnvMgr::getNameIds(v24, TopEnvIdMaybeNew) + 8))
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v13 != 7)
      {
        goto LABEL_137;
      }

      v32 = ChannelMgr::smpChannelMgr;
      v33 = a1[1];
      if (HIDWORD(v33))
      {
        throwBadSdapiArgument("SDhUtt", v33);
      }

      if ((v33 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhUtt", v33);
      }

      Utterance = ChannelMgr::getUtterance(v32, v33);
      Utterance::getEnvMgr(Utterance);
      v24 = v35;
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(v35, a4 != 0);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(v24, TopEnvIdMaybeNew, a2, a3, a4, 0);
      if (a4 || *(EnvMgr::getNameIds(v24, TopEnvIdMaybeNew) + 8))
      {
        goto LABEL_148;
      }
    }

    goto LABEL_147;
  }

  if (v13 == 8)
  {
    v42 = ModelMgr::smpModelMgr;
    v43 = a1[1];
    if (HIDWORD(v43) || (v43 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", v43);
    }

    if (v43 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", v43);
    }

    v24 = *ModelMgr::getVocOrThrow(v42, v43);
    TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(v24, a4 != 0);
    if (!TopEnvIdMaybeNew)
    {
      goto LABEL_148;
    }

    EnvMgr::setData(v24, TopEnvIdMaybeNew, a2, a3, a4, 0);
    if (a4 || *(EnvMgr::getNameIds(v24, TopEnvIdMaybeNew) + 8))
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  if (v13 == 9)
  {
    v50 = ModelMgr::smpModelMgr;
    v51 = a1[1];
    if (HIDWORD(v51) || (v51 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1[1]);
    }

    if (v51 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", v51);
    }

    v52 = *(ModelMgr::getVocOrThrow(v50, v51) + 48);
    v53 = *(v52 + 3);
    v54 = a1[2];
    if ((v54 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", v54);
    }

    if ((v54 - 1) >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", v54);
    }

    WordList::verifyVisible(v52, v54 - 1);
    v55 = EnvMgr::getItemEnvIdMaybeNew(v53, v54 - 1, a4 != 0);
    if (v55)
    {
      EnvMgr::setData(v53, v55, a2, a3, a4, 0);
      if (!a4 && !*(EnvMgr::getNameIds(v53, v55) + 8))
      {
        EnvMgr::killEnv(v53, v55);
        EnvMgr::setItemEnvId(v53, v54 - 1, 0);
      }
    }

    goto LABEL_148;
  }

  if (v13 != 10)
  {
    goto LABEL_137;
  }

  v22 = ParamSetHolderMgr::smpParamSetHolderMgr;
  v23 = a1[1];
  if (HIDWORD(v23))
  {
    throwBadSdapiArgument("SDhParamSetHolder", v23);
  }

  if ((v23 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhParamSetHolder", v23);
  }

  v24 = *(ParamSetHolderMgr::getParamSetHolder(v22, v23) + 1112);
  TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(v24, a4 != 0);
  if (TopEnvIdMaybeNew)
  {
    EnvMgr::setData(v24, TopEnvIdMaybeNew, a2, a3, a4, 0);
    if (!a4 && !*(EnvMgr::getNameIds(v24, TopEnvIdMaybeNew) + 8))
    {
      goto LABEL_147;
    }
  }

LABEL_148:
  SdapiInsurance::~SdapiInsurance(v56);
}

void sub_262619F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x262619F68);
}

uint64_t onePlusHighestSet32(unsigned int a1)
{
  v1 = 32 - __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t SearchItf::beginTopRecPassSyncRecogBase(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 120);
  *(result + 80) = 0;
  return result;
}

uint64_t SearchItf::endTopRecPassSyncRecogBase(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 80) = 1879048192;
  return this;
}

uint64_t SearchItf::unsetArcGraph(SearchItf *this)
{
  result = (*(*this + 136))(this);
  *(this + 5) = 0;
  *(this + 6) = 0;
  return result;
}

uint64_t SearchItf::setArcGraph(SearchItf *this, const ArcGraph *a2)
{
  *(this + 5) = a2;
  (*(*this + 128))(this);
  result = VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(*(this + 5) + 174));
  *(this + 6) = *(result + 48);
  return result;
}

void SearchItf::SearchItf(SearchItf *this)
{
  *this = &unk_287522DA8;
  *(this + 8) = xmmword_26287F820;
  *(this + 3) = 0x4E2000000000;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 34) = -1;
  *(this + 9) = 0x4E2000000064;
  *(this + 20) = 1879048192;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
}

void SearchItf::~SearchItf(SearchItf *this)
{
  *this = &unk_287522DA8;
  v1 = this + 88;
  DgnIArray<Utterance *>::~DgnIArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
}

void SearchItf::printSize(SearchItf *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 104);
  if (v76)
  {
    v12 = v75;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  DgnString::~DgnString(&v75);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  v14 = (a3 + 1);
  v15 = (34 - a3);
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 105);
  if (v76)
  {
    v17 = v75;
  }

  else
  {
    v17 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 106);
  if (v76)
  {
    v19 = v75;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v19, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 107);
  if (v76)
  {
    v21 = v75;
  }

  else
  {
    v21 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v21, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 108);
  if (v76)
  {
    v23 = v75;
  }

  else
  {
    v23 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v23, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 110);
  if (v76)
  {
    v25 = v75;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 112);
  if (v76)
  {
    v27 = v75;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 4;
  }

  else
  {
    v28 = 8;
  }

  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 113);
  if (v76)
  {
    v30 = v75;
  }

  else
  {
    v30 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v30, v28, v28, 0);
  DgnString::~DgnString(&v75);
  *a4 += v28;
  *a5 += v28;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 114);
  if (v76)
  {
    v33 = v75;
  }

  else
  {
    v33 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v33, v31, v31, 0);
  DgnString::~DgnString(&v75);
  *a4 += v31;
  *a5 += v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 115);
  if (v76)
  {
    v36 = v75;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v36, v34, v34, 0);
  DgnString::~DgnString(&v75);
  *a4 += v34;
  *a5 += v34;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 4;
  }

  else
  {
    v37 = 8;
  }

  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 116);
  if (v76)
  {
    v39 = v75;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v39, v37, v37, 0);
  DgnString::~DgnString(&v75);
  *a4 += v37;
  *a5 += v37;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 117);
  if (v76)
  {
    v41 = v75;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v41, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 119);
  if (v76)
  {
    v43 = v75;
  }

  else
  {
    v43 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v43, 2, 2, 0);
  DgnString::~DgnString(&v75);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 121);
  if (v76)
  {
    v45 = v75;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v45, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 123);
  if (v76)
  {
    v47 = v75;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v47, 4, 4, 0);
  v73 = a3;
  v48 = a6;
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 125);
  if (v76)
  {
    v50 = v75;
  }

  else
  {
    v50 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v14, &byte_262899963, v15, v15, v50, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 24);
  v53 = *(this + 25);
  if (v53 >= v52)
  {
    v54 = 0;
    if (v52 > 0)
    {
      v51 += 4 * (v52 - 1) + 4;
    }

    v55 = v51 + 4 * (v53 - v52);
  }

  else
  {
    v54 = 4 * v52;
    v55 = v51;
  }

  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 127);
  if (v76)
  {
    v57 = v75;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v14, &byte_262899963, v15, v15, v57, v55, v51, v54);
  DgnString::~DgnString(&v75);
  *a4 += v55;
  *a5 += v51;
  *v48 += v54;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 4;
  }

  else
  {
    v58 = 8;
  }

  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 128);
  if (v76)
  {
    v60 = v75;
  }

  else
  {
    v60 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v14, &byte_262899963, v15, v15, v60, v58, v58, 0);
  DgnString::~DgnString(&v75);
  *a4 += v58;
  *a5 += v58;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 4;
  }

  else
  {
    v61 = 8;
  }

  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 129);
  if (v76)
  {
    v63 = v75;
  }

  else
  {
    v63 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v14, &byte_262899963, v15, v15, v63, v61, v61, 0);
  DgnString::~DgnString(&v75);
  *a4 += v61;
  *a5 += v61;
  v64 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 12;
  }

  v65 = *(this + 32);
  v66 = 8 * v65;
  if (v65 <= 0)
  {
    v66 = 0;
  }

  v67 = v66 + v64;
  v68 = v66 + v64 + 8 * (*(this + 33) - v65);
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 131);
  if (v76)
  {
    v70 = v75;
  }

  else
  {
    v70 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v14, &byte_262899963, v15, v15, v70, v68, v67, 0);
  DgnString::~DgnString(&v75);
  *a4 += v68;
  *a5 += v67;
  getShipObjectSizeDescription(&v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 132);
  if (v76)
  {
    v72 = v75;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v73, &byte_262899963, (35 - v73), (35 - v73), v72, *a4, *a5, *v48);
  DgnString::~DgnString(&v75);
}

void sub_26261ABA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t SearchItf::normalizeBestAndComputeEstimatedThresh(SearchItf *this, int a2, int a3)
{
  if (a3 == 20000 || a2 <= -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(this + 20) + v5;
  *(this + 20) = v6;
  v7 = *(this + 24);
  if (v7 == *(this + 25))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 88, 1, 1);
    v7 = *(this + 24);
  }

  *(*(this + 11) + 4 * v7) = v6;
  ++*(this + 24);
  *(*(this + 4) + 256) = v5;
  return 20000;
}

void MrecInitModule_adaptctl_recogctl(void)
{
  if (!gParDebugShowSegmentation)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowSegmentation", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowSegmentation = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowSegmentation);
  }

  if (!gParDebugAdaptationStartup)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugAdaptationStartup", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugAdaptationStartup = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAdaptationStartup);
  }

  if (!gParDebugAdaptationAccumulate)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugAdaptationAccumulate", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugAdaptationAccumulate = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAdaptationAccumulate);
  }

  if (!gParDebugAdaptationApply)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugAdaptationApply", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugAdaptationApply = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugAdaptationApply);
  }
}

void AdaptControllerResults::~AdaptControllerResults(AdaptControllerResults *this)
{
  DgnDelete<Segmentation>(*(this + 4));
  *(this + 4) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 5));
  *(this + 5) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 6));
  *(this + 6) = 0;
  DgnDelete<NBestChoiceList>(*(this + 7));
  *(this + 7) = 0;
  PhnMgr::~PhnMgr((this + 64));
  DgnString::~DgnString(this + 16);
}

PelScoreCacheData *DgnDelete<PelScoreCacheData>(PelScoreCacheData *result)
{
  if (result)
  {
    PelScoreCacheData::~PelScoreCacheData(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void AdaptControllerResults::printSize(AdaptControllerResults *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 427);
  if (v51)
  {
    v13 = v50;
  }

  else
  {
    v13 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26287F84B, a3, byte_26287F84B, v13);
  DgnString::~DgnString(&v50);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26287F84B);
  v15 = (a3 + 1);
  v47 = a3;
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 429);
  if (v51)
  {
    v18 = v50;
  }

  else
  {
    v18 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, v15, byte_26287F84B, v16, v16, v18, 4, 4, 0);
  DgnString::~DgnString(&v50);
  *a4 += 4;
  *a5 += 4;
  v19 = sizeObject(this + 4, 0);
  v20 = sizeObject(this + 4, 1);
  v21 = sizeObject(this + 4, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 431);
  if (v51)
  {
    v23 = v50;
  }

  else
  {
    v23 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v15, byte_26287F84B, v16, v16, v23, v19, v20, v21);
  DgnString::~DgnString(&v50);
  *a4 += v19;
  *a5 += v20;
  *a6 += v21;
  v24 = sizeObject(this + 16, 0);
  v25 = sizeObject(this + 16, 1);
  v26 = sizeObject(this + 16, 3);
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 433);
  if (v51)
  {
    v28 = v50;
  }

  else
  {
    v28 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v15, byte_26287F84B, v16, v16, v28, v24, v25, v26);
  DgnString::~DgnString(&v50);
  *a4 += v24;
  *a5 += v25;
  *a6 += v26;
  v29 = *(this + 4);
  if (v29)
  {
    v49 = 0;
    v50 = 0;
    v48 = 0;
    Segmentation::printSize(v29, 0xFFFFFFFFLL, v15, &v50, &v49, &v48);
    *a4 += v50;
    *a5 += v49;
    *a6 += v48;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 4;
  }

  else
  {
    v30 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 435);
  if (v51)
  {
    v32 = v50;
  }

  else
  {
    v32 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, byte_26287F84B, v16, v16, v32, v30, v30, 0);
  DgnString::~DgnString(&v50);
  *a4 += v30;
  *a5 += v30;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  PhnMgr::printSize((this + 64), 0xFFFFFFFFLL, v15, &v50, &v49, &v48);
  *a4 += v50;
  *a5 += v49;
  *a6 += v48;
  v33 = *(this + 5);
  if (v33)
  {
    v49 = 0;
    v50 = 0;
    v48 = 0;
    PelScoreCacheData::printSize(v33, 0xFFFFFFFFLL, v15, &v50, &v49, &v48);
    *a4 += v50;
    *a5 += v49;
    *a6 += v48;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 438);
  if (v51)
  {
    v36 = v50;
  }

  else
  {
    v36 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v15, byte_26287F84B, v16, v16, v36, v34, v34, 0);
  DgnString::~DgnString(&v50);
  *a4 += v34;
  *a5 += v34;
  v37 = *(this + 6);
  if (v37)
  {
    v49 = 0;
    v50 = 0;
    v48 = 0;
    PelScoreCacheData::printSize(v37, 0xFFFFFFFFLL, v15, &v50, &v49, &v48);
    *a4 += v50;
    *a5 += v49;
    *a6 += v48;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 440);
  if (v51)
  {
    v40 = v50;
  }

  else
  {
    v40 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v15, byte_26287F84B, v16, v16, v40, v38, v38, 0);
  DgnString::~DgnString(&v50);
  *a4 += v38;
  *a5 += v38;
  v41 = *(this + 7);
  if (v41)
  {
    v49 = 0;
    v50 = 0;
    v48 = 0;
    NBestChoiceList::printSize(v41, 0xFFFFFFFFLL, v15, &v50, &v49, &v48);
    *a4 += v50;
    *a5 += v49;
    *a6 += v48;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 4;
  }

  else
  {
    v42 = 8;
  }

  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 442);
  if (v51)
  {
    v44 = v50;
  }

  else
  {
    v44 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v15, byte_26287F84B, v16, v16, v44, v42, v42, 0);
  DgnString::~DgnString(&v50);
  *a4 += v42;
  *a5 += v42;
  getShipObjectSizeDescription(&v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 444);
  if (v51)
  {
    v46 = v50;
  }

  else
  {
    v46 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v47, byte_26287F84B, (35 - v47), (35 - v47), v46, *a4, *a5, *a6);
  DgnString::~DgnString(&v50);
}

void sub_26261B5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void AdaptAccumStats::printSize(AdaptAccumStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 455);
  if (v46)
  {
    v13 = v45;
  }

  else
  {
    v13 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26287F84B, a3, byte_26287F84B, v13);
  DgnString::~DgnString(&v45);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26287F84B);
  v15 = SnapTime::sizeObject(this, 0);
  v16 = SnapTime::sizeObject(this, 1);
  v17 = SnapTime::sizeObject(this, 3);
  v18 = (a3 + 1);
  v44 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 457);
  if (v46)
  {
    v21 = v45;
  }

  else
  {
    v21 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, byte_26287F84B, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v45);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  v22 = SnapTime::sizeObject(this + 32, 0);
  v23 = SnapTime::sizeObject(this + 32, 1);
  v24 = SnapTime::sizeObject(this + 32, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 459);
  if (v46)
  {
    v26 = v45;
  }

  else
  {
    v26 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v18, byte_26287F84B, v19, v19, v26, v22, v23, v24);
  DgnString::~DgnString(&v45);
  *a4 += v22;
  *a5 += v23;
  *a6 += v24;
  v27 = SnapTime::sizeObject(this + 64, 0);
  v28 = SnapTime::sizeObject(this + 64, 1);
  v29 = SnapTime::sizeObject(this + 64, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 461);
  if (v46)
  {
    v31 = v45;
  }

  else
  {
    v31 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v18, byte_26287F84B, v19, v19, v31, v27, v28, v29);
  DgnString::~DgnString(&v45);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  v32 = SnapTime::sizeObject(this + 96, 0);
  v33 = SnapTime::sizeObject(this + 96, 1);
  v34 = SnapTime::sizeObject(this + 96, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 463);
  if (v46)
  {
    v36 = v45;
  }

  else
  {
    v36 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v18, byte_26287F84B, v19, v19, v36, v32, v33, v34);
  DgnString::~DgnString(&v45);
  *a4 += v32;
  *a5 += v33;
  *a6 += v34;
  v37 = SnapTime::sizeObject(this + 128, 0);
  v38 = SnapTime::sizeObject(this + 128, 1);
  v39 = SnapTime::sizeObject(this + 128, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 465);
  if (v46)
  {
    v41 = v45;
  }

  else
  {
    v41 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v18, byte_26287F84B, v19, v19, v41, v37, v38, v39);
  DgnString::~DgnString(&v45);
  *a4 += v37;
  *a5 += v38;
  *a6 += v39;
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 466);
  if (v46)
  {
    v43 = v45;
  }

  else
  {
    v43 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v44, byte_26287F84B, (35 - v44), (35 - v44), v43, *a4, *a5, *a6);
  DgnString::~DgnString(&v45);
}

void sub_26261BA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void AdaptApplyStats::printSize(AdaptApplyStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 585);
  if (v46)
  {
    v13 = v45;
  }

  else
  {
    v13 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26287F84B, a3, byte_26287F84B, v13);
  DgnString::~DgnString(&v45);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26287F84B);
  v15 = SnapTime::sizeObject(this, 0);
  v16 = SnapTime::sizeObject(this, 1);
  v17 = SnapTime::sizeObject(this, 3);
  v18 = (a3 + 1);
  v44 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 587);
  if (v46)
  {
    v21 = v45;
  }

  else
  {
    v21 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, byte_26287F84B, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v45);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  v22 = SnapTime::sizeObject(this + 32, 0);
  v23 = SnapTime::sizeObject(this + 32, 1);
  v24 = SnapTime::sizeObject(this + 32, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 589);
  if (v46)
  {
    v26 = v45;
  }

  else
  {
    v26 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v18, byte_26287F84B, v19, v19, v26, v22, v23, v24);
  DgnString::~DgnString(&v45);
  *a4 += v22;
  *a5 += v23;
  *a6 += v24;
  v27 = SnapTime::sizeObject(this + 64, 0);
  v28 = SnapTime::sizeObject(this + 64, 1);
  v29 = SnapTime::sizeObject(this + 64, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 591);
  if (v46)
  {
    v31 = v45;
  }

  else
  {
    v31 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v18, byte_26287F84B, v19, v19, v31, v27, v28, v29);
  DgnString::~DgnString(&v45);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  v32 = SnapTime::sizeObject(this + 96, 0);
  v33 = SnapTime::sizeObject(this + 96, 1);
  v34 = SnapTime::sizeObject(this + 96, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 593);
  if (v46)
  {
    v36 = v45;
  }

  else
  {
    v36 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v18, byte_26287F84B, v19, v19, v36, v32, v33, v34);
  DgnString::~DgnString(&v45);
  *a4 += v32;
  *a5 += v33;
  *a6 += v34;
  v37 = SnapTime::sizeObject(this + 128, 0);
  v38 = SnapTime::sizeObject(this + 128, 1);
  v39 = SnapTime::sizeObject(this + 128, 3);
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 595);
  if (v46)
  {
    v41 = v45;
  }

  else
  {
    v41 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v18, byte_26287F84B, v19, v19, v41, v37, v38, v39);
  DgnString::~DgnString(&v45);
  *a4 += v37;
  *a5 += v38;
  *a6 += v39;
  getShipObjectSizeDescription(&v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 596);
  if (v46)
  {
    v43 = v45;
  }

  else
  {
    v43 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v44, byte_26287F84B, (35 - v44), (35 - v44), v43, *a4, *a5, *a6);
  DgnString::~DgnString(&v45);
}

void sub_26261BEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void AdaptController::~AdaptController(AdaptController *this)
{
  AdaptController::releaseAccumulators(this);
  if (*(this + 10))
  {
    SigProc = ChannelMgr::getSigProc(ChannelMgr::smpChannelMgr, *(this + 1));
    SigProc::decrementAdapterCount(SigProc);
    UserOrThrow = ModelMgr::getUserOrThrow(ModelMgr::smpModelMgr, *(this + 1));
    User::decrementAdapterCount(UserOrThrow);
  }

  v4 = *(this + 1);
  if (v4)
  {
    --*(v4 + 36);
    *(this + 1) = 0;
  }

  v5 = *(this + 2);
  if (v5)
  {
    --*(v5 + 36);
    *(this + 2) = 0;
  }

  v6 = *(this + 3);
  if (v6)
  {
    --*(v6 + 36);
    *(this + 3) = 0;
  }

  DgnDelete<PelScorer>(*(this + 4));
  *(this + 4) = 0;
  v7 = *(this + 20);
  if (v7)
  {
    MemChunkFree(v7, 0);
  }

  *(this + 20) = 0;
  v8 = *(this + 21);
  if (v8)
  {
    MemChunkFree(v8, 0);
  }

  *(this + 21) = 0;
  DgnIOwnArray<WeightAccum *>::releaseAll(this + 96);
  DgnArray<DgnIOwnArray<BasisAccum *>>::releaseAll(this + 80);
  AdaptConfig::clear(this + 5);
}

void *AdaptController::releaseAccumulators(AdaptController *this)
{
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 18));
  *(this + 18) = 0;
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 19));
  *(this + 19) = 0;
  DgnDelete<ConstrainedTransAccMgr>(*(this + 7));
  *(this + 7) = 0;
  DgnDelete<IntruderMgr>(*(this + 8));
  *(this + 8) = 0;
  DgnDelete<WarpChooser>(*(this + 9));
  *(this + 9) = 0;
  DgnDelete<DurAccum>(*(this + 14));
  *(this + 14) = 0;
  DgnArray<DgnIOwnArray<BasisAccum *>>::releaseAll(this + 80);
  result = DgnIOwnArray<WeightAccum *>::releaseAll(this + 96);
  *(this + 137) = 0;
  return result;
}

void AdaptController::printSize(AdaptController *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 798);
  if (v113)
  {
    v13 = v112;
  }

  else
  {
    v13 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26287F84B, a3, byte_26287F84B, v13);
  DgnString::~DgnString(&v112);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26287F84B);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 799);
  if (v113)
  {
    v18 = v112;
  }

  else
  {
    v18 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), byte_26287F84B, (34 - a3), (34 - a3), v18, 2, 2, 0);
  DgnString::~DgnString(&v112);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 800);
  if (v113)
  {
    v20 = v112;
  }

  else
  {
    v20 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), byte_26287F84B, (34 - a3), (34 - a3), v20, 2, 2, 0);
  DgnString::~DgnString(&v112);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 801);
  if (v113)
  {
    v22 = v112;
  }

  else
  {
    v22 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), byte_26287F84B, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v109 = a3;
  DgnString::~DgnString(&v112);
  *a4 += 4;
  *a5 += 4;
  v23 = *(this + 4);
  if (v23)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    (*(*v23 + 32))(v23, 0xFFFFFFFFLL, (a3 + 1), &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 803);
  if (v113)
  {
    v26 = v112;
  }

  else
  {
    v26 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v15, byte_26287F84B, v16, v16, v26, v24, v24, 0);
  DgnString::~DgnString(&v112);
  *a4 += v24;
  *a5 += v24;
  v27 = sizeObject(this + 40, 0);
  v28 = sizeObject(this + 40, 1);
  v29 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 804);
  if (v113)
  {
    v31 = v112;
  }

  else
  {
    v31 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v15, byte_26287F84B, v16, v16, v31, v27, v28, v29);
  DgnString::~DgnString(&v112);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 4;
  }

  else
  {
    v32 = 8;
  }

  v33 = *(this + 1);
  if (v33)
  {
    v34 = (*(*v33 + 104))(v33, 0) + v32;
    v35 = *(this + 1);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v32 = 4;
    }

    else
    {
      v32 = 8;
    }

    if (v35 && (v32 += (*(*v35 + 104))(v35, 1), (v36 = *(this + 1)) != 0))
    {
      v37 = (*(*v36 + 104))(v36, 3);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v34 = v32;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 806);
  if (v113)
  {
    v39 = v112;
  }

  else
  {
    v39 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, byte_26287F84B, v16, v16, v39, v34, v32, v37);
  DgnString::~DgnString(&v112);
  *a4 += v34;
  *a5 += v32;
  *a6 += v37;
  v40 = *(this + 8);
  if (v40)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    IntruderMgr::printSize(v40, 0xFFFFFFFFLL, v15, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 4;
  }

  else
  {
    v41 = 8;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 808);
  if (v113)
  {
    v43 = v112;
  }

  else
  {
    v43 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, byte_26287F84B, v16, v16, v43, v41, v41, 0);
  DgnString::~DgnString(&v112);
  *a4 += v41;
  *a5 += v41;
  v44 = *(this + 9);
  if (v44)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    WarpChooser::printSize(v44, 0xFFFFFFFFLL, v15, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 4;
  }

  else
  {
    v45 = 8;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 810);
  if (v113)
  {
    v47 = v112;
  }

  else
  {
    v47 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v15, byte_26287F84B, v16, v16, v47, v45, v45, 0);
  DgnString::~DgnString(&v112);
  *a4 += v45;
  *a5 += v45;
  v48 = *(this + 7);
  if (v48)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    ConstrainedTransAccMgr::printSize(v48, 0xFFFFFFFFLL, v15, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 4;
  }

  else
  {
    v49 = 8;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 812);
  if (v113)
  {
    v51 = v112;
  }

  else
  {
    v51 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v15, byte_26287F84B, v16, v16, v51, v49, v49, 0);
  DgnString::~DgnString(&v112);
  *a4 += v49;
  *a5 += v49;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 814);
  if (v113)
  {
    v53 = v112;
  }

  else
  {
    v53 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v15, byte_26287F84B, v16, v16, v53, 4, 4, 0);
  DgnString::~DgnString(&v112);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 816);
  if (v113)
  {
    v55 = v112;
  }

  else
  {
    v55 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v15, byte_26287F84B, v16, v16, v55, 4, 4, 0);
  DgnString::~DgnString(&v112);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 818);
  if (v113)
  {
    v57 = v112;
  }

  else
  {
    v57 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, byte_26287F84B, v16, v16, v57, 8, 8, 0);
  DgnString::~DgnString(&v112);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 819);
  if (v113)
  {
    v59 = v112;
  }

  else
  {
    v59 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v15, byte_26287F84B, v16, v16, v59, 1, 1, 0);
  DgnString::~DgnString(&v112);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 821);
  if (v113)
  {
    v61 = v112;
  }

  else
  {
    v61 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v15, byte_26287F84B, v16, v16, v61, 1, 1, 0);
  DgnString::~DgnString(&v112);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 823);
  if (v113)
  {
    v63 = v112;
  }

  else
  {
    v63 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, byte_26287F84B, v16, v16, v63, 1, 1, 0);
  DgnString::~DgnString(&v112);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 824);
  if (v113)
  {
    v65 = v112;
  }

  else
  {
    v65 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v15, byte_26287F84B, v16, v16, v65, 1, 1, 0);
  DgnString::~DgnString(&v112);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 4;
  }

  else
  {
    v66 = 8;
  }

  v67 = *(this + 18);
  if (v67)
  {
    v68 = sizeObject(v67, 0) + v66;
    v69 = *(this + 18);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v66 = 4;
    }

    else
    {
      v66 = 8;
    }

    if (v69 && (v66 += sizeObject(v69, 1), (v70 = *(this + 18)) != 0))
    {
      v71 = sizeObject(v70, 3);
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v71 = 0;
    v68 = v66;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 825);
  if (v113)
  {
    v73 = v112;
  }

  else
  {
    v73 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v15, byte_26287F84B, v16, v16, v73, v68, v66, v71);
  DgnString::~DgnString(&v112);
  *a4 += v68;
  *a5 += v66;
  *a6 += v71;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 4;
  }

  else
  {
    v74 = 8;
  }

  v75 = *(this + 19);
  if (v75)
  {
    v76 = sizeObject(v75, 0) + v74;
    v77 = *(this + 19);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v74 = 4;
    }

    else
    {
      v74 = 8;
    }

    if (v77 && (v74 += sizeObject(v77, 1), (v78 = *(this + 19)) != 0))
    {
      v79 = sizeObject(v78, 3);
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    v79 = 0;
    v76 = v74;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 827);
  if (v113)
  {
    v81 = v112;
  }

  else
  {
    v81 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v15, byte_26287F84B, v16, v16, v81, v76, v74, v79);
  DgnString::~DgnString(&v112);
  *a4 += v76;
  *a5 += v74;
  *a6 += v79;
  v82 = sizeObject<DgnIOwnArray<BasisAccum *>>(this + 80, 0);
  v83 = sizeObject<DgnIOwnArray<BasisAccum *>>(this + 80, 1);
  v84 = sizeObject<DgnIOwnArray<BasisAccum *>>(this + 80, 3);
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 829);
  if (v113)
  {
    v86 = v112;
  }

  else
  {
    v86 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v15, byte_26287F84B, v16, v16, v86, v82, v83, v84);
  DgnString::~DgnString(&v112);
  *a4 += v82;
  *a5 += v83;
  *a6 += v84;
  v87 = sizeObject<WeightAccum *>(this + 96, 0);
  v88 = sizeObject<WeightAccum *>(this + 96, 1);
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 831);
  if (v113)
  {
    v90 = v112;
  }

  else
  {
    v90 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v15, byte_26287F84B, v16, v16, v90, v87, v88, 0);
  DgnString::~DgnString(&v112);
  *a4 += v87;
  *a5 += v88;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v91 = 4;
  }

  else
  {
    v91 = 8;
  }

  v92 = *(this + 14);
  if (v92)
  {
    v93 = DurAccum::sizeObject(v92, 0) + v91;
    v94 = *(this + 14);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v91 = 4;
    }

    else
    {
      v91 = 8;
    }

    if (v94 && (v91 += DurAccum::sizeObject(v94, 1), (v95 = *(this + 14)) != 0))
    {
      v96 = DurAccum::sizeObject(v95, 3);
    }

    else
    {
      v96 = 0;
    }
  }

  else
  {
    v96 = 0;
    v93 = v91;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 832);
  if (v113)
  {
    v98 = v112;
  }

  else
  {
    v98 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v15, byte_26287F84B, v16, v16, v98, v93, v91, v96);
  DgnString::~DgnString(&v112);
  *a4 += v93;
  *a5 += v91;
  *a6 += v96;
  v99 = *(this + 20);
  if (v99)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    AdaptAccumStats::printSize(v99, 0xFFFFFFFFLL, v15, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v100 = 4;
  }

  else
  {
    v100 = 8;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 834);
  if (v113)
  {
    v102 = v112;
  }

  else
  {
    v102 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v15, byte_26287F84B, v16, v16, v102, v100, v100, 0);
  DgnString::~DgnString(&v112);
  *a4 += v100;
  *a5 += v100;
  v103 = *(this + 21);
  if (v103)
  {
    v111 = 0;
    v112 = 0;
    v110 = 0;
    AdaptApplyStats::printSize(v103, 0xFFFFFFFFLL, v15, &v112, &v111, &v110);
    *a4 += v112;
    *a5 += v111;
    *a6 += v110;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v104 = 4;
  }

  else
  {
    v104 = 8;
  }

  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 836);
  if (v113)
  {
    v106 = v112;
  }

  else
  {
    v106 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v15, byte_26287F84B, v16, v16, v106, v104, v104, 0);
  DgnString::~DgnString(&v112);
  *a4 += v104;
  *a5 += v104;
  getShipObjectSizeDescription(&v112, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 837);
  if (v113)
  {
    v108 = v112;
  }

  else
  {
    v108 = byte_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v109, byte_26287F84B, (35 - v109), (35 - v109), v108, *a4, *a5, *a6);
  DgnString::~DgnString(&v112);
}

void sub_26261D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnIOwnArray<BasisAccum *>>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<BasisAccum *>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnIOwnArray<BasisAccum *>::releaseAll(v10);
  return v2;
}

uint64_t sizeObject<WeightAccum *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v3 = a2;
  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += WeightAccum::sizeObject(v10, v3);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!v3)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

CTFTMgr **DgnDelete<ConstrainedTransAccMgr>(CTFTMgr **result)
{
  if (result)
  {
    ConstrainedTransAccMgr::~ConstrainedTransAccMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

IntruderMgr *DgnDelete<IntruderMgr>(IntruderMgr *result)
{
  if (result)
  {
    IntruderMgr::~IntruderMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

WarpChooser *DgnDelete<WarpChooser>(WarpChooser *result)
{
  if (result)
  {
    WarpChooser::~WarpChooser(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<DurAccum>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray((result + 3));
    DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 1));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnArray<DgnIOwnArray<BasisAccum *>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = v2 + 1;
    v4 = 16 * v2 - 16;
    do
    {
      DgnIOwnArray<BasisAccum *>::releaseAll(*a1 + v4);
      --v3;
      v4 -= 16;
    }

    while (v3 > 1);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnIOwnArray<WeightAccum *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WeightAccum>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

IntruderSet *DgnDelete<IntruderSet>(IntruderSet *result)
{
  if (result)
  {
    IntruderSet::~IntruderSet(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t *Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(uint64_t a1, uint64_t a2)
{
  v4 = CWIDAC::computeHash(a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  v8 = *v7;
  if (*v7)
  {
    v9 = v4;
    do
    {
      v10 = v8;
      if (*(v8 + 8) == v9 && CWIDAC::operator==(v8 + 12, a2))
      {
        break;
      }

      v8 = *v10;
      v7 = v10;
    }

    while (*v10);
  }

  return v7;
}

uint64_t HmmNet::getNonSilOutPort(HmmNet *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (v2 < 2)
  {
    v3 = 0;
  }

  else if (v2 - 3 >= 2)
  {
    v4 = v2 == 2;
    v3 = 1;
    if (!v4)
    {
      v3 = 255;
    }
  }

  else
  {
    v3 = *(*(this + 11) + a2);
  }

  return *(*(this + 9) + 8 * v3);
}

uint64_t sizeObject<BasisAccum *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v3 = a2;
  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += BasisAccum::sizeObject(v10, v3);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!v3)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

void *DgnIOwnArray<BasisAccum *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<BasisAccum>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnDelete<BasisAccum>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnPrimFixArray<double>::~DgnPrimFixArray((result + 4));
    DgnPrimFixArray<double>::~DgnPrimFixArray((v1 + 2));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<WeightAccum>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnPrimFixArray<double>::~DgnPrimFixArray((result + 1));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitModule_fstsrch_fst(void)
{
  if (!gParDebugFstBestPath)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugFstBestPath", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugFstBestPath = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstBestPath);
  }

  if (!gParDebugFstRecognition)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugFstRecognition", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugFstRecognition = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstRecognition);
  }

  if (!gParDebugFstSeeding)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugFstSeeding", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugFstSeeding = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstSeeding);
  }

  if (!gParDebugFstSeedingMini)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugFstSeedingMini", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugFstSeedingMini = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstSeedingMini);
  }

  if (!gParDebugFstScoring)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugFstScoring", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugFstScoring = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstScoring);
  }

  if (!gParDebugFstDumpTraces)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugFstDumpTraces", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugFstDumpTraces = v11;
    v12 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v12, &gParDebugFstDumpTraces);
  }
}

int64x2_t FstSearchLateLatticeHashBackoff::advanceDeltas(FstSearchLateLatticeHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v86[0] = a2;
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v82.n128_u64[0] = 0xFFFFFFFF00000000;
  v82.n128_u32[2] = -1;
  v82.n128_u16[6] = -2;
  v83 = 0;
  *(this + 58) = a3;
  v10 = *(this + 2);
  v62 = (this + 232);
  v11 = *(this + 50);
  if (v11)
  {
    v61 = a4;
    for (i = 0; i < v11; ++i)
    {
      v13 = *(this + 24) + 24 * i;
      v14 = *(v13 + 4);
      v15 = *(this + 5);
      if (*(v15 + 160) != v14)
      {
        if (*(v15 + 140) > v14)
        {
          v16 = *(this + 19) + *(this + 58) >= 5000 ? 5000 : *(this + 19) + *(this + 58);
          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v13 + 12), *v13, v16);
          v18 = *(this + 58);
          if (ScoreAllowBackoff_updateNodeInSequence - v10 <= v18)
          {
            if (v18 > ScoreAllowBackoff_updateNodeInSequence)
            {
              *v62 = ScoreAllowBackoff_updateNodeInSequence;
            }

            v19 = (*(this + 24) + 24 * i);
            v20 = v19[1].n128_u64[0];
            v82 = *v19;
            v83 = v20;
            v82.n128_u32[0] = ScoreAllowBackoff_updateNodeInSequence;
            FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v82);
          }
        }

        v21 = v14;
        do
        {
          v22 = *(this + 5);
          v23 = *(v22 + 152);
          v24 = *(v23 + 4 * v21);
          v25 = *(v23 + 4 * (v21 + 1));
          v26 = *(v22 + 140);
          if (v26 <= v25)
          {
            if (v26 <= v14 && (*(this + 356) & 1) != 0)
            {
              v33 = (v24 & 0xFFFFF) <= 0xFFFF3 ? v24 & 0xFFFFF : v24 & 0xFFFFF | 0xF00000;
              if (v33 != 16777210)
              {
                DgnString::DgnString(&v79);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v33, &v79);
                v35 = &unk_26287F8B0;
                if (v79.i32[2])
                {
                  v35 = v79.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v34, v14, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 8), v35);
                MiniFst::seed(this + 240, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 20), *(*(this + 24) + 24 * i + 8), v25);
                DgnString::~DgnString(&v79);
              }
            }
          }

          else
          {
            v27 = (v24 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 58) >= 5000)
            {
              v28 = 5000;
            }

            else
            {
              v28 = *(this + 19) + *(this + 58);
            }

            v29 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v23 + 4 * v21), *(*(this + 24) + 24 * i) + v27, v28);
            v30 = *(this + 58);
            if (v29 - v10 <= v30)
            {
              if (v30 > v29)
              {
                *v62 = v29;
              }

              v31 = (*(this + 24) + 24 * i);
              v32 = v31[1].n128_u64[0];
              v82 = *v31;
              HIDWORD(v83) = HIDWORD(v32);
              v82.n128_u64[0] = __PAIR64__(v25, v29);
              v82.n128_u16[6] = v24;
              LODWORD(v83) = v32 + v27;
              FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v82);
            }
          }

          v21 += 2;
        }

        while ((v24 & 0x80000000) == 0);
        v11 = *(this + 50);
      }
    }

    a3 = *v62;
    a4 = v61;
  }

  v81 = a3 + v10;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v62, v10, a2);
  }

  v79 = 0u;
  v80 = 0u;
  SnapTime::recordTime(&v79, 1, 0, 0, 0);
  v79 = vsubq_s64(v79, v84);
  v80 = vsubq_s64(v80, v85);
  v36 = *(this + 13);
  v37 = vaddq_s64(v36[1], v80);
  *v36 = vaddq_s64(*v36, v79);
  v36[1] = v37;
  v77 = 0u;
  v78 = 0u;
  SnapTime::recordTime(&v77, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v81);
  v75 = 0u;
  v76 = 0u;
  SnapTime::recordTime(&v75, 1, 0, 0, 0);
  v38 = vsubq_s64(v75, v77);
  v39 = *(this + 13);
  v40 = v39[3];
  v41 = vaddq_s64(v39[2], v38);
  v75 = v38;
  v76 = vsubq_s64(v76, v78);
  v42 = vaddq_s64(v40, v76);
  v39[2] = v41;
  v39[3] = v42;
  v73 = 0u;
  v74 = 0u;
  SnapTime::recordTime(&v73, 1, 0, 0, 0);
  v43 = *(this + 24);
  v44 = *(this + 26);
  *(this + 24) = v44;
  *(this + 26) = v43;
  LODWORD(v43) = *(this + 51);
  v45 = *(this + 27);
  *(this + 25) = v45;
  *(this + 54) = 0;
  *(this + 55) = v43;
  v46 = *(this + 6);
  if (v46 && v46 < v45)
  {
    mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(v44, v46, v45);
  }

  v71 = 0u;
  v72 = 0u;
  SnapTime::recordTime(&v71, 1, 0, 0, 0);
  v47 = vsubq_s64(v71, v73);
  v48 = *(this + 13);
  v49 = v48[5];
  v50 = vaddq_s64(v48[4], v47);
  v71 = v47;
  v72 = vsubq_s64(v72, v74);
  v51 = vaddq_s64(v49, v72);
  v48[4] = v50;
  v48[5] = v51;
  v69 = 0u;
  v70 = 0u;
  SnapTime::recordTime(&v69, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v67 = 0u;
  v68 = 0u;
  SnapTime::recordTime(&v67, 1, 0, 0, 0);
  v52 = vsubq_s64(v67, v69);
  v53 = *(this + 13);
  v54 = v53[9];
  v55 = vaddq_s64(v53[8], v52);
  v67 = v52;
  v68 = vsubq_s64(v68, v70);
  v56 = vaddq_s64(v54, v68);
  v53[8] = v55;
  v53[9] = v56;
  v65 = 0u;
  v66 = 0u;
  SnapTime::recordTime(&v65, 1, 0, 0, 0);
  *(this + 54) = 0;
  v57 = *(this + 50);
  *(this + 38) = v57;
  if (a4)
  {
    *(a4 + 2) += v57;
    if (*(a4 + 2) > v57)
    {
      LODWORD(v57) = *(a4 + 2);
    }

    *(a4 + 2) = v57;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLateLatticeHashBackoff::seedFromMiniFst(this, v86);
  }

  if (a5)
  {
    FstSearchLateLatticeHashBackoff::propagateNulls(this, v81, a2, a4);
  }

  *(this + 56) = a2;
  v63 = 0u;
  v64 = 0u;
  SnapTime::recordTime(&v63, 1, 0, 0, 0);
  v58 = *(this + 13);
  result = vaddq_s64(v58[6], vsubq_s64(v63, v65));
  v60 = vaddq_s64(v58[7], vsubq_s64(v64, v66));
  v58[6] = result;
  v58[7] = v60;
  return result;
}

uint64_t PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(PelScoreCache *this, uint64_t a2, int a3, int a4)
{
  if (*(this + 494) != 1)
  {
    v8 = PelScoreCache::computePelScoreNoCache(this, a2);
    return (v8 + a3 - *(this + 64));
  }

  v7 = *(this + 8);
  v8 = *(v7 + 2 * a2);
  if (v8 != 20046)
  {
    return (v8 + a3 - *(this + 64));
  }

  v9 = *(**(this + 2) + 2 * a2);
  if (v9 == 0xFFFF)
  {
    goto LABEL_14;
  }

  v11 = *(v7 + 2 * v9);
  if (v11 == 20046)
  {
    if (*(this + 492) == 1)
    {
      v12 = *(**(this + 3) + 2 * v9);
      if (*(*(this + 18) + 4 * v12) == -1)
      {
        PelScoreCache::computeGenScores(this, *(**(this + 3) + 2 * v9));
      }

      v11 = PelScoreCache::computePelScoreFromGenScores(this, v9, v12);
    }

    else
    {
      v11 = PelScoreCache::computePelScore(this, *(**(this + 2) + 2 * a2));
    }
  }

  result = (a3 - *(this + 64) + v11);
  if (result < a4)
  {
LABEL_14:
    if (*(this + 492) == 1)
    {
      v14 = *(**(this + 3) + 2 * a2);
      if (*(*(this + 18) + 4 * v14) == -1)
      {
        PelScoreCache::computeGenScores(this, *(**(this + 3) + 2 * a2));
      }

      v8 = PelScoreCache::computePelScoreFromGenScores(this, a2, v14);
    }

    else
    {
      v8 = PelScoreCache::computePelScore(this, a2);
    }

    return (v8 + a3 - *(this + 64));
  }

  return result;
}

__n128 FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u32[1];
  v5 = v4 >> 6;
  v6 = v4 & 0x3F;
  v7 = *(a1 + 112);
  v8 = v7[2];
  v9 = *(v8 + 8 * v5);
  if (!v9)
  {
    v10 = *(v7 + 12);
    v11 = *(v7 + 13);
    v12 = *v7;
    if (v10 >= v11)
    {
      v13 = v12 + 16 * v11;
      if (!*(v13 + 8))
      {
        *v13 = MemChunkAlloc(0x100uLL, 0);
        *(v13 + 8) = 64;
        v12 = *v7;
        v8 = v7[2];
        LODWORD(v10) = *(v7 + 12);
        v11 = *(v7 + 13);
      }

      *(v8 + 8 * v5) = v12 + 16 * v11;
      *(v7 + 13) = v11 + 1;
    }

    else
    {
      *(v8 + 8 * v5) = v12 + 16 * v10;
    }

    *(v7 + 12) = v10 + 1;
    v14 = *(v7[2] + 8 * v5);
    memset(*v14, 255, 4 * *(v14 + 8));
    v16 = *(v7 + 10);
    if (v16 == *(v7 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
      v16 = *(v7 + 10);
    }

    *(v7[4] + 4 * v16) = v5;
    ++*(v7 + 10);
    v9 = *(v7[2] + 8 * v5);
  }

  v17 = *v9;
  v18 = *(v17 + 4 * v6);
  if (v18 == -1)
  {
    v20 = *(a1 + 216);
    *(v17 + 4 * v6) = v20;
    if (v20 == *(a1 + 220))
    {
      DgnArray<CWIDAC>::reallocElts(a1 + 208, 1, 1);
      v20 = *(a1 + 216);
    }

    v21 = (*(a1 + 208) + 24 * v20);
    result = *a2;
    v21[1].n128_u64[0] = a2[1].n128_u64[0];
    *v21 = result;
    ++*(a1 + 216);
  }

  else
  {
    v19 = (*(a1 + 208) + 24 * v18);
    if (v19->n128_u32[0] > a2->n128_u32[0])
    {
      result = *a2;
      v19[1].n128_u64[0] = a2[1].n128_u64[0];
      *v19 = result;
    }
  }

  return result;
}

unint64_t FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(unint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 216);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(*(this + 208), a2, v4);
    v8 = *(*(v6 + 208) + 24 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 220);
    if (a2 > v9)
    {
      this = DgnArray<CWIDAC>::reallocElts(v6 + 208, a2 - v9, 0);
    }

    v10 = *(v6 + 216);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = (*(v6 + 208) + 24 * v10 + 16);
      do
      {
        *(v12 - 2) = 0xFFFFFFFF00000000;
        *(v12 - 2) = -1;
        *(v12 - 2) = -2;
        *v12 = 0;
        v12 += 3;
        --v11;
      }

      while (v11);
    }

    *(v6 + 216) = a2;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 24 * v3);
      v5 = (result + 24 * (v3 + (a3 >> 1)));
      if ((result & 7) != 0)
      {
        v6 = 24;
        v7 = (result + 24 * v3);
        do
        {
          v8 = *v7;
          *v7++ = *v5;
          *v5++ = v8;
          --v6;
        }

        while (v6);
      }

      else
      {
        for (i = 0; i != 6; i += 2)
        {
          v10 = *&v4[i];
          *&v4[i] = *&v5[i * 4];
          *&v5[i * 4] = v10;
        }
      }

      v11 = (result - 24 + 24 * (v3 + a3));
      v12 = (result + 24 * v3);
      do
      {
        v13 = v12 + 6;
        while (1)
        {
          v12 = v13;
          if (v13 >= v11)
          {
            break;
          }

          v13 += 6;
          if (*v12 > *v4)
          {
            v14 = v12;
            while (*v11 >= *v4)
            {
              v11 -= 6;
              if (v12 >= v11)
              {
                goto LABEL_22;
              }
            }

            v15 = 0;
            if ((result & 7) != 0)
            {
              do
              {
                v16 = *v14;
                *v14++ = *(v11 + v15);
                *(v11 + v15++) = v16;
              }

              while (v15 != 24);
            }

            else
            {
              do
              {
                v17 = *v14;
                *v14 = *(v11 + v15);
                v14 += 8;
                *(v11 + v15) = v17;
                v15 += 8;
              }

              while (v15 != 24);
            }

            v11 -= 6;
            break;
          }
        }

LABEL_22:
        ;
      }

      while (v12 < v11);
      if (*v12 > *v4)
      {
        v12 -= 6;
      }

      if (v12 > v4)
      {
        v18 = 0;
        if ((result & 7) != 0)
        {
          do
          {
            v19 = *(v12 + v18);
            *(v12 + v18) = *(v4 + v18);
            *(v4 + v18++) = v19;
          }

          while (v18 != 24);
        }

        else
        {
          do
          {
            v20 = *(v12 + v18);
            *(v12 + v18) = *(v4 + v18);
            *(v4 + v18) = v20;
            v18 += 8;
          }

          while (v18 != 24);
        }
      }

      v21 = (v12 - v4) / 0x18uLL;
      if (v21 <= a2)
      {
        if (v21 >= a2)
        {
          return result;
        }

        v22 = v21 + 1;
        v3 += v22;
        a2 -= v22;
        v21 = a3 - v22;
      }

      a3 = v21;
    }

    while (v21 > 1);
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = (*(v2 + 256) + v4);
        v7 = *v6;
        v8 = v6[4];
        v9 = v6[5];
        v10 = v6[6];
        v11 = v6[7];
        LODWORD(v6) = v6[2];
        v23[0] = 0;
        v23[1] = 0;
        v12 = -2 - v6;
        if (v11 == 16777213)
        {
          v13 = (*(v2 + 160) + 36 * v12);
          v11 = 16777209;
          if (*v13 == 16777209)
          {
            v12 = *(*(v2 + 176) + 16 * v13[2] + 12);
          }
        }

        v14 = *a2;
        v15 = *(v2 + 168);
        if (v15 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v15) = *(v2 + 168);
        }

        v16 = *(v2 + 160);
        v17 = v16 + 36 * v15;
        *v17 = v11;
        *(v17 + 4) = v14;
        *(v17 + 8) = 0xFFFFFFFFLL;
        *(v17 + 16) = v7;
        *(v17 + 20) = v12;
        *(v17 + 24) = v8;
        *(v17 + 28) = v9;
        *(v17 + 32) = -2;
        v18 = *(v2 + 168);
        *(v2 + 168) = v18 + 1;
        *(v16 + 36 * v18 + 12) = 1;
        v19 = *(v2 + 200);
        if (v19 == *(v2 + 204))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v19) = *(v2 + 200);
        }

        v20 = *(v2 + 192) + 24 * v19;
        *v20 = v7;
        *(v20 + 4) = v10;
        *(v20 + 8) = v18;
        *(v20 + 12) = -2;
        *(v20 + 16) = v8;
        *(v20 + 20) = v9;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
        ++v5;
        v21 = *(v2 + 264);
        if (v21 >= *(v2 + 20))
        {
          v21 = *(v2 + 20);
        }

        v4 += 36;
      }

      while (v5 < v21);
    }
  }

  return this;
}

void sub_26261E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

unint64_t FstSearchLateLatticeHashBackoff::propagateNulls(unint64_t this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = *(this + 168);
  v6 = *(this + 200);
  if (!v6)
  {
    v39 = *(this + 152);
    if (a4)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v50 = *(this + 168);
  v51 = a4;
  v7 = 0;
  v58 = a2;
  do
  {
    v8 = *(*(v4 + 192) + 24 * v7 + 4);
    v9 = *(v4 + 40);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 192) + 24 * v7 + 4);
      v57 = v7;
      do
      {
        v11 = *(v4 + 40);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_38;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_38;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(v4 + 192);
        v20 = v19 + 24 * v7;
        v21 = *v20 + v18;
        if (v21 > a2)
        {
          goto LABEL_38;
        }

        v22 = *(v20 + 8);
        this = *(v20 + 12);
        v23 = *(v20 + 14);
        v24 = *(v20 + 16);
        v25 = *(v20 + 20);
        v26 = v24 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(v4 + 204))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v20 - v24;
          if (v16 == 16777214)
          {
            v28 = 0;
          }

          else
          {
            v27 = *v20 + v18;
            v28 = v24 + v18;
          }

          if (v16 == 16777214)
          {
            v29 = v24 + v18;
          }

          else
          {
            v29 = 0;
          }

          if (v16 == 16777209)
          {
            v30 = v24 + v18;
          }

          else
          {
            v21 = v27;
            v30 = v28;
          }

          if (v16 == 16777209)
          {
            v29 = 0;
          }

          else
          {
            v25 = v16 + 2 * v25 + 1;
          }

          v31 = *(v4 + 168);
          if (v31 == *(v4 + 172))
          {
            v59 = *(v20 + 12);
            v54 = *(v20 + 8);
            v55 = *(v20 + 14);
            v52 = v30;
            v53 = v29;
            DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v4 + 160, 1, 1);
            v30 = v52;
            v29 = v53;
            v22 = v54;
            v23 = v55;
            a2 = v58;
            this = v59;
            LODWORD(v31) = *(v4 + 168);
          }

          v32 = *(v4 + 160) + 36 * v31;
          *v32 = v16;
          *(v32 + 4) = a3;
          *(v32 + 8) = 0xFFFFFFFFLL;
          *(v32 + 16) = v21;
          *(v32 + 20) = v22;
          *(v32 + 24) = v30;
          *(v32 + 28) = v25;
          *(v32 + 32) = this;
          v22 = *(v4 + 168);
          *(v4 + 168) = v22 + 1;
          v21 += v29;
          v6 = *(v4 + 200);
          if (v6 != *(v4 + 204))
          {
            goto LABEL_36;
          }
        }

        v60 = v25;
        v33 = this;
        v34 = v8;
        v35 = v26;
        v36 = v23;
        v37 = v22;
        DgnArray<CWIDAC>::reallocElts(v4 + 192, 1, 1);
        v22 = v37;
        v23 = v36;
        v26 = v35;
        v8 = v34;
        a2 = v58;
        v25 = v60;
        v7 = v57;
        this = v33;
        v6 = *(v4 + 200);
LABEL_36:
        v19 = *(v4 + 192);
LABEL_37:
        v38 = v19 + 24 * v6;
        *v38 = v21;
        *(v38 + 4) = v14;
        *(v38 + 8) = v22;
        *(v38 + 12) = this;
        *(v38 + 14) = v23;
        *(v38 + 16) = v26;
        *(v38 + 20) = v25;
        v6 = *(v4 + 200) + 1;
        *(v4 + 200) = v6;
LABEL_38:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v39 = *(v4 + 152);
  if (v6 > v39)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 192) + 24 * v39), v6 - v39, 24, 0);
    v39 = *(v4 + 152);
    v6 = *(v4 + 200);
  }

  a4 = v51;
  v5 = v50;
  if (v39 < v6)
  {
    v40 = v39;
    v41 = v39 - 1;
    v42 = 24 * v39;
    do
    {
      v43 = *(v4 + 192);
      v44 = (v43 + v42);
      if (*(v43 + v42 + 4) != *(v43 + 24 * v41 + 4))
      {
        v45 = v43 + 24 * v39;
        v46 = *v44;
        *(v45 + 16) = *(v44 + 2);
        *v45 = v46;
        ++v39;
        v6 = *(v4 + 200);
      }

      ++v40;
      ++v41;
      v42 += 24;
    }

    while (v40 < v6);
  }

  if (v51)
  {
LABEL_48:
    *(a4 + 1) += *(v4 + 168) - v5;
  }

LABEL_49:
  v47 = *(v4 + 204);
  if (v39 > v47)
  {
    this = DgnArray<CWIDAC>::reallocElts(v4 + 192, v39 - v47, 0);
    v6 = *(v4 + 200);
  }

  if (v6 < v39)
  {
    v48 = v39 - v6;
    v49 = (*(v4 + 192) + 24 * v6 + 16);
    do
    {
      *(v49 - 2) = 0xFFFFFFFF00000000;
      *(v49 - 2) = -1;
      *(v49 - 2) = -2;
      *v49 = 0;
      v49 += 3;
      --v48;
    }

    while (v48);
  }

  *(v4 + 200) = v39;
  return this;
}

char *mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(char *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = -a3;
  v6 = a3 != 8;
  v7 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v9 = &result[a2 * a3];
      v10 = &result[a3];
      v11 = result;
      do
      {
        if (v10 > result)
        {
          v12 = v11;
          v13 = v10;
          do
          {
            v14 = v13;
            v13 += v5;
            v15 = *(v13 + 1);
            v16 = *(v14 + 1);
            if (v15 == v16)
            {
              if (*v14 >= *v13)
              {
                break;
              }
            }

            else if (v15 < v16)
            {
              break;
            }

            if (v8)
            {
              v17 = 0;
              if (v7)
              {
                v18 = v13;
                do
                {
                  v19 = *&v14[8 * v17];
                  *&v14[8 * v17] = *v18;
                  *v18 = v19;
                  v18 += 8;
                  ++v17;
                }

                while (a3 >> 3 != v17);
              }

              else
              {
                v21 = a3;
                do
                {
                  v22 = v14[v17];
                  v14[v17] = v12[v17];
                  v12[v17++] = v22;
                  --v21;
                }

                while (v21);
              }
            }

            else
            {
              v20 = *v14;
              *v14 = *v13;
              *v13 = v20;
            }

            v12 += v5;
          }

          while (v13 > result);
        }

        v10 += a3;
        v11 += a3;
      }

      while (v10 < v9);
    }

    return result;
  }

  v24 = a3 >> 3;
  while (2)
  {
    v25 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v29 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v31 = result;
      goto LABEL_111;
    }

    v30 = (a2 >> 3) * a3;
    v31 = &result[v30];
    v32 = &result[2 * v30];
    v33 = *(result + 1);
    v34 = *&result[v30 + 4];
    if (v33 == v34)
    {
      if (*v31 <= *result)
      {
        goto LABEL_34;
      }
    }

    else if (v33 >= v34)
    {
LABEL_34:
      v35 = *(v32 + 1);
      if (v34 == v35)
      {
        if (*v32 < *v31)
        {
          goto LABEL_130;
        }
      }

      else if (v34 >= v35)
      {
        goto LABEL_130;
      }

      if (v33 == v35)
      {
        if (*result != *v32)
        {
          v31 = result;
          if (*v32 > *result)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        v31 = result;
        if (v33 < v35)
        {
          goto LABEL_130;
        }
      }

      v31 = &result[2 * v30];
      goto LABEL_130;
    }

    v81 = *(v32 + 1);
    if (v34 == v81)
    {
      if (*v32 > *v31)
      {
        goto LABEL_130;
      }
    }

    else if (v34 < v81)
    {
      goto LABEL_130;
    }

    if (v33 != v81)
    {
      v31 = &result[2 * v30];
      if (v33 < v81)
      {
        goto LABEL_130;
      }

      goto LABEL_129;
    }

    v31 = result;
    if (*result != *v32)
    {
      v31 = &result[2 * v30];
      if (*v32 <= *result)
      {
LABEL_129:
        v31 = result;
      }
    }

LABEL_130:
    v82 = &v25[-v30];
    v83 = &v25[v30];
    v84 = *&v25[-v30 + 4];
    v85 = *(v25 + 1);
    if (v84 == v85)
    {
      if (*v25 <= *v82)
      {
        goto LABEL_132;
      }
    }

    else if (v84 >= v85)
    {
LABEL_132:
      v86 = *(v83 + 1);
      if (v85 == v86)
      {
        if (*v83 < *v25)
        {
          goto LABEL_153;
        }
      }

      else if (v85 >= v86)
      {
        goto LABEL_153;
      }

      if (v84 == v86)
      {
        if (*v82 != *v83)
        {
          v25 -= v30;
          if (*v83 > *v82)
          {
            goto LABEL_153;
          }
        }
      }

      else
      {
        v25 -= v30;
        if (v84 < v86)
        {
          goto LABEL_153;
        }
      }

      v25 = v83;
      goto LABEL_153;
    }

    v87 = *(v83 + 1);
    if (v85 == v87)
    {
      if (*v83 > *v25)
      {
        goto LABEL_153;
      }
    }

    else if (v85 < v87)
    {
      goto LABEL_153;
    }

    if (v84 != v87)
    {
      v25 += v30;
      if (v84 < v87)
      {
        goto LABEL_153;
      }

      goto LABEL_152;
    }

    if (*v82 == *v83 || (v25 += v30, *v83 <= *v82))
    {
LABEL_152:
      v25 = v82;
    }

LABEL_153:
    v88 = -v30;
    v80 = &v29[-2 * v30];
    v89 = &v29[v88];
    v90 = *(v80 + 1);
    v91 = *(v89 + 1);
    if (v90 == v91)
    {
      if (*v89 <= *v80)
      {
LABEL_155:
        v92 = *(v29 + 1);
        if (v91 == v92)
        {
          if (*v29 < *v89)
          {
            goto LABEL_168;
          }

LABEL_163:
          if (v90 == v92)
          {
            if (*v80 != *v29 && *v29 > *v80)
            {
              goto LABEL_169;
            }
          }

          else if (v90 < v92)
          {
            goto LABEL_169;
          }

LABEL_111:
          v80 = &result[(a2 - 1) * a3];
          goto LABEL_169;
        }

        if (v91 < v92)
        {
          goto LABEL_163;
        }

LABEL_168:
        v80 = v89;
        goto LABEL_169;
      }
    }

    else if (v90 >= v91)
    {
      goto LABEL_155;
    }

    v93 = *(v29 + 1);
    if (v91 == v93)
    {
      if (*v29 > *v89)
      {
        goto LABEL_168;
      }
    }

    else if (v91 < v93)
    {
      goto LABEL_168;
    }

    if (v90 != v93)
    {
      if (v90 >= v93)
      {
        goto LABEL_169;
      }

      goto LABEL_111;
    }

    if (*v80 != *v29 && *v29 > *v80)
    {
      goto LABEL_111;
    }

LABEL_169:
    v94 = *(v31 + 1);
    v95 = *(v25 + 1);
    if (v94 != v95)
    {
      if (v94 >= v95)
      {
        goto LABEL_171;
      }

LABEL_175:
      v97 = *(v80 + 1);
      if (v95 == v97)
      {
        if (*v80 > *v25)
        {
          goto LABEL_26;
        }
      }

      else if (v95 < v97)
      {
        goto LABEL_26;
      }

      if (v94 == v97)
      {
        if (*v31 != *v80)
        {
          v25 = v80;
          if (*v80 > *v31)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v25 = v80;
        if (v94 < v97)
        {
          goto LABEL_26;
        }
      }

      v25 = v31;
      goto LABEL_26;
    }

    if (*v25 > *v31)
    {
      goto LABEL_175;
    }

LABEL_171:
    v96 = *(v80 + 1);
    if (v95 == v96)
    {
      if (*v80 < *v25)
      {
        goto LABEL_26;
      }
    }

    else if (v95 >= v96)
    {
      goto LABEL_26;
    }

    if (v94 == v96)
    {
      if (*v31 == *v80)
      {
        goto LABEL_193;
      }

      v25 = v31;
      if (*v80 <= *v31)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v25 = v31;
      if (v94 >= v96)
      {
LABEL_193:
        v25 = v80;
      }
    }

LABEL_26:
    if (v8)
    {
      if (v7)
      {
        v26 = result;
        v27 = a3 >> 3;
        do
        {
          v28 = *v26;
          *v26 = *v25;
          v26 += 8;
          *v25 = v28;
          v25 += 8;
          --v27;
        }

        while (v27);
      }

      else
      {
        v37 = a3;
        v38 = result;
        do
        {
          v39 = *v38;
          *v38++ = *v25;
          *v25++ = v39;
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      v36 = *result;
      *result = *v25;
      *v25 = v36;
    }

    v40 = 0;
    v41 = &result[a3];
    v42 = &result[(a2 - 1) * a3];
    v43 = v42;
    v44 = &result[a3];
    v45 = &result[a3];
    while (1)
    {
LABEL_41:
      if (v44 > v43)
      {
        goto LABEL_57;
      }

      v46 = *(v44 + 1);
      v47 = *(result + 1);
      if (v46 == v47)
      {
        break;
      }

      if (v46 >= v47)
      {
        goto LABEL_57;
      }

LABEL_77:
      v44 += a3;
    }

    if (*v44 == *result)
    {
      if (v8)
      {
        v48 = 0;
        if (v7)
        {
          do
          {
            v49 = *&v45[8 * v48];
            *&v45[8 * v48] = *&v44[8 * v48];
            *&v44[8 * v48++] = v49;
          }

          while (v24 != v48);
        }

        else
        {
          do
          {
            v50 = v45[v48];
            v45[v48] = v44[v48];
            v44[v48++] = v50;
          }

          while (a3 != v48);
        }
      }

      else
      {
        v60 = *v45;
        *v45 = *v44;
        *v44 = v60;
      }

      v45 += a3;
      v40 = 1;
      goto LABEL_77;
    }

    if (*result > *v44)
    {
      goto LABEL_77;
    }

LABEL_57:
    while (v44 <= v43)
    {
      v52 = *(v43 + 1);
      v53 = *(result + 1);
      if (v52 == v53)
      {
        if (*v43 == *result)
        {
          if (v8)
          {
            v54 = 0;
            if (v7)
            {
              do
              {
                v55 = *&v43[8 * v54];
                *&v43[8 * v54] = *&v42[8 * v54];
                *&v42[8 * v54++] = v55;
              }

              while (v24 != v54);
            }

            else
            {
              do
              {
                v56 = v43[v54];
                v43[v54] = v42[v54];
                v42[v54++] = v56;
              }

              while (a3 != v54);
            }
          }

          else
          {
            v51 = *v43;
            *v43 = *v42;
            *v42 = v51;
          }

          v42 += v5;
          v40 = 1;
        }

        else if (*result > *v43)
        {
LABEL_69:
          if (v8)
          {
            v57 = 0;
            if (v7)
            {
              do
              {
                v58 = *&v44[8 * v57];
                *&v44[8 * v57] = *&v43[8 * v57];
                *&v43[8 * v57++] = v58;
              }

              while (v24 != v57);
            }

            else
            {
              do
              {
                v59 = v44[v57];
                v44[v57] = v43[v57];
                v43[v57++] = v59;
              }

              while (a3 != v57);
            }
          }

          else
          {
            v61 = *v44;
            *v44 = *v43;
            *v43 = v61;
          }

          v44 += a3;
          v43 += v5;
          v40 = 1;
          goto LABEL_41;
        }
      }

      else if (v52 < v53)
      {
        goto LABEL_69;
      }

      v43 += v5;
    }

    v62 = &result[a2 * a3];
    if (v40)
    {
      v63 = v44 - v45;
      if (v45 - result >= v44 - v45)
      {
        v64 = v44 - v45;
      }

      else
      {
        v64 = v45 - result;
      }

      if (v64)
      {
        if (v7)
        {
          v65 = &v44[-v64];
          v66 = v64 >> 3;
          v67 = result;
          do
          {
            v68 = *v67;
            *v67 = *v65;
            v67 += 8;
            *v65 = v68;
            v65 += 8;
            --v66;
          }

          while (v66);
        }

        else
        {
          v69 = -v64;
          v70 = result;
          do
          {
            v71 = *v70;
            *v70++ = v44[v69];
            v44[v69] = v71;
            v72 = __CFADD__(v69++, 1);
          }

          while (!v72);
        }
      }

      v73 = v42 - v43;
      v74 = v62 - &v42[a3];
      if (v42 - v43 < v74)
      {
        v74 = v42 - v43;
      }

      if (v74)
      {
        if (v7)
        {
          v75 = &v62[-v74];
          v76 = v74 >> 3;
          do
          {
            v77 = *v44;
            *v44 = *v75;
            v44 += 8;
            *v75 = v77;
            v75 += 8;
            --v76;
          }

          while (v76);
        }

        else
        {
          v78 = -v74;
          do
          {
            v79 = *v44;
            *v44++ = v62[v78];
            v62[v78] = v79;
            v72 = __CFADD__(v78++, 1);
          }

          while (!v72);
        }
      }

      if (v63 > a3)
      {
        result = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(result, v63 / a3, a3, a4);
      }

      if (v73 > a3)
      {
        result = &v62[-v73];
        a2 = v73 / a3;
        v7 = (((v62 - v73) | a3) & 7) == 0;
        if ((((v62 - v73) | a3) & 7) != 0)
        {
          v8 = 2;
        }

        else
        {
          v8 = v6;
        }

        if (a2 < 7)
        {
          goto LABEL_5;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v98 = result;
      do
      {
        if (v41 > result)
        {
          v99 = v98;
          v100 = v41;
          do
          {
            v101 = v100;
            v100 += v5;
            v102 = *(v100 + 1);
            v103 = *(v101 + 1);
            if (v102 == v103)
            {
              if (*v101 >= *v100)
              {
                break;
              }
            }

            else if (v102 < v103)
            {
              break;
            }

            if (v8)
            {
              v104 = 0;
              if (v7)
              {
                v105 = v100;
                do
                {
                  v106 = *&v101[8 * v104];
                  *&v101[8 * v104] = *v105;
                  *v105 = v106;
                  v105 += 8;
                  ++v104;
                }

                while (v24 != v104);
              }

              else
              {
                v108 = a3;
                do
                {
                  v109 = v101[v104];
                  v101[v104] = v99[v104];
                  v99[v104++] = v109;
                  --v108;
                }

                while (v108);
              }
            }

            else
            {
              v107 = *v101;
              *v101 = *v100;
              *v100 = v107;
            }

            v99 += v5;
          }

          while (v100 > result);
        }

        v41 += a3;
        v98 += a3;
      }

      while (v41 < v62);
    }

    return result;
  }
}

uint64_t *FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(uint64_t *result, uint64_t **a2, uint64_t *a3)
{
  v5 = *(result + 42);
  if (v5)
  {
    v6 = result;
    v7 = *(result[20] + 36 * (v5 - 1) + 4) + 1;
    if (*(result[20] + 36 * (v5 - 1) + 4) != -1 && *(a2 + 2) == 0)
    {
      result = MemChunkAlloc(4 * (*(result[20] + 36 * (v5 - 1) + 4) + 1), 0);
      *a2 = result;
      *(a2 + 2) = v7;
    }

    v9 = *(a3 + 3);
    if (v7 > v9)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a3, v7 - v9, 0);
    }

    v10 = *(v6 + 42);
    *(a3 + 2) = v7;
    v11 = *a2;
    v12 = *a3;
    if (v10)
    {
      v13 = 0;
      LODWORD(v14) = 0;
      v15 = v6[20];
      v16 = v6[22];
      v17 = 1879048192;
      do
      {
        result = (v15 + 36 * v13);
        v18 = *(result + 1);
        v19 = *(v16 + 16 * *(result + 2));
        if (v14 == v18)
        {
          if (v17 >= v19)
          {
            v17 = *(v16 + 16 * *(result + 2));
          }
        }

        else
        {
          if (v14 < v18)
          {
            do
            {
              *(v12 + 4 * v14) = v17;
              *(v11 + v14) = v13;
              LODWORD(v14) = v14 + 1;
              v17 = 1879048192;
            }

            while (v14 < *(result + 1));
            v10 = *(v6 + 42);
          }

          v17 = v19;
        }

        ++v13;
      }

      while (v13 < v10);
      v14 = v14;
    }

    else
    {
      v14 = 0;
      LODWORD(v10) = 0;
      v17 = 1879048192;
    }
  }

  else
  {
    v14 = 0;
    LODWORD(v10) = 0;
    *(a3 + 2) = 0;
    v11 = *a2;
    v17 = 1879048192;
    v12 = *a3;
  }

  *(v11 + v14) = v10;
  *(v12 + 4 * v14) = v17;
  return result;
}

int64x2_t FstSearchLateLatticeHashBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLateLatticeHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v9 = 0u;
  v10 = 0u;
  SnapTime::recordTime(&v9, 1, 0, 0, 0);
  v6 = this[13];
  result = vaddq_s64(v6[14], vsubq_s64(v9, v11));
  v8 = vaddq_s64(v6[15], vsubq_s64(v10, v12));
  v6[14] = result;
  v6[15] = v8;
  return result;
}

int64x2_t FstSearchLateLatticeHashBackoff::reset(FstSearchLateLatticeHashBackoff *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLateLatticeHashBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLateLatticeHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 30, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(this);
  FstSearchLateLatticeHashBackoff::generateTraceTokensForLateLattice(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

int32x4_t FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(FstSearchLateLatticeHashBackoff *this)
{
  v2 = *(this + 42);
  v3 = *(this + 47);
  if (v2 > v3)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 176, v2 - v3, 0);
  }

  v5 = *(this + 46);
  if (v5 < v2)
  {
    v6 = v2 - v5;
    v7 = (*(this + 22) + 16 * v5);
    result.i64[0] = 0;
    do
    {
      *v7++ = xmmword_26287F850;
      --v6;
    }

    while (v6);
  }

  *(this + 46) = v2;
  v8 = *(this + 42);
  if (v8)
  {
    v9 = 0;
    v10 = *(this + 22);
    v11 = (*(this + 20) + 16);
    do
    {
      *(v11 - 2) = v9;
      v12 = *v11;
      v11 = (v11 + 36);
      result = vuzp1q_s32(v12, vextq_s8(v12, v12, 0xCuLL));
      *(v10 + 16 * v9++) = result;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::generateTraceTokensForLateLattice(FstSearchLateLatticeHashBackoff *this)
{
  v1 = this;
  v122[1] = 0;
  v123 = 0;
  v124 = 0;
  v122[0] = 0;
  FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(this, &v123, v122);
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117[0] = 0;
  v117[1] = 0;
  v116 = 1879048192;
  v2 = (*(*v1 + 80))(v1, &v120, &v118, &v116, v117);
  v3 = *(v1 + 7);
  v4 = *(v1 + 2);
  v113 = -1;
  v115 = 256;
  v114 = *(v1 + 34);
  if (v2)
  {
    v111 = 0;
    v112 = 0;
    v5 = *(v1 + 42);
    if (v5)
    {
      v6 = 0;
      v96 = v4;
      v97 = v3;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            --v5;
            v7 = *(v1 + 20);
            if (*(v120 + v5))
            {
              break;
            }

            *(v7 + 36 * v5 + 8) = -1;
            if (!v5)
            {
              goto LABEL_76;
            }
          }

          v8 = (v7 + 36 * v5);
          v9 = *v8;
          v10 = *(v1 + 6);
          if (*(v10 + 388) > v9 && *(*(v10 + 104) + v9))
          {
            v11 = *(*(v10 + 72) + 2 * *(*(v10 + 48) + 4 * v9));
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v1 + 11);
          v13 = *(v12 + 4 * v8[1]);
          v14 = *(v1 + 22);
          v15 = (v14 + 16 * v8[2]);
          v16 = *(v1 + 3);
          v17 = *(v117[0] + 4 * v5);
          HIWORD(v113) = v11;
          v101 = v15;
          v18 = v15[1].u32[1];
          if ((v18 & 0x80000000) == 0)
          {
            break;
          }

          v8[2] = v6;
          if (v6 == HIDWORD(v112))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
            v6 = v112;
          }

          *(v111 + v6) = *v101->i8;
          v6 = v112 + 1;
          LODWORD(v112) = v112 + 1;
          *(*(v1 + 20) + 36 * v5 + 12) = 1;
          if (!v5)
          {
            goto LABEL_76;
          }
        }

        v19 = v7 + 36 * v18;
        v20 = *(v19 + 4);
        v21 = v20 ? *(v123 + (v20 - 1)) : 0;
        v106 = v16 + v116 - v17;
        v99 = (v14 + 16 * *(v19 + 8));
        v100 = v13 + v101->i32[0] - *(v12 + 4 * v20) - v99->i32[0];
        v98 = v99->i32[0] - *(v122[0] + 4 * v20);
        v22 = v6;
        v103 = v18;
        if (v21 < *(v123 + v20))
        {
          break;
        }

LABEL_42:
        if (v6 >= v22)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 150, "fst/fstsrch", 2, "%s", &unk_26287F8B0);
          v22 = v112;
        }

        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v111 + 16 * v6, v22 - v6, 16, 0);
        v37 = v6 + 1;
        v38 = v112;
        if (v37 < v112)
        {
          v39 = 16 * (v6 + 1);
          v40 = v6;
          do
          {
            if (*(v111 + v39 + 8) != *(v111 + 4 * v40 + 2))
            {
              *(v111 + ++v40) = *(v111 + v39);
              v38 = v112;
            }

            ++v37;
            v39 += 16;
          }

          while (v37 < v38);
          LODWORD(v37) = v40 + 1;
        }

        v41 = v111;
        if (HIDWORD(v112) < v37)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v37, 16 * v38, 16 * v38, 1) >> 4;
          v41 = v109;
          v111 = v109;
          v38 = v112;
        }

        if (v38 < v37)
        {
          v42 = v37 - v38;
          v43 = &v41[16 * v38];
          do
          {
            *v43 = xmmword_26287F850;
            v43 += 16;
            --v42;
          }

          while (v42);
        }

        LODWORD(v112) = v37;
        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(&v41[16 * v6], v37 - v6, 16, 0, xmmword_26287F850);
        v44 = 16 * v6;
        v45 = *(v111 + v44) + v4;
        if (v45 >= v106)
        {
          v45 = v106;
        }

        v46 = v112;
        v47 = *(v1 + 5) + v6;
        if (v112 < v47)
        {
          v47 = v112;
        }

        v48 = *(v1 + 20);
        *(v48 + 36 * v5 + 8) = v6;
        if (v6 < v47)
        {
          while (*(v111 + v44) <= v45)
          {
            v49 = *(v111 + v44 + 12);
            if ((v49 & 0x80000000) == 0)
            {
              *(v120 + v49) = 1;
              v50 = v49 == v103 ? 0 : v98 + v3;
              v51 = v50 + v100 + *(v117[0] + 4 * v5);
              if (*(v117[0] + 4 * v49) > v51)
              {
                *(v117[0] + 4 * v49) = v51;
              }
            }

            ++v6;
            v44 += 16;
            if (v47 == v6)
            {
              v6 = v47;
              break;
            }
          }

          v48 = *(v1 + 20);
          v46 = v112;
        }

        *(v48 + 36 * v5 + 12) = v6 - *(v48 + 36 * v5 + 8);
        if (HIDWORD(v112) < v6)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v6, 16 * v46, 16 * v46, 1) >> 4;
          v111 = v109;
          v46 = v112;
        }

        if (v46 < v6)
        {
          v52 = v6 - v46;
          v53 = v111 + 16 * v46;
          do
          {
            *v53++ = xmmword_26287F850;
            --v52;
          }

          while (v52);
        }

        LODWORD(v112) = v6;
        if (!v5)
        {
LABEL_76:
          v54 = v111;
          v55 = HIDWORD(v112);
          v56 = *(v1 + 42);
          goto LABEL_78;
        }
      }

      v102 = v5;
      v105 = v98 + v3;
      v104 = v13 + v101->i32[0] - v99->i32[0];
      v23 = 36 * v21;
      while (1)
      {
        if (v18 == v21)
        {
          v24 = 0;
        }

        else
        {
          v24 = v105;
        }

        v25 = *(v1 + 20);
        v26 = (*(v1 + 22) + 16 * *(v25 + v23 + 8));
        if ((v104 + v24 + *v26) <= v106)
        {
          v27 = v1;
          v28 = *(v25 + 36 * v102);
          v29 = *(v25 + v23);
          v30 = v29 != 16777209 && ArcGraph::lexToCWID(v27[5], *(v25 + v23)) >> 25 != 126;
          if (v28 == 16777209)
          {
            v1 = v27;
            v18 = v103;
            if (v30)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v31 = v28 == 16777214 || v29 == 16777213;
            v1 = v27;
            v18 = v103;
            if (!v31)
            {
LABEL_35:
              isLexPelPhnMatch = FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(v1, v21, &v113);
              v1 = v27;
              v18 = v103;
              if (isLexPelPhnMatch)
              {
                v33 = v112;
                if (v112 == HIDWORD(v112))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
                  v33 = v112;
                  v1 = v27;
                  v18 = v103;
                }

                *(v111 + v33) = *v26;
                v34 = v112;
                LODWORD(v112) = v112 + 1;
                v35 = (v111 + 16 * v34);
                v35[1].i32[1] = v21;
                *v35 = vadd_s32(vsub_s32(vadd_s32(*v101, vdup_n_s32(v24)), *v99), *v35);
                v36 = *(*(v1 + 20) + 36 * v102);
                if (v36 != 16777209)
                {
                  v35[1].i32[0] = v36 + 2 * v35[1].i32[0] + 1;
                }
              }
            }
          }
        }

        ++v21;
        v23 += 36;
        if (v21 >= *(v123 + v20))
        {
          v22 = v112;
          v4 = v96;
          v3 = v97;
          v5 = v102;
          goto LABEL_42;
        }
      }
    }

    v56 = 0;
    v6 = 0;
    v55 = 0;
    v54 = 0;
LABEL_78:
    v57 = *(v1 + 22);
    *(v1 + 22) = v54;
    v111 = v57;
    v58 = *(v1 + 47);
    *(v1 + 46) = v6;
    *(v1 + 47) = v55;
    LODWORD(v112) = 0;
    HIDWORD(v112) = v58;
    v110 = 0;
    v109 = 0;
    if (v56)
    {
      v59 = MemChunkAlloc(4 * v56, 0);
      v109 = v59;
      v110 = v56;
      if (*(v1 + 42))
      {
        v60 = 0;
        v61 = 0;
        v56 = 0;
        do
        {
          v62 = *(v1 + 20);
          v63 = (v62 + v60);
          if (*(v62 + v60 + 8) == -1)
          {
            *(v59 + v61) = -1;
          }

          else
          {
            if (v61 != v56)
            {
              v64 = v62 + 36 * v56;
              v65 = *v63;
              v66 = v63[1];
              *(v64 + 32) = *(v63 + 16);
              *v64 = v65;
              *(v64 + 16) = v66;
            }

            *(v59 + v61) = v56++;
          }

          ++v61;
          v67 = *(v1 + 42);
          v60 += 36;
        }

        while (v61 < v67);
        v68 = *(v1 + 43);
        if (v56 > v68)
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v1 + 160, v56 - v68, 0);
          LODWORD(v67) = *(v1 + 42);
        }

        if (v67 < v56)
        {
          v69 = v56 - v67;
          v70 = (*(v1 + 20) + 36 * v67 + 32);
          do
          {
            *(v70 - 2) = xmmword_26287F860;
            *(v70 - 1) = xmmword_26287F870;
            *v70 = -2;
            v70 += 18;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v56 = 0;
      }
    }

    *(v1 + 42) = v56;
    v71 = *(v1 + 46);
    if (v71)
    {
      v72 = v109;
      v73 = (*(v1 + 22) + 12);
      do
      {
        v74 = *v73;
        if ((v74 & 0x80000000) == 0)
        {
          *v73 = v72[v74];
        }

        v73 += 4;
        --v71;
      }

      while (v71);
    }

    v75 = *(v1 + 50);
    v107 = 0;
    v108 = 0;
    if (v75)
    {
      v125[0] = 0;
      v76 = realloc_array(0, v125, 24 * v75, 0, 0, 1) / 0x18;
      HIDWORD(v108) = v76;
      v77 = v125[0];
      v107 = v125[0];
      v78 = v125[0] + 16;
      v79 = v75;
      do
      {
        *(v78 - 2) = 0xFFFFFFFF00000000;
        *(v78 - 2) = -1;
        *(v78 - 2) = -2;
        *v78 = 0;
        v78 += 3;
        --v79;
      }

      while (v79);
    }

    else
    {
      v77 = 0;
      LODWORD(v76) = 0;
    }

    LODWORD(v108) = v75;
    v80 = *(v1 + 50);
    if (v80)
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = v109;
      do
      {
        v85 = *(v1 + 38);
        if (v83 < v85 && v82 == v85)
        {
          *(v1 + 38) = v83;
        }

        v87 = (*(v1 + 24) + v81);
        v88 = *(v87 + 2);
        if (v88 == -1 || v84[v88] != -1)
        {
          v89 = &v77[3 * v83];
          v90 = *v87;
          v89[2] = *(v87 + 2);
          *v89 = v90;
          v91 = *(*(v1 + 24) + v81 + 8);
          if (v91 != -1)
          {
            LODWORD(v91) = v84[v91];
          }

          *(v89 + 2) = v91;
          ++v83;
          v80 = *(v1 + 50);
        }

        ++v82;
        v81 += 24;
      }

      while (v82 < v80);
    }

    else
    {
      v83 = 0;
    }

    if (v83 < *(v1 + 38))
    {
      *(v1 + 38) = v83;
    }

    if (v76 < v83)
    {
      v125[0] = 0;
      v76 = realloc_array(v77, v125, 24 * v83, 24 * v75, 24 * v75, 1) / 0x18;
      v77 = v125[0];
      LODWORD(v75) = v108;
    }

    if (v75 < v83)
    {
      v92 = v83 - v75;
      v93 = &v77[3 * v75 + 2];
      do
      {
        *(v93 - 2) = 0xFFFFFFFF00000000;
        *(v93 - 2) = -1;
        *(v93 - 2) = -2;
        *v93 = 0;
        v93 += 3;
        --v92;
      }

      while (v92);
    }

    v94 = *(v1 + 24);
    *(v1 + 24) = v77;
    v107 = v94;
    LODWORD(v94) = *(v1 + 51);
    *(v1 + 50) = v83;
    *(v1 + 51) = v76;
    LODWORD(v108) = 0;
    HIDWORD(v108) = v94;
    DgnIArray<Utterance *>::~DgnIArray(&v107);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v109);
    DgnIArray<Utterance *>::~DgnIArray(&v111);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v117);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v118);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v122);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v123);
}

void sub_26262034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a25);
  DgnIArray<Utterance *>::~DgnIArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 160);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30 - 128);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 112);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHashBackoff::printSize(FstSearchLateLatticeHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 24 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 24 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 16 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 16 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 22 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 22 * (*(this + 51) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 54);
  v48 = 22 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 22 * (*(this + 55) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 240, 0);
  v60 = sizeObject(this + 240, 1);
  v61 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

uint64_t FstSearchLateLatticeHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 200);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 24 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 192);
    if (!a4 || (v10 = *(v9 + v6 + 8), v10 == -1))
    {
      if (*(*(a1 + 40) + 160) != *(v9 + v6 + 4))
      {
        goto LABEL_19;
      }

      v10 = *(v9 + v6 + 8);
    }

    if (a2)
    {
      *(*a2 + v10) = 1;
    }

    if (a3)
    {
      *(*a3 + v10) = 1;
    }

    v11 = *(a1 + 160) + 36 * v10;
    v12 = *(v11 + 16) + *(*(a1 + 88) + 4 * *(v11 + 4));
    v13 = v7 <= v12;
    if (v7 >= v12)
    {
      v7 = v12;
    }

    if (!v13)
    {
      v8 = v10;
    }

    v5 = *(a1 + 200);
LABEL_19:
    ++v4;
    v6 += 24;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v14 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v14)
    {
      --v14;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 36 * v14) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v14) = 1;
        }

        v8 = v14;
        if (a3)
        {
          *(*a3 + v14) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchLateLatticeHashBackoff::findBestPath(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a3 + 8) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v10;
  }

  if (v10)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(v10, 0);
    *(a2 + 2) = v10;
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  v13 = 0;
  do
  {
    *(*a2 + v13) = 0;
    *(*a3 + v13++) = 0;
  }

  while (v10 != v13);
LABEL_16:
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1 || (v15 = *(a1 + 160), v16 = *(v15 + 36 * BestTrace + 16) + *(*(a1 + 88) + 4 * *(v15 + 36 * BestTrace + 4)), *a4 = v16, v16 == 1879048192))
  {
    v17 = 1879048192;
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = v18 - 1;
      v20 = 36 * v18;
      v21 = *(v15 + 36 * BestTrace + 4);
      v22 = 1879048192;
      do
      {
        if (*(v15 + v20 - 32) == v21 && *(v15 + v20 - 36) == 16777213 && !*(*a2 + v19))
        {
          *(*a2 + v19) = 2;
          *(*a3 + v19) = 1;
          v15 = *(a1 + 160);
          if (v22 >= *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32)))
          {
            v22 = *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32));
          }
        }

        --v19;
        v20 -= 36;
      }

      while (v19 != -1);
      v16 = *a4;
      v23 = *(a1 + 168);
    }

    else
    {
      v23 = 0;
      v22 = 1879048192;
    }

    v24 = *(a1 + 28);
    if (v16 <= v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16 - v22;
    }

    v26 = *(a5 + 3);
    v27 = v23;
    if (v23 > v26)
    {
      DgnPrimArray<unsigned int>::reallocElts(a5, v23 - v26, 0);
      v27 = *(a1 + 168);
    }

    *(a5 + 2) = v23;
    v17 = *a4;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v17 - (v25 + v24) + *(a1 + 12);
      do
      {
        v31 = *a2;
        v32 = *(*a2 + v29);
        if (v32 == 2)
        {
          v33 = *a5;
          if (*(*(a1 + 176) + 16 * *(*(a1 + 160) + v28 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + v28 + 4)) <= v30)
          {
            *(v33 + 4 * v29) = v25 + v24;
            *(v31 + v29) = 1;
          }

          else
          {
            *(v33 + 4 * v29) = 1879048192;
            *(v31 + v29) = 0;
          }
        }

        else if (v32 == 1)
        {
          *(*a5 + 4 * v29) = 0;
        }

        else
        {
          *(*a5 + 4 * v29) = 1879048192;
        }

        ++v29;
        v28 += 36;
      }

      while (v29 < *(a1 + 168));
      v17 = *a4;
    }
  }

  return v17 != 1879048192;
}

uint64_t *FstSearchLateLatticeHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v8 = a2;
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a2 + 2) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a2 = MemChunkAlloc(4 * v10, 0);
    *(v8 + 2) = v10;
  }

  Node = Lattice<WordLatticeLC>::createNode(a4);
  result = a3;
  v14 = *(a3 + 8);
  if (v14 == *(a3 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    result = a3;
    v14 = *(a3 + 8);
  }

  *(*result + 4 * v14) = Node;
  ++*(result + 2);
  v15 = *(a1 + 168);
  v16 = a7;
  if (v15)
  {
    v17 = -1;
    v39 = v8;
    do
    {
      --v15;
      v18 = *v8;
      *(*v8 + v15) = -1;
      if (*(*a6 + v15))
      {
        v19 = *(a1 + 160);
        v20 = *(*(a1 + 88) + 4 * *(v19 + 36 * v15 + 4));
        if (*(*v16 + v15) == 1)
        {
          if (*(*a6 + v15) != 1 || v17 == -1)
          {
            v22 = Lattice<WordLatticeLC>::createNode(a4);
            result = a3;
            v23 = *(a3 + 8);
            *(*v8 + v15) = v23;
            if (v23 == *(a3 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              result = a3;
              v23 = *(a3 + 8);
            }

            *(*result + 4 * v23) = v22;
            v24 = *(result + 2);
            *(result + 2) = v24 + 1;
            if (*(*a6 + v15) == 1)
            {
              v17 = v24;
            }

            v19 = *(a1 + 160);
            v16 = a7;
          }

          else
          {
            *(v18 + v15) = v17;
          }
        }

        v25 = (v19 + 36 * v15);
        if (v25[3] >= 1)
        {
          v40 = v17;
          v26 = *v25;
          v27 = v25[2];
          do
          {
            v28 = *(a1 + 176);
            v29 = (v28 + 16 * v27);
            v30 = v29[3];
            if ((v30 & 0x80000000) != 0)
            {
              *v29 += v20;
            }

            else
            {
              if (v26 == 16777209)
              {
                v31 = *a5 + 16 * v30;
                v32 = *(v31 + 8);
                if (v32 == *(v31 + 12))
                {
                  result = DgnPrimArray<unsigned int>::reallocElts(v31, 1, 1);
                  v16 = a7;
                  v32 = *(v31 + 8);
                  v19 = *(a1 + 160);
                  v28 = *(a1 + 176);
                }

                *(*v31 + 4 * v32) = v15;
                ++*(v31 + 8);
                v30 = v29[3];
              }

              else
              {
                *(*v16 + v30) = 1;
              }

              v33 = v19 + 36 * v30;
              v34 = *(*(a1 + 88) + 4 * *(v33 + 4));
              v35 = (v28 + 16 * *(v33 + 8));
              v36 = v20 + *v29 - v34 - *v35;
              LODWORD(v35) = v29[1] - v35[1];
              *v29 = v36;
              v29[1] = v35;
              *(*a6 + v30) = 2;
              v19 = *(a1 + 160);
            }

            ++v27;
          }

          while (v27 < *(v19 + 36 * v15 + 12) + *(v19 + 36 * v15 + 8));
          v8 = v39;
          v17 = v40;
        }
      }
    }

    while (v15);
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLateLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 36 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 16 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLateLatticeHashBackoff::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLateLatticeHashBackoff::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 36 * v11 + 12) + *(*(a1 + 160) + 36 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_262621440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 36 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 16 * v19 + 12) == a2)
      {
        v22 = (v21 + 16 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 36 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((a4 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 36 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 36 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 36 * a4 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 36 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 36 * a4 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}