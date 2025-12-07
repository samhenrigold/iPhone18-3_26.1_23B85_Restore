void sub_262597924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void std::vector<TGrammarCompiler::TArgument>::resize(void *result, unint64_t a2)
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
    std::vector<TGrammarCompiler::TArgument>::__append(result, a2 - v2);
  }
}

void std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarCompiler::TArgument>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *TGrammarCompiler::makeClientData(uint64_t *a1, __int128 *a2, uint64_t a3, TAllocator *this)
{
  if ((a3 + 1) >> 61)
  {
    v8 = -1;
  }

  else
  {
    v8 = 8 * (a3 + 1);
  }

  v9 = TAllocator::allocate(this, v8);
  v10 = v9;
  if (a3)
  {
    v11 = v9;
    v12 = a3;
    do
    {
      v13 = TAllocator::allocate(this, 24);
      v14 = *a1++;
      *v13 = v14;
      v15 = *a2++;
      *(v13 + 1) = v15;
      *v11++ = v13;
      --v12;
    }

    while (v12);
  }

  v10[a3] = 0;
  return v10;
}

void *TFunctionDescr::TFunctionDescr(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  MEMORY[0x26672AF30]();
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  a1[6] = a6;
  a1[7] = a7;
  return a1;
}

void sub_262597CB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void **compileInstruction(TLexer *a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  Token = nextToken(a1, a2);
  v9 = *Token;
  if (*Token > 17)
  {
    if (v9 != 20)
    {
      if (v9 != 18)
      {
LABEL_42:
        loggableToken(a1, Token);
        if (__p[23] >= 0)
        {
          v39 = __p;
        }

        else
        {
          v39 = *__p;
        }

        tknPrintf("Error: %sExpected an attribute or a condition\n", v38, v39);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v83, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v84) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v83[0], v83[1]);
        }

        else
        {
          *&__p[8] = *v83;
          v86 = v84;
        }

        *__p = &unk_287527330;
        if (v86 >= 0)
        {
          v55 = &__p[8];
        }

        else
        {
          v55 = *&__p[8];
        }

        conditionalAssert(v55, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 712);
        *__p = byte_287529580;
        if (SHIBYTE(v86) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v84) < 0)
        {
          operator delete(v83[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v57 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v57, *__p, *&__p[8]);
        }

        else
        {
          v76 = *__p;
          exception[3] = *&__p[16];
          *&v57->__r_.__value_.__l.__data_ = v76;
        }

        *exception = &unk_287527330;
      }

      v12 = *(a1 + 3);
      if (v12)
      {
        *(a1 + 3) = v12 - 1;
      }

      nextToken(a1, Token);
      v14 = nextToken(a1, v13);
      if (*v14 != 6)
      {
        loggableToken(a1, v14);
        if (__p[23] >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = *__p;
        }

        tknPrintf("Error: %sExpected '(' after 'if'\n", v40, v41);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v83, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v84) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v83[0], v83[1]);
        }

        else
        {
          *&__p[8] = *v83;
          v86 = v84;
        }

        *__p = &unk_287527330;
        if (v86 >= 0)
        {
          v58 = &__p[8];
        }

        else
        {
          v58 = *&__p[8];
        }

        conditionalAssert(v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 566);
        *__p = byte_287529580;
        if (SHIBYTE(v86) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v84) < 0)
        {
          operator delete(v83[0]);
        }

        v59 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v59 = byte_287529580;
        v60 = (v59 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v60, *__p, *&__p[8]);
        }

        else
        {
          v77 = *__p;
          v59[3] = *&__p[16];
          *&v60->__r_.__value_.__l.__data_ = v77;
        }

        *v59 = &unk_287527330;
      }

      compileExpression(a1, a2, a3, a4);
      v16 = nextToken(a1, v15);
      if (*v16 != 7)
      {
        loggableToken(a1, v16);
        if (__p[23] >= 0)
        {
          v47 = __p;
        }

        else
        {
          v47 = *__p;
        }

        tknPrintf("Error: %s() mismatch\n", v46, v47);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v83, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v84) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v83[0], v83[1]);
        }

        else
        {
          *&__p[8] = *v83;
          v86 = v84;
        }

        *__p = &unk_287527330;
        if (v86 >= 0)
        {
          v67 = &__p[8];
        }

        else
        {
          v67 = *&__p[8];
        }

        conditionalAssert(v67, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 577);
        *__p = byte_287529580;
        if (SHIBYTE(v86) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v84) < 0)
        {
          operator delete(v83[0]);
        }

        v68 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v68 = byte_287529580;
        v69 = (v68 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v69, *__p, *&__p[8]);
        }

        else
        {
          v80 = *__p;
          v68[3] = *&__p[16];
          *&v69->__r_.__value_.__l.__data_ = v80;
        }

        *v68 = &unk_287527330;
      }

      *__p = 9;
      TBuffer<wchar_t>::insert(a2, a2[2], __p, 1uLL);
      v17 = a2[2];
      *__p = 0;
      TBuffer<wchar_t>::insert(a2, v17, __p, 1uLL);
      v19 = nextToken(a1, v18);
      v20 = *(a1 + 3);
      if (v20)
      {
        *(a1 + 3) = v20 - 1;
      }

      if (*v19 == 14)
      {
        compileCode(a1, a2, a3, a4);
      }

      else
      {
        compileInstruction(a1, a2, a3, a4);
      }

      if (*nextToken(a1, v21) == 19)
      {
        *__p = 8;
        TBuffer<wchar_t>::insert(a2, a2[2], __p, 1uLL);
        v33 = a2[2];
        *__p = 0;
        TBuffer<wchar_t>::insert(a2, v33, __p, 1uLL);
        *(*a2 + v17) = *(a2 + 4) - v17 + 1;
        v35 = nextToken(a1, v34);
        v36 = *(a1 + 3);
        if (v36)
        {
          *(a1 + 3) = v36 - 1;
        }

        if (*v35 == 14)
        {
          compileCode(a1, a2, a3, a4);
        }

        else
        {
          compileInstruction(a1, a2, a3, a4);
        }

        v32 = a2[2];
        *(*a2 + v33) = v32 - v33 + 1;
      }

      else
      {
        v32 = a2[2];
        *(*a2 + v17) = v32 - v17 + 1;
        v37 = *(a1 + 3);
        if (v37)
        {
          *(a1 + 3) = v37 - 1;
        }
      }

      *__p = 7;
      return TBuffer<wchar_t>::insert(a2, v32, __p, 1uLL);
    }

    v31 = nextToken(a1, Token);
    if (*v31 != 10)
    {
      loggableToken(a1, v31);
      if (__p[23] >= 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = *__p;
      }

      tknPrintf("Error: %sMissing ';'\n", v44, v45);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v83, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v84) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v83[0], v83[1]);
      }

      else
      {
        *&__p[8] = *v83;
        v86 = v84;
      }

      *__p = &unk_287527330;
      if (v86 >= 0)
      {
        v64 = &__p[8];
      }

      else
      {
        v64 = *&__p[8];
      }

      conditionalAssert(v64, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 694);
      *__p = byte_287529580;
      if (SHIBYTE(v86) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      v65 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v65 = byte_287529580;
      v66 = (v65 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v66, *__p, *&__p[8]);
      }

      else
      {
        v79 = *__p;
        v65[3] = *&__p[16];
        *&v66->__r_.__value_.__l.__data_ = v79;
      }

      *v65 = &unk_287527330;
    }

    *__p = 11;
LABEL_29:
    v32 = a2[2];
    return TBuffer<wchar_t>::insert(a2, v32, __p, 1uLL);
  }

  if (v9 == 1)
  {
    v22 = *(a1 + 3);
    if (v22)
    {
      *(a1 + 3) = v22 - 1;
    }

    v23 = nextToken(a1, Token);
    *__p = *(v23 + 8);
    if (a3 + 8 != std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a3, __p))
    {
      loggableToken(a1, v23);
      if (__p[23] >= 0)
      {
        v43 = __p;
      }

      else
      {
        v43 = *__p;
      }

      tknPrintf("Error: %sIllegal array assignment.\n", v42, v43);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v83, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v84) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v83[0], v83[1]);
      }

      else
      {
        *&__p[8] = *v83;
        v86 = v84;
      }

      *__p = &unk_287527330;
      if (v86 >= 0)
      {
        v61 = &__p[8];
      }

      else
      {
        v61 = *&__p[8];
      }

      conditionalAssert(v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 646);
      *__p = byte_287529580;
      if (SHIBYTE(v86) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      v62 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v62 = byte_287529580;
      v63 = (v62 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v63, *__p, *&__p[8]);
      }

      else
      {
        v78 = *__p;
        v62[3] = *&__p[16];
        *&v63->__r_.__value_.__l.__data_ = v78;
      }

      *v62 = &unk_287527330;
    }

    v25 = nextToken(a1, v24);
    if (*v25 != 11)
    {
      loggableToken(a1, v25);
      v48 = __p[23];
      v49 = *__p;
      loggableUnicode(*(v23 + 8), v83);
      if (v48 >= 0)
      {
        v51 = __p;
      }

      else
      {
        v51 = v49;
      }

      if (v84 >= 0)
      {
        v52 = v83;
      }

      else
      {
        v52 = v83[0];
      }

      tknPrintf("Error: %sExpected '=' after %s\n", v50, v51, v52);
      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v83, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v84) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v83[0], v83[1]);
      }

      else
      {
        *&__p[8] = *v83;
        v86 = v84;
      }

      *__p = &unk_287527330;
      if (v86 >= 0)
      {
        v73 = &__p[8];
      }

      else
      {
        v73 = *&__p[8];
      }

      conditionalAssert(v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 654);
      *__p = byte_287529580;
      if (SHIBYTE(v86) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      v74 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v74 = byte_287529580;
      v75 = (v74 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v75, *__p, *&__p[8]);
      }

      else
      {
        v82 = *__p;
        v74[3] = *&__p[16];
        *&v75->__r_.__value_.__l.__data_ = v82;
      }

      *v74 = &unk_287527330;
    }

    compileExpression(a1, a2, a3, a4);
    v27 = nextToken(a1, v26);
    if (*v27 != 10)
    {
      loggableToken(a1, v27);
      if (__p[23] >= 0)
      {
        v54 = __p;
      }

      else
      {
        v54 = *__p;
      }

      tknPrintf("Error: %sMissing ';'\n", v53, v54);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v83, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v84) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v83[0], v83[1]);
      }

      else
      {
        *&__p[8] = *v83;
        v86 = v84;
      }

      *__p = &unk_287527330;
      if (v86 >= 0)
      {
        v70 = &__p[8];
      }

      else
      {
        v70 = *&__p[8];
      }

      conditionalAssert(v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 665);
      *__p = byte_287529580;
      if (SHIBYTE(v86) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      v71 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v71 = byte_287529580;
      v72 = (v71 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v72, *__p, *&__p[8]);
      }

      else
      {
        v81 = *__p;
        v71[3] = *&__p[16];
        *&v72->__r_.__value_.__l.__data_ = v81;
      }

      *v71 = &unk_287527330;
    }

    *__p = 5;
    TBuffer<wchar_t>::insert(a2, a2[2], __p, 1uLL);
    v28 = 0;
    v29 = *(v23 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(a2, a2[2], v29, v28 - 1);
    *__p = 0;
    goto LABEL_29;
  }

  if (v9 != 14)
  {
    goto LABEL_42;
  }

  v10 = *(a1 + 3);
  if (v10)
  {
    *(a1 + 3) = v10 - 1;
  }

  return compileCode(a1, a2, a3, a4);
}

void sub_262598C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

const void **compileExpression(TLexer *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v5 = a2;
  v7 = 0;
  v190 = *MEMORY[0x277D85DE8];
  do
  {
    v8 = &v189[v7];
    *v8 = 0;
    *(v8 + 1) = 0;
    v7 += 4;
  }

  while (v7 != 512);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v181 = a3 + 8;
  while (1)
  {
    v182 = v10;
    for (i = v9; ; i = 0)
    {
      result = nextToken(a1, a2);
      v14 = result;
      v15 = *result;
      if (*result != 5)
      {
        break;
      }

      if ((i & 1) == 0)
      {
        loggableToken(a1, result);
        if (v187[23] >= 0)
        {
          v73 = v187;
        }

        else
        {
          v73 = *v187;
        }

        tknPrintf("Error: %sExpected an operand\n", v72, v73);
        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287527330;
        if (v188 >= 0)
        {
          v90 = &v187[8];
        }

        else
        {
          v90 = *&v187[8];
        }

        conditionalAssert(v90, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 363);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *exception = byte_287529580;
        v92 = (exception + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v92, *v187, *&v187[8]);
        }

        else
        {
          v111 = *v187;
          exception[3] = *&v187[16];
          *&v92->__r_.__value_.__l.__data_ = v111;
        }

        *exception = &unk_287527330;
      }

      OperatorId = getOperatorId(result[1]);
      if (v11 >= 1)
      {
        do
        {
          v17 = *&v187[v11 + 16];
          if (v17 > OperatorId)
          {
            break;
          }

          if ((v17 & 0xFFFFFFFE) == 0x14)
          {
            *(*v5 + 4 * *&v189[v11 / 4 - 2] + 4) = *(v5 + 4) - *&v189[v11 / 4 - 2];
          }

          else
          {
            *v187 = 3;
            TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
            *v187 = *&v187[v11 + 16];
            TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
          }

          v11 -= 16;
        }

        while (v11 != 0 && v11 < 0xFFFFFFFFFFFFFFF0);
      }

      v18 = &v189[v11 / 4];
      *v18 = OperatorId;
      a2 = v5[2];
      *(v18 + 1) = a2;
      if (OperatorId == 20)
      {
        *v187 = 9;
        TBuffer<wchar_t>::insert(v5, a2, v187, 1uLL);
        *v187 = 0;
        TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
        *v187 = 7;
        TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      }

      else if (OperatorId == 21)
      {
        *v187 = 10;
        TBuffer<wchar_t>::insert(v5, a2, v187, 1uLL);
        *v187 = 0;
        TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
        *v187 = 7;
        TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      }

      if (v11 >= 2032)
      {
        loggableToken(a1, v14);
        if (v187[23] >= 0)
        {
          v71 = v187;
        }

        else
        {
          v71 = *v187;
        }

        tknPrintf("Error: %sExpression contains too many operators\n", v70, v71);
        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287527330;
        if (v188 >= 0)
        {
          v87 = &v187[8];
        }

        else
        {
          v87 = *&v187[8];
        }

        conditionalAssert(v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 411);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v88 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v88 = byte_287529580;
        v89 = (v88 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v89, *v187, *&v187[8]);
        }

        else
        {
          v110 = *v187;
          v88[3] = *&v187[16];
          *&v89->__r_.__value_.__l.__data_ = v110;
        }

        *v88 = &unk_287527330;
      }

      v11 += 16;
    }

    if (*result <= 5)
    {
      break;
    }

    if (v15 > 23)
    {
      if (v15 == 24)
      {
        goto LABEL_52;
      }

      if (v15 != 26)
      {
        goto LABEL_104;
      }

      v9 = 0;
      v10 = 1;
      if (i)
      {
        loggableToken(a1, result);
        if (v187[23] >= 0)
        {
          v97 = v187;
        }

        else
        {
          v97 = *v187;
        }

        tknPrintf("Error: %sExpected a binary operator\n", v96, v97);
        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287527330;
        if (v188 >= 0)
        {
          v131 = &v187[8];
        }

        else
        {
          v131 = *&v187[8];
        }

        conditionalAssert(v131, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 251);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v132 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v132 = byte_287529580;
        v133 = (v132 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v133, *v187, *&v187[8]);
        }

        else
        {
          v165 = *v187;
          v132[3] = *&v187[16];
          *&v133->__r_.__value_.__l.__data_ = v165;
        }

        *v132 = &unk_287527330;
      }
    }

    else
    {
      if (v15 == 6)
      {
        if (i)
        {
          loggableToken(a1, result);
          if (v187[23] >= 0)
          {
            v105 = v187;
          }

          else
          {
            v105 = *v187;
          }

          tknPrintf("Error: %sExpected an operator\n", v104, v105);
          if ((v187[23] & 0x80000000) != 0)
          {
            operator delete(*v187);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v187 = byte_287529580;
          if (SHIBYTE(v186) < 0)
          {
            std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
          }

          else
          {
            *&v187[8] = *__p;
            v188 = v186;
          }

          *v187 = &unk_287527330;
          if (v188 >= 0)
          {
            v146 = &v187[8];
          }

          else
          {
            v146 = *&v187[8];
          }

          conditionalAssert(v146, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 421);
          *v187 = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&v187[8]);
          }

          if (SHIBYTE(v186) < 0)
          {
            operator delete(__p[0]);
          }

          v147 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
          *v147 = byte_287529580;
          v148 = (v147 + 1);
          if ((v187[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v148, *v187, *&v187[8]);
          }

          else
          {
            v170 = *v187;
            v147[3] = *&v187[16];
            *&v148->__r_.__value_.__l.__data_ = v170;
          }

          *v147 = &unk_287527330;
        }

        compileExpression(a1, v5, v4, a4);
        a2 = nextToken(a1, v39);
        if (*a2 != 7)
        {
          loggableToken(a1, a2);
          if (v187[23] >= 0)
          {
            v103 = v187;
          }

          else
          {
            v103 = *v187;
          }

          tknPrintf("Error: %s() mismatch\n", v102, v103);
          if ((v187[23] & 0x80000000) != 0)
          {
            operator delete(*v187);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v187 = byte_287529580;
          if (SHIBYTE(v186) < 0)
          {
            std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
          }

          else
          {
            *&v187[8] = *__p;
            v188 = v186;
          }

          *v187 = &unk_287527330;
          if (v188 >= 0)
          {
            v143 = &v187[8];
          }

          else
          {
            v143 = *&v187[8];
          }

          conditionalAssert(v143, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 430);
          *v187 = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&v187[8]);
          }

          if (SHIBYTE(v186) < 0)
          {
            operator delete(__p[0]);
          }

          v144 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
          *v144 = byte_287529580;
          v145 = (v144 + 1);
          if ((v187[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v145, *v187, *&v187[8]);
          }

          else
          {
            v169 = *v187;
            v144[3] = *&v187[16];
            *&v145->__r_.__value_.__l.__data_ = v169;
          }

          *v144 = &unk_287527330;
        }

        goto LABEL_102;
      }

      if (v15 != 9)
      {
        goto LABEL_104;
      }

      if (i)
      {
        loggableToken(a1, result);
        if (v187[23] >= 0)
        {
          v101 = v187;
        }

        else
        {
          v101 = *v187;
        }

        tknPrintf("Error: %sExpected an operator\n", v100, v101);
        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287527330;
        if (v188 >= 0)
        {
          v140 = &v187[8];
        }

        else
        {
          v140 = *&v187[8];
        }

        conditionalAssert(v140, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 440);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v141 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v141 = byte_287529580;
        v142 = (v141 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v142, *v187, *&v187[8]);
        }

        else
        {
          v168 = *v187;
          v141[3] = *&v187[16];
          *&v142->__r_.__value_.__l.__data_ = v168;
        }

        *v141 = &unk_287527330;
      }

      Token = nextToken(a1, a2);
      v179 = v4;
      if (*Token != 1)
      {
        loggableToken(a1, Token);
        if (v187[23] >= 0)
        {
          v99 = v187;
        }

        else
        {
          v99 = *v187;
        }

        tknPrintf("Error: %sExpected a function name after '$'\n", v98, v99);
        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287527330;
        if (v188 >= 0)
        {
          v134 = &v187[8];
        }

        else
        {
          v134 = *&v187[8];
        }

        conditionalAssert(v134, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 447);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v135 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v135 = byte_287529580;
        v136 = (v135 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v136, *v187, *&v187[8]);
        }

        else
        {
          v166 = *v187;
          v135[3] = *&v187[16];
          *&v136->__r_.__value_.__l.__data_ = v166;
        }

        *v135 = &unk_287527330;
      }

      v20 = *a4;
      v19 = a4[1];
      if (v19 == *a4)
      {
LABEL_114:
        v184 = 0;
LABEL_115:
        loggableToken(a1, Token);
        v65 = v187[23];
        v66 = *v187;
        loggableUnicode(*(Token + 8), __p);
        v68 = v187;
        if (v65 < 0)
        {
          v68 = v66;
        }

        if (v186 >= 0)
        {
          v69 = __p;
        }

        else
        {
          v69 = __p[0];
        }

        tknPrintf("Error: %s$%s : Invalid function name\n", v67, v68, v69);
        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287526298;
        if (v188 >= 0)
        {
          v93 = &v187[8];
        }

        else
        {
          v93 = *&v187[8];
        }

        conditionalAssert(v93, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 454);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v94 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v94 = byte_287529580;
        v95 = (v94 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v95, *v187, *&v187[8]);
        }

        else
        {
          v119 = *v187;
          v94[3] = *&v187[16];
          *&v95->__r_.__value_.__l.__data_ = v119;
        }

        *v94 = &unk_287526298;
      }

      v21 = 0;
      v22 = *(Token + 8);
      while (1)
      {
        v23 = *(v20 + 8 * v21);
        v24 = wcslen(v22);
        v26 = v24;
        v27 = *(v23 + 23);
        if (v27 < 0)
        {
          break;
        }

        v28 = *(v20 + 8 * v21);
        if (v26 == v27)
        {
          if (!v26)
          {
            goto LABEL_64;
          }

          goto LABEL_34;
        }

LABEL_36:
        if (++v21 >= ((v19 - v20) >> 3))
        {
          goto LABEL_114;
        }
      }

      if (v24 != *(v23 + 8))
      {
        goto LABEL_36;
      }

      if (v24 == -1)
      {
        std::wstring::__throw_out_of_range[abi:ne200100]();
      }

      v28 = *v23;
      if (!v26)
      {
LABEL_64:
        v184 = *(v20 + 8 * v21);
        goto LABEL_68;
      }

