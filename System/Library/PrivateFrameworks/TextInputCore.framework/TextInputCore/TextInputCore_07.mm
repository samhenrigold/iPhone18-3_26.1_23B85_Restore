uint64_t std::__function::__func<KB::FilterNotSuggestibleForInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0::operator() const(std::vector<KB::Candidate> &)::{lambda(KB::Candidate const&,KB::String *)#1},std::allocator<KB::FilterNotSuggestibleForInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0::operator() const(std::vector<KB::Candidate> &)::{lambda(KB::Candidate const&,KB::String *)#1}>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t *a2, KB::String **a3)
{
  v119 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v70 = *(a1 + 16);
  v71 = *a3;
  v5 = a2[2];
  v73 = *a2;
  if (v5 && (v7 = malloc_type_malloc(240 * v5, 0x10B2040DF775671uLL)) != 0)
  {
    v74 = v7;
    if (*a2)
    {
      v8 = a2[1];
      v9 = 240 * *a2;
      do
      {
        v7 = (KB::Word::Word(v7, v8) + 240);
        v8 += 30;
        v9 -= 240;
      }

      while (v9);
    }
  }

  else
  {
    v74 = 0;
  }

  v75 = 0u;
  v76 = 0u;
  v77 = 1065353216;
  v78 = 0u;
  v79 = 0u;
  v80 = 1065353216;
  v10 = *(v4 + 16);
  if (!v10)
  {
    goto LABEL_31;
  }

  atomic_fetch_add(v10, 1u);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v10);
  v11 = *(v4 + 16);
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

  v12 = *(v11 + 66);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v11);
  v13 = *(v4 + 16);
  atomic_fetch_add(v13, 1u);
  v15 = *(v13 + 40);
  v14 = *(v13 + 48);
  if (v15 == v14)
  {
LABEL_30:
    WTF::RefCounted<KB::DictionaryContainer>::deref(v13);
LABEL_31:
    v17 = v74;
    if (v73)
    {
      v18 = 240 * v73;
      v19 = v74;
      do
      {
        KB::Word::~Word(v19);
        v19 = (v20 + 240);
        v18 -= 240;
      }

      while (v18);
    }

    goto LABEL_34;
  }

  while (1)
  {
    KB::String::String(v83, v15);
    KB::String::String(&v86, (v15 + 32));
    KB::String::String(v90, (v15 + 64));
    KB::String::String(&v93, (v15 + 96));
    KB::String::String(&v95, (v15 + 128));
    v16 = *(v15 + 160);
    v98 = *(v15 + 168);
    v97 = v16;
    if (v16 != -2 && (v97 & 0x100000000) != 0)
    {
      break;
    }

    if (*(&v95 + 1) && BYTE6(v95) == 1)
    {
      free(*(&v95 + 1));
    }

    if (*(&v93 + 1) && BYTE6(v93) == 1)
    {
      free(*(&v93 + 1));
    }

    if (v92 && v91 == 1)
    {
      free(v92);
    }

    if (v87 && BYTE6(v86) == 1)
    {
      free(v87);
    }

    if (v85 && v84 == 1)
    {
      free(v85);
    }

    v15 += 176;
    if (v15 == v14)
    {
      goto LABEL_30;
    }
  }

  if (*(&v95 + 1) && BYTE6(v95) == 1)
  {
    free(*(&v95 + 1));
  }

  if (*(&v93 + 1) && BYTE6(v93) == 1)
  {
    free(*(&v93 + 1));
  }

  if (v92 && v91 == 1)
  {
    free(v92);
  }

  if (v87 && BYTE6(v86) == 1)
  {
    free(v87);
  }

  if (v85 && v84 == 1)
  {
    free(v85);
  }

  WTF::RefCounted<KB::DictionaryContainer>::deref(v13);
  if (!v12)
  {
    goto LABEL_31;
  }

  v17 = v74;
  if (v73)
  {
    v31 = &v74[30 * v73];
    do
    {
      KB::Word::Word(v83, v17);
      if ((BYTE11(v93) & 0x38) != 0)
      {
        v106[0] = v83;
        v32 = std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(&v75, v83, v106);
        KB::String::operator=((v32 + 24), v83);
        KB::ByteString::operator=(v32 + 40, &v86);
        *(v32 + 12) = v88;
        *(v32 + 26) = v89;
        KB::String::operator=((v32 + 56), v90);
        v33 = v94;
        v35 = v95;
        v34 = v96;
        *(v32 + 9) = v93;
        *(v32 + 10) = v33;
        *(v32 + 11) = v35;
        *(v32 + 12) = v34;
        KB::String::operator=((v32 + 104), &v97);
        *(v32 + 240) = v99;
        if (v32 + 24 != v83)
        {
          *(v32 + 70) = v101;
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v32 + 31, v100);
        }

        if ((BYTE11(v93) & 8) != 0)
        {
          v106[0] = v83;
          v36 = std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(&v78, v83, v106);
          KB::String::operator=((v36 + 24), v83);
          KB::ByteString::operator=(v36 + 40, &v86);
          *(v36 + 12) = v88;
          *(v36 + 26) = v89;
          KB::String::operator=((v36 + 56), v90);
          v37 = v94;
          v39 = v95;
          v38 = v96;
          *(v36 + 9) = v93;
          *(v36 + 10) = v37;
          *(v36 + 11) = v39;
          *(v36 + 12) = v38;
          KB::String::operator=((v36 + 104), &v97);
          *(v36 + 240) = v99;
          if (v36 + 24 != v83)
          {
            *(v36 + 70) = v101;
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v36 + 31, v100);
          }
        }
      }

      else
      {
        v40 = *(v4 + 16);
        if (v40)
        {
          atomic_fetch_add(v40, 1u);
          WTF::RefCounted<KB::DictionaryContainer>::deref(v40);
          v41 = *(v4 + 16);
          if (v41)
          {
            atomic_fetch_add(v41, 1u);
            KB::DictionaryContainer::lookup(&v81, v41, v83);
            WTF::RefCounted<KB::DictionaryContainer>::deref(v41);
          }

          else
          {
            KB::DictionaryContainer::lookup(&v81, 0, v83);
          }

          v43 = v81;
          v42 = v82;
          while (v43 != v42)
          {
            KB::Word::Word(v106, v43);
            if ((BYTE11(v111) & 0x38) != 0)
            {
              KB::Word::lowercased_string(&v104, v106);
              KB::Word::lowercased_string(&v102, v83);
              v46 = KB::String::equal(&v104, &v102, 1, v44, v45);
              if (v103 && BYTE6(v102) == 1)
              {
                free(v103);
              }

              if (v105 && BYTE6(v104) == 1)
              {
                free(v105);
              }

              if (v46)
              {
                KB::Word::lowercased_string(&v104, v106);
                v102 = &v104;
                v47 = std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(&v75, &v104, &v102);
                KB::String::operator=((v47 + 24), v106);
                KB::ByteString::operator=(v47 + 40, v107);
                *(v47 + 12) = v108;
                *(v47 + 26) = v109;
                KB::String::operator=((v47 + 56), v110);
                v48 = v112;
                v50 = v113;
                v49 = v114;
                *(v47 + 9) = v111;
                *(v47 + 10) = v48;
                *(v47 + 11) = v50;
                *(v47 + 12) = v49;
                KB::String::operator=((v47 + 104), v115);
                *(v47 + 240) = v116;
                if (v47 + 24 != v106)
                {
                  *(v47 + 70) = v118;
                  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v47 + 31, v117);
                }

                if (v105 && BYTE6(v104) == 1)
                {
                  free(v105);
                }

                if ((BYTE11(v111) & 8) != 0)
                {
                  KB::Word::lowercased_string(&v104, v106);
                  v102 = &v104;
                  v51 = std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(&v78, &v104, &v102);
                  KB::String::operator=((v51 + 24), v106);
                  KB::ByteString::operator=(v51 + 40, v107);
                  *(v51 + 12) = v108;
                  *(v51 + 26) = v109;
                  KB::String::operator=((v51 + 56), v110);
                  v52 = v112;
                  v54 = v113;
                  v53 = v114;
                  *(v51 + 9) = v111;
                  *(v51 + 10) = v52;
                  *(v51 + 11) = v54;
                  *(v51 + 12) = v53;
                  KB::String::operator=((v51 + 104), v115);
                  *(v51 + 240) = v116;
                  if (v51 + 24 != v106)
                  {
                    *(v51 + 70) = v118;
                    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v51 + 31, v117);
                  }

                  if (v105 && BYTE6(v104) == 1)
                  {
                    free(v105);
                  }
                }
              }
            }

            KB::Word::~Word(v106);
            v43 += 30;
          }

          v106[0] = &v81;
          std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v106);
          v31 = &v74[30 * v73];
        }
      }

      KB::Word::~Word(v83);
      v17 += 30;
    }

    while (v17 != v31);
    goto LABEL_31;
  }

LABEL_34:
  free(v17);
  v21 = *(&v76 + 1);
  v22 = *(&v79 + 1);
  if (KB::CandidateFilter::is_suggestible_for_input(a2, *(a1 + 32), *(a1 + 8), *(a1 + 40), *(a1 + 48), v71))
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    goto LABEL_112;
  }

  v24 = a2[1];
  v25 = v24 + 240 * *a2;
  if (*a2)
  {
    v26 = 240 * *a2;
    while ((*(v24 + 107) & 8) == 0)
    {
      v24 += 240;
      v26 -= 240;
      if (!v26)
      {
        v24 = v25;
        break;
      }
    }
  }

  v27 = !v22 && v24 == v25;
  v28 = !v27;
  if (_os_feature_enabled_impl() && v28 && *(v70 + 40) == 2)
  {
    goto LABEL_112;
  }

  if ((_os_feature_enabled_impl() & v28) == 1)
  {
    v29 = *(*(a1 + 24) + 48);
    std::unordered_map<KB::String,KB::Word>::unordered_map(&v104, &v78);
    if (KB::Candidate::every_vulgar_word_is_allowlisted(a2, v29, &v104, 0))
    {
      v30 = *(v70 + 40);
      std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::~__hash_table(&v104);
      if (v30 == 1)
      {
        goto LABEL_112;
      }
    }

    else
    {
      std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::~__hash_table(&v104);
    }
  }

  if (*(*(a1 + 56) + 3168) != 4 || !v28 || (v55 = *(*(a1 + 24) + 48), std::unordered_map<KB::String,KB::Word>::unordered_map(&v102, &v78), LOBYTE(v55) = KB::Candidate::every_vulgar_word_is_allowlisted_somewhere(a2, v55, &v102, 0), std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::~__hash_table(&v102), (v55 & 1) == 0))
  {
    if (_os_feature_enabled_impl())
    {
      v59 = *a2;
      v60 = *(a1 + 56);
      if (*a2 == *v60)
      {
        v61 = a2[1];
        if ((*(v61 + 107) & 8) != 0)
        {
          v62 = v61 + 240 * v59;
          if ((*(v62 - 133) & 8) == 0)
          {
            v63 = v60[1];
            if (v61 != v63)
            {
              v56 = 1;
              if (KB::String::equal((v62 - 240), (v63 + 240 * v59 - 240), 1, v57, v58))
              {
                goto LABEL_132;
              }

              KB::Candidate::Candidate(v83, a2);
              KB::Candidate::clear(v83);
              if (*a2)
              {
                v64 = 0;
                v65 = 0;
                do
                {
                  KB::Word::Word(v106, (a2[1] + v64));
                  if ((BYTE11(v111) & 8) != 0)
                  {
                    goto LABEL_126;
                  }

                  KB::Word::lowercased_string(&v81, v106);
                  v67 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(&v78, &v81, v66);
                  if (v82 && BYTE6(v81) == 1)
                  {
                    free(v82);
                  }

                  if (v67)
                  {
LABEL_126:
                    v68 = (*(*(a1 + 56) + 8) + v64);
                  }

                  else
                  {
                    v68 = v106;
                  }

                  KB::Candidate::append(v83, v68);
                  KB::Word::~Word(v106);
                  ++v65;
                  v64 += 240;
                }

                while (v65 < *a2);
              }

              std::vector<KB::Candidate>::push_back[abi:nn200100](*(a1 + 64), v83);
              KB::Candidate::~Candidate(v83);
            }
          }
        }
      }
    }

    v56 = 1;
    goto LABEL_132;
  }

LABEL_112:
  v56 = 0;
LABEL_132:
  std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::~__hash_table(&v78);
  std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::~__hash_table(&v75);
  return v56;
}

uint64_t std::unordered_map<KB::String,KB::Word>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    if (i[3])
    {
      v5 = i[3];
    }

    else
    {
      v5 = (i + 4);
    }

    v6 = KB::String::hash(v5, *(i + 8));
    v9 = v6;
    v10 = *(a1 + 8);
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

    if (v15 != i && !KB::String::equal((v15 + 2), (i + 2), 1, v7, v8))
    {
      goto LABEL_21;
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    KB::Word::~Word((v3 + 6));
    v4 = v3[3];
    if (v4 && *(v3 + 22) == 1)
    {
      free(v4);
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(void *a1, const KB::String *a2, const KB::String **a3)
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
  v10 = a1[1];
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

void *std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(void *a1, const KB::String *a2, KB::String **a3)
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
  v10 = a1[1];
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

__n128 std::__function::__func<KB::FilterNotSuggestibleForInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0::operator() const(std::vector<KB::Candidate> &)::{lambda(KB::Candidate const&,KB::String *)#1},std::allocator<KB::FilterNotSuggestibleForInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0::operator() const(std::vector<KB::Candidate> &)::{lambda(KB::Candidate const&,KB::String *)#1}>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD96A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void KB::FilterNonVulgarIfTopCandidateVulgar::filter_candidates(KB::FilterNonVulgarIfTopCandidateVulgar *this, const KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v6 = *a2;
    if (*a2 != a2[1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = "filter_candidates";
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Swear Word Policy V1 Enabled", buf, 0xCu);
        v6 = *a2;
      }

      KB::Candidate::Candidate(buf, v6);
      if (*&buf[0])
      {
        v7 = 240 * *&buf[0];
        v8 = *(&buf[0] + 1);
        while ((*(v8 + 107) & 8) == 0)
        {
          v8 += 240;
          v7 -= 240;
          if (!v7)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = *(&buf[0] + 1);
      }

      if (v8 != *(&buf[0] + 1) + 240 * *&buf[0])
      {
        if (!_os_feature_enabled_impl() || (v9 = *(a4 + 6), memset(v12, 0, sizeof(v12)), v13 = 1065353216, is_allowlisted = KB::Candidate::every_vulgar_word_is_allowlisted(buf, v9, v12, 0), std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::~__hash_table(v12), !is_allowlisted))
        {
          *(a2 + 25) |= 1u;
          if ((0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3)) >= 2)
          {
            v11 = *(a4 + 7);
            v14[0] = &unk_283FD97C8;
            v14[1] = buf;
            v14[3] = v14;
            KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v11, "FilterNonVulgarIfTopCandidateVulgar", v14);
            std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v14);
          }
        }
      }

LABEL_18:
      KB::Candidate::~Candidate(buf);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "filter_candidates";
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Swear Word Policy V1 Disabled", buf, 0xCu);
  }
}

BOOL std::__function::__func<KB::FilterNonVulgarIfTopCandidateVulgar::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterNonVulgarIfTopCandidateVulgar::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *(a2 + 8);
  v7 = v6 + 240 * *a2;
  if (*a2)
  {
    v8 = 240 * *a2;
    while ((*(v6 + 107) & 8) == 0)
    {
      v6 += 240;
      v8 -= 240;
      if (!v8)
      {
        v6 = v7;
        break;
      }
    }
  }

  if (v5)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 888))
      {
        if (*(a2 + 896))
        {
          v12 = *(a2 + 896);
        }

        else
        {
          v12 = (a2 + 904);
        }
      }

      else
      {
        KB::Candidate::compute_string(a2);
        v11 = *(a2 + 896);
        if (!v11)
        {
          v11 = (a2 + 904);
        }

        if (*(a2 + 888))
        {
          v12 = v11;
        }

        else
        {
          v12 = "";
        }
      }

      v13 = *(a1 + 8);
      if (*(v13 + 888))
      {
        v15 = *(v13 + 896);
        if (!v15)
        {
          v15 = (v13 + 904);
        }
      }

      else
      {
        KB::Candidate::compute_string(v13);
        v14 = *(v13 + 896);
        if (!v14)
        {
          v14 = (v13 + 904);
        }

        if (*(v13 + 888))
        {
          v15 = v14;
        }

        else
        {
          v15 = "";
        }
      }

      v16 = 136315650;
      v17 = "operator()";
      v18 = 2080;
      v19 = v12;
      v20 = 2080;
      v21 = v15;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Word %s is non-vulgar. Top candidate %s is a vulgar word leading to non-vulgar words to be removed.", &v16, 0x20u);
    }

    KB::String::append_format(v5, "Word is non-vulgar. Top candidate is a vulgar word leading to non-vulgar words to be removed.");
  }

  return v6 == v7;
}

uint64_t std::__function::__func<KB::FilterNonVulgarIfTopCandidateVulgar::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterNonVulgarIfTopCandidateVulgar::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD97C8;
  a2[1] = v2;
  return result;
}

void KB::FilterNumberMismatch::filter_candidates(KB::FilterNumberMismatch *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (!*(a3 + 444))
  {
    KB::Candidate::compute_string(a3);
  }

  if (KB::string_has_numbers((a3 + 888), a2))
  {
    has_nonnumbers = KB::string_has_nonnumbers((*(a3 + 1) + 240 * *a3 - 240), v7);
    v9 = *(a4 + 7);
    if (has_nonnumbers)
    {
      v12[0] = &unk_283FD9810;
      v12[1] = a3;
      v12[2] = a4;
      v12[3] = v12;
      KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v9, "FilterNumberMismatch", v12);
      std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v12);
    }

    else
    {
      if (v9)
      {
        CFStringAppendFormat(v9, 0, @"All candidates removed (last input word is purely numeric) by %s\n", "filter_candidates");
      }

      v11 = *a2;
        ;
      }

      a2[1] = v11;
    }
  }
}

BOOL std::__function::__func<KB::FilterNumberMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterNumberMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  KB::CandidateFilter::_sortkey_for_string(&v13, (a2 + 888), *(*(a1 + 16) + 16));
  v6 = *(a1 + 8);
  if (!*(v6 + 888))
  {
    KB::Candidate::compute_string(*(a1 + 8));
  }

  KB::CandidateFilter::_sortkey_for_string(&v12, (v6 + 888), *(*(a1 + 16) + 16));
  v7 = KB::ByteString::starts_with(&v13, &v12);
  v8 = v7;
  if (v5 && !v7)
  {
    KB::Candidate::capitalized_string(&v15, a2);
    v9 = v16;
    if (!v16)
    {
      v9 = v17;
    }

    if (v15)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    KB::String::append_format(v5, "'%s' does not preserve numbers typed in the input manager string", v10);
    if (v16 && BYTE6(v15) == 1)
    {
      free(v16);
    }
  }

  if (v12.var0.var0.var0 >= 0xFu && v12.var0.var0.var1)
  {
    MEMORY[0x2318BE250](v12.var0.var0.var1, 0x1000C8077774924);
  }

  if (v13 >= 0xFu && v14)
  {
    MEMORY[0x2318BE250](v14, 0x1000C8077774924);
  }

  return !v8;
}

