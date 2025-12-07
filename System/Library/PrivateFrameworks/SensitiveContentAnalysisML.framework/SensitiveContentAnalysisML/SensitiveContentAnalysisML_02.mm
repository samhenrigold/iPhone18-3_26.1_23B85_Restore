void sub_1B8A714B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v25 = (v23 + 599);
  v26 = -608;
  v27 = v25;
  while (1)
  {
    v28 = *v27;
    v27 -= 32;
    if (v28 < 0)
    {
      operator delete(*(v25 - 23));
    }

    v25 = v27;
    v26 += 32;
    if (!v26)
    {
      MEMORY[0x1B8CC7230](v22, 0x10A0C408EF24B1CLL, a3, a4, a5, a6, a7, a8);
      if (a15 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t scml::anonymous namespace::RuleBasedTextSanitizer::hasGazeteerMatch(void *a1, language_modeling::v1::LinguisticContext *a2, scml::MultiwordGazetteer ****a3)
{
  v4 = *a3;
  v5 = a1;
  v6 = language_modeling::v1::LinguisticContext::tokenSpan(a2);
  hasGazetteerMatch = scml::MultiwordGazetteer::hasGazetteerMatch(v4, v5, v6, v7);

  return hasGazetteerMatch;
}

void ___ZN4scml12_GLOBAL__N_122RuleBasedTextSanitizer20updateWithOvsMatchesEP8NSStringjbP20SCMLTextSanitization_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 56), 1uLL))
  {
    if (!v5)
    {
      return;
    }

LABEL_17:
    CFRelease(v5);
    return;
  }

  MetaFlags = LXEntryGetMetaFlags();
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  if ((MetaFlags & 0x1000000) != 0)
  {
    v8 = 0;
  }

  *(v7 + 24) = v8;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  if ((MetaFlags & 0x800000) != 0)
  {
    v10 = 0;
  }

  *(v9 + 24) = v10;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 24);
  if ((MetaFlags & 0x2000000) != 0)
  {
    v12 = 0;
  }

  *(v11 + 24) = v12;
  if (*(a1 + 64))
  {
    v13 = 0;
  }

  else if (*(*(*(a1 + 32) + 8) + 24) == 1 && *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v13 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  }

  else
  {
    v13 = 1;
  }

  *a3 = v13 & 1;
  if (v5)
  {
    goto LABEL_17;
  }
}

void sub_1B8A717E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t std::allocator_traits<std::allocator<std::function<void ()(scml::anonymous namespace::AsyncResponder *)>>>::construct[abi:ne200100]<std::function<void ()(scml::anonymous namespace::AsyncResponder *)>,std::function<void ()(scml::anonymous namespace::AsyncResponder *)> const&,void,0>(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      *(a1 + 24) = a1;
      v4 = *(**(a2 + 24) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 24) = result;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t std::__split_buffer<std::function<void ()(scml::anonymous namespace::AsyncResponder *)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void scml::anonymous namespace::RuleBasedTextSanitizer::loadGazetteer(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
  v4 = {;
  scml::MultiwordGazetteer::loadGazetteer(v4, a3);
}

void nlp::CFScopedPtr<_LXLexicon const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t scml::strCat<char const(&)[37],char const*,char const(&)[3],std::string>@<X0>(char *a1@<X0>, void *a2@<X8>, const char **a3@<X1>, char *a4@<X2>, uint64_t **a5@<X3>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  scml::scml_impl::strCat<char const(&)[37],char const*,char const(&)[3],std::string>(&v11, a1, a3, a4, a5);
  std::ostringstream::str[abi:ne200100](&v11, a2);
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v15);
}

void sub_1B8A71E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F37462B0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLTextSanitizer.init.rules.full_allow", "", v5, 2u);
  }
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#2},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3746330;
  a2[1] = v2;
  return result;
}

void std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#2},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#2}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLTextSanitizer.init.rules.visual_generation_blocklist", "", v5, 2u);
  }
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#2},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F37463B0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLTextSanitizer.init.rules.ovs_overrides", "", v5, 2u);
  }
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#3}::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#4},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#4}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3746430;
  a2[1] = v2;
  return result;
}

void std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#4},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#4}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = v2;
  v4 = *(*(a1 + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLTextSanitizer.init.rules.lexicon", "", v5, 2u);
  }
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#4},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#4}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void scml::scml_impl::strCat<char const(&)[37],char const*,char const(&)[3],std::string>(void *a1, char *__s, const char **a3, char *a4, uint64_t **a5)
{
  v10 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v10);

  scml::scml_impl::strCat<char const*,char const(&)[3],std::string>(a1, a3, a4, a5);
}

void scml::scml_impl::strCat<char const*,char const(&)[3],std::string>(void *a1, const char **a2, char *a3, uint64_t **a4)
{
  v7 = *a2;
  v8 = strlen(*a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, v8);

  scml::scml_impl::strCat<char const(&)[38],std::string>(a1, a3, a4);
}

uint64_t std::__function::__func<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#5},std::allocator<scml::anonymous namespace::RuleBasedTextSanitizer::RuleBasedTextSanitizer(NSLocale *,unsigned long)::{lambda(void)#5}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void nlp::CFScopedPtr<__CFDictionary *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t *std::unique_ptr<scml::anonymous namespace::RuleBasedTextSanitizer>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100]((v2 + 88), 0);
    std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100]((v2 + 80), 0);
    std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100]((v2 + 72), 0);
    std::unique_ptr<void,scml::NonNullDeleter<&(CFRelease)>>::reset[abi:ne200100]((v2 + 64), 0);
    std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v2 + 56), 0);
    std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v2 + 48), 0);
    std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v2 + 40), 0);
    std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v2 + 32), 0);
    std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v2 + 24), 0);
    std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v2 + 16), 0);
    std::unique_ptr<scml::MultiwordGazetteer>::reset[abi:ne200100]((v2 + 8), 0);
    nlp::CFScopedPtr<_LXLexicon const*>::reset(v2, 0);

    JUMPOUT(0x1B8CC7230);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ72__SCMLTextSanitizer_doLLMBackend_withText_isChildPresent_withResponder__EUb_E3__3NS_9allocatorIS2_EEFvvEE7__cloneEPNS0_6__baseIS5_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F37465B0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZ72__SCMLTextSanitizer_doLLMBackend_withText_isChildPresent_withResponder__EUb_E3__3NS_9allocatorIS2_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ72__SCMLTextSanitizer_doLLMBackend_withText_isChildPresent_withResponder__EUb_E3__3))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZ72__SCMLTextSanitizer_doLLMBackend_withText_isChildPresent_withResponder__EUb_E3__4NS_9allocatorIS2_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ72__SCMLTextSanitizer_doLLMBackend_withText_isChildPresent_withResponder__EUb_E3__4))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZ69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler__EUb0_E3__5NS_9allocatorIS2_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler__EUb0_E3__5))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t std::unordered_map<std::string,SCMLAdapterViolationCategory>::unordered_map(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SCMLImageSanitizerImageStyle>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SCMLImageSanitizerImageStyle> const&>(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

void sub_1B8A731C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t scml::Hasher::combineRecursive<BOOL &,SCMLTextSanitizerGranularity &,SCMLTextSanitizerMode &,unsigned long &,BOOL &,SCMLRegion &,NSString * {__strong}&,int &>(unint64_t *a1, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4, void *a5, unsigned __int8 *a6, unsigned int *a7, id *a8, int *a9)
{
  v9 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a1 >> 33) ^ *a1);
  v10 = 0xFF51AFD7ED558CCDLL * ((0xC4CEB9FE1A85EC53 * (v9 ^ (v9 >> 33))) ^ *a3);
  *a1 = (0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v10 ^ (v10 >> 33))) >> 33);
  return scml::Hasher::combineRecursive<SCMLTextSanitizerMode &,unsigned long &,BOOL &,SCMLRegion &,NSString * {__strong}&,int &>(a1, a4, a5, a6, a7, a8, a9);
}

uint64_t scml::Hasher::combineRecursive<SCMLTextSanitizerMode &,unsigned long &,BOOL &,SCMLRegion &,NSString * {__strong}&,int &>(unint64_t *a1, unsigned int *a2, void *a3, unsigned __int8 *a4, unsigned int *a5, id *a6, int *a7)
{
  v7 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a1 >> 33) ^ *a1);
  v8 = 0xFF51AFD7ED558CCDLL * (*a3 ^ ((0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) >> 33) ^ (0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) ^ ((*a3 ^ ((0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33))) >> 33) ^ (0xC4CEB9FE1A85EC53 * (v7 ^ (v7 >> 33)))) >> 33));
  *a1 = (0xC4CEB9FE1A85EC53 * (v8 ^ (v8 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v8 ^ (v8 >> 33))) >> 33);
  return scml::Hasher::combineRecursive<BOOL &,SCMLRegion &,NSString * {__strong}&,int &>(a1, a4, a5, a6, a7);
}

uint64_t scml::Hasher::combineRecursive<BOOL &,SCMLRegion &,NSString * {__strong}&,int &>(unint64_t *a1, unsigned __int8 *a2, unsigned int *a3, id *a4, int *a5)
{
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a1 >> 33) ^ *a1);
  v6 = 0xFF51AFD7ED558CCDLL * ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ *a3);
  *a1 = (0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) >> 33);
  return scml::Hasher::combineRecursive<NSString * {__strong}&,int &>(a1, a4, a5);
}

std::runtime_error *scml::Exception::Exception(std::runtime_error *a1, const void *a2, size_t a3, void *a4)
{
  v7 = a4;
  scml::Exception::description(a2, a3, v7, &v9);
  std::runtime_error::runtime_error(a1, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F37468C0;
  a1[1].__vftable = v7;
  return a1;
}

void sub_1B8A736C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void scml::Exception::description(const void *a1@<X0>, size_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v7 localizedDescription];
    v11 = [v9 stringWithFormat:@"%@", v10];
    scml::strFromNSString(__p, v11);

    if (a2)
    {
      scml::strCat<std::string_view &,char const(&)[3],std::string>(v14, ": ", __p, a4);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a4 = *__p;
      *(a4 + 16) = v13;
    }
  }

  else if (a2)
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    *(a4 + 23) = a2;
    memmove(a4, a1, a2);
    *(a4 + a2) = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a4, "Error");
  }
}

void sub_1B8A73854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::runtime_error *scml::Exception::Exception(std::runtime_error *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  scml::Exception::description(a2, a3, a4, &v8);
  std::runtime_error::runtime_error(a1, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F37468C0;
  a1[1].__vftable = 0;
  if (v6)
  {
    objc_storeStrong(&a1[1].__vftable, v6[2]);
  }

  return a1;
}

void sub_1B8A7397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *scml::Exception::description@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  if (a2)
  {
    v7 = (*(*a3 + 16))(a3);
    return scml::strCat<std::string_view &,char const(&)[3],char const*>(v8, ": ", a4, &v7);
  }

  else
  {
    v6 = (*(*a3 + 16))(a3);

    return std::string::basic_string[abi:ne200100]<0>(a4, v6);
  }
}

id scml::Exception::error(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = SCMLErrorDomain;
  v6 = a2;
  v7 = scml::Exception::userInfo(a1, a3, a4);
  v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v7];

  return v8;
}

id scml::Exception::userInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v8[0] = *MEMORY[0x1E696A578];
    v4 = scml::Exception::fullDescription(a1, a2, a3);
    v8[1] = *MEMORY[0x1E696AA08];
    v9[0] = v4;
    v9[1] = *(a1 + 16);
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v10 = *MEMORY[0x1E696A578];
    v4 = scml::Exception::fullDescription(a1, a2, a3);
    v11[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  v6 = v5;

  return v6;
}

id scml::Exception::fullDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  if (a3)
  {
    v9 = (*(*a1 + 16))(a1);
    scml::strCat<std::string_view &,char const(&)[3],char const*>(v12, ": ", __p, &v9);
    if ((v11 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v4 = v11;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = scml::strToNSString(v3, v4);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    v7 = strlen(v6);
    v5 = scml::strToNSString(v6, v7);
  }

  return v5;
}

void sub_1B8A73D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scml::strCat<std::string_view &,char const(&)[3],char const*>@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X8>, const char **a4@<X2>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, *a1, a1[1]);
  scml::scml_impl::strCat<char const(&)[3],char const*>(&v9, a2, a4);
  std::ostringstream::str[abi:ne200100](&v9, a3);
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v13);
}

void sub_1B8A73E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

id scml::error(unsigned int a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696ABC0];
  v5 = SCMLErrorDomain;
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:v5 code:a1 userInfo:v6];

  return v7;
}

{
  scml::Exception::Exception(&v5, "", 0, a2);
  v3 = scml::Exception::error(&v5, a1, "", 0);

  std::runtime_error::~runtime_error(&v5);

  return v3;
}

id scml::error(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = scml::strToNSString(a2, a3);
  v5 = scml::error(a1, v4);

  return v5;
}

id scml::error(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *lpsrc)
{
  v19[0] = a2;
  v19[1] = a3;
  v8 = *lpsrc;
  if (v9)
  {
    v10 = scml::Exception::error(v9, a1, a2, a3);
  }

  else
  {
    v11 = (v8 + 16);
    if (a3)
    {
      v15 = (*v11)(lpsrc);
      scml::strCat<std::string_view &,char const(&)[3],char const*>(v19, ": ", &__p, &v15);
      if ((v18 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v18 & 0x80u) == 0)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }

    else
    {
      v15 = (*v11)(lpsrc);
      scml::strCat<char const*>(&v15, &__p);
      if ((v18 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v18 & 0x80u) == 0)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }

    v10 = scml::error(a1, p_p, v13);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  return v10;
}

void sub_1B8A741C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id scml::error(unsigned int a1, const void *a2, size_t a3, void *a4)
{
  scml::Exception::Exception(&v7, a2, a3, a4);
  v5 = scml::Exception::error(&v7, a1, "", 0);

  std::runtime_error::~runtime_error(&v7);

  return v5;
}

uint64_t scml::strCat<char const*>@<X0>(const char **a1@<X0>, void *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  scml::scml_impl::strCat<char const*>(&v5, a1);
  std::ostringstream::str[abi:ne200100](&v5, a2);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1B8CC71A0](&v9);
}

void sub_1B8A74460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void scml::scml_impl::strCat<char const(&)[3],char const*>(void *a1, char *__s, const char **a3)
{
  v6 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v6);

  scml::scml_impl::strCat<char const*>(a1, a3);
}

void scml::scml_impl::strCat<char const*>(void *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);

  scml::scml_impl::strCat<>();
}

void sub_1B8A74D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8A75160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8A75380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B8A755D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B8A76310(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SCMLVideoFrame;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B8A76480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SCMLVideoFrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B8A779B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  scml::SignpostInterval::~SignpostInterval(va);
  _Unwind_Resume(a1);
}

void sub_1B8A77D8C(_Unwind_Exception *a1)
{
  if (v5)
  {
  }

  _Block_object_dispose((v7 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8A78360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  scml::SignpostInterval::~SignpostInterval((v30 - 120));
  _Unwind_Resume(a1);
}

void sub_1B8A78768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(va, 8);
  scml::SignpostInterval::~SignpostInterval((v25 - 120));
  _Unwind_Resume(a1);
}

void sub_1B8A78BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  scml::SignpostInterval::~SignpostInterval((v30 - 120));
  _Unwind_Resume(a1);
}

void sub_1B8A78FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(va, 8);
  scml::SignpostInterval::~SignpostInterval((v25 - 120));
  _Unwind_Resume(a1);
}

void sub_1B8A792E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_1B8A7964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B8A7A3AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8A7A3CC, 0, 0);
}

uint64_t sub_1B8A7A3CC()
{
  IOSurface = CVPixelBufferGetIOSurface(*(v0 + 24));
  if (IOSurface)
  {
    v2 = *(v0 + 16);

    v3 = sub_1B8AF0458();
    v4 = MEMORY[0x1E69C6258];
    v2[3] = v3;
    v2[4] = v4;
    __swift_allocate_boxed_opaque_existential_1(v2);
    sub_1B8AF0448();
  }

  else
  {
    sub_1B8A7BACC();
    swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 2;
    *(v6 + 24) = 3;
    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8A7A4CC(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v5 = sub_1B8AF0488();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[9] = v6;
  *v6 = v3;
  v6[1] = sub_1B8A7A5F4;

  return sub_1B8A7AA38(a2);
}

uint64_t sub_1B8A7A5F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A7A780, 0, 0);
  }
}

