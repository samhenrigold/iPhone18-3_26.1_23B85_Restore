void sub_29827B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *eUICC::Perso::PersoImplementation::logTransactionData(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 48))
  {
    result = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, a3);
  }

  else
  {
    std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, a3);
    result = v4 + 2;
    *(a1 + 40) = v4 + 2;
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(const void **keys, const void **values, CFIndex numValues, uint64_t a4)
{
  v30 = 0;
  v31 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, values, numValues, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v29 = v5;
  if (!v5)
  {
    gBBULogMaskGet(0, 0);
    v12 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "inDict", "", "", 587);
    gBBULogMaskGet(v12, v13);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create dictionary\n");
LABEL_15:
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v29);
    v11 = 11;
    goto LABEL_18;
  }

  error[0] = 0;
  error[1] = &v31;
  Data = CFPropertyListCreateData(v4, v5, kCFPropertyListXMLFormat_v1_0, 0, error);
  v30 = Data;
  v7 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!Data)
  {
    gBBULogMaskGet(v7, v8);
    v14 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "outData", "", "", 589);
    gBBULogMaskGet(v14, v15);
    ctu::cf::show(error, 1, v16, v29);
    v17 = v28;
    v18 = error[0];
    ctu::cf::show(__p, 1, v19, v31);
    v20 = error;
    if (v17 < 0)
    {
      v20 = v18;
    }

    if (v26 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to serialize dictionary %s error %s\n", v20, v21);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_15;
  }

  v9 = ctu::cf::assign();
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    gBBULogMaskGet(v9, v10);
    v22 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 591);
    gBBULogMaskGet(v22, v23);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to assign output data\n");
    v11 = 11;
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v29);
  CFRelease(Data);
LABEL_18:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v31);
  return v11;
}

void sub_29827B700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v25 - 56));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v25 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v25 - 40));
  _Unwind_Resume(a1);
}

uint64_t *eUICC::Perso::PersoImplementation::PostDataSync@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 850045863;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_2A1EB2B70;
  v27 = v6;
  v28 = v6;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v6);
  aBlock[1] = 0;
  v24 = 0;
  v22[2] = 0;
  aBlock[0] = &aBlock[1];
  v22[1] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(aBlock, aBlock[1]);
  (*(*v25 + 8))(v25, *a1);
  v7 = v25;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v27, aBlock);
  (*(*v7 + 16))(v7, aBlock[0]);
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  (*(*v25 + 96))(v25, 60.0);
  v8 = v25;
  v9 = a1[1];
  v22[0] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  (*(*v8 + 88))(v8, v22);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v22);
  (*(*v25 + 56))(v25, a2);
  __p[1] = 0;
  v21 = 0;
  __p[0] = 0;
  (*(*v25 + 40))(v25, __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(&v27, aBlock);
  v10 = (*(*aBlock[0] + 16))(aBlock[0]);
  if (v10 == 1 && (v10 = (*(*aBlock[0] + 24))(aBlock[0]), v10 == 200))
  {
    *a3 = *aBlock;
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    v12 = (*(*aBlock[0] + 16))(aBlock[0]);
    v13 = (*(*aBlock[0] + 24))(aBlock[0]);
    v14 = (*(*aBlock[0] + 32))(aBlock[0]);
    (*(*aBlock[0] + 72))(&cf);
    v15 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "result %d code %d raw_error %ld error %s\n", v12, v13, v14, CStringPtr);
    ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&cf);
    *a3 = 0;
    *(a3 + 8) = 0;
    if (aBlock[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](aBlock[1]);
    }
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v17 = v27;
  if (v27 && !atomic_fetch_add(v27 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v17 + 16))(v17);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v28);
}

void sub_29827BB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *aBlock, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v25 - 48);
  if (v28)
  {
    if (!atomic_fetch_add(v28 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v28 + 16))(v28, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v25 - 40));
  _Unwind_Resume(a1);
}

void eUICC::Perso::PersoImplementation::logTransactionCFData(uint64_t a1, __int128 *a2, CFDataRef *a3)
{
  if (*a3)
  {
    BytePtr = CFDataGetBytePtr(*a3);
    Length = CFDataGetLength(*a3);
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, BytePtr, &BytePtr[Length], Length);
    v8 = *(a1 + 40);
    if (v8 >= *(a1 + 48))
    {
      v9 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, &__p);
    }

    else
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, &__p);
      v9 = v8 + 2;
      *(a1 + 40) = v8 + 2;
    }

    *(a1 + 40) = v9;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

void sub_29827BD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(const __CFData **a1, __CFError **a2)
{
  v33 = 0;
  v34 = 0;
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet(a1, 0);
    v14 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "inData", "", "", 604);
    gBBULogMaskGet(v14, v15);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create data\n");
LABEL_15:
    v13 = 11;
    goto LABEL_23;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v34;
  v6 = CFPropertyListCreateWithData(v5, v3, 0, 0, error);
  v33 = v6;
  v7 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!v6)
  {
    gBBULogMaskGet(v7, v8);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "outPlist", "", "", 606);
    gBBULogMaskGet(v16, v17);
    ctu::cf::show(error, 1, v18, *a1);
    v19 = v32;
    v20 = error[0];
    ctu::cf::show(__p, v34, v21);
    v22 = error;
    if (v19 < 0)
    {
      v22 = v20;
    }

    if (v30 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to deserialize dictionary %s error %s\n", v22, v23);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v32 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_15;
  }

  v9 = CFGetTypeID(v6);
  TypeID = CFDictionaryGetTypeID();
  if (v9 == TypeID)
  {
    __p[0] = v6;
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(error, __p);
    v12 = *a2;
    *a2 = error[0];
    error[0] = v12;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(error);
    v13 = 0;
  }

  else
  {
    gBBULogMaskGet(TypeID, v11);
    v24 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()", "", "", 607);
    gBBULogMaskGet(v24, v25);
    ctu::cf::show(error, v6, v26);
    if (v32 >= 0)
    {
      v27 = error;
    }

    else
    {
      v27 = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Deserialized plist data is not a dictionary: %s\n", v27);
    if (v32 < 0)
    {
      operator delete(error[0]);
    }

    v13 = 11;
  }

  CFRelease(v6);
LABEL_23:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v34);
  return v13;
}

void sub_29827C03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void sub_29827C17C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<BOOL>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29827C328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = v9 + 2 * v3;
  v18 = v17;
  v19 = &v9[2 * v8];
  std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(v17, a2, a3);
  v10 = v17 + 2;
  v11 = *(a1 + 8) - *a1;
  v12 = v17 - v11;
  memcpy(v17 - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v10;
}

void sub_29827C4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  return this;
}

void sub_29827C540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

uint64_t std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(v6, a2, a3, v6->__r_.__value_.__l.__size_);
    v6->__r_.__value_.__l.__size_ = result;
  }

  return result;
}

void sub_29827C690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[48 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](this, v6);
      v6 += 3;
      this += 2;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_29827C75C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *(a2 + 3), *(a2 + 4), *(a2 + 4) - *(a2 + 3));
  return this;
}

void sub_29827C7EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB2AF8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29827C944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 32);
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a2 + 16));
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a2 + 8));
    if (*a2)
    {
      dispatch_release(*a2);
    }

    operator delete(a2);
  }
}

void *ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(a1, v5);
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

uint64_t *std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2869C0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2869D0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>@<X0>(atomic_ullong **a1@<X0>, void **a2@<X8>)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3002000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v4 = operator new(0xA0uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A1EB2B70;
  v9 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  v5 = *a1;
  *a1 = v4;
  if (v5 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke;
  aBlock[3] = &unk_29EE8E7B0;
  aBlock[4] = v8;
  *a2 = _Block_copy(aBlock);
  _Block_object_dispose(v8, 8);
  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v9);
}

void sub_29827CF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v13 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::set_value(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(v3, a2);
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_29827D11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(a1, v5);
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_94()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t VinylDaleCommunication::startRouterServer(VinylDaleCommunication *this, uint64_t a2)
{
  v2 = *(this + 8);
  gBBULogMaskGet(this, a2);
  if (v2)
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server starting.\n");
    v3 = dispatch_group_create();
    v4 = v3;
    group = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v4);
    }

    abb::router::Server::start();
    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    v5 = dispatch_time(0, 15000000000);
    v6 = dispatch_group_wait(v4, v5);
    gBBULogMaskGet(v6, v7);
    if (v6)
    {
      _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Failed to start router server due to timeout\n");
    }

    else
    {
      _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server started.\n");
    }

    if (v4)
    {
      dispatch_release(v4);
    }

    if (v6)
    {
      return 0;
    }
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server was not instantiated by VinylRestore to start it.\n");
  }

  return 1;
}

void sub_29827D354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::stopRouterServer(VinylDaleCommunication *this, uint64_t a2)
{
  v2 = *(this + 8);
  gBBULogMaskGet(this, a2);
  if (v2)
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server stopping.\n");
    v3 = dispatch_group_create();
    v4 = v3;
    group = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v4);
    }

    abb::router::Server::stop();
    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    v5 = dispatch_time(0, 2000000000);
    v6 = dispatch_group_wait(v4, v5);
    gBBULogMaskGet(v6, v7);
    if (v6)
    {
      _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Failed to stop router server due to timeout\n");
    }

    else
    {
      _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server stopped.\n");
    }

    if (v4)
    {
      dispatch_release(v4);
    }

    if (v6)
    {
      return 0;
    }
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server was not instantiated by VinylRestore to stop it.\n");
  }

  return 1;
}

void sub_29827D4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::createTransport(uint64_t a1)
{
  v35[4] = *MEMORY[0x29EDCA608];
  if (BBUpdaterCommon::inRestoreOS(a1))
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "router.server");
    std::string::basic_string[abi:ne200100]<0>(&v21, "com.apple.router.abb");
    std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.telephony.control-msg.xpc.allow");
    v25 = xmmword_2982BFEF0;
    v26 = 0;
    v27 = 0;
    v28 = xmmword_2982BFF00;
    v29 = 5;
    abb::router::Server::create();
    v3 = v33;
    v33 = 0uLL;
    v4 = *(a1 + 72);
    *(a1 + 64) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v4 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
      }
    }

    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v32 < 0)
    {
      operator delete(v30);
    }

    if (!*(a1 + 64))
    {
      VinylDaleCommunication::createTransport(v4, v2);
      return 3;
    }

    object = dispatch_queue_create("link.accepter.local", 0);
    abb::link::LocalLinkAccepter::create();
    v6 = object;
    if (object)
    {
      dispatch_release(object);
    }

    if (!v30)
    {
      gBBULogMaskGet(v6, v5);
      updated = VinylController::performNonUpdateOperation();
      if (updated)
      {
        updated = _BBULog(1, 6, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Dale/VinylDaleCommunication.cpp", 73, "localAccepter");
      }

      gBBULogMaskGet(updated, v15);
      _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "link accepted failed. t\n");
      v12 = 0;
LABEL_29:
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if ((v12 & 1) == 0)
      {
        return 3;
      }

      return 0;
    }

    v19 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    abb::router::Server::addLocalLinkAccepter();
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    _ZNSt3__115allocate_sharedB8ne200100I18VinylMipcTransportNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v33);
    v18 = *(&v33 + 1);
    v33 = 0uLL;
    abb::router::Server::addTransport();
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (*(&v33 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
    }

    v34 = 1;
    v35[0] = &unk_2A1EB2C68;
    v35[1] = &v34;
    v35[3] = v35;
    abb::router::Server::registerErrorHandler();
    std::__function::__value_func<void ()(abb::router::Error,std::string const&)>::~__value_func[abi:ne200100](v35);
    abb::router::Server::createLocalLink(&v33, *(a1 + 64));
    v8 = v33;
    v33 = 0uLL;
    v9 = *(a1 + 56);
    *(a1 + 48) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v33 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
      }
    }

    started = VinylDaleCommunication::startRouterServer(a1, v7);
    if (started)
    {
      if (v34)
      {
        v12 = 1;
        goto LABEL_29;
      }

      gBBULogMaskGet(started, v11);
      if ((VinylController::performNonUpdateOperation() & 1) == 0)
      {
        goto LABEL_46;
      }

      v16 = "fRouterServerGood";
      v17 = 91;
    }

    else
    {
      gBBULogMaskGet(started, v11);
      if ((VinylController::performNonUpdateOperation() & 1) == 0)
      {
LABEL_46:
        v12 = 0;
        goto LABEL_29;
      }

      v16 = "startRouterServer()";
      v17 = 90;
    }

    _BBULog(1, 6, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Dale/VinylDaleCommunication.cpp", v17, v16);
    goto LABEL_46;
  }

  result = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (!result)
  {
    return result;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](result);
  return 0;
}