__n128 std::__function::__func<KB::FilterNumberMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterNumberMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL KB::FilterNumberlikeTokenMismatch::filter_candidates(KB::FilterNumberlikeTokenMismatch *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 444))
  {
    KB::Candidate::compute_string(a3);
  }

  result = KB::string_has_numbers((a3 + 888), a2);
  if (result)
  {
    if (*a3)
    {
      v8 = 0;
      do
      {
        v9 = (*(a3 + 1) + 240 * v8);
        v10 = KB::count_numbers(v9, v7);
        if (!v10)
        {
          goto LABEL_37;
        }

        if (v10 >= KB::count_letters(v9, v7))
        {
          goto LABEL_36;
        }

        v11 = *(v9 + 2);
        if (!*(v9 + 2))
        {
          KB::String::compute_length(v9);
          v11 = *(v9 + 2);
        }

        if (v11 < 3)
        {
          goto LABEL_37;
        }

        v12 = v9[1];
        if (!v12)
        {
          v12 = (v9 + 2);
        }

        v31 = v12;
        LODWORD(v32) = 0;
        HIDWORD(v32) = *v9;
        c = 0;
        KB::String::iterator::initialize(&v31);
        TI::Favonius::KeyClassification::KeyClassification(&v31, c);
        if ((v31 & 4) != 0)
        {
          v13 = *(a4 + 2);
          if (v13)
          {
            atomic_fetch_add(v13, 1u);
            WTF::RefCounted<KB::DictionaryContainer>::deref(v13);
            v14 = v9[1];
            if (!v14)
            {
              v14 = (v9 + 2);
            }

            *&v27 = v14;
            DWORD2(v27) = 0;
            HIDWORD(v27) = *v9;
            LODWORD(v28) = 0;
            KB::String::iterator::initialize(&v27);
            v29 = v27;
            v30 = v28;
            KB::String::iterator::operator++(&v29);
            v15 = *v9;
            v16 = v9[1];
            if (!v16)
            {
              v16 = (v9 + 2);
            }

            *&v25 = v16;
            DWORD2(v25) = v15;
            HIDWORD(v25) = v15;
            LODWORD(v26) = 0;
            KB::String::iterator::initialize(&v25);
            KB::String::String(&v31, &v29, &v25);
            v17 = *(a4 + 2);
            if (v17)
            {
              atomic_fetch_add(v17, 1u);
              KB::DictionaryContainer::lookup(&v29, v17, &v31);
              WTF::RefCounted<KB::DictionaryContainer>::deref(v17);
            }

            else
            {
              KB::DictionaryContainer::lookup(&v29, 0, &v31);
            }

            v18 = v29;
            *&v27 = &v29;
            std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v27);
            if (v32 && BYTE6(v31) == 1)
            {
              free(v32);
            }

            if (v18 != *(&v18 + 1))
            {
              goto LABEL_36;
            }
          }
        }

        v19 = KB::String::last(v9);
        TI::Favonius::KeyClassification::KeyClassification(&v31, v19);
        if ((v31 & 4) == 0)
        {
          goto LABEL_37;
        }

        v20 = *(a4 + 2);
        if (!v20)
        {
          goto LABEL_37;
        }

        atomic_fetch_add(v20, 1u);
        WTF::RefCounted<KB::DictionaryContainer>::deref(v20);
        v21 = v9[1] ? v9[1] : (v9 + 2);
        *&v29 = v21;
        DWORD2(v29) = 0;
        v22 = *v9;
        HIDWORD(v29) = v22;
        LODWORD(v30) = 0;
        KB::String::iterator::initialize(&v29);
        *&v25 = v21;
        DWORD2(v25) = v22;
        HIDWORD(v25) = v22;
        LODWORD(v26) = 0;
        KB::String::iterator::initialize(&v25);
        v27 = v25;
        v28 = v26;
        KB::String::iterator::operator--(&v27);
        KB::String::String(&v31, &v29, &v27);
        v23 = *(a4 + 2);
        if (v23)
        {
          atomic_fetch_add(v23, 1u);
          KB::DictionaryContainer::lookup(&v29, v23, &v31);
          WTF::RefCounted<KB::DictionaryContainer>::deref(v23);
        }

        else
        {
          KB::DictionaryContainer::lookup(&v29, 0, &v31);
        }

        v24 = v29;
        *&v27 = &v29;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v27);
        if (v32)
        {
          if (BYTE6(v31) == 1)
          {
            free(v32);
          }
        }

        if (v24 != *(&v24 + 1))
        {
LABEL_36:
          ++v8;
        }

        else
        {
LABEL_37:
          ++v8;
        }
      }

      while (v8 < *a3);
    }

    operator new();
  }

  return result;
}

BOOL std::__function::__func<KB::FilterNumberlikeTokenMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterNumberlikeTokenMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(void *a1, unint64_t *a2, KB::String **a3)
{
  v5 = 0;
  v6 = 0;
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = *a3;
  do
  {
    v8 = v6;
    v9 = a1[3];
    if (v6 >= v9)
    {
      break;
    }

    if (v6 < *a2)
    {
      v10 = a2[1];
      v11 = *(a1[1] + 8);
      v12 = *(a1[2] + 16);
      if (v12)
      {
        atomic_fetch_add(v12, 1u);
      }

      v13 = *(v12 + 8);
      WTF::RefCounted<KB::DictionaryContainer>::deref(v12);
      v16 = KB::Word::preserves_input((v10 + v5), (v11 + v5), v13 + 144, v14, v15) ^ 1;
      if (!v7)
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v16)
      {
        KB::Word::capitalized_string(&v20, (*(a1[1] + 8) + v5));
        v17 = v21;
        if (!v21)
        {
          v17 = v22;
        }

        v18 = "";
        if (v20)
        {
          v18 = v17;
        }

        KB::String::append_format(v7, "Candidate does not preserve input word '%s', which contains numbers", v18);
        if (v21 && BYTE6(v20) == 1)
        {
          free(v21);
        }
      }

      goto LABEL_17;
    }

    v16 = 1;
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_17:
    v6 = v8 + 1;
    v5 += 240;
  }

  while (!v16);
  return v8 < v9;
}

__n128 std::__function::__func<KB::FilterNumberlikeTokenMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterNumberlikeTokenMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9858;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void KB::FilterCharacterCount::filter_candidates(KB::FilterCharacterCount *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v5 = *(this + 2);
  if (!*(a3 + 444))
  {
    KB::Candidate::compute_string(a3);
  }

  KB::String::count((a3 + 888), v5);
  operator new();
}

uint64_t std::__function::__func<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = *(a1 + 16);
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  v7 = KB::String::count((a2 + 888), *(a1 + 8));
  v8 = v6(v7, *(a1 + 12));
  v9 = v8;
  if (v5 && (v8 & 1) == 0)
  {
    KB::String::String(v16, *(a1 + 8));
    v10 = v18;
    if (!v18)
    {
      v10 = v19;
    }

    if (v16[0])
    {
      v11 = v10;
    }

    else
    {
      v11 = "";
    }

    v14 = *(a1 + 24);
    v13 = a1 + 24;
    v12 = v14;
    if (*(v13 + 23) >= 0)
    {
      v12 = v13;
    }

    KB::String::append_format(v5, "candidate count of '%s' is not %s input count", v11, v12);
    if (v18 && v17 == 1)
    {
      free(v18);
    }
  }

  return v9 ^ 1u;
}

void std::__function::__func<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::destroy_deallocate(void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

void std::__function::__func<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::destroy(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__function::__func<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD98A0;
  *(a2 + 8) = *(a1 + 8);
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v2 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v2;
  }
}

void std::__function::__func<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::~__func(uint64_t a1)
{
  *a1 = &unk_283FD98A0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x2318BE270);
}

uint64_t std::__function::__func<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCharacterCount::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::~__func(uint64_t a1)
{
  *a1 = &unk_283FD98A0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void KB::FilterAlteredURLFragments::filter_candidates(KB::FilterAlteredURLFragments *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 444);
  if (*(a3 + 444))
  {
    v7 = *(a3 + 112);
    if (!v7)
    {
      v7 = a3 + 904;
    }
  }

  else
  {
    KB::Candidate::compute_string(a3);
    v6 = *(a3 + 444);
    v7 = *(a3 + 112);
    if (!v7)
    {
      v7 = a3 + 904;
    }

    if (!*(a3 + 444))
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v8 = v7;
  while (*v8 != 46)
  {
    if (++v8 == &v7[v6])
    {
      v8 = &v7[v6];
      break;
    }
  }

LABEL_13:
  if (v8 - v7 != v6 || *(a3 + 3174) == 1)
  {
    v9 = *(a4 + 2);
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }

    WTF::RefCounted<KB::DictionaryContainer>::deref(v9);
    operator new();
  }
}

BOOL std::__function::__func<KB::FilterAlteredURLFragments::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterAlteredURLFragments::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = KB::Candidate::num_words_preserving_input(a2, *(a1 + 8), *(a1 + 16), a4, a5);
  v9 = *(a1 + 8);
  v10 = *(v9 + 888);
  if (*(v9 + 888))
  {
    v11 = *(v9 + 896);
    if (!v11)
    {
      v11 = (v9 + 904);
    }
  }

  else
  {
    KB::Candidate::compute_string(*(a1 + 8));
    v10 = *(v9 + 888);
    v11 = *(v9 + 896);
    if (!v11)
    {
      v11 = (v9 + 904);
    }

    if (!*(v9 + 888))
    {
      v12 = v11;
      goto LABEL_13;
    }
  }

  v12 = v11;
  while (*v12 != 46)
  {
    if (++v12 == &v10[v11])
    {
      v12 = &v10[v11];
      break;
    }
  }

LABEL_13:
  if ((v12 - v11) == v10)
  {
    if (*(*(a1 + 24) + 3176) != 1 || v8 != 0)
    {
      return 0;
    }

    if (!v7)
    {
      return 1;
    }

    KB::Candidate::capitalized_string(&v27, a2);
    KB::String::append_format(v7, "candidate %s proceeds '.' in context and does not preserve input word url format");
LABEL_21:
    if (v28)
    {
      if (BYTE6(v27) == 1)
      {
        free(v28);
      }
    }

    return 1;
  }

  if (!v8)
  {
    return 0;
  }

  if (*a2 == v8)
  {
    return 0;
  }

  v15 = *(a1 + 8);
  if (*v15 == v8)
  {
    return 0;
  }

  v16 = v15[1];
  v17 = v16 + 240 * (v8 - 1);
  v18 = *(v17 + 8);
  v19 = (v17 + 16);
  if (v18)
  {
    v19 = v18;
  }

  if (*v19 != 46)
  {
    return 0;
  }

  v20 = v19[1];
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = v8 == 1;
  }

  if (v21)
  {
    goto LABEL_41;
  }

  v22 = v16 + 240 * (v8 - 2);
  v23 = *(v22 + 8);
  v24 = (v22 + 16);
  if (v23)
  {
    v24 = v23;
  }

  if (*v24 != 46)
  {
LABEL_41:
    v25 = 0;
  }

  else
  {
    v25 = v24[1] == 0;
  }

  result = 0;
  if (!v20 && !v25)
  {
    v26 = *(v16 + 240 * v8 + 132) & 0x4000000;
    result = v26 == 0;
    if (v7)
    {
      if (!v26)
      {
        KB::Candidate::capitalized_string(&v27, a2);
        KB::String::append_format(v7, "candidate %s contains '.' and does not preserve input word url format");
        goto LABEL_21;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<KB::FilterAlteredURLFragments::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterAlteredURLFragments::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD98E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void KB::FilterDoubleApostrophe::filter_candidates(KB::FilterDoubleApostrophe *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 444);
  if (*(a3 + 444))
  {
    v8 = *(a3 + 112);
    if (!v8)
    {
      v8 = a3 + 904;
    }
  }

  else
  {
    KB::Candidate::compute_string(a3);
    v7 = *(a3 + 444);
    v8 = *(a3 + 112);
    if (!v8)
    {
      v8 = a3 + 904;
    }

    if (!*(a3 + 444))
    {
      v9 = v8;
      goto LABEL_13;
    }
  }

  v9 = v8;
  while (*v9 != 39)
  {
    if (++v9 == &v8[v7])
    {
      v9 = &v8[v7];
      break;
    }
  }

LABEL_13:
  if (v9 - v8 != v7)
  {
    v10 = *(a4 + 7);
    v11[0] = &unk_283FD9930;
    v11[3] = v11;
    KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v10, "FilterDoubleApostrophe", v11);
    std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v11);
  }
}

uint64_t std::__function::__func<KB::FilterDoubleApostrophe::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterDoubleApostrophe::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, unint64_t *a2, KB::String **a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a3;
  v6 = a2[1];
  for (i = 1; ; ++i)
  {
    v8 = v6 + 240 * v4;
    if ((*(v8 + 135) & 4) != 0)
    {
      v9 = *(v8 + 8);
      v10 = (v8 + 16);
      if (v9)
      {
        v10 = v9;
      }

      if (*v10 == 39 && !v10[1])
      {
        v12 = i != 1 && (v11 = (v6 + 240 * (i - 2)), (*(v11 + 135) & 4) == 0) && KB::String::last(v11) == 39;
        if (v3 - 1 <= v4 || (v13 = (v6 + 240 * i), (*(v13 + 135) & 4) != 0))
        {
          v16 = 0;
        }

        else
        {
          v14 = *(v13 + 1);
          if (!v14)
          {
            v14 = (v13 + 8);
          }

          v19 = v14;
          v15 = *v13;
          v20 = 0;
          v21 = v15;
          v22 = 0;
          KB::String::iterator::initialize(&v19);
          v16 = v22 == 39;
        }

        if (v12 || v16)
        {
          break;
        }
      }
    }

    v4 = i;
    if (v3 <= i)
    {
      return 0;
    }
  }

  if (v5)
  {
    KB::String::append_format(v5, "candidate contains word that has multiple adjacent apostrophes");
  }

  return 1;
}

uint64_t KB::FilterWordEndingApostropheBetweenNonseparators::filter_candidates(KB::FilterWordEndingApostropheBetweenNonseparators *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
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
  v11[0] = &unk_283FD9978;
  v11[1] = a3;
  v11[2] = v8;
  v11[3] = v11;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v9, "FilterWordEndingApostropheBetweenNonseparators", v11);
  return std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v11);
}

void std::__function::__func<KB::FilterWordEndingApostropheBetweenNonseparators::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterWordEndingApostropheBetweenNonseparators::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3)
{
  if (*a2 >= 3uLL)
  {
    v5 = *a3;
    v6 = *(a1 + 16);
    if (!*(a2 + 888))
    {
      KB::Candidate::compute_string(a2);
    }

    v7 = *(a1 + 8);
    if (!*(v7 + 444))
    {
      KB::Candidate::compute_string(v7);
    }

    v8 = *(v6 + 24);
    if (v8)
    {
      if (!(*(*v8 + 48))(v8, a2 + 888, v7 + 444) && (*a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = 1;
        for (i = 612; ; i += 240)
        {
          v11 = *(a2 + 8);
          v12 = (v11 + i - 372);
          v13 = (v11 + i - 368);
          v14 = *v13;
          if (!*v13)
          {
            KB::String::compute_length((v11 + i - 372));
            v14 = *v13;
          }

          if (v14 == 1)
          {
            v15 = *(v11 + i - 364) ? *(v11 + i - 364) : v11 + i - 356;
            v18 = v15;
            v16 = *v12;
            v19 = 0;
            v20 = v16;
            v21 = 0;
            KB::String::iterator::initialize(&v18);
            if (v21 == 39 || (v18 = v15, v19 = 0, v20 = v16, v21 = 0, KB::String::iterator::initialize(&v18), v21 == 8217))
            {
              if (((*(*(a2 + 8) + i - 480) | *(*(a2 + 8) + i)) & 0x4000000) == 0)
              {
                break;
              }
            }
          }

          if (++v9 >= (*a2 - 1))
          {
            return;
          }
        }

        if (v5)
        {
          KB::String::append_format(v5, "candidate is a word ending with an apostrophe between nonseparators");
        }
      }
    }

    else
    {
      v17 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<KB::FilterWordEndingApostropheBetweenNonseparators::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterWordEndingApostropheBetweenNonseparators::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::destroy_deallocate(v17);
    }
  }
}

__n128 std::__function::__func<KB::FilterWordEndingApostropheBetweenNonseparators::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterWordEndingApostropheBetweenNonseparators::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9978;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void KB::FilterPopupVariantMismatch::filter_candidates(KB::FilterPopupVariantMismatch *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 251);
  v5 = *(a3 + 252);
  if (v4 != v5)
  {
    while ((*v4 & 4) == 0)
    {
      v4 += 4;
      if (v4 == v5)
      {
        return;
      }
    }
  }

  if (v4 != v5)
  {
    operator new();
  }
}

BOOL std::__function::__func<KB::FilterPopupVariantMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterPopupVariantMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t a2, KB::String **a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = *a3;
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  v7 = *(a1 + 8);
  if (!*(v7 + 888))
  {
    KB::Candidate::compute_string(*(a1 + 8));
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(v7 + 892);
  if (!*(v7 + 892))
  {
    KB::String::compute_length((v7 + 888));
    v10 = *(v7 + 892);
  }

  KB::lower_string(v32, (v7 + 888), v8, a3, a4, a5);
  KB::lower_string(v30, (a2 + 888), v8, v11, v12, v13);
  KB::String::String(v27, v32);
  v29 = 0;
  KB::String::String(v24, v30);
  v26 = 0;
  if (v10)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = v14 >= (v9[1] - *v9) >> 2 || (*(*v9 + 4 * v14) & 4) == 0;
      v17 = KB::UTF8Iterator::next(v27);
      v18 = KB::UTF8Iterator::next(v24);
      v19 = KB::UTF8Iterator::next(v27);
      v20 = KB::UTF8Iterator::next(v24);
      if (!v16)
      {
        break;
      }

LABEL_24:
      if (((0x4000050u >> u_charType(v19)) & 1) == 0)
      {
        KB::UTF8Iterator::prev(v27);
      }

      if (((0x4000050u >> u_charType(v20)) & 1) == 0)
      {
        KB::UTF8Iterator::prev(v24);
      }

      v15 = ++v14 >= v10;
      if (v10 == v14)
      {
        goto LABEL_33;
      }
    }

    if (v19 > 729)
    {
      if (v19 == 730 || v19 == 732 || v19 == 901)
      {
        goto LABEL_21;
      }
    }

    else if ((v19 - 168) <= 0xC && ((1 << (v19 + 88)) & 0x1081) != 0)
    {
      goto LABEL_21;
    }

    if (u_charType(v19) != 4)
    {
      if (!KB::substitution_allowed(v18, v17, 0, v21))
      {
        goto LABEL_33;
      }

LABEL_22:
      if (u_charType(v17) == 6 && u_charType(v18) != 6)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }

LABEL_21:
    if (!KB::character_has_diacritic(v18, v19))
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  v15 = 1;
LABEL_33:
  if (v25 && v24[6] == 1)
  {
    free(v25);
  }

  if (v28 && v27[6] == 1)
  {
    free(v28);
  }

  if (v31 && v30[6] == 1)
  {
    free(v31);
  }

  if (v33 && v32[6] == 1)
  {
    free(v33);
  }

  if (v23 != 0 && !v15)
  {
    KB::String::append_format(v23, "candidate does not match popup variants");
  }

  return !v15;
}

__n128 std::__function::__func<KB::FilterPopupVariantMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterPopupVariantMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD99C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void KB::FilterAllCapsNoSuggestWordsOfLength::filter_candidates(KB::FilterAllCapsNoSuggestWordsOfLength *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = (a3 + 888);
  if (!*(a3 + 444))
  {
    KB::Candidate::compute_string(a3);
    if (!*(a3 + 444))
    {
      KB::Candidate::compute_string(a3);
    }
  }

  KB::upper_string(v18, v8, 0, a3, a4, a5);
  if (v8 == v18)
  {
    if (v20 && v19 == 1)
    {
      free(v20);
    }
  }

  else
  {
    v12 = KB::String::equal(v8, v18, 1, v10, v11);
    if (v20 && v19 == 1)
    {
      free(v20);
    }

    if (!v12)
    {
      v13 = *(this + 2);
      v14 = *(a4 + 7);
      v15 = &unk_283FD9A08;
      v16 = v13;
      v17 = &v15;
      KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v14, "FilterAllCapsNoSuggestWordsOfLength", &v15);
      std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](&v15);
    }
  }
}

BOOL std::__function::__func<KB::FilterAllCapsNoSuggestWordsOfLength::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterAllCapsNoSuggestWordsOfLength::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, uint64_t *a2, KB::String **a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = a2[1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v14 = ___ZZNK2KB35FilterAllCapsNoSuggestWordsOfLength17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesEENK3__0clERKNS_9CandidateEPNS_6StringE_block_invoke;
  v15 = &__block_descriptor_tmp_68;
  v16 = *(a1 + 8);
  if (v5)
  {
    v8 = v6 + 240 * v5;
    v9 = 240 * v5;
    while (((v14)(v13, v6) & 1) == 0)
    {
      v6 += 240;
      v9 -= 240;
      if (!v9)
      {
        v6 = v8;
        break;
      }
    }

    v10 = v6;
    v5 = *a2;
    v6 = a2[1];
  }

  else
  {
    v10 = v6;
  }

  v11 = v6 + 240 * v5;
  if (v4 && v10 != v11)
  {
    KB::String::append_format(v4, "candidate word of length=%u is all-caps and not suggestible", *(a1 + 8));
  }

  return v10 != v11;
}

BOOL ___ZZNK2KB35FilterAllCapsNoSuggestWordsOfLength17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesEENK3__0clERKNS_9CandidateEPNS_6StringE_block_invoke(uint64_t a1, KB::String *this)
{
  v4 = *(this + 2);
  if (!*(this + 2))
  {
    KB::String::compute_length(this);
    v4 = *(this + 2);
  }

  if (*(a1 + 32) != v4)
  {
    return 0;
  }

  v5 = *(this + 26);
  if ((v5 & 0x800012) == 0)
  {
    v6 = v5 & 0x2042000;
    if ((*(this + 26) & 0x2080) != 0x80 && v6 != 0x2000000)
    {
      return 0;
    }
  }

  if (!v4)
  {
    KB::String::compute_length(this);
    LOWORD(v4) = *(this + 2);
  }

  return ((-1 << v4) | *(this + 30)) == -1;
}

