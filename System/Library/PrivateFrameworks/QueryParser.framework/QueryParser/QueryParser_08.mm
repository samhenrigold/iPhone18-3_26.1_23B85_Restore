std::string *QP::NumericValue::value@<X0>(int **this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    return std::to_string(a2, **this);
  }

  v3 = this[2];
  if (v3)
  {
    return std::to_string(a2, *v3);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void QP::LexemeStatus::suggestionKey(std::string *__return_ptr a1@<X8>, QP::LexemeStatus *this@<X0>)
{
  if (*(this + 23) >= 0)
  {
    v4 = *(this + 23);
  }

  else
  {
    v4 = *(this + 1);
  }

  memset(&__p, 0, sizeof(__p));
  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v4 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 23) >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = *this;
    }

    memmove(p_p, v6, v4);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v4) = 45;
  v9 = *(this + 15);
  v8 = this + 120;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  v13 = std::string::append(&__p, v11, v12);
  *a1 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C66080D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke(void *a1, const void *a2, const void *a3, const __CFString *a4, const void *a5)
{
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = *(a1[4] + 8);
  v14 = *(v12 + 40);
  v13 = (v12 + 40);
  if (!v14)
  {
    Copy = CFStringCreateCopy(v10, a4);
    nlp::CFScopedPtr<__CFString const*>::reset(v13, Copy);
  }

  CFDictionarySetValue(Mutable, @"TOKEN", a2);
  CFDictionarySetValue(Mutable, @"TEXT", a3);
  if (a5)
  {
    CFDictionarySetValue(Mutable, @"QUERY", a5);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"QUERY", *(*(a1[5] + 8) + 40));
  }

  v16 = *(*(a1[6] + 8) + 40);
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"STATUS", v16);
  }

  CFArrayAppendValue(*(*(a1[7] + 8) + 40), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C6608238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3;
    v6[3] = &__block_descriptor_tmp_422;
    v6[4] = v5;
    v6[5] = a2;
    v6[6] = a3;
    return QP::LexemeLocationExtended::enumerateLocations(result, v6);
  }

  return result;
}

uint64_t QP::LexemeLocationExtended::enumerateLocations(void *a1, uint64_t a2)
{
  v10 = 0;
  v3 = a1[16] - a1[15];
  if (!v3)
  {
    return (*(a2 + 16))(a2, 0, 0, 0, &v10, 0.0, 0.0, 0.0, 0.0);
  }

  v5 = 0;
  v6 = v3 >> 3;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 - 1;
  do
  {
    result = (*(a2 + 16))(a2, *(a1[27] + 4 * v5), *(a1[30] + 4 * v5), *(a1[33] + 4 * v5), &v10, *(a1[15] + 8 * v5), *(a1[18] + 8 * v5), *(a1[21] + 8 * v5), *(a1[24] + 8 * v5));
    if (v10)
    {
      break;
    }
  }

  while (v7 != v5++);
  return result;
}

uint64_t __copy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIN2QP22LexemeLocationExtendedEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIN2QP22LexemeLocationExtendedEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2_426(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), a2);
  }
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3_428(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C660848C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_4(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C6608500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_5(uint64_t a1, const void *a2, const void *a3, const __CFString *a4, const __CFString *a5)
{
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = Mutable;
  CFDictionarySetValue(Mutable, @"TOKEN", a2);
  CFDictionarySetValue(Mutable, @"TEXT", a3);
  CFDictionarySetValue(Mutable, @"EMAILS", *(a1 + 48));
  if (a5)
  {
    MutableCopy = CFStringCreateMutableCopy(v10, 0, a5);
    v18 = MutableCopy;
    if (CFStringsAreEqual(a4, @"0"))
    {
      CFStringReplaceAll(MutableCopy, *(a1 + 56));
      v13 = 3;
    }

    else
    {
      v14 = *(a1 + 64);
      v20.length = CFStringGetLength(MutableCopy);
      v20.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@a", v14, v20, 0);
      v15 = *(a1 + 72);
      v21.length = CFStringGetLength(MutableCopy);
      v21.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@x", v15, v21, 0);
      if (CFStringsAreEqual(a4, @"3"))
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    valuePtr = v13;
    v16 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"TYPE", v16);
    CFDictionarySetValue(Mutable, @"QUERY", MutableCopy);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, @"QUERY", *(*(*(a1 + 32) + 8) + 40));
  }

  CFArrayAppendValue(*(*(*(a1 + 40) + 8) + 40), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C6608718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_6(uint64_t a1, const void *a2, const __CFString *a3, const __CFString *a4, const void *a5)
{
  v10 = *(a1 + 88);
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v42 = Mutable;
  v13 = *(*(a1 + 32) + 8);
  v15 = *(v13 + 40);
  v14 = (v13 + 40);
  if (!v15)
  {
    Copy = CFStringCreateCopy(v11, a4);
    nlp::CFScopedPtr<__CFString const*>::reset(v14, Copy);
  }

  v41 = 0;
  if (a3 && *(*(*(a1 + 40) + 8) + 40))
  {
    v17 = CFStringCreateWithFormat(v11, 0, a3, *(*(*(a1 + 40) + 8) + 40));
  }

  else
  {
    v17 = CFRetain(a3);
  }

  v18 = v17;
  v41 = v17;
  CFDictionarySetValue(Mutable, @"TOKEN", a2);
  CFDictionarySetValue(Mutable, @"TEXT", v18);
  if (a5 || (a5 = *(*(*(a1 + 48) + 8) + 40)) != 0)
  {
    CFDictionarySetValue(Mutable, @"QUERY", a5);
  }

  if (QP::ParserGrammar::hasUTIs(*(v10 + 24), *(a1 + 96)))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3002000000;
    v38 = __Block_byref_object_copy__14;
    v39 = __Block_byref_object_dispose__14;
    cf = 0;
    cf = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    v19 = *(v10 + 24);
    v20 = *(a1 + 96);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_7;
    v34[3] = &unk_1E8267A70;
    v34[4] = &v35;
    QP::ParserGrammar::UTIs(v19, v20, v34);
    if (CFArrayGetCount(v36[5]))
    {
      CFDictionarySetValue(Mutable, @"CATEGORY", *(*(*(a1 + 56) + 8) + 40));
      CFDictionarySetValue(Mutable, @"UTI", v36[5]);
    }

    _Block_object_dispose(&v35, 8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  MutableCopy = CFStringCreateMutableCopy(v11, 0, *(*(*(a1 + 40) + 8) + 40));
  v35 = MutableCopy;
  CFStringLowercase(MutableCopy, *(*(v10 + 8) + 112));
  v22 = *(*(*(a1 + 64) + 8) + 24);
  if (v22 && CFDictionaryContainsKey(v22, MutableCopy))
  {
    Value = CFDictionaryGetValue(*(*(*(a1 + 64) + 8) + 24), MutableCopy);
    CFDictionarySetValue(Mutable, @"TEXT", *(*(*(a1 + 40) + 8) + 40));
    v24 = CFDictionaryGetValue(Value, @"ORIGINAL_TEXT");
    v25 = CFDictionaryGetValue(Value, @"ATTRIBUTE");
    v26 = CFDictionaryGetValue(Value, @"STATUS");
    v27 = CFDictionaryGetValue(Value, @"TOKEN");
    if (v24)
    {
      CFDictionarySetValue(Mutable, @"TEXT", v24);
      v28 = *(*(a1 + 72) + 8);
      v29 = CFRetain(v24);
      nlp::CFScopedPtr<__CFString const*>::reset((v28 + 40), v29);
    }

    if (v26)
    {
      CFDictionarySetValue(Mutable, @"STATUS", v26);
    }

    if (v27)
    {
      CFDictionarySetValue(Mutable, @"TOKEN", v27);
    }

    if (v25 && v26)
    {
      v30 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v30, v25);
      CFArrayAppendValue(v30, v26);
      v31 = CFStringCreateByCombiningStrings(v11, v30, @"=");
      CFDictionarySetValue(Mutable, @"QUERY", v31);
      v32 = *(*(a1 + 48) + 8);
      v33 = CFStringCreateWithFormat(v11, 0, @"%@", v31, v31, v30);
      nlp::CFScopedPtr<__CFString const*>::reset((v32 + 40), v33);
      if (v31)
      {
        CFRelease(v31);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }
  }

  CFArrayAppendValue(*(*(*(a1 + 80) + 8) + 40), Mutable);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C6608BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  nlp::CFScopedPtr<__CFArray *>::reset(va, 0);
  nlp::CFScopedPtr<__CFString *>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v5 - 96), 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v5 - 88), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_7(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C6608CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::SpotlightFormatter::addRankingDescription(QP::SpotlightFormatter *this, __CFString *theString)
{
  v3 = *(this + 13);
  if (v3)
  {
    if (theString && (Length = CFStringGetLength(theString), v3 = *(this + 13), Length))
    {
      v6 = theString;
    }

    else
    {
      v6 = &stru_1F45E9EA0;
    }

    CFArrayAppendValue(v3, v6);
  }
}

void ___ZL20getDateActionFiltersv_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"_kMDItemBundleID == %s", "com.apple.mobilesafari");
  values = v1;
  keys[0] = @"kMDItemUsedDates";
  getDateActionFilters(void)::gDateActionFilters = CFDictionaryCreate(v0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1C6608E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,void *> *,long>>>(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>> const&>(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__construct_node<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>> const&>();
  }

  return v4;
}

std::string *std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_1C66090E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C6609198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C660924C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<unsigned short,std::map<std::string,float>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,std::map<std::string,float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<std::string,float>>,std::__tree_node<std::__value_type<unsigned short,std::map<std::string,float>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<unsigned short,std::map<std::string,float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<std::string,float>>,std::__tree_node<std::__value_type<unsigned short,std::map<std::string,float>>,void *> *,long>>>(void *result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,std::map<std::string,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,float>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<std::string,float>> const&>(v5, (v5 + 8), v4 + 16, (v4 + 16));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned short,std::map<std::string,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,float>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<std::string,float>> const&>(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,std::map<std::string,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,float>>>>::__construct_node<std::pair<unsigned short const,std::map<std::string,float>> const&>();
  }

  return result;
}

void sub_1C6609458(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::set<std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,float>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__construct_node<std::pair<std::string const,float> const&>();
  }

  return result;
}

void sub_1C6609680(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned short,float>,std::__tree_node<std::__value_type<unsigned short,float>,void *> *,long>>(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 14) = *(v9 + 14);
          *(v8 + 8) = *(v9 + 8);
          std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_multi<std::pair<unsigned short const,float> const&>(v5, (a2 + 28));
  }

  return result;
}

void sub_1C66097F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 14))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<unsigned int>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<unsigned int>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<unsigned int>::destroy(*a1, v2);
  }

  return a1;
}

void *QPSpotlightKnowledgeSourceCreate(uint64_t a1, __CFString *a2, const void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
  if (v6)
  {
    v7 = 0;
    if (!a1 || !a2 || (v7 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10E00402207B745uLL)) == 0)
    {
LABEL_35:
      v6[2] = hasAnnotations;
      v6[3] = enumerateTypesAndAnnotationsForString;
      v6[4] = enumeratePossibleStringsWithType;
      *v6 = v7;
      v6[1] = copyPossibleTypesForString;
      v6[5] = hasUpdatesForParser;
      v6[6] = willUpdateParser;
      v6[7] = didUpdateParser;
      return v6;
    }

    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      v8 = 0;
    }

    *(v7 + 1) = v8;
    *(v7 + 10) = 0;
    *(v7 + 37) = 0;
    *(v7 + 17) = 0;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 8) = 0;
    *(v7 + 72) = QPAnnotationsEnabled;
    *(v7 + 73) = CFStringsAreEqual(a2, kQPParseAttributeVisualGenerationContextIdentifier);
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"locale");
    }

    else
    {
      Value = systemListenerGetLocale();
    }

    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1C695ACD0](Value);
    *v7 = CFLocaleCreate(v10, v11);
    if (a3)
    {
      v12 = CFDictionaryContainsKey(a3, @"forTesting") != 0;
      v13 = CFDictionaryContainsKey(a3, @"waitForLoad") != 0;
      a3 = CFDictionaryGetValue(a3, @"customFieldSpecifications");
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    *(v7 + 36) = 1000;
    *(v7 + 6) = QPStringCacheCreateWithOptions(0, &unk_1F45FA4C8);
    *(v7 + 7) = QPStringCacheCreateWithOptions(0, 0);
    if (v12)
    {
      addValue(*(v7 + 6), @"Apple Directory", 100, 8);
      addValue(*(v7 + 6), @"六本木", 100, 5);
      addValue(*(v7 + 6), @"San Francisco", 100, 5);
      addValue(*(v7 + 6), @"San Jose", 100, 5);
      addValue(*(v7 + 6), @"Oakland", 100, 5);
      addValue(*(v7 + 6), @"United Airlines", 100, 6);
      addValue(*(v7 + 6), @"Holiday Inn", 100, 11);
      addValue(*(v7 + 6), @"Honolulu", 100, 5);
      addValue(*(v7 + 6), @"San Francisco Airport", 100, 7);
      addValue(*(v7 + 6), @"John Smith", 100, 2);
      addValue(*(v7 + 6), @"Anna", 100, 3);
      addValue(*(v7 + 6), @"Mary Miller", 100, 2);
      addValue(*(v7 + 6), @"Gilles", 100, 3);
      addValue(*(v7 + 6), @"Julie", 100, 3);
      addValue(*(v7 + 6), @"Giulia", 100, 3);
      addValue(*(v7 + 6), @"Richard", 100, 3);
      addValue(*(v7 + 6), @"Christian", 100, 3);
      addValue(*(v7 + 6), @"Julia", 100, 3);
      addValue(*(v7 + 6), @"April", 100, 3);
      addValue(*(v7 + 6), @"eBay", 100, 2);
      addValue(*(v7 + 6), @"バラクオバマ", 100, 2);
      addValue(*(v7 + 6), @"Max Heller", 100, 2);
      addValue(*(v7 + 6), @"高橋", 100, 2);
      addValue(*(v7 + 6), @"高橋真帆", 100, 2);
      addValue(*(v7 + 6), @"ジョニー", 100, 2);
      addValue(*(v7 + 6), @"ジュリア", 100, 2);
      addValue(*(v7 + 6), @"高橋さん", 100, 2);
      *(v7 + 74) = 1;
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);
    if (v12)
    {
      v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INTERACTIVE, 0);
    }

    v16 = v15;
    *(v7 + 13) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Knowledge", v15);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v7 + 14) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Queries", v17);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v7 + 12) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Context", v18);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v7 + 11) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Context", v19);
    v20 = [MEMORY[0x1E695DFA8] setWithObject:a1];
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v21 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 138412546;
      *&v34[4] = a2;
      *&v34[12] = 2112;
      *&v34[14] = a1;
      _os_log_impl(&dword_1C6584000, v21, OS_LOG_TYPE_DEFAULT, "loading content for context: %@, bundleID: %@", v34, 0x16u);
    }

    if (([(__CFString *)a2 isEqualToString:kQPParseAttributeSpotlightContextIdentifier]& 1) != 0)
    {
      v20 = 0;
      v22 = &unk_1F45F8CF0;
    }

    else
    {
      if (([(__CFString *)a2 isEqualToString:kQPParseAttributeMailContextIdentifier]& 1) != 0)
      {
        [v20 addObject:@"com.apple.mobilemail"];
        [v20 addObject:@"com.apple.spotlight.events"];
        v22 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(&unk_1F45F8CF0 arrayByAddingObjectsFromArray:{&unk_1F45F8D80), "arrayByAddingObjectsFromArray:", &unk_1F45F8D98), "arrayByAddingObjectsFromArray:", &unk_1F45F8DB0), "arrayByAddingObjectsFromArray:", &unk_1F45F8DC8), "arrayByAddingObject:", @"kMDItemEventHotelReservationForName"}];
        if (!v22)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      if ([(__CFString *)a2 isEqualToString:kQPParseAttributeRemindersContextIdentifier])
      {
        [v20 addObject:@"com.apple.reminders"];
        goto LABEL_31;
      }

      if (([(__CFString *)a2 isEqualToString:kQPParseAttributeRemindersParserContextIdentifier]& 1) != 0 || ![(__CFString *)a2 isEqualToString:kQPParseAttributePhotosContextIdentifier])
      {
LABEL_31:
        if (a3)
        {
          v30 = CFRetain(a3);
        }

        else
        {
          v30 = 0;
        }

        *(v7 + 2) = v30;
        v31 = *(v7 + 13);
        *v34 = MEMORY[0x1E69E9820];
        *&v34[8] = 3221225472;
        *&v34[16] = ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke;
        v35 = &__block_descriptor_56_e5_v8__0l;
        v36 = 0;
        v37 = v7;
        v38 = a3;
        dispatch_sync(v31, v34);
        goto LABEL_35;
      }

      [v20 addObject:@"com.apple.mobileslideshow"];
      v22 = &unk_1F45F8D20;
    }

    *(v7 + 36) = 5000;
LABEL_27:
    *(v7 + 15) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.DynamicQueries", v16);
    if (([(__CFString *)a2 isEqualToString:kQPParseAttributeSpotlightContextIdentifier]& 1) != 0 || [(__CFString *)a2 isEqualToString:kQPParseAttributePhotosContextIdentifier])
    {
      QueryString = createQueryString(&unk_1F45F8D68);
      v24 = [v20 allObjects];
      v25 = &unk_1F45F8D50;
      v26 = &unk_1F45F8D38;
      v27 = v7;
      v28 = QueryString;
      v29 = &unk_1F45F8D68;
    }

    else
    {
      if (([(__CFString *)a2 isEqualToString:kQPParseAttributePhotosContextIdentifier]& 1) != 0)
      {
        goto LABEL_31;
      }

      v33 = createQueryString(v22);
      v24 = [v20 allObjects];
      v25 = &unk_1F45F8D08;
      v26 = &unk_1F45F8CF0;
      v27 = v7;
      v28 = v33;
      v29 = v22;
    }

    extractSpotlightTermsWithContext(v27, v28, v24, v29, v25, v26, v13);
    goto LABEL_31;
  }

  return v6;
}

void enumeratePossibleStringsWithType(uint64_t a1, uint64_t a2)
{
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  v4 = os_signpost_id_generate(sourceLogger(void)::log);
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = sourceLogger(void)::log;
    if (os_signpost_enabled(sourceLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "enumerate all cache items", &unk_1C664887A, buf, 2u);
    }
  }

  if (a1 && a2)
  {
    v6 = *(a1 + 104);
    *buf = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke;
    v12 = &unk_1E8267D00;
    v13 = a2;
    v14 = a1;
    dispatch_sync(v6, buf);
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = sourceLogger(void)::log;
      if (os_signpost_enabled(sourceLogger(void)::log))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v7, OS_SIGNPOST_INTERVAL_END, v4, "enumerate all cache items", &unk_1C664887A, v8, 2u);
      }
    }
  }
}

__CFArray *copyPossibleTypesForString(CFTypeRef *a1, __CFString *a2, int a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    if (a2)
    {
      Length = CFStringGetLength(a2);
      if (a3)
      {
        if (Length)
        {
          v9 = CFRetain(*a1);
          v29 = v9;
          v10 = [(__CFString *)a2 stringByFoldingWithOptions:385 locale:0];
          v11 = [objc_msgSend(v10 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "componentsJoinedByString:", @" "}];
          v30.length = [(__CFString *)v11 length];
          v30.location = 0;
          v12 = copyStringInsertingSpacesBetweenIdeographCharacters(v11, v30);
          if (v9)
          {
            v13 = [v12 lowercaseStringWithLocale:v9];
          }

          else
          {
            v13 = [v12 lowercaseString];
          }

          v22 = 0;
          v23 = &v22;
          v24 = 0x3812000000;
          v25 = __Block_byref_object_copy__353;
          v26 = __Block_byref_object_dispose__354;
          v27 = &unk_1C664F151;
          cf = 0;
          cf = CFStringCreateMutableCopy(v6, 0, v13);
          v14 = v23[6];
          if (v14 && CFStringGetLength(v14) && v9)
          {
            v18 = 0;
            v19 = &v18;
            v20 = 0x2020000000;
            v21 = 0;
            v15 = a1[14];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = ___ZL36QPSpotlightKnowledgeContextCopyTypesP26_SpotlightKnowledgeContextPK10__CFStringh_block_invoke;
            block[3] = &unk_1E8267D28;
            block[4] = &v18;
            block[5] = &v22;
            block[6] = a1;
            dispatch_sync(v15, block);
            if (Mutable && *(v19 + 24) == 1)
            {
              CFArrayAppendValue(Mutable, @"Person");
            }

            _Block_object_dispose(&v18, 8);
          }

          _Block_object_dispose(&v22, 8);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }
      }
    }
  }

  return Mutable;
}

void sub_1C660A618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  nlp::CFScopedPtr<__CFString *>::reset((v16 + 48), 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset((v17 - 56), 0);
  _Unwind_Resume(a1);
}

uint64_t hasUpdatesForParser(void *a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = a1[12];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZL19hasUpdatesForParserPv_block_invoke;
    v4[3] = &unk_1E8267D50;
    v4[4] = &v5;
    v4[5] = a1;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t willUpdateParser(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = mach_absolute_time();
    *(v1 + 152) = result;
  }

  return result;
}

void didUpdateParser(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[12];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL15didUpdateParserPv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v2, block);
    v3 = a1[19];
    v4 = mach_absolute_time();
    if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
    {
      didUpdateParser();
    }

    v6 = QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo;
    v5 = dword_1EDAC3FEC;
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    v7 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = (((v4 - v3) * v6 / v5) / 1000000.0);
      _os_log_impl(&dword_1C6584000, v7, OS_LOG_TYPE_DEFAULT, "updated parser in %.1fms", buf, 0xCu);
    }
  }
}