LABEL_34:
      v29 = wmemcmp(v28, v22, v26);
      v20 = *a4;
      if (v29)
      {
        v19 = a4[1];
        goto LABEL_36;
      }

      v184 = *(v20 + 8 * v21);
      if (!v184)
      {
        goto LABEL_115;
      }

LABEL_68:
      v4 = v179;
      if (*nextToken(a1, v25) != 6)
      {
        v49 = *(a1 + 3);
        if (v49)
        {
          v48 = 0;
          *(a1 + 3) = v49 - 1;
          goto LABEL_81;
        }

LABEL_80:
        v48 = 0;
        goto LABEL_81;
      }

      v43 = nextToken(a1, v42);
      v44 = *v43;
      if (*v43 == 7)
      {
        goto LABEL_80;
      }

      v45 = 0;
      do
      {
        if (v45)
        {
          if (v44 != 8)
          {
            loggableToken(a1, v43);
            if (v187[23] >= 0)
            {
              v75 = v187;
            }

            else
            {
              v75 = *v187;
            }

            tknPrintf("Error: %sMissing ',' between function parameters\n", v74, v75);
            if ((v187[23] & 0x80000000) != 0)
            {
              operator delete(*v187);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v187 = byte_287529580;
            if (SHIBYTE(v186) < 0)
            {
              std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
            }

            else
            {
              *&v187[8] = *__p;
              v188 = v186;
            }

            *v187 = &unk_287527330;
            if (v188 >= 0)
            {
              v116 = &v187[8];
            }

            else
            {
              v116 = *&v187[8];
            }

            conditionalAssert(v116, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 480);
            *v187 = byte_287529580;
            if (SHIBYTE(v188) < 0)
            {
              operator delete(*&v187[8]);
            }

            if (SHIBYTE(v186) < 0)
            {
              operator delete(__p[0]);
            }

            v117 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
            *v117 = byte_287529580;
            v118 = (v117 + 1);
            if ((v187[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v118, *v187, *&v187[8]);
            }

            else
            {
              v152 = *v187;
              v117[3] = *&v187[16];
              *&v118->__r_.__value_.__l.__data_ = v152;
            }

            *v117 = &unk_287527330;
          }
        }

        else
        {
          v46 = *(a1 + 3);
          if (v46)
          {
            *(a1 + 3) = v46 - 1;
          }
        }

        compileExpression(a1, v5, v179, a4);
        v43 = nextToken(a1, v47);
        v44 = *v43;
        --v45;
      }

      while (*v43 != 7);
      v48 = -v45;
LABEL_81:
      if (v48 < *(v184 + 32) || v48 > *(v184 + 40))
      {
        loggableToken(a1, Token);
        v78 = v187[23];
        v79 = *v187;
        loggableUnicode(*(Token + 8), __p);
        v81 = v187;
        if (v78 < 0)
        {
          v81 = v79;
        }

        if (v186 >= 0)
        {
          v82 = __p;
        }

        else
        {
          v82 = __p[0];
        }

        tknPrintf("Error: %s$%s : Function takes between %llu and %llu parameters\n", v80, v81, v82, *(v184 + 32), *(v184 + 40));
        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287526298;
        if (v188 >= 0)
        {
          v137 = &v187[8];
        }

        else
        {
          v137 = *&v187[8];
        }

        conditionalAssert(v137, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 493);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v138 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v138 = byte_287529580;
        v139 = (v138 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v139, *v187, *&v187[8]);
        }

        else
        {
          v167 = *v187;
          v138[3] = *&v187[16];
          *&v139->__r_.__value_.__l.__data_ = v167;
        }

        *v138 = &unk_287526298;
      }

      *v187 = 4;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      TBuffer<wchar_t>::insert(v5, v5[2], &v184, 2uLL);
      *v187 = v48;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
LABEL_102:
      v10 = 0;
      v9 = 1;
      if (v182)
      {
        *v187 = 12;
        TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
        *v187 = 1;
        TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
        v10 = 0;
        v9 = 1;
      }
    }
  }

  if (v15 == 1)
  {
LABEL_52:
    if (i)
    {
      loggableToken(a1, result);
      if (v187[23] >= 0)
      {
        v84 = v187;
      }

      else
      {
        v84 = *v187;
      }

      tknPrintf("Error: %sExpected a binary operator\n", v83, v84);
      if ((v187[23] & 0x80000000) != 0)
      {
        operator delete(*v187);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v187 = byte_287529580;
      if (SHIBYTE(v186) < 0)
      {
        std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
      }

      else
      {
        *&v187[8] = *__p;
        v188 = v186;
      }

      *v187 = &unk_287527330;
      if (v188 >= 0)
      {
        v125 = &v187[8];
      }

      else
      {
        v125 = *&v187[8];
      }

      conditionalAssert(v125, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 262);
      *v187 = byte_287529580;
      if (SHIBYTE(v188) < 0)
      {
        operator delete(*&v187[8]);
      }

      if (SHIBYTE(v186) < 0)
      {
        operator delete(__p[0]);
      }

      v126 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
      *v126 = byte_287529580;
      v127 = (v126 + 1);
      if ((v187[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v127, *v187, *&v187[8]);
      }

      else
      {
        v157 = *v187;
        v126[3] = *&v187[16];
        *&v127->__r_.__value_.__l.__data_ = v157;
      }

      *v126 = &unk_287527330;
    }

    v36 = nextToken(a1, a2);
    if (*v36 == 3)
    {
      *v187 = 2;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      *v187 = 48;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      *v187 = 0;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      v38 = 0;
    }

    else
    {
      if (*v36 != 15)
      {
        goto LABEL_96;
      }

      if (*v14 == 1)
      {
        *v187 = v14[1];
        if (v181 == std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(v4, v187))
        {
          loggableToken(a1, v14);
          if (v187[23] >= 0)
          {
            v115 = v187;
          }

          else
          {
            v115 = *v187;
          }

          tknPrintf("Error: %sIllegal use of '[]' on an attribute.\n", v114, v115);
          if ((v187[23] & 0x80000000) != 0)
          {
            operator delete(*v187);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v187 = byte_287529580;
          if (SHIBYTE(v186) < 0)
          {
            std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
          }

          else
          {
            *&v187[8] = *__p;
            v188 = v186;
          }

          *v187 = &unk_287527330;
          if (v188 >= 0)
          {
            v162 = &v187[8];
          }

          else
          {
            v162 = *&v187[8];
          }

          conditionalAssert(v162, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 273);
          *v187 = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&v187[8]);
          }

          if (SHIBYTE(v186) < 0)
          {
            operator delete(__p[0]);
          }

          v163 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
          *v163 = byte_287529580;
          v164 = (v163 + 1);
          if ((v187[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v164, *v187, *&v187[8]);
          }

          else
          {
            v177 = *v187;
            v163[3] = *&v187[16];
            *&v164->__r_.__value_.__l.__data_ = v177;
          }

          *v163 = &unk_287527330;
        }
      }

      v37 = nextToken(a1, v35);
      if (*v37 == 5 && getOperatorId(*(v37 + 8)) == 7)
      {
        v38 = 1;
      }

      else
      {
        v41 = *(a1 + 3);
        v38 = 0;
        if (v41)
        {
          *(a1 + 3) = v41 - 1;
        }
      }

      compileExpression(a1, v5, v4, a4);
      v51 = nextToken(a1, v50);
      if (*v51 != 16)
      {
        loggableToken(a1, v51);
        if (v187[23] >= 0)
        {
          v109 = v187;
        }

        else
        {
          v109 = *v187;
        }

        tknPrintf("Error: %s[] mismatch\n", v108, v109);
        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287527330;
        if (v188 >= 0)
        {
          v153 = &v187[8];
        }

        else
        {
          v153 = *&v187[8];
        }

        conditionalAssert(v153, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 287);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v154 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v154 = byte_287529580;
        v155 = (v154 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v155, *v187, *&v187[8]);
        }

        else
        {
          v175 = *v187;
          v154[3] = *&v187[16];
          *&v155->__r_.__value_.__l.__data_ = v175;
        }

        *v154 = &unk_287527330;
      }

      v36 = nextToken(a1, v51);
    }

    if (*v36 == 3)
    {
      if (*v14 == 1)
      {
        *v187 = v14[1];
        if (v181 == std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(v4, v187))
        {
          loggableToken(a1, v14);
          if (v187[23] >= 0)
          {
            v113 = v187;
          }

          else
          {
            v113 = *v187;
          }

          tknPrintf("Error: %sIllegal use of '.' on an attribute.\n", v112, v113);
          if ((v187[23] & 0x80000000) != 0)
          {
            operator delete(*v187);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v187 = byte_287529580;
          if (SHIBYTE(v186) < 0)
          {
            std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
          }

          else
          {
            *&v187[8] = *__p;
            v188 = v186;
          }

          *v187 = &unk_287527330;
          if (v188 >= 0)
          {
            v159 = &v187[8];
          }

          else
          {
            v159 = *&v187[8];
          }

          conditionalAssert(v159, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 321);
          *v187 = byte_287529580;
          if (SHIBYTE(v188) < 0)
          {
            operator delete(*&v187[8]);
          }

          if (SHIBYTE(v186) < 0)
          {
            operator delete(__p[0]);
          }

          v160 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
          *v160 = byte_287529580;
          v161 = (v160 + 1);
          if ((v187[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v161, *v187, *&v187[8]);
          }

          else
          {
            v176 = *v187;
            v160[3] = *&v187[16];
            *&v161->__r_.__value_.__l.__data_ = v176;
          }

          *v160 = &unk_287527330;
        }
      }

      v52 = nextToken(a1, v40);
      if ((*v52 - 21) >= 3 && *v52 != 1)
      {
        loggableToken(a1, v52);
        if (v187[23] >= 0)
        {
          v121 = v187;
        }

        else
        {
          v121 = *v187;
        }

        tknPrintf("Error: %sExpected an identifier\n", v120, v121);
        if ((v187[23] & 0x80000000) != 0)
        {
          operator delete(*v187);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v187 = byte_287529580;
        if (SHIBYTE(v186) < 0)
        {
          std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
        }

        else
        {
          *&v187[8] = *__p;
          v188 = v186;
        }

        *v187 = &unk_287527330;
        if (v188 >= 0)
        {
          v172 = &v187[8];
        }

        else
        {
          v172 = *&v187[8];
        }

        conditionalAssert(v172, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 332);
        *v187 = byte_287529580;
        if (SHIBYTE(v188) < 0)
        {
          operator delete(*&v187[8]);
        }

        if (SHIBYTE(v186) < 0)
        {
          operator delete(__p[0]);
        }

        v173 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
        *v173 = byte_287529580;
        v174 = (v173 + 1);
        if ((v187[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v174, *v187, *&v187[8]);
        }

        else
        {
          v178 = *v187;
          v173[3] = *&v187[16];
          *&v174->__r_.__value_.__l.__data_ = v178;
        }

        *v173 = &unk_287527330;
      }

      *v187 = 1;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      *v187 = v38;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      v53 = 0;
      v54 = v14[1];
        ;
      }

      TBuffer<wchar_t>::insert(v5, v5[2], v54, v53 - 1);
      *v187 = 0;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      v31 = 0;
      v32 = v52[1];
      v33 = v5[2];
        ;
      }

LABEL_47:
      TBuffer<wchar_t>::insert(v5, v33, v32, v31 - 1);
      *v187 = 0;
      TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      goto LABEL_102;
    }

LABEL_96:
    if (*v14 == 24 || (*v187 = v14[1], v181 != std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(v4, v187)))
    {
      loggableToken(a1, v36);
      if (v187[23] >= 0)
      {
        v77 = v187;
      }

      else
      {
        v77 = *v187;
      }

      tknPrintf("Error: %sExpected '.' after reference to array.\n", v76, v77);
      if ((v187[23] & 0x80000000) != 0)
      {
        operator delete(*v187);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v187 = byte_287529580;
      if (SHIBYTE(v186) < 0)
      {
        std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
      }

      else
      {
        *&v187[8] = *__p;
        v188 = v186;
      }

      *v187 = &unk_287527330;
      if (v188 >= 0)
      {
        v122 = &v187[8];
      }

      else
      {
        v122 = *&v187[8];
      }

      conditionalAssert(v122, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 305);
      *v187 = byte_287529580;
      if (SHIBYTE(v188) < 0)
      {
        operator delete(*&v187[8]);
      }

      if (SHIBYTE(v186) < 0)
      {
        operator delete(__p[0]);
      }

      v123 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
      *v123 = byte_287529580;
      v124 = (v123 + 1);
      if ((v187[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v124, *v187, *&v187[8]);
      }

      else
      {
        v156 = *v187;
        v123[3] = *&v187[16];
        *&v124->__r_.__value_.__l.__data_ = v156;
      }

      *v123 = &unk_287527330;
    }

    *v187 = 6;
    TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
    v57 = 0;
    v58 = v14[1];
      ;
    }

    TBuffer<wchar_t>::insert(v5, v5[2], v58, v57 - 1);
    *v187 = 0;
    TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
    v60 = *(a1 + 3);
    if (v60)
    {
      *(a1 + 3) = v60 - 1;
    }

    goto LABEL_102;
  }

  if (v15 == 2 || v15 == 4)
  {
    if (i)
    {
      loggableToken(a1, result);
      if (v187[23] >= 0)
      {
        v86 = v187;
      }

      else
      {
        v86 = *v187;
      }

      tknPrintf("Error: %sExpected an operator\n", v85, v86);
      if ((v187[23] & 0x80000000) != 0)
      {
        operator delete(*v187);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v187 = byte_287529580;
      if (SHIBYTE(v186) < 0)
      {
        std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
      }

      else
      {
        *&v187[8] = *__p;
        v188 = v186;
      }

      *v187 = &unk_287527330;
      if (v188 >= 0)
      {
        v128 = &v187[8];
      }

      else
      {
        v128 = *&v187[8];
      }

      conditionalAssert(v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 350);
      *v187 = byte_287529580;
      if (SHIBYTE(v188) < 0)
      {
        operator delete(*&v187[8]);
      }

      if (SHIBYTE(v186) < 0)
      {
        operator delete(__p[0]);
      }

      v129 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
      *v129 = byte_287529580;
      v130 = (v129 + 1);
      if ((v187[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v130, *v187, *&v187[8]);
      }

      else
      {
        v158 = *v187;
        v129[3] = *&v187[16];
        *&v130->__r_.__value_.__l.__data_ = v158;
      }

      *v129 = &unk_287527330;
    }

    *v187 = 2;
    TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
    v31 = 0;
    v32 = v14[1];
    v33 = v5[2];
      ;
    }

    goto LABEL_47;
  }

LABEL_104:
  v61 = *(a1 + 3);
  if (v61)
  {
    *(a1 + 3) = v61 - 1;
  }

  if (v11 >= 1)
  {
    v62 = &v189[v11 / 4];
    v63 = &v189[v11 / 4];
    do
    {
      v64 = *(v63 - 4);
      v63 -= 4;
      if ((v64 & 0xFFFFFFFE) == 0x14)
      {
        *(*v5 + 4 * *(v62 - 1) + 4) = *(v5 + 4) - *(v62 - 1);
      }

      else
      {
        *v187 = 3;
        TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
        *v187 = *v63;
        result = TBuffer<wchar_t>::insert(v5, v5[2], v187, 1uLL);
      }

      v62 = v63;
    }

    while (v63 > v189);
  }

  if (v182 & 1 | ((i & 1) == 0))
  {
    loggableToken(a1, v14);
    if (v187[23] >= 0)
    {
      v107 = v187;
    }

    else
    {
      v107 = *v187;
    }

    tknPrintf("Error: %sMissing operand\n", v106, v107);
    if ((v187[23] & 0x80000000) != 0)
    {
      operator delete(*v187);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v187 = byte_287529580;
    if (SHIBYTE(v186) < 0)
    {
      std::string::__init_copy_ctor_external(&v187[8], __p[0], __p[1]);
    }

    else
    {
      *&v187[8] = *__p;
      v188 = v186;
    }

    *v187 = &unk_287527330;
    if (v188 >= 0)
    {
      v149 = &v187[8];
    }

    else
    {
      v149 = *&v187[8];
    }

    conditionalAssert(v149, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 535);
    *v187 = byte_287529580;
    if (SHIBYTE(v188) < 0)
    {
      operator delete(*&v187[8]);
    }

    if (SHIBYTE(v186) < 0)
    {
      operator delete(__p[0]);
    }

    v150 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v187, &byte_262899963);
    *v150 = byte_287529580;
    v151 = (v150 + 1);
    if ((v187[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v151, *v187, *&v187[8]);
    }

    else
    {
      v171 = *v187;
      v150[3] = *&v187[16];
      *&v151->__r_.__value_.__l.__data_ = v171;
    }

    *v150 = &unk_287527330;
  }

  return result;
}

void sub_26259B564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _Unwind_Exception *exception_object, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, void *a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t getOperatorId(const __int32 *a1)
{
  if (!wcscmp(a1, "="))
  {
    return 10;
  }

  if (!wcscmp(a1, "!"))
  {
    return 11;
  }

  if (!wcscmp(a1, "<"))
  {
    return 9;
  }

  if (!wcscmp(a1, ">"))
  {
    return 8;
  }

  if (!wcscmp(a1, ">"))
  {
    return 13;
  }

  if (!wcscmp(a1, "<"))
  {
    return 12;
  }

  if (!wcscmp(a1, "|"))
  {
    return 21;
  }

  if (!wcscmp(a1, "&"))
  {
    return 20;
  }

  if (!wcscmp(a1, "+"))
  {
    return 6;
  }

  if (!wcscmp(a1, "-"))
  {
    return 7;
  }

  if (!wcscmp(a1, "*"))
  {
    return 3;
  }

  if (!wcscmp(a1, "/"))
  {
    return 4;
  }

  if (!wcscmp(a1, "%"))
  {
    return 5;
  }

  if (!wcscmp(a1, ":"))
  {
    return 1;
  }

  if (!wcscmp(a1, "^"))
  {
    return 2;
  }

  if (!wcscmp(a1, "e"))
  {
    return 16;
  }

  if (!wcscmp(a1, "n"))
  {
    return 17;
  }

  if (!wcscmp(a1, "g"))
  {
    return 14;
  }

  if (!wcscmp(a1, "l"))
  {
    return 15;
  }

  if (!wcscmp(a1, "g"))
  {
    return 19;
  }

  if (!wcscmp(a1, "l"))
  {
    return 18;
  }

  return 10;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B3A578, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void TLexer::~TLexer(TLexer *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  TAllocator::clear((this + 32));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void TGrammar::forEachNonTerminal<TIntegrityChecker>(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if (v2 != (a1 + 48))
  {
    do
    {
      TIntegrityChecker::operator()(a2, v2[5]);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void TGrammar::forEachTerminal<TIntegrityChecker>(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 144);
  if (*(a1 + 152) != v2)
  {
    v5 = 0;
    do
    {
      TIntegrityChecker::operator()(a2, *(v2 + 8 * v5++));
      v2 = *(a1 + 144);
    }

    while (v5 < (*(a1 + 152) - v2) >> 3);
  }
}

void std::vector<TGrammarCompiler::TArgument>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v11 = 0;
      v12 = v5 + 16 * a2;
      v13 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v14 = vdupq_n_s64(v13);
      v15 = (v5 + 16);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_26286B680)));
        if (v16.i8[0])
        {
          *(v15 - 2) = 0;
        }

        if (v16.i8[4])
        {
          *v15 = 0;
        }

        v11 += 2;
        v15 += 4;
      }

      while (v13 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2 != v11);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    *(a1 + 8) = v12;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarCompiler::TArgument>>(a1, v10);
    }

    v17 = 0;
    v18 = 16 * v8;
    v19 = 16 * v8 + 16 * a2;
    v20 = (a2 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
    v21 = v20 - ((a2 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
    v22 = vdupq_n_s64(v20);
    v23 = (v18 + 16);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v17), xmmword_26286B680)));
      if (v24.i8[0])
      {
        *(v23 - 2) = 0;
      }

      if (v24.i8[4])
      {
        *v23 = 0;
      }

      v17 += 2;
      v23 += 4;
    }

    while (v21 != v17);
    v25 = *(a1 + 8) - *a1;
    v26 = v18 - v25;
    memcpy((v18 - v25), *a1, v25);
    v27 = *a1;
    *a1 = v26;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarCompiler::TArgument>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t getItnControlCategory(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 5;
  }

  else
  {
    return dword_26286C654[a1 - 1];
  }
}

BOOL TItnControlState::isSet(TItnControlState *this)
{
  v2 = *this;
  v1 = (this + 32);
  if (v2 == -1)
  {
    v5 = 0;
    v3 = 1;
    do
    {
      if (*v1 != -1)
      {
        break;
      }

      v3 = v5 < 3;
      if (v5 == 3)
      {
        break;
      }

      v6 = *(v1 - 3);
      ++v1;
      ++v5;
    }

    while (v6 == -1);
  }

  else
  {
    return 1;
  }

  return v3;
}

_OWORD *TItnControlState::set(_OWORD *result, uint64_t *a2, char a3, char a4, int a5, unint64_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  *&v6 = -1;
  *(&v6 + 1) = -1;
  result[2] = v6;
  v31 = result;
  v32 = result + 2;
  memset(v36, 0, sizeof(v36));
  *result = v6;
  result[1] = v6;
  result[3] = v6;
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8)
  {
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v11 = 40;
    v29 = a4 ^ 1;
    v12 = -1;
    do
    {
      v13 = (v7 + 24 * v9);
      v14 = v13[2];
      if (v14 >= a6)
      {
        v15 = v13[1];
        if (v15 != 2)
        {
          if (v15 == 1 && v9 + 1 < v10 && a5 != 0)
          {
            v18 = v10 + v12;
            v19 = (v7 + v11);
            do
            {
              if (*(v19 - 1) - 1 <= 1)
              {
                ItnControlCategory = getItnControlCategory(*(v19 - 2));
                result = getItnControlCategory(*v13);
                if (ItnControlCategory == result && v14 <= *v19)
                {
                  goto LABEL_35;
                }
              }

              v19 += 3;
            }

            while (--v18);
          }

          v21 = *v13;
          result = getItnControlCategory(*v13);
          if (result != 2)
          {
            if (v21 == 6 || (a3 & 1) == 0)
            {
              v22 = a5;
              if (v15 != 4)
              {
                v22 = 1;
              }

              v23 = v29;
              if (v15 != 3)
              {
                v23 = 0;
              }

              if ((v23 & 1) != 0 || !v22)
              {
                goto LABEL_35;
              }
            }

LABEL_29:
            v24 = *(v36 + result);
            if (v14 > v24)
            {
              *(v31 + result) = -1;
              *(v32 + result) = -1;
              v7 = *a2;
              v14 = *(*a2 + 24 * v9 + 16);
            }

            if (v14 >= v24)
            {
              v25 = (v7 + 24 * v9);
              *(v36 + result) = v14;
              v27 = *v25;
              v26 = v25[1];
              result = getItnControlCategory(*v25);
              v28 = v32 + result;
              if (v26 == 1)
              {
                *v28 = -1;
                v28 = v31 + result;
              }

              *v28 = v27;
            }

            goto LABEL_35;
          }

          if (v15 - 5) < 0xFFFFFFFFFFFFFFFELL || (a5)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_35:
      ++v9;
      v7 = *a2;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      --v12;
      v11 += 24;
    }

    while (v9 < v10);
  }

  return result;
}

uint64_t SDEnvHolder_New()
{
  SdapiInsurance::SdapiInsurance(v4, "SDEnvHolder_New", 1, 1, 95);
  if (v4[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %s()\n", v0, "SDEnvHolder_New");
    }

    v1 = EnvHolderMgr::newEnvHolder(EnvHolderMgr::smpEnvHolderMgr);
    if (v1 == -1)
    {
      v2 = -1;
    }

    else
    {
      v2 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v4);
  return v2;
}

uint64_t SDEnvHolder_NewFromFile(FileSpec *a1, uint64_t a2)
{
  SdapiInsurance::SdapiInsurance(v17, "SDEnvHolder_NewFromFile", 1, 1, 96);
  if (v17[97] == 1)
  {
    if (!a1)
    {
      throwBadStringPointer();
    }

    LOBYTE(v18) = 0;
    if (gbShowCalls & 1) != 0 || (gbShowCallsWithFileSpecArgs)
    {
      DgnString::DgnString(&v15);
      DgnString::DgnString(&v18);
      FileSpec::getDiagnosticMaskedName(a1, &v18, v4);
      DgnString::preAllocate(&v15, 96);
      if (v19)
      {
        v5 = v18;
      }

      else
      {
        v5 = byte_26286C6C1;
      }

      DgnString::formatStringInPlace(&v15, v5);
      DgnString::~DgnString(&v18);
      if (v16)
      {
        v7 = v15;
      }

      else
      {
        v7 = byte_26286C6C1;
      }

      xlprintf("Entering sdapi call %.500s(%.500s, <SDh %lld>)\n", v6, "SDEnvHolder_NewFromFile", v7, a2);
      DgnString::~DgnString(&v15);
    }

    v8 = a2 - 1;
    if ((a2 - 1) >= 5)
    {
      throwBadSdapiArgument("SDEnvHolderSource", a2);
      LODWORD(v8) = 0;
      v9 = 0;
    }

    else
    {
      v9 = dword_26286C6C4[v8];
    }

    FileSpec::FileSpec(&v18, a1);
    DFileOwner::DFileOwner(&v15);
    v10 = DFile::openDFile(&v18, 0, v9, &v15);
    EnvHolder = EnvHolderMgr::loadEnvHolder(EnvHolderMgr::smpEnvHolderMgr, v10, v8);
    if (EnvHolder == -1)
    {
      v13 = -1;
    }

    else
    {
      v13 = EnvHolder;
    }

    DFileOwner::~DFileOwner(&v15, v12);
    FileSpec::~FileSpec(&v18);
  }

  else
  {
    v13 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v17);
  return v13;
}

uint64_t SDEnvHolder_Save(unint64_t a1, FileSpec *a2, int a3)
{
  SdapiInsurance::SdapiInsurance(v18, "SDEnvHolder_Save", 1, 1, 97);
  if (v18[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer();
    }

    LOBYTE(v19) = 0;
    if ((gbShowCalls & 1) != 0 || gbShowCallsWithFileSpecArgs == 1)
    {
      DgnString::DgnString(&v16);
      DgnString::DgnString(&v19);
      FileSpec::getDiagnosticMaskedName(a2, &v19, v6);
      DgnString::preAllocate(&v16, 96);
      if (v20)
      {
        v7 = v19;
      }

      else
      {
        v7 = byte_26286C6C1;
      }

      DgnString::formatStringInPlace(&v16, v7);
      DgnString::~DgnString(&v19);
      if (v17)
      {
        v9 = v16;
      }

      else
      {
        v9 = byte_26286C6C1;
      }

      v10 = "SD_TRUE";
      if (!a3)
      {
        v10 = "SD_FALSE";
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, %.500s, %.500s)\n", v8, "SDEnvHolder_Save", a1, v9, v10);
      DgnString::~DgnString(&v16);
    }

    if (*(ApiState::smpApiState + 1) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenvh.cpp", 95, "sdapi/sdenvh", 1, "%s", byte_26286C6C1);
    }

    FileSpec::FileSpec(&v19, a2);
    v15 = 0;
    DgnString::DgnString(&v16);
    v11 = EnvHolderMgr::smpEnvHolderMgr;
    if (a1 == -1)
    {
      LODWORD(a1) = -1;
    }

    else
    {
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhEnvHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhEnvHolder", a1);
      }
    }

    if (a3 >= 2)
    {
      throwBadSdapiArgument("SDBool", a3);
    }

    EnvHolderMgr::saveEnvHolder(v11, a1, &v19, &v15, 2, a3 == 1);
    if (v15 == 1)
    {
      v12 = 2;
    }

    else if (v15 == 2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (v17)
    {
      v13 = v16;
    }

    else
    {
      v13 = byte_26286C6C1;
    }

    ApiState::setLastResultCodeString(ApiState::smpApiState, v13);
    DgnString::~DgnString(&v16);
    FileSpec::~FileSpec(&v19);
  }

  else
  {
    v12 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v18);
  return v12;
}

void SDEnvHolder_Delete(unint64_t a1)
{
  SdapiInsurance::SdapiInsurance(v4, "SDEnvHolder_Delete", 1, 1, 98);
  if (v4[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>)\n", v2, "SDEnvHolder_Delete", a1);
    }

    v3 = EnvHolderMgr::smpEnvHolderMgr;
    if (a1 == -1)
    {
      LODWORD(a1) = -1;
    }

    else
    {
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhEnvHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhEnvHolder", a1);
      }
    }

    EnvHolderMgr::deleteEnvHolder(v3, a1);
  }

  SdapiInsurance::~SdapiInsurance(v4);
}

uint64_t TLocaleInfo::unicodeToMultiByte(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    if (a2 < 128 || a2 - 160 < 0x60)
    {
      v10 = a2;
      v8 = *(a3 + 16);
      v9 = &v10;
    }

    else
    {
      v5 = &dword_26286C6DC;
      v6 = 66;
      while (*v5 != a2)
      {
        v5 += 2;
        v6 -= 2;
        if (!v6)
        {
          return 1;
        }
      }

      v11 = *(v5 - 1);
      v8 = *(a3 + 16);
      v9 = &v11;
    }

    goto LABEL_16;
  }

  if (a2 <= 127)
  {
    v12 = a2;
    v8 = *(a3 + 16);
    v9 = &v12;
LABEL_16:
    TBuffer<char>::insert(a3, v8, v9, 1uLL);
    return 0;
  }

  if (a2 <= 0x7FF)
  {
    v13 = (a2 >> 6) | 0xC0;
    TBuffer<char>::insert(a3, *(a3 + 16), &v13, 1uLL);
    v14 = a2 & 0x3F | 0x80;
    v8 = *(a3 + 16);
    v9 = &v14;
    goto LABEL_16;
  }

  if (!HIWORD(a2))
  {
    v15 = (a2 >> 12) | 0xE0;
    TBuffer<char>::insert(a3, *(a3 + 16), &v15, 1uLL);
    v16 = (a2 >> 6) & 0x3F | 0x80;
    TBuffer<char>::insert(a3, *(a3 + 16), &v16, 1uLL);
    v17 = a2 & 0x3F | 0x80;
    v8 = *(a3 + 16);
    v9 = &v17;
    goto LABEL_16;
  }

  return 0;
}