uint64_t std::__function::__func<KB::FilterAllCapsNoSuggestWordsOfLength::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterAllCapsNoSuggestWordsOfLength::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_283FD9A08;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t KB::FilterMissingOneLetterWordFromInput::filter_candidates(KB::FilterMissingOneLetterWordFromInput *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 2);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *(v7 + 8);
  result = WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
  v12 = *a3;
  if (*a3)
  {
    v13 = *(a3 + 1);
    v14 = v13 + 240 * v12;
    v24 = v8 + 144;
    do
    {
      if ((*(v13 + 135) & 4) == 0)
      {
        v15 = *(v13 + 4);
        if (!*(v13 + 4))
        {
          result = KB::String::compute_length(v13);
          v15 = *(v13 + 4);
        }

        if (v15 <= 1)
        {
          v16 = *a2;
          v17 = *(a2 + 1);
          while (v16 != v17)
          {
            if (*v16)
            {
              v18 = v16[1];
              v19 = 240 * *v16;
              while (1)
              {
                if ((*(v18 + 135) & 4) == 0)
                {
                  if (v18 == v13 || (result = KB::String::equal(v18, v13, 1, v10, v11), result))
                  {
                    v20 = *(v18 + 104);
                    if ((v20 & 0x800012) == 0)
                    {
                      v21 = v20 & 0x40000;
                      if ((*(v18 + 104) & 0x2080) != 0x80 && v21 != 0)
                      {
                        break;
                      }
                    }
                  }
                }

                v18 += 240;
                v19 -= 240;
                if (!v19)
                {
                  goto LABEL_23;
                }
              }

              v23 = *(a4 + 7);
              v25[0] = &unk_283FD9A50;
              v25[1] = v13;
              v25[2] = v24;
              v25[3] = v25;
              KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v23, "FilterMissingOneLetterWordFromInput", v25);
              result = std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v25);
              break;
            }

LABEL_23:
            v16 += 125;
          }
        }
      }

      v13 += 240;
    }

    while (v13 != v14);
  }

  return result;
}

void std::__function::__func<KB::FilterMissingOneLetterWordFromInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterMissingOneLetterWordFromInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, void *a2, KB::String **a3)
{
  if (*a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *a3;
    v7 = a2[1];
    v8 = 240 * *a2;
    do
    {
      if ((*(v7 + 135) & 4) == 0)
      {
        v9 = *(v7 + 4);
        if (!*(v7 + 4))
        {
          KB::String::compute_length(v7);
          v9 = *(v7 + 4);
        }

        if (v9 == 1)
        {
          v10 = *(*(a1 + 16) + 24);
          if (!v10)
          {
            v12 = std::__throw_bad_function_call[abi:nn200100]();
            std::__function::__func<KB::FilterMissingOneLetterWordFromInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterMissingOneLetterWordFromInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::destroy_deallocate(v12);
            return;
          }

          v11 = (*(*v10 + 48))(v10, v7, *(a1 + 8));
          v5 |= v11 != 0;
          v4 |= v11 == 0;
        }
      }

      v7 += 240;
      v8 -= 240;
    }

    while (v8);
    if (v6)
    {
      if (v4 & (v5 ^ 1))
      {
        KB::String::append_format(v6, "candidate does not preserve original 1 letter word");
      }
    }
  }
}

__n128 std::__function::__func<KB::FilterMissingOneLetterWordFromInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterMissingOneLetterWordFromInput::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9A50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t KB::FilterCorrectionsIfAnyCandidateMatchesInput::filter_candidates(KB::FilterCorrectionsIfAnyCandidateMatchesInput *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v8 = *(a4 + 2);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  v9 = *(v8 + 8);
  result = WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    while (1)
    {
      if ((*(*(v11 + 1) + 240 * *v11 - 134) & 0x80) == 0)
      {
        result = KB::CandidateFilter::candidate_matches_input(v11, a3, v9 + 144);
        if (result)
        {
          break;
        }

        if (*(a3 + 2000) == 1)
        {
          result = KB::CandidateFilter::candidate_matches_input(v11, (a3 + 1000), v9 + 144);
          if (result)
          {
            break;
          }
        }
      }

      v11 = (v11 + 1000);
      if (v11 == v12)
      {
        v11 = v12;
        break;
      }
    }

    v12 = a2[1];
  }

  if (v11 != v12 && 0x1CAC083126E978D5 * ((v11 - *a2) >> 3) <= *(this + 2))
  {
    v13 = *a3;

    KB::CandidateFilter::remove_candidates_with_input_mismatch(this, a2, v13, a3, a4, "match length is equal to the number of input words");
  }

  return result;
}

void KB::FilterNondominantCorrectionOfMoreWords::filter_candidates(KB::FilterNondominantCorrectionOfMoreWords *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v4 = a4;
  v44 = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    v8 = *(a4 + 2);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }

    v9 = *(v8 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
    v10 = *a2;
    v11 = expf(*(*a2 + 186));
    v14 = KB::Candidate::num_words_matching_input(v10, a3, v9 + 144, v12, v13);
    v15 = 8;
    if (*a3 - v14 > 1)
    {
      v15 = 12;
    }

    v16 = *(this + v15);
    KB::Candidate::capitalized_string(&v38, *a2);
    KB::String::String(&v36, "");
    KB::String::replace_char(&v40, &v38, &v36, 39);
    KB::String::String(v33, "");
    KB::String::replace_char(&v42, &v40, v33, 8217);
    if (v35 && v34 == 1)
    {
      free(v35);
    }

    if (v41 && BYTE6(v40) == 1)
    {
      free(v41);
    }

    if (v37 && BYTE6(v36) == 1)
    {
      free(v37);
    }

    if (v39 && BYTE6(v38) == 1)
    {
      free(v39);
    }

    v29 = this;
    v17 = *a2;
    if ((0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3)) < 2)
    {
      v18 = 0;
      goto LABEL_46;
    }

    v18 = 0;
    v19 = 2;
    v20 = 1;
    while (1)
    {
      v21 = (v17 + 1000 * v20);
      KB::Candidate::capitalized_string(&v36, v21);
      KB::String::String(v33, "");
      KB::String::replace_char(&v38, &v36, v33, 39);
      KB::String::String(v31, "");
      KB::String::replace_char(&v40, &v38, v31, 8217);
      if (v32 && v31[6] == 1)
      {
        free(v32);
      }

      if (v39 && BYTE6(v38) == 1)
      {
        free(v39);
      }

      if (v35 && v34 == 1)
      {
        free(v35);
      }

      if (v37 && BYTE6(v36) == 1)
      {
        free(v37);
      }

      if (!KB::String::equal(&v42, &v40, 1, v22, v23))
      {
        if ((v16 * expf(v21[186])) < v11)
        {
          if (v41 && BYTE6(v40) == 1)
          {
            free(v41);
          }

LABEL_46:
          if (v43 && BYTE6(v42) == 1)
          {
            free(v43);
          }

          this = v29;
          v4 = a4;
LABEL_50:

          KB::CandidateFilter::remove_candidates_with_input_mismatch(this, a2, v18, a3, v4, "match length is equal to the max input length which has a boosted omega > top candidate");
        }

        v26 = KB::Candidate::num_words_matching_input(v21, a3, v9 + 144, v24, v25);
        if (v18 <= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = v18;
        }

        if (v26 > v14)
        {
          v18 = v27;
        }
      }

      if (v41 && BYTE6(v40) == 1)
      {
        free(v41);
      }

      v20 = v19;
      v17 = *a2;
      if (0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3) <= v19++)
      {
        goto LABEL_46;
      }
    }
  }

  v18 = 0;
  goto LABEL_50;
}

void KB::FilterInputPrefixMismatch::filter_candidates(KB::FilterInputPrefixMismatch *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v35[125] = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(v35, a3);
  if (!v35[0] || (*(a3 + 3177) & 1) != 0)
  {
    goto LABEL_59;
  }

  v8 = v35[1] + 240 * v35[0];
  if ((*(v8 - 105) & 4) == 0)
  {
    v9 = (v8 - 240);
    v10 = *(a4 + 2);
    if (!v10)
    {
LABEL_12:
      KB::Candidate::capitalized_string(&v33, v35);
      v13 = WORD2(v33);
      if (!WORD2(v33))
      {
        KB::String::compute_length(&v33);
        v13 = WORD2(v33);
      }

      KB::Word::capitalized_string(&v31, v9);
      v14 = WORD2(v31);
      if (!WORD2(v31))
      {
        KB::String::compute_length(&v31);
        v14 = WORD2(v31);
      }

      v15 = v13 - ((v14 - *(this + 2)) & ~((v14 - *(this + 2)) >> 31));
      if (v32 && BYTE6(v31) == 1)
      {
        free(v32);
      }

      goto LABEL_22;
    }

    atomic_fetch_add(v10, 1u);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v10);
    v11 = *(a4 + 2);
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
      KB::DictionaryContainer::lookup(&v33, v11, v9);
      WTF::RefCounted<KB::DictionaryContainer>::deref(v11);
    }

    else
    {
      KB::DictionaryContainer::lookup(&v33, 0, v9);
    }

    for (i = v33; ; i = (i + 240))
    {
      if (i == v34)
      {
        v31 = &v33;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v31);
        goto LABEL_12;
      }

      if ((*(i + 107) & 0x10) != 0)
      {
        break;
      }
    }

    v31 = &v33;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v31);
  }

  KB::Candidate::capitalized_string(&v33, v35);
  v15 = WORD2(v33);
  if (!WORD2(v33))
  {
    KB::String::compute_length(&v33);
    v15 = WORD2(v33);
  }

LABEL_22:
  if (*(this + 2) >= (0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3)))
  {
    v16 = 0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3);
  }

  else
  {
    v16 = *(this + 2);
  }

  KB::String::String(&v31, &v33);
  if (v31)
  {
    while (1)
    {
      v17 = *(a4 + 2);
      if (v17)
      {
        atomic_fetch_add(v17, 1u);
      }

      v18 = *(v17 + 8);
      WTF::RefCounted<KB::DictionaryContainer>::deref(v17);
      std::__function::__value_func<KB::ByteString ()(KB::String const&)>::__value_func[abi:nn200100](v30, v18 + 112);
      KB::CandidateFilter::_sortkey_for_string(&v26, &v31, *(a4 + 2));
      v25[0] = &v26;
      v25[1] = v30;
      v20 = *a2;
      v19 = *(a2 + 1);
      if (*a2 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          v22 = KB::Candidate::sort_key(v20, v30);
          v21 += KB::ByteString::starts_with(v22, &v26);
          v20 = (v20 + 1000);
        }

        while (v20 != v19);
      }

      if (v21 >= v16)
      {
        break;
      }

      v23 = WORD2(v31);
      if (!WORD2(v31))
      {
        KB::String::compute_length(&v31);
        v23 = WORD2(v31);
      }

      if (v15 >= v23)
      {
        break;
      }

      if (!v23)
      {
        KB::String::compute_length(&v31);
        LOWORD(v23) = WORD2(v31);
      }

      KB::String::shorten(&v27, &v31, (v23 - 1));
      KB::String::operator=(&v31, &v27);
      if (v28 && BYTE6(v27) == 1)
      {
        free(v28);
      }

      if (v26.var0.var0.var0 >= 0xFu && v26.var0.var0.var1)
      {
        MEMORY[0x2318BE250](v26.var0.var0.var1, 0x1000C8077774924);
      }

      std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v30);
      if (!v31)
      {
        goto LABEL_53;
      }
    }

    if (v21 < 0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3))
    {
      v24 = *(a4 + 7);
      v29[0] = &unk_283FD9A98;
      v29[1] = v25;
      v29[3] = v29;
      KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v24, "FilterInputPrefixMismatch", v29);
      std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v29);
    }

    if (v26.var0.var0.var0 >= 0xFu && v26.var0.var0.var1)
    {
      MEMORY[0x2318BE250](v26.var0.var0.var1, 0x1000C8077774924);
    }

    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v30);
  }

LABEL_53:
  if (v32 && BYTE6(v31) == 1)
  {
    free(v32);
  }

  if (v34 && BYTE6(v33) == 1)
  {
    free(v34);
  }

LABEL_59:
  KB::Candidate::~Candidate(v35);
}

uint64_t std::__function::__value_func<KB::ByteString ()(KB::String const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL std::__function::__func<KB::FilterInputPrefixMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_2,std::allocator<KB::FilterInputPrefixMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_2>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = KB::Candidate::sort_key(a2, *(v4 + 8));
  v6 = KB::ByteString::starts_with(v5, *v4);
  v7 = v6;
  if (v3 && !v6)
  {
    KB::String::append_format(v3, "candidate does not contain the original input as a prefix");
  }

  return !v7;
}

uint64_t std::__function::__func<KB::FilterInputPrefixMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_2,std::allocator<KB::FilterInputPrefixMismatch::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_2>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD9A98;
  a2[1] = v2;
  return result;
}

uint64_t KB::AddAlternativesForRetrocorrection::filter_candidates(KB::AddAlternativesForRetrocorrection *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  result = _os_feature_enabled_impl();
  if (result)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "were");
    std::string::basic_string[abi:nn200100]<0>(v69, "we're");
    std::string::basic_string[abi:nn200100]<0>(v70, "well");
    std::string::basic_string[abi:nn200100]<0>(v71, "we'll");
    v6 = 0;
    memset(v63, 0, sizeof(v63));
    v64 = 1065353216;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v63, &__p[v6], &__p[v6]);
      v6 += 3;
    }

    while (v6 != 12);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v71[i + 2]) < 0)
      {
        operator delete(v71[i]);
      }
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v8 = *a2;
    v9 = *(a2 + 1);
    if (*a2 != v9)
    {
      v53 = *(a2 + 1);
      do
      {
        v10 = v8[1];
        if (*v10)
        {
          if (v10[1])
          {
            v11 = v10[1];
          }

          else
          {
            v11 = (v10 + 2);
          }
        }

        else
        {
          v11 = "";
        }

        v12 = *(v10 + 26);
        std::string::basic_string[abi:nn200100]<0>(__p, v11);
        v13 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(v63, __p);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(__p[0]);
        }

        v14 = (v12 >> 17) & 1;
        if (v13)
        {
          v14 = 1;
        }

        if (*v8 >= 2 && v14 != 0)
        {
          KB::Word::Word(v73, v8[1]);
          v54 = 0;
          v55 = &v54;
          v56 = 0x4002000000;
          v57 = __Block_byref_object_copy__5359;
          v58 = __Block_byref_object_dispose__5360;
          memset(v59, 0, sizeof(v59));
          if ((v12 & 0x20000) != 0)
          {
            v18 = *(a4 + 2);
            if (v18)
            {
              atomic_fetch_add(v18, 1u);
            }

            KB::cf_string_impl<KB::String>(__p, v73);
            v19 = __p[0];
            v71[116] = MEMORY[0x277D85DD0];
            v71[117] = 1174405120;
            v71[118] = ___ZNK2KB33AddAlternativesForRetrocorrection17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke;
            v71[119] = &unk_283FD92A8;
            KB::Word::Word(v72, v73);
            v71[120] = &v54;
            LXLexiconEnumerateEntriesForString();
            if (v19)
            {
              CFRelease(v19);
            }

            WTF::RefCounted<KB::DictionaryContainer>::deref(v18);
            KB::Word::~Word(v72);
          }

          else if (v13)
          {
            v20 = *(a4 + 2);
            if (v20)
            {
              atomic_fetch_add(v20, 1u);
              KB::DictionaryContainer::derive_static_words(v20, v55 + 5, v73);
              WTF::RefCounted<KB::DictionaryContainer>::deref(v20);
            }

            else
            {
              KB::DictionaryContainer::derive_static_words(0, v59, v73);
            }
          }

          v21 = v55[5];
          v22 = v55[6];
          while (v21 != v22)
          {
            if (!KB::String::equal(v21, v73, 0, v16, v17))
            {
              KB::Candidate::Candidate(__p, v8);
              KB::Candidate::clear(__p);
              KB::Candidate::append(__p, v21);
              if (*v8 >= 2)
              {
                v23 = 30;
                v24 = 1;
                do
                {
                  KB::Candidate::append(__p, &v8[1][v23]);
                  ++v24;
                  v23 += 30;
                }

                while (*v8 > v24);
              }

              if (*(a2 + 1) == *a2)
              {
LABEL_51:
                if (v61 >= v62)
                {
                  v32 = 0x1CAC083126E978D5 * ((v61 - v60) >> 3);
                  v33 = v32 + 1;
                  if ((v32 + 1) > 0x4189374BC6A7EFLL)
                  {
LABEL_85:
                    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
                  }

                  if (0x395810624DD2F1AALL * ((v62 - v60) >> 3) > v33)
                  {
                    v33 = 0x395810624DD2F1AALL * ((v62 - v60) >> 3);
                  }

                  if ((0x1CAC083126E978D5 * ((v62 - v60) >> 3)) >= 0x20C49BA5E353F7)
                  {
                    v34 = 0x4189374BC6A7EFLL;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  v78 = &v60;
                  if (v34)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v34);
                  }

                  v35 = (8 * ((v61 - v60) >> 3));
                  KB::Candidate::Candidate(v35, __p);
                  v31 = (1000 * v32 + 1000);
                  v36 = (v35 + v60 - v61);
                  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(v60, v61, v36);
                  v37 = v60;
                  v38 = v62;
                  v60 = v36;
                  v61 = v31;
                  v62 = 0;
                  v76 = v37;
                  v77 = v38;
                  v74 = v37;
                  v75 = v37;
                  std::__split_buffer<KB::Candidate>::~__split_buffer(&v74);
                }

                else
                {
                  v31 = (KB::Candidate::Candidate(v61, __p) + 1000);
                }

                v61 = v31;
              }

              else
              {
                v25 = 0;
                v26 = 0;
                while (1)
                {
                  KB::Candidate::capitalized_string(&v74, __p);
                  KB::Candidate::capitalized_string(&v65, (*a2 + v25));
                  v29 = KB::String::equal(&v74, &v65, 1, v27, v28);
                  if (v66)
                  {
                    v30 = BYTE6(v65) == 1;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  if (v30)
                  {
                    free(v66);
                  }

                  if (v75 && BYTE6(v74) == 1)
                  {
                    free(v75);
                  }

                  if (v29)
                  {
                    break;
                  }

                  ++v26;
                  v25 += 1000;
                  if (0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3) <= v26)
                  {
                    goto LABEL_51;
                  }
                }
              }

              KB::Candidate::~Candidate(__p);
            }

            v21 += 30;
          }

          _Block_object_dispose(&v54, 8);
          __p[0] = v59;
          std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](__p);
          KB::Word::~Word(v73);
          v9 = v53;
        }

        v8 += 125;
      }

      while (v8 != v9);
      v39 = v60;
      v40 = v61;
      if (v60 != v61)
      {
        v41 = *(a2 + 1);
        do
        {
          v42 = *(a2 + 2);
          if (v41 >= v42)
          {
            v43 = 0x1CAC083126E978D5 * ((v41 - *a2) >> 3);
            v44 = v43 + 1;
            if ((v43 + 1) > 0x4189374BC6A7EFLL)
            {
              goto LABEL_85;
            }

            v45 = 0x1CAC083126E978D5 * ((v42 - *a2) >> 3);
            if (2 * v45 > v44)
            {
              v44 = 2 * v45;
            }

            if (v45 >= 0x20C49BA5E353F7)
            {
              v46 = 0x4189374BC6A7EFLL;
            }

            else
            {
              v46 = v44;
            }

            v69[1] = a2;
            if (v46)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v46);
            }

            v47 = 1000 * v43;
            KB::Candidate::Candidate((1000 * v43), v39);
            v41 = (1000 * v43 + 1000);
            v48 = *(a2 + 1);
            v49 = v47 + *a2 - v48;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a2, v48, v49);
            v50 = *a2;
            *a2 = v49;
            *(a2 + 1) = v41;
            v51 = *(a2 + 2);
            *(a2 + 2) = 0;
            v68 = v50;
            v69[0] = v51;
            __p[0] = v50;
            __p[1] = v50;
            std::__split_buffer<KB::Candidate>::~__split_buffer(__p);
          }

          else
          {
            KB::Candidate::Candidate(v41, v39);
            v41 = (v41 + 1000);
          }

          *(a2 + 1) = v41;
          v39 = (v39 + 1000);
        }

        while (v39 != v40);
      }
    }

    __p[0] = &v60;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](__p);
    return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v63);
  }

  return result;
}

__n128 __Block_byref_object_copy__5359(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void ___ZNK2KB33AddAlternativesForRetrocorrection17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3[30] = *MEMORY[0x277D85DE8];
  KB::Word::Word(v3, a2, *(a1 + 176));
  std::vector<KB::Word>::push_back[abi:nn200100](*(*(a1 + 32) + 8) + 40, v3);
  KB::Word::~Word(v3);
}