void sub_29827D868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 112);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::openChannel(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  VinylDaleCommunication::openChannel(a1, a2);
  return 3;
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);

  return _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Invalid external client link instance. \n");
}

uint64_t VinylDaleCommunication::freeTransport(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = VinylDaleCommunication::stopRouterServer(a1, a2);
  v4 = a1[9];
  a1[8] = 0;
  a1[9] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v3;
}

void VinylDaleCommunication::~VinylDaleCommunication(VinylDaleCommunication *this)
{
  VinylDaleCommunication::~VinylDaleCommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB2BB8;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  VinylCommunication::~VinylCommunication(this);
}

uint64_t VinylDaleCommunication::get_transport_wrapper@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void abb::router::Config::~Config(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void _ZNSt3__115allocate_sharedB8ne200100I18VinylMipcTransportNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0xB8uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A1EB2C18;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  v2[3] = &unk_2A1EB36F0;
  v2[20] = 0;
  v2[21] = 0;
  v2[22] = 0;
  *(v2 + 176) = 0;
  *a1 = v2 + 3;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  std::shared_ptr<VinylMipcTransport>::__enable_weak_this[abi:ne200100]<VinylMipcTransport,VinylMipcTransport,0>(a1, v2 + 4, (v2 + 3));
}

void std::__shared_ptr_emplace<VinylMipcTransport>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB2C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::shared_ptr<VinylMipcTransport>::__enable_weak_this[abi:ne200100]<VinylMipcTransport,VinylMipcTransport,0>(uint64_t a1, void *a2, uint64_t a3)
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

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void *std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EB2C68;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EB2C68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  gBBULogMaskGet(a1, a2);
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  result = _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server eror: %s\n", v5);
  **(a1 + 8) = 0;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(abb::router::Error,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _BBUFSDebugPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (sDelegate)
  {
    return sDelegate(result, a2, &a9);
  }

  return result;
}

uint64_t eUICC::getSIMId(eUICC *this)
{
  if (this == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t eUICC::eUICCVinylDALValve::eUICCVinylDALValve(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  *(a1 + 275) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v10 = (a1 + 328);
  *a1 = &unk_2A1EB2CF8;
  v11 = dispatch_queue_create("com.apple.VinylCommunication", 0);
  v12 = a5[1];
  v19 = *a5;
  v20 = v12;
  object = v11;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  abb::router::Client::create();
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 296) = a2;
  *(a1 + 292) = a3;
  *(a1 + 291) = a4;
  *(a1 + 304) = 8;
  eUICC::eUICCVinylValve::hardwareHasESIM = (*(*a1 + 128))(a1, &eUICC::eUICCVinylValve::simSKUID);
  v13 = dispatch_semaphore_create(0);
  v14 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v22 = &unk_2A1EB2E10;
  v23 = a1;
  v24 = v14;
  v25 = &v22;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v22);
  v22 = &unk_2A1EB2EA0;
  v23 = a1;
  v25 = &v22;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v22);
  v22 = &unk_2A1EB2F20;
  v23 = a1;
  v25 = &v22;
  abb::router::Client::regIndHandlerInternal();
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](&v22);
  abb::router::Client::start(v10);
  v15 = dispatch_time(0, 7500000000);
  v16 = dispatch_semaphore_wait(v14, v15);
  if (v16)
  {
    gBBULogMaskGet(v16, v17);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for mipc client start.\n", v19);
    *(a1 + 352) = 0;
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  return a1;
}

void sub_29827E160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, ...)
{
  va_start(va, object);
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](va);
  if (v12)
  {
    dispatch_release(v12);
  }

  v14 = *(v11 + 47);
  if (v14)
  {
    *(v11 + 48) = v14;
    operator delete(v14);
  }

  v15 = *(v11 + 45);
  if (v15)
  {
    dispatch_release(v15);
  }

  *(v11 + 41) = &unk_2A1EB2DE0;
  v16 = *(v11 + 43);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(v11 + 40);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  VinylCommunication::~VinylCommunication(v11);
  _Unwind_Resume(a1);
}

void abb::router::Client::~Client(abb::router::Client *this)
{
  *this = &unk_2A1EB2DE0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A1EB2DE0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(this);
}