BOOL TLocaleInfo::unicodeToMultiByte(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  do
  {
    v6 = *a2;
    if (!*a2)
    {
      break;
    }

    ++a2;
  }

  while (!TLocaleInfo::unicodeToMultiByte(a1, v6, a3));
  return v6 != 0;
}

uint64_t TLocaleInfo::unicodeToMultiByte(uint64_t a1, unsigned int *a2, uint64_t *a3, unint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = 0;
  v14 = 0;
  while (1)
  {
    v6 = *a2;
    if (!*a2)
    {
      break;
    }

    ++a2;
    if (TLocaleInfo::unicodeToMultiByte(a1, v6, &v10))
    {
      v7 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }
  }

  if (v12 >= v11)
  {
    if (v14)
    {
      v9 = 0;
      TBuffer<char>::insert(&v10, v12--, &v9, 1uLL);
    }

    else if (v11)
    {
      *(v10 + v11 - 1) = 0;
    }
  }

  else
  {
    v12[v10] = 0;
  }

  v7 = (v12 + 1);
LABEL_12:
  if (v14 == 1 && v10 != &v13 && v10)
  {
    MEMORY[0x26672B1B0]();
  }

  return v7;
}

void sub_26259CB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a10 != &a13)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t TLocaleInfo::multiByteToUnicode(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v3 = *a2;
  if (*(a1 + 64) == 1)
  {
    if (v3 <= -97)
    {
      v3 = s_pszCodePage1252ToUnicode[2 * v3 - 255];
      if (v3 == 0xFFFF)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 1;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v3 & 0x80) == 0)
  {
LABEL_7:
    result = 1;
LABEL_8:
    *a3 = v3;
    return result;
  }

  if ((v3 & 0xE0) == 0xC0)
  {
    v5 = v3 & 0x1F;
    *a3 = v5;
    if (v3 >= 0xC2)
    {
      result = 2;
      goto LABEL_17;
    }

LABEL_26:
    result = 0xFFFFFFFFLL;
    v3 = 0xFFFF;
    goto LABEL_8;
  }

  if ((v3 & 0xF0) != 0xE0)
  {
    goto LABEL_26;
  }

  v5 = v3 & 0xF;
  *a3 = v5;
  if (v3 == 237)
  {
    if ((a2[1] & 0xE0) != 0x80)
    {
      goto LABEL_26;
    }
  }

  else if (v3 == 224 && (a2[1] & 0xE0) != 0xA0)
  {
    goto LABEL_26;
  }

  result = 3;
LABEL_17:
  v6 = result - 1;
  v7 = a2 + 1;
  while (1)
  {
    v8 = *v7++;
    v9 = v8 & 0xC0;
    v10 = v8 & 0x3F | (v5 << 6);
    v11 = v9 == 128 ? v10 : 0xFFFF;
    *a3 = v11;
    if (v9 != 128)
    {
      break;
    }

    v5 = v10;
    if (!--v6)
    {
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t TLocaleInfo::multiByteToUnicode(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = a2;
  while (1)
  {
    v9 = 0;
    v6 = TLocaleInfo::multiByteToUnicode(a1, v4, &v9);
    if (v6 == -1)
    {
      break;
    }

    v7 = v6;
    v10 = v9;
    TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v10, 1uLL);
    v4 += v7;
    if (!*v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t TLocaleInfo::multiByteToUnicode(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  result = 0;
  if (a3)
  {
    v6 = a2;
    if (*a2)
    {
      v9 = 0;
      while (1)
      {
        v14 = 0;
        v10 = TLocaleInfo::multiByteToUnicode(a1, v6, &v14);
        v9 += v10;
        if (v10 == -1 || v9 > a3)
        {
          break;
        }

        v12 = v10;
        v15 = v14;
        TBuffer<wchar_t>::insert(a4, *(a4 + 16), &v15, 1uLL);
        v6 += v12;
        if (v9 >= a3 || *v6 == 0)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t TLocaleInfo::unicodeStringCompare(uint64_t a1, __darwin_ct_rune_t *a2, __darwin_ct_rune_t *a3, char a4, unint64_t a5)
{
  v8 = *a2;
  if (v8)
  {
    v11 = a2 + 1;
    v12 = 1;
    while (1)
    {
      v13 = v12 - 1;
      v14 = *a3;
      if (!*a3 || v13 >= a5)
      {
        break;
      }

      if (v8 != v14)
      {
        if (a4)
        {
          goto LABEL_19;
        }

        v16 = TLocaleInfo::toLower(a1, v8);
        if (v16 != TLocaleInfo::toLower(a1, *a3))
        {
          LODWORD(v8) = *(v11 - 1);
          v14 = *a3;
          goto LABEL_19;
        }
      }

      ++a3;
      v17 = *v11++;
      v8 = v17;
      ++v12;
      if (!v17)
      {
        v18 = v12 - 1;
        goto LABEL_13;
      }
    }

    if (v13 < a5)
    {
      goto LABEL_19;
    }

    return 0;
  }

  v18 = 0;
LABEL_13:
  if (v18 >= a5)
  {
    return 0;
  }

  LODWORD(v8) = 0;
  result = 0;
  v14 = *a3;
  if (*a3)
  {
LABEL_19:
    if (v8 < v14)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const void **TBuffer<char>::insert(const void **result, char *a2, char *a3, unint64_t a4)
{
  v5 = result[2];
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = result[2];
  }

  if (*(result + 280) == 1)
  {
    v7 = &v5[a4];
    v8 = result[1];
    if (&v5[a4] > v8 && v8 < 2 * v7)
    {
      result[1] = ((2 * v7) | 1);
      operator new[]();
    }
  }

  if (v6 < v5)
  {
    v9 = result[1];
    if (&v6[a4] < v9)
    {
      if (v9 >= &v5[a4])
      {
        v9 = &v5[a4];
      }

      v10 = v9 - &v6[a4];
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = v9 - 1;
      do
      {
        v11[*result] = v11[*result - a4];
        --v11;
        --v10;
      }

      while (v10);
    }
  }

  v12 = result[1];
  v13 = v12 - v6;
  if (v12 > v6)
  {
    if (v13 >= a4)
    {
      v13 = a4;
    }

    if (v13)
    {
      do
      {
        v14 = *a3++;
        (v6++)[*result] = v14;
        --v13;
      }

      while (v13);
      v12 = result[1];
    }
  }

  v15 = result[2] + a4;
  result[2] = v15;
  if (v15 < v12)
  {
    v15[*result] = 0;
  }

  return result;
}

void MrecInitLibrary_dfutil(void)
{
  MrecInitModule_dfile_dfutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dtxtfile_dfutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_progcall_dfutil();
  MrecInitModule_realdf_dfutil();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughDfutil(void)
{
  MrecInitLibrarySet_throughMrecutil();

  MrecInitLibrary_dfutil();
}

void StartupMrec(DgnSharedMemMgr *a1, const char *a2)
{
  StartupMrecutil(a1, a2);
  v3 = ParamSetHolderMgr::startupParamSetHolderMgr(v2);
  ChannelMgr::startupChannelMgr(v3);
  UttFileMgr::startupUttFileMgr(v4);
  EnvHolderMgr::startupEnvHolderMgr(v5);
  v7 = ModelMgr::startupModelMgr(v6);

  RecogCtlMgr::startupRecogCtlMgr(v7);
}

void MrecPrintSize(unsigned int a1, int a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  MrecutilPrintSize(a1, a2, a3, a4, a5);
  if (ParamSetHolderMgr::smpParamSetHolderMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSetHolderMgr::printSize(ParamSetHolderMgr::smpParamSetHolderMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (ChannelMgr::smpChannelMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ChannelMgr::printSize(ChannelMgr::smpChannelMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (UttFileMgr::smpUttFileMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    UttFileMgr::printSize(UttFileMgr::smpUttFileMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (EnvHolderMgr::smpEnvHolderMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    EnvHolderMgr::printSize(EnvHolderMgr::smpEnvHolderMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (ModelMgr::smpModelMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ModelMgr::printSize(ModelMgr::smpModelMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (RecogCtlMgr::smpRecogCtlMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    RecogCtlMgr::printSize(RecogCtlMgr::smpRecogCtlMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }
}

DgnThreadMgr *MessageFormatPrefix(DgnThreadMgr *result, char a2, uint64_t a3, int CurrentThreadId)
{
  v4 = result;
  if ((a2 & 1) != 0 || a3)
  {
    if (CurrentThreadId == -1 && (a2 & 1) == 0)
    {
      CurrentThreadId = DgnThreadMgr::getCurrentThreadId(result);
    }

    if (CurrentThreadId == -1)
    {
      return DgnBuffer::printfAppend(v4, "%s [%s %d %s %d] ", a3);
    }

    else
    {
      return DgnBuffer::printfAppend(v4, "DThread %u: %s [%s %d %s %d] ", a3);
    }
  }

  return result;
}

uint64_t DgnThreadMgr::getCurrentThreadId(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr)
  {
    v1 = DgnThreadMgr::smTlsID == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = pthread_getspecific(DgnThreadMgr::smTlsID);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void DgnString::DgnString(DgnString *this, const DgnString *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = *(a2 + 2);
  if (v3)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 >= 2)
  {
    v6 = *(a2 + 3);
    if (v6)
    {
      v9 = 0;
      *(this + 3) = realloc_array(0, &v9, v6, 0, 0, 1);
      *this = v9;
    }

    DgnString::allocBuffer(this, v4);
    v7 = 0;
    if (v4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    do
    {
      *(*this + v7) = *(*a2 + v7);
      ++v7;
    }

    while (v8 != v7);
  }
}

void *DgnString::allocBuffer(DgnString *this, unsigned int a2)
{
  v4 = a2 + 1;
  v5 = *(this + 3);
  if (v4 <= v5)
  {
    result = *this;
  }

  else
  {
    v6 = (a2 & 0xFFFFFFFC) + 4;
    result = *this;
    if (v5 < v6)
    {
      v8 = 0;
      v5 = realloc_array(result, &v8, v6, *(this + 2), *(this + 2), 1);
      *(this + 3) = v5;
      result = v8;
      *this = v8;
    }
  }

  if (v5 < v4)
  {
    v8 = 0;
    *(this + 3) = realloc_array(result, &v8, v4, *(this + 2), *(this + 2), 1);
    result = v8;
    *this = v8;
  }

  *(this + 2) = v4;
  *(result + a2) = 0;
  return result;
}

void DgnString::DgnString(DgnString *this, const char *__s)
{
  *this = 0;
  *(this + 1) = 0;
  if (__s)
  {
    v4 = strlen(__s);
    if (v4)
    {
      DgnString::allocBuffer(this, v4);
      v5 = 0;
      do
      {
        *(*this + v5) = __s[v5];
        ++v5;
      }

      while (v4 != v5);
    }
  }
}

void DgnString::DgnString(DgnString *this, char a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  if (a3)
  {
    DgnString::allocBuffer(this, a3);
    v6 = 0;
    do
    {
      *(*this + v6++) = a2;
    }

    while (a3 != v6);
  }
}

void DgnString::DgnString(DgnString *this, const char *a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  if (a3)
  {
    DgnString::allocBuffer(this, a3);
    v6 = 0;
    do
    {
      *(*this + v6) = a2[v6];
      ++v6;
    }

    while (a3 != v6);
  }
}

DgnString *DgnString::operator=(DgnString *this, DgnString *a2)
{
  if (this != a2)
  {
    v3 = *(a2 + 2);
    v4 = v3 - 1;
    if (v3 > 1)
    {
      v5 = *a2;
      DgnString::allocBuffer(this, v3 - 1);
      v6 = 0;
      do
      {
        *(*this + v6) = *(v5 + v6);
        ++v6;
      }

      while (v4 != v6);
    }

    else
    {
      *(this + 2) = 0;
    }
  }

  return this;
}

DgnString *DgnString::operator=(DgnString *a1, char *__s)
{
  if (__s && (v4 = strlen(__s)) != 0)
  {
    DgnString::allocBuffer(a1, v4);
    v5 = 0;
    do
    {
      *(*a1 + v5) = __s[v5];
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    *(a1 + 2) = 0;
  }

  return a1;
}

DgnString *DgnString::set(DgnString *this, const char *a2, unsigned int a3)
{
  v3 = this;
  if (a3)
  {
    this = DgnString::allocBuffer(this, a3);
    v6 = 0;
    do
    {
      *(*v3 + v6) = a2[v6];
      ++v6;
    }

    while (a3 != v6);
  }

  else
  {
    *(this + 2) = 0;
  }

  return this;
}

DgnString *DgnString::concatInPlace(DgnString *this, unsigned int a2, char *a3)
{
  v4 = this;
  v5 = *(this + 2);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + a2;
  if (v9)
  {
    this = DgnString::allocBuffer(this, v9);
    if (a2)
    {
      v11 = a2;
      do
      {
        v12 = *a3++;
        *(*v4 + v8++) = v12;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    *(this + 2) = 0;
  }

  return this;
}

uint64_t DgnString::printfAppend(DgnString *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v5 = v2;
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  __str[0] = 0;
  __size_4 = 0;
  __size = 0x2000;
  if (vsnprintf(__str, 0x2000uLL, v3, va) >= 0x2000)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(__str, 1);
        v7 = __size;
        v8 = vsnprintf(Buffer, __size, v4, va);
      }

      while (v8 < 0);
    }

    while (v8 >= v7);
  }

  if (DWORD2(v15))
  {
    v9 = v15;
  }

  else
  {
    v9 = &byte_262899963;
  }

  if (__size_4)
  {
    v10 = v9;
  }

  else
  {
    v10 = __str;
  }

  DgnString::operator+=(v5, v10);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

DgnBuffer *DgnBuffer::getBuffer(DgnBuffer *this, char a2)
{
  v2 = this;
  if (a2)
  {
    if ((*(this + 8196) & 1) == 0)
    {
      DgnString::operator=((this + 8200), this);
      *(v2 + 8196) = 1;
    }
  }

  else if ((*(this + 8196) & 1) == 0)
  {
    *(this + 2048) = 0x2000;
    return v2;
  }

  v3 = 6 * *(v2 + 2048) / 5u;
  *(v2 + 2048) = v3;
  DgnString::allocBuffer((v2 + 8200), v3);
  return *(v2 + 1025);
}

DgnString *DgnString::operator+=(DgnString *this, char *a2)
{
  v2 = a2;
  if (a2)
  {
    LODWORD(a2) = strlen(a2);
  }

  DgnString::concatInPlace(this, a2, v2);
  return this;
}

uint64_t DgnString::stringPrintf(DgnString *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v5 = v2;
  v16 = *MEMORY[0x277D85DE8];
  *(v2 + 8) = 0;
  v15 = 0u;
  __str[0] = 0;
  __size_4 = 0;
  __size = 0x2000;
  if (vsnprintf(__str, 0x2000uLL, v3, va) >= 0x2000)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(__str, 1);
        v7 = __size;
        v8 = vsnprintf(Buffer, __size, v4, va);
      }

      while (v8 < 0);
    }

    while (v8 >= v7);
  }

  if (DWORD2(v15))
  {
    v9 = v15;
  }

  else
  {
    v9 = &byte_262899963;
  }

  if (__size_4)
  {
    v10 = v9;
  }

  else
  {
    v10 = __str;
  }

  DgnString::operator+=(v5, v10);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

uint64_t *DgnString::makeStringPrintf(DgnString *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  __str[0] = 0;
  __size_4 = 0;
  __size = 0x2000;
  if (vsnprintf(__str, 0x2000uLL, v2, va) >= 0x2000)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(__str, 1);
        v6 = __size;
        v7 = vsnprintf(Buffer, __size, v2, va);
      }

      while (v7 < 0);
    }

    while (v7 >= v6);
  }

  if (DWORD2(v14))
  {
    v8 = v14;
  }

  else
  {
    v8 = &byte_262899963;
  }

  if (__size_4)
  {
    v9 = v8;
  }

  else
  {
    v9 = __str;
  }

  DgnString::DgnString(v4, v9);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v14);
}

char *DgnString::formatFloat@<X0>(DgnString *this@<X0>, double a2@<D0>, DgnString *a3@<X8>)
{
  v3 = this;
  v5 = eround(a2, this);
  *a3 = 0;
  *(a3 + 1) = 0;
  DgnString::stringPrintf(a3, "%1.*g", v3, v5);
  if (*(a3 + 2) < 2u)
  {
    goto LABEL_2;
  }

  v7 = *a3;
  v8 = strchr(*a3, 101);
  if (v8)
  {
    v9 = v8 - v7;
    if (v9 == -1)
    {
      v10 = 1;
    }

    else
    {
      DgnString::mid(&v16, a3, v9 + 2);
      if (v17 == 3)
      {
        DgnString::left(v13, a3, v9 + 2);
        operator+(v14, "0", v13);
        operator+(v14, &v16, v15);
        DgnString::operator=(a3, v15);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
      if (*(a3 + 2) < 2u)
      {
LABEL_14:
        DgnString::left(v13, a3, v9);
        operator+(v14, ".", v13);
        operator+(v15, "0", v14);
        DgnString::mid(v12, a3, v9);
        operator+(v15, v12, &v16);
        DgnString::operator=(a3, &v16);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v12);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
        return DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
    v9 = -1;
  }

  v11 = *a3;
  result = strchr(*a3, 46);
  if (!result || result - v11 == 0xFFFFFFFFLL)
  {
    if (v10)
    {
LABEL_2:
      DgnString::concatInPlace(a3, 1u, ".");
      return DgnString::concatInPlace(a3, 1u, "0");
    }

    goto LABEL_14;
  }

  return result;
}

void sub_26259E0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v10 - 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v9);
  _Unwind_Resume(a1);
}

uint64_t DgnString::find(DgnString *this, int a2)
{
  if (*(this + 2) < 2u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *this;
  v4 = strchr(*this, a2);
  if (v4)
  {
    return (v4 - v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

DgnString *DgnString::mid@<X0>(DgnString *__return_ptr a1@<X8>, DgnString *this@<X0>, int a3@<W1>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  return DgnString::setToMid(a1, this, a3);
}

DgnString *operator+@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, DgnString *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  v4 = *(a1 + 8);
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  v5 = v7 != 0;
  v8 = v7 - 1;
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return DgnString::concatCopy(a3, v6, *a1, v9, *a2);
}

DgnString *operator+@<X0>(DgnString *__return_ptr a1@<X8>, char *__s@<X1>, uint64_t a3@<X0>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  v5 = *(a3 + 8);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a3;
  if (__s)
  {
    v10 = strlen(__s);
  }

  else
  {
    v10 = 0;
  }

  return DgnString::concatCopy(a1, v8, v9, v10, __s);
}

void *DgnString::left@<X0>(DgnString *__return_ptr a1@<X8>, void *this@<X0>, unsigned int a3@<W1>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  if (a3)
  {
    v4 = this;
    this = DgnString::allocBuffer(a1, a3);
    v6 = 0;
    v7 = *a1;
    do
    {
      *(v7 + v6) = *(*v4 + v6);
      ++v6;
    }

    while (a3 != v6);
  }

  return this;
}

uint64_t DgnString::atoui(const char **this)
{
  if (!DgnString::checkWhiteSpaceFree(this, -1) || !DgnString::checkIntegral(this, 0))
  {
    if (*(this + 2))
    {
      v2 = *this;
    }

    else
    {
      v2 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 362, "mrecutil/dstring", 3, "%.500s %.500s", v2, "unsigned");
  }

  if (*(this + 2))
  {
    v3 = *this;
  }

  else
  {
    v3 = &byte_262899963;
  }

  v4 = MEMORY[0x277D85DE0];
  if (*v3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = *v3;
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x4000) == 0)
      {
        break;
      }

      v6 = *++v3;
      v5 = v6;
    }

    while (v6 > 0);
    v7 = v5 == 43;
  }

  v8 = v3[v7];
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v3[v7 + 1];
  do
  {
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_21;
    }

    v11 = *(v4 + 4 * v8 + 60);
    if ((v11 & 0x4000) != 0)
    {
      return v9;
    }

    if ((v11 & 0x400) == 0)
    {
LABEL_21:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 377, "mrecutil/dstring", 1, "%02x %c", v8, v8);
      v8 = *(v10 - 1);
    }

    v12 = v8 - 48;
    if ((~(v8 - 48) | 0xFFFFFF01) / 0xA < v9)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 381, "mrecutil/dstring", 2, "%.500s", v3);
    }

    v9 = (v12 + 10 * v9);
    v13 = *v10++;
    v8 = v13;
  }

  while (v13);
  return v9;
}

double DgnString::atodb(const char **this)
{
  if (!DgnString::checkWhiteSpaceFree(this, -1) || (DgnString::checkReal(this) & 1) == 0)
  {
    if (*(this + 2))
    {
      v2 = *this;
    }

    else
    {
      v2 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstring.cpp", 422, "mrecutil/dstring", 3, "%.500s %.500s", v2, "real");
  }

  if (*(this + 2))
  {
    v3 = *this;
  }

  else
  {
    v3 = &byte_262899963;
  }

  v4 = atof(v3);

  return eround(v4, 14);
}

uint64_t DgnString::checkWhiteSpaceFree(char **this, int a2)
{
  if (*(this + 2))
  {
    v2 = *this;
  }

  else
  {
    v2 = &byte_262899963;
  }

  v3 = *v2;
  if (a2)
  {
    result = *v2 == 0;
  }

  else
  {
    result = 1;
  }

  if ((*v2 & 0x80000000) == 0 && (result & 1) == 0)
  {
    v5 = v2 + 1;
    v6 = a2 - 1;
    while ((*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x4000) == 0)
    {
      v8 = *v5++;
      v7 = v8;
      v3 = v8;
      v9 = v8 == 0;
      if (v6)
      {
        result = v9;
      }

      else
      {
        result = 1;
      }

      if ((v7 & 0x80000000) == 0)
      {
        --v6;
        if (!result)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

BOOL DgnString::checkIntegral(char **this, unsigned int a2)
{
  if (*(this + 2))
  {
    v2 = *this;
  }

  else
  {
    v2 = &byte_262899963;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  if (v3 == 45 || v3 == 43)
  {
    v2 += a2;
    v3 = *v2;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 1);
  do
  {
    v5 = v3 - 48;
    result = v5 < 0xA;
    if (v5 >= 0xA)
    {
      break;
    }

    v7 = *v4++;
    v3 = v7;
  }

  while (v7);
  return result;
}

uint64_t DgnString::checkReal(char **this)
{
  if (*(this + 2))
  {
    v1 = *this;
  }

  else
  {
    v1 = &byte_262899963;
  }

  v2 = *v1;
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    for (i = 1; ; i = 0)
    {
      if (v2 == 43 || v2 == 45)
      {
        v6 = *++v1;
        v2 = v6;
        if (!v6)
        {
LABEL_20:
          v4 = 0;
          if ((i & 1) == 0)
          {
            return v4 & 1;
          }

          goto LABEL_21;
        }
      }

      else if (!v2)
      {
        return v4 & 1;
      }

      v7 = 0;
      v4 = 0;
      ++v1;
      do
      {
        if ((v2 - 58) > 0xFFFFFFF5)
        {
          v4 = 1;
        }

        else
        {
          if ((v2 & 0xDF) == 0x45)
          {
            goto LABEL_20;
          }

          if ((v3 | v7) & 1 | (v2 != 46))
          {
            goto LABEL_22;
          }

          v7 = 1;
        }

        v8 = *v1++;
        v2 = v8;
      }

      while (v8);
      --v1;
      if ((i & 1) == 0)
      {
        return v4 & 1;
      }

LABEL_21:
      v2 = *v1;
      v3 = 1;
    }
  }

LABEL_22:
  v4 = 0;
  return v4 & 1;
}

DgnString *DgnString::appendFormattedString(DgnString *this, char *__s)
{
  v2 = __s;
  LODWORD(v4) = strlen(__s);
  v5 = strchr(v2, 39);
  v6 = strchr(v2, 34);
  if (v5)
  {
    v7 = "";
  }

  else
  {
    v7 = "'";
  }

  if (v5)
  {
    v8 = "'";
  }

  else
  {
    v8 = "";
  }

  if (v6)
  {
    v9 = "'";
  }

  else
  {
    v9 = v7;
  }

  if (v6)
  {
    v10 = "";
  }

  else
  {
    v10 = v8;
  }

  v4 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = v4;
    v13 = v2;
    do
    {
      v14 = *v13++;
      v11 += strlen(sStringEncodingTable[v14]);
      --v12;
    }

    while (v12);
    DgnString::preAllocate(this, v11 + 2);
    DgnString::concatInPlace(this, 1u, v9);
    v15 = *v10;
    do
    {
      v17 = *v2++;
      v16 = v17;
      v18 = v10;
      if (v17 != v15)
      {
        v18 = sStringEncodingTable[v16];
      }

      DgnString::operator+=(this, v18);
      --v4;
    }

    while (v4);
  }

  else
  {
    DgnString::preAllocate(this, 2);
    DgnString::concatInPlace(this, 1u, v9);
  }

  return DgnString::concatInPlace(this, 1u, v9);
}

uint64_t *DgnString::preAllocate(uint64_t *this, int a2)
{
  v4 = (a2 + 1);
  if (*(this + 3) < v4)
  {
    v6[3] = v2;
    v6[4] = v3;
    v5 = this;
    v6[0] = 0;
    this = realloc_array(*this, v6, v4, *(v5 + 8), *(v5 + 8), 1);
    *(v5 + 12) = this;
    *v5 = v6[0];
  }

  return this;
}

DgnString *DgnString::concatCopy(DgnString *this, unsigned int a2, const char *a3, unsigned int a4, char *a5)
{
  v5 = a2;
  v6 = this;
  v7 = a4 + a2;
  if (v7)
  {
    this = DgnString::allocBuffer(this, v7);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*v6 + i) = a3[i];
      }
    }

    if (a4)
    {
      v12 = a4;
      do
      {
        v13 = *a5++;
        *(*v6 + v5++) = v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    *(this + 2) = 0;
  }

  return this;
}

uint64_t *DgnString::appendCharWithGrow(uint64_t *this, char a2)
{
  v3 = this;
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v4)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 > v5)
  {
    this = DgnPrimArray<char>::reallocElts(this, v6 - v5, 1);
  }

  *(v3 + 2) = v6;
  *(*v3 + v6 - 2) = a2;
  *(*v3 + v6 - 1) = 0;
  return this;
}

DgnString *DgnString::operator+=(DgnString *a1, char a2)
{
  v4 = a2;
  DgnString::concatInPlace(a1, 1u, &v4);
  return a1;
}

DgnString *DgnString::operator+=(DgnString *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  DgnString::concatInPlace(a1, v5, *a2);
  return a1;
}

DgnString *DgnString::setToMid(DgnString *this, const DgnString *a2, unsigned int a3, unsigned int a4)
{
  v4 = this;
  if (a4)
  {
    this = DgnString::allocBuffer(this, a4);
    v8 = 0;
    do
    {
      *(*v4 + v8++) = *(*a2 + a3++);
    }

    while (a4 != v8);
  }

  else
  {
    *(this + 2) = 0;
  }

  return this;
}

DgnString *DgnString::setToMid(DgnString *this, const DgnString *a2, int a3)
{
  v3 = this;
  v4 = *(a2 + 2);
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (v6 - a3);
  if (v6 == a3)
  {
    *(this + 2) = 0;
  }

  else
  {
    this = DgnString::allocBuffer(this, v6 - a3);
    v10 = 0;
    do
    {
      *(*v3 + v10) = *(*a2 + (a3 + v10));
      ++v10;
    }

    while (v7 != v10);
  }

  return this;
}

uint64_t DgnString::reverseFind(DgnString *this, int a2)
{
  if (*(this + 2) < 2u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *this;
  v4 = strrchr(*this, a2);
  if (v4)
  {
    return (v4 - v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DgnString::find(DgnString *this, const char *a2)
{
  if (*(this + 2) < 2u)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *this;
  v4 = strstr(*this, a2);
  if (v4)
  {
    return (v4 - v3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DgnString::compareNoCase(DgnString *this, const char *a2, const char *a3)
{
  while (*this)
  {
    if (!*a2)
    {
      return 1;
    }

    v5 = __tolower(*this);
    v6 = *a2++;
    this = (this + 1);
    result = (v5 - __tolower(v6));
    if (result)
    {
      return result;
    }
  }

  if (*a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL DgnString::isPrefixNoCase(DgnString *this, const char *a2, const char *a3)
{
  v4 = this;
  v5 = strlen(this);
  if (!v5)
  {
    return 1;
  }

  while (1)
  {
    v6 = *v4;
    v7 = *a2;
    if (*v4)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return (v6 | v7) == 0;
    }

    v9 = __tolower(v6);
    if (v9 != __tolower(*a2))
    {
      break;
    }

    v4 = (v4 + 1);
    ++a2;
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t DgnBuffer::printfAppend(DgnBuffer *this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 8196) == 1)
  {
    if (*(this + 2052))
    {
      v4 = *(this + 1025);
    }

    else
    {
      v4 = &byte_262899963;
    }

    v5 = strlen(v4);
    v8 = 6 * *(this + 2048) / 5u;
    *(this + 2048) = v8;
    DgnString::allocBuffer((this + 8200), v8);
    v7 = *(this + 1025);
    v6 = *(this + 2048);
  }

  else
  {
    v5 = strlen(this);
    v6 = 0x2000;
    *(this + 2048) = 0x2000;
    v7 = this;
  }

  v9 = v6 - v5;
  result = vsnprintf(v7 + v5, v6 - v5, a2, va);
  if ((result & 0x80000000) != 0 || result >= v9)
  {
    do
    {
      do
      {
        Buffer = DgnBuffer::getBuffer(this, 1);
        v12 = *(this + 2048) - v5;
        result = vsnprintf(Buffer + v5, v12, a2, va);
      }

      while ((result & 0x80000000) != 0);
    }

    while (result >= v12);
  }

  return result;
}

char *DgnBuffer::appendString(DgnBuffer *this, const char *__s)
{
  v4 = strlen(__s);
  if (*(this + 8196))
  {
    v5 = 6 * *(this + 2048) / 5u;
    *(this + 2048) = v5;
    DgnString::allocBuffer((this + 8200), v5);
    v6 = *(this + 1025);
    v7 = *(this + 2048) - 1;
  }

  else
  {
    *(this + 2048) = 0x2000;
    v7 = 0x1FFF;
    v6 = this;
  }

  v8 = strlen(v6) + v4;
  if (v8 >= v7)
  {
    do
    {
      Buffer = DgnBuffer::getBuffer(this, 1);
    }

    while (v8 >= *(this + 2048) - 1);
    v6 = Buffer;
  }

  return strcat(v6, __s);
}

uint64_t TItnRule::TItnRule(uint64_t a1, int **a2, char a3, char a4, uint64_t a5, char a6, char *a7, char *a8, char *a9, char *a10, __int128 *a11, __int128 *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  *(a1 + 48) = 0u;
  v22 = (a1 + 48);
  *(a1 + 96) = 0u;
  *(a1 + 152) = 0;
  v23 = (a1 + 152);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v24 = a1 + 120;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 217) = a4;
  *(a1 + 216) = a3;
  *(a1 + 176) = a16;
  *(a1 + 184) = a15;
  *(a1 + 220) = 0;
  v79 = a1 + 96;
  v80 = (a1 + 120);
  MEMORY[0x26672AF30]();
  if (a5)
  {
    MEMORY[0x26672AF30](v24, a5);
  }

  *(a1 + 144) = a6;
  v88 = v90;
  v89 = xmmword_26286B6F0;
  v91 = 1;
  TWord::getWrittenForm(a2, &v88);
  if (*(a1 + 144) == 1)
  {
    v25 = *(a1 + 143);
    if (v25 < 0)
    {
      v25 = *(a1 + 128);
    }
  }

  else
  {
    v25 = *(&v89 + 1);
  }

  *(a1 + 145) = v25 == 0;
  std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ** const*,TPItnTagHandle_fake ** const*>((a1 + 24), a7, a8, (a8 - a7) >> 3);
  std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ** const*,TPItnTagHandle_fake ** const*>(v22, a9, a10, (a10 - a9) >> 3);
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);
  v28 = 126 - 2 * __clz(v27 - v26);
  v84 = sortTags;
  if (v27 == v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(v26, v27, &v84, v29, 1);
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  v32 = 126 - 2 * __clz(v31 - v30);
  v84 = sortTags;
  if (v31 == v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(v30, v31, &v84, v33, 1);
  v34 = a11;
  if (*(a1 + 145))
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  std::vector<TItnControl>::resize(v23, a12 - a11);
  v37 = *(a1 + 184);
  v81 = *(v37 + 136);
  *(v37 + 136) = 1;
  v38 = *(a1 + 152);
  if (a11 != a12)
  {
    v39 = (v38 + 1);
    do
    {
      v40 = *v34++;
      v36 = v40;
      *(v39 - 1) = v40;
      *v39 = v35;
      v39 += 3;
    }

    while (v34 != a12);
  }

  v41 = *(a1 + 160);
  v42 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v41 - v38) >> 3));
  v84 = sortControls;
  if (v41 == v38)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,false>(v38, v41, &v84, v43, 1, v36);
  *(a1 + 192) = a13;
  *(a1 + 200) = a14;
  if (a13 != -1)
  {
    v44 = *(*(*(a1 + 184) + 24) + 8 * a13 - 8);
    ++*(v44 + 128);
  }

  v45 = 2 * (*(a1 + 32) == *(a1 + 24));
  *(a1 + 208) = v45;
  v47 = *(a1 + 48);
  v46 = *(a1 + 56);
  if (v46 == v47 || a13 == -1)
  {
    if (v46 == v47)
    {
      v45 += 2;
    }

    if (a13 == -1)
    {
      v48 = v45 + 1;
    }

    else
    {
      v48 = v45;
    }

    *(a1 + 208) = v48;
  }

  ActiveConfigHandle = TParam::getActiveConfigHandle((a15 + 5768));
  if (*(a15 + TParam::getValidConfig((a15 + 5768), ActiveConfigHandle) + 5920) == 1 && (*(a1 + 145) & 1) == 0)
  {
    if ((*(a1 + 143) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 128))
      {
        goto LABEL_99;
      }
    }

    else if (!*(a1 + 143))
    {
      goto LABEL_99;
    }

    v83 = 0;
    v84 = v86;
    v85 = xmmword_26286B6F0;
    v87 = 1;
    v82 = 0;
    TBuffer<wchar_t>::assign(&v84, "R");
    v50 = 0;
    v51 = *a2;
      ;
    }

    TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v51, v50 - 1);
    v53 = *(a1 + 176);
    if (*(&v85 + 1) >= v85)
    {
      if (v87)
      {
        v92[0] = 0;
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
        v54 = v84;
        --*(&v85 + 1);
      }

      else
      {
        v54 = v84;
        if (v85)
        {
          *(v84 + v85 - 1) = 0;
        }
      }
    }

    else
    {
      v54 = v84;
      *(v84 + *(&v85 + 1)) = 0;
    }

    v82 = TTagManager::addWordRuleTag(v53, v54, -1);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a1 + 72, &v82);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](v79, &v82);
    TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), "=", 2uLL);
    v55 = *(&v85 + 1);
    if (*(&v89 + 1) >= v89)
    {
      if (v91)
      {
        v92[0] = 0;
        TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v92, 1uLL);
        v56 = v88;
        --*(&v89 + 1);
        v57 = *(&v85 + 1);
        goto LABEL_53;
      }

      v56 = v88;
      if (v89)
      {
        v88[v89 - 1] = 0;
      }
    }

    else
    {
      v56 = v88;
      v88[*(&v89 + 1)] = 0;
    }

    v57 = v55;
LABEL_53:
    v58 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v84, v57, v56, v58 - 1);
    v60 = *(a1 + 176);
    if (*(&v85 + 1) >= v85)
    {
      if (v87)
      {
        v92[0] = 0;
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
        v61 = v84;
        --*(&v85 + 1);
      }

      else
      {
        v61 = v84;
        if (v85)
        {
          *(v84 + v85 - 1) = 0;
        }
      }
    }

    else
    {
      v61 = v84;
      *(v84 + *(&v85 + 1)) = 0;
    }

    v83 = TTagManager::addWordRuleTag(v60, v61, v82);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](v79, &v83);
    TBuffer<wchar_t>::resize(&v84, v55);
    v62 = v80;
    if (*(a1 + 143) < 0)
    {
      v62 = *v80;
    }

    v63 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v62, v63 - 1);
    v65 = *(a1 + 176);
    if (*(&v85 + 1) >= v85)
    {
      if (v87)
      {
        v92[0] = 0;
        TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
        v66 = v84;
        --*(&v85 + 1);
      }

      else
      {
        v66 = v84;
        if (v85)
        {
          *(v84 + v85 - 1) = 0;
        }
      }
    }

    else
    {
      v66 = v84;
      *(v84 + *(&v85 + 1)) = 0;
    }

    v83 = TTagManager::addWordRuleTag(v65, v66, v82);
    std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a1 + 72, &v83);
    if (*(a1 + 192) != -1)
    {
      TBuffer<wchar_t>::assign(&v84, dword_26286C828);
      v67 = *(*(*(a1 + 184) + 24) + 8 * *(a1 + 192) - 8);
      v68 = (v67 + 16);
      if (*(v67 + 39) < 0)
      {
        v68 = *v68;
      }

      v69 = 0;
        ;
      }

      TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v68, v69 - 1);
      v92[0] = 61;
      TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
      v71 = *(&v85 + 1);
      if (a14)
      {
        v72 = 49;
      }

      else
      {
        v72 = 48;
      }

      v92[0] = v72;
      TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
      v73 = *(a1 + 176);
      if (*(&v85 + 1) >= v85)
      {
        if (v87)
        {
          v92[0] = 0;
          TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
          v74 = v84;
          --*(&v85 + 1);
        }

        else
        {
          v74 = v84;
          if (v85)
          {
            *(v84 + v85 - 1) = 0;
          }
        }
      }

      else
      {
        v74 = v84;
        *(v84 + *(&v85 + 1)) = 0;
      }

      v83 = TTagManager::addParamTag(v73, v74, -1);
      std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a1 + 72, &v83);
      TBuffer<wchar_t>::resize(&v84, v71);
      if (a14)
      {
        v75 = 48;
      }

      else
      {
        v75 = 49;
      }

      v92[0] = v75;
      TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
      v76 = *(a1 + 176);
      if (*(&v85 + 1) >= v85)
      {
        if (v87)
        {
          v92[0] = 0;
          TBuffer<wchar_t>::insert(&v84, *(&v85 + 1), v92, 1uLL);
          v77 = v84;
          --*(&v85 + 1);
        }

        else
        {
          v77 = v84;
          if (v85)
          {
            *(v84 + v85 - 1) = 0;
          }
        }
      }

      else
      {
        v77 = v84;
        *(v84 + *(&v85 + 1)) = 0;
      }

      v83 = TTagManager::addParamTag(v76, v77, -1);
      std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](v79, &v83);
    }

    if (v87 == 1 && v84 != v86 && v84)
    {
      MEMORY[0x26672B1B0]();
    }
  }

LABEL_99:
  *(v37 + 136) = v81;
  if (v91 == 1 && v88 != v90 && v88)
  {
    MEMORY[0x26672B1B0]();
  }

  return a1;
}

void sub_26259F7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (LOBYTE(STACK[0x458]) == 1 && a17 != v22 && a17)
  {
    MEMORY[0x26672B1B0]();
  }

  *(v20 + 136) = a14;
  if (LOBYTE(STACK[0x878]) == 1)
  {
    v24 = STACK[0x460];
    if (STACK[0x460] != v21)
    {
      if (v24)
      {
        MEMORY[0x26672B1B0](v24, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
      }
    }
  }

  v25 = *v19;
  if (*v19)
  {
    *(v17 + 160) = v25;
    operator delete(v25);
  }

  if (*(v17 + 143) < 0)
  {
    operator delete(*a13);
  }

  v26 = *a12;
  if (*a12)
  {
    *(v17 + 104) = v26;
    operator delete(v26);
  }

  v27 = *(v17 + 72);
  if (v27)
  {
    *(v17 + 80) = v27;
    operator delete(v27);
  }

  v28 = *v18;
  if (*v18)
  {
    *(v17 + 56) = v28;
    operator delete(v28);
  }

  v29 = *(v17 + 24);
  if (v29)
  {
    *(v17 + 32) = v29;
    operator delete(v29);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void std::vector<TItnControl>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<TItnControl>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

BOOL sortControls(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

void std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void TItnRule::~TItnRule(TItnRule *this)
{
  v2 = *(this + 24);
  if (v2 != -1)
  {
    v3 = *(*(*(this + 23) + 24) + 8 * v2 - 8);
    --*(v3 + 128);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL TItnRule::operator==(const __int32 *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (!v3)
  {
    goto LABEL_48;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (!wmemcmp(a1, a2, v3))
  {
LABEL_48:
    if (*(v7 + 145) == *(v6 + 145))
    {
      v8 = *(v7 + 3);
      v9 = *(v7 + 4);
      v10 = *(v6 + 3);
      if (v9 - v8 == *(v6 + 4) - v10)
      {
        if (v9 == v8)
        {
LABEL_20:
          v12 = *(v7 + 6);
          v13 = *(v7 + 7);
          v14 = *(v6 + 6);
          if (v13 - v12 == *(v6 + 7) - v14)
          {
            if (v13 == v12)
            {
LABEL_26:
              result = std::operator==[abi:ne200100]<wchar_t,std::char_traits<wchar_t>,std::allocator<wchar_t>>(v7 + 30, v6 + 30);
              if (!result)
              {
                return result;
              }

              if (*(v7 + 144) == *(v6 + 144) && *(v7 + 24) == *(v6 + 24) && *(v7 + 200) == *(v6 + 200) && v7[55] == v6[55])
              {
                v18 = *(v7 + 19);
                v17 = *(v7 + 20);
                v19 = v17 - v18;
                v20 = *(v6 + 19);
                if (v17 - v18 == *(v6 + 20) - v20)
                {
                  if (v17 == v18)
                  {
                    return 1;
                  }

                  v21 = 0;
                  v22 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
                  if (v22 <= 1)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = v22;
                  }

                  v24 = (v18 + 16);
                  for (i = (v20 + 8); *(v24 - 2) == *(i - 1) && *(v24 - 1) == *i && *v24 == i[1]; i += 3)
                  {
                    ++v21;
                    v24 += 3;
                    if (v23 == v21)
                    {
                      return v21 >= v22;
                    }
                  }
                }
              }
            }

            else
            {
              v15 = (v13 - v12) >> 3;
              if (v15 <= 1)
              {
                v15 = 1;
              }

              while (*v12 == *v14)
              {
                v12 += 8;
                ++v14;
                if (!--v15)
                {
                  goto LABEL_26;
                }
              }
            }
          }
        }

        else
        {
          v11 = (v9 - v8) >> 3;
          if (v11 <= 1)
          {
            v11 = 1;
          }

          while (*v8 == *v10)
          {
            v8 += 8;
            ++v10;
            if (!--v11)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }
  }

  return 0;
}

void *TItnRule::save(const void **a1, void **a2, uint64_t a3)
{
  v35 = v37;
  v36 = xmmword_26286B6F0;
  v38 = 1;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "Rule = \n{\n", 10);
  v6 = a1;
  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
  }

  slashEscape(v6, &v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Token = ", 13);
  if (*(&v36 + 1) >= v36)
  {
    if (v38)
    {
      v39[0] = 0;
      TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v39, 1uLL);
      v7 = v35;
      --*(&v36 + 1);
    }

    else
    {
      v7 = v35;
      if (v36)
      {
        v35[v36 - 1] = 0;
      }
    }
  }

  else
  {
    v7 = v35;
    v35[*(&v36 + 1)] = 0;
  }

  v8 = TOutputStream::operator<<(a2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v8, "\n", 2);
  if ((*(a1 + 143) & 0x8000000000000000) != 0)
  {
    if (!a1[16])
    {
      goto LABEL_13;
    }
  }

  else if (!*(a1 + 143))
  {
LABEL_13:
    if (*(a1 + 144) != 1)
    {
      goto LABEL_24;
    }
  }

  TBuffer<wchar_t>::resize(&v35, 0);
  v9 = a1 + 15;
  if (*(a1 + 143) < 0)
  {
    v9 = *v9;
  }

  slashEscape(v9, &v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Rewrite = ", 15);
  if (*(&v36 + 1) >= v36)
  {
    if (v38)
    {
      v39[0] = 0;
      TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v39, 1uLL);
      v10 = v35;
      --*(&v36 + 1);
    }

    else
    {
      v10 = v35;
      if (v36)
      {
        v35[v36 - 1] = 0;
      }
    }
  }

  else
  {
    v10 = v35;
    v35[*(&v36 + 1)] = 0;
  }

  v11 = TOutputStream::operator<<(a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v11, "\n", 2);
  if ((a1[18] & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    IsRewriteActive = '0'\n", 26);
  }

LABEL_24:
  if (a1[4] != a1[3])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    LeftContexts = {", 20);
    if (a1[4] != a1[3])
    {
      v12 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " '", 2);
        Tag = TTagManager::getTag(a3, *(a1[3] + v12));
        v14 = Tag;
        if (*(Tag + 23) < 0)
        {
          v14 = *Tag;
        }

        v15 = TOutputStream::operator<<(a2, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v15, "'", 1);
        ++v12;
      }

      while (v12 < (a1[4] - a1[3]) >> 3);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " }\n", 3);
  }

  if (a1[7] != a1[6])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    RightContexts = {", 21);
    if (a1[7] != a1[6])
    {
      v16 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " '", 2);
        v17 = TTagManager::getTag(a3, *(a1[6] + v16));
        v18 = v17;
        if (*(v17 + 23) < 0)
        {
          v18 = *v17;
        }

        v19 = TOutputStream::operator<<(a2, v18);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v19, "'", 1);
        ++v16;
      }

      while (v16 < (a1[7] - a1[6]) >> 3);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " }\n", 3);
  }

  if (a1[19] != a1[20])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Controls = {", 16);
    if (a1[20] != a1[19])
    {
      v20 = 0;
      v21 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " '", 2);
        v22 = *(a1[19] + v20) - 1;
        v23 = &dword_26286C844;
        if (v22 <= 0xB)
        {
          v23 = off_279B3B248[v22];
        }

        v24 = TOutputStream::operator<<(a2, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v24, "-", 1);
        v25 = *(a1[19] + v20 + 8) - 1;
        v26 = &dword_26286C844;
        if (v25 <= 4)
        {
          v26 = off_279B3B2A8[v25];
        }

        v27 = TOutputStream::operator<<(a2, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v27, "'", 1);
        ++v21;
        v20 += 24;
      }

      while (v21 < 0xAAAAAAAAAAAAAAABLL * ((a1[20] - a1[19]) >> 3));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, " }\n", 3);
  }

  v28 = a1[24];
  if (v28 != -1)
  {
    if (v28 && (v29 = v28 - 1, v30 = *(a1[23] + 3), v29 < (*(a1[23] + 4) - v30) >> 3))
    {
      v31 = *(v30 + 8 * v29);
    }

    else
    {
      v31 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Parameter = '", 17);
    v32 = (v31 + 16);
    if (*(v31 + 39) < 0)
    {
      v32 = *v32;
    }

    v33 = TOutputStream::operator<<(a2, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v33, "-", 1);
    MEMORY[0x26672B050](*v33, *(a1 + 200));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v33, "'\n", 2);
  }

  if (*(a1 + 216) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    UserAdded = '1'\n", 20);
  }

  if (*(a1 + 217) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "    Deleted = '1'\n", 18);
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a2, "}\n\n", 3);
  if (v38 == 1)
  {
    result = v35;
    if (v35 != v37)
    {
      if (v35)
      {
        return MEMORY[0x26672B1B0]();
      }
    }
  }

  return result;
}

void sub_2625A02A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (LOBYTE(STACK[0x428]) == 1 && a11 != v11 && a11 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void TItnRuleManager::TItnRuleManager(TItnRuleManager *this, TInputStream *a2, TTagManager *a3, TLexicon *a4, TItnParamManager *a5)
{
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *this = &unk_287527760;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 88) = 0u;
  v6 = this + 88;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 7) = a5;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 80) = 0;
  if (*(a2 + 8))
  {
    if (TInputStream::verifyHeader(a2, "ItnRule", pItnRuleVersion, 6))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v29) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v28, *(&v28 + 1));
      }

      else
      {
        *&__p[8] = v28;
        v21[0] = v29;
      }

      *__p = &unk_287528000;
      if (v21[0] >= 0)
      {
        v12 = &__p[8];
      }

      else
      {
        v12 = *&__p[8];
      }

      conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 602);
      *__p = byte_287529580;
      if (SHIBYTE(v21[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v14 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v14, *__p, *&__p[8]);
      }

      else
      {
        v18 = *__p;
        exception[3] = *&__p[16];
        *&v14->__r_.__value_.__l.__data_ = v18;
      }

      *exception = &unk_287528000;
    }

    BoolParameter = TInputStream::getBoolParameter(a2, "Tokens", 1);
    TFileObjectParser::TFileObjectParser(&v28, a2);
    v9 = v28;
    v26 = xmmword_26286B6D0;
    v25 = "R";
    v27 = -1;
    if (TFileObject::verify(v28, &v25, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(&v23, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v24) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v23, *(&v23 + 1));
      }

      else
      {
        *&__p[8] = v23;
        v21[0] = v24;
      }

      *__p = &unk_287528000;
      if (v21[0] >= 0)
      {
        v15 = &__p[8];
      }

      else
      {
        v15 = *&__p[8];
      }

      conditionalAssert(v15, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 617);
      *__p = byte_287529580;
      if (SHIBYTE(v21[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23);
      }

      v16 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v16 = byte_287529580;
      v17 = (v16 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v17, *__p, *&__p[8]);
      }

      else
      {
        v19 = *__p;
        v16[3] = *&__p[16];
        *&v17->__r_.__value_.__l.__data_ = v19;
      }

      *v16 = &unk_287528000;
    }

    v10 = *(a2 + 12);
    v11 = *(v9 + 24);
    if (v11)
    {
      TItnRuleManager::addRule(this, v11, BoolParameter, v10);
    }

    if (v10 >= 6)
    {
      *__p = v21;
      *&__p[8] = xmmword_26286B6F0;
      v22 = 1;
      TInputStream::getStringParameter(a2, "HintRewriteNever", __p, &dword_26286C844);
      if (*&__p[16] >= *&__p[8])
      {
        if (v22)
        {
          LODWORD(v23) = 0;
          TBuffer<wchar_t>::insert(__p, *&__p[16], &v23, 1uLL);
          --*&__p[16];
        }

        else if (*&__p[8])
        {
          *(*__p + 4 * *&__p[8] - 4) = 0;
        }
      }

      else
      {
        *(*__p + 4 * *&__p[16]) = 0;
      }

      MEMORY[0x26672AF30](v6);
      TInputStream::getStringParameter(a2, "HintRewriteAlways", __p, &dword_26286C844);
      if (*&__p[16] >= *&__p[8])
      {
        if (v22)
        {
          LODWORD(v23) = 0;
          TBuffer<wchar_t>::insert(__p, *&__p[16], &v23, 1uLL);
          --*&__p[16];
        }

        else if (*&__p[8])
        {
          *(*__p + 4 * *&__p[8] - 4) = 0;
        }
      }

      else
      {
        *(*__p + 4 * *&__p[16]) = 0;
      }

      MEMORY[0x26672AF30](this + 112);
      if (v22 == 1 && *__p != v21)
      {
        if (*__p)
        {
          MEMORY[0x26672B1B0]();
        }
      }
    }

    TFileObjectParser::~TFileObjectParser(&v28);
  }
}