void QPSpotlightKnowledgeSourceRefresh(uint64_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    return;
  }

  if (*v2)
  {
    LanguageID = SILanguagesGetLanguageID();
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LanguageID = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  v5 = SILanguagesGetLanguageID();
  if (v5 && v5 != LanguageID)
  {
    if (*v2)
    {
      CFRelease(*v2);
    }

    v6 = *MEMORY[0x1E695E480];
    v7 = MEMORY[0x1C695ACD0](a2);
    *v2 = CFLocaleCreate(v6, v7);
    goto LABEL_13;
  }

LABEL_12:
  if (*(v2 + 72) != 1)
  {
    return;
  }

LABEL_13:
  v8 = *(v2 + 8);
  if (!v8)
  {
LABEL_16:
    v11 = 0;
LABEL_17:
    v12 = 1;
    goto LABEL_21;
  }

  v9 = CFDictionaryContainsKey(v8, @"waitForLoad");
  v10 = *(v2 + 8);
  if (v10)
  {
    if (!(v9 | CFDictionaryContainsKey(v10, @"waitWithTimeout")))
    {
      goto LABEL_16;
    }
  }

  else if (!v9)
  {
    goto LABEL_16;
  }

  v13 = dispatch_group_create();
  v11 = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  dispatch_group_enter(v13);
  v12 = 0;
LABEL_21:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __QPSpotlightKnowledgeSourceRefresh_block_invoke;
  v16[3] = &unk_1E8267AE0;
  v16[4] = v11;
  QPSpotlightKnowledgeContextUpdateResources(v2, v16);
  if ((v12 & 1) == 0)
  {
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    v14 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = 500;
      _os_log_impl(&dword_1C6584000, v14, OS_LOG_TYPE_DEFAULT, "lexicon loading - wait for time (%u) ms", buf, 8u);
    }

    v15 = dispatch_time(0, 500000000);
    if (dispatch_group_wait(v11, v15))
    {
      if (sourceLogger(void)::token != -1)
      {
        enumeratePossibleStringsWithType();
      }

      if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
      {
        QPSpotlightKnowledgeSourceRefresh_cold_3();
      }
    }

    dispatch_release(v11);
  }
}

void QPSpotlightKnowledgeContextUpdateResources(uint64_t *a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    *v45 = 0;
    v46 = v45;
    v47 = 0x3812000000;
    v48 = __Block_byref_object_copy__362_0;
    v49 = __Block_byref_object_dispose__363_0;
    v50 = &unk_1C664F151;
    v51 = 0;
    userInfoValues = 0;
    p_userInfoValues = &userInfoValues;
    v40 = 0x3812000000;
    v41 = __Block_byref_object_copy__362_0;
    v42 = __Block_byref_object_dispose__363_0;
    v43 = &unk_1C664F151;
    v44 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___ZL19loadSafetyResourcesP26_SpotlightKnowledgeContextb_block_invoke;
    v33[3] = &unk_1E8267DA0;
    v33[4] = v45;
    v33[5] = &userInfoValues;
    systemListenerEnumerateResourcesWithContentType(@"Safety", v33);
    v6 = *(v46 + 6);
    v7 = p_userInfoValues[6];
    if (v6)
    {
      if (v7)
      {
        cf = 0;
        DictionaryWithContentsOfURL = nlp::createDictionaryWithContentsOfURL(v6, &cf, v4, v5);
        v9 = DictionaryWithContentsOfURL;
        if (cf)
        {
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v10 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            QPSpotlightKnowledgeContextUpdateResources(&cf, v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          CFRelease(cf);
        }

        else
        {
          Value = CFDictionaryGetValue(DictionaryWithContentsOfURL, @"compilationDate");
          v13 = CFDictionaryGetValue(v9, @"safetyTypes");
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v14 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v35 = Value;
            v36 = 2112;
            v37 = v13;
            _os_log_impl(&dword_1C6584000, v14, OS_LOG_TYPE_DEFAULT, "safety: loading resource created at %@ with types %@", buf, 0x16u);
          }

          v15 = CFURLGetString(p_userInfoValues[6]);
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v16 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v35 = v15;
            _os_log_impl(&dword_1C6584000, v16, OS_LOG_TYPE_DEFAULT, "safety: loading resource at %{private}@", buf, 0xCu);
          }

          v31 = 0;
          QPCFDictionaryGetInt32ValueIfPresent(v9, @"majorVersion", &v31);
          if (v31 == 2)
          {
            v17 = *MEMORY[0x1E695E480];
            PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], p_userInfoValues[6]);
            v19 = CFURLCopyLastPathComponent(p_userInfoValues[6]);
            if (CFStringsAreEqual(v19, @"safety_resources.map"))
            {
              Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFDictionarySetValue(Mutable, *MEMORY[0x1E69D3E00], *MEMORY[0x1E695E4D0]);
              v21 = SIDataMapCreateWithOptions();
              v22 = v21 != 0;
              if (v21)
              {
                unloadSafetyResources(a1);
                a1[3] = v9;
                a1[4] = v21;
                if (sourceLogger(void)::token != -1)
                {
                  enumeratePossibleStringsWithType();
                }

                v23 = sourceLogger(void)::log;
                if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                {
                  Count = SIDataMapGetCount();
                  *buf = 134217984;
                  v35 = Count;
                  _os_log_impl(&dword_1C6584000, v23, OS_LOG_TYPE_DEFAULT, "safety: loaded resource: %ld", buf, 0xCu);
                }
              }

              else
              {
                if (sourceLogger(void)::token != -1)
                {
                  enumeratePossibleStringsWithType();
                }

                if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
                {
                  QPSpotlightKnowledgeContextUpdateResources();
                }

                if (v9)
                {
                  CFRelease(v9);
                }
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }

            else
            {
              v22 = 0;
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (PathComponent)
            {
              CFRelease(PathComponent);
            }

            goto LABEL_45;
          }

          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v25 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            QPSpotlightKnowledgeContextUpdateResources(&v31, 2, v25);
          }
        }
      }

      else
      {
        if (sourceLogger(void)::token != -1)
        {
          enumeratePossibleStringsWithType();
        }

        if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
        {
          QPSpotlightKnowledgeContextUpdateResources();
        }
      }
    }

    else if (v7)
    {
      if (sourceLogger(void)::token != -1)
      {
        enumeratePossibleStringsWithType();
      }

      if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
      {
        QPSpotlightKnowledgeContextUpdateResources();
      }
    }

    v22 = 0;
LABEL_45:
    _Block_object_dispose(&userInfoValues, 8);
    if (v44)
    {
      CFRelease(v44);
    }

    _Block_object_dispose(v45, 8);
    if (v51)
    {
      CFRelease(v51);
    }

    if (v22)
    {
      if (!a1[5])
      {
        a1[5] = SILexiconCacheCreateWithOptions();
      }

      if (SILexiconCacheIsAvailable())
      {
        if (a2)
        {
          (*(a2 + 16))(a2, 0);
        }
      }

      else
      {
        mach_absolute_time();
        SILexiconCacheLoad();
      }
    }

    else
    {
      if (sourceLogger(void)::token != -1)
      {
        enumeratePossibleStringsWithType();
      }

      v26 = sourceLogger(void)::log;
      if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_1C6584000, v26, OS_LOG_TYPE_DEFAULT, "not loading lexicon cache because safety annotations aren't loaded", v45, 2u);
      }

      if (a2)
      {
        v27 = *MEMORY[0x1E695E480];
        v28 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"QueryParser: could not load safety assets");
        v29 = v28;
        if (v28)
        {
          *v45 = *MEMORY[0x1E695E620];
          userInfoValues = v28;
          v30 = CFErrorCreateWithUserInfoKeysAndValues(v27, @"QueryParserErrorDomain", 1, v45, &userInfoValues, 1);
          CFRelease(v29);
          (*(a2 + 16))(a2, v30);
          if (v30)
          {
            CFRelease(v30);
          }
        }

        else
        {
          (*(a2 + 16))(a2, 0);
        }
      }
    }

    return;
  }

  if (a2)
  {
    v11 = *(a2 + 16);

    v11(a2, 0);
  }
}

void sub_1C660B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  nlp::CFScopedPtr<__CFDictionary *>::reset(&a16, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a17, 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(&a18, 0);
  _Block_object_dispose(va, 8);
  nlp::CFScopedPtr<__CFURL const*>::reset((v30 + 48), 0);
  _Block_object_dispose((v31 - 176), 8);
  nlp::CFScopedPtr<__CFURL const*>::reset((v29 + 48), 0);
  _Unwind_Resume(a1);
}

void __QPSpotlightKnowledgeSourceRefresh_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      __QPSpotlightKnowledgeSourceRefresh_block_invoke_cold_2();
    }
  }

  else
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v3 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "reloaded lexicon", v5, 2u);
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

CFLocaleRef **QPSpotlightKnowledgeSourceSetOptions(CFLocaleRef **result, CFDictionaryRef theDict)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v2 = *result;
  if (!*result)
  {
    return result;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"locale");
  }

  else
  {
    Value = 0;
  }

  if (*v2)
  {
    LanguageID = SILanguagesGetLanguageID();
    if (!Value)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LanguageID = 0;
    if (!Value)
    {
      goto LABEL_15;
    }
  }

  v6 = SILanguagesGetLanguageID();
  if (v6 && v6 != LanguageID)
  {
    if (*v2)
    {
      CFRelease(*v2);
    }

    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1C695ACD0](Value);
    *v2 = CFLocaleCreate(v7, v8);
    v9 = 1;
    goto LABEL_17;
  }

LABEL_15:
  if (*(v2 + 72) != 1)
  {
    goto LABEL_37;
  }

  v9 = 0;
LABEL_17:
  v10 = *(v2 + 8);
  if (v10)
  {
    v11 = CFDictionaryContainsKey(v10, @"waitWithTimeout") != 0;
    v12 = *(v2 + 8);
    if (v12)
    {
      v13 = CFDictionaryContainsKey(v12, @"waitForLoad") != 0;
      if (!theDict)
      {
        goto LABEL_20;
      }

LABEL_24:
      v14 = CFDictionaryContainsKey(theDict, @"waitForLoad") != 0;
      v15 = CFDictionaryContainsKey(theDict, @"waitWithTimeout") != 0;
      if (v9)
      {
LABEL_27:
        v16 = dispatch_group_create();
        dispatch_group_enter(v16);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___ZL37QPSpotlightKnowledgeContextSetOptionsP26_SpotlightKnowledgeContextPK14__CFDictionary_block_invoke;
        v20[3] = &unk_1E8267AE0;
        v20[4] = v16;
        QPSpotlightKnowledgeContextUpdateResources(v2, v20);
        if (sourceLogger(void)::token != -1)
        {
          enumeratePossibleStringsWithType();
        }

        v17 = sourceLogger(void)::log;
        if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = 500;
          _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_DEFAULT, "lexicon loading - wait for time (%u) ms", buf, 8u);
        }

        v18 = dispatch_time(0, 500000000);
        if (dispatch_group_wait(v16, v18))
        {
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            QPSpotlightKnowledgeSourceRefresh_cold_3();
          }
        }

        dispatch_release(v16);
        goto LABEL_37;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
  if (theDict)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = 0;
  v15 = 0;
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (v13 != v14) | (v11 ^ v15) & 1 && ((v14 | v15))
  {
    goto LABEL_27;
  }

LABEL_37:
  v19 = *(v2 + 8);
  if (v19)
  {
    CFRelease(v19);
    *(v2 + 8) = 0;
  }

  if (theDict)
  {
    result = CFRetain(theDict);
  }

  else
  {
    result = 0;
  }

  *(v2 + 8) = result;
  return result;
}

void QPSpotlightKnowledgeSourceSetCustomFields(uint64_t *a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 104);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v4;
      block[5] = v2;
      block[6] = a2;
      dispatch_sync(v5, block);
      v6 = *(v2 + 16);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 16) = 0;
      }

      if (a2)
      {
        *(v2 + 16) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
      }
    }
  }
}

void QPSpotlightKnowledgeSourceRelease(uint64_t a1)
{
  if (QPSpotlightKnowledgeSourceRelease::onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    QPSpotlightKnowledgeSourceRelease_cold_1();
    if (!a1)
    {
      return;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __QPSpotlightKnowledgeSourceRelease_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(QPSpotlightKnowledgeSourceRelease::sReleaseQueue, block);
}

dispatch_queue_t __QPSpotlightKnowledgeSourceRelease_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Release", v1);
  QPSpotlightKnowledgeSourceRelease::sReleaseQueue = result;
  return result;
}

void __QPSpotlightKnowledgeSourceRelease_block_invoke_2(uint64_t a1)
{
  v2 = **(a1 + 32);
  if (v2)
  {
    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }

    v3 = *(v2 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 8) = 0;
    }

    unloadSafetyResources(v2);
    if (*(v2 + 40))
    {
      SILexiconCacheRelease();
      *(v2 + 40) = 0;
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 16) = 0;
    }

    v5 = *(v2 + 120);
    if (v5)
    {
      *(v2 + 75) = 1;
      dispatch_sync(v5, &__block_literal_global_392);
      dispatch_sync(*(v2 + 104), &__block_literal_global_394);
      dispatch_sync(*(v2 + 112), &__block_literal_global_396);
      dispatch_sync(*(v2 + 96), &__block_literal_global_398);
      dispatch_sync(*(v2 + 88), &__block_literal_global_400);
      v6 = *(v2 + 128);
      if (v6)
      {
        dispatch_source_cancel(*(v2 + 128));
        dispatch_release(v6);
      }
    }

    dispatch_sync(*(v2 + 104), &__block_literal_global_402);
    dispatch_sync(*(v2 + 112), &__block_literal_global_404);
    dispatch_sync(*(v2 + 96), &__block_literal_global_406);
    dispatch_sync(*(v2 + 88), &__block_literal_global_408);
    v7 = *(v2 + 48);
    if (v7)
    {
      QPStringCacheRelease(v7);
      *(v2 + 48) = 0;
    }

    v8 = *(v2 + 56);
    if (v8)
    {
      QPStringCacheRelease(v8);
      *(v2 + 56) = 0;
    }

    v9 = *(v2 + 64);
    if (v9)
    {
      QPSpotlightCacheRelease(v9);
      *(v2 + 64) = 0;
    }

    v10 = *(v2 + 104);
    if (v10)
    {
      dispatch_release(v10);
      *(v2 + 104) = 0;
    }

    v11 = *(v2 + 112);
    if (v11)
    {
      dispatch_release(v11);
      *(v2 + 112) = 0;
    }

    v12 = *(v2 + 96);
    if (v12)
    {
      dispatch_release(v12);
      *(v2 + 96) = 0;
    }

    v13 = *(v2 + 88);
    if (v13)
    {
      dispatch_release(v13);
      *(v2 + 88) = 0;
    }

    v14 = *(v2 + 120);
    if (v14)
    {
      dispatch_release(v14);
    }

    free(v2);
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v15 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEFAULT, "released QPSpotlightKnowledgeContext", buf, 2u);
    }
  }

  free(*(a1 + 32));
  if (sourceLogger(void)::token != -1)
  {
    enumeratePossibleStringsWithType();
  }

  v16 = sourceLogger(void)::log;
  if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1C6584000, v16, OS_LOG_TYPE_DEFAULT, "released QPSpotlightKnowledgeSource", v17, 2u);
  }
}

BOOL addValue(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a3;
  if (![(__CFString *)a2 length]|| [(__CFString *)a2 length]> 0x28)
  {
    return 0;
  }

  if ((a4 & 0xFFFFFFFE) != 2)
  {
    v30.length = [(__CFString *)a2 length];
    v30.location = 0;
    v17 = [copyStringInsertingSpacesBetweenIdeographCharacters(a2 v30)];
    v18 = a1;
    v19 = a4;
    return QPStringCacheAddWithCount(v18, v17, v19, v5) != 0;
  }

  if (([(__CFString *)a2 containsString:@"@"]& 1) != 0 || ([(__CFString *)a2 containsString:@"+"]& 1) != 0)
  {
    return 0;
  }

  v28.length = [(__CFString *)a2 length];
  v28.location = 0;
  v10 = [copyStringInsertingSpacesBetweenIdeographCharacters(a2 v28)];
  if (([(__CFString *)v10 isEqualToString:[(__CFString *)a2 lowercaseString]]& 1) == 0)
  {
    v18 = a1;
    v17 = v10;
    v19 = 3;
    return QPStringCacheAddWithCount(v18, v17, v19, v5) != 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x4012000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = &unk_1C664F151;
  v27 = xmmword_1C6632590;
  v11 = [(__CFString *)a2 length];
  v12 = *MEMORY[0x1E696A550];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZL8addValueP14_QPStringCacheP8NSStringm18SpotlightInputType_block_invoke;
  v20[3] = &unk_1E8267B08;
  v20[4] = &v21;
  [(__CFString *)a2 enumerateLinguisticTagsInRange:0 scheme:v11 options:v12 orthography:4 usingBlock:0, v20];
  if (v22[6] == 0x7FFFFFFFFFFFFFFFLL || (v13 = v22[7], v13 >= [(__CFString *)a2 length]))
  {
    v16 = QPStringCacheAddWithCount(a1, v10, 3, v5) == 0;
  }

  else
  {
    v14 = [(__CFString *)a2 substringWithRange:v22[6], v22[7]];
    v29.length = [(__CFString *)v14 length];
    v29.location = 0;
    v15 = [copyStringInsertingSpacesBetweenIdeographCharacters(v14 v29)];
    LOBYTE(v14) = QPStringCacheAddWithCount(a1, v15, 3, v5);
    v16 = (QPStringCacheAddWithCount(a1, v10, a4, v5) | v14) == 0;
  }

  v8 = !v16;
  _Block_object_dispose(&v21, 8);
  return v8;
}

void sub_1C660BE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t createQueryString(NSArray *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [(NSArray *)a1 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v12 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(a1);
        }

        v5 = *(*(&v18 + 1) + 8 * i);
        v6 = [MEMORY[0x1E695DF70] array];
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@=*", v5)}];
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = [&unk_1F45F8DE0 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(&unk_1F45F8DE0);
              }

              [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@!=%@", v5, *(*(&v14 + 1) + 8 * j))}];
            }

            v8 = [&unk_1F45F8DE0 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v8);
        }

        [v13 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@)", objc_msgSend(v6, "componentsJoinedByString:", @" && "}];
      }

      v3 = [(NSArray *)a1 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v3);
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", objc_msgSend(v13, "componentsJoinedByString:", @" || "];
}

void extractSpotlightTermsWithContext(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v13 = *(a1 + 120);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke;
    block[3] = &unk_1E8267B30;
    block[4] = a2;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    block[8] = a6;
    block[9] = a1;
    v23 = 1;
    dispatch_sync(v13, block);
  }

  else if ([a4 containsObject:@"kMDItemPhotosLocationKeywords"])
  {
    v14 = *(a1 + 120);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_2;
    v20[3] = &unk_1E8267B30;
    v20[4] = a2;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a5;
    v20[8] = a6;
    v20[9] = a1;
    v21 = 0;
    dispatch_async(v14, v20);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_3;
    handler[3] = &unk_1E8267B30;
    handler[4] = a2;
    handler[5] = a3;
    handler[6] = a4;
    handler[7] = a5;
    handler[8] = a6;
    handler[9] = a1;
    v19 = 0;
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v17 = v16;
    if (v16)
    {
      dispatch_source_set_timer(v16, Current, 0x34630B8A000uLL, 0x68C61714000uLL);
      dispatch_source_set_event_handler(v17, handler);
      dispatch_resume(v17);
    }

    *(a1 + 128) = v17;
  }
}

__n128 __Block_byref_object_copy__15(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZL8addValueP14_QPStringCacheP8NSStringm18SpotlightInputType_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  if (*(v7 + 48) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v7 + 48) = a3;
    *(v7 + 56) = a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

void queryForAttributes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  spid = os_signpost_id_generate(sourceLogger(void)::log);
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = sourceLogger(void)::log;
    if (os_signpost_enabled(sourceLogger(void)::log))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "query backend", &unk_1C664887A, &buf, 2u);
    }
  }

  if ((*(a1 + 75) & 1) == 0)
  {
    v15 = *(a1 + 80);
    Current = CFAbsoluteTimeGetCurrent();
    if (a7 & 1 | (v15 == 0.0))
    {
      v17 = Current + -31536000.0;
    }

    else
    {
      v17 = *(a1 + 80);
    }

    if (v15 == 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = a7;
    }

    if (v18)
    {
      v19 = 1000;
    }

    else
    {
      v19 = 100;
    }

    *(a1 + 80) = Current;
    v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"(InRange(kMDItemContentCreationDate, %f, %f)) || (_kMDItemContentCreationDateYear!=* && InRange(kMDItemAttributeChangeDate, %f, %f))", *&v17, *&Current, *&v17, *&Current);
    v21 = objc_alloc_init(MEMORY[0x1E6964E70]);
    v39[0] = a2;
    [v21 setFilterQueries:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v39, 1)}];
    [v21 setFetchAttributes:a4];
    [v21 setRankingQueries:a5];
    [v21 setBundleIDs:a3];
    [v21 setLowPriority:1];
    [v21 setAttribute:1];
    [v21 setMaxCount:v19];
    [v21 setMaximumBatchSize:(6554 * v19) >> 16];
    [v21 setDisableResultStreaming:1];
    if ([a4 containsObject:@"kMDItemPhotosLocationKeywords"])
    {
      [v21 setMaxCount:*(a1 + 144)];
      [v21 setMaximumBatchSize:500];
      v20 = &stru_1F45E9EA0;
    }

    v22 = mach_absolute_time();
    v23 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v20 queryContext:v21];
    v24 = *(a1 + 96);
    v25 = *(a1 + 104);
    objc_initWeak(&buf, v23);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke;
    v36[3] = &unk_1E8267B80;
    v37[1] = a1;
    v36[4] = v25;
    objc_copyWeak(v37, &buf);
    v36[5] = a6;
    v36[6] = v24;
    [v23 setFoundAttributesHandler:v36];
    [v23 setChangedAttributesHandler:v36];
    v26 = dispatch_group_create();
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_298;
    v34[3] = &unk_1E8267BA8;
    objc_copyWeak(&v35, &buf);
    [v23 setGatherEndedHandler:v34];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299;
    v32[3] = &unk_1E8267BF8;
    v33[1] = v22;
    v32[4] = v25;
    v32[5] = v26;
    objc_copyWeak(v33, &buf);
    [v23 setCompletionHandler:v32];
    dispatch_group_enter(v26);
    [v23 start];
    [v23 poll];
    v27 = dispatch_time(0, 60000000000);
    dispatch_group_wait(v26, v27);
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    v28 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 0;
      _os_log_impl(&dword_1C6584000, v28, OS_LOG_TYPE_DEFAULT, "queryForAttributes: finished attribute query", v31, 2u);
    }

    dispatch_release(v26);
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v29 = sourceLogger(void)::log;
      if (os_signpost_enabled(sourceLogger(void)::log))
      {
        *v31 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v29, OS_SIGNPOST_INTERVAL_END, spid, "query backend", &unk_1C664887A, v31, 2u);
      }
    }

    objc_destroyWeak(v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(v37);
    objc_destroyWeak(&buf);
  }
}

void sub_1C660C7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_4;
  block[3] = &unk_1E8267B30;
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 64);
  v8 = v1;
  v9 = *(a1 + 80);
  dispatch_async(v2, block);
}

void ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 64) + 75))
  {
    Weak = objc_loadWeak((a1 + 56));
    [Weak cancel];

    [Weak poll];
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2;
    v8[3] = &unk_1E8267B58;
    objc_copyWeak(v10, (a1 + 56));
    v10[1] = *(a1 + 64);
    v8[4] = a2;
    v8[5] = a3;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);
    objc_destroyWeak(v10);
  }
}

void ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 64));
  if ([*(a1 + 32) isEqualToString:@"kCSEndOfBatchMarker"])
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v3 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v20) = Weak != 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "queryForAttributes: polling %d", buf, 8u);
    }

    [Weak poll];
    return;
  }

  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  v4 = sourceLogger(void)::log;
  if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "queryForAttributes: attributes: %@", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isEqualToString:@"kMDItemPhotosLocationKeywords"] || (objc_msgSend(&unk_1F45F8DB0, "containsObject:", *(a1 + 32)) & 1) != 0 || objc_msgSend(&unk_1F45F8DC8, "containsObject:", *(a1 + 32)))
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 5;
    goto LABEL_15;
  }

  if ([&unk_1F45F8D80 containsObject:*(a1 + 32)])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 7;
    goto LABEL_15;
  }

  if ([&unk_1F45F8D98 containsObject:*(a1 + 32)])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 6;
    goto LABEL_15;
  }

  if ([*(a1 + 32) isEqualToString:@"kMDItemEventHotelReservationForName"])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 11;
    goto LABEL_15;
  }

  if ([*(a1 + 32) isEqualToString:@"kMDItemVendorName"])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 9;
    goto LABEL_15;
  }

  if (([*(a1 + 32) isEqualToString:@"kMDItemDisplayName"] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"kMDItemAlternateNames"))
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 8;
LABEL_15:
    v10 = updateWithValues(v7, v8, v9);
    objc_autoreleasePoolPop(v6);
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

  if (![*(a1 + 48) containsObject:*(a1 + 32)])
  {
    objc_autoreleasePoolPop(v6);
    return;
  }

  v17 = updateWithValues(*(*(a1 + 72) + 48), *(a1 + 40), 2u);
  objc_autoreleasePoolPop(v6);
  if (v17)
  {
LABEL_16:
    LiveCount = QPStringCacheGetLiveCount(*(*(a1 + 72) + 48));
    v12 = *(a1 + 72);
    if (LiveCount > *(v12 + 144))
    {
      QPStringCachePrune(*(v12 + 48));
      v12 = *(a1 + 72);
    }

    v13 = *(a1 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_296;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v12;
    dispatch_sync(v13, block);
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    v14 = sourceLogger(void)::log;
    v15 = os_signpost_id_generate(sourceLogger(void)::log);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v14, OS_SIGNPOST_EVENT, v16, "QPStringCache updates", &unk_1C664887A, buf, 2u);
      }
    }
  }
}

uint64_t updateWithValues(uint64_t a1, void *a2, unsigned int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = [a2 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v21)
  {
    v18 = a3;
    v5 = 0;
    v20 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        objc_opt_class();
        v22 = v6;
        if ((objc_opt_isKindOfClass() & 1) != 0 && -[__CFString length](v7, "length") && [-[__CFString stringByTrimmingCharactersInSet:](v7 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")), "length"}])
        {
          if (v18 == 2)
          {
            v8 = [(__CFString *)v7 componentsSeparatedByString:@";"];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v23 = v8;
            v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v9)
            {
              v10 = v9;
              v24 = *v30;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v30 != v24)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v12 = [*(*(&v29 + 1) + 8 * i) componentsSeparatedByString:@"/"];
                  v25 = 0u;
                  v26 = 0u;
                  v27 = 0u;
                  v28 = 0u;
                  v13 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
                  if (v13)
                  {
                    v14 = v13;
                    v15 = *v26;
                    do
                    {
                      for (j = 0; j != v14; ++j)
                      {
                        if (*v26 != v15)
                        {
                          objc_enumerationMutation(v12);
                        }

                        v5 |= addValue(a1, [*(*(&v25 + 1) + 8 * j) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")}], 1, 2);
                      }

                      v14 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
                    }

                    while (v14);
                  }
                }

                v10 = [v23 countByEnumeratingWithState:&v29 objects:v38 count:16];
              }

              while (v10);
            }
          }

          else
          {
            v5 |= addValue(a1, v7, 1, v18);
          }
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [a2 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v21);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_298(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  [Weak poll];

  return [Weak setGatherEndedHandler:0];
}

uint64_t ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
  {
    ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299_cold_1();
  }

  v5 = QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo;
  v4 = dword_1EDAC3FEC;
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  v6 = sourceLogger(void)::log;
  if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = (((v3 - v2) * v5 / v4) / 1000000.0);
    _os_log_impl(&dword_1C6584000, v6, OS_LOG_TYPE_DEFAULT, "queryForAttributes: query complete in %.1fms", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_300;
  block[3] = &unk_1E8267BD0;
  v7 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v7, block);
  Weak = objc_loadWeak((a1 + 48));
  [Weak setFoundAttributesHandler:0];
  [Weak setChangedAttributesHandler:0];
  [Weak setGatherEndedHandler:0];
  return [Weak setCompletionHandler:0];
}

void ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke(uint64_t a1)
{
  block[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v13 = (a1 + 48);
    v12 = *(a1 + 48);
    if (!v12)
    {
      return;
    }

    v6 = 0;
LABEL_15:
    Count = CFDictionaryGetCount(v12);
    MEMORY[0x1EEE9AC00](Count);
    v16 = (block - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v16, v15);
    CFDictionaryGetKeysAndValues(*v13, v16, 0);
    if (Count < 1)
    {
      if (!v6)
      {
        return;
      }
    }

    else
    {
      do
      {
        v17 = *v16++;
        addValue(*(*(a1 + 40) + 48), v17, 1, 10);
        --Count;
      }

      while (Count);
    }

    goto LABEL_19;
  }

  v3 = CFDictionaryGetCount(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (block - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v5, v4);
  CFDictionaryGetKeysAndValues(*(a1 + 32), v5, 0);
  v6 = v3 > 0;
  if (v3 >= 1)
  {
    v7 = v3;
    do
    {
      v8 = *v5;
      v9 = *(*(a1 + 40) + 48);
      if (*v5)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v21.length = [*v5 length];
        v21.location = 0;
        v11 = [copyStringInsertingSpacesBetweenIdeographCharacters(v8 v21)];
        QPStringCacheRemove(v9, v11, 0xAu);
      }

      ++v5;
      --v7;
    }

    while (v7);
  }

  v13 = (a1 + 48);
  v12 = *(a1 + 48);
  if (v12)
  {
    goto LABEL_15;
  }

  if (v3 > 0)
  {
LABEL_19:
    QPStringCachePrune(*(*(a1 + 40) + 48));
    v18 = *(a1 + 40);
    v19 = *(v18 + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v18;
    dispatch_sync(v19, block);
  }
}

uint64_t QPSpotlightKnowledgeContextAnnotationsAvailable(uint64_t a1)
{
  if (*(a1 + 72) != 1 || !*(a1 + 32))
  {
    return 0;
  }

  if (*(a1 + 73))
  {
    return 1;
  }

  result = SILexiconCacheIsAvailable();
  if (result)
  {
    return 1;
  }

  return result;
}

void QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForString(uint64_t a1, CFStringRef theString, CFRange *a3, uint64_t a4, void *a5)
{
  v46[1] = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a5)
    {
      v11 = Length;
      if (Length)
      {
        v34 = *a1;
        if (QPSpotlightKnowledgeContextAnnotationsAvailable(a1))
        {
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v11, 0x8000100u);
          v24[0] = v24;
          v25 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
          v28 = v24 - v13;
          bzero(v24 - v13, v25 + 1);
          v46[0] = 0;
          v45 = 5;
          QPCFDictionaryGetInt32ValueIfPresent(*(a1 + 24), @"maxTokenCount", &v45);
          v44 = 6;
          QPCFDictionaryGetInt32ValueIfPresent(*(a1 + 24), @"hashSize", &v44);
          v40 = 0;
          v41 = &v40;
          v42 = 0x2020000000;
          v43 = 0;
          if (a4 >= 1)
          {
            v14 = 0;
            v32 = MEMORY[0x1E69E9820];
            v31 = ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke;
            v30 = MEMORY[0x1E69E9820];
            v29 = ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke_2;
            v24[1] = v38;
            p_length = &a3[-1].length;
            v26 = a5;
            while (1)
            {
              v15 = &a3[v14];
              v16 = v15->length;
              location = v15->location;
              v39[0] = 0;
              v39[1] = v39;
              v39[2] = 0x2020000000;
              v39[3] = v14;
              v38[11] = a5;
              v38[12] = v32;
              v38[13] = 3221225472;
              v38[14] = v31;
              v38[15] = &unk_1E8267C40;
              v38[16] = v39;
              v38[17] = a4;
              v38[18] = a3;
              v38[6] = v30;
              v38[7] = 3221225472;
              v38[8] = v29;
              v38[9] = &unk_1E8267C68;
              v38[10] = &v40;
              if (!SILexiconCacheEnumerateAnyAnnotationsInString())
              {
                v17 = QPAnnotationsCopyNormalizedString(v34, theString, location, v16);
                v18 = v17;
                if (v17)
                {
                  v47.length = CFStringGetLength(v17);
                  v47.location = 0;
                  CFStringGetBytes(v18, v47, 0x8000100u, 0x2Du, 0, v28, v25 + 1, v46);
                  v28[v46[0]] = 0;
                  v36 = MEMORY[0x1E69E9820];
                  v37 = 3221225472;
                  v38[0] = ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke_3;
                  v38[1] = &unk_1E8267C90;
                  v38[4] = location;
                  v38[5] = v16;
                  v38[2] = &v40;
                  v38[3] = a5;
                  SILexiconCacheEnumerateOVSAnnotationsInString();
                  CFRelease(v18);
                }
              }

              if (*(v41 + 24) == 1)
              {
                break;
              }

              if (*(a1 + 32) && ((v35 = 0, v14 + v45 >= a4) ? (v19 = a4) : (v19 = v14 + v45), v20 = v19 - v14, v19 > v14))
              {
                v21 = &p_length[2 * v19];
                while (1)
                {
                  PayloadWithTokens = QPAnnotationsGetPayloadWithTokens(*(a1 + 32), v44, v34, theString, a3, v14, v20, &v35);
                  --v19;
                  if (v35 == 1)
                  {
                    break;
                  }

                  --v20;
                  v21 -= 16;
                  if (v19 <= v14)
                  {
                    a5 = v26;
                    goto LABEL_22;
                  }
                }

                QPAnnotationsGetIdentifier(PayloadWithTokens);
                a5 = v26;
                (*(*v26 + 16))(*v26);
                v14 = v19;
LABEL_22:
                v23 = *(v41 + 24);
                _Block_object_dispose(v39, 8);
                if (v23)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                _Block_object_dispose(v39, 8);
              }

              if (++v14 >= a4)
              {
                goto LABEL_26;
              }
            }

            _Block_object_dispose(v39, 8);
          }

LABEL_26:
          _Block_object_dispose(&v40, 8);
        }
      }
    }
  }
}

void sub_1C660D9AC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke(void *a1)
{
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= a1[5])
  {
    return -1;
  }

  result = *(a1[6] + 16 * v2);
  *(v1 + 24) = v2 + 1;
  return result;
}

uint64_t ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke_2(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = **(a1 + 40);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = @"SENSITIVE";
  }

  result = (*(v9 + 16))(v9, a3, a4, v10, *(v8 + 8) + 24);
  *a5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_2;
  v4[3] = &unk_1E8267CD8;
  v4[4] = *(a1 + 32);
  v4[5] = v1;
  return QPStringCacheEnumerateStrings(v2, v4);
}

void ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_2(uint64_t a1, const void *a2, int a3)
{
  if (a3 > 6)
  {
    if (a3 <= 8)
    {
      v5 = *(*(a1 + 32) + 16);
    }

    else
    {
      switch(a3)
      {
        case 9:
          v5 = *(*(a1 + 32) + 16);
          break;
        case 10:
          v5 = *(*(a1 + 32) + 16);
          break;
        case 11:
          v5 = *(*(a1 + 32) + 16);
          break;
        default:
          return;
      }
    }

    goto LABEL_20;
  }

  if (a3 <= 3)
  {
    if (a3 == 2)
    {
      v5 = *(*(a1 + 32) + 16);
      goto LABEL_20;
    }

    if (a3 != 3)
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    CFRetain(a2);
    v6 = *(a1 + 40);
    v7 = *(v6 + 112);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_3;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = a2;
    v11[5] = v6;
    v8 = v11;
LABEL_16:
    dispatch_async(v7, v8);
    return;
  }

  if (a3 == 4)
  {
    (*(*(a1 + 32) + 16))();
    CFRetain(a2);
    v9 = *(a1 + 40);
    v7 = *(v9 + 112);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_4;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a2;
    v10[5] = v9;
    v8 = v10;
    goto LABEL_16;
  }

  v5 = *(*(a1 + 32) + 16);
LABEL_20:

  v5();
}

void ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_3(uint64_t a1)
{
  QPStringCacheAdd(*(*(a1 + 40) + 56), [*(a1 + 32) lowercaseString], 3);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_4(uint64_t a1)
{
  QPStringCacheAdd(*(*(a1 + 40) + 56), [*(a1 + 32) lowercaseString], 4);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t __Block_byref_object_copy__353(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t ___ZL36QPSpotlightKnowledgeContextCopyTypesP26_SpotlightKnowledgeContextPK10__CFStringh_block_invoke(void *a1)
{
  result = QPStringCacheHasPrefixWithValue(*(a1[6] + 56), *(*(a1[5] + 8) + 48), 3);
  *(*(a1[4] + 8) + 24) = result != 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    result = QPStringCacheHasPrefixWithValue(*(a1[6] + 56), *(*(a1[5] + 8) + 48), 4);
    *(*(a1[4] + 8) + 24) = result != 0;
  }

  return result;
}

uint64_t ___ZL42QPSpotlightKnowledgeContextUpdateResourcesP26_SpotlightKnowledgeContexthU13block_pointerFvP9__CFErrorE_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
  {
    ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299_cold_1();
  }

  v6 = ((v5 - v4) * QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / dword_1EDAC3FEC) / 1000000.0;
  if (a2)
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v7 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      ___ZL42QPSpotlightKnowledgeContextUpdateResourcesP26_SpotlightKnowledgeContexthU13block_pointerFvP9__CFErrorE_block_invoke_cold_3(v7, v6);
    }
  }

  else
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v8 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_1C6584000, v8, OS_LOG_TYPE_DEFAULT, "loaded lexicon cache in %.1fms", &v10, 0xCu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t __Block_byref_object_copy__362_0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZL19loadSafetyResourcesP26_SpotlightKnowledgeContextb_block_invoke(uint64_t a1, CFURLRef url)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (CFStringsAreEqual(PathComponent, @"config.plist"))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = CFRetain(url);
  }

  else
  {
    if (!CFStringsAreEqual(PathComponent, @"safety_resources.map"))
    {
      goto LABEL_6;
    }

    v5 = *(*(a1 + 40) + 8);
    v6 = CFRetain(url);
  }

  nlp::CFScopedPtr<__CFURL const*>::reset((v5 + 48), v6);
LABEL_6:
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }
}

void sub_1C660E134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t unloadSafetyResources(uint64_t a1)
{
  if (*(a1 + 24) || *(a1 + 32))
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v2 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C6584000, v2, OS_LOG_TYPE_INFO, "safety: unloading previous resources", v5, 2u);
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = SIDataMapRelease();
    *(a1 + 32) = 0;
  }

  return result;
}

os_log_t ___ZL12sourceLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QPSpotlightKnowledgeSource");
  sourceLogger(void)::log = result;
  return result;
}

void ___ZL37QPSpotlightKnowledgeContextSetOptionsP26_SpotlightKnowledgeContextPK14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      __QPSpotlightKnowledgeSourceRefresh_block_invoke_cold_2();
    }
  }

  else
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v3 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "reloaded lexicon", v4, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void *QPStringCacheCreateWithOptions(const void *a1, const __CFDictionary *a2)
{
  v4 = malloc_type_malloc(0x50uLL, 0x106004038EB2D4CuLL);
  if (v4)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    v4[1] = 0;
    *v4 = v5;
    v4[2] = 0;
    v4[3] = 0;
    v6 = *MEMORY[0x1E695E480];
    v4[4] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    MutableWithOptions = SIGeneralTrieCreateMutableWithOptions();
    *(v4 + 14) = 0x7FFFFFFF;
    v4[5] = MutableWithOptions;
    v4[6] = 0;
    v4[8] = 0x3FF0000000000000;
    if (a2)
    {
      if (CFDictionaryContainsKey(a2, @"cacheSize"))
      {
        Value = CFDictionaryGetValue(a2, @"cacheSize");
        CFNumberGetValue(Value, kCFNumberCFIndexType, v4 + 7);
      }

      if (CFDictionaryContainsKey(a2, @"cacheGrowthFactor"))
      {
        v9 = CFDictionaryGetValue(a2, @"cacheGrowthFactor");
        CFNumberGetValue(v9, kCFNumberDoubleType, v4 + 8);
      }

      if (CFDictionaryContainsKey(a2, @"doNotPruneList"))
      {
        v10 = CFDictionaryGetValue(a2, @"doNotPruneList");
        Mutable = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
        Count = CFArrayGetCount(v10);
        if (Count >= 1)
        {
          v13 = Count;
          for (i = 0; i != v13; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
            CFSetAddValue(Mutable, ValueAtIndex);
          }
        }

        v4[2] = Mutable;
      }

      if (CFDictionaryContainsKey(a2, @"alwaysPruneList"))
      {
        v16 = CFDictionaryGetValue(a2, @"alwaysPruneList");
        v17 = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
        v18 = CFArrayGetCount(v16);
        if (v18 >= 1)
        {
          v19 = v18;
          for (j = 0; j != v19; ++j)
          {
            v21 = CFArrayGetValueAtIndex(v16, j);
            CFSetAddValue(v17, v21);
          }
        }

        v4[1] = v17;
      }
    }

    *(v4 + 18) = 1;
  }

  return v4;
}

uint64_t QPStringCacheAddWithCount(uint64_t result, CFStringRef theString, uint64_t a3, unsigned int a4)
{
  if (result)
  {
    v4 = result;
    result = *(result + 40);
    if (result)
    {
      v9 = 0;
      add(result, *(v4 + 32), *(v4 + 16), theString, a3, a4, &v9, &v9 + 1);
      v5 = v9;
      if (HIBYTE(v9) == 1 && v9 != 0)
      {
        ++*(v4 + 24);
      }

      v7 = *(v4 + 56);
      if (v7 != 0x7FFFFFFF)
      {
        v8 = *(v4 + 24) + v7 + (*(v4 + 64) * v7);
        if (SIGeneralTrieGetCount() > v8)
        {
          prune(v4);
        }
      }

      if (SIGeneralTrieGetCount() - *(v4 + 24) > (*(v4 + 64) * *(v4 + 56)))
      {
        return 1;
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

void add(uint64_t a1, __CFSet *a2, const __CFSet *a3, CFStringRef theString, uint64_t a5, unsigned int a6, BOOL *a7, _BYTE *a8)
{
  v28 = *MEMORY[0x1E69E9840];
  valuePtr = a5;
  if (a1)
  {
    if (theString)
    {
      if (CFStringGetLength(theString))
      {
        v14 = *MEMORY[0x1E695E480];
        v15 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%@", a5, theString);
        if (v15)
        {
          v16 = v15;
          v26[0] = v14;
          Length = CFStringGetLength(v15);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v26[1] = v26;
          v19 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
          v21 = v26 - v20;
          bzero(v26 - v20, v19 + 1);
          if (CFStringGetCString(v16, v21, MaximumSizeForEncoding + 1, 0x8000100u))
          {
            strlen(v21);
            v22 = SIGeneralTrieContainsKey();
            if (a7)
            {
              *a7 = v22 == 0;
            }

            v23 = v22;
            SIGeneralTrieAddKeyWithScore();
            v24 = CFNumberCreate(v26[0], kCFNumberIntType, &valuePtr);
            if (v24)
            {
              v25 = v24;
              if (a3 && a8 && CFSetContainsValue(a3, v24) && !v23)
              {
                *a8 = 1;
              }

              CFSetAddValue(a2, v25);
              CFRelease(v25);
            }
          }

          CFRelease(v16);
        }
      }
    }
  }
}

void prune(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) && !*a1)
  {
    Count = CFSetGetCount(*(a1 + 32));
    v3 = *(a1 + 16);
    if (v3)
    {
      v3 = CFSetGetCount(v3);
    }

    v28 = &v26;
    v4 = *(a1 + 56);
    v33 = v4;
    if (Count == v3)
    {
      v5 = 0x7FFFFFFFLL;
    }

    else
    {
      v5 = v4 / (Count - v3);
    }

    MEMORY[0x1EEE9AC00](v3);
    v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFSetGetValues(*(a1 + 32), v7);
    *(a1 + 24) = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Count >= 1)
    {
      v8 = v7;
      do
      {
        v9 = *v8;
        v10 = *(a1 + 16);
        if (!v10 || !CFSetContainsValue(v10, *v8))
        {
          v11 = SITrieCompletionQueueCreate();
          CFDictionarySetValue(Mutable, v9, v11);
          CFRelease(v11);
        }

        ++v8;
        --Count;
      }

      while (Count);
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    MutableWithOptions = SIGeneralTrieCreateMutableWithOptions();
    v12 = *(a1 + 40);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZL5pruneP14_QPStringCache_block_invoke;
    v34[3] = &unk_1E8267DF0;
    v34[4] = &v35;
    v34[5] = a1;
    v13 = Mutable;
    v34[6] = Mutable;
    v34[7] = v33;
    enumerateCompletions(v12, &stru_1F45E9EA0, v34);
    v14 = CFDictionaryGetCount(v13);
    MEMORY[0x1EEE9AC00](v14);
    v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v16, v15);
    CFDictionaryGetKeysAndValues(v13, v7, v16);
    v27 = a1;
    if (v14 >= 1)
    {
      v26 = v14 - 1;
      v30 = v14;
      v17 = 0;
      v18 = 0;
      if (v5 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v5;
      }

      v31 = v19;
      do
      {
        v20 = v16[v17];
        v21 = v31;
        v32 = v31 + v18;
        while (CFBinaryHeapGetCount(v20) >= 1)
        {
          CFBinaryHeapGetMinimum(v20);
          SITrieCompletionGetCompletion();
          SITrieCompletionGetLength();
          SITrieCompletionGetPayload();
          SITrieCompletionGetScore();
          SIGeneralTrieAddKeyWithScore();
          CFBinaryHeapRemoveMinimumValue(v20);
          ++v18;
          if (!--v21)
          {
            v18 = v32;
            break;
          }
        }

        if (v18 >= v33)
        {
          break;
        }

        ++v17;
      }

      while (v17 != v30);
      v22 = v26;
      if (v18 < v33)
      {
        do
        {
          v23 = v22;
          v24 = *v16;
          if (CFBinaryHeapGetCount(*v16) >= 1)
          {
            CFBinaryHeapGetMinimum(v24);
            SITrieCompletionGetCompletion();
            SITrieCompletionGetLength();
            SITrieCompletionGetPayload();
            SITrieCompletionGetScore();
            SIGeneralTrieAddKeyWithScore();
            CFBinaryHeapRemoveMinimumValue(v24);
            ++v18;
          }

          if (v18 >= v33)
          {
            break;
          }

          v22 = v23 - 1;
          ++v16;
        }

        while (v23);
      }
    }

    CFRelease(Mutable);
    v25 = v27;
    SIGeneralTrieRelease();
    *(v25 + 40) = v36[3];
    _Block_object_dispose(&v35, 8);
  }
}

void QPStringCacheRemove(uint64_t result, CFStringRef theString, unsigned int a3)
{
  if (result)
  {
    if (*(result + 40))
    {
      remove(*(result + 40), *(result + 16), theString, a3);
    }
  }
}

void remove(uint64_t a1, const __CFSet *a2, CFStringRef theString, unsigned int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr = a4;
  if (theString && CFStringGetLength(theString))
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v7)
    {
      v8 = v7;
      if (a2)
      {
        v9 = CFSetContainsValue(a2, v7);
        CFRelease(v8);
        if (v9)
        {
          return;
        }
      }

      else
      {
        CFRelease(v7);
      }
    }

    v10 = CFStringCreateWithFormat(v6, 0, @"%d:%@", valuePtr, theString);
    if (v10)
    {
      v11 = v10;
      Length = CFStringGetLength(v10);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v14 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
      v16 = &v17[-v15];
      bzero(&v17[-v15], v14 + 1);
      if (CFStringGetCString(v11, v16, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        strlen(v16);
        if (SIGeneralTrieContainsKey())
        {
          SIGeneralTrieAddKeyWithScore();
        }
      }

      CFRelease(v11);
    }
  }
}