void *eUICC::eUICCVinylDALValve::GetVinylType@<X0>(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 288) = 1;
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylDALValve::waitForeSIMBoot(eUICC::eUICCVinylDALValve *this, uint64_t a2)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 0;
  if ((*(this + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::waitForeSIMBoot(this, a2);
    v6 = 0;
    return v6 & 1;
  }

  mipc::sim::Status_Req::Status_Req();
  if (*(this + 73) == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v24[10] = v3;
  v4 = operator new(1uLL);
  *v4 = 0;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = 0;
  v7 = 15;
  do
  {
    v8 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v8, v9) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v10 = __p;
      if (__p)
      {
        stringifyVal(v22, *__p);
        v11 = v22;
        if (v23 < 0)
        {
          v11 = v22[0];
        }
      }

      else
      {
        v11 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Status_Req sent: Msg=0x%x fTlv_Mode = %s\n", 1295, v11);
      if (v10 && v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    abb::router::Client::send<mipc::sim::Status_Req>(&__ns, v24, (this + 328));
    v12 = abb::router::SendProxy::timeout();
    if (v8)
    {
      dispatch_retain(v8);
    }

    v13 = operator new(0x20uLL);
    *v13 = &unk_2A1EB2FC0;
    v13[1] = this;
    v13[2] = &v26;
    v13[3] = v8;
    v28[3] = v13;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v12 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C285FB0](&__ns);
    v14 = dispatch_time(0, 7500000000);
    v15 = dispatch_semaphore_wait(v8, v14);
    if (v15 && (gBBULogMaskGet(v15, v16), v15 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Status Req.\n"), !*(this + 37)))
    {
      gBBULogMaskGet(v15, v16);
      updated = VinylController::performNonUpdateOperation();
      if (updated)
      {
        updated = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 210, "transport");
      }

      gBBULogMaskGet(updated, v20);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "No transport available.. bail out\n");
      v17 = 1;
      if (v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 1;
      if (v26 - 20 >= 2 && v26 != 253)
      {
        gBBULogMaskGet(v15, v16);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM Status Req attempt %d failed.\n", 15 - --v7);
        __ns.__rep_ = 1000000000;
        std::this_thread::sleep_for (&__ns);
        v17 = 0;
        if (!v8)
        {
          goto LABEL_28;
        }

LABEL_27:
        dispatch_release(v8);
        goto LABEL_28;
      }

      v6 = 1;
      if (v8)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    if (v7)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }
  }

  while (v18 != 1);
  mipc::sim::Status_Req::~Status_Req(v24);
  return v6 & 1;
}

uint64_t *abb::router::Client::send<mipc::sim::Status_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::sim::Status_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::sim::Status_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

void eUICC::eUICCVinylDALValve::GetData_EoS(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>)
{
  v20[4] = *MEMORY[0x29EDCA608];
  mipc::dale_vinyl::Eos_Getdata_Req::Eos_Getdata_Req();
  if (*(this + 73) == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v17[10] = v4;
  v5 = operator new(1uLL);
  *v5 = 0;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = dispatch_semaphore_create(0);
  if ((*(gBBULogMaskGet(v7, v8) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = __p;
    if (__p)
    {
      stringifyVal(v15, *__p);
      v10 = v16 >= 0 ? v15 : v15[0];
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "EoS_Getdata_Req sent: Msg=0x%x fTlv_Is_Num_Of_Profile_Needed = %s\n", 62467, v10);
    if (v9)
    {
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Eos_Getdata_Req>(v19, v17, (this + 328));
  v11 = abb::router::SendProxy::timeout();
  if (v7)
  {
    dispatch_retain(v7);
  }

  v20[0] = &unk_2A1EB3040;
  v20[1] = this;
  v20[2] = v7;
  v20[3] = v20;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v20, (v11 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v20);
  MEMORY[0x29C285FB0](v19);
  v12 = dispatch_time(0, 7500000000);
  v13 = dispatch_semaphore_wait(v7, v12);
  if (v13)
  {
    gBBULogMaskGet(v13, v14);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on EoS Get Data Req.\n");
  }

  memcpy(a2, this + 8, 0x11BuLL);
  if (v7)
  {
    dispatch_release(v7);
  }

  mipc::dale_vinyl::Eos_Getdata_Req::~Eos_Getdata_Req(v17);
}

void sub_29827E978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  mipc::dale_vinyl::Eos_Getdata_Req::~Eos_Getdata_Req(&a18);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Eos_Getdata_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Eos_Getdata_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Eos_Getdata_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

void *eUICC::eUICCVinylDALValve::GetData@<X0>(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v33[4] = *MEMORY[0x29EDCA608];
  v5 = (this + 8);
  if (*(this + 290) == 1)
  {
    gBBULogMaskGet(this, a3);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "eUICCVinylData cache is valid. Using cached data!\n");
  }

  else
  {
    *(this + 248) = 0u;
    *(this + 264) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 88) = 0u;
    *(this + 104) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *v5 = 0u;
    *(this + 275) = 0u;
    RadioVendor = TelephonyRadiosGetRadioVendor();
    *(this + 2) = (RadioVendor - 2) < 3;
    if (*(this + 352))
    {
      v9 = eUICC::eUICCVinylDALValve::waitForeSIMBoot(this, v8);
      if (v9)
      {
        pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
        v11 = xmmword_2A13A8CA0;
        if (!xmmword_2A13A8CA0)
        {
          BBUCapabilities::create_default_global(v32);
          v12 = v32[0];
          v32[0] = 0uLL;
          v13 = *(&xmmword_2A13A8CA0 + 1);
          xmmword_2A13A8CA0 = v12;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            if (*(&v32[0] + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32[0] + 1));
            }
          }

          v11 = xmmword_2A13A8CA0;
        }

        v14 = *(&xmmword_2A13A8CA0 + 1);
        if (*(&xmmword_2A13A8CA0 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
        v15 = BBUCapabilities::supportsEuiccViaEOS(v11);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v15)
        {
          return (*(*this + 136))(this);
        }

        mipc::dale_vinyl::Getdata_Req::Getdata_Req();
        if (*(this + 73) == 2)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v30[10] = v17;
        v18 = operator new(1uLL);
        *v18 = 0;
        v19 = __p;
        __p = v18;
        if (v19)
        {
          operator delete(v19);
        }

        v20 = dispatch_semaphore_create(0);
        if ((*(gBBULogMaskGet(v20, v21) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
        {
          v22 = __p;
          if (__p)
          {
            stringifyVal(v28, *__p);
            v23 = v29 >= 0 ? v28 : v28[0];
          }

          else
          {
            v23 = "NULL";
          }

          _BBULog(22, 7, "eUICCVinylDALValve", "", "Getdata_Req sent: Msg=0x%x fTlv_Is_Num_Of_Profile_Needed = %s\n", 62466, v23);
          if (v22)
          {
            if (v29 < 0)
            {
              operator delete(v28[0]);
            }
          }
        }

        abb::router::Client::send<mipc::dale_vinyl::Getdata_Req>(v32, v30, (this + 328));
        v24 = abb::router::SendProxy::timeout();
        if (v20)
        {
          dispatch_retain(v20);
        }

        v33[0] = &unk_2A1EB3110;
        v33[1] = this;
        v33[2] = v20;
        v33[3] = v33;
        std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v33, (v24 + 152));
        std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v33);
        MEMORY[0x29C285FB0](v32);
        v25 = dispatch_time(0, 7500000000);
        v26 = dispatch_semaphore_wait(v20, v25);
        if (v26)
        {
          gBBULogMaskGet(v26, v27);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Get Data Req.\n");
        }

        if (v20)
        {
          dispatch_release(v20);
        }

        mipc::dale_vinyl::Getdata_Req::~Getdata_Req(v30);
      }

      else
      {
        gBBULogMaskGet(v9, v10);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM status req failed even after several retries.\n");
      }
    }

    else
    {
      eUICC::eUICCVinylDALValve::GetData(RadioVendor, v8);
    }
  }

  if (*(this + 290) == 1)
  {
    eUICC::logEUICCData(v5, v6);
  }

  return memcpy(a2, v5, 0x11BuLL);
}

void sub_29827EE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  mipc::dale_vinyl::Getdata_Req::~Getdata_Req(&a18);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Getdata_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Getdata_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Getdata_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::SetCardMode(uint64_t a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x29EDCA608];
  v20 = 18;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Switch_Mode_Req::Switch_Mode_Req();
    if (*(a1 + 292) == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v18[10] = v3;
    v4 = operator new(1uLL);
    *v4 = 1;
    v5 = __p;
    __p = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v6, v7) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v8 = __p;
      if (__p)
      {
        stringifyVal(v16, *__p);
        v9 = v17 >= 0 ? v16 : v16[0];
      }

      else
      {
        v9 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Switch_Mode_Req sent: Msg=0x%x fTlv_Is_Reset_Req = %s\n", 62468, v9);
      if (v8)
      {
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Switch_Mode_Req>(v21, v18, (a1 + 328));
    v10 = abb::router::SendProxy::timeout();
    if (v6)
    {
      dispatch_retain(v6);
    }

    v11 = operator new(0x20uLL);
    *v11 = &unk_2A1EB3190;
    v11[1] = a1;
    v11[2] = &v20;
    v11[3] = v6;
    v22[3] = v11;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v22, (v10 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v22);
    MEMORY[0x29C285FB0](v21);
    v12 = dispatch_time(0, 11500000000);
    v13 = dispatch_semaphore_wait(v6, v12);
    if (v13)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Switch Mode Req.\n");
    }

    if (v6)
    {
      dispatch_release(v6);
    }

    mipc::dale_vinyl::Switch_Mode_Req::~Switch_Mode_Req(v18);
    return v20;
  }

  else
  {
    eUICC::eUICCVinylDALValve::SetCardMode(a1, a2);
    return 18;
  }
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

void sub_29827F278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (v30)
  {
    dispatch_release(v30);
  }

  mipc::dale_vinyl::Switch_Mode_Req::~Switch_Mode_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Switch_Mode_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Switch_Mode_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Switch_Mode_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ResetCard(eUICC::eUICCVinylDALValve *this, uint64_t a2)
{
  gBBULogMaskGet(this, a2);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "eUICCVinylDALValve::ResetCard not supported\n");
  return 9;
}

uint64_t eUICC::eUICCVinylDALValve::DeleteProfile(eUICC::eUICCVinylDALValve *this, uint64_t a2)
{
  v40[4] = *MEMORY[0x29EDCA608];
  v36 = 18;
  if (*(this + 352))
  {
    v2 = a2;
    v35[0] = 0xBFD00402820434BFLL;
    *(v35 + 6) = 0xD80302820434BFD0;
    mipc::dale_vinyl::Cmd_Req::Cmd_Req();
    if (*(this + 73) == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v29[10] = v4;
    v5 = operator new(4uLL);
    *v5 = 16;
    v6 = __p;
    __p = v5;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = operator new(1uLL);
    *v7 = 1;
    v8 = v31;
    v31 = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(2uLL);
    *v9 = 1;
    v10 = v32;
    v32 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = operator new(2uLL);
    *v11 = 0;
    v12 = v33;
    v33 = v11;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = &v35[v2] - v2;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v37, v13, (v13 + 7), 7uLL);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v34, &v37);
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v14 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v14, v15) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v16 = __p;
      if (__p)
      {
        stringifyVal(v27, *__p);
        if (v28 >= 0)
        {
          v17 = v27;
        }

        else
        {
          v17 = v27[0];
        }
      }

      else
      {
        v17 = "NULL";
      }

      v18 = v34;
      if (v34)
      {
        stringifyDataBuffer(&v26, *v34, v34[1] - *v34);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v26;
        }

        else
        {
          v19 = v26.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v19 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Delete Profile Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Payload = %s\n", 62465, v17, v19);
      if (v18 && SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (v16 && v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>(&v37, v29, (this + 328));
    v20 = abb::router::SendProxy::timeout();
    if (v14)
    {
      dispatch_retain(v14);
    }

    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1EB3210;
    v21[1] = this;
    v21[2] = &v36;
    v21[3] = v14;
    v40[3] = v21;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v40, (v20 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v40);
    MEMORY[0x29C285FB0](&v37);
    v22 = dispatch_time(0, 7500000000);
    v23 = dispatch_semaphore_wait(v14, v22);
    if (v23)
    {
      gBBULogMaskGet(v23, v24);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Cmd Req Delete Profile.\n");
    }

    if (v14)
    {
      dispatch_release(v14);
    }

    MEMORY[0x29C2863E0](v29);
    return v36;
  }

  else
  {
    eUICC::eUICCVinylDALValve::DeleteProfile(this, a2);
    return 18;
  }
}

void sub_29827F78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (v45 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  MEMORY[0x29C2863E0](&a24, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Cmd_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Cmd_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::StoreData(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v45[4] = *MEMORY[0x29EDCA608];
  v41 = 18;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Cmd_Req::Cmd_Req();
    if (*(a1 + 292) == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v35[10] = v8;
    v9 = operator new(4uLL);
    *v9 = 5;
    v10 = __p;
    __p = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = operator new(1uLL);
    *v11 = 1;
    v12 = v37;
    v37 = v11;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = operator new(2uLL);
    *v13 = 1;
    v14 = v38;
    v38 = v13;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = operator new(2uLL);
    *v15 = 0;
    v16 = v39;
    v39 = v15;
    if (v16)
    {
      operator delete(v16);
    }

    v17 = *a2;
    v18 = a2[1];
    v19 = v18 - *a2;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v42, v17, v18, v19);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v40, &v42);
    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    v20 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v20, v21) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v22 = __p;
      if (__p)
      {
        stringifyVal(v33, *__p);
        if (v34 >= 0)
        {
          v23 = v33;
        }

        else
        {
          v23 = v33[0];
        }
      }

      else
      {
        v23 = "NULL";
      }

      v24 = v40;
      if (v40)
      {
        stringifyDataBuffer(&v32, *v40, v40[1] - *v40);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v32;
        }

        else
        {
          v25 = v32.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v25 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Store data Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Payload = %s\n", 62465, v23, v25);
      if (v24 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v22 && v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>(&v42, v35, (a1 + 328));
    v26 = abb::router::SendProxy::timeout();
    if (v20)
    {
      dispatch_retain(v20);
    }

    v27 = operator new(0x30uLL);
    *v27 = &unk_2A1EB3290;
    v27[1] = a1;
    v27[2] = a3;
    v27[3] = &v41;
    v27[4] = a4;
    v27[5] = v20;
    v45[3] = v27;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v45, (v26 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v45);
    MEMORY[0x29C285FB0](&v42);
    v28 = dispatch_time(0, 7500000000);
    v29 = dispatch_semaphore_wait(v20, v28);
    if (v29)
    {
      gBBULogMaskGet(v29, v30);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indications on Cmd Req store data.\n");
    }

    if (v20)
    {
      dispatch_release(v20);
    }

    MEMORY[0x29C2863E0](v35);
    return v41;
  }

  else
  {
    eUICC::eUICCVinylDALValve::StoreData(a1, a2);
    return 18;
  }
}

void sub_29827FCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (v43 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  MEMORY[0x29C2863E0](&a24, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylDALValve::InitPerso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Init_Perso_Req::Init_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v22[10] = v6;
    v7 = operator new(1uLL);
    *v7 = 0;
    v8 = __p;
    __p = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(1uLL);
    *v9 = 0;
    v10 = v24;
    v24 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v25, a2);
    v11 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v11, v12) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v13 = v25;
      if (v25)
      {
        stringifyDataBuffer(&v21, *v25, *(v25 + 8) - *v25);
        v14 = (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v21 : v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        v14 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Init_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62471, v14);
      if (v13)
      {
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Init_Perso_Req>(v27, v22, (a1 + 328));
    v15 = abb::router::SendProxy::timeout();
    if (v11)
    {
      dispatch_retain(v11);
    }

    v16 = operator new(0x28uLL);
    *v16 = &unk_2A1EB3310;
    v16[1] = a1;
    v16[2] = a3;
    v16[3] = &v26;
    v16[4] = v11;
    v28[3] = v16;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v15 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C285FB0](v27);
    v17 = dispatch_time(0, 7500000000);
    v18 = dispatch_semaphore_wait(v11, v17);
    if (v18)
    {
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Init Perso Req.\n");
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    mipc::dale_vinyl::Init_Perso_Req::~Init_Perso_Req(v22);
    return v26;
  }

  else
  {
    eUICC::eUICCVinylDALValve::InitPerso(a1, a2);
    return 1;
  }
}

void sub_298280030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Init_Perso_Req::~Init_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Init_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Init_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Init_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::AuthPerso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Auth_Perso_Req::Auth_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v22[10] = v6;
    v7 = operator new(1uLL);
    *v7 = 0;
    v8 = __p;
    __p = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(1uLL);
    *v9 = 0;
    v10 = v24;
    v24 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v25, a2);
    v11 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v11, v12) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v13 = v25;
      if (v25)
      {
        stringifyDataBuffer(&v21, *v25, v25[1] - *v25);
        v14 = (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v21 : v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        v14 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Auth_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62472, v14);
      if (v13)
      {
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Auth_Perso_Req>(v27, v22, (a1 + 328));
    v15 = abb::router::SendProxy::timeout();
    if (v11)
    {
      dispatch_retain(v11);
    }

    v16 = operator new(0x28uLL);
    *v16 = &unk_2A1EB3390;
    v16[1] = a1;
    v16[2] = a3;
    v16[3] = &v26;
    v16[4] = v11;
    v28[3] = v16;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v15 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C285FB0](v27);
    v17 = dispatch_time(0, 7500000000);
    v18 = dispatch_semaphore_wait(v11, v17);
    if (v18)
    {
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Auth Perso Req.\n");
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    mipc::dale_vinyl::Auth_Perso_Req::~Auth_Perso_Req(v22);
    return v26;
  }

  else
  {
    eUICC::eUICCVinylDALValve::AuthPerso(a1, a2);
    return 1;
  }
}

void sub_2982804A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Auth_Perso_Req::~Auth_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Auth_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Auth_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Auth_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v26[4] = *MEMORY[0x29EDCA608];
  v24 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Finalize_Perso_Req::Finalize_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v20[10] = v4;
    v5 = operator new(1uLL);
    *v5 = 0;
    v6 = __p;
    __p = v5;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = operator new(1uLL);
    *v7 = 0;
    v8 = v22;
    v22 = v7;
    if (v8)
    {
      operator delete(v8);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v23, a2);
    v9 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v9, v10) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v11 = v23;
      if (v23)
      {
        stringifyDataBuffer(&v19, *v23, v23[1] - *v23);
        v12 = (v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v19 : v19.__r_.__value_.__r.__words[0];
      }

      else
      {
        v12 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Finalize_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62473, v12);
      if (v11)
      {
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Finalize_Perso_Req>(v25, v20, (a1 + 328));
    v13 = abb::router::SendProxy::timeout();
    if (v9)
    {
      dispatch_retain(v9);
    }

    v14 = operator new(0x20uLL);
    *v14 = &unk_2A1EB3410;
    v14[1] = a1;
    v14[2] = &v24;
    v14[3] = v9;
    v26[3] = v14;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v26, (v13 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v26);
    MEMORY[0x29C285FB0](v25);
    v15 = dispatch_time(0, 7500000000);
    v16 = dispatch_semaphore_wait(v9, v15);
    if (v16)
    {
      gBBULogMaskGet(v16, v17);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Finalize Perso Req.\n");
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    mipc::dale_vinyl::Finalize_Perso_Req::~Finalize_Perso_Req(v20);
    return v24;
  }

  else
  {
    eUICC::eUICCVinylDALValve::FinalizePerso(a1, a2);
    return 1;
  }
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

void sub_298280890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Finalize_Perso_Req::~Finalize_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Finalize_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Finalize_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Finalize_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ValidatePerso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Validate_Perso_Req::Validate_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v22[10] = v6;
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v25, a2);
    v7 = operator new(2uLL);
    *v7 = 1;
    v8 = __p;
    __p = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(2uLL);
    *v9 = 0;
    v10 = v24;
    v24 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v11, v12) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v13 = v25;
      if (v25)
      {
        stringifyDataBuffer(&v21, *v25, v25[1] - *v25);
        v14 = (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v21 : v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        v14 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Validate_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62474, v14);
      if (v13)
      {
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Validate_Perso_Req>(v27, v22, (a1 + 328));
    v15 = abb::router::SendProxy::timeout();
    if (v11)
    {
      dispatch_retain(v11);
    }

    v16 = operator new(0x28uLL);
    *v16 = &unk_2A1EB3490;
    v16[1] = a1;
    v16[2] = a3;
    v16[3] = &v26;
    v16[4] = v11;
    v28[3] = v16;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v15 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C285FB0](v27);
    v17 = dispatch_time(0, 7500000000);
    v18 = dispatch_semaphore_wait(v11, v17);
    if (v18)
    {
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Validate Perso Req.\n");
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    mipc::dale_vinyl::Validate_Perso_Req::~Validate_Perso_Req(v22);
    return v26;
  }

  else
  {
    eUICC::eUICCVinylDALValve::ValidatePerso(a1, a2);
    return 1;
  }
}

void sub_298280C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Validate_Perso_Req::~Validate_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Validate_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Validate_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Validate_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::InstallPairingMSM(uint64_t a1, char **a2)
{
  v42[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v4 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In InstallPairingMSM...\n");
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::InstallPairingMSM(v4, v5);
    return 1;
  }

  *(a1 + 368) = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = *(a1 + 360);
  *(a1 + 360) = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  v38 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v35[10] = v8;
  v9 = operator new(4uLL);
  *v9 = 2;
  v10 = __p;
  __p = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = v12 - *a2;
  if (v13 >= 0xE01)
  {
    gBBULogMaskGet(v9, v11);
    updated = VinylController::performNonUpdateOperation();
    if (updated)
    {
      updated = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 982, "payload.size() <= MAX_MSM_SZ");
    }

    gBBULogMaskGet(updated, v27);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input signed auth size = %zu, should < %d\n", a2[1] - *a2, 3584);
    goto LABEL_47;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v39, v11, v12, v13);
  mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v37, &v39);
  v15 = v39;
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if ((*(gBBULogMaskGet(v15, v14) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v16 = __p;
    if (__p)
    {
      stringifyVal(v33, *__p);
      if (v34 >= 0)
      {
        v17 = v33;
      }

      else
      {
        v17 = v33[0];
      }
    }

    else
    {
      v17 = "NULL";
    }

    v18 = v37;
    if (v37)
    {
      stringifyDataBuffer(&v32, *v37, v37[1] - *v37);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v32;
      }

      else
      {
        v19 = v32.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v19 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Msm = %s\n", 62480, v17, v19);
    if (v18 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v16 && v34 < 0)
    {
      operator delete(v33[0]);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(&v39, v35, (a1 + 328));
  v20 = abb::router::SendProxy::timeout();
  v42[0] = &unk_2A1EB3510;
  v42[1] = a1;
  v42[2] = &v38;
  v42[3] = v42;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v42, (v20 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v42);
  MEMORY[0x29C285FB0](&v39);
  v21 = dispatch_time(0, 7500000000);
  v22 = dispatch_semaphore_wait(*(a1 + 360), v21);
  if (v22)
  {
    gBBULogMaskGet(v22, v23);
    v22 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on InstallPairingMSM Sep_Cmd_Req\n");
  }

  if ((v38 & 1) == 0)
  {
    gBBULogMaskGet(v22, v23);
    v28 = VinylController::performNonUpdateOperation();
    if (v28)
    {
      v28 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1012, "successCnf");
    }

    gBBULogMaskGet(v28, v29);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf fail\n");
    goto LABEL_47;
  }

  if ((*(a1 + 368) & 1) == 0)
  {
    gBBULogMaskGet(v22, v23);
    v30 = VinylController::performNonUpdateOperation();
    if (v30)
    {
      v30 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1013, "sepIndSuccess_");
    }

    gBBULogMaskGet(v30, v31);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Ind Fail\n");
LABEL_47:
    v24 = 1;
    goto LABEL_35;
  }

  gBBULogMaskGet(v22, v23);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM succeed\n");
  v24 = 0;
LABEL_35:
  MEMORY[0x29C286180](v35);
  return v24;
}

void sub_298281290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (v42)
  {
    if (a24 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C286180](&a25, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Sep_Cmd_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Sep_Cmd_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE8E6E0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C285F80](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C285F90](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingGetNonce(uint64_t a1, void **a2)
{
  v30[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v4 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In ManagePairingGetNonce...\n");
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::ManagePairingGetNonce(v4, v5);
    return 1;
  }

  *(a1 + 384) = *(a1 + 376);
  *(a1 + 368) = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = *(a1 + 360);
  *(a1 + 360) = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  v28 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v26[10] = v8;
  v9 = operator new(4uLL);
  *v9 = 0;
  v11 = __p;
  __p = v9;
  if (v11)
  {
    operator delete(v11);
  }

  if ((*(gBBULogMaskGet(v9, v10) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v12 = __p;
    if (__p)
    {
      stringifyVal(v24, *__p);
      v13 = v25 >= 0 ? v24 : v24[0];
    }

    else
    {
      v13 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s\n", 62480, v13);
    if (v12)
    {
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(v29, v26, (a1 + 328));
  v14 = abb::router::SendProxy::timeout();
  v30[0] = &unk_2A1EB3590;
  v30[1] = a1;
  v30[2] = &v28;
  v30[3] = v30;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v30, (v14 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v30);
  MEMORY[0x29C285FB0](v29);
  v15 = dispatch_time(0, 7500000000);
  v16 = dispatch_semaphore_wait(*(a1 + 360), v15);
  if (v16)
  {
    gBBULogMaskGet(v16, v17);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on ManagePairingGetNonce Sep_Cmd_Req\n");
  }

  if (v28)
  {
    if (*(a1 + 368))
    {
      if ((a1 + 376) != a2)
      {
        v16 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(a1 + 376), *(a1 + 384), *(a1 + 384) - *(a1 + 376));
      }

      gBBULogMaskGet(v16, v17);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce succeed\n");
      v18 = 0;
      goto LABEL_26;
    }

    gBBULogMaskGet(v16, v17);
    updated = VinylController::performNonUpdateOperation();
    if (updated)
    {
      updated = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1069, "sepIndSuccess_");
    }

    gBBULogMaskGet(updated, v23);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Ind fail\n");
  }

  else
  {
    gBBULogMaskGet(v16, v17);
    v20 = VinylController::performNonUpdateOperation();
    if (v20)
    {
      v20 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1068, "successCnf");
    }

    gBBULogMaskGet(v20, v21);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf fail\n");
  }

  v18 = 1;
LABEL_26:
  MEMORY[0x29C286180](v26);
  return v18;
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(uint64_t a1, char **a2, void *a3)
{
  v56[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v6 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In ManagePairingAuthenticate...\n");
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(v6, v7);
    return 1;
  }

  *(a1 + 368) = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = *(a1 + 360);
  *(a1 + 360) = v8;
  if (v9)
  {
    dispatch_release(v9);
  }

  v52 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v48[10] = v10;
  v11 = operator new(4uLL);
  *v11 = 1;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = v14 - *a2;
  if (v15 >= 0x49)
  {
    gBBULogMaskGet(v11, v13);
    updated = VinylController::performNonUpdateOperation();
    if (updated)
    {
      updated = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1100, "payload.size() <= MAX_SEP_SIGNED_AUTH_SZ");
    }

    gBBULogMaskGet(updated, v35);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input signed auth size = %zu, should < %d\n");
    goto LABEL_66;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v53, v13, v14, v15);
  mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v50, &v53);
  v17 = v53;
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  v18 = a3[1];
  if (*a3 == v18)
  {
    gBBULogMaskGet(v17, v16);
    v36 = VinylController::performNonUpdateOperation();
    if (v36)
    {
      v36 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1102, "!nonce.empty()");
    }

    gBBULogMaskGet(v36, v37);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input nonce is empty\n");
    goto LABEL_66;
  }

  if (v18 - *a3 != 16)
  {
    gBBULogMaskGet(v17, v16);
    v38 = VinylController::performNonUpdateOperation();
    if (v38)
    {
      v38 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1104, "nonce.size() == SEP_NONCE_SZ");
    }

    gBBULogMaskGet(v38, v39);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input nonce size = %zu, should be %d\n");
    goto LABEL_66;
  }

  v19 = mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,false>::operator=<std::vector<unsigned char> const&>(&v51, a3);
  if ((*(gBBULogMaskGet(v19, v20) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v21 = __p;
    if (__p)
    {
      stringifyVal(v46, *__p);
      if (v47 >= 0)
      {
        v22 = v46;
      }

      else
      {
        v22 = v46[0];
      }
    }

    else
    {
      v22 = "NULL";
    }

    v23 = v50;
    if (v50)
    {
      stringifyDataBuffer(&v45, *v50, v50[1] - *v50);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v45;
      }

      else
      {
        v24 = v45.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v24 = "NULL";
    }

    v25 = v51;
    if (v51)
    {
      stringifyDataBuffer(&v44, *v51, *(v51 + 8) - *v51);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v44;
      }

      else
      {
        v26 = v44.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v26 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Signed_Auth = %s fTlv_Nonce = %s\n", 62480, v22, v24, v26);
    if (v25 && SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v23 && SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v21 && v47 < 0)
    {
      operator delete(v46[0]);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(&v53, v48, (a1 + 328));
  v27 = abb::router::SendProxy::timeout();
  v28 = operator new(0x20uLL);
  *v28 = &unk_2A1EB3610;
  v28[1] = a1;
  v28[2] = &v52 + 1;
  v28[3] = &v52;
  v56[3] = v28;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v56, (v27 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v56);
  MEMORY[0x29C285FB0](&v53);
  v29 = dispatch_time(0, 7500000000);
  v30 = dispatch_semaphore_wait(*(a1 + 360), v29);
  if (!v30)
  {
LABEL_44:
    if ((v52 & 0x100) != 0)
    {
      if (*(a1 + 368))
      {
        gBBULogMaskGet(v30, v31);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate succeed\n");
        v32 = 0;
LABEL_47:
        MEMORY[0x29C286180](v48);
        return v32;
      }

      gBBULogMaskGet(v30, v31);
      v42 = VinylController::performNonUpdateOperation();
      if (v42)
      {
        v42 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1145, "sepIndSuccess_");
      }

      gBBULogMaskGet(v42, v43);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Ind Sep_Cmd_Cnf\n");
    }

    else
    {
      gBBULogMaskGet(v30, v31);
      v40 = VinylController::performNonUpdateOperation();
      if (v40)
      {
        v40 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1144, "successCnf");
      }

      gBBULogMaskGet(v40, v41);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf fail\n");
    }

LABEL_66:
    v32 = 1;
    goto LABEL_47;
  }

  if ((v52 & 1) == 0)
  {
    gBBULogMaskGet(v30, v31);
    v30 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on ManagePairingAuthenticate Sep_Cmd_Req\n");
    goto LABEL_44;
  }

  MEMORY[0x29C286180](v48);
  return 0;
}

void sub_298281DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (v50 && a25 < 0)
  {
    operator delete(__p);
  }

  if (v49)
  {
    if (a31 < 0)
    {
      operator delete(a26);
    }
  }

  MEMORY[0x29C286180](&a32, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,false>::operator=<std::vector<unsigned char> const&>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

void eUICC::eUICCVinylDALValve::~eUICCVinylDALValve(eUICC::eUICCVinylDALValve *this)
{
  *this = &unk_2A1EB2CF8;
  if (*(this + 352) == 1)
  {
    abb::router::Client::stop((this + 328));
  }

  v2 = *(this + 47);
  if (v2)
  {
    *(this + 48) = v2;
    operator delete(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(this + 41) = &unk_2A1EB2DE0;
  v4 = *(this + 43);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  VinylCommunication::~VinylCommunication(this);
}

{
  eUICC::eUICCVinylDALValve::~eUICCVinylDALValve(this);

  operator delete(v1);
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_2982820A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB2E10;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1EB2E10;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1EB2E10;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1EB2E10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  *(v2 + 352) = 1;
  return dispatch_semaphore_signal(v1);
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EB2EA0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EB2EA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EB2F20;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EB2F20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(uint64_t a1, abb::router::Message *this)
{
  abb::router::Message::getRawMsg(&v52, this);
  v4 = *v52;
  abb::router::Message::getRawMsg(&v49, this);
  MEMORY[0x29C286150](v39, v4, *(v49 + 1) - *v49);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v6 = v53;
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v7 = *(a1 + 8);
  v8 = gBBULogMaskGet(v6, v5);
  if ((*(v8 + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v41;
    if (v41)
    {
      stringifyVal(&v52, *v41);
      if (v54 >= 0)
      {
        v11 = &v52;
      }

      else
      {
        v11 = v52;
      }
    }

    else
    {
      v11 = "NULL";
    }

    v12 = v42;
    if (v42)
    {
      stringifyVal(&v49, *v42);
      if (v51 >= 0)
      {
        v13 = &v49;
      }

      else
      {
        v13 = v49;
      }
    }

    else
    {
      v13 = "NULL";
    }

    v14 = v43;
    if (v43)
    {
      stringifyVal(v47, *v43);
      if (v48 >= 0)
      {
        v15 = v47;
      }

      else
      {
        v15 = v47[0];
      }
    }

    else
    {
      v15 = "NULL";
    }

    v16 = v44;
    if (v44)
    {
      stringifyDataBuffer(&v46, *v44, *(v44 + 8) - *v44);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v46;
      }

      else
      {
        v17 = v46.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v17 = "NULL";
    }

    v8 = _BBULog(22, 7, "eUICCVinylDALValve", "", "Sep_Cmd_Ind received: Msg=%04x fTlv_Cmd_Id = %s fTlv_Result = %s fTlv_Sw = %s fTlv_Nonce = %s\n", 62595, v11, v13, v15, v17);
    if (v16 && SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v14 && v48 < 0)
    {
      operator delete(v47[0]);
    }

    if (v12 && v51 < 0)
    {
      operator delete(v49);
    }

    if (v10 && v54 < 0)
    {
      operator delete(v52);
    }
  }

  if (v41)
  {
    v18 = *v41;
    if (*v41 >= 3)
    {
      gBBULogMaskGet(v8, v9);
      updated = VinylController::performNonUpdateOperation();
      if (updated)
      {
        updated = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 125, "cmdId == mipc::MIPC_DALE_VINYL_SEP_CMD_GET_NONCE || cmdId == mipc::MIPC_DALE_VINYL_SEP_CMD_AUTHENTICATE || cmdId == mipc::MIPC_DALE_VINYL_SEP_CMD_INSTALL");
      }

      gBBULogMaskGet(updated, v31);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind Cmd_Id %u not supported\n");
    }

    else
    {
      v19 = mipc::operator==();
      if (v19)
      {
        if (!v42 || *v42)
        {
          gBBULogMaskGet(v19, v20);
          v24 = VinylController::performNonUpdateOperation();
          if (v24)
          {
            v24 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 130, "ind.fTlv_Result && *ind.fTlv_Result == mipc::MIPC_DALE_VINYL_CMD_RESULT_SUCCESS");
          }

          gBBULogMaskGet(v24, v25);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind failed, result 0x%x\n");
        }

        else if (v43 && *v43 == -28672)
        {
          if (v18 > 1)
          {
LABEL_50:
            *(v7 + 368) = 1;
            goto LABEL_51;
          }

          if (v44)
          {
            v21 = *v44;
            if (*(v44 + 8) - *v44 == 16)
            {
              std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v7 + 376), v21, v21 + 16, 0x10uLL);
              goto LABEL_50;
            }

            gBBULogMaskGet(v19, v21);
            v36 = VinylController::performNonUpdateOperation();
            if (v36)
            {
              v36 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 139, "ind.fTlv_Nonce.get()->size() == SEP_NONCE_SZ");
            }

            gBBULogMaskGet(v36, v37);
            _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind nonce size = %zu, should be %d\n", *(v44 + 8) - *v44, 16);
          }

          else
          {
            gBBULogMaskGet(v19, v20);
            v34 = VinylController::performNonUpdateOperation();
            if (v34)
            {
              v34 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 137, "ind.fTlv_Nonce.get()");
            }

            gBBULogMaskGet(v34, v35);
            _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind Cmd_id %u should have fTlv_Nonce\n");
          }
        }

        else
        {
          gBBULogMaskGet(v19, v20);
          v26 = VinylController::performNonUpdateOperation();
          if (v26)
          {
            v26 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 132, "ind.fTlv_Sw && *ind.fTlv_Sw == 0x9000");
          }

          gBBULogMaskGet(v26, v27);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind failed, status word from UICC sw 0x%hx\n");
        }
      }

      else
      {
        gBBULogMaskGet(v19, v20);
        v32 = VinylController::performNonUpdateOperation();
        if (v32)
        {
          v32 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 128, "!ind.isError()");
        }

        gBBULogMaskGet(v32, v33);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
        }

        else
        {
          v45 = v40;
        }

        v38 = &v45;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = v45.__r_.__value_.__r.__words[0];
        }

        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind returned error[%s].\n", v38);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    gBBULogMaskGet(v8, v9);
    v28 = VinylController::performNonUpdateOperation();
    if (v28)
    {
      v28 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 119, "ind.fTlv_Cmd_Id");
    }

    gBBULogMaskGet(v28, v29);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind doesn't have fTlv_Cmd_Id\n");
  }

LABEL_51:
  v22 = *(v7 + 360);
  if (v22)
  {
    dispatch_semaphore_signal(v22);
  }

  else
  {
    gBBULogMaskGet(0, v20);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind sepIndSem_ is NULL because of an unexpected baseband indication but that's fine\n");
  }

  return MEMORY[0x29C286160](v39);
}

void sub_298282AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C286160](&a14, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != -1)
  {
    result = (off_2A1EB2FA0[v2])(&v3, result);
  }

  *(v1 + 48) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 31) < 0)
  {
    v4 = *(a2 + 8);

    operator delete(v4);
  }
}

void mipc::Error::~Error(mipc::Error *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB2FC0;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB2FC0;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB2FC0;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB2FC0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v25.__val_, this);
    if ((v26 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v31 = v25;
    v5 = mipc::toErrorCode(v25.__val_, v4);
    std::error_code::message(&v27.__r_.__value_.__r.__words[1], &v31);
    v29 = 0;
    v30 = 0;
    v27.__r_.__value_.__r.__words[0] = v5;
    MEMORY[0x29C286400](v19, &v27, 1);
    size = v30;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v28 < 0)
    {
      operator delete(v27.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v27, this);
    v8 = *v27.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(&v25.__val_, this);
    MEMORY[0x29C286410](v19, v8, *(*&v25.__val_ + 8) - **&v25.__val_);
    if (v25.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25.__cat_);
    }

    size = v27.__r_.__value_.__l.__size_;
    if (v27.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
    }
  }

  if ((*(gBBULogMaskGet(size, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v22;
    if (v22)
    {
      if (*(v22 + 23) < 0)
      {
        v9 = *v22;
      }
    }

    else
    {
      v9 = "NULL";
    }

    v10 = v23;
    if (v23)
    {
      if (*(v23 + 23) < 0)
      {
        v10 = *v23;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v24;
    if (v24)
    {
      if (*(v24 + 23) < 0)
      {
        v11 = *v24;
      }
    }

    else
    {
      v11 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Status_Cnf received: Msg=0x%x fTlv_Eid = %s fTlv_Iccid = %s fTlv_Atr = %s\n", 1296, v9, v10, v11);
  }

  v12 = mipc::operator==();
  v13 = v12;
  gBBULogMaskGet(v12, v14);
  if (v13)
  {
    v15 = *v21;
    if ((v15 + 4) > 0x19u)
    {
      v16 = "Unknown sim status";
    }

    else
    {
      v16 = off_29EE8E7D0[(v15 + 4)];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM status: %s(%d).\n", v16, v15);
    **(a1 + 16) = *v21;
  }

  else
  {
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v20;
    }

    v17 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v27.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Status_Cnf returned error[%s].\n", v17);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  return MEMORY[0x29C286420](v19);
}

void sub_2982831CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  MEMORY[0x29C286420](va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9480], MEMORY[0x29EDC9368]);
}

void *std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298283520(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3040;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3040;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1EB3040;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1EB3040;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v50.__val_, this);
    if ((v51 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v48 = v50;
    v5 = mipc::toErrorCode(v50.__val_, v4);
    std::error_code::message(&__p, &v48);
    v42 = 0;
    v43 = 0;
    v40 = v5;
    MEMORY[0x29C286230](v31, &v40, 1);
    v7 = v43;
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v40, this);
    v8 = *v40;
    abb::router::Message::getRawMsg(&v50.__val_, this);
    MEMORY[0x29C286240](v31, v8, *(*&v50.__val_ + 8) - **&v50.__val_);
    if (v50.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50.__cat_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *(a1 + 8);
  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v33;
    if (v33)
    {
      stringifyVal(&v40, *v33);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v11 = &v40;
      }

      else
      {
        v11 = v40;
      }
    }

    else
    {
      v11 = "NULL";
    }

    v30 = v34;
    if (v34)
    {
      stringifyVal(&v50.__val_, *v34);
      if (v52 >= 0)
      {
        v12 = &v50;
      }

      else
      {
        v12 = *&v50.__val_;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v35;
    if (v35)
    {
      stringifyVal(&v48.__val_, *v35);
      if (v49 >= 0)
      {
        v14 = &v48;
      }

      else
      {
        v14 = *&v48.__val_;
      }
    }

    else
    {
      v14 = "NULL";
    }

    v15 = v39;
    if (v39)
    {
      v16 = v46;
      stringifyVal(v46, *v39);
      if (v47 < 0)
      {
        v16 = v46[0];
      }
    }

    else
    {
      v16 = "NULL";
    }

    v17 = v36;
    if (v36)
    {
      stringifyDataBuffer(&v45, *v36, v36[1] - *v36);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v45;
      }

      else
      {
        v18 = v45.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v18 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Is_Not_Personalized = %s fTlv_Sw = %s fTlv_Chip_Id = %s fTlv_Eid = %s\n", 62467, v11, v12, v14, v16, v18);
    if (v17 && SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v15 && v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (v13 && v49 < 0)
    {
      operator delete(*&v48.__val_);
    }

    if (v30 && v52 < 0)
    {
      operator delete(*&v50.__val_);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v40);
    }
  }

  v19 = mipc::operator==();
  if (v19)
  {
    if (*v33)
    {
      gBBULogMaskGet(v19, v20);
      v21 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf not successful, result 0x%x ", *v33);
      v22 = v35;
      gBBULogMaskGet(v21, v23);
      if (v22)
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "sw1_sw2 0x%hx\n", *v35);
      }

      else
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "\n");
      }
    }

    else
    {
      *(v9 + 8) = 0;
      if (v35)
      {
        *(v9 + 13) = *v35;
      }

      if (v36)
      {
        *(v9 + 15) = **v36;
      }

      if (v37)
      {
        v24 = (*v37)[1];
        *(v9 + 32) = **v37;
        *(v9 + 48) = v24;
      }

      if (v38)
      {
        mipc::getBuf<3ul,true>(v38, &v44);
        size = v44.__r_.__value_.__l.__size_;
        v26 = *(*v44.__r_.__value_.__l.__data_ + 2);
        *(v9 + 248) = **v44.__r_.__value_.__l.__data_;
        *(v9 + 250) = v26;
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      if (v34)
      {
        *(v9 + 12) = *v34;
      }

      if (v39)
      {
        *(v9 + 283) = *v39;
      }

      v27 = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 286) = eUICC::eUICCVinylValve::simSKUID;
      *(v9 + 287) = v27 ^ 1;
      *(v9 + 290) = 1;
      eUICC::logEUICCData((v9 + 8), v20);
    }
  }

  else
  {
    gBBULogMaskGet(v19, v20);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = v32;
    }

    v28 = &v44;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v44.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf returned error[%s].\n", v28);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 16));
  return MEMORY[0x29C286250](v31);
}

void sub_298283BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v43 && *(v44 - 145) < 0)
  {
    operator delete(*(v44 - 168));
  }

  if (v42 && *(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (a16 && *(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (a15)
  {
    if (a42 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C286250](&a17, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mipc::getBuf<3ul,true>@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v7[2] = v2;
    v7[3] = v3;
    v6 = v5;
    v7[0] = v4;
    return std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(v7, &v6, a2);
  }

  return result;
}

uint64_t std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>@<X0>(char **a1@<X1>, char **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,std::allocator<std::vector<unsigned char>>,0>(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,std::allocator<std::vector<unsigned char>>,0>(uint64_t a1, char **a2, char **a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A1EB30B0;
  v4 = *a2;
  v5 = *a3;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a1 + 24), v4, v5, v5 - v4);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB30B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3110;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3110;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1EB3110;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A1EB3110;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v68.__val_, this);
    if ((v69 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v66 = v68;
    v5 = mipc::toErrorCode(v68.__val_, v4);
    std::error_code::message(&__p, &v66);
    v60 = 0;
    v61 = 0;
    v58 = v5;
    MEMORY[0x29C2860D0](v43, &v58, 1);
    v7 = v61;
    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v58, this);
    v8 = *v58;
    abb::router::Message::getRawMsg(&v68.__val_, this);
    MEMORY[0x29C2860E0](v43, v8, *(*&v68.__val_ + 8) - **&v68.__val_);
    if (v68.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68.__cat_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *(a1 + 8);
  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v45;
    if (v45)
    {
      stringifyVal(&v58, *v45);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v11 = &v58;
      }

      else
      {
        v11 = v58;
      }
    }

    else
    {
      v11 = "NULL";
    }

    v42 = v46;
    if (v46)
    {
      stringifyVal(&v68.__val_, *v46);
      if (v70 >= 0)
      {
        v12 = &v68;
      }

      else
      {
        v12 = *&v68.__val_;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v47;
    if (v47)
    {
      stringifyVal(&v66.__val_, *v47);
      if (v67 >= 0)
      {
        v14 = &v66;
      }

      else
      {
        v14 = *&v66.__val_;
      }
    }

    else
    {
      v14 = "NULL";
    }

    v15 = v56;
    if (v56)
    {
      v16 = v64;
      stringifyVal(v64, *v56);
      if (v65 < 0)
      {
        v16 = v64[0];
      }
    }

    else
    {
      v16 = "NULL";
    }

    v17 = v48;
    if (v48)
    {
      stringifyDataBuffer(&v63, *v48, v48[1] - *v48);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v63;
      }

      else
      {
        v18 = v63.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v18 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Getdata_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Is_Not_Personalized = %s fTlv_Sw = %s fTlv_Chip_Id = %s fTlv_Eid = %s\n", 62466, v11, v12, v14, v16, v18);
    if (v17 && SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (v15 && v65 < 0)
    {
      operator delete(v64[0]);
    }

    if (v13 && v67 < 0)
    {
      operator delete(*&v66.__val_);
    }

    if (v42 && v70 < 0)
    {
      operator delete(*&v68.__val_);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v58);
    }
  }

  v19 = mipc::operator==();
  if (v19)
  {
    if (*v45)
    {
      gBBULogMaskGet(v19, v20);
      v21 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Getdata_Cnf not successful, result 0x%x ", *v45);
      v22 = v47;
      gBBULogMaskGet(v21, v23);
      if (v22)
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "sw1_sw2 0x%hx\n", *v47);
      }

      else
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "\n");
      }
    }

    else
    {
      *(v9 + 8) = 0;
      if (v47)
      {
        *(v9 + 13) = *v47;
      }

      if (v48)
      {
        *(v9 + 15) = **v48;
      }

      if (v49)
      {
        *(v9 + 31) = *v49;
      }

      if (v52)
      {
        v24 = (*v52)[1];
        *(v9 + 32) = **v52;
        *(v9 + 48) = v24;
      }

      if (v50)
      {
        *(v9 + 64) = **v50;
      }

      if (v51)
      {
        *(v9 + 72) = **v51;
      }

      if (v53)
      {
        mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf(&v53, &v62);
        size = v62.__r_.__value_.__l.__size_;
        v26 = *v62.__r_.__value_.__l.__data_;
        *(v9 + 80) = **v62.__r_.__value_.__l.__data_;
        v28 = v26[2];
        v27 = v26[3];
        v29 = v26[1];
        *(v9 + 139) = *(v26 + 59);
        *(v9 + 112) = v28;
        *(v9 + 128) = v27;
        *(v9 + 96) = v29;
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      if (v54)
      {
        mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf(&v54, &v62);
        v30 = v62.__r_.__value_.__l.__size_;
        v31 = *v62.__r_.__value_.__l.__data_;
        *(v9 + 155) = **v62.__r_.__value_.__l.__data_;
        v33 = v31[2];
        v32 = v31[3];
        v34 = *(v31 + 59);
        *(v9 + 171) = v31[1];
        *(v9 + 214) = v34;
        *(v9 + 203) = v32;
        *(v9 + 187) = v33;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }
      }

      if (v55)
      {
        mipc::getBuf<3ul,true>(v55, &v62);
        v35 = v62.__r_.__value_.__l.__size_;
        v36 = *(*v62.__r_.__value_.__l.__data_ + 2);
        *(v9 + 248) = **v62.__r_.__value_.__l.__data_;
        *(v9 + 250) = v36;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }
      }

      if (v57)
      {
        mipc::getBuf<3ul,true>(v57, &v62);
        v37 = v62.__r_.__value_.__l.__size_;
        v38 = *(*v62.__r_.__value_.__l.__data_ + 16);
        *(v9 + 251) = **v62.__r_.__value_.__l.__data_;
        *(v9 + 267) = v38;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }
      }

      if (v46)
      {
        *(v9 + 12) = *v46;
      }

      if (v56)
      {
        *(v9 + 283) = *v56;
      }

      v39 = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 286) = eUICC::eUICCVinylValve::simSKUID;
      *(v9 + 287) = v39 ^ 1;
      *(v9 + 290) = 1;
    }
  }

  else
  {
    gBBULogMaskGet(v19, v20);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      v62 = v44;
    }

    v40 = &v62;
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v62.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Getdata_Cnf returned error[%s].\n", v40);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 16));
  return MEMORY[0x29C2860F0](v43);
}

void sub_29828460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (v51 && *(v52 - 161) < 0)
  {
    operator delete(*(v52 - 184));
  }

  if (v50 && *(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  if (a17 && *(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (a16)
  {
    if (a50 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2860F0](&a18, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v8 = 69;
    result = std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v8, a2);
    v4 = **a2;
    v6 = *(v3 + 32);
    v5 = *(v3 + 48);
    v7 = *(v3 + 16);
    *(v4 + 61) = *(v3 + 61);
    *(v4 + 32) = v6;
    *(v4 + 48) = v5;
    *(v4 + 16) = v7;
    *v4 = *v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>@<X0>(size_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::allocator<std::vector<unsigned char>>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::allocator<std::vector<unsigned char>>,0>(void *a1, size_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EB30B0;
  std::vector<unsigned char>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3190;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3190;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3190;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3190;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v25, this);
    if ((v26 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v24.__r_.__value_.__l.__data_ = v25;
    v5 = mipc::toErrorCode(v25, v4);
    std::error_code::message(&__p, &v24);
    v22 = 0;
    v23 = 0;
    v20 = v5;
    MEMORY[0x29C286280](v16, &v20, 1);
    v7 = v23;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v20, this);
    v8 = *v20;
    abb::router::Message::getRawMsg(&v25, this);
    MEMORY[0x29C286290](v16, v8, *(v25 + 8) - *v25);
    if (*(&v25 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v18;
    if (v18)
    {
      stringifyVal(&v20, *v18);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v19;
    if (v19)
    {
      stringifyVal(&v25, *v19);
      if (v27 >= 0)
      {
        v12 = &v25;
      }

      else
      {
        v12 = v25;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Switch_Mode_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", 62468, v10, v12);
    if (v11 && v27 < 0)
    {
      operator delete(v25);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v20);
    }
  }

  v13 = mipc::operator==();
  if (v13)
  {
    if (*v18)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Switch_Mode_Cnf not successful, result 0x%x sw1_sw2 0x%hx\n", *v18, *v19);
    }

    else
    {
      **(a1 + 16) = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v17;
    }

    v15 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v24.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Switch_Mode_Req returned error[%s].\n", v15);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Switch_Mode_Cnf::~Switch_Mode_Cnf(v16);
}

void sub_298284D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Switch_Mode_Cnf::~Switch_Mode_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3210;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3210;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3210;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3210;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v25, this);
    if ((v26 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v24.__r_.__value_.__l.__data_ = v25;
    v5 = mipc::toErrorCode(v25, v4);
    std::error_code::message(&__p, &v24);
    v22 = 0;
    v23 = 0;
    v20 = v5;
    MEMORY[0x29C286370](v16, &v20, 1);
    v7 = v23;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v20, this);
    v8 = *v20;
    abb::router::Message::getRawMsg(&v25, this);
    MEMORY[0x29C286380](v16, v8, *(v25 + 8) - *v25);
    if (*(&v25 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v18;
    if (v18)
    {
      stringifyVal(&v20, *v18);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v19;
    if (v19)
    {
      stringifyVal(&v25, *v19);
      if (v27 >= 0)
      {
        v12 = &v25;
      }

      else
      {
        v12 = v25;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Delete Profile Cmd_Cnf received: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Result = %s\n", 62465, v10, v12);
    if (v11 && v27 < 0)
    {
      operator delete(v25);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v20);
    }
  }

  v13 = mipc::operator==();
  if (v13)
  {
    if (*v19)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Delete Profile Cmd_Cnf not successful, result 0x%x\n", *v19);
    }

    else
    {
      **(a1 + 16) = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v17;
    }

    v15 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v24.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Delete Profile Cmd_Req returned error[%s].\n", v15);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Cmd_Cnf::~Cmd_Cnf(v16);
}

void sub_2982852BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Cmd_Cnf::~Cmd_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3290;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3290;
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1EB3290;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  v3 = *(a1 + 40);
  *(v2 + 5) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3290;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 40);
  *(a2 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v32, this);
    if ((v33 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v31.__r_.__value_.__l.__data_ = v32;
    v5 = mipc::toErrorCode(v32, v4);
    std::error_code::message(&__p, &v31);
    v28 = 0;
    v29 = 0;
    v26 = v5;
    MEMORY[0x29C2863A0](v19, &v26, 1);
    v7 = v29;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v26, this);
    v8 = *v26;
    abb::router::Message::getRawMsg(&v32, this);
    MEMORY[0x29C2863B0](v19, v8, *(v32 + 8) - *v32);
    if (*(&v32 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(&v26, *v21);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v26;
      }

      else
      {
        v10 = v26;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(&v32, *v22);
      if (v34 >= 0)
      {
        v12 = &v32;
      }

      else
      {
        v12 = v32;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v25;
    if (v25)
    {
      stringifyDataBuffer(&v31, *v25, *(v25 + 8) - *v25);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v31;
      }

      else
      {
        v14 = v31.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Store data Cmd_Ind received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62592, v10, v12, v14);
    if (v13 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v11 && v34 < 0)
    {
      operator delete(v32);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v26);
    }
  }

  v15 = mipc::operator==();
  if (v15)
  {
    if (*v21)
    {
      gBBULogMaskGet(v15, v16);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Store data Cmd_Ind not successful, result 0x%x\n", *v21);
    }

    else if (*v23 < 2u)
    {
      **(a1 + 32) = *v22;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v25, *(v25 + 8), *(v25 + 8) - *v25);
      **(a1 + 24) = 0;
    }

    else
    {
      gBBULogMaskGet(v15, v16);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Not support for concatenated indications currently, segment 0x%x/0x%x\n", *v24, *v23);
    }
  }

  else
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v20;
    }

    v17 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v30.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Store data Cmd_Req returned error[%s].\n", v17);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  return MEMORY[0x29C2863C0](v19);
}

void sub_2982858F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v37 && *(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (v36)
  {
    if (a36 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2863C0](&a14, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3310;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3310;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A1EB3310;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3310;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C2861E0](v19, &v24, 1);
    v7 = v27;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v8 = *v24;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C2861F0](v19, v8, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(&v24, *v21);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(&v30, *v22);
      if (v32 >= 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v23;
    if (v23)
    {
      stringifyDataBuffer(&v29, *v23, *(v23 + 8) - *v23);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v29;
      }

      else
      {
        v14 = v29.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Init_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62471, v10, v12, v14);
    if (v13 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  v15 = mipc::operator==();
  if ((v15 & 1) == 0)
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v20;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Init_Perso_Cnf returned error[%s].\n", v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_48;
  }

  if (*v21)
  {
    gBBULogMaskGet(v15, v16);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Init_Perso_Req not successful, result 0x%x", *v21);
LABEL_48:
    v17 = 1;
    goto LABEL_49;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v23, *(v23 + 8), *(v23 + 8) - *v23);
  v17 = 0;
LABEL_49:
  **(a1 + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Init_Perso_Cnf::~Init_Perso_Cnf(v19);
}

void sub_298285ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Init_Perso_Cnf::~Init_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3390;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3390;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A1EB3390;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C286190](v19, &v24, 1);
    v7 = v27;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v8 = *v24;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C2861A0](v19, v8, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(&v24, *v21);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(&v30, *v22);
      if (v32 >= 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v23;
    if (v23)
    {
      stringifyDataBuffer(&v29, *v23, *(v23 + 8) - *v23);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v29;
      }

      else
      {
        v14 = v29.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Auth_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62472, v10, v12, v14);
    if (v13 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  v15 = mipc::operator==();
  if ((v15 & 1) == 0)
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v20;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Auth_Perso_Cnf returned error[%s].\n", v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_48;
  }

  if (*v21)
  {
    gBBULogMaskGet(v15, v16);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Auth_Perso_Req not successful, result 0x%x", *v21);
LABEL_48:
    v17 = 1;
    goto LABEL_49;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v23, *(v23 + 8), *(v23 + 8) - *v23);
  v17 = 0;
LABEL_49:
  **(a1 + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Auth_Perso_Cnf::~Auth_Perso_Cnf(v19);
}

void sub_2982864C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Auth_Perso_Cnf::~Auth_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3410;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3410;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3410;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3410;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v26, this);
    if ((v27 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v25.__r_.__value_.__l.__data_ = v26;
    v5 = mipc::toErrorCode(v26, v4);
    std::error_code::message(&__p, &v25);
    v23 = 0;
    v24 = 0;
    v21 = v5;
    MEMORY[0x29C2862D0](v17, &v21, 1);
    v7 = v24;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v21, this);
    v8 = *v21;
    abb::router::Message::getRawMsg(&v26, this);
    MEMORY[0x29C2862E0](v17, v8, *(v26 + 8) - *v26);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v19;
    if (v19)
    {
      stringifyVal(&v21, *v19);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v21;
      }

      else
      {
        v10 = v21;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v20;
    if (v20)
    {
      stringifyVal(&v26, *v20);
      if (v28 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Finalize_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", 62473, v10, v12);
    if (v11 && v28 < 0)
    {
      operator delete(v26);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v21);
    }
  }

  v13 = mipc::operator==();
  if ((v13 & 1) == 0)
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v18;
    }

    v16 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v25.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Finalize_Perso_Cnf returned error[%s].\n", v16);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    goto LABEL_42;
  }

  if (*v19)
  {
    gBBULogMaskGet(v13, v14);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Finalize_Perso_Req not successful, result 0x%x", *v19);
LABEL_42:
    v15 = 1;
    goto LABEL_43;
  }

  if (*v20 != 36864)
  {
    printf("Finalize perso failed with sw = %02X.\n", *v20);
    goto LABEL_42;
  }

  v15 = 0;
LABEL_43:
  **(a1 + 16) = v15;
  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Finalize_Perso_Cnf::~Finalize_Perso_Cnf(v17);
}

void sub_298286A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Finalize_Perso_Cnf::~Finalize_Perso_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1EB3490;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1EB3490;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A1EB3490;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3490;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C286320](v19, &v24, 1);
    v7 = v27;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v8 = *v24;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C286330](v19, v8, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(&v24, *v21);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(&v30, *v22);
      if (v32 >= 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v23;
    if (v23)
    {
      stringifyDataBuffer(&v29, *v23, *(v23 + 8) - *v23);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v29;
      }

      else
      {
        v14 = v29.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Validate_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62474, v10, v12, v14);
    if (v13 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  v15 = mipc::operator==();
  if ((v15 & 1) == 0)
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v20;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Validate_Perso_Cnf returned error[%s].\n", v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_48;
  }

  if (*v21)
  {
    gBBULogMaskGet(v15, v16);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Validate_Perso_Req not successful, result 0x%x\n", *v21);
LABEL_48:
    v17 = 1;
    goto LABEL_49;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v23, *(v23 + 8), *(v23 + 8) - *v23);
  v17 = 0;
LABEL_49:
  **(a1 + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Validate_Perso_Cnf::~Validate_Perso_Cnf(v19);
}

void sub_298287034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Validate_Perso_Cnf::~Validate_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1EB3510;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3510;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v22, this);
    if ((v22.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v21 = *&v22.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v22.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v21);
    v19 = 0;
    v20 = 0;
    v17 = v5;
    MEMORY[0x29C286120](v14, &v17, 1);
    v7 = v20;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v17, this);
    v8 = *v17;
    abb::router::Message::getRawMsg(&v22, this);
    MEMORY[0x29C286130](v14, v8, *(v22.__r_.__value_.__r.__words[0] + 8) - *v22.__r_.__value_.__l.__data_);
    if (v22.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22.__r_.__value_.__l.__size_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v16;
    if (v16)
    {
      stringifyVal(&v17, *v16);
      v10 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v17 : v17;
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", 62480, v10);
    if (v9)
    {
      if (__p.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v17);
      }
    }
  }

  v11 = mipc::operator==();
  if (v11)
  {
    if (v16)
    {
      if (*v16)
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf failed, result 0x%x\n", *v16);
      }

      else
      {
        **(a1 + 16) = 1;
      }
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf has no fTlv_Result\n");
    }
  }

  else
  {
    gBBULogMaskGet(v11, v12);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v15;
    }

    v13 = &v22;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v22.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf returned error[%s]\n", v13);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v14);
}

void sub_29828746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1EB3590;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3590;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v22, this);
    if ((v22.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v21 = *&v22.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v22.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v21);
    v19 = 0;
    v20 = 0;
    v17 = v5;
    MEMORY[0x29C286120](v14, &v17, 1);
    v7 = v20;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v17, this);
    v8 = *v17;
    abb::router::Message::getRawMsg(&v22, this);
    MEMORY[0x29C286130](v14, v8, *(v22.__r_.__value_.__r.__words[0] + 8) - *v22.__r_.__value_.__l.__data_);
    if (v22.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22.__r_.__value_.__l.__size_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v16;
    if (v16)
    {
      stringifyVal(&v17, *v16);
      v10 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v17 : v17;
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", 62480, v10);
    if (v9)
    {
      if (__p.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v17);
      }
    }
  }

  v11 = mipc::operator==();
  if (v11)
  {
    if (v16)
    {
      if (*v16)
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf failed, result 0x%x\n", *v16);
      }

      else
      {
        **(a1 + 16) = 1;
      }
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf has no fTlv_Result\n");
    }
  }

  else
  {
    gBBULogMaskGet(v11, v12);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v15;
    }

    v13 = &v22;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v22.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf returned error[%s]\n", v13);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v14);
}

void sub_298287868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EB3610;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EB3610;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v23, this);
    if ((v23.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *&v23.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v23.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v22);
    v20 = 0;
    v21 = 0;
    v18 = v5;
    MEMORY[0x29C286120](v15, &v18, 1);
    v7 = v21;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v18, this);
    v8 = *v18;
    abb::router::Message::getRawMsg(&v23, this);
    MEMORY[0x29C286130](v15, v8, *(v23.__r_.__value_.__r.__words[0] + 8) - *v23.__r_.__value_.__l.__data_);
    if (v23.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23.__r_.__value_.__l.__size_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v17;
    if (v17)
    {
      stringifyVal(&v18, *v17);
      v10 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v18 : v18;
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", 62480, v10);
    if (v9)
    {
      if (__p.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v18);
      }
    }
  }

  v11 = mipc::operator==();
  if (v11)
  {
    if (v17)
    {
      if (*v17)
      {
        if (*v17 != 8)
        {
          gBBULogMaskGet(v11, v12);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf failed, result 0x%x\n", *v17);
          goto LABEL_37;
        }

        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate has cached succeed result, no following indication\n");
        **(a1 + 16) = 1;
        v13 = *(a1 + 24);
      }

      else
      {
        v13 = *(a1 + 16);
      }

      *v13 = 1;
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf has no fTlv_Result\n");
    }
  }

  else
  {
    gBBULogMaskGet(v11, v12);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = v16;
    }

    v14 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v23.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf returned error[%s]\n", v14);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

LABEL_37:
  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v15);
}

void sub_298287CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_61()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t VinylMipcTransport::open(uint64_t a1, uint64_t a2, NSObject **a3)
{
  if (!*(a2 + 24) || !*a3)
  {
    return 0;
  }

  std::function<void ()(unsigned char const*,unsigned long)>::operator=((a1 + 112), a2);
  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 144);
  *(a1 + 144) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  TelephonyBasebandPCITransportInitParameters();
  v16 = *(a1 + 144);
  v22 = 0;
  v23 = 0;
  v18 = 0x200001B58;
  v20 = 0xF0000000000FLL;
  v15 = 30;
  v19 |= 5u;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_9;
  v13[4] = v7;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v13;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1;
  v11[3] = &__block_descriptor_tmp_3;
  v11[4] = a1;
  v11[5] = v7;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  v21 = v11;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v9 = TelephonyBasebandPCITransportCreate();
  *(a1 + 152) = v9;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return v9;
}

void sub_298287FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(unsigned char const*,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

uint64_t __copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1(void *a1, int a2, void *a3, unsigned int a4)
{
  if (a3)
  {
    v6 = a1[6];
    if (v6 && (v9 = a1[4], (v10 = std::__shared_weak_count::lock(v6)) != 0))
    {
      v11 = v10;
      if (a2 || !a1[5])
      {
        free(a3);
      }

      else
      {
        std::function<void ()(unsigned char const*,unsigned long)>::operator()(v9 + 112, a3, a4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {

      free(a3);
    }
  }
}

uint64_t std::function<void ()(unsigned char const*,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t VinylMipcTransport::close(VinylMipcTransport *this)
{
  v2 = *(this + 10);
  if (v2 && v2(this + 24))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v3(this + 24);
    }

    TelephonyUtilTransportFree();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 152) = 0;
  return 1;
}

uint64_t VinylMipcTransport::write(VinylMipcTransport *this, const unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*(this + 152) != 1)
    {
      return 0;
    }

    v7 = *(this + 10);
    if (!v7)
    {
      return 0;
    }

    result = v7(this + 24);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v10 = *(this + 3);
    if (v10)
    {
      result = v10(this + 24, a2, a3, &v11, 1, 10000, 0);
      if (a4)
      {
        if (result)
        {
          *a4 = v11;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VinylMipcTransport::isReady(VinylMipcTransport *this)
{
  if (*(this + 152) == 1 && (v1 = *(this + 10)) != 0)
  {
    return v1(this + 24);
  }

  else
  {
    return 0;
  }
}

void VinylMipcTransport::~VinylMipcTransport(VinylMipcTransport *this)
{
  VinylMipcTransport::~VinylMipcTransport(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB36F0;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](this + 112);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298288780(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

unint64_t eUICC::GetSIMSKUID::Perform(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    Uplink = ETLFrameCreateUplink();
    if (Uplink && (Uplink = ETLMaverickAddBSPCommandHeader(), (Uplink & 1) != 0))
    {
      MatchingResponse = ETLSendCommand();
      if (MatchingResponse && (MatchingResponse = ETLSubsysFindMatchingResponse(), (MatchingResponse & 1) != 0))
      {
        v2 = MEMORY[0] << 32;
        if (MEMORY[4] == 1)
        {
          v7 = 0;
        }

        else
        {
          v7 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        gBBULogMaskGet(MatchingResponse, v6);
        _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 84);
        v2 = 0;
        v7 = 5;
      }
    }

    else
    {
      gBBULogMaskGet(Uplink, v4);
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 80);
      v2 = 0;
      v7 = 12;
    }
  }

  else
  {
    gBBULogMaskGet(a1, a2);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "transport", "", "", 75);
    v7 = 22;
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return v7 | v2;
}

uint64_t eUICC::LETOMuxSwitch::Perform(uint64_t *a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x29EDCA608];
  LODWORD(v13) = -1;
  v14 = 0;
  v15 = -1;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v16[0] = &unk_2A1EB3788;
  v16[3] = v16;
  if (!*a1)
  {
    gBBULogMaskGet(a1, a2);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "transport", "", "", 128);
    v9 = 22;
    goto LABEL_11;
  }

  Uplink = ETLFrameCreateUplink();
  if (!Uplink || (Uplink = ETLMaverickAddBSPCommandHeader(), !Uplink) || (Uplink = HDLCFrameInjectUnsignedChar(), !Uplink) || (Uplink = HDLCFrameInjectUnsignedChar(), (Uplink & 1) == 0))
  {
    gBBULogMaskGet(Uplink, v3);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 135);
    v9 = 12;
    goto LABEL_11;
  }

  v4 = ETLSendCommand();
  if ((v4 & 1) == 0)
  {
    gBBULogMaskGet(v4, v5);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 138);
LABEL_14:
    v9 = 5;
    goto LABEL_11;
  }

  MatchingResponse = ETLSubsysFindMatchingResponse();
  if ((MatchingResponse & 1) == 0)
  {
    gBBULogMaskGet(MatchingResponse, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 141);
    goto LABEL_14;
  }

  gBBULogMaskGet(MatchingResponse, v7);
  _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "sizeof(result) == HDLCFrameGetPayloadLength(&rsp)", "", "", 143);
  v9 = 40;
LABEL_11:
  LODWORD(v13) = v9;
  HDLCFrameFree();
  HDLCFrameFree();
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v16);
  return v13;
}

void sub_298288D40(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v1 - 88);
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v1 - 56);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::LETOMuxSwitch::Response::Contents>(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t a7)
{
  v10 = a4;
  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *a2 = 0;
  a2[4] = 0;
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    MatchingResponse = ETLSendCommand();
    if (!MatchingResponse || (MatchingResponse = ETLSubsysFindMatchingResponse(), (MatchingResponse & 1) == 0))
    {
      gBBULogMaskGet(MatchingResponse, v14);
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 243);
      v16 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint("VinylPollResult", "Received payload length (%d) is smaller than required size (%d)\n", 0, a6);
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v12.__d_.__rep_ > 1000000 * v10)
    {
      v16 = 60;
      goto LABEL_12;
    }
  }

  v15 = *(a7 + 24);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v15 + 48))(v15, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = 0;
LABEL_12:
  HDLCFrameFree();
  return v16;
}

