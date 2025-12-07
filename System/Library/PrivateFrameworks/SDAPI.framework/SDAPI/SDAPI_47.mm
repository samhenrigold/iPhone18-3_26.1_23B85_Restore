void sub_262801908(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, void *a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30 == 1)
  {
    __cxa_begin_catch(a1);
    TRule::freeMemory(v29);
    __cxa_rethrow();
  }

  JUMPOUT(0x2628019F4);
}

void sub_2628019E0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

TFileObject *buildReplaceObject(const TFileObject *a1, TLexicon *a2, TAllocator *a3)
{
  v17 = &unk_26288FAF0;
  v18 = xmmword_26286B6D0;
  v19 = -1;
  if (TFileObject::verify(a1, &v17, 1, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v13[0], v13[1]);
    }

    else
    {
      *&__p[8] = *v13;
      v16 = v14;
    }

    *__p = &unk_287528000;
    if (v16 >= 0)
    {
      v9 = &__p[8];
    }

    else
    {
      v9 = *&__p[8];
    }

    conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 383);
    *__p = byte_287529580;
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v11 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v11, *__p, *&__p[8]);
    }

    else
    {
      v12 = *__p;
      exception[3] = *&__p[16];
      *&v11->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_287528000;
  }

  v6 = *(a1 + 3);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v7 = compileAlt(v6, v7, a2, a3);
    v6 = *(v6 + 2);
  }

  while (v6);
  return v7;
}

void sub_262801C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

TCondition *TRule::freeMemory(TCondition *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (v1 != *this)
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        TCondition::~TCondition(this);
        this = MEMORY[0x26672B1B0]();
        v2 = *v3;
        v1 = *(v3 + 1);
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }

  return this;
}

void TRule::~TRule(TRule *this)
{
  TRule::freeMemory(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t TRule::test(uint64_t *a1, uint64_t a2, int *a3, int *a4)
{
  v4 = *a1;
  if (a1[1] == *a1)
  {
    return 1;
  }

  v9 = 0;
  do
  {
    result = TCondition::test(*(v4 + 8 * v9), a2, a3, a4);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v9;
    v4 = *a1;
  }

  while (v9 < (a1[1] - *a1) >> 3);
  return result;
}

void TGroup::TGroup(TGroup *this, const TFileObject *a2, const TLocaleInfo **a3, uint64_t a4, TLexicon *a5, TAllocator *a6, unint64_t a7)
{
  v66 = *MEMORY[0x277D85DE8];
  *(this + 32) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  std::vector<TState *>::reserve(this, 0xAuLL);
  v58 = xmmword_26286B680;
  v57 = dword_26288FAA0;
  v61 = xmmword_26286B6D0;
  v59 = -1;
  v60 = dword_26288FABC;
  v64 = xmmword_26286B6A0;
  v62 = -1;
  v63 = dword_26288FA80;
  v65 = -1;
  if (TFileObject::verify(a2, &v57, 3, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v54, &byte_262899963);
    *__p = byte_287529580;
    if ((v54[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], *v54, *&v54[8]);
    }

    else
    {
      *&__p[8] = *v54;
      v45[0] = *&v54[16];
    }

    *__p = &unk_287528000;
    if (v45[0] >= 0)
    {
      v36 = &__p[8];
    }

    else
    {
      v36 = *&__p[8];
    }

    conditionalAssert(v36, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 586);
    *__p = byte_287529580;
    if (SHIBYTE(v45[0]) < 0)
    {
      operator delete(*&__p[8]);
    }

    if ((v54[23] & 0x80000000) != 0)
    {
      operator delete(*v54);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v38 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v38, *__p, *&__p[8]);
    }

    else
    {
      v39 = *__p;
      exception[3] = *&__p[16];
      *&v38->__r_.__value_.__l.__data_ = v39;
    }

    *exception = &unk_287528000;
  }

  v12 = *(a2 + 3);
  if (v12)
  {
    while (1)
    {
      v13 = *(v12 + 1);
      if (wcscmp(v13, dword_26288FAA0))
      {
        if (!wcscmp(v13, dword_26288FABC))
        {
          operator new();
        }

        if (!wcscmp(v13, dword_26288FA80))
        {
          *(this + 3) = buildReplaceObject(v12, a5, a6);
          *(this + 32) = 1;
        }

        goto LABEL_51;
      }

      *&v54[8] = vdupq_n_s64(1uLL);
      *v54 = &unk_26288FAF0;
      v55 = -1;
      if (TFileObject::verify(v12, v54, 1, 1))
      {
        std::string::basic_string[abi:ne200100]<0>(&__sz, &byte_262899963);
        v52 = byte_287529580;
        if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v53, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
        }

        else
        {
          v53 = __sz;
        }

        v52 = &unk_287528000;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v53;
        }

        else
        {
          v28 = v53.__r_.__value_.__r.__words[0];
        }

        conditionalAssert(v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 517);
        v52 = byte_287529580;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__sz.__r_.__value_.__l.__data_);
        }

        v29 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v29 = byte_287529580;
        v30 = (v29 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v30, *__p, *&__p[8]);
        }

        else
        {
          v34 = *__p;
          v29[3] = *&__p[16];
          *&v30->__r_.__value_.__l.__data_ = v34;
        }

        *v29 = &unk_287528000;
      }

      v14 = *(v12 + 3);
      if (v14)
      {
        break;
      }

LABEL_51:
      v12 = *(v12 + 2);
      if (!v12)
      {
        return;
      }
    }

    v15 = 0;
    while (1)
    {
      if ((TFileObject::verify(v14, 1, 0) & 1) == 0)
      {
        v16 = *(v14 + 24);
        if (*(v14 + 40) == 2)
        {
          TRegExp::add(a3, v16, a4);
          goto LABEL_14;
        }

        if (!TLexicon::checkName(a5, v16, 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(a5, *(v14 + 24)))
          {
            loggableFileObject(v14);
            v22 = v48;
            v23 = v47;
            loggableUnicode(*(v14 + 24), __p);
            v25 = &v47;
            if (v22 < 0)
            {
              v25 = v23;
            }

            if (__p[23] >= 0)
            {
              v26 = __p;
            }

            else
            {
              v26 = *__p;
            }

            tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v24, v25, v26);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            if (v48 < 0)
            {
              operator delete(v47);
            }
          }

          *__p = v45;
          *&__p[8] = xmmword_26286B6F0;
          v46 = 1;
          TRegExp::stringToRegExp(*(v14 + 24), __p, 0, 3);
          if (*&__p[16] >= *&__p[8])
          {
            if (v46)
            {
              v56 = 0;
              TBuffer<wchar_t>::insert(__p, *&__p[16], &v56, 1uLL);
              v27 = *__p;
              --*&__p[16];
            }

            else
            {
              v27 = *__p;
              if (*&__p[8])
              {
                *(*__p + 4 * *&__p[8] - 4) = 0;
              }
            }
          }

          else
          {
            v27 = *__p;
            *(*__p + 4 * *&__p[16]) = 0;
          }

          TRegExp::add(a3, v27, a4);
          if (v46 == 1 && *__p != v45 && *__p)
          {
            MEMORY[0x26672B1B0]();
          }

          goto LABEL_14;
        }

        loggableFileObject(v14);
        v17 = v50;
        v18 = v49;
        loggableUnicode(*(v14 + 24), __p);
        v20 = &v49;
        if (v17 < 0)
        {
          v20 = v18;
        }

        if (__p[23] >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = *__p;
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v19, v20, v21);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v50 < 0)
        {
          operator delete(v49);
        }
      }

      v15 = 1;
LABEL_14:
      v14 = *(v14 + 16);
      if (!v14)
      {
        if (v15)
        {
          std::string::basic_string[abi:ne200100]<0>(&v41, &byte_262899963);
          v42 = byte_287529580;
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v43, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
          }

          else
          {
            v43 = v41;
          }

          v42 = &unk_287528000;
          if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v43;
          }

          else
          {
            v31 = v43.__r_.__value_.__r.__words[0];
          }

          conditionalAssert(v31, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 564);
          v42 = byte_287529580;
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          v32 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v32 = byte_287529580;
          v33 = (v32 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v33, *__p, *&__p[8]);
          }

          else
          {
            v35 = *__p;
            v32[3] = *&__p[16];
            *&v33->__r_.__value_.__l.__data_ = v35;
          }

          *v32 = &unk_287528000;
        }

        goto LABEL_51;
      }
    }
  }
}

void sub_262802AC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, void *a33, int a34, __int16 a35, char a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    TGroup::freeMemory(v41);
    __cxa_rethrow();
  }

  JUMPOUT(0x262802BC8);
}

void sub_262802BB8(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

TRule *TGroup::freeMemory(TRule *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (v1 != *this)
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        TRule::~TRule(this);
        this = MEMORY[0x26672B1B0]();
        v2 = *v3;
        v1 = *(v3 + 1);
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }

  return this;
}

void TGroup::~TGroup(TGroup *this)
{
  TGroup::freeMemory(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t TGroup::munge(uint64_t *a1, uint64_t a2, int *a3, int *a4)
{
  v4 = a1;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    while ((TRule::test(*(v5 + 8 * v9), a2, a3, a4) & 1) == 0)
    {
      ++v9;
      v5 = *v4;
      if (v9 >= (v4[1] - *v4) >> 3)
      {
        return v4[3];
      }
    }

    v4 = *(*v4 + 8 * v9);
  }

  return v4[3];
}

void TMungeMapManager::TMungeMapManager(TMungeMapManager *this, TInputStream *a2, TLexicon *a3)
{
  TAllocator::TAllocator(this, 2048);
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = a3;
  operator new();
}

void sub_262803528(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v3, 0x60C40CE5A77A8);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 6) = v5;
    operator delete(v5);
  }

  TAllocator::clear(v1);
  _Unwind_Resume(a1);
}

TRegExp *TMungeMapManager::freeMemory(TMungeMapManager *this)
{
  result = *(this + 9);
  if (result)
  {
    TRegExp::~TRegExp(result);
    result = MEMORY[0x26672B1B0]();
  }

  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      result = *(v4 + 8 * v5);
      if (result)
      {
        TGroup::~TGroup(result);
        result = MEMORY[0x26672B1B0]();
        v4 = *(this + 5);
        v3 = *(this + 6);
      }

      ++v5;
    }

    while (v5 < (v3 - v4) >> 3);
  }

  return result;
}

void TMungeMapManager::~TMungeMapManager(TMungeMapManager *this)
{
  TMungeMapManager::freeMemory(this);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  TAllocator::clear(this);
}

void TMungeMapManager::mungeWithGroups(uint64_t a1, TVertex *this, TGraph *a3, int *a4, int *a5, TSegmenter *a6, unint64_t a7, unint64_t a8)
{
  v54 = v56;
  v55 = xmmword_26286B6F0;
  v57 = 1;
  v13 = *(this + 2);
  if (v13)
  {
    PreviousSegment = TSegmenter::getPreviousSegment(a6, v13);
    if (PreviousSegment)
    {
      if (*(PreviousSegment + 24) == 5)
      {
        goto LABEL_6;
      }

      a4 = *PreviousSegment;
    }

    TBuffer<wchar_t>::assign(&v54, a4);
  }

LABEL_6:
  __p[1] = 0;
  __p[0] = 0;
  v53 = 0;
  v48 = v50;
  v49 = xmmword_26286B6F0;
  v51 = 1;
  OutEdge = TVertex::getOutEdge(this);
  if (OutEdge)
  {
    v17 = &v46;
LABEL_8:
    v18 = *(OutEdge + 40);
    if (v18 >= a7 && v18 < a8)
    {
      v20 = *(OutEdge + 48);
      v21 = v20 > 5;
      v22 = (1 << v20) & 0x2C;
      if (v21 || v22 == 0)
      {
        TWord::getTokenName(*(OutEdge + 56), &v48);
        std::vector<TRegExpMatch>::resize(__p, 0);
        v24 = *(a1 + 72);
        if (*(&v49 + 1) >= v49)
        {
          if (v51)
          {
            LODWORD(v44) = 0;
            TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), &v44, 1uLL);
            v25 = v48;
            --*(&v49 + 1);
          }

          else
          {
            v25 = v48;
            if (v49)
            {
              v48[v49 - 1] = 0;
            }
          }
        }

        else
        {
          v25 = v48;
          v48[*(&v49 + 1)] = 0;
        }

        TRegExp::match(v24, v25, 0, __p);
        if (__p[0] != __p[1])
        {
          v44 = sortMatch;
          std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,false>(__p[0], __p[1], &v44, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3)), 1, *__p);
          v44 = v17;
          v45 = xmmword_26286B6F0;
          v47 = 1;
          v26 = *(*(OutEdge + 24) + 24);
          v40 = v17;
          if (v26)
          {
            if (*v26)
            {
              Segment = TSegmenter::getSegment(a6, v26);
              if (*(Segment + 24) != 5)
              {
                TBuffer<wchar_t>::assign(&v44, *Segment);
              }
            }

            else
            {
              TBuffer<wchar_t>::assign(&v44, a5);
            }
          }

          v28 = __p[0];
          if (__p[1] == __p[0])
          {
            goto LABEL_68;
          }

          v29 = 0;
          v41 = *(OutEdge + 24);
          while (1)
          {
            v30 = *(*(a1 + 40) + 8 * v28[3 * v29 + 2]);
            if (*(&v55 + 1) >= v55)
            {
              if (v57)
              {
                v58[0] = 0;
                TBuffer<wchar_t>::insert(&v54, *(&v55 + 1), v58, 1uLL);
                v31 = v54;
                --*(&v55 + 1);
              }

              else
              {
                v31 = v54;
                if (v55)
                {
                  v54[v55 - 1] = 0;
                }
              }
            }

            else
            {
              v31 = v54;
              v54[*(&v55 + 1)] = 0;
            }

            if (*(&v45 + 1) >= v45)
            {
              if (v47)
              {
                v58[0] = 0;
                TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), v58, 1uLL);
                v32 = v44;
                --*(&v45 + 1);
              }

              else
              {
                v32 = v44;
                if (v45)
                {
                  *(v44 + v45 - 1) = 0;
                }
              }
            }

            else
            {
              v32 = v44;
              *(v44 + *(&v45 + 1)) = 0;
            }

            v34 = TGroup::munge(v30, OutEdge, v31, v32);
            if (v34)
            {
              break;
            }

            if (v33)
            {
              v35 = TVertex::getOutEdge(this);
              if (v35)
              {
                v36 = 0;
LABEL_49:
                if (*(v35 + 48) != 5)
                {
                  ++v36;
                }

                while (1)
                {
                  v35 = *(v35 + 8);
                  if (!v35)
                  {
                    break;
                  }

                  if ((*(v35 + 32) & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                if (v36 >= 2)
                {
                  v37 = TVertex::getInEdge(v41);
                  if (v37)
                  {
                    v38 = 0;
LABEL_57:
                    if (*(v37 + 48) != 5)
                    {
                      ++v38;
                    }

                    while (1)
                    {
                      v37 = *v37;
                      if (!v37)
                      {
                        break;
                      }

                      if ((*(v37 + 32) & 1) == 0)
                      {
                        goto LABEL_57;
                      }
                    }

                    if (v38 >= 2)
                    {
                      TGraph::deleteEdge(a3, OutEdge);
LABEL_68:
                      v17 = v40;
                      if (v47 == 1 && v44 != v40 && v44)
                      {
                        MEMORY[0x26672B1B0]();
                      }

                      goto LABEL_16;
                    }
                  }
                }
              }
            }

            ++v29;
            v28 = __p[0];
            if (v29 >= 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3))
            {
              goto LABEL_68;
            }
          }

          if (v33)
          {
            TGraph::deleteEdge(a3, OutEdge);
          }

          addSequence(v34, this, v41, a3, *(a1 + 64), 0, 0, 0);
          goto LABEL_68;
        }
      }
    }

LABEL_16:
    while (1)
    {
      OutEdge = *(OutEdge + 8);
      if (!OutEdge)
      {
        break;
      }

      if ((*(OutEdge + 32) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  if (v51 == 1 && v48 != v50 && v48 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v57 == 1 && v54 != v56)
  {
    if (v54)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_262803B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (LOBYTE(STACK[0x458]) == 1 && a17 != a10 && a17)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x878]) == 1)
  {
    v20 = STACK[0x460];
    if (STACK[0x460] != v18)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0](v20, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  v21 = STACK[0x880];
  if (STACK[0x880])
  {
    STACK[0x888] = v21;
    operator delete(v21);
  }

  if (LOBYTE(STACK[0xCB8]) == 1)
  {
    v22 = STACK[0x8A0];
    if (STACK[0x8A0] != v17)
    {
      if (v22)
      {
        MEMORY[0x26672B1B0](v22, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TMungeMapManager::munge(uint64_t a1, TGraph *a2, int *a3, int *a4, TSegmenter *a5, unint64_t a6)
{
  if (*a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &unk_26288FAE8;
  }

  if (*a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &unk_26288FAE8;
  }

  v8 = *(a2 + 11) - *(a2 + 10);
  if (v8)
  {
    v13 = 0;
    v14 = (*(a2 + 14) - *(a2 + 13)) >> 3;
    v15 = v8 >> 3;
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    do
    {
      v17 = *(*(a2 + 10) + 8 * v13);
      if ((*(v17 + 32) & 1) == 0)
      {
        TMungeMapManager::mungeWithGroups(a1, v17, a2, v6, v7, a5, a6, v14);
      }

      ++v13;
    }

    while (v16 != v13);
  }
}

void TGrammarManager::TGrammarManager(TGrammarManager *this, TInputStream *a2, const TTagManager *a3, TLexicon *a4, TItnParamManager *a5)
{
  *this = &unk_287523E50;
  *(this + 2) = &unk_287523E50;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 8) = -1;
  *(this + 7) = a5;
  *(this + 4) = a4;
  operator new();
}

void sub_262804D80(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t callBackToken(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = wcslen(v10);
  if (v11)
  {
    v12 = v11;
    if (TLexicon::checkName(a3, v10, *a4 > 3uLL, 0xFFFFFFFFFFFFFFFFLL))
    {
      loggableUnicode(*(a1 + 8), &__p);
      if (v21 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      tknPrintf("Warning: $Token('%s') : The formatter grammar constructed an invalid token.\n", v13, p_p);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }

      return 0;
    }

    if ((v12 + 9) >> 62)
    {
      v15 = -1;
    }

    else
    {
      v15 = 4 * (v12 + 9);
    }

    __p = TAllocator::allocate(a5, v15);
    v20 = v12 + 9;
    v21 = 0;
    v23 = 0;
    TBuffer<wchar_t>::assign(&__p, dword_26288FD88);
    v16 = 0;
    v17 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&__p, v21, v17, v16 - 1);
    TBuffer<wchar_t>::insert(&__p, v21, &unk_26288FDA8, 1uLL);
    if (v21 >= v20)
    {
      if (v23)
      {
        v24 = 0;
        TBuffer<wchar_t>::insert(&__p, v21--, &v24, 1uLL);
      }

      else if (v20)
      {
        *(__p + v20 - 1) = 0;
      }
    }

    else
    {
      *(__p + v21) = 0;
    }

    if (v23 == 1 && __p != &v22 && __p)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_26280501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262805238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    callBackSync(va);
  }

  _Unwind_Resume(a1);
}

void TWideChartSeeder::makeTerminals(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t a5, TAllocator *a6)
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16) + a2;
  if (v6 < *(a1 + 24))
  {
    v8 = **(a1 + 8);
    if (v6 < 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v8) >> 4) && (!a2 || (*(v8 + 112 * v6 + 32) & 1) == 0))
    {
      v52 = v54;
      v53 = xmmword_26286B6F0;
      v55 = 1;
      TWord::getTokenName(*(v8 + 112 * v6 + 16), &v52);
      v15 = *a3;
      v14 = a3[1];
      v16 = *(a1 + 32);
      if (*(&v53 + 1) >= v53)
      {
        if (v55)
        {
          LODWORD(v48) = 0;
          TBuffer<wchar_t>::insert(&v52, *(&v53 + 1), &v48, 1uLL);
          v17 = v52;
          --*(&v53 + 1);
        }

        else
        {
          v17 = v52;
          if (v53)
          {
            v52[v53 - 1] = 0;
          }
        }
      }

      else
      {
        v17 = v52;
        v52[*(&v53 + 1)] = 0;
      }

      TGrammar::getTerminals(v16, v17, a3);
      v18 = v14 - v15;
      if (a3[1] - *a3 != v18)
      {
        if ((*(&v53 + 1) + 1) >> 62)
        {
          v19 = -1;
        }

        else
        {
          v19 = 4 * (*(&v53 + 1) + 1);
        }

        v20 = TAllocator::allocate(a6, v19);
        if (*(&v53 + 1) >= v53)
        {
          if (v55)
          {
            LODWORD(v48) = 0;
            TBuffer<wchar_t>::insert(&v52, *(&v53 + 1), &v48, 1uLL);
            v21 = v52;
            --*(&v53 + 1);
          }

          else
          {
            v21 = v52;
            if (v53)
            {
              v52[v53 - 1] = 0;
            }
          }
        }

        else
        {
          v21 = v52;
          v52[*(&v53 + 1)] = 0;
        }

        wcscpy(v20, v21);
        v48 = v50;
        v49 = xmmword_26286B6F0;
        v51 = 1;
        TWord::getOptionalTagBits(*(**(a1 + 8) + 112 * *(a1 + 16) + 112 * a2 + 16), &v48);
        if ((*(&v49 + 1) + 1) >> 62)
        {
          v22 = -1;
        }

        else
        {
          v22 = 4 * (*(&v49 + 1) + 1);
        }

        v23 = TAllocator::allocate(a6, v22);
        if (*(&v49 + 1) >= v49)
        {
          if (v51)
          {
            LODWORD(v57) = 0;
            TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), &v57, 1uLL);
            v24 = v48;
            --*(&v49 + 1);
          }

          else
          {
            v24 = v48;
            if (v49)
            {
              v48[v49 - 1] = 0;
            }
          }
        }

        else
        {
          v24 = v48;
          v48[*(&v49 + 1)] = 0;
        }

        wcscpy(v23, v24);
        *&v57 = 1;
        *(&v57 + 1) = v20;
        v58 = 1;
        v59 = v23;
        v56 = xmmword_279B40DF8;
        if (v18 < (a3[1] - *a3))
        {
          v25 = v18 >> 3;
          do
          {
            ClientData = TGrammarCompiler::makeClientData(&v56, &v57, 2, a6);
            v28 = *(a5 + 8);
            v27 = *(a5 + 16);
            if (v28 >= v27)
            {
              v30 = (v28 - *a5) >> 3;
              if ((v30 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v31 = v27 - *a5;
              v32 = v31 >> 2;
              if (v31 >> 2 <= (v30 + 1))
              {
                v32 = v30 + 1;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a5, v33);
              }

              v34 = (8 * v30);
              *v34 = ClientData;
              v29 = 8 * v30 + 8;
              v35 = *(a5 + 8) - *a5;
              v36 = v34 - v35;
              memcpy(v34 - v35, *a5, v35);
              v37 = *a5;
              *a5 = v36;
              *(a5 + 8) = v29;
              *(a5 + 16) = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              *v28 = ClientData;
              v29 = (v28 + 1);
            }

            *(a5 + 8) = v29;
            v39 = a4[1];
            v38 = a4[2];
            if (v39 >= v38)
            {
              v41 = *a4;
              v42 = v39 - *a4;
              v43 = v42 >> 3;
              v44 = (v42 >> 3) + 1;
              if (v44 >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v45 = v38 - v41;
              if (v45 >> 2 > v44)
              {
                v44 = v45 >> 2;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF8)
              {
                v46 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4, v46);
              }

              *(8 * v43) = 1;
              v40 = (8 * v43 + 8);
              memcpy(0, v41, v42);
              v47 = *a4;
              *a4 = 0;
              a4[1] = v40;
              a4[2] = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v39 = 1;
              v40 = v39 + 8;
            }

            a4[1] = v40;
            ++v25;
          }

          while (v25 < (a3[1] - *a3) >> 3);
        }

        if (v51 == 1 && v48 != v50 && v48)
        {
          MEMORY[0x26672B1B0]();
        }
      }

      if (v55 == 1 && v52 != v54)
      {
        if (v52)
        {
          MEMORY[0x26672B1B0]();
        }
      }
    }
  }
}