uint64_t QPStringCacheGetLiveCount(uint64_t a1)
{
  if (a1 && *(a1 + 40))
  {
    return SIGeneralTrieGetCount();
  }

  else
  {
    return 0;
  }
}

void QPStringCachePrune(uint64_t a1)
{
  if (a1)
  {
    prune(a1);
  }
}

uint64_t QPStringCacheEnumerateStrings(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 40);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __QPStringCacheEnumerateStrings_block_invoke;
    v3[3] = &unk_1E8267DC8;
    v3[4] = a2;
    return enumerateCompletions(v2, &stru_1F45E9EA0, v3);
  }

  return result;
}

uint64_t enumerateCompletions(uint64_t result, const __CFString *a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a3;
  if (result && a3)
  {
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = &stru_1F45E9EA0;
    }

    CFStringGetLength(v3);
    Length = CFStringGetLength(v3);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
    v8 = v9 - v7;
    bzero(v9 - v7, v6 + 1);
    result = CFStringGetCString(v3, v8, MaximumSizeForEncoding + 1, 0x8000100u);
    if (result)
    {
      return SIGeneralTrieSearch();
    }
  }

  return result;
}

void __QPStringCacheEnumerateStrings_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SITrieCompletionGetPayload())
  {
    Completion = SITrieCompletionGetCompletion();
    Length = SITrieCompletionGetLength();
    v7 = 0;
    if (Length)
    {
      while (1)
      {
        v8 = *(Completion + v7++);
        if (v8 == 58)
        {
          break;
        }

        if (Length == v7)
        {
          return;
        }
      }
    }

    if (v7 != Length)
    {
      v9 = (Completion + v7);
      v10 = Completion ? v9 : "";
      v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10, 0x8000100u);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 32);
        Payload = SITrieCompletionGetPayload();
        (*(v13 + 16))(v13, v12, Payload, a3);

        CFRelease(v12);
      }
    }
  }
}

uint64_t QPStringCacheHasPrefixWithValue(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return containsPrefixWithValue(*(result + 40), a2, a3);
  }

  return result;
}

uint64_t containsPrefixWithValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%@", a3, a2);
  if (v4)
  {
    v5 = v4;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZL23containsPrefixWithValueP14_SIGeneralTriePKS_PK10__CFStringj_block_invoke;
    v8[3] = &unk_1E8267E18;
    v8[4] = &v9;
    enumerateCompletions(a1, v4, v8);
    CFRelease(v5);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void QPStringCacheRelease(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[18] - 1;
    a1[18] = v2;
    if (!v2)
    {
      v3 = *a1;
      if (*a1)
      {
        CFRelease(v3);
      }

      v4 = *(a1 + 4);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(a1 + 1);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(a1 + 2);
      if (v6)
      {
        CFRelease(v6);
      }

      if (*(a1 + 5))
      {
        SIGeneralTrieRelease();
      }

      if (*(a1 + 6))
      {
        SIGeneralTrieRelease();
      }

      free(a1);
    }
  }
}

void ___ZL5pruneP14_QPStringCache_block_invoke(uint64_t a1, const void *a2)
{
  valuePtr = SITrieCompletionGetPayload();
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (SITrieCompletionGetPayload())
  {
    v5 = *(*(a1 + 40) + 16);
    if (!v5 || !CFSetContainsValue(v5, v4))
    {
      Value = CFDictionaryGetValue(*(a1 + 48), v4);
      if (*(a1 + 56) <= CFBinaryHeapGetCount(Value))
      {
        CFBinaryHeapGetMinimum(Value);
        SITrieCompletionGetScore();
        v9 = v8;
        SITrieCompletionGetScore();
        if (v9 <= v10)
        {
          goto LABEL_9;
        }

        CFBinaryHeapRemoveMinimumValue(Value);
      }

      CFBinaryHeapAddValue(Value, a2);
      goto LABEL_9;
    }

    SITrieCompletionGetCompletion();
    SITrieCompletionGetLength();
    SITrieCompletionGetPayload();
    SITrieCompletionGetScore();
    SIGeneralTrieAddKeyWithScore();
    SITrieCompletionGetScore();
    *(*(a1 + 40) + 24) = (v6 + *(*(a1 + 40) + 24));
  }

LABEL_9:
  CFRelease(v4);
}

uint64_t ___ZL23containsPrefixWithValueP14_SIGeneralTriePKS_PK10__CFStringj_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_1C660F878(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void localeChangeCallback(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = a2;
  if (v5)
  {
    [v5 updateLocale];
  }
}

id localeKeyForLocale(NSLocale *a1)
{
  v1 = a1;
  v2 = [(NSLocale *)v1 localeIdentifier];
  LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier();

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LanguageIDForIdentifier];
  v5 = [v4 stringValue];

  return v5;
}

void sub_1C660FD5C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C6611C5C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SystemListener;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

CFURLRef systemListenerCopyResourceFromBundleWithName(CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName, CFBundleRef bundle)
{
  if (!resourceName || !resourceType)
  {
    return 0;
  }

  if (!bundle)
  {
    bundle = CFBundleGetBundleWithIdentifier(@"com.apple.spotlight.QueryParser");
  }

  return CFBundleCopyResourceURL(bundle, resourceName, resourceType, subDirName);
}

void systemListenerEnableAutoUpdatingLocale(int a1)
{
  v2 = +[SystemListener defaultListener];
  [v2 setAutoUpdatingLocale:a1 != 0];
}

BOOL systemListenerResourcesAvailableForLocaleAndContentType(uint64_t a1, void *a2)
{
  v4 = +[SystemListener defaultListener];
  v5 = [v4 pathsForContentType:a2 locale:a1];
  if ([a2 isEqualToString:@"QueryParser"])
  {
    v6 = [v5 count] > 2;
  }

  else
  {
    v6 = [v5 count] != 0;
  }

  return v6;
}

void systemListenerEnumerateResourcesWithContentType(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = +[SystemListener defaultListener];
  [v12 pathsForContentType:a1 locale:0];
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      v13 = 0;
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [v9 fileExistsAtPath:v8 isDirectory:&v13];

      if (v10)
      {
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:v13];
        v3[2](v3, v11, &v18);
      }

      if (v18)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void systemListenerSetLocale(uint64_t a1, uint64_t a2)
{
  v4 = +[SystemListener defaultListener];
  [v4 updateLocaleWithLocale:a1 preferredLanguages:a2 force:1];
}

void *systemListenerGetLocale()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentLocale];

  return v1;
}

void *systemListenerGetRegion()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentRegion];

  return v1;
}

void *systemListenerGetPreferredLanguages()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentPreferredLanguages];

  return v1;
}

uint64_t systemListenerGetFirstWeekDay()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentFirstWeekDay];

  return v1;
}

void *systemListenerGetSupportedSemanticLanguages()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 supportedSemanticLanguages];

  return v1;
}

uint64_t systemListenerIsSemanticSearchEnabled()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 semanticSearchEnabled];

  return v1;
}

uint64_t systemListenerHasResourceUpdates()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 hasUpdatedResources];
  if (v1)
  {
    [v0 updateResources];
  }

  return v1;
}

uint64_t systemListenerHasLocaleUpdates()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 hasUpdatedLocale];

  return v1;
}

uint64_t systemListenerHasFirstWeekDayUpdates()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 hasUpdatedFirstWeekDay];

  return v1;
}

uint64_t systemListenerGetLongValueTrialFactorForKey(uint64_t a1)
{
  v2 = +[SystemListener defaultListener];
  v3 = [v2 longValueTrialFactorForKey:a1];

  return v3;
}

void systemListenerLogTriggerForCodepathID(uint64_t a1, uint64_t a2)
{
  v4 = +[SystemListener defaultListener];
  [v4 logTriggerForCodepathID:a1 queryID:a2];
}

void ___ZL14listenerLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QueryParserListener");
  v2 = listenerLogger(void)::log;
  listenerLogger(void)::log = v1;
}

void QP::Transcriber::updateLocale(QP::Transcriber *this, const __CFLocale *a2)
{
  if (a2)
  {
    if (!*this || (v4 = MEMORY[0x1C695ACD0](), v5 = MEMORY[0x1C695ACD0](a2), !CFStringsAreEqual(v4, v5)))
    {
      QP::Transcriber::clear(this);
      v6 = CFRetain(a2);
      *this = v6;
      v8.location = 0;
      v8.length = 0;
      *(this + 1) = CFStringTokenizerCreate(*MEMORY[0x1E695E480], &stru_1F45E9EA0, v8, 0x10000uLL, v6);
    }
  }

  else
  {

    QP::Transcriber::clear(this);
  }
}

QP::Transcriber *QP::Transcriber::Transcriber(QP::Transcriber *this, const __CFLocale *a2)
{
  *this = 0;
  *(this + 1) = 0;
  QP::Transcriber::updateLocale(this, a2);
  return this;
}

void QP::Transcriber::~Transcriber(QP::Transcriber *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

void QP::Transcriber::clear(QP::Transcriber *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
    *(this + 1) = 0;
  }
}

uint64_t QP::U2Parser::addArgActions(uint64_t a1, char *a2)
{
  v4 = *(a1 + 112);
  result = std::__tree<std::string>::find<std::string>(v4 + 432, a2);
  if (v4 + 440 != result)
  {
    result = std::__tree<std::string>::find<std::string>(v4 + 432, a2);
    v6 = *(result + 56);
    v7 = (result + 64);
    if (v6 != (result + 64))
    {
      do
      {
        result = std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 128, v6 + 13, v6 + 13);
        v8 = *(v6 + 1);
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = *(v6 + 2);
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
    }
  }

  return result;
}

void QP::U2Parser::addArgActionstoTimeAttr(uint64_t *a1, QP::ParseAttribute ***a2)
{
  v4 = a1[14];
  std::string::basic_string[abi:ne200100]<0>(__p, "ACTION");
  v5 = QP::ParserGrammar::symbolID(v4, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  v6 = a2[1];
  if (v7 != v6)
  {
    v8 = a1 + 17;
    do
    {
      if (QP::ParseAttribute::flag(*v7) == 1 && (*(*v7 + 74) & 1) == 0)
      {
        v9 = a1[16];
        if (v9 != v8)
        {
          do
          {
            QP::ParseAttribute::addAction(*v7, v5, *(v9 + 26));
            v10 = *(v9 + 8);
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
                v11 = *(v9 + 16);
                v12 = *v11 == v9;
                v9 = v11;
              }

              while (!v12);
            }

            v9 = v11;
          }

          while (v11 != v8);
        }
      }

      v7 += 2;
    }

    while (v7 != v6);
  }
}

void sub_1C6612F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::U2Parser::mergeActionsforSearchtoolPersonalAnswers(uint64_t a1, uint64_t **a2, QP::ParseAttribute ***a3)
{
  result = SPQueryKindIsSearchToolSearch(*(*(a1 + 80) + 192));
  if (result)
  {
    result = std::string::starts_with[abi:ne200100](a2, "INTENT_FLIGHT");
    if (result & 1) != 0 || (result = std::string::starts_with[abi:ne200100](a2, "INTENT_HOTEL"), (result) || (result = std::string::starts_with[abi:ne200100](a2, "INTENT_RESTAURANT"), result))
    {
      v8 = *a3;
      v7 = a3[1];
      if (v8 != v7)
      {
        v9 = *(a1 + 112);
        do
        {
          result = QP::ParseAttribute::flag(*v8);
          if (result == 1 && (*(*v8 + 74) & 1) == 0)
          {
            result = std::__tree<std::string>::find<std::string>(v9 + 408, a2);
            if (v9 + 416 != result)
            {
              v10 = *(result + 56);
              v11 = (result + 64);
              if (v10 != (result + 64))
              {
                do
                {
                  v12 = v10[5];
                  if (v12 != v10 + 6)
                  {
                    v13 = *(v10 + 16);
                    do
                    {
                      result = QP::ParseAttribute::addAction(*v8, v13, *(v12 + 13));
                      v14 = v12[1];
                      if (v14)
                      {
                        do
                        {
                          v15 = v14;
                          v14 = *v14;
                        }

                        while (v14);
                      }

                      else
                      {
                        do
                        {
                          v15 = v12[2];
                          v16 = *v15 == v12;
                          v12 = v15;
                        }

                        while (!v16);
                      }

                      v12 = v15;
                    }

                    while (v15 != v10 + 6);
                  }

                  v17 = v10[1];
                  if (v17)
                  {
                    do
                    {
                      v18 = v17;
                      v17 = *v17;
                    }

                    while (v17);
                  }

                  else
                  {
                    do
                    {
                      v18 = v10[2];
                      v16 = *v18 == v10;
                      v10 = v18;
                    }

                    while (!v16);
                  }

                  v10 = v18;
                }

                while (v18 != v11);
              }
            }
          }

          v8 += 2;
        }

        while (v8 != v7);
      }
    }
  }

  return result;
}

id QP::localIdentifierAliases(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        [v2 addObject:{v7, v12}];
        v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        [v2 addObject:v8];

        v9 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
        [v2 addObject:v9];
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = [v2 copy];

  return v10;
}

uint64_t QP::isSupportedQULanguage(QP *this, NSLocale *a2)
{
  v2 = [(QP *)this languageCode];
  if ([v2 length])
  {
    if (QP::isSupportedQULanguage(NSLocale *)::onceToken != -1)
    {
      QP::isSupportedQULanguage();
    }

    v3 = [QP::isSupportedQULanguage(NSLocale *)::supportedLocales containsObject:v2];
  }

  else
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    v4 = u2ParserLogger(void)::log;
    v3 = 0;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "[QPNLU] language string is empty", v6, 2u);
      v3 = 0;
    }
  }

  return v3;
}

id u2ParserLogger(uint64_t a1)
{
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v2 = u2ParserLogger(void)::log;

  return v2;
}

void ___ZN2QP21isSupportedQULanguageEP8NSLocale_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages))
  {
    _ZZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en", @"fr", @"es", @"de", @"ja", @"zh", @"pt", @"it", @"yue", @"nl", @"sv", @"zh_Hant", @"da", @"nb", @"ko", @"tr", @"vi", @"zh_Hans", 0}];
    __cxa_guard_release(&_ZGVZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages);
  }

  v0 = QP::localIdentifierAliases(_ZZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages);
  v1 = QP::isSupportedQULanguage(NSLocale *)::supportedLocales;
  QP::isSupportedQULanguage(NSLocale *)::supportedLocales = v0;
}

uint64_t QP::isSupportedECRLocale(QP *this, NSLocale *a2)
{
  v2 = [(QP *)this localeIdentifier];
  if ([v2 length])
  {
    if (QP::isSupportedECRLocale(NSLocale *)::onceToken != -1)
    {
      QP::isSupportedECRLocale();
    }

    v3 = [QP::isSupportedECRLocale(NSLocale *)::supportedLocaleIdentifiers containsObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___ZN2QP20isSupportedECRLocaleEP8NSLocale_block_invoke()
{
  v0 = QP::localIdentifierAliases(&unk_1F45F8E28);
  v1 = QP::isSupportedECRLocale(NSLocale *)::supportedLocaleIdentifiers;
  QP::isSupportedECRLocale(NSLocale *)::supportedLocaleIdentifiers = v0;
}

uint64_t QP::isAllowedPeopleSpanToken(QP *this, NSString *a2)
{
  v2 = this;
  if (QP::isAllowedPeopleSpanToken(NSString *)::onceToken != -1)
  {
    QP::isAllowedPeopleSpanToken();
  }

  v3 = QP::isAllowedPeopleSpanToken(NSString *)::disallowedTokens;
  v4 = [(QP *)v2 localizedLowercaseString];
  LODWORD(v3) = [v3 containsObject:v4];

  return v3 ^ 1;
}

void ___ZN2QP24isAllowedPeopleSpanTokenEP8NSString_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F45F8E40];
  v1 = QP::isAllowedPeopleSpanToken(NSString *)::disallowedTokens;
  QP::isAllowedPeopleSpanToken(NSString *)::disallowedTokens = v0;
}

uint64_t QP::U2Parser::U2Parser(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = *a2;
  v5 = a2[1];
  *(a1 + 88) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a4;
  v6 = a4[1];
  *(a1 + 104) = v6;
  *(a1 + 96) = v7;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = *a3;
  v8 = a3[1];
  *(a1 + 120) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0uLL;
  *(a1 + 168) = 0uLL;
  *(a1 + 184) = 0uLL;
  *(a1 + 200) = 0uLL;
  [MEMORY[0x1E69C6A68] setUseSpotlightResources:*(*(a1 + 80) + 74)];
  return a1;
}

void sub_1C6613808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  nlp::CFScopedPtr<__CFAttributedString const*>::reset((v10 + 208), 0);
  a10 = (v10 + 184);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 160);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a10);
  nlp::CFScopedPtr<__CFString const*>::reset(v14, 0);
  std::__tree<unsigned int>::destroy(v13, *(v10 + 136));
  v16 = *(v10 + 120);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  QP::U2Parser::U2Parser(v12, v11, v10);
  _Unwind_Resume(a1);
}

__CFArray *QP::U2Parser::createPeopleNameRangesFromPersonLexemes(QP::U2Parser *this)
{
  v34 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(*(this + 10) + 240);
  if (v3)
  {
    v4 = *(this + 19);
    if ([v4 length])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v6)
      {
        v7 = *v29;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v29 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v28 + 1) + 8 * i);
            if ([v9 length])
            {
              v11 = [v4 rangeOfString:v9 options:0 range:0 locale:{objc_msgSend(v4, "length"), *(*(this + 10) + 112)}];
              if (v11 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v12 = [MEMORY[0x1E696B098] valueWithRange:{v11, v10}];
                CFArrayAppendValue(Mutable, v12);
              }
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v6);
      }
    }

    return Mutable;
  }

  QP::Lexer::lexemeAtLocation(*(this + 12), 0, &__p);
  v14 = __p;
  v13 = v26;
  if (__p)
  {
    v15 = 1;
    while (1)
    {
      QP::getUTF8StringFromCFString(&__p, @"Person");
      v16 = (v27 & 0x80u) == 0 ? &__p : __p;
      v17 = (v27 & 0x80u) == 0 ? v27 : v26;
      v18 = *(v14 + 23);
      if (v18 < 0)
      {
        v19 = *v14;
        v18 = v14[1];
      }

      else
      {
        v19 = v14;
      }

      v32[0] = v19;
      v32[1] = v18;
      v20 = std::string_view::starts_with[abi:ne200100](v32, v16, v17);
      v21 = v20;
      if (v27 < 0)
      {
        break;
      }

      if (v20)
      {
        goto LABEL_30;
      }

LABEL_31:
      QP::Lexer::lexemeAtLocation(*(this + 12), v15, &__p);
      v14 = __p;
      v23 = v26;
      __p = 0;
      v26 = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }
      }

      ++v15;
      v13 = v23;
      if (!v14)
      {
        if (v23)
        {
          goto LABEL_36;
        }

        return Mutable;
      }
    }

    operator delete(__p);
    if (!v21)
    {
      goto LABEL_31;
    }

LABEL_30:
    v22 = [MEMORY[0x1E696B098] valueWithRange:{v14[9], v14[10]}];
    CFArrayAppendValue(Mutable, v22);

    goto LABEL_31;
  }

  v23 = v26;
  if (v26)
  {
LABEL_36:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return Mutable;
}

__CFArray *QP::U2Parser::createLocationNameRangesFromLocationLexemes(QP::U2Parser *this)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, &__p);
  v4 = __p;
  v3 = v16;
  if (__p)
  {
    v5 = 1;
    while (1)
    {
      QP::getUTF8StringFromCFString(&__p, @"Location");
      v6 = (v17 & 0x80u) == 0 ? &__p : __p;
      v7 = (v17 & 0x80u) == 0 ? v17 : v16;
      v8 = *(v4 + 23);
      if (v8 < 0)
      {
        v9 = *v4;
        v8 = v4[1];
      }

      else
      {
        v9 = v4;
      }

      v18[0] = v9;
      v18[1] = v8;
      v10 = std::string_view::starts_with[abi:ne200100](v18, v6, v7);
      v11 = v10;
      if (v17 < 0)
      {
        break;
      }

      if (v10)
      {
        goto LABEL_16;
      }

LABEL_17:
      QP::Lexer::lexemeAtLocation(*(this + 12), v5, &__p);
      v4 = __p;
      v13 = v16;
      __p = 0;
      v16 = 0;
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }

      ++v5;
      v3 = v13;
      if (!v4)
      {
        if (v13)
        {
          goto LABEL_22;
        }

        return Mutable;
      }
    }

    operator delete(__p);
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = [MEMORY[0x1E696B098] valueWithRange:{v4[9], v4[10]}];
    CFArrayAppendValue(Mutable, v12);

    goto LABEL_17;
  }

  v13 = v16;
  if (v16)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return Mutable;
}