void sub_2625A0A2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  TFileObjectParser::~TFileObjectParser((v25 - 168));
  if (a2 == 1)
  {
    __cxa_begin_catch(v28);
    TItnRuleManager::freeMemory(v20);
    __cxa_rethrow();
  }

  if (*(v20 + 135) < 0)
  {
    operator delete(*(v20 + 112));
  }

  if (*(v20 + 111) < 0)
  {
    operator delete(*v22);
  }

  v27 = *v23;
  if (*v23)
  {
    *(v20 + 40) = v27;
    operator delete(v27);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(v21, *v24);
  _Unwind_Resume(v28);
}

void sub_2625A0B48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (LOBYTE(STACK[0x428]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v7);
  }

  TFileObjectParser::~TFileObjectParser((v8 - 168));
  if (a2 == 1)
  {
    __cxa_begin_catch(v10);
    TItnRuleManager::freeMemory(v6);
    __cxa_rethrow();
  }

  JUMPOUT(0x2625A0B98);
}

void TItnRuleManager::addRule(TItnRuleManager *this, const TFileObject **a2, uint64_t a3, unint64_t a4)
{
  v4 = a3;
  v151 = *MEMORY[0x277D85DE8];
  memset(v114, 0, sizeof(v114));
  memset(v113, 0, sizeof(v113));
  *(this + 80) = 1;
  v125 = xmmword_26286B6A0;
  v124 = dword_26286C848;
  v126 = -1;
  v128 = xmmword_26286B6A0;
  v127 = dword_26286C870;
  v129 = -1;
  v131 = xmmword_26286B680;
  v130 = dword_26286C890;
  v132 = -1;
  v134 = xmmword_26286B6A0;
  v133 = dword_26286C8A8;
  v135 = -1;
  v137 = xmmword_26286B6A0;
  v136 = dword_26286C8C8;
  v138 = -1;
  v140 = xmmword_26286B6A0;
  v139 = dword_26286C8FC;
  v141 = -1;
  v143 = xmmword_26286B6A0;
  v142 = dword_26286C934;
  v144 = -1;
  v146 = xmmword_26286B6A0;
  v145 = dword_26286C95C;
  v147 = -1;
  v148 = dword_26286C980;
  v149 = 2;
  v150 = xmmword_26286B690;
  if (TFileObject::verify(a2, &v124, 9, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v119 = byte_287529580;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v119[8], __p[0], __p[1]);
    }

    else
    {
      *&v119[8] = *__p;
      v120[0] = __p[2];
    }

    *v119 = &unk_287528000;
    if (v120[0] >= 0)
    {
      v91 = &v119[8];
    }

    else
    {
      v91 = *&v119[8];
    }

    conditionalAssert(v91, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 725);
    *v119 = byte_287529580;
    if (SHIBYTE(v120[0]) < 0)
    {
      operator delete(*&v119[8]);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v119, &byte_262899963);
    *exception = byte_287529580;
    v93 = (exception + 1);
    if ((v119[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v93, *v119, *&v119[8]);
    }

    else
    {
      v100 = *v119;
      exception[3] = *&v119[16];
      *&v93->__r_.__value_.__l.__data_ = v100;
    }

    *exception = &unk_287528000;
  }

  v112 = 0;
  v7 = a2[3];
  v106 = v4;
  if (!v7)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    goto LABEL_263;
  }

  v107 = 0;
  v108 = 0;
  v104 = 0;
  v103 = a2;
  v8 = 0x1070C40ADD13FEBLL;
  while (1)
  {
    v9 = *(v7 + 1);
    if (!wcscmp(v9, dword_26286C890))
    {
      if (TFileObject::verify(v7, 0, 0))
      {
        v112 = 1;
      }

      else if (TLexicon::checkName(*(this + 9), *(v7 + 3), v4, 0xFFFFFFFFFFFFFFFFLL))
      {
        v112 = 1;
        loggableFileObject(v7);
        v13 = v119[23];
        v14 = *v119;
        loggableUnicode(*(v7 + 3), __p);
        v16 = v119;
        if (v13 < 0)
        {
          v16 = v14;
        }

        v17 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v17 = __p[0];
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v15, v16, v17);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v119[23] & 0x80000000) != 0)
        {
          operator delete(*v119);
        }
      }

      else
      {
        v21 = *(this + 9);
        v22 = *(v7 + 3);
        if (v4)
        {
          HeadClone = TLexicon::findHeadClone(v21, v22);
        }

        else
        {
          HeadClone = TLexicon::findWord(v21, v22);
        }

        if (!HeadClone)
        {
          v26 = TLexicon::addTempWord(*(this + 9), *(v7 + 3), 0, 0, 0);
          if (*(getPropCheckTokenExistence() + 8) == 1)
          {
            *v119 = v120;
            *&v119[8] = xmmword_26286B6F0;
            v121 = 1;
            TWord::getWordSense(v26, v119);
            if (*&v119[16] >= *&v119[8])
            {
              if (v121)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(v119, *&v119[16], __p, 1uLL);
                v27 = *v119;
                --*&v119[16];
              }

              else
              {
                v27 = *v119;
                if (*&v119[8])
                {
                  *(*v119 + 4 * *&v119[8] - 4) = 0;
                }
              }
            }

            else
            {
              v27 = *v119;
              *(*v119 + 4 * *&v119[16]) = 0;
            }

            if (wcsncmp(v27, dword_26286C9C0, 4uLL))
            {
              loggableFileObject(v7);
              v37 = SHIBYTE(__p[2]);
              v38 = __p[0];
              loggableUnicode(*v26, v117);
              v40 = __p;
              if (v37 < 0)
              {
                v40 = v38;
              }

              v41 = v117;
              if (v118 < 0)
              {
                v41 = v117[0];
              }

              tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v39, v40, v41);
              if (v118 < 0)
              {
                operator delete(v117[0]);
              }

              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v121 == 1 && *v119 != v120 && *v119)
            {
              MEMORY[0x26672B1B0]();
            }
          }
        }
      }

      goto LABEL_78;
    }

    if (!wcscmp(v9, dword_26286C8A8))
    {
      v12 = TFileObject::verify(v7, 0, 1);
      v112 |= v12;
      if ((v112 & 1) == 0)
      {
        v108 = *(v7 + 3);
      }

      goto LABEL_78;
    }

    if (!wcscmp(v9, dword_26286C848))
    {
      v18 = TFileObject::verify(v7, 0, 0);
      v112 |= v18;
      if ((v112 & 1) == 0)
      {
        v19 = *(v7 + 3);
        {
          operator new();
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (wcscmp(v9, dword_26286C870))
      {
        if (!wcscmp(v9, dword_26286C8C8))
        {
          v24 = formatContexts(v7, *(this + 8), v114);
        }

        else
        {
          if (wcscmp(v9, dword_26286C8FC))
          {
            if (!wcscmp(v9, dword_26286C95C))
            {
              v107 = v7;
              goto LABEL_78;
            }

            if (wcscmp(v9, dword_26286C9D4) && wcscmp(v9, dword_26286C934))
            {
              if (!wcscmp(v9, dword_26286C980))
              {
                v10 = TFileObject::verify(v7, 0, 0);
                v112 |= v10;
                if ((v112 & 1) == 0)
                {
                  v11 = *(v7 + 3);
                  {
                    operator new();
                  }

                  TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v112);
                }

                v104 = 1;
              }

              goto LABEL_78;
            }

            v28 = *(this + 7);
            if (TFileObject::verify(v7, 0, 0))
            {
LABEL_49:
              v29 = -1;
              goto LABEL_50;
            }

            v30 = v8;
            v31 = *(v7 + 3);
            v32 = wcschr(v31, 45);
            if (!v32)
            {
              loggableFileObject(v7);
              v4 = v106;
              v8 = v30;
              v36 = v119;
              if (v119[23] < 0)
              {
                v36 = *v119;
              }

              tknPrintf("Error: %sSyntax error, no '-' in control value\n", v35, v36);
              if ((v119[23] & 0x80000000) != 0)
              {
                operator delete(*v119);
              }

              goto LABEL_49;
            }

            v33 = v32;
            *v119 = v120;
            *&v119[8] = xmmword_26286B6F0;
            v121 = 1;
            TBuffer<wchar_t>::resize(v119, 0);
            TBuffer<wchar_t>::insert(v119, 0, v31, v33 - v31);
            if (*&v119[16] >= *&v119[8])
            {
              v8 = v30;
              if (v121)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(v119, *&v119[16], __p, 1uLL);
                v34 = *v119;
                --*&v119[16];
              }

              else
              {
                v34 = *v119;
                if (*&v119[8])
                {
                  *(*v119 + 4 * *&v119[8] - 4) = 0;
                }
              }
            }

            else
            {
              v34 = *v119;
              *(*v119 + 4 * *&v119[16]) = 0;
              v8 = v30;
            }

            TParamManager::find(v28, v34, v115);
            TParamManager::end(v28, __p);
            if (v115[0] == __p[0])
            {
              loggableFileObject(v7);
              if (SHIBYTE(__p[2]) >= 0)
              {
                v44 = __p;
              }

              else
              {
                v44 = __p[0];
              }

              v4 = v106;
              if (*&v119[16] >= *&v119[8])
              {
                if (v121)
                {
                  LODWORD(v109) = 0;
                  TBuffer<wchar_t>::insert(v119, *&v119[16], &v109, 1uLL);
                  v45 = *v119;
                  --*&v119[16];
                }

                else
                {
                  v45 = *v119;
                  if (*&v119[8])
                  {
                    *(*v119 + 4 * *&v119[8] - 4) = 0;
                  }
                }
              }

              else
              {
                v45 = *v119;
                *(*v119 + 4 * *&v119[16]) = 0;
              }

              loggableUnicode(v45, v117);
              v51 = v117;
              if (v118 < 0)
              {
                v51 = v117[0];
              }

              tknPrintf("Error: %s'%s' : Parameter name does not exist\n", v50, v44, v51);
LABEL_123:
              if (v118 < 0)
              {
                operator delete(v117[0]);
              }

              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              v29 = -1;
            }

            else
            {
              if (*(*(*(v28 + 24) + 8 * *(v115[0] + 5) - 8) + 8))
              {
                loggableFileObject(v7);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v42 = __p;
                }

                else
                {
                  v42 = __p[0];
                }

                v4 = v106;
                if (*&v119[16] >= *&v119[8])
                {
                  if (v121)
                  {
                    LODWORD(v109) = 0;
                    TBuffer<wchar_t>::insert(v119, *&v119[16], &v109, 1uLL);
                    v43 = *v119;
                    --*&v119[16];
                  }

                  else
                  {
                    v43 = *v119;
                    if (*&v119[8])
                    {
                      *(*v119 + 4 * *&v119[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v43 = *v119;
                  *(*v119 + 4 * *&v119[16]) = 0;
                }

                loggableUnicode(v43, v117);
                v49 = v117;
                if (v118 < 0)
                {
                  v49 = v117[0];
                }

                tknPrintf("Error: %s'%s' : This parameter type cannot be used in word rules\n", v48, v42, v49);
                goto LABEL_123;
              }

              LOBYTE(v123) = 0;
              {
                operator new();
              }

              TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v33 + 1, &v123);
              v4 = v106;
              if (v123 == 1)
              {
                loggableFileObject(v7);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v46 = __p;
                }

                else
                {
                  v46 = __p[0];
                }

                if (*&v119[16] >= *&v119[8])
                {
                  if (v121)
                  {
                    LODWORD(v109) = 0;
                    TBuffer<wchar_t>::insert(v119, *&v119[16], &v109, 1uLL);
                    v47 = *v119;
                    --*&v119[16];
                  }

                  else
                  {
                    v47 = *v119;
                    if (*&v119[8])
                    {
                      *(*v119 + 4 * *&v119[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v47 = *v119;
                  *(*v119 + 4 * *&v119[16]) = 0;
                }

                loggableUnicode(v47, v117);
                v53 = v117;
                if (v118 < 0)
                {
                  v53 = v117[0];
                }

                tknPrintf("Error: %s'%s' : The value is out of range, expected a BOOLean.\n", v52, v46, v53);
                goto LABEL_123;
              }

              v29 = *(v115[0] + 5);
            }

            if (v121 == 1 && *v119 != v120 && *v119)
            {
              MEMORY[0x26672B1B0]();
            }

LABEL_50:
            v25 = v112 | (v29 == -1);
LABEL_42:
            v112 = v25;
            goto LABEL_78;
          }

          v24 = formatContexts(v7, *(this + 8), v113);
        }

        v25 = v112 | v24;
        goto LABEL_42;
      }

      v20 = TFileObject::verify(v7, 0, 0);
      v112 |= v20;
      if ((v112 & 1) == 0)
      {
        v19 = *(v7 + 3);
        {
          operator new();
        }

LABEL_33:
        TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v19, &v112);
      }
    }

LABEL_78:
    v7 = *(v7 + 2);
    if (!v7)
    {
      if (v112)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v119 = byte_287529580;
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v119[8], __p[0], __p[1]);
        }

        else
        {
          *&v119[8] = *__p;
          v120[0] = __p[2];
        }

        *v119 = &unk_287528000;
        if (v120[0] >= 0)
        {
          v94 = &v119[8];
        }

        else
        {
          v94 = *&v119[8];
        }

        conditionalAssert(v94, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 830);
        *v119 = byte_287529580;
        if (SHIBYTE(v120[0]) < 0)
        {
          operator delete(*&v119[8]);
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v95 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v119, &byte_262899963);
        *v95 = byte_287529580;
        v96 = (v95 + 1);
        if ((v119[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v96, *v119, *&v119[8]);
        }

        else
        {
          v101 = *v119;
          v95[3] = *&v119[16];
          *&v96->__r_.__value_.__l.__data_ = v101;
        }

        *v95 = &unk_287528000;
      }

      if (!((v108 != 0) | (v104 ^ 1) & 1))
      {
        loggableFileObject(v103);
        if (v119[23] >= 0)
        {
          v55 = v119;
        }

        else
        {
          v55 = *v119;
        }

        tknPrintf("Error: %sIsRewriteActive = '1' but no Rewrite attribute specified\n", v54, v55);
        if ((v119[23] & 0x80000000) != 0)
        {
          operator delete(*v119);
        }

        v112 = 1;
      }

      v109 = 0;
      v110 = 0;
      v111 = 0;
      if (v107)
      {
        *&__p[1] = vdupq_n_s64(1uLL);
        __p[0] = &unk_26286C844;
        __p[3] = -1;
        if (TFileObject::verify(v107, __p, 1, 1))
        {
          v56 = 1;
          goto LABEL_262;
        }

        v57 = *(v107 + 24);
        if (v57)
        {
          v58 = 0;
          do
          {
            ++v58;
            v57 = *(v57 + 16);
          }

          while (v57);
        }

        else
        {
          v58 = 0;
        }

        std::vector<TPItnRuleControl>::reserve(&v109, v58);
        v59 = *(v107 + 24);
        if (v59)
        {
          v56 = 0;
          while (1)
          {
            v60 = wcschr(*(v59 + 24), 45);
            if (!v60)
            {
              loggableFileObject(v59);
              if (v119[23] >= 0)
              {
                v65 = v119;
              }

              else
              {
                v65 = *v119;
              }

              tknPrintf("Error: %sSyntax error, no '-' in control value\n", v64, v65);
              if ((v119[23] & 0x80000000) != 0)
              {
                operator delete(*v119);
              }

              v56 = 1;
              goto LABEL_252;
            }

            v61 = v60;
            *v119 = v120;
            *&v119[8] = xmmword_26286B6F0;
            v121 = 1;
            v62 = *(v59 + 24);
            TBuffer<wchar_t>::resize(v119, 0);
            TBuffer<wchar_t>::insert(v119, 0, v62, v61 - v62);
            if (*&v119[16] >= *&v119[8])
            {
              if (v121)
              {
                LODWORD(v117[0]) = 0;
                TBuffer<wchar_t>::insert(v119, *&v119[16], v117, 1uLL);
                v63 = *v119;
                --*&v119[16];
              }

              else
              {
                v63 = *v119;
                if (*&v119[8])
                {
                  *(*v119 + 4 * *&v119[8] - 4) = 0;
                }
              }
            }

            else
            {
              v63 = *v119;
              *(*v119 + 4 * *&v119[16]) = 0;
            }

            if (!wcscmp(v63, "C"))
            {
              v68 = 6;
            }

            else if (!wcscmp(v63, "N"))
            {
              v68 = 4;
            }

            else if (!wcscmp(v63, "A"))
            {
              v68 = 5;
            }

            else if (!wcscmp(v63, "N"))
            {
              v68 = 1;
            }

            else if (!wcscmp(v63, "O"))
            {
              v68 = 2;
            }

            else if (!wcscmp(v63, "T"))
            {
              v68 = 3;
            }

            else if (!wcscmp(v63, "R"))
            {
              v68 = 9;
            }

            else if (!wcscmp(v63, "S"))
            {
              v68 = 8;
            }

            else if (!wcscmp(v63, "K"))
            {
              v68 = 10;
            }

            else if (!wcscmp(v63, "H"))
            {
              v68 = 11;
            }

            else if (!wcscmp(v63, "R"))
            {
              v68 = 12;
            }

            else
            {
              if (wcscmp(v63, "F"))
              {
                loggableFileObject(v59);
                if (v118 >= 0)
                {
                  v66 = v117;
                }

                else
                {
                  v66 = v117[0];
                }

                if (*&v119[16] >= *&v119[8])
                {
                  if (v121)
                  {
                    v123 = 0;
                    TBuffer<wchar_t>::insert(v119, *&v119[16], &v123, 1uLL);
                    v67 = *v119;
                    --*&v119[16];
                  }

                  else
                  {
                    v67 = *v119;
                    if (*&v119[8])
                    {
                      *(*v119 + 4 * *&v119[8] - 4) = 0;
                    }
                  }
                }

                else
                {
                  v67 = *v119;
                  *(*v119 + 4 * *&v119[16]) = 0;
                }

                loggableUnicode(v67, v115);
                v90 = v115;
                if (v116 < 0)
                {
                  v90 = v115[0];
                }

                tknPrintf("Error: %s'%s' : Bad control name\n", v89, v66, v90);
LABEL_230:
                if (v116 < 0)
                {
                  operator delete(v115[0]);
                }

                if (v118 < 0)
                {
                  operator delete(v117[0]);
                }

                v56 = 1;
                goto LABEL_248;
              }

              v68 = 7;
            }

            if (!wcscmp(v61 + 1, "O"))
            {
              v69 = 1;
            }

            else if (!wcscmp(v61 + 1, "O"))
            {
              v69 = 2;
            }

            else if (!wcscmp(v61 + 1, "B"))
            {
              v69 = 4;
            }

            else if (!wcscmp(v61 + 1, "A"))
            {
              v69 = 3;
            }

            else if (!wcscmp(v61 + 1, "I"))
            {
              v69 = 5;
            }

            else if (!wcscmp(v61 + 1, "T"))
            {
              v69 = 6;
            }

            else
            {
              v69 = -1;
            }

            if (v69 != 6)
            {
              if (v69 != -1)
              {
                v80 = v110;
                if (v110 >= v111)
                {
                  v82 = (v110 - v109) >> 4;
                  v83 = v82 + 1;
                  if ((v82 + 1) >> 60)
                  {
                    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
                  }

                  v84 = v111 - v109;
                  if ((v111 - v109) >> 3 > v83)
                  {
                    v83 = v84 >> 3;
                  }

                  if (v84 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v85 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v85 = v83;
                  }

                  if (v85)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(&v109, v85);
                  }

                  v86 = (16 * v82);
                  *v86 = v68;
                  v86[1] = v69;
                  v81 = 16 * v82 + 16;
                  v87 = (16 * v82 - (v110 - v109));
                  memcpy(v87, v109, v110 - v109);
                  v88 = v109;
                  v109 = v87;
                  v110 = v81;
                  v111 = 0;
                  if (v88)
                  {
                    operator delete(v88);
                  }
                }

                else
                {
                  *v110 = v68;
                  *(v80 + 1) = v69;
                  v81 = (v80 + 16);
                }

                v110 = v81;
                goto LABEL_248;
              }

              loggableFileObject(v59);
              v70 = v118;
              v71 = v117[0];
              loggableUnicode(v61 + 1, v115);
              v73 = v117;
              if (v70 < 0)
              {
                v73 = v71;
              }

              v74 = v115;
              if (v116 < 0)
              {
                v74 = v115[0];
              }

              tknPrintf("Error: %s'%s' : Bad control param\n", v72, v73, v74);
              goto LABEL_230;
            }

            if (a4 >= 5)
            {
              loggableFileObject(v59);
              v75 = v118;
              v76 = v117[0];
              loggableUnicode(v61 + 1, v115);
              v78 = v117;
              if (v75 < 0)
              {
                v78 = v76;
              }

              v79 = v115;
              if (v116 < 0)
              {
                v79 = v115[0];
              }

              tknPrintf("Error: %s'%s' : Transfer control param is deprecated.\n", v77, v78, v79);
              goto LABEL_230;
            }

LABEL_248:
            if (v121 == 1 && *v119 != v120 && *v119)
            {
              MEMORY[0x26672B1B0]();
            }

LABEL_252:
            v59 = *(v59 + 16);
            if (!v59)
            {
              goto LABEL_262;
            }
          }
        }

        v56 = 0;
LABEL_262:
        v112 |= v56 & 1;
        if ((v112 & 1) == 0)
        {
LABEL_263:
          operator new();
        }
      }

      else if ((v108 != 0) | (v104 ^ 1) & 1)
      {
        goto LABEL_263;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v119 = byte_287529580;
      if (SHIBYTE(__p[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v119[8], __p[0], __p[1]);
      }

      else
      {
        *&v119[8] = *__p;
        v120[0] = __p[2];
      }

      *v119 = &unk_287528000;
      if (v120[0] >= 0)
      {
        v97 = &v119[8];
      }

      else
      {
        v97 = *&v119[8];
      }

      conditionalAssert(v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/rulemgr.cpp", 848);
      *v119 = byte_287529580;
      if (SHIBYTE(v120[0]) < 0)
      {
        operator delete(*&v119[8]);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v98 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v119, &byte_262899963);
      *v98 = byte_287529580;
      v99 = (v98 + 1);
      if ((v119[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v99, *v119, *&v119[8]);
      }

      else
      {
        v102 = *v119;
        v98[3] = *&v119[16];
        *&v99->__r_.__value_.__l.__data_ = v102;
      }

      *v98 = &unk_287528000;
    }
  }
}

void sub_2625A251C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37)
{
  MEMORY[0x26672B1B0](v37, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void TItnRuleManager::freeMemory(TItnRuleManager *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        TItnRule::~TItnRule(v5);
        MEMORY[0x26672B1B0]();
        v3 = *(this + 4);
        v2 = *(this + 5);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v7 = *(this + 2);
  v6 = (this + 16);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
  v6[3] = v6[2];
}

void TItnRuleManager::~TItnRuleManager(TItnRuleManager *this)
{
  *this = &unk_287527760;
  TItnRuleManager::freeMemory(this);
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 8, *(this + 2));
}

{
  TItnRuleManager::~TItnRuleManager(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t TItnRuleManager::isCustomized(TItnRuleManager *this)
{
  v1 = *(this + 1);
  if (v1 == (this + 16))
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 7);
    if (v2)
    {
      v3 = *(this + 4);
      if (v2 <= (*(this + 5) - v3) >> 3)
      {
        v2 = *(v3 + 8 * v2 - 8);
      }

      else
      {
        v2 = 0;
      }
    }

    if (*(v2 + 217) & 1) != 0 || (*(v2 + 216))
    {
      break;
    }

    v4 = *(v1 + 1);
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = *(v1 + 2);
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
    if (v5 == (this + 16))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t formatContexts(const TFileObject *a1, uint64_t a2, uint64_t **a3)
{
  v21 = &unk_26286C844;
  v6 = 1;
  v22 = vdupq_n_s64(1uLL);
  v23 = -1;
  if ((TFileObject::verify(a1, &v21, 1, 1) & 1) == 0)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = 0;
      do
      {
        ++v8;
        v7 = *(v7 + 16);
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    std::vector<TPItnTagHandle_fake **>::reserve(a3, v8);
    v9 = *(a1 + 3);
    if (v9)
    {
      v6 = 0;
      do
      {
        v20 = (*(*a2 + 16))(a2, *(v9 + 24));
        if (v20 == -1)
        {
          loggableFileObject(a1);
          if (v19 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          tknPrintf("Error: %sBad tag\n", v10, v11);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          v6 = 1;
        }

        else
        {
          std::vector<TPItnTagHandle_fake **>::push_back[abi:ne200100](a3, &v20);
        }

        v9 = *(v9 + 16);
      }

      while (v9);
    }

    else
    {
      v6 = 0;
    }

    v12 = *a3;
    v13 = a3[1];
    v14 = 126 - 2 * __clz(v13 - *a3);
    v15 = v13 == *a3;
    __p[0] = sortTags;
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(v12, v13, __p, v16, 1);
  }

  return v6 & 1;
}

void sub_2625A2C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TItnRuleManager::isAmbiguousRule(TItnRuleManager *this, const TItnRule *a2)
{
  v2 = a2;
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(this + 8, __p);
  v6 = v5;
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == v6)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(*(this + 4) - 8 + 8 * v4[7]);
    if ((*(v7 + 217) & 1) == 0)
    {
      v8 = *(v2 + 3);
      v9 = *(v2 + 4);
      v10 = v9 - v8;
      v11 = *(v7 + 24);
      if (v9 - v8 == *(v7 + 32) - v11)
      {
        if (v9 == v8)
        {
          goto LABEL_13;
        }

        v12 = 0;
        v13 = v10 >> 3;
        do
        {
          v14 = *(v8 + 8 * v12);
          v15 = *(v11 + 8 * v12++);
        }

        while (v12 < v13 && v14 == v15);
        if (v14 == v15)
        {
LABEL_13:
          v16 = *(v2 + 6);
          v17 = *(v2 + 7);
          v18 = v17 - v16;
          v19 = *(v7 + 48);
          if (v17 - v16 == *(v7 + 56) - v19)
          {
            if (v17 == v16)
            {
              goto LABEL_20;
            }

            v20 = 0;
            v21 = v18 >> 3;
            do
            {
              v22 = *(v16 + 8 * v20);
              v23 = *(v19 + 8 * v20++);
            }

            while (v20 < v21 && v22 == v23);
            if (v22 == v23)
            {
LABEL_20:
              if (*(v2 + 24) == *(v7 + 192) && *(v2 + 200) == *(v7 + 200))
              {
                return 1;
              }
            }
          }
        }
      }
    }

    v24 = v4[1];
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      do
      {
        v25 = v4[2];
        v26 = *v25 == v4;
        v4 = v25;
      }

      while (!v26);
    }

    v4 = v25;
    if (v25 == v6)
    {
      return 0;
    }
  }
}

void sub_2625A2DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnRule *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t TItnRuleManager::getRules(uint64_t a1, __int32 *a2, int a3, uint64_t a4)
{
  *(a4 + 16) = 0;
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(a1 + 8, __p);
  v9 = v8;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 != v9)
  {
    LOBYTE(v10) = 0;
    while (1)
    {
      v11 = v7[7];
      if (v11 && (v12 = *(a1 + 32), v11 <= (*(a1 + 40) - v12) >> 3))
      {
        v13 = *(v12 + 8 * v11 - 8);
        if (a3)
        {
LABEL_9:
          if (*(v13 + 216))
          {
            goto LABEL_14;
          }

LABEL_13:
          __p[0] = v7[7];
          TBuffer<TPItnRuleHandle_fake **>::insert(a4, *(a4 + 16), __p, 1uLL);
          goto LABEL_14;
        }
      }

      else
      {
        v13 = 0;
        if (a3)
        {
          goto LABEL_9;
        }
      }

      if ((*(v13 + 217) & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (*(v13 + 216))
      {
        v14 = 1;
      }

      else
      {
        v14 = *(v13 + 217);
      }

      v15 = v7[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v10 = v14 | (v10 & 1);
      v7 = v16;
      if (v16 == v9)
      {
        return v10;
      }
    }
  }

  return 0;
}

void sub_2625A300C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::addRule(uint64_t a1, __int32 *a2, uint64_t a3, char a4, void *a5, uint64_t a6, void *a7, uint64_t a8, __int128 *a9, __int128 *a10, uint64_t a11, char a12)
{
  *(a1 + 80) = 1;
  if (!TLexicon::findWord(*(a1 + 72), a2))
  {
    TLexicon::addTempWord(*(a1 + 72), a2, 0, 0, 0);
  }

  operator new();
}

void sub_2625A3250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::deleteRule(uint64_t a1, unint64_t a2)
{
  if (a2 && (v4 = *(a1 + 32), a2 <= (*(a1 + 40) - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2 - 8);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 80) = 1;
  v6 = v5;
  if (v5[23] < 0)
  {
    v6 = *v5;
  }

  std::wstring::basic_string[abi:ne200100]<0>(__p, v6);
  v7 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(a1 + 8, __p);
  v9 = v8;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 != v9)
  {
    while (v7[7] != a2)
    {
      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
      if (v11 == v9)
      {
        v7 = v9;
        break;
      }
    }
  }

  if (v5[216])
  {
    TItnRule::~TItnRule(v5);
    MEMORY[0x26672B1B0]();
    *(*(a1 + 32) + 8 * a2 - 8) = 0;
    std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase((a1 + 8), v7);
  }

  else
  {
    v5[217] = 1;
  }
}

void sub_2625A33CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::resetRules(uint64_t a1, __int32 *a2)
{
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>(a1 + 8, __p);
  v5 = v4;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 80) = 1;
  if (v3 != v5)
  {
    do
    {
      v6 = v3[7];
      if (v6 && (v7 = *(a1 + 32), v6 <= (*(a1 + 40) - v7) >> 3))
      {
        v8 = *(v7 + 8 * v6 - 8);
      }

      else
      {
        v8 = 0;
      }

      if (*(v8 + 216) == 1)
      {
        TItnRule::~TItnRule(v8);
        MEMORY[0x26672B1B0]();
        *(*(a1 + 32) + 8 * v3[7] - 8) = 0;
        v9 = v3[1];
        v10 = v3;
        if (v9)
        {
          do
          {
            v11 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v11 = v10[2];
            v12 = *v11 == v10;
            v10 = v11;
          }

          while (!v12);
        }

        std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase((a1 + 8), v3);
      }

      else
      {
        *(v8 + 217) = 0;
        v13 = v3[1];
        if (v13)
        {
          do
          {
            v11 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v11 = v3[2];
            v12 = *v11 == v3;
            v3 = v11;
          }

          while (!v12);
        }
      }

      v3 = v11;
    }

    while (v11 != v5);
  }
}

void sub_2625A3538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TItnRuleManager::resetAllRules(TItnRuleManager *this)
{
  v2 = (this + 8);
  v3 = *(this + 1);
  *(this + 80) = 1;
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(v3 + 7);
      if (v5 && (v6 = *(this + 4), v5 <= (*(this + 5) - v6) >> 3))
      {
        v7 = *(v6 + 8 * v5 - 8);
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 216) == 1)
      {
        TItnRule::~TItnRule(v7);
        MEMORY[0x26672B1B0]();
        *(*(this + 4) + 8 * *(v3 + 7) - 8) = 0;
        v8 = *(v3 + 1);
        v9 = v3;
        if (v8)
        {
          do
          {
            v10 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v10 = *(v9 + 2);
            v11 = *v10 == v9;
            v9 = v10;
          }

          while (!v11);
        }

        std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase(v2, v3);
      }

      else
      {
        *(v7 + 217) = 0;
        v12 = *(v3 + 1);
        if (v12)
        {
          do
          {
            v10 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v10 = *(v3 + 2);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  v13 = *(this + 4);
  v14 = *(this + 5);
  v15 = (this + 32);
  v16 = (v14 - v13) >> 3;
  v17 = v13 - 8;
  do
  {
    v18 = v16;
    if (!v16)
    {
      break;
    }

    --v16;
  }

  while (!*(v17 + 8 * v18));

  std::vector<TItnRule *>::resize(v15, v18);
}

void std::vector<TItnRule *>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<TItnRule *>::__append(result, a2 - v2);
  }
}

BOOL TItnRuleManager::save(uint64_t a1, void **a2, char a3)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  std::string::basic_string[abi:ne200100]<0>(__p, "Tokens");
  v21 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &std::piecewise_construct, &v21);
  MEMORY[0x26672AF30](v6 + 56, &unk_26286C9F0);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_12;
    }

    v7 = *v7;
  }

  else if (!*(a1 + 111))
  {
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "HintRewriteNever");
  v21 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &std::piecewise_construct, &v21);
  MEMORY[0x26672AF30](v9 + 56, v7);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v10 = (a1 + 112);
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    if (!*(a1 + 135))
    {
      goto LABEL_19;
    }