uint64_t sub_1B8A7A780()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 80) tokenCountWithError_];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 integerValue];

    v6 = sub_1B8AF0388();
    v7 = sub_1B8AF08C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v5;
      _os_log_impl(&dword_1B8A3C000, v6, v7, "Bridge token count: %ld", v8, 0xCu);
      MEMORY[0x1B8CC7D70](v8, -1, -1);
    }

    v9 = *(v0 + 80);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);

    (*(v11 + 104))(v10, *MEMORY[0x1E69C62B0], v12);
    *(v0 + 24) = 0;
    v13 = [v9 float16DataWithError_];
    v14 = *(v0 + 24);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    if (v13)
    {
      v17 = v13;
      v18 = *(v0 + 32);
      v19 = v14;
      sub_1B8AEFC28();

      v20 = sub_1B8AF0478();
      v21 = MEMORY[0x1E69C6260];
      v18[3] = v20;
      v18[4] = v21;
      __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1B8AF0468();

      v22 = *(v0 + 8);
      goto LABEL_9;
    }

    v24 = *(v0 + 48);
    v25 = *(*(v0 + 56) + 8);
    v23 = v14;
    v25(v16, v24);
  }

  else
  {
    v15 = *(v0 + 80);
    v23 = v2;
  }

  sub_1B8AEFBD8();

  swift_willThrow();

  v22 = *(v0 + 8);
LABEL_9:

  return v22();
}

uint64_t sub_1B8A7AA38(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1B8AF02F8();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A7AB04, 0, 0);
}