uint64_t eUICC::VinylManagePairing::Perform@<X0>(uint64_t *a1@<X0>, int *a2@<X8>, uint64_t a3@<X1>)
{
  v13[4] = *MEMORY[0x29EDCA608];
  *a2 = -1;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v4 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet(a1, a3);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "transport", "", "", 203);
    v9 = 22;
    goto LABEL_11;
  }

  Uplink = ETLFrameCreateUplink();
  if (!Uplink || (Uplink = ETLMaverickAddBSPCommandHeader(), !Uplink) || (Uplink = HDLCFrameInjectUnsignedChar(), !Uplink) || (Uplink = HDLCFrameInjectUnsignedChar(), !Uplink) || (Uplink = HDLCFrameInjectUnsignedShort(), !Uplink) || (Uplink = HDLCFrameInject(), (Uplink & 1) == 0))
  {
    gBBULogMaskGet(Uplink, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 211);
    v9 = 12;
LABEL_11:
    *a2 = v9;
    return HDLCFrameFree();
  }

  v8 = *(a1 + 8);
  v13[0] = &unk_2A1EB3818;
  v13[3] = v13;
  *a2 = eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(v11, a2 + 1, v4, v8, 1, 9u, v13);
  std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](v13);
  return HDLCFrameFree();
}

