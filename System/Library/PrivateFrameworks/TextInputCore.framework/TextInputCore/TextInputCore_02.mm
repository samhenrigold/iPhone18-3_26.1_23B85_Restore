uint64_t *std::vector<KB::Candidate>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        KB::Candidate::operator=(v7, v4);
        v4 += 125;
        v7 += 125;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 125;
      KB::Candidate::~Candidate(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void KB::FilterInvalidTextReplacement::filter_candidates(KB::FilterInvalidTextReplacement *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  KB::Candidate::capitalized_string(&v9, a3);
  v6 = *(a4 + 7);
  v8[0] = &unk_283FD72D0;
  v8[1] = &v9;
  v8[3] = v8;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v6, "FilterInvalidTextReplacement", v8);
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v8);
  if (v10)
  {
    v7 = BYTE6(v9) == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v10);
  }
}

uint64_t std::__function::__func<KB::FilterInvalidTextReplacement::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterInvalidTextReplacement::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, const KB::String *a2, KB::String **a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    return 0;
  }

  v17 = *a3;
  v3 = *(a2 + 1);
  v4 = *(a1 + 8);
  v5 = 240 * *a2;
  while ((*(v3 + 106) & 1) == 0)
  {
LABEL_8:
    v3 = (v3 + 240);
    v5 -= 240;
    if (!v5)
    {
      return 0;
    }
  }

  if (!*v3)
  {
    goto LABEL_11;
  }

  v6 = KB::ns_string(v3, a2);
  v7 = [MEMORY[0x277CCA900] letterCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  if (![v8 length] || (KB::ns_string(v4, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stringByTrimmingCharactersInSet:", v7), v11 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v8), v11, v10, isEqualToString))
  {

    goto LABEL_8;
  }

LABEL_11:
  if (v17)
  {
    KB::Candidate::capitalized_string(&v18, a2);
    v14 = v19;
    if (!v19)
    {
      v14 = v20;
    }

    if (v18)
    {
      v15 = v14;
    }

    else
    {
      v15 = "";
    }

    KB::String::append_format(v17, "Candidate '%s' contains invalid text replacement", v15);
    if (v19)
    {
      if (BYTE6(v18) == 1)
      {
        free(v19);
      }
    }
  }

  return 1;
}

uint64_t std::__function::__func<KB::FilterInvalidTextReplacement::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterInvalidTextReplacement::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD72D0;
  a2[1] = v2;
  return result;
}

uint64_t KB::FilterWithoutSupplementalWords::filter_candidates(KB::FilterWithoutSupplementalWords *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 7);
  v7[0] = &unk_283FD7318;
  v7[3] = v7;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v5, "FilterWithoutSupplementalWords", v7);
  return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v7);
}

BOOL std::__function::__func<KB::FilterWithoutSupplementalWords::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterWithoutSupplementalWords::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (*a2)
  {
    v4 = 240 * *a2 - 240;
    v5 = (*(a2 + 1) + 224);
    do
    {
      v6 = *v5;
      v5 += 30;
      v7 = v6 != 0;
      if (v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 == 0;
      }

      v4 -= 240;
    }

    while (!v8);
    if (!v3)
    {
      return !v7;
    }
  }

  else
  {
    v7 = 0;
    if (!v3)
    {
      return !v7;
    }
  }

  if (!v7)
  {
    KB::Candidate::capitalized_string(&v12, a2);
    v9 = v13;
    if (!v13)
    {
      v9 = v14;
    }

    if (v12)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    KB::String::append_format(v3, "Candidate '%s' does not contain supplemental lexicons", v10);
    if (v13 && BYTE6(v12) == 1)
    {
      free(v13);
    }
  }

  return !v7;
}

uint64_t KB::FilterPartOfHyphenatedWord::filter_candidates(KB::FilterPartOfHyphenatedWord *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v6[4] = *MEMORY[0x277D85DE8];
  if ((*(a3 + 3173) & 1) == 0)
  {
    v4 = *(a4 + 7);
    v6[0] = &unk_283FD7360;
    v6[3] = v6;
    KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v4, "FilterPartOfHyphenatedWord", v6);
    return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v6);
  }

  return result;
}

uint64_t std::__function::__func<KB::FilterPartOfHyphenatedWord::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterPartOfHyphenatedWord::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    return 0;
  }

  v3 = *a3;
  v4 = 240 * *a2 - 240;
  v5 = (*(a2 + 1) + 104);
  do
  {
    v7 = *v5;
    v5 += 60;
    v6 = v7;
    if ((v7 & 0x10) != 0)
    {
      break;
    }

    v8 = v4;
    v4 -= 240;
  }

  while (v8);
  result = (v6 >> 4) & 1;
  if (v3 && (v6 & 0x10) != 0)
  {
    KB::Candidate::capitalized_string(&v12, a2);
    v10 = v13;
    if (!v13)
    {
      v10 = v14;
    }

    if (v12)
    {
      v11 = v10;
    }

    else
    {
      v11 = "";
    }

    KB::String::append_format(v3, "Candidate '%s' is an incomplete hyphenated word", v11);
    if (v13)
    {
      if (BYTE6(v12) == 1)
      {
        free(v13);
      }
    }

    return 1;
  }

  return result;
}

void KB::FilterCommonLearnedTypos::filter_candidates(KB::FilterCommonLearnedTypos *this, KB::Candidate **a2, KB::Word **a3, const KB::CandidateFilterResources *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = *(this + 8);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9 && *(this + 7))
    {
      goto LABEL_88;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 3);
  v11 = *(a4 + 4);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    v12 = *(a4 + 3);
    v13 = *(a4 + 4);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = (*(*v12 + 16))(v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = 0;
  if (v11)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

LABEL_15:
  if (!v14)
  {
    goto LABEL_88;
  }

  v15 = *(a4 + 3);
  v16 = *(a4 + 4);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(this + 8);
  *(this + 7) = v15;
  *(this + 8) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (*(this + 5))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(*(this + 4));
    *(this + 4) = 0;
    v18 = *(this + 3);
    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        *(*(this + 2) + 8 * i) = 0;
      }
    }

    *(this + 5) = 0;
  }

  v20 = *(this + 8);
  if (!v20)
  {
    goto LABEL_88;
  }

  v21 = std::__shared_weak_count::lock(v20);
  if (!v21)
  {
    goto LABEL_88;
  }

  v22 = v21;
  v23 = *(this + 7);
  if (!v23 || ((*(*v23 + 232))(&v88), (v24 = v88) == 0))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    goto LABEL_88;
  }

  v25 = v24;
  v26 = [v24 objectForKeyedSubscript:*MEMORY[0x277D23128]];
  v27 = v26;
  if (!v26)
  {
    goto LABEL_84;
  }

  if (![v26 count])
  {
    goto LABEL_84;
  }

  v28 = [v27 objectAtIndexedSubscript:0];
  if (!v28)
  {
    goto LABEL_84;
  }

  v68 = v28;
  v29 = [v28 objectForKeyedSubscript:@"URL"];
  if (!v29)
  {
    goto LABEL_83;
  }

  v62 = v27;
  v63 = v22;
  v64 = a4;
  v65 = a3;
  v66 = a2;
  v67 = v9;
  v61 = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v29];
  *v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v70 = [v30 countByEnumeratingWithState:v82 objects:&v88 count:16];
  if (!v70)
  {
    goto LABEL_82;
  }

  v69 = *v83;
  do
  {
    for (j = 0; j != v70; ++j)
    {
      if (*v83 != v69)
      {
        objc_enumerationMutation(v30);
      }

      v32 = *(v82[1] + j);
      *__n = 0u;
      v80 = 0u;
      v81 = 1065353216;
      v33 = [v30 objectForKeyedSubscript:v32];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v35 = [v30 objectForKeyedSubscript:v32];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v75 objects:&v87 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v76;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v76 != v38)
              {
                objc_enumerationMutation(v35);
              }

              std::string::basic_string[abi:nn200100]<0>(__p, [*(*(&v75 + 1) + 8 * k) UTF8String]);
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(__n, __p, __p);
              if (v72 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v75 objects:&v87 count:16];
          }

          while (v37);
        }
      }

      else
      {
        v35 = [v30 objectForKeyedSubscript:v32];
        std::string::basic_string[abi:nn200100]<0>(__p, [v35 UTF8String]);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(__n, __p, __p);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::string::basic_string[abi:nn200100]<0>(__p, [v32 UTF8String]);
      memset(v73, 0, sizeof(v73));
      v74 = v81;
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(v73, __n[1]);
      for (m = v80; m; m = *m)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v73, (m + 2), (m + 2));
      }

      if ((v72 & 0x80u) == 0)
      {
        v41 = __p;
      }

      else
      {
        v41 = __p[0];
      }

      if ((v72 & 0x80u) == 0)
      {
        v42 = v72;
      }

      else
      {
        v42 = __p[1];
      }

      v43 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v41, v42);
      v44 = v43;
      v45 = *(this + 24);
      if (!*&v45)
      {
        goto LABEL_77;
      }

      v46 = vcnt_s8(v45);
      v46.i16[0] = vaddlv_u8(v46);
      v47 = v46.u32[0];
      if (v46.u32[0] > 1uLL)
      {
        v48 = v43;
        if (v43 >= *&v45)
        {
          v48 = v43 % *&v45;
        }
      }

      else
      {
        v48 = (*&v45 - 1) & v43;
      }

      v49 = *(*(this + 2) + 8 * v48);
      if (!v49 || (v50 = *v49) == 0)
      {
LABEL_77:
        operator new();
      }

      while (1)
      {
        v51 = v50[1];
        if (v51 == v44)
        {
          break;
        }

        if (v47 > 1)
        {
          if (v51 >= *&v45)
          {
            v51 %= *&v45;
          }
        }

        else
        {
          v51 &= *&v45 - 1;
        }

        if (v51 != v48)
        {
          goto LABEL_77;
        }

LABEL_76:
        v50 = *v50;
        if (!v50)
        {
          goto LABEL_77;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:nn200100](v50 + 2, __p))
      {
        goto LABEL_76;
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v73);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__n);
    }

    v70 = [v30 countByEnumeratingWithState:v82 objects:&v88 count:16];
  }

  while (v70);
LABEL_82:

  a2 = v66;
  v9 = v67;
  a4 = v64;
  a3 = v65;
  v22 = v63;
  v29 = v61;
  v27 = v62;
LABEL_83:

LABEL_84:
  std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  CFRelease(v25);
LABEL_88:
  v88 = 0u;
  v89 = 0u;
  v90 = 1065353216;
  if (*a3)
  {
    v52 = a4;
    v53 = a3[1];
    v54 = (v53 + 240 * *a3);
    do
    {
      KB::Word::capitalized_string(&v87, v53);
      size = v87.__r_.__value_.__l.__size_;
      if (!v87.__r_.__value_.__l.__size_)
      {
        size = &v87.__r_.__value_.__s.__data_[16];
      }

      if (LOWORD(v87.__r_.__value_.__l.__data_))
      {
        v56 = size;
      }

      else
      {
        v56 = "";
      }

      std::string::basic_string[abi:nn200100]<0>(v82, v56);
      if (v87.__r_.__value_.__l.__size_)
      {
        v57 = v87.__r_.__value_.__s.__data_[6] == 1;
      }

      else
      {
        v57 = 0;
      }

      if (v57)
      {
        free(v87.__r_.__value_.__l.__size_);
      }

      v58 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(this + 2, v82);
      if (v58)
      {
        for (n = v58[7]; n; n = *n)
        {
          if (*(n + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v87, n[2], n[3]);
          }

          else
          {
            v87 = *(n + 2);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v88, &v87, &v87);
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }
        }
      }

      if (SBYTE7(v83) < 0)
      {
        operator delete(v82[0]);
      }

      v53 = (v53 + 240);
    }

    while (v53 != v54);
    if (*(&v89 + 1))
    {
      v60 = *(v52 + 7);
      v86[0] = &unk_283FD73A8;
      v86[1] = &v88;
      v86[2] = a3;
      v86[3] = v86;
      KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v60, "FilterCommonLearnedTypos", v86);
      std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v86);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v88);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
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
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__func<KB::FilterCommonLearnedTypos::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCommonLearnedTypos::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    return 0;
  }

  v5 = *a3;
  v6 = *(a2 + 1);
  v7 = *(a1 + 8);
  v8 = 240 * *a2;
  while (1)
  {
    KB::Word::capitalized_string(&v20, v6);
    v9 = v21;
    if (!v21)
    {
      v9 = v22;
    }

    if (v20)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, v10);
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(v7, &__p);
    if ((v19[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    if (v21 && BYTE6(v20) == 1)
    {
      free(v21);
    }

    if (v11)
    {
      break;
    }

    v6 = (v6 + 240);
    v8 -= 240;
    if (!v8)
    {
      return 0;
    }
  }

  if (v5)
  {
    KB::Candidate::capitalized_string(&v20, a2);
    v13 = v21;
    if (!v21)
    {
      v13 = v22;
    }

    if (v20)
    {
      v14 = v13;
    }

    else
    {
      v14 = "";
    }

    KB::Candidate::capitalized_string(&__p, *(a1 + 16));
    v15 = v18;
    if (!v18)
    {
      v15 = v19;
    }

    if (__p)
    {
      v16 = v15;
    }

    else
    {
      v16 = "";
    }

    KB::String::append_format(v5, "Candidate '%s' & user input '%s' is/has a known pair of autocorrection candidates to avoid", v14, v16);
    if (v18 && BYTE6(__p) == 1)
    {
      free(v18);
    }

    if (v21)
    {
      if (BYTE6(v20) == 1)
      {
        free(v21);
      }
    }
  }

  return 1;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

__n128 std::__function::__func<KB::FilterCommonLearnedTypos::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCommonLearnedTypos::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD73A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
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
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v1 + 5));
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void KB::FilterCommonLearnedTypos::~FilterCommonLearnedTypos(KB::FilterCommonLearnedTypos *this)
{
  *this = &unk_283FD8A68;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(this + 16);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD8A68;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(this + 16);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t KB::FilterAppNames::filter_candidates(KB::FilterAppNames *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 2);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *(v7 + 8) + 144;
  WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
  v9 = *(a4 + 7);
  v11[0] = &unk_283FD73F0;
  v11[1] = v8;
  v11[2] = a3;
  v11[3] = v11;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v9, "FilterAppNames", v11);
  return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v11);
}

uint64_t std::__function::__func<KB::FilterAppNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterAppNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3, uint64_t a4, uint64_t a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = KB::Candidate::num_words_matching_input(a2, *(a1 + 16), *(a1 + 8), a4, a5);
  if (*a2 == v7)
  {
    return 0;
  }

  v8 = (240 * v7 + *(a2 + 1) + 104);
  v9 = -240 * v7 + 240 * *a2;
  while (1)
  {
    v10 = *v8;
    v8 += 60;
    if (v10 < 0)
    {
      break;
    }

    v9 -= 240;
    if (!v9)
    {
      return 0;
    }
  }

  if (v6)
  {
    KB::Candidate::capitalized_string(&v14, a2);
    v12 = v15;
    if (!v15)
    {
      v12 = v16;
    }

    if (v14)
    {
      v13 = v12;
    }

    else
    {
      v13 = "";
    }

    KB::String::append_format(v6, "Candidate '%s' is a completion for an app name", v13);
    if (v15)
    {
      if (BYTE6(v14) == 1)
      {
        free(v15);
      }
    }
  }

  return 1;
}

__n128 std::__function::__func<KB::FilterAppNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterAppNames::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD73F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void KB::LanguageModelContext::pop_first_sentence(KB::LanguageModelContext *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = v3 + 8;
  if (v3 + 8 == v2)
  {
    goto LABEL_6;
  }

  while (*(v4 + 1) != 1)
  {
    v4 += 8;
    if (v4 == v2)
    {
      v4 = *(this + 3);
      break;
    }
  }

  if (v4 != v3)
  {
LABEL_6:
    v5 = v2 - v4;
    if (v2 == v4)
    {
      v7 = v4 - v3;
      v6 = *(this + 2);
    }

    else
    {
      memmove(*(this + 2), v4, v2 - v4);
      v6 = *(this + 2);
      v7 = v4 - v6;
    }

    *(this + 3) = &v3[v5];
    v8 = v7 >> 3;
    if (v4 != v6)
    {
      v9 = *(this + 10);
      v10 = *(this + 11);
      if ((v9 + 24 * v8) != v10)
      {
        v11 = 24 * v8;
        do
        {
          if (*(v9 + 23) < 0)
          {
            operator delete(*v9);
          }

          v12 = (v9 + v11);
          v13 = *(v9 + 24 * v8);
          *(v9 + 16) = *(v9 + v11 + 16);
          *v9 = v13;
          v9 += 24;
          v12[23] = 0;
          *v12 = 0;
        }

        while ((v9 + v11) != v10);
        v10 = *(this + 11);
      }

      while (v10 != v9)
      {
        v14 = *(v10 - 1);
        v10 -= 3;
        if (v14 < 0)
        {
          operator delete(*v10);
        }
      }

      *(this + 11) = v9;
    }
  }

  language_modeling::v1::LinguisticContext::remove_first((this + 64));
  --*(this + 6);
  v15 = *this;
  if (*this)
  {

    std::vector<KB::LanguageModelContext>::clear[abi:nn200100](v15);
  }
}

void std::vector<KB::LanguageModelContext>::clear[abi:nn200100](void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 5;
    do
    {
      v8 = v4 + 2;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v8);
      language_modeling::v1::LinguisticContext::~LinguisticContext((v4 + 1));
      language_modeling::v1::LinguisticContext::~LinguisticContext(v4);
      v5 = *(v4 - 6);
      if (v5)
      {
        *(v4 - 5) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 7);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v7 = v4 - 8;
      v4 -= 13;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

uint64_t KB::LanguageModelContext::is_linguistically_void(KB::LanguageModelContext *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 == v2)
  {
LABEL_4:
    v3 = *this;
    if (!*this)
    {
      return 1;
    }

    v4 = *v3;
    v5 = v3[1];
    if (*v3 == v5)
    {
      return 1;
    }

    else
    {
      do
      {
        result = KB::LanguageModelContext::is_linguistically_void(v4);
        if (!result)
        {
          break;
        }

        v4 = (v4 + 104);
      }

      while (v4 != v5);
    }
  }

  else
  {
    while ((*v1 - 0x100000000) >> 32 < 0x1F3)
    {
      if (++v1 == v2)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  return result;
}

void KB::LanguageModelContext::debug_string_for_token(unint64_t a1@<X1>, uint64_t a2@<X2>, KB::String *a3@<X8>)
{
  if (a1 >> 34 > 0x7C)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    KB::String::String(a3, v5);
  }

  else
  {
    StringForSpecialTokenID = LMLanguageModelCreateStringForSpecialTokenID();
    KB::utf8_string(a3, StringForSpecialTokenID);
    if (StringForSpecialTokenID)
    {

      CFRelease(StringForSpecialTokenID);
    }
  }
}

void KB::LanguageModelContext::description(int **this@<X0>, KB::String *a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x4802000000;
  v36 = __Block_byref_object_copy__1572;
  v37 = __Block_byref_object_dispose__1573;
  v38 = 0x100000;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 0x40000000;
  v24 = ___ZNK2KB20LanguageModelContext11descriptionEv_block_invoke;
  v25 = &unk_27872F2D8;
  v26 = &v33;
  v27 = this;
  v4 = this[7];
  v5 = this[5];
  if (v4 != v5)
  {
    KB::String::append(&v38, "<blocklisted> ", 0xFFFFuLL);
  }

  v6 = this[2];
  v7 = this[10];
  v8 = this[11];
  if (v7 != v8)
  {
    do
    {
      if (v4 != v5 && v6 == &this[2][2 * this[7]])
      {
        KB::String::append(v34 + 20, "</blocklisted> ", 0xFFFFuLL);
      }

      v9 = *v6;
      v6 += 2;
      v24(v23, v9, v7);
      v7 += 6;
    }

    while (v7 != v8);
    v6 = this[2];
  }

  v10 = v34;
  v11 = this[3];
  v12 = v11 - v6;
  if (v11 == v6)
  {
    v29 = 0;
    v30 = 0;
    v31 = "(empty)";
    v28 = 1048583;
    v32[1] = 0;
  }

  else
  {
    v28 = 0x100000;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32[0] = 0;
    v13 = TILocaleIdentifierForLexiconID(*v6);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = "";
    }

    KB::String::append_format(&v28, "[%s]%u", v14, v6[1]);
    if (v12 != 8)
    {
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = &v6[2 * v16];
        v18 = TILocaleIdentifierForLexiconID(*v17);
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = "";
        }

        KB::String::append_format(&v28, " [%s]%u", v19, v17[1]);
        v16 = v15;
      }

      while (v12 >> 3 > v15++);
    }
  }

  v21 = v31;
  if (!v31)
  {
    v21 = v32;
  }

  if (v28)
  {
    v22 = v21;
  }

  else
  {
    v22 = "";
  }

  KB::String::append_format((v10 + 20), "(%s)", v22);
  if (v31 && v30 == 1)
  {
    free(v31);
  }

  KB::String::String(a2, (v34 + 20));
  _Block_object_dispose(&v33, 8);
  if (v41)
  {
    if (v40 == 1)
    {
      free(v41);
    }
  }
}