void sub_1C6613D0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFAttributedString *QP::U2Parser::createAnnotations(QP::U2Parser *this)
{
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v30.location = 0;
  v30.length = 0;
  CFAttributedStringReplaceString(Mutable, v30, *(this + 19));
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, &__p);
  v4 = __p;
  v3 = v26;
  if (!__p)
  {
    v23 = v26;
    if (!v26)
    {
      return Mutable;
    }

    goto LABEL_45;
  }

  v5 = 1;
  v6 = MEMORY[0x1E695E0F8];
  do
  {
    QP::getUTF8StringFromCFString(&__p, @"Person");
    if ((v27 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = v26;
    }

    v9 = v4[23];
    if (v9 < 0)
    {
      v10 = *v4;
      v9 = *(v4 + 1);
    }

    else
    {
      v10 = v4;
    }

    v28 = v10;
    v29 = v9;
    v11 = std::string_view::starts_with[abi:ne200100](&v28, p_p, v8);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    v12 = @"kQPQUPersonSpan";
    if (v11)
    {
      goto LABEL_39;
    }

    QP::getUTF8StringFromCFString(&__p, @"Location");
    if ((v27 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v14 = v27;
    }

    else
    {
      v14 = v26;
    }

    v15 = v4[23];
    if (v15 < 0)
    {
      v16 = *v4;
      v15 = *(v4 + 1);
    }

    else
    {
      v16 = v4;
    }

    v28 = v16;
    v29 = v15;
    v17 = std::string_view::starts_with[abi:ne200100](&v28, v13, v14);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    v12 = @"kQPQULocationSpan";
    if (v17)
    {
      goto LABEL_39;
    }

    QP::getUTF8StringFromCFString(&__p, @"Holiday");
    if ((v27 & 0x80u) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v19 = v27;
    }

    else
    {
      v19 = v26;
    }

    v20 = v4[23];
    if (v20 < 0)
    {
      v21 = *v4;
      v20 = *(v4 + 1);
    }

    else
    {
      v21 = v4;
    }

    v28 = v21;
    v29 = v20;
    v22 = std::string_view::starts_with[abi:ne200100](&v28, v18, v19);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    v12 = @"kQPQUHolidaySpan";
    if (v22)
    {
LABEL_39:
      CFAttributedStringSetAttribute(Mutable, *(v4 + 72), v12, v6);
    }

    QP::Lexer::lexemeAtLocation(*(this + 12), v5, &__p);
    v4 = __p;
    v23 = v26;
    __p = 0;
    v26 = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    ++v5;
    v3 = v23;
  }

  while (v4);
  if (v23)
  {
LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return Mutable;
}

void sub_1C6613F78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *QP::U2Parser::createTokenOutputSpans(QP::U2Parser *this, const __CFAttributedString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v17[1] = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (location != -1 && length >= 1)
  {
    Attributes = CFAttributedStringGetAttributes(a2, location, 0);
    if (Attributes)
    {
      v8 = Attributes;
      Count = CFDictionaryGetCount(Attributes);
      MEMORY[0x1EEE9AC00](Count);
      v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v11, v10);
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      if (Count >= 1)
      {
        do
        {
          v12 = CFStringsAreEqual(@"kQPQUPersonSpan", *v11);
          v13 = @"Person";
          if (v12 || (v14 = CFStringsAreEqual(@"kQPQULocationSpan", *v11), v13 = @"Location", v14) || (v15 = CFStringsAreEqual(@"kQPQUHolidaySpan", *v11), v13 = @"Holiday", v15))
          {
            CFArrayAppendValue(Mutable, v13);
          }

          ++v11;
          --Count;
        }

        while (Count);
      }
    }
  }

  return Mutable;
}

void QP::U2Parser::lexemeForTokenWithRange(QP::U2Parser *this@<X0>, const __CFString *a2@<X1>, CFRange a3@<0:X2, 8:X3>, const __CFString **a4@<X4>, __CFString *a5@<X5>, __CFString *a6@<X6>, void *a7@<X8>)
{
  length = a3.length;
  location = a3.location;
  v42 = *MEMORY[0x1E69E9840];
  v38 = a3;
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, buf);
  v33 = a4;
  v13 = *buf;
  v14 = *&buf[8];
  if (!*buf)
  {
LABEL_36:
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v29 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a2;
      _os_log_impl(&dword_1C6584000, v29, OS_LOG_TYPE_DEFAULT, "Unable to find a Kind* or Media lexeme for %@; falling back to Text", buf, 0xCu);
    }

    *v33 = kQPParseAttributeKeywordKey;
    std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const*&,CFRange &,0>();
  }

  v15 = length + location;
  v16 = 1;
  while (1)
  {
    v17 = *(v13 + 72);
    if (v17 <= location && *(v13 + 80) + v17 >= v15)
    {
      QP::getUTF8StringFromCFString(buf, a5);
      v19 = (v41 & 0x80u) == 0 ? buf : *buf;
      v20 = (v41 & 0x80u) == 0 ? v41 : *&buf[8];
      v21 = *(v13 + 23);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v22 = *v13;
        v21 = *(v13 + 8);
      }

      else
      {
        v22 = v13;
      }

      __p = v22;
      v36 = v21;
      if (std::string_view::starts_with[abi:ne200100](&__p, v19, v20))
      {
        QP::getUTF8StringFromCFString(&__p, a6);
        if ((v37 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v37 & 0x80u) == 0)
        {
          v24 = v37;
        }

        else
        {
          v24 = v36;
        }

        v25 = *(v13 + 23);
        if (v25 < 0)
        {
          v26 = *v13;
          v25 = *(v13 + 8);
        }

        else
        {
          v26 = v13;
        }

        v39[0] = v26;
        v39[1] = v25;
        v27 = std::string_view::ends_with[abi:ne200100](v39, p_p, v24);
        if (v37 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v27 = 0;
      }

      if (v41 < 0)
      {
        operator delete(*buf);
      }

      if (v27)
      {
        break;
      }
    }

    QP::Lexer::lexemeAtLocation(*(this + 12), v16, buf);
    v13 = *buf;
    v28 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    ++v16;
    v14 = v28;
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v30 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEBUG))
  {
    v31 = v13;
    if (*(v13 + 23) < 0)
    {
      v31 = *v13;
    }

    *buf = 138412546;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = v31;
    _os_log_debug_impl(&dword_1C6584000, v30, OS_LOG_TYPE_DEBUG, "Found matching lexeme for %@ with type %s", buf, 0x16u);
  }

  *a7 = v13;
  a7[1] = v14;
}

void sub_1C661444C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void QP::U2Parser::lexemeForArgMediaTypeWithRange(QP::U2Parser *this@<X0>, const __CFString *a2@<X1>, CFRange a3@<0:X2, 8:X3>, const __CFString **a4@<X4>, uint64_t *a5@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, buf);
  v7 = *buf;
  v8 = *&buf[8];
  v9 = 0;
  if (!*buf)
  {
    goto LABEL_30;
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v8;
    v13 = *(v7 + 72);
    if (v13 > a3.location || *(v7 + 80) + v13 < a3.length + a3.location)
    {
      goto LABEL_19;
    }

    if (std::string::starts_with[abi:ne200100](v7, "Media"))
    {
      break;
    }

    if (!v10)
    {
      if (std::string::starts_with[abi:ne200100](v7, "Kind"))
      {
        if (u2ParserLogger(void)::token != -1)
        {
          QP::U2Parser::lexemeForTokenWithRange();
        }

        v15 = u2ParserLogger(void)::log;
        if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEBUG))
        {
          v16 = v7;
          if (*(v7 + 23) < 0)
          {
            v16 = *v7;
          }

          *buf = 138412546;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_debug_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEBUG, "Found matching Kind lexeme for %@ with type %s", buf, 0x16u);
          if (v12)
          {
LABEL_14:
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else if (v12)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v10 = v7;
        v9 = v12;
        goto LABEL_19;
      }

      v10 = 0;
    }

LABEL_19:
    QP::Lexer::lexemeAtLocation(*(this + 12), v11, buf);
    v7 = *buf;
    v8 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    ++v11;
    if (!v7)
    {
      if (v10)
      {
        *a4 = kQPParseAttributeKindKey;
        *a5 = v10;
        a5[1] = v9;
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        return;
      }

LABEL_30:
      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v17 = u2ParserLogger(void)::log;
      if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(this + 10) + 48);
        *buf = 134218242;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = a2;
        _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Unable to find a Kind* or Media lexeme for %@; falling back to Text", buf, 0x16u);
      }

      *a4 = kQPParseAttributeKeywordKey;
      std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const*&,CFRange &,0>();
    }
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v19 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEBUG))
  {
    QP::U2Parser::lexemeForArgMediaTypeWithRange(v7, a2, v19);
  }

  *a4 = kQPParseAttributeMediaKey;
  *a5 = v7;
  a5[1] = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1C66147CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QP::U2Parser::parse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v4 = u2ParserLogger(void)::log;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v5 = os_signpost_id_make_with_pointer(u2ParserLogger(void)::log, *(*(a1 + 96) + 440));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "U2Parser.parse", &unk_1C664887A, buf, 2u);
    }
  }

  QP::U2Parser::parseInternal(a1);
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v7 = u2ParserLogger(void)::log;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v8 = os_signpost_id_make_with_pointer(u2ParserLogger(void)::log, *(*(a1 + 96) + 440));
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v7, OS_SIGNPOST_INTERVAL_END, v9, "U2Parser.parse", &unk_1C664887A, v10, 2u);
    }
  }
}

void QP::U2Parser::parseInternal(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v498 = v4;
  v5 = v1;
  v649 = *MEMORY[0x1E69E9840];
  memset(&v647[4], 0, 48);
  v6 = *&v647[16];
  *(v1 + 4) = *v647;
  *v1 = 0;
  *(v1 + 20) = v6;
  *(v1 + 36) = *&v647[32];
  *(v1 + 52) = *&v647[48];
  v7 = (v1 + 56);
  if (*(v1 + 79) < 0)
  {
    operator delete(v7->__r_.__value_.__l.__data_);
  }

  v7->__r_.__value_.__r.__words[0] = 0;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v8 = mach_absolute_time();
  v9 = *(v5 + 152);
  v510 = (v5 + 152);
  v506 = v5;
  if (v9)
  {
    v10 = *(*(v5 + 96) + 440);
    if (v10)
    {
      if (CFStringsAreEqual(v9, v10) && (*(*(v5 + 80) + 37) & 1) == 0 && *(v5 + 216) == 1)
      {
        if (u2ParserLogger(void)::token != -1)
        {
          QP::isSupportedQULanguage();
        }

        v11 = u2ParserLogger(void)::log;
        if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(v5 + 80) + 48);
          *v647 = 134217984;
          *&v647[4] = v12;
          _os_log_impl(&dword_1C6584000, v11, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] lexer string and current string same not parsing", v647, 0xCu);
        }

        return;
      }
    }
  }

  QP::U2Parser::clear(v5);
  nlp::CFScopedPtr<__CFString const*>::reset(v510, 0);
  v13 = *(*(v5 + 96) + 440);
  if (v13)
  {
    v14 = CFRetain(v13);
    nlp::CFScopedPtr<__CFString const*>::reset(v510, v14);
  }

  v504 = v5 + 80;
  v15 = *(*(v5 + 80) + 112);
  v518 = v15;
  if (!v15)
  {
    *v5 = 2;
    if (*(v5 + 79) < 0)
    {
      *(v5 + 64) = 13;
      v7 = *(v5 + 56);
    }

    else
    {
      *(v5 + 79) = 13;
    }

    strcpy(v7, "no locale set");
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      QP::U2Parser::parseInternal();
    }

    goto LABEL_758;
  }

  if ((QP::isSupportedQULanguage(v15, v16) & 1) == 0)
  {
    *v5 = 2;
    if (*(v5 + 79) < 0)
    {
      *(v5 + 64) = 20;
      v7 = *(v5 + 56);
    }

    else
    {
      *(v5 + 79) = 20;
    }

    strcpy(v7, "unsupported language");
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    v21 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*v504 + 48);
      v23 = [(QP *)v518 languageCode];
      *v647 = 134218242;
      *&v647[4] = v22;
      *&v647[12] = 2112;
      *&v647[14] = v23;
      _os_log_impl(&dword_1C6584000, v21, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Unsupported QU language - (%@)", v647, 0x16u);
    }

    goto LABEL_758;
  }

  theDict = v3;
  v485 = v7;
  v490 = v8;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v17 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    QP::U2Parser::parseInternal();
  }

  v18 = *(*v504 + 8);
  v483 = v18;
  v20 = v18 != 14 && v18 != 10;
  v481 = v20;
  if (*v510)
  {
    Length = CFStringGetLength(*v510);
  }

  else
  {
    Length = 0;
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v24 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*v504 + 48);
    v26 = *(*v504 + 184);
    v27 = *(*v504 + 8);
    *v647 = 134218754;
    *&v647[4] = v25;
    *&v647[12] = 2112;
    *&v647[14] = v26;
    *&v647[22] = 2048;
    *&v647[24] = v27;
    *&v647[32] = 2048;
    *&v647[34] = Length;
    _os_log_impl(&dword_1C6584000, v24, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Starting U2 parse - identifier=%@ context=%ld queryLen=%ld", v647, 0x2Au);
  }

  if (*(*v504 + 35))
  {
    v28 = 0xFFFFFFFFLL;
  }

  else
  {
    v28 = *(*v504 + 44);
    if (!v28)
    {
      if (Length <= 2)
      {
        v28 = 0;
      }

      else
      {
        v28 = 1000;
      }
    }
  }

  v29 = [(QP *)v518 localeIdentifier];
  v30 = [MEMORY[0x1E69C6A68] sharedInstance];
  log = [v30 getModelForLocale:v518 withTimeoutMS:v28];

  v31 = mach_absolute_time();
  v32 = v506;
  v33 = v8;
  if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
  {
    QP::U2Parser::parseInternal();
    v32 = v506;
    v33 = v8;
  }

  v482 = (v31 - v33) * QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / dword_1EDAC3FEC;
  *(v32 + 2) = v482;
  v34 = objc_alloc(MEMORY[0x1E695DF58]);
  v35 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v36 = [v35 languageCode];
  v495 = [v34 initWithLocaleIdentifier:v36];

  if (log)
  {
    v493 = v29;
    v37 = v506;
    goto LABEL_58;
  }

  v41 = *MEMORY[0x1E695D9B0];
  v42 = [(QP *)v518 objectForKey:*MEMORY[0x1E695D9B0]];
  v43 = [v495 objectForKey:v41];
  v44 = [v42 isEqualToString:v43];

  if (!v44)
  {
    v37 = v506;
LABEL_95:
    *v37 = 2;
    v67 = [MEMORY[0x1E69C6A68] sharedInstance];
    v68 = [v67 loadError];
    v69 = [v68 description];
    v70 = v69;
    v71 = [v69 UTF8String];
    if (v71)
    {
      v72 = v71;
    }

    else
    {
      v72 = "timeout";
    }

    std::string::__assign_external(v485, v72);

    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    log = u2ParserLogger(void)::log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v73 = *(*v504 + 48);
      v74 = *(*v504 + 44);
      v75 = [MEMORY[0x1E69C6A68] sharedInstance];
      v76 = [v75 loadError];
      *v647 = 134219010;
      *&v647[4] = v73;
      *&v647[12] = 2112;
      *&v647[14] = v29;
      *&v647[22] = 1024;
      *&v647[24] = v28;
      *&v647[28] = 1024;
      *&v647[30] = v74;
      *&v647[34] = 2112;
      *&v647[36] = v76;
      _os_log_error_impl(&dword_1C6584000, log, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Unable to load %@ U2 model with timeout:%dms embedding generation timeout: %dms lastError:%@", v647, 0x2Cu);
    }

    goto LABEL_757;
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v45 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(*v504 + 48);
    v47 = [(QP *)v518 localeIdentifier];
    v48 = [v495 localeIdentifier];
    *v647 = 134218498;
    *&v647[4] = v46;
    *&v647[12] = 2112;
    *&v647[14] = v47;
    *&v647[22] = 2112;
    *&v647[24] = v48;
    _os_log_impl(&dword_1C6584000, v45, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Failed to load with default system locale-(%@). Trying with siri locale-(%@)", v647, 0x20u);
  }

  v49 = [MEMORY[0x1E69C6A68] sharedInstance];
  [v49 releaseModel];

  v493 = [v495 localeIdentifier];

  v50 = [MEMORY[0x1E69C6A68] sharedInstance];
  log = [v50 getModelForLocale:v495 withTimeoutMS:v28];

  v29 = v493;
  v37 = v506;
  if (!log)
  {
    goto LABEL_95;
  }

LABEL_58:
  if (!Length)
  {
    *v37 = 1;
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v38 = u2ParserLogger(void)::log;
    if (!os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_756;
    }

    v51 = *(*v504 + 48);
    *v647 = 134217984;
    *&v647[4] = v51;
    v40 = "[QPNLU][qid=%ld] Skipping parse for empty input";
LABEL_75:
    _os_log_impl(&dword_1C6584000, v38, OS_LOG_TYPE_INFO, v40, v647, 0xCu);
    goto LABEL_756;
  }

  if (QP::Lexer::containsLegacyQuerySyntax(*(v37 + 12)))
  {
    *v37 = 1;
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v38 = u2ParserLogger(void)::log;
    if (!os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_756;
    }

    v39 = *(*v504 + 48);
    *v647 = 134217984;
    *&v647[4] = v39;
    v40 = "[QPNLU][qid=%ld] Skipping parse for legacy query syntax input";
    goto LABEL_75;
  }

  v52 = [MEMORY[0x1E695DF90] dictionary];
  v478 = objc_alloc_init(MEMORY[0x1E69C6A70]);
  if ((*(*v504 + 66) & 1) != 0 || *(*v504 + 69) == 1)
  {
    v514 = v52;
    v497 = mach_absolute_time();
    v53 = *(v37 + 19);
    v54 = *(v37 + 10);
    v55 = *(v37 + 11);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = v53;
    v637 = 0;
    v638 = &v637;
    v639 = 0x3032000000;
    v640 = __Block_byref_object_copy__599;
    v641 = __Block_byref_object_dispose__600;
    v642 = 0;
    *&__s = 0;
    *(&__s + 1) = &__s;
    *&v622 = 0x3032000000;
    *(&v622 + 1) = __Block_byref_object_copy__599;
    *&v623 = __Block_byref_object_dispose__600;
    *(&v623 + 1) = 0;
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v57 = u2ParserLogger(void)::log;
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v58 = os_signpost_id_make_with_pointer(u2ParserLogger(void)::log, v56);
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v59 = v58;
      if (os_signpost_enabled(v57))
      {
        *v647 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v57, OS_SIGNPOST_INTERVAL_BEGIN, v59, "U2Parser.ECR", &unk_1C664887A, v647, 2u);
      }
    }

    v60 = dispatch_semaphore_create(0);
    v61 = qos_class_self();
    v62 = dispatch_get_global_queue(v61, 0);
    *v647 = MEMORY[0x1E69E9820];
    *&v647[8] = 3321888768;
    *&v647[16] = ___ZN2QPL31allVisualIdentifiersWithTimeoutEP8NSStringNSt3__110shared_ptrINS_19ParserConfigurationEEEPU15__autoreleasingP7NSErrorPK14__CFDictionary_block_invoke;
    *&v647[24] = &unk_1F45E9968;
    *&v648 = v54;
    *(&v648 + 1) = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v647[48] = &v637;
    v63 = v56;
    *&v647[32] = v63;
    *&v647[56] = &__s;
    v64 = v60;
    *&v647[40] = v64;
    dispatch_async(v62, v647);

    LODWORD(valuePtr.location) = 0;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"kMDQueryOptionColdStartPhotosECRTimeout");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }
    }

    if (*(v54 + 35))
    {
      v66 = -1;
    }

    else
    {
      if (LODWORD(valuePtr.location))
      {
        v77 = 1000000 * LODWORD(valuePtr.location);
      }

      else
      {
        v77 = 100000000;
      }

      v66 = dispatch_time(0, v77);
    }

    if (dispatch_semaphore_wait(v64, v66))
    {
      v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ECR timed out after %dms", 200];
      v79 = MEMORY[0x1E696ABC0];
      *v632 = *MEMORY[0x1E696A578];
      *&v643 = v78;
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:v632 count:1];
      v81 = [v79 errorWithDomain:@"com.apple.QueryParser.QueryUnderstandingError" code:-2002 userInfo:v80];
      v82 = *(*(&__s + 1) + 40);
      *(*(&__s + 1) + 40) = v81;
    }

    v83 = *(*(&__s + 1) + 40);
    v84 = v83;
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v85 = u2ParserLogger(void)::log;
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v86 = os_signpost_id_make_with_pointer(u2ParserLogger(void)::log, v63);
    if (v86 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v87 = v86;
      if (os_signpost_enabled(v85))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v85, OS_SIGNPOST_INTERVAL_END, v87, "U2Parser.ECR", &unk_1C664887A, buf, 2u);
      }
    }

    v88 = *(v638 + 5);
    if (*(&v648 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v648 + 1));
    }

    _Block_object_dispose(&__s, 8);
    _Block_object_dispose(&v637, 8);

    ptr = v83;
    v519 = [v88 mutableCopy];

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    v496 = mach_absolute_time();
    if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
    {
      QP::U2Parser::parseInternal();
    }

    v487 = QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo;
    v491 = dword_1EDAC3FEC;
    if (ptr)
    {
      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v89 = u2ParserLogger(void)::log;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        QP::U2Parser::parseInternal();
      }

      v468 = 1;
    }

    else
    {
      v468 = 0;
    }

    v90 = [MEMORY[0x1E695DF70] array];
    v619 = 0u;
    v620 = 0u;
    v617 = 0u;
    v618 = 0u;
    v91 = [v519 allKeys];
    obj = v91;
    v92 = [v91 countByEnumeratingWithState:&v617 objects:v636 count:16];
    if (v92)
    {
      v511 = *v618;
      do
      {
        v515 = v92;
        for (i = 0; i != v515; ++i)
        {
          if (*v618 != v511)
          {
            objc_enumerationMutation(obj);
          }

          v94 = *(*(&v617 + 1) + 8 * i);
          v95 = [v519 objectForKeyedSubscript:v94];
          v96 = [v95 count] == 0;

          if (!v96)
          {
            v97 = *v510;
            v98 = 0;
            do
            {
              v100 = [v97 rangeOfString:v94 options:129 range:v98 locale:{objc_msgSend(v97, "length") - v98, v518}];
              if (v100 == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              v101 = v99;
              v102 = [v97 substringWithRange:{v100, v99}];
              if (QP::isAllowedPeopleSpanToken(v102, v103))
              {
                v104 = [MEMORY[0x1E696B098] valueWithRange:{v100, v101}];
                [v90 addObject:v104];
              }

              if (([(QP *)v102 isEqualToString:v94]& 1) == 0)
              {
                v105 = [v519 objectForKeyedSubscript:v94];
                [v519 setObject:v105 forKeyedSubscript:v102];
              }

              v98 += v101 + v100;
            }

            while (v98 < [v97 length]);
          }
        }

        v91 = obj;
        v92 = [obj countByEnumeratingWithState:&v617 objects:v636 count:16];
      }

      while (v92);
    }

    if (*(*v504 + 240) || (*(*v504 + 66) & 1) == 0)
    {
      PeopleNameRangesFromPersonLexemes = QP::U2Parser::createPeopleNameRangesFromPersonLexemes(v506);
      [v478 setPeopleNameRanges:PeopleNameRangesFromPersonLexemes];
      CFRelease(PeopleNameRangesFromPersonLexemes);
    }

    else
    {
      [v478 setPeopleNameRanges:v90];
    }

    v472 = 1;
    v471 = (v496 - v497) * v487 / v491;
  }

  else
  {
    v107 = QP::U2Parser::createPeopleNameRangesFromPersonLexemes(v37);
    LocationNameRangesFromLocationLexemes = QP::U2Parser::createLocationNameRangesFromLocationLexemes(v37);
    [v478 setPeopleNameRanges:v107];
    [v478 setLocationNameRanges:LocationNameRangesFromLocationLexemes];
    CFRelease(v107);
    CFRelease(LocationNameRangesFromLocationLexemes);
    v468 = 0;
    v472 = 0;
    v471 = 0;
    v519 = v52;
  }

  v109 = *v510;
  v110 = v478;
  v111 = [MEMORY[0x1E696AD60] string];
  objc_msgSend_appendFormat_(v111);
  v112 = [v110 peopleNameRanges];
  v113 = [v112 count] == 0;

  if (v113)
  {
    objc_msgSend_appendFormat_(v111);
  }

  else
  {
    v623 = 0u;
    v624 = 0u;
    __s = 0u;
    v622 = 0u;
    v114 = [v110 peopleNameRanges];
    v115 = [v114 countByEnumeratingWithState:&__s objects:v647 count:16];
    if (v115)
    {
      v116 = *v622;
      do
      {
        for (j = 0; j != v115; ++j)
        {
          if (*v622 != v116)
          {
            objc_enumerationMutation(v114);
          }

          v118 = *(*(&__s + 1) + 8 * j);
          [v118 rangeValue];
          objc_msgSend_appendFormat_(v111, v118);
        }

        v115 = [v114 countByEnumeratingWithState:&__s objects:v647 count:16];
      }

      while (v115);
    }
  }

  objc_msgSend_appendFormat_(v111);
  v119 = [v110 locationNameRanges];
  v120 = [v119 count] == 0;

  if (v120)
  {
    objc_msgSend_appendFormat_(v111);
  }

  else
  {
    v645 = 0u;
    v646 = 0u;
    v643 = 0u;
    v644 = 0u;
    v121 = [v110 locationNameRanges];
    v122 = [v121 countByEnumeratingWithState:&v643 objects:&v637 count:16];
    if (v122)
    {
      v123 = *v644;
      do
      {
        for (k = 0; k != v122; ++k)
        {
          if (*v644 != v123)
          {
            objc_enumerationMutation(v121);
          }

          v125 = [*(*(&v643 + 1) + 8 * k) rangeValue];
          v127 = [v109 substringWithRange:{v125, v126}];
          objc_msgSend_appendFormat_(v111, v127);
        }

        v122 = [v121 countByEnumeratingWithState:&v643 objects:&v637 count:16];
      }

      while (v122);
    }
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v128 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
  {
    v129 = *(*v504 + 48);
    *v647 = 134218242;
    *&v647[4] = v129;
    *&v647[12] = 2112;
    *&v647[14] = v111;
    _os_log_impl(&dword_1C6584000, v128, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] QU model input spans\n%@", v647, 0x16u);
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v130 = v506;
  v131 = u2ParserLogger(void)::log;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
    v130 = v506;
  }

  v132 = u2ParserLogger(void)::log;
  v133 = os_signpost_id_make_with_pointer(v132, *(*(v130 + 12) + 440));

  if (v133 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
  {
    *v647 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6584000, v131, OS_SIGNPOST_INTERVAL_BEGIN, v133, "U2Parser.inference", &unk_1C664887A, v647, 2u);
  }

  if (*(*v504 + 8) == 2)
  {
    v134 = &unk_1F45FA388;
  }

  else if (CFEqual(*(*v504 + 192), @"com.apple.MobileSMS"))
  {
    v134 = &unk_1F45FA3A0;
  }

  else if (*(*v504 + 8) == 10)
  {
    v134 = &unk_1F45FA3B8;
  }

  else
  {
    v134 = &unk_1F45FA370;
  }

  v135 = *v510;
  v136 = *(*v504 + 48);
  v137 = *(*v504 + 36);
  v138 = *(*v504 + 44);
  v480 = log;
  v479 = v110;
  if (CFStringHasSuffix(v135, @"."))
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v139 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v647 = 134217984;
      *&v647[4] = v136;
      _os_log_impl(&dword_1C6584000, v139, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Stripping trailing '.' from input string", v647, 0xCu);
    }

    v650.length = CFStringGetLength(v135) - 1;
    v650.location = 0;
    v135 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v135, v650);
  }

  else
  {
    CFRetain(v135);
  }

  v637 = 0;
  v638 = &v637;
  v639 = 0x3032000000;
  v640 = __Block_byref_object_copy__599;
  v641 = __Block_byref_object_dispose__600;
  v642 = 0;
  *&__s = 0;
  *(&__s + 1) = &__s;
  *&v622 = 0x3032000000;
  *(&v622 + 1) = __Block_byref_object_copy__599;
  *&v623 = __Block_byref_object_dispose__600;
  *(&v623 + 1) = 0;
  v140 = dispatch_group_create();
  dispatch_group_enter(v140);
  *v647 = MEMORY[0x1E69E9820];
  *&v647[8] = 3221225472;
  *&v647[16] = ___ZN2QPL26u2UnderstandingWithTimeoutEPU31objcproto20QUUnderstandingModel11objc_objectPK10__CFStringlP7QUSpansP8NSNumberbjPU15__autoreleasingP7NSError_block_invoke;
  *&v647[24] = &unk_1E8267FA0;
  *&v647[56] = v135;
  *&v648 = v136;
  *&v647[40] = &__s;
  *&v647[48] = &v637;
  v141 = v140;
  *&v647[32] = v141;
  [v480 getUnderstandingForQueryString:v135 queryID:v136 spans:v479 intentHint:v134 withCompletionHandler:v647];
  if (v138)
  {
    v142 = v138;
  }

  else
  {
    v142 = 100;
  }

  v143 = dispatch_time(0, 1000000 * v142);
  if (v137)
  {
    v144 = -1;
  }

  else
  {
    v144 = v143;
  }

  if (dispatch_group_wait(v141, v144))
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v145 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      QP::U2Parser::parseInternal(v136, v145, v146, v147, v148, v149, v150, v151);
    }

    v152 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.QueryParser.QueryUnderstandingError" code:-2001 userInfo:0];
    v153 = v152;
    if (atomic_fetch_add(QP::sQUInferenceTimeoutCount, 1u) == 25)
    {
      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v154 = u2ParserLogger(void)::log;
      if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_FAULT))
      {
        QP::U2Parser::parseInternal(v136, v154);
      }
    }
  }

  else
  {
    v152 = *(*(&__s + 1) + 40);
    if (v152)
    {
      v155 = v152;
    }
  }

  v512 = *(v638 + 5);

  _Block_object_dispose(&__s, 8);
  _Block_object_dispose(&v637, 8);

  v156 = v152;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v157 = u2ParserLogger(void)::log;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v158 = u2ParserLogger(void)::log;
  v159 = os_signpost_id_make_with_pointer(v158, *(*(v506 + 12) + 440));

  if (v159 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v157))
  {
    *v647 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6584000, v157, OS_SIGNPOST_INTERVAL_END, v159, "U2Parser.inference", &unk_1C664887A, v647, 2u);
  }

  v160 = v512;
  if (!v512)
  {
    *v506 = 3;
    v164 = [v156 description];
    v165 = v164;
    v166 = [v164 UTF8String];
    if (v166)
    {
      v167 = v166;
    }

    else
    {
      v167 = "timeout";
    }

    std::string::__assign_external(v485, v167);

    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v168 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      QP::U2Parser::parseInternal();
    }

    v169 = [v156 domain];
    if ([v169 isEqualToString:@"com.apple.QueryParser.QueryUnderstandingError"])
    {
      v170 = [v156 code] == -2001;

      if (v170)
      {
        goto LABEL_755;
      }
    }

    else
    {
    }

    v171 = [MEMORY[0x1E69C6A68] sharedInstance];
    [v171 releaseModel];

    v172 = [MEMORY[0x1E69C6A68] sharedInstance];
    v173 = [v172 getModelForLocale:v518 withTimeoutMS:0];
    goto LABEL_754;
  }

  *(v506 + 3) = [v512 predictionTime];
  *(v506 + 5) = [v512 embeddingsTime];
  v161 = *(v506 + 10);
  if ((*(v161 + 8) | 8) != 0xA)
  {
    if (!CFEqual(*(v161 + 192), @"com.apple.MobileSMS"))
    {
      goto LABEL_240;
    }

    v161 = *v504;
  }

  if (*(v161 + 32) == 1)
  {
    v162 = [(QP *)v518 languageCode];
    v163 = [v162 isEqualToString:@"ko"];

    if (v163)
    {
      v160 = v512;
    }

    else
    {
      v174 = QP::gluedU2Output(v512);

      v160 = v174;
    }
  }