void sub_2982890D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t a7)
{
  v9 = a4;
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  bzero(a2, 0x1779uLL);
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    MatchingResponse = ETLSendCommand();
    if (!MatchingResponse || (MatchingResponse = ETLSubsysFindMatchingResponse(), (MatchingResponse & 1) == 0))
    {
      gBBULogMaskGet(MatchingResponse, v13);
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 243);
      v15 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint("VinylPollResult", "Received payload length (%d) is smaller than required size (%d)\n", 0, a6);
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v11.__d_.__rep_ > 1000000 * v9)
    {
      v15 = 60;
      goto LABEL_12;
    }
  }

  v14 = *(a7 + 24);
  if (!v14)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v14 + 48))(v14, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = 0;
LABEL_12:
  HDLCFrameFree();
  return v15;
}

uint64_t eUICC::VinylValidatePerso::Perform@<X0>(uint64_t *a1@<X0>, int **a2@<X8>)
{
  v17[4] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x1780uLL);
  bzero(v4, 0x1780uLL);
  *v4 = -1;
  std::shared_ptr<eUICC::VinylValidatePerso::Response>::shared_ptr[abi:ne200100]<eUICC::VinylValidatePerso::Response,0>(a2, v4);
  v5 = ETLDebugRemoveFlags();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v7 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet(v5, v6);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "transport", "", "", 290);
    v12 = *a2;
    v13 = 22;
    goto LABEL_10;
  }

  Uplink = ETLFrameCreateUplink();
  if (!Uplink || (Uplink = ETLMaverickAddBSPCommandHeader(), !Uplink) || (Uplink = HDLCFrameInjectUnsignedChar(), !Uplink) || (Uplink = HDLCFrameInjectUnsignedShort(), !Uplink) || (Uplink = HDLCFrameInject(), (Uplink & 1) == 0))
  {
    gBBULogMaskGet(Uplink, v9);
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 297);
    v12 = *a2;
    v13 = 12;