void sub_262805768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (LOBYTE(STACK[0x448]) == 1 && a15 != a10 && a15 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x868]) == 1)
  {
    v17 = STACK[0x450];
    if (STACK[0x450] != a14)
    {
      if (v17)
      {
        MEMORY[0x26672B1B0](v17, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TGrammarManager::getLMScore(uint64_t a1, __int32 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v44[97] = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a4)
  {
    v10 = a4 - 1;
    if (a4 != 1 && TWord::getWordSpec(*(*a3 + 112 * a4 - 208)) != -1 && TWord::getWordSpec(*(*a3 + 112 * a4 - 96)) != -1)
    {
      v11 = v44;
      WordSpec = TWord::getWordSpec(*(*a3 + 112 * (a4 - 2) + 16));
      v43[0] = v12;
      v43[1] = TWord::getWordSpec(*(*a3 + 112 * v10 + 16));
      v9 = 2;
LABEL_8:
      *v11 = v13;
      goto LABEL_10;
    }

    if (TWord::getWordSpec(*(*a3 + 112 * a4 - 96)) != -1)
    {
      v11 = v43;
      WordSpec = TWord::getWordSpec(*(*a3 + 112 * v10 + 16));
      v9 = 1;
      goto LABEL_8;
    }

    v9 = 0;
  }

LABEL_10:
  v37 = v39;
  v38 = xmmword_26286B6F0;
  v40 = 1;
  if (*a2)
  {
    v14 = &v43[2 * v9];
    while (!wcsncmp(a2, dword_26288FD88, 7uLL))
    {
      v15 = a2 + 7;
      v16 = wcsstr(a2 + 7, &unk_26288FDA8);
      TBuffer<wchar_t>::resize(&v37, 0);
      TBuffer<wchar_t>::insert(&v37, 0, v15, v16 - v15);
      v17 = *(a1 + 32);
      if (*(&v38 + 1) >= v38)
      {
        if (v40)
        {
          v41[0] = 0;
          TBuffer<wchar_t>::insert(&v37, *(&v38 + 1), v41, 1uLL);
          v18 = v37;
          --*(&v38 + 1);
        }

        else
        {
          v18 = v37;
          if (v38)
          {
            v37[v38 - 1] = 0;
          }
        }
      }

      else
      {
        v18 = v37;
        v37[*(&v38 + 1)] = 0;
      }

      HeadClone = TLexicon::findHeadClone(v17, v18);
      if (!HeadClone)
      {
        break;
      }

      ++v9;
      *(v14 - 1) = TWord::getWordSpec(HeadClone);
      *v14 = v20;
      v21 = v16[1];
      a2 = v16 + 1;
      v14 += 2;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v31 = 0;
  }

  else
  {
LABEL_21:
    v22 = a5 + a4;
    v23 = *a3;
    if (a5 + a4 < (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4)))
    {
      v24 = 112 * v22 + 16;
      v25 = &v43[2 * v9];
      v26 = v22 + 1;
      v27 = 1;
      do
      {
        if (TWord::getWordSpec(*(v23 + v24)) == -1)
        {
          break;
        }

        v28 = TWord::getWordSpec(*(*a3 + v24));
        v23 = *a3;
        v29 = (v26 < 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4)) & v27;
        ++v9;
        *(v25 - 1) = v28;
        *v25 = v30;
        v24 += 112;
        v25 += 2;
        ++v26;
        v27 = 0;
      }

      while ((v29 & 1) != 0);
    }

    SDLm_LmScore(0, 0, 0, 0, 0, &WordSpec, v9, v41, v9, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v31 = 0;
    if (v9)
    {
      v32 = v41;
      do
      {
        v33 = *v32++;
        v31 = (v33 + v31);
        --v9;
      }

      while (v9);
    }
  }

  if (v40 == 1 && v37 != v39 && v37 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v31;
}

void sub_262805BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (LOBYTE(STACK[0x470]) == 1 && a20 != v20 && a20 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void *TGrammarManager::search(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[8] = a5;
  v8 = *(a1[5] + 56);
  v90[0] = &unk_287527308;
  v90[1] = a2;
  v90[2] = a3;
  v90[3] = a4;
  v90[4] = v8;
  v9 = a1[7];
  ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 18256));
  v11 = *(v9 + TParam::getValidConfig((v9 + 18256), ActiveConfigHandle) + 18408);
  v12 = a1[6];
  v12[8] = v11;
  (*(*v12 + 16))(v12);
  v13 = a1[7];
  v14 = TParam::getActiveConfigHandle((v13 + 4040));
  v15 = *(v13 + 4 * TParam::getValidConfig((v13 + 4040), v14) + 4200);
  v16 = a1[6];
  v17 = *(v16 + 16);
  *(v16 + 24) = v15;
  (*(v17 + 16))();
  AllProductions = TParser::getAllProductions(a1[6], v90);
  TAllocator::TAllocator(v89, 2048);
  if (AllProductions)
  {
    v78 = 0;
    v20 = a2;
    while (1)
    {
      if (TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FDB0, v89, 0) > 1)
      {
        goto LABEL_57;
      }

      v21 = v19;
      if (*v19)
      {
        LOBYTE(v80[0]) = 0;
        {
          operator new();
        }

        v22 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v21, v80);
        if (LOBYTE(v80[0]) == 1)
        {
          loggableUnicode(v21, &__p);
          p_p = &__p;
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            p_p = __p;
          }

          tknPrintf("Error: 'priority' was '%s'. Expected a double-precision value.\n", v23, p_p);
          goto LABEL_10;
        }

        v25 = v22;
      }

      else
      {
        v25 = 0.0;
      }

      if (TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FDD4, v89, 0) > 1)
      {
        goto LABEL_57;
      }

      v26 = v19;
      if (!*v19)
      {
        tknPrintString("Error: 'result' was ''. Ignored production.\n");
        goto LABEL_57;
      }

      v27 = AllProductions[2];
      LOBYTE(v80[0]) = 0;
      AttributeValue = TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FDF0, v89, v80);
      v30 = 0;
      if (LOBYTE(v80[0]) != 1 || AttributeValue > 1)
      {
        goto LABEL_25;
      }

      v31 = v29;
      v88 = 0;
      {
        operator new();
      }

      v32 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v31, &v88);
      if (!v88)
      {
        v30 = v32;
        if (v27 <= v32)
        {
          loggableUnicode(v31, &__p);
          v52 = &__p;
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            v52 = __p;
          }

          tknPrintf("Error: 'resultStart' was '%s'. Expected an integer value in the range [0,%lld).\n", v51, v52, v27);
          goto LABEL_52;
        }

LABEL_25:
        LOBYTE(v80[0]) = 0;
        v35 = TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FE20, v89, v80);
        v37 = 0;
        if (LOBYTE(v80[0]) != 1 || v35 > 1)
        {
LABEL_34:
          LMScore = TGrammarManager::getLMScore(a1, v26, v20, v30 + a3, v27 - (v30 + v37));
          v43 = v78;
          if (v78 <= LMScore)
          {
            v43 = LMScore;
          }

          v78 = v43;
          v44 = *(a6 + 8);
          v45 = *(a6 + 16);
          if (v44 >= v45)
          {
            v47 = 0x6DB6DB6DB6DB6DB7 * ((v44 - *a6) >> 3);
            v48 = v47 + 1;
            if ((v47 + 1) > 0x492492492492492)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v49 = 0x6DB6DB6DB6DB6DB7 * ((v45 - *a6) >> 3);
            if (2 * v49 > v48)
            {
              v48 = 2 * v49;
            }

            if (v49 >= 0x249249249249249)
            {
              v50 = 0x492492492492492;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarManager2Result>>(a6, v50);
            }

            v55 = 56 * v47;
            *v55 = AllProductions;
            *(v55 + 8) = v26;
            *(v55 + 16) = v27;
            *(v55 + 24) = v30;
            *(v55 + 32) = v37;
            *(v55 + 40) = v25;
            *(v55 + 48) = LMScore;
            v46 = 56 * v47 + 56;
            v56 = *(a6 + 8) - *a6;
            v57 = v55 - v56;
            memcpy((v55 - v56), *a6, v56);
            v58 = *a6;
            *a6 = v57;
            *(a6 + 8) = v46;
            *(a6 + 16) = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            *v44 = AllProductions;
            *(v44 + 8) = v26;
            *(v44 + 16) = v27;
            *(v44 + 24) = v30;
            *(v44 + 32) = v37;
            *(v44 + 40) = v25;
            v46 = v44 + 56;
            *(v44 + 48) = LMScore;
          }

          *(a6 + 8) = v46;
          v20 = a2;
          goto LABEL_57;
        }

        v38 = v36;
        v88 = 0;
        {
          operator new();
        }

        v39 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v38, &v88);
        if (!v88)
        {
          if (v30 < v39)
          {
            v37 = v27 - v39;
            if (v27 >= v39)
            {
              goto LABEL_34;
            }
          }

          loggableUnicode(v38, &__p);
          v54 = &__p;
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            v54 = __p;
          }

          tknPrintf("Error: 'resultEnd' was '%s'. Expected an integer value in the range (%lld,%lld).\n", v53, v54, v30, v27);
LABEL_52:
          if ((SHIBYTE(v84[0].__locale_) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

LABEL_11:
          operator delete(__p);
          goto LABEL_57;
        }

        loggableUnicode(v38, &__p);
        v41 = &__p;
        if (SHIBYTE(v84[0].__locale_) < 0)
        {
          v41 = __p;
        }

        tknPrintf("Error: 'resultEnd' was '%s'. Expected an integer value.\n", v40, v41);
        goto LABEL_10;
      }

      loggableUnicode(v31, &__p);
      v34 = &__p;
      if (SHIBYTE(v84[0].__locale_) < 0)
      {
        v34 = __p;
      }

      tknPrintf("Error: 'resultStart' was '%s'. Expected an integer value.\n", v33, v34);
LABEL_10:
      if (SHIBYTE(v84[0].__locale_) < 0)
      {
        goto LABEL_11;
      }

LABEL_57:
      AllProductions = *AllProductions;
      if (!AllProductions)
      {
        v59 = (v78 + 1);
        goto LABEL_66;
      }
    }
  }

  v59 = 1.0;
  v20 = a2;
LABEL_66:
  if (*(a1 + 24) == 1)
  {
    tknPrintf("Parse chart at index %llu:\n", v19, a3);
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    TParser::logChart(a1[6], &__p);
    std::stringbuf::str();
    if (v81 >= 0)
    {
      v60 = v80;
    }

    else
    {
      v60 = v80[0];
    }

    tknPrintString(v60);
    v20 = a2;
    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    __p = *MEMORY[0x277D82828];
    *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
    v83 = MEMORY[0x277D82878] + 16;
    if (v86 < 0)
    {
      operator delete(v85);
    }

    v83 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v84);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v87);
  }

  v61 = *a6;
  v62 = *(a6 + 8);
  v63 = *a6;
  if (*a6 != v62)
  {
    v64 = 0x6DB6DB6DB6DB6DB7 * ((v62 - v63) >> 3);
    v65 = v64 <= 1 ? 1 : 0x6DB6DB6DB6DB6DB7 * ((v62 - v63) >> 3);
    v66 = v63 + 40;
    do
    {
      v61.n128_u32[0] = *(v66 + 2);
      v61.n128_f64[0] = *v66 + v61.n128_u64[0] / v59;
      *v66 = v61.n128_u64[0];
      v66 += 56;
      --v65;
    }

    while (v65);
    __p = sortResult;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,false>(v63, v62, &__p, 126 - 2 * __clz(v64), 1, v61);
    if (*(a1 + 8) == 1)
    {
      tknPrintString("Parse tree for word sequence:");
      if (*(*a6 + 16))
      {
        v67 = 0;
        v68 = 112 * a3 + 16;
        do
        {
          tknPrintString(" ");
          loggableUnicode(**(*v20 + v68), &__p);
          if (SHIBYTE(v84[0].__locale_) >= 0)
          {
            v69 = &__p;
          }

          else
          {
            v69 = __p;
          }

          tknPrintString(v69);
          if (SHIBYTE(v84[0].__locale_) < 0)
          {
            operator delete(__p);
          }

          ++v67;
          v68 += 112;
        }

        while (v67 < *(*a6 + 16));
      }

      tknPrintString("\n");
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v71 = *a6;
      v70 = *(a6 + 8);
      if (v70 != *a6)
      {
        v72 = 0;
        v73 = 0;
        do
        {
          v74 = &v71[v72];
          if (*(v71 + 2) != *&v71[v72 + 2] || v71[5] != v74[5])
          {
            break;
          }

          if (*(v71 + 3) == *&v71[v72 + 3] && *(v71 + 4) == *&v71[v72 + 4])
          {
            TParser::logTree(a1[6], *v74, &__p);
            std::stringbuf::str();
            if (v81 >= 0)
            {
              v75 = v80;
            }

            else
            {
              v75 = v80[0];
            }

            tknPrintString(v75);
            if (v81 < 0)
            {
              operator delete(v80[0]);
            }

            v71 = *a6;
            v70 = *(a6 + 8);
          }

          ++v73;
          v72 += 7;
        }

        while (v73 < 0x6DB6DB6DB6DB6DB7 * ((v70 - v71) >> 3));
      }

      __p = *MEMORY[0x277D82828];
      *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
      v83 = MEMORY[0x277D82878] + 16;
      if (v86 < 0)
      {
        operator delete(v85);
      }

      v83 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v84);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v87);
    }
  }

  return TAllocator::clear(v89);
}

void sub_262806764(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x26672B1B0](v28, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  TAllocator::clear((v29 - 184));
  _Unwind_Resume(a1);
}

void TLmScore::TLmScore(unint64_t *a1, unint64_t a2)
{
  a1[4] = 0;
  *a1 = a2;
  SDVoc_GetInfo(a2, v3);
  a1[2] = v4;
  operator new[]();
}

uint64_t TLmScore::getClass(TLmScore *this, const char *a2)
{
  Handle = SDWord_GetHandle(*this, a2);
  if (Handle == -1)
  {
    return *(this + 4);
  }

  SDWord_GetTagBits(*this, Handle, 1, *(this + 3), (*(this + 2) + 7) >> 3);
  v4 = *(this + 2);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  do
  {
    result |= ((*(*(this + 3) + (v5 >> 3)) >> (v5 & 7) << 63) >> 63) & (1 << v5);
    ++v5;
  }

  while (v4 != v5);
  return result;
}

void TLmScore::~TLmScore(TLmScore *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x26672B1B0](v2, 0x1000C4077774924);
  }

  if (*this != -1)
  {
    SDWord_DeleteList(*this, this + 8, 1u);
    SDVoc_Delete(*this);
  }
}

double TLmScore::getLmScore(unint64_t *a1, uint64_t *a2, const char *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a1;
  if (a2[1] == *a2)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v5 + v8);
      if (*(v5 + v8 + 23) < 0)
      {
        v10 = *v10;
      }

      Handle = SDWord_GetHandle(v6, v10);
      if (Handle == -1)
      {
        Handle = a1[1];
      }

      v6 = *a1;
      v12 = &v17[2 * v9++];
      *v12 = *a1;
      v12[1] = Handle;
      v5 = *a2;
      v8 += 24;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v13 = SDWord_GetHandle(v6, a3);
  if (v13 == -1)
  {
    v13 = a1[1];
  }

  v16[0] = *a1;
  v16[1] = v13;
  v15 = 0;
  SDLm_LmScore(0, 0, 0, v17, v9, v16, 1u, &v15, 1u, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  return v15;
}

double TLmScore::getLmScore(TLmScore *this, const char *a2)
{
  Handle = SDWord_GetHandle(*this, a2);
  if (Handle == -1)
  {
    Handle = *(this + 1);
  }

  v6[0] = *this;
  v6[1] = Handle;
  v5 = 0;
  SDLm_LmScore(0, 0, 0, 0, 0, v6, 1u, &v5, 1u, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  return v5;
}

void TCompounderParamManager::TCompounderParamManager(TCompounderParamManager *this, TLocaleInfo *a2)
{
  TLattProcParamManager::TLattProcParamManager(this, a2);
  *v3 = &unk_2875251D0;
  TBoolParam::TBoolParam((v3 + 62), &unk_26288FE90, &unk_26288FED0, 0, 0, &unk_26288FF70, &unk_26288FFA8);
  TBoolParam::TBoolParam(this + 744, &unk_26288FFAC, &unk_26288FFF4, 0, 0, &unk_26288FF70, &unk_26288FFA8);
  TBoolParam::TBoolParam(this + 992, &unk_262890108, &unk_262890154, 0, 0, &unk_2628902D4, &unk_26288FFA8);
  TBoolParam::TBoolParam(this + 1240, &unk_262890314, &unk_262890370, 0, 0, &unk_2628904C8, &unk_26288FFA8);
  TIntParam::TIntParam((this + 1488), &unk_262890508, &unk_262890574, 0, -1, 10000, -1, &unk_262890BD0, &unk_26288FFA8);
  TParamManager::add(this, (this + 496));
  TParamManager::add(this, (this + 744));
  TParamManager::add(this, (this + 992));
  TParamManager::add(this, (this + 1240));
  TParamManager::add(this, (this + 1488));
}

void sub_262806DE8(_Unwind_Exception *a1)
{
  TBoolParam::~TBoolParam(v1 + 155);
  TBoolParam::~TBoolParam(v1 + 124);
  TBoolParam::~TBoolParam(v1 + 93);
  TBoolParam::~TBoolParam(v1 + 62);
  TLattProcParamManager::~TLattProcParamManager(v1);
  _Unwind_Resume(a1);
}

void TCompounder::TCompounder(TCompounder *this, TInputStream *a2, const char *a3, TLexicon *a4)
{
  v4 = TLatticeProcessor::TLatticeProcessor(this, a4, 0);
  *v4 = &unk_287528F98;
  *(v4 + 64) = 0u;
  *(v4 + 248) = v4 + 256;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0;
  *(v4 + 272) = v4 + 280;
  *(v4 + 280) = 0;
  *(v4 + 392) = 0;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 304) = 3;
  *(v4 + 312) = 0x3FE0000000000000;
  *(v4 + 368) = 0;
  *(v4 + 376) = 0;
  operator new();
}

void sub_262806F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x26672B1B0](v5, 0x10F3C407200CA0FLL);
  v10 = *(v3 + 49);
  if (v10)
  {
    *(v3 + 50) = v10;
    operator delete(v10);
  }

  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(v3 + 272, *v8);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(v4, *v7);
  v11 = *v6;
  if (*v6)
  {
    *(v3 + 9) = v11;
    operator delete(v11);
  }

  TLatticeProcessor::~TLatticeProcessor(v3);
  _Unwind_Resume(a1);
}