uint64_t __Block_byref_object_copy__1572(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0x100000;
  v2 = a1 + 40;
  *(v2 + 4) = 0;
  *(v2 + 6) = 0;
  *(v2 + 8) = 0;
  return KB::String::operator=(v2, (a2 + 40));
}

void __Block_byref_object_dispose__1573(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 46) == 1)
    {
      free(v2);
    }
  }
}

void ___ZNK2KB20LanguageModelContext11descriptionEv_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  KB::LanguageModelContext::debug_string_for_token(a2, a3, v6);
  v4 = v8;
  if (!v8)
  {
    v4 = v9;
  }

  if (v6[0])
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  KB::String::append_format((*(*(a1 + 32) + 8) + 40), "%s ", v5);
  if (v8)
  {
    if (v7 == 1)
    {
      free(v8);
    }
  }
}

uint64_t KB::LanguageModelContext::clear(KB::LanguageModelContext *this)
{
  *(this + 3) = *(this + 2);
  std::vector<std::string>::clear[abi:nn200100](this + 10);
  language_modeling::v1::LinguisticContext::clear((this + 64));
  result = language_modeling::v1::LinguisticContext::clear((this + 72));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  return result;
}

void KB::LanguageModelContext::append(KB::LanguageModelContext *this, TITokenID a2, const KB::String *a3, int a4)
{
  v7 = *(a3 + 1);
  if (!v7)
  {
    v7 = a3 + 16;
  }

  if (*a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v8);
  KB::LanguageModelContext::append(this, *&a2, __p, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void *KB::LanguageModelContext::pop_back(void *this)
{
  v1 = this[3];
  if (v1 != this[2] && *(v1 - 4) != 1)
  {
    v2 = this;
    this[3] = v1 - 8;
    v3 = this[11];
    v4 = (v3 - 24);
    if (*(v3 - 1) < 0)
    {
      operator delete(*v4);
    }

    v2[11] = v4;
    language_modeling::v1::LinguisticContext::pop_back((v2 + 8));
    v5 = v2[3] - v2[2];
    if (v2[7] > (v5 >> 3))
    {
      v2[7] = v5 >> 3;
    }

    this = language_modeling::v1::LinguisticContext::tokenSpan((v2 + 9));
    if (v6)
    {

      return language_modeling::v1::LinguisticContext::pop_back((v2 + 9));
    }
  }

  return this;
}

unint64_t KB::LanguageModelContext::suffix_len_from_lexicon(KB::LanguageModelContext *this, int a2)
{
  v2 = *(this + 3);
  v3 = v2 - *(this + 2);
  result = v3 >> 3;
  if (v3)
  {
    v5 = 0;
    if (result <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = result;
    }

    v7 = (v2 - 8);
    while (1)
    {
      v9 = *v7--;
      v8 = v9;
      if (v9 >> 34 >= 0x7D && v8 != a2)
      {
        break;
      }

      if (v6 == ++v5)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t KB::LanguageModelContext::most_recent_lexicon_id(KB::LanguageModelContext *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3) - v1;
  if (!v2)
  {
    return 0;
  }

  v3 = v2 - 8;
  do
  {
    if (*(v1 + v3) <= 0x1F400000000uLL)
    {
      result = 0x1F400000000;
    }

    else
    {
      result = *(v1 + v3);
    }

    if (!v3)
    {
      break;
    }

    v3 -= 8;
  }

  while (!result);
  return result;
}

uint64_t KB::LanguageModelContext::most_recent_token_with_predicate(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 24); i != *(a1 + 16); i -= 8)
  {
    v6 = *(i - 8);
    v5 = v6;
    if ((*(a2 + 16))(a2, v6))
    {
      return v5;
    }
  }

  return 0;
}

void KB::LanguageModelContext::set_predominant_locale(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *a2, *(a2 + 8));
  }

  else
  {
    v4 = *a2;
  }

  language_modeling::v1::LinguisticContext::set_predominant_locale();
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  language_modeling::v1::LinguisticContext::set_predominant_locale();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    v3 = *(result + 216);
    if (v3 && *(v1 + 214) == 1)
    {
      free(v3);
    }

    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*(v1 + 184));
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*(v1 + 160));
    v4 = *(v1 + 88);
    while (v4)
    {
      v5 = v4;
      v4 = *v4;
      v6 = v5[4];
      if (v6)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v6);
      }

      if (*(v5 + 8) >= 0xFu)
      {
        v7 = v5[3];
        if (v7)
        {
          MEMORY[0x2318BE250](v7, 0x1000C8077774924);
        }
      }

      operator delete(v5);
    }

    v8 = *(v1 + 72);
    *(v1 + 72) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = *(v1 + 48);
    if (v9)
    {
      do
      {
        v10 = *v9;
        v11 = v9[3];
        if (v11)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v11);
        }

        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v12 = *(v1 + 32);
    *(v1 + 32) = 0;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = (v1 + 8);
    std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v13);

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*a1);
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t __Block_byref_object_copy__267(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z41chineseJapaneseResponseKitBackgroundQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.ResponseKit.chineseJapaneseResponseKitBackgroundQueue", v2);
  v1 = chineseJapaneseResponseKitBackgroundQueue(void)::_instance;
  chineseJapaneseResponseKitBackgroundQueue(void)::_instance = v0;
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::Vector(void *a1, void *a2)
{
  v3 = a2[2];
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  if (v3)
  {
    v5 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
    a1[1] = v5;
    a1[2] = v3;
    if (v5)
    {
      if (*a2)
      {
        v6 = a2[1];
        v7 = 8 * *a2;
        do
        {
          v8 = *v6;
          *v5 = *v6;
          if (v8)
          {
            atomic_fetch_add(v8, 1u);
          }

          ++v5;
          ++v6;
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  return a1;
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    v3 = 8 * *a1;
    do
    {
      if (*v2)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(*v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    *a1 = 0;
  }

  v4 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v4);
  return a1;
}

uint64_t WTF::RefCounted<TI::Favonius::KeyMatch>::deref(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    v2 = *(result + 8);
    if (v2)
    {
      WTF::RefCounted<TI::Favonius::Key>::deref(v2);
    }

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

__n128 __Block_byref_object_copy__1847(void *a1, uint64_t a2)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = *(a2 + 48);
  *(a2 + 48) = 0;
  result = *(a1 + 7);
  *(a1 + 7) = *(a2 + 56);
  *(a2 + 56) = result;
  return result;
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::~Vector(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    v3 = 8 * *a1;
    do
    {
      if (*v2)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(*v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    *a1 = 0;
  }

  v4 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v4);
  return a1;
}

unint64_t WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = a1[1];
  if (v5 > a3 || v5 + 8 * *a1 <= a3)
  {
    v9 = a1[2];
    if (v9 >= 0x100)
    {
      v10 = v9 + (v9 >> 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v10 > a2)
    {
      a2 = v10;
    }

    WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a1, a2);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 >= 0x100)
    {
      v8 = v7 + (v7 >> 1);
    }

    else
    {
      v8 = 2 * v7;
    }

    if (v8 > a2)
    {
      a2 = v8;
    }

    WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a1, a2);
    return a1[1] + v6;
  }

  return v3;
}

BOOL TI::CP::Path::operator==(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 - *a1;
  v6 = *a2;
  v5 = a2[1];
  if (v4 != v5 - *a2)
  {
    return 0;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v3 != v2)
  {
    v10 = *(v2 - 16);
  }

  if (v6 != v5)
  {
    v9 = *(v5 - 16);
  }

  if (v10 != v9)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4);
    v14 = 1;
    while (TI::CP::operator==((v3 + 48 * v12), (v6 + 48 * v12)))
    {
      v12 = v14;
      if (v13 <= v14++)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_12:
  v16 = a1[3];
  v17 = a1[4] - v16;
  v18 = a2[3];
  if (v17 != a2[4] - v18)
  {
    return 0;
  }

  return memcmp(v16, v18, v17) == 0;
}

long double TI::CP::Path::subpath_excess_length(TI::CP::Path *this, unsigned int a2, unsigned int a3)
{
  v3 = (*this + 48 * a2);
  v4 = (*this + 48 * a3);
  v5 = v4[4] - v3[4];
  return v5 - hypot(*v4 - *v3, v4[1] - v3[1]);
}

unint64_t TI::CP::Path::inflection_point_count(TI::CP::Path *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v4 == v3)
  {
    v11 = *(this + 4);
  }

  else
  {
    v5 = (v4 - v3) >> 2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[4 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 1);
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    if (v4 == v3)
    {
      v11 = *(this + 4);
    }

    else
    {
      v10 = (v4 - v3) >> 2;
      v11 = v3;
      do
      {
        v12 = v10 >> 1;
        v13 = &v11[4 * (v10 >> 1)];
        v15 = *v13;
        v14 = (v13 + 1);
        v10 += ~(v10 >> 1);
        if (v15 > a3)
        {
          v10 = v12;
        }

        else
        {
          v11 = v14;
        }
      }

      while (v10);
    }

    v4 = v3;
  }

  return (v11 - v4) >> 2;
}

double TI::CP::Path::turn_angle(TI::CP::Path *this, unsigned int a2)
{
  v2 = 0.0;
  if (a2)
  {
    v4 = a2 + 1;
    v5 = *this;
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4) != v4)
    {
      v6 = (v5 + 48 * a2);
      v7 = *v6;
      v8 = v6[1];
      v9 = (v5 + 48 * v4);
      v10 = *v9 - *v6;
      v11 = v9[1] - v8;
      if (hypot(v10, v11) >= 0.00001)
      {
        v12 = (v5 + 48 * a2 - 48);
        v13 = a2 + 1;
        while (--v13)
        {
          v14 = v12 - 6;
          v15 = v7 - *v12;
          v16 = v8 - v12[1];
          v17 = hypot(v15, v16);
          v12 = v14;
          if (v17 >= 0.00001)
          {
            v18 = atan2(v16, v15);
            v2 = atan2(v11, v10) - v18;
            if (v2 >= -3.14159265)
            {
              if (v2 <= 3.14159265)
              {
                return v2;
              }

              v19 = -6.28318531;
            }

            else
            {
              v19 = 6.28318531;
            }

            return v2 + v19;
          }
        }
      }
    }
  }

  return v2;
}

void *TI::CP::Path::clear(void *this)
{
  this[1] = *this;
  this[4] = this[3];
  return this;
}

void TI::CP::Path::resize(TI::CP::Path *this, unsigned int a2)
{
  v2 = a2;
  v3 = *this;
  v4 = *(this + 1);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *this) >> 4);
  v6 = a2 - v5;
  if (a2 == v5)
  {
    return;
  }

  if (a2 > v5)
  {
    v9 = *(this + 2);
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 4) < v6)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v3) >> 4);
      if (2 * v10 > a2)
      {
        v2 = 2 * v10;
      }

      if (v10 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::PathSample>>(v11);
    }

    v13 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(*(this + 1), v13);
    v12 = v4 + v13;
    goto LABEL_13;
  }

  if (a2 < v5)
  {
    v12 = v3 + 48 * a2;
LABEL_13:
    *(this + 1) = v12;
  }

  v15 = *(this + 3);
  v14 = *(this + 4);
  if (v14 != v15)
  {
    v16 = v14 - v15;
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[v16 >> 1];
      v20 = *v18;
      v19 = v18 + 1;
      v16 += ~(v16 >> 1);
      if (v20 < a2)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
    if (v15 != v14)
    {
      *(this + 4) = v15;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::PathSample>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void TI::CP::Path::append(TI::CP::Path *this, CGPoint a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6)
{
  y = a2.y;
  x = a2.x;
  if (a5 >= 0.0)
  {
    v14 = a5;
    v12 = *(this + 1);
  }

  else
  {
    v12 = *(this + 1);
    if (*this == v12)
    {
      v14 = 0.0;
    }

    else
    {
      v13 = *(v12 - 2);
      v14 = v13 + hypot(a2.x - *(v12 - 6), a2.y - *(v12 - 5));
    }
  }

  v15 = *(this + 2);
  if (v12 >= v15)
  {
    v17 = *this;
    v18 = v12 - *this;
    v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 4) + 1;
    if (v19 > 0x555555555555555)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 4);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x2AAAAAAAAAAAAAALL)
    {
      v21 = 0x555555555555555;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::PathSample>>(v21);
    }

    v22 = 16 * (v18 >> 4);
    *v22 = x;
    *(v22 + 8) = y;
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    *(v22 + 32) = v14;
    *(v22 + 40) = a6;
    v16 = v22 + 48;
    v23 = v22 - v18;
    memcpy((v22 - v18), v17, v18);
    v24 = *this;
    *this = v23;
    *(this + 1) = v16;
    *(this + 2) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v12 = x;
    v12[1] = y;
    v12[2] = a3;
    v12[3] = a4;
    v16 = (v12 + 6);
    v12[4] = v14;
    v12[5] = a6;
  }

  *(this + 1) = v16;
}

void TI::CP::Path::append(TI::CP::Path *this, const PathSample *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *this) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *this) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::PathSample>>(v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    v14 = *(a2 + 2);
    *(v12 + 16) = *(a2 + 1);
    *(v12 + 32) = v14;
    *v12 = v13;
    v7 = 48 * v8 + 48;
    v15 = *(this + 1) - *this;
    v16 = v12 - v15;
    memcpy((v12 - v15), *this, v15);
    v17 = *this;
    *this = v16;
    *(this + 1) = v7;
    *(this + 2) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    v3[1] = *(a2 + 1);
    v3[2] = v6;
    *v3 = v5;
    v7 = (v3 + 3);
  }

  *(this + 1) = v7;
}

void TI::CP::Path::set_sample_is_inflection_point(TI::CP::Path *this, unsigned int a2)
{
  v26 = a2;
  v4 = *(this + 3);
  v3 = *(this + 4);
  v5 = v3;
  if (v3 == v4)
  {
    goto LABEL_8;
  }

  v6 = v3 - 1;
  v7 = *(this + 4);
  while (*v6 > a2)
  {
    --v7;
    --v6;
    if (v7 == v4)
    {
      goto LABEL_7;
    }
  }

  v5 = *(this + 4);
  if (v7 == v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v5 = v7;
  if (*v7 != a2)
  {
LABEL_8:
    v8 = *(this + 5);
    if (v3 >= v8)
    {
      v11 = v3 - v4 + 1;
      if (v11 >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v12 = v5 - v4;
      v13 = v8 - v4;
      v14 = (v8 - v4) >> 1;
      if (v14 > v11)
      {
        v11 = v14;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v11;
      }

      v16 = v12 >> 2;
      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
      }

      v17 = (4 * v16);
      if (!v16)
      {
        if (v12 < 1)
        {
          if (v5 == v4)
          {
            v24 = 1;
          }

          else
          {
            v24 = v12 >> 1;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v24);
        }

        v17 = (v17 - (((v12 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
      }

      *v17 = a2;
      memcpy(v17 + 1, v5, *(this + 4) - v5);
      v18 = *(this + 3);
      v25 = v17 + *(this + 4) - v5 + 4;
      *(this + 4) = v5;
      v19 = v5 - v18;
      v20 = v17 - (v5 - v18);
      memcpy(v20, v18, v19);
      v21 = *(this + 3);
      *(this + 3) = v20;
      *(this + 2) = v25;
      if (v21)
      {

        operator delete(v21);
      }
    }

    else if (v5 == v3)
    {
      *v3 = a2;
      *(this + 4) = v3 + 1;
    }

    else
    {
      v9 = (v5 + 1);
      if (v3 < 4)
      {
        v10 = *(this + 4);
      }

      else
      {
        *v3 = *(v3 - 1);
        v10 = v3 + 1;
      }

      *(this + 4) = v10;
      if (v3 != v9)
      {
        memmove(v5 + 1, v5, v3 - v9);
        v10 = *(this + 4);
      }

      v22 = v10 <= &v26 || v5 > &v26;
      v23 = 4;
      if (v22)
      {
        v23 = 0;
      }

      *v5 = *(&v26 + v23);
    }
  }
}

void TI::CP::Path::resample(CGPoint **this@<X0>, double a2@<D0>, uint64_t *a3@<X8>)
{
  *v6 = a2;
  v6[1] = 1;
  v7 = 1;
  v8 = 0x3FD3333333333333;
  v9 = 0;
  v17 = 0;
  v18 = 0;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v13 = 0u;
  *__p = 0u;
  v15 = 0u;
  v16 = 0;
  v4 = *this;
  v5 = this[1];
  while (v4 != v5)
  {
    TI::CP::PathResampler::append_and_resample(v6, *v4, v4[1].x, v4[1].y, v4[2].y);
    v4 += 3;
  }

  TI::CP::PathResampler::finalize(v6);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10[1] != v10[0])
  {
    std::vector<TI::CP::PathSample>::__vallocate[abi:nn200100](a3, 0xAAAAAAAAAAAAAAABLL * ((v10[1] - v10[0]) >> 4));
  }

  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  if (v12 != v11[1])
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](a3 + 3, (v12 - v11[1]) >> 2);
  }

  if (__p[1])
  {
    *&v15 = __p[1];
    operator delete(__p[1]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void std::vector<TI::CP::PathSample>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::PathSample>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t TI::CP::Path::is_local_max(void *a1, int a2, uint64_t a3, double a4)
{
  v6 = a2;
  std::function<double ()>::operator()(*(a3 + 24), a2);
  v9 = v8;
  v10 = *(*a1 + 48 * v6 + 32);
  v11 = 48 * v6 + 32;
  v12 = v6 - 1;
  while (v11 != 32 && *(*a1 + v11) > v10 - a4)
  {
    std::function<double ()>::operator()(*(a3 + 24), v12);
    v11 -= 48;
    --v12;
    if (v13 >= v9)
    {
      return 0;
    }
  }

  v14 = v10 + a4;
  while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) > v6 + 1 && *(*a1 + 48 * v6 + 32) < v14)
  {
    std::function<double ()>::operator()(*(a3 + 24), ++v6);
    if (v15 > v9)
    {
      return 0;
    }
  }

  return 1;
}

void std::function<double ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v4);
  }

  else
  {
    v2 = std::__throw_bad_function_call[abi:nn200100]();
    TI::CP::Path::curvature(v2, v3);
  }
}

void TI::CP::Path::curvature(TI::CP::Path *this, unsigned int a2)
{
  if (a2 && 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4) - 1 != a2)
  {
    v2 = (*(*this + 48 * (a2 + 1) + 32) - *(*this + 48 * (a2 - 1) + 32)) * 0.5;
    if (v2 != 0.0)
    {
      TI::CP::Path::turn_angle(this, a2);
    }
  }
}

uint64_t TI::CP::Path::is_curvature_local_max(TI::CP::Path *this, unsigned int a2, double a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  TI::CP::Path::curvature(this, a2);
  if (fabs(v6) <= 0.02)
  {
    return 0;
  }

  v9[0] = &unk_283FD74D8;
  v9[1] = this;
  v9[3] = v9;
  is_local_max = TI::CP::Path::is_local_max(this, a2, v9, a3);
  std::__function::__value_func<double ()>::~__value_func[abi:nn200100](v9);
  return is_local_max;
}

uint64_t std::__function::__value_func<double ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<TI::CP::Path::is_curvature_local_max(unsigned int,double)::$_0,std::allocator<TI::CP::Path::is_curvature_local_max(unsigned int,double)::$_0>,double ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD74D8;
  a2[1] = v2;
  return result;
}

