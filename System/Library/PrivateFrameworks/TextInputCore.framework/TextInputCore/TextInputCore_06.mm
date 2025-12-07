BOOL TIInputManager::is_autoshift(TIInputManager *this)
{
  v1 = *(this + 24);
  v2 = v1 + 1;
  v3 = 40 * v1 - 8;
  while (--v2)
  {
    v4 = *(this + 1);
    v5 = *(v4 + v3);
    v3 -= 40;
    if ((v5 & 0x40) != 0)
    {
      return v2 != -858993459 * ((*(this + 2) - v4) >> 3) && (*(v4 + 40 * v2 + 32) & 0x42) == 2;
    }
  }

  v4 = *(this + 1);
  return v2 != -858993459 * ((*(this + 2) - v4) >> 3) && (*(v4 + 40 * v2 + 32) & 0x42) == 2;
}

void TIInputManager::input_flags_vector(TIInputManager *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(a2, -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
  v4 = *(this + 1);
  if (-858993459 * ((*(this + 2) - v4) >> 3))
  {
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(v4 + v6);
      std::vector<unsigned int>::push_back[abi:nn200100](a2, &v7);
      ++v5;
      v4 = *(this + 1);
      v6 += 40;
    }

    while (v5 < -858993459 * ((*(this + 2) - v4) >> 3));
  }
}

uint64_t KB::CandidateCollection::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<KB::Candidate>::__vdeallocate(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<KB::Candidate>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<KB::Candidate>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  std::vector<KB::Candidate>::__vdeallocate((a1 + 72));
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

{
  if (a1 != a2)
  {
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1, *a2, *(a2 + 8), 0x1CAC083126E978D5 * ((*(a2 + 8) - *a2) >> 3));
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 24, *(a2 + 24), *(a2 + 32), 0x1CAC083126E978D5 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 48, *(a2 + 48), *(a2 + 56), 0x1CAC083126E978D5 * ((*(a2 + 56) - *(a2 + 48)) >> 3));
    std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0x1CAC083126E978D5 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  }

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t *TIInputManager::filter_spellcheck_candidates(TIInputManager *this, uint64_t **a2, const KB::String *a3)
{
  v4 = *(this + 73);
  if (v4)
  {
    v5 = *(*v4 + 56);
    v6 = *(this + 73);

    return v5(v6, a2, a3);
  }

  else
  {
    v9 = *a2;
    v8 = a2[1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK14TIInputManager28filter_spellcheck_candidatesERN2KB19CandidateCollectionERKNS0_6StringE_block_invoke;
    v11[3] = &__block_descriptor_tmp_22;
    v11[4] = this;
    v11[5] = a3;
    v10 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(v9, v8, v11);
    return std::vector<KB::Candidate>::erase(a2, v10, a2[1]);
  }
}

BOOL ___ZNK14TIInputManager28filter_spellcheck_candidatesERN2KB19CandidateCollectionERKNS0_6StringE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const KB::String *a4)
{
  v6 = *(*(*(a1 + 32) + 264) + 8);
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  return KB::CollatorWrapper::sortkey_compare_strings((v6 + 72), (a2 + 888), *(a1 + 40), a4) != 0;
}

uint64_t *std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (((*(a3 + 16))(a3, v3) & 1) == 0)
    {
      v3 += 125;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 125; i != a2; i += 125)
      {
        if (((*(a3 + 16))(a3, i) & 1) == 0)
        {
          KB::Candidate::operator=(v3, i);
          v3 += 125;
        }
      }
    }
  }

  return v3;
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(__n);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

BOOL std::string::starts_with[abi:nn200100](uint64_t **a1, void *__s2, size_t a3)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1;
    a1 = *a1;
    v4 = v5[1];
  }

  return v4 >= a3 && std::string_view::compare[abi:nn200100](a1, v4, 0, a3, __s2, a3) == 0;
}

uint64_t std::__function::__value_func<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x1CAC083126E978D5 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<KB::Candidate>::__vdeallocate(a1);
    if (a4 <= 0x4189374BC6A7EFLL)
    {
      v9 = 0x395810624DD2F1AALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x1CAC083126E978D5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x20C49BA5E353F7)
      {
        v10 = 0x4189374BC6A7EFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<KB::Candidate>::__vallocate[abi:nn200100](a1, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x1CAC083126E978D5 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        KB::Candidate::operator=(v8, v6);
        v6 += 125;
        v8 += 1000;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 1000);
      KB::Candidate::~Candidate(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != v8)
    {
      do
      {
        KB::Candidate::operator=(v8, v6);
        v6 += 125;
        v8 += 1000;
        v12 -= 1000;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = KB::Candidate::Candidate(v14, v13);
        v13 = (v13 + 1000);
        v14 = (v15 + 1000);
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }
}

void std::__function::__func<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0,std::allocator<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, const KB::Candidate **a2, uint64_t a3, unsigned __int8 *a4)
{
  v42[5] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v26 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v7 = *a4;
  v8 = *(a1 + 8);
  if (*(v8 + 608))
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  v27 = v7;
  KB::CandidateCollection::CandidateCollection(v33, a2);
  kdebug_trace();
  log = kac_get_log();
  v10 = os_signpost_id_make_with_pointer(log, (v8 ^ 0x15));
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, log, OS_SIGNPOST_INTERVAL_BEGIN, v11, "kbdManager.filterCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = **(a1 + 32);
  __dst = 0;
  v32 = 0;
  v30 = 0;
  v15 = v26 - v6;
  if (v26 != v6)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&v30, v15 >> 3);
  }

  TIInputManager::filter_raw_candidates(v8, a2, v12, v13, v14);
  KB::CandidateCollection::operator=(a2, buf);
  cf = v42;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v41;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v40;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = buf;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  if (v15)
  {
    __dst = (v26 - v6);
    operator delete(v15);
  }

  kdebug_trace();
  v16 = kac_get_log();
  v17 = os_signpost_id_make_with_pointer(v16, (v8 ^ 0x15));
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v16, OS_SIGNPOST_INTERVAL_END, v18, "kbdManager.filterCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  if (v27)
  {
    (*(**(a1 + 40) + 16))();
  }

  if (*(v8 + 608))
  {
    (*(**(v8 + 224) + 488))(&cf);
    v19 = KB::CandidateFilterFlags::candidate_filter_flag_type(v6, v26);
    v20 = &kGenericFlagDesc;
    if (v19 == 1)
    {
      v20 = &kPostLMFlagDesc;
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = &kPreLMFlagDesc;
    }

    KB::String::String(buf, v21);
    v22 = *(v8 + 608);
    v23 = *(a1 + 16);
    v24 = **(a1 + 32);
    v25 = cf;
    v29 = cf;
    if (cf)
    {
      CFRetain(cf);
      v29 = v25;
    }

    (*(*v22 + 24))(v22, v23, v24, buf, v33, Mutable, a2, &v29);
    if (v29)
    {
      CFRelease(v29);
    }

    v29 = 0;
    if (v39 && buf[6] == 1)
    {
      free(v39);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  *buf = &v36;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v35;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v34;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = v33;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](buf);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    operator delete(v6);
  }
}

void TIInputManager::filter_raw_candidates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v5;
  v20 = v19;
  v76 = *MEMORY[0x277D85DE8];
  KB::CandidateCollection::CandidateCollection(v19, v21);
  std::vector<KB::FilterFlag>::vector[abi:nn200100](__p, v11);
  (*(*v18 + 48))(&v50, v18, v13, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50)
  {
    v35 = v9;
    (*(*v18 + 72))(&v73, v18, v17);
    KB::Candidate::Candidate(v72, v17, *(v18 + 288));
    if (v75 == 1)
    {
      KB::Candidate::Candidate(v70, &v73, *(v18 + 288));
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v70[0] = 0;
    }

    v71 = v22;
    KB::Candidate::Candidate(v69, (v18 + 232), 0);
    v23 = KB::String::last((v18 + 440));
    v24 = KB::String::last((v18 + 440));
    {
      KB::String::String(&TIInputManager::filter_raw_candidates(KB::CandidateCollection const&,KB::String const&,KB::String const&,KB::LookupType,KB::CandidateFilterFlags,BOOL,__CFString *)const::disallowed_domain_characters, ",~:;!@#$%^&'.(){}[]_/\\<>|");
      __cxa_atexit(KB::String::~String, &TIInputManager::filter_raw_candidates(KB::CandidateCollection const&,KB::String const&,KB::String const&,KB::LookupType,KB::CandidateFilterFlags,BOOL,__CFString *)const::disallowed_domain_characters, &dword_22CA55000);
    }

    v25 = *(v18 + 440);
    if (v25 >= 2)
    {
      v27 = *(v18 + 448);
      if (!v27)
      {
        v27 = v18 + 456;
      }

      *&v39 = v27;
      DWORD2(v39) = v25;
      HIDWORD(v39) = v25;
      LODWORD(v40) = 0;
      KB::String::iterator::initialize(&v39);
      v61 = v39;
      *v62 = v40;
      v28 = 2;
      do
      {
        KB::String::iterator::operator--(&v61);
        --v28;
      }

      while (v28);
      v26 = !KB::String::contains(&TIInputManager::filter_raw_candidates(KB::CandidateCollection const&,KB::String const&,KB::String const&,KB::LookupType,KB::CandidateFilterFlags,BOOL,__CFString *)const::disallowed_domain_characters, v62[0]);
    }

    else
    {
      v26 = 1;
    }

    KB::Candidate::Candidate(v60, v72);
    v58[0] = 0;
    v59 = 0;
    if (v71 == 1)
    {
      KB::Candidate::Candidate(v58, v70);
      v59 = 1;
    }

    TIInputManager::input_flags_vector(v18, &v48);
    KB::LanguageModelContext::LanguageModelContext(v41, (v18 + 472));
    KB::String::String(v56, v15);
    KB::Candidate::Candidate(v55, v69);
    KB::CandidateFilterLookupContext::CandidateFilterLookupContext(&v61, v60, v58, &v48, v41, v56, v55, v13);
    KB::Candidate::~Candidate(v55);
    if (v57 && v56[6] == 1)
    {
      free(v57);
    }

    *&v39 = &v47;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v39);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v46);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v45);
    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v42);
    }

    if (v48.__begin_)
    {
      v48.__end_ = v48.__begin_;
      operator delete(v48.__begin_);
    }

    if (v59 == 1)
    {
      KB::Candidate::~Candidate(v58);
    }

    KB::Candidate::~Candidate(v60);
    v29 = *(v18 + 8);
    if (-858993459 * ((*(v18 + 16) - v29) >> 3))
    {
      v30 = (*(v29 + 32) & 3) == 1;
    }

    else
    {
      v30 = 0;
    }

    v63 = v30;
    v64 = v23 == 45;
    v65 = v24 == 46;
    v67 = v26;
    v66 = KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
    v68 = *(v18 + 200) != 0;
    v31 = *(v18 + 136);
    v32 = *(v18 + 288);
    v33 = *(v18 + 264);
    v38 = v33;
    if (v33)
    {
      atomic_fetch_add(v33, 1u);
    }

    v34 = *(v18 + 280);
    v36 = *(v18 + 272);
    v37 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    KB::CandidateFilterResources::CandidateFilterResources(&v39, v31, v32, &v38, &v36, *(v18 + 600), v18 + 632, v7);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }

    if (v38)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v38);
    }

    (*(*v50 + 24))(v50, v20, &v61, &v39);
    if (!v13 && v35)
    {
      if (*v20 == *(v20 + 1))
      {
        LODWORD(v52) = 0x100000;
        WORD2(v52) = 0;
        BYTE6(v52) = 0;
        v53 = 0;
        v54 = 0;
      }

      else
      {
        KB::Candidate::capitalized_string(&v52, *v20);
      }

      KB::String::operator=(v18 + 232, &v52);
      if (v53)
      {
        if (BYTE6(v52) == 1)
        {
          free(v53);
        }
      }
    }

    KB::CandidateFilterResources::~CandidateFilterResources(&v39);
    KB::CandidateFilterLookupContext::~CandidateFilterLookupContext(&v61);
    KB::Candidate::~Candidate(v69);
    if (v71 == 1)
    {
      KB::Candidate::~Candidate(v70);
    }

    KB::Candidate::~Candidate(v72);
    if (v75 == 1 && v74 && BYTE6(v73) == 1)
    {
      free(v74);
    }
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }
}

__n128 std::__function::__func<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0,std::allocator<TIInputManager::lookup_static_dynamic_candidates(KB::CandidateCollection &,KB::LookupType,KB::String const&,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9148;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::string_view::compare[abi:nn200100](uint64_t a1, unint64_t a2, unint64_t a3, size_t a4, void *__s2, size_t a6)
{
  if (a2 < a3)
  {
    abort();
  }

  if (a2 - a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2 - a3;
  }

  if (a6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a6;
  }

  LODWORD(result) = memcmp((a1 + a3), __s2, v8);
  if (v7 < a6)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v7 == a6)
  {
    v10 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

void TIInputManager::create_autocorrection_engine_with_synthetic_typing(const KB::String **this)
{
  v3 = *MEMORY[0x277D85DE8];
  KB::system_uptime(this);
  TIInputManager::create_autocorrection_engine();
}

uint64_t TIInputManager::favonius_layout(TIInputManager *this)
{
  v2 = *(this + 45);
  if (!v2)
  {
    operator new();
  }

  v4 = *(v2 + 208);
  v3 = (v2 + 208);
  if (!v4)
  {
    KB::String::operator=(v3, (this + 328));
  }

  return this + 360;
}

void std::__function::__func<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0,std::allocator<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, const KB::Candidate **a2, uint64_t a3, unsigned __int8 *a4)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v22 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v23 = *a4;
  v7 = *(a1 + 8);
  if (*(v7 + 608))
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  v9 = a2;
  KB::CandidateCollection::CandidateCollection(v29, a2);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = **(a1 + 32);
  __dst = 0;
  v28 = 0;
  v26 = 0;
  v13 = v22 - v6;
  v24 = v6;
  if (v22 != v6)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&v26, v13 >> 3);
  }

  TIInputManager::filter_raw_candidates(v7, v9, v10, v11, v12);
  KB::CandidateCollection::operator=(v9, &v34);
  cf = v38;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v37;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v36;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  cf = &v34;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&cf);
  if (v13)
  {
    __dst = (v22 - v6);
    operator delete(v13);
  }

  if (v23)
  {
    (*(**(a1 + 40) + 16))();
  }

  v14 = *(v7 + 608);
  if (v14)
  {
    (*(*v14 + 16))(v14, **(a1 + 48), *(v7 + 264) != 0);
    (*(***(a1 + 48) + 488))(&cf);
    v15 = KB::CandidateFilterFlags::candidate_filter_flag_type(v6, v22);
    v16 = &kGenericFlagDesc;
    if (v15 == 1)
    {
      v16 = &kPostLMFlagDesc;
    }

    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = &kPreLMFlagDesc;
    }

    KB::String::String(&v34, v17);
    v18 = *(v7 + 608);
    v19 = *(a1 + 16);
    v20 = **(a1 + 32);
    v21 = cf;
    v25 = cf;
    if (cf)
    {
      CFRetain(cf);
      v25 = v21;
    }

    (*(*v18 + 24))(v18, v19, v20, &v34, v29, Mutable, v9, &v25);
    if (v25)
    {
      CFRelease(v25);
    }

    v25 = 0;
    if (v35 && BYTE6(v34) == 1)
    {
      free(v35);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v34 = &v32;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = &v31;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = &v30;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = v29;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v24)
  {
    operator delete(v24);
  }
}

__n128 std::__function::__func<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0,std::allocator<TIInputManager::lookup_revision_candidates(KB::CandidateCollection &,KB::LookupType,void({block_pointer})(KB::CandidateCollection &,__CFString *),unsigned int,KB::String const&)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9190;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t WTF::RefCounted<TI::Favonius::Touch>::deref(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    v2 = *(result + 56);
    if (v2)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v2);
    }

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t std::__function::__func<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0,std::allocator<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0>,void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::operator()(uint64_t result, atomic_uint **a2)
{
  v2 = *(result + 8);
  if (!*v2)
  {
    v3 = *a2;
    if (*a2)
    {
      atomic_fetch_add(v3, 1u);
      result = *v2;
      *v2 = v3;
      if (result)
      {
        return WTF::RefCounted<TI::Favonius::Key>::deref(result);
      }
    }

    else
    {
      *v2 = 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0,std::allocator<TIInputManager::create_autocorrection_engine_with_synthetic_typing(KB::String const&)::$_0>,void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD91D8;
  a2[1] = v2;
  return result;
}

uint64_t *KB::String::find_last_of(KB::String *this, const KB::String *a2, const KB::String *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  if (!v7)
  {
    v7 = a2 + 16;
  }

  v9 = v7;
  v10 = v6;
  v11 = v6;
  v12 = 0;
  KB::String::iterator::initialize(&v9);
  return KB::String::find_last_of(a2, a3, &v9, this);
}

uint64_t repeating_character_threshold(const __CFLocale *a1)
{
  if (a1 && (Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEED0]), CFStringCompare(Value, @"de", 0) == kCFCompareEqualTo))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(unint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v98 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a1;
  while (1)
  {
    v9 = a2 - v8;
    v10 = 0x1CAC083126E978D5 * ((a2 - v8) >> 3);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v74 = expf(*(a2 - 64));
      if (v74 <= expf(*(v8 + 744)))
      {
        return;
      }

      v75 = a2 - 125;
      v76 = a1;
      goto LABEL_139;
    }

LABEL_10:
    if (v9 <= 23999)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v80 = v8 + 1000;
          if ((v8 + 1000) != a2)
          {
            v81 = 0;
            v82 = v8;
            do
            {
              v83 = v82;
              v82 = v80;
              v84 = expf(*(v83 + 1744));
              if (v84 > expf(*(v83 + 744)))
              {
                KB::Candidate::Candidate(v96, v82);
                v85 = v81;
                while (1)
                {
                  KB::Candidate::operator=((v8 + v85 + 1000), (v8 + v85));
                  if (!v85)
                  {
                    break;
                  }

                  v86 = expf(v97);
                  v87 = expf(*(v8 + v85 - 256));
                  v85 -= 1000;
                  if (v86 <= v87)
                  {
                    v88 = (v8 + v85 + 1000);
                    goto LABEL_120;
                  }
                }

                v88 = v8;
LABEL_120:
                KB::Candidate::operator=(v88, v96);
                KB::Candidate::~Candidate(v96);
              }

              v80 = v82 + 1000;
              v81 += 1000;
            }

            while ((v82 + 1000) != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v90 = (v8 + 1000);
        while (v90 != a2)
        {
          v91 = v90;
          v92 = expf(*(v8 + 1744));
          if (v92 > expf(*(v8 + 744)))
          {
            KB::Candidate::Candidate(v96, v91);
            do
            {
              v93 = v8;
              KB::Candidate::operator=((v8 + 1000), v8);
              v8 -= 1000;
              v94 = expf(v97);
            }

            while (v94 > expf(*(v93 - 64)));
            KB::Candidate::operator=(v93, v96);
            KB::Candidate::~Candidate(v96);
          }

          v90 = (v91 + 1000);
          v8 = v91;
        }
      }

      return;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,KB::Candidate *>(v8, a2, a2);
      }

      return;
    }

    v11 = v10 >> 1;
    v12 = v8 + 1000 * (v10 >> 1);
    v13 = expf(*(a2 - 64));
    if (v9 >= 0x1F401)
    {
      v14 = expf(*(v12 + 744));
      if (v14 <= expf(*(v8 + 744)))
      {
        if (v13 > v14)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v8 + 1000 * v11), a2 - 125);
          v22 = expf(*(v12 + 744));
          if (v22 > expf(*(v8 + 744)))
          {
            v15 = v8;
            v17 = (v8 + 1000 * v11);
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = v8;
        if (v13 > v14)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, (v8 + 1000 * v11));
        v16 = expf(*(a2 - 64));
        if (v16 > expf(*(v12 + 744)))
        {
          v15 = (v8 + 1000 * v11);
LABEL_17:
          v17 = a2 - 125;
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v15, v17);
        }
      }

      v23 = v8 + 1000 * v11;
      v24 = v23 - 1000;
      v25 = expf(*(v23 - 256));
      v26 = expf(*(v8 + 1744));
      v27 = expf(*(a2 - 314));
      if (v25 <= v26)
      {
        if (v27 > v25)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v24, a2 - 250);
          v32 = expf(*(v24 + 744));
          if (v32 > expf(*(v8 + 1744)))
          {
            v28 = (v8 + 1000);
            v30 = v24;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v28 = (v8 + 1000);
        if (v27 > v25)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v28, v24);
        v29 = expf(*(a2 - 314));
        if (v29 > expf(*(v24 + 744)))
        {
          v28 = v24;
LABEL_31:
          v30 = a2 - 250;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v28, v30);
        }
      }

      v33 = v8 + 1000 * v11;
      v34 = v33 + 1000;
      v35 = expf(*(v33 + 1744));
      v36 = expf(*(v8 + 2744));
      v37 = expf(*(a2 - 564));
      if (v35 <= v36)
      {
        if (v37 > v35)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v34, a2 - 375);
          v41 = expf(*(v34 + 744));
          if (v41 > expf(*(v8 + 2744)))
          {
            v38 = (v8 + 2000);
            v40 = v34;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v38 = (v8 + 2000);
        if (v37 > v35)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v38, v34);
        v39 = expf(*(a2 - 564));
        if (v39 > expf(*(v34 + 744)))
        {
          v38 = v34;
LABEL_44:
          v40 = a2 - 375;
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v38, v40);
        }
      }

      v42 = expf(*(v12 + 744));
      v43 = expf(*(v24 + 744));
      v44 = expf(*(v34 + 744));
      if (v42 <= v43)
      {
        if (v44 > v42)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v8 + 1000 * v11), v34);
          v48 = expf(*(v12 + 744));
          if (v48 > expf(*(v24 + 744)))
          {
            v45 = v24;
            v47 = (v8 + 1000 * v11);
            goto LABEL_57;
          }
        }
      }

      else
      {
        v45 = v24;
        if (v44 > v42)
        {
          goto LABEL_53;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v24, (v8 + 1000 * v11));
        v46 = expf(*(v34 + 744));
        if (v46 > expf(*(v12 + 744)))
        {
          v45 = (v8 + 1000 * v11);
LABEL_53:
          v47 = v34;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v45, v47);
        }
      }

      KB::Candidate::Candidate(v96, v8);
      KB::Candidate::operator=(v8, (v8 + 1000 * v11));
      KB::Candidate::operator=((v8 + 1000 * v11), v96);
      KB::Candidate::~Candidate(v96);
      v8 = a1;
      goto LABEL_59;
    }

    v18 = expf(*(v8 + 744));
    if (v18 <= expf(*(v12 + 744)))
    {
      if (v13 > v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, a2 - 125);
        v31 = expf(*(v8 + 744));
        if (v31 > expf(*(v12 + 744)))
        {
          v19 = (v8 + 1000 * v11);
          v21 = v8;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v19 = (v8 + 1000 * v11);
      if (v13 > v18)
      {
        goto LABEL_22;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v19, v8);
      v20 = expf(*(a2 - 64));
      if (v20 > expf(*(v8 + 744)))
      {
        v19 = v8;
LABEL_22:
        v21 = a2 - 125;
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v19, v21);
      }
    }