LABEL_17:
    std::string::basic_string[abi:ne200100]<0>(__p, "HintRewriteAlways");
    v21 = __p;
    v11 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v19, __p, &std::piecewise_construct, &v21);
    MEMORY[0x26672AF30](v11 + 56, v10);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_19;
  }

  if (*(a1 + 120))
  {
    v10 = *v10;
    goto LABEL_17;
  }

LABEL_19:
  TOutputStream::writeHeader(a2, "ItnRule", pItnRuleVersion, 6, &v19);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v12 != v13)
  {
    v14 = 0;
    v8 = 0;
    while (1)
    {
      v15 = *(v13 + 8 * v14);
      if (v15)
      {
        if (*(v15 + 216) == 1)
        {
          v8 = 1;
          if (a3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v8 = (*(v15 + 217) | v8) != 0;
        }

        TItnRule::save(v15, a2, *(a1 + 64));
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
      }

LABEL_27:
      if (++v14 >= ((v12 - v13) >> 3))
      {
        goto LABEL_30;
      }
    }
  }

  v8 = 0;
LABEL_30:
  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(&v19, v20[0]);
  return v8;
}

void TItnRuleManager::importChanges(TItnRuleManager *this, const TItnRuleManager *a2)
{
  *(this + 80) = 1;
  v2 = *(a2 + 1);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v19 = v21;
  v20 = xmmword_26286B6F0;
  v22 = 1;
  v3 = a2 + 16;
  if (v2 == (a2 + 16))
  {
LABEL_27:
    v18 = v19 == v21 || v19 == 0;
    if (!v18)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_32;
  }

  v6 = 0;
  do
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = (v2 + 4);
    v8 = wcslen(v6);
    v9 = *(v2 + 55);
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v8 == v9)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_11:
        if (!wmemcmp(v7, v6, v8))
        {
          goto LABEL_20;
        }
      }