double TI::CP::Path::speed(TI::CP::Path *this, unsigned int a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4);
  result = 0.0;
  if (v2 >= 2)
  {
    v4 = a2 - 1;
    if (!a2)
    {
      v4 = 0;
    }

    if (v2 - 1 == a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 + 1;
    }

    return (*(*this + 48 * v5 + 32) - *(*this + 48 * v4 + 32)) / (*(*this + 48 * v5 + 16) - *(*this + 48 * v4 + 16));
  }

  return result;
}

double KB::DataFile::DataFile(KB::DataFile *this)
{
  *(this + 8) = 0;
  *this = 0;
  result = NAN;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 3) = 0;
  return result;
}

{
  *(this + 8) = 0;
  *this = 0;
  result = NAN;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 3) = 0;
  return result;
}

KB::DataFile *KB::DataFile::DataFile(KB::DataFile *this, const char *__s1, int a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = a3;
  *(this + 1) = a4;
  *(this + 8) = 0;
  *(this + 12) = 0xFFFFFFFF00000000;
  v7 = strdup(__s1);
  *(this + 3) = v7;
  v8 = open_dprotected_np(v7, a3, 3, 0, a4);
  *(this + 4) = v8;
  if (v8 < 0)
  {
    *(this + 3) = *__error();
    if (*__error() != 2)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(this + 3);
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 136315650;
        v15 = "DataFile";
        v16 = 2082;
        v17 = v11;
        v18 = 2082;
        v19 = v13;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%s DataFile: file open error: %{public}s, (%{public}s)", buf, 0x20u);
      }
    }
  }

  else
  {
    *(this + 8) = 1;
  }

  return this;
}

void KB::DataFile::~DataFile(KB::DataFile *this)
{
  v2 = *(this + 4);
  if (v2 != -1)
  {
    close(v2);
  }

  free(*(this + 3));
  *(this + 8) = 0;
}

double KB::MappedDataFile::MappedDataFile(KB::MappedDataFile *this)
{
  *(this + 8) = 0;
  *this = 0;
  result = NAN;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  return result;
}

{
  *(this + 8) = 0;
  *this = 0;
  result = NAN;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  return result;
}

KB::MappedDataFile *KB::MappedDataFile::MappedDataFile(KB::MappedDataFile *this, const char *a2, int a3, uint64_t a4, int a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = KB::DataFile::DataFile(this, a2, a3, a4);
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  v9 = (v8 + 32);
  *(v8 + 12) = a5;
  *(v8 + 7) = 0;
  if (*(v8 + 8) == 1)
  {
    if (!a5)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v17 = TIOSLogFacility();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v24 = *(this + 12);
      v29.st_dev = 136315394;
      *&v29.st_mode = "MappedDataFile";
      WORD2(v29.st_ino) = 1024;
      *(&v29.st_ino + 6) = v24;
      v13 = "%s MappedDataFile: illegal protection mode: %d";
      v14 = &v29;
      v15 = v17;
      v16 = 18;
LABEL_24:
      _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, v13, v14, v16);
      goto LABEL_11;
    }

    if (stat(a2, &v29))
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v10 = TIOSLogFacility();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v11 = __error();
      v12 = strerror(*v11);
      v25 = 136315394;
      v26 = "MappedDataFile";
      v27 = 2082;
      v28 = v12;
      v13 = "%s MappedDataFile: stat error: %{public}s";
      v14 = &v25;
      v15 = v10;
      v16 = 22;
      goto LABEL_24;
    }

    st_size = v29.st_size;
    *v9 = v29.st_size;
    if (st_size)
    {
      v20 = getpagesize();
      v21 = st_size / v20;
      if (st_size == v21 * v20)
      {
LABEL_21:
        *(this + 5) = st_size;
        KB::MappedDataFile::map(this, 0);
        return this;
      }

      v22 = v20 + v20 * v21;
    }

    else
    {
      if ((*(this + 48) & 2) == 0)
      {
LABEL_11:
        *(this + 8) = 0;
        return this;
      }

      v22 = getpagesize();
    }

    if (v22 != st_size)
    {
      if ((*(this + 48) & 2) != 0)
      {
        v23 = getpagesize();
        KB::MappedDataFile::resize(this, v22 / v23);
        return this;
      }

      st_size = v22;
    }

    goto LABEL_21;
  }

  return this;
}

uint64_t KB::MappedDataFile::resize(KB::MappedDataFile *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    KB::MappedDataFile::sync(this);
    v4 = *(this + 7);
    if (v4)
    {
      munmap(*(this + 7), *(this + 5));
      *(this + 7) = 0;
    }

    v5 = getpagesize();
    v6 = (v5 * a2) & ~((v5 * a2) >> 31);
    if (ftruncate(*(this + 4), v6) < 0)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = __error();
        v11 = strerror(*v10);
        v12 = 136315394;
        v13 = "resize";
        v14 = 2082;
        v15 = v11;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%s MappedDataFile: error in resize: %{public}s", &v12, 0x16u);
      }

      v7 = 0;
      *(this + 8) = 0;
    }

    else
    {
      *(this + 4) = v6;
      *(this + 5) = v6;
      KB::MappedDataFile::map(this, v4);
      v7 = *(this + 8);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void KB::MappedDataFile::map(KB::MappedDataFile *this, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = mmap(a2, *(this + 5), *(this + 12), 1, *(this + 4), 0);
  *(this + 7) = v3;
  if (v3 == -1)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = __error();
      v6 = strerror(*v5);
      v7 = 136315394;
      v8 = "map";
      v9 = 2082;
      v10 = v6;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%s MappedDataFile: mmap error: %{public}s", &v7, 0x16u);
    }

    *(this + 8) = 0;
  }
}

uint64_t KB::MappedDataFile::sync(uint64_t this)
{
  if (*(this + 8) == 1)
  {
    v1 = this;
    if (*(this + 52) == 1 && (*(this + 48) & 2) != 0)
    {
      this = msync(*(this + 56), *(this + 40), 16);
      *(v1 + 52) = 0;
    }
  }

  return this;
}

void KB::MappedDataFile::~MappedDataFile(KB::MappedDataFile *this)
{
  if (*(this + 8) == 1)
  {
    KB::MappedDataFile::sync(this);
    munmap(*(this + 7), *(this + 5));
  }

  KB::DataFile::~DataFile(this);
}

KB::MappedDataFile *KB::ReadOnlyDataFile::ReadOnlyDataFile(KB::ReadOnlyDataFile *this, const char *a2, int a3)
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  return KB::MappedDataFile::MappedDataFile(this, a2, v3, 256, 1);
}

{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  return KB::MappedDataFile::MappedDataFile(this, a2, v3, 256, 1);
}

void *KB::InputStream::InputStream(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  *result = *(a2 + 56);
  result[1] = v3;
  result[2] = a3;
  return result;
}

{
  v3 = *(a2 + 32);
  *result = *(a2 + 56);
  result[1] = v3;
  result[2] = a3;
  return result;
}

void *KB::InputStream::InputStream(void *this, const void *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  this[2] = 0;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = 0;
  return this;
}

uint64_t KB::InputStream::read_null_terminated_string(KB::InputStream *this, KB::String *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5)
  {
    v7 = strnlen((v4 + v6), v5 - v6);
  }

  else
  {
    v7 = strlen((v4 + v6));
  }

  if (v6 + v7 + 1 > v5)
  {
    return 0;
  }

  v8 = v7 + 1 + v6;
  if (v5)
  {
    if (v8 > v5)
    {
      return 0;
    }
  }

  *(this + 2) = v8;
  if (!v4)
  {
    return 0;
  }

  KB::String::String(v10, (v4 + v6), v7);
  KB::String::operator=(a2, v10);
  if (v11)
  {
    if (v10[6] == 1)
    {
      free(v11);
    }
  }

  return 1;
}

uint64_t KB::InputStream::step(KB::InputStream *this, unsigned int a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + a2;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this + v2;
  *(this + 2) = v4;
  return v6;
}

uint64_t KB::InputStream::read_unsigned_int(KB::InputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + 4;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this;
  *(this + 2) = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = bswap32(*(v6 + v2));
  return 1;
}

uint64_t KB::InputStream::read_uint24(KB::InputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + 3;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this;
  *(this + 2) = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = (*(v6 + v2) << 16) | (*(v6 + v2 + 1) << 8) | *(v6 + v2 + 2);
  return 1;
}

uint64_t KB::InputStream::read_data(KB::InputStream *this, void *__dst, size_t a3)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  v5 = v3 + a3;
  if (v4)
  {
    v6 = v5 > v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 0;
  }

  v7 = *this;
  *(this + 2) = v5;
  if (!v7)
  {
    return 0;
  }

  memcpy(__dst, (v7 + v3), a3);
  return 1;
}

uint64_t KB::InputStream::read_unsigned_short(KB::InputStream *this, unsigned __int16 *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + 2;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this;
  *(this + 2) = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = bswap32(*(v6 + v2)) >> 16;
  return 1;
}

uint64_t KB::InputStream::read_short(KB::InputStream *this, __int16 *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + 2;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this;
  *(this + 2) = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = bswap32(*(v6 + v2)) >> 16;
  return 1;
}

uint64_t KB::InputStream::read_unsigned_char(KB::InputStream *this, unsigned __int8 *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + 1;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this;
  *(this + 2) = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = *(v6 + v2);
  return 1;
}

uint64_t KB::InputStream::read_unsigned_int_compressed(KB::InputStream *this, unsigned int *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = v3 + 1;
  if (v2)
  {
    v5 = v4 > v2;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = *this;
    *(this + 2) = v4;
    if (v6)
    {
      v7 = *(v6 + v3);
      v8 = *(v6 + v3);
      *a2 = v8;
      if ((v7 & 0x80000000) == 0)
      {
        return 1;
      }

      v10 = (v8 & 0x7F) << 8;
      *a2 = v10;
      v11 = v3 + 2;
      if (!v2 || v11 <= v2)
      {
        *(this + 2) = v11;
        v12 = v10 | *(v6 + v4);
        *a2 = v12;
        if ((v8 & 0x40) == 0)
        {
          return 1;
        }

        v13 = (v12 & 0x3FFF) << 16;
        *a2 = v13;
        v14 = v3 + 4;
        if (!v2 || v14 <= v2)
        {
          *(this + 2) = v14;
          *a2 = v13 | (bswap32(*(v6 + v11)) >> 16);
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t KB::InputStream::read_float(KB::InputStream *this, float *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + 4;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this;
  *(this + 2) = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = bswap32(*(v6 + v2));
  return 1;
}

uint64_t KB::InputStream::read_uversioninfo(KB::InputStream *this, unsigned __int8 (*a2)[4])
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 + 4;
  if (v3)
  {
    v5 = v4 > v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *this;
  *(this + 2) = v4;
  if (!v6)
  {
    return 0;
  }

  *a2 = *(v6 + v2);
  return 1;
}

double KB::WritableDataFile::WritableDataFile(KB::WritableDataFile *this)
{
  *(this + 8) = 0;
  *this = 0;
  result = NAN;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 3) = 0;
  return result;
}

{
  *(this + 8) = 0;
  *this = 0;
  result = NAN;
  *(this + 12) = 0xFFFFFFFF00000000;
  *(this + 3) = 0;
  return result;
}

KB::DataFile *KB::WritableDataFile::WritableDataFile(KB::DataFile *a1, const char *a2, int a3)
{
  return KB::DataFile::DataFile(a1, a2, a3, 384);
}

{
  return KB::DataFile::DataFile(a1, a2, a3, 384);
}

void KB::WritableDataFile::write_data(KB::WritableDataFile *this, char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 8) == 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = write(*(this + 4), &a2[v6], a3 - v6);
      if (!v7)
      {
        break;
      }

      v6 += v7;
      if (v7 < 0)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v8 = TIOSLogFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(this + 3);
          v10 = __error();
          v11 = strerror(*v10);
          v12 = 136315650;
          v13 = "write_data";
          v14 = 2082;
          v15 = v9;
          v16 = 2082;
          v17 = v11;
          _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%s cannot write to file: %{public}s (%{public}s)", &v12, 0x20u);
        }

        *(this + 8) = 0;
        return;
      }
    }
  }
}

void KB::WritableDataFile::write_string(KB::WritableDataFile *this, char *__s)
{
  v4 = strlen(__s);
  KB::WritableDataFile::write_data(this, __s, v4);
  v5 = 0;
  KB::WritableDataFile::write_data(this, &v5, 1);
}

void KB::WritableDataFile::write_string(KB::WritableDataFile *this, const KB::String *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  if (!v4)
  {
    v4 = a2 + 16;
  }

  if (*a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  KB::WritableDataFile::write_data(this, v5, v3);
  v6 = 0;
  KB::WritableDataFile::write_data(this, &v6, 1);
}

void KB::WritableDataFile::write_uint24(KB::WritableDataFile *this, int a2)
{
  v2[0] = BYTE2(a2);
  v2[1] = BYTE1(a2);
  v2[2] = a2;
  KB::WritableDataFile::write_data(this, v2, 3);
}

uint64_t KB::WritableDataFile::size_of_unsigned_int_compressed(KB::WritableDataFile *this)
{
  if (this >= 0x3FFF)
  {
    v1 = 4;
  }

  else
  {
    v1 = 2;
  }

  if (this < 0x7F)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

void KB::WritableDataFile::write_unsigned_int_compressed(KB::WritableDataFile *this, unsigned int a2)
{
  v3 = this;
  if (a2 <= 0x7E)
  {
    v6 = a2;
    v4 = &v6;
LABEL_5:
    this = v3;
    v5 = 1;
    goto LABEL_6;
  }

  if (a2 <= 0x3FFE)
  {
    v7 = BYTE1(a2) | 0x80;
    KB::WritableDataFile::write_data(this, &v7, 1);
    v8 = a2;
    v4 = &v8;
    goto LABEL_5;
  }

  if (a2 > 0x3FFFFFFE)
  {
    v12 = -1;
    v4 = &v12;
    v5 = 4;
  }

  else
  {
    v9 = HIBYTE(a2) | 0xC0;
    KB::WritableDataFile::write_data(this, &v9, 1);
    v10 = BYTE2(a2);
    KB::WritableDataFile::write_data(v3, &v10, 1);
    v11 = bswap32(a2) >> 16;
    v4 = &v11;
    this = v3;
    v5 = 2;
  }

LABEL_6:
  KB::WritableDataFile::write_data(this, v4, v5);
}

void UnikeySetInputMethod(uint64_t result)
{
  if (result < 3)
  {
LABEL_4:
    v1 = pShMem;
    *(pShMem + 48) = result;
    v2 = (v1 + 48);
    if (result >= 4)
    {
      *v2 = 0;
      v3 = "Z";
    }

    else
    {
      v3 = (&off_278730168)[result];
    }

    UkInputProcessor::useBuiltIn(v2, v3);
    goto LABEL_8;
  }

  if (result != 4)
  {
    if (result != 5)
    {
      return;
    }

    goto LABEL_4;
  }

  v5 = pShMem;
  if (*(pShMem + 1076))
  {
    *(pShMem + 48) = 4;
    v6 = 256;
    do
    {
      *(v5 + 52) = *(v5 + 1080);
      v5 += 16;
      v6 -= 4;
    }

    while (v6);
LABEL_8:
    v4 = MyKbEngine;
    *(MyKbEngine + 3112) = -1;
    *(v4 + 28) = 0xFFFFFFFFLL;
    *(v4 + 3116) = 0;
  }
}

uint64_t UnikeySetCapsState(uint64_t result, int a2)
{
  UnikeyCapsLockOn = a2;
  UnikeyShiftPressed = result;
  return result;
}

double UnikeySetOptions(uint64_t a1)
{
  v1 = pShMem;
  *(pShMem + 12) = *a1;
  *(v1 + 28) = *(a1 + 16);
  result = *(a1 + 28);
  *(v1 + 40) = result;
  return result;
}

__n128 UnikeyGetOptions(uint64_t a1)
{
  v1 = *(pShMem + 44);
  result = *(pShMem + 28);
  *a1 = *(pShMem + 12);
  *(a1 + 16) = result;
  *(a1 + 32) = v1;
  return result;
}

void UnikeySetup()
{
  if (!MyKbEngine)
  {
    operator new();
  }

  SetupInputClassifierTable();
  v0 = 0;
  v1 = xmmword_22CC889B0;
  v2.i64[0] = 0x400000004;
  v2.i64[1] = 0x400000004;
  do
  {
    IsoStdVnCharMap[v0] = v1;
    v1 = vaddq_s32(v1, v2);
    ++v0;
  }

  while (v0 != 64);
  v3 = 65722;
  v4 = "\x80\x82\x83\x84\x85\x86\x87\x88\x89\x8A\x8B\x8C\x8E\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9A\x9B\x9C\x9E\x9F";
  v5 = 27;
  do
  {
    v6 = *v4++;
    *(IsoStdVnCharMap + v6) = v3++;
    --v5;
  }

  while (v5);
  v7 = &IsoVnLexiMap;
  v8 = 256;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  for (i = IsoStdVnCharMap + 2; ; i += 4)
  {
    v11 = *v7;
    v12 = vmovn_s32(vmvnq_s8(vceqq_s32(*v7, v9)));
    if (v12.i8[0])
    {
      *(i - 2) = v11.i32[0] + 0x10000;
    }

    if (v12.i8[2])
    {
      *(i - 1) = v11.i32[1] + 0x10000;
    }

    if (v12.i8[4])
    {
      *i = v11.i32[2] + 0x10000;
    }

    if (v12.i8[6])
    {
      i[1] = v11.i32[3] + 0x10000;
    }

    ++v7;
    v8 -= 4;
    if (!v8)
    {
      operator new();
    }
  }
}

_DWORD *UnikeyCheckKbCase(_DWORD *result, int *a2)
{
  *result = UnikeyShiftPressed;
  *a2 = UnikeyCapsLockOn;
  return result;
}

uint64_t UnikeyCleanup()
{
  if (MyKbEngine)
  {
    MEMORY[0x2318BE270](MyKbEngine, 0x10B0C407BB03D36);
  }

  result = pShMem;
  if (pShMem)
  {
    result = MEMORY[0x2318BE270](pShMem, 0x1000C401C44D41ELL);
  }

  MyKbEngine = 0;
  pShMem = 0;
  return result;
}

uint64_t UnikeyFilter(int a1)
{
  UnikeyBufChars = 1024;
  v2 = MyKbEngine;
  v3 = *(MyKbEngine + 28);
  if ((v3 & 0x80000000) == 0 && v3 + 10 >= *(MyKbEngine + 24))
  {
    v4 = v3 >> 1;
    v5 = (MyKbEngine + 3144 + 36 * (*(MyKbEngine + 28) >> 1));
    do
    {
      v6 = v4;
      if (v4 >= v3)
      {
        break;
      }

      v7 = *v5;
      v5 += 9;
      ++v4;
    }

    while (v7 != 1);
    if (v3 == v6)
    {
      LODWORD(v3) = -1;
    }

    else
    {
      v8 = v6 + 1;
      LODWORD(v3) = v3 - v8;
      memmove((MyKbEngine + 3144), (MyKbEngine + 3144 + 36 * v8), 36 * (v3 + 1));
    }

    *(v2 + 28) = v3;
  }

  v9 = *(v2 + 3112);
  if (v9 >= 1 && v9 + 1 >= *(v2 + 36))
  {
    v10 = v9 >> 1;
    memmove((v2 + 40), (v2 + 40 + 24 * (*(v2 + 3112) >> 1)), 24 * (v9 + 1 - (*(v2 + 3112) >> 1)));
    *(v2 + 3112) -= v10;
  }

  *(v2 + 16) = v3 + 1;
  *(v2 + 20) = 0;
  *(v2 + 3120) = &UnikeyBuf;
  *(v2 + 3128) = &UnikeyBufChars;
  *(v2 + 3136) = 0;
  v11 = *(v2 + 8);
  HIDWORD(v45) = a1;
  if (a1 >= 0x100)
  {
    LODWORD(v45) = 19;
    if (a1 < 256)
    {
      DWORD2(v45) = *(&IsoVnLexiMap + a1);
      if (DWORD2(v45) != -1)
      {
        v13 = 0;
LABEL_21:
        DWORD1(v45) = v13;
        v12 = 19;
        goto LABEL_25;
      }
    }

    else
    {
      DWORD2(v45) = -1;
    }

    v13 = 2;
    goto LABEL_21;
  }

  DWORD1(v45) = UkcMap[a1];
  v12 = *(v11 + 4 * a1 + 52);
  LODWORD(v45) = v12;
  if ((v12 - 10) > 5)
  {
    if (v12 >= 20)
    {
      DWORD2(v45) = v12 - 20;
      *&v45 = 17;
      v12 = 17;
      goto LABEL_25;
    }
  }

  else
  {
    v46 = v12 - 10;
  }

  DWORD2(v45) = *(&IsoVnLexiMap + a1);
LABEL_25:
  if ((*(v2 + 3116) & 1) == 0)
  {
    result = (*(&UkEngine::process(unsigned int,int &,unsigned char *,int &,UkOutputType &)::UkKeyProcList + 2 * v12))(v2, &v45);
    goto LABEL_32;
  }

  *(v2 + 3116) = 0;
  if ((v3 & 0x80000000) != 0 || (v12 & 0xFFFFFFFE) == 0x12)
  {
    result = UkEngine::processAppend(v2, &v45);
    goto LABEL_32;
  }

  *(v2 + 28) = v3 - 1;
  UkEngine::processAppend(v2, &v45);
  v14 = *(v2 + 28);
  v15 = *(v2 + 16);
  if (v15 > v14)
  {
    v16 = *(v2 + 20) + UkEngine::getSeqSteps(v2, *(v2 + 28), v15 - 1);
    *(v2 + 16) = v14;
    *(v2 + 20) = v16;
    result = 1;
LABEL_32:
    v14 = *(v2 + 28);
    goto LABEL_33;
  }

  result = 1;
LABEL_33:
  v18 = *(v2 + 8);
  if (!*(v18 + 4))
  {
    goto LABEL_55;
  }

  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_66;
  }

  v19 = v2 + 36 * v14;
  if (!(*(v19 + 3144) | DWORD1(v45)) && (!*(v18 + 40) || *(v2 + 32)))
  {
    v20 = (v19 + 3144);
    v21 = *(v19 + 3172);
    if (*(&IsVnVowel + v21) == 1)
    {
      *v20 = 3;
      v20[2] = 0;
      LODWORD(__key) = v21;
      *(&__key + 4) = -1;
      v22 = bsearch(&__key, &SortedVSeqList, 0x46uLL, 0x10uLL, tripleVowelCompare);
      v23 = -1;
      if (v22)
      {
        v24 = v22[3];
      }

      else
      {
        v24 = -1;
      }

      v20[3] = -1;
      v20[4] = v24;
      v26 = 1;
    }

    else
    {
      *v20 = xmmword_22CC889C0;
      LODWORD(__key) = v21;
      *(&__key + 4) = -1;
      v25 = bsearch(&__key, &SortedCSeqList, 0x1DuLL, 0x10uLL, tripleConCompare);
      if (v25)
      {
        v23 = v25[3];
      }

      else
      {
        v23 = -1;
      }

      v26 = 4;
    }

    v20[v26] = v23;
    if (v45 == 19 && (v20[8] & 0xFFFFFFDF) - 65 < 0x1A)
    {
      result = 0;
    }

    else
    {
      v27 = *(v2 + 28);
      v28 = *(v2 + 16);
      if (v28 > v27)
      {
        v29 = *(v2 + 20) + UkEngine::getSeqSteps(v2, *(v2 + 28), v28 - 1);
        *(v2 + 16) = v27;
        *(v2 + 20) = v29;
      }

      result = 1;
    }

    v14 = *(v2 + 28);
LABEL_55:
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }
  }

  if (HIDWORD(v45) < 0x100)
  {
    v30 = UkcMap[SHIDWORD(v45)];
  }

  else if (SHIDWORD(v45) > 255 || *(&IsoVnLexiMap + SHIDWORD(v45)) == -1)
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  DWORD1(v45) = v30;
  v31 = *(v2 + 3112) + 1;
  *(v2 + 3112) = v31;
  v32 = v2 + 40 + 24 * v31;
  v33 = v45;
  *(v32 + 16) = v46;
  *v32 = v33;
  if (result)
  {
    v34 = *(v2 + 3138) ^ 1;
  }

  else
  {
    v34 = 0;
  }

  *(v2 + 40 + 24 * *(v2 + 3112) + 20) = v34 & 1;
LABEL_66:
  if (result)
  {
    UnikeyBackspaces = *(v2 + 20);
    if ((*(v2 + 3136) & 1) == 0)
    {
      v52 = 0;
      *&__key = &unk_283FDA9D8;
      *(&__key + 1) = &UnikeyBuf;
      v48 = &UnikeyBuf;
      v49 = 0;
      v50 = UnikeyBufChars;
      v51 = 0;
      VnCharset = CVnCharsetLib::getVnCharset(VnCharsetLibObj, *(*(v2 + 8) + 2104));
      result = (*(*VnCharset + 8))(VnCharset);
      v36 = *(v2 + 16);
      v37 = *(v2 + 28);
      if (v36 <= v37)
      {
        v38 = v36 - 1;
        v39 = (v2 + 36 * v36 + 3176);
        do
        {
          v40 = *(v39 - 1);
          if (v40 == -1)
          {
            if (*v39 > 255)
            {
              goto LABEL_80;
            }

            v44 = *(IsoStdVnCharMap + *v39);
          }

          else
          {
            v41 = *(v39 - 2);
            if (*(v39 - 3))
            {
              v42 = 0xFFFF;
            }

            else
            {
              v42 = 0x10000;
            }

            v43 = v42 + v40;
            if (v41)
            {
              v44 = v43 + 2 * v41;
            }

            else
            {
              v44 = v43;
            }
          }

          if (v44 != -1)
          {
LABEL_80:
            result = (*(*VnCharset + 24))(VnCharset, &__key);
            v37 = *(v2 + 28);
          }

          ++v38;
          v39 += 9;
        }

        while (v38 < v37);
      }

      UnikeyBufChars = v49;
    }
  }

  else
  {
    UnikeyBackspaces = 0;
    UnikeyBufChars = 0;
  }

  return result;
}