void TCompounder::initFugenSEndings(TCompounder *this)
{
  v25[3] = *MEMORY[0x277D85DE8];
  *(this + 40) = 14;
  std::vector<std::string>::resize((this + 328), 0xEuLL);
  std::wstring::basic_string[abi:ne200100]<0>(&v12, dword_2628911E4);
  std::wstring::basic_string[abi:ne200100]<0>(v13, dword_2628911F0);
  std::wstring::basic_string[abi:ne200100]<0>(v14, dword_262891200);
  std::wstring::basic_string[abi:ne200100]<0>(v15, dword_262891214);
  std::wstring::basic_string[abi:ne200100]<0>(v16, dword_262891224);
  std::wstring::basic_string[abi:ne200100]<0>(v17, dword_262891234);
  std::wstring::basic_string[abi:ne200100]<0>(v18, dword_262891248);
  std::wstring::basic_string[abi:ne200100]<0>(v19, dword_26289125C);
  std::wstring::basic_string[abi:ne200100]<0>(v20, dword_262891274);
  std::wstring::basic_string[abi:ne200100]<0>(v21, dword_262891290);
  std::wstring::basic_string[abi:ne200100]<0>(v22, dword_2628912A8);
  std::wstring::basic_string[abi:ne200100]<0>(v23, dword_2628912B8);
  std::wstring::basic_string[abi:ne200100]<0>(v24, dword_2628912C4);
  std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2628912D4);
  if (*(this + 40))
  {
    v2 = 0;
    v3 = *(this + 41);
    do
    {
      std::wstring::operator=((v3 + 24 * v2), &v12 + v2);
      v3 = *(this + 41);
      v4 = v3 + 24 * v2;
      v5 = *(v4 + 23);
      if (v5 < 0)
      {
        v4 = *v4;
        v5 = *(v3 + 24 * v2 + 8);
      }

      v6 = (v4 + 4 * v5 - 4);
      if (v5)
      {
        v7 = v6 > v4;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = v4 + 4;
        do
        {
          v9 = *(v8 - 4);
          *(v8 - 4) = *v6;
          *v6-- = v9;
          v10 = v8 >= v6;
          v8 += 4;
        }

        while (!v10);
      }

      ++v2;
    }

    while (v2 < *(this + 40));
  }

  v11 = 336;
  do
  {
    if (*(&v12.__r_.__value_.__l + v11 - 1) < 0)
    {
      operator delete(*(&v12.__r_.__value_.__l + v11 - 24));
    }

    v11 -= 24;
  }

  while (v11);
}

uint64_t TCompounder::loadModel(uint64_t this, TInputStream *a2, char *a3)
{
  v197 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1)
  {
    return this;
  }

  v4 = this;
  if (TInputStream::verifyHeader(a2, "FeatureConfig", &pFeatureConfigVersion, 3))
  {
    std::string::basic_string[abi:ne200100]<0>(v181, &byte_262899963);
    *__s = byte_287529580;
    if ((v181[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__s[8], *v181, *&v181[8]);
    }

    else
    {
      *&__s[8] = *v181;
      v185[0] = *&v181[16];
    }

    *__s = &unk_287528000;
    if (v185[0] >= 0)
    {
      v150 = &__s[8];
    }

    else
    {
      v150 = *&__s[8];
    }

    conditionalAssert(v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2477);
    *__s = byte_287529580;
    if (SHIBYTE(v185[0]) < 0)
    {
      operator delete(*&__s[8]);
    }

    if ((v181[23] & 0x80000000) != 0)
    {
      operator delete(*v181);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
    *exception = byte_287529580;
    v152 = (exception + 1);
    if ((__s[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v152, *__s, *&__s[8]);
    }

    else
    {
      v172 = *__s;
      exception[3] = *&__s[16];
      *&v152->__r_.__value_.__l.__data_ = v172;
    }

    *exception = &unk_287528000;
  }

  *__s = v185;
  *&__s[8] = xmmword_26286B6F0;
  v186 = 1;
  *v181 = v182;
  *&v181[8] = xmmword_26286B6F0;
  v183 = 1;
  v193 = v195;
  v194 = xmmword_26286B6F0;
  v196 = 1;
  v189 = v191;
  v190 = xmmword_26286B6F0;
  v192 = 1;
  v180 = 0;
  MEMORY[0x26672AF30](a2 + 128, &unk_262890C98);
  while (1)
  {
    this = TInputStream::getNextLine(a2, v181);
    if ((this & 1) == 0)
    {
      break;
    }

    if (*&v181[16] >= *&v181[8])
    {
      if (v183)
      {
        *__p = 0;
        TBuffer<wchar_t>::insert(v181, *&v181[16], __p, 1uLL);
        v5 = *v181;
        --*&v181[16];
      }

      else
      {
        v5 = *v181;
        if (*&v181[8])
        {
          *(*v181 + 4 * *&v181[8] - 4) = 0;
        }
      }
    }

    else
    {
      v5 = *v181;
      *(*v181 + 4 * *&v181[16]) = 0;
    }

    NextToken = getNextToken(v5, __s, dword_262890CA4);
    if (NextToken)
    {
      v7 = *&__s[16];
      if (*&__s[16] >= *&__s[8])
      {
        if (v186)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
          v8 = *__s;
          v7 = --*&__s[16];
        }

        else
        {
          v8 = *__s;
          if (*&__s[8])
          {
            *(*__s + 4 * *&__s[8] - 4) = 0;
          }
        }
      }

      else
      {
        v8 = *__s;
        *(*__s + 4 * *&__s[16]) = 0;
      }

      if (!wcscmp(v8, dword_262890CB0))
      {
        if (*(a2 + 12) >= 3uLL)
        {
          if (*(a2 + 39) >= 0)
          {
            v87 = a2 + 16;
          }

          else
          {
            v87 = *(a2 + 2);
          }

          v88 = *(a2 + 8);
          v89 = TBuffer<wchar_t>::c_str(__s);
          loggableUnicode(v89, __p);
          if (__p[23] >= 0)
          {
            v91 = __p;
          }

          else
          {
            v91 = *__p;
          }

          tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  This was renamed to 'wordsucc' in version 3.\n", v90, v87, v88, v91, *(a2 + 12));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v179) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
          }

          else
          {
            *&__p[8] = *v178;
            v188 = v179;
          }

          *__p = &unk_287528000;
          if (v188 >= 0)
          {
            v153 = &__p[8];
          }

          else
          {
            v153 = *&__p[8];
          }

          conditionalAssert(v153, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2501);
          *__p = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v179) < 0)
          {
            operator delete(v178[0]);
          }

          v154 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v154 = byte_287529580;
          v155 = (v154 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v155, *__p, *&__p[8]);
          }

          else
          {
            v173 = *__p;
            v154[3] = *&__p[16];
            *&v155->__r_.__value_.__l.__data_ = v173;
          }

          *v154 = &unk_287528000;
        }

LABEL_55:
        v9 = 1;
        goto LABEL_56;
      }

      if (v7 >= *&__s[8])
      {
        if (v186)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
          v8 = *__s;
          v7 = --*&__s[16];
        }

        else if (*&__s[8])
        {
          v8[*&__s[8] - 1] = 0;
        }
      }

      else
      {
        v8[v7] = 0;
      }

      if (wcscmp(v8, dword_262890CC4))
      {
        if (v7 >= *&__s[8])
        {
          if (v186)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
            v8 = *__s;
            v7 = --*&__s[16];
          }

          else if (*&__s[8])
          {
            v8[*&__s[8] - 1] = 0;
          }
        }

        else
        {
          v8[v7] = 0;
        }

        if (!wcscmp(v8, dword_262890CDC))
        {
          if (*(a2 + 12) <= 1uLL)
          {
            if (*(a2 + 39) >= 0)
            {
              v111 = a2 + 16;
            }

            else
            {
              v111 = *(a2 + 2);
            }

            v112 = *(a2 + 8);
            v113 = TBuffer<wchar_t>::c_str(__s);
            loggableUnicode(v113, __p);
            if (__p[23] >= 0)
            {
              v115 = __p;
            }

            else
            {
              v115 = *__p;
            }

            tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  Must be version 2 or higher.\n", v114, v111, v112, v115, *(a2 + 12));
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v179) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
            }

            else
            {
              *&__p[8] = *v178;
              v188 = v179;
            }

            *__p = &unk_287528000;
            if (v188 >= 0)
            {
              v166 = &__p[8];
            }

            else
            {
              v166 = *&__p[8];
            }

            conditionalAssert(v166, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2519);
            *__p = byte_287529580;
            if (SHIBYTE(v188) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v179) < 0)
            {
              operator delete(v178[0]);
            }

            v167 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v167 = byte_287529580;
            v168 = (v167 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v168, *__p, *&__p[8]);
            }

            else
            {
              v176 = *__p;
              v167[3] = *&__p[16];
              *&v168->__r_.__value_.__l.__data_ = v176;
            }

            *v167 = &unk_287528000;
          }

          v9 = 3;
          v10 = 1;
          goto LABEL_57;
        }

        if (v7 >= *&__s[8])
        {
          if (v186)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
            v8 = *__s;
            v7 = --*&__s[16];
          }

          else if (*&__s[8])
          {
            v8[*&__s[8] - 1] = 0;
          }
        }

        else
        {
          v8[v7] = 0;
        }

        if (wcscmp(v8, dword_262890CFC))
        {
          if (v7 >= *&__s[8])
          {
            if (v186)
            {
              *__p = 0;
              TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
              v8 = *__s;
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              v8[*&__s[8] - 1] = 0;
            }
          }

          else
          {
            v8[v7] = 0;
          }

          if (wcscmp(v8, dword_262890D20))
          {
            v100 = *(a2 + 2);
            v99 = a2 + 16;
            v98 = v100;
            if (v99[23] >= 0)
            {
              v101 = v99;
            }

            else
            {
              v101 = v98;
            }

            v102 = *(v99 + 6);
            v103 = TBuffer<wchar_t>::c_str(__s);
            loggableUnicode(v103, __p);
            if (__p[23] >= 0)
            {
              v105 = __p;
            }

            else
            {
              v105 = *__p;
            }

            tknPrintf("Error: %s (%llu) : Unsupported feature name '%s'\n", v104, v101, v102, v105);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v179) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
            }

            else
            {
              *&__p[8] = *v178;
              v188 = v179;
            }

            *__p = &unk_287528000;
            if (v188 >= 0)
            {
              v160 = &__p[8];
            }

            else
            {
              v160 = *&__p[8];
            }

            conditionalAssert(v160, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2555);
            *__p = byte_287529580;
            if (SHIBYTE(v188) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v179) < 0)
            {
              operator delete(v178[0]);
            }

            v161 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v161 = byte_287529580;
            v162 = (v161 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v162, *__p, *&__p[8]);
            }

            else
            {
              v174 = *__p;
              v161[3] = *&__p[16];
              *&v162->__r_.__value_.__l.__data_ = v174;
            }

            *v161 = &unk_287528000;
          }

          if (*(a2 + 12) <= 2uLL)
          {
            if (*(a2 + 39) >= 0)
            {
              v106 = a2 + 16;
            }

            else
            {
              v106 = *(a2 + 2);
            }

            v107 = *(a2 + 8);
            v108 = TBuffer<wchar_t>::c_str(__s);
            loggableUnicode(v108, __p);
            if (__p[23] >= 0)
            {
              v110 = __p;
            }

            else
            {
              v110 = *__p;
            }

            tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  Must be version 3 or higher.\n", v109, v106, v107, v110, *(a2 + 12));
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v179) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
            }

            else
            {
              *&__p[8] = *v178;
              v188 = v179;
            }

            *__p = &unk_287528000;
            if (v188 >= 0)
            {
              v163 = &__p[8];
            }

            else
            {
              v163 = *&__p[8];
            }

            conditionalAssert(v163, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2545);
            *__p = byte_287529580;
            if (SHIBYTE(v188) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v179) < 0)
            {
              operator delete(v178[0]);
            }

            v164 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v164 = byte_287529580;
            v165 = (v164 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v165, *__p, *&__p[8]);
            }

            else
            {
              v175 = *__p;
              v164[3] = *&__p[16];
              *&v165->__r_.__value_.__l.__data_ = v175;
            }

            *v164 = &unk_287528000;
          }

          goto LABEL_55;
        }

        if (*(a2 + 12) <= 2uLL)
        {
          if (*(a2 + 39) >= 0)
          {
            v128 = a2 + 16;
          }

          else
          {
            v128 = *(a2 + 2);
          }

          v129 = *(a2 + 8);
          v130 = TBuffer<wchar_t>::c_str(__s);
          loggableUnicode(v130, __p);
          if (__p[23] >= 0)
          {
            v132 = __p;
          }

          else
          {
            v132 = *__p;
          }

          tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  Must be version 3 or higher.\n", v131, v128, v129, v132, *(a2 + 12));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v179) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
          }

          else
          {
            *&__p[8] = *v178;
            v188 = v179;
          }

          *__p = &unk_287528000;
          if (v188 >= 0)
          {
            v169 = &__p[8];
          }

          else
          {
            v169 = *&__p[8];
          }

          conditionalAssert(v169, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2532);
          *__p = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v179) < 0)
          {
            operator delete(v178[0]);
          }

          v170 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v170 = byte_287529580;
          v171 = (v170 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v171, *__p, *&__p[8]);
          }

          else
          {
            v177 = *__p;
            v170[3] = *&__p[16];
            *&v171->__r_.__value_.__l.__data_ = v177;
          }

          *v170 = &unk_287528000;
        }

        v9 = 0;
LABEL_56:
        v10 = 2;
        goto LABEL_57;
      }

      v9 = 2;
      v10 = 4;
LABEL_57:
      v12 = getNextToken(NextToken, __s, dword_262890CA4);
      if (!v12)
      {
        v67 = *(a2 + 2);
        v66 = a2 + 16;
        v65 = v67;
        if (v66[23] >= 0)
        {
          v65 = v66;
        }

        tknPrintf("Error: %s (%llu) : Syntax error. Expected 4 columns.\n", v11, v65, *(v66 + 6));
        std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v179) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
        }

        else
        {
          *&__p[8] = *v178;
          v188 = v179;
        }

        *__p = &unk_287528000;
        if (v188 >= 0)
        {
          v119 = &__p[8];
        }

        else
        {
          v119 = *&__p[8];
        }

        conditionalAssert(v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2563);
        *__p = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[0]);
        }

        v120 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v120 = byte_287529580;
        v121 = (v120 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v121, *__p, *&__p[8]);
        }

        else
        {
          v147 = *__p;
          v120[3] = *&__p[16];
          *&v121->__r_.__value_.__l.__data_ = v147;
        }

        *v120 = &unk_287528000;
      }

      if (*&__s[16] >= *&__s[8])
      {
        if (v186)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
          v13 = *__s;
          --*&__s[16];
        }

        else
        {
          v13 = *__s;
          if (*&__s[8])
          {
            *(*__s + 4 * *&__s[8] - 4) = 0;
          }
        }
      }

      else
      {
        v13 = *__s;
        *(*__s + 4 * *&__s[16]) = 0;
      }

      {
        operator new();
      }

      v14 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v13, &v180);
      if (v180)
      {
        v70 = *(a2 + 2);
        v69 = a2 + 16;
        v68 = v70;
        if (v69[23] >= 0)
        {
          v71 = v69;
        }

        else
        {
          v71 = v68;
        }

        v72 = *(v69 + 6);
        v73 = TBuffer<wchar_t>::c_str(__s);
        loggableUnicode(v73, __p);
        if (__p[23] >= 0)
        {
          v75 = __p;
        }

        else
        {
          v75 = *__p;
        }

        tknPrintf("Error: %s (%llu) : Invalid Ngram order. Was '%s'. Expected an integer value in range [1,%llu].\n", v74, v71, v72, v75, v10);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v179) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
        }

        else
        {
          *&__p[8] = *v178;
          v188 = v179;
        }

        *__p = &unk_287528000;
        if (v188 >= 0)
        {
          v140 = &__p[8];
        }

        else
        {
          v140 = *&__p[8];
        }

        conditionalAssert(v140, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2572);
        *__p = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[0]);
        }

        v141 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v141 = byte_287529580;
        v142 = (v141 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v142, *__p, *&__p[8]);
        }

        else
        {
          v158 = *__p;
          v141[3] = *&__p[16];
          *&v142->__r_.__value_.__l.__data_ = v158;
        }

        *v141 = &unk_287528000;
      }

      v16 = v14;
      if (v14 - 1 >= v10)
      {
        v64 = *(a2 + 2);
        v63 = a2 + 16;
        v62 = v64;
        if (v63[23] >= 0)
        {
          v62 = v63;
        }

        tknPrintf("Error: %s (%llu) : Bad Ngram order. Was %llu. Expected an integer value in the range [1,%llu].\n", v15, v62, *(v63 + 6), v14, v10);
        std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v179) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
        }

        else
        {
          *&__p[8] = *v178;
          v188 = v179;
        }

        *__p = &unk_287528000;
        if (v188 >= 0)
        {
          v116 = &__p[8];
        }

        else
        {
          v116 = *&__p[8];
        }

        conditionalAssert(v116, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2580);
        *__p = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[0]);
        }

        v117 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v117 = byte_287529580;
        v118 = (v117 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v118, *__p, *&__p[8]);
        }

        else
        {
          v146 = *__p;
          v117[3] = *&__p[16];
          *&v118->__r_.__value_.__l.__data_ = v146;
        }

        *v117 = &unk_287528000;
      }

      v18 = getNextToken(v12, __s, dword_262890CA4);
      if (!v18)
      {
        v78 = *(a2 + 2);
        v77 = a2 + 16;
        v76 = v78;
        if (v77[23] >= 0)
        {
          v76 = v77;
        }

        tknPrintf("Error: %s (%llu) : Syntax error. Expected 4 columns.\n", v17, v76, *(v77 + 6));
        std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v179) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
        }

        else
        {
          *&__p[8] = *v178;
          v188 = v179;
        }

        *__p = &unk_287528000;
        if (v188 >= 0)
        {
          v122 = &__p[8];
        }

        else
        {
          v122 = *&__p[8];
        }

        conditionalAssert(v122, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2588);
        *__p = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[0]);
        }

        v123 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v123 = byte_287529580;
        v124 = (v123 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v124, *__p, *&__p[8]);
        }

        else
        {
          v148 = *__p;
          v123[3] = *&__p[16];
          *&v124->__r_.__value_.__l.__data_ = v148;
        }

        *v123 = &unk_287528000;
      }

      if (*&__s[16] >= *&__s[8])
      {
        if (v186)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
          v19 = *__s;
          --*&__s[16];
        }

        else
        {
          v19 = *__s;
          if (*&__s[8])
          {
            *(*__s + 4 * *&__s[8] - 4) = 0;
          }
        }
      }

      else
      {
        v19 = *__s;
        *(*__s + 4 * *&__s[16]) = 0;
      }

      {
        operator new();
      }

      v20 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v19, &v180);
      if (v180)
      {
        v81 = *(a2 + 2);
        v80 = a2 + 16;
        v79 = v81;
        if (v80[23] >= 0)
        {
          v82 = v80;
        }

        else
        {
          v82 = v79;
        }

        v83 = *(v80 + 6);
        v84 = TBuffer<wchar_t>::c_str(__s);
        loggableUnicode(v84, __p);
        if (__p[23] >= 0)
        {
          v86 = __p;
        }

        else
        {
          v86 = *__p;
        }

        tknPrintf("Error: %s (%llu) : Invalid weight. Was '%s'. Expected a numerical decimal value.\n", v85, v82, v83, v86);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v179) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
        }

        else
        {
          *&__p[8] = *v178;
          v188 = v179;
        }

        *__p = &unk_287528000;
        if (v188 >= 0)
        {
          v143 = &__p[8];
        }

        else
        {
          v143 = *&__p[8];
        }

        conditionalAssert(v143, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2597);
        *__p = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[0]);
        }

        v144 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v144 = byte_287529580;
        v145 = (v144 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v145, *__p, *&__p[8]);
        }

        else
        {
          v159 = *__p;
          v144[3] = *&__p[16];
          *&v145->__r_.__value_.__l.__data_ = v159;
        }

        *v144 = &unk_287528000;
      }

      if (v20 != 0.0)
      {
        if (!getNextToken(v18, __s, dword_262890CA4))
        {
          v94 = *(a2 + 2);
          v93 = a2 + 16;
          v92 = v94;
          if (v93[23] >= 0)
          {
            v92 = v93;
          }

          tknPrintf("Error: %s (%llu) : Syntax error. Expected 4 columns.\n", v21, v92, *(v93 + 6));
          std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v179) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
          }

          else
          {
            *&__p[8] = *v178;
            v188 = v179;
          }

          *__p = &unk_287528000;
          if (v188 >= 0)
          {
            v136 = &__p[8];
          }

          else
          {
            v136 = *&__p[8];
          }

          conditionalAssert(v136, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2609);
          *__p = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v179) < 0)
          {
            operator delete(v178[0]);
          }

          v137 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v137 = byte_287529580;
          v138 = (v137 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v138, *__p, *&__p[8]);
          }

          else
          {
            v157 = *__p;
            v137[3] = *&__p[16];
            *&v138->__r_.__value_.__l.__data_ = v157;
          }

          *v137 = &unk_287528000;
        }

        v22 = v4[8];
        if (v4[9] == v22)
        {
LABEL_113:
          operator new();
        }

        v23 = 0;
        while (2)
        {
          v24 = *(v22 + 8 * v23);
          v25 = *(v24 + 11);
          if (v25 == 3)
          {
            if (*&__s[16] >= *&__s[8])
            {
              if (v186)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                v26 = *__s;
                --*&__s[16];
              }

              else
              {
                v26 = *__s;
                if (*&__s[8])
                {
                  *(*__s + 4 * *&__s[8] - 4) = 0;
                }
              }
            }

            else
            {
              v26 = *__s;
              *(*__s + 4 * *&__s[16]) = 0;
            }

            v28 = wcslen(v26);
            v29 = *(v24 + 23);
            if (v29 < 0)
            {
              if (v28 == v24[1])
              {
                if (v28 == -1)
                {
                  std::wstring::__throw_out_of_range[abi:ne200100]();
                }

                v24 = *v24;
                if (!v28)
                {
LABEL_143:
                  v44 = *(a2 + 2);
                  v43 = a2 + 16;
                  v42 = v44;
                  if (v43[23] >= 0)
                  {
                    v45 = v43;
                  }

                  else
                  {
                    v45 = v42;
                  }

                  v46 = *(v43 + 6);
                  v47 = TBuffer<wchar_t>::c_str(__s);
                  loggableUnicode(v47, __p);
                  if (__p[23] >= 0)
                  {
                    v49 = __p;
                  }

                  else
                  {
                    v49 = *__p;
                  }

                  tknPrintf("Error: %s (%llu) : Binding feature already defined for '%s'.\n", v48, v45, v46, v49);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }

                  std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
                  *__p = byte_287529580;
                  if (SHIBYTE(v179) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
                  }

                  else
                  {
                    *&__p[8] = *v178;
                    v188 = v179;
                  }

                  *__p = &unk_287528000;
                  if (v188 >= 0)
                  {
                    v125 = &__p[8];
                  }

                  else
                  {
                    v125 = *&__p[8];
                  }

                  conditionalAssert(v125, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2624);
                  *__p = byte_287529580;
                  if (SHIBYTE(v188) < 0)
                  {
                    operator delete(*&__p[8]);
                  }

                  if (SHIBYTE(v179) < 0)
                  {
                    operator delete(v178[0]);
                  }

                  v126 = __cxa_allocate_exception(0x20uLL);
                  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
                  *v126 = byte_287529580;
                  v127 = (v126 + 1);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(v127, *__p, *&__p[8]);
                  }

                  else
                  {
                    v149 = *__p;
                    v126[3] = *&__p[16];
                    *&v127->__r_.__value_.__l.__data_ = v149;
                  }

                  *v126 = &unk_287528000;
                }

LABEL_98:
                if (!wmemcmp(v24, v26, v28))
                {
                  goto LABEL_143;
                }
              }
            }

            else if (v28 == v29)
            {
              if (!v28)
              {
                goto LABEL_143;
              }

              goto LABEL_98;
            }