uint64_t KB::FilterDuplicates::filter_candidates(KB::FilterDuplicates *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v12[4] = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  v6 = *(a4 + 7);
  v12[0] = &unk_283FD9AE0;
  v12[1] = v9;
  v12[3] = v12;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v6, "FilterDuplicates", v12);
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v12);
  v7 = *(a4 + 7);
  v11[0] = &unk_283FD9B28;
  v11[1] = v9;
  v11[3] = v11;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2 + 3, v7, "FilterDuplicates", v11);
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v11);
  return std::__hash_table<std::__hash_value_type<KB::String,_LXLexicon const*>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,_LXLexicon const*>>>::~__hash_table(v9);
}

uint64_t std::__function::__func<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  KB::Candidate::capitalized_string(&v12, a2);
  v7 = v13;
  if (!v13)
  {
    v7 = &v14;
  }

  if (v12)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  KB::String::format(&v15, "Removing duplicate candidate with string %s from linguistic_alternate candidate list.", v6, v8);
  if (v13 && BYTE6(v12) == 1)
  {
    free(v13);
  }

  v9 = *(a1 + 8);
  KB::String::String(&v12, &v15);
  is_duplicate_candidate = KB::FilterDuplicates::is_duplicate_candidate(a2, v9, v5, &v12);
  if (v13 && BYTE6(v12) == 1)
  {
    free(v13);
  }

  if (v16 && BYTE6(v15) == 1)
  {
    free(v16);
  }

  return is_duplicate_candidate;
}

uint64_t KB::FilterDuplicates::is_duplicate_candidate(KB::Candidate *a1, void *a2, KB::String *a3, KB::String *a4)
{
  v38[2] = *MEMORY[0x277D85DE8];
  KB::Candidate::capitalized_string(&v36, a1);
  v7 = v37;
  if (v37)
  {
    v8 = v37;
  }

  else
  {
    v8 = v38;
  }

  v9 = v36;
  v10 = KB::String::hash(v8, v36);
  v13 = a2[1];
  if (!v13)
  {
    goto LABEL_22;
  }

  v35 = a4;
  v14 = v10;
  v15 = vcnt_s8(v13);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v10;
    if (v13 <= v10)
    {
      v17 = v10 % v13;
    }
  }

  else
  {
    v17 = (v13 - 1) & v10;
  }

  v18 = *(*a2 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_22:
    if (v7)
    {
      v21 = v7;
    }

    else
    {
      v21 = v38;
    }

    v22 = KB::String::hash(v21, v9);
    v25 = v22;
    if (!v13)
    {
      goto LABEL_43;
    }

    v26 = vcnt_s8(v13);
    v26.i16[0] = vaddlv_u8(v26);
    v27 = v26.u32[0];
    if (v26.u32[0] > 1uLL)
    {
      v28 = v22;
      if (v13 <= v22)
      {
        v28 = v22 % v13;
      }
    }

    else
    {
      v28 = (v13 - 1) & v22;
    }

    v29 = *(*a2 + 8 * v28);
    if (!v29 || (v30 = *v29) == 0)
    {
LABEL_43:
      operator new();
    }

    while (1)
    {
      v31 = v30[1];
      if (v31 == v25)
      {
        if (v30 + 2 == &v36 || KB::String::equal((v30 + 2), &v36, 1, v23, v24))
        {
          v32 = 0;
          goto LABEL_48;
        }
      }

      else
      {
        if (v27 > 1)
        {
          if (v31 >= v13)
          {
            v31 %= v13;
          }
        }

        else
        {
          v31 &= v13 - 1;
        }

        if (v31 != v28)
        {
          goto LABEL_43;
        }
      }

      v30 = *v30;
      if (!v30)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v20 = v19[1];
    if (v20 == v14)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v20 >= v13)
      {
        v20 %= v13;
      }
    }

    else
    {
      v20 &= v13 - 1;
    }

    if (v20 != v17)
    {
LABEL_21:
      v7 = v37;
      v9 = v36;
      v13 = a2[1];
      goto LABEL_22;
    }

LABEL_20:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_21;
    }
  }

  if (v19 + 2 != &v36 && !KB::String::equal((v19 + 2), &v36, 1, v11, v12))
  {
    goto LABEL_20;
  }

  if (a3)
  {
    KB::String::append(a3, v35);
  }

  v32 = 1;
LABEL_48:
  if (v37)
  {
    v33 = BYTE6(v36) == 1;
  }

  else
  {
    v33 = 0;
  }

  if (v33)
  {
    free(v37);
  }

  return v32;
}

uint64_t *std::unique_ptr<std::__hash_node<KB::String,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<KB::String,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        if (*(v2 + 22) == 1)
        {
          free(v3);
        }
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1,std::allocator<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_1>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD9B28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  KB::Candidate::capitalized_string(&v12, a2);
  v7 = v13;
  if (!v13)
  {
    v7 = &v14;
  }

  if (v12)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  KB::String::format(&v15, "Removing duplicate candidate with string %s from linguistic candidate list.", v6, v8);
  if (v13 && BYTE6(v12) == 1)
  {
    free(v13);
  }

  v9 = *(a1 + 8);
  KB::String::String(&v12, &v15);
  is_duplicate_candidate = KB::FilterDuplicates::is_duplicate_candidate(a2, v9, v5, &v12);
  if (v13 && BYTE6(v12) == 1)
  {
    free(v13);
  }

  if (v16 && BYTE6(v15) == 1)
  {
    free(v16);
  }

  return is_duplicate_candidate;
}

uint64_t std::__function::__func<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterDuplicates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD9AE0;
  a2[1] = v2;
  return result;
}

void KB::FilterCaseVariantsOfStaticWords::filter_candidates(KB::FilterCaseVariantsOfStaticWords *this, const KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  *__p = 0u;
  v43 = 0u;
  v44 = 1065353216;
  v4 = *a2;
  v39 = a2[1];
  if (*a2 != v39)
  {
    do
    {
      v40 = v4;
      KB::Candidate::Candidate(&v51, v4);
      v41 = 0;
      v5 = v51;
      if (!v51)
      {
        goto LABEL_46;
      }

      v6 = 0;
      v7 = 0;
      do
      {
        if ((*(v52 + 240 * v7 + 106) & 4) == 0)
        {
          goto LABEL_45;
        }

        if (!std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(__p, v6))
        {
          v49 = &v41;
          v8 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(__p, v6, &v49);
          v9 = v8;
          if (v8[6])
          {
            std::__hash_table<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>>>::__deallocate_node(v8[5]);
            v9[5] = 0;
            v10 = v9[4];
            if (v10)
            {
              for (i = 0; i != v10; ++i)
              {
                *(v9[3] + 8 * i) = 0;
              }
            }

            v9[6] = 0;
          }

          v12 = v9[3];
          v9[3] = 0;
          if (v12)
          {
            operator delete(v12);
          }

          v9[4] = 0;
          v9[5] = 0;
          v9[6] = 0;
          *(v9 + 14) = 1065353216;
          std::__hash_table<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>>>::__deallocate_node(0);
          v6 = v41;
        }

        v49 = &v41;
        v13 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(__p, v6, &v49);
        KB::lower_string(&v49, (v52 + 240 * v41), 0, v14, v15, v16);
        v46 = &v49;
        v17 = std::__hash_table<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v13 + 6, &v49, &v46);
        KB::Word::capitalized_string(&v46, (v52 + 240 * v41));
        if (v47)
        {
          v18 = v47;
        }

        else
        {
          v18 = &v48;
        }

        v19 = KB::String::hash(v18, v46);
        v22 = v19;
        v23 = v17[7];
        if (!v23)
        {
          goto LABEL_34;
        }

        v24 = vcnt_s8(v23);
        v24.i16[0] = vaddlv_u8(v24);
        v25 = v24.u32[0];
        if (v24.u32[0] > 1uLL)
        {
          v26 = v19;
          if (v23 <= v19)
          {
            v26 = v19 % v23;
          }
        }

        else
        {
          v26 = (v23 - 1) & v19;
        }

        v27 = *(v17[6] + 8 * v26);
        if (!v27 || (v28 = *v27) == 0)
        {
LABEL_34:
          operator new();
        }

        while (1)
        {
          v29 = v28[1];
          if (v29 == v22)
          {
            break;
          }

          if (v25 > 1)
          {
            if (v29 >= v23)
            {
              v29 %= v23;
            }
          }

          else
          {
            v29 &= v23 - 1;
          }

          if (v29 != v26)
          {
            goto LABEL_34;
          }

LABEL_33:
          v28 = *v28;
          if (!v28)
          {
            goto LABEL_34;
          }
        }

        if (v28 + 2 != &v46 && !KB::String::equal((v28 + 2), &v46, 1, v20, v21))
        {
          goto LABEL_33;
        }

        if (v47)
        {
          v30 = BYTE6(v46) == 1;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          free(v47);
        }

        if (v50 && BYTE6(v49) == 1)
        {
          free(v50);
        }

        v6 = v41;
        v5 = v51;
LABEL_45:
        v41 = ++v6;
        v7 = v6;
      }

      while (v5 > v6);
LABEL_46:
      KB::Candidate::~Candidate(&v51);
      v4 = (v40 + 1000);
    }

    while ((v40 + 1000) != v39);
  }

  v31 = *(a4 + 7);
  v45[0] = &unk_283FD9B70;
  v45[1] = a3;
  v45[2] = __p;
  v45[3] = v45;
  KB::CandidateFilter::remove_candidates_satisfying_predicate(a2, v31, "FilterCaseVariantsOfStaticWords", v45);
  std::__function::__value_func<BOOL ()(KB::Candidate const&,KB::String *)>::~__value_func[abi:nn200100](v45);
  v32 = v43;
  if (v43)
  {
    do
    {
      v33 = *v32;
      std::__hash_table<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>>>::__deallocate_node(v32[5]);
      v34 = v32[3];
      v32[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }

      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v35 = __p[0];
  __p[0] = 0;
  if (v35)
  {
    operator delete(v35);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(float *a1, const KB::String *a2, KB::String **a3)
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

void std::__hash_table<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1;
      v1 = *v1;
      std::__hash_table<std::__hash_value_type<KB::String,_LXLexicon const*>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,_LXLexicon const*>>>::~__hash_table((v2 + 6));
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

uint64_t std::__function::__func<KB::FilterCaseVariantsOfStaticWords::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCaseVariantsOfStaticWords::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::operator()(uint64_t a1, KB::Candidate *a2, KB::String **a3)
{
  v60[2] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  KB::Candidate::capitalized_string(&v58, a2);
  KB::Candidate::capitalized_string(&v56, *(a1 + 8));
  v8 = KB::String::equal(&v58, &v56, 1, v6, v7);
  if (v57)
  {
    v9 = BYTE6(v56) == 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    free(v57);
  }

  if (v59 && BYTE6(v58) == 1)
  {
    free(v59);
  }

  if (v8)
  {
    return 0;
  }

  v51 = v5;
  v52 = 0;
  if (!*a2)
  {
    return 0;
  }

  LODWORD(v10) = 0;
  v11 = 0;
  while (2)
  {
    if ((*(*(a2 + 1) + 240 * v11 + 106) & 4) != 0)
    {
      goto LABEL_39;
    }

    v12 = *(a1 + 16);
    if (!std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(v12, v10))
    {
      goto LABEL_39;
    }

    v58 = &v52;
    v13 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v12, v10, &v58);
    KB::lower_string(&v58, (*(a2 + 1) + 240 * v52), 0, v14, v15, v16);
    v17 = v59;
    if (v59)
    {
      v18 = v59;
    }

    else
    {
      v18 = v60;
    }

    v19 = KB::String::hash(v18, v58);
    v22 = v13[4];
    if (!v22)
    {
      goto LABEL_36;
    }

    v23 = v19;
    v24 = vcnt_s8(v22);
    v24.i16[0] = vaddlv_u8(v24);
    v25 = v24.u32[0];
    if (v24.u32[0] > 1uLL)
    {
      v26 = v19;
      if (v22 <= v19)
      {
        v26 = v19 % v22;
      }
    }

    else
    {
      v26 = (v22 - 1) & v19;
    }

    v27 = *(v13[3] + 8 * v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_36:
      if (v17 && BYTE6(v58) == 1)
      {
        free(v17);
      }

      goto LABEL_39;
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v23)
      {
        break;
      }

      if (v25 > 1)
      {
        if (v29 >= v22)
        {
          v29 %= v22;
        }
      }

      else
      {
        v29 &= v22 - 1;
      }

      if (v29 != v26)
      {
LABEL_35:
        v17 = v59;
        goto LABEL_36;
      }

LABEL_34:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_35;
      }
    }

    if (v28 + 2 != &v58 && !KB::String::equal((v28 + 2), &v58, 1, v20, v21))
    {
      goto LABEL_34;
    }

    v30 = *(a1 + 16);
    v56 = &v52;
    v31 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v30, v52, &v56);
    KB::lower_string(&v56, (*(a2 + 1) + 240 * v52), 0, v32, v33, v34);
    v53 = &v56;
    v35 = std::__hash_table<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_set<KB::String>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_set<KB::String>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v31 + 6, &v56, &v53);
    KB::Word::capitalized_string(&v53, (*(a2 + 1) + 240 * v52));
    v36 = v54;
    if (v54)
    {
      v37 = v54;
    }

    else
    {
      v37 = &v55;
    }

    v38 = KB::String::hash(v37, v53);
    v41 = v35[7];
    if (!v41)
    {
      goto LABEL_62;
    }

    v42 = v38;
    v43 = vcnt_s8(v41);
    v43.i16[0] = vaddlv_u8(v43);
    v44 = v43.u32[0];
    if (v43.u32[0] > 1uLL)
    {
      v45 = v38;
      if (v41 <= v38)
      {
        v45 = v38 % v41;
      }
    }

    else
    {
      v45 = (v41 - 1) & v38;
    }

    v46 = *(v35[6] + 8 * v45);
    if (!v46 || (v47 = *v46) == 0)
    {
LABEL_62:
      v49 = 1;
      if (v36)
      {
        goto LABEL_66;
      }

      goto LABEL_68;
    }

    while (2)
    {
      v48 = v47[1];
      if (v48 != v42)
      {
        if (v44 > 1)
        {
          if (v48 >= v41)
          {
            v48 %= v41;
          }
        }

        else
        {
          v48 &= v41 - 1;
        }

        if (v48 != v45)
        {
LABEL_61:
          v49 = 1;
          goto LABEL_65;
        }

LABEL_60:
        v47 = *v47;
        if (!v47)
        {
          goto LABEL_61;
        }

        continue;
      }

      break;
    }

    if (v47 + 2 != &v53 && !KB::String::equal((v47 + 2), &v53, 1, v39, v40))
    {
      goto LABEL_60;
    }

    v49 = 0;
LABEL_65:
    v36 = v54;
    if (v54)
    {
LABEL_66:
      if (BYTE6(v53) == 1)
      {
        free(v36);
      }
    }

LABEL_68:
    if (v57 && BYTE6(v56) == 1)
    {
      free(v57);
    }

    if (v59 && BYTE6(v58) == 1)
    {
      free(v59);
    }

    if ((v49 & 1) == 0)
    {
LABEL_39:
      v10 = ++v52;
      v11 = v10;
      if (*a2 <= v10)
      {
        return 0;
      }

      continue;
    }

    break;
  }

  if (v51)
  {
    KB::String::append_format(v51, "candidate contains case variant of static word");
  }

  return 1;
}