uint64_t sub_1B8A7AB04()
{
  sub_1B8AF02E8();

  v1 = sub_1B8AF0318();
  v2 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v3 + 24);

    v5 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v1, v2, v5, "CustomAFMImageConverter.embed", "bridgeRequestType=%lu", v4, 0xCu);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[19];
  v10 = v0[20];
  (*(v8 + 16))(v0[23], v6, v7);
  sub_1B8AF0368();
  swift_allocObject();
  v0[25] = sub_1B8AF0358();
  (*(v8 + 8))(v6, v7);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B8A7AD74;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA964F0, &qword_1B8AF6288);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B8AB175C;
  v0[13] = &block_descriptor;
  v0[14] = v13;
  [v11 embedPixelBufferAsynchronously:v9 requestType:v12 version:8 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B8A7AD74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1B8A7AF2C;
  }

  else
  {
    v2 = sub_1B8A7AE84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A7AE84()
{
  v1 = v0[18];
  sub_1B8A7AFDC(v0[20], "CustomAFMImageConverter.embed", 29, 2, v0[25]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B8A7AF2C()
{
  v1 = v0[25];
  v2 = v0[20];
  swift_willThrow();
  sub_1B8A7AFDC(v2, "CustomAFMImageConverter.embed", 29, 2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8A7AFDC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8A7B284()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML23CustomAFMImageConverter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML23CustomAFMImageConverter_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1B8A7B368(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8A7B414;

  return sub_1B8A7A4CC(a1, a2);
}

uint64_t sub_1B8A7B414()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for CustomAFMImageConverter(uint64_t a1)
{
  result = qword_1EBA964A8;
  if (!qword_1EBA964A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8A7B5B4(uint64_t a1)
{
  result = sub_1B8AF03A8();
  if (v2 <= 0x3F)
  {
    result = sub_1B8AF0328();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_1B8A7B714@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B8A7B740@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B8A7B804@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1B8A7B820@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B8A7B8E0(uint64_t a1, uint64_t a2)
{
  sub_1B8AF1018();
  swift_getWitnessTable();
  sub_1B8AEFF78();
  return sub_1B8AF1038();
}

uint64_t sub_1B8A7B948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B8A7BE24(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B8A7B988(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1B8AEFF68();
}

uint64_t sub_1B8A7BA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8A7BACC()
{
  result = qword_1EBA964E8;
  if (!qword_1EBA964E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA964E8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B8A7BBE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1B8A7BCB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B8A7BE24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B8A7BE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8A7BF2C(uint64_t a1)
{
  v2 = sub_1B8A8A140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A7BF68(uint64_t a1)
{
  v2 = sub_1B8A8A140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A7C044(uint64_t a1)
{
  v2 = sub_1B8A89E98();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8A7C080(uint64_t a1)
{
  v2 = sub_1B8A89E98();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8A7C0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1802723700 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8A7C154(uint64_t a1)
{
  v2 = sub_1B8A89708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A7C190(uint64_t a1)
{
  v2 = sub_1B8A89708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A7C210@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B8AF1048();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = sub_1B8AF0C18();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_1B8A7C3DC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1B8AF1058();
  sub_1B8AF0C98();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1B8A7C53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v8;
  v9 = a3(v6, v5);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v11;
}

uint64_t sub_1B8A7C610(uint64_t a1)
{
  v2 = sub_1B8A88138();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8A7C64C(uint64_t a1)
{
  v2 = sub_1B8A88138();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t AFMModel.__allocating_init(representativeTask:modelManagerServicesUseCaseID:onBehalfOf:locale:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v32 = a3;
  v33 = a6;
  v36 = a5;
  v28 = a2;
  v29 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = &v27 - v9;
  v10 = swift_allocObject();
  v11 = *a1;
  v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8AF03A8();
  v14 = __swift_project_value_buffer(v13, qword_1EDB75B38);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v31 = v12;
  v16(v10 + v12, v14, v13);
  v17 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v18 = sub_1B8AF0328();
  v19 = __swift_project_value_buffer(v18, qword_1EDB75B50);
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v30 = v17;
  v21(v10 + v17, v19, v18);
  v37 = v11;
  sub_1B8A93BF0(v34);
  if (v6)
  {

    sub_1B8A897C4(v33, &qword_1EBA96528, &unk_1B8AF64B0);
    (*(v15 + 8))(v10 + v31, v13);
    (*(v20 + 8))(v10 + v30, v18);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v10 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v23 = v34[1];
    *v22 = v34[0];
    *(v22 + 16) = v23;
    *(v22 + 32) = v35;
    LOBYTE(v34[0]) = v11;
    v24 = v27;
    sub_1B8A8975C(v33, v27, &qword_1EBA96528, &unk_1B8AF64B0);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v26 = sub_1B8A8AB94(v34, v28, v32, v29, v36 & 1, v24);
    sub_1B8A897C4(v33, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v10 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v26;
  }

  return v10;
}

char *AFMModel.init(representativeTask:modelManagerServicesUseCaseID:onBehalfOf:locale:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = v6;
  v37 = a5;
  v29 = a2;
  v30 = a4;
  v32 = *v8;
  v33 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = &v28 - v12;
  v13 = *a1;
  v14 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v34 = a6;
  v15 = sub_1B8AF03A8();
  v16 = __swift_project_value_buffer(v15, qword_1EDB75B38);
  v17 = *(v15 - 8);
  v18 = *(v17 + 16);
  v31 = v14;
  v18(&v8[v14], v16, v15);
  v19 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v20 = sub_1B8AF0328();
  v21 = __swift_project_value_buffer(v20, qword_1EDB75B50);
  v22 = *(v20 - 8);
  (*(v22 + 16))(&v8[v19], v21, v20);
  v38 = v13;
  sub_1B8A93BF0(v35);
  if (v7)
  {

    sub_1B8A897C4(v34, &qword_1EBA96528, &unk_1B8AF64B0);
    (*(v17 + 8))(&v8[v31], v15);
    (*(v22 + 8))(&v8[v19], v20);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = &v8[OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter];
    v24 = v35[1];
    *v23 = v35[0];
    *(v23 + 1) = v24;
    *(v23 + 4) = v36;
    LOBYTE(v35[0]) = v13;
    v25 = v28;
    sub_1B8A8975C(v34, v28, &qword_1EBA96528, &unk_1B8AF64B0);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v27 = sub_1B8A8AB94(v35, v29, v33, v30, v37 & 1, v25);
    sub_1B8A897C4(v34, &qword_1EBA96528, &unk_1B8AF64B0);
    *&v8[OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core] = v27;
  }

  return v8;
}

uint64_t AFMModel.getRawPrompt(pixelBuffer:task:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 248) = a2;
  *(v4 + 256) = v3;
  *(v4 + 240) = a1;
  v6 = sub_1B8AF03D8();
  *(v4 + 264) = v6;
  *(v4 + 272) = *(v6 - 8);
  *(v4 + 280) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96538, &qword_1B8AF72D0);
  *(v4 + 288) = v7;
  *(v4 + 296) = *(v7 - 8);
  *(v4 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 385) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A7CF50, 0, 0);
}

uint64_t sub_1B8A7CF50()
{
  sub_1B8A8975C(*(v0 + 256) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
  if (*(v0 + 168))
  {
    sub_1B8A4270C((v0 + 144), v0 + 104);
    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v1);
    v11 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_1B8A7D178;
    v4 = *(v0 + 248);

    return v11(v0 + 184, v4, v1, v2);
  }

  else
  {
    sub_1B8A897C4(v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
    v6 = AFMModel.Task.rawValue.getter();
    v8 = v7;
    sub_1B8A851A0();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B8A7D178()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1B8A7DA10;
  }

  else
  {
    v2 = sub_1B8A7D28C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A7D28C()
{
  v1 = *(v0 + 385);
  v2 = *(v0 + 312);
  v3 = sub_1B8AF00F8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v5 = 0xEB00000000746E65;
  v6 = 0x746E6F4372657375;
  v7 = 0xE600000000000000;
  v8 = 0x736567616D69;
  if (((1 << v1) & 0x285C) == 0)
  {
    v8 = 0x6D6F725072657375;
    v7 = 0xEA00000000007470;
  }

  if (((1 << v1) & 0x7A1) == 0)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = *(v0 + 385);
  *(inited + 32) = v6;
  v10 = inited + 32;
  *(inited + 40) = v5;
  v11 = inited;
  sub_1B8A85238(v0 + 184, inited + 48);
  v12 = sub_1B8AE66C0(v11);
  *(v0 + 336) = v12;
  swift_setDeallocating();
  sub_1B8A897C4(v10, &qword_1EBA96558, qword_1B8AF64E0);
  *(v0 + 384) = v9;
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_1B8A7D478;
  v14 = *(v0 + 304);
  v15 = *(v0 + 312);

  return sub_1B8A8B7A0(v14, v12, (v0 + 384), v15);
}

uint64_t sub_1B8A7D478()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1B8A7D7E4;
  }

  else
  {
    v2 = sub_1B8A7D59C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A7D59C()
{
  sub_1B8AF0218();
  sub_1B8AF01E8();
  v1 = v0[28];
  v0[45] = v1;
  v0[29] = v1;
  v2 = swift_task_alloc();
  v0[46] = v2;
  v3 = sub_1B8AEFFD8();
  v4 = sub_1B8A87EF8();
  *v2 = v0;
  v2[1] = sub_1B8A7D688;
  v5 = v0[30];

  return MEMORY[0x1EEE0A3E0](v5, v0 + 29, v3, v4);
}

uint64_t sub_1B8A7D688()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);

  if (v0)
  {
    v3 = sub_1B8A7D950;
  }

  else
  {
    v3 = sub_1B8A7D88C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8A7D7E4()
{
  sub_1B8A897C4(v0[39], &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A7D88C()
{
  v1 = v0[39];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A7D950()
{
  v1 = v0[39];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A7DA10()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A7DA98(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A7DB38, 0, 0);
}

uint64_t sub_1B8A7DB38()
{
  sub_1B8A8975C(*(v0 + 240) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
  if (*(v0 + 168))
  {
    sub_1B8A4270C((v0 + 144), v0 + 104);
    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v1);
    v8 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_1B8A7DD40;
    v4 = *(v0 + 232);

    return v8(v0 + 184, v4, v1, v2);
  }

  else
  {
    sub_1B8A897C4(v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
    sub_1B8A851A0();
    swift_allocError();
    *v6 = 0x6F43656C706F6570;
    v6[1] = 0xEB00000000746E75;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B8A7DD40()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1B8A7E268;
  }

  else
  {
    v2 = sub_1B8A7DE54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A7DE54()
{
  v1 = v0[31];
  v2 = *(v0[30] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v3 = sub_1B8AF00F8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  sub_1B8A85238((v0 + 23), inited + 48);
  v5 = sub_1B8AE66C0(inited);
  v0[34] = v5;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1B8A7DFDC;
  v7 = v0[31];

  return sub_1B8A8C1E8(v5, 4, v7, "AFMModel.predict", 16, 2, v2);
}

uint64_t sub_1B8A7DFDC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 288) = v2;

  if (v2)
  {
    v7 = sub_1B8A7E1D0;
  }

  else
  {

    *(v6 + 296) = a2;
    *(v6 + 304) = a1;
    v7 = sub_1B8A7E118;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A7E118()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[28];
  sub_1B8A897C4(v0[31], &qword_1EBA96540, &unk_1B8AF64D0);
  sub_1B8AABA60(v2, v1, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8A7E1D0()
{
  v1 = v0[31];

  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A7E268()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A7E2D4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A7E370, 0, 0);
}

uint64_t sub_1B8A7E370()
{
  sub_1B8A8975C(*(v0 + 264) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
  if (*(v0 + 168))
  {
    v1 = *(v0 + 256);
    sub_1B8A4270C((v0 + 144), v0 + 104);
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v2);
    v4 = [*v1 pixelBuffer];
    *(v0 + 280) = v4;
    v9 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 288) = v5;
    *v5 = v0;
    v5[1] = sub_1B8A7E5A4;

    return v9(v0 + 184, v4, v2, v3);
  }

  else
  {
    sub_1B8A897C4(v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
    sub_1B8A851A0();
    swift_allocError();
    *v7 = 0xD000000000000013;
    v7[1] = 0x80000001B8B055F0;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1B8A7E5A4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1B8A7EB34;
  }

  else
  {

    v3 = sub_1B8A7E6C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8A7E6C0()
{
  v1 = v0[34];
  v2 = *(v0[33] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v3 = sub_1B8AF00F8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  sub_1B8A85238((v0 + 23), inited + 48);
  v5 = sub_1B8AE66C0(inited);
  v0[38] = v5;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_1B8A7E848;
  v7 = v0[34];

  return sub_1B8A8C1E8(v5, 11, v7, "AFMModel.predict", 16, 2, v2);
}

uint64_t sub_1B8A7E848(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v7 = sub_1B8A7EA9C;
  }

  else
  {

    *(v6 + 328) = a2;
    *(v6 + 336) = a1;
    v7 = sub_1B8A7E984;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A7E984()
{
  sub_1B8A897C4(v0[34], &qword_1EBA96540, &unk_1B8AF64D0);
  v1 = sub_1B8AF06C8();
  v3 = v2;

  v0[28] = v1;
  v0[29] = v3;
  v0[30] = 0x726F6A616DLL;
  v0[31] = 0xE500000000000000;
  sub_1B8A3F920();
  v4 = sub_1B8AF0A08();
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1B8A7EA9C()
{
  v1 = v0[34];

  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A7EB34()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A7EBA8(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_1B8AEFB28();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A7ECA0, 0, 0);
}

uint64_t sub_1B8A7ECA0()
{
  sub_1B8A8975C(*(v0 + 248) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
  if (*(v0 + 168))
  {
    v1 = *(v0 + 240);
    sub_1B8A4270C((v0 + 144), v0 + 104);
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v2);
    v4 = [*v1 pixelBuffer];
    *(v0 + 288) = v4;
    v9 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 296) = v5;
    *v5 = v0;
    v5[1] = sub_1B8A7EEE0;

    return v9(v0 + 184, v4, v2, v3);
  }

  else
  {
    sub_1B8A897C4(v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
    sub_1B8A851A0();
    swift_allocError();
    strcpy(v7, "flagsAndMaps");
    v7[13] = 0;
    *(v7 + 7) = -5120;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1B8A7EEE0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1B8A7F4B0;
  }

  else
  {

    v3 = sub_1B8A7EFFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8A7EFFC()
{
  v1 = v0[35];
  v2 = *(v0[31] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v3 = sub_1B8AF00F8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  sub_1B8A85238((v0 + 23), inited + 48);
  v5 = sub_1B8AE66C0(inited);
  v0[39] = v5;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_1B8A7F188;
  v7 = v0[35];

  return sub_1B8A8C1E8(v5, 2, v7, "AFMModel.predict", 16, 2, v2);
}

uint64_t sub_1B8A7F188(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 328) = v2;

  if (v2)
  {
    v7 = sub_1B8A7F410;
  }

  else
  {

    *(v6 + 336) = a2;
    *(v6 + 344) = a1;
    v7 = sub_1B8A7F2C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A7F2C4()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[34];
  v4 = v0[32];
  v5 = v0[33];
  sub_1B8A897C4(v0[35], &qword_1EBA96540, &unk_1B8AF64D0);
  v0[28] = v2;
  v0[29] = v1;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  sub_1B8AF09D8();
  (*(v5 + 8))(v3, v4);

  v8 = sub_1B8AF06C8();
  v7 = v6;

  LODWORD(v8) = sub_1B8A88330(v8, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  if (v8 == 4)
  {
    v8 = 3;
  }

  else
  {
    v8 = v8;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1B8A7F410()
{
  v1 = v0[35];

  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A7F4B0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A7F52C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A7F5C8, 0, 0);
}

uint64_t sub_1B8A7F5C8()
{
  sub_1B8A8975C(*(v0 + 232) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
  if (*(v0 + 168))
  {
    v1 = *(v0 + 224);
    sub_1B8A4270C((v0 + 144), v0 + 104);
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v2);
    v4 = [*v1 pixelBuffer];
    *(v0 + 248) = v4;
    v9 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_1B8A7F804;

    return v9(v0 + 184, v4, v2, v3);
  }

  else
  {
    sub_1B8A897C4(v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
    sub_1B8A851A0();
    swift_allocError();
    *v7 = 0x65636E656C6F6976;
    v7[1] = 0xEF65726F47646E41;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1B8A7F804()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1B8A8AB3C;
  }

  else
  {

    v3 = sub_1B8A7F920;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8A7F920()
{
  v1 = v0[30];
  v2 = *(v0[29] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v3 = sub_1B8AF00F8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  sub_1B8A85238((v0 + 23), inited + 48);
  v5 = sub_1B8AE66C0(inited);
  v0[34] = v5;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1B8A7FAA8;
  v7 = v0[30];

  return sub_1B8A8C1E8(v5, 13, v7, "AFMModel.predict", 16, 2, v2);
}

uint64_t sub_1B8A7FAA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 288) = v2;

  if (v2)
  {
    v7 = sub_1B8A8AB44;
  }

  else
  {

    *(v6 + 296) = a2;
    *(v6 + 304) = a1;
    v7 = sub_1B8A7FBE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A7FBE4()
{
  v1 = v0[37];
  v2 = v0[38];
  sub_1B8A897C4(v0[30], &qword_1EBA96540, &unk_1B8AF64D0);
  v3 = sub_1B8A883C8(v2, v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1B8A7FC9C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A7FD38, 0, 0);
}

uint64_t sub_1B8A7FD38()
{
  sub_1B8A8975C(*(v0 + 232) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
  if (*(v0 + 168))
  {
    v1 = *(v0 + 224);
    sub_1B8A4270C((v0 + 144), v0 + 104);
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v2);
    v4 = [*v1 pixelBuffer];
    *(v0 + 248) = v4;
    v9 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_1B8A7FF70;

    return v9(v0 + 184, v4, v2, v3);
  }

  else
  {
    sub_1B8A897C4(v0 + 144, &qword_1EBA96530, &unk_1B8AF8CE0);
    sub_1B8A851A0();
    swift_allocError();
    strcpy(v7, "prepubescent");
    v7[13] = 0;
    *(v7 + 7) = -5120;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1B8A7FF70()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1B8A804A0;
  }

  else
  {

    v3 = sub_1B8A8008C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8A8008C()
{
  v1 = v0[30];
  v2 = *(v0[29] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v3 = sub_1B8AF00F8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  sub_1B8A85238((v0 + 23), inited + 48);
  v5 = sub_1B8AE66C0(inited);
  v0[34] = v5;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1B8A80214;
  v7 = v0[30];

  return sub_1B8A8C1E8(v5, 6, v7, "AFMModel.predict", 16, 2, v2);
}

uint64_t sub_1B8A80214(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 288) = v2;

  if (v2)
  {
    v7 = sub_1B8A80408;
  }

  else
  {

    *(v6 + 296) = a2;
    *(v6 + 304) = a1;
    v7 = sub_1B8A80350;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A80350()
{
  v1 = v0[37];
  v2 = v0[38];
  sub_1B8A897C4(v0[30], &qword_1EBA96540, &unk_1B8AF64D0);
  v3 = sub_1B8A88598(v2, v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1B8A80408()
{
  v1 = v0[30];

  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A804A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A80514(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a2;
  v29 = a4;
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966F0, &qword_1B8AF6CE0);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966F8, &qword_1B8AF6CE8);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96700, &qword_1B8AF6CF0);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96708, &qword_1B8AF6CF8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8A8A194();
  sub_1B8AF1058();
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = 1;
      sub_1B8A8A284();
      sub_1B8AF0C88();
      v17 = v22;
      sub_1B8AF0C98();
      v18 = v21;
    }

    else
    {
      v32 = 2;
      sub_1B8A8A1E8();
      v9 = v23;
      sub_1B8AF0C88();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
      sub_1B8A8A32C(&qword_1EBA96710, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v17 = v25;
      sub_1B8AF0CC8();
      v18 = v24;
    }

    (*(v18 + 8))(v9, v17);
  }

  else
  {
    v30 = 0;
    sub_1B8A8A2D8();
    sub_1B8AF0C88();
    sub_1B8AF0C98();
    (*(v20 + 8))(v12, v10);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1B8A80940()
{
  v1 = *v0;
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](v1);
  return sub_1B8AF1038();
}

uint64_t sub_1B8A80988(uint64_t a1)
{
  v2 = *v1;
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](v2);
  return sub_1B8AF1038();
}

unint64_t sub_1B8A809CC()
{
  v1 = 0x73694D736B736174;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1B8A80A3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8A88764(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8A80A70(uint64_t a1)
{
  v2 = sub_1B8A8A194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A80AAC(uint64_t a1)
{
  v2 = sub_1B8A8A194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A80AF4(uint64_t a1)
{
  v2 = sub_1B8A8A1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A80B30(uint64_t a1)
{
  v2 = sub_1B8A8A1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A80B6C(uint64_t a1)
{
  v2 = sub_1B8A8A2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A80BA8(uint64_t a1)
{
  v2 = sub_1B8A8A2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8A80BE4()
{
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](0);
  return sub_1B8AF1038();
}

uint64_t sub_1B8A80C28(uint64_t a1)
{
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](0);
  return sub_1B8AF1038();
}

uint64_t sub_1B8A80C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8A80CE8(uint64_t a1)
{
  v2 = sub_1B8A8A284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A80D24(uint64_t a1)
{
  v2 = sub_1B8A8A284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B8A80D60@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8A88890(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1B8A80DB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD7040(v1, v2, v3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v8;
}

uint64_t sub_1B8A80E84(uint64_t a1)
{
  v2 = sub_1B8A89BA4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8A80EC0(uint64_t a1)
{
  v2 = sub_1B8A89BA4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8A80EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x1E69E7CC0];
  v31 = *(a1 + 16);
  sub_1B8AD846C(0, v1, 0);
  v2 = v32;
  v4 = a1 + 56;
  result = sub_1B8AF0A38();
  v6 = v31;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_35;
    }

    v11 = *(a1 + 36);
    ++v7;
    v12 = result & 0x3F;
    v13 = 0xEA00000000007974;
    v14 = 0x6566615365646F63;
    switch(*(*(a1 + 48) + result))
    {
      case 1:
        break;
      case 2:
        v14 = 0x646E417367616C66;
        v13 = 0xEC0000007370614DLL;
        break;
      case 3:
        v13 = 0xE800000000000000;
        v14 = 0x4E4F534A6373696DLL;
        break;
      case 4:
        v14 = 0x6F43656C706F6570;
        v13 = 0xEB00000000746E75;
        break;
      case 5:
        v14 = 0x6544656C706F6570;
        v13 = 0xEF6E6F6974636574;
        break;
      case 6:
        v14 = 0x7365627570657270;
        v13 = 0xEC000000746E6563;
        break;
      case 7:
        v14 = 0xD000000000000014;
        v13 = 0x80000001B8B05560;
        break;
      case 8:
        v14 = 0xD000000000000017;
        v13 = 0x80000001B8B05580;
        break;
      case 9:
        v14 = 0xD000000000000020;
        v13 = 0x80000001B8B055A0;
        break;
      case 0xA:
        v14 = 0xD000000000000014;
        v13 = 0x80000001B8B055D0;
        break;
      case 0xB:
        v14 = 0xD000000000000013;
        v13 = 0x80000001B8B055F0;
        break;
      case 0xC:
        v14 = 0x6566615374786574;
        break;
      case 0xD:
        v14 = 0x65636E656C6F6976;
        v13 = 0xEF65726F47646E41;
        break;
      default:
        v14 = 0xD000000000000014;
        v13 = 0x80000001B8B05500;
        break;
    }

    v16 = *(v32 + 16);
    v15 = *(v32 + 24);
    if (v16 >= v15 >> 1)
    {
      v29 = *(a1 + 36);
      v30 = result;
      v27 = result & 0x3F;
      v28 = v7;
      sub_1B8AD846C((v15 > 1), v16 + 1, 1);
      v12 = v27;
      v7 = v28;
      v6 = v31;
      v11 = v29;
      result = v30;
    }

    *(v32 + 16) = v16 + 1;
    v17 = v32 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_36;
    }

    v18 = *(v4 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_37;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_38;
    }

    v19 = v18 & (-2 << v12);
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          v25 = v7;
          sub_1B8A896DC(result, v11, 0);
          v7 = v25;
          v6 = v31;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      v26 = v7;
      sub_1B8A896DC(result, v11, 0);
      v7 = v26;
      v6 = v31;
    }

LABEL_4:
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B8A81344(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A813E4, 0, 0);
}

uint64_t sub_1B8A813E4()
{
  sub_1B8A8975C(*(v0 + 152) + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, v0 + 56, &qword_1EBA96530, &unk_1B8AF8CE0);
  if (*(v0 + 80))
  {
    sub_1B8A4270C((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v8 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = sub_1B8A815E4;
    v4 = *(v0 + 144);

    return v8(v0 + 96, v4, v1, v2);
  }

  else
  {
    sub_1B8A897C4(v0 + 56, &qword_1EBA96530, &unk_1B8AF8CE0);
    sub_1B8A851A0();
    swift_allocError();
    *v6 = 0x4E4F534A6373696DLL;
    v6[1] = 0xE800000000000000;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B8A815E4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B8A819F8;
  }

  else
  {
    v2 = sub_1B8A816F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A816F8()
{
  v1 = *(v0 + 160);
  v2 = sub_1B8AF00F8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_1B8A817FC;
  v4 = *(v0 + 160);

  return sub_1B8A81AD8(v0 + 96, 3, v4);
}

uint64_t sub_1B8A817FC(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[20];
  if (v1)
  {
    sub_1B8A897C4(v5, &qword_1EBA96540, &unk_1B8AF64D0);
    v6 = sub_1B8A81A64;
  }

  else
  {
    v4[25] = a1;
    sub_1B8A897C4(v5, &qword_1EBA96540, &unk_1B8AF64D0);
    v6 = sub_1B8A81964;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B8A81964()
{
  v1 = v0[25];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_1B8A90E40(v1 & 0x1FFFFFFFFLL, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8A819F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A81A64()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A81AD8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = v3;
  *(v4 + 264) = a2;
  *(v4 + 192) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A81B00, 0, 0);
}

uint64_t sub_1B8A81B00()
{
  v1 = sub_1B8AEDA08(0xD000000000000019, 0x80000001B8B058C0);
  v2 = 0xEB00000000746E65;
  if (v1 != 2 && (v1 & 1) != 0 && (sub_1B8A89634(), v3 = sub_1B8AF0938(), v4 = sub_1B8AF08C8(), v5 = os_log_type_enabled(v3, v4), v3, v5))
  {
    v6 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    v8 = 0x746E6F4372657375;
    v9 = inited;
    if (((1 << v6) & 0x7A1) == 0)
    {
      if (((1 << v6) & 0x285C) != 0)
      {
        v2 = 0xE600000000000000;
        v8 = 0x736567616D69;
      }

      else
      {
        v8 = 0x6D6F725072657375;
        v2 = 0xEA00000000007470;
      }
    }

    v24 = *(v0 + 192);
    *(v9 + 32) = v8;
    *(v9 + 40) = v2;
    sub_1B8A85238(v24, v9 + 48);
    v25 = sub_1B8AE66C0(v9);
    *(v0 + 216) = v25;
    swift_setDeallocating();
    sub_1B8A897C4(v9 + 32, &qword_1EBA96558, qword_1B8AF64E0);
    v26 = swift_task_alloc();
    *(v0 + 224) = v26;
    *v26 = v0;
    v26[1] = sub_1B8A81EB8;
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 264);

    return sub_1B8A8C1E8(v25, v29, v27, "AFMModel.unconstrained", 22, 2, v28);
  }

  else
  {
    v10 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1B8AF6490;
    v12 = 0xE600000000000000;
    v13 = 0x736567616D69;
    if (((1 << v10) & 0x285C) == 0)
    {
      v13 = 0x6D6F725072657375;
      v12 = 0xEA00000000007470;
    }

    if (((1 << v10) & 0x7A1) != 0)
    {
      v14 = 0x746E6F4372657375;
    }

    else
    {
      v14 = v13;
    }

    if (((1 << v10) & 0x7A1) != 0)
    {
      v15 = 0xEB00000000746E65;
    }

    else
    {
      v15 = v12;
    }

    v16 = v11;
    v17 = *(v0 + 192);
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;
    sub_1B8A85238(v17, v16 + 48);
    v18 = sub_1B8AE66C0(v16);
    *(v0 + 240) = v18;
    swift_setDeallocating();
    sub_1B8A897C4(v16 + 32, &qword_1EBA96558, qword_1B8AF64E0);
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_1B8A821E4;
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    v22 = *(v0 + 264);

    return sub_1B8A8CCC8(v18, v22, v20, "AFMModel.predict", 16, 2, v21);
  }
}

uint64_t sub_1B8A81EB8(uint64_t a1, uint64_t a2)
{
  *(*v3 + 232) = v2;

  if (v2)
  {
    v4 = sub_1B8A82180;
  }

  else
  {

    v4 = sub_1B8A81FEC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8A81FEC()
{
  v1 = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v3 = 0x746E6F4372657375;
  v4 = 0xE600000000000000;
  v5 = 0x736567616D69;
  if (((1 << v1) & 0x285C) == 0)
  {
    v5 = 0x6D6F725072657375;
    v4 = 0xEA00000000007470;
  }

  if (((1 << v1) & 0x7A1) != 0)
  {
    v6 = 0xEB00000000746E65;
  }

  else
  {
    v3 = v5;
    v6 = v4;
  }

  v7 = inited;
  v8 = *(v0 + 192);
  *(v7 + 32) = v3;
  *(v7 + 40) = v6;
  sub_1B8A85238(v8, v7 + 48);
  v9 = sub_1B8AE66C0(v7);
  *(v0 + 240) = v9;
  swift_setDeallocating();
  sub_1B8A897C4(v7 + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_1B8A821E4;
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 264);

  return sub_1B8A8CCC8(v9, v13, v11, "AFMModel.predict", 16, 2, v12);
}

uint64_t sub_1B8A82180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A821E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A8233C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 0x1FFFFFFFFLL);
  }
}

uint64_t sub_1B8A8233C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A823A0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = v3;
  *(v4 + 264) = a2;
  *(v4 + 192) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A823C8, 0, 0);
}

uint64_t sub_1B8A823C8()
{
  v1 = sub_1B8AEDA08(0xD000000000000019, 0x80000001B8B058C0);
  v2 = 0xEB00000000746E65;
  if (v1 != 2 && (v1 & 1) != 0 && (sub_1B8A89634(), v3 = sub_1B8AF0938(), v4 = sub_1B8AF08C8(), v5 = os_log_type_enabled(v3, v4), v3, v5))
  {
    v6 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    v8 = 0x746E6F4372657375;
    v9 = inited;
    if (((1 << v6) & 0x7A1) == 0)
    {
      if (((1 << v6) & 0x285C) != 0)
      {
        v2 = 0xE600000000000000;
        v8 = 0x736567616D69;
      }

      else
      {
        v8 = 0x6D6F725072657375;
        v2 = 0xEA00000000007470;
      }
    }

    v24 = *(v0 + 192);
    *(v9 + 32) = v8;
    *(v9 + 40) = v2;
    sub_1B8A85238(v24, v9 + 48);
    v25 = sub_1B8AE66C0(v9);
    *(v0 + 216) = v25;
    swift_setDeallocating();
    sub_1B8A897C4(v9 + 32, &qword_1EBA96558, qword_1B8AF64E0);
    v26 = swift_task_alloc();
    *(v0 + 224) = v26;
    *v26 = v0;
    v26[1] = sub_1B8A82780;
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 264);

    return sub_1B8A8C1E8(v25, v29, v27, "AFMModel.unconstrained", 22, 2, v28);
  }

  else
  {
    v10 = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1B8AF6490;
    v12 = 0xE600000000000000;
    v13 = 0x736567616D69;
    if (((1 << v10) & 0x285C) == 0)
    {
      v13 = 0x6D6F725072657375;
      v12 = 0xEA00000000007470;
    }

    if (((1 << v10) & 0x7A1) != 0)
    {
      v14 = 0x746E6F4372657375;
    }

    else
    {
      v14 = v13;
    }

    if (((1 << v10) & 0x7A1) != 0)
    {
      v15 = 0xEB00000000746E65;
    }

    else
    {
      v15 = v12;
    }

    v16 = v11;
    v17 = *(v0 + 192);
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;
    sub_1B8A85238(v17, v16 + 48);
    v18 = sub_1B8AE66C0(v16);
    *(v0 + 240) = v18;
    swift_setDeallocating();
    sub_1B8A897C4(v16 + 32, &qword_1EBA96558, qword_1B8AF64E0);
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_1B8A82A48;
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    v22 = *(v0 + 264);

    return sub_1B8A8D798(v18, v22, v20, "AFMModel.predict", 16, 2, v21);
  }
}

uint64_t sub_1B8A82780(uint64_t a1, uint64_t a2)
{
  *(*v3 + 232) = v2;

  if (v2)
  {
    v4 = sub_1B8A8AB48;
  }

  else
  {

    v4 = sub_1B8A828B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8A828B4()
{
  v1 = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v3 = 0x746E6F4372657375;
  v4 = 0xE600000000000000;
  v5 = 0x736567616D69;
  if (((1 << v1) & 0x285C) == 0)
  {
    v5 = 0x6D6F725072657375;
    v4 = 0xEA00000000007470;
  }

  if (((1 << v1) & 0x7A1) != 0)
  {
    v6 = 0xEB00000000746E65;
  }

  else
  {
    v3 = v5;
    v6 = v4;
  }

  v7 = inited;
  v8 = *(v0 + 192);
  *(v7 + 32) = v3;
  *(v7 + 40) = v6;
  sub_1B8A85238(v8, v7 + 48);
  v9 = sub_1B8AE66C0(v7);
  *(v0 + 240) = v9;
  swift_setDeallocating();
  sub_1B8A897C4(v7 + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_1B8A82A48;
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 264);

  return sub_1B8A8D798(v9, v13, v11, "AFMModel.predict", 16, 2, v12);
}

uint64_t sub_1B8A82A48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A8AB4C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B8A82BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A82C40, 0, 0);
}

uint64_t sub_1B8A82C40()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = *(v0[21] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v5 = MEMORY[0x1E69C6560];
  v0[16] = MEMORY[0x1E69E6158];
  v0[17] = v5;
  v0[13] = v2;
  v0[14] = v3;
  v6 = sub_1B8AF00F8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x746E6F4372657375;
  *(inited + 40) = 0xEB00000000746E65;
  sub_1B8A85238((v0 + 13), inited + 48);
  v8 = sub_1B8AE66C0(inited);
  v0[23] = v8;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_1B8A82E00;
  v10 = v0[22];

  return sub_1B8A8C1E8(v8, 10, v10, "AFMModel.predict", 16, 2, v4);
}

uint64_t sub_1B8A82E00(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 200) = v2;

  if (v2)
  {
    v7 = sub_1B8A82FEC;
  }

  else
  {

    *(v6 + 208) = a2;
    *(v6 + 216) = a1;
    v7 = sub_1B8A82F3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A82F3C()
{
  v1 = v0[18];
  sub_1B8A897C4(v0[22], &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  sub_1B8AAECBC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A82FEC()
{
  v1 = v0[22];

  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A83078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A83118, 0, 0);
}

uint64_t sub_1B8A83118()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = *(v0[21] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v5 = MEMORY[0x1E69C6560];
  v0[16] = MEMORY[0x1E69E6158];
  v0[17] = v5;
  v0[13] = v2;
  v0[14] = v3;
  v6 = sub_1B8AF00F8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x746E6F4372657375;
  *(inited + 40) = 0xEB00000000746E65;
  sub_1B8A85238((v0 + 13), inited + 48);
  v8 = sub_1B8AE66C0(inited);
  v0[23] = v8;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_1B8A832D8;
  v10 = v0[22];

  return sub_1B8A8C1E8(v8, 0, v10, "AFMModel.predict", 16, 2, v4);
}

uint64_t sub_1B8A832D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 200) = v2;

  if (v2)
  {
    v7 = sub_1B8A8AB38;
  }

  else
  {

    *(v6 + 208) = a2;
    *(v6 + 216) = a1;
    v7 = sub_1B8A83414;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A83414()
{
  v1 = v0[18];
  sub_1B8A897C4(v0[22], &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  sub_1B8AA73D8(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A834C4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v3[23] = swift_task_alloc();
  v4 = sub_1B8AEFB28();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A835C0, 0, 0);
}

uint64_t sub_1B8A835C0(uint64_t a1)
{
  v23 = v1;
  v1[18] = v1[20];
  v3 = v1[25];
  v2 = v1[26];
  v4 = v1[24];
  v1[19] = v1[21];
  sub_1B8AEFB08();
  sub_1B8A3F920();
  v5 = MEMORY[0x1E69E6158];
  sub_1B8AF09D8();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1B8AF06C8();
  v8 = v7;

  v9 = sub_1B8AF0388();
  v10 = sub_1B8AF08C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136642819;
    *(v11 + 4) = sub_1B8A9E870(v6, v8, &v22);
    _os_log_impl(&dword_1B8A3C000, v9, v10, "detectPeopleReferences final text: %{sensitive}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CC7D70](v12, -1, -1);
    MEMORY[0x1B8CC7D70](v11, -1, -1);
  }

  v13 = v1[23];
  v14 = *(v1[22] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v15 = MEMORY[0x1E69C6560];
  v1[16] = v5;
  v1[17] = v15;
  v1[13] = v6;
  v1[14] = v8;
  v16 = sub_1B8AF00F8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x746E6F4372657375;
  *(inited + 40) = 0xEB00000000746E65;
  sub_1B8A85238((v1 + 13), inited + 48);
  v18 = sub_1B8AE66C0(inited);
  v1[27] = v18;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v19 = swift_task_alloc();
  v1[28] = v19;
  *v19 = v1;
  v19[1] = sub_1B8A838C8;
  v20 = v1[23];

  return sub_1B8A8C1E8(v18, 5, v20, "AFMModel.predict", 16, 2, v14);
}

uint64_t sub_1B8A838C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v7 = sub_1B8A83AFC;
  }

  else
  {

    *(v6 + 240) = a2;
    *(v6 + 248) = a1;
    v7 = sub_1B8A83A04;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A83A04()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[20];
  v4 = v0[21];
  sub_1B8A897C4(v0[23], &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  objc_allocWithZone(type metadata accessor for SCMLPeopleDetectorImplResult());

  v6 = SCMLPeopleDetectorImplResult.init(result:text:)(v2, v1, v5, v4);

  v8 = v0[1];
  if (!v3)
  {
    v7 = v6;
  }

  return v8(v7);
}

uint64_t sub_1B8A83AFC()
{
  v1 = v0[23];

  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8A83B98(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  *(v7 + 264) = v6;
  *(v7 + 256) = a6;
  *(v7 + 464) = a5;
  *(v7 + 240) = a3;
  *(v7 + 248) = a4;
  *(v7 + 232) = a2;
  v9 = sub_1B8AF06A8();
  *(v7 + 272) = v9;
  *(v7 + 280) = *(v9 - 8);
  *(v7 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E0, &qword_1B8AF6760);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  v10 = sub_1B8AF00F8();
  *(v7 + 328) = v10;
  *(v7 + 336) = *(v10 - 8);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 465) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8A83D8C, 0, 0);
}

uint64_t sub_1B8A83D8C()
{
  v16 = 0x90908080707uLL >> (8 * *(v0 + 465));
  *(v0 + 466) = v16;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  v19 = *(v0 + 240);
  v20 = *(v0 + 328);
  v17 = *(v0 + 264);
  v18 = *(v0 + 232);
  v6 = sub_1B8AF0068();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_1B8A8975C(v3, v5, &qword_1EBA965E0, &qword_1B8AF6760);
  sub_1B8AF00C8();
  sub_1B8AF00B8();
  sub_1B8AF0078();
  sub_1B8AF0088();
  sub_1B8A897C4(v3, &qword_1EBA965E0, &qword_1B8AF6760);
  v7 = *(v17 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  *(v0 + 352) = v7;
  v8 = MEMORY[0x1E69C6560];
  *(v0 + 128) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v8;
  *(v0 + 104) = v18;
  *(v0 + 112) = v19;
  v9 = *(v1 + 16);
  *(v0 + 360) = v9;
  *(v0 + 368) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v2, v20);
  v10 = *(v1 + 56);
  *(v0 + 376) = v10;
  *(v0 + 384) = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v4, 0, 1, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x746E6F4372657375;
  *(inited + 40) = 0xEB00000000746E65;
  sub_1B8A85238(v0 + 104, inited + 48);
  v12 = sub_1B8AE66C0(inited);
  *(v0 + 392) = v12;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v13 = swift_task_alloc();
  *(v0 + 400) = v13;
  *v13 = v0;
  v13[1] = sub_1B8A840D0;
  v14 = *(v0 + 304);

  return sub_1B8A8C1E8(v12, v16, v14, "AFMModel.predict", 16, 2, v7);
}

uint64_t sub_1B8A840D0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 408) = v2;

  if (v2)
  {
    v7 = sub_1B8A845E4;
  }

  else
  {

    *(v6 + 416) = a2;
    *(v6 + 424) = a1;
    v7 = sub_1B8A84234;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A84234()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_1B8A897C4(*(v0 + 304), &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  sub_1B8AF0698();
  v4 = sub_1B8AF0678();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 != 15)
  {
    v7 = objc_opt_self();
    v8 = sub_1B8AEFC18();
    *(v0 + 216) = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:v0 + 216];

    v10 = *(v0 + 216);
    if (v9)
    {
      v11 = v10;
      sub_1B8AF0A18();
      sub_1B8A89878(v4, v6);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
        v12 = *(v0 + 224);

        v13 = *(v0 + 8);

        return v13(v12);
      }
    }

    else
    {
      v15 = v10;
      v16 = sub_1B8AEFBD8();

      swift_willThrow();
      sub_1B8A89878(v4, v6);
    }
  }

  v28 = *(v0 + 376);
  v17 = *(v0 + 360);
  v18 = *(v0 + 344);
  v19 = *(v0 + 328);
  v20 = *(v0 + 296);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  sub_1B8A89824();
  *(v0 + 432) = swift_allocError();
  *v23 = 0;
  v23[1] = 0;
  swift_willThrow();
  v24 = MEMORY[0x1E69C6560];
  *(v0 + 168) = MEMORY[0x1E69E6158];
  *(v0 + 176) = v24;
  *(v0 + 144) = v22;
  *(v0 + 152) = v21;
  v17(v20, v18, v19);
  v28(v20, 0, 1, v19);

  v25 = swift_task_alloc();
  *(v0 + 440) = v25;
  *v25 = v0;
  v25[1] = sub_1B8A8470C;
  v26 = *(v0 + 296);
  v27 = *(v0 + 466);

  return sub_1B8A823A0(v0 + 144, v27, v26);
}

uint64_t sub_1B8A845E4()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[38];

  sub_1B8A897C4(v4, &qword_1EBA96540, &unk_1B8AF64D0);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8A8470C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    sub_1B8A897C4(v4[37], &qword_1EBA96540, &unk_1B8AF64D0);
    v5 = sub_1B8A849A0;
  }

  else
  {
    v6 = v4[37];
    v4[57] = a1;
    sub_1B8A897C4(v6, &qword_1EBA96540, &unk_1B8AF64D0);
    __swift_destroy_boxed_opaque_existential_0(v4 + 18);
    v5 = sub_1B8A84894;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8A84894()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 456);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1B8A849A0()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B8A84AAC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96540, &unk_1B8AF64D0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A84B4C, 0, 0);
}

uint64_t sub_1B8A84B4C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v0[20] + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core);
  v5 = MEMORY[0x1E69C6560];
  v0[16] = MEMORY[0x1E69E6158];
  v0[17] = v5;
  v0[13] = v2;
  v0[14] = v3;
  v6 = sub_1B8AF00F8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  sub_1B8A85238((v0 + 13), inited + 48);
  v8 = sub_1B8AE66C0(inited);
  v0[22] = v8;
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1B8A84D08;
  v10 = v0[21];

  return sub_1B8A8C1E8(v8, 1, v10, "AFMModel.predict", 16, 2, v4);
}

uint64_t sub_1B8A84D08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = sub_1B8A84F00;
  }

  else
  {

    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v7 = sub_1B8A84E44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B8A84E44()
{
  v1 = v0[25];
  v2 = v0[26];
  sub_1B8A897C4(v0[21], &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  v3 = objc_allocWithZone(type metadata accessor for SCMLSafetyGuardrailResult());
  v4 = SCMLSafetyGuardrailResult.init(result:)(v2, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1B8A84F00()
{
  v1 = v0[21];

  sub_1B8A897C4(v1, &qword_1EBA96540, &unk_1B8AF64D0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v2 = v0[1];

  return v2();
}

uint64_t AFMModel.deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B8A897C4(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, &qword_1EBA96530, &unk_1B8AF8CE0);

  return v0;
}

uint64_t AFMModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B8A897C4(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter, &qword_1EBA96530, &unk_1B8AF8CE0);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B8A851A0()
{
  result = qword_1EBA96548;
  if (!qword_1EBA96548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96548);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B8A85238(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1B8A8529C(void *result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 7;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & result[7];
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1B8A863C0(*(v2[6] + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v3[v9];
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B8A853A0(unint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  v64 = 0;
  v6 = 0x6566615365646F63;
  v7 = *(a1 + 56);
  v72 = a1 + 56;
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v69 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v70 = (63 - v9) >> 6;
  v78 = 0x80000001B8B055D0;
  v79 = 0x80000001B8B055F0;
  v77 = 0x80000001B8B055A0;
  v76 = 0x80000001B8B05580;
  v75 = 0x80000001B8B05560;
  v74 = 0x80000001B8B05500;
  v80 = (a2 + 56);
  v81 = a2;

  v13 = 0;
  do
  {
LABEL_6:
    if (v11)
    {
      v14 = v81;
    }

    else
    {
      v15 = v13;
      v14 = v81;
      do
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_131;
        }

        if (v16 >= v70)
        {
          v33 = v5;
          goto LABEL_128;
        }

        v11 = *(v72 + 8 * v16);
        ++v15;
      }

      while (!v11);
      v13 = v16;
    }

    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(*(v5 + 48) + (v17 | (v13 << 6)));
    sub_1B8AF1018();
    sub_1B8AF05F8();

    v19 = sub_1B8AF1038();
    v20 = -1 << *(v14 + 32);
    v2 = v19 & ~v20;
    v3 = v2 >> 6;
    v4 = 1 << v2;
  }

  while (((1 << v2) & v80[v2 >> 6]) == 0);
  v73 = v13;
  v71 = v5;
  v21 = ~v20;
  while (2)
  {
    v22 = 0xEA00000000007974;
    v23 = v6;
    switch(*(*(v81 + 48) + v2))
    {
      case 1:
        break;
      case 2:
        v23 = 0x646E417367616C66;
        v22 = 0xEC0000007370614DLL;
        break;
      case 3:
        v22 = 0xE800000000000000;
        v23 = 0x4E4F534A6373696DLL;
        break;
      case 4:
        v23 = 0x6F43656C706F6570;
        v22 = 0xEB00000000746E75;
        break;
      case 5:
        v23 = 0x6544656C706F6570;
        v22 = 0xEF6E6F6974636574;
        break;
      case 6:
        v23 = 0x7365627570657270;
        v22 = 0xEC000000746E6563;
        break;
      case 7:
        v23 = 0xD000000000000014;
        v24 = &v90;
        goto LABEL_29;
      case 8:
        v23 = 0xD000000000000017;
        v24 = &v91;
        goto LABEL_29;
      case 9:
        v23 = 0xD000000000000020;
        v22 = v77;
        break;
      case 0xA:
        v23 = 0xD000000000000014;
        v22 = v78;
        break;
      case 0xB:
        v23 = 0xD000000000000013;
        v22 = v79;
        break;
      case 0xC:
        v23 = 0x6566615374786574;
        break;
      case 0xD:
        v23 = 0x65636E656C6F6976;
        v22 = 0xEF65726F47646E41;
        break;
      default:
        v23 = 0xD000000000000014;
        v24 = &v89;
LABEL_29:
        v22 = *(v24 - 32);
        break;
    }

    v14 = v6;
    v25 = v6;
    v26 = 0xEA00000000007974;
    switch(v18)
    {
      case 1:
        goto LABEL_52;
      case 2:
        v29 = 0x646E417367616C66;
        v30 = 1936744781;
        goto LABEL_49;
      case 3:
        v26 = 0xE800000000000000;
        if (v23 != 0x4E4F534A6373696DLL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 4:
        v26 = 0xEB00000000746E75;
        if (v23 != 0x6F43656C706F6570)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 5:
        v26 = 0xEF6E6F6974636574;
        if (v23 != 0x6544656C706F6570)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 6:
        v29 = 0x7365627570657270;
        v30 = 1953391971;
LABEL_49:
        v26 = v30 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v23 != v29)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 7:
        v27 = 0xD000000000000014;
        v28 = &v90;
        goto LABEL_58;
      case 8:
        v27 = 0xD000000000000017;
        v28 = &v91;
        goto LABEL_58;
      case 9:
        v26 = v77;
        if (v23 != 0xD000000000000020)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 10:
        v25 = 0xD000000000000014;
        v26 = v78;
LABEL_52:
        if (v23 == v25)
        {
          goto LABEL_53;
        }

        goto LABEL_54;
      case 11:
        v26 = v79;
        if (v23 != 0xD000000000000013)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 12:
        if (v23 != 0x6566615374786574)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 13:
        v26 = 0xEF65726F47646E41;
        if (v23 != 0x65636E656C6F6976)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      default:
        v27 = 0xD000000000000014;
        v28 = &v89;
LABEL_58:
        v26 = *(v28 - 32);
        if (v23 != v27)
        {
          goto LABEL_54;
        }

LABEL_53:
        if (v22 != v26)
        {
LABEL_54:
          v31 = sub_1B8AF0EA8();

          if (v31)
          {
            v8 = v73;
            v85 = v69;
            v86 = v73;
            v87 = v11;
            v13 = v71;
            v83 = v71;
            v84 = v72;
            goto LABEL_64;
          }

          v2 = (v2 + 1) & v21;
          v3 = v2 >> 6;
          v4 = 1 << v2;
          v6 = v14;
          if ((v80[v2 >> 6] & (1 << v2)) == 0)
          {
            v5 = v71;
            v13 = v73;
            v8 = -1;
            goto LABEL_6;
          }

          continue;
        }

        v8 = v73;
        v85 = v69;
        v86 = v73;
        v87 = v11;
        v13 = v71;
        v83 = v71;
        v84 = v72;

LABEL_64:
        v6 = v14;
        v5 = v81;
        v34 = *(v81 + 32);
        v65 = ((1 << v34) + 63) >> 6;
        v12 = 8 * v65;
        if ((v34 & 0x3Fu) > 0xD)
        {
          goto LABEL_132;
        }

        while (2)
        {
          v66 = &v63;
          MEMORY[0x1EEE9AC00](v32);
          v2 = &v63 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v2, v80, v35);
          v36 = *(v2 + 8 * v3) & ~v4;
          v37 = *(v5 + 16);
          v68 = v2;
          *(v2 + 8 * v3) = v36;
          v38 = v37 - 1;
LABEL_66:
          v67 = v38;
LABEL_67:
          if (v11)
          {
            v3 = v81;
            goto LABEL_74;
          }

          v39 = v8;
          v3 = v81;
          while (1)
          {
            v40 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v40 >= v70)
            {
              v14 = sub_1B8A87038(v68, v65, v67, v81);
              goto LABEL_127;
            }

            v11 = *(v72 + 8 * v40);
            ++v39;
            if (v11)
            {
              v8 = v40;
LABEL_74:
              v41 = __clz(__rbit64(v11));
              v11 &= v11 - 1;
              v42 = *(*(v13 + 48) + (v41 | (v8 << 6)));
              sub_1B8AF1018();
              sub_1B8AF05F8();

              v2 = v82;
              v43 = sub_1B8AF1038();
              v44 = -1 << *(v3 + 32);
              v5 = v43 & ~v44;
              v45 = v5 >> 6;
              v4 = 1 << v5;
              if (((1 << v5) & v80[v5 >> 6]) == 0)
              {
                goto LABEL_67;
              }

              v73 = v8;
              v46 = ~v44;
              v2 = v42;
              while (1)
              {
                v47 = 0xEA00000000007974;
                v48 = v6;
                switch(*(*(v81 + 48) + v5))
                {
                  case 1:
                    break;
                  case 2:
                    v48 = 0x646E417367616C66;
                    v47 = 0xEC0000007370614DLL;
                    break;
                  case 3:
                    v47 = 0xE800000000000000;
                    v48 = 0x4E4F534A6373696DLL;
                    break;
                  case 4:
                    v48 = 0x6F43656C706F6570;
                    v47 = 0xEB00000000746E75;
                    break;
                  case 5:
                    v48 = 0x6544656C706F6570;
                    v47 = 0xEF6E6F6974636574;
                    break;
                  case 6:
                    v48 = 0x7365627570657270;
                    v47 = 0xEC000000746E6563;
                    break;
                  case 7:
                    v48 = 0xD000000000000014;
                    v49 = &v90;
                    goto LABEL_90;
                  case 8:
                    v48 = 0xD000000000000017;
                    v49 = &v91;
                    goto LABEL_90;
                  case 9:
                    v48 = 0xD000000000000020;
                    v47 = v77;
                    break;
                  case 0xA:
                    v48 = 0xD000000000000014;
                    v47 = v78;
                    break;
                  case 0xB:
                    v48 = 0xD000000000000013;
                    v47 = v79;
                    break;
                  case 0xC:
                    v48 = 0x6566615374786574;
                    break;
                  case 0xD:
                    v48 = 0x65636E656C6F6976;
                    v47 = 0xEF65726F47646E41;
                    break;
                  default:
                    v48 = 0xD000000000000014;
                    v49 = &v89;
LABEL_90:
                    v47 = *(v49 - 32);
                    break;
                }

                v50 = v6;
                v51 = 0xEA00000000007974;
                switch(v2)
                {
                  case 1uLL:
                    goto LABEL_113;
                  case 2uLL:
                    v54 = 0x646E417367616C66;
                    v55 = 1936744781;
                    goto LABEL_110;
                  case 3uLL:
                    v51 = 0xE800000000000000;
                    if (v48 != 0x4E4F534A6373696DLL)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  case 4uLL:
                    v51 = 0xEB00000000746E75;
                    if (v48 != 0x6F43656C706F6570)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  case 5uLL:
                    v51 = 0xEF6E6F6974636574;
                    if (v48 != 0x6544656C706F6570)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  case 6uLL:
                    v54 = 0x7365627570657270;
                    v55 = 1953391971;
LABEL_110:
                    v51 = v55 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                    if (v48 != v54)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  case 7uLL:
                    v52 = 0xD000000000000014;
                    v53 = &v90;
                    goto LABEL_119;
                  case 8uLL:
                    v52 = 0xD000000000000017;
                    v53 = &v91;
                    goto LABEL_119;
                  case 9uLL:
                    v51 = v77;
                    if (v48 != 0xD000000000000020)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  case 0xAuLL:
                    v50 = 0xD000000000000014;
                    v51 = v78;
LABEL_113:
                    if (v48 == v50)
                    {
                      goto LABEL_114;
                    }

                    goto LABEL_115;
                  case 0xBuLL:
                    v51 = v79;
                    if (v48 != 0xD000000000000013)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  case 0xCuLL:
                    if (v48 != 0x6566615374786574)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  case 0xDuLL:
                    v51 = 0xEF65726F47646E41;
                    if (v48 != 0x65636E656C6F6976)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_114;
                  default:
                    v52 = 0xD000000000000014;
                    v53 = &v89;
LABEL_119:
                    v51 = *(v53 - 32);
                    if (v48 != v52)
                    {
                      goto LABEL_115;
                    }

LABEL_114:
                    if (v47 == v51)
                    {

LABEL_122:
                      v57 = v68[v45];
                      v68[v45] = v57 & ~v4;
                      v13 = v71;
                      v8 = v73;
                      v6 = v14;
                      if ((v57 & v4) != 0)
                      {
                        v38 = v67 - 1;
                        if (__OFSUB__(v67, 1))
                        {
                          __break(1u);
                        }

                        if (v67 == 1)
                        {

                          v14 = MEMORY[0x1E69E7CD0];
                          goto LABEL_127;
                        }

                        goto LABEL_66;
                      }

                      goto LABEL_67;
                    }

LABEL_115:
                    v56 = sub_1B8AF0EA8();

                    if (v56)
                    {
                      goto LABEL_122;
                    }

                    v5 = (v5 + 1) & v46;
                    v45 = v5 >> 6;
                    v4 = 1 << v5;
                    v6 = v14;
                    if ((v80[v5 >> 6] & (1 << v5)) == 0)
                    {
                      v13 = v71;
                      v8 = v73;
                      goto LABEL_67;
                    }

                    break;
                }
              }
            }
          }

          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          v59 = v12;

          v73 = v59;
          if (swift_stdlib_isStackAllocationSafe())
          {

            continue;
          }

          break;
        }

        v60 = v73;
        v61 = swift_slowAlloc();
        memcpy(v61, v80, v60);
        v62 = v64;
        v14 = sub_1B8A868EC(v61, v65, v5, v2, &v83);

        if (v62)
        {

          result = MEMORY[0x1B8CC7D70](v61, -1, -1);
          __break(1u);
        }

        else
        {

          MEMORY[0x1B8CC7D70](v61, -1, -1);
          v13 = v83;
          v69 = v85;
LABEL_127:
          v33 = v13;
LABEL_128:
          sub_1B8A896D4(v33);
          return v14;
        }

        return result;
    }
  }
}

uint64_t sub_1B8A863C0@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  sub_1B8AF1018();
  AFMModel.Task.rawValue.getter();
  sub_1B8AF05F8();

  result = sub_1B8AF1038();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_48:
    *a2 = 14;
    return result;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xEA00000000007974;
    v11 = 0x6566615365646F63;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        break;
      case 2:
        v11 = 0x646E417367616C66;
        v10 = 0xEC0000007370614DLL;
        break;
      case 3:
        v10 = 0xE800000000000000;
        v11 = 0x4E4F534A6373696DLL;
        break;
      case 4:
        v11 = 0x6F43656C706F6570;
        v10 = 0xEB00000000746E75;
        break;
      case 5:
        v11 = 0x6544656C706F6570;
        v10 = 0xEF6E6F6974636574;
        break;
      case 6:
        v11 = 0x7365627570657270;
        v10 = 0xEC000000746E6563;
        break;
      case 7:
        v11 = 0xD000000000000014;
        v10 = 0x80000001B8B05560;
        break;
      case 8:
        v11 = 0xD000000000000017;
        v10 = 0x80000001B8B05580;
        break;
      case 9:
        v11 = 0xD000000000000020;
        v10 = 0x80000001B8B055A0;
        break;
      case 0xA:
        v11 = 0xD000000000000014;
        v10 = 0x80000001B8B055D0;
        break;
      case 0xB:
        v11 = 0xD000000000000013;
        v10 = 0x80000001B8B055F0;
        break;
      case 0xC:
        v11 = 0x6566615374786574;
        break;
      case 0xD:
        v11 = 0x65636E656C6F6976;
        v10 = 0xEF65726F47646E41;
        break;
      default:
        v11 = 0xD000000000000014;
        v10 = 0x80000001B8B05500;
        break;
    }

    v12 = 0x6566615365646F63;
    v13 = 0xEA00000000007974;
    switch(a1)
    {
      case 1:
        goto LABEL_41;
      case 2:
        v14 = 0x646E417367616C66;
        v15 = 1936744781;
        goto LABEL_38;
      case 3:
        v13 = 0xE800000000000000;
        if (v11 != 0x4E4F534A6373696DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 4:
        v13 = 0xEB00000000746E75;
        if (v11 != 0x6F43656C706F6570)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 5:
        v13 = 0xEF6E6F6974636574;
        if (v11 != 0x6544656C706F6570)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 6:
        v14 = 0x7365627570657270;
        v15 = 1953391971;
LABEL_38:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v14)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 7:
        v13 = 0x80000001B8B05560;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 8:
        v13 = 0x80000001B8B05580;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 9:
        v13 = 0x80000001B8B055A0;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 10:
        v12 = 0xD000000000000014;
        v13 = 0x80000001B8B055D0;
LABEL_41:
        if (v11 == v12)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 11:
        v13 = 0x80000001B8B055F0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 12:
        if (v11 != 0x6566615374786574)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 13:
        v13 = 0xEF65726F47646E41;
        if (v11 != 0x65636E656C6F6976)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      default:
        v13 = 0x80000001B8B05500;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (v10 != v13)
        {
LABEL_43:
          v16 = sub_1B8AF0EA8();

          if (v16)
          {
            goto LABEL_50;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_48;
          }

          continue;
        }

LABEL_50:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v3;
        v20 = *v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B8A87668();
          v18 = v20;
        }

        *a2 = *(*(v18 + 48) + v8);
        result = sub_1B8A87B68(v8);
        *v3 = v20;
        return result;
    }
  }
}

uint64_t sub_1B8A868EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v30 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v32 = a3 + 56;
LABEL_2:
  v29 = v6;
  while (1)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      break;
    }

    v9 = a5[3];
LABEL_9:
    v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    sub_1B8AF1018();
    sub_1B8AF05F8();

    result = sub_1B8AF1038();
    v13 = -1 << *(a3 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v32 + 8 * (v14 >> 6))) != 0)
    {
      v17 = ~v13;
      v18 = v12;
LABEL_11:
      v19 = 0xEA00000000007974;
      v20 = 0x6566615365646F63;
      switch(*(*(a3 + 48) + v14))
      {
        case 1:
          break;
        case 2:
          v20 = 0x646E417367616C66;
          v19 = 0xEC0000007370614DLL;
          break;
        case 3:
          v19 = 0xE800000000000000;
          v20 = 0x4E4F534A6373696DLL;
          break;
        case 4:
          v20 = 0x6F43656C706F6570;
          v19 = 0xEB00000000746E75;
          break;
        case 5:
          v20 = 0x6544656C706F6570;
          v19 = 0xEF6E6F6974636574;
          break;
        case 6:
          v20 = 0x7365627570657270;
          v19 = 0xEC000000746E6563;
          break;
        case 7:
          v20 = 0xD000000000000014;
          v19 = 0x80000001B8B05560;
          break;
        case 8:
          v20 = 0xD000000000000017;
          v19 = 0x80000001B8B05580;
          break;
        case 9:
          v20 = 0xD000000000000020;
          v19 = 0x80000001B8B055A0;
          break;
        case 0xA:
          v20 = 0xD000000000000014;
          v19 = 0x80000001B8B055D0;
          break;
        case 0xB:
          v20 = 0xD000000000000013;
          v19 = 0x80000001B8B055F0;
          break;
        case 0xC:
          v20 = 0x6566615374786574;
          break;
        case 0xD:
          v20 = 0x65636E656C6F6976;
          v19 = 0xEF65726F47646E41;
          break;
        default:
          v20 = 0xD000000000000014;
          v19 = 0x80000001B8B05500;
          break;
      }

      v21 = 0x6566615365646F63;
      v22 = 0xEA00000000007974;
      switch(v18)
      {
        case 1:
          goto LABEL_49;
        case 2:
          v23 = 0x646E417367616C66;
          v24 = 1936744781;
          goto LABEL_46;
        case 3:
          v22 = 0xE800000000000000;
          if (v20 != 0x4E4F534A6373696DLL)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 4:
          v22 = 0xEB00000000746E75;
          if (v20 != 0x6F43656C706F6570)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 5:
          v22 = 0xEF6E6F6974636574;
          if (v20 != 0x6544656C706F6570)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 6:
          v23 = 0x7365627570657270;
          v24 = 1953391971;
LABEL_46:
          v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v20 != v23)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 7:
          v22 = 0x80000001B8B05560;
          if (v20 != 0xD000000000000014)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 8:
          v22 = 0x80000001B8B05580;
          if (v20 != 0xD000000000000017)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 9:
          v22 = 0x80000001B8B055A0;
          if (v20 != 0xD000000000000020)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 10:
          v21 = 0xD000000000000014;
          v22 = 0x80000001B8B055D0;
LABEL_49:
          if (v20 == v21)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        case 11:
          v22 = 0x80000001B8B055F0;
          if (v20 != 0xD000000000000013)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 12:
          if (v20 != 0x6566615374786574)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 13:
          v22 = 0xEF65726F47646E41;
          if (v20 != 0x65636E656C6F6976)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        default:
          v22 = 0x80000001B8B05500;
          if (v20 != 0xD000000000000014)
          {
            goto LABEL_51;
          }

LABEL_50:
          if (v19 != v22)
          {
LABEL_51:
            v25 = sub_1B8AF0EA8();

            if (v25)
            {
              goto LABEL_57;
            }

            v14 = (v14 + 1) & v17;
            v15 = v14 >> 6;
            v16 = 1 << v14;
            if ((*(v32 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
            {
              continue;
            }

            goto LABEL_11;
          }

LABEL_57:
          v26 = v30[v15];
          v30[v15] = v26 & ~v16;
          if ((v26 & v16) == 0)
          {
            continue;
          }

          v6 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
LABEL_66:
            __break(1u);
            return result;
          }

          if (v29 == 1)
          {
            return MEMORY[0x1E69E7CD0];
          }

          break;
      }

      goto LABEL_2;
    }
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v10 <= v7 + 1)
  {
    v27 = v7 + 1;
  }

  else
  {
    v27 = (a5[2] + 64) >> 6;
  }

  a5[3] = v27 - 1;
  a5[4] = 0;

  return sub_1B8A87038(v30, a2, v29, a3);
}

uint64_t sub_1B8A87038(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
  result = sub_1B8AF0A78();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1B8AF1018();
    sub_1B8AF05F8();

    result = sub_1B8AF1038();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B8A8742C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
  result = sub_1B8AF0A78();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1B8AF1018();
    sub_1B8AF05F8();

    result = sub_1B8AF1038();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1B8A87668()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
  v2 = *v0;
  v3 = sub_1B8AF0A58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8A877D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B8AF0A58();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
LABEL_11:
      v13 &= v13 - 1;
    }

    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        goto LABEL_17;
      }

      v13 = *(v4 + 56 + 8 * v15);
      ++v10;
      if (v13)
      {
        v10 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v6;
  }

  return result;
}

void *sub_1B8A878CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
  v2 = *v0;
  v3 = sub_1B8AF0A58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8A87A0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D8, &qword_1B8AF6748);
  v2 = *v0;
  v3 = sub_1B8AF0A58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B8A87B68(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B8AF0A48();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B8AF1018();
        sub_1B8AF05F8();

        v10 = sub_1B8AF1038() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B8A87EF8()
{
  result = qword_1EBA96560;
  if (!qword_1EBA96560)
  {
    sub_1B8AEFFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96560);
  }

  return result;
}

uint64_t type metadata accessor for AFMModel(uint64_t a1)
{
  result = qword_1EDB75450;
  if (!qword_1EDB75450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8A87FA4(uint64_t a1)
{
  result = sub_1B8AF03A8();
  if (v2 <= 0x3F)
  {
    result = sub_1B8AF0328();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_1B8A880E8(void *a1)
{
  a1[1] = sub_1B8A88138();
  a1[2] = sub_1B8A8818C();
  a1[3] = sub_1B8A881E0();
  a1[4] = sub_1B8A88234();
  a1[5] = sub_1B8A88288();
  result = sub_1B8A882DC();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8A88138()
{
  result = qword_1EBA96568;
  if (!qword_1EBA96568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96568);
  }

  return result;
}

unint64_t sub_1B8A8818C()
{
  result = qword_1EBA96570;
  if (!qword_1EBA96570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96570);
  }

  return result;
}

unint64_t sub_1B8A881E0()
{
  result = qword_1EBA96578;
  if (!qword_1EBA96578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96578);
  }

  return result;
}

unint64_t sub_1B8A88234()
{
  result = qword_1EBA96580;
  if (!qword_1EBA96580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96580);
  }

  return result;
}

unint64_t sub_1B8A88288()
{
  result = qword_1EBA96588;
  if (!qword_1EBA96588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96588);
  }

  return result;
}

unint64_t sub_1B8A882DC()
{
  result = qword_1EBA96590;
  if (!qword_1EBA96590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96590);
  }

  return result;
}

unint64_t sub_1B8A88330(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AF0BE8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B8A8837C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AF0BE8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8A883C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  sub_1B8AF09D8();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1B8AF06C8();
  v10 = v9;

  v11 = v8 == 0x646F6F6C62 && v10 == 0xE500000000000000;
  if (v11 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 2;
  }

  else
  {
    LODWORD(result) = sub_1B8A8837C(v8, v10);
    if (result == 5)
    {
      return 4;
    }

    else
    {
      return result;
    }
  }
}

unint64_t sub_1B8A8854C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8AF0BE8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8A88598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a1;
  v14[1] = a2;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  sub_1B8AF09D8();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1B8AF06C8();
  v10 = v9;

  v11 = v8 == 0x6576697469736F70 && v10 == 0xE800000000000000;
  if (v11 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 2;
  }

  else
  {
    v13 = v8 == 0x726564726F62 && v10 == 0xE600000000000000;
    if (v13 || (sub_1B8AF0EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      LODWORD(result) = sub_1B8A8854C(v8, v10);
      if (result == 4)
      {
        return 3;
      }

      else
      {
        return result;
      }
    }
  }
}

uint64_t sub_1B8A88764(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001B8B05960 == a2;
  if (v3 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B8B05980 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73694D736B736174 && a2 == 0xEC000000676E6973)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B8AF0EA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1B8A88890(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966A0, &qword_1B8AF6CB8);
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v29 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966A8, &qword_1B8AF6CC0);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966B0, &qword_1B8AF6CC8);
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966B8, &unk_1B8AF6CD0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = a1[3];
  v36 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B8A8A194();
  v16 = v35;
  sub_1B8AF1048();
  if (!v16)
  {
    v17 = v34;
    v35 = v11;
    v18 = sub_1B8AF0C78();
    v19 = (2 * *(v18 + 16)) | 1;
    v37 = v18;
    v38 = v18 + 32;
    v39 = 0;
    v40 = v19;
    v20 = sub_1B8AE4710();
    if (v20 == 3 || v39 != v40 >> 1)
    {
      v22 = sub_1B8AF0B08();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
      *v24 = &type metadata for AFMModel.MiscSafetyOutputType.Error;
      v15 = v13;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        LOBYTE(v41) = 1;
        sub_1B8A8A284();
        sub_1B8AF0BF8();
        v21 = v35;
        v28 = v29;
        v15 = sub_1B8AF0C18();
        (*(v31 + 8))(v6, v28);
        (*(v21 + 8))(v13, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v41) = 2;
        sub_1B8A8A1E8();
        sub_1B8AF0BF8();
        v26 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
        sub_1B8A8A32C(&qword_1EBA966D8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
        v27 = v32;
        sub_1B8AF0C48();
        (*(v33 + 8))(v17, v27);
        (*(v26 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v15 = v41;
      }
    }

    else
    {
      LOBYTE(v41) = 0;
      sub_1B8A8A2D8();
      sub_1B8AF0BF8();
      v15 = sub_1B8AF0C18();
      (*(v30 + 8))(v9, v7);
      (*(v35 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  return v15;
}

unint64_t sub_1B8A88F9C(uint64_t a1, unint64_t a2)
{
  v25[0] = 44;
  v24[2] = v25;

  v8 = sub_1B8AD7C84(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B8A896E8, v24, a1, a2, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25[3] = v2;
    v25[0] = MEMORY[0x1E69E7CC0];
    sub_1B8AD848C(0, v9, 0);
    v10 = 0;
    v11 = (v8 + 56);
    v12 = v25[0];
    while (v10 < *(v8 + 16))
    {
      v13 = *(v11 - 3);
      v14 = *(v11 - 2);
      v16 = *(v11 - 1);
      v15 = *v11;

      v17 = MEMORY[0x1B8CC5EE0](v13, v14, v16, v15);
      v4 = v18;
      v19 = v17 == 6648432 && v18 == 0xE300000000000000;
      if (v19 || (v3 = v17, (sub_1B8AF0EA8() & 1) != 0))
      {

        v20 = 6;
      }

      else if (v3 == 0x7275746375727473 && v4 == 0xEA00000000006C61 || (sub_1B8AF0EA8() & 1) != 0)
      {

        v20 = 11;
      }

      else if (v3 == 0x656C706F6570 && v4 == 0xE600000000000000 || (sub_1B8AF0EA8() & 1) != 0)
      {

        v20 = 4;
      }

      else if (v3 == 0x6C616E6F69676572 && v4 == 0xE800000000000000 || (sub_1B8AF0EA8() & 1) != 0)
      {

        v20 = 2;
      }

      else
      {
        if ((v3 != 0x797465666173 || v4 != 0xE600000000000000) && (sub_1B8AF0EA8() & 1) == 0)
        {
          goto LABEL_34;
        }

        v20 = 13;
      }

      v25[0] = v12;
      v4 = *(v12 + 16);
      v21 = *(v12 + 24);
      v3 = v4 + 1;
      if (v4 >= v21 >> 1)
      {
        sub_1B8AD848C((v21 > 1), v4 + 1, 1);
        v12 = v25[0];
      }

      ++v10;
      *(v12 + 16) = v3;
      *(v12 + v4 + 32) = v20;
      v11 += 4;
      if (v9 == v10)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    sub_1B8A89680();
    swift_allocError();
    *v23 = v3;
    *(v23 + 8) = v4;
    *(v23 + 16) = 1;
    swift_willThrow();
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v8 = sub_1B8ABE21C(v12);
  }

  return v8;
}

void *sub_1B8A89360()
{
  v2 = sub_1B8A940C4();
  if (v0)
  {
    return v1;
  }

  v3 = v2;
  if (!*(v2 + 2) || (v4 = sub_1B8AC402C(0x795474757074756FLL, 0xEA00000000006570), (v5 & 1) == 0))
  {
    v8 = 0x6F6C61646E617473;
    v7 = 0xEA0000000000656ELL;
LABEL_7:
    if (v7 == 0xEA0000000000656ELL)
    {
LABEL_9:

      return 0;
    }

    goto LABEL_8;
  }

  v6 = (*(v3 + 7) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  if (v8 == 0x6F6C61646E617473)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (sub_1B8AF0EA8())
  {
    goto LABEL_9;
  }

  if (v8 == 1852797802 && v7 == 0xE400000000000000)
  {
  }

  else
  {
    v10 = sub_1B8AF0EA8();

    if ((v10 & 1) == 0)
    {
      if (*(v3 + 2) && (v18 = sub_1B8AC402C(0x795474757074756FLL, 0xEA00000000006570), (v19 & 1) != 0))
      {
        v20 = (*(v3 + 7) + 16 * v18);
        v21 = *v20;
        v1 = v20[1];

        v22 = 0;
      }

      else
      {

        v21 = 0;
        v22 = 0;
        v1 = 0xE000000000000000;
      }

      goto LABEL_28;
    }
  }

  if (*(v3 + 2) && (v11 = sub_1B8AC402C(0x736B736174, 0xE500000000000000), (v12 & 1) != 0))
  {
    v13 = (*(v3 + 7) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v1 = sub_1B8A88F9C(v14, v15);

  v16 = sub_1B8AB55A0(&unk_1F3747070);
  if (v1[2] <= *(v16 + 16) >> 3)
  {
    v25 = v16;
    sub_1B8A8529C(v1);
    v17 = v25;
  }

  else
  {
    v17 = sub_1B8A853A0(v1, v16);
  }

  v23 = *(v17 + 16);

  if (v23)
  {
    v21 = sub_1B8A80EFC(v1);

    v1 = 0;
    v22 = 2;
LABEL_28:
    sub_1B8A89680();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v1;
    *(v24 + 16) = v22;
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1B8A89634()
{
  result = qword_1EBA96598;
  if (!qword_1EBA96598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA96598);
  }

  return result;
}

unint64_t sub_1B8A89680()
{
  result = qword_1EBA965A0;
  if (!qword_1EBA965A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA965A0);
  }

  return result;
}

uint64_t sub_1B8A896DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1B8A89708()
{
  result = qword_1EBA965B8;
  if (!qword_1EBA965B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA965B8);
  }

  return result;
}

uint64_t sub_1B8A8975C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B8A897C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1B8A89824()
{
  result = qword_1EDB74B48[0];
  if (!qword_1EDB74B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB74B48);
  }

  return result;
}

uint64_t sub_1B8A89878(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B8A8988C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B8A8988C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B8A898E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8A89928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8A899B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8A89A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8A89A68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8A89AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B8A89B0C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B8A89B24(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1B8A89B54(void *a1)
{
  a1[1] = sub_1B8A89BA4();
  a1[2] = sub_1B8A89BF8();
  a1[3] = sub_1B8A89C4C();
  a1[4] = sub_1B8A89CA0();
  a1[5] = sub_1B8A89CF4();
  result = sub_1B8A89D48();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8A89BA4()
{
  result = qword_1EBA96608;
  if (!qword_1EBA96608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96608);
  }

  return result;
}

unint64_t sub_1B8A89BF8()
{
  result = qword_1EBA96610;
  if (!qword_1EBA96610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96610);
  }

  return result;
}

unint64_t sub_1B8A89C4C()
{
  result = qword_1EBA96618;
  if (!qword_1EBA96618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96618);
  }

  return result;
}

unint64_t sub_1B8A89CA0()
{
  result = qword_1EBA96620;
  if (!qword_1EBA96620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96620);
  }

  return result;
}

unint64_t sub_1B8A89CF4()
{
  result = qword_1EBA96628;
  if (!qword_1EBA96628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96628);
  }

  return result;
}

unint64_t sub_1B8A89D48()
{
  result = qword_1EBA96630;
  if (!qword_1EBA96630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96630);
  }

  return result;
}

unint64_t sub_1B8A89DA0()
{
  result = qword_1EBA96638;
  if (!qword_1EBA96638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96638);
  }

  return result;
}

unint64_t sub_1B8A89DF4()
{
  result = qword_1EBA96640;
  if (!qword_1EBA96640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96640);
  }

  return result;
}

unint64_t sub_1B8A89E48(void *a1)
{
  a1[1] = sub_1B8A89E98();
  a1[2] = sub_1B8A89EEC();
  a1[3] = sub_1B8A89F40();
  a1[4] = sub_1B8A89F94();
  a1[5] = sub_1B8A89FE8();
  result = sub_1B8A8A03C();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8A89E98()
{
  result = qword_1EBA96648;
  if (!qword_1EBA96648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96648);
  }

  return result;
}

unint64_t sub_1B8A89EEC()
{
  result = qword_1EBA96650;
  if (!qword_1EBA96650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96650);
  }

  return result;
}

unint64_t sub_1B8A89F40()
{
  result = qword_1EBA96658;
  if (!qword_1EBA96658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96658);
  }

  return result;
}

unint64_t sub_1B8A89F94()
{
  result = qword_1EBA96660;
  if (!qword_1EBA96660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96660);
  }

  return result;
}

unint64_t sub_1B8A89FE8()
{
  result = qword_1EBA96668;
  if (!qword_1EBA96668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96668);
  }

  return result;
}

unint64_t sub_1B8A8A03C()
{
  result = qword_1EBA96670;
  if (!qword_1EBA96670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96670);
  }

  return result;
}

unint64_t sub_1B8A8A094()
{
  result = qword_1EBA96678;
  if (!qword_1EBA96678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96678);
  }

  return result;
}

unint64_t sub_1B8A8A0EC()
{
  result = qword_1EBA96680;
  if (!qword_1EBA96680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96680);
  }

  return result;
}

unint64_t sub_1B8A8A140()
{
  result = qword_1EBA96690;
  if (!qword_1EBA96690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96690);
  }

  return result;
}

unint64_t sub_1B8A8A194()
{
  result = qword_1EBA966C0;
  if (!qword_1EBA966C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA966C0);
  }

  return result;
}

unint64_t sub_1B8A8A1E8()
{
  result = qword_1EBA966D0;
  if (!qword_1EBA966D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA966D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B8A8A284()
{
  result = qword_1EBA966E0;
  if (!qword_1EBA966E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA966E0);
  }

  return result;
}

unint64_t sub_1B8A8A2D8()
{
  result = qword_1EBA966E8;
  if (!qword_1EBA966E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA966E8);
  }

  return result;
}

uint64_t sub_1B8A8A32C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA965E8, &qword_1B8AF6770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AFMModel.MiscSafetyOutputType.Error.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AFMModel.MiscSafetyOutputType.Error.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeopleCounter.Count.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PeopleCounter.Count.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1B8A8A604()
{
  result = qword_1EBA96718;
  if (!qword_1EBA96718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96718);
  }

  return result;
}

unint64_t sub_1B8A8A65C()
{
  result = qword_1EBA96720;
  if (!qword_1EBA96720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96720);
  }

  return result;
}

unint64_t sub_1B8A8A6B4()
{
  result = qword_1EBA96728;
  if (!qword_1EBA96728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96728);
  }

  return result;
}

unint64_t sub_1B8A8A70C()
{
  result = qword_1EBA96730;
  if (!qword_1EBA96730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96730);
  }

  return result;
}

unint64_t sub_1B8A8A764()
{
  result = qword_1EBA96738;
  if (!qword_1EBA96738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96738);
  }

  return result;
}

unint64_t sub_1B8A8A7BC()
{
  result = qword_1EBA96740;
  if (!qword_1EBA96740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96740);
  }

  return result;
}

unint64_t sub_1B8A8A814()
{
  result = qword_1EBA96748;
  if (!qword_1EBA96748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96748);
  }

  return result;
}

unint64_t sub_1B8A8A86C()
{
  result = qword_1EBA96750;
  if (!qword_1EBA96750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96750);
  }

  return result;
}

unint64_t sub_1B8A8A8C4()
{
  result = qword_1EBA96758;
  if (!qword_1EBA96758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96758);
  }

  return result;
}

unint64_t sub_1B8A8A91C()
{
  result = qword_1EBA96760;
  if (!qword_1EBA96760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96760);
  }

  return result;
}

unint64_t sub_1B8A8A974()
{
  result = qword_1EBA96768;
  if (!qword_1EBA96768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96768);
  }

  return result;
}

unint64_t sub_1B8A8A9CC()
{
  result = qword_1EBA96770;
  if (!qword_1EBA96770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96770);
  }

  return result;
}

unint64_t sub_1B8A8AA24()
{
  result = qword_1EBA96778;
  if (!qword_1EBA96778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96778);
  }

  return result;
}

unint64_t sub_1B8A8AA7C()
{
  result = qword_1EBA96780;
  if (!qword_1EBA96780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96780);
  }

  return result;
}

unint64_t sub_1B8A8AAD4()
{
  result = qword_1EBA96788;
  if (!qword_1EBA96788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96788);
  }

  return result;
}

char *sub_1B8A8AB94(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v108 = a3;
  v109 = a6;
  v98 = a5;
  v99 = a4;
  v100 = a2;
  v94 = *v7;
  v9 = sub_1B8AF0048();
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1B8AEFED8();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8AEFFF8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967E8, &unk_1B8AF7370);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v112 = &v83 - v15;
  v16 = sub_1B8AF0118();
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v92 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F0, &qword_1B8AF7BC0);
  v21 = *(v20 - 8);
  v104 = v20;
  v105 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v83 - v22;
  v24 = sub_1B8AF03A8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v29 = OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v115 = v28;
  v30 = __swift_project_value_buffer(v24, qword_1EDB75B38);
  v111 = v25;
  v31 = *(v25 + 16);
  v31(&v7[v29], v30, v24);
  v32 = OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v33 = sub_1B8AF0328();
  v34 = __swift_project_value_buffer(v33, qword_1EDB75B50);
  v89 = *(v33 - 8);
  v35 = *(v89 + 16);
  v106 = v32;
  v90 = v33;
  v35(&v7[v32], v34, v33);
  v110 = v7;
  v91 = v29;
  v36 = &v7[v29];
  v37 = v27;
  v31(v27, v36, v24);
  v38 = v24;
  v39 = sub_1B8AF0388();
  v40 = sub_1B8AF08C8();
  v41 = os_log_type_enabled(v39, v40);
  v107 = v38;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v113 = v88;
    *v42 = 136315650;
    v43 = v115;
    v116 = v115;
    v44 = AFMModel.Task.rawValue.getter();
    v46 = sub_1B8A9E870(v44, v45, &v113);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    v116 = v43;
    AFMModel.Task.bundleID.getter(v23);
    v47 = v104;
    v48 = sub_1B8AEFF58();
    v50 = v49;
    v87 = v37;
    v51 = v105;
    (*(v105 + 8))(v23, v47);
    v52 = sub_1B8A9E870(v48, v50, &v113);
    v53 = v43;

    *(v42 + 14) = v52;
    *(v42 + 22) = 1024;
    *(v42 + 24) = v43 == 3;
    _os_log_impl(&dword_1B8A3C000, v39, v40, "AFMModel: Create and prewarm TokenGenerator %s %s usesGuidedGeneration=%{BOOL}d", v42, 0x1Cu);
    v54 = v88;
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v54, -1, -1);
    MEMORY[0x1B8CC7D70](v42, -1, -1);

    v55 = v87;
    v87 = *(v111 + 8);
    v87(v55, v107);
  }

  else
  {

    v87 = *(v111 + 8);
    v87(v27, v38);
    v47 = v104;
    v51 = v105;
    v53 = v115;
  }

  v113 = 0x6C65646F4D4D4641;
  v114 = 0xE90000000000003ALL;
  v116 = v53;
  AFMModel.Task.bundleID.getter(v23);
  v56 = sub_1B8AEFF58();
  v58 = v57;
  v59 = *(v51 + 8);
  v59(v23, v47);
  MEMORY[0x1B8CC5F50](v56, v58);

  v88 = v113;
  v104 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967F8, &unk_1B8AF7380);
  v60 = sub_1B8AF0028();
  LOBYTE(v58) = v53;
  v61 = *(v60 - 8);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1B8AF6490;
  LOBYTE(v113) = v58;
  AFMModel.Task.bundleID.getter(v23);
  v63 = sub_1B8AEFF58();
  v65 = v64;
  v59(v23, v47);

  v66 = v112;
  sub_1B8AF0008();
  v67 = (*(v61 + 48))(v66, 1, v60);
  v68 = v106;
  if (v67 != 1)
  {

    (*(v61 + 32))(v105 + v62, v112, v60);
    sub_1B8AEFFE8();
    LOBYTE(v113) = v115;
    if (AFMModel.Task.rawValue.getter() == 0x6566615374786574 && v71 == 0xEA00000000007974)
    {

      v70 = v110;
      v72 = v100;
    }

    else
    {
      v73 = sub_1B8AF0EA8();

      v70 = v110;
      v72 = v100;
      if ((v73 & 1) == 0)
      {
LABEL_18:
        v78 = v95;
        sub_1B8AF0108();
        v80 = v96;
        v79 = v97;
        (*(v96 + 16))(v92, v78, v97);
        sub_1B8AEFFD8();
        swift_allocObject();
        *&v70[OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_tokenGenerator] = sub_1B8AEFFB8();

        v81 = v101;
        sub_1B8AF0038();
        sub_1B8AEFFC8();

        (*(v102 + 8))(v81, v103);
        (*(v80 + 8))(v78, v79);
        sub_1B8A90DD0(v109, &v70[OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_locale]);
        return v70;
      }
    }

    v74 = v84;
    sub_1B8AEFEB8();
    v75 = sub_1B8AEFEC8();
    v77 = v76;
    (*(v85 + 8))(v74, v86);
    if (v75 == v72 && v77 == v108)
    {
    }

    else
    {
      sub_1B8AF0EA8();
    }

    goto LABEL_18;
  }

  sub_1B8A897C4(v112, &qword_1EBA967E8, &unk_1B8AF7370);
  sub_1B8A89DF4();
  swift_allocError();
  *v69 = v63;
  v69[1] = v65;
  swift_willThrow();
  sub_1B8A897C4(v109, &qword_1EBA96528, &unk_1B8AF64B0);
  *(v105 + 16) = 0;

  v70 = v110;
  v87(&v110[v91], v107);
  (*(v89 + 8))(&v70[v68], v90);
  swift_deallocPartialClassInstance();
  return v70;
}

uint64_t sub_1B8A8B7A0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 136) = a1;
  *(v5 + 144) = a2;
  v7 = sub_1B8AF00F8();
  *(v5 + 168) = v7;
  *(v5 + 176) = *(v7 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96798, &qword_1B8AF7300);
  *(v5 + 200) = swift_task_alloc();
  v8 = sub_1B8AF0248();
  *(v5 + 208) = v8;
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 264) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A8B910, 0, 0);
}

uint64_t sub_1B8A8B910()
{
  sub_1B8A94A0C(*(v0 + 200));
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 264);
  if (v4 == 1)
  {
    v6 = 0x746E6F4372657375;
    sub_1B8A897C4(v3, &qword_1EBA96798, &qword_1B8AF7300);
    v7 = 0xEB00000000746E65;
    if (((1 << v5) & 0x7A1) == 0)
    {
      if (((1 << v5) & 0x285C) != 0)
      {
        v7 = 0xE600000000000000;
        v6 = 0x736567616D69;
      }

      else
      {
        v7 = 0xEA00000000007470;
        v6 = 0x6D6F725072657375;
      }
    }

    if (*(*(v0 + 144) + 16))
    {
      v17 = sub_1B8AC402C(v6, v7);
      v19 = v18;

      if (v19)
      {
        v20 = *(v0 + 184);
        v21 = *(v0 + 152);
        sub_1B8A85238(*(*(v0 + 144) + 56) + 40 * v17, v0 + 56);
        sub_1B8A4270C((v0 + 56), v0 + 16);
        v22 = sub_1B8AF0588();
        v23 = MEMORY[0x1E69C6548];
        *(v0 + 120) = v22;
        *(v0 + 128) = v23;
        __swift_allocate_boxed_opaque_existential_1((v0 + 96));
        sub_1B8AF0578();
        sub_1B8A94D44(v21, v20);
        v24 = swift_task_alloc();
        *(v0 + 248) = v24;
        *v24 = v0;
        v24[1] = sub_1B8A8BF6C;
        v25 = *(v0 + 184);
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);

        return sub_1B8A8F5F8(v27, v0 + 96, v0 + 16, v26, v25);
      }
    }

    else
    {
    }

    return sub_1B8AF0B98();
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 152);
  (*(v2 + 32))(*(v0 + 224), v3, v1);
  sub_1B8A94D44(v9, v8);
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_1B8A8BCBC;
  v11 = *(v0 + 224);
  v12 = *(v0 + 192);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v15 = *(v0 + 144);

  return sub_1B8A8E50C(v14, v11, v13, v15, v12);
}

uint64_t sub_1B8A8BCBC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[22] + 8))(v2[24], v2[21]);
  if (v0)
  {
    v3 = sub_1B8A8BEC8;
  }

  else
  {
    v3 = sub_1B8A8BE24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8A8BE24()
{
  (*(v0[27] + 8))(v0[28], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A8BEC8()
{
  (*(v0[27] + 8))(v0[28], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A8BF6C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v3 = sub_1B8A8C14C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 12);
    v3 = sub_1B8A8C0B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8A8C0B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A8C14C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A8C1E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 96) = a5;
  *(v7 + 104) = a7;
  *(v7 + 226) = a6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a4;
  *(v7 + 225) = a2;
  *(v7 + 72) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96538, &qword_1B8AF72D0);
  *(v7 + 112) = v8;
  *(v7 + 120) = *(v8 - 8);
  *(v7 + 128) = swift_task_alloc();
  v9 = sub_1B8AF02F8();
  *(v7 + 136) = v9;
  *(v7 + 144) = *(v9 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A8C32C, 0, 0);
}

uint64_t sub_1B8A8C32C()
{
  v22 = v0;
  sub_1B8AF02E8();
  v1 = sub_1B8AF0318();
  v2 = sub_1B8AF0908();
  result = sub_1B8AF0928();
  if (result)
  {
    v4 = *(v0 + 88);
    if ((*(v0 + 226) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = *(v0 + 225);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v20 = v7;
        *v6 = 136315138;
        v21 = v5;
        v8 = AFMModel.Task.rawValue.getter();
        v10 = sub_1B8A9E870(v8, v9, &v20);

        *(v6 + 4) = v10;
        v11 = sub_1B8AF02D8();
        _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v1, v2, v11, v4, "task=%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1B8CC7D70](v7, -1, -1);
        MEMORY[0x1B8CC7D70](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 64);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v12 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 225);
  (*(v14 + 16))(*(v0 + 152), v12, v13);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 168) = sub_1B8AF0358();
  (*(v14 + 8))(v12, v13);
  *(v0 + 224) = v15;
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  *v16 = v0;
  v16[1] = sub_1B8A8C5A0;
  v17 = *(v0 + 128);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);

  return sub_1B8A8B7A0(v17, v18, (v0 + 224), v19);
}

uint64_t sub_1B8A8C5A0()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A8CC1C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[24] = v3;
    v4 = sub_1B8A90D50(&qword_1EDB756C0, MEMORY[0x1E69DA470], MEMORY[0x1E69DA438]);
    *v3 = v2;
    v3[1] = sub_1B8A8C75C;
    v5 = v2[14];

    return MEMORY[0x1EEE0A390](v5, v4);
  }
}

uint64_t sub_1B8A8C75C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v5 = sub_1B8A8CB58;
  }

  else
  {
    v5 = sub_1B8A8C874;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8A8C874()
{
  v28 = v0;
  *(v0 + 16) = *(v0 + 200);
  *(v0 + 24) = *(v0 + 208);
  *(v0 + 32) = 10;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 28252;
  *(v0 + 56) = 0xE200000000000000;
  sub_1B8A3F920();
  v1 = sub_1B8AF09E8();
  v3 = v2;

  v4 = sub_1B8AF0388();
  v5 = sub_1B8AF08C8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 112);
  if (v6)
  {
    v24 = *(v0 + 112);
    v25 = *(v0 + 128);
    v23 = *(v0 + 225);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315651;
    v12 = sub_1B8AF0AC8();
    v14 = sub_1B8A9E870(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v27 = v23;
    v15 = AFMModel.Task.rawValue.getter();
    v17 = sub_1B8A9E870(v15, v16, &v26);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2085;
    v18 = sub_1B8A9E870(v1, v3, &v26);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_1B8A3C000, v4, v5, "%s %s output: %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v11, -1, -1);
    MEMORY[0x1B8CC7D70](v10, -1, -1);

    (*(v8 + 8))(v25, v24);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  sub_1B8A8E264(*(v0 + 104), *(v0 + 88), *(v0 + 96), *(v0 + 226), *(v0 + 168));

  v19 = *(v0 + 8);
  v20 = *(v0 + 200);
  v21 = *(v0 + 208);

  return v19(v20, v21);
}

uint64_t sub_1B8A8CB58()
{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_1B8A8E264(*(v0 + 104), *(v0 + 88), *(v0 + 96), *(v0 + 226), *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A8CC1C()
{
  sub_1B8A8E264(*(v0 + 104), *(v0 + 88), *(v0 + 96), *(v0 + 226), *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A8CCC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 167) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 166) = a2;
  *(v7 + 24) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96538, &qword_1B8AF72D0);
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  v9 = sub_1B8AF02F8();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A8CE0C, 0, 0);
}

uint64_t sub_1B8A8CE0C()
{
  v22 = v0;
  sub_1B8AF02E8();
  v1 = sub_1B8AF0318();
  v2 = sub_1B8AF0908();
  result = sub_1B8AF0928();
  if (result)
  {
    v4 = *(v0 + 40);
    if ((*(v0 + 167) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = *(v0 + 166);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v20 = v7;
        *v6 = 136315138;
        v21 = v5;
        v8 = AFMModel.Task.rawValue.getter();
        v10 = sub_1B8A9E870(v8, v9, &v20);

        *(v6 + 4) = v10;
        v11 = sub_1B8AF02D8();
        _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v1, v2, v11, v4, "task=%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1B8CC7D70](v7, -1, -1);
        MEMORY[0x1B8CC7D70](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v15 = *(v0 + 166);
  (*(v14 + 16))(*(v0 + 104), v12, v13);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 120) = sub_1B8AF0358();
  (*(v14 + 8))(v12, v13);
  *(v0 + 165) = v15;
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *v16 = v0;
  v16[1] = sub_1B8A8D080;
  v17 = *(v0 + 80);
  v18 = *(v0 + 24);
  v19 = *(v0 + 32);

  return sub_1B8A8B7A0(v17, v18, (v0 + 165), v19);
}

uint64_t sub_1B8A8D080()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A8D6EC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[18] = v3;
    v4 = sub_1B8A90D50(&qword_1EDB74BD8, MEMORY[0x1E69DA470], MEMORY[0x1E69DA460]);
    v5 = sub_1B8A90C64();
    *v3 = v2;
    v3[1] = sub_1B8A8D25C;
    v6 = v2[8];

    return MEMORY[0x1EEE0A3A0](v2 + 20, &_s20MiscSafetyJSONResultVN, &_s20MiscSafetyJSONResultVN, v6, &_s20MiscSafetyJSONResultVN, v4, v5);
  }
}

uint64_t sub_1B8A8D25C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B8A8D628;
  }

  else
  {
    v2 = sub_1B8A8D370;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A8D370()
{
  v31 = v0;
  v1 = *(v0 + 160);
  v2 = 0x100000000;
  if (!*(v0 + 164))
  {
    v2 = 0;
  }

  v3 = v2 | (*(v0 + 163) << 24) | (*(v0 + 162) << 16) | (*(v0 + 161) << 8);
  v4 = sub_1B8A921EC(v3 | v1);
  v6 = v5;

  v7 = sub_1B8AF0388();
  v8 = sub_1B8AF08C8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  if (v9)
  {
    v26 = *(v0 + 64);
    v27 = *(v0 + 80);
    v24 = *(v0 + 166);
    v28 = v3;
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v13 = 136315651;
    v14 = sub_1B8AF0AC8();
    v16 = sub_1B8A9E870(v14, v15, &v29);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v30 = v24;
    v17 = AFMModel.Task.rawValue.getter();
    v19 = sub_1B8A9E870(v17, v18, &v29);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2085;
    v20 = sub_1B8A9E870(v4, v6, &v29);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_1B8A3C000, v7, v8, "%s %s output: %{sensitive}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v25, -1, -1);
    v21 = v13;
    v3 = v28;
    MEMORY[0x1B8CC7D70](v21, -1, -1);

    (*(v11 + 8))(v27, v26);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  sub_1B8A8E264(*(v0 + 56), *(v0 + 40), *(v0 + 48), *(v0 + 167), *(v0 + 120));

  v22 = *(v0 + 8);

  return v22(v3 | v1);
}

uint64_t sub_1B8A8D628()
{
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  sub_1B8A8E264(*(v0 + 56), *(v0 + 40), *(v0 + 48), *(v0 + 167), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A8D6EC()
{
  sub_1B8A8E264(*(v0 + 56), *(v0 + 40), *(v0 + 48), *(v0 + 167), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A8D798(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = a7;
  *(v7 + 170) = a6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 169) = a2;
  *(v7 + 32) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96538, &qword_1B8AF72D0);
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_1B8AF02F8();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A8D8DC, 0, 0);
}

uint64_t sub_1B8A8D8DC()
{
  v22 = v0;
  sub_1B8AF02E8();
  v1 = sub_1B8AF0318();
  v2 = sub_1B8AF0908();
  result = sub_1B8AF0928();
  if (result)
  {
    v4 = *(v0 + 48);
    if ((*(v0 + 170) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = *(v0 + 169);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v20 = v7;
        *v6 = 136315138;
        v21 = v5;
        v8 = AFMModel.Task.rawValue.getter();
        v10 = sub_1B8A9E870(v8, v9, &v20);

        *(v6 + 4) = v10;
        v11 = sub_1B8AF02D8();
        _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v1, v2, v11, v4, "task=%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1B8CC7D70](v7, -1, -1);
        MEMORY[0x1B8CC7D70](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v12 = *(v0 + 120);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 169);
  (*(v14 + 16))(*(v0 + 112), v12, v13);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 128) = sub_1B8AF0358();
  (*(v14 + 8))(v12, v13);
  *(v0 + 168) = v15;
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_1B8A8DB50;
  v17 = *(v0 + 88);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);

  return sub_1B8A8B7A0(v17, v18, (v0 + 168), v19);
}

uint64_t sub_1B8A8DB50()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A8E1B8, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
    v4 = swift_task_alloc();
    v2[19] = v4;
    v5 = sub_1B8A90D50(&qword_1EDB74BD8, MEMORY[0x1E69DA470], MEMORY[0x1E69DA460]);
    v6 = sub_1B8A90CB8();
    *v4 = v2;
    v4[1] = sub_1B8A8DD4C;
    v7 = v2[9];

    return MEMORY[0x1EEE0A3A0](v2 + 2, v3, v3, v7, v3, v5, v6);
  }
}

uint64_t sub_1B8A8DD4C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B8A8E0F4;
  }

  else
  {
    v2 = sub_1B8A8DE60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A8DE60()
{
  v28 = v0;
  v1 = *(v0 + 16);

  v3 = MEMORY[0x1B8CC6020](v2, MEMORY[0x1E69E6158]);
  v5 = v4;

  v6 = sub_1B8AF0388();
  v7 = sub_1B8AF08C8();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 72);
  if (v8)
  {
    v24 = *(v0 + 72);
    v25 = *(v0 + 88);
    v22 = *(v0 + 169);
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v12 = 136315651;
    v13 = sub_1B8AF0AC8();
    v15 = sub_1B8A9E870(v13, v14, &v26);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v27 = v22;
    v16 = AFMModel.Task.rawValue.getter();
    v18 = sub_1B8A9E870(v16, v17, &v26);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2085;
    v19 = sub_1B8A9E870(v3, v5, &v26);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_1B8A3C000, v6, v7, "%s %s output: %{sensitive}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v23, -1, -1);
    MEMORY[0x1B8CC7D70](v12, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_1B8A8E264(*(v0 + 64), *(v0 + 48), *(v0 + 56), *(v0 + 170), *(v0 + 128));

  v20 = *(v0 + 8);

  return v20(v1);
}

uint64_t sub_1B8A8E0F4()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  sub_1B8A8E264(*(v0 + 64), *(v0 + 48), *(v0 + 56), *(v0 + 170), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A8E1B8()
{
  sub_1B8A8E264(*(v0 + 64), *(v0 + 48), *(v0 + 56), *(v0 + 170), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8A8E264(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8A8E50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967A0, &qword_1B8AF7318);
  v5[29] = swift_task_alloc();
  v5[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967A8, &qword_1B8AF7320);
  v5[31] = swift_task_alloc();
  v6 = sub_1B8AF01C8();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v7 = sub_1B8AF01D8();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967B0, &qword_1B8AF7328);
  v5[38] = swift_task_alloc();
  v8 = sub_1B8AF0298();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967B8, &qword_1B8AF7330);
  v5[43] = v9;
  v5[44] = *(v9 - 8);
  v5[45] = swift_task_alloc();
  v10 = sub_1B8AF03D8();
  v5[46] = v10;
  v5[47] = *(v10 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A8E844, 0, 0);
}

uint64_t sub_1B8A8E844()
{
  v21 = *(v0 + 416);
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v19 = *(v0 + 344);
  v20 = *(v0 + 408);
  v23 = *(v0 + 400);
  v18 = *(v0 + 224);
  v22 = *(v0 + 304);
  v7 = *(v0 + 200);
  *(swift_task_alloc() + 16) = v7;
  sub_1B8AF03E8();

  sub_1B8AF03C8();
  v8 = *(v4 + 8);
  *(v0 + 432) = v8;
  *(v0 + 440) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  *(v0 + 448) = sub_1B8A90D50(&qword_1EDB756A0, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  sub_1B8AF0548();
  v8(v1, v3);
  v9 = sub_1B8AF00F8();
  *(v0 + 456) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  *(v0 + 464) = v11;
  *(v0 + 472) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v6, v18, v9);
  *(v0 + 528) = *MEMORY[0x1E69A1370];
  v12 = *(v5 + 104);
  *(v0 + 480) = v12;
  *(v0 + 488) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v6);
  sub_1B8AF0528();
  v13 = *(v5 + 8);
  *(v0 + 496) = v13;
  *(v0 + 504) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v6, v19);
  v8(v23, v3);
  sub_1B8AF04F8();
  v8(v20, v3);
  sub_1B8AF0508();
  v8(v21, v3);
  v14 = sub_1B8AF0288();
  (*(*(v14 - 8) + 56))(v22, 1, 1, v14);
  sub_1B8AF0278();
  v15 = swift_task_alloc();
  *(v0 + 512) = v15;
  *v15 = v0;
  v15[1] = sub_1B8A8EBB4;
  v16 = *(v0 + 232);

  return MEMORY[0x1EEE0B310](v16, 0xD00000000000001CLL, 0x80000001B8B05A50);
}

uint64_t sub_1B8A8EBB4()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_1B8A8F2F4;
  }

  else
  {
    v2 = sub_1B8A8ECC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A8ECC8()
{
  v1 = *(v0 + 232);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967C0, &qword_1B8AF7338);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1B8A897C4(v1, &qword_1EBA967A0, &qword_1B8AF7318);
  }

  else
  {
    v38 = *(v0 + 496);
    v35 = *(v0 + 528);
    v36 = *(v0 + 480);
    v34 = *(v0 + 464);
    v33 = *(v0 + 456);
    v46 = *(v0 + 432);
    v41 = *(v0 + 416);
    v42 = *(v0 + 424);
    v44 = *(v0 + 368);
    v45 = *(v0 + 376);
    v31 = *(v0 + 360);
    v32 = *(v0 + 344);
    v26 = *(v0 + 328);
    v27 = *(v0 + 320);
    v28 = *(v0 + 312);
    v29 = *(v0 + 336);
    v47 = *(v0 + 296);
    v43 = *(v0 + 288);
    v3 = *(v0 + 280);
    v25 = *(v0 + 272);
    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v30 = *(v0 + 224);
    v40 = *(v0 + 200);
    v23 = *(v6 + 48);
    v24 = *(v2 + 48);
    v8 = *(v43 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v23, v1 + v24, v5);
    v10 = *(v6 + 48);
    v8(v47, v7, v3);
    v9(v25, v7 + v10, v5);
    sub_1B8AF01B8();
    (*(v27 + 8))(v29, v28);
    (*(v27 + 32))(v29, v26, v28);
    sub_1B8AE66C0(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    *(inited + 32) = 0xD00000000000004DLL;
    *(inited + 40) = 0x80000001B8B05A70;
    v34(v31, v30, v33);
    v36(v31, v35, v32);
    *(inited + 72) = v33;
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    sub_1B8AF0158();
    v38(v31, v32);
    sub_1B8AE6590(inited);
    swift_setDeallocating();
    sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967C8, &qword_1B8AF7350);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1B8AF6490;
    strcpy((v12 + 32), "promptTemplate");
    *(v12 + 47) = -18;
    v13 = sub_1B8AF0248();
    *(v12 + 72) = v13;
    *(v12 + 80) = sub_1B8A90D50(&qword_1EDB75608, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14B8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 48));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v40, v13);
    sub_1B8AE67F4(v12);
    swift_setDeallocating();
    sub_1B8A897C4(v12 + 32, &qword_1EBA967D0, &qword_1B8AF7358);
    sub_1B8AF01A8();

    (*(v4 + 8))(v25, v5);
    (*(v43 + 8))(v47, v3);
    v46(v42, v44);
    (*(v45 + 32))(v42, v41, v44);
  }

  v15 = *(v0 + 424);
  v39 = *(v0 + 432);
  v16 = *(v0 + 416);
  v17 = *(v0 + 368);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);
  v37 = *(v0 + 312);
  v20 = *(v0 + 208);
  sub_1B8AF0518();
  *(v0 + 184) = *(v20 + OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_tokenGenerator);
  sub_1B8AEFFD8();
  sub_1B8AF0538();
  v39(v16, v17);
  (*(v19 + 8))(v18, v37);
  v39(v15, v17);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B8A8F2F4()
{
  v1 = v0[54];
  v2 = v0[53];
  v3 = v0[46];
  (*(v0[40] + 8))(v0[42], v0[39]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8A8F440(uint64_t a1)
{
  v1 = sub_1B8AF03D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AF0248();
  sub_1B8A90D50(&qword_1EDB75608, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14B8]);
  sub_1B8AF0408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967D8, &qword_1B8AF7360);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B8AF6490;
  (*(v2 + 16))(v6 + v5, v4, v1);
  MEMORY[0x1B8CC5BE0](v6);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1B8A8F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967A0, &qword_1B8AF7318);
  v5[40] = swift_task_alloc();
  v5[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967A8, &qword_1B8AF7320);
  v5[42] = swift_task_alloc();
  v6 = sub_1B8AF01C8();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v7 = sub_1B8AF01D8();
  v5[46] = v7;
  v5[47] = *(v7 - 8);
  v5[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967B0, &qword_1B8AF7328);
  v5[49] = swift_task_alloc();
  v8 = sub_1B8AF0298();
  v5[50] = v8;
  v5[51] = *(v8 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967B8, &qword_1B8AF7330);
  v5[54] = v9;
  v5[55] = *(v9 - 8);
  v5[56] = swift_task_alloc();
  v10 = sub_1B8AF03D8();
  v5[57] = v10;
  v5[58] = *(v10 - 8);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A8F924, 0, 0);
}