LABEL_59:
    --a3;
    if ((a4 & 1) == 0)
    {
      v49 = expf(*(v8 - 256));
      if (v49 <= expf(*(v8 + 744)))
      {
        KB::Candidate::Candidate(v96, v8);
        v63 = expf(v97);
        if (v63 <= expf(*(a2 - 64)))
        {
          v66 = v8 + 1000;
          do
          {
            a1 = v66;
            if (v66 >= a2)
            {
              break;
            }

            v67 = expf(*(v66 + 744));
            v66 = a1 + 1000;
          }

          while (v63 <= v67);
        }

        else
        {
          v64 = v8;
          do
          {
            a1 = v64 + 1000;
            v65 = expf(*(v64 + 1744));
            v64 = a1;
          }

          while (v63 <= v65);
        }

        v68 = a2;
        if (a1 < a2)
        {
          v69 = a2;
          do
          {
            v68 = v69 - 125;
            v70 = expf(*(v69 - 64));
            v69 = v68;
          }

          while (v63 > v70);
        }

        while (a1 < v68)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v68);
          v71 = expf(v97);
          do
          {
            v72 = *(a1 + 1744);
            a1 += 1000;
          }

          while (v71 <= expf(v72));
          do
          {
            v73 = *(v68 - 64);
            v68 -= 125;
          }

          while (v71 > expf(v73));
        }

        if (a1 - 1000 != v8)
        {
          KB::Candidate::operator=(v8, (a1 - 1000));
        }

        KB::Candidate::operator=((a1 - 1000), v96);
        KB::Candidate::~Candidate(v96);
        a4 = 0;
        goto LABEL_2;
      }
    }

    KB::Candidate::Candidate(v96, v8);
    v50 = expf(v97);
    v51 = v8;
    do
    {
      v52 = v51;
      v51 += 125;
    }

    while (expf(*(v52 + 1744)) > v50);
    v53 = a2;
    if (v52 == v8)
    {
      v56 = a2;
      while (v51 < v56)
      {
        v54 = v56 - 125;
        v57 = expf(*(v56 - 64));
        v56 = v54;
        if (v57 > v50)
        {
          goto LABEL_71;
        }
      }

      v54 = v56;
    }

    else
    {
      do
      {
        v54 = v53 - 125;
        v55 = expf(*(v53 - 64));
        v53 = v54;
      }

      while (v55 <= v50);
    }

LABEL_71:
    if (v51 < v54)
    {
      v58 = v54;
      v59 = v51;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v59, v58);
        v60 = expf(v97);
        do
        {
          v52 = v59;
          v59 += 125;
        }

        while (expf(*(v52 + 1744)) > v60);
        do
        {
          v61 = *(v58 - 64);
          v58 -= 125;
        }

        while (expf(v61) <= v60);
      }

      while (v59 < v58);
    }

    if (v52 != v8)
    {
      KB::Candidate::operator=(v8, v52);
    }

    KB::Candidate::operator=(v52, v96);
    KB::Candidate::~Candidate(v96);
    if (v51 < v54)
    {
      goto LABEL_84;
    }

    v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(v8, v52);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(v52 + 1000, a2))
    {
      a1 = v52 + 1000;
      if (v62)
      {
        goto LABEL_2;
      }

LABEL_84:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(v8, v52, a3, a4 & 1);
      a4 = 0;
      a1 = v52 + 1000;
      goto LABEL_2;
    }

    a2 = v52;
    if (v62)
    {
      return;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(v8, v8 + 1000, v8 + 2000, (a2 - 125));
      return;
    }

    if (v10 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(v8, v8 + 1000, v8 + 2000, v8 + 3000, (a2 - 125));
      return;
    }

    goto LABEL_10;
  }

  v77 = expf(*(v8 + 1744));
  v78 = expf(*(v8 + 744));
  v79 = expf(*(a2 - 64));
  if (v77 > v78)
  {
    if (v79 <= v77)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, (v8 + 1000));
      v95 = expf(*(a2 - 64));
      if (v95 <= expf(*(v8 + 1744)))
      {
        return;
      }

      v76 = (v8 + 1000);
    }

    else
    {
      v76 = v8;
    }

    v75 = a2 - 125;
    goto LABEL_139;
  }

  if (v79 > v77)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v8 + 1000), a2 - 125);
    v89 = expf(*(v8 + 1744));
    if (v89 > expf(*(v8 + 744)))
    {
      v75 = (v8 + 1000);
      v76 = v8;
LABEL_139:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v76, v75);
    }
  }
}

void TIInputManager::inject_supplemental_candidate(size_t a1, int a2, KB::Candidate **a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!TITransientLexiconManagerGetActiveSupplementalLexiconWords())
  {
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    if (!*(a1 + 576))
    {
      return;
    }

    v6 = *(a1 + 264);
    if (v6)
    {
      if (**(v6 + 8) != *(*(v6 + 8) + 8))
      {
        return;
      }
    }
  }

  TIInputManager::legacy_input_stem(&v40, a1);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 0x40000000;
  v30 = ___ZN14TIInputManager29inject_supplemental_candidateEN2KB10LookupTypeERNS0_19CandidateCollectionE_block_invoke;
  v31 = &__block_descriptor_tmp_5_5172;
  v32 = a1;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 0x40000000;
  v35[2] = ___ZN14TIInputManager30word_from_supplemental_lexiconERN2KB6StringE_block_invoke;
  v35[3] = &__block_descriptor_tmp_5173;
  v35[4] = a1;
  KB::DynamicDictionary::word_from_supplemental_lexicon(*(*(a1 + 264) + 24), &v40, v35, v38);
  v8 = *a3;
  v7 = a3[1];
  if ((v39 & 1) == 0)
  {
    if (v7 == *a3)
    {
      goto LABEL_45;
    }

    v14 = 0;
    while (1)
    {
      v15 = (v8 + 1000 * v14);
      v16 = *v15;
      if (*v15)
      {
        v17 = *(v15 + 1);
        v18 = 240 * v16;
        v19 = v17 + 240 * v16;
        v20 = v18 - 240;
        v21 = (v17 + 224);
        do
        {
          v23 = *v21;
          v21 += 30;
          v22 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v20 == 0;
          }

          v20 -= 240;
        }

        while (!v24);
        if (!v22)
        {
          KB::DynamicDictionary::word_from_supplemental_lexicon(*(*(a1 + 264) + 24), (v19 - 240), v29, v35);
          if (v36 == 1)
          {
            KB::Candidate::pop_last_word(v15);
            if ((v36 & 1) == 0)
            {
              goto LABEL_50;
            }

            KB::Candidate::append(v15, v35);
            if (v36)
            {
              KB::Word::~Word(v35);
            }
          }

          v8 = *a3;
          v7 = a3[1];
        }
      }

      if (++v14 >= (0x1CAC083126E978D5 * ((v7 - v8) >> 3)))
      {
        goto LABEL_45;
      }
    }
  }

  if (v7 == *a3)
  {
LABEL_38:
    TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v33);
    KB::Candidate::Candidate(v35, v33, 0);
    if (v34 && v33[6] == 1)
    {
      free(v34);
    }

    if (v35[0])
    {
      KB::Candidate::pop_last_word(v35);
    }

    if (v39)
    {
      KB::Candidate::append(v35, v38);
      v37 = 1065353216;
      std::vector<KB::Candidate>::push_back[abi:nn200100](a3, v35);
      KB::Candidate::~Candidate(v35);
      goto LABEL_45;
    }

LABEL_50:
    v25 = std::__throw_bad_optional_access[abi:nn200100]();
    TIInputManager::apply_case_insensitive_constraints(v25, v26, v27, v28);
    return;
  }

  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = 1000 * v10;
    while (1)
    {
      v12 = v8 + v11;
      v13 = *(v8 + v11);
      if (v13)
      {
        break;
      }

LABEL_15:
      ++v10;
      v11 += 1000;
      if (v10 >= 0x1CAC083126E978D5 * ((v7 - v8) >> 3))
      {
        if (v9)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }
    }

    if (((v30)(v29, &v40, *(v12 + 1) + 240 * v13 - 240) & 1) == 0)
    {
      v8 = *a3;
      v7 = a3[1];
      goto LABEL_15;
    }

    KB::Candidate::pop_last_word(v12);
    if ((v39 & 1) == 0)
    {
      goto LABEL_50;
    }

    KB::Candidate::append(v12, v38);
    *(v12 + 186) = 1065353216;
    ++v10;
    v8 = *a3;
    v7 = a3[1];
    v9 = 1;
    if (v10 < 0x1CAC083126E978D5 * ((v7 - *a3) >> 3))
    {
      continue;
    }

    break;
  }

LABEL_45:
  if (v39 == 1)
  {
    KB::Word::~Word(v38);
  }

  if (v41)
  {
    if (BYTE6(v40) == 1)
    {
      free(v41);
    }
  }
}

void TIInputManager::apply_case_insensitive_constraints(int *a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1[54] <= a1[55])
  {
    v8 = a1[55];
  }

  else
  {
    v8 = a1[54];
  }

  TIInputManager::input_substring((a1 + 2), 0, v8, v29);
  TIInputManager::input_substring((a1 + 2), 0, a1[54], v27);
  TIInputManager::input_substring((a1 + 2), 0, a1[24], v25);
  v9 = 0;
  v15[0] = a2;
  v15[1] = a2 + 24;
  v15[2] = a2 + 48;
  v15[3] = a2 + 72;
  v10 = MEMORY[0x277D85DD0];
  do
  {
    v11 = v15[v9];
    v12 = *v11;
    v13 = *(v11 + 8);
    v16[0] = v10;
    v16[1] = 1174405120;
    v16[2] = ___ZN14TIInputManager34apply_case_insensitive_constraintsERN2KB19CandidateCollectionENS0_10LookupTypeEP10__CFString_block_invoke;
    v16[3] = &__block_descriptor_tmp_13;
    v16[4] = a1;
    KB::String::String(v17, v29);
    KB::String::String(v19, v27);
    KB::String::String(v21, v25);
    v24 = a3;
    v23 = a4;
    v14 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(v12, v13, v16);
    std::vector<KB::Candidate>::erase(v11, v14, *(v11 + 8));
    if (v22 && v21[6] == 1)
    {
      free(v22);
    }

    if (v20 && v19[6] == 1)
    {
      free(v20);
    }

    if (v18 && v17[6] == 1)
    {
      free(v18);
    }

    ++v9;
  }

  while (v9 != 4);
  if (v26 && v25[6] == 1)
  {
    free(v26);
  }

  if (v28 && v27[6] == 1)
  {
    free(v28);
  }

  if (v30)
  {
    if (v29[6] == 1)
    {
      free(v30);
    }
  }
}

void TIInputManager::apply_case_changes(uint64_t a1, uint64_t a2, KB::String *a3, std::vector<unsigned int>::size_type a4, uint64_t a5, __CFString *a6)
{
  v8 = a4;
  v9 = a3;
  v11 = 0;
  v35[2] = *MEMORY[0x277D85DE8];
  v29[0] = a2;
  v29[1] = a2 + 24;
  v29[2] = a2 + 48;
  v29[3] = a2 + 72;
  v27 = a4;
  do
  {
    v26 = v11;
    v12 = *(v29 + v11);
    v13 = *v12;
    if (v12[1] != *v12)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if (TIInputManager::apply_case_changes(a1, (v13 + 1000 * v14), v9, v8, a5, *(a1 + 731), a1 + 264, a6))
        {
          ++v15;
          v16 = v12[1];
        }

        else
        {
          v17 = a5;
          if (a6)
          {
            v18 = (*v12 + 1000 * v14);
            KB::Candidate::capitalized_string(&v33, v18);
            v19 = v34;
            if (!v34)
            {
              v19 = v35;
            }

            if (v33)
            {
              v20 = v19;
            }

            else
            {
              v20 = "";
            }

            KB::Candidate::token_ids_as_string(&v30, v18);
            v22 = v31;
            if (!v31)
            {
              v22 = &v32;
            }

            if (v30)
            {
              v23 = v22;
            }

            else
            {
              v23 = "";
            }

            KB::append_format(a6, "[%s] {%s} removed by %s\n", v21, v20, v23, "apply_case_changes");
            if (v31 && BYTE6(v30) == 1)
            {
              free(v31);
            }

            if (v34 && BYTE6(v33) == 1)
            {
              free(v34);
            }
          }

          v24 = v12[1];
          v16 = (*v12 + 1000 * v14);
          if (v16 + 125 != v24)
          {
            do
            {
              v25 = v16;
              v16 += 125;
            }

            while (KB::Candidate::operator=(v25, v16) + 250 != v24);
            v24 = v12[1];
          }

          while (v24 != v16)
          {
            v24 -= 125;
            KB::Candidate::~Candidate(v24);
          }

          v12[1] = v16;
          a5 = v17;
          v8 = v27;
          v9 = a3;
        }

        v14 = v15;
        v13 = *v12;
      }

      while (0x1CAC083126E978D5 * ((v16 - *v12) >> 3) > v15);
    }

    v11 = v26 + 8;
  }

  while (v26 != 24);
}

void TIInputManager::apply_apostrophe_changes(TIInputManager *this, KB::CandidateCollection *a2, const KB::String *a3, __CFString *a4)
{
  v34[2] = *MEMORY[0x277D85DE8];
  if (KB::String::contains(a3, 0x2019u))
  {
    v6 = 0;
    v25[0] = a2;
    v25[1] = a2 + 24;
    v25[2] = a2 + 48;
    v25[3] = a2 + 72;
    do
    {
      v24 = v6;
      v7 = *(v25 + v6);
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        if (*v8)
        {
          v10 = 0;
          v11 = *(v8 + 1);
          v12 = (v11 + 240 * *v8);
          do
          {
            while (1)
            {
              v13 = *(v11 + 1);
              if (!v13)
              {
                v13 = v11 + 16;
              }

              v14 = *v11;
              if (*v11)
              {
                v15 = *v11;
                v16 = v13;
                while (*v16 != 39)
                {
                  ++v16;
                  if (!--v15)
                  {
                    v16 = &v14[v13];
                    break;
                  }
                }
              }

              else
              {
                v16 = v13;
              }

              if ((v16 - v13) == v14)
              {
                break;
              }

              KB::Word::capitalized_string(&v29, v11);
              WORD2(v26) = 0;
              BYTE6(v26) = 0;
              v27 = "’";
              LODWORD(v26) = 1048579;
              v28[1] = 0;
              KB::String::replace_char(&v32, &v29, &v26, 39);
              if (v27 && BYTE6(v26) == 1)
              {
                free(v27);
              }

              if (v30 && BYTE6(v29) == 1)
              {
                free(v30);
              }

              if (a4)
              {
                KB::Candidate::capitalized_string(&v29, v8);
                v17 = v30;
                if (!v30)
                {
                  v17 = &v31;
                }

                if (v29)
                {
                  v18 = v17;
                }

                else
                {
                  v18 = "";
                }

                KB::Word::capitalized_string(&v26, v11);
                v20 = v27;
                if (!v27)
                {
                  v20 = v28;
                }

                if (v26)
                {
                  v21 = v20;
                }

                else
                {
                  v21 = "";
                }

                v22 = v33;
                if (!v33)
                {
                  v22 = v34;
                }

                if (v32)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = "";
                }

                KB::append_format(a4, "[%s] converted [%s] to [%s] by %s\n", v19, v18, v21, v23, "apply_apostrophe_changes");
                if (v27 && BYTE6(v26) == 1)
                {
                  free(v27);
                }

                if (v30 && BYTE6(v29) == 1)
                {
                  free(v30);
                }
              }

              KB::String::operator=(v11, &v32);
              if (v33)
              {
                if (BYTE6(v32) == 1)
                {
                  free(v33);
                }
              }

              v11 = (v11 + 240);
              v10 = 1;
              if (v11 == v12)
              {
                goto LABEL_52;
              }
            }

            v11 = (v11 + 240);
          }

          while (v11 != v12);
          if ((v10 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_52:
          KB::Candidate::compute_string(v8);
        }

LABEL_53:
        v8 = (v8 + 1000);
      }

      v6 = v24 + 8;
    }

    while (v24 != 24);
  }
}

void TIInputManager::apply_shortcut_conversions(TIInputManager *this, KB::CandidateCollection *a2, const KB::String *a3, __CFString *a4, uint64_t a5)
{
  v7 = 0;
  v32[30] = *MEMORY[0x277D85DE8];
  v22[0] = a2;
  v22[1] = a2 + 24;
  v22[2] = a2 + 48;
  v22[3] = a2 + 72;
  do
  {
    v8 = *(v22 + v7);
    v10 = *v8;
    v9 = v8[1];
    v20 = v7;
    v21 = v9;
    while (v10 != v9)
    {
      if (*v10)
      {
        v11 = *(v10 + 1);
        v12 = 240 * *v10;
        do
        {
          if (*(v11 + 106))
          {
            TIInputManager::conversion_for_shortcut(v32, this, v11, a3, a4, a5);
            if (LOWORD(v32[0]))
            {
              if (a4)
              {
                KB::Candidate::capitalized_string(&v29, v10);
                v13 = v30;
                if (!v30)
                {
                  v13 = &v31;
                }

                if (v29)
                {
                  v14 = v13;
                }

                else
                {
                  v14 = "";
                }

                KB::Word::capitalized_string(&v26, v11);
                v15 = v27;
                if (!v27)
                {
                  v15 = &v28;
                }

                if (v26)
                {
                  v16 = v15;
                }

                else
                {
                  v16 = "";
                }

                KB::Word::capitalized_string(&v23, v32);
                v18 = v24;
                if (!v24)
                {
                  v18 = &v25;
                }

                if (v23)
                {
                  v19 = v18;
                }

                else
                {
                  v19 = "";
                }

                KB::append_format(a4, "[%s] converted [%s] to [%s] by %s\n", v17, v14, v16, v19, "apply_shortcut_conversions");
                if (v24 && BYTE6(v23) == 1)
                {
                  free(v24);
                }

                if (v27 && BYTE6(v26) == 1)
                {
                  free(v27);
                }

                if (v30)
                {
                  if (BYTE6(v29) == 1)
                  {
                    free(v30);
                  }
                }
              }

              KB::String::operator=(v11, v32);
              KB::Candidate::compute_string(v10);
            }

            KB::Word::~Word(v32);
          }

          v11 = (v11 + 240);
          v12 -= 240;
        }

        while (v12);
      }

      v10 = (v10 + 1000);
      v9 = v21;
    }

    v7 = v20 + 8;
  }

  while (v20 != 24);
}

void TIInputManager::remove_text_replacement_from_top(TIInputManager *this, unint64_t **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if ((0x1CAC083126E978D5 * (a2[1] - v3)) >= 2)
  {
    KB::Candidate::Candidate(&v7, v3);
    if (v7)
    {
      v5 = 240 * v7;
      v6 = v8;
      while ((*(v6 + 106) & 1) == 0)
      {
        v6 += 240;
        v5 -= 240;
        if (!v5)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = v8;
    }

    if (v6 != v8 + 240 * v7)
    {
      KB::Candidate::operator=(*a2, *a2 + 125);
      KB::Candidate::operator=(*a2 + 125, &v7);
    }

LABEL_10:
    KB::Candidate::~Candidate(&v7);
  }
}

void TIInputManager::conversion_for_shortcut(void *__return_ptr a1@<X8>, TIInputManager *this@<X0>, const KB::String *a3@<X1>, const __CFLocale *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = *(*(*(this + 33) + 24) + 24);
  if (v7 && (v8 = *v7) != 0 && *a3 < 0x41u)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    KB::lower_string(&v50, a3, 0, a4, a5, a6);
    if (v51)
    {
      v10 = v51;
    }

    else
    {
      v10 = v52;
    }

    v11 = KB::String::hash(v10, v50);
    v15 = *(v8 + 16);
    if (v15)
    {
      v16 = v11;
      v17 = vcnt_s8(v15);
      v17.i16[0] = vaddlv_u8(v17);
      v18 = v17.u32[0];
      if (v17.u32[0] > 1uLL)
      {
        v19 = v11;
        if (v15 <= v11)
        {
          v19 = v11 % v15;
        }
      }

      else
      {
        v19 = (v15 - 1) & v11;
      }

      v20 = *(*(v8 + 8) + 8 * v19);
      if (v20)
      {
        v21 = *v20;
        if (*v20)
        {
          do
          {
            v22 = v21[1];
            if (v22 == v16)
            {
              if (v21 + 2 == &v50 || KB::String::equal((v21 + 2), &v50, 1, v13, v14))
              {
                if (v21 + 6 != &v44)
                {
                  std::vector<KB::String>::__assign_with_size[abi:nn200100]<KB::String*,KB::String*>(&v44, v21[6], v21[7], (v21[7] - v21[6]) >> 5);
                }

                break;
              }
            }

            else
            {
              if (v18 > 1)
              {
                if (v22 >= v15)
                {
                  v22 %= v15;
                }
              }

              else
              {
                v22 &= v15 - 1;
              }

              if (v22 != v19)
              {
                break;
              }
            }

            v21 = *v21;
          }

          while (v21);
        }
      }
    }

    if (v51 && BYTE6(v50) == 1)
    {
      free(v51);
    }

    v23 = v44;
    if (v45 == v44)
    {
      *(a1 + 13) = 0u;
      *(a1 + 14) = 0u;
      *(a1 + 11) = 0u;
      *(a1 + 12) = 0u;
      *(a1 + 9) = 0u;
      *(a1 + 10) = 0u;
      *(a1 + 7) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 6) = 0u;
      *(a1 + 3) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
      KB::Word::Word(a1);
    }

    else
    {
      if (*a3 && *v44)
      {
        v24 = KB::ns_string(v44, v12);
        if (v24)
        {
          v25 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
          v26 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
          [v24 rangeOfCharacterFromSet:v25];
          if (v27 && ([v24 rangeOfCharacterFromSet:v26], !v28))
          {
            v29 = KB::ns_string(a3, 0);
            v30 = v29;
            if (v29 && ([v29 rangeOfCharacterFromSet:v26], v31) && ((objc_msgSend(v30, "rangeOfCharacterFromSet:", v25), v32) || objc_msgSend(v30, "length") < 2) && (objc_msgSend(v30, "capitalizedString", v44), v33 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v30), v33, (isEqualToString & 1) != 0))
            {
              v50 = 0;
              v51 = &v50;
              v52[0] = 0x4012000000;
              v52[1] = __Block_byref_object_copy__12949;
              v52[2] = __Block_byref_object_dispose__12950;
              v52[3] = "";
              v53 = xmmword_22CC889D0;
              v35 = [v24 length];
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = ___ZN2KB41match_shortcut_conversion_case_with_inputERKNS_6StringES2__block_invoke;
              v47[3] = &unk_278732850;
              v47[4] = &v50;
              [v24 enumerateSubstringsInRange:0 options:v35 usingBlock:{515, v47}];
              v36 = *(v51 + 6);
              if (v36 == 0x7FFFFFFFFFFFFFFFLL || (v37 = *(v51 + 7)) == 0)
              {
                KB::String::String(v48, v23);
              }

              else
              {
                if (v36 || v37 != [v24 length])
                {
                  v39 = [MEMORY[0x277CCAB68] stringWithString:v24];
                  v40 = *(v51 + 6);
                  v41 = *(v51 + 7);
                  v42 = [v24 substringWithRange:{v40, v41}];
                  v43 = [v42 capitalizedString];
                  [v39 replaceCharactersInRange:v40 withString:{v41, v43}];

                  v38 = v39;
                }

                else
                {
                  v38 = [v24 capitalizedString];
                  v39 = v38;
                }

                KB::utf8_string(v38, v48);
              }

              _Block_object_dispose(&v50, 8);
            }

            else
            {
              KB::String::String(v48, v23);
            }
          }

          else
          {
            KB::String::String(v48, v23);
          }
        }

        else
        {
          KB::String::String(v48, v23);
        }
      }

      else
      {
        KB::String::String(v48, v44);
      }

      KB::Word::Word(a1, v48, &kTITokenIDUNK, 0);
      if (v49 && v48[6] == 1)
      {
        free(v49);
      }
    }

    v50 = &v44;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v50);
  }

  else
  {
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;

    KB::Word::Word(a1);
  }
}