double UnikeyResetBuf()
{
  v0 = MyKbEngine;
  *(MyKbEngine + 3112) = -1;
  *&result = 0xFFFFFFFFLL;
  *(v0 + 28) = 0xFFFFFFFFLL;
  *(v0 + 3116) = 0;
  return result;
}

id rangesOfStringInString(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if ([v8 length])
  {
    v10 = objc_opt_new();
    v11 = [v8 length];
    v12 = 0;
    v13 = v11;
    do
    {
      v14 = [v8 rangeOfString:v7 options:a3 range:v12 locale:{v13, v9}];
      if (!v15)
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      v18 = [MEMORY[0x277CCAE60] valueWithRange:{v14, v15}];
      [v10 addObject:v18];

      v12 = v16 + v17;
      v13 = v11 - (v16 + v17);
    }

    while (v11 > v16 + v17);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

uint64_t __Block_byref_object_copy__2019(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initRadarComponent(void)
{
  if (TapToRadarKitLibrary(void)::sOnce != -1)
  {
    dispatch_once(&TapToRadarKitLibrary(void)::sOnce, &__block_literal_global_2148);
  }

  result = objc_getClass("RadarComponent");
  classRadarComponent = result;
  getRadarComponentClass = RadarComponentFunction;
  return result;
}

void *___ZL20TapToRadarKitLibraryv_block_invoke()
{
  result = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
  TapToRadarKitLibrary(void)::sLib = result;
  return result;
}

Class initRadarDraft(void)
{
  if (TapToRadarKitLibrary(void)::sOnce != -1)
  {
    dispatch_once(&TapToRadarKitLibrary(void)::sOnce, &__block_literal_global_2148);
  }

  result = objc_getClass("RadarDraft");
  classRadarDraft = result;
  getRadarDraftClass = RadarDraftFunction;
  return result;
}

Class initTapToRadarService(void)
{
  if (TapToRadarKitLibrary(void)::sOnce != -1)
  {
    dispatch_once(&TapToRadarKitLibrary(void)::sOnce, &__block_literal_global_2148);
  }

  result = objc_getClass("TapToRadarService");
  classTapToRadarService = result;
  getTapToRadarServiceClass = TapToRadarServiceFunction;
  return result;
}

uint64_t ___ZL28_typologyProfileOptInManagerv_block_invoke()
{
  v0 = objc_alloc_init(TITypologyProfileOptInManager);
  v1 = _typologyProfileOptInManager(void)::optInManager;
  _typologyProfileOptInManager(void)::optInManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

KB::DictionaryCursors *KB::DictionaryCursors::DictionaryCursors(KB::DictionaryCursors *this, const KB::StaticDictionary **a2)
{
  KB::StaticDictionaryCursor::StaticDictionaryCursor(this, a2[1]);
  (*(*a2[3] + 16))(a2[3]);
  v4 = (*(*a2[3] + 72))(a2[3], 0xFFFFFFFFLL);
  *(this + 16) = v4;
  *(this + 17) = 65536.0 / (v4 + 65536.0);
  *(this + 18) = 0;
  return this;
}

uint64_t KB::DictionaryCursors::DictionaryCursors(uint64_t a1, uint64_t a2, void (****a3)(void))
{
  for (i = 0; i != 24; i += 8)
  {
    v7 = *(a2 + i);
    *(a1 + i) = v7;
    if (v7)
    {
      CFRetain(v7);
      *(a1 + i) = v7;
    }
  }

  v8 = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 24) = v8;
  (***a3)();
  *(a1 + 64) = 0;
  *(a1 + 72) = *(a2 + 48);
  return a1;
}

uint64_t KB::DictionaryCursors::DictionaryCursors(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  for (i = 0; i != 24; i += 8)
  {
    v7 = *(a2 + i);
    *(a1 + i) = v7;
    if (v7)
    {
      CFRetain(v7);
      *(a1 + i) = v7;
    }
  }

  v8 = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 24) = v8;
  v9 = *a3;
  *a3 = 0;
  *(a1 + 56) = v9;
  *(a1 + 64) = 0;
  *(a1 + 72) = *(a2 + 48);
  return a1;
}

KB::DictionaryCursors *KB::DictionaryCursors::DictionaryCursors(KB::DictionaryCursors *this, const KB::DictionaryCursors *a2)
{
  for (i = 0; i != 24; i += 8)
  {
    v5 = *(a2 + i);
    *(this + i) = v5;
    if (v5)
    {
      CFRetain(v5);
      *(this + i) = v5;
    }
  }

  v6 = *(a2 + 24);
  *(this + 36) = *(a2 + 36);
  *(this + 24) = v6;
  (***(a2 + 7))(*(a2 + 7));
  *(this + 16) = *(a2 + 16);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = *(a2 + 18);
  return this;
}

uint64_t KB::DictionaryCursors::DictionaryCursors(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    v5 = *(a2 + i);
    *(a1 + i) = v5;
    if (v5)
    {
      CFRetain(v5);
      *(a1 + i) = v5;
    }
  }

  v6 = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 24) = v6;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

const void **KB::DictionaryCursors::operator=(const void **a1, uint64_t a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    v4 = 0;
    *(a1 + 18) = *(a2 + 72);
    do
    {
      v5 = KB::retain_ptr<__CFDictionary const*>::operator=(a1, *(a2 + 8 * v4++));
      a1 = v5 + 1;
    }

    while (v4 != 3);
    v6 = *(a2 + 24);
    *(v2 + 36) = *(a2 + 36);
    *(v2 + 3) = v6;
    (***(a2 + 56))(&v11);
    v7 = v11;
    v11 = 0;
    v8 = v2[7];
    v2[7] = v7;
    if (v8)
    {
      (*(*v8 + 16))(v8);
      v9 = v11;
      v11 = 0;
      if (v9)
      {
        (*(*v9 + 16))(v9);
      }
    }

    *(v2 + 16) = *(a2 + 64);
    *(v2 + 17) = *(a2 + 68);
  }

  return v2;
}

{
  v2 = a1;
  if (a1 != a2)
  {
    v4 = 0;
    *(a1 + 18) = *(a2 + 72);
    do
    {
      v5 = KB::retain_ptr<__CFDictionary const*>::operator=(a1, *(a2 + 8 * v4++));
      a1 = v5 + 1;
    }

    while (v4 != 3);
    v6 = *(a2 + 24);
    *(v2 + 36) = *(a2 + 36);
    *(v2 + 3) = v6;
    v7 = *(a2 + 56);
    *(a2 + 56) = 0;
    v8 = v2[7];
    v2[7] = v7;
    if (v8)
    {
      (*(*v8 + 16))(v8);
    }

    *(v2 + 16) = *(a2 + 64);
    *(v2 + 17) = *(a2 + 68);
  }

  return v2;
}