LABEL_112:
            ++v23;
            v22 = v4[8];
            if (v23 >= (v4[9] - v22) >> 3)
            {
              goto LABEL_113;
            }

            continue;
          }

          break;
        }

        if (v25 != v9)
        {
          goto LABEL_112;
        }

        if (*(v24 + 10) == v16)
        {
          v61 = *(a2 + 2);
          v60 = a2 + 16;
          v59 = v61;
          if (v60[23] >= 0)
          {
            v59 = v60;
          }

          tknPrintf("Error: %s (%llu) : Feature already defined for Ngram order %llu.\n", v21, v59, *(v60 + 6), v16);
          std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v179) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
          }

          else
          {
            *&__p[8] = *v178;
            v188 = v179;
          }

          *__p = &unk_287528000;
          if (v188 >= 0)
          {
            v95 = &__p[8];
          }

          else
          {
            v95 = *&__p[8];
          }

          conditionalAssert(v95, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2635);
          *__p = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v179) < 0)
          {
            operator delete(v178[0]);
          }

          v96 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v96 = byte_287529580;
          v97 = (v96 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v97, *__p, *&__p[8]);
          }

          else
          {
            v139 = *__p;
            v96[3] = *&__p[16];
            *&v97->__r_.__value_.__l.__data_ = v139;
          }

          *v96 = &unk_287528000;
        }

        if (*&__s[16] >= *&__s[8])
        {
          if (v186)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
            v27 = *__s;
            --*&__s[16];
          }

          else
          {
            v27 = *__s;
            if (*&__s[8])
            {
              *(*__s + 4 * *&__s[8] - 4) = 0;
            }
          }
        }

        else
        {
          v27 = *__s;
          *(*__s + 4 * *&__s[16]) = 0;
        }

        v30 = wcslen(v27);
        v31 = v30;
        v32 = *(v24 + 23);
        if (v32 < 0)
        {
          if (v30 != v24[1])
          {
            goto LABEL_153;
          }

          if (v30 == -1)
          {
            std::wstring::__throw_out_of_range[abi:ne200100]();
          }

          v33 = *v24;
          if (!v31)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v33 = v24;
          if (v31 != v32)
          {
            goto LABEL_153;
          }

          if (!v31)
          {
            goto LABEL_112;
          }
        }

        if (wmemcmp(v33, v27, v31))
        {
LABEL_153:
          v52 = *(a2 + 2);
          v51 = a2 + 16;
          v50 = v52;
          if (v51[23] >= 0)
          {
            v53 = v51;
          }

          else
          {
            v53 = v50;
          }

          v54 = *(v51 + 6);
          v55 = TBuffer<wchar_t>::c_str(__s);
          v56 = __p;
          loggableUnicode(v55, __p);
          if (__p[23] < 0)
          {
            v56 = *__p;
          }

          if (*(v24 + 23) < 0)
          {
            v24 = *v24;
          }

          loggableUnicode(v24, v178);
          if (v179 >= 0)
          {
            v58 = v178;
          }

          else
          {
            v58 = v178[0];
          }

          tknPrintf("Error: %s (%llu) : Model %s specified for feature that is already associated with model %s.\n", v57, v53, v54, v56, v58);
          if (SHIBYTE(v179) < 0)
          {
            operator delete(v178[0]);
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          std::string::basic_string[abi:ne200100]<0>(v178, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v179) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v178[0], v178[1]);
          }

          else
          {
            *&__p[8] = *v178;
            v188 = v179;
          }

          *__p = &unk_287528000;
          if (v188 >= 0)
          {
            v133 = &__p[8];
          }

          else
          {
            v133 = *&__p[8];
          }

          conditionalAssert(v133, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2643);
          *__p = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v179) < 0)
          {
            operator delete(v178[0]);
          }

          v134 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v134 = byte_287529580;
          v135 = (v134 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v135, *__p, *&__p[8]);
          }

          else
          {
            v156 = *__p;
            v134[3] = *&__p[16];
            *&v135->__r_.__value_.__l.__data_ = v156;
          }

          *v134 = &unk_287528000;
        }

        goto LABEL_112;
      }
    }
  }

  v34 = v4[8];
  v35 = v4[9];
  v36 = v35 - v34;
  if (v35 == v34)
  {
    v41 = 0xFFFFFFFFLL;
  }

  else
  {
    v37 = 0;
    v38 = v36 >> 3;
    if (v38 <= 1)
    {
      v38 = 1;
    }

    do
    {
      v39 = *v34;
      v34 += 8;
      v40 = *(v39 + 40);
      if (v40 > v37)
      {
        v37 = v40;
      }

      --v38;
    }

    while (v38);
    v41 = v37 - 1;
  }

  v4[38] = v41;
  if (v192 == 1)
  {
    this = v189;
    if (v189 != v191)
    {
      if (v189)
      {
        this = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v196 == 1)
  {
    this = v193;
    if (v193 != v195)
    {
      if (v193)
      {
        this = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v183 == 1)
  {
    this = *v181;
    if (*v181 != v182)
    {
      if (*v181)
      {
        this = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v186 == 1)
  {
    this = *__s;
    if (*__s != v185)
    {
      if (*__s)
      {
        return MEMORY[0x26672B1B0]();
      }
    }
  }

  return this;
}

void sub_262809C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  MEMORY[0x26672B1B0](v24, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0xA30]) == 1 && STACK[0x918] != a13 && STACK[0x918] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xB50]) == 1)
  {
    v27 = STACK[0xA38];
    if (STACK[0xA38] != a14)
    {
      if (v27)
      {
        MEMORY[0x26672B1B0](v27, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x490]) == 1 && a24 != a15 && a24)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8B0]) == 1)
  {
    v28 = STACK[0x498];
    if (STACK[0x498] != a16)
    {
      if (v28)
      {
        MEMORY[0x26672B1B0](v28, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TCompounder::loadOptionalLists(TCompounder *this, const TLocaleInfo **a2)
{
  v93 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 1)
  {
    if (TInputStream::verifyHeader(a2, "WordFlag", &pWordFlagVersion, 4))
    {
      std::string::basic_string[abi:ne200100]<0>(v60, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v61) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v60[0], v60[1]);
      }

      else
      {
        *&__p[8] = *v60;
        v65[0] = v61;
      }

      *__p = &unk_287528000;
      if (v65[0] >= 0)
      {
        v34 = &__p[8];
      }

      else
      {
        v34 = *&__p[8];
      }

      conditionalAssert(v34, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2834);
      *__p = byte_287529580;
      if (SHIBYTE(v65[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v36 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v36, *__p, *&__p[8]);
      }

      else
      {
        v43 = *__p;
        exception[3] = *&__p[16];
        *&v36->__r_.__value_.__l.__data_ = v43;
      }

      *exception = &unk_287528000;
    }

    TFileObjectParser::TFileObjectParser(v60, a2);
    v4 = a2[12];
    *(this + 48) = v4;
    v5 = v60[0];
    if (v4 > 2)
    {
      if (*(v60[0] + 10))
      {
        loggableFileObject(v60[0]);
        if (__p[23] >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = *__p;
        }

        tknPrintf("Error: %sBad attribute declaration, expected an object\n", v32, v33);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v58, &byte_262899963);
        *__p = byte_287529580;
        if ((v58[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], *v58, *&v58[8]);
        }

        else
        {
          *&__p[8] = *v58;
          v65[0] = *&v58[16];
        }

        *__p = &unk_287528000;
        if (v65[0] >= 0)
        {
          v44 = &__p[8];
        }

        else
        {
          v44 = *&__p[8];
        }

        conditionalAssert(v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2866);
        *__p = byte_287529580;
        if (SHIBYTE(v65[0]) < 0)
        {
          operator delete(*&__p[8]);
        }

        if ((v58[23] & 0x80000000) != 0)
        {
          operator delete(*v58);
        }

        v45 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v45 = byte_287529580;
        v46 = (v45 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v46, *__p, *&__p[8]);
        }

        else
        {
          v52 = *__p;
          v45[3] = *&__p[16];
          *&v46->__r_.__value_.__l.__data_ = v52;
        }

        *v45 = &unk_287528000;
      }
    }

    else
    {
      *&__p[8] = xmmword_26286B6A0;
      *__p = dword_262890D44;
      v65[0] = -1;
      v65[1] = dword_262890D58;
      v66 = xmmword_26286B6A0;
      v67 = -1;
      v68 = dword_262890D7C;
      v69 = xmmword_26286B6A0;
      v70 = -1;
      v71 = dword_262890D98;
      v72 = xmmword_26286B6A0;
      v73 = -1;
      v74 = dword_262890E08;
      v75 = xmmword_26286B6A0;
      v76 = -1;
      v77 = dword_262890E78;
      v78 = xmmword_26286B6A0;
      v79 = -1;
      v80 = dword_262890EF8;
      v81 = xmmword_26286B6A0;
      v82 = 1;
      v83 = dword_262890F10;
      v84 = vdupq_n_s64(2uLL);
      v85 = -1;
      v86 = dword_262890F38;
      v87 = 2;
      v88 = xmmword_26288FE80;
      v89 = dword_262890F74;
      v90 = 2;
      v91 = xmmword_26288FE80;
      if (TFileObject::verify(v60[0], __p, 10, 1))
      {
        std::string::basic_string[abi:ne200100]<0>(v62, &byte_262899963);
        *v58 = byte_287529580;
        if (SHIBYTE(v63) < 0)
        {
          std::string::__init_copy_ctor_external(&v58[8], v62[0], v62[1]);
        }

        else
        {
          *&v58[8] = *v62;
          v59 = v63;
        }

        *v58 = &unk_287528000;
        if (v59 >= 0)
        {
          v40 = &v58[8];
        }

        else
        {
          v40 = *&v58[8];
        }

        conditionalAssert(v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2861);
        *v58 = byte_287529580;
        if (SHIBYTE(v59) < 0)
        {
          operator delete(*&v58[8]);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        v41 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v58, &byte_262899963);
        *v41 = byte_287529580;
        v42 = (v41 + 1);
        if ((v58[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v42, *v58, *&v58[8]);
        }

        else
        {
          v48 = *v58;
          v41[3] = *&v58[16];
          *&v42->__r_.__value_.__l.__data_ = v48;
        }

        *v41 = &unk_287528000;
      }
    }

    v6 = *(v5 + 3);
    if (v6)
    {
      v56 = 0;
      v7 = this + 280;
      v54 = this;
      v55 = this + 280;
      while (1)
      {
        v8 = v6[1];
        if (!wcscmp(v8, dword_262890EF8))
        {
          v9 = dword_262890F10;
        }

        else
        {
          v9 = v8;
        }

        std::wstring::basic_string[abi:ne200100]<0>(__p, v9);
        v10 = std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::find<std::wstring>(this + 272, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v7 != v10)
        {
          loggableFileObject(v6);
          if (__p[23] >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = *__p;
          }

          tknPrintf("Error: %sRedefinition\n", v11, v12);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v56 = 1;
          goto LABEL_87;
        }

        v57 = *(this + 2);
        v13 = *(this + 48);
        *__p = v65;
        *&__p[8] = xmmword_26286B6F0;
        v92 = 1;
        v14 = v6[3];
        if (!v14)
        {
          v29 = 0;
          goto LABEL_58;
        }

        do
        {
          v15 = wcscmp(*(v14 + 8), "T");
          v16 = v15;
          if (v13 > 2 || v15)
          {
            if (TFileObject::verify(v14, 1, 0))
            {
              goto LABEL_31;
            }

            if (*(v14 + 40) == 2)
            {
              if (v16)
              {
                operator new();
              }

              operator new();
            }

            if (!TLexicon::checkName(v57, *(v14 + 24), 1, 0xFFFFFFFFFFFFFFFFLL))
            {
              if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(v57, *(v14 + 24)))
              {
                loggableFileObject(v14);
                v24 = v58[23];
                v25 = *v58;
                loggableUnicode(*(v14 + 24), v62);
                v27 = v58;
                if (v24 < 0)
                {
                  v27 = v25;
                }

                v28 = v62;
                if (v63 < 0)
                {
                  v28 = v62[0];
                }

                tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v26, v27, v28);
                if (SHIBYTE(v63) < 0)
                {
                  operator delete(v62[0]);
                }

                if ((v58[23] & 0x80000000) != 0)
                {
                  operator delete(*v58);
                }
              }

              TBuffer<wchar_t>::resize(__p, 0);
              TRegExp::stringToRegExp(*(v14 + 24), __p, 0, 3);
              if (v16)
              {
                operator new();
              }

              operator new();
            }

            loggableFileObject(v14);
            v19 = v58[23];
            v20 = *v58;
            loggableUnicode(*(v14 + 24), v62);
            v22 = v58;
            if (v19 < 0)
            {
              v22 = v20;
            }

            v23 = v62;
            if (v63 < 0)
            {
              v23 = v62[0];
            }

            tknPrintf("Error: %s'%s' is an invalid token name.\n", v21, v22, v23);
            if (SHIBYTE(v63) < 0)
            {
              operator delete(v62[0]);
            }
          }

          else
          {
            loggableFileObject(v14);
            v18 = v58;
            if (v58[23] < 0)
            {
              v18 = *v58;
            }

            tknPrintf("Error: %sTag attribute not supported in version %lld.  Must be version 3 or higher.\n", v17, v18, v13);
          }

          if ((v58[23] & 0x80000000) != 0)
          {
            operator delete(*v58);
          }

LABEL_31:
          v14 = *(v14 + 16);
        }

        while (v14);
        this = v54;
        v29 = 1;
LABEL_58:
        if (v92 == 1 && *__p != v65 && *__p)
        {
          MEMORY[0x26672B1B0]();
        }

        if (v29)
        {
          v56 = 1;
          v7 = v55;
        }

        else
        {
          std::wstring::basic_string[abi:ne200100]<0>(__p, v9);
          *v58 = __p;
          v30 = std::__tree<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>(this + 34, __p, &std::piecewise_construct, v58, v62);
          v30[7] = 0;
          v30[8] = 0;
          v7 = v55;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (!wcscmp(v9, dword_262890D44))
          {
            *(this + 11) = 0;
            *(this + 12) = 0;
          }

          else if (!wcscmp(v9, dword_262890D58))
          {
            *(this + 13) = 0;
            *(this + 14) = 0;
          }

          else if (!wcscmp(v9, dword_262890F10))
          {
            *(this + 15) = 0;
            *(this + 16) = 0;
          }

          else if (!wcscmp(v9, dword_262890F38))
          {
            *(this + 17) = 0;
            *(this + 18) = 0;
          }

          else if (!wcscmp(v9, dword_262890F74))
          {
            *(this + 19) = 0;
            *(this + 20) = 0;
          }

          else if (!wcscmp(v9, dword_262890FAC))
          {
            if (*(this + 48) <= 3uLL)
            {
              tknPrintf("Error: BadMiddlePieces is not supported prior to CompounderWordFlag version 4.\n", v31);
              std::string::basic_string[abi:ne200100]<0>(v58, &byte_262899963);
              *__p = byte_287529580;
              if ((v58[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(&__p[8], *v58, *&v58[8]);
              }

              else
              {
                *&__p[8] = *v58;
                v65[0] = *&v58[16];
              }

              *__p = &unk_287528000;
              if (v65[0] >= 0)
              {
                v49 = &__p[8];
              }

              else
              {
                v49 = *&__p[8];
              }

              conditionalAssert(v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2920);
              *__p = byte_287529580;
              if (SHIBYTE(v65[0]) < 0)
              {
                operator delete(*&__p[8]);
              }

              if ((v58[23] & 0x80000000) != 0)
              {
                operator delete(*v58);
              }

              v50 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
              *v50 = byte_287529580;
              v51 = (v50 + 1);
              if ((__p[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v51, *__p, *&__p[8]);
              }

              else
              {
                v53 = *__p;
                v50[3] = *&__p[16];
                *&v51->__r_.__value_.__l.__data_ = v53;
              }

              *v50 = &unk_287528000;
            }

            *(this + 21) = 0;
            *(this + 22) = 0;
          }

          else if (!wcscmp(v9, dword_262890D7C))
          {
            *(this + 23) = 0;
            *(this + 24) = 0;
          }

          else if (!wcscmp(v9, dword_262890D98))
          {
            *(this + 25) = 0;
            *(this + 26) = 0;
          }

          else if (!wcscmp(v9, dword_262890E08))
          {
            *(this + 27) = 0;
            *(this + 28) = 0;
          }

          else if (!wcscmp(v9, dword_262890E78))
          {
            *(this + 29) = 0;
            *(this + 30) = 0;
          }
        }

LABEL_87:
        v6 = v6[2];
        if (!v6)
        {
          if (v56)
          {
            std::string::basic_string[abi:ne200100]<0>(v58, &byte_262899963);
            *__p = byte_287529580;
            if ((v58[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], *v58, *&v58[8]);
            }

            else
            {
              *&__p[8] = *v58;
              v65[0] = *&v58[16];
            }

            *__p = &unk_287528000;
            if (v65[0] >= 0)
            {
              v37 = &__p[8];
            }

            else
            {
              v37 = *&__p[8];
            }

            conditionalAssert(v37, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2942);
            *__p = byte_287529580;
            if (SHIBYTE(v65[0]) < 0)
            {
              operator delete(*&__p[8]);
            }

            if ((v58[23] & 0x80000000) != 0)
            {
              operator delete(*v58);
            }

            v38 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v38 = byte_287529580;
            v39 = (v38 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v39, *__p, *&__p[8]);
            }

            else
            {
              v47 = *__p;
              v38[3] = *&__p[16];
              *&v39->__r_.__value_.__l.__data_ = v47;
            }

            *v38 = &unk_287528000;
          }

          break;
        }
      }
    }

    TFileObjectParser::~TFileObjectParser(v60);
  }
}

void sub_26280B1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, void *a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, void *a50, int a51, __int16 a52, char a53, char a54, int a55, __int16 a56, char a57, char a58)
{
  if (v62 == 1 && v61 != v59)
  {
    if (v61)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  TFileObjectParser::~TFileObjectParser(&v60);
  _Unwind_Resume(a1);
}

void TCompounder::loadRules(TCompounder *this, const TLocaleInfo **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 1)
  {
    if (TInputStream::verifyHeader(a2, "Rules", &pRulesVersion, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v21 = byte_287529580;
      if (SHIBYTE(__s[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v21[8], __s[0], __s[1]);
      }

      else
      {
        *&v21[8] = *__s;
        v22[0] = __s[2];
      }

      *v21 = &unk_287528000;
      if (v22[0] >= 0)
      {
        v9 = &v21[8];
      }

      else
      {
        v9 = *&v21[8];
      }

      conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2951);
      *v21 = byte_287529580;
      if (SHIBYTE(v22[0]) < 0)
      {
        operator delete(*&v21[8]);
      }

      if (SHIBYTE(__s[2]) < 0)
      {
        operator delete(__s[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v21, &byte_262899963);
      *exception = byte_287529580;
      v11 = (exception + 1);
      if ((v21[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v11, *v21, *&v21[8]);
      }

      else
      {
        v15 = *v21;
        exception[3] = *&v21[16];
        *&v11->__r_.__value_.__l.__data_ = v15;
      }

      *exception = &unk_287528000;
    }

    TFileObjectParser::TFileObjectParser(v24, a2);
    v3 = v24[0];
    v44 = xmmword_26286B6D0;
    v43 = &unk_262890FEC;
    v45 = -1;
    if (TFileObject::verify(v24[0], &v43, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v21 = byte_287529580;
      if (SHIBYTE(__s[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v21[8], __s[0], __s[1]);
      }

      else
      {
        *&v21[8] = *__s;
        v22[0] = __s[2];
      }

      *v21 = &unk_287528000;
      if (v22[0] >= 0)
      {
        v12 = &v21[8];
      }

      else
      {
        v12 = *&v21[8];
      }

      conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2964);
      *v21 = byte_287529580;
      if (SHIBYTE(v22[0]) < 0)
      {
        operator delete(*&v21[8]);
      }

      if (SHIBYTE(__s[2]) < 0)
      {
        operator delete(__s[0]);
      }

      v13 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v21, &byte_262899963);
      *v13 = byte_287529580;
      v14 = (v13 + 1);
      if ((v21[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v14, *v21, *&v21[8]);
      }

      else
      {
        v16 = *v21;
        v13[3] = *&v21[16];
        *&v14->__r_.__value_.__l.__data_ = v16;
      }

      *v13 = &unk_287528000;
    }

    *&__s[1] = xmmword_26286B6A0;
    __s[0] = dword_262891000;
    __s[3] = -1;
    v26 = xmmword_26286B6A0;
    __s[4] = dword_262891030;
    v27 = -1;
    v29 = xmmword_26286B6A0;
    v28 = dword_262891064;
    v30 = -1;
    v32 = xmmword_26286B6A0;
    v31 = dword_262891094;
    v33 = -1;
    v35 = xmmword_26286B6A0;
    v34 = dword_2628910C8;
    v36 = -1;
    v38 = xmmword_26286B6A0;
    v37 = dword_2628910E0;
    v39 = -1;
    v41 = xmmword_26286B6A0;
    v40 = dword_2628910F4;
    v42 = -1;
    *v21 = v22;
    *&v21[8] = xmmword_26286B6F0;
    v23 = 1;
    v4 = v3[3];
    if (v4)
    {
      while ((TFileObject::verify(v4, __s, 7, 1) & 1) != 0)
      {
        v4 = *(v4 + 16);
        if (!v4)
        {
          std::string::basic_string[abi:ne200100]<0>(v19, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v20) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v19[0], v19[1]);
          }

          else
          {
            *&__p[8] = *v19;
            v18 = v20;
          }

          *__p = &unk_287528000;
          if (v18 >= 0)
          {
            v5 = &__p[8];
          }

          else
          {
            v5 = *&__p[8];
          }

          conditionalAssert(v5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 3070);
          *__p = byte_287529580;
          if (SHIBYTE(v18) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          v6 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v6 = byte_287529580;
          v7 = (v6 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v7, *__p, *&__p[8]);
          }

          else
          {
            v8 = *__p;
            v6[3] = *&__p[16];
            *&v7->__r_.__value_.__l.__data_ = v8;
          }

          *v6 = &unk_287528000;
        }
      }

      operator new();
    }

    if (*v21 != v22 && *v21)
    {
      MEMORY[0x26672B1B0]();
    }

    TFileObjectParser::~TFileObjectParser(v24);
  }
}

void sub_26280BF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, void *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      TFileObjectParser::~TFileObjectParser(&STACK[0x470]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t TCompounder::freeMemory(TCompounder *this)
{
  v2 = *(this + 49);
  v3 = *(this + 50);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        if (*(v5 + 55) < 0)
        {
          operator delete(*(v5 + 32));
        }

        MEMORY[0x26672B1B0](v5, 0x1072C406F7C4BA3);
        v2 = *(this + 49);
        v3 = *(this + 50);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  *(this + 50) = v2;
  v6 = *(this + 34);
  v7 = this + 280;
  if (v6 != this + 280)
  {
    do
    {
      v8 = *(v6 + 7);
      if (v8)
      {
        TRegExp::~TRegExp(v8);
        MEMORY[0x26672B1B0]();
      }

      v9 = *(v6 + 8);
      if (v9)
      {
        TRegExp::~TRegExp(v9);
        MEMORY[0x26672B1B0]();
      }

      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 272, *(this + 35));
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = v7;
  v13 = *(this + 46);
  if (v13)
  {
    TDataSaver::~TDataSaver(v13);
    MEMORY[0x26672B1B0]();
  }

  v14 = *(this + 45);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  result = *(this + 47);
  if (result)
  {
    v16 = *(*result + 8);

    return v16();
  }

  return result;
}

void TCompounder::~TCompounder(TCompounder *this)
{
  *this = &unk_287528F98;
  v3 = *(this + 8);
  v2 = *(this + 9);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x26672B1B0](v5, 0x1072C406A9B7475);
        v3 = *(this + 8);
        v2 = *(this + 9);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = *(this + 31);
  v7 = this + 256;
  if (v6 != this + 256)
  {
    do
    {
      v8 = *(v6 + 7);
      if (v8)
      {
        TLmScore::~TLmScore(v8);
        MEMORY[0x26672B1B0]();
      }

      v9 = *(v6 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v6 + 2);
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v7);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 248, *(this + 32));
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = v7;
  TCompounder::freeMemory(this);
  v12 = *(this + 49);
  if (v12)
  {
    *(this + 50) = v12;
    operator delete(v12);
  }

  v14 = (this + 328);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 272, *(this + 35));
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 248, *(this + 32));
  v13 = *(this + 8);
  if (v13)
  {
    *(this + 9) = v13;
    operator delete(v13);
  }

  TLatticeProcessor::~TLatticeProcessor(this);
}

{
  TCompounder::~TCompounder(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t TCompounder::save(TCompounder *this, TDataManager *a2, TDataManager *a3)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v28, a2, a3, v7, *(this + 47));
  if (a2)
  {
    TDataManager::setIntVar(a2, "CompounderVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
    TOutputStream::TOutputStream(v30, &v22, "CompounderParam", *(this + 2) + 240);
    TParamManager::save(*(this + 45), v30, 0);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v9 = v21;
    }

    else
    {
      v9 = v20;
    }

    (*(*a2 + 48))(a2, "CompounderParam", p_p, v9);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v29 == 1)
    {
      v10 = *(this + 46);
      if (v10)
      {
        TDataSaver::save(v10, a2);
      }
    }

    v22 = *MEMORY[0x277D82828];
    *(&v22 + *(v22 - 3)) = *(MEMORY[0x277D82828] + 24);
    v23 = MEMORY[0x277D82878] + 16;
    if (v26 < 0)
    {
      operator delete(v25);
    }

    v23 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v24);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v27);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "CompounderVersion", 1);
    if (v29 >= 2)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
      TOutputStream::TOutputStream(v30, &v22, "CompounderParam", *(this + 2) + 240);
      TParamManager::save(*(this + 45), v30, 1);
      std::stringbuf::str();
      if ((v21 & 0x80u) == 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p;
      }

      if ((v21 & 0x80u) == 0)
      {
        v12 = v21;
      }

      else
      {
        v12 = v20;
      }

      (*(*a3 + 48))(a3, "CompounderParam", v11, v12);
      if (v21 < 0)
      {
        operator delete(__p);
      }

      v13 = *(this + 46);
      if (v13)
      {
        TDataSaver::save(v13, a3);
      }

      v22 = *MEMORY[0x277D82828];
      *(&v22 + *(v22 - 3)) = *(MEMORY[0x277D82828] + 24);
      v23 = MEMORY[0x277D82878] + 16;
      if (v26 < 0)
      {
        operator delete(v25);
      }

      v23 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v24);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v27);
    }

    if (!*(this + 46))
    {
      v14 = 0;
      v22 = 0;
      v23 = 0;
      v24.__locale_ = 0;
      v30[0] = "CompounderFeatureConfig";
      v30[1] = "CompounderWordFlag";
      v30[2] = "CompounderRules";
      do
      {
        v15 = v30[v14];
        if ((*(**(this + 47) + 40))(*(this + 47), v15, 0, 0))
        {
          TDataManager::getStringVar(*(this + 47), v15, &v22);
          if (SHIBYTE(v24.__locale_) >= 0)
          {
            v16 = &v22;
          }

          else
          {
            v16 = v22;
          }

          if (SHIBYTE(v24.__locale_) >= 0)
          {
            locale_high = HIBYTE(v24.__locale_);
          }

          else
          {
            locale_high = v23;
          }

          (*(*a3 + 48))(a3, v15, v16, locale_high);
        }

        ++v14;
      }

      while (v14 != 3);
      if (SHIBYTE(v24.__locale_) < 0)
      {
        operator delete(v22);
      }
    }
  }

  result = *(this + 47);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_26280CA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void *TCompounder::compoundGerman(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v50 = v2;
  v9 = v8;
  v67 = v69;
  v68 = xmmword_26286B6F0;
  v70 = 1;
  v10 = 16 * v5;
  TWord::getWrittenForm(*(*v8 + 16 * v5), &v67);
  v63 = v65;
  v64 = xmmword_26286B6F0;
  v66 = 1;
  v59 = v61;
  v60 = xmmword_26286B6F0;
  v62 = 1;
  SpokenForm = TWord::getSpokenForm(*(*v9 + v10), &v59);
  v12 = *(&v60 + 1) != 0;
  if (!*(&v60 + 1))
  {
    SpokenForm = TBuffer<wchar_t>::operator=(&v59, &v67);
  }

  v55 = v57;
  v56 = xmmword_26286B6F0;
  v58 = 1;
  v51 = v53;
  v52 = xmmword_26286B6F0;
  v54 = 1;
  v13 = v6 + 1;
  if (v6 + 1 < v4)
  {
    v14 = 0;
    v15 = v6;
    while (1)
    {
      v16 = v13;
      v17 = *(*v9 + 16 * v6);
      v18 = *(*v9 + 16 * v13);
      v19 = *(*v49 + 16 * v6);
      if (v19)
      {
        TWord::getWrittenForm(v19, &v55);
        BindingLetter = *v55;
        if (v58 == 1 && v55 != v57)
        {
          MEMORY[0x26672B1B0]();
          v55 = v57;
          *&v56 = 256;
        }

        *(&v56 + 1) = 0;
      }

      else
      {
        BindingLetter = TCompounder::getBindingLetter(v50, *(*v9 + 16 * v6), v18);
      }

      TWord::getWrittenForm(v18, &v55);
      TWord::getSpokenForm(v18, &v51);
      TWord::getWordSense(v18, &v63);
      v71[0] = 32;
      TBuffer<wchar_t>::insert(&v59, *(&v60 + 1), v71, 1uLL);
      if (*(&v52 + 1))
      {
        v22 = &v51;
      }

      else
      {
        v22 = &v55;
      }

      v23 = TBuffer<wchar_t>::operator+=(&v59, v22);
      v24 = *(&v52 + 1) != 0;
      if (!BindingLetter)
      {
        goto LABEL_27;
      }

      if (BindingLetter != 45)
      {
        break;
      }

      if (*(&v68 + 1) && *(&v56 + 1) && v67[*(&v68 + 1) - 1] != 45 && *v55 != 45)
      {
        v71[0] = 45;
        v23 = TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), v71, 1uLL);
      }

      if (v16 > v15 + 1)
      {
        Capitalization = TCompounder::getCapitalization(v23, v17);
        v26 = v67[v14];
        v27 = *(v50 + 2);
        if (Capitalization)
        {
          v28 = TLocaleInfo::toUpper(v27 + 240, v26);
        }

        else
        {
          v28 = TLocaleInfo::toLower(v27 + 240, v26);
        }

        v67[v14] = v28;
      }

      v14 = *(&v68 + 1);
      SpokenForm = TBuffer<wchar_t>::operator+=(&v67, &v55);
      v15 = v6 + 2;
LABEL_39:
      v12 |= v24;
      v13 = v16 + 1;
      v6 = v16;
      if (v16 + 1 == v4)
      {
        v13 = v15 + 1;
        goto LABEL_42;
      }
    }

    v71[0] = BindingLetter;
    TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), v71, 1uLL);