LABEL_12:
      v6 = (v2 + 4);
      if (*(v2 + 55) < 0)
      {
        v6 = *v6;
      }

      if ((*(*a2 + 48))(a2, v6, 0, &v19))
      {
        v10 = *(this + 9);
        v11 = *(*(a2 + 9) + 336);
        ActiveConfigHandle = TParam::getActiveConfigHandle((v11 + 144));
        TParam::getValidConfig((v11 + 144), ActiveConfigHandle);
        TLexicon::mapWord(v10, v6);
        v13 = v23;
        if (v24 != v23)
        {
          v14 = 0;
          do
          {
            TWord::getWordSpec(v13[v14]);
            if (v15 != -1)
            {
              TItnRuleManager::importAdd(this, a2, &v19, v23[v14]);
            }

            ++v14;
            v13 = v23;
          }

          while (v14 < v24 - v23);
        }
      }

      goto LABEL_20;
    }

    if (v8 != v2[5])
    {
      goto LABEL_12;
    }

    if (v8 == -1)
    {
      std::wstring::__throw_out_of_range[abi:ne200100]();
    }

    v7 = *v7;
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_20:
    v16 = v2[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v2[2];
        v18 = *v17 == v2;
        v2 = v17;
      }

      while (!v18);
    }

    v2 = v17;
  }

  while (v17 != v3);
  if (v22)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_2625A3B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x820]) == 1 && a10 != v10 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  v14 = *(v11 - 104);
  if (v14)
  {
    *(v11 - 96) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void TItnRuleManager::importAdd(void *a1, void *a2, void *a3, __int32 **a4)
{
  v39 = v41;
  v40 = xmmword_26286B6F0;
  v42 = 1;
  if (((*(*a1 + 48))(a1, *a4, 0, &v39) & 1) == 0)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    std::wstring::basic_string[abi:ne200100]<0>(__p, *a4);
    v8 = std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::__equal_range_multi<std::wstring>((a1 + 1), __p);
    v10 = v9;
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 != v10)
    {
      v11 = a1[4] - 8;
      do
      {
        *(*(v11 + 8 * v8[7]) + 217) = 1;
        v12 = v8[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v8[2];
            v14 = *v13 == v8;
            v8 = v13;
          }

          while (!v14);
        }

        v8 = v13;
      }

      while (v13 != v10);
    }

    if (a3[2])
    {
      v15 = 0;
      do
      {
        v16 = *(*a3 + 8 * v15);
        if (v16 && (v17 = a2[4], v16 <= (a2[5] - v17) >> 3))
        {
          v18 = *(v17 + 8 * v16 - 8);
        }

        else
        {
          v18 = 0;
        }

        if (*(v18 + 32) == *(v18 + 24))
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v18 + 24);
        }

        if (*(v18 + 56) == *(v18 + 48))
        {
          v20 = 0;
        }

        else
        {
          v20 = *(v18 + 48);
        }

        std::vector<TPItnRuleControl>::resize(&v36, 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 160) - *(v18 + 152)) >> 3));
        v22 = *(v18 + 152);
        v21 = *(v18 + 160);
        if (v21 != v22)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
          v24 = v36;
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v25 = *(v18 + 152);
          do
          {
            v26 = *v25;
            v25 = (v25 + 24);
            *v24++ = v26;
            --v23;
          }

          while (v23);
        }

        if (v21 == v22)
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

        v28 = *(v18 + 192);
        if (v28 == -1)
        {
          goto LABEL_37;
        }

        v29 = *(*(a2[7] + 24) + 8 * v28 - 8);
        v30 = (v29 + 16);
        if (*(v29 + 39) < 0)
        {
          v30 = *v30;
        }

        TParamManager::find(a1[7], v30, __p);
        TParamManager::end(a1[7], &v33);
        if (__p[0] != v33)
        {
          v28 = *(__p[0] + 5);
          if (!*(*(*(a1[7] + 24) + 8 * v28 - 8) + 8))
          {
LABEL_37:
            v31 = (v18 + 120);
            if (*(v18 + 143) < 0)
            {
              v31 = *v31;
            }

            LOBYTE(v32) = *(v18 + 200);
            (*(*a1 + 16))(a1, *a4, v31, *(v18 + 144), v19, v19 + *(v18 + 32) - *(v18 + 24), v20, v20 + *(v18 + 56) - *(v18 + 48), v27, v27 - 0x5555555555555550 * ((*(v18 + 160) - *(v18 + 152)) >> 3), v28, v32);
          }
        }

        ++v15;
      }

      while (v15 < a3[2]);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  if (v42 == 1 && v39 != v41)
  {
    if (v39)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_2625A3F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (LOBYTE(STACK[0x880]) == 1 && a25 != a14 && a25 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void std::vector<TPItnRuleControl>::resize(void *result, unint64_t a2)
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
    std::vector<TPItnRuleControl>::__append(result, a2 - v2);
  }
}