uint64_t KB::DictionaryCursors::finishes_dynamic_words(KB::DictionaryCursors *this)
{
  v1 = *(this + 7);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2KB23DynamicDictionaryCursor11has_entriesEv_block_invoke;
  v4[3] = &unk_278732A70;
  v4[4] = &v5;
  (*(*v1 + 40))(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t KB::DictionaryCursors::dynamic_has_children(KB::DictionaryCursors *this)
{
  v1 = *(this + 7);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2KB23DynamicDictionaryCursor12has_childrenEv_block_invoke;
  v4[3] = &unk_278732A98;
  v4[4] = &v5;
  (*(*v1 + 40))(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void KB::DictionaryCursors::probability_of_static_trie(KB::DictionaryCursors *this, const KB::DictionaryContainer *a2)
{
  KB::StaticDictionaryCursor::conditional_probability(this);
  if (*(this + 16))
  {
    (*(**(this + 7) + 80))(*(this + 7), *(a2 + 3));
  }
}

double KB::DictionaryCursors::dynamic_partial_probability(KB::DictionaryCursors *this, const DictionaryContainer *a2)
{
  if (!*(this + 16))
  {
    return 0.0;
  }

  *&result = (*(**(this + 7) + 80))(*(this + 7), *(a2 + 3)) / *(this + 16);
  return result;
}

void KB::DictionaryCursors::probability_of_static_trie_given_termination(KB::DictionaryCursors *this, const KB::DictionaryContainer *a2)
{
  KB::DictionaryCursors::probability_of_static_trie(this, a2);
  KB::StaticDictionaryCursor::termination_probability(this);
  (*(**(this + 7) + 72))(*(this + 7), *(a2 + 3));
}

float KB::DictionaryCursors::termination_probability(KB::DictionaryCursors *this, const KB::DictionaryContainer *a2)
{
  KB::DictionaryCursors::probability_of_static_trie(this, a2);
  v5 = v4;
  v6 = KB::StaticDictionaryCursor::termination_probability(this);
  return ((1.0 - v5) * (*(**(this + 7) + 72))(*(this + 7), *(a2 + 3))) + (v5 * v6);
}

float KB::DictionaryCursors::advance(KB::DictionaryCursors *this, const KB::DictionaryContainer *a2, const KB::String *a3)
{
  if (*(a3 + 1))
  {
    v5 = *(a3 + 1);
  }

  else
  {
    v5 = a3 + 16;
  }

  v15 = v5;
  v6 = *a3;
  v16 = 0;
  v17 = v6;
  v18 = 0;
  KB::String::iterator::initialize(&v15);
  v11 = v5;
  v12 = v6;
  v13 = v6;
  v14 = 0;
  KB::String::iterator::initialize(&v11);
  v7 = v16;
  v8 = v12;
  v9 = 1.0;
  while (v7 != v8)
  {
    v9 = v9 * KB::DictionaryCursors::advance(this, a2, v18);
    KB::String::iterator::operator++(&v15);
    v7 = v16;
  }

  return v9;
}

float KB::DictionaryCursors::advance(KB::DictionaryCursors *this, const KB::DictionaryContainer *a2, unsigned int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  IsRoot = LXCursorIsRoot();
  v7 = (*(**(a2 + 3) + 72))(*(a2 + 3), 0xFFFFFFFFLL);
  if (IsRoot)
  {
    v8 = v7;
    v9 = 65536.0 / (v7 + 65536.0);
  }

  else
  {
    v8 = (*(**(this + 7) + 80))(*(this + 7), *(a2 + 3));
    KB::DictionaryCursors::probability_of_static_trie(this, a2);
    v9 = v10;
  }

  v11 = KB::StaticDictionaryCursor::advance(this, a3);
  v12 = *(this + 7);
  v13 = *(a2 + 3);
  KB::String::String(&v25, a3);
  v14 = (*(*v12 + 56))(v12, v13, &v25, v8);
  if (v26 && BYTE6(v25) == 1)
  {
    free(v26);
  }

  if ((KB::StaticDictionaryCursor::valid(this) & 1) != 0 || (v15 = *(this + 7), v21 = 0, v22 = &v21, v23 = 0x2000000000, v24 = 0, v25 = MEMORY[0x277D85DD0], v26 = 0x40000000, v27 = ___ZNK2KB23DynamicDictionaryCursor5validEv_block_invoke, v28 = &unk_278732A48, v29 = &v21, (*(*v15 + 40))(v15, &v25), v16 = *(v22 + 24), _Block_object_dispose(&v21, 8), v17 = 0, v16 == 1))
  {
    v17 = a3;
  }

  v18 = 1.0;
  if (IsRoot)
  {
    v18 = 1.0 / v9;
  }

  *(this + 18) = v17;
  *(this + 17) = v9;
  *(this + 16) = v8;
  v19 = (1.0 - v9) * v14;
  return v18 * ((v9 * v11) + v19);
}

void KB::DictionaryCursors::fill_vector_with_static_trie_children(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v6 = *a2;
  for (i = *(a2 + 1); i != v6; std::allocator_traits<std::allocator<KB::DictionaryCursors>>::destroy[abi:nn200100]<KB::DictionaryCursors,void,0>(i))
  {
    i -= 80;
  }

  *(a2 + 1) = v6;
  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy__20014;
  v20 = __Block_byref_object_dispose__20015;
  memset(v21, 0, sizeof(v21));
  if (*(a1 + 40))
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 1;
    do
    {
      v14[3] = v7;
      v14[4] = 0x40000000;
      v14[5] = ___ZNK2KB22StaticDictionaryCursor8childrenEv_block_invoke;
      v14[6] = &unk_278732F60;
      v14[7] = &v16;
      v14[8] = a1;
      v15 = v8 - 1;
      LXCursorEnumerateChildren();
    }

    while (*(a1 + 40) > v8++);
    v10 = v17;
    v11 = v17[5];
  }

  else
  {
    v11 = 0;
    v10 = &v16;
  }

  memset(v14, 0, 24);
  v12 = v10[6];
  if (v12 != v11)
  {
    v13 = 0x6DB6DB6DB6DB6DB7 * (v12 - v11);
    if (v13 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>>(v13);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  _Block_object_dispose(&v16, 8);
  v22 = v21;
  std::vector<KB::StaticDictionaryCursor>::__destroy_vector::operator()[abi:nn200100](&v22);
  v16 = v14;
  std::vector<KB::StaticDictionaryCursor>::__destroy_vector::operator()[abi:nn200100](&v16);
}

void std::allocator_traits<std::allocator<KB::DictionaryCursors>>::destroy[abi:nn200100]<KB::DictionaryCursors,void,0>(uint64_t a1)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  for (i = 16; i != -8; i -= 8)
  {
    v4 = *(a1 + i);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + i) = 0;
  }
}

void std::vector<KB::StaticDictionaryCursor>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        for (i = -40; i != -64; i -= 8)
        {
          v7 = *&v4[i];
          if (v7)
          {
            CFRelease(v7);
          }

          *&v4[i] = 0;
        }

        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::DictionaryCursors>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::DictionaryCursors>,KB::DictionaryCursors*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      KB::DictionaryCursors::DictionaryCursors(a3, v6);
      v6 += 80;
      a3 += 80;
    }

    while (v6 != a2);
    do
    {
      std::allocator_traits<std::allocator<KB::DictionaryCursors>>::destroy[abi:nn200100]<KB::DictionaryCursors,void,0>(v5);
      v5 += 80;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<KB::DictionaryCursors>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::allocator_traits<std::allocator<KB::DictionaryCursors>>::destroy[abi:nn200100]<KB::DictionaryCursors,void,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void KB::DictionaryCursors::merge_dynamic_children_with_static_siblings(KB::DictionaryCursors *a1, void *a2, const KB::DictionaryContainer *a3)
{
  v6 = *(a1 + 7);
  v7 = *(a3 + 1);
  v8 = *(a3 + 3);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = ___ZNK2KB23DynamicDictionaryCursor35merge_children_with_static_siblingsERNSt3__16vectorINS_17DictionaryCursorsENS1_9allocatorIS3_EEEERKNS_16StaticDictionaryERKNS_17DynamicDictionaryE_block_invoke;
  v16[3] = &__block_descriptor_tmp_9_18157;
  v16[4] = a2;
  v16[5] = v7;
  v16[6] = v8;
  (*(*v6 + 40))(v6, v16);
  v9 = (*(**(a1 + 7) + 80))(*(a1 + 7), *(a3 + 3));
  KB::DictionaryCursors::probability_of_static_trie(a1, a3);
  v11 = a2[1] - *a2;
  if (v11)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 4);
    v13 = (*a2 + 68);
    v14 = 1;
    do
    {
      *(v13 - 1) = v9;
      *v13 = v10;
      v13 += 20;
    }

    while (v12 > v14++);
  }
}

void KB::DynamicDictionaryContainer::do_enumerate_entries(KB::DynamicDictionary *a1, uint64_t a2)
{
  v16 = a2;
  if (TITransientLexiconManagerGetActiveSupplementalLexiconWords())
  {
    RootCursor = LXLexiconCreateRootCursor();
    v17 = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = ___ZZNK2KB26DynamicDictionaryContainer20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v20 = &__block_descriptor_tmp_24;
    v21 = &v16;
    v22 = 5;
    LXCursorEnumerateEntriesRecursively();
    if (RootCursor)
    {
      CFRelease(RootCursor);
    }
  }

  v4 = *(a1 + 15) - *(a1 + 14);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = 1;
    do
    {
      if ((*(*a1 + 88))(a1, v5))
      {
        v8 = LXLexiconCreateRootCursor();
        v17 = MEMORY[0x277D85DD0];
        v18 = 0x40000000;
        v19 = ___ZZNK2KB26DynamicDictionaryContainer20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
        v20 = &__block_descriptor_tmp_24;
        v21 = &v16;
        v22 = 0;
        LXCursorEnumerateEntriesRecursively();
        if (v8)
        {
          CFRelease(v8);
        }
      }

      v5 = v7;
    }

    while (v6 > v7++);
  }

  if (*(a1 + 1))
  {
    v10 = LXLexiconCreateRootCursor();
    v17 = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = ___ZZNK2KB26DynamicDictionaryContainer20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v20 = &__block_descriptor_tmp_24;
    v21 = &v16;
    v22 = 1;
    LXCursorEnumerateEntriesRecursively();
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (*(a1 + 2))
  {
    v11 = LXLexiconCreateRootCursor();
    v17 = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = ___ZZNK2KB26DynamicDictionaryContainer20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v20 = &__block_descriptor_tmp_24;
    v21 = &v16;
    v22 = 2;
    LXCursorEnumerateEntriesRecursively();
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = *(a1 + 3);
  if (v12)
  {
    v13 = *v12;
    if (v13)
    {
      if (*v13)
      {
        v14 = LXLexiconCreateRootCursor();
        v17 = MEMORY[0x277D85DD0];
        v18 = 0x40000000;
        v19 = ___ZZNK2KB26DynamicDictionaryContainer20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
        v20 = &__block_descriptor_tmp_24;
        v21 = &v16;
        v22 = 3;
        LXCursorEnumerateEntriesRecursively();
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  if (KB::DynamicDictionary::named_entity_lexicon(a1))
  {
    v15 = LXLexiconCreateRootCursor();
    v17 = MEMORY[0x277D85DD0];
    v18 = 0x40000000;
    v19 = ___ZZNK2KB26DynamicDictionaryContainer20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v20 = &__block_descriptor_tmp_24;
    v21 = &v16;
    v22 = 4;
    LXCursorEnumerateEntriesRecursively();
    if (v15)
    {
      CFRelease(v15);
    }
  }
}

uint64_t KB::DynamicDictionary::named_entity_lexicon(KB::DynamicDictionary *this)
{
  if ((*(*this + 32))(this))
  {
    v2 = (*(*this + 48))(this, 0);
    if (*v2)
    {
      if (*(v2 + 8))
      {
        v3 = *(v2 + 8);
      }

      else
      {
        v3 = (v2 + 16);
      }
    }

    else
    {
      v3 = "";
    }
  }

  else
  {
    v3 = 0;
  }

  return TITransientLexiconManagerGetNamedEntitiesForLocale(v3);
}

void *KB::DynamicDictionaryContainer::get_persistent_custom_trie_for_locale(void *a1, const KB::String *a2, unsigned int a3)
{
  result = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(a1 + 24, a2, a3);
  if (result)
  {
    v7 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(a1 + 24, a2, v6);
    if (!v7)
    {
      abort();
    }

    v8 = v7[6];
    v9 = *(*a1 + 88);

    return v9(a1, v8);
  }

  return result;
}

uint64_t KB::DynamicDictionaryContainer::get_persistent_custom_trie(KB::DynamicDictionaryContainer *this, unint64_t a2)
{
  v2 = *(this + 14);
  if (a2 >= (*(this + 15) - v2) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

unint64_t KB::DynamicDictionaryContainer::get_total_usage_count(KB::DynamicDictionaryContainer *this, int a2, double a3)
{
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (a2 != -1)
  {
    if (v4 != v5)
    {
      v7 = 0;
      v8 = 0.0;
      v9 = 160;
      do
      {
        if (*(*(this + 11) + v9) == a2)
        {
          v10 = 0.0;
          if (*(v5 + 8 * v7))
          {
            RootCursor = LXLexiconCreateRootCursor();
            if (RootCursor)
            {
              v12 = RootCursor;
              v13 = LXCursorUsageCountRecursive();
              v14 = v13 & ~(v13 >> 31);
              CFRelease(v12);
              v10 = v14;
            }
          }

          v8 = v8 + v10;
          v5 = *(this + 14);
          v4 = *(this + 15);
        }

        ++v7;
        v9 += 176;
      }

      while (v7 < (v4 - v5) >> 3);
      goto LABEL_22;
    }

LABEL_21:
    v8 = 0.0;
    goto LABEL_22;
  }

  v15 = v4 - v5;
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = 0;
  v17 = v15 >> 3;
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v8 = 0.0;
  do
  {
    v19 = *(*(this + 21) + 4 * v16);
    v20 = 0.0;
    if (*(*(this + 14) + 8 * v16))
    {
      v21 = LXLexiconCreateRootCursor();
      v20 = 0.0;
      if (v21)
      {
        v22 = v21;
        v23 = LXCursorUsageCountRecursive();
        v24 = v23 & ~(v23 >> 31);
        CFRelease(v22);
        v20 = v24;
      }
    }

    v8 = v8 + (v19 * v20);
    ++v16;
  }

  while (v18 != v16);
LABEL_22:
  v25 = 0.0;
  v26 = 0.0;
  if (*(this + 1))
  {
    v27 = LXLexiconCreateRootCursor();
    if (v27)
    {
      v28 = v27;
      v29 = LXCursorUsageCountRecursive();
      v30 = v29 & ~(v29 >> 31);
      CFRelease(v28);
      v26 = v30;
    }
  }

  if (*(this + 2))
  {
    v31 = LXLexiconCreateRootCursor();
    if (v31)
    {
      v32 = v31;
      v33 = LXCursorUsageCountRecursive();
      v34 = v33 & ~(v33 >> 31);
      CFRelease(v32);
      v25 = v34;
    }
  }

  v35 = *(this + 3);
  v36 = 0.0;
  v37 = 0.0;
  if (v35)
  {
    v38 = *v35;
    if (v38)
    {
      if (*v38)
      {
        v39 = LXLexiconCreateRootCursor();
        if (v39)
        {
          v40 = v39;
          v41 = LXCursorUsageCountRecursive();
          v42 = v41 & ~(v41 >> 31);
          CFRelease(v40);
          v37 = v42;
        }
      }
    }
  }

  if (KB::DynamicDictionary::named_entity_lexicon(this))
  {
    v43 = LXLexiconCreateRootCursor();
    if (v43)
    {
      v44 = v43;
      v45 = LXCursorUsageCountRecursive();
      v46 = v45 & ~(v45 >> 31);
      CFRelease(v44);
      v36 = v46;
    }
  }

  v47 = 0.0;
  if (TITransientLexiconManagerGetActiveSupplementalLexiconWords())
  {
    v48 = LXLexiconCreateRootCursor();
    if (v48)
    {
      v49 = v48;
      v50 = LXCursorUsageCountRecursive();
      v51 = v50 & ~(v50 >> 31);
      CFRelease(v49);
      v47 = v51;
    }
  }

  return llroundf(ceilf(((((v8 + v26) + v25) + v37) + v36) + v47));
}

uint64_t KB::DynamicDictionaryContainer::get_user_frequency(KB::DynamicDictionaryContainer *this, _LXLexicon *a2, KB::String *a3, unsigned int a4)
{
  v6 = *(this + 14);
  v7 = *(this + 15);
  if (a3 == -1)
  {
    if (v7 == v6)
    {
      v14 = 0.0;
    }

    else
    {
      v13 = 0;
      v14 = 0.0;
      do
      {
        KB::DynamicDictionary::entry_matching_string(&v19, a2);
        v15 = *(*(this + 21) + 4 * v13);
        v16 = v19;
        if (v19)
        {
          v14 = v14 + (v15 * LXEntryGetUsageCount());
          CFRelease(v16);
        }

        else
        {
          v14 = v14 + (v15 * 0.0);
        }

        ++v13;
      }

      while (v13 < (*(this + 15) - *(this + 14)) >> 3);
    }

    v18 = llroundf(ceilf(v14));
    if (v18 >= 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return v18;
    }
  }

  else
  {
    if (v7 == v6)
    {
      v10 = 0;
    }

    else
    {
      v8 = a3;
      v9 = 0;
      v10 = 0;
      v11 = 160;
      do
      {
        if (*(*(this + 11) + v11) == v8)
        {
          KB::DynamicDictionary::entry_matching_string(&v19, a2);
          v12 = v19;
          if (v19)
          {
            v10 += LXEntryGetUsageCount();
            CFRelease(v12);
          }

          v6 = *(this + 14);
          v7 = *(this + 15);
        }

        ++v9;
        v11 += 176;
      }

      while (v9 < (v7 - v6) >> 3);
    }

    if (v10 >= 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return v10;
    }
  }
}

void KB::DynamicDictionary::entry_matching_string(uint64_t *__return_ptr a1@<X8>, _LXLexicon *a3@<X1>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3002000000;
  v11 = __Block_byref_object_copy__2373;
  v12 = __Block_byref_object_dispose__2374;
  cf = 0;
  KB::cf_string_impl<KB::String>(&v7, a3);
  v5 = v7;
  LXLexiconEnumerateEntriesForString();
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v9[5];
  *a1 = v6;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
  }

  _Block_object_dispose(&v8, 8);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __Block_byref_object_copy__2373(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __Block_byref_object_dispose__2374(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

void ___ZN2KB17DynamicDictionary21entry_matching_stringEPK10_LXLexiconRKNS_6StringEj_block_invoke(uint64_t a1, const void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::Word::Word(v12, a2, *(a1 + 48));
  KB::Word::capitalized_string(&v10, v12);
  v8 = KB::String::equal(&v10, *(a1 + 40), 1, v6, v7);
  if (v11)
  {
    v9 = BYTE6(v10) == 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    free(v11);
  }

  if (v8)
  {
    KB::retain_ptr<__CFDictionary const*>::operator=((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }

  KB::Word::~Word(v12);
}

void KB::DynamicDictionaryContainer::get_word_with_string(KB::DynamicDictionaryContainer *this@<X0>, const KB::String *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = 0.0;
  memset(v31, 0, sizeof(v31));
  memset(v34, 0, sizeof(v34));
  *&v41[8] = 0u;
  v39 = 0;
  v37 = 0uLL;
  memset(v38, 0, sizeof(v38));
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v32 = 0u;
  v33 = 0u;
  v31[1] = 16;
  LOBYTE(v31[3]) = 0;
  *&v33 = 0x3F80000000000000;
  DWORD2(v33) = 1065353216;
  v34[1] = 16;
  LOBYTE(v34[3]) = 0;
  __asm { FMOV            V9.2S, #1.0 }

  *&v35 = _D9;
  v38[1] = 16;
  LOBYTE(v38[3]) = 0;
  v40 = 0u;
  *v41 = 0u;
  *&v41[16] = 1065353216;
  v11 = *(this + 14);
  if (*(this + 15) != v11)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = *(*(this + 11) + 176 * v12 + 160);
      KB::entry_from_lexicon(&v18, a2, v5, *(v11 + 8 * v12), 0);
      v15 = v18;
      if (v18)
      {
        KB::Word::Word(v19, v18, v14);
        CFRelease(v15);
        if (LOWORD(v19[0]))
        {
          if (v31[0])
          {
            *(v36 + 12) = vadd_s32(*(v25 + 12), *(v36 + 12));
          }

          else
          {
            KB::String::operator=(v31, v19);
            KB::ByteString::operator=(&v32, &v20);
            *&v33 = v21;
            DWORD2(v33) = v22;
            KB::String::operator=(v34, v23);
            v35 = v24;
            v36[0] = v25[0];
            v36[1] = v25[1];
            v37 = v26;
            KB::String::operator=(v38, v27);
            LOBYTE(v39) = v28;
            *&v41[16] = *&v30[16];
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(&v40, *v30);
            DWORD2(v35) |= 0x2000000u;
          }
        }
      }

      else
      {
        memset(v19, 0, sizeof(v19));
        memset(v23, 0, sizeof(v23));
        v26 = 0uLL;
        *&v30[8] = 0u;
        v28 = 0;
        memset(v27, 0, sizeof(v27));
        v20 = 0u;
        WORD1(v19[0]) = 16;
        BYTE6(v19[0]) = 0;
        v21 = 0x3F80000000000000;
        v22 = 1065353216;
        WORD1(v23[0]) = 16;
        BYTE6(v23[0]) = 0;
        v24 = _D9;
        memset(v25, 0, sizeof(v25));
        v27[1] = 16;
        LOBYTE(v27[3]) = 0;
        v29 = 0u;
        *v30 = 0u;
        *&v30[16] = 1065353216;
      }

      KB::Word::~Word(v19);
      v12 = v13;
      v11 = *(this + 14);
      ++v13;
    }

    while (v12 < (*(this + 15) - v11) >> 3);
  }

  v16 = v19;
  KB::DynamicDictionary::word_from_transient_lexicon_with_string(v19, this, a2);
  if (v31[0])
  {
    if (LOWORD(v19[0]))
    {
      DWORD2(v35) = DWORD2(v35) & 0x7FFCFEFF | DWORD2(v24) & 0x80030100;
      *&v41[16] = *&v30[16];
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(&v40, *v30);
    }

    v16 = v31;
  }

  KB::Word::Word(a3, v16);
  KB::Word::~Word(v19);
  KB::Word::~Word(v31);
}

double KB::Word::Word(KB::Word *this)
{
  *this = 0x100000;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  *(this + 6) = 0x3F80000000000000;
  *(this + 14) = 1065353216;
  *(this + 16) = 0x100000;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 12) = _D0;
  *(this + 26) = 0;
  *(this + 19) = 0;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 40) = 0x100000;
  *(this + 82) = 0;
  *(this + 166) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  return result;
}

double KB::DynamicDictionary::word_from_transient_lexicon_with_string@<D0>(uint64_t *__return_ptr a1@<X8>, KB::DynamicDictionary *this@<X0>, const KB::String *a3@<X1>)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *((*(*this + 48))(this, 0) + 160);
  KB::DynamicDictionary::word_from_supplemental_lexicon(this, a3, 0, v20);
  if (v21 != 1)
  {
    v9 = *(this + 1);
    if (v9)
    {
      KB::entry_from_lexicon(v20, a3, v7, v9, 0);
      v10 = v20[0];
      if (v20[0])
      {
        KB::Word::Word(a1, v20[0], v6);
        CFRelease(v10);
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
        result = KB::Word::Word(a1);
      }

      if (*a1)
      {
        v11 = *(a1 + 26) | 0x20000;
LABEL_33:
        *(a1 + 26) = v11;
        return result;
      }

      KB::Word::~Word(a1);
    }

    v12 = *(this + 2);
    if (v12)
    {
      KB::entry_from_lexicon(v20, a3, v7, v12, 0);
      v13 = v20[0];
      if (v20[0])
      {
        KB::Word::Word(a1, v20[0], v6);
        CFRelease(v13);
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
        result = KB::Word::Word(a1);
      }

      if (*a1)
      {
        v11 = *(a1 + 26) | 0x80000000;
        goto LABEL_33;
      }

      KB::Word::~Word(a1);
    }

    v14 = *(this + 3);
    if (v14)
    {
      v15 = *v14;
      if (v15)
      {
        if (*v15)
        {
          KB::entry_from_lexicon(v20, a3, v7, *v15, 0);
          v16 = v20[0];
          if (v20[0])
          {
            KB::Word::Word(a1, v20[0], v6);
            CFRelease(v16);
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
            result = KB::Word::Word(a1);
          }

          if (*a1)
          {
            v11 = *(a1 + 26) | 0x10000;
            goto LABEL_33;
          }

          KB::Word::~Word(a1);
        }
      }
    }

    v17 = KB::DynamicDictionary::named_entity_lexicon(this);
    if (v17)
    {
      KB::entry_from_lexicon(v20, a3, v18, v17, 0);
      v19 = v20[0];
      if (v20[0])
      {
        KB::Word::Word(a1, v20[0], v6);
        CFRelease(v19);
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
        result = KB::Word::Word(a1);
      }

      if (*a1)
      {
        v11 = *(a1 + 26) | 0x100;
        goto LABEL_33;
      }

      KB::Word::~Word(a1);
    }

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
    return KB::Word::Word(a1);
  }

  KB::Word::Word(a1, v20);
  if (v21 == 1)
  {
    KB::Word::~Word(v20);
  }

  return result;
}

void KB::entry_from_lexicon(void *a1, unsigned __int16 *a2, double a3, uint64_t a4, uint64_t a5)
{
  RootCursor = LXLexiconCreateRootCursor();
  v7 = LXCursorCreateByAdvancingWithUTF8();
  if (!v7)
  {
    *a1 = 0;
    if (!RootCursor)
    {
      return;
    }

    goto LABEL_7;
  }

  v8 = v7;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__2373;
  v14 = __Block_byref_object_dispose__2374;
  cf = 0;
  LXCursorEnumerateEntries();
  v9 = v11[5];
  *a1 = v9;
  if (v9)
  {
    CFRetain(v9);
    *a1 = v9;
  }

  _Block_object_dispose(&v10, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v8);
  if (RootCursor)
  {
LABEL_7:
    CFRelease(RootCursor);
  }
}

uint64_t KB::Word::Word(uint64_t a1, uint64_t a2)
{
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  v4 = KB::String::operator=(a1, a2);
  v5 = *(a2 + 32);
  *(v4 + 32) = *(a2 + 32);
  if (v5 >= 0xF)
  {
    *(a2 + 32) = 0;
  }

  v6 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v6;
  *(a1 + 64) = 0x100000;
  *(a1 + 68) = 0;
  *(a1 + 70) = 0;
  *(a1 + 72) = 0;
  KB::String::operator=(a1 + 64, (a2 + 64));
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v9;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  *(a1 + 160) = 0x100000;
  *(a1 + 164) = 0;
  *(a1 + 166) = 0;
  *(a1 + 168) = 0;
  KB::String::operator=(a1 + 160, (a2 + 160));
  v10 = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a1 + 200) = v10;
  v13 = *(a2 + 216);
  v12 = a2 + 216;
  v11 = v13;
  v14 = *(v12 - 24);
  *(a1 + 216) = v13;
  *(a1 + 192) = v14;
  *(a1 + 208) = *(v12 - 8);
  *(v12 - 8) = 0;
  v15 = *(v12 + 8);
  *(a1 + 224) = v15;
  *(a1 + 232) = *(v12 + 16);
  if (v15)
  {
    v16 = *(v11 + 8);
    v17 = *(a1 + 208);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(v10 + 8 * v16) = a1 + 216;
    *v12 = 0;
    *(v12 + 8) = 0;
  }

  return a1;
}

void ___ZN2KBL18entry_from_lexiconERKNS_6StringEPK10_LXLexiconU13block_pointerFbS2_S2_E_block_invoke(void *a1, const void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = LXEntryCopyString();
  KB::utf8_string(v11, v6);
  v9 = a1[4];
  if (v9)
  {
    if (((*(v9 + 16))(v9, v11, a1[6]) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = a1[6];
  if (v11 == v10 || KB::String::equal(v11, v10, 1, v7, v8))
  {
LABEL_6:
    KB::retain_ptr<__CFDictionary const*>::operator=((*(a1[5] + 8) + 40), a2);
    *a3 = 1;
  }

LABEL_7:
  if (v12 && v11[6] == 1)
  {
    free(v12);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void KB::DynamicDictionary::word_from_supplemental_lexicon(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  ActiveSupplementalLexiconWords = TITransientLexiconManagerGetActiveSupplementalLexiconWords();
  if (ActiveSupplementalLexiconWords && (KB::entry_from_lexicon(&v16, a2, v9, ActiveSupplementalLexiconWords, a3), (v10 = v16) != 0))
  {
    v11 = (*(*a1 + 48))(a1, 0);
    KB::Word::Word(v17, v10, *(v11 + 160));
    TILXEntryGetSupplementalItemIdentifiers(v13, v10);
    v20 = v15;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v19, v14);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13);
    if (TILXEntryIsPartOfHyphenatedWord(v10))
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }

    v18 = v18 & 0xFFFFFFEF | v12;
    KB::Word::Word(a4, v17);
    a4[240] = 1;
    KB::Word::~Word(v17);
    CFRelease(v10);
  }

  else
  {
    *a4 = 0;
    a4[240] = 0;
  }
}

uint64_t KB::DynamicDictionaryContainer::do_load(uint64_t a1, unsigned __int16 **a2, int a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v66 = (a1 + 112);
  if (*(a1 + 112) != *(a1 + 120))
  {
    return 1;
  }

  v4 = *a2;
  v68 = a2[1];
  if (*a2 == v68)
  {
    return 1;
  }

  if (a3)
  {
    v6 = "Siri-TextInput-Dynamic.";
  }

  else
  {
    v6 = "TextInput-Dynamic.";
  }

  v7 = (a1 + 88);
  __s = v6;
  do
  {
    KB::String::String(v75, __s);
    KB::String::append(v75, v4);
    KB::cf_string_impl<KB::String>(&v70, v75);
    v8 = v70;
    View = LXLexiconRepositoryCreateView();
    if (v8)
    {
      CFRelease(v8);
    }

    v11 = *(a1 + 120);
    v10 = *(a1 + 128);
    if (v11 >= v10)
    {
      v13 = (v11 - *v66) >> 3;
      if ((v13 + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v14 = v10 - *v66;
      v15 = v14 >> 2;
      if (v14 >> 2 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v74 = v66;
      if (v16)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(v16);
      }

      v17 = (8 * v13);
      *(8 * v13) = View;
      if (View)
      {
        CFRetain(View);
        *v17 = View;
      }

      v12 = v17 + 1;
      v18 = *(a1 + 112);
      v19 = *(a1 + 120);
      v20 = (v17 + v18 - v19);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::retain_ptr<_LXLexicon const*>>,KB::retain_ptr<_LXLexicon const*>*>(v18, v19, v20);
      v21 = *(a1 + 112);
      *(a1 + 112) = v20;
      *(a1 + 120) = v17 + 1;
      v22 = *(a1 + 128);
      *(a1 + 128) = 0;
      v72 = v21;
      v73 = v22;
      v70 = v21;
      v71 = v21;
      std::__split_buffer<KB::retain_ptr<_LXLexicon const*>>::~__split_buffer(&v70);
    }

    else
    {
      *v11 = View;
      if (View)
      {
        CFRetain(View);
        *v11 = View;
      }

      v12 = v11 + 1;
    }

    *(a1 + 120) = v12;
    v24 = *(a1 + 96);
    v23 = *(a1 + 104);
    if (v24 >= v23)
    {
      v27 = 0x2E8BA2E8BA2E8BA3 * ((v24 - *v7) >> 4);
      v28 = v27 + 1;
      if ((v27 + 1) > 0x1745D1745D1745DLL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v29 = 0x2E8BA2E8BA2E8BA3 * ((v23 - *v7) >> 4);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0xBA2E8BA2E8BA2ELL)
      {
        v30 = 0x1745D1745D1745DLL;
      }

      else
      {
        v30 = v28;
      }

      v74 = v7;
      if (v30)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LexiconInfo>>(v30);
      }

      v31 = 176 * v27;
      KB::String::String((176 * v27), v4);
      KB::String::String((176 * v27 + 32), (v4 + 4));
      KB::String::String((176 * v27 + 64), (v4 + 8));
      KB::String::String((176 * v27 + 96), (v4 + 12));
      KB::String::String((176 * v27 + 128), (v4 + 16));
      v32 = v4[20];
      *(v31 + 168) = *(v4 + 42);
      *(v31 + 160) = v32;
      v26 = 176 * v27 + 176;
      v33 = *(a1 + 88);
      v34 = *(a1 + 96);
      v35 = v31 + v33 - v34;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LexiconInfo>,KB::LexiconInfo*>(v33, v34, v35);
      v36 = *(a1 + 88);
      *(a1 + 88) = v35;
      *(a1 + 96) = v26;
      v37 = *(a1 + 104);
      *(a1 + 104) = 0;
      v72 = v36;
      v73 = v37;
      v70 = v36;
      v71 = v36;
      std::__split_buffer<KB::LexiconInfo>::~__split_buffer(&v70);
    }

    else
    {
      KB::String::String(*(a1 + 96), v4);
      KB::String::String((v24 + 32), (v4 + 4));
      KB::String::String((v24 + 64), (v4 + 8));
      KB::String::String((v24 + 96), (v4 + 12));
      KB::String::String((v24 + 128), (v4 + 16));
      v25 = v4[20];
      *(v24 + 168) = *(v4 + 42);
      *(v24 + 160) = v25;
      v26 = v24 + 176;
    }

    *(a1 + 96) = v26;
    v39 = *(a1 + 176);
    v38 = *(a1 + 184);
    cf = View;
    if (v39 >= v38)
    {
      v41 = *(a1 + 168);
      v42 = v39 - v41;
      v43 = (v39 - v41) >> 2;
      v44 = v43 + 1;
      if ((v43 + 1) >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v45 = v38 - v41;
      if (v45 >> 1 > v44)
      {
        v44 = v45 >> 1;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v46 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v46);
      }

      v47 = v43;
      v48 = (4 * v43);
      v49 = &v48[-v47];
      *v48 = *(v4 + 42);
      v40 = v48 + 1;
      memcpy(v49, v41, v42);
      v50 = *(a1 + 168);
      *(a1 + 168) = v49;
      *(a1 + 176) = v40;
      *(a1 + 184) = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v39 = *(v4 + 42);
      v40 = v39 + 4;
    }

    *(a1 + 176) = v40;
    v52 = *(a1 + 112);
    v51 = *(a1 + 120);
    if (v4[1])
    {
      v53 = v4[1];
    }

    else
    {
      v53 = (v4 + 2);
    }

    v54 = KB::String::hash(v53, *v4);
    v57 = v54;
    v58 = *(a1 + 200);
    if (!v58)
    {
      goto LABEL_68;
    }

    v59 = v7;
    v60 = vcnt_s8(v58);
    v60.i16[0] = vaddlv_u8(v60);
    v61 = v60.u32[0];
    if (v60.u32[0] > 1uLL)
    {
      v62 = v54;
      if (v58 <= v54)
      {
        v62 = v54 % v58;
      }
    }

    else
    {
      v62 = (v58 - 1) & v54;
    }

    v63 = *(*(a1 + 192) + 8 * v62);
    if (!v63 || (v64 = *v63) == 0)
    {
LABEL_68:
      operator new();
    }

    while (1)
    {
      v65 = v64[1];
      if (v65 == v57)
      {
        break;
      }

      if (v61 > 1)
      {
        if (v65 >= v58)
        {
          v65 %= v58;
        }
      }

      else
      {
        v65 &= v58 - 1;
      }

      if (v65 != v62)
      {
        goto LABEL_68;
      }

LABEL_67:
      v64 = *v64;
      if (!v64)
      {
        goto LABEL_68;
      }
    }

    if (v64 + 2 != v4 && !KB::String::equal((v64 + 2), v4, 1, v55, v56))
    {
      goto LABEL_67;
    }

    v7 = v59;
    v64[6] = ((v51 - v52) >> 3) - 1;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v77 && v76 == 1)
    {
      free(v77);
    }

    v4 += 22;
  }

  while (v4 != v68);
  return 1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LexiconInfo>>(unint64_t a1)
{
  if (a1 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LexiconInfo>,KB::LexiconInfo*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      *v7 = 0x100000;
      *(v7 + 4) = 0;
      *(v7 + 6) = 0;
      *(v7 + 8) = 0;
      v8 = KB::String::operator=(a3 + v6, (v5 + v6));
      *(v8 + 32) = 0x100000;
      *(v7 + 36) = 0;
      *(v7 + 38) = 0;
      *(v7 + 40) = 0;
      KB::String::operator=(v8 + 32, (v5 + v6 + 32));
      *(v7 + 64) = 0x100000;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 72) = 0;
      KB::String::operator=(a3 + v6 + 64, (v5 + v6 + 64));
      *(v7 + 96) = 0x100000;
      *(v7 + 100) = 0;
      *(v7 + 102) = 0;
      *(v7 + 104) = 0;
      KB::String::operator=(a3 + v6 + 96, (v5 + v6 + 96));
      *(v7 + 128) = 0x100000;
      v9 = a3 + v6 + 128;
      *(v9 + 4) = 0;
      *(v9 + 6) = 0;
      *(v9 + 8) = 0;
      KB::String::operator=(v9, (v5 + v6 + 128));
      v10 = *(v5 + v6 + 160);
      *(v9 + 40) = *(v5 + v6 + 168);
      *(v9 + 32) = v10;
      v6 += 176;
    }

    while (v5 + v6 != a2);
    do
    {
      std::allocator_traits<std::allocator<KB::LexiconInfo>>::destroy[abi:nn200100]<KB::LexiconInfo,void,0>(v5);
      v5 += 176;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<KB::LexiconInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    std::allocator_traits<std::allocator<KB::LexiconInfo>>::destroy[abi:nn200100]<KB::LexiconInfo,void,0>(i - 176);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<KB::LexiconInfo>>::destroy[abi:nn200100]<KB::LexiconInfo,void,0>(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2 && *(a1 + 134) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 104);
  if (v3 && *(a1 + 102) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 72);
  if (v4 && *(a1 + 70) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && *(a1 + 38) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 8);
  if (v6 && *(a1 + 6) == 1)
  {

    free(v6);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::retain_ptr<_LXLexicon const*>>,KB::retain_ptr<_LXLexicon const*>*>(CFTypeRef *a1, CFTypeRef *a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a3++ = v6;
    }

    while (v5 != a2);
    do
    {
      if (*v4)
      {
        CFRelease(*v4);
      }

      *v4++ = 0;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<KB::retain_ptr<_LXLexicon const*>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v6 = *(v3 - 1);
      v5 = v3 - 1;
      v4 = v6;
      *(a1 + 16) = v5;
      v7 = v5;
      if (v6)
      {
        CFRelease(v4);
        v7 = *(a1 + 16);
      }

      *v5 = 0;
      v3 = v7;
    }

    while (v7 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void KB::DynamicDictionaryContainer::~DynamicDictionaryContainer(void **this)
{
  KB::DynamicDictionaryContainer::~DynamicDictionaryContainer(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD75C0;
  if (this[27])
  {
    std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::__deallocate_node(this[26]);
    this[26] = 0;
    v2 = this[25];
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(this[24] + i) = 0;
      }
    }

    this[27] = 0;
  }

  std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::__deallocate_node(this[26]);
  v4 = this[24];
  this[24] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = this[21];
  if (v5)
  {
    this[22] = v5;
    operator delete(v5);
  }

  v6 = this[18];
  if (v6 && *(this + 142) == 1)
  {
    free(v6);
  }

  v7 = this + 14;
  std::vector<KB::retain_ptr<_LXLexicon const*>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = this + 11;
  std::vector<KB::LexiconInfo>::__destroy_vector::operator()[abi:nn200100](&v7);

  KB::DynamicDictionary::~DynamicDictionary(this);
}

void std::vector<KB::retain_ptr<_LXLexicon const*>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<KB::LexiconInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 176;
        std::allocator_traits<std::allocator<KB::LexiconInfo>>::destroy[abi:nn200100]<KB::LexiconInfo,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void KB::DynamicDictionary::~DynamicDictionary(KB::DynamicDictionary *this)
{
  *this = &unk_283FD76C0;
  v2 = *(this + 8);
  if (v2 && *(this + 62) == 1)
  {
    free(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](void *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; *i = 0)
  {
    v5 = *--i;
    v4 = v5;
    if (v5)
    {
      CFRelease(v4);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[3];
      if (v3)
      {
        if (*(v2 + 22) == 1)
        {
          free(v3);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void KB::DynamicDictionarySingle::do_enumerate_entries(KB::DynamicDictionary *a1, uint64_t a2)
{
  v11 = a2;
  if (TITransientLexiconManagerGetActiveSupplementalLexiconWords())
  {
    RootCursor = LXLexiconCreateRootCursor();
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZZNK2KB23DynamicDictionarySingle20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v15 = &__block_descriptor_tmp_23;
    v16 = &v11;
    v17 = 5;
    LXCursorEnumerateEntriesRecursively();
    if (RootCursor)
    {
      CFRelease(RootCursor);
    }
  }

  if ((*(*a1 + 88))(a1, 0))
  {
    v4 = LXLexiconCreateRootCursor();
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZZNK2KB23DynamicDictionarySingle20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v15 = &__block_descriptor_tmp_23;
    v16 = &v11;
    v17 = 0;
    LXCursorEnumerateEntriesRecursively();
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (*(a1 + 1))
  {
    v5 = LXLexiconCreateRootCursor();
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZZNK2KB23DynamicDictionarySingle20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v15 = &__block_descriptor_tmp_23;
    v16 = &v11;
    v17 = 1;
    LXCursorEnumerateEntriesRecursively();
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*(a1 + 2))
  {
    v6 = LXLexiconCreateRootCursor();
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZZNK2KB23DynamicDictionarySingle20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v15 = &__block_descriptor_tmp_23;
    v16 = &v11;
    v17 = 2;
    LXCursorEnumerateEntriesRecursively();
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 3);
  if (v7)
  {
    v8 = *v7;
    if (v8)
    {
      if (*v8)
      {
        v9 = LXLexiconCreateRootCursor();
        v12 = MEMORY[0x277D85DD0];
        v13 = 0x40000000;
        v14 = ___ZZNK2KB23DynamicDictionarySingle20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
        v15 = &__block_descriptor_tmp_23;
        v16 = &v11;
        v17 = 3;
        LXCursorEnumerateEntriesRecursively();
        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }

  if (KB::DynamicDictionary::named_entity_lexicon(a1))
  {
    v10 = LXLexiconCreateRootCursor();
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZZNK2KB23DynamicDictionarySingle20do_enumerate_entriesEU13block_pointerFvPK8_LXEntryNS_16DynamicEntryTypeEEENK3__0clEPK10_LXLexiconS4__block_invoke;
    v15 = &__block_descriptor_tmp_23;
    v16 = &v11;
    v17 = 4;
    LXCursorEnumerateEntriesRecursively();
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

uint64_t KB::DynamicDictionarySingle::get_total_usage_count(KB::DynamicDictionarySingle *this, double a2)
{
  if (*(this + 33) && (RootCursor = LXLexiconCreateRootCursor()) != 0)
  {
    v4 = RootCursor;
    v5 = LXCursorUsageCountRecursive();
    v6 = v5 & ~(v5 >> 31);
    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 1) && (v7 = LXLexiconCreateRootCursor()) != 0)
  {
    v8 = v7;
    v9 = LXCursorUsageCountRecursive();
    v10 = v9 & ~(v9 >> 31);
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  if (*(this + 2) && (v11 = LXLexiconCreateRootCursor()) != 0)
  {
    v12 = v11;
    v13 = LXCursorUsageCountRecursive();
    v14 = v13 & ~(v13 >> 31);
    CFRelease(v12);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 3);
  if (v15 && (v16 = *v15) != 0 && *v16 && (v17 = LXLexiconCreateRootCursor()) != 0)
  {
    v18 = v17;
    v19 = LXCursorUsageCountRecursive();
    v20 = v19 & ~(v19 >> 31);
    CFRelease(v18);
  }

  else
  {
    v20 = 0;
  }

  if (KB::DynamicDictionary::named_entity_lexicon(this) && (v21 = LXLexiconCreateRootCursor()) != 0)
  {
    v22 = v21;
    v23 = LXCursorUsageCountRecursive();
    v24 = v23 & ~(v23 >> 31);
    CFRelease(v22);
  }

  else
  {
    v24 = 0;
  }

  if (TITransientLexiconManagerGetActiveSupplementalLexiconWords() && (v25 = LXLexiconCreateRootCursor()) != 0)
  {
    v26 = v25;
    v27 = LXCursorUsageCountRecursive();
    v28 = v27 & ~(v27 >> 31);
    CFRelease(v26);
  }

  else
  {
    v28 = 0;
  }

  return (v10 + v6 + v14 + v20 + v24 + v28);
}

uint64_t KB::DynamicDictionarySingle::get_user_frequency(KB::DynamicDictionarySingle *this, _LXLexicon *a2, const KB::String *a3)
{
  (*(*this + 88))(this, 0);
  KB::DynamicDictionary::entry_matching_string(&v8, a2);
  v4 = v8;
  if (!v8)
  {
    return 0;
  }

  UsageCount = LXEntryGetUsageCount();
  if (UsageCount >= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v6 = UsageCount;
  }

  CFRelease(v4);
  return v6;
}

void KB::DynamicDictionarySingle::get_word_with_string(KB::DynamicDictionarySingle *this@<X0>, const KB::String *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 88))(this, 0);
  v7 = *((*(*this + 48))(this, 0) + 160);
  KB::entry_from_lexicon(&v15, a2, v8, v6, 0);
  v9 = v15;
  if (!v15)
  {
    memset(v16, 0, sizeof(v16));
    v19 = 0u;
    v20 = 0u;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    *&v30[8] = 0u;
    WORD1(v16[0]) = 16;
    BYTE6(v16[0]) = 0;
    v17 = 0x3F80000000000000;
    v18 = 1065353216;
    WORD1(v19) = 16;
    BYTE6(v19) = 0;
    __asm { FMOV            V1.2S, #1.0 }

    v21 = _D1;
    v25 = 0;
    v23 = 0u;
    v22 = 0u;
    WORD1(v26) = 16;
    BYTE6(v26) = 0;
    v29 = 0u;
    *v30 = 0u;
    *&v30[16] = 1065353216;
    goto LABEL_5;
  }

  KB::Word::Word(v16, v15, v7);
  CFRelease(v9);
  if (!LOWORD(v16[0]))
  {
LABEL_5:
    KB::DynamicDictionary::word_from_transient_lexicon_with_string(a3, this, a2);
    goto LABEL_6;
  }

  KB::Word::Word(a3, v16);
LABEL_6:
  KB::Word::~Word(v16);
}

uint64_t KB::DynamicDictionarySingle::do_load(uint64_t a1, uint64_t *a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 == a2[1])
  {
    v15 = 0x100000;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0x100000;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0x100000;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0x100000;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0x100000;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    LODWORD(v40) = 0;
    BYTE4(v40) = 0;
    v41 = 0;
    KB::String::operator=(a1 + 88, &v15);
    KB::String::operator=(a1 + 120, &v20);
    KB::String::operator=(a1 + 152, &v25);
    KB::String::operator=(a1 + 184, &v30);
    KB::String::operator=(a1 + 216, &v35);
    v12 = v38;
    *(a1 + 248) = v40;
    *(a1 + 256) = v41;
    if (v12 && v37 == 1)
    {
      free(v12);
    }

    if (v33 && v32 == 1)
    {
      free(v33);
    }

    if (v28 && v27 == 1)
    {
      free(v28);
    }

    if (v23 && v22 == 1)
    {
      free(v23);
    }

    if (v18 && v17 == 1)
    {
      free(v18);
    }

    v13 = *(a1 + 264);
    if (v13)
    {
      CFRelease(v13);
    }

    result = 0;
    *(a1 + 264) = 0;
  }

  else
  {
    if (a3)
    {
      v5 = "Siri-TextInput-Dynamic.";
    }

    else
    {
      v5 = "TextInput-Dynamic.";
    }

    KB::String::String(&v15, v5);
    KB::String::append(&v15, v4);
    KB::cf_string_impl<KB::String>(&v14, &v15);
    v6 = v14;
    View = LXLexiconRepositoryCreateView();
    v8 = *(a1 + 264);
    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 264) = View;
    if (v6)
    {
      CFRelease(v6);
    }

    KB::String::operator=((a1 + 88), v4);
    KB::String::operator=((a1 + 120), (v4 + 32));
    KB::String::operator=((a1 + 152), (v4 + 64));
    KB::String::operator=((a1 + 184), (v4 + 96));
    KB::String::operator=((a1 + 216), (v4 + 128));
    v9 = *(v4 + 160);
    *(a1 + 256) = *(v4 + 168);
    *(a1 + 248) = v9;
    if (v18 && v17 == 1)
    {
      free(v18);
    }

    v10 = *(a1 + 264);
    if (v10)
    {
      CFRetain(v10);
      CFRelease(v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL KB::DynamicDictionarySingle::get_valid(KB::DynamicDictionarySingle *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    CFRetain(*(this + 33));
    CFRelease(v1);
  }

  return v1 != 0;
}

void KB::DynamicDictionarySingle::~DynamicDictionarySingle(KB::DynamicDictionarySingle *this)
{
  KB::DynamicDictionarySingle::~DynamicDictionarySingle(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD7640;
  v2 = *(this + 35);
  if (v2 && *(this + 278) == 1)
  {
    free(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 33) = 0;
  v4 = *(this + 28);
  if (v4 && *(this + 222) == 1)
  {
    free(v4);
  }

  v5 = *(this + 24);
  if (v5 && *(this + 190) == 1)
  {
    free(v5);
  }

  v6 = *(this + 20);
  if (v6 && *(this + 158) == 1)
  {
    free(v6);
  }

  v7 = *(this + 16);
  if (v7 && *(this + 126) == 1)
  {
    free(v7);
  }

  v8 = *(this + 12);
  if (v8 && *(this + 94) == 1)
  {
    free(v8);
  }

  KB::DynamicDictionary::~DynamicDictionary(this);
}

uint64_t KB::DynamicDictionary::user_dictionary_trie(KB::DynamicDictionary *this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *v1) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t KB::DynamicDictionary::user_dictionary(KB::DynamicDictionary *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t KB::DynamicDictionary::named_entity_phrase_lexicon(KB::DynamicDictionary *this)
{
  if ((*(*this + 32))(this))
  {
    v2 = (*(*this + 48))(this, 0);
    if (*v2)
    {
      if (*(v2 + 8))
      {
        v3 = *(v2 + 8);
      }

      else
      {
        v3 = (v2 + 16);
      }
    }

    else
    {
      v3 = "";
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = +[TITransientLexiconManager sharedInstance];
  v5 = [v4 namedEntityPhraseLexiconForLocale:v3];

  return v5;
}

KB::String *KB::DynamicDictionary::dynamic_lexicon_name_with_siri_mode@<X0>(KB::DynamicDictionary *this@<X0>, const KB::String *a2@<X1>, KB::String *a3@<X8>)
{
  if (a2)
  {
    v4 = "Siri-TextInput-Dynamic.";
  }

  else
  {
    v4 = "TextInput-Dynamic.";
  }

  v5 = KB::String::String(a3, v4);

  return KB::String::append(v5, this);
}

KB::String *KB::DynamicDictionary::dynamic_lexicon_name@<X0>(KB::DynamicDictionary *this@<X0>, KB::String *a2@<X8>)
{
  v3 = KB::String::String(a2, "TextInput-Dynamic.");

  return KB::String::append(v3, this);
}

void KB::DynamicDictionary::load_address_book(KB::DynamicDictionary *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0x100000;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!(*(*this + 32))(this))
  {
    goto LABEL_5;
  }

  v2 = &v10;
  v3 = (*(*this + 48))(this, 0);
  KB::String::operator=(&v6, v3);
  if (v9)
  {
    v2 = v9;
  }

  if (!v6)
  {
LABEL_5:
    v2 = "";
  }

  v4 = +[TITransientLexiconManager sharedInstance];
  v5 = [v4 addressBookLexiconForLocale:v2];

  *(this + 1) = v5;
  if (v9)
  {
    if (v8 == 1)
    {
      free(v9);
    }
  }
}

void KB::DynamicDictionary::load_app_names(KB::DynamicDictionary *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0x100000;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!(*(*this + 32))(this))
  {
    goto LABEL_5;
  }

  v2 = &v10;
  v3 = (*(*this + 48))(this, 0);
  KB::String::operator=(&v6, v3);
  if (v9)
  {
    v2 = v9;
  }

  if (!v6)
  {
LABEL_5:
    v2 = "";
  }

  v4 = +[TITransientLexiconManager sharedInstance];
  v5 = [v4 appNameLexiconForLocale:v2];

  *(this + 2) = v5;
  if (v9)
  {
    if (v8 == 1)
    {
      free(v9);
    }
  }
}

BOOL KB::DynamicDictionary::address_book_contains(KB::DynamicDictionary *this, const KB::String *a2, double a3)
{
  if (!*(this + 1))
  {
    return 0;
  }

  RootCursor = LXLexiconCreateRootCursor();
  v4 = LXCursorCreateByAdvancingWithUTF8();
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }

  v5 = LXCursorHasEntries() != 0;
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

BOOL KB::DynamicDictionary::app_names_contains(KB::DynamicDictionary *this, const KB::String *a2, double a3)
{
  if (!*(this + 2))
  {
    return 0;
  }

  RootCursor = LXLexiconCreateRootCursor();
  v4 = LXCursorCreateByAdvancingWithUTF8();
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }

  v5 = LXCursorHasEntries() != 0;
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void KB::DynamicDictionary::load_named_entities(KB::DynamicDictionary *this)
{
  v1 = +[TITransientLexiconManager sharedInstance];
  [v1 loadLexicons];
}

uint64_t KB::DynamicDictionary::filter_phrase(KB::DynamicDictionary *this, const __CFString *a2, const KB::StaticDictionary *a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  KB::utf8_string(&v23, a2);
  WORD2(v21[0]) = 0;
  BYTE6(v21[0]) = 0;
  v21[1] = " \t\n";
  LODWORD(v21[0]) = 1048579;
  v22 = 0;
  KB::sbs_string_tokenize(&v19, &v23, v21);
  if (v21[1])
  {
    v7 = BYTE6(v21[0]) == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v21[1]);
  }

  if (v24 && BYTE6(v23) == 1)
  {
    free(v24);
  }

  v8 = v19;
  v9 = v20;
  if (v19 == v20)
  {
LABEL_28:
    v17 = 1;
    goto LABEL_34;
  }

  v10 = 0;
  while (1)
  {
    if (!v8[2])
    {
      KB::String::compute_length(v8);
      if (!v8[2])
      {
        goto LABEL_27;
      }
    }

    if (KB::string_has_numbers(v8, v6))
    {
      goto LABEL_33;
    }

    v10 += KB::string_has_letters(v8, v11);
    if (v10 > 3)
    {
      goto LABEL_33;
    }

    KB::StaticDictionary::candidates_for_string(v21, a3, v8, 0);
    v12 = v21[1];
    v13 = v21[0];
    if (v21[0] == v21[1])
    {
      goto LABEL_32;
    }

    if (a4)
    {
      break;
    }

LABEL_26:
    v23 = v21;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v23);
LABEL_27:
    v8 += 16;
    if (v8 == v9)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    if (v13[104] < 0 || !*(v13 + 30))
    {
      goto LABEL_25;
    }

    KB::Word::capitalized_string(&v23, v13);
    if (&v23 == v8)
    {
      break;
    }

    v16 = KB::String::equal(&v23, v8, 1, v14, v15);
    if (v24 && BYTE6(v23) == 1)
    {
      free(v24);
    }

    if (v16)
    {
      goto LABEL_32;
    }

LABEL_25:
    v13 += 240;
    if (v13 == v12)
    {
      goto LABEL_26;
    }
  }

  if (v24 && BYTE6(v23) == 1)
  {
    free(v24);
  }

LABEL_32:
  v23 = v21;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v23);
LABEL_33:
  v17 = 0;
LABEL_34:
  v23 = &v19;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v23);
  return v17;
}

void KB::DynamicDictionary::retrieve_phrase_candidates(KB::DynamicDictionary *a1, unsigned __int16 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = KB::DynamicDictionary::named_entity_phrase_lexicon(a1);
  ActiveSupplementalLexiconPhrases = TITransientLexiconManagerGetActiveSupplementalLexiconPhrases();
  if (!(v6 | ActiveSupplementalLexiconPhrases))
  {
    return;
  }

  if (*(a2 + 1))
  {
    v8 = *(a2 + 1);
  }

  else
  {
    v8 = a2 + 8;
  }

  v9 = *a2;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v10 = *a2;
  v11 = v8;
  while (*v11 != 32)
  {
    v11 = (v11 + 1);
    if (!--v10)
    {
      v11 = (v8 + v9);
      break;
    }
  }

  if (v11 - v8 != v9)
  {
    goto LABEL_27;
  }

  if (*a2)
  {
    v12 = *a2;
    v13 = v8;
    while (*v13 != 45)
    {
      v13 = (v13 + 1);
      if (!--v12)
      {
        v13 = (v8 + v9);
        break;
      }
    }
  }

  else
  {
LABEL_16:
    v13 = v8;
  }

  if (v13 - v8 == v9)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v14 = TIOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a2 + 1);
        if (!v15)
        {
          v15 = a2 + 8;
        }

        if (!*a2)
        {
          v15 = "";
        }

        *buf = 136315394;
        *&buf[4] = "retrieve_phrase_candidates";
        v26 = 2080;
        v27 = v15;
        v16 = "%s %s was filtered out from the list of phrase candidate words because it does not contain a space or hyphen";
        v17 = v14;
        v18 = 22;
LABEL_47:
        _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, v16, buf, v18);
        return;
      }
    }

    return;
  }

LABEL_27:
  if (ActiveSupplementalLexiconPhrases)
  {
    KB::cf_string_impl<KB::String>(buf, a2);
    v19 = *buf;
    LXLexiconEnumerateEntriesForString();
    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (v6)
  {
    v20 = a2[2];
    if (!a2[2])
    {
      KB::String::compute_length(a2);
      v20 = a2[2];
    }

    if (v20 <= 3)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v22 = TIOSLogFacility();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(a2 + 1);
          if (!v23)
          {
            v23 = a2 + 8;
          }

          if (*a2)
          {
            v24 = v23;
          }

          else
          {
            v24 = "";
          }

          *buf = 136315650;
          *&buf[4] = "retrieve_phrase_candidates";
          v26 = 2080;
          v27 = v24;
          v28 = 1024;
          v29 = 4;
          v16 = "%s %s was filtered out from the list of phrase candidate words because it's less than %u characters long";
          v17 = v22;
          v18 = 28;
          goto LABEL_47;
        }
      }
    }

    else
    {
      KB::cf_string_impl<KB::String>(buf, a2);
      v21 = *buf;
      LXLexiconEnumerateEntriesForString();
      if (v21)
      {
        CFRelease(v21);
      }
    }
  }
}

void ___ZN2KB17DynamicDictionary26retrieve_phrase_candidatesERKNS_6StringERKNS_16StaticDictionaryEbRNSt3__16vectorINS_4WordENS7_9allocatorIS9_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  KB::Word::Word(v6, a2, 0);
  TILXEntryGetSupplementalItemIdentifiers(v4, a2);
  v8 = v5;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v7, v4[2]);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v4);
  std::vector<KB::Word>::push_back[abi:nn200100](*(a1 + 32), v6);
  KB::Word::~Word(v6);
}

void ___ZN2KB17DynamicDictionary26retrieve_phrase_candidatesERKNS_6StringERKNS_16StaticDictionaryEbRNSt3__16vectorINS_4WordENS7_9allocatorIS9_EEEE_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v4 = LXEntryCopyString();
  if (KB::DynamicDictionary::filter_phrase(v4, v4, *(a1 + 40), *(a1 + 56)))
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v5 = TIOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        KB::utf8_string(&v24, v4);
        v6 = v25;
        if (!v25)
        {
          v6 = v26;
        }

        if (!v24)
        {
          v6 = "";
        }

        v20 = 136315394;
        v21 = "retrieve_phrase_candidates_block_invoke";
        v22 = 2080;
        v23 = v6;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%s %s was filtered out from the list of phrase candidate words", &v20, 0x16u);
        if (v25 && BYTE6(v24) == 1)
        {
          free(v25);
        }
      }
    }
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    if (v8 >= v9)
    {
      v11 = 0xEEEEEEEEEEEEEEEFLL * ((v8 - *v7) >> 4);
      if (v11 + 1 > 0x111111111111111)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v12 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - *v7) >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= v11 + 1)
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x88888888888888)
      {
        v14 = 0x111111111111111;
      }

      else
      {
        v14 = v13;
      }

      v26[2] = *(a1 + 48);
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v14);
      }

      v15 = 240 * v11;
      KB::Word::Word(v15, a2, 0);
      v10 = v15 + 240;
      v16 = *(v7 + 8);
      v17 = v15 + *v7 - v16;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(*v7, v16, v17);
      v18 = *v7;
      *v7 = v17;
      v24 = v18;
      v25 = v18;
      *(v7 + 8) = v15 + 240;
      v26[0] = v18;
      v19 = *(v7 + 16);
      *(v7 + 16) = 0;
      v26[1] = v19;
      std::__split_buffer<KB::Word>::~__split_buffer(&v24);
    }

    else
    {
      v10 = KB::Word::Word(v8, a2, 0) + 240;
    }

    *(v7 + 8) = v10;
    *(*(*(a1 + 48) + 8) - 136) |= 0x100u;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(unint64_t a1)
{
  if (a1 < 0x111111111111112)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(KB::Word *a1, KB::Word *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      KB::Word::Word(a3, v6);
      v6 = (v6 + 240);
      a3 += 240;
    }

    while (v6 != a2);
    do
    {
      KB::Word::~Word(v5);
      v5 = (v5 + 240);
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<KB::Word>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    KB::Word::~Word((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<KB::Word>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 4);
    if (v7 + 1 > 0x111111111111111)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x88888888888888)
    {
      v10 = 0x111111111111111;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v10);
    }

    v11 = 240 * v7;
    KB::Word::Word(v11, a2);
    v6 = v11 + 240;
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11 + 240;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<KB::Word>::~__split_buffer(v16);
  }

  else
  {
    result = KB::Word::Word(v3, a2);
    v6 = result + 240;
  }

  *(a1 + 8) = v6;
  return result;
}

void KB::DynamicDictionary::unload_user_dictionary(KB::DynamicDictionary *this)
{
  v2 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t KB::DynamicDictionary::is_word_in_supplemental_lexicon(KB::DynamicDictionary *this, const KB::String *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  ActiveSupplementalLexiconWords = TITransientLexiconManagerGetActiveSupplementalLexiconWords();
  if (!ActiveSupplementalLexiconWords)
  {
    return 0;
  }

  v5 = ActiveSupplementalLexiconWords;
  v6 = *((*(*this + 48))(this, 0) + 160);
  KB::entry_from_lexicon(&v15, a2, v7, v5, 0);
  v8 = v15;
  if (v15)
  {
    KB::Word::Word(v16, v15, v6);
    CFRelease(v8);
    v8 = LOWORD(v16[0]) != 0;
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v19 = 0u;
    v20 = 0u;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    *&v30[8] = 0u;
    WORD1(v16[0]) = 16;
    BYTE6(v16[0]) = 0;
    v17 = 0x3F80000000000000;
    WORD1(v19) = 16;
    WORD1(v26) = 16;
    v18 = 1065353216;
    BYTE6(v19) = 0;
    __asm { FMOV            V1.2S, #1.0 }

    v21 = _D1;
    v25 = 0;
    v23 = 0u;
    v22 = 0u;
    BYTE6(v26) = 0;
    v29 = 0u;
    *v30 = 0u;
    *&v30[16] = 1065353216;
  }

  KB::Word::~Word(v16);
  return v8;
}

void ___ZN33TIInlineCompletionEventDispatcher26did_generate_no_completionEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        LOBYTE(v14) = 0;
        v19 = 0;
        LOBYTE(v8) = 0;
        v13 = 0;
        v6[0] = 0;
        v7 = 0;
        TIInlineCompletionEventDispatcher::_dispatch_event(v5, &v14, &v8, v6, 0, 0);
        if (v7 == 1)
        {
          language_modeling::v1::CompletionStem::~CompletionStem(v6);
        }

        if (v13 == 1)
        {
          if (v12[8] == 1)
          {
            language_modeling::v1::InlineCompletion::~InlineCompletion(v12);
          }

          if (v11 < 0)
          {
            operator delete(__p);
          }

          if (v9 < 0)
          {
            operator delete(v8);
          }
        }

        if (v19 == 1)
        {
          if (v18[8] == 1)
          {
            language_modeling::v1::InlineCompletion::~InlineCompletion(v18);
          }

          if (v17 < 0)
          {
            operator delete(v16);
          }

          if (v15 < 0)
          {
            operator delete(v14);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void __destroy_helper_block_a8_32c77_ZTSKZN33TIInlineCompletionEventDispatcher26did_generate_no_completionEvE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_a8_32c77_ZTSKZN33TIInlineCompletionEventDispatcher26did_generate_no_completionEvE3__0(uint64_t result, uint64_t a2)
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

void TIInlineCompletionEventDispatcher::_dispatch_event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  analytics_send_event_lazy();
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 24);
    if (v7 && *(a1 + 22) == 1)
    {
      free(v7);
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 88) == 1)
  {
    v8 = *(a1 + 64);
    if (v8 && *(a1 + 62) == 1)
    {
      free(v8);
    }

    *(a1 + 88) = 0;
  }

  if (*(a1 + 128) == 1)
  {
    v9 = *(a1 + 104);
    if (v9 && *(a1 + 102) == 1)
    {
      free(v9);
    }

    *(a1 + 128) = 0;
  }

  if (*(a1 + 140) == 1)
  {
    *(a1 + 140) = 0;
  }
}

xpc_object_t ___ZN33TIInlineCompletionEventDispatcher15_dispatch_eventERKNSt3__18optionalI18TIInlineCompletionEES5_RKNS1_IN17language_modeling2v114CompletionStemEEE23TIICSuppressionModalityb_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = *(a1 + 40);
  if (*(v4 + 80) == 1 && (v5 = *(a1 + 48), *(v5 + 80) == 1) && *(*(a1 + 56) + 8) == 1)
  {
    v6 = *(v5 + 56);
    if (v6 > 3)
    {
      v7 = &kTIICCompletionSourceUnknown;
    }

    else
    {
      v7 = off_27872F7A0[v6];
    }

    v10 = *v7;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *v4, *(v4 + 1));
    }

    else
    {
      v30 = *v4;
      __dst.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v30;
    }

    v8 = _bounded_word_count(&__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v31 = *(a1 + 48);
    if ((v31[5] & 1) == 0)
    {
      goto LABEL_136;
    }

    v32 = *(a1 + 56);
    if ((*(v32 + 8) & 1) == 0)
    {
      goto LABEL_136;
    }

    if (*(v31 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *v31, *(v31 + 1));
    }

    else
    {
      v33 = *v31;
      __dst.__r_.__value_.__r.__words[2] = *(v31 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v33;
    }

    language_modeling::v1::CompletionStem::prefix(__p, v32);
    if ((v40 & 0x80u) == 0)
    {
      v34 = v40;
    }

    else
    {
      v34 = __p[1];
    }

    _completion_with_stem_removed(&v41, &__dst, v34);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = _bounded_word_count(&v41);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = "None";
  }

  xpc_dictionary_set_string(v3, "completionSource", v10);
  xpc_dictionary_set_int64(v3, "wordsGenerated", v8);
  xpc_dictionary_set_int64(v3, "wordsPresented", v9);
  xpc_dictionary_set_BOOL(v3, "isCached", *(a1 + 68));
  xpc_dictionary_set_int64(v3, "suppressionModality", *(a1 + 64));
  if (*(v2 + 140) == 1)
  {
    v11 = *(v2 + 136);
    v12 = v11 + 4;
    if ((v11 - 1) <= 4 && *(v2 + 48) == 1 && *(v2 + 88) == 1)
    {
      if (v11 == 2)
      {
        v13 = 1;
      }

      else
      {
        v35 = *(v2 + 24);
        if (!v35)
        {
          v35 = (v2 + 32);
        }

        if (*(v2 + 16))
        {
          v36 = v35;
        }

        else
        {
          v36 = "";
        }

        v37 = strlen(v36);
        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v38 = v37;
        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        if (v37)
        {
          memmove(&__dst, v36, v37);
        }

        __dst.__r_.__value_.__s.__data_[v38] = 0;
        _completion_with_stem_removed(&v41, &__dst, *(v2 + 56));
        v13 = _bounded_word_count(&v41);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 3;
  }

  xpc_dictionary_set_int64(v3, "wordsAccepted", v13);
  xpc_dictionary_set_int64(v3, "revisedModality", v12);
  if (*(v2 + 472) == 1)
  {
    KB::String::String(&__dst, (v2 + 144));
    KB::String::String(v43, (v2 + 176));
    KB::String::String(v45, (v2 + 208));
    KB::String::String(v47, (v2 + 240));
    KB::String::String(v49, (v2 + 272));
    KB::String::String(v51, (v2 + 304));
    v53 = *(v2 + 336);
    KB::String::String(v54, (v2 + 344));
    KB::String::String(v56, (v2 + 376));
    KB::String::String(v58, (v2 + 408));
    KB::String::String(v60, (v2 + 440));
    if (*(v2 + 472))
    {
      if (*(v2 + 144))
      {
        v14 = *(v2 + 152) ? *(v2 + 152) : (v2 + 160);
      }

      else
      {
        v14 = "";
      }

      xpc_dictionary_set_string(v3, "keyboardLanguage", v14);
      if (*(v2 + 472))
      {
        if (*(v2 + 176))
        {
          v15 = *(v2 + 184) ? *(v2 + 184) : (v2 + 192);
        }

        else
        {
          v15 = "";
        }

        xpc_dictionary_set_string(v3, "keyboardRegion", v15);
        if (*(v2 + 472))
        {
          if (*(v2 + 208))
          {
            v16 = *(v2 + 216) ? *(v2 + 216) : (v2 + 224);
          }

          else
          {
            v16 = "";
          }

          xpc_dictionary_set_string(v3, "keyboardVariant", v16);
          if (*(v2 + 472))
          {
            if (*(v2 + 240))
            {
              v17 = *(v2 + 248) ? *(v2 + 248) : (v2 + 256);
            }

            else
            {
              v17 = "";
            }

            xpc_dictionary_set_string(v3, "keyboardSecondaryLanguage", v17);
            if (*(v2 + 472))
            {
              if (*(v2 + 272))
              {
                v18 = *(v2 + 280) ? *(v2 + 280) : (v2 + 288);
              }

              else
              {
                v18 = "";
              }

              xpc_dictionary_set_string(v3, "keyboardSecondaryRegion", v18);
              if (*(v2 + 472))
              {
                if (*(v2 + 304))
                {
                  v19 = *(v2 + 312) ? *(v2 + 312) : (v2 + 320);
                }

                else
                {
                  v19 = "";
                }

                xpc_dictionary_set_string(v3, "keyboardLayout", v19);
                if (*(v2 + 472))
                {
                  v20 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:*(v2 + 336)];
                  v21 = [v20 UTF8String];

                  xpc_dictionary_set_string(v3, "keyboardType", v21);
                  if (*(v2 + 472))
                  {
                    v23 = KB::ns_string((v2 + 344), v22);
                    v24 = [MEMORY[0x277D6F320] appCategoryForBundleID:v23];
                    v25 = [v24 cStringUsingEncoding:4];

                    xpc_dictionary_set_string(v3, "bundleId", v25);
                    if (*(v2 + 472))
                    {
                      if (!*(v2 + 376) || (*(v2 + 384) ? (v26 = *(v2 + 384)) : (v26 = (v2 + 392)), xpc_dictionary_set_string(v3, "trialDeploymentId", v26), (*(v2 + 472) & 1) != 0))
                      {
                        if (!*(v2 + 408) || (*(v2 + 416) ? (v27 = *(v2 + 416)) : (v27 = (v2 + 424)), xpc_dictionary_set_string(v3, "trialExperimentId", v27), (*(v2 + 472) & 1) != 0))
                        {
                          if (*(v2 + 440))
                          {
                            if (*(v2 + 448))
                            {
                              v28 = *(v2 + 448);
                            }

                            else
                            {
                              v28 = (v2 + 456);
                            }

                            xpc_dictionary_set_string(v3, "trialTreatmentId", v28);
                          }

                          if (v61 && v60[6] == 1)
                          {
                            free(v61);
                          }

                          if (v59 && v58[6] == 1)
                          {
                            free(v59);
                          }

                          if (v57 && v56[6] == 1)
                          {
                            free(v57);
                          }

                          if (v55 && v54[6] == 1)
                          {
                            free(v55);
                          }

                          if (v52 && v51[6] == 1)
                          {
                            free(v52);
                          }

                          if (v50 && v49[6] == 1)
                          {
                            free(v50);
                          }

                          if (v48 && v47[6] == 1)
                          {
                            free(v48);
                          }

                          if (v46 && v45[6] == 1)
                          {
                            free(v46);
                          }

                          if (v44 && v43[6] == 1)
                          {
                            free(v44);
                          }

                          if (__dst.__r_.__value_.__l.__size_ && __dst.__r_.__value_.__s.__data_[6] == 1)
                          {
                            free(__dst.__r_.__value_.__l.__size_);
                          }

                          return v3;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_136:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return v3;
}

uint64_t _bounded_word_count(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  KB::String::String(&v12, v1);
  KB::String::String(&v7, " \t\n");
  KB::String::trim(v10, &v12, &v7);
  if (v11)
  {
    v2 = v10[6] == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    free(v11);
  }

  if (v8 && BYTE6(v7) == 1)
  {
    free(v8);
  }

  if (v12)
  {
    WORD2(v7) = 0;
    BYTE6(v7) = 0;
    v8 = " \t\n";
    LODWORD(v7) = 1048579;
    v9 = 0;
    KB::sbs_string_tokenize(v6, &v12, &v7);
    if (v8 && BYTE6(v7) == 1)
    {
      free(v8);
    }

    v3 = (v6[1] - v6[0]) >> 5;
    v7 = v6;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v7);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v13 && BYTE6(v12) == 1)
  {
    free(v13);
  }

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void _completion_with_stem_removed(std::string *this, std::string *__str, std::string::size_type __pos)
{
  v15 = *MEMORY[0x277D85DE8];
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size >= __pos)
  {
    std::string::basic_string(this, __str, __pos, 0xFFFFFFFFFFFFFFFFLL, &v9);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = __str->__r_.__value_.__r.__words[0];
      if (v7 >= 0)
      {
        v8 = __str;
      }

      v9 = 136315650;
      v10 = "_completion_with_stem_removed";
      v11 = 2048;
      v12 = __pos;
      v13 = 2080;
      v14 = v8;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  !!! Stem size:%zu should not be longer than completion: %s", &v9, 0x20u);
    }

    this->__r_.__value_.__r.__words[0] = 0;
    this->__r_.__value_.__l.__size_ = 0;
    this->__r_.__value_.__r.__words[2] = 0;
  }
}

void ___ZL15analytics_queuev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.textInput.inlineCompletionEventDispatcher", attr);
  v2 = analytics_queue(void)::queue;
  analytics_queue(void)::queue = v1;
}

void ___ZN33TIInlineCompletionEventDispatcher27did_generate_new_completionERK18TIInlineCompletionRKN17language_modeling2v114CompletionStemE23TIICSuppressionModality_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        std::optional<TIInlineCompletion>::optional[abi:nn200100]<TIInlineCompletion const&,0>(&v12, (a1 + 48));
        std::optional<TIInlineCompletion>::optional[abi:nn200100]<TIInlineCompletion const&,0>(&v8, (a1 + 48));
        language_modeling::v1::CompletionStem::CompletionStem(&v6, (a1 + 128));
        v7 = 1;
        TIInlineCompletionEventDispatcher::_dispatch_event(v5, &v12, &v8, &v6, *(a1 + 136), 0);
        if (v7 == 1)
        {
          language_modeling::v1::CompletionStem::~CompletionStem(&v6);
        }

        if (v11[16] == 1)
        {
          if (v11[8] == 1)
          {
            language_modeling::v1::InlineCompletion::~InlineCompletion(v11);
          }

          if (v10 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v8.__r_.__value_.__l.__data_);
          }
        }

        if (v15[16] == 1)
        {
          if (v15[8] == 1)
          {
            language_modeling::v1::InlineCompletion::~InlineCompletion(v15);
          }

          if (v14 < 0)
          {
            operator delete(v13);
          }

          if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v12.__r_.__value_.__l.__data_);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void __destroy_helper_block_a8_32c166_ZTSKZN33TIInlineCompletionEventDispatcher27did_generate_new_completionERK18TIInlineCompletionRKN17language_modeling2v114CompletionStemE23TIICSuppressionModalityE3__0(uint64_t a1)
{
  language_modeling::v1::CompletionStem::~CompletionStem((a1 + 128));
  if (*(a1 + 120) == 1)
  {
    language_modeling::v1::InlineCompletion::~InlineCompletion((a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_a8_32c166_ZTSKZN33TIInlineCompletionEventDispatcher27did_generate_new_completionERK18TIInlineCompletionRKN17language_modeling2v114CompletionStemE23TIICSuppressionModalityE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  *(a1 + 112) = 0;
  *(a1 + 104) = v8;
  *(a1 + 96) = v7;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    MEMORY[0x2318BDB20]();
    *(a1 + 120) = 1;
  }

  result = language_modeling::v1::CompletionStem::CompletionStem((a1 + 128), (a2 + 128));
  *(a1 + 136) = *(a2 + 136);
  return result;
}

std::string *std::optional<TIInlineCompletion>::optional[abi:nn200100]<TIInlineCompletion const&,0>(std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  this[2].__r_.__value_.__s.__data_[16] = 0;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = v7;
  this[2].__r_.__value_.__r.__words[0] = v6;
  this[3].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 72) == 1)
  {
    MEMORY[0x2318BDB20]();
    this[3].__r_.__value_.__s.__data_[0] = 1;
  }

  this[3].__r_.__value_.__s.__data_[8] = 1;
  return this;
}

void TIInlineCompletionEventDispatcher::did_generate_cached_completion(uint64_t a1, std::__shared_weak_count *this, uint64_t a3, uint64_t a4, const language_modeling::v1::CompletionStem *a5, int a6)
{
  std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(&v13, a1, this);
  v11 = v13;
  v10 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v12 = analytics_queue();
  v28 = MEMORY[0x277D85DD0];
  v29 = 3321888768;
  v30 = ___ZN33TIInlineCompletionEventDispatcher30did_generate_cached_completionERK18TIInlineCompletionS2_RKN17language_modeling2v114CompletionStemE23TIICSuppressionModality_block_invoke;
  v31 = &__block_descriptor_224_a8_32c172_ZTSKZN33TIInlineCompletionEventDispatcher30did_generate_cached_completionERK18TIInlineCompletionS2_RKN17language_modeling2v114CompletionStemE23TIICSuppressionModalityE3__0_e5_v8__0l;
  v13 = v11;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a3, *(a3 + 8));
  }

  else
  {
    v15 = *a3;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v16 = *(a3 + 24);
  }

  v17 = *(a3 + 48);
  v18 = *(a3 + 56);
  v19[0] = 0;
  v20 = 0;
  if (*(a3 + 72) == 1)
  {
    MEMORY[0x2318BDB20](v19, a3 + 64);
    v20 = 1;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a4, *(a4 + 8));
  }

  else
  {
    v21 = *a4;
  }

  if (*(a4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v22 = *(a4 + 24);
  }

  v23 = *(a4 + 48);
  v24 = *(a4 + 56);
  v25[0] = 0;
  v26 = 0;
  if (*(a4 + 72) == 1)
  {
    MEMORY[0x2318BDB20](v25, a4 + 64);
    v26 = 1;
  }

  language_modeling::v1::CompletionStem::CompletionStem(v27, a5);
  v27[2] = a6;
  TIInlineCompletionEventDispatcher::did_generate_cached_completion(TIInlineCompletion const&,TIInlineCompletion const&,language_modeling::v1::CompletionStem const&,TIICSuppressionModality)::$_0::$_0(v32, &v13);
  TIDispatchAsync();
  TIInlineCompletionEventDispatcher::did_generate_cached_completion(TIInlineCompletion const&,TIInlineCompletion const&,language_modeling::v1::CompletionStem const&,TIICSuppressionModality)::$_0::~$_0(&v13);

  TIInlineCompletionEventDispatcher::did_generate_cached_completion(TIInlineCompletion const&,TIInlineCompletion const&,language_modeling::v1::CompletionStem const&,TIICSuppressionModality)::$_0::~$_0(v32);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void ___ZN33TIInlineCompletionEventDispatcher30did_generate_cached_completionERK18TIInlineCompletionS2_RKN17language_modeling2v114CompletionStemE23TIICSuppressionModality_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        std::optional<TIInlineCompletion>::optional[abi:nn200100]<TIInlineCompletion const&,0>(&v12, (a1 + 48));
        std::optional<TIInlineCompletion>::optional[abi:nn200100]<TIInlineCompletion const&,0>(&v8, (a1 + 128));
        language_modeling::v1::CompletionStem::CompletionStem(&v6, (a1 + 208));
        v7 = 1;
        TIInlineCompletionEventDispatcher::_dispatch_event(v5, &v12, &v8, &v6, *(a1 + 216), 1);
        if (v7 == 1)
        {
          language_modeling::v1::CompletionStem::~CompletionStem(&v6);
        }

        if (v11[16] == 1)
        {
          if (v11[8] == 1)
          {
            language_modeling::v1::InlineCompletion::~InlineCompletion(v11);
          }

          if (v10 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v8.__r_.__value_.__l.__data_);
          }
        }

        if (v15[16] == 1)
        {
          if (v15[8] == 1)
          {
            language_modeling::v1::InlineCompletion::~InlineCompletion(v15);
          }

          if (v14 < 0)
          {
            operator delete(v13);
          }

          if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v12.__r_.__value_.__l.__data_);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

uint64_t TIInlineCompletionEventDispatcher::did_generate_cached_completion(TIInlineCompletion const&,TIInlineCompletion const&,language_modeling::v1::CompletionStem const&,TIICSuppressionModality)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 64) = v7;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    MEMORY[0x2318BDB20]();
    *(a1 + 88) = 1;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v9 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v9;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v10 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v10;
  }

  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v12;
  *(a1 + 144) = v11;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    MEMORY[0x2318BDB20]();
    *(a1 + 168) = 1;
  }

  language_modeling::v1::CompletionStem::CompletionStem((a1 + 176), (a2 + 176));
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t TIInlineCompletionEventDispatcher::did_generate_cached_completion(TIInlineCompletion const&,TIInlineCompletion const&,language_modeling::v1::CompletionStem const&,TIICSuppressionModality)::$_0::~$_0(uint64_t a1)
{
  language_modeling::v1::CompletionStem::~CompletionStem((a1 + 176));
  if (*(a1 + 168) == 1)
  {
    language_modeling::v1::InlineCompletion::~InlineCompletion((a1 + 160));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    language_modeling::v1::InlineCompletion::~InlineCompletion((a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void TIInlineCompletionEventDispatcher::did_register_completion_acceptance(uint64_t a1, std::__shared_weak_count *this, const KB::String *a3, const KB::String *a4, const KB::String *a5, int a6)
{
  v35 = *MEMORY[0x277D85DE8];
  std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(&v13, a1, this);
  v11 = v13;
  v10 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v12 = analytics_queue();
  v22 = MEMORY[0x277D85DD0];
  v23 = 3321888768;
  v24 = ___ZN33TIInlineCompletionEventDispatcher34did_register_completion_acceptanceERKN2KB6StringES3_S3_41TIInlineCompletionAcceptanceRejectionType_block_invoke;
  v25 = &__block_descriptor_152_a8_32c147_ZTSKZN33TIInlineCompletionEventDispatcher34did_register_completion_acceptanceERKN2KB6StringES3_S3_41TIInlineCompletionAcceptanceRejectionTypeE3__0_e5_v8__0l;
  v13 = v11;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  KB::String::String(v15, a3);
  KB::String::String(v17, a4);
  KB::String::String(v19, a5);
  v21 = a6;
  v26 = v13;
  v27 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  KB::String::String(v28, v15);
  KB::String::String(v30, v17);
  KB::String::String(v32, v19);
  v34 = v21;
  TIDispatchAsync();
  if (v20 && v19[6] == 1)
  {
    free(v20);
  }

  if (v18 && v17[6] == 1)
  {
    free(v18);
  }

  if (v16 && v15[6] == 1)
  {
    free(v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v33 && v32[6] == 1)
  {
    free(v33);
  }

  if (v31 && v30[6] == 1)
  {
    free(v31);
  }

  if (v29 && v28[6] == 1)
  {
    free(v29);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void ___ZN33TIInlineCompletionEventDispatcher34did_register_completion_acceptanceERKN2KB6StringES3_S3_41TIInlineCompletionAcceptanceRejectionType_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        std::optional<KB::String>::operator=[abi:nn200100]<KB::String const&,void>((v5 + 16), (a1 + 48));
        std::optional<KB::String>::operator=[abi:nn200100]<KB::String const&,void>((v5 + 56), (a1 + 80));
        std::optional<KB::String>::operator=[abi:nn200100]<KB::String const&,void>((v5 + 96), (a1 + 112));
        *(v5 + 136) = *(a1 + 144);
        *(v5 + 140) = 1;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void __destroy_helper_block_a8_32c147_ZTSKZN33TIInlineCompletionEventDispatcher34did_register_completion_acceptanceERKN2KB6StringES3_S3_41TIInlineCompletionAcceptanceRejectionTypeE3__0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 && *(a1 + 118) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 88);
  if (v3 && *(a1 + 86) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 54) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

KB::String *__copy_helper_block_a8_32c147_ZTSKZN33TIInlineCompletionEventDispatcher34did_register_completion_acceptanceERKN2KB6StringES3_S3_41TIInlineCompletionAcceptanceRejectionTypeE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  KB::String::String((a1 + 48), (a2 + 48));
  KB::String::String((a1 + 80), (a2 + 80));
  result = KB::String::String((a1 + 112), (a2 + 112));
  *(a1 + 144) = *(a2 + 144);
  return result;
}

KB::String *std::optional<KB::String>::operator=[abi:nn200100]<KB::String const&,void>(KB::String *a1, KB::String *a2)
{
  if (*(a1 + 32) == 1)
  {
    return KB::String::operator=(a1, a2);
  }

  result = KB::String::String(a1, a2);
  *(result + 32) = 1;
  return result;
}

void std::vector<KB::LexiconInfo>::__init_with_size[abi:nn200100]<KB::LexiconInfo*,KB::LexiconInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LexiconInfo>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

KB::String *std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo&,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = KB::String::String(a1, a2);
  KB::String::String((v4 + 32), (a2 + 32));
  KB::String::String((a1 + 64), (a2 + 64));
  KB::String::String((a1 + 96), (a2 + 96));
  result = KB::String::String((a1 + 128), (a2 + 128));
  v6 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v6;
  return result;
}

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t __Block_byref_object_copy__2616(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t std::unordered_map<unsigned int,float>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % v6.i32[0];
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void std::vector<KB::LanguageModelLexiconGroup>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:nn200100]<KB::LanguageModelLexiconGroup,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<KB::LanguageModelLexiconGroup,0>(uint64_t a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}