__n128 std::__function::__func<KB::FilterCaseVariantsOfStaticWords::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterCaseVariantsOfStaticWords::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(KB::Candidate const&,KB::String *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9B70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(uint64_t this)
{
  if ((*(this + 80) & 1) == 0)
  {
    v3 = *(this + 32);
    if ((*(v3 + 82) & 1) == 0)
    {
      (*(**(v3 + 64) + 48))(*(v3 + 64), v3 + 88);
      *(v3 + 82) = 1;
    }

    WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::operator=((this + 56), (v3 + 88));
    v4 = *(this + 56);
    v5 = 126 - 2 * __clz(v4);
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(*(this + 64), (*(this + 64) + 8 * v4), v6, 1);
    *(this + 80) = 1;

    TI::CP::SearchNodeLanguageExtensions::compute_bound_on_score(this);
  }
}

unint64_t *WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::operator=(unint64_t *a1, unint64_t *a2)
{
  if (a2 != a1)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1 <= *a2)
    {
      if (v5 > a1[2])
      {
        WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::shrinkCapacity(a1);
        WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a1, *a2);
        if (!a1[1])
        {
          return a1;
        }

        v4 = *a1;
      }
    }

    else
    {
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((a1[1] + 8 * v5), (a1[1] + 8 * v4));
      *a1 = v5;
      v4 = v5;
    }

    v6 = a2[1];
    if (v4)
    {
      v7 = a1[1];
      v8 = 8 * v4;
      do
      {
        v9 = *v6;
        if (*v6)
        {
          atomic_fetch_add((v9 + 8), 1u);
        }

        v10 = *v7;
        *v7 = v9;
        if (v10)
        {
          v11 = atomic_load(v10 + 2);
          if (v11 == 1)
          {
            (*(*v10 + 248))(v10);
          }

          else
          {
            atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
          }
        }

        ++v6;
        ++v7;
        v8 -= 8;
      }

      while (v8);
      v6 = a2[1];
      v12 = *a1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 != *a2)
    {
      v13 = (a1[1] + 8 * v12);
      v14 = &v6[v12];
      v15 = 8 * *a2 - 8 * v12;
      do
      {
        v16 = *v14;
        *v13 = *v14;
        if (v16)
        {
          atomic_fetch_add((v16 + 8), 1u);
        }

        ++v13;
        ++v14;
        v15 -= 8;
      }

      while (v15);
      v12 = *a2;
    }

    *a1 = v12;
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(unsigned int **a1, unsigned int **a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2;
  v8 = (a2 - 1);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = v7 - v9;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v9, v9 + 1, v8);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v9, v9 + 1, v9 + 2, v8);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v9, v9 + 1, v9 + 2, v9 + 3, v8);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      v7 = a2;
      if (v10 == 2)
      {
        v59 = (*(**v8 + 24))();
        if (v59 < (*(**v9 + 24))())
        {
          v60 = *v9;
          *v9 = *v8;
          *v8 = v60;
        }

        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == v7)
      {
        return;
      }

      v78 = v11 >> 1;
      v79 = v11 >> 1;
      do
      {
        v80 = v79;
        if (v78 >= v79)
        {
          v81 = (2 * v79) | 1;
          v82 = &v9[v81];
          if (2 * v79 + 2 < v10)
          {
            v83 = (*(**v82 + 24))();
            if (v83 < (*(*v82[1] + 24))(v82[1]))
            {
              ++v82;
              v81 = 2 * v80 + 2;
            }
          }

          v84 = &v9[v80];
          v85 = (*(**v82 + 24))();
          if (v85 >= (*(**v84 + 24))())
          {
            v86 = *v84;
            *v84 = 0;
            do
            {
              v87 = v82;
              v88 = *v82;
              *v82 = 0;
              v89 = *v84;
              *v84 = v88;
              if (v89)
              {
                v90 = atomic_load(v89 + 2);
                if (v90 == 1)
                {
                  (*(*v89 + 248))(v89);
                }

                else
                {
                  atomic_fetch_add(v89 + 2, 0xFFFFFFFF);
                }
              }

              if (v78 < v81)
              {
                break;
              }

              v91 = 2 * v81;
              v81 = (2 * v81) | 1;
              v82 = &v9[v81];
              v92 = v91 + 2;
              if (v91 + 2 < v10)
              {
                v93 = (*(**v82 + 24))();
                if (v93 < (*(*v82[1] + 24))(v82[1]))
                {
                  ++v82;
                  v81 = v92;
                }
              }

              v94 = (*(**v82 + 24))();
              v84 = v87;
            }

            while (v94 >= (*(*v86 + 24))(v86));
            v95 = *v87;
            *v87 = v86;
            if (v95)
            {
              v96 = atomic_load(v95 + 2);
              if (v96 == 1)
              {
                (*(*v95 + 248))(v95);
              }

              else
              {
                atomic_fetch_add(v95 + 2, 0xFFFFFFFF);
              }
            }
          }
        }

        v79 = v80 - 1;
      }

      while (v80);
      while (1)
      {
        v97 = 0;
        v98 = *a1;
        *a1 = 0;
        v99 = a1;
        do
        {
          v100 = v99;
          v101 = &v99[v97];
          v99 = v101 + 1;
          v102 = 2 * v97;
          v97 = (2 * v97) | 1;
          v103 = v102 + 2;
          if (v102 + 2 < v10)
          {
            v104 = (*(*v101[1] + 24))(v101[1]);
            v106 = v101[2];
            v105 = v101 + 2;
            if (v104 < (*(*v106 + 24))(v106))
            {
              v99 = v105;
              v97 = v103;
            }
          }

          v107 = *v99;
          *v99 = 0;
          v108 = *v100;
          *v100 = v107;
          if (v108)
          {
            v109 = atomic_load(v108 + 2);
            if (v109 == 1)
            {
              (*(*v108 + 248))(v108);
            }

            else
            {
              atomic_fetch_add(v108 + 2, 0xFFFFFFFF);
            }
          }
        }

        while (v97 <= ((v10 - 2) >> 1));
        v110 = a2 - 1;
        v62 = v99 == --a2;
        if (!v62)
        {
          break;
        }

        v114 = *v99;
        *v99 = v98;
        if (v114)
        {
LABEL_160:
          v129 = atomic_load(v114 + 2);
          if (v129 == 1)
          {
            (*(*v114 + 248))(v114);
          }

          else
          {
            atomic_fetch_add(v114 + 2, 0xFFFFFFFF);
          }
        }

LABEL_163:
        v118 = v10-- <= 2;
        if (v118)
        {
          return;
        }
      }

      v111 = *v110;
      *v110 = 0;
      v112 = *v99;
      *v99 = v111;
      if (v112)
      {
        v113 = atomic_load(v112 + 2);
        if (v113 == 1)
        {
          (*(*v112 + 248))(v112);
        }

        else
        {
          atomic_fetch_add(v112 + 2, 0xFFFFFFFF);
        }
      }

      v115 = *v110;
      *v110 = v98;
      if (v115)
      {
        v116 = atomic_load(v115 + 2);
        if (v116 == 1)
        {
          (*(*v115 + 248))(v115);
        }

        else
        {
          atomic_fetch_add(v115 + 2, 0xFFFFFFFF);
        }
      }

      v117 = v99 + 1 - a1;
      v118 = v117 < 2;
      v119 = v117 - 2;
      if (v118)
      {
        goto LABEL_163;
      }

      v120 = v119 >> 1;
      v121 = &a1[v119 >> 1];
      v122 = (*(**v121 + 24))();
      if (v122 >= (*(**v99 + 24))())
      {
        goto LABEL_163;
      }

      v123 = *v99;
      *v99 = 0;
      while (1)
      {
        v124 = v121;
        v125 = *v121;
        *v121 = 0;
        v126 = *v99;
        *v99 = v125;
        if (v126)
        {
          v127 = atomic_load(v126 + 2);
          if (v127 != 1)
          {
            atomic_fetch_add(v126 + 2, 0xFFFFFFFF);
            if (!v120)
            {
              goto LABEL_159;
            }

            goto LABEL_158;
          }

          (*(*v126 + 248))(v126);
        }

        if (!v120)
        {
          goto LABEL_159;
        }

LABEL_158:
        v120 = (v120 - 1) >> 1;
        v121 = &a1[v120];
        v128 = (*(**v121 + 24))();
        v99 = v124;
        if (v128 >= (*(*v123 + 24))(v123))
        {
LABEL_159:
          v114 = *v124;
          *v124 = v123;
          if (v114)
          {
            goto LABEL_160;
          }

          goto LABEL_163;
        }
      }
    }

    v12 = v10 >> 1;
    v13 = &v9[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(&a1[v10 >> 1], a1, v8);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, &a1[v10 >> 1], v8);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1 + 1, v13 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1 + 2, &a1[v12 + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v13 - 1, &a1[v10 >> 1], &a1[v12 + 1]);
      v14 = *a1;
      *a1 = *v13;
      *v13 = v14;
    }

    --a3;
    if ((a4 & 1) != 0 || (v15 = (*(**(a1 - 1) + 24))(*(a1 - 1)), v15 < (*(**a1 + 24))()))
    {
      v16 = *a1;
      *a1 = 0;
      v17 = a1;
      do
      {
        v18 = v17;
        v19 = v17[1];
        ++v17;
        v20 = (*(*v19 + 24))(v19);
      }

      while (v20 < (*(*v16 + 24))(v16));
      if (v18 == a1)
      {
        v7 = a2;
        do
        {
          if (v17 >= v7)
          {
            break;
          }

          v23 = *--v7;
          v24 = (*(*v23 + 24))(v23);
        }

        while (v24 >= (*(*v16 + 24))(v16));
      }

      else
      {
        do
        {
          v21 = *--v7;
          v22 = (*(*v21 + 24))(v21);
        }

        while (v22 >= (*(*v16 + 24))(v16));
      }

      if (v17 < v7)
      {
        v25 = v17;
        v26 = v7;
        do
        {
          v27 = *v25;
          *v25 = *v26;
          *v26 = v27;
          do
          {
            v18 = v25;
            v28 = v25[1];
            ++v25;
            v29 = (*(*v28 + 24))(v28);
          }

          while (v29 < (*(*v16 + 24))(v16));
          do
          {
            v30 = *--v26;
            v31 = (*(*v30 + 24))(v30);
          }

          while (v31 >= (*(*v16 + 24))(v16));
        }

        while (v25 < v26);
      }

      if (v18 != a1)
      {
        v32 = *v18;
        *v18 = 0;
        v33 = *a1;
        *a1 = v32;
        if (v33)
        {
          v34 = atomic_load(v33 + 2);
          if (v34 == 1)
          {
            (*(*v33 + 248))(v33);
          }

          else
          {
            atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
          }
        }
      }

      v35 = *v18;
      *v18 = v16;
      if (v35)
      {
        v36 = atomic_load(v35 + 2);
        if (v36 == 1)
        {
          (*(*v35 + 248))(v35);
        }

        else
        {
          atomic_fetch_add(v35 + 2, 0xFFFFFFFF);
        }
      }

      v37 = v17 >= v7;
      v7 = a2;
      if (v37)
      {
        v38 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *>(a1, v18);
        v9 = v18 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *>(v18 + 1, a2))
        {
          a2 = v18;
          if (v38)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v38)
        {
          goto LABEL_43;
        }
      }

      else
      {
LABEL_43:
        std::__introsort<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(a1, v18, a3, a4 & 1);
        a4 = 0;
        v9 = v18 + 1;
      }
    }

    else
    {
      v39 = *a1;
      *a1 = 0;
      v40 = (*(*v39 + 24))(v39);
      if (v40 >= (*(**v8 + 24))())
      {
        v43 = a1 + 1;
        do
        {
          v9 = v43;
          if (v43 >= v7)
          {
            break;
          }

          v44 = (*(*v39 + 24))(v39);
          ++v43;
        }

        while (v44 >= (*(**v9 + 24))());
      }

      else
      {
        v9 = a1;
        do
        {
          v41 = (*(*v39 + 24))(v39);
          v42 = v9[1];
          ++v9;
        }

        while (v41 >= (*(*v42 + 24))(v42));
      }

      v45 = v7;
      if (v9 < v7)
      {
        v45 = v7;
        do
        {
          v46 = (*(*v39 + 24))(v39);
          v47 = *--v45;
        }

        while (v46 < (*(*v47 + 24))(v47));
      }

      while (v9 < v45)
      {
        v48 = *v9;
        *v9 = *v45;
        *v45 = v48;
        do
        {
          v49 = (*(*v39 + 24))(v39);
          v50 = v9[1];
          ++v9;
        }

        while (v49 >= (*(*v50 + 24))(v50));
        do
        {
          v51 = (*(*v39 + 24))(v39);
          v52 = *--v45;
        }

        while (v51 < (*(*v52 + 24))(v52));
      }

      v53 = v9 - 1;
      if (v9 - 1 != a1)
      {
        v54 = *v53;
        *v53 = 0;
        v55 = *a1;
        *a1 = v54;
        if (v55)
        {
          v56 = atomic_load(v55 + 2);
          if (v56 == 1)
          {
            (*(*v55 + 248))(v55);
          }

          else
          {
            atomic_fetch_add(v55 + 2, 0xFFFFFFFF);
          }
        }
      }

      a4 = 0;
      v57 = *v53;
      *v53 = v39;
      if (v57)
      {
        v58 = atomic_load(v57 + 2);
        if (v58 == 1)
        {
          (*(*v57 + 248))(v57);
          a4 = 0;
        }

        else
        {
          a4 = 0;
          atomic_fetch_add(v57 + 2, 0xFFFFFFFF);
        }
      }
    }
  }

  v61 = v9 + 1;
  v62 = v9 == v7 || v61 == v7;
  v63 = v62;
  if ((a4 & 1) == 0)
  {
    if ((v63 & 1) == 0)
    {
      do
      {
        v130 = a1;
        a1 = v61;
        v131 = (*(*v130[1] + 24))(v130[1]);
        if (v131 < (*(**v130 + 24))())
        {
          v132 = 0;
          v133 = *a1;
          *a1 = 0;
          v134 = a1;
          do
          {
            v135 = *(v134 - 1);
            *(v134 - 1) = 0;
            *v134 = v135;
            if (v132)
            {
              v136 = atomic_load(v132 + 2);
              if (v136 == 1)
              {
                (*(*v132 + 248))(v132);
              }

              else
              {
                atomic_fetch_add(v132 + 2, 0xFFFFFFFF);
              }
            }

            v137 = (*(*v133 + 24))(v133);
            v138 = (*(**(v134 - 2) + 24))(*(v134 - 2));
            v139 = *--v134;
            v132 = v139;
          }

          while (v137 < v138);
          *v134 = v133;
          if (v132)
          {
            v140 = atomic_load(v132 + 2);
            if (v140 == 1)
            {
              (*(*v132 + 248))(v132);
            }

            else
            {
              atomic_fetch_add(v132 + 2, 0xFFFFFFFF);
            }
          }
        }

        v61 = a1 + 1;
      }

      while (a1 + 1 != a2);
    }

    return;
  }

  if (v63)
  {
    return;
  }

  v64 = 0;
  v65 = v9;
  while (2)
  {
    v66 = v65;
    v65 = v61;
    v67 = (*(*v66[1] + 24))(v66[1]);
    if (v67 >= (*(**v66 + 24))())
    {
      goto LABEL_105;
    }

    v68 = 0;
    v69 = *v65;
    *v65 = 0;
    v70 = v64;
    while (2)
    {
      v71 = (a1 + v70);
      v72 = *(a1 + v70);
      *v71 = 0;
      v71[1] = v72;
      if (!v68)
      {
LABEL_95:
        if (!v70)
        {
          break;
        }

        goto LABEL_98;
      }

      v73 = atomic_load(v68 + 2);
      if (v73 == 1)
      {
        (*(*v68 + 248))(v68);
        goto LABEL_95;
      }

      atomic_fetch_add(v68 + 2, 0xFFFFFFFF);
      if (v70)
      {
LABEL_98:
        v74 = (a1 + v70);
        v75 = (*(*v69 + 24))(v69);
        if (v75 >= (*(**(v74 - 1) + 24))(*(v74 - 1)))
        {
          goto LABEL_101;
        }

        v68 = *v71;
        v70 -= 8;
        continue;
      }

      break;
    }

    v74 = a1;
LABEL_101:
    v76 = *v74;
    *v74 = v69;
    if (v76)
    {
      v77 = atomic_load(v76 + 2);
      if (v77 == 1)
      {
        (*(*v76 + 248))(v76);
      }

      else
      {
        atomic_fetch_add(v76 + 2, 0xFFFFFFFF);
      }
    }

LABEL_105:
    v61 = v65 + 1;
    v64 += 8;
    if (v65 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

void TI::CP::SearchNodeLanguageExtensions::compute_bound_on_score(TI::CP::SearchNodeLanguageExtensions *this)
{
  if (*(this + 80))
  {
    v2 = *(this + 7);
    if (!v2)
    {
      v7 = -INFINITY;
      goto LABEL_6;
    }

    v3 = *(this + 11);
    v4 = *(this + 3);
    v5 = *(*(this + 8) + 8 * v2 - 8);
    (*(*v5 + 24))(v5);
  }

  else
  {
    v3 = *(this + 11);
    v4 = *(this + 3);
    v6 = 1.0 - (*(**(*(this + 4) + 64) + 80))(*(*(this + 4) + 64));
  }

  v7 = v3 + *(v4 + 440) * logf(v6);
LABEL_6:
  *(this + 12) = v7;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(**a2 + 24))();
  v7 = (*(**a1 + 24))();
  v8 = (*(**a3 + 24))();
  (*(**a2 + 24))();
  if (v6 >= v7)
  {
    if (v8 < v9)
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      v12 = (*(**a2 + 24))();
      if (v12 < (*(**a1 + 24))())
      {
        v13 = *a1;
        *a1 = *a2;
        *a2 = v13;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v8 >= v9)
    {
      *a1 = *a2;
      *a2 = v10;
      v14 = (*(**a3 + 24))();
      if (v14 >= (*(**a2 + 24))())
      {
        return;
      }

      v10 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v10;
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, a2, a3);
  v8 = (*(**a4 + 24))();
  if (v8 < (*(**a3 + 24))())
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    v10 = (*(**a3 + 24))();
    if (v10 < (*(**a2 + 24))())
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      v12 = (*(**a2 + 24))();
      if (v12 < (*(**a1 + 24))())
      {
        v13 = *a1;
        *a1 = *a2;
        *a2 = v13;
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, a2, a3, a4);
  v10 = (*(**a5 + 24))();
  if (v10 < (*(**a4 + 24))())
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = (*(**a4 + 24))();
    if (v12 < (*(**a3 + 24))())
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      v14 = (*(**a3 + 24))();
      if (v14 < (*(**a2 + 24))())
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
        v16 = (*(**a2 + 24))();
        if (v16 < (*(**a1 + 24))())
        {
          v17 = *a1;
          *a1 = *a2;
          *a2 = v17;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (*(**(a2 - 1) + 24))(*(a2 - 1));
        if (v5 < (*(**a1 + 24))())
        {
          v6 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v7 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, a1 + 1, a1 + 2);
  v8 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = (*(**v8 + 24))();
    if (v11 < (*(**v7 + 24))())
    {
      v12 = 0;
      v13 = *v8;
      *v8 = 0;
      for (i = v9; ; i -= 8)
      {
        v15 = a1 + i;
        v16 = *(a1 + i + 16);
        *(v15 + 2) = 0;
        *(v15 + 3) = v16;
        if (v12)
        {
          v17 = atomic_load(v12 + 2);
          if (v17 == 1)
          {
            (*(*v12 + 248))(v12);
          }

          else
          {
            atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
          }
        }

        if (i == -16)
        {
          v20 = a1;
          goto LABEL_24;
        }

        v18 = a1 + i;
        v19 = (*(*v13 + 24))(v13);
        if (v19 >= (*(**(v18 + 1) + 24))(*(v18 + 1)))
        {
          break;
        }

        v12 = *(v15 + 2);
      }

      v20 = (v18 + 16);
LABEL_24:
      v21 = *v20;
      *v20 = v13;
      if (v21)
      {
        v22 = atomic_load(v21 + 2);
        if (v22 == 1)
        {
          (*(*v21 + 248))(v21);
        }

        else
        {
          atomic_fetch_add(v21 + 2, 0xFFFFFFFF);
        }
      }

      if (++v10 == 8)
      {
        return v8 + 1 == a2;
      }
    }

    v7 = v8;
    v9 += 8;
    if (++v8 == a2)
    {
      return 1;
    }
  }
}

unsigned int *WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct(unsigned int *result, unsigned int **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      if (*v3)
      {
        v4 = atomic_load(result + 2);
        if (v4 == 1)
        {
          result = (*(*result + 248))(result);
        }

        else
        {
          atomic_fetch_add(result + 2, 0xFFFFFFFF);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

void WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::shrinkCapacity(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (*a1)
    {
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct(*(a1 + 8), (*(a1 + 8) + 8 * *a1));
      *a1 = 0;
    }

    v2 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;

    free(v2);
  }
}

TI::CP::SearchNodeLanguageExtensions *TI::CP::SearchNodeLanguageExtensions::branch_at_current_bound@<X0>(TI::CP::SearchNodeLanguageExtensions *this@<X0>, __n128 *a2@<X8>)
{
  if (*(this + 80) == 1)
  {
    v4 = *(this + 7);
    if (v4)
    {
      v5 = *(this + 2);
      if (*(&v5 + 1))
      {
        atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
        v4 = *(this + 7);
      }

      *(*(this + 8) + 8 * v4 - 8) = 0;
      operator new();
    }
  }

  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return this;
}

double TI::CP::SearchNode::compute_score(TI::CP::SearchNode *this)
{
  v2 = *(this + 4);
  *(this + 16) = *(v2 + 128);
  *(this + 7) = *(v2 + 112);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2TI2CP10SearchNode13compute_scoreEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_48;
  v4[4] = this;
  (*(*this + 176))(this, v4);
  *(this + 80) = (*(*this + 168))(this);
  result = *(this + 15) + *(this + 14) + *(this + 16);
  *(this + 9) = result;
  return result;
}

double ___ZN2TI2CP10SearchNode13compute_scoreEv_block_invoke(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a2 <= 8)
  {
    v7 = qword_22CC89ED8[a2];
    v8 = *(a1 + 32);
    result = *(v8 + v7) + a7;
    *(v8 + v7) = result;
  }

  return result;
}

uint64_t TI::CP::SearchNodeKeySubstitution::enumerate_local_score_components(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = (*(*(a1 + 24) + 56) + 48 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  v9 = *(a1 + 32);
  v10 = MEMORY[0x277CBF348];
  if (v8)
  {
    v11 = 0;
    v12 = MEMORY[0x277CBF348];
  }

  else
  {
    v11 = v9[12];
    v12 = (*(*(a1 + 24) + 56) + 48 * v11);
  }

  v14 = *v12;
  v13 = v12[1];
  if (((*(*v9 + 72))(v9) & 1) == 0)
  {
    v15 = TI::CP::Search::path_deviation_cost(*(a1 + 24), v11, v4, 0);
    (*(a2 + 16))(a2, 1, v11, v4, v14, v13, v6, v7, v15);
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = *(*(*(*v16 + 16))(v16) + 56);
    v18 = *v10;
    v19 = v10[1];
    v20 = *(a1 + 24);
    v21 = (*(**(a1 + 64) + 24))(*(a1 + 64));
    v22 = logf(v21);
    (*(a2 + 16))(a2, 8, v4, v17, v6, v7, v18, v19, *(v20 + 440) * v22);
  }

  v23 = *v10;
  v24 = *(v10 + 1);
  v25.n128_u64[0] = TI::CP::Search::key_substitution_cost(*(a1 + 24), v4);
  v26 = *(a2 + 16);
  v27.n128_f64[0] = v6;
  v28.n128_f64[0] = v7;
  v29.n128_f64[0] = v23;
  v30.n128_u64[0] = v24;

  return v26(a2, 5, v4, 0, v27, v28, v29, v30, v25);
}

float TI::CP::SearchNode::ideal_path_length(TI::CP::SearchNode *this)
{
  v2 = 0.0;
  if (((*(*this + 72))(this) & 1) == 0 && ((*(**(this + 4) + 72))(*(this + 4)) & 1) == 0)
  {
    v3 = *(this + 4);
    v4 = *(*(this + 3) + 56);
    v5 = (v4 + 48 * v3[12]);
    v6 = *v5;
    v7 = v5[1];
    v8 = (v4 + 48 * *(this + 12));
    v9 = *v8;
    v10 = v8[1];
    v11 = (*(*v3 + 160))(v3);
    return hypot(v9 - v6, v10 - v7) + v11;
  }

  return v2;
}

uint64_t TI::CP::SearchNode::description@<X0>(TI::CP::SearchNode *this@<X0>, void *a2@<X8>)
{
  v57[19] = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v39);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, "<[", 2);
  (*(**(this + 8) + 224))(&v50);
  v4 = v51;
  if (!v51)
  {
    v4 = &v52;
  }

  if (v50)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, v5, v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "]", 1);
  if (v51 && BYTE6(v50) == 1)
  {
    free(v51);
  }

  v8 = (*(*this + 72))(this);
  v9 = MEMORY[0x277D82818];
  if (v8)
  {
    v10 = *MEMORY[0x277D82818];
    v12 = *(MEMORY[0x277D82818] + 64);
    v11 = *(MEMORY[0x277D82818] + 72);
    goto LABEL_56;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, " n=", 3);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v10 = *v9;
  v12 = *(v9 + 64);
  v11 = *(v9 + 72);
  v13 = this;
  while (((*(*v13 + 72))(v13) & 1) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v50);
    if (((*(*v13 + 104))(v13) & 1) == 0 && !(*(*v13 + 112))(v13))
    {
      if ((*(*v13 + 96))(v13))
      {
        v14 = MEMORY[0x2318BE0B0](&v52, v13[12]);
        v15 = "°";
        goto LABEL_18;
      }

      if (((*(*v13 + 80))(v13) & 1) != 0 || (*(*v13 + 88))(v13))
      {
        v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, "(", 1);
        v14 = MEMORY[0x2318BE0B0](v17, v13[12]);
        v15 = ")";
        goto LABEL_22;
      }

      if ((*(*v13 + 128))(v13))
      {
        v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, "(", 1);
        v14 = MEMORY[0x2318BE0B0](v18, v13[12]);
        v15 = "$)";
LABEL_18:
        v16 = 2;
      }

      else
      {
        if ((*(*v13 + 120))(v13))
        {
          v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, "{", 1);
          v20 = MEMORY[0x2318BE0B0](v19, v13[36]);
          v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ",", 1);
          v14 = MEMORY[0x2318BE0B0](v21, v13[12]);
          v15 = "}";
        }

        else
        {
          if (!(*(*v13 + 136))(v13))
          {
            goto LABEL_24;
          }

          v14 = &v52;
          v15 = "+";
        }