LABEL_27:
    v71[0] = TLocaleInfo::toLower(*(v50 + 2) + 240, *v55);
    TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), v71, 1uLL);
    if (*(&v56 + 1) >= v56)
    {
      if (v58)
      {
        v71[0] = 0;
        TBuffer<wchar_t>::insert(&v55, *(&v56 + 1), v71, 1uLL);
        v29 = v55;
        --*(&v56 + 1);
      }

      else
      {
        v29 = v55;
        if (v56)
        {
          v55[v56 - 1] = 0;
        }
      }
    }

    else
    {
      v29 = v55;
      v55[*(&v56 + 1)] = 0;
    }

    v30 = v29 + 1;
    v31 = -1;
    v32 = v29 + 1;
    do
    {
      v33 = *v32++;
      ++v31;
    }

    while (v33);
    SpokenForm = TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), v30, v31);
    goto LABEL_39;
  }

  v14 = 0;
LABEL_42:
  if (v13 < v4)
  {
    v34 = TCompounder::getCapitalization(SpokenForm, *(*v9 + 16 * v4 - 16));
    v35 = v67[v14];
    v36 = *(v50 + 2);
    if (v34)
    {
      v37 = TLocaleInfo::toUpper(v36 + 240, v35);
      v67[v14] = v37;
      if (!v14)
      {
        goto LABEL_48;
      }

      v38 = TLocaleInfo::toUpper(*(v50 + 2) + 240, v37);
    }

    else
    {
      v38 = TLocaleInfo::toLower(v36 + 240, v35);
    }

    v67[v14] = v38;
  }

LABEL_48:
  if (*(&v68 + 1))
  {
    v39 = 0;
    while (1)
    {
      v40 = v67[v39];
      {
        operator new();
      }

      if (v40 <= 8202)
      {
        if (v40 != 32 && v40 != 160)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v41 = v40 == 8203 || v40 == 65279;
        if (!v41 && v40 != 12288)
        {
          goto LABEL_61;
        }
      }

      v67[v39] = 45;
LABEL_61:
      ++v39;
      v42 = *(&v68 + 1);
      if (v39 >= *(&v68 + 1))
      {
        goto LABEL_66;
      }
    }
  }

  v42 = 0;
LABEL_66:
  if (v12 & 1 | (*(&v64 + 1) != 0))
  {
    v71[0] = 92;
    TBuffer<wchar_t>::insert(&v67, v42, v71, 1uLL);
    TBuffer<wchar_t>::operator+=(&v67, &v63);
    v42 = *(&v68 + 1);
    if (v12)
    {
      v71[0] = 92;
      TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), v71, 1uLL);
      TBuffer<wchar_t>::operator+=(&v67, &v59);
      v42 = *(&v68 + 1);
    }
  }

  v43 = *(v50 + 2);
  if (v42 >= v68)
  {
    if (v70)
    {
      v71[0] = 0;
      TBuffer<wchar_t>::insert(&v67, v42, v71, 1uLL);
      v44 = v67;
      --*(&v68 + 1);
    }

    else
    {
      v44 = v67;
      if (v68)
      {
        v67[v68 - 1] = 0;
      }
    }
  }

  else
  {
    v44 = v67;
    v67[v42] = 0;
  }

  Word = TLexicon::findWord(v43, v44);
  if (!Word)
  {
    v46 = *(v50 + 2);
    if (*(&v68 + 1) >= v68)
    {
      if (v70)
      {
        v71[0] = 0;
        TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), v71, 1uLL);
        v47 = v67;
        --*(&v68 + 1);
      }

      else
      {
        v47 = v67;
        if (v68)
        {
          v67[v68 - 1] = 0;
        }
      }
    }

    else
    {
      v47 = v67;
      v67[*(&v68 + 1)] = 0;
    }

    Word = TLexicon::addTempWord(v46, v47, 0, 0, 0);
  }

  if (v54 == 1 && v51 != v53 && v51)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v58 == 1 && v55 != v57 && v55)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v62 == 1 && v59 != v61 && v59)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v66 == 1 && v63 != v65 && v63)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v70 == 1 && v67 != v69 && v67)
  {
    MEMORY[0x26672B1B0]();
  }

  return Word;
}

void sub_26280D264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x26672B1B0](a17, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x468]) == 1 && a19 != a9 && a19)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x888]) == 1)
  {
    v20 = STACK[0x470];
    if (STACK[0x470] != a16)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0](v20, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCA8]) == 1)
  {
    v21 = STACK[0x890];
    if (STACK[0x890] != a10)
    {
      if (v21)
      {
        MEMORY[0x26672B1B0](v21, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x10C8]) == 1)
  {
    v22 = STACK[0xCB0];
    if (STACK[0xCB0] != a11)
    {
      if (v22)
      {
        MEMORY[0x26672B1B0](v22, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x14E8]) == 1 && STACK[0x10D0] != a12 && STACK[0x10D0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TCompounder::getBindingLetter(TCompounder *this, signed int **a2, signed int **a3)
{
  v6 = *a2;
  v7 = **a2;
  {
    operator new();
  }

  if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7))
  {
    return 45;
  }

  v8 = v6 + 1;
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (!v10)
    {
      break;
    }

    {
      operator new();
    }

    if ((TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9) & 1) == 0)
    {
      return 45;
    }
  }

  v11 = *a3;
  v12 = **a3;
  {
    operator new();
  }

  if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v12))
  {
    return 45;
  }

  v13 = v11 + 1;
  while (1)
  {
    v15 = *v13++;
    v14 = v15;
    if (!v15)
    {
      break;
    }

    {
      operator new();
    }

    if ((TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v14) & 1) == 0)
    {
      return 45;
    }
  }

  v31 = v33;
  v32 = xmmword_26286B6F0;
  v34 = 1;
  TWord::getCategoryTag(a3, &v31);
  if (v31[1] != 80)
  {
    v27 = v29;
    v28 = xmmword_26286B6F0;
    v30 = 1;
    TWord::getCategoryTag(a2, &v27);
    if (*v27 == 86 && v27[2] == 86 && *v31 == 83)
    {
      v16 = 115;
LABEL_46:
      if (v30 == 1 && v27 != v29 && v27)
      {
        MEMORY[0x26672B1B0]();
      }

      goto LABEL_50;
    }

    v23 = v25;
    v24 = xmmword_26286B6F0;
    v26 = 1;
    v18 = *(this + 23);
    if (v18)
    {
      TWord::getTokenName(a2, &v23);
      v18 = *(this + 23);
      v19 = *(&v24 + 1);
      if (*(&v24 + 1) >= v24)
      {
        if (v26)
        {
          v35 = 0;
          TBuffer<wchar_t>::insert(&v23, *(&v24 + 1), &v35, 1uLL);
          v20 = v23;
          --*(&v24 + 1);
        }

        else
        {
          v20 = v23;
          if (v24)
          {
            v23[v24 - 1] = 0;
          }
        }

        goto LABEL_33;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v23;
    v23[v19] = 0;
LABEL_33:
    if (v18 && v20 && (TRegExp::match(v18, v20, 0) & 1) != 0)
    {
      v16 = 45;
    }

    else if (!wcscmp(*a3, dword_262891114))
    {
      v16 = 0;
    }

    else
    {
      v21 = *a2;
      v22 = TBuffer<wchar_t>::c_str(&v27);
      if (TCompounder::takesFugenS(this, v21, v22))
      {
        v16 = 115;
      }

      else
      {
        v16 = 0;
      }
    }

    if (v26 == 1 && v23 != v25 && v23)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_46;
  }

  v16 = 0;
LABEL_50:
  if (v34 == 1 && v31 != v33 && v31)
  {
    MEMORY[0x26672B1B0]();
  }

  return v16;
}

void sub_26280D80C(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

BOOL TCompounder::getCapitalization(TCompounder *this, __int32 **a2)
{
  v7 = v9;
  v8 = xmmword_26286B6F0;
  v10 = 1;
  TWord::getWrittenForm(a2, &v7);
  v3 = *v7;
  {
    operator new();
  }

  if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v3))
  {
    v4 = 1;
  }

  else
  {
    TWord::getCategoryTag(a2, &v7);
    v4 = *v7 == 83 || *v7 == 78;
  }

  if (v10 == 1 && v7 != v9 && v7)
  {
    MEMORY[0x26672B1B0]();
  }

  return v4;
}

void sub_26280DA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x26672B1B0](v9, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x418]) == 1 && a9 != v10 && a9 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void *TCompounder::compoundNordic(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v47 = v7;
  v48 = v6;
  v8 = v2;
  v78 = v80;
  v79 = xmmword_26286B6F0;
  v81 = 1;
  v74 = v76;
  v75 = xmmword_26286B6F0;
  v77 = 1;
  v70 = v72;
  v71 = xmmword_26286B6F0;
  v73 = 1;
  v66 = v68;
  v67 = xmmword_26286B6F0;
  v69 = 1;
  v62 = v64;
  v63 = xmmword_26286B6F0;
  v65 = 1;
  v58 = v60;
  v59 = xmmword_26286B6F0;
  v61 = 1;
  v53 = v4;
  v54 = v56;
  v55 = xmmword_26286B6F0;
  if (v5 == 1)
  {
    v9 = &TCompounder::compoundNordic(std::vector<std::pair<TWord const*,unsigned int>> const&,std::vector<std::pair<TWord const*,unsigned long>> const&,unsigned long,unsigned long,TCompounder::TLanguage)::pszVowelsDutch;
  }

  else
  {
    v9 = &TCompounder::compoundNordic(std::vector<std::pair<TWord const*,unsigned int>> const&,std::vector<std::pair<TWord const*,unsigned long>> const&,unsigned long,unsigned long,TCompounder::TLanguage)::pszVowels;
  }

  v57 = 1;
  if (v3 >= v4)
  {
    v12 = 0;
    goto LABEL_78;
  }

  v10 = v5;
  v11 = 0;
  v46 = 0;
  v12 = 0;
  v13 = v3;
  v14 = v3;
  v52 = v3;
  do
  {
    v50 = v11;
    v15 = *(*v48 + 16 * v13);
    TWord::getWrittenForm(v15, &v74);
    TWord::getSpokenForm(v15, &v70);
    TWord::getWordSense(v15, &v66);
    TWord::getTokenName(v15, &v62);
    if (v13 > v14)
    {
      v82[0] = 32;
      TBuffer<wchar_t>::insert(&v58, *(&v59 + 1), v82, 1uLL);
    }

    if (*(&v71 + 1))
    {
      v16 = &v70;
    }

    else
    {
      v16 = &v74;
    }

    TBuffer<wchar_t>::operator+=(&v58, v16);
    v17 = *(&v71 + 1) != 0;
    if (!*(&v79 + 1))
    {
      goto LABEL_18;
    }

    if (v10 == 1)
    {
      v18 = *v74;
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_18;
      }

      v18 = v78[*(&v79 + 1) - 1];
      if (v18 != *v74)
      {
        goto LABEL_18;
      }
    }

    v19 = TLocaleInfo::removeDiacritics(v8[2] + 240, v18);
    if (wcschr(v9, v19))
    {
      v20 = TLocaleInfo::removeDiacritics(v8[2] + 240, v78[*(&v79 + 1) - 1]);
      v49 = wcschr(v9, v20) != 0;
      goto LABEL_19;
    }

LABEL_18:
    v49 = 0;
LABEL_19:
    v51 = v17;
    if (*(&v75 + 1))
    {
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = v74[v21];
        {
          operator new();
        }

        v24 = TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v23) ^ 1;
        if (v10 == 4)
        {
          LOBYTE(v24) = 0;
        }

        if (v24)
        {
          break;
        }

        v25 = TLocaleInfo::removeDiacritics(v8[2] + 240, v74[v21]);
        v22 |= wcschr(v9, v25) != 0;
        if (++v21 >= *(&v75 + 1))
        {
          v27 = 0;
          goto LABEL_31;
        }
      }

      v27 = 1;