uint64_t sub_1B8A8F924()
{
  v20 = *(v0 + 496);
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 440);
  v18 = *(v0 + 432);
  v19 = *(v0 + 488);
  v21 = *(v0 + 392);
  v16 = *(v0 + 312);
  v17 = *(v0 + 480);
  *(swift_task_alloc() + 16) = *(v0 + 288);
  sub_1B8AF03E8();

  sub_1B8AF03C8();
  v6 = *(v2 + 8);
  *(v0 + 512) = v6;
  *(v0 + 520) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = sub_1B8AF00F8();
  *(v0 + 528) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  *(v0 + 536) = v9;
  *(v0 + 544) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v16, v7);
  *(v0 + 608) = *MEMORY[0x1E69A1370];
  v10 = *(v5 + 104);
  *(v0 + 552) = v10;
  *(v0 + 560) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v4);
  *(v0 + 568) = sub_1B8A90D50(&qword_1EDB756A0, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  sub_1B8AF0528();
  v11 = *(v5 + 8);
  *(v0 + 576) = v11;
  *(v0 + 584) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v18);
  v6(v17, v3);
  sub_1B8AF04F8();
  v6(v19, v3);
  sub_1B8AF0508();
  v6(v20, v3);
  v12 = sub_1B8AF0288();
  (*(*(v12 - 8) + 56))(v21, 1, 1, v12);
  sub_1B8AF0278();
  v13 = swift_task_alloc();
  *(v0 + 592) = v13;
  *v13 = v0;
  v13[1] = sub_1B8A8FC7C;
  v14 = *(v0 + 320);

  return MEMORY[0x1EEE0B310](v14, 0xD00000000000001CLL, 0x80000001B8B05AC0);
}