LABEL_10:
    *v12 = v13;
    goto LABEL_11;
  }

  ETLDebugAddFlags();
  v10 = *a2;
  v11 = *(a1 + 33);
  v17[0] = &unk_2A1EB3920;
  v17[3] = v17;
  **a2 = eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(v15, v10 + 1, v7, v11, 1, 5u, v17);
  std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](v17);
LABEL_11:
  ETLDebugAddFlags();
  return HDLCFrameFree();
}

void sub_2982894A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](va);
  v19 = *(v17 + 8);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t a7)
{
  v9 = a4;
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  bzero(a2, 0x1779uLL);
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    MatchingResponse = ETLSendCommand();
    if (!MatchingResponse || (MatchingResponse = ETLSubsysFindMatchingResponse(), (MatchingResponse & 1) == 0))
    {
      gBBULogMaskGet(MatchingResponse, v13);
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 243);
      v15 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint("VinylPollResult", "Received payload length (%d) is smaller than required size (%d)\n", 0, a6);
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v11.__d_.__rep_ > 1000000 * v9)
    {
      v15 = 60;
      goto LABEL_12;
    }
  }

  v14 = *(a7 + 24);
  if (!v14)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v14 + 48))(v14, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = 0;
LABEL_12:
  HDLCFrameFree();
  return v15;
}