uint64_t TIInputManager::apply_case_changes(uint64_t a1, unint64_t *a2, KB::String *a3, std::vector<unsigned int>::size_type a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v109[2] = *MEMORY[0x277D85DE8];
  v83 = a6;
  v82 = a8;
  TIInputManager::input_substring(a3, 0, a4, v105);
  TIInputManager::input_flags_subvector(v81, a4, a3, 0);
  v79 = 0;
  v80 = 0;
  v78 = 0;
  if (a4)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a4);
  }

  v53 = v81[0];
  v12 = v106;
  if (!v106)
  {
    KB::String::compute_length(v105);
    v12 = v106;
  }

  if (v12)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v12);
  }

  KB::word_ranges(&v75, v105, 0);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v77 = 0;
  v13 = *a2;
  v14 = a1;
  if (*a2)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if ((*(a2[1] + 240 * v15 + 135) & 4) == 0)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v72, &v77);
        v13 = *a2;
      }

      v77 = v16;
      v15 = v16;
      v17 = v13 > v16++;
    }

    while (v17);
    if ((v83 & 1) == 0 && v13)
    {
      v18 = a2[1];
      v19 = 240 * v13;
      do
      {
        if (*(a1 + 104))
        {
          if (*(a1 + 112))
          {
            v20 = *(a1 + 112);
          }

          else
          {
            v20 = (a1 + 120);
          }
        }

        else
        {
          v20 = "";
        }

        KB::string_to_lowercase(&v90, v18, v20);
        KB::String::operator=(v18, &v90);
        if (*(&v90 + 1))
        {
          v21 = BYTE6(v90) == 1;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          free(*(&v90 + 1));
        }

        v18 = (v18 + 240);
        v19 -= 240;
      }

      while (v19);
      if (*a2)
      {
        v22 = 240 * *a2;
        v23 = (a2[1] + 104);
        do
        {
          v23[4] = 0;
          *v23 &= ~1u;
          v23 += 60;
          v22 -= 240;
        }

        while (v22);
      }
    }
  }

  v24 = v72;
  v25 = v73;
  v26 = v75;
  v54 = (v76 - v75) >> 3;
  v71 = v54;
  v70 = v54 == (v73 - v72) >> 2;
  v69 = 0;
  if (v76 == v75)
  {
LABEL_70:
    v50 = v53;
    while (v24 != v25)
    {
      v51 = *v24++;
      TIInputManager::apply_shift_context_to_prediction(v14, a5, (a2[1] + 240 * v51));
      if (a5 == 2)
      {
        a5 = 0;
      }
    }

    KB::Candidate::commit_custom_capitalization(a2);
    v49 = 1;
  }

  else
  {
    v27 = 0;
    while (1)
    {
      v28 = &v26[8 * v27];
      v29 = *v28;
      v30 = *(v28 + 1) + v29;
      if (v108)
      {
        v31 = v108;
      }

      else
      {
        v31 = v109;
      }

      *&v86 = v31;
      v32 = v105[0];
      DWORD2(v86) = 0;
      HIDWORD(v86) = v105[0];
      LODWORD(v87) = 0;
      KB::String::iterator::initialize(&v86);
      v90 = v86;
      v91 = v87;
      v33 = v29;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v90, v29);
      *&v65 = v31;
      DWORD2(v65) = 0;
      HIDWORD(v65) = v32;
      LODWORD(v66) = 0;
      KB::String::iterator::initialize(&v65);
      *__p = v65;
      v68 = v66;
      v34 = v30;
      std::__advance[abi:nn200100]<KB::String::iterator>(__p, v30);
      KB::String::String(v102, &v90, __p);
      v35 = 4 * v30;
      __p[0] = 0;
      __p[1] = 0;
      v68 = 0;
      if (v35 != 4 * v29)
      {
        v36 = (v35 - 4 * v29) >> 2;
        if (!(v36 >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v36);
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v63 = 0;
      v64 = 0;
      *&v90 = &v64;
      *(&v90 + 1) = a1;
      v91 = &v70;
      v92 = &v71;
      v93 = &v69;
      v94 = &v72;
      v95 = a2;
      v96 = a7;
      v97 = &v82;
      v98 = v105;
      v99 = &v63;
      v100 = __p;
      v101 = &v83;
      KB::String::String(v88, v102);
      v39 = TIInputManager::apply_case_changes(KB::Candidate &,std::vector<KB::Input> const&,unsigned int,TIShiftContext,BOOL,WTF::RefPtr<KB::DictionaryContainer> const&,__CFString *)const::$_0::operator()(&v90, v88, v37, v38);
      if (v89 && v88[6] == 1)
      {
        free(v89);
      }

      if (*(a1 + 200) && v39)
      {
        if (v108)
        {
          v40 = v108;
        }

        else
        {
          v40 = v109;
        }

        *&v61 = v40;
        v41 = v105[0];
        DWORD2(v61) = 0;
        HIDWORD(v61) = v105[0];
        LODWORD(v62) = 0;
        KB::String::iterator::initialize(&v61);
        v65 = v61;
        v66 = v62;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v65, v33);
        *&v57 = v40;
        DWORD2(v57) = 0;
        HIDWORD(v57) = v41;
        LODWORD(v58) = 0;
        KB::String::iterator::initialize(&v57);
        v59 = v57;
        v60 = v58;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v59, v34);
        KB::String::String(&v86, &v65, &v59);
        KB::String::operator=(v102, &v86);
        if (*(&v86 + 1) && BYTE6(v86) == 1)
        {
          free(*(&v86 + 1));
        }

        KB::String::convert_via_map(v102, (a1 + 176), &v86);
        v39 = 1;
        if (!KB::String::equal(&v86, v102, 1, v42, v43))
        {
          v73 = v72;
          v77 = 0;
          v44 = *a2;
          if (*a2)
          {
            v45 = 0;
            v46 = 1;
            do
            {
              if ((*(a2[1] + 240 * v45 + 135) & 4) == 0)
              {
                std::vector<unsigned int>::push_back[abi:nn200100](&v72, &v77);
                v44 = *a2;
              }

              v77 = v46;
              v45 = v46;
              v17 = v44 > v46++;
            }

            while (v17);
          }

          KB::String::String(v84, &v86);
          v39 = TIInputManager::apply_case_changes(KB::Candidate &,std::vector<KB::Input> const&,unsigned int,TIShiftContext,BOOL,WTF::RefPtr<KB::DictionaryContainer> const&,__CFString *)const::$_0::operator()(&v90, v84, v47, v48);
          if (v85 && v84[6] == 1)
          {
            free(v85);
          }
        }

        if (*(&v86 + 1) && BYTE6(v86) == 1)
        {
          free(*(&v86 + 1));
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v104 && v103 == 1)
      {
        free(v104);
      }

      if (v39 == 1)
      {
        break;
      }

      v27 = ++v69;
      if (v54 <= v69)
      {
        v24 = v72;
        v25 = v73;
        v14 = a1;
        goto LABEL_70;
      }
    }

    v49 = 0;
    v50 = v53;
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (v78)
  {
    operator delete(v78);
  }

  if (v50)
  {
    operator delete(v50);
  }

  if (v108 && v107 == 1)
  {
    free(v108);
  }

  return v49;
}

void TIInputManager::input_flags_subvector(std::vector<unsigned int> *__return_ptr a1@<X8>, std::vector<unsigned int>::size_type __n@<X2>, void *a3@<X0>, unsigned int a4@<W1>)
{
  v4 = __n;
  a1->__begin_ = 0;
  a1->__end_ = 0;
  a1->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(a1, __n);
  if (v4 + a4 > a4)
  {
    v8 = 40 * a4 + 32;
    do
    {
      v9 = *(*a3 + v8);
      std::vector<unsigned int>::push_back[abi:nn200100](a1, &v9);
      v8 += 40;
      --v4;
    }

    while (v4);
  }
}

uint64_t *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t TIInputManager::apply_case_changes(KB::Candidate &,std::vector<KB::Input> const&,unsigned int,TIShiftContext,BOOL,WTF::RefPtr<KB::DictionaryContainer> const&,__CFString *)const::$_0::operator()(int **a1, KB::String *a2, const KB::String *a3, const KB::String *a4)
{
  result = 0;
  v152[2] = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v7 = **a1;
  if (v7 <= 2)
  {
    switch(v7)
    {
      case 0:
        v45 = a1[5];
        v63 = *v45;
        v62 = *(v45 + 1);
        if (*v45 != v62)
        {
          v64 = v62 - (v63 + 4);
          if (v62 != v63 + 4)
          {
            memmove(*v45, v63 + 4, v62 - (v63 + 4));
          }

          result = 0;
          v50 = &v63[v64];
          goto LABEL_66;
        }

        return 0;
      case 1:
        v65 = a1[5];
        v67 = *v65;
        v66 = *(v65 + 1);
        if (*v65 != v66)
        {
          v68 = (*(a1[6] + 1) + 240 * *v67);
          if ((*(v68 + 104) & 0x20) == 0)
          {
            TIInputManager::capitalize_first_letter(a1[1], v68, 0);
            v65 = a1[5];
            v67 = *v65;
            v66 = *(v65 + 1);
          }

          v69 = v66 - (v67 + 4);
          if (v66 != (v67 + 4))
          {
            memmove(v67, v67 + 4, v66 - (v67 + 4));
          }

          result = 0;
          *(v65 + 1) = &v67[v69];
          return result;
        }

        v79 = *a1[8];
        if (v79)
        {
          v80 = a1[9];
          if (*v80)
          {
            v81 = *(v80 + 1);
            v82 = (v80 + 4);
            if (v81)
            {
              v83 = v81;
            }

            else
            {
              v83 = v82;
            }
          }

          else
          {
            v83 = "";
          }

          KB::Candidate::capitalized_string(&__p, a1[6]);
          v123 = v151;
          if (!v151)
          {
            v123 = v152;
          }

          if (__p)
          {
            v124 = v123;
          }

          else
          {
            v124 = "";
          }

          KB::append_format(v79, "input [%s] was considered to have capitalization type WordCapitalizationTypeAutoshift and candidate [%s] was not accepted; will be filtered out\n", v122, v83, v124);
          goto LABEL_141;
        }

        break;
      case 2:
        v8 = a1[5];
        if (*v8 != *(v8 + 1))
        {
          v9 = *(a1[6] + 1) + 240 * **v8;
          v10 = *(v9 + 4);
          if (!*(v9 + 4))
          {
            KB::String::compute_length(v9);
            v10 = *(v9 + 4);
          }

          LOBYTE(v145.var0.var0.var0) = 1;
          std::vector<BOOL>::vector(&__p, v10, &v145);
          if (v151)
          {
            v12 = 0;
            v13 = 32;
            if (v151 < 0x20)
            {
              v13 = v151;
            }

            v14 = vdupq_n_s64(v13 - 1);
            v15 = xmmword_22CC88A90;
            v16 = xmmword_22CC88AA0;
            v17 = xmmword_22CC889B0;
            v18 = vdupq_n_s64(1uLL);
            v19 = vdupq_n_s64(4uLL);
            v20 = (v13 + 3) & 0x7C;
            v21 = 0uLL;
            v22.i64[0] = 0x100000001;
            v22.i64[1] = 0x100000001;
            v23.i64[0] = 0x400000004;
            v23.i64[1] = 0x400000004;
            do
            {
              v24 = v21;
              v25 = vcgeq_u64(v14, v16);
              v26 = vmovn_s64(v25);
              *v21.i8 = vuzp1_s16(v26, *v14.i8);
              if (v21.i8[0])
              {
                v21.i64[0] = *(__p + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8));
              }

              v27 = v12 >> 6;
              if (vuzp1_s16(v26, *&v14).i8[2])
              {
                v21.i64[1] = *(__p + v27);
              }

              v28 = vcgeq_u64(v14, v15);
              v29 = vmovn_s64(v28);
              *v11.i8 = vuzp1_s16(*v14.i8, v29);
              if (v11.i8[4])
              {
                v11.i64[0] = *(__p + v27);
              }

              if (vuzp1_s16(*&v14, v29).i8[6])
              {
                v11.i64[1] = *(__p + v27);
              }

              v30 = vuzp1q_s32(vceqzq_s64(vandq_s8(v21, vshlq_u64(v18, v16))), vceqzq_s64(vandq_s8(v11, vshlq_u64(v18, v15))));
              v11 = vshlq_u32(v22, v17);
              v21 = vorrq_s8(vbicq_s8(v11, v30), v24);
              v12 += 4;
              v15 = vaddq_s64(v15, v19);
              v16 = vaddq_s64(v16, v19);
              v17 = vaddq_s32(v17, v23);
            }

            while (v20 != v12);
            v31 = vbslq_s8(vuzp1q_s32(v25, v28), v21, v24);
            *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
            v32 = v31.i32[0] | v31.i32[1];
          }

          else
          {
            v32 = 0;
          }

          *(v9 + 120) = v32;
          v111 = v32 == 1;
          v112 = *(v9 + 104) & 0xFFFFFFFE;
          if (v111)
          {
            ++v112;
          }

          *(v9 + 104) = v112;
          v113 = a1[5];
          v115 = *v113;
          v114 = *(v113 + 1);
          v116 = (*v113 + 4);
          v117 = v114 - v116;
          if (v114 != v116)
          {
            memmove(*v113, v116, v114 - v116);
          }

          *(v113 + 1) = &v115[v117];
          if (__p)
          {
            operator delete(__p);
          }

          return 0;
        }

        v74 = *a1[8];
        if (v74)
        {
          v75 = a1[9];
          if (*v75)
          {
            v76 = *(v75 + 1);
            v77 = (v75 + 4);
            if (v76)
            {
              v78 = v76;
            }

            else
            {
              v78 = v77;
            }
          }

          else
          {
            v78 = "";
          }

          KB::Candidate::capitalized_string(&__p, a1[6]);
          v120 = v151;
          if (!v151)
          {
            v120 = v152;
          }

          if (__p)
          {
            v121 = v120;
          }

          else
          {
            v121 = "";
          }

          KB::append_format(v74, "input [%s] was considered to have capitalization type WordCapitalizationTypeAutoshiftAllCharacters and candidate [%s] was not accepted; will be filtered out\n", v119, v78, v121);
LABEL_141:
          if (v151 && BYTE6(__p) == 1)
          {
            free(v151);
          }
        }

        break;
      default:
        return result;
    }

    return 1;
  }

  if ((v7 - 4) < 2)
  {
    goto LABEL_23;
  }

  if (v7 != 3)
  {
    return result;
  }

  v51 = *(v6 + 73);
  if ((!v51 || (*(*v51 + 40))(v51, a2, a3)) && *a1[2] == 1)
  {
    v52 = *a1[5];
    if (*a1[3] - *a1[4] == (*(a1[5] + 1) - v52) >> 2)
    {
      v53 = *(a1[6] + 1) + 240 * *v52;
      if ((*(v53 + 104) & 1) == 0)
      {
        v54 = *a1[7];
        if (!v54)
        {
LABEL_147:
          v125 = KB::String::first(a2);
          KB::String::String(&__p, v125);
          KB::CollatorWrapper::sortkey_for_string(&v145, (*(*(v6 + 33) + 8) + 72), v53);
          KB::CollatorWrapper::sortkey_for_string(&v144, (*(*(v6 + 33) + 8) + 72), &__p);
          goto LABEL_158;
        }

        KB::DictionaryContainer::lookup(&__p, v54, v53);
        v55 = __p;
        v56 = v151;
        v146[0] = MEMORY[0x277D85DD0];
        v146[1] = 0x40000000;
        v147 = ___ZZNK14TIInputManager18apply_case_changesERN2KB9CandidateERKNSt3__16vectorINS0_5InputENS3_9allocatorIS5_EEEEj14TIShiftContextbRKN3WTF6RefPtrINS0_19DictionaryContainerEEEP10__CFStringENK3__0clENS0_6StringE_block_invoke;
        v148 = &__block_descriptor_tmp_34;
        v149 = v53;
        while (1)
        {
          if (v55 == v56)
          {
            *&v145.var0.var0.var0 = &__p;
            std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v145);
            goto LABEL_147;
          }

          if ((v147)(v146, v55))
          {
            break;
          }

          v55 += 240;
        }

        *&v145.var0.var0.var0 = &__p;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v145);
      }

      v126 = *(v53 + 4);
      if (!*(v53 + 4))
      {
        KB::String::compute_length(v53);
        v126 = *(v53 + 4);
      }

      v127 = *(a2 + 2);
      if (!*(a2 + 2))
      {
        KB::String::compute_length(a2);
        v127 = *(a2 + 2);
      }

      v128 = v127 - 1;
      v129 = KB::String::first(a2);
      KB::String::String(&__p, v129);
      KB::CollatorWrapper::sortkey_for_string(&v145, (*(*(v6 + 33) + 8) + 72), v53);
      KB::CollatorWrapper::sortkey_for_string(&v144, (*(*(v6 + 33) + 8) + 72), &__p);
      if (v128 <= v126 && KB::ByteString::starts_with(&v145, &v144))
      {
        TIInputManager::capitalize_first_letter(v6, v53, 1);
        v130 = a1[5];
        v132 = *v130;
        v131 = *(v130 + 1);
        v133 = (*v130 + 4);
        v134 = v131 - v133;
        if (v131 != v133)
        {
          memmove(*v130, v133, v131 - v133);
        }

        v135 = 0;
        *(v130 + 1) = &v132[v134];
LABEL_159:
        if (v144.var0.var0.var0 >= 0xFu && v144.var0.var0.var1)
        {
          MEMORY[0x2318BE250](v144.var0.var0.var1, 0x1000C8077774924);
        }

        if (v145.var0.var0.var0 >= 0xFu && v145.var0.var0.var1)
        {
          MEMORY[0x2318BE250](v145.var0.var0.var1, 0x1000C8077774924);
        }

        if (v151 && BYTE6(__p) == 1)
        {
          free(v151);
        }

        if (!v135)
        {
          return 0;
        }

        goto LABEL_169;
      }

LABEL_158:
      v135 = 1;
      goto LABEL_159;
    }
  }

LABEL_169:
  v136 = *a1[8];
  if (v136)
  {
    v137 = a1[9];
    if (*v137)
    {
      v138 = *(v137 + 1);
      v139 = (v137 + 4);
      if (v138)
      {
        v140 = v138;
      }

      else
      {
        v140 = v139;
      }
    }

    else
    {
      v140 = "";
    }

    KB::Candidate::capitalized_string(&__p, a1[6]);
    v142 = v151;
    if (!v151)
    {
      v142 = v152;
    }

    if (__p)
    {
      v143 = v142;
    }

    else
    {
      v143 = "";
    }

    KB::append_format(v136, "input [%s] was considered to have capitalization type WordCapitalizationTypeExplicitShift and candidate [%s] was not accepted; falling through to WordCapitalizationTypeAllCaps/WordCapitalizationTypeMixedCase\n", v141, v140, v143);
    if (v151 && BYTE6(__p) == 1)
    {
      free(v151);
    }
  }

LABEL_23:
  *a1[10] = 0;
  v34 = *a1[5];
  if (*(a1[5] + 1) == v34)
  {
    goto LABEL_42;
  }

  v35 = 0;
  while (1)
  {
    v36 = *(v34 + 4 * v35);
    v37 = a1[6];
    v38 = *(v37 + 1) + 240 * v36;
    if (**a1 == 5)
    {
      break;
    }

    if (*v37 - 1 == v36)
    {
      KB::CollatorWrapper::sortkey_for_string(&__p, (*(*(v6 + 33) + 8) + 72), v38);
      KB::CollatorWrapper::sortkey_for_string(&v145, (*(*(v6 + 33) + 8) + 72), a2);
      v39 = KB::ByteString::starts_with(&__p, &v145);
      if (v145.var0.var0.var0 >= 0xFu && v145.var0.var0.var1)
      {
        MEMORY[0x2318BE250](v145.var0.var0.var1, 0x1000C8077774924);
      }

      if (__p >= 0xFu && v151)
      {
        MEMORY[0x2318BE250](v151, 0x1000C8077774924);
      }

      if (!v39)
      {
        goto LABEL_41;
      }
    }

    else if (KB::CollatorWrapper::sortkey_compare_strings((*(*(v6 + 33) + 8) + 72), v38, a2, a4))
    {
      goto LABEL_41;
    }

    __p = &unk_283FDCF10;
    v151 = 1;
    if (KB::InputSegmentFilter::string_preserves_surface_form_features(&__p, v38, a2, 0, 0))
    {
      v70 = **a1;
      if (v70 != 4)
      {
        goto LABEL_73;
      }

      v41 = KB::count_word_medial_punctuation(v38, v40);
      if (v41 <= KB::count_word_medial_punctuation(a2, v42))
      {
        goto LABEL_96;
      }
    }

LABEL_41:
    v43 = a1[10];
    v35 = (*v43 + 1);
    *v43 = v35;
    v34 = *a1[5];
    if (v35 >= (*(a1[5] + 1) - v34) >> 2)
    {
      goto LABEL_42;
    }
  }

  if (!(*(*v6 + 40))(v6))
  {
    goto LABEL_41;
  }

  v70 = **a1;