uint64_t sub_1B8A8FC7C()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_1B8A90414;
  }

  else
  {
    v2 = sub_1B8A8FD90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8A8FD90()
{
  v1 = *(v0 + 320);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967C0, &qword_1B8AF7338);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1B8A897C4(v1, &qword_1EBA967A0, &qword_1B8AF7318);
  }

  else
  {
    v41 = *(v0 + 576);
    v40 = *(v0 + 552);
    v39 = *(v0 + 608);
    v38 = *(v0 + 536);
    v37 = *(v0 + 528);
    v50 = *(v0 + 512);
    v45 = *(v0 + 496);
    v46 = *(v0 + 504);
    v48 = *(v0 + 456);
    v49 = *(v0 + 464);
    v35 = *(v0 + 448);
    v36 = *(v0 + 432);
    v51 = *(v0 + 424);
    v30 = *(v0 + 416);
    v31 = *(v0 + 408);
    v32 = *(v0 + 400);
    v28 = *(v0 + 384);
    v47 = *(v0 + 376);
    v3 = *(v0 + 368);
    v29 = *(v0 + 360);
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v33 = *(v0 + 296);
    v34 = *(v0 + 312);
    v43 = *(v0 + 288);
    v26 = *(v7 + 48);
    v27 = *(v2 + 48);
    v8 = *(v47 + 32);
    v8(v6, v1, v3);
    v9 = *(v4 + 32);
    v9(v6 + v26, v1 + v27, v5);
    v10 = *(v7 + 48);
    v8(v28, v6, v3);
    v9(v29, v6 + v10, v5);
    sub_1B8AF01B8();
    (*(v31 + 8))(v51, v32);
    (*(v31 + 32))(v51, v30, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96550, &unk_1B8AFB270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    *(inited + 32) = 0x6D6F725072657375;
    *(inited + 40) = 0xEA00000000007470;
    sub_1B8A85238(v33, inited + 48);
    sub_1B8AE66C0(inited);
    swift_setDeallocating();
    sub_1B8A897C4(inited + 32, &qword_1EBA96558, qword_1B8AF64E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1B8AF6490;
    *(v12 + 32) = 0xD00000000000004DLL;
    *(v12 + 40) = 0x80000001B8B05A70;
    v38(v35, v34, v37);
    v40(v35, v39, v36);
    *(v12 + 72) = v37;
    __swift_allocate_boxed_opaque_existential_1((v12 + 48));
    sub_1B8AF0158();
    v41(v35, v36);
    sub_1B8AE6590(v12);
    swift_setDeallocating();
    sub_1B8A897C4(v12 + 32, &qword_1EBA965D0, &qword_1B8AF6740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967C8, &qword_1B8AF7350);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1B8AF6490;
    strcpy((v13 + 32), "systemPrompt");
    *(v13 + 45) = 0;
    *(v13 + 46) = -5120;
    v14 = v43[3];
    v15 = v43[4];
    v16 = __swift_project_boxed_opaque_existential_1(v43, v14);
    *(v13 + 72) = v14;
    *(v13 + 80) = *(v15 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 48));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
    sub_1B8AE67F4(v13);
    swift_setDeallocating();
    sub_1B8A897C4(v13 + 32, &qword_1EBA967D0, &qword_1B8AF7358);
    sub_1B8AF01A8();

    (*(v4 + 8))(v29, v5);
    (*(v47 + 8))(v28, v3);
    v50(v46, v48);
    (*(v49 + 32))(v46, v45, v48);
  }

  v18 = *(v0 + 504);
  v44 = *(v0 + 512);
  v19 = *(v0 + 496);
  v20 = *(v0 + 456);
  v21 = *(v0 + 424);
  v22 = *(v0 + 408);
  v42 = *(v0 + 400);
  v23 = *(v0 + 304);
  sub_1B8AF0518();
  *(v0 + 272) = *(v23 + OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_tokenGenerator);
  sub_1B8AEFFD8();
  sub_1B8AF0538();
  v44(v19, v20);
  (*(v22 + 8))(v21, v42);
  v44(v18, v20);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1B8A90414()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[57];
  (*(v0[51] + 8))(v0[53], v0[50]);
  v2(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8A90554@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v31 = a3;
  v4 = sub_1B8AF0558();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8AF03D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AF0408();
  v30 = v26;
  v14 = v29;
  sub_1B8AF0568();
  v29 = v14;
  v15 = v25;
  v16 = v27;
  sub_1B8AF0408();
  (*(v28 + 8))(v7, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967D8, &qword_1B8AF7360);
  v17 = *(v9 + 72);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B8AF72A0;
  v20 = v19 + v18;
  v21 = *(v9 + 16);
  v21(v20, v13, v8);
  v21(v20 + v17, v15, v8);
  MEMORY[0x1B8CC5BE0](v19);

  v22 = *(v9 + 8);
  v22(v15, v8);
  return (v22)(v13, v8);
}

uint64_t sub_1B8A90814(uint64_t a1)
{
  v1 = sub_1B8AF04E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69C6388];
  sub_1B8AF0428();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA967E0, &qword_1B8AF7368);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B8AF6490;
  (*(v2 + 16))(v7 + v6, v4, v1);
  MEMORY[0x1B8CC5C00](v7, v1, v5);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1B8A9099C()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1B8A897C4(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML12AFMModelCore_locale, &qword_1EBA96528, &unk_1B8AF64B0);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t type metadata accessor for AFMModelCore(uint64_t a1)
{
  result = qword_1EDB755D8;
  if (!qword_1EDB755D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8A90AFC(uint64_t a1)
{
  sub_1B8AF03A8();
  if (v1 <= 0x3F)
  {
    sub_1B8AF0328();
    if (v2 <= 0x3F)
    {
      sub_1B8A90C0C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8A90C0C(uint64_t a1)
{
  if (!qword_1EDB75610)
  {
    sub_1B8AEFCC8();
    v1 = sub_1B8AF0948();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB75610);
    }
  }
}

unint64_t sub_1B8A90C64()
{
  result = qword_1EBA96790;
  if (!qword_1EBA96790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96790);
  }

  return result;
}