LABEL_240:
  v175 = [v160 tokens];
  v513 = v160;
  v176 = [v175 count];
  v177 = [v160 argIds];
  LOBYTE(v176) = v176 == [v177 count];

  if ((v176 & 1) == 0)
  {
    *v506 = 4;
    v203 = v485;
    if (*(v506 + 79) < 0)
    {
      *(v506 + 8) = 17;
      v203 = *(v506 + 7);
    }

    else
    {
      *(v506 + 79) = 17;
    }

    strcpy(v203, "Invalid U2 output");
    v204 = u2ParserLogger(v178);
    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
    {
      QP::U2Parser::parseInternal();
    }

    goto LABEL_753;
  }

  v638 = 0;
  v637 = 0;
  v639 = 0;
  alloc = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], *v510, @" ");
  v180 = [v513 intentId];
  theArray = ArrayBySeparatingStrings;
  v475 = [v180 intValue];

  __s = 0uLL;
  *&v622 = 0;
  v181 = intentLabel();
  std::string::basic_string[abi:ne200100]<0>(&__s, v181);
  v182 = [v513 safetyScore];
  [v182 floatValue];
  v184 = v183;

  v185 = [v480 modelMetadata];
  v186 = [v185 objectForKeyedSubscript:@"safety_threshold"];
  [v186 floatValue];
  v188 = v187;

  LanguageCode = getLanguageCode(*(*v504 + 112));
  v190 = CFStringsAreEqual(LanguageCode, @"en");
  v192 = v184 >= v188 && v190;
  v193 = MEMORY[0x1E695DF70];
  v194 = [v513 tokens];
  v461 = v192;
  v476 = [v193 arrayWithCapacity:{objc_msgSend(v194, "count")}];

  v643 = 0uLL;
  *&v644 = 0;
  v195 = [v513 tokens];
  v492 = [v195 count];

  cf = QP::U2Parser::createAnnotations(v506);
  v196 = v513;
  if (*(*v504 + 66) == 1)
  {
    if (v492 < 1)
    {
LABEL_690:
      v409 = 0;
      goto LABEL_691;
    }

    v197 = 0;
    while (1)
    {
      v198 = [v196 tokens];
      v199 = [v198 objectAtIndexedSubscript:v197];

      if (!QP::isAllowedPeopleSpanToken(v199, v200))
      {
        break;
      }

      v201 = [v519 objectForKeyedSubscript:v199];
      v202 = [v201 count] == 0;

      if (v202)
      {
        break;
      }

      ++v197;
      v196 = v513;
      if (v492 == v197)
      {
        v464 = 1;
        goto LABEL_262;
      }
    }

    v464 = 0;
    v196 = v513;
  }

  else
  {
    v464 = 0;
  }

LABEL_262:
  if (v492 < 1)
  {
    goto LABEL_690;
  }

  v497 = 0;
  v458 = 0;
  v463 = 0;
  v466 = 0;
  v516 = 0;
  v459 = v475 & 0xFFFFFFFD;
  v467 = -1;
  v465 = -1;
  while (1)
  {
    obja = [MEMORY[0x1E695DF90] dictionary];
    v205 = [v513 tokens];
    ptra = [v205 objectAtIndexedSubscript:v516];

    v206 = [v513 tokenRanges];
    v486 = [v206 objectAtIndexedSubscript:v516];

    v207 = [v486 rangeValue];
    v209 = v207;
    valuePtr.location = 0;
    if (v207 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v208 = 0;
      valuePtr.location = -1;
    }

    else
    {
      valuePtr.location = v207;
    }

    valuePtr.length = v208;
    v210 = [v513 argIdsForTokens];
    v211 = [v210 objectAtIndexedSubscript:v516];
    v212 = [v211 firstObject];
    LODWORD(v496) = [v212 intValue];

    [obja setObject:ptra forKeyedSubscript:kQPQUOutputTokenKey];
    v213 = [v513 argIdsForTokens];
    v214 = [v213 objectAtIndexedSubscript:v516];
    [obja setObject:v214 forKeyedSubscript:kQPQUOutputTokenArgIdsKey];

    v215 = [MEMORY[0x1E695DF70] array];
    v614 = 0u;
    v615 = 0u;
    v612 = 0u;
    v613 = 0u;
    v216 = [v513 argIdsForTokens];
    v217 = [v216 objectAtIndexedSubscript:v516];

    v218 = [v217 countByEnumeratingWithState:&v612 objects:v635 count:16];
    if (v218)
    {
      v219 = *v613;
      do
      {
        for (m = 0; m != v218; ++m)
        {
          if (*v613 != v219)
          {
            objc_enumerationMutation(v217);
          }

          v221 = MEMORY[0x1E696AEC0];
          [*(*(&v612 + 1) + 8 * m) intValue];
          v222 = [v221 stringWithUTF8String:intentArgLabel()];
          [v215 addObject:v222];
        }

        v218 = [v217 countByEnumeratingWithState:&v612 objects:v635 count:16];
      }

      while (v218);
    }

    v223 = [v215 copy];
    [obja setObject:v223 forKeyedSubscript:kQPQUOutputTokenArgLabelsKey];

    v224 = [v513 argScoresForTokens];
    v225 = [v224 objectAtIndexedSubscript:v516];
    [obja setObject:v225 forKeyedSubscript:kQPQUOutputTokenArgScoresKey];

    v226 = [obja setObject:v486 forKeyedSubscript:kQPQUOutputTokenRangeKey];
    TokenOutputSpans = QP::U2Parser::createTokenOutputSpans(v226, cf, valuePtr);
    [obja setObject:TokenOutputSpans forKeyedSubscript:kQPQUOutputSpanTypesKey];
    CFRelease(TokenOutputSpans);
    if (v209 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v516 > v467)
    {
      if (!QP::isSupportedECRLocale(v518, v228))
      {
        goto LABEL_302;
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 2, 0.3) & 1) != 0 || (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 3, 0.3))
      {
        HasArgIdAsTopPredictionOrWithScore = 1;
      }

      else
      {
        HasArgIdAsTopPredictionOrWithScore = QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 4, 0.3);
      }

      if (*(*v504 + 68) == 1)
      {
        v234 = QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 6, 0.3);
      }

      else
      {
        v234 = 0;
      }

      v235 = 0;
      if (((HasArgIdAsTopPredictionOrWithScore | v234) & 1) == 0 && v516 == v492 - 1)
      {
        v236 = +[QPEntityResolutionPrefixCache sharedCache];
        v235 = [v236 hasPreviouslyGroundedPrefixOfToken:ptra];
      }

      v237 = [v519 objectForKeyedSubscript:ptra];

      if ((v464 & 1) == 0)
      {
        v239 = *v504;
        if (*(*v504 + 69) != 1)
        {
          if (((v234 | v235 | HasArgIdAsTopPredictionOrWithScore) & 1) == 0)
          {
            goto LABEL_302;
          }

LABEL_297:
          v240 = *(v239 + 68);
          if (HasArgIdAsTopPredictionOrWithScore & 1 | ((v240 & v234 & 1) == 0))
          {
            v241 = (v240 & 1) == 0;
          }

          else
          {
            v241 = 2;
          }

          if (v237)
          {
            v477 = [v519 objectForKeyedSubscript:ptra];
            v469 = 0;
            v470 = 0;
            v474 = 0;
            v242 = [(__CFDictionary *)v477 count];
          }

          else
          {
            v271 = u2ParserLogger(v238);
            v272 = u2ParserLogger(v271);
            v273 = os_signpost_id_make_with_pointer(v272, ptra);

            if (v273 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v271))
            {
              *v647 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C6584000, v271, OS_SIGNPOST_INTERVAL_BEGIN, v273, "U2Parser.ECR", &unk_1C664887A, v647, 2u);
            }

            v274 = mach_absolute_time();
            v275 = *(v506 + 11);
            v610 = *(v506 + 10);
            v611 = v275;
            if (v275)
            {
              atomic_fetch_add_explicit(&v275->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v609 = 0;
            v469 = QP::visualIdentifiersWithTimeout(ptra, v241, v481, &v610, &v609, theDict);
            v276 = v609;
            if (v611)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v611);
            }

            if (v469)
            {
              v277 = [v469 objectForKey:@"visualIdentifier"];
              v278 = [v469 objectForKey:@"personNames"];
              v470 = [v469 objectForKey:@"personEmails"];
              v474 = v278;
              v477 = v277;
            }

            else
            {
              v470 = 0;
              v474 = 0;
              v477 = 0;
            }

            v291 = QPTimingNanosecondsSinceAbsoluteTime(v274);
            v292 = u2ParserLogger(v291);
            v293 = u2ParserLogger(v292);
            v294 = os_signpost_id_make_with_pointer(v293, ptra);

            if (v294 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v292))
            {
              *v647 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C6584000, v292, OS_SIGNPOST_INTERVAL_END, v294, "U2Parser.ECR", &unk_1C664887A, v647, 2u);
            }

            if (v276)
            {
              v296 = u2ParserLogger(v295);
              if (os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
              {
                v406 = *(*v504 + 48);
                *v647 = 134218242;
                *&v647[4] = v406;
                *&v647[12] = 2112;
                *&v647[14] = v276;
                _os_log_error_impl(&dword_1C6584000, v296, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Unable to lookup visual identifiers: %@", v647, 0x16u);
              }

              ++v468;
              if (atomic_fetch_add(QP::sQUECRErrorCount, 1u) == 25)
              {
                v298 = u2ParserLogger(v297);
                if (os_log_type_enabled(v298, OS_LOG_TYPE_FAULT))
                {
                  v407 = *(*v504 + 48);
                  *v647 = 134218240;
                  *&v647[4] = v407;
                  *&v647[12] = 1024;
                  *&v647[14] = 25;
                  _os_log_fault_impl(&dword_1C6584000, v298, OS_LOG_TYPE_FAULT, "[QPNLU][qid=%ld] [Recurring Failure] ECR failed %d times", v647, 0x12u);
                }
              }
            }

            ++v472;
            v471 += v291;
            v242 = [(__CFDictionary *)v477 count];
          }

          if (v242 || [(__CFArray *)v474 count])
          {
            [v519 setObject:v477 forKeyedSubscript:ptra];
            v299 = +[QPEntityResolutionPrefixCache sharedCache];
            [v299 cacheGroundedToken:ptra];

            v301 = u2ParserLogger(v300);
            if (os_log_type_enabled(v301, OS_LOG_TYPE_DEBUG))
            {
              QP::U2Parser::parseInternal();
            }

            if ((v235 & 1) == 0)
            {
              goto LABEL_303;
            }

            [obja setObject:&unk_1F45F8E58 forKeyedSubscript:kQPQUOutputTokenArgIdsKey];
            v302 = [MEMORY[0x1E696AEC0] stringWithUTF8String:intentArgLabel()];
            v633 = v302;
            v303 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v633 count:1];
            [obja setObject:v303 forKeyedSubscript:kQPQUOutputTokenArgLabelsKey];

            [obja setObject:&unk_1F45F8E70 forKeyedSubscript:kQPQUOutputTokenArgScoresKey];
            v304 = [v513 argIds];
            v305 = [v304 objectAtIndexedSubscript:v516];
            [v305 intValue];

            v307 = u2ParserLogger(v306);
            v458 = 1;
            if (os_log_type_enabled(v307, OS_LOG_TYPE_INFO))
            {
              v308 = *(*v504 + 48);
              v309 = [MEMORY[0x1E696AEC0] stringWithUTF8String:intentArgLabel()];
              *v647 = 134218498;
              *&v647[4] = v308;
              *&v647[12] = 2112;
              *&v647[14] = ptra;
              *&v647[22] = 2112;
              *&v647[24] = v309;
              _os_log_impl(&dword_1C6584000, v307, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] boosting ARG_PERSON labeling for %@ originally labeled %@", v647, 0x20u);

              v458 = 1;
            }
          }

          else
          {
            if ((v235 & 1) == 0)
            {
              goto LABEL_303;
            }

            v307 = u2ParserLogger(0);
            if (os_log_type_enabled(v307, OS_LOG_TYPE_DEBUG))
            {
              v408 = *(*v504 + 48);
              *v647 = 134218242;
              *&v647[4] = v408;
              *&v647[12] = 2112;
              *&v647[14] = ptra;
              _os_log_debug_impl(&dword_1C6584000, v307, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] Not boosting ARG_PERSON labeling for %@", v647, 0x16u);
            }
          }

          goto LABEL_303;
        }
      }

      if ((v237 != 0) | (v234 | HasArgIdAsTopPredictionOrWithScore | v235) & 1)
      {
        v239 = *v504;
        goto LABEL_297;
      }

LABEL_302:
      v469 = 0;
      v470 = 0;
      v474 = 0;
      v477 = 0;