LABEL_73:
  if (v70 == 3)
  {
    v71 = v6;
    v72 = v38;
    v73 = 1;
    goto LABEL_121;
  }

  if (v70 == 4)
  {
LABEL_96:
    v87 = *(v38 + 4);
    if (!*(v38 + 4))
    {
      KB::String::compute_length(v38);
      v87 = *(v38 + 4);
    }

    LOBYTE(v145.var0.var0.var0) = 1;
    std::vector<BOOL>::vector(&__p, v87, &v145);
    v89 = __p;
    v90 = v151;
    if (v151)
    {
      v91 = 0;
      if (v151 >= 0x20)
      {
        v90 = 32;
      }

      v92 = vdupq_n_s64(v90 - 1);
      v93 = xmmword_22CC88A90;
      v94 = xmmword_22CC88AA0;
      v95 = vdupq_n_s64(1uLL);
      v96 = vdupq_n_s64(4uLL);
      v97 = xmmword_22CC889B0;
      v98 = (v90 + 3) & 0x7C;
      v99 = 0uLL;
      v100.i64[0] = 0x100000001;
      v100.i64[1] = 0x100000001;
      v101.i64[0] = 0x400000004;
      v101.i64[1] = 0x400000004;
      do
      {
        v102 = v99;
        v103 = vcgeq_u64(v92, v94);
        v104 = vmovn_s64(v103);
        *v99.i8 = vuzp1_s16(v104, *v92.i8);
        if (v99.i8[0])
        {
          v99.i64[0] = *(__p + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8));
        }

        v105 = v91 >> 6;
        if (vuzp1_s16(v104, *&v92).i8[2])
        {
          v99.i64[1] = *(__p + v105);
        }

        v106 = vcgeq_u64(v92, v93);
        v107 = vmovn_s64(v106);
        *v88.i8 = vuzp1_s16(*v92.i8, v107);
        if (v88.i8[4])
        {
          v88.i64[0] = *(__p + v105);
        }

        if (vuzp1_s16(*&v92, v107).i8[6])
        {
          v88.i64[1] = *(__p + v105);
        }

        v108 = vuzp1q_s32(vceqzq_s64(vandq_s8(v99, vshlq_u64(v95, v94))), vceqzq_s64(vandq_s8(v88, vshlq_u64(v95, v93))));
        v88 = vshlq_u32(v100, v97);
        v99 = vorrq_s8(vbicq_s8(v88, v108), v102);
        v91 += 4;
        v93 = vaddq_s64(v93, v96);
        v94 = vaddq_s64(v94, v96);
        v97 = vaddq_s32(v97, v101);
      }

      while (v98 != v91);
      v109 = vbslq_s8(vuzp1q_s32(v103, v106), v99, v102);
      *v109.i8 = vorr_s8(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
      v110 = v109.i32[0] | v109.i32[1];
    }

    else
    {
      v110 = 0;
    }

    *(v38 + 120) = v110;
    v111 = v110 == 1;
    v118 = *(v38 + 104) & 0xFFFFFFFE;
    if (v111)
    {
      ++v118;
    }

    *(v38 + 104) = v118;
    if (v89)
    {
      operator delete(v89);
    }
  }

  else if (v70 == 5 && (**a1[11] & 1) != 0 && (*(v38 + 104) & 0x20) == 0)
  {
    v71 = v6;
    v72 = v38;
    v73 = 0;
LABEL_121:
    TIInputManager::capitalize_first_letter(v71, v72, v73);
  }

LABEL_42:
  v44 = *a1[10];
  v45 = a1[5];
  v47 = *v45;
  v46 = *(v45 + 1);
  if (v44 >= &v46[-*v45] >> 2)
  {
    v57 = *a1[8];
    if (v57)
    {
      v58 = a1[9];
      if (*v58)
      {
        v59 = *(v58 + 1);
        v60 = (v58 + 4);
        if (v59)
        {
          v61 = v59;
        }

        else
        {
          v61 = v60;
        }
      }

      else
      {
        v61 = "";
      }

      KB::Candidate::capitalized_string(&__p, a1[6]);
      v85 = v151;
      if (!v151)
      {
        v85 = v152;
      }

      if (__p)
      {
        v86 = v85;
      }

      else
      {
        v86 = "";
      }

      KB::append_format(v57, "input [%s] was considered to have capitalization type WordCapitalizationTypeAllCaps/WordCapitalizationTypeMixedCase and candidate [%s] was not accepted; will be filtered out\n", v84, v61, v86);
      goto LABEL_141;
    }

    return 1;
  }

  v48 = &v47[4 * v44];
  v49 = v46 - (v48 + 4);
  if (v46 != v48 + 4)
  {
    memmove(*v45, v48 + 4, v46 - (v48 + 4));
  }

  result = 0;
  v50 = &v47[v49];
LABEL_66:
  *(v45 + 1) = v50;
  return result;
}

void TIInputManager::apply_shift_context_to_prediction(TIInputManager *a1, int a2, KB::Word *a3)
{
  if ((a2 - 2) < 2)
  {
    if ((*(a3 + 104) & 0x20) != 0)
    {
      return;
    }
  }

  else
  {
    if ((a2 - 4) < 2)
    {
      v4 = *(a3 + 2);
      if (!*(a3 + 2))
      {
        KB::String::compute_length(a3);
        v4 = *(a3 + 2);
      }

      v29 = 1;
      std::vector<BOOL>::vector(&v30, v4, &v29);
      v6 = v30;
      v7 = v31;
      if (v31)
      {
        v8 = 0;
        if (v31 >= 0x20)
        {
          v7 = 32;
        }

        v9 = vdupq_n_s64(v7 - 1);
        v10 = xmmword_22CC88A90;
        v11 = xmmword_22CC88AA0;
        v12 = vdupq_n_s64(1uLL);
        v13 = vdupq_n_s64(4uLL);
        v14 = xmmword_22CC889B0;
        v15 = (v7 + 3) & 0x7C;
        v16 = 0uLL;
        v17.i64[0] = 0x100000001;
        v17.i64[1] = 0x100000001;
        v18.i64[0] = 0x400000004;
        v18.i64[1] = 0x400000004;
        do
        {
          v19 = v16;
          v20 = vcgeq_u64(v9, v11);
          v21 = vmovn_s64(v20);
          *v16.i8 = vuzp1_s16(v21, *v9.i8);
          if (v16.i8[0])
          {
            v16.i64[0] = *&v30[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8];
          }

          if (vuzp1_s16(v21, *&v9).i8[2])
          {
            v16.i64[1] = *&v30[8 * (v8 >> 6)];
          }

          v22 = vcgeq_u64(v9, v10);
          v23 = vmovn_s64(v22);
          *v5.i8 = vuzp1_s16(*v9.i8, v23);
          if (v5.i8[4])
          {
            v5.i64[0] = *&v30[8 * (v8 >> 6)];
          }

          if (vuzp1_s16(*&v9, v23).i8[6])
          {
            v5.i64[1] = *&v30[8 * (v8 >> 6)];
          }

          v24 = vuzp1q_s32(vceqzq_s64(vandq_s8(v16, vshlq_u64(v12, v11))), vceqzq_s64(vandq_s8(v5, vshlq_u64(v12, v10))));
          v5 = vshlq_u32(v17, v14);
          v16 = vorrq_s8(vbicq_s8(v5, v24), v19);
          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v14 = vaddq_s32(v14, v18);
        }

        while (v15 != v8);
        v25 = vbslq_s8(vuzp1q_s32(v20, v22), v16, v19);
        *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
        v26 = v25.i32[0] | v25.i32[1];
      }

      else
      {
        v26 = 0;
      }

      *(a3 + 30) = v26;
      v27 = v26 == 1;
      v28 = *(a3 + 26) & 0xFFFFFFFE;
      if (v27)
      {
        ++v28;
      }

      *(a3 + 26) = v28;
      if (v6)
      {
        operator delete(v6);
      }

      return;
    }

    if (a2 != 1)
    {
      return;
    }
  }

  TIInputManager::capitalize_first_letter(a1, a3, 0);
}

uint64_t TIInputManager::capitalize_first_letter(TIInputManager *this, KB::Word *a2, uint64_t a3)
{
  v3 = *(this + 73);
  if (v3)
  {
    return (*(*v3 + 72))(v3, a2, a3);
  }

  else
  {
    return KB::Word::capitalize_first_letter(a2, a3);
  }
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, unint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(((a2 - 1) >> 6) + 1);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

BOOL ___ZN14TIInputManager34apply_case_insensitive_constraintsERN2KB19CandidateCollectionENS0_10LookupTypeEP10__CFString_block_invoke(void *a1, KB::Candidate *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = TIInputManager::matches_case_insensitive_constraints(a1[4], a2, (a1 + 5), (a1 + 9), (a1 + 13), *(a1 + 36));
  if (!v4)
  {
    v5 = a1[17];
    if (v5)
    {
      KB::Candidate::capitalized_string(&v15, a2);
      v6 = v16;
      if (!v16)
      {
        v6 = v17;
      }

      if (v15)
      {
        v7 = v6;
      }

      else
      {
        v7 = "";
      }

      KB::Candidate::token_ids_as_string(&v12, a2);
      v9 = v13;
      if (!v13)
      {
        v9 = &v14;
      }

      if (v12)
      {
        v10 = v9;
      }

      else
      {
        v10 = "";
      }

      KB::append_format(v5, "[%s] {%s} removed by %s\n", v8, v7, v10, "apply_case_insensitive_constraints");
      if (v13 && BYTE6(v12) == 1)
      {
        free(v13);
      }

      if (v16 && BYTE6(v15) == 1)
      {
        free(v16);
      }
    }
  }

  return !v4;
}

void __destroy_helper_block_8_40c17_ZTSKN2KB6StringE72c17_ZTSKN2KB6StringE104c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && *(a1 + 110) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 80);
  if (v3 && *(a1 + 78) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 48);
  if (v4 && *(a1 + 46) == 1)
  {

    free(v4);
  }
}

KB::String *__copy_helper_block_8_40c17_ZTSKN2KB6StringE72c17_ZTSKN2KB6StringE104c17_ZTSKN2KB6StringE(uint64_t a1, uint64_t a2)
{
  KB::String::String((a1 + 40), (a2 + 40));
  KB::String::String((a1 + 72), (a2 + 72));

  return KB::String::String((a1 + 104), (a2 + 104));
}

BOOL TIInputManager::matches_case_insensitive_constraints(uint64_t a1, uint64_t a2, _LXLexicon *a3, _LXLexicon *a4, KB::String *this, int a6)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a2 + 888))
  {
    if (a6)
    {
      goto LABEL_34;
    }
  }

  else
  {
    KB::Candidate::compute_string(a2);
    if (a6)
    {
      goto LABEL_34;
    }
  }

  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  if (*(a2 + 962) != 1 || *a3 == 0)
  {
    if (*a4)
    {
      KB::CollatorWrapper::sortkey_for_string(&v37, (*(*(a1 + 264) + 8) + 72), (a2 + 888));
      KB::CollatorWrapper::sortkey_for_string(&v36, (*(*(a1 + 264) + 8) + 72), a4);
      v13 = KB::ByteString::starts_with(&v37, &v36);
      if (v36.var0.var0.var0 >= 0xFu && v36.var0.var0.var1)
      {
        MEMORY[0x2318BE250](v36.var0.var0.var1, 0x1000C8077774924);
      }

      if (v37 >= 0xFu && v38)
      {
        MEMORY[0x2318BE250](v38, 0x1000C8077774924);
      }

      if (!v13)
      {
        return 0;
      }
    }
  }

  else
  {
    KB::CollatorWrapper::sortkey_for_string(&v37, (*(*(a1 + 264) + 8) + 72), (a2 + 888));
    KB::CollatorWrapper::sortkey_for_string(&v36, (*(*(a1 + 264) + 8) + 72), a3);
    v14 = KB::ByteString::starts_with(&v37, &v36);
    v15 = v14;
    if (v36.var0.var0.var0 >= 0xFu && v36.var0.var0.var1)
    {
      MEMORY[0x2318BE250](v36.var0.var0.var1, 0x1000C8077774924);
    }

    if (v37 >= 0xFu && v38)
    {
      MEMORY[0x2318BE250](v38, 0x1000C8077774924);
    }

    if (!v15)
    {
      return 0;
    }
  }

  if (*(a1 + 728) == 1)
  {
    v16 = *(a2 + 892);
    if (!*(a2 + 892))
    {
      KB::String::compute_length((a2 + 888));
      v16 = *(a2 + 892);
    }

    v17 = *(this + 2);
    if (!*(this + 2))
    {
      KB::String::compute_length(this);
      v17 = *(this + 2);
    }

    if (v16 > v17)
    {
      return 0;
    }
  }

LABEL_34:
  if (*a2)
  {
    v18 = 240 * *a2 - 240;
    v19 = (*(a2 + 8) + 224);
    do
    {
      v21 = *v19;
      v19 += 30;
      v20 = v21;
      if (v21)
      {
        v22 = 1;
      }

      else
      {
        v22 = v18 == 0;
      }

      v18 -= 240;
    }

    while (!v22);
    if (v20)
    {
      return 1;
    }
  }

  if (*(a1 + 32))
  {
    KB::String::String(&v37, (a1 + 32));
    if (KB::String::contains(&v37, 0x2019u))
    {
      v32 = 0;
      v33 = 0;
      v34 = "'";
      v31 = 1048577;
      v35 = 0;
      KB::String::replace_char(&v36, &v37, &v31, 8217);
      KB::String::operator=(&v37, &v36);
      if (v36.var0.var0.var1 && v36.var0.var1.var1[4] == 1)
      {
        free(v36.var0.var0.var1);
      }

      if (v34 && v33 == 1)
      {
        free(v34);
      }
    }

    v25 = KB::String::equal((a2 + 888), &v37, 0, v23, v24);
    if (v38 && BYTE6(v37) == 1)
    {
      free(v38);
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = *(*(a1 + 264) + 24);
  if (!KB::String::equal((a2 + 888), (v26 + 56), 0, a4, this))
  {
    return 1;
  }

  v27 = *this;
  if (v27 > *(v26 + 56))
  {
    return 0;
  }

  if (*(v26 + 64))
  {
    v29 = *(v26 + 64);
  }

  else
  {
    v29 = (v26 + 72);
  }

  if (*(this + 1))
  {
    v30 = *(this + 1);
  }

  else
  {
    v30 = this + 16;
  }

  return strncasecmp(v29, v30, v27) == 0;
}

BOOL ___ZN14TIInputManager29inject_supplemental_candidateEN2KB10LookupTypeERNS0_19CandidateCollectionE_block_invoke(uint64_t a1, _LXLexicon *a2, const KB::String *a3, const KB::String *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (!KB::CollatorWrapper::sortkey_compare_strings((*(*(v6 + 264) + 8) + 72), a2, a3, a4))
  {
    return 1;
  }

  if (!(*(**(v6 + 272) + 16))(*(v6 + 272)) || !(*(**(v6 + 272) + 64))(*(v6 + 272)))
  {
    return 0;
  }

  KB::String::String(v17, "'s");
  v7 = *(*(v6 + 264) + 8);
  KB::String::String(v14, a2);
  KB::String::append(v14, v17);
  v9 = KB::CollatorWrapper::sortkey_compare_strings((v7 + 72), v14, a3, v8);
  if (v16 && v15 == 1)
  {
    free(v16);
  }

  if (v9)
  {
    v10 = *(*(v6 + 264) + 8);
    KB::String::String(v14, a3);
    KB::String::append(v14, v17);
    v12 = KB::CollatorWrapper::sortkey_compare_strings((v10 + 72), a2, v14, v11) == 0;
    if (v16 && v15 == 1)
    {
      free(v16);
    }
  }

  else
  {
    v12 = 1;
  }

  if (v18 && v17[6] == 1)
  {
    free(v18);
  }

  return v12;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = expf(*(a2 + 744));
  v9 = expf(*(a1 + 744));
  v10 = expf(*(a3 + 744));
  if (v8 <= v9)
  {
    if (v10 > v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      v14 = expf(*(a2 + 744));
      if (v14 > expf(*(a1 + 744)))
      {
        v11 = a1;
        v13 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v11 = a1;
    if (v10 > v8)
    {
LABEL_5:
      v13 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v11, v13);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
    v12 = expf(*(a3 + 744));
    if (v12 > expf(*(a2 + 744)))
    {
      v11 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v15 = expf(*(a4 + 744));
  if (v15 > expf(*(a3 + 744)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
    v16 = expf(*(a3 + 744));
    if (v16 > expf(*(a2 + 744)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      v17 = expf(*(a2 + 744));
      if (v17 > expf(*(a1 + 744)))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(a1, a2, a3, a4);
  v10 = expf(*(a5 + 744));
  if (v10 > expf(*(a4 + 744)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a4, a5);
    v11 = expf(*(a4 + 744));
    if (v11 > expf(*(a3 + 744)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
      v12 = expf(*(a3 + 744));
      if (v12 > expf(*(a2 + 744)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
        v13 = expf(*(a2 + 744));
        if (v13 > expf(*(a1 + 744)))
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
        }
      }
    }
  }
}

void std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,KB::Candidate *>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 1001)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = a1 + 1000 * v8;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(a1, v7, v10);
        v10 -= 1000;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        v12 = expf(*(v11 + 186));
        if (v12 > expf(*(a1 + 744)))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v11, a1);
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(a1, v7, a1);
        }

        v11 += 125;
      }

      while (v11 != a3);
    }

    if (v6 >= 1001)
    {
      v13 = 0x1CAC083126E978D5 * (v6 >> 3);
      do
      {
        KB::Candidate::Candidate(v28, a1);
        v14 = 0;
        v15 = a1;
        do
        {
          v16 = v15;
          v17 = v15 + 1000 * v14;
          v15 = v17 + 1000;
          v18 = 2 * v14;
          v14 = (2 * v14) | 1;
          v19 = v18 + 2;
          if (v18 + 2 < v13)
          {
            v20 = expf(*(v17 + 1744));
            if (v20 > expf(*(v17 + 2744)))
            {
              v15 = v17 + 2000;
              v14 = v19;
            }
          }

          KB::Candidate::operator=(v16, v15);
        }

        while (v14 <= (v13 - 2) / 2);
        v4 -= 125;
        if (v15 == v4)
        {
          KB::Candidate::operator=(v15, v28);
        }

        else
        {
          KB::Candidate::operator=(v15, v4);
          KB::Candidate::operator=(v4, v28);
          v21 = v15 - a1 + 1000;
          if (v21 >= 1001)
          {
            v22 = (0x1CAC083126E978D5 * (v21 >> 3) - 2) >> 1;
            v23 = a1 + 1000 * v22;
            v24 = expf(*(v23 + 744));
            if (v24 > expf(*(v15 + 744)))
            {
              KB::Candidate::Candidate(v29, v15);
              do
              {
                v25 = v23;
                KB::Candidate::operator=(v15, v23);
                if (!v22)
                {
                  break;
                }

                v22 = (v22 - 1) >> 1;
                v23 = a1 + 1000 * v22;
                v26 = expf(*(v23 + 744));
                v15 = v25;
              }

              while (v26 > expf(v30));
              KB::Candidate::operator=(v25, v29);
              KB::Candidate::~Candidate(v29);
            }
          }
        }

        KB::Candidate::~Candidate(v28);
      }

      while (v13-- > 2);
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = expf(*(a1 + 1744));
        v9 = expf(*(a1 + 744));
        v10 = expf(*(a2 - 256));
        if (v8 <= v9)
        {
          if (v10 <= v8)
          {
            return 1;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((a1 + 1000), (a2 - 1000));
          v16 = expf(*(a1 + 1744));
          if (v16 <= expf(*(a1 + 744)))
          {
            return 1;
          }

          v6 = (a1 + 1000);
          goto LABEL_6;
        }

        if (v10 <= v8)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, (a1 + 1000));
          v19 = expf(*(a2 - 256));
          if (v19 <= expf(*(a1 + 1744)))
          {
            return 1;
          }

          v7 = (a1 + 1000);
        }

        else
        {
          v7 = a1;
        }

        v6 = (a2 - 1000);
        goto LABEL_27;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(a1, a1 + 1000, a1 + 2000, a2 - 1000);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,0>(a1, a1 + 1000, a1 + 2000, a1 + 3000, a2 - 1000);
        return 1;
    }

    goto LABEL_14;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_14:
    v11 = a1 + 2000;
    v12 = expf(*(a1 + 1744));
    v13 = expf(*(a1 + 744));
    v14 = expf(*(a1 + 2744));
    if (v12 <= v13)
    {
      if (v14 <= v12 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((a1 + 1000), (a1 + 2000)), v17 = expf(*(a1 + 1744)), v17 <= expf(*(a1 + 744))))
      {
LABEL_32:
        v21 = a1 + 3000;
        if (a1 + 3000 != a2)
        {
          v22 = 0;
          v23 = 0;
          while (1)
          {
            v24 = expf(*(v21 + 744));
            if (v24 > expf(*(v11 + 744)))
            {
              KB::Candidate::Candidate(v31, v21);
              v25 = v22;
              while (1)
              {
                KB::Candidate::operator=((a1 + v25 + 3000), (a1 + v25 + 2000));
                if (v25 == -2000)
                {
                  break;
                }

                v26 = expf(v32);
                v27 = expf(*(a1 + v25 + 1744));
                v25 -= 1000;
                if (v26 <= v27)
                {
                  v28 = (a1 + v25 + 3000);
                  goto LABEL_40;
                }
              }

              v28 = a1;
LABEL_40:
              KB::Candidate::operator=(v28, v31);
              if (++v23 == 8)
              {
                v29 = v21 + 1000 == a2;
                KB::Candidate::~Candidate(v31);
                return v29;
              }

              KB::Candidate::~Candidate(v31);
            }

            v11 = v21;
            v22 += 1000;
            v21 += 1000;
            if (v21 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v18 = (a1 + 1000);
      v15 = a1;
    }

    else
    {
      if (v14 <= v12)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, (a1 + 1000));
        v20 = expf(*(a1 + 2744));
        if (v20 <= expf(*(a1 + 1744)))
        {
          goto LABEL_32;
        }

        v15 = (a1 + 1000);
      }

      else
      {
        v15 = a1;
      }

      v18 = (a1 + 2000);
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v15, v18);
    goto LABEL_32;
  }

  v5 = expf(*(a2 - 256));
  if (v5 > expf(*(a1 + 744)))
  {
    v6 = (a2 - 1000);
LABEL_6:
    v7 = a1;
LABEL_27:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, v6);
  }

  return 1;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x1CAC083126E978D5 * ((a3 - a1) >> 3))
    {
      v8 = (0x395810624DD2F1AALL * ((a3 - a1) >> 3)) | 1;
      v9 = a1 + 1000 * v8;
      v10 = 0x395810624DD2F1AALL * ((a3 - a1) >> 3) + 2;
      if (v10 < a2)
      {
        v11 = expf(*(v9 + 744));
        if (v11 > expf(*(v9 + 1744)))
        {
          v9 += 1000;
          v8 = v10;
        }
      }

      v12 = expf(*(v9 + 744));
      if (v12 <= expf(*(v4 + 744)))
      {
        KB::Candidate::Candidate(v18, v4);
        do
        {
          v13 = v9;
          KB::Candidate::operator=(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v14 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = a1 + 1000 * v8;
          v15 = v14 + 2;
          if (v14 + 2 < a2)
          {
            v16 = expf(*(v9 + 744));
            if (v16 > expf(*(v9 + 1744)))
            {
              v9 += 1000;
              v8 = v15;
            }
          }

          v17 = expf(*(v9 + 744));
          v4 = v13;
        }

        while (v17 <= expf(v19));
        KB::Candidate::operator=(v13, v18);
        KB::Candidate::~Candidate(v18);
      }
    }
  }
}

void TIInputManager::autocorrections(TIInputManager *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(this + 144))
  {
    if (*(this + 728) != 1)
    {
      v6 = (this + 32);
      if (!*(this + 16))
      {
        goto LABEL_13;
      }

      TIInputManager::legacy_input_stem(&v10, this);
      if (v6 == &v10)
      {
        if (v11 && BYTE6(v10) == 1)
        {
          free(v11);
        }

        goto LABEL_6;
      }

      v9 = KB::String::equal((this + 32), &v10, 1, v7, v8);
      if (v11 && BYTE6(v10) == 1)
      {
        free(v11);
      }

      if (!v9)
      {
LABEL_13:
        TIInputManager::lookup(this, 0, 1, a2, a3);
        return;
      }
    }

LABEL_6:
    *(a3 + 100) = 0x10000000000000;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 108) = 0;
    *(a3 + 110) = 0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
    return;
  }

  TIInputManager::lookup(this, 0, 1, a2, a3);
}