LABEL_31:
      v26 = v27 | ((v22 & 1) == 0);
    }

    else
    {
      v26 = 1;
    }

    v28 = v13 + 1;
    if (v13 + 1 == v53)
    {
      v29 = v8[27];
      if (*(&v63 + 1) >= v63)
      {
        if (v65)
        {
          v82[0] = 0;
          TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v82, 1uLL);
          v30 = v62;
          --*(&v63 + 1);
        }

        else
        {
          v30 = v62;
          if (v63)
          {
            v62[v63 - 1] = 0;
          }
        }
      }

      else
      {
        v30 = v62;
        v62[*(&v63 + 1)] = 0;
      }

      v31 = v29 && v30 && (TRegExp::match(v29, v30, 0) & 1) != 0;
      v32 = v8[29];
      if (*(&v63 + 1) >= v63)
      {
        if (v65)
        {
          v82[0] = 0;
          TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v82, 1uLL);
          v33 = v62;
          --*(&v63 + 1);
        }

        else
        {
          v33 = v62;
          if (v63)
          {
            v62[v63 - 1] = 0;
          }
        }
      }

      else
      {
        v33 = v62;
        v62[*(&v63 + 1)] = 0;
      }

      v26 |= v31;
      v46 = v32 && v33 && (TRegExp::match(v32, v33, 0) & 1) != 0;
      v14 = v52;
    }

    if (v13 != v14)
    {
      v34 = *(*v47 + 16 * v13 - 16);
      if (v34)
      {
        TWord::getWrittenForm(v34, &v54);
        v82[0] = *v54;
        TBuffer<wchar_t>::insert(&v78, *(&v79 + 1), v82, 1uLL);
      }

      else if ((v26 | v50 | v49))
      {
        v82[0] = 45;
        TBuffer<wchar_t>::insert(&v78, *(&v79 + 1), v82, 1uLL);
      }
    }

    TBuffer<wchar_t>::operator+=(&v78, &v74);
    v11 = v26;
    v14 = v52;
    if (v13 == v52)
    {
      v35 = v8[25];
      if (*(&v63 + 1) >= v63)
      {
        if (v65)
        {
          v82[0] = 0;
          TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v82, 1uLL);
          v36 = v62;
          --*(&v63 + 1);
        }

        else
        {
          v36 = v62;
          if (v63)
          {
            v62[v63 - 1] = 0;
          }
        }
      }

      else
      {
        v36 = v62;
        v62[*(&v63 + 1)] = 0;
      }

      v37 = v35 && v36 && (TRegExp::match(v35, v36, 0) & 1) != 0;
      v11 = v37 | v26;
      v14 = v52;
    }

    v12 |= v51;
    ++v13;
  }

  while (v28 != v53);
  if (v46)
  {
    v38 = TLocaleInfo::toUpper(v8[2] + 240, *v78);
    *v78 = v38;
  }

LABEL_78:
  v39 = *(&v79 + 1);
  if ((v12 & 1) != 0 || *(&v67 + 1))
  {
    v82[0] = 92;
    TBuffer<wchar_t>::insert(&v78, *(&v79 + 1), v82, 1uLL);
    TBuffer<wchar_t>::operator+=(&v78, &v66);
    v39 = *(&v79 + 1);
    if (v12)
    {
      v82[0] = 92;
      TBuffer<wchar_t>::insert(&v78, *(&v79 + 1), v82, 1uLL);
      TBuffer<wchar_t>::operator+=(&v78, &v58);
      v39 = *(&v79 + 1);
    }
  }

  v40 = v8[2];
  if (v39 >= v79)
  {
    if (v81)
    {
      v82[0] = 0;
      TBuffer<wchar_t>::insert(&v78, v39, v82, 1uLL);
      v41 = v78;
      --*(&v79 + 1);
    }

    else
    {
      v41 = v78;
      if (v79)
      {
        v78[v79 - 1] = 0;
      }
    }
  }

  else
  {
    v41 = v78;
    v78[v39] = 0;
  }

  Word = TLexicon::findWord(v40, v41);
  if (!Word)
  {
    v43 = v8[2];
    if (*(&v79 + 1) >= v79)
    {
      if (v81)
      {
        v82[0] = 0;
        TBuffer<wchar_t>::insert(&v78, *(&v79 + 1), v82, 1uLL);
        v44 = v78;
        --*(&v79 + 1);
      }

      else
      {
        v44 = v78;
        if (v79)
        {
          v78[v79 - 1] = 0;
        }
      }
    }

    else
    {
      v44 = v78;
      v78[*(&v79 + 1)] = 0;
    }

    Word = TLexicon::addTempWord(v43, v44, 0, 0, 0);
  }

  if (v57 == 1 && v54 != v56 && v54)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v61 == 1 && v58 != v60 && v58)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v65 == 1 && v62 != v64 && v62)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v69 == 1 && v66 != v68 && v66)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v73 == 1 && v70 != v72 && v70)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v77 == 1 && v74 != v76 && v74)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v81 == 1 && v78 != v80 && v78)
  {
    MEMORY[0x26672B1B0]();
  }

  return Word;
}

void sub_26280E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x488]) == 1 && a23 != a13 && a23 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8A8]) == 1)
  {
    v26 = STACK[0x490];
    if (STACK[0x490] != a14)
    {
      if (v26)
      {
        MEMORY[0x26672B1B0](v26, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCC8]) == 1)
  {
    v27 = STACK[0x8B0];
    if (STACK[0x8B0] != a15)
    {
      if (v27)
      {
        MEMORY[0x26672B1B0](v27, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x10E8]) == 1)
  {
    v28 = STACK[0xCD0];
    if (STACK[0xCD0] != a9)
    {
      if (v28)
      {
        MEMORY[0x26672B1B0](v28, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1508]) == 1)
  {
    v29 = STACK[0x10F0];
    if (STACK[0x10F0] != a10)
    {
      if (v29)
      {
        MEMORY[0x26672B1B0](v29, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1928]) == 1)
  {
    v30 = STACK[0x1510];
    if (STACK[0x1510] != a11)
    {
      if (v30)
      {
        MEMORY[0x26672B1B0](v30, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1D48]) == 1)
  {
    v31 = STACK[0x1930];
    if (STACK[0x1930] != a12)
    {
      if (v31)
      {
        MEMORY[0x26672B1B0](v31, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void *TCompounder::compoundWithRules(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v83 = v3;
  v5 = v4;
  v81 = v6;
  v8 = v7;
  v9 = v2;
  v117 = v119;
  v118 = xmmword_26286B6F0;
  v120 = 1;
  v80 = v10;
  v11 = 16 * v10;
  TWord::getWrittenForm(*(*v7 + 16 * v10), &v117);
  v84 = v5;
  v113 = v115;
  v114 = xmmword_26286B6F0;
  v116 = 1;
  v109 = v111;
  v110 = xmmword_26286B6F0;
  v112 = 1;
  v82 = v8;
  TWord::getSpokenForm(*(*v8 + v11), &v109);
  v12 = *(&v110 + 1) != 0;
  if (!*(&v110 + 1))
  {
    TBuffer<wchar_t>::operator=(&v109, &v117);
  }

  v105 = v107;
  v106 = xmmword_26286B6F0;
  v108 = 1;
  v101 = v103;
  v102 = xmmword_26286B6F0;
  v104 = 1;
  v97 = v99;
  v98 = xmmword_26286B6F0;
  v100 = 1;
  v93 = v95;
  v94 = xmmword_26286B6F0;
  v96 = 1;
  v89 = v91;
  v90 = xmmword_26286B6F0;
  v92 = 1;
  v85 = v87;
  v86 = xmmword_26286B6F0;
  v88 = 1;
  if (*(&v118 + 1) >= v118)
  {
    if (v120)
    {
      v121[0] = 0;
      TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), v121, 1uLL);
      v13 = v117;
      --*(&v118 + 1);
    }

    else
    {
      v13 = v117;
      if (v118)
      {
        v117[v118 - 1] = 0;
      }
    }
  }

  else
  {
    v13 = v117;
    v117[*(&v118 + 1)] = 0;
  }

  TBuffer<wchar_t>::assign(&v101, v13);
  TWord::getCategoryTag(*(*v82 + v11), &v89);
  v15 = v80 + 1;
  if (v80 + 1 >= v84)
  {
    v16 = 0;
    v62 = 1;
    goto LABEL_128;
  }

  v16 = 0;
  v17 = 0;
  v18 = v84 - 1;
  v19 = v80 + 1;
  do
  {
    v20 = 16 * (v19 - 1);
    v21 = *(*v82 + v20);
    v22 = *(*v82 + 16 * v19);
    TWord::getWrittenForm(v22, &v97);
    TWord::getSpokenForm(v22, &v93);
    TWord::getCategoryTag(v22, &v85);
    TWord::getWordSense(v22, &v113);
    v121[0] = 32;
    TBuffer<wchar_t>::insert(&v109, *(&v110 + 1), v121, 1uLL);
    if (*(&v94 + 1))
    {
      v23 = &v93;
    }

    else
    {
      v23 = &v97;
    }

    TBuffer<wchar_t>::operator+=(&v109, v23);
    v24 = *(&v94 + 1) != 0;
    v25 = *(*v81 + v20);
    if (v25)
    {
      TWord::getWrittenForm(v25, &v105);
      if (*(&v106 + 1) >= v106)
      {
        if (v108)
        {
          v121[0] = 0;
          TBuffer<wchar_t>::insert(&v105, *(&v106 + 1), v121, 1uLL);
          v26 = v105;
          --*(&v106 + 1);
        }

        else
        {
          v26 = v105;
          if (v106)
          {
            v105[v106 - 1] = 0;
          }
        }
      }

      else
      {
        v26 = v105;
        v105[*(&v106 + 1)] = 0;
      }

      goto LABEL_67;
    }

    v27 = v9[49];
    if (v9[50] == v27)
    {
      v26 = &unk_26288FFA8;
      goto LABEL_67;
    }

    v79 = v17;
    v28 = 0;
    while (1)
    {
      v29 = *(v27 + 8 * v28);
      v30 = *(v29 + 56);
      if (v19 == v15)
      {
        if ((v30 & 0x10) != 0)
        {
          goto LABEL_59;
        }
      }

      else if (v30)
      {
        goto LABEL_59;
      }

      if (v19 != v18)
      {
        break;
      }

      if ((v30 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_59:
      if (++v28 >= ((v9[50] - v27) >> 3))
      {
        v26 = &unk_26288FFA8;
        goto LABEL_61;
      }
    }

    if ((v30 & 2) != 0)
    {
      goto LABEL_59;
    }

LABEL_27:
    v31 = *v29;
    if (*v29)
    {
      if (*(&v102 + 1) >= v102)
      {
        if (v104)
        {
          v121[0] = 0;
          TBuffer<wchar_t>::insert(&v101, *(&v102 + 1), v121, 1uLL);
          v32 = v101;
          --*(&v102 + 1);
        }

        else
        {
          v32 = v101;
          if (v102)
          {
            v101[v102 - 1] = 0;
          }
        }
      }

      else
      {
        v32 = v101;
        v101[*(&v102 + 1)] = 0;
      }

      v33 = TRegExp::match(v31, v32, 0);
      v27 = v9[49];
      v29 = *(v27 + 8 * v28);
      if ((v33 ^ ((*(v29 + 56) & 4) == 0)))
      {
        goto LABEL_59;
      }
    }

    v34 = *(v29 + 8);
    if (v34)
    {
      if (*(&v90 + 1) >= v90)
      {
        if (v92)
        {
          v121[0] = 0;
          TBuffer<wchar_t>::insert(&v89, *(&v90 + 1), v121, 1uLL);
          v35 = v89;
          --*(&v90 + 1);
        }

        else
        {
          v35 = v89;
          if (v90)
          {
            v89[v90 - 1] = 0;
          }
        }
      }

      else
      {
        v35 = v89;
        v89[*(&v90 + 1)] = 0;
      }

      v36 = TRegExp::match(v34, v35, 0);
      v27 = v9[49];
      v29 = *(v27 + 8 * v28);
      if ((v36 ^ ((*(v29 + 56) & 4) == 0)))
      {
        goto LABEL_59;
      }
    }

    v37 = *(v29 + 16);
    if (v37)
    {
      if (*(&v98 + 1) >= v98)
      {
        if (v100)
        {
          v121[0] = 0;
          TBuffer<wchar_t>::insert(&v97, *(&v98 + 1), v121, 1uLL);
          v38 = v97;
          --*(&v98 + 1);
        }

        else
        {
          v38 = v97;
          if (v98)
          {
            v97[v98 - 1] = 0;
          }
        }
      }

      else
      {
        v38 = v97;
        v97[*(&v98 + 1)] = 0;
      }

      v39 = TRegExp::match(v37, v38, 0);
      v27 = v9[49];
      v29 = *(v27 + 8 * v28);
      if ((v39 ^ ((*(v29 + 56) & 8) == 0)))
      {
        goto LABEL_59;
      }
    }

    v40 = *(v29 + 24);
    if (v40)
    {
      if (*(&v86 + 1) >= v86)
      {
        if (v88)
        {
          v121[0] = 0;
          TBuffer<wchar_t>::insert(&v85, *(&v86 + 1), v121, 1uLL);
          v41 = v85;
          --*(&v86 + 1);
        }

        else
        {
          v41 = v85;
          if (v86)
          {
            v85[v86 - 1] = 0;
          }
        }
      }

      else
      {
        v41 = v85;
        v85[*(&v86 + 1)] = 0;
      }

      v42 = TRegExp::match(v40, v41, 0);
      v27 = v9[49];
      v29 = *(v27 + 8 * v28);
      if ((v42 ^ ((*(v29 + 56) & 8) == 0)))
      {
        goto LABEL_59;
      }
    }

    v26 = (v29 + 32);
    if (*(v29 + 55) < 0)
    {
      v26 = *v26;
    }

LABEL_61:
    v17 = v79;
LABEL_67:
    v43 = 0;
    v12 |= v24;
      ;
    }

    v45 = TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), v26, v43 - 1);
    if (v83)
    {
      if (v117[*(&v118 + 1) - 1] == 45 || (v46 = *v97, *(&v98 + 1)) && v46 == 45)
      {
        if (v19 > v80 + 1)
        {
          Capitalization = TCompounder::getCapitalization(v45, v21);
          v48 = v117[v16];
          v49 = v9[2];
          if (Capitalization)
          {
            v50 = TLocaleInfo::toUpper(v49 + 240, v48);
          }

          else
          {
            v50 = TLocaleInfo::toLower(v49 + 240, v48);
          }

          v117[v16] = v50;
        }

        v16 = *(&v118 + 1);
        v14 = TBuffer<wchar_t>::operator+=(&v117, &v97);
        v80 = v19 + 1;
      }

      else
      {
        v121[0] = TLocaleInfo::toLower(v9[2] + 240, v46);
        TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), v121, 1uLL);
        if (*(&v98 + 1) >= v98)
        {
          if (v100)
          {
            v121[0] = 0;
            TBuffer<wchar_t>::insert(&v97, *(&v98 + 1), v121, 1uLL);
            v51 = v97;
            --*(&v98 + 1);
          }

          else
          {
            v51 = v97;
            if (v98)
            {
              v97[v98 - 1] = 0;
            }
          }
        }

        else
        {
          v51 = v97;
          v97[*(&v98 + 1)] = 0;
        }

        v52 = (v51 + 1);
        v53 = -1;
        v54 = (v51 + 1);
        do
        {
          v55 = *v54++;
          ++v53;
        }

        while (v55);
        v14 = TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), v52, v53);
      }
    }

    else
    {
      v14 = TBuffer<wchar_t>::operator+=(&v117, &v97);
    }

    if (v19 == v18)
    {
      v57 = v9[29];
      v56 = v9[30];
      if (*(&v98 + 1) >= v98)
      {
        if (v100)
        {
          v121[0] = 0;
          v14 = TBuffer<wchar_t>::insert(&v97, *(&v98 + 1), v121, 1uLL);
          v58 = v97;
          --*(&v98 + 1);
        }

        else
        {
          v58 = v97;
          if (v98)
          {
            v97[v98 - 1] = 0;
          }
        }
      }

      else
      {
        v58 = v97;
        v97[*(&v98 + 1)] = 0;
      }

      if (*(&v86 + 1) >= v86)
      {
        if (v88)
        {
          v121[0] = 0;
          v14 = TBuffer<wchar_t>::insert(&v85, *(&v86 + 1), v121, 1uLL);
          v60 = v85;
          --*(&v86 + 1);
        }

        else
        {
          v60 = v85;
          if (v86)
          {
            v85[v86 - 1] = 0;
          }
        }
      }

      else
      {
        v60 = v85;
        v85[*(&v86 + 1)] = 0;
      }

      v17 = 1;
      if (!v57 || !v58 || (v14 = TRegExp::match(v57, v58, 0), (v14 & 1) == 0))
      {
        if (!v56 || !v60 || (v14 = TRegExp::match(v56, v60, 0), (v14 & 1) == 0))
        {
          v17 = 0;
        }
      }
    }

    else
    {
      if (*(&v98 + 1) >= v98)
      {
        if (v100)
        {
          v121[0] = 0;
          TBuffer<wchar_t>::insert(&v97, *(&v98 + 1), v121, 1uLL);
          v59 = v97;
          --*(&v98 + 1);
        }

        else
        {
          v59 = v97;
          if (v98)
          {
            v97[v98 - 1] = 0;
          }
        }
      }

      else
      {
        v59 = v97;
        v97[*(&v98 + 1)] = 0;
      }

      TBuffer<wchar_t>::assign(&v101, v59);
      if (*(&v86 + 1) >= v86)
      {
        if (v88)
        {
          v121[0] = 0;
          TBuffer<wchar_t>::insert(&v85, *(&v86 + 1), v121, 1uLL);
          v61 = v85;
          --*(&v86 + 1);
        }

        else
        {
          v61 = v85;
          if (v86)
          {
            v85[v86 - 1] = 0;
          }
        }
      }

      else
      {
        v61 = v85;
        v85[*(&v86 + 1)] = 0;
      }

      v14 = TBuffer<wchar_t>::assign(&v89, v61);
    }

    ++v19;
  }

  while (v19 != v84);
  v15 = v80 + 1;
  v62 = !v17;
LABEL_128:
  if (v83 && v15 < v84)
  {
    v63 = TCompounder::getCapitalization(v14, *(*v82 + 16 * v84 - 16));
    v64 = v117[v16];
    v65 = v9[2];
    if (v63)
    {
      v66 = TLocaleInfo::toUpper(v65 + 240, v64);
      v117[v16] = v66;
      if (v16)
      {
        v67 = TLocaleInfo::toUpper(v9[2] + 240, v66);
        goto LABEL_134;
      }
    }

    else
    {
      v67 = TLocaleInfo::toLower(v65 + 240, v64);
LABEL_134:
      v117[v16] = v67;
    }
  }

  if (*(&v118 + 1))
  {
    v68 = 0;
    while (1)
    {
      v69 = v117[v68];
      {
        operator new();
      }

      if (v69 <= 8202)
      {
        if (v69 != 32 && v69 != 160)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v70 = v69 == 8203 || v69 == 65279;
        if (!v70 && v69 != 12288)
        {
          goto LABEL_148;
        }
      }

      v117[v68] = 45;
LABEL_148:
      ++v68;
      v71 = *(&v118 + 1);
      if (v68 >= *(&v118 + 1))
      {
        goto LABEL_153;
      }
    }
  }

  v71 = 0;
LABEL_153:
  if (((v83 | v62) & 1) == 0)
  {
    v72 = TLocaleInfo::toUpper(v9[2] + 240, *v117);
    *v117 = v72;
    v71 = *(&v118 + 1);
  }

  if (v12 & 1 | (*(&v114 + 1) != 0))
  {
    v121[0] = 92;
    TBuffer<wchar_t>::insert(&v117, v71, v121, 1uLL);
    TBuffer<wchar_t>::operator+=(&v117, &v113);
    v71 = *(&v118 + 1);
    if (v12)
    {
      v121[0] = 92;
      TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), v121, 1uLL);
      TBuffer<wchar_t>::operator+=(&v117, &v109);
      v71 = *(&v118 + 1);
    }
  }

  v73 = v9[2];
  if (v71 >= v118)
  {
    if (v120)
    {
      v121[0] = 0;
      TBuffer<wchar_t>::insert(&v117, v71, v121, 1uLL);
      v74 = v117;
      --*(&v118 + 1);
    }

    else
    {
      v74 = v117;
      if (v118)
      {
        v117[v118 - 1] = 0;
      }
    }
  }

  else
  {
    v74 = v117;
    v117[v71] = 0;
  }

  Word = TLexicon::findWord(v73, v74);
  if (!Word)
  {
    v76 = v9[2];
    if (*(&v118 + 1) >= v118)
    {
      if (v120)
      {
        v121[0] = 0;
        TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), v121, 1uLL);
        v77 = v117;
        --*(&v118 + 1);
      }

      else
      {
        v77 = v117;
        if (v118)
        {
          v117[v118 - 1] = 0;
        }
      }
    }

    else
    {
      v77 = v117;
      v117[*(&v118 + 1)] = 0;
    }

    Word = TLexicon::addTempWord(v76, v77, 0, 0, 0);
  }

  if (v88 == 1 && v85 != v87 && v85)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v92 == 1 && v89 != v91 && v89)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v96 == 1 && v93 != v95 && v93)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v100 == 1 && v97 != v99 && v97)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v104 == 1 && v101 != v103 && v101)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v108 == 1 && v105 != v107 && v105)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v112 == 1 && v109 != v111 && v109)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v116 == 1 && v113 != v115 && v113)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v120 == 1 && v117 != v119 && v117)
  {
    MEMORY[0x26672B1B0]();
  }

  return Word;
}