const void **TItnRuleManager::getRuleWordName(uint64_t a1, unint64_t a2, const void **a3)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (a2 <= (*(a1 + 40) - v3) >> 3)
    {
      a2 = *(v3 + 8 * a2 - 8);
    }

    else
    {
      a2 = 0;
    }
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  return TBuffer<wchar_t>::assign(a3, a2);
}

const void **TItnRuleManager::getRuleRewriteForm(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(*(a1 + 32) + 8 * a2 - 8);
  v4 = (v3 + 120);
  if (*(v3 + 143) < 0)
  {
    v4 = *v4;
  }

  return TBuffer<wchar_t>::assign(a3, v4);
}

void TItnRuleManager::getRuleTags(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a2 && (v5 = *(a1 + 32), a2 <= (*(a1 + 40) - v5) >> 3))
  {
    v6 = *(v5 + 8 * a2 - 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = 24;
  if (a3)
  {
    v7 = 48;
  }

  v8 = (v6 + v7);
  v9 = *(v6 + v7 + 8) - *(v6 + v7);
  v10 = v9 >> 3;
  if (*(a4 + 2072) == 1 && *(a4 + 8) < v10)
  {
    *(a4 + 8) = v10 + 1;
    operator new[]();
  }

  v11 = *(a4 + 16);
  if (v11 < v10)
  {
    if (*(a4 + 2072) == 1)
    {
      v12 = (*a4 + 8 * v11);
      v13 = v9 - 8 * v11;
    }

    else
    {
      v14 = *(a4 + 8);
      if (v11 >= v14)
      {
        goto LABEL_18;
      }

      if (v14 >= v10)
      {
        v14 = v9 >> 3;
      }

      v12 = (*a4 + 8 * v11);
      v13 = 8 * (v14 - v11);
    }

    bzero(v12, v13);
  }

LABEL_18:
  *(a4 + 16) = v10;
  v15 = *v8;
  if (v8[1] != *v8)
  {
    v16 = 0;
    do
    {
      *(*a4 + 8 * v16) = *(v15 + 8 * v16);
      ++v16;
      v15 = *v8;
    }

    while (v16 < (v8[1] - *v8) >> 3);
  }
}

double TItnRuleManager::getRuleControls(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 && (v4 = *(a1 + 32), a2 <= (*(a1 + 40) - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2 - 8);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v5 + 152);
  v6 = *(v5 + 160);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  if (*(a3 + 4120) == 1 && *(a3 + 8) < v8)
  {
    *(a3 + 8) = v8 + 1;
    operator new[]();
  }

  v9 = *(a3 + 16);
  if (v9 < v8)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    if ((*(a3 + 4120) & 1) == 0)
    {
      v10 = *(a3 + 8);
      if (v9 >= v10)
      {
        goto LABEL_14;
      }

      if (v10 >= v8)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
      }
    }

    bzero((*a3 + 16 * v9), 16 * (v10 - v9));
  }