void *std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EB3788;
  return result;
}

uint64_t std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9) - 5 < 2)
  {
    return *(a2 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0>,BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EB3818;
  return result;
}

uint64_t std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0>,BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::shared_ptr<eUICC::VinylValidatePerso::Response>::shared_ptr[abi:ne200100]<eUICC::VinylValidatePerso::Response,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB38A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_298289A08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0>,BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EB3920;
  return result;
}

uint64_t std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0>,BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void stringifyVal(uint64_t *__return_ptr a1@<X8>, unsigned int a2@<W0>)
{
  v15 = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[2] = 6;
  v7[2] = 6;
  v8[0] = a2;
  v9 = v13;
  *__len = xmmword_2982C1B50;
  v11 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v12 = 0;
  __src = v13;
  v7[0] = 1;
  v7[1] = v8;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v9, "0x{:02x}", 8, v7);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a1[1] = v3;
    a1[2] = v5 | 0x8000000000000000;
    *a1 = v6;
    a1 = v6;
    goto LABEL_9;
  }

  *(a1 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a1, v4, v3);
  }

  *(a1 + v3) = 0;
  if (__src != v13)
  {
    operator delete(__src);
  }
}

{
  v15 = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[2] = 6;
  v7[2] = 6;
  v8[0] = a2;
  v9 = v13;
  *__len = xmmword_2982C1B50;
  v11 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v12 = 0;
  __src = v13;
  v7[0] = 1;
  v7[1] = v8;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v9, "0x{:04x}", 8, v7);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a1[1] = v3;
    a1[2] = v5 | 0x8000000000000000;
    *a1 = v6;
    a1 = v6;
    goto LABEL_9;
  }

  *(a1 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a1, v4, v3);
  }

  *(a1 + v3) = 0;
  if (__src != v13)
  {
    operator delete(__src);
  }
}