void sub_26280F3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  MEMORY[0x26672B1B0](a26, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x4A8]) == 1 && a27 != a10 && a27)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8C8]) == 1)
  {
    v28 = STACK[0x4B0];
    if (STACK[0x4B0] != a11)
    {
      if (v28)
      {
        MEMORY[0x26672B1B0](v28, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCE8]) == 1)
  {
    v29 = STACK[0x8D0];
    if (STACK[0x8D0] != a12)
    {
      if (v29)
      {
        MEMORY[0x26672B1B0](v29, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1108]) == 1)
  {
    v30 = STACK[0xCF0];
    if (STACK[0xCF0] != a13)
    {
      if (v30)
      {
        MEMORY[0x26672B1B0](v30, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1528]) == 1)
  {
    v31 = STACK[0x1110];
    if (STACK[0x1110] != a14)
    {
      if (v31)
      {
        MEMORY[0x26672B1B0](v31, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1948]) == 1)
  {
    v32 = STACK[0x1530];
    if (STACK[0x1530] != a15)
    {
      if (v32)
      {
        MEMORY[0x26672B1B0](v32, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1D68]) == 1)
  {
    v33 = STACK[0x1950];
    if (STACK[0x1950] != a16)
    {
      if (v33)
      {
        MEMORY[0x26672B1B0](v33, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x2188]) == 1)
  {
    v34 = STACK[0x1D70];
    if (STACK[0x1D70] != a17)
    {
      if (v34)
      {
        MEMORY[0x26672B1B0](v34, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x25A8]) == 1)
  {
    v35 = STACK[0x2190];
    if (STACK[0x2190] != a18)
    {
      if (v35)
      {
        MEMORY[0x26672B1B0](v35, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TCompounder::makeResult(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7)
{
  v51 = v53;
  v52 = xmmword_26286B6F0;
  v54 = 1;
  v50 = 0uLL;
  v7 = *a4;
  if (a4[1] != *a4)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = 16 * v13;
      while (1)
      {
        v15 = *(v7 + v14);
        if (!v15)
        {
          break;
        }

        *&v50 = v15;
        *(&v50 + 1) = 1;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a2, &v50);
        if (*(a1 + 56) == 1)
        {
          TBuffer<wchar_t>::resize(&v51, 0);
          tildeEscape(**(*a4 + v14), &v51);
          v16 = *(a1 + 360);
          v17 = (v16 + 512);
          if (*(v16 + 535) < 0)
          {
            v17 = *v17;
          }

          loggableUnicode(v17, v48);
          if (v49 >= 0)
          {
            v18 = v48;
          }

          else
          {
            v18 = v48[0];
          }

          if (*(&v52 + 1) >= v52)
          {
            if (v54)
            {
              v55[0] = 0;
              TBuffer<wchar_t>::insert(&v51, *(&v52 + 1), v55, 1uLL);
              v19 = v51;
              --*(&v52 + 1);
            }

            else
            {
              v19 = v51;
              if (v52)
              {
                v51[v52 - 1] = 0;
              }
            }
          }

          else
          {
            v19 = v51;
            v51[*(&v52 + 1)] = 0;
          }

          loggableUnicode(v19, __p);
          v21 = __p;
          if (v47 < 0)
          {
            v21 = __p[0];
          }

          tknPrintf("%s: 0 %s %s\n", v20, v18, v21, TCompounder::ms_tagName[0]);
          if (v47 < 0)
          {
            operator delete(__p[0]);
          }

          if (v49 < 0)
          {
            operator delete(v48[0]);
          }
        }

        ++v13;
        v7 = *a4;
        v14 += 16;
        if (v13 >= (a4[1] - *a4) >> 4)
        {
          goto LABEL_82;
        }
      }

      v22 = 16 * v12;
      v23 = -1;
      v43 = 16 * v12;
      do
      {
        v24 = v23;
        if (*(a1 + 56) == 1)
        {
          TBuffer<wchar_t>::resize(&v51, 0);
          v25 = *(*a3 + v22);
          if (v25)
          {
            tildeEscape(*v25, &v51);
          }

          if (*(*a7 + 8 * v12) == 0.0)
          {
            v26 = *(a1 + 360);
            v27 = (v26 + 512);
            if (*(v26 + 535) < 0)
            {
              v27 = *v27;
            }

            loggableUnicode(v27, v48);
            if (v49 >= 0)
            {
              v28 = v48;
            }

            else
            {
              v28 = v48[0];
            }

            if (*(&v52 + 1) >= v52)
            {
              if (v54)
              {
                v55[0] = 0;
                TBuffer<wchar_t>::insert(&v51, *(&v52 + 1), v55, 1uLL);
                v29 = v51;
                --*(&v52 + 1);
              }

              else
              {
                v29 = v51;
                if (v52)
                {
                  v51[v52 - 1] = 0;
                }
              }
            }

            else
            {
              v29 = v51;
              v51[*(&v52 + 1)] = 0;
            }

            loggableUnicode(v29, __p);
            v36 = __p;
            if (v47 < 0)
            {
              v36 = __p[0];
            }

            tknPrintf("%s: 0 %s %s\n", v35, v28, v36, TCompounder::ms_tagName[(*(*a6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1]);
          }

          else
          {
            v30 = *(a1 + 360);
            v31 = (v30 + 512);
            if (*(v30 + 535) < 0)
            {
              v31 = *v31;
            }

            loggableUnicode(v31, v48);
            if (v49 >= 0)
            {
              v32 = v48;
            }

            else
            {
              v32 = v48[0];
            }

            v33 = *(*a7 + 8 * v12);
            if (*(&v52 + 1) >= v52)
            {
              if (v54)
              {
                v55[0] = 0;
                TBuffer<wchar_t>::insert(&v51, *(&v52 + 1), v55, 1uLL);
                v34 = v51;
                --*(&v52 + 1);
              }

              else
              {
                v34 = v51;
                if (v52)
                {
                  v51[v52 - 1] = 0;
                }
              }
            }

            else
            {
              v34 = v51;
              v51[*(&v52 + 1)] = 0;
            }

            loggableUnicode(v34, __p);
            v38 = __p;
            if (v47 < 0)
            {
              v38 = __p[0];
            }

            tknPrintf("%s: %e %s %s\n", v37, v32, v33, v38, TCompounder::ms_tagName[(*(*a6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1]);
          }

          if (v47 < 0)
          {
            operator delete(__p[0]);
          }

          if (v49 < 0)
          {
            operator delete(v48[0]);
          }
        }

        if (++v12 >= a6[1])
        {
          break;
        }

        v23 = v24 - 1;
        v22 += 16;
      }

      while (((*(*a6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
      if (v24 == -1)
      {
        *&v50 = *(*a3 + v43);
        *(&v50 + 1) = 1;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a2, &v50);
      }

      else
      {
        v39 = TStringParam::get((*(*(a1 + 16) + 336) + 3280));
        if (!wcsncmp(v39, dword_262890C4C, 2uLL))
        {
          v40 = 0;
        }

        else if (!wcscmp(v39, dword_262890C58))
        {
          v40 = 0;
        }

        else
        {
          v40 = wcscmp(v39, dword_262890C68) && wcscmp(v39, dword_262890C78) && wcscmp(v39, dword_262890C88) != 0;
        }

        if (*(a1 + 384) > 2uLL)
        {
          v41 = TCompounder::compoundWithRules(a1, a3);
        }

        else if (v40)
        {
          v41 = TCompounder::compoundGerman(a1, a3);
        }

        else
        {
          v41 = TCompounder::compoundNordic(a1, a3);
        }

        *&v50 = v41;
        *(&v50 + 1) = -v24;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a2, &v50);
      }

      v13 -= v24;
      v7 = *a4;
    }

    while (v13 < (a4[1] - *a4) >> 4);
  }

LABEL_82:
  if (v54 == 1 && v51 != v53 && v51 != 0)
  {
    MEMORY[0x26672B1B0]();
  }
}

void sub_26280FC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (LOBYTE(STACK[0x4A8]) == 1 && a27 != a15)
  {
    if (a27)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

void TCompounder::applyModelMBR(void *a1, __int128 **a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v91 = 0;
  v90 = 0;
  v92 = 0;
  std::vector<std::pair<TWord const*,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<TWord const*,unsigned int>*,std::pair<TWord const*,unsigned int>*>(&v90, *a2, a2[1], a2[1] - *a2);
  v88 = 0;
  v87 = 0;
  v89 = 0;
  std::vector<std::pair<TWord const*,unsigned int>>::reserve(&v87, a2[1] - *a2);
  v85 = 0;
  v84 = 0;
  v86 = 0;
  std::vector<std::pair<TWord const*,unsigned long>>::reserve(&v84, (a4[1] - *a4) >> 4);
  v80 = v82;
  v81 = xmmword_26286B6F0;
  v83 = 1;
  v76 = v78;
  v77 = xmmword_26286B6F0;
  v79 = 1;
  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = &v9[v10];
      v13 = *&v9[v10];
      if (v13)
      {
        if (a1[11])
        {
          TWord::getTokenName(v13, &v80);
        }

        v14 = a1[12];
        if (v14)
        {
          TWord::getCategoryTag(v13, &v76);
          v14 = a1[12];
        }

        v15 = a1[11];
        if (*(&v81 + 1) >= v81)
        {
          if (v83)
          {
            LODWORD(v95) = 0;
            TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), &v95, 1uLL);
            v16 = v80;
            --*(&v81 + 1);
          }

          else
          {
            v16 = v80;
            if (v81)
            {
              v80[v81 - 1] = 0;
            }
          }
        }

        else
        {
          v16 = v80;
          v80[*(&v81 + 1)] = 0;
        }

        if (*(&v77 + 1) >= v77)
        {
          if (v79)
          {
            LODWORD(v95) = 0;
            TBuffer<wchar_t>::insert(&v76, *(&v77 + 1), &v95, 1uLL);
            v17 = v76;
            --*(&v77 + 1);
          }

          else
          {
            v17 = v76;
            if (v77)
            {
              v76[v77 - 1] = 0;
            }
          }
        }

        else
        {
          v17 = v76;
          v76[*(&v77 + 1)] = 0;
        }

        if (v15 && v16 && (TRegExp::match(v15, v16, 0) & 1) != 0 || v14 && v17 && (TRegExp::match(v14, v17, 0) & 1) != 0)
        {
          goto LABEL_28;
        }

        v12 = &(*a2)[v11];
      }

      std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v87, v12);
      std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v84, (*a4 + v10 * 16));
      *(v90 + v10 * 16) = 0;
LABEL_28:
      ++v11;
      v9 = *a2;
      ++v10;
    }

    while (v11 < a2[1] - *a2);
  }

  memset(v75, 0, sizeof(v75));
  std::vector<BOOL>::reserve(v75, (v88 - v87) >> 4);
  v73 = 0;
  __p = 0;
  v74 = 0;
  std::vector<unsigned long>::reserve(&__p, (v88 - v87) >> 4);
  if (v87 != v88)
  {
    v18 = a1[45];
    ActiveConfigHandle = TParam::getActiveConfigHandle((v18 + 992));
    if (*(v18 + TParam::getValidConfig((v18 + 992), ActiveConfigHandle) + 1144) != 1)
    {
      memset(&v71, 0, sizeof(v71));
      std::vector<int>::reserve(&v71, ((v88 - v87) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v70, 0, sizeof(v70));
      std::vector<unsigned long>::reserve(v70, ((v88 - v87) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v69, 0, sizeof(v69));
      std::vector<BOOL>::reserve(v69, ((v88 - v87) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v68, 0, sizeof(v68));
      std::vector<BOOL>::reserve(v68, ((v88 - v87) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v67, 0, sizeof(v67));
      std::vector<BOOL>::reserve(v67, ((v88 - v87) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v66, 0, sizeof(v66));
      std::vector<BOOL>::reserve(v66, ((v88 - v87) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v65, 0, sizeof(v65));
      std::vector<std::pair<TWord const*,unsigned int>>::reserve(v65, ((v88 - v87) >> 4) + ((a3[1] - *a3) >> 3));
      v21 = *a3;
      v22 = a3[1];
      if (v22 != *a3)
      {
        v23 = 0;
        do
        {
          v24 = *(v21 + 8 * v23);
          std::vector<int>::push_back[abi:ne200100](&v71.__begin_, (v24 + 16));
          std::vector<unsigned long>::push_back[abi:ne200100](v70, (v24 + 8));
          LOBYTE(v95) = 0;
          std::vector<BOOL>::push_back(v69, &v95);
          LOBYTE(v95) = 0;
          std::vector<BOOL>::push_back(v68, &v95);
          LOBYTE(v95) = 0;
          std::vector<BOOL>::push_back(v67, &v95);
          LOBYTE(v95) = 0;
          std::vector<BOOL>::push_back(v66, &v95);
          v95 = *v24;
          LODWORD(v96) = 0;
          std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](v65, &v95);
          ++v23;
          v21 = *a3;
          v22 = a3[1];
        }

        while (v23 < (v22 - *a3) >> 3);
      }

      v95 = &v97;
      v96 = xmmword_26286B6F0;
      v98 = 1;
      v25 = v87;
      if (v88 != v87)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = &v25[16 * v28];
          v30 = *v29;
          std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](v65, v29);
          if (v30)
          {
            TBuffer<char>::resize(&v95, 0);
            TLocaleInfo::unicodeToMultiByte(a1[2] + 240, *v30, &v95);
            v31 = a1[44];
            if (*(&v96 + 1) >= v96)
            {
              if (v98)
              {
                LOBYTE(v93.__first_) = 0;
                TBuffer<char>::insert(&v95, *(&v96 + 1), &v93, 1uLL);
                --*(&v96 + 1);
              }

              else if (v96)
              {
                v95[v96 - 1] = 0;
              }
            }

            else
            {
              v95[*(&v96 + 1)] = 0;
            }

            *__s1 = TLmScore::getClass(v31, v95);
            std::vector<unsigned long>::push_back[abi:ne200100](v70, __s1);
            if (a1[15] || a1[17] || a1[19] || a1[21])
            {
              TWord::getTokenName(v30, &v80);
            }

            if (a1[16] || a1[18] || a1[20] || a1[22])
            {
              TWord::getCategoryTag(v30, &v76);
            }

            if (*(v87 + 16 * v28 + 8))
            {
              goto LABEL_103;
            }

            v33 = a1[45];
            v34 = TParam::getActiveConfigHandle((v33 + 1240));
            if (*(v33 + TParam::getValidConfig((v33 + 1240), v34) + 1392) == 1)
            {
              v35 = a1[44];
              if (*(&v96 + 1) >= v96)
              {
                if (v98)
                {
                  __s1[0] = 0;
                  TBuffer<char>::insert(&v95, *(&v96 + 1), __s1, 1uLL);
                  --*(&v96 + 1);
                }

                else if (v96)
                {
                  v95[v96 - 1] = 0;
                }
              }

              else
              {
                v95[*(&v96 + 1)] = 0;
              }

              if (SDWord_GetHandle(*v35, v95) == -1)
              {
                goto LABEL_103;
              }
            }

            v37 = a1[15];
            v36 = a1[16];
            if (*(&v81 + 1) >= v81)
            {
              if (v83)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), __s1, 1uLL);
                v38 = v80;
                --*(&v81 + 1);
              }

              else
              {
                v38 = v80;
                if (v81)
                {
                  v80[v81 - 1] = 0;
                }
              }
            }

            else
            {
              v38 = v80;
              v80[*(&v81 + 1)] = 0;
            }

            if (*(&v77 + 1) >= v77)
            {
              if (v79)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v76, *(&v77 + 1), __s1, 1uLL);
                v39 = v76;
                --*(&v77 + 1);
              }

              else
              {
                v39 = v76;
                if (v77)
                {
                  v76[v77 - 1] = 0;
                }
              }
            }

            else
            {
              v39 = v76;
              v76[*(&v77 + 1)] = 0;
            }

            if (v37 && v38 && (TRegExp::match(v37, v38, 0) & 1) != 0 || v36 && v39 && (TRegExp::match(v36, v39, 0) & 1) != 0)
            {
LABEL_103:
              v32 = 0;
            }

            else
            {
              v32 = 1;
            }

            v41 = a1[17];
            v40 = a1[18];
            if (*(&v81 + 1) >= v81)
            {
              if (v83)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), __s1, 1uLL);
                v42 = v80;
                --*(&v81 + 1);
              }

              else
              {
                v42 = v80;
                if (v81)
                {
                  v80[v81 - 1] = 0;
                }
              }
            }

            else
            {
              v42 = v80;
              v80[*(&v81 + 1)] = 0;
            }

            if (*(&v77 + 1) >= v77)
            {
              if (v79)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v76, *(&v77 + 1), __s1, 1uLL);
                v43 = v76;
                --*(&v77 + 1);
              }

              else
              {
                v43 = v76;
                if (v77)
                {
                  v76[v77 - 1] = 0;
                }
              }
            }

            else
            {
              v43 = v76;
              v76[*(&v77 + 1)] = 0;
            }

            v44 = (!v41 || !v42 || (TRegExp::match(v41, v42, 0) & 1) == 0) && (!v40 || !v43 || (TRegExp::match(v40, v43, 0) & 1) == 0);
            LOBYTE(v93.__first_) = v44;
            std::vector<BOOL>::push_back(v68, &v93);
            v46 = a1[19];
            v45 = a1[20];
            if (*(&v81 + 1) >= v81)
            {
              if (v83)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), __s1, 1uLL);
                v47 = v80;
                --*(&v81 + 1);
              }

              else
              {
                v47 = v80;
                if (v81)
                {
                  v80[v81 - 1] = 0;
                }
              }
            }

            else
            {
              v47 = v80;
              v80[*(&v81 + 1)] = 0;
            }

            if (*(&v77 + 1) >= v77)
            {
              if (v79)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v76, *(&v77 + 1), __s1, 1uLL);
                v48 = v76;
                --*(&v77 + 1);
              }

              else
              {
                v48 = v76;
                if (v77)
                {
                  v76[v77 - 1] = 0;
                }
              }
            }

            else
            {
              v48 = v76;
              v76[*(&v77 + 1)] = 0;
            }

            v49 = (!v46 || !v47 || (TRegExp::match(v46, v47, 0) & 1) == 0) && (!v45 || !v48 || (TRegExp::match(v45, v48, 0) & 1) == 0);
            LOBYTE(v93.__first_) = v49;
            std::vector<BOOL>::push_back(v67, &v93);
            v51 = a1[21];
            v50 = a1[22];
            if (*(&v81 + 1) >= v81)
            {
              if (v83)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v80, *(&v81 + 1), __s1, 1uLL);
                v52 = v80;
                --*(&v81 + 1);
              }

              else
              {
                v52 = v80;
                if (v81)
                {
                  v80[v81 - 1] = 0;
                }
              }
            }

            else
            {
              v52 = v80;
              v80[*(&v81 + 1)] = 0;
            }

            if (*(&v77 + 1) >= v77)
            {
              if (v79)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v76, *(&v77 + 1), __s1, 1uLL);
                v53 = v76;
                --*(&v77 + 1);
              }

              else
              {
                v53 = v76;
                if (v77)
                {
                  v76[v77 - 1] = 0;
                }
              }
            }

            else
            {
              v53 = v76;
              v76[*(&v77 + 1)] = 0;
            }

            v54 = (!v51 || !v52 || (TRegExp::match(v51, v52, 0) & 1) == 0) && (!v50 || !v53 || (TRegExp::match(v50, v53, 0) & 1) == 0);
            LOBYTE(v93.__first_) = v54;
            std::vector<BOOL>::push_back(v66, &v93);
          }

          else
          {
            *__s1 = 0;
            std::vector<unsigned long>::push_back[abi:ne200100](v70, __s1);
            __s1[0] = 0;
            std::vector<BOOL>::push_back(v68, __s1);
            __s1[0] = 0;
            std::vector<BOOL>::push_back(v67, __s1);
            __s1[0] = 0;
            std::vector<BOOL>::push_back(v66, __s1);
            v32 = 0;
          }

          v55 = v26;
          if (v26 < (v91 - v90) >> 4)
          {
            v55 = v26;
            v56 = v90 + 16 * v26;
            do
            {
              if (!*v56)
              {
                goto LABEL_171;
              }

              ++v55;
              v56 += 2;
            }

            while ((v91 - v90) >> 4 != v55);
            v55 = (v91 - v90) >> 4;
          }