void TIInputManager::~TIInputManager(TIInputManager *this)
{
  TIInputManager::~TIInputManager(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD9060;
  v2 = *(this + 75);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 93);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(*(this + 89));
  LXVulgarWordUsageDatabasePerformMaintenance();
  v21 = (this + 648);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v21);
  v4 = *(this + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 80) = 0;
  v5 = *(this + 79);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 79) = 0;
  v6 = *(this + 77);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 74);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v21 = (this + 552);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v21);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 544));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 536));
  v8 = *(this + 61);
  if (v8)
  {
    *(this + 62) = v8;
    operator delete(v8);
  }

  v9 = *(this + 60);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 56);
  if (v10 && *(this + 446) == 1)
  {
    free(v10);
  }

  std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(*(this + 47));
  v11 = *(this + 45);
  if (v11)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v11);
  }

  v12 = *(this + 42);
  if (v12 && *(this + 334) == 1)
  {
    free(v12);
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::~Vector(this + 37);
  v13 = *(this + 35);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(this + 33);
  if (v14)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v14);
  }

  v15 = *(this + 30);
  if (v15 && *(this + 238) == 1)
  {
    free(v15);
  }

  v16 = *(this + 28);
  *(this + 28) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::~__hash_table(this + 22);
  v17 = *(this + 17);
  if (v17)
  {
    CFRelease(v17);
  }

  *(this + 17) = 0;
  v18 = *(this + 14);
  if (v18 && *(this + 110) == 1)
  {
    free(v18);
  }

  v19 = *(this + 9);
  if (v19 && *(this + 70) == 1)
  {
    free(v19);
  }

  v20 = *(this + 5);
  if (v20 && *(this + 38) == 1)
  {
    free(v20);
  }

  v21 = (this + 8);
  std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&v21);
}

void std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(*a1);
    std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,void *>>>::destroy[abi:nn200100]<std::pair<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(*a1);
    std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(a1[1]);
    v2 = a1[11];
    if (v2)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v2);
    }

    v3 = a1[8];
    if (v3)
    {
      a1[9] = v3;
      operator delete(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      a1[6] = v4;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void **std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 4);
        if (v6 && *(v4 - 34) == 1)
        {
          free(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[7];
      if (v3 && *(v2 + 54) == 1)
      {
        free(v3);
      }

      v4 = v2[3];
      if (v4)
      {
        if (*(v2 + 22) == 1)
        {
          free(v4);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

uint64_t TIInputManager::LockedInput::locked_length(TIInputManager::LockedInput *this)
{
  v1 = *(this + 1);
  if (*this <= v1)
  {
    return v1;
  }

  else
  {
    return *this;
  }
}

unsigned int *TIInputManager::LockedInput::set_shadow_locked_length(unsigned int *this, unsigned int a2)
{
  v2 = *this;
  if (*this <= a2)
  {
    v2 = a2;
  }

  *this = v2;
  return this;
}

unsigned int *TIInputManager::LockedInput::set_accepted_locked_length(unsigned int *this, unsigned int a2, unsigned int a3)
{
  v3 = *this;
  v4 = this[1];
  if (*this <= a2)
  {
    v3 = a2;
  }

  if (v4 >= a3)
  {
    v4 = a3;
  }

  *this = v3;
  this[1] = v4;
  return this;
}

unsigned int *TIInputManager::LockedInput::set_deletion_locked_length(unsigned int *this, unsigned int a2)
{
  this[1] = a2;
  if (*this > a2)
  {
    *this = a2;
  }

  return this;
}

uint32x2_t TIInputManager::LockedInput::drop_input_prefix_of_length(uint32x2_t *this, unsigned int a2)
{
  result = vqsub_u32(*this, vdup_n_s32(a2));
  *this = result;
  return result;
}

void TIInputManager::TIInputManager(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_283FD9060;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 34) = 16;
  *(a1 + 38) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0x100000;
  *(a1 + 68) = 0;
  *(a1 + 70) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x100000;
  *(a1 + 108) = 0;
  *(a1 + 110) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = xmmword_22CC88AB0;
  *(a1 + 160) = 1028443341;
  *(a1 + 164) = 0x300000000;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 234) = 16;
  *(a1 + 238) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v3 = 0;
  *__p = 0u;
  operator new();
}

void TIInputManager::load_dictionaries(uint64_t a1, const __CFString *a2, int a3, uint64_t a4, int a5)
{
  v6 = *(*(a1 + 264) + 24);
  v7 = *(v6 + 32);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if ((*(a1 + 738) & 1) == 0)
  {
    if (TI_IS_INTERNAL_INSTALL::once_token != -1)
    {
      dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
    }

    if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1)
    {
      if (TI_IS_INTERNAL_INSTALL::is_internal_install)
      {
        v28 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorDecayRate", a2, -0.347, -10.0, -0.001);
        v25 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorPathWeight", v8, 5.0, 0.01, 100.0);
        v23 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorTotalPseudoWeight", v9, 5.0, 0.01, 100.0);
        v11 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorMinThreshold", v10, 1.0, 0.01, 100.0);
        v24 = v11;
        *&v12 = __PAIR64__(LODWORD(v25), LODWORD(v28));
        *(&v12 + 1) = __PAIR64__(LODWORD(v11), LODWORD(v23));
        v29 = v12;
        v26 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorNeutralThreshold", v13, 2.0, 0.01, 100.0);
        v15 = KB::ContinuousPathDetector::Parameters::user_value_for_key(@"CPDetectorMaxThreshold", v14, 5.0, 0.01, 100.0);
        v16 = __PAIR64__(LODWORD(v15), LODWORD(v26));
        if (v26 < v24 || v15 < v26)
        {
          v17 = v26 * 0.5;
          if ((v26 * 0.5) >= v24)
          {
            v17 = v24;
          }

          v18 = v29;
          *(&v18 + 3) = v17;
          v29 = v18;
          if (v15 < (v26 + v26))
          {
            v15 = v26 + v26;
          }

          *(&v16 + 1) = v15;
        }

        v27 = v16;
      }

      else
      {
        v29 = xmmword_22CC88AC0;
        v27 = 0x40A0000040000000;
      }

      v30 = 0;
      v31 = 0;
      v32 = v29;
      *&v33 = v27;
      *(&v33 + 1) = CFAbsoluteTimeGetCurrent();
      v34 = 0;
      v19 = a1 + 376;
      std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(*(a1 + 376));
      v20 = v30;
      *(a1 + 368) = &v30;
      *(a1 + 376) = v20;
      v21 = v31;
      *(a1 + 384) = v31;
      if (v21)
      {
        v20[2] = v19;
        v30 = 0;
        v31 = 0;
        v20 = 0;
      }

      else
      {
        *(a1 + 368) = v19;
      }

      v22 = v33;
      *(a1 + 392) = v32;
      *(a1 + 408) = v22;
      *(a1 + 424) = v34;
      std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::destroy(v20);
    }
  }

  operator new();
}

void TIInputManager::set_locale_identifier(TIInputManager *this, const KB::String *a2)
{
  KB::String::operator=((this + 104), a2);
  KB::cf_string_impl<KB::String>(localeIdentifier, a2);
  v4 = localeIdentifier[0];
  v5 = CFLocaleCreate(0, localeIdentifier[0]);
  v6 = *(this + 17);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 17) = v5;
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(this + 28))
  {
    v7 = *(a2 + 1);
    if (!v7)
    {
      v7 = a2 + 16;
    }

    if (*a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(localeIdentifier, v8);
    (*(**(this + 28) + 448))();
    if (v10 < 0)
    {
      operator delete(localeIdentifier[0]);
    }
  }
}

double TIInputManager::set_filter_specification_overrides(TIInputManager *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(this + 93);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 93) = cf;
  std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>>>::destroy(*(this + 89));
  *(this + 88) = this + 712;
  result = 0.0;
  *(this + 712) = 0u;
  *(this + 43) = 0u;
  return result;
}

uint64_t TIInputManager::legacy_input_start_index(TIInputManager *this)
{
  v2 = *(this + 24);
  result = v2 + 1;
  v4 = 40 * v2 - 8;
  do
  {
    if (!--result)
    {
      break;
    }

    v5 = *(*(this + 1) + v4);
    v4 -= 40;
  }

  while ((v5 & 0x40) == 0);
  return result;
}

uint64_t TIInputManager::legacy_input_end_index(TIInputManager *this)
{
  result = *(this + 24);
  v3 = *(this + 1);
  v4 = -858993459 * ((*(this + 2) - v3) >> 3);
  v5 = v4 - result;
  if (v4 > result)
  {
    v6 = (v3 + 40 * result + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 40;
      if ((v7 & 0x40) != 0)
      {
        break;
      }

      ++result;
      if (!--v5)
      {
        return v4;
      }
    }
  }

  return result;
}

void TIInputManager::add_input(TIInputManager *this, const KB::String *a2, unsigned int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = TIInputManager::favonius_layout(this);
  v7 = *(*v6 + 200);
  if (((*(*v6 + 16) - *(*v6 + 8)) >> 3) >> 1 < v7 || v7 > 0xB)
  {
    v9 = a3 | 0x20;
  }

  else
  {
    v9 = a3;
  }

  KB::String::String(v34, a2);
  v36 = v9;
  v10 = *(this + 1);
  v11 = *(this + 24);
  v12 = (v10 + 40 * v11);
  v14 = *(this + 2);
  v13 = *(this + 3);
  if (v14 >= v13)
  {
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v10) >> 3) + 1;
    if (v21 > 0x666666666666666)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v22 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v10) >> 3);
    v23 = 2 * v22;
    if (2 * v22 <= v21)
    {
      v23 = v21;
    }

    if (v22 >= 0x333333333333333)
    {
      v24 = 0x666666666666666;
    }

    else
    {
      v24 = v23;
    }

    v33 = this + 8;
    if (v24)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v24);
    }

    v25 = 40 * v11;
    v29 = 0;
    v30 = v25;
    v31 = v25;
    v32 = 0;
    if (!v11)
    {
      if (!v25)
      {
        v39 = this + 8;
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(1uLL);
      }

      v30 = 40 * v11;
      v31 = v30;
    }

    KB::String::String(v25, v34);
    *(40 * v11 + 0x20) = v36;
    v31 += 40;
    std::vector<KB::Input>::__swap_out_circular_buffer(this + 8, &v29, v12);
    std::__split_buffer<KB::Input>::~__split_buffer(&v29);
  }

  else if (v12 == v14)
  {
    KB::String::String(*(this + 2), v34);
    *(v14 + 8) = v36;
    *(this + 2) = v14 + 40;
  }

  else
  {
    std::vector<KB::Input>::__move_range(this + 8, v10 + 40 * v11, *(this + 2), v12 + 40);
    v15 = v12 <= v34;
    v16 = *(this + 2) > v34;
    v18 = v15 && v16;
    v17 = !v15 || !v16;
    v19 = 40;
    if (v17)
    {
      v19 = 0;
    }

    if (v12 != &v34[v19])
    {
      KB::String::operator=(v12, &v34[v19]);
      v20 = 32;
      if (v18)
      {
        v20 = 72;
      }

      *(v12 + 8) = *&v34[v20];
    }
  }

  v26 = 0;
  ++*(this + 24);
  *(this + 728) = 0;
  v27 = *(a2 + 1);
  if (!v27)
  {
    v27 = a2 + 16;
  }

  if (*v27 == 32)
  {
    v26 = v27[1] == 0;
  }

  (*(**(this + 28) + 48))(*(this + 28), 1, v26 & (v9 >> 7));
  if ((v9 & 4) != 0)
  {
    (*(**(this + 28) + 136))(*(this + 28));
    v28 = *(this + 28);
    TIInputManager::input_substring((this + 8), 0, *(this + 24), &v37);
    (*(*v28 + 144))(v28, this + 472, &v37, *(this + 24), -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
    if (v38[0])
    {
      if (BYTE6(v37) == 1)
      {
        free(v38[0]);
      }
    }
  }

  if (v35)
  {
    if (v34[6] == 1)
    {
      free(v35);
    }
  }
}

KB::String *std::vector<KB::Input>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    v9 = (a2 + v6 - a4);
    result = *(a1 + 8);
    do
    {
      v11 = KB::String::String(result, v9);
      *(v11 + 8) = *(v9 + 8);
      v9 = (v9 + 40);
      result = (v11 + 40);
    }

    while (v9 < a3);
  }

  *(a1 + 8) = result;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      if (v7 != v6)
      {
        result = KB::String::operator=((v6 + v12 - 40), (v7 + v12 - 40));
        *(v6 + v12 - 8) = *(v7 + v12 - 8);
      }

      v12 -= 40;
    }

    while (v13 != v12);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<KB::Input>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, KB::String *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__split_buffer<KB::Input>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      v5 = *(v2 - 32);
      if (v5 && *(v2 - 34) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(KB::String *a1, KB::String *a2, KB::String *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      KB::String::String(this, v6);
      *(this + 8) = *(v6 + 8);
      v6 = (v6 + 40);
      this = (this + 40);
    }

    while (v6 != a2);
    do
    {
      v7 = *(v5 + 1);
      if (v7)
      {
        if (*(v5 + 6) == 1)
        {
          free(v7);
        }
      }

      v5 = (v5 + 40);
    }

    while (v5 != a2);
  }
}

void TIInputManager::set_input(TIInputManager *this, const KB::String *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = (this + 8);
  TIInputManager::input_substring((this + 8), 0, *(this + 24), v75);
  if (KB::String::contains(v75, 0x2019u))
  {
    WORD2(v72[0]) = 0;
    BYTE6(v72[0]) = 0;
    v72[1] = "'";
    LODWORD(v72[0]) = 1048577;
    BYTE1(v73) = 0;
    KB::String::replace_char(&v79, v75, v72, 8217);
    KB::String::operator=(v75, &v79);
    if (*(&v79 + 1) && BYTE6(v79) == 1)
    {
      free(*(&v79 + 1));
    }

    if (v72[1] && BYTE6(v72[0]) == 1)
    {
      free(v72[1]);
    }
  }

  v64 = 0;
  v65 = 0;
  v66 = 0;
  v5 = *a2;
  v6 = v75[0];
  if (v5 <= v75[0])
  {
    v7 = v77 ? v77 : &v78;
    v8 = *(a2 + 1) ? *(a2 + 1) : a2 + 16;
    if (!strncmp(v7 + v75[0] - v5, v8, v5))
    {
      v72[0] = v7;
      LODWORD(v72[1]) = 0;
      HIDWORD(v72[1]) = v6;
      LODWORD(v73) = 0;
      KB::String::iterator::initialize(v72);
      KB::String::find(&v67, v75, a2);
      v79 = *v72;
      v80 = v73;
      v43 = v68;
      if (LODWORD(v72[1]) == v68)
      {
        v44 = 0;
      }

      else
      {
        v44 = 0;
        do
        {
          ++v44;
          KB::String::iterator::operator++(&v79);
        }

        while (DWORD2(v79) != v43);
      }

      v50 = 0;
      v51 = 0;
      for (i = 40 * v44; ; i += 40)
      {
        v53 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          KB::String::compute_length(a2);
          v53 = *(a2 + 2);
        }

        if (v51 >= v53)
        {
          break;
        }

        v54 = *v4;
        v55 = (*v4 + i);
        if (v50 >= v66)
        {
          v56 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - v64) >> 3);
          v57 = v56 + 1;
          if (v56 + 1 > 0x666666666666666)
          {
            goto LABEL_112;
          }

          if (0x999999999999999ALL * ((v66 - v64) >> 3) > v57)
          {
            v57 = 0x999999999999999ALL * ((v66 - v64) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v66 - v64) >> 3) >= 0x333333333333333)
          {
            v58 = 0x666666666666666;
          }

          else
          {
            v58 = v57;
          }

          v82 = &v64;
          if (v58)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v58);
          }

          v59 = 40 * v56;
          KB::String::String((40 * v56), v55);
          *(v59 + 32) = *(v54 + i + 32);
          v50 = (40 * v56 + 40);
          v60 = (v59 + v64 - v65);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v64, v65, v60);
          v61 = v64;
          v62 = v66;
          v64 = v60;
          v65 = (v59 + 40);
          v66 = 0;
          v80 = v61;
          v81 = v62;
          *&v79 = v61;
          *(&v79 + 1) = v61;
          std::__split_buffer<KB::Input>::~__split_buffer(&v79);
        }

        else
        {
          KB::String::String(v50, (*v4 + i));
          *(v50 + 8) = *(v55 + 8);
          v50 += 40;
        }

        v65 = v50;
        ++v51;
      }
    }
  }

  v9 = *(this + 1);
  for (j = *(this + 2); j != v9; j -= 40)
  {
    v11 = *(j - 32);
    if (v11)
    {
      if (*(j - 34) == 1)
      {
        free(v11);
      }
    }
  }

  *(this + 2) = v9;
  KB::String::operator=((this + 32), a2);
  v12 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    KB::String::compute_length(a2);
    v12 = *(a2 + 2);
  }

  std::vector<KB::Input>::reserve(v4, v12);
  v13 = v64;
  v14 = v65;
  v15 = v65 - v64;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - v64) >> 3);
  if (v16 == *a2)
  {
    if (v4 != &v64)
    {
      v17 = *(this + 3);
      v18 = *(this + 1);
      if (v17 - v18 < v15)
      {
        if (v18)
        {
          v19 = *(this + 2);
          v20 = *(this + 1);
          if (v19 != v18)
          {
            do
            {
              v21 = *(v19 - 4);
              if (v21 && *(v19 - 34) == 1)
              {
                free(v21);
              }

              v19 = (v19 - 40);
            }

            while (v19 != v18);
            v20 = *v4;
          }

          *(this + 2) = v18;
          operator delete(v20);
          v17 = 0;
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
        }

        v22 = 0xCCCCCCCCCCCCCCCDLL * (v17 >> 3);
        v23 = 0x999999999999999ALL * (v17 >> 3);
        if (v23 <= v16)
        {
          v23 = v16;
        }

        if (v22 >= 0x333333333333333)
        {
          v24 = 0x666666666666666;
        }

        else
        {
          v24 = v23;
        }

        if (v24 <= 0x666666666666666)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v24);
        }

LABEL_112:
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v45 = *(this + 2);
      v46 = v45 - v18;
      if (v45 - v18 >= v15)
      {
        if (v64 != v65)
        {
          do
          {
            if (v13 != v18)
            {
              KB::String::operator=(v18, v13);
              *(v18 + 8) = *(v13 + 8);
            }

            v13 = (v13 + 40);
            v18 = (v18 + 40);
          }

          while (v13 != v14);
          v45 = *(this + 2);
        }

        while (v45 != v18)
        {
          v63 = *(v45 - 4);
          if (v63 && *(v45 - 34) == 1)
          {
            free(v63);
          }

          v45 -= 40;
        }

        *(this + 2) = v18;
      }

      else
      {
        v47 = (v64 + v46);
        if (v45 != v18)
        {
          do
          {
            if (v13 != v18)
            {
              KB::String::operator=(v18, v13);
              *(v18 + 8) = *(v13 + 8);
            }

            v13 = (v13 + 40);
            v18 = (v18 + 40);
            v46 -= 40;
          }

          while (v46);
          v45 = *(this + 2);
        }

        v48 = v45;
        if (v47 != v14)
        {
          v48 = v45;
          do
          {
            v49 = KB::String::String(v48, v47);
            *(v49 + 8) = *(v47 + 8);
            v47 = (v47 + 40);
            v48 = (v49 + 40);
          }

          while (v47 != v14);
        }

        *(this + 2) = v48;
      }
    }
  }

  else
  {
    KB::String::String(v72, a2);
    v74 = 0;
    while (1)
    {
      v25 = KB::UTF8Iterator::next(v72);
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v27 = u_isupper(v25) != 0;
      KB::String::String(v70, v26);
      KB::String::String(&v67, v70);
      v69 = v27;
      v28 = *(this + 2);
      v29 = *(this + 3);
      if (v28 >= v29)
      {
        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - *v4) >> 3);
        v33 = v32 + 1;
        if (v32 + 1 > 0x666666666666666)
        {
          goto LABEL_112;
        }

        v34 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v4) >> 3);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0x333333333333333)
        {
          v35 = 0x666666666666666;
        }

        else
        {
          v35 = v33;
        }

        v82 = v4;
        if (v35)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v35);
        }

        v36 = 40 * v32;
        KB::String::String(v36, &v67);
        *(v36 + 32) = v69;
        v31 = (v36 + 40);
        v37 = *(this + 1);
        v38 = *(this + 2);
        v39 = (v36 + v37 - v38);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v37, v38, v39);
        v40 = *(this + 1);
        *(this + 1) = v39;
        *(this + 2) = v31;
        v41 = *(this + 3);
        *(this + 3) = 0;
        v80 = v40;
        v81 = v41;
        *&v79 = v40;
        *(&v79 + 1) = v40;
        std::__split_buffer<KB::Input>::~__split_buffer(&v79);
      }

      else
      {
        v30 = KB::String::String(v28, &v67);
        *(v30 + 8) = v69;
        v31 = v30 + 40;
      }

      *(this + 2) = v31;
      if (v68 && BYTE6(v67) == 1)
      {
        free(v68);
      }

      if (v71 && v70[6] == 1)
      {
        free(v71);
      }
    }

    if (v72[1])
    {
      v42 = BYTE6(v72[0]) == 1;
    }

    else
    {
      v42 = 0;
    }

    if (v42)
    {
      free(v72[1]);
    }
  }

  *(this + 24) = -858993459 * ((*(this + 2) - *(this + 1)) >> 3);
  KB::String::clear((this + 64));
  *(this + 728) = 0;
  *(this + 27) = 0;
  (*(**(this + 28) + 136))(*(this + 28));
  *&v79 = &v64;
  std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&v79);
  if (v77 && v76 == 1)
  {
    free(v77);
  }
}