LABEL_14:
  *(a3 + 16) = v8;
  if (v6 != v7)
  {
    v12 = *(v5 + 152);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 160) - v12) >> 3);
    v14 = *a3;
    if (v8 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    }

    do
    {
      if (!v13)
      {
        std::vector<TItnControl>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = *v12;
      v12 = (v12 + 24);
      result = *&v16;
      *v14++ = v16;
      --v13;
      --v15;
    }

    while (v15);
  }

  return result;
}

BOOL TItnRuleManager::isValidRule(uint64_t a1, unint64_t a2)
{
  if (a2 && (v2 = *(a1 + 32), a2 <= (*(a1 + 40) - v2) >> 3))
  {
    return *(v2 + 8 * a2 - 8) != 0;
  }

  else
  {
    return 0;
  }
}

void std::vector<TPItnTagHandle_fake **>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TPItnRuleControl>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(a1, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnRuleControl>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v49 = (*a3)(v11 + 1, v11);
        v50 = (*a3)(v8, v11 + 1);
        if (v49)
        {
          v51 = *v11;
          if (v50)
          {
            goto LABEL_78;
          }

          *v11 = v11[1];
          v11[1] = v51;
          if (!(*a3)(v8, v11 + 1))
          {
            return result;
          }

          v51 = v11[1];
          v11[1] = *v8;
LABEL_79:
          *v8 = v51;
          return result;
        }

        if (!v50)
        {
          return result;
        }

        v57 = v11[1];
        v11[1] = *v8;
        *v8 = v57;
        goto LABEL_104;
      case 4uLL:
        v54 = (*a3)(v11 + 1, v11);
        v55 = (*a3)(v11 + 2, v11 + 1);
        if (v54)
        {
          v56 = *v11;
          if (v55)
          {
            *v11 = v11[2];
            v11[2] = v56;
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v56;
            if ((*a3)(v11 + 2, v11 + 1))
            {
              *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
            }
          }
        }

        else if (v55)
        {
          *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
          if ((*a3)(v11 + 1, v11))
          {
            *v11 = vextq_s8(*v11, *v11, 8uLL);
          }
        }

        if (!(*a3)(v8, v11 + 2))
        {
          return result;
        }

        v58 = v11[2];
        v11[2] = *v8;
        *v8 = v58;
        if (!(*a3)(v11 + 2, v11 + 1))
        {
          return result;
        }

        *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
LABEL_104:
        if ((*a3)(v11 + 1, v11))
        {
          result = vextq_s8(*v11, *v11, 8uLL);
          *v11 = result;
        }

        return result;
      case 5uLL:

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
        return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,TPItnTagHandle_fake ***>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(&v11[v14 >> 1], v11);
      v18 = (*a3)(a2 - 1, v15);
      if (v17)
      {
        v19 = *a1;
        if (v18)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        *a1 = *v15;
        *v15 = v19;
        if ((*a3)(a2 - 1, v15))
        {
          v19 = *v15;
          *v15 = *v8;
LABEL_27:
          *v8 = v19;
        }
      }

      else if (v18)
      {
        v23 = *v15;
        *v15 = *v8;
        *v8 = v23;
        if ((*a3)(v15, a1))
        {
          v24 = *a1;
          *a1 = *v15;
          *v15 = v24;
        }
      }

      v27 = v15 - 1;
      v28 = (*a3)(v15 - 1, a1 + 1);
      v29 = (*a3)(a2 - 2, v15 - 1);
      if (v28)
      {
        v30 = a1[1];
        if (v29)
        {
          a1[1] = *v9;
          goto LABEL_39;
        }

        a1[1] = *v27;
        *v27 = v30;
        if ((*a3)(a2 - 2, v15 - 1))
        {
          v30 = *v27;
          *v27 = *v9;
LABEL_39:
          *v9 = v30;
        }
      }

      else if (v29)
      {
        v31 = *v27;
        *v27 = *v9;
        *v9 = v31;
        if ((*a3)(v15 - 1, a1 + 1))
        {
          v32 = a1[1];
          a1[1] = *v27;
          *v27 = v32;
        }
      }

      v33 = (*a3)(v15 + 1, a1 + 2);
      v34 = (*a3)(a2 - 3, v15 + 1);
      if (v33)
      {
        v35 = a1[2];
        if (v34)
        {
          a1[2] = *v10;
          goto LABEL_48;
        }

        a1[2] = v15[1];
        v15[1] = v35;
        if ((*a3)(a2 - 3, v15 + 1))
        {
          v35 = v15[1];
          v15[1] = *v10;
LABEL_48:
          *v10 = v35;
        }
      }

      else if (v34)
      {
        v36 = v15[1];
        v15[1] = *v10;
        *v10 = v36;
        if ((*a3)(v15 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v15[1];
          v15[1] = v37;
        }
      }

      v38 = (*a3)(v15, v15 - 1);
      v39 = (*a3)(v15 + 1, v15);
      if (v38)
      {
        v40 = *v27;
        if (v39)
        {
          v41 = *v15;
          *v27 = v15[1];
          v15[1] = v40;
LABEL_58:
          v45 = *a1;
          *a1 = v41;
          *v15 = v45;
          goto LABEL_59;
        }

        *v27 = *v15;
        *v15 = v40;
        v44 = (*a3)(v15 + 1, v15);
        v41 = *v15;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v15[1];
        *v15 = v43;
        v15[1] = v41;
      }

      else
      {
        v41 = *v15;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v15 = v15[1];
        v15[1] = v41;
        v42 = (*a3)(v15, v15 - 1);
        v41 = *v15;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v27;
        *v27 = v41;
        *v15 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v20 = v16(v11, &v11[v14 >> 1]);
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      v22 = *v15;
      if (v21)
      {
        *v15 = *v8;
LABEL_36:
        *v8 = v22;
        goto LABEL_59;
      }

      *v15 = *a1;
      *a1 = v22;
      if ((*a3)(a2 - 1, a1))
      {
        v22 = *a1;
        *a1 = *v8;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v25 = *a1;
      *a1 = *v8;
      *v8 = v25;
      if ((*a3)(a1, v15))
      {
        v26 = *v15;
        *v15 = *a1;
        *a1 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 1, a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TPItnTagHandle_fake ***,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v46 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TPItnTagHandle_fake ***,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&)>(a1, a2, a3);
    if ((v47 & 1) == 0)
    {
      goto LABEL_64;
    }

    v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(a1, v46, a3);
    v11 = v46 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***>(v46 + 1, a2, a3))
    {
      a4 = -v13;
      a2 = v46;
      if (v48)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v48)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TPItnTagHandle_fake ** const&,TPItnTagHandle_fake ** const&),TPItnTagHandle_fake ***,false>(a1, v46, a3, -v13, a5 & 1);
      v11 = v46 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(a2 - 1, v11))
  {
    v51 = *v11;
LABEL_78:
    *v11 = *v8;
    goto LABEL_79;
  }

  return result;
}