LABEL_171:
          __s1[0] = v32 & v27 & (v55 == v26);
          std::vector<BOOL>::push_back(v69, __s1);
          v26 = v55 + 1;
          ++v28;
          v25 = v87;
          v27 = v32;
        }

        while (v28 < (v88 - v87) >> 4);
        v21 = *a3;
        v22 = a3[1];
      }

      if (v22 != v21)
      {
        v57 = 0;
        do
        {
          v58 = *(v21 + 8 * v57);
          if (v58)
          {
            MEMORY[0x26672B1B0](v58, 0x1060C408A10481FLL);
            v21 = *a3;
            v22 = a3[1];
          }

          ++v57;
        }

        while (v57 < (v22 - v21) >> 3);
      }

      std::vector<TItnRule *>::resize(a3, 0);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v62, v71.__begin_, v71.__end_, v71.__end_ - v71.__begin_);
      *__s1 = 0;
      std::vector<int>::push_back[abi:ne200100](&v62, __s1);
      v59 = v62;
      if (a1[38] + 1 == (v63 - v62) >> 2)
      {
        v60 = v63 - (v62 + 4);
        if (v63 != v62 + 4)
        {
          memmove(v62, v62 + 4, v63 - (v62 + 4));
        }

        v63 = &v59[v60];
      }

      operator new();
    }

    if (v88 != v87)
    {
      v20 = 0;
      do
      {
        LOBYTE(v95) = 0;
        std::vector<BOOL>::push_back(v75, &v95);
        v95 = 0;
        std::vector<double>::push_back[abi:ne200100](&__p, &v95);
        ++v20;
      }

      while (v20 < (v88 - v87) >> 4);
    }
  }

  TCompounder::makeResult(a1, a5, &v87, &v90, &v84, v75, &__p);
  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  if (v75[0])
  {
    operator delete(v75[0]);
  }

  if (v79 == 1 && v76 != v78 && v76)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v83 == 1 && v80 != v82 && v80)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_262811C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a52)
  {
    operator delete(a52);
  }

  if (a55)
  {
    operator delete(a55);
  }

  if (LOBYTE(STACK[0xD40]) == 1 && STACK[0xC28] != a12 && STACK[0xC28] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (a64)
  {
    operator delete(a64);
  }

  if (a65)
  {
    operator delete(a65);
  }

  if (a66)
  {
    operator delete(a66);
  }

  v68 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v68;
    operator delete(v68);
  }

  v69 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v69;
    operator delete(v69);
  }

  v70 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v70;
    operator delete(v70);
  }

  if (STACK[0x248])
  {
    operator delete(STACK[0x248]);
  }

  if (LOBYTE(STACK[0x678]) == 1)
  {
    v71 = STACK[0x260];
    if (STACK[0x260] != a13)
    {
      if (v71)
      {
        MEMORY[0x26672B1B0](v71, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xA98]) == 1)
  {
    v72 = STACK[0x680];
    if (STACK[0x680] != a14)
    {
      if (v72)
      {
        MEMORY[0x26672B1B0](v72, 0x1000C4052888210);
      }
    }
  }

  v73 = STACK[0xAA0];
  if (STACK[0xAA0])
  {
    STACK[0xAA8] = v73;
    operator delete(v73);
  }

  v74 = STACK[0xAB8];
  if (STACK[0xAB8])
  {
    STACK[0xAC0] = v74;
    operator delete(v74);
  }

  v75 = STACK[0xAD0];
  if (STACK[0xAD0])
  {
    STACK[0xAD8] = v75;
    operator delete(v75);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<TWord const*,unsigned long>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void sub_26281213C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::push_back(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
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
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(this, __n);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void TCompounder::applyInternal(void *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v9 = a3;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v12 = a4 - a3;
  std::vector<std::pair<TWord const*,unsigned int>>::reserve(&v47, a4 - a3);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  std::vector<std::pair<TWord const*,unsigned long>>::reserve(&v44, v12);
  v40 = v42;
  v41 = xmmword_26286B6F0;
  v43 = 1;
  v36 = v38;
  v37 = xmmword_26286B6F0;
  v39 = 1;
  if (a4 > v9)
  {
    do
    {
      std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v47, (*a2 + 16 * v9));
      std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v44, (*a6 + 16 * v9));
      v13 = *(*a2 + 16 * v9);
      if (v13)
      {
        if (a1[13])
        {
          TWord::getTokenName(*(*a2 + 16 * v9), &v40);
        }

        v14 = a1[14];
        if (v14)
        {
          TWord::getCategoryTag(v13, &v36);
          v14 = a1[14];
        }

        v15 = a1[13];
        if (*(&v41 + 1) >= v41)
        {
          if (v43)
          {
            v50[0] = 0;
            TBuffer<wchar_t>::insert(&v40, *(&v41 + 1), v50, 1uLL);
            v16 = v40;
            --*(&v41 + 1);
          }

          else
          {
            v16 = v40;
            if (v41)
            {
              v40[v41 - 1] = 0;
            }
          }
        }

        else
        {
          v16 = v40;
          v40[*(&v41 + 1)] = 0;
        }

        if (*(&v37 + 1) >= v37)
        {
          if (v39)
          {
            v50[0] = 0;
            TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), v50, 1uLL);
            v17 = v36;
            --*(&v37 + 1);
          }

          else
          {
            v17 = v36;
            if (v37)
            {
              v36[v37 - 1] = 0;
            }
          }
        }

        else
        {
          v17 = v36;
          v36[*(&v37 + 1)] = 0;
        }

        if (v15 && v16 && (TRegExp::match(v15, v16, 0) & 1) != 0 || v14 && v17 && TRegExp::match(v14, v17, 0))
        {
          TCompounder::applyModelMBR(a1, &v47, a5, &v44, a7);
          v19 = *a5;
          v18 = a5[1];
          if ((v18 - *a5) >= 9)
          {
            v20 = 0;
            v21 = *(v18 - 8);
            do
            {
              v22 = *(v19 + 8 * v20);
              if (v22)
              {
                MEMORY[0x26672B1B0](v22, 0x1060C408A10481FLL);
                v19 = *a5;
                v18 = a5[1];
              }

              ++v20;
            }

            while (v20 < ((v18 - v19) >> 3) - 1);
            std::vector<TItnRule *>::resize(a5, 0);
            v24 = a5[1];
            v23 = a5[2];
            if (v24 >= v23)
            {
              v26 = (v24 - *a5) >> 3;
              if ((v26 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v27 = v23 - *a5;
              v28 = v27 >> 2;
              if (v27 >> 2 <= (v26 + 1))
              {
                v28 = v26 + 1;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a5, v29);
              }

              v30 = (8 * v26);
              *v30 = v21;
              v25 = 8 * v26 + 8;
              v31 = a5[1] - *a5;
              v32 = v30 - v31;
              memcpy(v30 - v31, *a5, v31);
              v33 = *a5;
              *a5 = v32;
              a5[1] = v25;
              a5[2] = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v24 = v21;
              v25 = (v24 + 1);
            }

            a5[1] = v25;
          }

          std::vector<std::pair<TWord const*,unsigned int>>::resize(&v47, 0);
          std::vector<std::pair<TWord const*,unsigned long>>::resize(&v44, 0);
        }
      }

      ++v9;
    }

    while (v9 != a4);
  }

  if (v47 != v48)
  {
    TCompounder::applyModelMBR(a1, &v47, a5, &v44, a7);
  }

  if (v39 == 1 && v36 != v38 && v36)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v43 == 1 && v40 != v42 && v40)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_262812868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != a9 && a13 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x858]) == 1)
  {
    v16 = STACK[0x440];
    if (STACK[0x440] != a10)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  v17 = *(v13 - 144);
  if (v17)
  {
    *(v13 - 136) = v17;
    operator delete(v17);
  }

  v18 = *(v13 - 120);
  if (v18)
  {
    *(v13 - 112) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<TWord const*,unsigned int>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<TWord const*,unsigned int>>::__append(result, a2 - v2);
  }
}

void std::vector<std::pair<TWord const*,unsigned long>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<TWord const*,unsigned long>>::__append(result, a2 - v2);
  }
}

void TCompounder::apply(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<std::pair<TWord const*,unsigned long>>::reserve(&v35, (a2[1] - *a2) >> 3);
  std::vector<std::pair<TWord const*,unsigned int>>::reserve(&__p, (a2[1] - *a2) >> 3);
  v12 = *a2;
  if (a2[1] == *a2)
  {
    v14 = 0;
    v15 = a4;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = a4;
    do
    {
      if (v13 < a3 || v13 >= a4)
      {
        *&v31 = *(v12 + 8 * v13);
        DWORD2(v31) = 0;
        std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&__p, &v31);
        v31 = 0uLL;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v35, &v31);
      }

      else if ((*TWord::getOptionalTagBits(*(v12 + 8 * v13)) & 0x80) != 0)
      {
        if (a3 == (v36 - v35) >> 4)
        {
          ++v14;
        }

        else
        {
          v16 = v36;
          v17 = *(v36 - 1) + 1;
          *(v36 - 2) = *(*a2 + 8 * v13);
          *(v16 - 1) = v17;
        }

        --v15;
      }

      else
      {
        *&v31 = *(*a2 + 8 * v13);
        DWORD2(v31) = 0;
        std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&__p, &v31);
        v31 = 0uLL;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v35, &v31);
      }

      ++v13;
      v12 = *a2;
    }

    while (v13 < (a2[1] - *a2) >> 3);
  }

  TCompounder::apply(a1, &__p, a3, v15, a5, &v35, a6);
  v18 = *a6;
  v19 = a6[1];
  if (*a6 == v19)
  {
    if (v14)
    {
      *&v31 = 0;
      *(&v31 + 1) = v14;
      std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a6, &v31);
    }
  }

  else
  {
    v20 = 0;
    v21 = (v19 - v18) >> 4;
    if (v21 <= 1)
    {
      v21 = 1;
    }

    v22 = v35 + 8;
    do
    {
      v23 = v18 + 16 * v20;
      v26 = *(v23 + 8);
      v24 = (v23 + 8);
      v25 = v26;
      if (v26)
      {
        v27 = 0;
        v28 = &v22[16 * a3];
        v29 = v25;
        do
        {
          v30 = *v28;
          v28 += 16;
          v27 += v30;
          --v29;
        }

        while (v29);
        a3 += v25;
      }

      else
      {
        v27 = 0;
      }

      *v24 = v25 + v27;
      if (a3 >= v15)
      {
        break;
      }

      ++v20;
    }

    while (v20 != v21);
    *(v18 + 8) += v14;
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_262812BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void TCompounder::apply(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v13 = *(a1 + 360);
  v14 = *(v13 + 136);
  *(v13 + 136) = a5;
  *(a1 + 56) = 0;
  TCompounder::applyInternal(a1, a2, 0, a3, &v26, a6, a7);
  v15 = *(a1 + 360);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 496));
  *(a1 + 56) = *(v15 + TParam::getValidConfig((v15 + 496), ActiveConfigHandle) + 648);
  std::vector<std::pair<TWord const*,unsigned long>>::resize(a7, 0);
  TCompounder::applyInternal(a1, a2, a3, a4, &v26, a6, a7);
  v17 = v26;
  v18 = v27;
  if (v27 != v26)
  {
    v19 = 0;
    do
    {
      if (v17[v19])
      {
        MEMORY[0x26672B1B0](v17[v19], 0x1060C408A10481FLL);
        v17 = v26;
        v18 = v27;
      }

      ++v19;
    }

    while (v19 < (v18 - v17) >> 3);
  }

  if (*(a1 + 56))
  {
    v20 = *(a1 + 360);
    v21 = (v20 + 512);
    if (*(v20 + 535) < 0)
    {
      v21 = *v21;
    }

    loggableUnicode(v21, __p);
    if (v25 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    tknPrintf("%s: UTT_BOUNDARY\n", v22, v23);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = v26;
  }

  *(v13 + 136) = v14;
  if (v17)
  {
    v27 = v17;
    operator delete(v17);
  }
}

void sub_262812DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  *(v18 + 136) = v19;
  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void TCompounder::apply(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  *(*(a1 + 360) + 136) = a4;
  if (*(a3[32] + 8) != *(*(a1 + 16) + 8))
  {
    tknPrintf("Error: The lattice lexicon handle does not match the lattice processor's lexicon handle.\n", a2);
    std::string::basic_string[abi:ne200100]<0>(v87, &byte_262899963);
    *v77 = byte_287529580;
    if (SHIBYTE(v88) < 0)
    {
      std::string::__init_copy_ctor_external(&v77[8], v87[0], v87[1]);
    }

    else
    {
      *&v77[8] = *v87;
      v78 = v88;
    }

    *v77 = &unk_287528000;
    if (v78 >= 0)
    {
      v67 = &v77[8];
    }

    else
    {
      v67 = *&v77[8];
    }

    conditionalAssert(v67, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2091);
    *v77 = byte_287529580;
    if (SHIBYTE(v78) < 0)
    {
      operator delete(*&v77[8]);
    }

    if (SHIBYTE(v88) < 0)
    {
      operator delete(v87[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v77, &byte_262899963);
    *exception = byte_287529580;
    v69 = (exception + 1);
    if ((v77[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v69, *v77, *&v77[8]);
    }

    else
    {
      v70 = *v77;
      exception[3] = *&v77[16];
      *&v69->__r_.__value_.__l.__data_ = v70;
    }

    *exception = &unk_287528000;
  }

  v5 = a3;
  v7 = a3[15];
  v76 = a3[8];
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v8 = *a2;
  if (a2[1] == *a2)
  {
    v11 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      Word = TLexicon::findWord(*(a1 + 16), *(v8 + 8 * v9));
      if (!Word)
      {
        Word = TLexicon::addTempWord(*(a1 + 16), *(*a2 + 8 * v9), 0, 0, 0);
      }

      *v77 = Word;
      *&v77[8] = 0;
      std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v101, v77);
      ++v9;
      v8 = *a2;
    }

    while (v9 < (a2[1] - *a2) >> 3);
    v11 = v102 - v101;
  }

  v98 = 0;
  v99 = 0;
  v100 = 0;
  TFsa::topologicalSort(v5 + 3, &v98);
  v13 = v98;
  v12 = v99;
  v14 = (v99 - v98) >> 3;
  v16 = v5[16];
  v15 = v5[17];
  v95 = 0;
  v96 = 0;
  v97 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v94, v14 + 1);
  std::vector<TCompoundPath>::vector[abi:ne200100](&v93, (v12 - v13) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](&v92, (v12 - v13) >> 3);
  std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::vector[abi:ne200100](&v91, (v15 - v16) >> 3);
  v72 = v12 - v13;
  memset(&v90[3], 0, 24);
  *v77 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](v90, (v12 - v13) >> 3, v77);
  v71 = v11;
  v89 = 0;
  TAllocator::TAllocator(v87, 2048);
  v75 = v7 + 1;
  v17 = v5;
  if (v12 != v13)
  {
    v18 = 0;
    if (v14 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v12 - v13) >> 3;
    }

    v73 = v19;
    while (1)
    {
      v20 = *(v98 + 8 * v18);
      *(v92 + 8 * *v20) = v18;
      *(v94 + 8 * v18) = (v96 - v95) >> 3;
      v21 = v20[2];
      if (v21)
      {
        break;
      }

LABEL_40:
      if (++v18 == v73)
      {
        goto LABEL_41;
      }
    }

    while (1)
    {
      v22 = *v21;
      if (**v21 != 2)
      {
        break;
      }

      v24 = v22[1];
      v23 = TLexicon::findWord(*(a1 + 16), v24);
      if (!v23)
      {
        v23 = TLexicon::addTempWord(*(a1 + 16), v24, 0, 0, 0);
      }

      if (v22[2])
      {
        goto LABEL_21;
      }

      v25 = *TWord::getOptionalTagBits(v23) >> 7;
LABEL_22:
      v26 = *(v21 + 8);
      v27 = *(v92 + 8 * **(v21 + 24));
      v28 = v93;
      v29 = *(v93 + 24 * v27 + 16);
      if (v29 == -1)
      {
        v29 = 0;
      }

      v30 = v29 + v22[5];
      v31 = *(v22 + 4);
      v32 = v91 + 24 * v26;
      *v32 = v23;
      *(v32 + 8) = v31;
      *(v32 + 16) = v25;
      v33 = (v28 + 24 * v18);
      if (v30 < v33[2])
      {
        *v33 = v27;
        v33[1] = v26;
        v33[2] = v30;
      }

      v34 = (v94 + 8 * v27);
      v36 = *v34;
      v35 = v34[1];
      v37 = *v34 == v35;
      if (*v34 < v35)
      {
        v37 = 0;
        do
        {
          v38 = *(v95 + 8 * v36);
          if (*(v38 + 16) == 1)
          {
            v39 = TAllocator::allocate(v87, 24);
            *(v39 + 17) = 0;
            *v39 = v38;
            v39[1] = v26;
            *(v39 + 16) = v25;
            *v77 = v39;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v95, v77);
          }

          else if (v25)
          {
            v40 = TAllocator::allocate(v87, 24);
            *v40 = v38;
            v40[1] = v26;
            *(v40 + 8) = 0;
            *v77 = v40;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v95, v77);
          }

          else
          {
            if (v75 != v76 && (*(v38 + 17) & 1) == 0)
            {
              createTransitionForProduction(v17, *(v95 + 8 * v36), &v91, v90, &v89);
            }

            v37 = 1;
          }

          ++v36;
        }

        while (v35 != v36);
      }

      if (v37)
      {
        v41 = TAllocator::allocate(v87, 24);
        *(v41 + 17) = 0;
        *v41 = 0;
        v41[1] = v26;
        *(v41 + 16) = v25;
        *v77 = v41;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v95, v77);
      }

      v21 = *(v21 + 32);
      v5 = v17;
      if (!v21)
      {
        goto LABEL_40;
      }
    }

    v23 = 0;
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

LABEL_41:
  *(v94 + v72) = (v96 - v95) >> 3;
  v43 = v5[25];
  v42 = v5[26];
  if (v43 != v42)
  {
    while (!*v43)
    {
      if (++v43 == v42)
      {
        goto LABEL_71;
      }
    }
  }

  if (v43 == v42)
  {
LABEL_71:
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  else
  {
    v44 = -1;
    v45 = -1;
    do
    {
      v46 = *(v92 + 8 * **v43);
      if (*(v93 + 24 * v46 + 16) < v45)
      {
        v45 = *(v93 + 24 * v46 + 16);
        v44 = *(v92 + 8 * **v43);
      }

      if (v75 != v76)
      {
        v47 = (v94 + 8 * v46);
        v48 = *v47;
        v49 = v47[1];
        if (*v47 < v49)
        {
          do
          {
            v50 = *(v95 + 8 * v48);
            if ((*(v50 + 17) & 1) == 0 && (*(v50 + 16) & 1) == 0)
            {
              createTransitionForProduction(v17, v50, &v91, v90, &v89);
            }

            ++v48;
          }

          while (v49 != v48);
        }
      }

      v51 = v43 + 1;
      do
      {
        v43 = v51;
        if (v51 == v42)
        {
          break;
        }

        ++v51;
      }

      while (!*v43);
    }

    while (v43 != *(v17 + 208));
    v84 = 0;
    v85 = 0;
    v86 = 0;
    if (v44 != -1)
    {
      v52 = (v93 + 24 * v44);
      v53 = v71;
      if (*v52 != -1)
      {
        do
        {
          std::vector<unsigned long>::push_back[abi:ne200100](&v84, v52 + 1);
          v44 = *(v93 + 24 * v44);
          v52 = (v93 + 24 * v44);
        }

        while (*v52 != -1);
        v54 = v85 - 8;
        if (v84 != v85 && v54 > v84)
        {
          v56 = v84 + 8;
          do
          {
            v57 = *(v56 - 1);
            *(v56 - 1) = *v54;
            *v54 = v57;
            v54 -= 8;
            v58 = v56 >= v54;
            v56 += 8;
          }

          while (!v58);
        }
      }

LABEL_73:
      *v77 = 0;
      *&v77[8] = 0;
      std::vector<std::pair<TWord const*,unsigned long>>::vector[abi:ne200100](&v82, v53 >> 4, v77);
      v60 = v84;
      v59 = v85;
      if (v85 != v84)
      {
        v61 = 0;
        do
        {
          v62 = v91 + 24 * *&v60[8 * v61];
          if (*(v62 + 16) == 1)
          {
            if (v83 - v82 > v53)
            {
              v63 = v83;
              v64 = *(v83 - 8) + 1;
              *(v83 - 16) = *v62;
              *(v63 - 8) = v64;
            }
          }

          else
          {
            std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v101, v62);
            *v77 = 0;
            *&v77[8] = 0;
            std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v82, v77);
            v60 = v84;
            v59 = v85;
          }

          ++v61;
        }

        while (v61 < (v59 - v60) >> 3);
      }

      __p = 0;
      v80 = 0;
      v81 = 0;
      TCompounder::apply(a1, &v101, v53 >> 4, (v102 - v101) >> 4, a4, &v82, &__p);
      if (v80 == __p)
      {
        v65 = v89;
        if (v89 <= 1)
        {
          v65 = 1;
        }
      }

      else
      {
        if (v75 != v76 && (v80 - __p) >> 4 >= (((v102 - v101) >> 4) - (v53 >> 4)))
        {
LABEL_94:
          operator new();
        }

        if (v85 != v84)
        {
          operator new();
        }

        if (v75 == v76)
        {
          v66 = v89 + 1;
        }

        else
        {
          v66 = v89 - 1;
        }

        v65 = v66 + ((v80 - __p) >> 4);
      }

      v89 = v65;
      goto LABEL_94;
    }
  }

  v53 = v71;
  goto LABEL_73;
}

void sub_262813AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, void *a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v63 & 1) == 0)
    {
LABEL_6:
      *(a13 + 136) = a12;
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

void createTransitionForProduction(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v5 = a4;
  *(a2 + 17) = 1;
  v6 = *a2;
  v7 = *(*(a1 + 128) + 8 * *(a2 + 8));
  v8 = *v7[3];
  v9 = *v7[2];
  v10 = *v7;
  v11 = *(v10 + 40);
  v12 = *(v10 + 64);
  v25[0] = *(v10 + 48);
  v25[1] = v12;
  v13 = *(v10 + 128);
  v14 = *(v10 + 80);
  v15 = *(v10 + 96);
  v25[4] = *(v10 + 112);
  v25[5] = v13;
  v25[2] = v14;
  v25[3] = v15;
  if (v6)
  {
    v22 = v9;
    v23 = a5;
    do
    {
      v17 = *(*(a1 + 128) + 8 * v6[1]);
      v8 = *v17[3];
      v18 = (*v17)[5];
      if (*(a1 + 248) == 1)
      {
        TLatticeProcessor::combineMrecData(v25, (*v17 + 6), 0);
      }

      v11 += v18;
      v6 = *v6;
    }

    while (v6);
    a5 = v23;
    v5 = a4;
    v9 = v22;
  }

  v19 = *v5;
  if (*(*v5 + 8 * v8) == -1)
  {
    v20 = *a5;
    *(v19 + 8 * v8) = *a5;
    *a5 = v20 + 1;
  }

  if (*(v19 + 8 * v9) == -1)
  {
    v21 = *a5;
    *(v19 + 8 * v9) = *a5;
    *a5 = v21 + 1;
  }

  operator new();
}