LABEL_22:
        v16 = 1;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, v15, v16);
      goto LABEL_24;
    }

    MEMORY[0x2318BE0B0](&v52, v13[12]);
LABEL_24:
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](__p, &v50);
    std::vector<std::string>::push_back[abi:nn200100](&v47, __p);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = *(v13 + 4);
    v50 = v10;
    *(&v50 + *(v10 - 3)) = v12;
    v52 = v11;
    v53 = MEMORY[0x277D82878] + 16;
    if (v56 < 0)
    {
      operator delete(v55);
    }

    v53 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v54);
    std::iostream::~basic_iostream();
    MEMORY[0x2318BE200](v57);
    if (!v13)
    {
      break;
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v50);
  v22 = v48;
  while (v22 != v47)
  {
    if (v22 != v48)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, ",", 1);
    }

    v24 = *(v22 - 24);
    v22 -= 24;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v52, v26, v27);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](__p, &v50);
  v50 = v10;
  *(&v50 + *(v10 - 3)) = v12;
  v52 = v11;
  v53 = MEMORY[0x277D82878] + 16;
  if (v56 < 0)
  {
    operator delete(v55);
  }

  v53 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  MEMORY[0x2318BE200](v57);
  v50 = &v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v50);
  if ((v46 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v29 = v46;
  }

  else
  {
    v29 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, v28, v29);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_56:
  v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, " s=", 3);
  v31 = MEMORY[0x2318BE090](v30, *(this + 9));
  v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, " pd=", 4);
  v33 = MEMORY[0x2318BE090](v32, *(this + 15));
  v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, " kd=", 4);
  v35 = MEMORY[0x2318BE090](v34, *(this + 14));
  v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " l=", 3);
  v37 = MEMORY[0x2318BE090](v36, *(this + 16));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ">", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v39);
  v39[0] = v10;
  *(v39 + *(v10 - 3)) = v12;
  v40 = v11;
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v44);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 24);
  v9 = *(MEMORY[0x277D82818] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x2318BE1C0](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2318BE050](v19, a1);
  if (v19[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = a2 + a3;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v10;
      if (!v7)
      {
LABEL_28:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_28;
    }

    v12 = *(v6 + 3);
    v13 = v12 <= a3;
    v14 = v12 - a3;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
    {
      goto LABEL_28;
    }

    if (v15 >= 1)
    {
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v21 = v15;
      memset(&__b, v10, v15);
      *(&__b.__locale_ + v15) = 0;
      if (v21 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v17 = (*(*v7 + 96))(v7, p_b, v15);
      if (v21 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v17 != v15)
      {
        goto LABEL_28;
      }
    }

    if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x2318BE060](v19);
  return a1;
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:nn200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t std::stringbuf::view[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

double TI::CP::SearchNode::bound_on_score(TI::CP::SearchNode *this)
{
  if (*(this + 81) == 1)
  {
    return *(this + 9);
  }

  else
  {
    return -INFINITY;
  }
}

double TI::CP::SearchNode::decrease_bound_on_score(TI::CP::SearchNode *this)
{
  if (!*(this + 8))
  {
    TI::CP::Search::extend_typing(*(this + 3), *(this + 4), this + 7, *(this + 12), &v7);
    v3 = v7;
    v7 = 0;
    v4 = *(this + 8);
    *(this + 8) = v3;
    if (v4)
    {
      v5 = atomic_load(v4 + 2);
      if (v5 == 1)
      {
        (*(*v4 + 248))(v4);
      }

      else
      {
        atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
      }

      if (v7)
      {
        v6 = atomic_load(v7 + 2);
        if (v6 == 1)
        {
          (*(*v7 + 248))();
        }

        else
        {
          atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
        }
      }

      v3 = *(this + 8);
    }

    if (v3)
    {

      return TI::CP::SearchNode::compute_score(this);
    }

    else
    {
      *(this + 81) = 0;
    }
  }

  return result;
}

std::__shared_weak_count *TI::CP::SearchNode::node_at_current_bound@<X0>(std::__shared_weak_count *this@<X0>, uint64_t a2@<X8>)
{
  if (__PAIR64__(BYTE1(this[3].__shared_owners_), LOBYTE(this[3].__shared_owners_)) == 0x100000001)
  {
    BYTE1(this[3].__shared_owners_) = 0;
    if (this->__shared_weak_owners_ && (shared_owners = this->__shared_owners_, (this = std::__shared_weak_count::lock(this->__shared_weak_owners_)) != 0))
    {
      *&v4 = shared_owners;
      *(&v4 + 1) = this;
      *a2 = v4;
    }

    else
    {
      std::__throw_bad_weak_ptr[abi:nn200100]();
      return TI::CP::SearchNodeKeySubstitution::class_name(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return this;
}

uint64_t TI::CP::SearchNodeKeySubstitution::source_debug_data@<X0>(TI::CP::SearchNodeKeySubstitution *this@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, " key=", 5);
  v4 = *(*(**(this + 8) + 16))(*(this + 8));
  v16 = 0x100000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  TI::Favonius::Key::append_debug_data(v4, &v16);
  v5 = v19;
  if (!v19)
  {
    v5 = &v20;
  }

  if (v16)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, v6, v7);
  if (v19 && v18 == 1)
  {
    free(v19);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v10);
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v15);
}

void TI::CP::SearchNodeKeySubstitution::~SearchNodeKeySubstitution(TI::CP::SearchNodeKeySubstitution *this)
{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

uint64_t WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(uint64_t a1)
{
  if (*a1)
  {
    WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct(*(a1 + 8), (*(a1 + 8) + 8 * *a1));
    *a1 = 0;
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  free(v2);
  return a1;
}

void TI::CP::SearchNodeSource::~SearchNodeSource(TI::CP::SearchNodeSource *this)
{
  *this = &unk_283FDA470;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeKeySubstitution>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDA4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::CP::SearchNodeLanguageExtensions::source_debug_data@<X0>(TI::CP::SearchNodeLanguageExtensions *this@<X0>, void *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, " stack=", 7);
  if (*(this + 14))
  {
    for (i = 8 * *(this + 14) - 8; ; i -= 8)
    {
      v5 = *(*(**(*(this + 8) + i) + 16))(*(*(this + 8) + i));
      v17 = 0x100000;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      TI::Favonius::Key::append_debug_data(v5, &v17);
      v6 = v20;
      if (!v20)
      {
        v6 = &v21;
      }

      if (v17)
      {
        v7 = v6;
      }

      else
      {
        v7 = "";
      }

      v8 = strlen(v7);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, v7, v8);
      if (v20 && v19 == 1)
      {
        free(v20);
      }

      if (!i)
      {
        break;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, ",", 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v11);
  v11[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v9;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v16);
}

void TI::CP::SearchNodeLanguageExtensions::~SearchNodeLanguageExtensions(TI::CP::SearchNodeLanguageExtensions *this)
{
  *this = &unk_283FD9BB8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 56);
  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD9BB8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 56);

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

TI::CP::SearchNodeGeometryExtensions *TI::CP::SearchNodeGeometryExtensions::branch_at_current_bound@<X0>(TI::CP::SearchNodeGeometryExtensions *this@<X0>, __n128 *a2@<X8>)
{
  v3 = *(this + 3);
  v4 = *(this + 12);
  v5 = *(this + 13);
  v6 = *(*(v3 + 376) + 24 * v4);
  if (v5 < (*(*(v3 + 376) + 24 * v4 + 8) - v6) >> 3)
  {
    v7 = *(this + 5);
    *&v11 = *(this + 4);
    *(&v11 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v5 = *(this + 13);
      v6 = *(*(*(this + 3) + 376) + 24 * *(this + 12));
      v4 = *(this + 12);
    }

    v8 = *(v6 + 8 * v5);
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }

    v9 = 0;
    v14 = v3;
    v13 = v4;
    std::allocate_shared[abi:nn200100]<TI::CP::SearchNodeKeyMatch,std::allocator<TI::CP::SearchNodeKeyMatch>,TI::CP::Search const*&,std::shared_ptr<TI::CP::SearchNode const>,unsigned int &,WTF::PassRefPtr<TI::Favonius::LayoutKey> &,WTF::PassRefPtr<TI::Favonius::TypingHypothesis> &,0>(&v12, &v14, &v11, &v13, &v10, &v9);
  }

  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return this;
}

uint64_t TI::CP::SearchNodeGeometryExtensions::skip_keys_equal_to_parent_key(TI::CP::SearchNodeGeometryExtensions *this)
{
  result = (*(**(this + 4) + 104))(*(this + 4));
  if (result)
  {
    v3 = *(this + 13);
    v4 = *(*(*(this + 3) + 376) + 24 * *(this + 12));
    v5 = (*(*(*(this + 3) + 376) + 24 * *(this + 12) + 8) - v4) >> 3;
    while (v5 > v3 && *(v4 + 8 * v3) == *(*(this + 4) + 56))
    {
      *(this + 13) = ++v3;
    }
  }

  return result;
}

void TI::CP::SearchNodeGeometryExtensions::compute_bound_on_score(TI::CP::SearchNodeGeometryExtensions *this)
{
  v2 = *(this + 3);
  v3 = *(this + 12);
  v4 = *(this + 13);
  v5 = *(*(v2 + 376) + 24 * v3);
  if (v4 >= (*(*(v2 + 376) + 24 * v3 + 8) - v5) >> 3)
  {
    v7 = -INFINITY;
  }

  else
  {
    v6 = *(this + 7);
    v7 = v6 + TI::CP::Search::key_deviation_cost(v2, v3, *(v5 + 8 * v4));
  }

  *(this + 8) = v7;
}

uint64_t TI::CP::SearchNodeKeyMatch::enumerate_local_score_components(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = (*(*(a1 + 24) + 56) + 48 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  v9 = *(a1 + 32);
  v10 = MEMORY[0x277CBF348];
  if (v8)
  {
    v11 = 0;
    v12 = MEMORY[0x277CBF348];
  }

  else
  {
    v11 = v9[12];
    v12 = (*(*(a1 + 24) + 56) + 48 * v11);
  }

  v14 = *v12;
  v13 = v12[1];
  if (((*(*v9 + 72))(v9) & 1) == 0)
  {
    v15 = TI::CP::Search::path_deviation_cost(*(a1 + 24), v11, v4, 0);
    (*(a2 + 16))(a2, 1, v11, v4, v14, v13, v6, v7, v15);
  }

  result = *(a1 + 64);
  if (result)
  {
    v17 = *(*(*(*result + 16))(result) + 56);
    v18 = *v10;
    v19 = v10[1];
    v20 = *(a1 + 24);
    v21 = (*(**(a1 + 64) + 24))(*(a1 + 64));
    v22 = logf(v21);
    result = (*(a2 + 16))(a2, 8, v4, v17, v6, v7, v18, v19, *(v20 + 440) * v22);
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    v24 = *(a1 + 32);
    if (!v24 || (result = (*(*v24 + 104))(v24), v23 = *(a1 + 56), !result) || (v25 = *(a1 + 32), v23 != *(v25 + 56)) || *(a1 + 48) != *(v25 + 48))
    {
      v26 = *(v23 + 96);
      v27 = *(v23 + 104);
      v28.n128_u64[0] = TI::CP::Search::key_deviation_cost(*(a1 + 24), v4, v23);
      v29 = *(a2 + 16);
      v30.n128_f64[0] = v6;
      v31.n128_f64[0] = v7;
      v32.n128_u64[0] = v26;
      v33.n128_u64[0] = v27;

      return v29(a2, 0, v4, 0, v30, v31, v32, v33, v28);
    }
  }

  return result;
}

uint64_t TI::CP::SearchNodeKeyMatch::source_debug_data@<X0>(TI::CP::SearchNodeKeyMatch *this@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v10);
  if (*(this + 7))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, " key=", 5);
    v4 = *(this + 7);
    v16 = 0x100000;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    TI::Favonius::Key::append_debug_data(v4, &v16);
    v5 = v19;
    if (!v19)
    {
      v5 = &v20;
    }

    if (v16)
    {
      v6 = v5;
    }

    else
    {
      v6 = "";
    }

    v7 = strlen(v6);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, v6, v7);
    if (v19 && v18 == 1)
    {
      free(v19);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v10);
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v15);
}

void TI::CP::SearchNodeKeyMatch::~SearchNodeKeyMatch(TI::CP::SearchNodeKeyMatch *this)
{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeKeyMatch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDE50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::CP::SearchNodeGeometryExtensions::source_debug_data@<X0>(TI::CP::SearchNodeGeometryExtensions *this@<X0>, void *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, " stack=", 7);
  for (i = *(this + 13); ; i = v5 + 1)
  {
    v5 = i;
    v6 = *(*(*(this + 3) + 376) + 24 * *(this + 12));
    if (v5 >= (*(*(*(this + 3) + 376) + 24 * *(this + 12) + 8) - v6) >> 3)
    {
      break;
    }

    v7 = *(v6 + 8 * v5);
    v19 = 0x100000;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    TI::Favonius::Key::append_debug_data(v7, &v19);
    v8 = v22;
    if (!v22)
    {
      v8 = &v23;
    }

    if (v19)
    {
      v9 = v8;
    }

    else
    {
      v9 = "";
    }

    v10 = strlen(v9);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, v9, v10);
    if (v22 && v21 == 1)
    {
      free(v22);
    }

    if (((*(*(*(this + 3) + 376) + 24 * *(this + 12) + 8) - *(*(*(this + 3) + 376) + 24 * *(this + 12))) >> 3) - 1 > v5)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, ",", 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v13);
  v13[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v11;
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v18);
}

void TI::CP::SearchNodeGeometryExtensions::~SearchNodeGeometryExtensions(TI::CP::SearchNodeGeometryExtensions *this)
{
  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

void TI::CP::SearchNodeTranspositionExtensions::decrease_bound_on_score(unsigned int *this)
{
  v1 = (this + 20);
  if (*(this + 10))
  {
    v3 = *(this + 11);
    if (v3)
    {
      if ((this[24] & 1) == 0)
      {
        (*(*v3 + 48))(v3, this + 14, v1);
        v5 = *(this + 7);
        v4 = *(this + 8);
        v12 = &__block_literal_global_5463;
        v6 = 126 - 2 * __clz(v5);
        if (v5)
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,false>(v4, (v4 + 8 * v5), &v12, v7, 1);
        *(this + 96) = 1;
      }
    }

    else
    {
      TI::CP::Search::extend_typing(*(this + 3), *(this + 4), v1, this[12], &v12);
      v8 = v12;
      v12 = 0;
      v9 = *(this + 11);
      *(this + 11) = v8;
      if (v9)
      {
        v10 = atomic_load(v9 + 2);
        if (v10 == 1)
        {
          (*(*v9 + 248))(v9);
        }

        else
        {
          atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
        }

        if (v12)
        {
          v11 = atomic_load(v12 + 2);
          if (v11 == 1)
          {
            (*(*v12 + 248))();
          }

          else
          {
            atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
          }
        }

        v8 = *(this + 11);
      }

      if (!v8)
      {
        *(this + 13) = 0xFFF0000000000000;
        return;
      }
    }

    TI::CP::SearchNodeTranspositionExtensions::compute_bound_on_score(this);
  }
}

void TI::CP::SearchNodeTranspositionExtensions::compute_bound_on_score(TI::CP::SearchNodeTranspositionExtensions *this)
{
  v3 = this + 24;
  v2 = *(this + 3);
  *(this + 13) = *(*(v3 + 1) + 72) - *(v2 + 560) * *(v2 + 432);
  v4 = *(this + 10);
  if (v4)
  {
    *(this + 13) = TI::CP::Search::key_deviation_cost(v2, *(this + 12), v4) + *(this + 13);
    v5 = *(this + 11);
    if (!v5)
    {
      return;
    }

    v6 = *(this + 3);
    v7 = (*(*v5 + 24))(v5);
    *(this + 13) = *(v6 + 440) * logf(v7) + *(this + 13);
    if (*(this + 96) != 1)
    {
      v9 = *(this + 3);
      v11 = 1.0 - (*(**(this + 11) + 80))(*(this + 11));
      goto LABEL_10;
    }

    v8 = *(this + 7);
    if (v8)
    {
      v9 = *(this + 3);
      v10 = *(*(this + 8) + 8 * v8 - 8);
      (*(*v10 + 24))(v10);
LABEL_10:
      v15 = *(v9 + 440) * logf(v11);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *(this + 12);
    v13 = *(this + 13);
    v14 = *(*(v2 + 376) + 24 * v12);
    if (v13 < (*(*(v2 + 376) + 24 * v12 + 8) - v14) >> 3)
    {
      v15 = TI::CP::Search::key_deviation_cost(v2, v12, *(v14 + 8 * v13));
LABEL_11:
      v16 = v15 + *(this + 13);
      goto LABEL_12;
    }
  }

  v16 = -INFINITY;
LABEL_12:
  *(this + 13) = v16;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,false>(uint64_t result, unsigned int **a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 1);
  v134 = a2 - 2;
  v9 = a2 - 3;
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = (a2 - v10) >> 3;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v71 = (*(*a3 + 16))();
          result = (*(*a3 + 16))();
          if ((v71 & 1) == 0)
          {
            if (!result)
            {
              return result;
            }

            v127 = *(v10 + 8);
            *(v10 + 8) = *v8;
            *v8 = v127;
LABEL_222:
            result = (*(*a3 + 16))();
            if (result)
            {
              *v10 = vextq_s8(*v10, *v10, 8uLL);
            }

            return result;
          }

          v70 = *v10;
          if (result)
          {
LABEL_124:
            *v10 = *v8;
          }

          else
          {
            *v10 = *(v10 + 8);
            *(v10 + 8) = v70;
            result = (*(*a3 + 16))();
            if (!result)
            {
              return result;
            }

            v70 = *(v10 + 8);
            *(v10 + 8) = *v8;
          }

          *v8 = v70;
          return result;
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v10, (v10 + 8), (v10 + 16), v8, a3);
        case 5:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v10, (v10 + 8), (v10 + 16), (v10 + 24), a3);
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          v69 = *(v10 + 24);
          *(v10 + 24) = *v8;
          *v8 = v69;
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          *(v10 + 16) = vextq_s8(*(v10 + 16), *(v10 + 16), 8uLL);
          result = (*(*a3 + 16))();
          if (!result)
          {
            return result;
          }

          *(v10 + 8) = vextq_s8(*(v10 + 8), *(v10 + 8), 8uLL);
          goto LABEL_222;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        v70 = *v10;
        goto LABEL_124;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v10 == a2)
      {
        return result;
      }

      v85 = v12 >> 1;
      v86 = v12 >> 1;
      do
      {
        v87 = v86;
        if (v85 >= v86)
        {
          v88 = (2 * v86) | 1;
          v89 = &v7[v88];
          if (2 * v86 + 2 < v11 && (*(*a3 + 16))())
          {
            ++v89;
            v88 = 2 * v87 + 2;
          }

          v90 = &v7[v87];
          result = (*(*a3 + 16))();
          if ((result & 1) == 0)
          {
            v91 = *v90;
            *v90 = 0;
            v141 = v91;
            do
            {
              v92 = v89;
              v93 = *v89;
              *v89 = 0;
              v94 = *v90;
              *v90 = v93;
              if (v94)
              {
                v95 = atomic_load(v94 + 2);
                if (v95 == 1)
                {
                  (*(*v94 + 248))(v94);
                }

                else
                {
                  atomic_fetch_add(v94 + 2, 0xFFFFFFFF);
                }
              }

              if (v85 < v88)
              {
                break;
              }

              v96 = (2 * v88) | 1;
              v89 = &v7[v96];
              v97 = 2 * v88 + 2;
              if (v97 < v11 && (*(*a3 + 16))())
              {
                ++v89;
                v96 = v97;
              }

              v90 = v92;
              v88 = v96;
            }

            while (!(*(*a3 + 16))());
            v98 = *v92;
            *v92 = v141;
            if (v98)
            {
              v99 = atomic_load(v98 + 2);
              if (v99 == 1)
              {
                (*(*v98 + 248))(v98);
              }

              else
              {
                atomic_fetch_add(v98 + 2, 0xFFFFFFFF);
              }
            }

            result = 0;
          }
        }

        v86 = v87 - 1;
      }

      while (v87);
      while (1)
      {
        if (v11 < 2)
        {
          goto LABEL_218;
        }

        v100 = 0;
        v136 = *v7;
        *v7 = 0;
        v101 = v7;
        do
        {
          v102 = v101;
          v103 = &v101[v100];
          v101 = v103 + 1;
          v104 = 2 * v100;
          v100 = (2 * v100) | 1;
          v105 = v104 + 2;
          if (v104 + 2 < v11)
          {
            v106 = v103 + 2;
            if ((*(*a3 + 16))())
            {
              v101 = v106;
              v100 = v105;
            }
          }

          v107 = *v101;
          *v101 = 0;
          v108 = *v102;
          *v102 = v107;
          if (v108)
          {
            v109 = atomic_load(v108 + 2);
            if (v109 == 1)
            {
              (*(*v108 + 248))(v108);
            }

            else
            {
              atomic_fetch_add(v108 + 2, 0xFFFFFFFF);
            }
          }
        }

        while (v100 <= ((v11 - 2) >> 1));
        v110 = a2 - 1;
        if (v101 == a2 - 1)
        {
          result = *v101;
          *v101 = v136;
          if (result)
          {
            v126 = atomic_load((result + 8));
            if (v126 == 1)
            {
              result = (*(*result + 248))(result);
            }

            else
            {
              atomic_fetch_add((result + 8), 0xFFFFFFFF);
            }
          }
        }

        else
        {
          v111 = *v110;
          *v110 = 0;
          v112 = *v101;
          *v101 = v111;
          if (v112)
          {
            v113 = atomic_load(v112 + 2);
            if (v113 == 1)
            {
              (*(*v112 + 248))(v112);
            }

            else
            {
              atomic_fetch_add(v112 + 2, 0xFFFFFFFF);
            }
          }

          result = *v110;
          *v110 = v136;
          if (result)
          {
            v114 = atomic_load((result + 8));
            if (v114 == 1)
            {
              result = (*(*result + 248))(result);
            }

            else
            {
              atomic_fetch_add((result + 8), 0xFFFFFFFF);
            }
          }

          v115 = ((v101 + 1) - v7) >> 3;
          v116 = v115 < 2;
          v117 = v115 - 2;
          if (!v116)
          {
            v118 = v117 >> 1;
            v119 = &v7[v117 >> 1];
            result = (*(*a3 + 16))();
            if (result)
            {
              v120 = *v101;
              *v101 = 0;
              v142 = v120;
              while (1)
              {
                v121 = v119;
                v122 = *v119;
                *v119 = 0;
                v123 = *v101;
                *v101 = v122;
                if (v123)
                {
                  v124 = atomic_load(v123 + 2);
                  if (v124 != 1)
                  {
                    atomic_fetch_add(v123 + 2, 0xFFFFFFFF);
                    if (!v118)
                    {
                      goto LABEL_210;
                    }

                    goto LABEL_209;
                  }

                  (*(*v123 + 248))(v123);
                }

                if (!v118)
                {
                  goto LABEL_210;
                }

LABEL_209:
                v118 = (v118 - 1) >> 1;
                v119 = &v7[v118];
                v101 = v121;
                if (((*(*a3 + 16))() & 1) == 0)
                {
LABEL_210:
                  result = *v121;
                  *v121 = v142;
                  if (result)
                  {
                    v125 = atomic_load((result + 8));
                    if (v125 == 1)
                    {
                      (*(*result + 248))(result);
                    }

                    else
                    {
                      atomic_fetch_add((result + 8), 0xFFFFFFFF);
                    }

                    result = 0;
                  }

                  break;
                }
              }
            }
          }
        }

LABEL_218:
        --a2;
        v116 = v11-- > 2;
        if (!v116)
        {
          return result;
        }
      }
    }

    v13 = (v10 + 8 * (v11 >> 1));
    v14 = *(*a3 + 16);
    if (v11 >= 0x81)
    {
      v15 = v14();
      v16 = (*(*a3 + 16))();
      if (v15)
      {
        v17 = *v10;
        if (v16)
        {
          *v10 = *v8;
        }

        else
        {
          *v10 = *v13;
          *v13 = v17;
          if (!(*(*a3 + 16))())
          {
            goto LABEL_28;
          }

          v17 = *v13;
          *v13 = *v8;
        }

        *v8 = v17;
      }

      else if (v16)
      {
        v21 = *v13;
        *v13 = *v8;
        *v8 = v21;
        if ((*(*a3 + 16))())
        {
          v22 = *v10;
          *v10 = *v13;
          *v13 = v22;
        }
      }

LABEL_28:
      v25 = (v13 - 1);
      v26 = (*(*a3 + 16))();
      v27 = (*(*a3 + 16))();
      if (v26)
      {
        v28 = v7[1];
        if (v27)
        {
          v29 = a2 - 2;
          v7[1] = *v134;
        }

        else
        {
          v7[1] = *v25;
          *v25 = v28;
          if (!(*(*a3 + 16))())
          {
            goto LABEL_40;
          }

          v28 = *v25;
          v29 = a2 - 2;
          *v25 = *v134;
        }

        *v29 = v28;
      }

      else if (v27)
      {
        v30 = *v25;
        *v25 = *v134;
        *v134 = v30;
        if ((*(*a3 + 16))())
        {
          v31 = v7[1];
          v7[1] = *v25;
          *v25 = v31;
        }
      }

LABEL_40:
      v32 = (*(*a3 + 16))();
      v33 = (*(*a3 + 16))();
      if (v32)
      {
        v34 = v7[2];
        if (v33)
        {
          v7[2] = *v9;
        }

        else
        {
          v7[2] = v13[1];
          v13[1] = v34;
          if (!(*(*a3 + 16))())
          {
            goto LABEL_49;
          }

          v34 = v13[1];
          v13[1] = *v9;
        }

        *v9 = v34;
      }

      else if (v33)
      {
        v35 = v13[1];
        v13[1] = *v9;
        *v9 = v35;
        if ((*(*a3 + 16))())
        {
          v36 = v7[2];
          v7[2] = v13[1];
          v13[1] = v36;
        }
      }

LABEL_49:
      v37 = (*(*a3 + 16))();
      v38 = (*(*a3 + 16))();
      if (v37)
      {
        v39 = *v25;
        if (v38)
        {
          v40 = *v13;
          *v25 = v13[1];
          v13[1] = v39;
LABEL_58:
          v44 = *v7;
          *v7 = v40;
          *v13 = v44;
          goto LABEL_59;
        }

        *v25 = *v13;
        *v13 = v39;
        v43 = (*(*a3 + 16))();
        v40 = *v13;
        if (!v43)
        {
          goto LABEL_58;
        }

        v42 = v13[1];
        *v13 = v42;
        v13[1] = v40;
      }

      else
      {
        v40 = *v13;
        if (!v38)
        {
          goto LABEL_58;
        }

        *v13 = v13[1];
        v13[1] = v40;
        v41 = (*(*a3 + 16))();
        v40 = *v13;
        if (!v41)
        {
          goto LABEL_58;
        }

        v42 = *v25;
        *v25 = v40;
        *v13 = v42;
      }

      v40 = v42;
      goto LABEL_58;
    }

    v18 = v14();
    v19 = (*(*a3 + 16))();
    if (v18)
    {
      v20 = *v13;
      if (v19)
      {
        *v13 = *v8;
      }

      else
      {
        *v13 = *v10;
        *v10 = v20;
        if (!(*(*a3 + 16))())
        {
          goto LABEL_59;
        }

        v20 = *v10;
        *v10 = *v8;
      }

      *v8 = v20;
    }

    else if (v19)
    {
      v23 = *v10;
      *v10 = *v8;
      *v8 = v23;
      if ((*(*a3 + 16))())
      {
        v24 = *v13;
        *v13 = *v10;
        *v10 = v24;
      }
    }