KB::String **std::vector<KB::Input>::reserve(KB::String **result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(a2);
  }

  return result;
}

void TIInputManager::or_input_flags_from_input(TIInputManager *this, const KB::String *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, a2);
  v12 = 0;
  v3 = v9;
  if (!v9)
  {
    KB::String::compute_length(v8);
    v3 = v9;
  }

  v4 = *(this + 1);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v4) >> 3) == v3)
  {
    for (i = (v4 + 32); ; i += 10)
    {
      v6 = KB::UTF8Iterator::next(v8);
      if (!v6)
      {
        break;
      }

      *i |= u_isupper(v6) != 0;
    }
  }

  if (v11)
  {
    v7 = v10 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v11);
  }
}

void TIInputManager::delete_suffix_from_input(TIInputManager *this, const KB::String *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0x100000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v3 = *(this + 24);
  if (v3)
  {
    v5 = 0;
    v6 = -1;
    do
    {
      TIInputManager::input_substring((this + 8), v3 + v6, ++v5, v14);
      KB::String::operator=(&v16, v14);
      if (v15)
      {
        v9 = v14[6] == 1;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        free(v15);
      }

      v10 = KB::String::equal(a2, &v16, 1, v7, v8);
      v3 = *(this + 24);
      --v6;
    }

    while (v5 < v3 && !v10);
    if (v10)
    {
      v12 = v5;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  do
  {
    TIInputManager::delete_from_input(this);
    --v12;
  }

  while (v12);
  if (v19)
  {
    v13 = v18 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    free(v19);
  }
}

void TIInputManager::delete_from_input(TIInputManager *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(this + 24);
  if (v1)
  {
    v3 = *(this + 28);
    TIInputManager::input_substring((this + 8), 0, v1, v10);
    (*(*v3 + 144))(v3, this + 472, v10, *(this + 24), -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
    if (v11 && v10[6] == 1)
    {
      free(v11);
    }

    if (*(this + 24) && -858993459 * ((*(this + 2) - *(this + 1)) >> 3))
    {
      KB::String::clear((this + 32));
      v4 = *(this + 24) - 1;
      *(this + 24) = v4;
      v5 = *(this + 2);
      v6 = *(this + 1) + 40 * v4;
      v7 = (v6 + 40);
      if (v6 + 40 != v5)
      {
        do
        {
          v6 = v7;
          KB::String::operator=((v7 - 40), v7);
          *(v6 - 8) = *(v6 + 32);
          v7 = (v6 + 40);
        }

        while (v6 + 40 != v5);
        v5 = *(this + 2);
      }

      while (v5 != v6)
      {
        v8 = *(v5 - 32);
        if (v8 && *(v5 - 34) == 1)
        {
          free(v8);
        }

        v5 -= 40;
      }

      *(this + 2) = v6;
      v9 = *(this + 24);
      *(this + 55) = v9;
      if (*(this + 54) > v9)
      {
        *(this + 54) = v9;
      }

      *(this + 728) = 1;
      (*(**(this + 28) + 56))(*(this + 28));
    }
  }
}

_DWORD *TIInputManager::lock_input(_DWORD *this)
{
  v1 = this[24];
  v2 = this[54];
  if (v2 <= v1)
  {
    v2 = this[24];
  }

  if (this[55] < v1)
  {
    v1 = this[55];
  }

  this[54] = v2;
  this[55] = v1;
  return this;
}

void TIInputManager::drop_input_prefix(uint32x2_t *this, unsigned int a2)
{
  v3 = this + 1;
  std::vector<KB::Input>::erase(&this[1], *&this[1], (*&this[1] + 40 * a2));
  v3[11].i32[0] -= a2;
  v3[26] = vqsub_u32(v3[26], vdup_n_s32(a2));

  KB::String::clear(&v3[7]);
}

KB::String *std::vector<KB::Input>::erase(uint64_t a1, KB::String *this, KB::String *a3)
{
  if (a3 != this)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = this;
    if (a3 != v6)
    {
      do
      {
        if (v4 != v7)
        {
          KB::String::operator=(v7, v4);
          *(v7 + 8) = *(v4 + 8);
        }

        v4 = (v4 + 40);
        v7 = (v7 + 40);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v8 = *(v6 - 4);
      if (v8 && *(v6 - 34) == 1)
      {
        free(v8);
      }

      v6 = (v6 - 40);
    }

    *(a1 + 8) = v7;
  }

  return this;
}

void TIInputManager::accept_input(TIInputManager *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 24);
  v3 = *(this + 54);
  if (v3 <= v2)
  {
    v3 = *(this + 24);
  }

  if (*(this + 55) < v2)
  {
    v2 = *(this + 55);
  }

  *(this + 54) = v3;
  *(this + 55) = v2;
  TIInputManager::legacy_input_stem(&v5, this);
  KB::String::operator=(this + 64, &v5);
  if (v6)
  {
    v4 = BYTE6(v5) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v6);
  }
}

uint64_t TIInputManager::set_input_index(TIInputManager *this, unsigned int a2)
{
  v2 = -858993459 * ((*(this + 2) - *(this + 1)) >> 3);
  if (v2 >= a2)
  {
    v2 = a2;
  }

  *(this + 24) = v2;
  v3 = **(this + 28);
  if (*(this + 736) == 1)
  {
    return (*(v3 + 64))();
  }

  else
  {
    return (*(v3 + 136))();
  }
}

void TIInputManager::text_accepted(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4, int a5, uint64_t a6)
{
  v78 = *MEMORY[0x277D85DE8];
  v12 = (a1 + 8);
  TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v70);
  if (a2 != a3 && !KB::String::equal(a2, a3, 1, v13, v14))
  {
    KB::String::operator=((a1 + 64), v70);
    TIInputManager::input_flags_vector(a1, &__p);
    v16 = a3[2];
    if (!a3[2])
    {
      KB::String::compute_length(a3);
      v16 = a3[2];
    }

    v17 = *(a1 + 96);
    v50 = a4;
    if (v17 >= v16)
    {
      v19 = *(a1 + 96);
      if (!v16)
      {
        KB::String::compute_length(a3);
        v16 = a3[2];
        v19 = *(a1 + 96);
      }

      v18 = v17 - v16;
      v17 = v19;
    }

    else
    {
      v18 = 0;
    }

    std::vector<KB::Input>::erase(v12, (*(a1 + 8) + 40 * v18), (*(a1 + 8) + 40 * v17));
    *(a1 + 96) = v18;
    if (*(a2 + 1))
    {
      v20 = *(a2 + 1);
    }

    else
    {
      v20 = a2 + 8;
    }

    v55 = v20;
    v21 = *a2;
    v56 = 0;
    v57 = v21;
    v58 = 0;
    KB::String::iterator::initialize(&v55);
    v51 = v20;
    v52 = v21;
    v53 = v21;
    v54 = 0;
    KB::String::iterator::initialize(&v51);
    v49 = v18;
    v22 = v18;
    if (v56 != v52)
    {
      do
      {
        KB::String::String(v68, v58);
        v23 = (*(a1 + 8) + 40 * *(a1 + 96));
        KB::String::String(v65, v68);
        v67 = 0;
        v25 = *(a1 + 16);
        v24 = *(a1 + 24);
        if (v25 >= v24)
        {
          v26 = *(a1 + 8);
          v27 = 1 - 0x3333333333333333 * ((v25 - v26) >> 3);
          if (v27 > 0x666666666666666)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v28 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v26) >> 3);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x333333333333333)
          {
            v29 = 0x666666666666666;
          }

          else
          {
            v29 = v27;
          }

          v64 = v12;
          if (v29)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v29);
          }

          v30 = (8 * ((v23 - v26) >> 3));
          v61 = 0;
          v62[0] = v30;
          v62[1] = v30;
          v63 = 0;
          if (!(0xCCCCCCCCCCCCCCCDLL * ((v23 - v26) >> 3)))
          {
            if (!v30)
            {
              if (v23 == v26)
              {
                v31 = 1;
              }

              else
              {
                v31 = 0x999999999999999ALL * ((v23 - v26) >> 3);
              }

              v77 = v64;
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v31);
            }

            v62[0] = (8 * ((v23 - v26) >> 3));
            v62[1] = v62[0];
          }

          v32 = KB::String::String(v30, v65);
          *(v32 + 8) = v67;
          v62[1] = (v62[1] + 40);
          std::vector<KB::Input>::__swap_out_circular_buffer(v12, &v61, v23);
          std::__split_buffer<KB::Input>::~__split_buffer(&v61);
        }

        else if (v23 == v25)
        {
          KB::String::String(*(a1 + 16), v65);
          *(v25 + 8) = v67;
          *(a1 + 16) = v25 + 40;
        }

        else
        {
          std::vector<KB::Input>::__move_range(v12, v23, *(a1 + 16), v23 + 40);
          if (v23 != v65)
          {
            KB::String::operator=(v23, v65);
            *(v23 + 8) = v67;
          }
        }

        if (v66 && v65[6] == 1)
        {
          free(v66);
        }

        ++*(a1 + 96);
        if (v69 && v68[6] == 1)
        {
          free(v69);
        }

        KB::String::iterator::operator++(&v55);
      }

      while (v56 != v52);
      v22 = *(a1 + 96);
    }

    v33 = *(a1 + 224);
    TIInputManager::input_substring(v12, 0, v22, &v72);
    (*(*v33 + 104))(&v61, v33, &v72, a3, v70, v50, a2, a6);
    if (v75 && v74 == 1)
    {
      free(v75);
    }

    if ((a6 & 1) == 0 && (v62[0] - v61) >= 5 && *(v62[0] - 1) == -1 && *(v62[0] - 2) == -1)
    {
      (*(**(a1 + 224) + 136))(*(a1 + 224));
    }

    if (v49 >= *(a1 + 96))
    {
      v44 = v61;
      if (v61)
      {
LABEL_74:
        v62[0] = v44;
        operator delete(v44);
      }
    }

    else
    {
      v35 = v49;
      v36 = a5 & 0xFFFFFFFE;
      v37 = *v12;
      v38 = 40 * v49;
      do
      {
        has_uppercase_characters = KB::string_has_uppercase_characters((v37 + v38), v34);
        v40 = has_uppercase_characters;
        if (v38)
        {
          v41 = 0;
        }

        else
        {
          v41 = v36 == 2;
        }

        v42 = v41 && has_uppercase_characters;
        if ((v42 & a6) != 0)
        {
          v43 = has_uppercase_characters | 2;
        }

        else
        {
          v43 = has_uppercase_characters;
        }

        v44 = v61;
        if (v35 < (v62[0] - v61) >> 2)
        {
          v45 = *(v61 + v35);
          if (v45 != -1)
          {
            v46 = __p.__begin_[v45];
            if (v40)
            {
              v47 = v46 & 0x12;
            }

            else
            {
              v47 = 0;
            }

            v48 = v46 & 0x2C | v43 | v47;
            if ((v43 & ((v46 & 1) == 0)) != 0)
            {
              v43 = v48 | 0x10;
            }

            else
            {
              v43 = v48;
            }
          }
        }

        v37 = *(a1 + 8);
        *(v37 + v38 + 32) = v43;
        ++v35;
        v38 += 40;
      }

      while (v35 < *(a1 + 96));
      if (v44)
      {
        goto LABEL_74;
      }
    }

    begin = __p.__begin_;
    if (__p.__begin_)
    {
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  (*(**(a1 + 224) + 104))(v60);
  begin = v60[0];
  if (v60[0])
  {
    v60[1] = v60[0];
LABEL_76:
    operator delete(begin);
  }

LABEL_77:
  v72 = 0x100000;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  KB::String::operator=((*(*(a1 + 264) + 24) + 56), &v72);
  if (v75 && v74 == 1)
  {
    free(v75);
  }

  v72 = 0x100000;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  KB::String::operator=((a1 + 32), &v72);
  if (v75 && v74 == 1)
  {
    free(v75);
  }

  if (v71)
  {
    if (v70[6] == 1)
    {
      free(v71);
    }
  }
}

uint64_t TIInputManager::set_autoshift(uint64_t this, int a2)
{
  v2 = *(this + 8);
  if (-858993459 * ((*(this + 16) - v2) >> 3))
  {
    v3 = *(v2 + 32);
    v4 = v3 & 0xFFFFFFFD;
    if ((v3 & a2) != 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 32) = v5 | v4;
  }

  return this;
}

uint64_t TIInputManager::is_uppercase(TIInputManager *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (-858993459 * ((*(this + 2) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 32) & 1;
  }
}

BOOL TIInputManager::session_contains_flag(TIInputManager *this, int a2)
{
  TIInputManager::input_flags_vector(this, &v10);
  if (v10.__end_ != v10.__begin_)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v10.__begin_[v3] & a2;
      v6 = v5 != 0;
      v3 = v4++;
      if (v5)
      {
        v7 = 0;
      }

      else
      {
        v7 = v10.__end_ - v10.__begin_ > v3;
      }
    }

    while (v7);
    goto LABEL_9;
  }

  v6 = 0;
  v8 = 0;
  if (v10.__end_)
  {
LABEL_9:
    operator delete(v10.__begin_);
    return v6;
  }

  return v8;
}

void TIInputManager::autocorrection(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(v5);
  if (v5[1] == v5[0])
  {
    bzero(a2, 0x3E8uLL);
    KB::Candidate::Candidate(a2);
  }

  else
  {
    KB::Candidate::Candidate(a2, v5[0]);
  }

  if (v9)
  {
    v3 = v8[38] == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(v9);
  }

  v4 = v8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = &v7;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = &v6;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = v5;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
}

uint64_t TIInputManager::user_dictionary(TIInputManager *this)
{
  v1 = *(*(*(this + 33) + 24) + 24);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

KB::String *TIInputManager::single_character_completions_for_shortcut_prefix@<X0>(KB::String *this@<X0>, const KB::String *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(*(*(this + 33) + 24) + 24);
  if (v5 && (v6 = *v5) != 0)
  {
    *a4 = 0x100000;
    *(a4 + 4) = 0;
    *(a4 + 6) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    this = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>((v6 + 48), a2, a3);
    if (this)
    {

      return KB::String::operator=(a4, (this + 48));
    }
  }

  else
  {
    *a4 = 0x100000;
    *(a4 + 4) = 0;
    *(a4 + 6) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return this;
}

uint64_t TIInputManager::maximum_shortcut_length(TIInputManager *this)
{
  v1 = *(*(*(this + 33) + 24) + 24);
  if (v1 && (v2 = *v1) != 0)
  {
    return *(v2 + 88);
  }

  else
  {
    return 0;
  }
}

BOOL TIInputManager::has_user_explicit_shift(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = v2 >> 2;
  v5 = 1;
  do
  {
    v6 = (*(v1 + 4 * v3) & 0x13) == 1;
    result = v6;
    v3 = v5++;
  }

  while (!v6 && v4 > v3);
  return result;
}

void TIInputManager::word_from_supplemental_lexicon(TIInputManager *this@<X0>, KB::String *a2@<X1>, _BYTE *a3@<X8>)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14TIInputManager30word_from_supplemental_lexiconERN2KB6StringE_block_invoke;
  v3[3] = &__block_descriptor_tmp_5173;
  v3[4] = this;
  KB::DynamicDictionary::word_from_supplemental_lexicon(*(*(this + 33) + 24), a2, v3, a3);
}

uint64_t TIInputManager::apply_custom_conversions(TIInputManager *this, CandidateCollection *a2)
{
  result = *(this + 73);
  if (result)
  {
    return (*(*result + 64))(result, a2);
  }

  return result;
}

uint64_t TIInputManager::should_correct_explicitly_shifted_word(TIInputManager *this)
{
  v1 = *(this + 73);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 1;
  }
}

uint64_t TIInputManager::should_promote_case_variants_of_top_candidate(TIInputManager *this)
{
  result = *(this + 73);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void TIInputManager::drop_input_prefix_and_update_autocorrection_engine(uint32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a1[28];
  TIInputManager::input_substring(&a1[1], 0, a1[12].i32[0], v7);
  (*(**&v6 + 144))(v6, a1 + 59, v7, a1[12].u32[0], -858993459 * ((*&a1[2] - *&a1[1]) >> 3));
  if (v9 && v8 == 1)
  {
    free(v9);
  }

  TIInputManager::input_substring(&a1[1], 0, a2, v7);
  std::vector<KB::Input>::erase(&a1[1], *&a1[1], (*&a1[1] + 40 * a2));
  a1[12].i32[0] -= a2;
  a1[27] = vqsub_u32(a1[27], vdup_n_s32(a2));
  KB::String::clear(&a1[8]);
  (*(a3 + 16))(a3);
  (*(**&a1[28] + 128))(*&a1[28], a1 + 59, a2, v7);
  if (v9)
  {
    if (v8 == 1)
    {
      free(v9);
    }
  }
}

uint64_t TIInputManager::set_input_context(TIInputManager *this, const KB::String *a2, const KB::LanguageModelContext *a3)
{
  KB::String::operator=((this + 440), a2);

  return KB::LanguageModelContext::operator=(this + 472, a3);
}

void TIInputManager::sync_with_input_from_UI(TIInputManager *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(this + 28);
  TIInputManager::input_substring((this + 8), 0, *(this + 24), v3);
  (*(*v2 + 144))(v2, this + 472, v3, *(this + 24), -858993459 * ((*(this + 2) - *(this + 1)) >> 3));
  if (v4)
  {
    if (v3[6] == 1)
    {
      free(v4);
    }
  }
}

void TIInputManager::tokenize_input_context(const KB::String *a2@<X1>, void *x8_0@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  v8 = " \n\t";
  v5 = 1048579;
  v9 = 0;
  KB::string_split_after(a2, &v5, x8_0);
  if (v8)
  {
    v4 = v7 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v8);
  }
}

unsigned int *TIInputManager::set_typing_model(TIInputManager *this, unsigned int **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(this + 73);
  if (v4)
  {
    v5 = *TIInputManager::favonius_layout(this);
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    (*(*v4 + 16))(&v12, v4, &v11);
    (*(*v3 + 24))(v3, &v12);
    if (v12)
    {
      v6 = atomic_load(v12 + 2);
      if (v6 == 1)
      {
        (*(*v12 + 8))();
      }

      else
      {
        atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
      }
    }

    if (v11)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v11);
    }
  }

  v7 = *(this + 28);
  v10 = v3;
  (*(*v7 + 176))(v7, &v10);
  result = v10;
  if (v10)
  {
    v9 = atomic_load(v10 + 2);
    if (v9 == 1)
    {
      return (*(*v10 + 40))();
    }

    else
    {
      atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

unsigned int *TIInputManager::set_candidate_generator(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 224);
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 192))(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = atomic_load(v6 + 2);
    if (v5 == 1)
    {
      return (*(*v6 + 8))();
    }

    else
    {
      atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TIInputManager::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 224);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 208))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

unsigned int *TIInputManager::set_search_algorithm(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 224);
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 224))(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = atomic_load(v6 + 2);
    if (v5 == 1)
    {
      return (*(*v6 + 16))();
    }

    else
    {
      atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TIInputManager::set_word_medial_punctuation_predicate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 600);
  if (aBlock)
  {
    _Block_copy(aBlock);
  }

  *(a1 + 600) = aBlock;
  if (v4)
  {

    _Block_release(v4);
  }
}

BOOL TIInputManager::candidate_contains_space(TIInputManager *this, const KB::Candidate *a2)
{
  v3 = *(this + 444);
  if (*(this + 444))
  {
    v4 = *(this + 112);
    if (!v4)
    {
      v4 = this + 904;
    }
  }

  else
  {
    KB::Candidate::compute_string(this);
    v3 = *(this + 444);
    v4 = *(this + 112);
    if (!v4)
    {
      v4 = this + 904;
    }

    if (!*(this + 444))
    {
      v5 = v4;
      return v5 - v4 != v3;
    }
  }

  v5 = v4;
  while (*v5 != 32)
  {
    if (++v5 == &v4[v3])
    {
      v5 = &v4[v3];
      return v5 - v4 != v3;
    }
  }

  return v5 - v4 != v3;
}

uint64_t TIInputManager::period_ends_sentence_after_word(KB::DictionaryContainer **this, const KB::String *a2, uint64_t a3)
{
  KB::DictionaryContainer::lookup(&v27, this[33], a2);
  v6 = v27;
  v7 = v28;
  if (v27 != v28)
  {
    while (1)
    {
      v29 = &unk_283FDCF10;
      v30 = 1;
      if (!KB::InputSegmentFilter::string_preserves_surface_form_features(&v29, v6, a2, 0, 0))
      {
        break;
      }

      v6 = (v6 + 240);
      if (v6 == v7)
      {
        v6 = v7;
        goto LABEL_10;
      }
    }

    if (v6 != v7)
    {
      for (i = (v6 + 240); i != v7; i = (i + 240))
      {
        v29 = &unk_283FDCF10;
        v30 = 1;
        if (KB::InputSegmentFilter::string_preserves_surface_form_features(&v29, i, a2, 0, 0))
        {
          KB::String::operator=(v6, i);
          KB::ByteString::operator=(v6 + 16, i + 16);
          v9 = *(i + 6);
          *(v6 + 14) = *(i + 14);
          *(v6 + 6) = v9;
          KB::String::operator=(v6 + 64, (i + 64));
          v10 = *(i + 6);
          v11 = *(i + 7);
          v12 = *(i + 9);
          *(v6 + 8) = *(i + 8);
          *(v6 + 9) = v12;
          *(v6 + 6) = v10;
          *(v6 + 7) = v11;
          KB::String::operator=(v6 + 160, (i + 160));
          *(v6 + 192) = *(i + 192);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v6 + 200, i + 25);
          v6 = (v6 + 240);
        }
      }
    }
  }