LABEL_303:
      *(v506 + 4) = v471;
      *(v506 + 12) = v472;
      *(v506 + 13) = v468;
      *v647 = 0;
      *&v647[8] = v647;
      *&v647[16] = 0x4012000000;
      *&v647[24] = __Block_byref_object_copy__17;
      *&v647[32] = __Block_byref_object_dispose__17;
      *&v647[40] = &unk_1C664F151;
      *&v647[48] = 0;
      *&v647[56] = 0;
      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 8, 0.2))
      {
        v243 = v516;
        if (v516 <= v465 + v466)
        {
          v244 = v465;
        }

        else
        {
          v244 = v516;
        }

        v245 = v516 + 1;
        if (v516 + 1 < v492)
        {
          do
          {
            if ((QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v245, 8, 0.2) & 1) == 0 && !QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v245, 0, 0.97))
            {
              break;
            }

            ++v245;
          }

          while (v492 != v245);
          v243 = v245 - 1;
        }

        v246 = [v513 tokenRanges];
        v247 = [v246 objectAtIndexedSubscript:v244];
        v248 = [v247 rangeValue];

        v249 = [v513 tokenRanges];
        v250 = [v249 objectAtIndexedSubscript:v243];
        v488 = [v250 rangeValue];
        v252 = v251;

        if (v248 != -1)
        {
          v254 = *v498;
          v253 = v498[1];
          if (v253 != *v498)
          {
            do
            {
              v255 = *v254;
              if (*v254)
              {
                v608[0] = MEMORY[0x1E69E9820];
                v608[1] = 3221225472;
                v608[2] = ___ZN2QP8U2Parser13parseInternalERNSt3__16vectorINS1_10shared_ptrINS_5ParseEEENS1_9allocatorIS5_EEEEPK14__CFDictionary_block_invoke;
                v608[3] = &unk_1E8267F78;
                v608[6] = v248;
                v608[7] = v252 - v248 + v488;
                v608[5] = v506;
                v608[4] = v647;
                QP::Parse::enumerateParseAttributes(v255, v608);
              }

              v254 += 2;
            }

            while (v254 != v253);
          }

          v256 = *(*&v647[8] + 48);
          if (!v256)
          {
            v257 = kQPParseAttributeKeywordKey;
            *&v632[8] = 0;
            *v632 = 0;
            QP::Lexer::lexemeAtLocation(*(v506 + 12), 0, v632);
            v258 = *v632;
            if (*v632)
            {
              v259 = v252 + v488;
              v260 = 1;
              while (1)
              {
                if (*(v258 + 88) - 1 <= 3)
                {
                  v261 = *(v258 + 72);
                  v262 = *(v258 + 80) + v261;
                  v263 = v248 > v261 || v259 < v262;
                  if (!v263)
                  {
                    break;
                  }

                  if (v261 <= v248 && v262 >= v259)
                  {
                    break;
                  }
                }

                QP::Lexer::lexemeAtLocation(*(v506 + 12), v260, buf);
                v265 = *buf;
                *&buf[8] = 0;
                *buf = 0;
                v266 = *&v632[8];
                *v632 = v265;
                if (v266)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v266);
                  if (*&buf[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                  }

                  v258 = *v632;
                }

                else
                {
                  v258 = v265;
                }

                ++v260;
                if (!v258)
                {
                  goto LABEL_337;
                }
              }

              p_valuePtr = (v258 + 72);
              v257 = kQPParseAttributeDateKey;
            }

            else
            {
LABEL_337:
              p_valuePtr = &valuePtr;
            }

            location = p_valuePtr->location;
            v280 = p_valuePtr->length;
            v281 = *(*&v647[8] + 56);
            v606[2] = *(*&v647[8] + 48);
            v606[3] = v281;
            if (v281)
            {
              atomic_fetch_add_explicit(&v281->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v604 = v258;
            v605 = *&v632[8];
            if (*&v632[8])
            {
              atomic_fetch_add_explicit((*&v632[8] + 8), 1uLL, memory_order_relaxed);
            }

            QP::U2Parser::makeAttribute(v497, location, v280, v257, v496, v606);
          }

          v282 = v256[1];
          if (v282.location != valuePtr.location || v282.length != valuePtr.length)
          {
            *buf = 0;
            *buf = CFStringCreateWithSubstring(alloc, *v510, v282);
            v284 = u2ParserLogger(*buf);
            if (os_log_type_enabled(v284, OS_LOG_TYPE_INFO))
            {
              v285 = *(*v504 + 48);
              *v632 = 134218242;
              *&v632[4] = v285;
              *&v632[12] = 2112;
              *&v632[14] = *buf;
              _os_log_impl(&dword_1C6584000, v284, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Grounded date phrase %@", v632, 0x16u);
            }

            if (v243 > v516)
            {
              while (1)
              {
                v286 = [v513 tokenRanges];
                v287 = [v286 objectAtIndexedSubscript:v243];
                v288 = [v287 rangeValue];
                v290 = v289;

                if (v288 + v290 == *(*(*&v647[8] + 48) + 24) + *(*(*&v647[8] + 48) + 16))
                {
                  break;
                }

                if (--v243 <= v516)
                {
                  goto LABEL_390;
                }
              }

              v467 = v243;
            }

LABEL_390:
            nlp::CFScopedPtr<__CFString const*>::reset(buf, 0);
          }

          v463 = 1;
          goto LABEL_392;
        }

        *v506 = 4;
        v268 = std::string::__assign_external(v485, "Unable to find range for ARG_TIME group", 0x27uLL);
        v269 = u2ParserLogger(v268);
        if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
        {
          QP::U2Parser::parseInternal();
        }

        v270 = 0;
        v463 = 1;
LABEL_676:

        _Block_object_dispose(v647, 8);
        if (*&v647[56])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v647[56]);
        }

        if (!v270)
        {
          goto LABEL_750;
        }

        goto LABEL_679;
      }

LABEL_392:
      v310 = *&v647[8];
      v311 = *(*&v647[8] + 48);
      if (v311)
      {
        if (*(v311 + 16) != valuePtr.location || *(v311 + 24) != valuePtr.length)
        {
LABEL_668:
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](&v637, (v310 + 48));
          v399 = [MEMORY[0x1E696AD98] numberWithLong:v497];
          v631 = v399;
          v400 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v631 count:1];
          [obja setObject:v400 forKeyedSubscript:kQPQUOutputTokenAttributeIndexesKey];

          ++v497;
          goto LABEL_675;
        }
      }

      if (v483 == 14)
      {
        if ([(__CFDictionary *)v477 count])
        {
          v314 = *(*&v647[8] + 56);
          v602 = *(*&v647[8] + 48);
          v603 = v314;
          if (v314)
          {
            atomic_fetch_add_explicit(&v314->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::U2Parser::makeVisualIdentifierAttribute(&v600, valuePtr, v477);
          QP::operator+(&v602, &v600, v632);
          v315 = *v632;
          *&v632[8] = 0;
          *v632 = 0;
          v316 = *(*&v647[8] + 56);
          *(*&v647[8] + 48) = v315;
          if (v316)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v316);
            if (*&v632[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
            }
          }

          if (v601)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v601);
          }

          v317 = v603;
          if (v603)
          {
            goto LABEL_485;
          }
        }

        else if ((QP::tokenHasArgIdWithScore(v513, v516, 2) & 1) != 0 || (QP::tokenHasArgIdWithScore(v513, v516, 3) & 1) != 0 || QP::tokenHasArgIdWithScore(v513, v516, 4))
        {
          v318 = *(*&v647[8] + 56);
          v598 = *(*&v647[8] + 48);
          v599 = v318;
          if (v318)
          {
            atomic_fetch_add_explicit(&v318->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::U2Parser::makeIdentifierAttribute(&v596, valuePtr, kQPParseAttributeTaggedPersonKey, 0, 0);
          QP::operator+(&v598, &v596, v632);
          v319 = *v632;
          *&v632[8] = 0;
          *v632 = 0;
          v320 = *(*&v647[8] + 56);
          *(*&v647[8] + 48) = v319;
          if (v320)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v320);
            if (*&v632[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
            }
          }

          if (v597)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v597);
          }

          v317 = v599;
          if (v599)
          {
            goto LABEL_485;
          }
        }
      }

      else
      {
        if (v496 == 4)
        {
          v313 = QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 4, 0.3);
LABEL_425:
          if ((v313 & 1) == 0)
          {
            v310 = *&v647[8];
            v311 = *(*&v647[8] + 48);
            goto LABEL_427;
          }
        }

        else
        {
          if (v496 == 3)
          {
            v313 = QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 3, 0.3);
            goto LABEL_425;
          }