{
  v15 = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[2] = 6;
  v7[2] = 6;
  v8[0] = a2;
  v9 = v13;
  *__len = xmmword_2982C1B50;
  v11 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v12 = 0;
  __src = v13;
  v7[0] = 1;
  v7[1] = v8;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v9, "0x{:08x}", 8, v7);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a1[1] = v3;
    a1[2] = v5 | 0x8000000000000000;
    *a1 = v6;
    a1 = v6;
    goto LABEL_9;
  }

  *(a1 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a1, v4, v3);
  }

  *(a1 + v3) = 0;
  if (__src != v13)
  {
    operator delete(__src);
  }
}

void sub_298289D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_298289E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_298289FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void stringifyDataBuffer(std::string *__return_ptr a1@<X8>, unsigned __int8 *a2@<X0>, uint64_t a3@<X1>)
{
  v24 = *MEMORY[0x29EDCA608];
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a3)
  {
    for (i = a3; i; --i)
    {
      v6 = *a2++;
      v17[1] = 0;
      v17[2] = 6;
      v16[2] = 6;
      v17[0] = v6;
      v18 = v22;
      *__len = xmmword_2982C1B50;
      v20 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v21 = 0;
      __src = v22;
      v16[0] = 1;
      v16[1] = v17;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v18, "{:02x}", 6, v16);
      v7 = __len[1];
      if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v8 = __src;
      if (__len[1] >= 0x17)
      {
        if ((__len[1] | 7) == 0x17)
        {
          v10 = 25;
        }

        else
        {
          v10 = (__len[1] | 7) + 1;
        }

        p_dst = operator new(v10);
        v14 = v7;
        v15 = v10 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v15) = __len[1];
        p_dst = &__dst;
        if (!__len[1])
        {
          goto LABEL_12;
        }
      }

      memmove(p_dst, v8, v7);
LABEL_12:
      *(p_dst + v7) = 0;
      if (__src != v22)
      {
        operator delete(__src);
      }

      if (v15 >= 0)
      {
        v11 = &__dst;
      }

      else
      {
        v11 = __dst;
      }

      if (v15 >= 0)
      {
        v12 = HIBYTE(v15);
      }

      else
      {
        v12 = v14;
      }

      std::string::append(a1, v11, v12);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__dst);
      }
    }
  }
}

void sub_29828A1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  if (__p != v62)
  {
    operator delete(__p);
  }

  if (*(v61 + 23) < 0)
  {
    operator delete(*v61);
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyAsCFString(uint64_t a1)
{
  if ((ctu::cf::convert_copy() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 32, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCCommon.cpp", 0x2Cu, "Assertion failure(success && Unrecognized radio type.)");
  }

  return 0;
}

void eUICC::VinylFactory::GetValve(void *a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, eUICC::eUICCVinylICEValve **a5@<X8>)
{
  *a5 = 0;
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v12 = operator new(0x140uLL);
    eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v12, a1, a2, a3);
  }

  else if (RadioVendor == 1)
  {
    v12 = operator new(0x138uLL);
    eUICC::eUICCVinylMAVValve::eUICCVinylMAVValve(v12, a1, a2, a3);
  }

  else
  {
    if (RadioVendor != 4)
    {
      return;
    }

    v11 = operator new(0x190uLL);
    v12 = v11;
    v13 = a4[1];
    v14 = *a4;
    v15 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    eUICC::eUICCVinylDALValve::eUICCVinylDALValve(v11, a1, a2, a3, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  *a5 = v12;
}