LABEL_59:
    --a4;
    if (a5)
    {
      v45 = *v7;
LABEL_62:
      *v7 = 0;
      v138 = v45;
      v47 = v7;
      do
      {
        v48 = v47++;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v49 = a2;
      if (v48 == v7)
      {
        v49 = a2;
        do
        {
          if (v47 >= v49)
          {
            break;
          }

          --v49;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        do
        {
          --v49;
        }

        while (!(*(*a3 + 16))());
      }

      if (v47 < v49)
      {
        v50 = v47;
        v51 = v49;
        do
        {
          v52 = *v50;
          *v50 = *v51;
          *v51 = v52;
          do
          {
            v48 = v50++;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          do
          {
            --v51;
          }

          while (!(*(*a3 + 16))());
        }

        while (v50 < v51);
      }

      if (v48 != v7)
      {
        v53 = *v48;
        *v48 = 0;
        v54 = *v7;
        *v7 = v53;
        if (v54)
        {
          v55 = atomic_load(v54 + 2);
          if (v55 == 1)
          {
            (*(*v54 + 248))(v54);
          }

          else
          {
            atomic_fetch_add(v54 + 2, 0xFFFFFFFF);
          }
        }
      }

      v56 = *v48;
      *v48 = v138;
      if (v56)
      {
        v57 = atomic_load(v56 + 2);
        if (v57 == 1)
        {
          (*(*v56 + 248))(v56);
        }

        else
        {
          atomic_fetch_add(v56 + 2, 0xFFFFFFFF);
        }
      }

      if (v47 < v49)
      {
LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,false>(v7, v48, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v48 + 1);
      }

      else
      {
        v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*>(v7, v48, a3);
        v10 = (v48 + 1);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*>(v48 + 1, a2, a3);
        if (result)
        {
          a2 = v48;
          if (v58)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v58)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      v46 = (*(*a3 + 16))();
      v45 = *v7;
      if (v46)
      {
        goto LABEL_62;
      }

      *v7 = 0;
      v139 = v45;
      if ((*(*a3 + 16))())
      {
        v10 = v7;
        do
        {
          v10 += 8;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        v59 = (v7 + 1);
        do
        {
          v10 = v59;
          if (v59 >= a2)
          {
            break;
          }

          v60 = (*(*a3 + 16))();
          v59 = v10 + 8;
        }

        while (!v60);
      }

      v61 = a2;
      if (v10 < a2)
      {
        v61 = a2;
        do
        {
          --v61;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      while (v10 < v61)
      {
        v62 = *v10;
        *v10 = *v61;
        *v61 = v62;
        do
        {
          v10 += 8;
        }

        while (!(*(*a3 + 16))());
        do
        {
          --v61;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      v63 = (v10 - 8);
      if ((v10 - 8) != v7)
      {
        v64 = *v63;
        *v63 = 0;
        v65 = *v7;
        *v7 = v64;
        if (v65)
        {
          v66 = atomic_load(v65 + 2);
          if (v66 == 1)
          {
            (*(*v65 + 248))(v65);
          }

          else
          {
            atomic_fetch_add(v65 + 2, 0xFFFFFFFF);
          }
        }
      }

      v67 = *v63;
      *v63 = v139;
      if (v67)
      {
        v68 = atomic_load(v67 + 2);
        if (v68 == 1)
        {
          (*(*v67 + 248))(v67);
        }

        else
        {
          atomic_fetch_add(v67 + 2, 0xFFFFFFFF);
        }
      }

      result = 0;
      a5 = 0;
    }
  }

  v72 = (v10 + 8);
  v74 = v10 == a2 || v72 == a2;
  if ((a5 & 1) == 0)
  {
    if (!v74)
    {
      do
      {
        v128 = v72;
        result = (*(*a3 + 16))();
        if (result)
        {
          v129 = 0;
          v130 = *v128;
          *v128 = 0;
          v143 = v130;
          while (1)
          {
            v131 = *v7;
            *v7 = 0;
            v7[1] = v131;
            if (v129)
            {
              v132 = atomic_load(v129 + 2);
              if (v132 == 1)
              {
                (*(*v129 + 248))(v129);
              }

              else
              {
                atomic_fetch_add(v129 + 2, 0xFFFFFFFF);
              }
            }

            if (((*(*a3 + 16))() & 1) == 0)
            {
              break;
            }

            v129 = *v7--;
          }

          result = *v7;
          *v7 = v143;
          if (result)
          {
            v133 = atomic_load((result + 8));
            if (v133 == 1)
            {
              (*(*result + 248))(result);
            }

            else
            {
              atomic_fetch_add((result + 8), 0xFFFFFFFF);
            }

            result = 0;
          }
        }

        v72 = v128 + 1;
        v7 = v128;
      }

      while (v128 + 1 != a2);
    }

    return result;
  }

  if (v74)
  {
    return result;
  }

  v75 = 0;
  while (2)
  {
    v76 = v72;
    result = (*(*a3 + 16))();
    if (!result)
    {
      goto LABEL_154;
    }

    v77 = 0;
    v78 = *v76;
    *v76 = 0;
    v140 = v78;
    v79 = v75;
    while (2)
    {
      v80 = (v10 + v79);
      v81 = *(v10 + v79);
      *v80 = 0;
      v80[1] = v81;
      if (!v77)
      {
LABEL_143:
        if (!v79)
        {
          break;
        }

        goto LABEL_146;
      }

      v82 = atomic_load(v77 + 2);
      if (v82 == 1)
      {
        (*(*v77 + 248))(v77);
        goto LABEL_143;
      }

      atomic_fetch_add(v77 + 2, 0xFFFFFFFF);
      if (v79)
      {
LABEL_146:
        v83 = (v10 + v79);
        if (((*(*a3 + 16))() & 1) == 0)
        {
          goto LABEL_149;
        }

        v77 = *v80;
        v79 -= 8;
        continue;
      }

      break;
    }

    v83 = v10;
LABEL_149:
    result = *v83;
    *v83 = v140;
    if (result)
    {
      v84 = atomic_load((result + 8));
      if (v84 == 1)
      {
        (*(*result + 248))(result);
      }

      else
      {
        atomic_fetch_add((result + 8), 0xFFFFFFFF);
      }

      result = 0;
    }

LABEL_154:
    v72 = v76 + 1;
    v75 += 8;
    if (v76 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    if ((*(*a5 + 16))())
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*(*a5 + 16))())
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  result = (*(*a5 + 16))();
  if (result)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    result = (*(*a5 + 16))();
    if (result)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      result = (*(*a5 + 16))();
      if (result)
      {
        v18 = *a1;
        *a1 = *a2;
        *a2 = v18;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*>(uint64_t *a1, unsigned int **a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = (a2 - 1);
        v12 = (*(*a3 + 16))();
        v13 = (*(*a3 + 16))();
        if (v12)
        {
          v14 = *a1;
          if (v13)
          {
            *a1 = *v11;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v14;
            if (!(*(*a3 + 16))())
            {
              return 1;
            }

            v14 = a1[1];
            a1[1] = *v11;
          }

          *v11 = v14;
          return 1;
        }

        if (!v13)
        {
          return 1;
        }

        v18 = a1[1];
        a1[1] = *v11;
        *v11 = v18;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v9 = (a2 - 1);
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v10 = a1[3];
        a1[3] = *v9;
        *v9 = v10;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      default:
        goto LABEL_16;
    }

    if ((*(*a3 + 16))())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 1);
    if ((*(*a3 + 16))())
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_16:
  v15 = (*(*a3 + 16))();
  v16 = (*(*a3 + 16))();
  if (v15)
  {
    v17 = *a1;
    if (v16)
    {
      *a1 = a1[2];
      a1[2] = v17;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v17;
      if ((*(*a3 + 16))())
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v16)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*(*a3 + 16))())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v19 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v22 = 0;
      v23 = *v19;
      *v19 = 0;
      v32 = v23;
      for (i = v20; ; i -= 8)
      {
        v25 = a1 + i;
        v26 = *(a1 + i + 16);
        *(v25 + 2) = 0;
        *(v25 + 3) = v26;
        if (v22)
        {
          v27 = atomic_load(v22 + 2);
          if (v27 == 1)
          {
            (*(*v22 + 248))(v22);
          }

          else
          {
            atomic_fetch_add(v22 + 2, 0xFFFFFFFF);
          }
        }

        if (i == -16)
        {
          v28 = a1;
          goto LABEL_45;
        }

        if (((*(*a3 + 16))() & 1) == 0)
        {
          break;
        }

        v22 = *(v25 + 2);
      }

      v28 = (a1 + i + 16);
LABEL_45:
      v29 = *v28;
      *v28 = v32;
      if (v29)
      {
        v30 = atomic_load(v29 + 2);
        if (v30 == 1)
        {
          (*(*v29 + 248))(v29);
        }

        else
        {
          atomic_fetch_add(v29 + 2, 0xFFFFFFFF);
        }
      }

      if (++v21 == 8)
      {
        return v19 + 1 == a2;
      }
    }

    v20 += 8;
    if (++v19 == a2)
    {
      return 1;
    }
  }
}

void TI::CP::SearchNodeTranspositionExtensions::branch_at_current_bound(TI::CP::SearchNodeTranspositionExtensions *this@<X0>, void *a2@<X8>)
{
  if (*(this + 10))
  {
    if (*(this + 11))
    {
      if (*(this + 96) == 1)
      {
        v4 = *(this + 7);
        if (v4)
        {
          v5 = *(this + 8);
          v6 = *(v5 + 8 * v4 - 8);
          if (v6)
          {
            atomic_fetch_add((v6 + 8), 1u);
            v4 = *(this + 7);
            v5 = *(this + 8);
          }

          v7 = v4 - 1;
          WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((v5 + 8 * (v4 - 1)), (v5 + 8 * v4));
          *(this + 7) = v7;
          TI::CP::SearchNodeTranspositionExtensions::compute_bound_on_score(this);
          v8 = *(this + 5);
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          v9 = *(this + 10);
          if (v9)
          {
            atomic_fetch_add(v9, 1u);
          }

          v10 = *(this + 11);
          if (v10)
          {
            atomic_fetch_add((v10 + 8), 1u);
          }

          if (v6)
          {
            atomic_fetch_add((v6 + 8), 1u);
          }

          operator new();
        }
      }
    }
  }

  else
  {
    v11 = *(this + 13);
    v12 = *(*(*(this + 3) + 376) + 24 * *(this + 12));
    if (v11 < (*(*(*(this + 3) + 376) + 24 * *(this + 12) + 8) - v12) >> 3)
    {
      v13 = *(v12 + 8 * v11);
      if (v13)
      {
        atomic_fetch_add(v13, 1u);
        LODWORD(v11) = *(this + 13);
      }

      *(this + 13) = v11 + 1;
      TI::CP::SearchNodeTranspositionExtensions::compute_bound_on_score(this);
      v14 = *(this + 3);
      v15 = *(this + 5);
      v18[0] = *(this + 4);
      v18[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = *(this + 12);
      v17 = v13;
      if (v13)
      {
        atomic_fetch_add(v13, 1u);
      }

      v21 = v14;
      v20 = v16;
      std::allocate_shared[abi:nn200100]<TI::CP::SearchNodeTranspositionExtensions,std::allocator<TI::CP::SearchNodeTranspositionExtensions>,TI::CP::Search const*&,std::shared_ptr<TI::CP::SearchNode const>,unsigned int &,WTF::PassRefPtr<TI::Favonius::LayoutKey> &,0>(&v19, &v21, v18, &v20, &v17);
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t TI::CP::SearchNodeTransposition::enumerate_local_score_components(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 24) + 56);
  v6 = (v5 + 48 * v4);
  if (*(a1 + 136))
  {
    v7 = *(a1 + 144);
    v8 = (v5 + 48 * v7);
  }

  else
  {
    v7 = 0;
    v8 = MEMORY[0x277CBF348];
  }

  v9 = *v6;
  v10 = v6[1];
  v12 = *v8;
  v11 = v8[1];
  v13 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  v14 = *(a1 + 24);
  v15 = MEMORY[0x277CBF348];
  if (v13)
  {
    v16 = 0;
    v17 = MEMORY[0x277CBF348];
  }

  else
  {
    v16 = *(*(a1 + 32) + 48);
    v17 = (*(v14 + 56) + 48 * v16);
  }

  v19 = *v17;
  v18 = v17[1];
  (*(a2 + 16))(a2, 7, v7, v4, v12, v11, v9, v10, -(*(v14 + 560) * *(v14 + 432)));
  v20 = *(a1 + 56);
  x = v20[3].origin.x;
  y = v20[3].origin.y;
  v23 = TI::CP::Search::key_deviation_cost(*(a1 + 24), v4, v20);
  (*(a2 + 16))(a2, 0, v4, 0, v9, v10, x, y, v23);
  if (*(a1 + 136))
  {
    if (((*(**(a1 + 32) + 72))(*(a1 + 32)) & 1) == 0)
    {
      v24 = TI::CP::Search::path_deviation_cost(*(a1 + 24), v16, v7, 0);
      (*(a2 + 16))(a2, 1, v16, v7, v19, v18, v12, v11, v24);
    }

    v25 = TI::CP::Search::path_deviation_cost(*(a1 + 24), v7, v4, 0);
    (*(a2 + 16))(a2, 1, v7, v4, v12, v11, v9, v10, v25);
    v26 = *(a1 + 136);
    v27 = v26[3].origin.x;
    v28 = v26[3].origin.y;
    v29 = TI::CP::Search::key_deviation_cost(*(a1 + 24), v7, v26);
    (*(a2 + 16))(a2, 0, v7, 0, v12, v11, v27, v28, v29);
  }

  v30 = *(a1 + 152);
  if (v30)
  {
    v31 = *(*(*(*v30 + 16))(v30) + 56);
    v32 = *v15;
    v33 = v15[1];
    v34 = *(a1 + 24);
    v35 = (*(**(a1 + 152) + 24))(*(a1 + 152));
    v36 = logf(v35);
    (*(a2 + 16))(a2, 8, v4, v31, v9, v10, v32, v33, *(v34 + 440) * v36);
  }

  result = *(a1 + 64);
  if (result)
  {
    v38 = *(*(*(*result + 16))(result) + 56);
    v39 = *v15;
    v40 = *(v15 + 1);
    v41 = *(a1 + 24);
    v42 = (*(**(a1 + 64) + 24))(*(a1 + 64));
    v43.n128_f64[0] = *(v41 + 440) * logf(v42);
    v44 = *(a2 + 16);
    v45.n128_f64[0] = v12;
    v46.n128_f64[0] = v11;
    v47.n128_f64[0] = v39;
    v48.n128_u64[0] = v40;

    return v44(a2, 8, v7, v38, v45, v46, v47, v48, v43);
  }

  return result;
}

float TI::CP::SearchNodeTransposition::ideal_path_length(TI::CP::SearchNodeTransposition *this)
{
  v1 = *(this + 4);
  v2 = *(*(this + 3) + 56);
  v3 = (v2 + 48 * v1[12]);
  v4 = *v3;
  v5 = v3[1];
  v6 = (v2 + 48 * *(this + 36));
  v7 = *v6;
  v8 = v6[1];
  v9 = (v2 + 48 * *(this + 12));
  v10 = *v9;
  v11 = v9[1];
  v12 = (*(*v1 + 160))(v1);
  v13 = hypot(v7 - v4, v8 - v5) + v12;
  return v13 + hypot(v10 - v7, v11 - v8);
}

double TI::CP::SearchNodeTransposition::decrease_bound_on_score(TI::CP::SearchNodeTransposition *this, double result)
{
  if (*(this + 17))
  {
    return result;
  }

  v3 = *(*(this + 3) + 8);
  v4 = (*(**(this + 8) + 16))(*(this + 8), result);
  TI::Favonius::KeyboardLayout::key_for_char(&v16, v3, *(*v4 + 56));
  v5 = *(this + 17);
  v6 = v16;
  *(this + 17) = v16;
  if (v5)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v5);
    v6 = *(this + 17);
  }

  if (!v6)
  {
    *(this + 81) = 0;
    return result;
  }

  if ((*(**(this + 4) + 72))(*(this + 4)))
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  v8 = *(*(this + 4) + 48) + 1;
  v7 = *(this + 12) - 1;
  if (v8 <= v7)
  {
LABEL_10:
    v9 = -1;
    v10 = -INFINITY;
    do
    {
      v11 = (*(**(this + 4) + 72))(*(this + 4));
      v12 = *(this + 3);
      v13 = 0.0;
      if ((v11 & 1) == 0)
      {
        v13 = TI::CP::Search::path_deviation_cost(*(this + 3), *(*(this + 4) + 48), v8, 0) + 0.0;
      }

      v14 = v13 + TI::CP::Search::path_deviation_cost(v12, v8, *(this + 12), 0);
      v15 = v14 + TI::CP::Search::key_deviation_cost(v12, v8, *(this + 17));
      if (v15 > v10)
      {
        v9 = v8;
        v10 = v15;
      }

      ++v8;
    }

    while (v8 <= v7);
    goto LABEL_16;
  }

  v9 = -1;
LABEL_16:
  *(this + 36) = v9;

  return TI::CP::SearchNode::compute_score(this);
}

uint64_t TI::CP::SearchNodeTransposition::source_debug_data@<X0>(TI::CP::SearchNodeTransposition *this@<X0>, void *a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, " keys=", 6);
  v4 = *(*(**(this + 19) + 16))(*(this + 19));
  v25 = 0x100000;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  TI::Favonius::Key::append_debug_data(v4, &v25);
  v5 = v28;
  if (!v28)
  {
    v5 = &v29;
  }

  if (v25)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, v6, v7);
  v8 = *(*(**(this + 8) + 16))(*(this + 8));
  v20 = 0x100000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  TI::Favonius::Key::append_debug_data(v8, &v20);
  v9 = v23;
  if (!v23)
  {
    v9 = &v24;
  }

  if (v20)
  {
    v10 = v9;
  }

  else
  {
    v10 = "";
  }

  v11 = strlen(v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, v10, v11);
  if (v23 && v22 == 1)
  {
    free(v23);
  }

  if (v28 && v27 == 1)
  {
    free(v28);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v14);
  v14[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v12;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v19);
}

void TI::CP::SearchNodeTransposition::~SearchNodeTransposition(TI::CP::SearchNodeTransposition *this)
{
  *this = &unk_283FDA218;
  v2 = *(this + 19);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 17);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v5 = *(this + 8);
  if (v5)
  {
    v6 = atomic_load(v5 + 2);
    if (v6 == 1)
    {
      (*(*v5 + 248))(v5);
    }

    else
    {
      atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    }
  }

  v7 = *(this + 7);
  if (v7)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v7);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA218;
  v2 = *(this + 19);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 17);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v5 = *(this + 8);
  if (v5)
  {
    v6 = atomic_load(v5 + 2);
    if (v6 == 1)
    {
      (*(*v5 + 248))(v5);
    }

    else
    {
      atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    }
  }

  v7 = *(this + 7);
  if (v7)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v7);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeTransposition>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDA4F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeTranspositionExtensions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDE010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::CP::SearchNodeTranspositionExtensions::source_debug_data@<X0>(TI::CP::SearchNodeTranspositionExtensions *this@<X0>, void *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v22);
  if (*(this + 10))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, " key2=", 6);
    v4 = *(this + 10);
    v28 = 0x100000;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32[0] = 0;
    TI::Favonius::Key::append_debug_data(v4, &v28);
    v5 = v31;
    if (!v31)
    {
      v5 = v32;
    }

    if (v28)
    {
      v6 = v5;
    }

    else
    {
      v6 = "";
    }

    v7 = strlen(v6);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, v6, v7);
    if (v31 && v30 == 1)
    {
      free(v31);
    }

    if (*(this + 96) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, " key1stack=", 11);
      if (*(this + 14))
      {
        for (i = 8 * *(this + 14) - 8; ; i -= 8)
        {
          v9 = *(*(**(*(this + 8) + i) + 16))(*(*(this + 8) + i));
          v28 = 0x100000;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32[0] = 0;
          TI::Favonius::Key::append_debug_data(v9, &v28);
          v10 = v31;
          if (!v31)
          {
            v10 = v32;
          }

          if (v28)
          {
            v11 = v10;
          }

          else
          {
            v11 = "";
          }

          v12 = strlen(v11);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, v11, v12);
          if (v31 && v30 == 1)
          {
            free(v31);
          }

          if (!i)
          {
            break;
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, ",", 1);
        }
      }
    }
  }

  else if (*(this + 13) < ((*(*(*(this + 3) + 376) + 24 * *(this + 12) + 8) - *(*(*(this + 3) + 376) + 24 * *(this + 12))) >> 3))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, " key2stack=", 11);
    for (j = *(this + 13); ; j = v14 + 1)
    {
      v14 = j;
      v15 = *(*(*(this + 3) + 376) + 24 * *(this + 12));
      if (v14 >= (*(*(*(this + 3) + 376) + 24 * *(this + 12) + 8) - v15) >> 3)
      {
        break;
      }

      v16 = *(v15 + 8 * v14);
      v28 = 0x100000;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32[0] = 0;
      TI::Favonius::Key::append_debug_data(v16, &v28);
      v17 = v31;
      if (!v31)
      {
        v17 = v32;
      }

      if (v28)
      {
        v18 = v17;
      }

      else
      {
        v18 = "";
      }

      v19 = strlen(v18);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, v18, v19);
      if (v31 && v30 == 1)
      {
        free(v31);
      }

      if (((*(*(*(this + 3) + 376) + 24 * *(this + 12) + 8) - *(*(*(this + 3) + 376) + 24 * *(this + 12))) >> 3) - 1 > v14)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, ",", 1);
      }
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v22);
  v22[0] = *MEMORY[0x277D82818];
  v20 = *(MEMORY[0x277D82818] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v23 = v20;
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v27);
}