LABEL_10:
  std::vector<KB::Word>::erase(&v27, v6, v28);
  if (v27 == v28)
  {
    v23 = 1;
  }

  else
  {
    v14 = KB::string_capitalization(a2, v13);
    v15 = v27;
    v16 = v28;
    if (v27 == v28)
    {
      v25 = 0;
      goto LABEL_27;
    }

    v17 = v14;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = (a3 & 1) != 0 || *(v15 + 30) == v17;
      if ((*(v15 + 104) & 0x40) == 0)
      {
        v22 = KB::String::last(v15) != 46;
        v19 |= v22 && v21;
        v20 |= v22;
      }

      v18 |= v21;
      v15 = (v15 + 240);
    }

    while (v15 != v16);
    if (v18)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }
  }

  v24 = this[73];
  v25 = (v24 == 0) & v23;
  if (v24 && (v23 & 1) != 0)
  {
    v25 = (*(*v24 + 32))(v24, a2, a3);
  }

LABEL_27:
  v29 = &v27;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v29);
  return v25;
}

_BYTE *TIInputManager::set_uses_text_checker(_BYTE *this, int a2)
{
  this[734] = a2;
  if (a2)
  {
    return _text_checker(1);
  }

  return this;
}

TIInputManager *TIInputManager::clear_continuous_path(TIInputManager *this)
{
  result = (*(**(this + 28) + 352))(*(this + 28));
  *(this + 108) = -1;
  v3 = *(this + 46);
  if (v3 != (this + 376))
  {
    do
    {
      if ((*(v3 + 27) - 2) > 3)
      {
        v4 = *(v3 + 1);
        if (v4)
        {
          do
          {
            result = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            result = *(v3 + 2);
            v5 = *result == v3;
            v3 = result;
          }

          while (!v5);
        }
      }

      else
      {
        result = std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::erase(this + 46, v3);
      }

      v3 = result;
    }

    while (result != (this + 376));
  }

  return result;
}

uint64_t TIInputManager::add_touch(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, double a8, double a9, double a10, float a11)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 296) || (v13 = *(a1 + 360)) == 0 || ((*(v13 + 16) - *(v13 + 8)) & 0x7FFFFFFF8) != 0)
  {
    v12 = *(a1 + 224);
    TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), &appendedString);
    (*(*v12 + 144))(v12, a1 + 472, &appendedString, *(a1 + 96), -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
    if (v16)
    {
      if (BYTE6(appendedString) == 1)
      {
        free(v16);
      }
    }

    TIInputManager::favonius_layout(a1);
    operator new();
  }

  return a5;
}

uint64_t TIInputManager::delete_from_favonius_stroke_history(TIInputManager *this)
{
  v1 = *(this + 28);
  v2 = TIInputManager::favonius_layout(this);
  v3 = *(*v1 + 96);

  return v3(v1, v2);
}

uint64_t TIInputManager::set_key_layout(uint64_t a1, atomic_uint **a2)
{
  v4 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v5, 1u);
  }

  result = *(a1 + 360);
  *(a1 + 360) = v5;
  if (result)
  {

    return WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(result);
  }

  return result;
}

uint64_t TIInputManager::set_layout_uses_two_hands(uint64_t this, char a2)
{
  *(this + 320) = a2;
  v2 = *(this + 360);
  if (v2)
  {
    *(v2 + 112) = a2;
  }

  return this;
}

KB::String *TIInputManager::set_primary2secondary_character_map_entry(uint64_t a1, const KB::String *a2, KB::String *a3)
{
  v6 = a2;
  v4 = (std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>((a1 + 176), a2, &v6) + 6);

  return KB::String::operator=(v4, a3);
}

void *std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(float *a1, const KB::String *a2, const KB::String **a3)
{
  if (*(a2 + 1))
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = (a2 + 16);
  }

  v6 = KB::String::hash(v5, *a2);
  v9 = v6;
  v10 = *(a1 + 1);
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v10 <= v6)
    {
      v13 = v6 % v10;
    }
  }

  else
  {
    v13 = (v10 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= v10)
      {
        v16 %= v10;
      }
    }

    else
    {
      v16 &= v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  if (v15 + 2 != a2 && !KB::String::equal((v15 + 2), a2, 1, v7, v8))
  {
    goto LABEL_21;
  }

  return v15;
}

void TIInputManager::candidates_for_string(const KB::String **a1, const KB::String *a2, int a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a3;
  TIInputManager::create_autocorrection_engine_with_synthetic_typing(a1);
}

void std::__function::__func<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0,std::allocator<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  v77 = *MEMORY[0x277D85DE8];
  v10 = *v9;
  v11 = *(v9 + 8);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v12 = *(v5 + 8);
  __dst = 0;
  v55 = 0;
  __p = 0;
  if (v11 != v10)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&__p, (v11 - v10) >> 3);
  }

  (*(*v12 + 48))(&v56, v12, 4, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v56)
  {
    if (*(v12 + 76))
    {
      Mutable = CFStringCreateMutable(0, 0);
    }

    else
    {
      Mutable = 0;
    }

    (*(*v12 + 72))(&v74, v12, *(v8 + 16));
    KB::Candidate::Candidate(v73, *(v8 + 16), v12[72]);
    if (v76 == 1)
    {
      KB::Candidate::Candidate(v71, &v74, v12[72]);
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v71[0] = 0;
    }

    v72 = v14;
    v15 = *(v8 + 16);
    v16 = *(v15 + 4);
    if (*(v15 + 4) || (KB::String::compute_length(*(v8 + 16)), v16 = *(v15 + 4), *(v15 + 4)))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v16);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    *v47 = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v50);
    language_modeling::v1::LinguisticContext::LinguisticContext(&v51);
    memset(v52, 0, 24);
    bzero(v70, 0x3E8uLL);
    KB::Candidate::Candidate(v70);
    KB::CandidateCollection::CandidateCollection(v42, v7);
    KB::Candidate::Candidate(v67, v73);
    v65[0] = 0;
    v66 = 0;
    if (v72 == 1)
    {
      KB::Candidate::Candidate(v65, v71);
      v66 = 1;
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    KB::LanguageModelContext::LanguageModelContext(v32, &v46);
    KB::String::String(v63, *(v8 + 24));
    KB::Candidate::Candidate(v62, v70);
    KB::CandidateFilterLookupContext::CandidateFilterLookupContext(v68, v67, v65, &v39, v32, v63, v62, 4);
    KB::Candidate::~Candidate(v62);
    if (v64 && v63[6] == 1)
    {
      free(v64);
    }

    v31[0] = &v38;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v31);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v37);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v36);
    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v66 == 1)
    {
      KB::Candidate::~Candidate(v65);
    }

    KB::Candidate::~Candidate(v67);
    v69 = KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
    v17 = *(v12 + 17);
    v18 = v12[72];
    v19 = *(v12 + 33);
    v30 = v19;
    if (v19)
    {
      atomic_fetch_add(v19, 1u);
    }

    v20 = *(v12 + 35);
    v28 = *(v12 + 34);
    v29 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    KB::CandidateFilterResources::CandidateFilterResources(v31, v17, v18, &v30, &v28, *(v12 + 75), (v12 + 158), Mutable);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if (v30)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v30);
    }

    (*(*v56 + 24))(v56, v7, v68, v31);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    TIInputManager::apply_case_changes(v12, v7, &v59, 0, **(v8 + 32), 0);
    cf = &v59;
    std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&cf);
    TIInputManager::apply_shortcut_conversions(v12, v7, v21, 0, v22);
    if (*(v12 + 76))
    {
      v23 = KB::CandidateFilterFlags::candidate_filter_flag_type(v10, v11);
      v24 = &kGenericFlagDesc;
      if (v23 == 1)
      {
        v24 = &kPostLMFlagDesc;
      }

      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = &kPreLMFlagDesc;
      }

      KB::String::String(&v59, v25);
      v26 = *(v12 + 76);
      v27 = *(v8 + 16);
      cf = 0;
      (*(*v26 + 24))(v26, v27, 4, &v59, v42, Mutable, v7, &cf, v28);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (v60 && BYTE6(v59) == 1)
      {
        free(v60);
      }
    }

    KB::CandidateFilterResources::~CandidateFilterResources(v31);
    KB::CandidateFilterLookupContext::~CandidateFilterLookupContext(v68);
    v68[0] = &v45;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    v68[0] = &v44;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    v68[0] = &v43;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    v68[0] = v42;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v68);
    KB::Candidate::~Candidate(v70);
    v68[0] = v52;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v68);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v51);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v50);
    if (v47[0])
    {
      v47[1] = v47[0];
      operator delete(v47[0]);
    }

    if (*(&v46 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v46 + 1));
    }

    if (v72 == 1)
    {
      KB::Candidate::~Candidate(v71);
    }

    KB::Candidate::~Candidate(v73);
    if (v76 == 1 && v75 && BYTE6(v74) == 1)
    {
      free(v75);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }

  if (v10)
  {
    operator delete(v10);
  }
}

__n128 std::__function::__func<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0,std::allocator<TIInputManager::candidates_for_string(KB::String const&,TIShiftContext)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void TIInputManager::predictions_for_string(TIInputManager *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  TIInputManager::create_autocorrection_engine();
}

void std::__function::__func<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0,std::allocator<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v51 = v6;
  v7 = v5;
  v116 = *MEMORY[0x277D85DE8];
  v10 = *v8;
  v9 = *(v8 + 8);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v11 = *(v5 + 8);
  v12 = **(v5 + 16);
  v90 = 0;
  __p = 0;
  __dst = 0;
  if (v9 != v10)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](&__p, (v9 - v10) >> 3);
  }

  (*(*v11 + 48))(&v91, v11, v12, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v91)
  {
    if (*(v11 + 608))
    {
      Mutable = CFStringCreateMutable(0, 0);
    }

    else
    {
      Mutable = 0;
    }

    (*(*v11 + 72))(&v108, v11, *(v7 + 24));
    KB::Candidate::Candidate(v107, *(v7 + 24), *(v11 + 288));
    v49 = v9;
    if (v110 == 1)
    {
      KB::Candidate::Candidate(v105, &v108, *(v11 + 288));
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v105[0] = 0;
    }

    v50 = v10;
    v106 = v14;
    v15 = *(v7 + 24);
    v16 = *(v15 + 4);
    if (*(v15 + 4) || (KB::String::compute_length(*(v7 + 24)), v16 = *(v15 + 4), *(v15 + 4)))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v16);
    }

    v17 = *(v11 + 136);
    v18 = *(v11 + 288);
    v19 = *(v11 + 264);
    v86 = v19;
    if (v19)
    {
      atomic_fetch_add(v19, 1u);
    }

    v20 = *(v11 + 280);
    v84 = *(v11 + 272);
    v85 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    KB::CandidateFilterResources::CandidateFilterResources(v87, v17, v18, &v86, &v84, *(v11 + 600), v11 + 632, Mutable);
    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v85);
    }

    if (v86)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v86);
    }

    KB::CandidateCollection::CandidateCollection(v80, v51);
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v77);
    language_modeling::v1::LinguisticContext::LinguisticContext(&v78);
    memset(v79, 0, 24);
    bzero(v104, 0x3E8uLL);
    KB::Candidate::Candidate(v104);
    v21 = KB::String::last((v11 + 440));
    KB::Candidate::Candidate(v100, v107);
    v98[0] = 0;
    v99 = 0;
    if (v106 == 1)
    {
      KB::Candidate::Candidate(v98, v105);
      v99 = 1;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    KB::LanguageModelContext::LanguageModelContext(v63, &v73);
    KB::String::String(v96, *(v7 + 32));
    KB::Candidate::Candidate(v95, v104);
    KB::CandidateFilterLookupContext::CandidateFilterLookupContext(v101, v100, v98, &v70, v63, v96, v95, **(v7 + 16));
    KB::Candidate::~Candidate(v95);
    if (v97 && v96[6] == 1)
    {
      free(v97);
    }

    v111 = &v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v111);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v68);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v67);
    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v64);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v99 == 1)
    {
      KB::Candidate::~Candidate(v98);
    }

    KB::Candidate::~Candidate(v100);
    v103 = KB::SetInputHasSupplementalPrefixForScope::s_inputHasSupplementalPrefix;
    v102 = v21 == 46;
    (*(*v91 + 24))(v91, v51, v101, v87);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v22 = *(v7 + 24);
    v23 = *(v22 + 4);
    if (!*(v22 + 4))
    {
      KB::String::compute_length(*(v7 + 24));
      v23 = *(v22 + 4);
    }

    std::vector<KB::Input>::reserve(&v60, v23);
    v24 = *(v7 + 24);
    v25 = *(v24 + 1);
    if (!v25)
    {
      v25 = v24 + 8;
    }

    v56 = v25;
    v57 = 0;
    v58 = *v24;
    v59 = 0;
    KB::String::iterator::initialize(&v56);
    v26 = *v24;
    v27 = *(v24 + 1);
    if (!v27)
    {
      v27 = (v24 + 8);
    }

    v52 = v27;
    v53 = v26;
    v54 = v26;
    v55 = 0;
    KB::String::iterator::initialize(&v52);
    if (v57 != v53)
    {
      do
      {
        KB::String::String(&cf, v59);
        if (v61 >= v62)
        {
          v30 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - v60) >> 3) + 1;
          if (v30 > 0x666666666666666)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          if (0x999999999999999ALL * ((v62 - v60) >> 3) > v30)
          {
            v30 = 0x999999999999999ALL * ((v62 - v60) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v62 - v60) >> 3) >= 0x333333333333333)
          {
            v31 = 0x666666666666666;
          }

          else
          {
            v31 = v30;
          }

          v115 = &v60;
          if (v31)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Input>>(v31);
          }

          v32 = (8 * ((v61 - v60) >> 3));
          KB::String::String(v32, &cf);
          v32[8] = 0;
          v29 = (v32 + 10);
          v33 = (v32 + v60 - v61);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Input>,KB::Input*>(v60, v61, v33);
          v34 = v60;
          v35 = v62;
          v60 = v33;
          v61 = v29;
          v62 = 0;
          v113 = v34;
          v114 = v35;
          v111 = v34;
          v112 = v34;
          std::__split_buffer<KB::Input>::~__split_buffer(&v111);
        }

        else
        {
          v28 = KB::String::String(v61, &cf);
          *(v28 + 8) = 0;
          v29 = (v28 + 40);
        }

        v61 = v29;
        if (v94 && BYTE6(cf) == 1)
        {
          free(v94);
        }

        KB::String::iterator::operator++(&v56);
      }

      while (v57 != v53);
      v24 = *(v7 + 24);
    }

    v36 = *v24;
    if (*v24)
    {
      v37 = *(v24 + 1);
      if (!v37)
      {
        v37 = (v24 + 8);
      }

      v111 = v37;
      LODWORD(v112) = 0;
      HIDWORD(v112) = v36;
      LODWORD(v113) = 0;
      KB::String::iterator::initialize(&v111);
      v38 = u_isupper(v113);
      v39 = v60;
      v10 = v50;
      if (v38)
      {
        *(v60 + 8) = 3;
      }
    }

    else
    {
      v39 = v60;
      v10 = v50;
    }

    TIInputManager::apply_case_changes(v11, v51, &v60, -858993459 * ((v61 - v39) >> 3), 0, 0);
    TIInputManager::apply_shortcut_conversions(v11, v51, v40, 0, v41);
    if (*(v11 + 608))
    {
      v42 = Mutable;
      v43 = KB::CandidateFilterFlags::candidate_filter_flag_type(v10, v49);
      v44 = &kGenericFlagDesc;
      if (v43 == 1)
      {
        v44 = &kPostLMFlagDesc;
      }

      if (v43)
      {
        v45 = v44;
      }

      else
      {
        v45 = &kPreLMFlagDesc;
      }

      KB::String::String(&v111, v45);
      (*(**(v11 + 224) + 488))(&cf);
      v46 = *(v11 + 608);
      v47 = *(v7 + 24);
      v48 = cf;
      v56 = cf;
      if (cf)
      {
        CFRetain(cf);
        v56 = v48;
      }

      Mutable = v42;
      (*(*v46 + 24))(v46, v47, 0, &v111, v80, v42, v51, &v56);
      if (v56)
      {
        CFRelease(v56);
      }

      v56 = 0;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v112 && BYTE6(v111) == 1)
      {
        free(v112);
      }
    }

    v111 = &v60;
    std::vector<KB::Input>::__destroy_vector::operator()[abi:nn200100](&v111);
    KB::CandidateFilterLookupContext::~CandidateFilterLookupContext(v101);
    KB::Candidate::~Candidate(v104);
    v101[0] = v79;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v101);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v78);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v77);
    if (v74)
    {
      *(&v74 + 1) = v74;
      operator delete(v74);
    }

    if (*(&v73 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v73 + 1));
    }

    v101[0] = &v83;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    v101[0] = &v82;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    v101[0] = &v81;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    v101[0] = v80;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v101);
    KB::CandidateFilterResources::~CandidateFilterResources(v87);
    if (v106 == 1)
    {
      KB::Candidate::~Candidate(v105);
    }

    KB::Candidate::~Candidate(v107);
    if (v110 == 1 && v109 && BYTE6(v108) == 1)
    {
      free(v109);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v92)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v92);
  }

  if (v10)
  {
    operator delete(v10);
  }
}

__n128 std::__function::__func<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0,std::allocator<TIInputManager::predictions_for_string(KB::String const&,KB::LookupType)::$_0>,void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9268;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void TIInputManager::phrase_candidates_for_string(TIInputManager *this@<X0>, const KB::String *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  KB::StaticDictionary::candidates_for_string(a4, *(*(this + 33) + 16), a2, 0);
  if (!a3 || KB::SetOnlySearchSupplementalLexiconForScope::s_shouldOnlySearchSupplementalLexicon == 1 && *(this + 144))
  {
    v8 = *(a4 + 8) - *a4;
    KB::DynamicDictionary::retrieve_phrase_candidates(*(*(this + 33) + 24), a2, *(*(this + 33) + 8), a3 ^ 1, a4);
    v9 = *(a4 + 8);
    v10 = (v8 + *a4);
    if (v10 != v9)
    {
      v12 = *(this + 33);
      while (2)
      {
        KB::DictionaryContainer::lookup(&v29, v12, v10);
        for (i = v29; i != v30; i = (i + 240))
        {
          if (!*(i + 28))
          {
            goto LABEL_50;
          }

          v14 = *(i + 1);
          if (!v14)
          {
            v14 = i + 16;
          }

          v15 = *i;
          if (*i)
          {
            v16 = *i;
            v17 = v14;
            while (*v17 != 45)
            {
              ++v17;
              if (!--v16)
              {
                v17 = &v15[v14];
                break;
              }
            }
          }

          else
          {
            v17 = v14;
          }

          if ((v17 - v14) == v15)
          {
LABEL_50:
            if ((*(i + 106) & 4) != 0 || *(i + 31))
            {
              v31 = &v29;
              std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v31);
              v11 = v9;
              if (v10 != v9)
              {
                v18 = (v10 + 240);
                if ((v10 + 240) == v9)
                {
                  v11 = v10;
                }

                else
                {
                  v11 = v10;
                  do
                  {
                    v19 = v18;
                    KB::DictionaryContainer::lookup(&v29, v12, v18);
                    for (j = v29; ; j = (j + 240))
                    {
                      if (j == v30)
                      {
                        v31 = &v29;
                        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v31);
                        KB::String::operator=(v11, v19);
                        KB::ByteString::operator=((v11 + 32), v10 + 136);
                        v25 = *(v10 + 36);
                        *(v11 + 56) = *(v10 + 74);
                        *(v11 + 48) = v25;
                        KB::String::operator=(v11 + 64, (v10 + 304));
                        v26 = *(v10 + 21);
                        v27 = *(v10 + 22);
                        v28 = *(v10 + 24);
                        *(v11 + 128) = *(v10 + 23);
                        *(v11 + 144) = v28;
                        *(v11 + 96) = v26;
                        *(v11 + 112) = v27;
                        KB::String::operator=(v11 + 160, (v10 + 400));
                        *(v11 + 192) = *(v10 + 432);
                        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v11 + 200, v10 + 55);
                        v11 += 240;
                        goto LABEL_44;
                      }

                      if (!*(j + 28))
                      {
                        goto LABEL_51;
                      }

                      v21 = *(j + 1);
                      if (!v21)
                      {
                        v21 = j + 16;
                      }

                      v22 = *j;
                      if (*j)
                      {
                        v23 = *j;
                        v24 = v21;
                        while (*v24 != 45)
                        {
                          ++v24;
                          if (!--v23)
                          {
                            v24 = &v22[v21];
                            break;
                          }
                        }
                      }

                      else
                      {
                        v24 = v21;
                      }

                      if ((v24 - v21) == v22)
                      {
LABEL_51:
                        if ((*(j + 106) & 4) != 0 || *(j + 31))
                        {
                          break;
                        }
                      }
                    }

                    v31 = &v29;
                    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v31);
LABEL_44:
                    v18 = (v19 + 240);
                    v10 = v19;
                  }

                  while ((v19 + 240) != v9);
                }
              }

              goto LABEL_47;
            }
          }
        }

        v31 = &v29;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v31);
        v10 = (v10 + 240);
        if (v10 != v9)
        {
          continue;
        }

        break;
      }
    }

    v11 = v9;
LABEL_47:
    std::vector<KB::Word>::erase(a4, v11, *(a4 + 8));
  }
}