LABEL_427:
          v321 = *(v310 + 56);
          v594 = v311;
          v595 = v321;
          if (v321)
          {
            atomic_fetch_add_explicit(&v321->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::U2Parser::makeVisualIdentifierAttribute(&v592, valuePtr, v477);
          QP::operator+(&v594, &v592, v632);
          v322 = *v632;
          *&v632[8] = 0;
          *v632 = 0;
          v323 = *(*&v647[8] + 56);
          *(*&v647[8] + 48) = v322;
          if (v323)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v323);
            if (*&v632[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
            }
          }

          if (v593)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v593);
          }

          if (v595)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v595);
          }
        }

        if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 2, 0.3))
        {
          v324 = *(*&v647[8] + 56);
          v590 = *(*&v647[8] + 48);
          v591 = v324;
          if (v324)
          {
            atomic_fetch_add_explicit(&v324->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::U2Parser::makeIdentifierAttribute(&v588, valuePtr, kQPParseAttributePersonKey, v474, 0);
          QP::operator+(&v590, &v588, v632);
          v325 = *v632;
          *&v632[8] = 0;
          *v632 = 0;
          v326 = *(*&v647[8] + 56);
          *(*&v647[8] + 48) = v325;
          if (v326)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v326);
            if (*&v632[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
            }
          }

          if (v589)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v589);
          }

          if (v591)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v591);
          }
        }

        if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 3, 0.3))
        {
          v327 = *(*&v647[8] + 56);
          v586 = *(*&v647[8] + 48);
          v587 = v327;
          if (v327)
          {
            atomic_fetch_add_explicit(&v327->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::U2Parser::makeIdentifierAttribute(&v584, valuePtr, kQPParseAttributeSenderKey, v474, 0);
          QP::operator+(&v586, &v584, v632);
          v328 = *v632;
          *&v632[8] = 0;
          *v632 = 0;
          v329 = *(*&v647[8] + 56);
          *(*&v647[8] + 48) = v328;
          if (v329)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v329);
            if (*&v632[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
            }
          }

          if (v585)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v585);
          }

          if (v587)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v587);
          }

          if (!v459)
          {
            v330 = *(*&v647[8] + 56);
            v582 = *(*&v647[8] + 48);
            v583 = v330;
            if (v330)
            {
              atomic_fetch_add_explicit(&v330->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            QP::U2Parser::makeIdentifierAttribute(&v580, valuePtr, kQPParseAttributeSenderHandleKey, 0, v470);
            QP::operator+(&v582, &v580, v632);
            v331 = *v632;
            *&v632[8] = 0;
            *v632 = 0;
            v332 = *(*&v647[8] + 56);
            *(*&v647[8] + 48) = v331;
            if (v332)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v332);
              if (*&v632[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
              }
            }

            if (v581)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v581);
            }

            if (v583)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v583);
            }
          }
        }

        if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 4, 0.3))
        {
          v333 = *(*&v647[8] + 56);
          v578 = *(*&v647[8] + 48);
          v579 = v333;
          if (v333)
          {
            atomic_fetch_add_explicit(&v333->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::U2Parser::makeIdentifierAttribute(&v576, valuePtr, kQPParseAttributeRecipientKey, v474, 0);
          QP::operator+(&v578, &v576, v632);
          v334 = *v632;
          *&v632[8] = 0;
          *v632 = 0;
          v335 = *(*&v647[8] + 56);
          *(*&v647[8] + 48) = v334;
          if (v335)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v335);
            if (*&v632[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
            }
          }

          if (v577)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v577);
          }

          if (v579)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v579);
          }

          if (!v459)
          {
            v336 = *(*&v647[8] + 56);
            v574 = *(*&v647[8] + 48);
            v575 = v336;
            if (v336)
            {
              atomic_fetch_add_explicit(&v336->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            QP::U2Parser::makeIdentifierAttribute(&v572, valuePtr, kQPParseAttributeRecipientHandleKey, 0, v470);
            QP::operator+(&v574, &v572, v632);
            v337 = *v632;
            *&v632[8] = 0;
            *v632 = 0;
            v338 = *(*&v647[8] + 56);
            *(*&v647[8] + 48) = v337;
            if (v338)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v338);
              if (*&v632[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v632[8]);
              }
            }

            if (v573)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v573);
            }

            v317 = v575;
            if (v575)
            {
LABEL_485:
              std::__shared_weak_count::__release_shared[abi:ne200100](v317);
            }
          }
        }
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 1, 0.3))
      {
        v339 = *(*&v647[8] + 56);
        v571[2] = *(*&v647[8] + 48);
        v571[3] = v339;
        if (v339)
        {
          atomic_fetch_add_explicit(&v339->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v570[5] = 0;
        v570[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeKindKey, v496, v571);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 21, 0.9))
      {
        v340 = *(*&v647[8] + 56);
        v570[2] = *(*&v647[8] + 48);
        v570[3] = v340;
        if (v340)
        {
          atomic_fetch_add_explicit(&v340->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v569[5] = 0;
        v569[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFavoritedKey, v496, v570);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 16, 0.8))
      {
        switch(v475)
        {
          case 0:
            v405 = *(*&v647[8] + 56);
            v567[2] = *(*&v647[8] + 48);
            v567[3] = v405;
            if (v405)
            {
              atomic_fetch_add_explicit(&v405->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v566[11] = 0;
            v566[10] = 0;
            QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlaggedKey, v496, v567);
          case 5:
            v342 = *(*&v647[8] + 56);
            v568[2] = *(*&v647[8] + 48);
            v568[3] = v342;
            if (v342)
            {
              atomic_fetch_add_explicit(&v342->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v567[5] = 0;
            v567[4] = 0;
            QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeTaggedKey, v496, v568);
          case 2:
            v341 = *(*&v647[8] + 56);
            v569[2] = *(*&v647[8] + 48);
            v569[3] = v341;
            if (v341)
            {
              atomic_fetch_add_explicit(&v341->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
            }

            v568[5] = 0;
            v568[4] = 0;
            QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlaggedKey, v496, v569);
        }
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 17, 0.8))
      {
        if (v475 == 2)
        {
          v343 = *(*&v647[8] + 56);
          v566[2] = *(*&v647[8] + 48);
          v566[3] = v343;
          if (v343)
          {
            atomic_fetch_add_explicit(&v343->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          }

          v565[5] = 0;
          v565[4] = 0;
          QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlaggedKey, v496, v566);
        }

        v403 = *(*&v647[8] + 56);
        v565[2] = *(*&v647[8] + 48);
        v565[3] = v403;
        if (v403)
        {
          atomic_fetch_add_explicit(&v403->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v564[5] = 0;
        v564[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeTaggedKey, v496, v565);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 44, 0.8))
      {
        v344 = *(*&v647[8] + 56);
        v564[2] = *(*&v647[8] + 48);
        v564[3] = v344;
        if (v344)
        {
          atomic_fetch_add_explicit(&v344->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v563[5] = 0;
        v563[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlagColorKey, v496, v564);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 43, 0.8))
      {
        v345 = *(*&v647[8] + 56);
        v563[2] = *(*&v647[8] + 48);
        v563[3] = v345;
        if (v345)
        {
          atomic_fetch_add_explicit(&v345->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v562[5] = 0;
        v562[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeTagColorKey, v496, v563);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 24, 0.8))
      {
        v346 = *(*&v647[8] + 56);
        v562[2] = *(*&v647[8] + 48);
        v562[3] = v346;
        if (v346)
        {
          atomic_fetch_add_explicit(&v346->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v561[5] = 0;
        v561[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeRepliedKey, v496, v562);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 28, 0.6))
      {
        v347 = *(*&v647[8] + 56);
        v561[2] = *(*&v647[8] + 48);
        v561[3] = v347;
        if (v347)
        {
          atomic_fetch_add_explicit(&v347->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v560[8] = 0;
        v560[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeReadKey, v496, v561);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 29, 0.6))
      {
        v348 = *(*&v647[8] + 56);
        v560[2] = *(*&v647[8] + 48);
        v560[3] = v348;
        if (v348)
        {
          atomic_fetch_add_explicit(&v348->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v559[5] = 0;
        v559[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeUnreadKey, v496, v560);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 22, 0.8))
      {
        v349 = *(*&v647[8] + 56);
        v559[2] = *(*&v647[8] + 48);
        v559[3] = v349;
        if (v349)
        {
          atomic_fetch_add_explicit(&v349->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v558[8] = 0;
        v558[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeSentKey, v496, v559);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 36, 0.8))
      {
        v350 = *(*&v647[8] + 56);
        v558[2] = *(*&v647[8] + 48);
        v558[3] = v350;
        if (v350)
        {
          atomic_fetch_add_explicit(&v350->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v557[5] = 0;
        v557[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeSharedKey, v496, v558);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 23, 0.8))
      {
        v351 = *(*&v647[8] + 56);
        v557[2] = *(*&v647[8] + 48);
        v557[3] = v351;
        if (v351)
        {
          atomic_fetch_add_explicit(&v351->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v556[8] = 0;
        v556[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeReceivedKey, v496, v557);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 18, 0.8))
      {
        v352 = *(*&v647[8] + 56);
        v556[2] = *(*&v647[8] + 48);
        v556[3] = v352;
        if (v352)
        {
          atomic_fetch_add_explicit(&v352->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v555[5] = 0;
        v555[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeAttachmentKey, v496, v556);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 19, 0.8))
      {
        v353 = *(*&v647[8] + 56);
        v555[2] = *(*&v647[8] + 48);
        v555[3] = v353;
        if (v353)
        {
          atomic_fetch_add_explicit(&v353->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v554[5] = 0;
        v554[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeAttachedKindKey, v496, v555);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 20, 0.8))
      {
        v354 = *(*&v647[8] + 56);
        v554[2] = *(*&v647[8] + 48);
        v554[3] = v354;
        if (v354)
        {
          atomic_fetch_add_explicit(&v354->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v553 = 0;
        v552 = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeAttachedNameKey, v496, v554);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 37, 0.6))
      {
        v355 = *v498;
        v356 = v498[1];
        while (v355 != v356)
        {
          v357 = *v355;
          if (*v355)
          {
            v550[0] = MEMORY[0x1E69E9820];
            v550[1] = 3221225472;
            v550[2] = ___ZN2QP8U2Parser13parseInternalERNSt3__16vectorINS1_10shared_ptrINS_5ParseEEENS1_9allocatorIS5_EEEEPK14__CFDictionary_block_invoke_529;
            v550[3] = &unk_1E8267F78;
            v551 = valuePtr;
            v550[5] = v506;
            v550[4] = v647;
            QP::Parse::enumerateParseAttributes(v357, v550);
          }

          v355 += 2;
        }

        if (!*(*&v647[8] + 48))
        {
          v358 = *(*&v647[8] + 56);
          v549[2] = 0;
          v549[3] = v358;
          if (v358)
          {
            atomic_fetch_add_explicit(&v358->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          }

          v548[5] = 0;
          v548[4] = 0;
          QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeTransportActionKey, v496, v549);
        }
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 38, 0.6))
      {
        v359 = *(*&v647[8] + 56);
        v548[2] = *(*&v647[8] + 48);
        v548[3] = v359;
        if (v359)
        {
          atomic_fetch_add_explicit(&v359->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v547[8] = 0;
        v547[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributePrintedActionKey, v496, v548);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 35, 0.6))
      {
        v360 = *(*&v647[8] + 56);
        v547[2] = *(*&v647[8] + 48);
        v547[3] = v360;
        if (v360)
        {
          atomic_fetch_add_explicit(&v360->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v546[8] = 0;
        v546[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeModifiedActionKey, v496, v547);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 32, 0.6))
      {
        v361 = *(*&v647[8] + 56);
        v546[2] = *(*&v647[8] + 48);
        v546[3] = v361;
        if (v361)
        {
          atomic_fetch_add_explicit(&v361->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v545[8] = 0;
        v545[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeCreatedActionKey, v496, v546);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 58, 0.6))
      {
        v362 = *(*&v647[8] + 56);
        v545[2] = *(*&v647[8] + 48);
        v545[3] = v362;
        if (v362)
        {
          atomic_fetch_add_explicit(&v362->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v544[5] = 0;
        v544[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlightActionKey, v496, v545);
      }

      if ((QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 62, 0.6) & 1) != 0 || (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 54, 0.6) & 1) != 0 || QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 55, 0.6))
      {
        v363 = *(*&v647[8] + 56);
        v544[2] = *(*&v647[8] + 48);
        v544[3] = v363;
        if (v363)
        {
          atomic_fetch_add_explicit(&v363->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v543[5] = 0;
        v543[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlightArrivalLocationKey, v496, v544);
      }

      if ((QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 61, 0.6) & 1) != 0 || (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 56, 0.6) & 1) != 0 || QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 57, 0.6))
      {
        v364 = *(*&v647[8] + 56);
        v543[2] = *(*&v647[8] + 48);
        v543[3] = v364;
        if (v364)
        {
          atomic_fetch_add_explicit(&v364->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v542[5] = 0;
        v542[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlightDepartureLocationKey, v496, v543);
      }

      if ((QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 59, 0.6) & 1) != 0 || QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 60, 0.6))
      {
        v365 = *(*&v647[8] + 56);
        v542[2] = *(*&v647[8] + 48);
        v542[3] = v365;
        if (v365)
        {
          atomic_fetch_add_explicit(&v365->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v541[5] = 0;
        v541[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlightCarrierKey, v496, v542);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 53, 0.6))
      {
        v366 = *(*&v647[8] + 56);
        v541[2] = *(*&v647[8] + 48);
        v541[3] = v366;
        if (v366)
        {
          atomic_fetch_add_explicit(&v366->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v540[5] = 0;
        v540[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeFlightLocationKey, v496, v541);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 64, 0.6))
      {
        v367 = *(*&v647[8] + 56);
        v540[2] = *(*&v647[8] + 48);
        v540[3] = v367;
        if (v367)
        {
          atomic_fetch_add_explicit(&v367->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v539[5] = 0;
        v539[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeHotelActionKey, v496, v540);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 66, 0.6))
      {
        v368 = *(*&v647[8] + 56);
        v539[2] = *(*&v647[8] + 48);
        v539[3] = v368;
        if (v368)
        {
          atomic_fetch_add_explicit(&v368->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v538[5] = 0;
        v538[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeHotelNameKey, v496, v539);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 65, 0.6))
      {
        v369 = *(*&v647[8] + 56);
        v538[2] = *(*&v647[8] + 48);
        v538[3] = v369;
        if (v369)
        {
          atomic_fetch_add_explicit(&v369->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v537[5] = 0;
        v537[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeHotelProviderKey, v496, v538);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 67, 0.6))
      {
        v370 = *(*&v647[8] + 56);
        v537[2] = *(*&v647[8] + 48);
        v537[3] = v370;
        if (v370)
        {
          atomic_fetch_add_explicit(&v370->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v536[5] = 0;
        v536[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeRestaurantActionKey, v496, v537);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 68, 0.6))
      {
        v371 = *(*&v647[8] + 56);
        v536[2] = *(*&v647[8] + 48);
        v536[3] = v371;
        if (v371)
        {
          atomic_fetch_add_explicit(&v371->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v535[5] = 0;
        v535[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeRestaurantNameKey, v496, v536);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 49, 0.6))
      {
        v372 = *(*&v647[8] + 56);
        v535[2] = *(*&v647[8] + 48);
        v535[3] = v372;
        if (v372)
        {
          atomic_fetch_add_explicit(&v372->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v534[5] = 0;
        v534[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeReadingListActionKey, v496, v535);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 9, 0.6))
      {
        if (v475 == 23)
        {
          v373 = *(*&v647[8] + 56);
          v534[2] = *(*&v647[8] + 48);
          v534[3] = v373;
          if (v373)
          {
            atomic_fetch_add_explicit(&v373->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          }

          v533[5] = 0;
          v533[4] = 0;
          QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeEventKindKey, v496, v534);
        }

        v404 = *(*&v647[8] + 56);
        v533[2] = *(*&v647[8] + 48);
        v533[3] = v404;
        if (v404)
        {
          atomic_fetch_add_explicit(&v404->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v532[9] = 0;
        v532[8] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeKeywordKey, v496, v533);
      }

      v374 = QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 51, 0.6);
      if (v475 == 23)
      {
        v375 = v374;
      }

      else
      {
        v375 = 0;
      }

      if (v375 == 1)
      {
        v532[7] = 0;
        v532[6] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeEarliestActionKey, v496, v632);
      }

      v376 = QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 52, 0.6);
      if (v475 == 23)
      {
        v377 = v376;
      }

      else
      {
        v377 = 0;
      }

      if (v377 == 1)
      {
        v532[5] = 0;
        v532[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeLatestActionKey, v496, v632);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 34, 0.6))
      {
        v378 = *(*&v647[8] + 56);
        v532[2] = *(*&v647[8] + 48);
        v532[3] = v378;
        if (v378)
        {
          atomic_fetch_add_explicit(&v378->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v531[8] = 0;
        v531[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeCompletedActionKey, v496, v532);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 33, 0.6))
      {
        v379 = *(*&v647[8] + 56);
        v531[2] = *(*&v647[8] + 48);
        v531[3] = v379;
        if (v379)
        {
          atomic_fetch_add_explicit(&v379->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v530[8] = 0;
        v530[7] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeDueActionKey, v496, v531);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 27, 0.6))
      {
        v380 = *(*&v647[8] + 56);
        v530[2] = *(*&v647[8] + 48);
        v530[3] = v380;
        if (v380)
        {
          atomic_fetch_add_explicit(&v380->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v529[5] = 0;
        v529[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeDraftActionKey, v496, v530);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 31, 0.6))
      {
        v381 = *(*&v647[8] + 56);
        v529[2] = *(*&v647[8] + 48);
        v529[3] = v381;
        if (v381)
        {
          atomic_fetch_add_explicit(&v381->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v528[5] = 0;
        v528[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeJunkActionKey, v496, v529);
      }

      if (QP::tokenHasArgIdAsTopPredictionOrWithScore(v513, v516, 26, 0.6))
      {
        v382 = *(*&v647[8] + 56);
        v528[2] = *(*&v647[8] + 48);
        v528[3] = v382;
        if (v382)
        {
          atomic_fetch_add_explicit(&v382->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v527[5] = 0;
        v527[4] = 0;
        QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeArchiveActionKey, v496, v528);
      }

      v383 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F45F8E88];
      v384 = v513;
      v489 = v383;
      for (n = 0; ; ++n)
      {
        v386 = [v384 argIdsForTokens];
        v387 = [v386 objectAtIndexedSubscript:v516];
        v388 = n < [v387 count];

        if (!v388)
        {
          break;
        }

        if (n)
        {
          v389 = [v384 argScoresForTokens];
          v390 = [v389 objectAtIndexedSubscript:v516];
          v391 = [v390 objectAtIndexedSubscript:n];
          [v391 floatValue];
          v393 = v392 < 0.3;

          if (v393)
          {
            break;
          }
        }

        v394 = [v384 argIdsForTokens];
        v395 = [v394 objectAtIndexedSubscript:v516];
        v396 = [v395 objectAtIndexedSubscript:n];
        v397 = [v489 containsObject:v396];

        if (v397)
        {

          v398 = *(*&v647[8] + 56);
          v527[2] = *(*&v647[8] + 48);
          v527[3] = v398;
          if (v398)
          {
            atomic_fetch_add_explicit(&v398->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
          }

          v526[4] = 0;
          v526[3] = 0;
          QP::U2Parser::makeAttribute(v497, valuePtr.location, valuePtr.length, kQPParseAttributeKeywordKey, v496, v527);
        }
      }

      v310 = *&v647[8];
      if (*(*&v647[8] + 48))
      {
        goto LABEL_668;
      }

      v401 = v465;
      if (v516 <= v465 + v466)
      {
        v402 = v466 + 1;
      }

      else
      {
        v402 = 1;
      }

      if (v516 > v465 + v466)
      {
        v401 = v516;
      }

      v465 = v401;
      v466 = v402;
LABEL_675:
      v269 = [obja copy];
      [v476 addObject:v269];
      v270 = 1;
      goto LABEL_676;
    }

    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v230 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
    {
      QP::U2Parser::parseInternal();
    }

    v231 = [MEMORY[0x1E696AD98] numberWithLong:v497 - 1];
    v634 = v231;
    v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v634 count:1];
    [obja setObject:v232 forKeyedSubscript:kQPQUOutputTokenAttributeIndexesKey];

    v233 = [obja copy];
    [v476 addObject:v233];

LABEL_679:
    if (++v516 == v492)
    {
      v196 = v513;
      v409 = v458;
      if (v463)
      {
LABEL_700:
        v413 = *(*v504 + 8);
        v263 = v413 > 0xD;
        v414 = (1 << v413) & 0x2A05;
        if (!v263 && v414 != 0)
        {
          memset(v526, 0, 24);
          std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v526, *(v506 + 23), *(v506 + 24), (*(v506 + 24) - *(v506 + 23)) >> 4);
          v416 = *(v506 + 10);
          v417 = *(v506 + 11);
          v525[0] = v416;
          v525[1] = v417;
          if (v417)
          {
            atomic_fetch_add_explicit(&v417->__shared_owners_, 1uLL, memory_order_relaxed);
            v416 = *v504;
          }

          EmbeddingString = QP::createEmbeddingString(v476, v196, v519, v526, v525, *(v506 + 19), *(*(v506 + 12) + 448), *(v416 + 48), v479, 1);
          nlp::CFScopedPtr<__CFAttributedString const*>::reset(v506 + 26, EmbeddingString);
          if (v417)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v417);
          }

          v419 = v526;
          goto LABEL_709;
        }

        v450 = [MEMORY[0x1E6964E20] sharedInstance];
        v451 = [v450 isPhotosSemanticSearchAvailable];

        if (v451)
        {
          memset(v524, 0, sizeof(v524));
          v196 = v513;
          std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v524, *(v506 + 23), *(v506 + 24), (*(v506 + 24) - *(v506 + 23)) >> 4);
          v453 = *(v506 + 10);
          v454 = *(v506 + 11);
          v523[0] = v453;
          v523[1] = v454;
          if (v454)
          {
            atomic_fetch_add_explicit(&v454->__shared_owners_, 1uLL, memory_order_relaxed);
            v453 = *v504;
          }

          v455 = QP::createEmbeddingString(v476, v513, v519, v524, v523, *(v506 + 19), *(*(v506 + 12) + 448), *(v453 + 48), v479, 0);
          nlp::CFScopedPtr<__CFAttributedString const*>::reset(v506 + 26, v455);
          if (v454)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v454);
          }

          v419 = v524;
LABEL_709:
          *v647 = v419;
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v647);
        }

        else
        {
          v456 = u2ParserLogger(v452);
          if (os_log_type_enabled(v456, OS_LOG_TYPE_DEFAULT))
          {
            v457 = *(*v504 + 48);
            *v647 = 134217984;
            *&v647[4] = v457;
            _os_log_impl(&dword_1C6584000, v456, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] photos semantic search usecase disabled", v647, 0xCu);
          }

          v196 = v513;
        }

        v420 = *(v506 + 19);
        v421 = [*(v506 + 26) string];
        objb = QP::debugDescriptionWithQUOutput(v420, v196, v476, v519, v409 & 1, v421);

        v422 = QPTimingNanosecondsSinceAbsoluteTime(v490);
        v423 = u2ParserLogger(v422);
        if (os_log_type_enabled(v423, OS_LOG_TYPE_DEFAULT))
        {
          v424 = *(*v504 + 48);
          v425 = [v513 embeddingsTime];
          v426 = [v513 predictionTime];
          v427 = [v513 embeddingsTime];
          *v647 = 134219778;
          *&v647[4] = v424;
          *&v647[12] = 2048;
          *&v647[14] = (v422 / 1000000.0);
          *&v647[22] = 2048;
          *&v647[24] = (v482 / 1000000.0);
          *&v647[32] = 2048;
          *&v647[34] = (v425 / 1000000.0);
          *&v647[42] = 2048;
          *&v647[44] = ((v426 - v427) / 1000000.0);
          *&v647[52] = 2048;
          *&v647[54] = (v471 / 1000000.0);
          *&v647[62] = 1024;
          LODWORD(v648) = v472;
          WORD2(v648) = 2112;
          *(&v648 + 6) = objb;
          _os_log_impl(&dword_1C6584000, v423, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] QU parsed in %.1fms (load:%.1f; nlx:%.1f; u2:%.1f; ecr:%.1f(%u))\n%@", v647, 0x4Eu);
        }

        *(v506 + 1) = v422;
        *v506 = 1;
        v430 = *(v506 + 10);
        if ((*(v430 + 37) & 1) == 0 && (*(v430 + 35) & 1) == 0)
        {
          v431 = QPProcessName(v428, v429);
          v432 = strcmp("searchd", v431);
          if (Length >= 3 && !v432)
          {
            QP::logQueryUnderstandingOverviewCAEvent(v513, v518, Length, v492, [v519 count] != 0);
          }
        }

        v433 = MEMORY[0x1E695E0F8];
        if (v519)
        {
          v433 = v519;
        }

        v630[0] = v433;
        v629[0] = kQPParseResultEcrGroundedKey;
        v629[1] = kQPQUOutputIntentIdsKey;
        v517 = [v513 intentId];
        if (v517)
        {
          v496 = [v513 intentId];
          v628 = v496;
          v434 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v628 count:1];
        }

        else
        {
          v434 = MEMORY[0x1E695E0F0];
        }

        v630[1] = v434;
        v629[2] = kQPQUOutputIntentLabelsKey;
        v505 = v434;
        v435 = [v513 intentId];
        if (v435)
        {
          v436 = MEMORY[0x1E696AEC0];
          v497 = [v513 intentId];
          [v497 intValue];
          v437 = [v436 stringWithUTF8String:intentLabel()];
          v492 = v437;
          if (v437)
          {
            v438 = v437;
          }

          else
          {
            v438 = &stru_1F45E9EA0;
          }

          v627 = v438;
          v439 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v627 count:1];
        }

        else
        {
          v439 = MEMORY[0x1E695E0F0];
        }

        v630[2] = v439;
        v629[3] = kQPQUOutputIntentScoresKey;
        ptrb = v439;
        v440 = [v513 confidenceScore];
        if (v440)
        {
          Length = [v513 confidenceScore];
          v626 = Length;
          v441 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v626 count:1];
        }

        else
        {
          v441 = MEMORY[0x1E695E0F0];
        }

        v499 = v441;
        v630[3] = v441;
        v629[4] = kQPQUOutputIsUnsafeKey;
        v442 = [MEMORY[0x1E696AD98] numberWithBool:v461];
        v630[4] = v442;
        v629[5] = kQPQUOutputUnsafeConfidenceScoreKey;
        *&v443 = v184;
        v444 = [MEMORY[0x1E696AD98] numberWithFloat:v443];
        v625 = v444;
        v445 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v625 count:1];
        v630[5] = v445;
        v629[6] = kQPQUOutputTokenInfoKey;
        v446 = [v476 count];
        if (v446)
        {
          v447 = [v476 copy];
        }

        else
        {
          v447 = MEMORY[0x1E695E0F0];
        }

        v629[7] = @"debugDescription";
        v448 = objb;
        if (!objb)
        {
          v448 = &stru_1F45E9EA0;
        }

        v630[6] = v447;
        v630[7] = v448;
        v449 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v630 forKeys:v629 count:8];
        if (v446)
        {
        }

        if (v440)
        {
        }

        if (v435)
        {
        }

        if (v517)
        {
        }

        *v632 = v449;
        CFRelease(cf);
        memset(v522, 0, sizeof(v522));
        std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v522, v637, v638, (v638 - v637) >> 4);
        QP::U2Parser::addArgActionstoTimeAttr(v506, v522);
        *v647 = v522;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v647);
        if (SBYTE7(v622) < 0)
        {
          std::string::__init_copy_ctor_external(&v521, __s, *(&__s + 1));
        }

        else
        {
          *&v521.__r_.__value_.__l.__data_ = __s;
          v521.__r_.__value_.__r.__words[2] = v622;
        }

        memset(v520, 0, sizeof(v520));
        std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v520, v637, v638, (v638 - v637) >> 4);
        QP::U2Parser::mergeActionsforSearchtoolPersonalAnswers(v506, &v521, v520);
        *v647 = v520;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v647);
        if (SHIBYTE(v521.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v521.__r_.__value_.__l.__data_);
        }

        *&v647[8] = 0;
        *v647 = 0;
        valuePtr.location = (v638 - v637) >> 4;
        *buf = CFArrayGetCount(theArray);
        std::allocate_shared[abi:ne200100]<QP::Parse,std::allocator<QP::Parse>,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,0>();
      }

LABEL_691:
      v411 = *(&v643 + 1);
      for (ii = v643; ii != v411; ++ii)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](&v637, ii);
      }

      goto LABEL_700;
    }
  }

  *v506 = 4;
  std::string::__assign_external(v485, "Token not found in user query", 0x1DuLL);
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v412 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(v412, OS_LOG_TYPE_ERROR))
  {
    QP::U2Parser::parseInternal();
  }

LABEL_750:
  *v647 = &v643;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v647);

  if (SBYTE7(v622) < 0)
  {
    operator delete(__s);
  }

  *v647 = &v637;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v647);
LABEL_753:
  v172 = v513;
LABEL_754:

LABEL_755:
  log = v480;
LABEL_756:
  v29 = v493;
LABEL_757:

LABEL_758:
}

void sub_1C661AE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  STACK[0x10F0] = &STACK[0x260];
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x10F0]);
  STACK[0x10F0] = &STACK[0x10B0];
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x10F0]);

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(STACK[0xDD0]);
  }

  STACK[0x10F0] = &STACK[0x1030];
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x10F0]);

  v71 = STACK[0x200];
  _Unwind_Resume(a1);
}

void QP::operator+(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      v5 = a2[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      QP::ParseAttribute::makeGroupAttribute(a3);
    }

    v7 = a1[1];
    *a3 = *a1;
    a3[1] = v7;
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v6 = a2[1];
    *a3 = v3;
    a3[1] = v6;
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1C661C1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void QP::U2Parser::makePersonAttribute(CFRange a2@<0:X3, 8:X4>, uint64_t a5@<X2>, std::string **a6@<X8>)
{
  v11 = a2;
  v9 = a5;
  v10 = 0;
  *a6 = 0;
  a6[1] = 0;
  LODWORD(v8) = 0;
  LODWORD(__p[0]) = 0;
  LODWORD(v7) = 2;
  std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType,0>();
}

void sub_1C661C3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v30 = *(v28 + 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<QP::Lexeme>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void QP::U2Parser::makeVisualIdentifierAttribute(uint64_t *__return_ptr a1@<X8>, CFRange a3@<0:X2, 8:X3>, const __CFDictionary *a4@<X4>)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a4;
  if ([(__CFDictionary *)v5 count])
  {
    std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType,0>();
  }
}

void sub_1C661CB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, char *a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  a33 = &a36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  _Unwind_Resume(a1);
}

void QP::U2Parser::makeIdentifierAttribute(uint64_t *__return_ptr a1@<X8>, CFRange a3@<0:X3, 8:X4>, const __CFString *theString1@<X5>, const __CFArray *a5@<X6>, const __CFArray *a6@<X7>)
{
  *a1 = 0;
  a1[1] = 0;
  if (CFStringsAreEqual(theString1, kQPParseAttributePersonKey) || CFStringsAreEqual(theString1, kQPParseAttributeSenderKey) || CFStringsAreEqual(theString1, kQPParseAttributeRecipientKey) || CFStringsAreEqual(theString1, kQPParseAttributeTaggedPersonKey) || CFStringsAreEqual(theString1, kQPParseAttributeSenderHandleKey) || CFStringsAreEqual(theString1, kQPParseAttributeRecipientHandleKey))
  {
    a5;
    a6;
    std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType,0>();
  }
}

void sub_1C661D1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a55);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(a1);
}

void QP::U2Parser::makeAttribute(uint64_t a3@<X2>, CFIndex a4@<X3>, CFIndex a5@<X4>, __CFString *a6@<X5>, int a8@<W7>, std::string **a9@<X8>)
{
  v15 = a4;
  v16 = a5;
  v14 = a6;
  v13 = a8;
  v11 = a3;
  v12 = 0;
  *a9 = 0;
  a9[1] = 0;
  LODWORD(v10.__r_.__value_.__l.__data_) = 0;
  LODWORD(v9[0]) = 0;
  std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType &,0>();
}

void sub_1C661E38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDate const*>::reset(&a16, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(&a17, 0);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  v36 = *(v34 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

uint64_t QP::U2Parser::isIntentUnsafe(QP::U2Parser *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(*(this + 10) + 8);
  if (v1 < 0xE && ((0x2A01u >> v1) & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZN2QP8U2Parser14isIntentUnsafeEv_block_invoke;
    v4[3] = &unk_1E8267F50;
    v4[4] = &v5;
    QP::U2Parser::enumerateParses(this, v4);
    v2 = *(v6 + 24);
  }

  _Block_object_dispose(&v5, 8);
  return v2 & 1;
}

void sub_1C661E5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void QP::U2Parser::enumerateParses(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v5 = *(a1 + 160);
  for (i = *(a1 + 168); v5 != i; v5 += 2)
  {
    v6 = v5[1];
    v7 = *v5;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3[2](v3, &v7, &v9);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v9)
    {
      break;
    }
  }
}

void sub_1C661E660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *___ZN2QP8U2Parser14isIntentUnsafeEv_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = *(*a2 + 88);
  if (result)
  {
    Value = CFDictionaryGetValue(result, kQPQUOutputIsUnsafeKey);
    result = CFBooleanGetValue(Value);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

void QP::U2Parser::clear(QP::U2Parser *this)
{
  *(this + 216) = 0;
  nlp::CFScopedPtr<__CFString const*>::reset(this + 19, 0);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 20);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 23);
  v3 = *(this + 17);
  v2 = this + 136;
  std::__tree<unsigned int>::destroy((v2 - 8), v3);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 - 1) = v2;

  nlp::CFScopedPtr<__CFAttributedString const*>::reset(v2 + 9, 0);
}

uint64_t QPTimingNanosecondsSinceAbsoluteTime(uint64_t a1)
{
  v2 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
  {
    QPTimingNanosecondsSinceAbsoluteTime();
  }

  return (v2 - a1) * QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / dword_1EDAC3FEC;
}

id QP::gluedU2Output(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(GluedU2Output);
  v3 = [v1 confidenceScore];
  [(GluedU2Output *)v2 setConfidenceScore:v3];

  v4 = [v1 intentId];
  [(GluedU2Output *)v2 setIntentId:v4];

  v5 = [v1 safetyScore];
  [(GluedU2Output *)v2 setSafetyScore:v5];

  -[GluedU2Output setPredictionTime:](v2, "setPredictionTime:", [v1 predictionTime]);
  -[GluedU2Output setEmbeddingsTime:](v2, "setEmbeddingsTime:", [v1 embeddingsTime]);
  v6 = [v1 tokens];
  v7 = [v6 count];

  v38 = objc_opt_new();
  v37 = objc_opt_new();
  v36 = objc_opt_new();
  v34 = v2;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (v7 >= 1)
  {
    v10 = 0;
    for (i = 0; i != v7; ++i)
    {
      v12 = [v1 tokenRanges];
      v13 = [v12 objectAtIndexedSubscript:i];

      v14 = [v13 rangeValue];
      v16 = v15;
      if (![v9 count] || v10 == v14)
      {
        [v9 addIndex:i];
      }

      else
      {
        v17 = QP::newModifiedToken(v9, v1);
        v18 = [v17 token];
        [v38 addObject:v18];

        v19 = MEMORY[0x1E696B098];
        v20 = [v17 tokenRange];
        v22 = [v19 valueWithRange:{v20, v21}];
        [v37 addObject:v22];

        v23 = [v17 argIdsForToken];
        [v36 addObject:v23];

        v24 = [v17 argScoresForToken];
        [v8 addObject:v24];

        [v9 removeAllIndexes];
        [v9 addIndex:i];
      }

      v10 = v14 + v16;
    }
  }

  if ([v9 count])
  {
    v25 = QP::newModifiedToken(v9, v1);
    v26 = [v25 token];
    [v38 addObject:v26];

    v27 = MEMORY[0x1E696B098];
    v28 = [v25 tokenRange];
    v30 = [v27 valueWithRange:{v28, v29}];
    [v37 addObject:v30];

    v31 = [v25 argIdsForToken];
    [v36 addObject:v31];

    v32 = [v25 argScoresForToken];
    [v8 addObject:v32];

    [v9 removeAllIndexes];
  }

  [v35 setTokens:v38];
  [v35 setTokenRanges:v37];
  [v35 setArgIdsForTokens:v36];
  [v35 setArgScoresForTokens:v8];

  return v35;
}