void TI::CP::SearchNodeTranspositionExtensions::~SearchNodeTranspositionExtensions(TI::CP::SearchNodeTranspositionExtensions *this)
{
  *this = &unk_283FD9C58;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 10);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 56);
  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD9C58;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 10);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 56);

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

void TI::CP::SearchNodeKeyPredictionExtensions::decrease_bound_on_score(TI::CP::SearchNodeKeyPredictionExtensions *this)
{
  if ((*(this + 80) & 1) == 0)
  {
    v3 = *(this + 4);
    if ((*(v3 + 82) & 1) == 0)
    {
      (*(**(v3 + 64) + 48))(*(v3 + 64), v3 + 88);
      *(v3 + 82) = 1;
    }

    WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::operator=(this + 7, (v3 + 88));
    v4 = *(this + 7);
    v5 = 126 - 2 * __clz(v4);
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(*(this + 8), (*(this + 8) + 8 * v4), v6, 1);
    *(this + 80) = 1;

    TI::CP::SearchNodeLanguageExtensions::compute_bound_on_score(this);
  }
}

TI::CP::SearchNodeKeyPredictionExtensions *TI::CP::SearchNodeKeyPredictionExtensions::branch_at_current_bound@<X0>(TI::CP::SearchNodeKeyPredictionExtensions *this@<X0>, __n128 *a2@<X8>)
{
  if (*(this + 80) == 1)
  {
    v4 = *(this + 7);
    if (v4)
    {
      v5 = *(this + 2);
      if (*(&v5 + 1))
      {
        atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
        v4 = *(this + 7);
      }

      *(*(this + 8) + 8 * v4 - 8) = 0;
      operator new();
    }
  }

  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return this;
}

uint64_t TI::CP::SearchNodeKeyPrediction::enumerate_local_score_components(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = (*(*(a1 + 24) + 56) + 48 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  v9 = MEMORY[0x277CBF348];
  if (v8)
  {
    v10 = 0;
    v11 = MEMORY[0x277CBF348];
  }

  else
  {
    v10 = *(*(a1 + 32) + 48);
    v11 = (*(*(a1 + 24) + 56) + 48 * v10);
  }

  v13 = *v11;
  v12 = v11[1];
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = *(*(*(*v14 + 16))(v14) + 56);
    v16 = *v9;
    v17 = v9[1];
    v18 = *(a1 + 24);
    v19 = (*(**(a1 + 64) + 24))(*(a1 + 64));
    v20 = logf(v19);
    (*(a2 + 16))(a2, 8, v4, v15, v6, v7, v16, v17, *(v18 + 440) * v20);
  }

  if (((*(**(a1 + 32) + 72))(*(a1 + 32)) & 1) == 0 && ((*(**(a1 + 32) + 136))(*(a1 + 32)) & 1) == 0)
  {
    v26 = *(a1 + 56);
    if (v26)
    {
      v27 = *(v26 + 96);
      v28 = *(v26 + 104);
      v38.x = v27;
      v38.y = v28;
      v29.n128_u64[0] = TI::CP::Search::extended_path_deviation_cost(*(a1 + 24), v10, v4, v38);
      v30.n128_u64[0] = v13;
      v31.n128_u64[0] = v12;
      v32.n128_f64[0] = v27;
      v33.n128_f64[0] = v28;
    }

    else
    {
      v29.n128_u64[0] = TI::CP::Search::path_deviation_cost(*(a1 + 24), v10, v4, 0);
      v30.n128_u64[0] = v13;
      v31.n128_u64[0] = v12;
      v32.n128_f64[0] = v6;
      v33.n128_f64[0] = v7;
    }

    (*(a2 + 16))(a2, 1, v10, v4, v30, v31, v32, v33, v29);
  }

  v23.n128_f64[0] = *v9;
  v24.n128_f64[0] = v9[1];
  v34 = 584;
  if (!*(a1 + 136))
  {
    v34 = 576;
  }

  v25.n128_f64[0] = -(*(*(a1 + 24) + v34) * *(*(a1 + 24) + 432));
  v35 = *(a2 + 16);
  v21.n128_f64[0] = v6;
  v22.n128_f64[0] = v7;

  return v35(a2, 6, v4, 0, v21, v22, v23, v24, v25);
}

uint64_t TI::CP::SearchNodeKeyPrediction::is_score_final(TI::CP::SearchNodeKeyPrediction *this)
{
  if (!*(this + 8))
  {
    return 0;
  }

  if (*(this + 7) || ((*(**(this + 4) + 72))(*(this + 4)) & 1) != 0)
  {
    return 1;
  }

  v3 = *(**(this + 4) + 136);

  return v3();
}

void TI::CP::SearchNodeKeyPrediction::decrease_bound_on_score(TI::CP::SearchNodeKeyPrediction *this)
{
  v4[4] = *MEMORY[0x277D85DE8];
  if (!*(this + 7) && ((*(**(this + 4) + 72))(*(this + 4)) & 1) == 0 && ((*(**(this + 4) + 136))(*(this + 4)) & 1) == 0)
  {
    v2 = *(*(this + 3) + 8);
    v3 = *(*(**(this + 8) + 16))(*(this + 8));
    v4[0] = &unk_283FDA568;
    v4[1] = this;
    v4[3] = v4;
    TI::Favonius::KeyboardLayout::enumerate_keys_with_sort_key(v2, (v3 + 40), v4);
    std::__function::__value_func<void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::~__value_func[abi:nn200100](v4);
    if (*(this + 7))
    {
      TI::CP::SearchNode::compute_score(this);
    }

    else
    {
      *(this + 81) = 0;
    }
  }
}

uint64_t std::__function::__func<TI::CP::SearchNodeKeyPrediction::decrease_bound_on_score(void)::$_0,std::allocator<TI::CP::SearchNodeKeyPrediction::decrease_bound_on_score(void)::$_0>,void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::operator()(uint64_t result, atomic_uint **a2)
{
  v2 = *(result + 8);
  if (!*(v2 + 56))
  {
    v3 = *a2;
    if (*a2)
    {
      atomic_fetch_add(v3, 1u);
      result = *(v2 + 56);
      *(v2 + 56) = v3;
      if (result)
      {
        return WTF::RefCounted<TI::Favonius::Key>::deref(result);
      }
    }

    else
    {
      *(v2 + 56) = 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<TI::CP::SearchNodeKeyPrediction::decrease_bound_on_score(void)::$_0,std::allocator<TI::CP::SearchNodeKeyPrediction::decrease_bound_on_score(void)::$_0>,void ()(WTF::RefPtr<TI::Favonius::LayoutKey> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDA568;
  a2[1] = v2;
  return result;
}

uint64_t TI::CP::SearchNodeKeyPrediction::source_debug_data@<X0>(TI::CP::SearchNodeKeyPrediction *this@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, " key=", 5);
  v4 = *(*(**(this + 8) + 16))(*(this + 8));
  v16 = 0x100000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  TI::Favonius::Key::append_debug_data(v4, &v16);
  v5 = v19;
  if (!v19)
  {
    v5 = &v20;
  }

  if (v16)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, v6, v7);
  if (v19 && v18 == 1)
  {
    free(v19);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v10);
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v15);
}

void TI::CP::SearchNodeKeyPrediction::~SearchNodeKeyPrediction(TI::CP::SearchNodeKeyPrediction *this)
{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeKeyPrediction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDA530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::CP::SearchNodeKeyPredictionExtensions::source_debug_data@<X0>(TI::CP::SearchNodeKeyPredictionExtensions *this@<X0>, void *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, " stack=", 7);
  if (*(this + 14))
  {
    for (i = 8 * *(this + 14) - 8; ; i -= 8)
    {
      v5 = *(*(**(*(this + 8) + i) + 16))(*(*(this + 8) + i));
      v17 = 0x100000;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      TI::Favonius::Key::append_debug_data(v5, &v17);
      v6 = v20;
      if (!v20)
      {
        v6 = &v21;
      }

      if (v17)
      {
        v7 = v6;
      }

      else
      {
        v7 = "";
      }

      v8 = strlen(v7);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, v7, v8);
      if (v20 && v19 == 1)
      {
        free(v20);
      }

      if (!i)
      {
        break;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, ",", 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v11);
  v11[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v9;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318BE200](&v16);
}

void TI::CP::SearchNodeKeyPredictionExtensions::~SearchNodeKeyPredictionExtensions(TI::CP::SearchNodeKeyPredictionExtensions *this)
{
  *this = &unk_283FD9CC8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 56);
  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD9CC8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 56);

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

double TI::CP::SearchNodeForward::bound_on_score(TI::CP::SearchNodeForward *this)
{
  if (*(this + 4))
  {
    return *(this + 7);
  }

  else
  {
    return -INFINITY;
  }
}

void *TI::CP::SearchNodeForward::node_at_current_bound@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[4];
  if (v2)
  {
    v3 = this[5];
    *a2 = v2;
    a2[1] = v3;
    this[7] = 0xFFF0000000000000;
    a2 = this + 4;
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void TI::CP::SearchNodeForward::~SearchNodeForward(TI::CP::SearchNodeForward *this)
{
  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

void TI::CP::SearchNodeRoot::~SearchNodeRoot(TI::CP::SearchNodeRoot *this)
{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

uint64_t TI::CP::SearchNodeSkippedKey::enumerate_local_score_components(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = (*(*(a1 + 24) + 56) + 48 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  v9 = *(a1 + 24);
  v10 = MEMORY[0x277CBF348];
  if (v8)
  {
    v11 = 0;
    v12 = MEMORY[0x277CBF348];
  }

  else
  {
    v11 = *(*(a1 + 32) + 48);
    v12 = (*(v9 + 7) + 48 * v11);
  }

  v14 = *v12;
  v13 = v12[1];
  v15 = TI::CP::Search::path_deviation_cost(v9, v11, v4, 0);
  (*(a2 + 16))(a2, 1, v11, v4, v14, v13, v6, v7, v15);
  v16 = *v10;
  v17 = v10[1];
  v18.n128_u64[0] = TI::CP::Search::skipped_key_cost(*(a1 + 24), v4);
  v19 = *(a2 + 16);
  v20.n128_f64[0] = v6;
  v21.n128_f64[0] = v7;
  v22.n128_u64[0] = v16;
  v23.n128_u64[0] = v17;

  return v19(a2, 4, v4, 0, v20, v21, v22, v23, v18);
}

void TI::CP::SearchNodeSkippedKey::~SearchNodeSkippedKey(TI::CP::SearchNodeSkippedKey *this)
{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

uint64_t TI::CP::SearchNodeOvershoot::enumerate_local_score_components(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = (*(*(a1 + 24) + 56) + 48 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  v9 = *(a1 + 24);
  if (v8)
  {
    v10 = 0;
    v11 = MEMORY[0x277CBF348];
  }

  else
  {
    v10 = *(*(a1 + 32) + 48);
    v11 = (*(v9 + 7) + 48 * v10);
  }

  v13 = *v11;
  v12 = v11[1];
  v14.n128_u64[0] = TI::CP::Search::overshoot_cost(v9, v10, v4);
  v15 = *(a2 + 16);
  v16.n128_u64[0] = v13;
  v17.n128_u64[0] = v12;
  v18.n128_u64[0] = v6;
  v19.n128_u64[0] = v7;

  return v15(a2, 3, v10, v4, v16, v17, v18, v19, v14);
}

void TI::CP::SearchNodeOvershoot::~SearchNodeOvershoot(TI::CP::SearchNodeOvershoot *this)
{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}

uint64_t TI::CP::SearchNodeLoop::enumerate_local_score_components(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = (*(*(a1 + 24) + 56) + 48 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(**(a1 + 32) + 72))(*(a1 + 32));
  v9 = *(a1 + 24);
  v10 = MEMORY[0x277CBF348];
  if (v8)
  {
    v11 = 0;
    v12 = MEMORY[0x277CBF348];
  }

  else
  {
    v11 = *(*(a1 + 32) + 48);
    v12 = (*(v9 + 7) + 48 * v11);
  }

  v14 = *v12;
  v13 = v12[1];
  TI::CP::Search::loop_cost(v9, v11, v4);
  (*(a2 + 16))(a2, 2, v11, v4, v14, v13, v6, v7, v15);
  result = *(a1 + 64);
  if (result)
  {
    v17 = *(*(*(*result + 16))(result) + 56);
    v18 = *v10;
    v19 = v10[1];
    v20 = *(a1 + 24);
    v21 = (*(**(a1 + 64) + 24))(*(a1 + 64));
    v22.n128_f64[0] = *(v20 + 440) * logf(v21);
    v23 = *(a2 + 16);
    v24.n128_f64[0] = v6;
    v25.n128_f64[0] = v7;
    v26.n128_u64[0] = v18;
    v27.n128_u64[0] = v19;

    return v23(a2, 8, v4, v17, v24, v25, v26, v27, v22);
  }

  return result;
}

void TI::CP::SearchNodeLoop::~SearchNodeLoop(TI::CP::SearchNodeLoop *this)
{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDA3A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 88);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 7);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  TI::CP::SearchNodeSource::~SearchNodeSource(this);
}