void TIInputManager::phrase_completed_by_word(uint64_t a1@<X0>, KB::String *a2@<X1>, KB::String *a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  v105[2] = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    bzero(a7, 0x3E8uLL);

    KB::Candidate::Candidate(a7);
    return;
  }

  TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), buf);
  v14 = buf == a2 || KB::String::equal(a2, buf, 1, v12, v13);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  TIInputManager::tokenize_input_context(a2, &v76);
  v75 = 0.0;
  v68 = a7;
  if ((KB::LanguageModelContext::is_linguistically_void((a1 + 472)) & 1) == 0 && (v15 = *(a1 + 272)) != 0 && (*(*v15 + 16))(v15))
  {
    v16 = (*(**(a1 + 272) + 448))(*(a1 + 272), a1 + 472, &v75);
  }

  else
  {
    v16 = 0;
  }

  TIInputManager::tokenize_input_context((a1 + 440), &v73);
  v17 = *(a1 + 576);
  v18 = v73;
  if (v17)
  {
    v19 = v74[0];
    KB::String::String(buf, v17);
    if (v18 != v19 && v18 != buf)
    {
      do
      {
        if (KB::String::equal(v18, buf, 1, v20, v21))
        {
          break;
        }

        v18 = (v18 + 32);
        if (v18 == v19)
        {
          break;
        }
      }

      while (v18 != buf);
    }

    if (v18 != v19)
    {
      for (i = (v18 + 32); i != v19; i = (i + 32))
      {
        if (i != buf && !KB::String::equal(i, buf, 1, v20, v21))
        {
          KB::String::operator=(v18, i);
          v18 = (v18 + 32);
        }
      }
    }

    v23 = v74[0];
    if (v18 != v74[0])
    {
      while (v23 != v18)
      {
        v24 = *(v23 - 3);
        if (v24 && *(v23 - 26) == 1)
        {
          free(v24);
        }

        v23 = (v23 - 32);
      }

      v74[0] = v18;
    }

    if (*&buf[8])
    {
      v25 = buf[6] == 1;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      free(*&buf[8]);
    }

    v18 = v73;
  }

  v27 = v76;
  v26 = v77;
  v28 = v77 - v76;
  v29 = (v77 - v76) >> 5;
  if (v29 >= 1)
  {
    v30 = a5;
    v31 = v74[0];
    if (v74[1] - v74[0] >= v28)
    {
      while (v27 != v26)
      {
        KB::String::String(v31, v27);
        v27 = (v27 + 32);
        v31 = (v31 + 32);
      }

      v74[0] = v31;
    }

    else
    {
      v32 = v29 + ((v74[0] - v18) >> 5);
      if (v32 >> 59)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v33 = v74[1] - v18;
      if ((v74[1] - v18) >> 4 > v32)
      {
        v32 = v33 >> 4;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFE0)
      {
        v34 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      *&buf[32] = &v73;
      if (v34)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(v34);
      }

      v35 = (32 * ((v74[0] - v18) >> 5));
      *buf = 0;
      *&buf[8] = v35;
      *&buf[24] = 0;
      v36 = v35 + v28;
      do
      {
        v35 = (KB::String::String(v35, v27) + 32);
        v27 = (v27 + 32);
        v28 -= 32;
      }

      while (v28);
      *&buf[16] = v36;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(v31, v74[0], v36);
      *&buf[16] += v74[0] - v31;
      v74[0] = v31;
      v37 = (*&buf[8] + v73 - v31);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(v73, v31, v37);
      v38 = v73;
      v39 = v74[1];
      v73 = v37;
      *v74 = *&buf[16];
      *&buf[16] = v38;
      *&buf[24] = v39;
      *buf = v38;
      *&buf[8] = v38;
      std::__split_buffer<KB::String>::~__split_buffer(buf);
    }

    a5 = v30;
  }

  v65 = a6;
  v67 = v14;
  if (v14)
  {
    v40 = 1;
  }

  else
  {
    v40 = (v77 - v76) >> 5;
  }

  if (v40 > 4)
  {
LABEL_134:
    bzero(v68, 0x3E8uLL);
    KB::Candidate::Candidate(v68);
    goto LABEL_135;
  }

  v41 = 4;
  v66 = a5;
  while (v41 > (v74[0] - v73) >> 5 || v41 == 1 && !a5)
  {
LABEL_133:
    if (v40 > --v41)
    {
      goto LABEL_134;
    }
  }

  *buf = 0x100000;
  *&buf[4] = 0;
  buf[6] = 0;
  *&buf[8] = 0;
  buf[16] = 0;
  KB::string_join(&v103, v74[0] - 4 * v41, v74[0], buf);
  if (*&buf[8] && buf[6] == 1)
  {
    free(*&buf[8]);
  }

  if (v104)
  {
    v42 = v104;
  }

  else
  {
    v42 = v105;
  }

  if (v103)
  {
    v43 = v103;
    v44 = v42;
    while (*v44 != 10)
    {
      ++v44;
      if (!--v43)
      {
        v44 = v42 + v103;
        break;
      }
    }
  }

  else
  {
    v44 = v42;
  }

  if (v44 - v42 != v103)
  {
    if (v104 && BYTE6(v103) == 1)
    {
      free(v104);
    }

    goto LABEL_133;
  }

  TIInputManager::phrase_candidates_for_string(a1, &v103, a5, &v71);
  if (v71 == v72)
  {
    goto LABEL_129;
  }

  if (v67)
  {
    KB::String::operator=(a3, &v103);
  }

  else
  {
    v98.lexicon_id = 0x100000;
    LOWORD(v98.word_id) = 0;
    BYTE2(v98.word_id) = 0;
    v99 = 0;
    v100 = 0;
    KB::string_join(&v101, v74[0] - 4 * v41, (v76 + v74[0] - v77), &v98);
    TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v95);
    KB::String::String(buf, &v101);
    KB::String::append(buf, v95);
    KB::String::operator=(a3, buf);
    if (*&buf[8] && buf[6] == 1)
    {
      free(*&buf[8]);
    }

    if (v97 && v96 == 1)
    {
      free(v97);
    }

    if (v102 && BYTE6(v101) == 1)
    {
      free(v102);
    }

    if (v99 && BYTE2(v98.word_id) == 1)
    {
      free(v99);
    }
  }

  v46 = v71;
  v45 = v72;
  if (v71 == v72)
  {
LABEL_129:
    *buf = &v71;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](buf);
    if (v104)
    {
      if (BYTE6(v103) == 1)
      {
        free(v104);
      }
    }

    a5 = v66;
    goto LABEL_133;
  }

  while (1)
  {
    *buf = &unk_283FDCF10;
    *&buf[8] = 1;
    if (!KB::InputSegmentFilter::string_preserves_surface_form_features(buf, v46, &v103, 0, 0))
    {
      goto LABEL_123;
    }

    v48 = *(v46 + 136);
    if (v16 != v48 && v48 != 0 && v16 != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v55 = "";
        if (*v46)
        {
          v55 = *(v46 + 8);
          if (!v55)
          {
            v55 = (v46 + 16);
          }
        }

        *buf = 136316162;
        *&buf[4] = "phrase_completed_by_word";
        *&buf[12] = 2080;
        *&buf[14] = v55;
        *&buf[22] = 1024;
        *&buf[24] = v48;
        *&buf[28] = 1024;
        *&buf[30] = v16;
        *&buf[34] = 2048;
        *&buf[36] = v75;
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Phrase candidate  %s was found but is not from the most probable lexicon (word.lexicon_id = %d, current_lexicon_id = %d; language confidence = %f)", buf, 0x2Cu);
      }

      goto LABEL_123;
    }

    v51 = *(v46 + 104);
    if ((v51 & 0x800012) != 0 || (*(v46 + 104) & 0x2080) == 0x80 || (v51 & 0x2042000) == 0x2000000)
    {
      if (a4)
      {
        KB::String::String(v78, a3);
        v80 = 1;
        create_candidate_from_word(v68, v46, v78);
        if (v80 != 1)
        {
          goto LABEL_178;
        }

        v60 = v79;
        if (!v79)
        {
          goto LABEL_178;
        }

        v61 = v78[6];
        goto LABEL_160;
      }

      goto LABEL_123;
    }

    if (*(a1 + 731) != 1)
    {
      v56 = TILocaleIdentifierForLexiconID(*(v46 + 136));
      KB::string_to_lowercase(&v101, v46, v56);
      v98 = *(v46 + 136);
      KB::Word::Word(buf, &v101, &v98, 0);
      if (v102 && BYTE6(v101) == 1)
      {
        free(v102);
      }

      v58 = KB::string_capitalization(a3, v57);
      v59 = v87 & 0xFFFFFFFE;
      if (v58 == 1)
      {
        ++v59;
      }

      v88 = v58;
      v87 = v59;
      KB::Word::capitalized_string(&v101, buf);
      v81 = 0x100000;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      KB::String::operator=(&v81, &v101);
      v85 = 1;
      create_candidate_from_word(v68, v46, &v81);
      if (v85 == 1 && v84 && v83 == 1)
      {
        free(v84);
      }

      if (v102 && BYTE6(v101) == 1)
      {
        free(v102);
      }

      KB::Word::~Word(buf);
      goto LABEL_178;
    }

    if (*(v46 + 224) && KB::CollatorWrapper::sortkey_starts_with((*(*(a1 + 264) + 8) + 72), v46, a3))
    {
      break;
    }

    if (v41 == 1 && !*a3)
    {
      TIInputManager::apply_shift_context_to_prediction(a1, v65, v46);
      goto LABEL_157;
    }

    v52 = KB::string_capitalization(a3, v47);
    v53 = *(v46 + 120);
    if ((v52 & ~v53) == 0)
    {
      goto LABEL_157;
    }

    if ((v52 & ~v53) == 1)
    {
      v62 = *(v46 + 104);
      if ((v62 & 0x20) == 0)
      {
        *(v46 + 120) = v53 | 1;
        v63 = v53 >= 2;
        v64 = v62 & 0xFFFFFFDE;
        if (!v63)
        {
          ++v64;
        }

        *(v46 + 104) = v64;
      }

LABEL_157:
      v89[0] = 0;
      v91 = 0;
      create_candidate_from_word(v68, v46, v89);
      if (v91 != 1)
      {
        goto LABEL_178;
      }

      v60 = v90;
      if (!v90)
      {
        goto LABEL_178;
      }

      v61 = v89[6];
LABEL_160:
      if (v61 == 1)
      {
        free(v60);
      }

      goto LABEL_178;
    }

LABEL_123:
    v46 += 240;
    if (v46 == v45)
    {
      goto LABEL_129;
    }
  }

  if (!v67)
  {
    v98.lexicon_id = 0x100000;
    LOWORD(v98.word_id) = 0;
    BYTE2(v98.word_id) = 0;
    v99 = 0;
    v100 = 0;
    KB::string_join(&v101, v74[0] - 4 * v41, (v76 + v74[0] - v77), &v98);
    TIInputManager::input_substring((a1 + 8), 0, -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3), v95);
    KB::String::String(buf, &v101);
    KB::String::append(buf, v95);
    KB::String::operator=(a3, buf);
    if (*&buf[8] && buf[6] == 1)
    {
      free(*&buf[8]);
    }

    if (v97 && v96 == 1)
    {
      free(v97);
    }

    if (v102 && BYTE6(v101) == 1)
    {
      free(v102);
    }

    if (v99 && BYTE2(v98.word_id) == 1)
    {
      free(v99);
    }
  }

  v92[0] = 0;
  v94 = 0;
  create_candidate_from_word(v68, v46, v92);
  if (v94 == 1)
  {
    v60 = v93;
    if (v93)
    {
      v61 = v92[6];
      goto LABEL_160;
    }
  }

LABEL_178:
  *buf = &v71;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](buf);
  if (v104 && BYTE6(v103) == 1)
  {
    free(v104);
  }

LABEL_135:
  *buf = &v73;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v76;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](buf);
}

void create_candidate_from_word(KB::Candidate *a1, uint64_t a2, KB::String *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a3 + 32) == 1)
  {
    KB::String::String(&v11, a3);
  }

  else
  {
    KB::Word::capitalized_string(&v11, a2);
  }

  KB::Candidate::Candidate(a1, &v11, 0);
  if (v12)
  {
    v5 = BYTE6(v11) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v12);
  }

  if ((*(a2 + 105) & 1) != 0 && *a1)
  {
    v6 = 240 * *a1;
    v7 = (*(a1 + 1) + 104);
    do
    {
      *v7 |= 0x100u;
      v7 += 60;
      v6 -= 240;
    }

    while (v6);
  }

  if (*(a2 + 224))
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(a1 + 1) + 200;
      v10 = 240 * v8;
      do
      {
        if (v9 - 200 != a2)
        {
          *(v9 + 32) = *(a2 + 232);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v9, *(a2 + 216));
        }

        v9 += 240;
        v10 -= 240;
      }

      while (v10);
    }
  }
}

uint64_t std::__split_buffer<KB::String>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      v5 = *(v2 - 24);
      if (v5 && *(v2 - 26) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::String>,KB::String*>(KB::String *this, KB::String *a2, uint64_t a3)
{
  if (this != a2)
  {
    v5 = this;
    v6 = this;
    do
    {
      *a3 = 0x100000;
      *(a3 + 4) = 0;
      *(a3 + 6) = 0;
      *(a3 + 8) = 0;
      KB::String::operator=(a3, v6);
      v6 = (v6 + 32);
      a3 += 32;
    }

    while (v6 != a2);
    do
    {
      v7 = *(v5 + 1);
      if (v7)
      {
        if (*(v5 + 6) == 1)
        {
          free(v7);
        }
      }

      v5 = (v5 + 32);
    }

    while (v5 != a2);
  }
}

BOOL TIInputManager::word_has_surface_form(TIInputManager *this, const KB::Word *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  {
    KB::String::String(&TIInputManager::word_has_surface_form(KB::Word const&)const::ko, "ko");
    __cxa_atexit(KB::String::~String, &TIInputManager::word_has_surface_form(KB::Word const&)const::ko, &dword_22CA55000);
  }

  {
    KB::String::String(&TIInputManager::word_has_surface_form(KB::Word const&)const::ta, "ta");
    __cxa_atexit(KB::String::~String, &TIInputManager::word_has_surface_form(KB::Word const&)const::ta, &dword_22CA55000);
  }

  {
    KB::String::String(&TIInputManager::word_has_surface_form(KB::Word const&)const::chr, "chr");
    __cxa_atexit(KB::String::~String, &TIInputManager::word_has_surface_form(KB::Word const&)const::chr, &dword_22CA55000);
  }

  v4 = *(this + 52);
  if (TIInputManager::word_has_surface_form(KB::Word const&)const::ko <= v4)
  {
    v5 = *(this + 14) ? *(this + 14) : this + 120;
    v6 = qword_280FAC2C8 ? qword_280FAC2C8 : algn_280FAC2D0;
    if (!strncmp(v5, v6, TIInputManager::word_has_surface_form(KB::Word const&)const::ko))
    {
      return 0;
    }
  }

  if (TIInputManager::word_has_surface_form(KB::Word const&)const::ta <= v4 && (*(this + 14) ? (v7 = *(this + 14)) : (v7 = this + 120), qword_280FAC2A8 ? (v8 = qword_280FAC2A8) : (v8 = algn_280FAC2B0), !strncmp(v7, v8, TIInputManager::word_has_surface_form(KB::Word const&)const::ta)))
  {
    KB::Word::capitalized_string(&v26, a2);
    v12 = v27;
    if (v27)
    {
      v13 = v27;
    }

    else
    {
      v13 = v28;
    }

    *&v22 = v13;
    v14 = v26;
    DWORD2(v22) = 0;
    HIDWORD(v22) = v26;
    LODWORD(v23) = 0;
    KB::String::iterator::initialize(&v22);
    v18 = v13;
    v19 = v14;
    v20 = v14;
    v21 = 0;
    KB::String::iterator::initialize(&v18);
    v24 = v22;
    v25 = v23;
    v15 = v19;
    if (DWORD2(v22) == v19)
    {
      is_tamil_script = 0;
    }

    else
    {
      do
      {
        is_tamil_script = character_is_tamil_script();
        if (is_tamil_script)
        {
          break;
        }

        KB::String::iterator::operator++(&v24);
      }

      while (DWORD2(v24) != v15);
      v12 = v27;
    }

    if (v12)
    {
      v16 = BYTE6(v26) == 1;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      free(v12);
    }
  }

  else if (TIInputManager::word_has_surface_form(KB::Word const&)const::chr <= v4)
  {
    if (*(this + 14))
    {
      v10 = *(this + 14);
    }

    else
    {
      v10 = this + 120;
    }

    if (qword_280FAC288)
    {
      v11 = qword_280FAC288;
    }

    else
    {
      v11 = algn_280FAC290;
    }

    return strncmp(v10, v11, TIInputManager::word_has_surface_form(KB::Word const&)const::chr) != 0;
  }

  else
  {
    return 1;
  }

  return is_tamil_script;
}

uint64_t TIInputManager::dictionary_contains_word(TIInputManager *this, const KB::String *a2, const KB::String *a3, char a4)
{
  v5 = *(this + 33);
  if (!v5)
  {
    return 0;
  }

  KB::DictionaryContainer::lookup(&v20, v5, a2);
  v9 = v21;
  v10 = v20;
  if (v20 == v21)
  {
    v11 = 0;
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v14 = ___ZNK14TIInputManager24dictionary_contains_wordERKN2KB6StringES3_b_block_invoke;
    v15 = &__block_descriptor_tmp_30;
    v16 = this;
    v17 = a3;
    v18 = a2;
    v19 = a4;
    do
    {
      v11 = (v14)(v13, v10);
      if (v11)
      {
        break;
      }

      v10 = (v10 + 240);
    }

    while (v10 != v9);
  }

  v22 = &v20;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v22);
  return v11;
}

BOOL ___ZNK14TIInputManager24dictionary_contains_wordERKN2KB6StringES3_b_block_invoke(uint64_t a1, const KB::Word *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  has_surface_form = TIInputManager::word_has_surface_form(v4, a2);
  v6 = 48;
  if (has_surface_form)
  {
    v6 = 40;
  }

  v7 = *(a1 + v6);
  v8 = *(*(v4 + 33) + 8);
  KB::Word::capitalized_string(&v19, a2);
  v10 = KB::CollatorWrapper::sortkey_compare_strings((v8 + 72), &v19, v7, v9);
  if (v20)
  {
    v11 = BYTE6(v19) == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    free(v20);
  }

  v17 = 0;
  if (v10)
  {
    return 0;
  }

  KB::Word::capitalized_string(&v19, a2);
  v18[1] = 1;
  v18[0] = &unk_283FDCF10;
  v12 = KB::InputSegmentFilter::string_preserves_surface_form_features(v18, &v19, v7, &v17, 0);
  if (v20 && BYTE6(v19) == 1)
  {
    free(v20);
  }

  if (!v12 || (v17 & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 56) != 1)
  {
    return 1;
  }

  KB::Word::capitalized_string(&v19, a2);
  v13 = &v19 == v7 || KB::String::equal(&v19, v7, 1, v15, v16);
  if (v20 && BYTE6(v19) == 1)
  {
    free(v20);
  }

  return v13;
}

void TIInputManager::matching_words_from_dictionary(TIInputManager *this@<X0>, const KB::String *a2@<X1>, const KB::String *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *(this + 33);
  if (v7)
  {
    KB::DictionaryContainer::lookup(&v23, v7, a2);
    v11 = v24;
    v12 = v23;
    if (v23 != v24)
    {
      v27 = this;
      KB::String::String(v28, a3);
      KB::String::String(v30, a2);
      v32 = a4;
      do
      {
        v13 = v27;
        if (TIInputManager::word_has_surface_form(v27, v12))
        {
          v14 = v28;
        }

        else
        {
          v14 = v30;
        }

        v15 = *(*(v13 + 33) + 8);
        KB::Word::capitalized_string(&v33, v12);
        v17 = KB::CollatorWrapper::sortkey_compare_strings((v15 + 72), &v33, v14, v16);
        if (v34)
        {
          v18 = BYTE6(v33) == 1;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          free(v34);
        }

        v25 = 0;
        if (!v17)
        {
          KB::Word::capitalized_string(&v33, v12);
          v26[0] = &unk_283FDCF10;
          v26[1] = 1;
          v19 = KB::InputSegmentFilter::string_preserves_surface_form_features(v26, &v33, v14, &v25, 0);
          if (v34 && BYTE6(v33) == 1)
          {
            free(v34);
          }

          if (v19 && (v25 & 1) == 0)
          {
            if ((v32 & 1) == 0)
            {
              goto LABEL_24;
            }

            KB::Word::capitalized_string(&v33, v12);
            v22 = KB::String::equal(&v33, v14, 1, v20, v21);
            if (v34 && BYTE6(v33) == 1)
            {
              free(v34);
            }

            if (v22)
            {
LABEL_24:
              std::vector<KB::Word>::push_back[abi:nn200100](a5, v12);
            }
          }
        }

        v12 = (v12 + 240);
      }

      while (v12 != v11);
      if (v31 && v30[6] == 1)
      {
        free(v31);
      }

      if (v29)
      {
        if (v28[6] == 1)
        {
          free(v29);
        }
      }
    }

    v33 = &v23;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v33);
  }
}

uint64_t TIInputManager::is_input_hit_test_corrected(TIInputManager *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 24) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 24);
  }

  if (v3 <= a2)
  {
    return 0;
  }

  LODWORD(v4) = a2;
  if ((*(**(this + 28) + 280))(*(this + 28)))
  {
    return 1;
  }

  while (v3 - 1 != v4)
  {
    v4 = (v4 + 1);
    if ((*(**(this + 28) + 280))(*(this + 28), v4))
    {
      return v4 < v3;
    }
  }

  LODWORD(v4) = v3;
  return v4 < v3;
}

uint64_t KB::FilterZeroProbability::filter_candidates(KB::FilterZeroProbability *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 7);
  v7[0] = &unk_283FD96F0;
  v7[3] = v7;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v5, "FilterZeroProbability", v7);
  return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v7);
}

BOOL std::__function::__func<KB::FilterZeroProbability::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterZeroProbability::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v3 = *a3;
  v4 = expf(*(a2 + 744));
  v5 = v4;
  if (v3 && v4 == 0.0)
  {
    KB::String::append(v3, "omega=0", 0xFFFFuLL);
  }

  return v5 == 0.0;
}

uint64_t KB::FilterIncomplete::filter_candidates(KB::FilterIncomplete *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 7);
  v7[0] = &unk_283FD9738;
  v7[3] = v7;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v5, "FilterIncomplete", v7);
  return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v7);
}

BOOL std::__function::__func<KB::FilterIncomplete::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterIncomplete::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, void *a2, KB::String **a3)
{
  if (*a2)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = *(v4 + 132);
  v6 = *(v4 - 108);
  v3 = (v5 & 0x10000000 | v6 & 0x20000000) != 0;
  if (*a3)
  {
    v7 = (v5 & 0x10000000 | v6 & 0x20000000) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = "no";
    if ((v5 & 0x10000000) != 0)
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    if ((v6 & 0x20000000) != 0)
    {
      v8 = "yes";
    }

    KB::String::append_format(*a3, "needs_prefix=%s, needs_suffix=%s", v9, v8);
    return 1;
  }

  return v3;
}

uint64_t KB::FilterControlCharacters::filter_candidates(KB::FilterControlCharacters *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 7);
  v7[0] = &unk_283FD9780;
  v7[3] = v7;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v5, "FilterControlCharacters", v7);
  return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v7);
}

BOOL std::__function::__func<KB::FilterControlCharacters::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterControlCharacters::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v4 = *a3;
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  has_control_characters = KB::string_has_control_characters((a2 + 888), a2);
  v6 = has_control_characters;
  if (v4)
  {
    v7 = !has_control_characters;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    KB::String::append_format(v4, "candidate word contains control characters");
  }

  return v6;
}

void KB::FilterNotSuggestibleForInput::filter_candidates(KB::FilterNotSuggestibleForInput *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 9) != 1)
  {
    goto LABEL_9;
  }

  v7 = *(a4 + 2);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *(v7 + 8);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    while ((*(*(v9 + 1) + 240 * *v9 - 134) & 0x80) != 0 || (KB::CandidateFilter::candidate_matches_input(v9, a3, v8 + 144) & 1) == 0)
    {
      v9 = (v9 + 1000);
      if (v9 == v10)
      {
        return;
      }
    }

LABEL_9:
    KB::Candidate::Candidate(v14, a3);
    v11 = *(a4 + 2);
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }

    v12 = *(v11 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v11);
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::__value_func[abi:nn200100](v13, v12 + 144);
    operator new();
  }
}

uint64_t std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](uint64_t a1)
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