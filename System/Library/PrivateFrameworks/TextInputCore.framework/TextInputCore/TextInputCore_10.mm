void KB::LanguageModelImplBase::set_app_context(KB::LanguageModelImplBase *this, const __CFString *a2)
{
  v4 = *(this + 17);
  std::mutex::lock(v4);
  KB::retain_ptr<__CFDictionary const*>::operator=(this + 6, a2);

  std::mutex::unlock(v4);
}

void KB::LanguageModelImplBase::update_lexicon_id_vector(KB::LanguageModelImplBase *this, CFArrayRef theArray)
{
  v17 = *MEMORY[0x277D85DE8];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v6 = *(this + 13);
    v5 = this + 104;
    *(v5 + 1) = v6;
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v10 = MEMORY[0x2318BC170](ValueAtIndex);
        if (v10)
        {
          v14 = 0;
          v15 = 32;
          v16 = 0;
          if (CFStringGetCString(v10, buffer, 32, 0x8000100u))
          {
            if (v16)
            {
              v11 = v14;
            }

            else
            {
              v11 = buffer;
            }

            v12 = TILexiconIDForLocaleIdentifier(v11);
            std::vector<unsigned int>::push_back[abi:nn200100](v5, &v12);
          }

          free(v14);
        }
      }
    }
  }

  else
  {
    *(this + 14) = *(this + 13);
  }
}

BOOL KB::LanguageModelImplBase::does_support_english(KB::LanguageModelImplBase *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 4;
  do
  {
    result = TIIsLexiconIDEnglish(*(v3 - 4));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 4;
  }

  while (!v5);
  return result;
}

void KB::LanguageModelImplBase::LanguageModelImplBase(KB::LanguageModelImplBase *this, const KB::LanguageModelConfig *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *this = &unk_283FDC9A8;
  *(this + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 1);
  *(this + 2) = v5;
  if (v5)
  {
    CFRetain(v5);
    *(this + 2) = v5;
  }

  v6 = *(a2 + 2);
  *(this + 3) = v6;
  if (v6)
  {
    CFRetain(v6);
    *(this + 3) = v6;
  }

  v7 = *(a2 + 3);
  *(this + 4) = v7;
  if (v7)
  {
    CFRetain(v7);
    *(this + 4) = v7;
  }

  v8 = *(a2 + 4);
  *(this + 5) = v8;
  if (v8)
  {
    CFRetain(v8);
    *(this + 5) = v8;
  }

  v9 = *(a2 + 5);
  *(this + 6) = v9;
  if (v9)
  {
    CFRetain(v9);
    *(this + 6) = v9;
  }

  v10 = *(a2 + 6);
  *(this + 7) = v10;
  if (v10)
  {
    CFRetain(v10);
    *(this + 7) = v10;
  }

  v11 = *(a2 + 56);
  v12 = *(a2 + 72);
  v13 = *(a2 + 22);
  *(this + 104) = 0u;
  *(this + 24) = v13;
  *(this + 5) = v12;
  *(this + 4) = v11;
  *(this + 120) = 0u;
  operator new();
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDAC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t __Block_byref_object_copy__10693(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void KB::CandidateFilterFlags::CandidateFilterFlags(void *a1, int **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t KB::CandidateFilterFlags::candidate_filter_flag_type(KB::CandidateFilterFlags *this, KB::CandidateFilterFlags *a2)
{
  if (this == a2)
  {
    return 2;
  }

  v2 = (this + 8);
  do
  {
    v3 = *(v2 - 4);
    if (v3)
    {
      break;
    }

    v4 = v2 == a2;
    v2 = (v2 + 8);
  }

  while (!v4);
  v5 = this;
  while ((*(v5 + 4) & 1) != 0)
  {
    v5 = (v5 + 8);
    if (v5 == a2)
    {
      return 2;
    }
  }

  if (!v3)
  {
    return 2;
  }

  while (1)
  {
    if (*(this + 4) == 1)
    {
      v6 = *this;
      if (v6 < 2)
      {
        break;
      }
    }

    this = (this + 8);
    if (this == a2)
    {
      return 2;
    }
  }

  return v6;
}

uint64_t TI::CP::PathEncoder::encode_path(TI::CP::PathEncoder *this)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(this + 71) & 0x8000000000000000) != 0)
  {
    if (*(this + 7))
    {
      return this + 48;
    }
  }

  else if (*(this + 71))
  {
    return this + 48;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v14);
  v2 = *this;
  v3 = *(this + 1);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = v2[1];
    v2 += 3;
    *&v22[152] = v4;
    v23 = vextq_s8(v5, v5, 8uLL);
    std::ostream::write();
  }

  if ((v21 & 0x10) != 0)
  {
    v7 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v7 = v17;
    }

    locale = v16[4].__locale_;
    goto LABEL_15;
  }

  if ((v21 & 8) != 0)
  {
    locale = v16[1].__locale_;
    v7 = v16[3].__locale_;
LABEL_15:
    v6 = v7 - locale;
    if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v13) = v7 - locale;
    if (v6)
    {
      memmove(&v12, locale, v6);
    }

    goto LABEL_21;
  }

  v6 = 0;
  HIBYTE(v13) = 0;
LABEL_21:
  *(&v12 + v6) = 0;
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *(this + 3) = v12;
  v9 = MEMORY[0x277D82818];
  *(this + 8) = v13;
  v14[0] = *v9;
  v10 = v9[9];
  *(v14 + *(v14[0] - 24)) = v9[8];
  v14[2] = v10;
  v15 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  MEMORY[0x2318BE200](v22);
  return this + 48;
}

void KB::CandidateFilter_Indic::filter_candidates(KB::CandidateFilter_Indic *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (!*(*a2 + 444))
  {
    KB::Candidate::compute_string(*a2);
  }

  KB::String::String(&v43, (v6 + 888));
  v46 = 0;
  do
  {
    v7 = HIWORD(v46);
    v8 = WORD2(v43);
    if (!WORD2(v43))
    {
      KB::String::compute_length(&v43);
      v8 = WORD2(v43);
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = KB::UTF8Iterator::next(&v43);
  }

  while (!character_is_diacritic_or_has_diacritics(v9));
  if (v44)
  {
    v10 = BYTE6(v43) == 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    free(v44);
  }

  if (v7 < v8)
  {
    v11 = *(a4 + 2);
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }

    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::__value_func[abi:nn200100](v39, *(v11 + 8) + 112);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v11);
    v12 = *(a4 + 7);
    v13 = *a2;
    if (!*(*a2 + 444))
    {
      KB::Candidate::compute_string(*a2);
    }

    v14 = count_diacritics((v13 + 888));
    v38 = KB::Candidate::sort_key(*a2, v39);
    v15 = *a2;
    v16 = a2[1];
    v17 = 0x1CAC083126E978D5 * ((v16 - *a2) >> 3);
    if (v17 >= 2)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = (v15 + 1000 * v19);
        if (!*(v20 + 444))
        {
          KB::Candidate::compute_string((v15 + 1000 * v19));
        }

        v21 = count_diacritics((v20 + 111));
        if (v21 < v14)
        {
          v22 = v21;
          if (KB::Candidate::should_suggest(v20))
          {
            if (!*v20)
            {
              goto LABEL_33;
            }

            v24 = 240 * *v20 - 240;
            v25 = (v20[1] + 120);
            do
            {
              v27 = *v25;
              v25 += 60;
              v26 = v27;
              if (v27)
              {
                v28 = 1;
              }

              else
              {
                v28 = v24 == 0;
              }

              v24 -= 240;
            }

            while (!v28);
            if (!v26)
            {
LABEL_33:
              v29 = *a2;
              if (!*(*a2 + 444))
              {
                KB::Candidate::compute_string(*a2);
              }

              if (!*(v20 + 444))
              {
                KB::Candidate::compute_string(v20);
              }

              if (KB::strings_have_spaces_in_same_positions((v29 + 888), (v20 + 111), v23))
              {
                v30 = KB::Candidate::sort_key(v20, v39);
                if (KB::operator==(v30, v38))
                {
                  v18 = v19;
                  v14 = v22;
                }
              }
            }
          }
        }

        v19 = (v19 + 1);
        v15 = *a2;
        v16 = a2[1];
        v17 = 0x1CAC083126E978D5 * ((v16 - *a2) >> 3);
      }

      while (v17 > v19);
      if (v18)
      {
        *(v15 + 250 * v18 + 186) = 0;
        if (v12)
        {
          KB::Candidate::capitalized_string(&v43, (v15 + 1000 * v18));
          v31 = v44;
          if (!v44)
          {
            v31 = &v45;
          }

          if (v43)
          {
            v32 = v31;
          }

          else
          {
            v32 = "";
          }

          KB::Candidate::capitalized_string(&v40, *a2);
          v34 = v41;
          if (!v41)
          {
            v34 = &v42;
          }

          if (v40)
          {
            v35 = v34;
          }

          else
          {
            v35 = "";
          }

          KB::append_format(v12, "[%s] boosted over [%s] by %s\n", v33, v32, v35, "boost_word_with_minimum_diacritics");
          if (v41 && BYTE6(v40) == 1)
          {
            free(v41);
          }

          if (v44 && BYTE6(v43) == 1)
          {
            free(v44);
          }

          v15 = *a2;
          v16 = a2[1];
          v17 = 0x1CAC083126E978D5 * ((v16 - *a2) >> 3);
        }
      }
    }

    v36 = 126 - 2 * __clz(v17);
    if (v16 == v15)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(v15, v16, v37, 1);
    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v39);
  }
}

uint64_t count_diacritics(const KB::String *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  KB::String::String(v7, a1);
  v1 = 0;
  v2 = 0;
  for (i = 0; ; v1 = HIWORD(i))
  {
    v3 = v8;
    if (!v8)
    {
      KB::String::compute_length(v7);
      v3 = v8;
    }

    if (v1 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v7);
    v2 = (v2 + character_is_diacritic_or_has_diacritics(v4));
  }

  if (v10)
  {
    v5 = v9 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v10);
  }

  return v2;
}

BOOL character_is_diacritic_or_has_diacritics(UChar32 a1)
{
  v2 = 1;
  if (!u_getIntPropertyValue(a1, UCHAR_TRAIL_CANONICAL_COMBINING_CLASS))
  {
    return ((1 << u_charType(a1)) & 0x4000050) != 0;
  }

  return v2;
}

void TI::CP::ContextualShapeRecognizer::store_shapes(TI::CP::ContextualShapeRecognizer *this)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v2 = *(this + 38);
  if (v2)
  {
    do
    {
      if ((v2[20] & 9) != 0)
      {
        v3 = &v16;
      }

      else
      {
        v3 = &v19;
      }

      std::vector<TI::CP::ShapeRecord>::push_back[abi:nn200100](v3, (v2 + 5));
      v2 = *v2;
    }

    while (v2);
    v4 = v19;
    v5 = v16;
    v6 = v17;
    v7 = 0xF0F0F0F0F0F0F0F1 * ((v20 - v19) >> 3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    LODWORD(v7) = 0;
  }

  if (v7 >= 1)
  {
    v8 = (*(this + 60) * v7);
    if (0xF0F0F0F0F0F0F0F1 * (v6 - v5) < v8)
    {
      v9 = v7 & 0x7FFFFFFF;
      v10 = v4 + 136 * v9 - 56;
      do
      {
        v11 = v4 + 136 * arc4random_uniform(v9);
        std::vector<TI::CP::ShapeRecord>::push_back[abi:nn200100](&v16, v11);
        *v11 = *(v10 - 80);
        std::string::operator=((v11 + 8), (v10 - 72));
        TI::CP::Path::operator=((v11 + 32), (v10 - 48));
        std::string::operator=((v11 + 80), v10);
        v12 = *(v10 + 36);
        *(v11 + 104) = *(v10 + 24);
        *(v11 + 116) = v12;
        v5 = v16;
        v6 = v17;
        if (v9 < 2)
        {
          break;
        }

        --v9;
        v10 -= 136;
      }

      while (0xF0F0F0F0F0F0F0F1 * (v17 - v16) < v8);
    }
  }

  if (v5 != v6)
  {
    v13 = *(this + 70);
    v14 = v5 + 10;
    do
    {
      if (v13 <= 9999)
      {
        TI::CP::ShapeStore::store_shape(this + 208, v14 - 9, v14, *(v14 + 6), *(v14 + 4));
        v13 = *(this + 70) + 1;
        *(this + 70) = v13;
      }

      v15 = v14 + 7;
      v14 += 17;
    }

    while (v15 != v6);
  }

  v22 = &v16;
  std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](&v22);
  v16 = &v19;
  std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](&v16);
}

void **std::vector<TI::CP::ShapeRecord>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<TI::CP::ShapeRecord>::__emplace_back_slow_path<TI::CP::ShapeRecord const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 8);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 24) = *(a2 + 24);
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    std::vector<TI::CP::PathSample>::vector[abi:nn200100]((v4 + 32), (a2 + 32));
    std::vector<unsigned int>::vector[abi:nn200100]((v4 + 56), (a2 + 56));
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(v4 + 96) = *(a2 + 96);
      *(v4 + 80) = v8;
    }

    v9 = *(a2 + 104);
    *(v4 + 116) = *(a2 + 116);
    *(v4 + 104) = v9;
    result = (v4 + 136);
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 33) < 0)
        {
          operator delete(*(v4 - 7));
        }

        v6 = *(v4 - 10);
        if (v6)
        {
          *(v4 - 9) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 13);
        if (v7)
        {
          *(v4 - 12) = v7;
          operator delete(v7);
        }

        if (*(v4 - 105) < 0)
        {
          operator delete(*(v4 - 16));
        }

        v4 -= 17;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void TI::CP::ContextualShapeRecognizer::remove_text_usage(int8x8_t *this, const KB::String *a2)
{
  v27[2] = *MEMORY[0x277D85DE8];
  KB::String::String(v22, " \t\n");
  KB::String::trim(v24, a2, v22);
  v4 = v26;
  if (!v26)
  {
    v4 = v27;
  }

  if (v24[0])
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v5);
  if (v26 && v25 == 1)
  {
    free(v26);
  }

  if (v23 && v22[6] == 1)
  {
    free(v23);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(&this[36], __p))
  {
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(&this[36], __p);
    if (v6)
    {
      v7 = v6;
      v8 = this[37];
      v9 = v6[1];
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        if (v9 >= *&v8)
        {
          v9 %= *&v8;
        }
      }

      else
      {
        v9 &= *&v8 - 1;
      }

      v11 = this[36];
      v12 = *(*&v11 + 8 * v9);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != v6);
      if (v13 == &this[38])
      {
        goto LABEL_31;
      }

      v14 = v13[1];
      if (v10.u32[0] > 1uLL)
      {
        if (*&v14 >= *&v8)
        {
          *&v14 %= *&v8;
        }
      }

      else
      {
        *&v14 &= *&v8 - 1;
      }

      if (*&v14 != v9)
      {
LABEL_31:
        if (!*v6)
        {
          goto LABEL_32;
        }

        v15 = *(*v6 + 8);
        if (v10.u32[0] > 1uLL)
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

        if (v15 != v9)
        {
LABEL_32:
          *(*&v11 + 8 * v9) = 0;
        }
      }

      v16 = *v6;
      if (*v6)
      {
        v17 = *(*&v16 + 8);
        if (v10.u32[0] > 1uLL)
        {
          if (v17 >= *&v8)
          {
            v17 %= *&v8;
          }
        }

        else
        {
          v17 &= *&v8 - 1;
        }

        if (v17 != v9)
        {
          *(*&this[36] + 8 * v17) = v13;
          v16 = *v6;
        }
      }

      *v13 = v16;
      *v6 = 0;
      --*&this[39];
      if (v6[17].i8[7] < 0)
      {
        operator delete(*&v6[15]);
      }

      v18 = v7[12];
      if (v18)
      {
        v7[13] = v18;
        operator delete(v18);
      }

      v19 = v7[9];
      if (v19)
      {
        v7[10] = v19;
        operator delete(v19);
      }

      if (v7[8].i8[7] < 0)
      {
        operator delete(*&v7[6]);
      }

      if (v7[4].i8[7] < 0)
      {
        operator delete(*&v7[2]);
      }

      operator delete(v7);
    }
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }
}

void TI::CP::ContextualShapeRecognizer::text_accepted_from_UI(TI::CP::ContextualShapeRecognizer *this, const KB::String *a2, const KB::String *a3, unsigned int a4, int a5)
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (*(this + 8) != *(this + 9))
  {
    KB::String::String(&v23, " \t\n");
    KB::String::trim(v26, a2, &v23);
    if (v24)
    {
      v9 = BYTE6(v23) == 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      free(v24);
    }

    KB::String::String(&v23, " ");
    KB::String::find_last_of(&v19, v26, &v23);
    if (v24 && BYTE6(v23) == 1)
    {
      free(v24);
    }

    v10 = v26[0];
    if (v28)
    {
      v11 = v28;
    }

    else
    {
      v11 = v29;
    }

    v23 = v11;
    LODWORD(v24) = v26[0];
    HIDWORD(v24) = v26[0];
    v25 = 0;
    KB::String::iterator::initialize(&v23);
    if (DWORD2(v19) != v24)
    {
      *v21 = v19;
      v22 = v20;
      KB::String::iterator::operator++(v21);
      v15 = v11;
      v16 = v10;
      v17 = v10;
      v18 = 0;
      KB::String::iterator::initialize(&v15);
      KB::String::String(&v23, v21, &v15);
      KB::String::operator=(v26, &v23);
      if (v24)
      {
        if (BYTE6(v23) == 1)
        {
          free(v24);
        }
      }
    }

    KB::String::String(v21, " \t\n");
    KB::String::trim(&v23, a3, v21);
    if (v21[1] && BYTE6(v21[0]) == 1)
    {
      free(v21[1]);
    }

    if (a5)
    {
      v12 = 8;
    }

    else
    {
      v12 = 2;
    }

    if (v23)
    {
      v13 = (v28 ? v28 : v29);
      v14 = *(a3 + 1) ? *(a3 + 1) : a3 + 16;
      if (strcmp(v13, v14))
      {
        (*(*this + 96))(this, &v23);
        v12 = 1;
      }
    }

    if (*(this + 70) <= 9999)
    {
      TI::CP::ContextualShapeRecognizer::store_path_with_correct_word(this, v26, v12);
    }

    *(this + 9) = *(this + 8);
    *(this + 12) = *(this + 11);
    if (v24 && BYTE6(v23) == 1)
    {
      free(v24);
    }

    if (v28)
    {
      if (v27 == 1)
      {
        free(v28);
      }
    }
  }
}

void TI::CP::ContextualShapeRecognizer::store_path_with_correct_word(void *a1, unsigned __int16 *a2, int a3)
{
  if (*a2 < 2u)
  {
    return;
  }

  v4 = a1 + 8;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[9] - a1[8]) >> 4) < 2)
  {
    return;
  }

  if (*(a2 + 1))
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = (a2 + 8);
  }

  std::string::basic_string[abi:nn200100]<0>(&v27, v6);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v27;
  }

  v24 = 0u;
  memset(&v25, 0, sizeof(v25));
  *v22 = 0u;
  *v23 = 0u;
  *&v26[16] = a3;
  std::vector<TI::CP::PathSample>::vector[abi:nn200100](v28, v4);
  std::vector<unsigned int>::vector[abi:nn200100](v29, a1 + 11);
  __p = 0;
  v31 = 0;
  v32 = 0;
  v7 = TI::CP::PathEncoder::encode_path(v28);
  std::string::operator=(&v25, v7);
  v8 = a1[8];
  *v26 = -1431655765 * ((a1[9] - v8) >> 4);
  *&v26[8] = *(v8 + 16);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v27;
  }

  else
  {
    v9 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, size);
  v12 = v11;
  v13 = a1[37];
  if (!*&v13)
  {
    goto LABEL_38;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *&v13)
    {
      v16 = v11 % *&v13;
    }
  }

  else
  {
    v16 = (*&v13 - 1) & v11;
  }

  v17 = *(a1[36] + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v12)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v13)
      {
        v19 %= *&v13;
      }
    }

    else
    {
      v19 &= *&v13 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_38;
    }

LABEL_37:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_38;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v18 + 2, &v27))
  {
    goto LABEL_37;
  }

  *(v18 + 10) = v20;
  std::string::operator=(v18 + 2, &v21);
  TI::CP::Path::operator=(v18 + 9, v22);
  std::string::operator=(v18 + 5, &v25);
  *(v18 + 9) = *v26;
  *(v18 + 156) = *&v26[12];
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v23[1])
  {
    *&v24 = v23[1];
    operator delete(v23[1]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void TI::CP::ContextualShapeRecognizer::generate_candidates(uint64_t a1, KB::Candidate **a2, int a3, double a4, __n128 a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 328) & 1) == 0)
  {
    a4 = *(*(a1 + 16) + 16);
    *(a1 + 272) = 1;
    *(a1 + 264) = a4;
  }

  TI::CP::ContextualShapeRecognizer::hypotheses_for_path(__p, a1, (a1 + 64), a4, a5);
  v7 = __p[1];
  v8 = __p[0];
  if (__p[1] != __p[0])
  {
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      KB::String::String(v24, v8);
      v10 = *(v8 + 4);
      v27 = v8[10];
      v26 = v10;
      v11 = v10;
      KB::String::String(&valuePtr, v24);
      KB::Candidate::Candidate(v22, &valuePtr, 0);
      if (v21 && BYTE6(valuePtr) == 1)
      {
        free(v21);
      }

      v12 = fmin(1.0 / (v11 / 100.0), 1.0);
      v23 = logf(v12);
      std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v22);
      if (a3 >= 1)
      {
        Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        valuePtr = v27;
        v14 = CFNumberCreate(v9, kCFNumberDoubleType, &valuePtr);
        CFDictionarySetValue(Mutable, @"num_records", v14);
        if (v14)
        {
          CFRelease(v14);
        }

        valuePtr = v12;
        v15 = CFNumberCreate(v9, kCFNumberDoubleType, &valuePtr);
        CFDictionarySetValue(Mutable, @"final_score", v15);
        if (v15)
        {
          CFRelease(v15);
        }

        CFDictionarySetValue(Mutable, @"source", @"shapematching");
        KB::Candidate::add_sources_info(v22, @"shapematching", Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      KB::Candidate::~Candidate(v22);
      if (v25 && v24[6] == 1)
      {
        free(v25);
      }

      v8 += 12;
    }

    while (v8 != v7);
    v8 = __p[0];
  }

  if (v8)
  {
    v16 = __p[1];
    v17 = v8;
    if (__p[1] != v8)
    {
      do
      {
        v18 = *(v16 - 5);
        if (v18)
        {
          if (*(v16 - 42) == 1)
          {
            free(v18);
          }
        }

        v16 -= 12;
      }

      while (v16 != v8);
      v17 = __p[0];
    }

    __p[1] = v8;
    operator delete(v17);
  }
}

void TI::CP::ContextualShapeRecognizer::hypotheses_for_path(uint64_t *__return_ptr a1@<X8>, TI::CP::ContextualShapeRecognizer *this@<X0>, __n128 **a3@<X1>, double a4@<D0>, __n128 a5@<Q1>)
{
  v29[23] = *MEMORY[0x277D85DE8];
  shape_as_simd_double3(v29, *a3, a3[1], a4, a5);
  v8 = 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3);
  v9 = (v8 * 1.4);
  if (v8 <= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 - v9;
  }

  TI::CP::ShapeStore::recall_shapes((this + 208), v10, v9 - 1431655765 * (a3[1] - *a3), &v27);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v11 = v27;
  for (i = v28; v11 != i; v11 += 17)
  {
    LODWORD(v20) = *v11;
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v11[1], v11[2]);
    }

    else
    {
      v13 = *(v11 + 1);
      v21.__r_.__value_.__r.__words[2] = v11[3];
      *&v21.__r_.__value_.__l.__data_ = v13;
    }

    std::vector<TI::CP::PathSample>::vector[abi:nn200100](&v22, v11 + 4);
    std::vector<unsigned int>::vector[abi:nn200100](v24, v11 + 7);
    if (*(v11 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v11[10], v11[11]);
    }

    else
    {
      v14 = *(v11 + 5);
      v25.__r_.__value_.__r.__words[2] = v11[12];
      *&v25.__r_.__value_.__l.__data_ = v14;
    }

    v15 = *(v11 + 13);
    *(v26 + 12) = *(v11 + 116);
    v16 = *(v26 + 12);
    v26[0] = v15;
    shape_as_simd_double3(&__p, v22, v23, *&v15, v16);
    if (v29[1] != v29[0] && v19 != __p)
    {
      v17 = (v19 - __p) >> 5;
      if (!(v17 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v17);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v20 = &v27;
  std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](&v20);
  if (v29[0])
  {
    operator delete(v29[0]);
  }
}

void shape_as_simd_double3(const TI::CP::Path *a1, __n128 *a2, __n128 *a3, double a4, __n128 a5)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      v9 = *v6;
      a5.n128_u64[0] = v6[1].n128_u64[1];
      v10 = *(a1 + 2);
      if (v8 >= v10)
      {
        v11 = *a1;
        v12 = v8 - *a1;
        v13 = (v12 >> 5) + 1;
        if (v13 >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v14 = v10 - v11;
        if (v14 >> 4 > v13)
        {
          v13 = v14 >> 4;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (!(v15 >> 59))
          {
            operator new();
          }

          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v16 = 32 * (v12 >> 5);
        *v16 = v9;
        *(v16 + 16) = a5;
        v8 = (v16 + 32);
        memcpy(0, v11, v12);
        *a1 = 0;
        *(a1 + 2) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v8 = v9;
        v8[1] = a5;
        v8 += 2;
      }

      *(a1 + 1) = v8;
      v6 += 3;
    }

    while (v6 != a3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::ContextualShapeRecognizer::recognition_hypothesis>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<TI::CP::ContextualShapeRecognizer::recognition_hypothesis>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      v5 = *(v2 - 40);
      if (v5 && *(v2 - 42) == 1)
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

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TI::CP::ContextualShapeRecognizer::recognition_hypothesis>,TI::CP::ContextualShapeRecognizer::recognition_hypothesis*>(KB::String *this, KB::String *a2, uint64_t a3)
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
      v7 = *(v6 + 4);
      *(a3 + 40) = *(v6 + 10);
      *(a3 + 32) = v7;
      v6 = (v6 + 48);
      a3 += 48;
    }

    while (v6 != a2);
    do
    {
      v8 = *(v5 + 1);
      if (v8)
      {
        if (*(v5 + 6) == 1)
        {
          free(v8);
        }
      }

      v5 = (v5 + 48);
    }

    while (v5 != a2);
  }
}

double TI::CP::ContextualShapeRecognizer::path_length(TI::CP::ContextualShapeRecognizer *this)
{
  v1 = *(this + 3);
  if (*(this + 2) == v1)
  {
    return 0.0;
  }

  else
  {
    return *(v1 - 16);
  }
}

uint64_t TI::CP::ContextualShapeRecognizer::reset_path(uint64_t this)
{
  *(this + 192) = *(this + 184);
  *(this + 144) = *(this + 136);
  *(this + 168) = *(this + 160);
  *(this + 24) = *(this + 16);
  *(this + 48) = *(this + 40);
  *(this + 72) = *(this + 64);
  *(this + 96) = *(this + 88);
  *(this + 112) = 7;
  return this;
}

double TI::CP::ContextualShapeRecognizer::last_touch(TI::CP::ContextualShapeRecognizer *this)
{
  v1 = *(this + 3);
  if (*(this + 2) == v1)
  {
    v2 = MEMORY[0x277CBF348];
  }

  else
  {
    v2 = v1 - 48;
  }

  return *v2;
}

void TI::CP::ContextualShapeRecognizer::add_touch(uint64_t a1, int a2, float64x2_t a3, float64_t a4, CGFloat a5, double a6)
{
  v31 = a4;
  v32 = a6;
  v30 = a3.f64[0];
  if (!a2)
  {
    (*(*a1 + 56))(a1);
    a3.f64[0] = v30;
    a4 = v31;
    a6 = v32;
  }

  v9 = a1 + 184;
  v10 = *(a1 + 184);
  a3.f64[1] = a4;
  *v33 = a3;
  *__p = *&a6;
  v11 = *(a1 + 192);
  if (v11 == v10)
  {
    _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v9, v33);
    v42.x = v30;
    v42.y = v31;
    TI::CP::Path::append((a1 + 136), v42, a5, v32, -1.0, 0.0);
  }

  else
  {
    v12 = vsubq_f64(*(v11 - 32), a3);
    v13 = vsubq_f64(*(v11 - 16), *&a6);
    *v12.f64 = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v12, v12), vmulq_f64(v13, v13))));
    if (*(a1 + 120) <= *v12.f64)
    {
      _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(v9, v33);
      v10 = *(a1 + 184);
      v11 = *(a1 + 192);
    }

    if (*(a1 + 128) == (v11 - v10) >> 5)
    {
      TI::CP::PathReducer::append_average_previous_point((a1 + 120));
    }
  }

  v43.x = v30;
  v43.y = v31;
  TI::CP::Path::append((a1 + 16), v43, a5, v32, -1.0, 0.0);
  if (a2 == 2)
  {
    v15 = *(a1 + 184);
    v14 = *(a1 + 192);
    if (*(a1 + 128) == (v14 - v15) >> 5)
    {
      TI::CP::PathReducer::append_average_previous_point((a1 + 120));
      v15 = *(a1 + 184);
      v14 = *(a1 + 192);
    }

    if (v14 != v15)
    {
      v16 = *(v14 - 32);
      v17 = *(v14 - 24);
      TI::CP::Path::append((a1 + 136), v16, *(v14 - 8), *(v14 - 16), -1.0, 0.0);
      v15 = *(a1 + 184);
    }

    *(a1 + 192) = v15;
    v18 = *(a1 + 144);
    v19 = *(a1 + 136);
    if (v19 != v18 && *(v18 - 2) > 20.0)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      do
      {
        v20 = *v19;
        v21 = v19[1];
        v19 += 3;
        *v33 = v20;
        *__p = vextq_s8(v21, v21, 8uLL);
        _ZNSt3__16vectorIDv4_dNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v39, v33);
      }

      while (v19 != v18);
      v22 = v39;
      memset(v36, 0, sizeof(v36));
      v23 = v40 - v39;
      if (v40 != v39)
      {
        if (!((v23 >> 5) >> 59))
        {
          _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv4_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v23 >> 5);
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      end_point_fit(&v37, v36, 0, 0xFFFFFFFFFFFFFFFFLL);
      *__p = 0u;
      v35 = 0u;
      *v33 = 0u;
      v24 = v37;
      v25 = v38;
      if (v37 != v38)
      {
        v26 = v37;
        do
        {
          v27 = *v26;
          v28 = v26[1];
          v26 += 2;
          y = v27.y;
          TI::CP::Path::append(v33, v27, v28.y, v28.x, -1.0, 0.0);
        }

        while (v26 != v25);
      }

      if (v24)
      {
        operator delete(v24);
      }

      if (v22)
      {
        v40 = v22;
        operator delete(v22);
      }

      TI::CP::Path::operator=((a1 + 64), v33);
      if (__p[1])
      {
        *&v35 = __p[1];
        operator delete(__p[1]);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }
    }
  }

  *(a1 + 112) = a2;
}

void TI::CP::ContextualShapeRecognizer::~ContextualShapeRecognizer(TI::CP::ContextualShapeRecognizer *this)
{
  TI::CP::ContextualShapeRecognizer::~ContextualShapeRecognizer(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDBBB0;
  v2 = *(this + 38);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 143) < 0)
      {
        operator delete(v2[15]);
      }

      v4 = v2[12];
      if (v4)
      {
        v2[13] = v4;
        operator delete(v4);
      }

      v5 = v2[9];
      if (v5)
      {
        v2[10] = v5;
        operator delete(v5);
      }

      if (*(v2 + 71) < 0)
      {
        operator delete(v2[6]);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *(this + 36);
  *(this + 36) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  TI::CP::ShapeStore::~ShapeStore(this + 26);
  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    *(this + 21) = v8;
    operator delete(v8);
  }

  v9 = *(this + 17);
  if (v9)
  {
    *(this + 18) = v9;
    operator delete(v9);
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
  }

  v11 = *(this + 8);
  if (v11)
  {
    *(this + 9) = v11;
    operator delete(v11);
  }

  v12 = *(this + 5);
  if (v12)
  {
    *(this + 6) = v12;
    operator delete(v12);
  }

  v13 = *(this + 2);
  if (v13)
  {
    *(this + 3) = v13;
    operator delete(v13);
  }

  *this = &unk_283FDDD68;
  v14 = *(this + 1);
  if (v14)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v14);
  }
}

unsigned int *TI::Favonius::SearchNodeResultQueue::visit(unsigned int *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    if ((*(v2 + 160) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v5 = *(result + 2);
      v4 = *(result + 3);
      if (v5 >= v4)
      {
        v7 = *(result + 1);
        v8 = (v5 - v7) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v9 = v4 - v7;
        v10 = v9 >> 2;
        if (v9 >> 2 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v38 = v3 + 2;
        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v11);
        }

        v34 = 0;
        v35 = 8 * v8;
        v36 = 8 * v8;
        v37 = 0;
        *(8 * v8) = v2;
        atomic_fetch_add((v2 + 8), 1u);
        v12 = v37;
        v6 = v36 + 8;
        v13 = *(v3 + 1);
        v14 = *(v3 + 2);
        v15 = (v35 + v13 - v14);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v13, v14, v15);
        v16 = *(v3 + 1);
        *(v3 + 1) = v15;
        *(v3 + 2) = v6;
        v17 = *(v3 + 3);
        *(v3 + 3) = v12;
        v36 = v16;
        v37 = v17;
        v34 = v16;
        v35 = v16;
        std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(&v34);
      }

      else
      {
        *v5 = v2;
        v6 = (v5 + 1);
        atomic_fetch_add((v2 + 8), 1u);
      }

      *(v3 + 2) = v6;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeResultQueue::LessThanWordScore &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> *>>(*(v3 + 1), v6, (v6 - *(v3 + 1)) >> 3);
    }

    result = (*(*v3 + 16))(&v33);
    v18 = v33;
    if (v33)
    {
      v33 = 0;
      v19 = *(v3 + 9);
      v20 = *(v3 + 10);
      if (v19 >= v20)
      {
        v22 = *(v3 + 8);
        v23 = (v19 - v22) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v25 = v20 - v22;
        if (v25 >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        v26 = v25 >= 0x7FFFFFFFFFFFFFF8;
        v27 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v26)
        {
          v27 = v24;
        }

        v38 = v3 + 16;
        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v27);
        }

        *(8 * v23) = 0;
        v21 = 8 * v23 + 8;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v22, v19, 0);
        v28 = *(v3 + 8);
        *(v3 + 8) = 0;
        *(v3 + 9) = v21;
        v29 = *(v3 + 10);
        *(v3 + 10) = 0;
        v36 = v28;
        v37 = v29;
        v34 = v28;
        v35 = v28;
        std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(&v34);
      }

      else
      {
        *v19 = 0;
        v21 = (v19 + 2);
      }

      *(v3 + 9) = v21;
      v30 = *(v21 - 8);
      *(v21 - 8) = v18;
      if (v30)
      {
        v31 = atomic_load(v30 + 2);
        if (v31 == 1)
        {
          (*(*v30 + 8))(v30);
        }

        else
        {
          atomic_fetch_add(v30 + 2, 0xFFFFFFFF);
        }
      }

      TI::Favonius::SearchNodeSourceQueue::push_heap((v3 + 10), *(v21 - 8));
      result = v33;
      if (v33)
      {
        v32 = atomic_load(v33 + 2);
        if (v32 == 1)
        {
          return (*(*v33 + 8))();
        }

        else
        {
          atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
        }
      }
    }
  }

  return result;
}

unsigned int *std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeResultQueue::LessThanWordScore &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> *>>(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v4 = result;
  v5 = v3 >> 1;
  v6 = &result[2 * (v3 >> 1)];
  v9 = *(a2 - 8);
  v7 = (a2 - 8);
  v8 = v9;
  if ((*(*v6 + 144) + (*(*v6 + 140) * 0.35)) >= (*(v9 + 144) + (*(v9 + 140) * 0.35)))
  {
    return result;
  }

  *v7 = 0;
  v10 = *v6;
  do
  {
    v11 = v6;
    *v6 = 0;
    v12 = *v7;
    *v7 = v10;
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = atomic_load(v12 + 2);
    if (v13 == 1)
    {
      (*(*v12 + 8))(v12);
LABEL_7:
      if (!v5)
      {
        break;
      }

      goto LABEL_10;
    }

    atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    if (!v5)
    {
      break;
    }

LABEL_10:
    v5 = (v5 - 1) >> 1;
    v6 = &v4[2 * v5];
    v10 = *v6;
    v7 = v11;
  }

  while ((*(*v6 + 144) + (*(*v6 + 140) * 0.35)) < (*(v8 + 144) + (*(v8 + 140) * 0.35)));
  result = *v11;
  *v11 = v8;
  if (result)
  {
    v14 = atomic_load(result + 2);
    if (v14 == 1)
    {
      v15 = *(*result + 8);

      return v15();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

unsigned int *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(unsigned int *result, unsigned int *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      v5 += 2;
      *a3++ = v6;
    }

    while (v5 != a2);
    do
    {
      result = *v4;
      if (*v4)
      {
        v7 = atomic_load(result + 2);
        if (v7 == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          atomic_fetch_add(result + 2, 0xFFFFFFFF);
        }
      }

      v4 += 2;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    if (v4)
    {
      v5 = atomic_load(v4 + 2);
      if (v5 == 1)
      {
        (*(*v4 + 8))(v4);
      }

      else
      {
        atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned int *TI::Favonius::SearchNodeResultQueue::next_word_node(unsigned int *this, uint64_t a2)
{
  v3 = this;
  while (1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = v4 == v5 ? -INFINITY : *(*v4 + 144) + (*(*v4 + 140) * 0.35);
    v7 = *(a2 + 40);
    if (v7 == *(a2 + 48))
    {
      break;
    }

    v8 = *(*v7 + 24);
    if (v8 < v6 || (LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    TI::Favonius::SearchNodeSourceQueue::next_search_node(&v29, -INFINITY, (a2 + 40));
    v30 = v29;
    TI::Favonius::SearchNodeResultQueue::visit(a2, &v30);
    this = v30;
    if (v30)
    {
      v9 = atomic_load(v30 + 2);
      if (v9 == 1)
      {
        this = (*(*v30 + 8))();
      }

      else
      {
        atomic_fetch_add(v30 + 2, 0xFFFFFFFF);
      }
    }
  }

  if (v4 == v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v4;
    if (*v4)
    {
      atomic_fetch_add((v10 + 8), 1u);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    v11 = (v5 - v4) >> 3;
    if (v11 >= 2)
    {
      v12 = 0;
      v28 = *v4;
      *v4 = 0;
      v13 = v4;
      do
      {
        v14 = v13;
        v13 += 2 * v12 + 2;
        v15 = 2 * v12;
        v12 = (2 * v12) | 1;
        v16 = v15 + 2;
        if (v16 < v11 && (*(*v13 + 144) + (*(*v13 + 140) * 0.35)) < (*(*(v13 + 1) + 144) + (*(*(v13 + 1) + 140) * 0.35)))
        {
          v13 += 2;
          v12 = v16;
        }

        v17 = *v13;
        *v13 = 0;
        v18 = *v14;
        *v14 = v17;
        if (v18)
        {
          v19 = atomic_load(v18 + 2);
          if (v19 == 1)
          {
            (*(*v18 + 8))(v18);
          }

          else
          {
            atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
          }
        }
      }

      while (v12 <= ((v11 - 2) >> 1));
      v20 = (v5 - 2);
      if (v5 - 2 == v13)
      {
        v24 = *v13;
        *v13 = v28;
        if (v24)
        {
          v25 = atomic_load(v24 + 2);
          if (v25 == 1)
          {
            (*(*v24 + 8))(v24);
          }

          else
          {
            atomic_fetch_add(v24 + 2, 0xFFFFFFFF);
          }
        }
      }

      else
      {
        v21 = *v20;
        *v20 = 0;
        v22 = *v13;
        *v13 = v21;
        if (v22)
        {
          v23 = atomic_load(v22 + 2);
          if (v23 == 1)
          {
            (*(*v22 + 8))(v22);
          }

          else
          {
            atomic_fetch_add(v22 + 2, 0xFFFFFFFF);
          }
        }

        v26 = *v20;
        *v20 = v28;
        if (v26)
        {
          v27 = atomic_load(v26 + 2);
          if (v27 == 1)
          {
            (*(*v26 + 8))(v26);
          }

          else
          {
            atomic_fetch_add(v26 + 2, 0xFFFFFFFF);
          }
        }

        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeResultQueue::LessThanWordScore &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> *>>(v4, (v13 + 2), ((v13 + 2) - v4) >> 3);
      }
    }

    this = std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100]((a2 + 8), *(a2 + 16) - 8);
  }

  *v3 = v10;
  return this;
}

unsigned int *std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100](unsigned int *result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5)
    {
      v6 = atomic_load(result + 2);
      if (v6 == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        atomic_fetch_add(result + 2, 0xFFFFFFFF);
      }
    }
  }

  *(v3 + 1) = a2;
  return result;
}

id UIKeyboardUserDirectory()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = TI_KB_USER_DIRECTORY();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  if (![v1 fileExistsAtPath:v0 isDirectory:&v11])
  {
    v9 = 0;
    v3 = [v1 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v9];
    v2 = v9;
    if (v3)
    {
      goto LABEL_10;
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v4 = TIOSLogFacility();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "UIKeyboardUserDirectory", v2];
    *buf = 138412290;
    v13 = v5;
LABEL_19:
    _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

    goto LABEL_14;
  }

  if (v11)
  {
    v2 = 0;
LABEL_10:
    v7 = v0;
    goto LABEL_15;
  }

  v10 = 0;
  v6 = [v1 removeItemAtPath:v0 error:&v10];
  v2 = v10;
  if (v6)
  {
    goto LABEL_10;
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v4 = TIOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "UIKeyboardUserDirectory", v2];
    *buf = 138412290;
    v13 = v5;
    goto LABEL_19;
  }

LABEL_14:

  v7 = 0;
LABEL_15:

  return v7;
}

id UIAssetPathForInputMode(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = [v2 normalizedIdentifier];
  if (TIInputModeIsTransliteration())
  {
    [v2 normalizedIdentifier];
  }

  else
  {
    [v2 languageWithRegion];
  }
  v4 = ;

  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3002000000;
  v11 = __Block_byref_object_copy__17805;
  v12 = __Block_byref_object_dispose__17806;
  cf = 0;
  LDEnumerateAssetDataItems();
  v6 = v9[5];
  v9[5] = 0;
  _Block_object_dispose(&v8, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

CFMutableArrayRef UIAssetLMBundlePathForInputMode(void *a1, uint64_t a2, int a3)
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = [a1 preferredModelLocaleIdentifier];
  v5 = [v3 localeWithLocaleIdentifier:v4];

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  LDEnumerateAssetDataItems();
  if (Mutable)
  {
    v7 = Mutable;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

uint64_t std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

id UIKeyboardUnigramLexiconPathForInputMode(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v12[0] = &unk_283FDD4C0;
    v13 = v12;
    v2 = UIAssetPathForInputMode(v1, v12);
    std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v12);
  }

  else
  {
    v3 = v1;
    v4 = [v3 locale];
    v5 = [v4 scriptCode];
    isEqualToString = objc_msgSend_isEqualToString_(v5);

    v7 = v3;
    if (isEqualToString)
    {
      v8 = [v3 locale];
      v9 = [v8 languageCode];
      v7 = +[TIInputMode inputModeWithIdentifier:isSiriMode:](TIInputMode, "inputModeWithIdentifier:isSiriMode:", v9, [v3 isSiriMode]);
    }

    v12[0] = &unk_283FDD478;
    v13 = v12;
    v10 = UIAssetPathForInputMode(v7, v12);
    std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v12);

    if (v10)
    {
      v2 = v10;
    }

    else
    {
      v12[0] = &unk_283FDD430;
      v13 = v12;
      v2 = UIAssetPathForInputMode(v3, v12);
      std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v12);
    }
  }

  return v2;
}

id UIKeyboardPhraseLexiconPathForInputMode(void *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD550;
  }

  else
  {
    v2 = &unk_283FDD508;
  }

  v5[0] = v2;
  v5[3] = v5;
  v3 = UIAssetPathForInputMode(v1, v5);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v5);

  return v3;
}

id UIKeyboardDeltaLexiconPathForInputMode(void *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD5E0;
  }

  else
  {
    v2 = &unk_283FDD598;
  }

  v5[0] = v2;
  v5[3] = v5;
  v3 = UIAssetPathForInputMode(v1, v5);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v5);

  return v3;
}

id UIKeyboardMorphemeLexiconPathForInputMode(void *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v5[0] = &unk_283FDD628;
  v5[3] = v5;
  v2 = UIAssetPathForInputMode(v1, v5);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v5);
  if (v2)
  {
    v3 = [v2 stringByAppendingPathComponent:@"morpheme.dat"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id UIKeyboardOTALanguageModelPathsForInputMode(void *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD748;
  }

  else
  {
    v2 = &unk_283FDD700;
  }

  v5[0] = v2;
  v5[3] = v5;
  v3 = UIAssetLMBundlePathForInputMode(v1, v5, 0);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::~__value_func[abi:nn200100](v5);

  return v3;
}

uint64_t std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::~__value_func[abi:nn200100](uint64_t a1)
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

id UIKeyboardSystemLanguageModelPathsForInputMode(void *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD6B8;
  }

  else
  {
    v2 = &unk_283FDD670;
  }

  v5[0] = v2;
  v5[3] = v5;
  v3 = UIAssetLMBundlePathForInputMode(v1, v5, 1);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::~__value_func[abi:nn200100](v5);

  return v3;
}

id UIKeyboardOTADictionaryPathForContentType(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[TIAssetManager sharedAssetManager];
  v9 = [v8 ddsAssetContentItemsWithContentType:v5 inputMode:v6 filteredWithRegion:0];

  v10 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Content items for type %@: %@", "UIKeyboardOTADictionaryPathForContentType", v5, v9];
    *buf = 138412290;
    v33 = v24;
    _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v25 = v6;
    v26 = v5;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v27 + 1) + 8 * i) path];
        v17 = [v16 path];

        v18 = [v17 lastPathComponent];
        if (![v7 length] || objc_msgSend(v18, "hasPrefix:", v7))
        {
          if ([v18 hasSuffix:@".dat"])
          {
            v19 = [MEMORY[0x277CCAA00] defaultManager];
            v20 = [v19 fileExistsAtPath:v17];

            if (v20)
            {

              goto LABEL_16;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_16:
    v6 = v25;
    v5 = v26;
  }

  else
  {
    v17 = 0;
  }

  v21 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s dictionaryPathForContentType ddsResult: %@", "UIKeyboardOTADictionaryPathForContentType", v17];
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&dword_22CA55000, v21, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  return v17;
}

id UIKeyboardStaticUnigramsFile(void *a1)
{
  v1 = a1;
  v2 = TIInputModeUseMorphemeLevelLexicon();
  v3 = [TIInputMode inputModeWithIdentifier:v1];

  if (v2)
  {
    UIKeyboardMorphemeLexiconPathForInputMode(v3);
  }

  else
  {
    UIKeyboardUnigramLexiconPathForInputMode(v3);
  }
  v4 = ;

  return v4;
}

id UIKeyboardDynamicDictionaryFileWithSiriMode(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 length])
  {
    v7 = TIInputModeGetLanguageWithRegion();
    isEqualToString = objc_msgSend_isEqualToString_(v7);

    if (isEqualToString)
    {
      v9 = @"dynamic-text.dat";
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = TIInputModeGetLanguageWithRegion();
      v9 = [v11 stringByAppendingString:@"-dynamic-text.dat"];

      if (!a3)
      {
LABEL_8:
        if (v6)
        {
          v13 = v6;
        }

        else
        {
          v13 = UIKeyboardUserDirectory();
        }

        v14 = v13;
        v10 = [v13 stringByAppendingPathComponent:v9];

        goto LABEL_12;
      }
    }

    v12 = [@"siri-" stringByAppendingString:v9];

    v9 = v12;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

__CFString *UIKeyboardLanguageFromDynamicDictionaryPath(void *a1)
{
  v1 = [a1 lastPathComponent];
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = @"en_US";
  }

  else if ([v1 hasSuffix:@"-dynamic-text.dat"])
  {
    v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(@"-dynamic-text.dat", "length")}];
  }

  else
  {
    v2 = @"intl";
  }

  return v2;
}

id UIKeyboardSimulatedImplicitInputModeDetectionForPrimaryInputMode(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(TILanguageSelectionController);
  v3 = objc_opt_new();
  v4 = [TIInputMode inputModeWithIdentifier:v1];
  v5 = [(TILanguageSelectionController *)v2 simulateImplicitInputModeDetectionForPrimaryInputMode:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) normalizedIdentifier];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

uint64_t *std::unique_ptr<TI::RejectionsDatabase>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = sqlite3_close(*v2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v5[0] = 67109120;
        v5[1] = v4;
        _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "RejectionsDatabase: Error closing database: %d", v5, 8u);
      }
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    JUMPOUT(0x2318BE270);
  }

  return result;
}

uint64_t *std::unique_ptr<KB::LanguageModelContext>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
    language_modeling::v1::LinguisticContext::~LinguisticContext((v2 + 72));
    language_modeling::v1::LinguisticContext::~LinguisticContext((v2 + 64));
    v3 = *(v2 + 16);
    if (v3)
    {
      *(v2 + 24) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_emplace<KB::TypologyLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDAE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t __Block_byref_object_copy__11451(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __destroy_helper_block_a8_40c46_ZTSNSt3__110shared_ptrIN2KB13LanguageModelEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_a8_40c46_ZTSNSt3__110shared_ptrIN2KB13LanguageModelEEE(uint64_t result, uint64_t a2)
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

id KB::createNSArray<std::unordered_set<unsigned long long> const&>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 24)];
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:i[2]];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  return v2;
}

void populateAutocorrectionAccuracyFields(void *a1, float *a2)
{
  v9 = a1;
  [v9 setGeometryScore:a2[187]];
  [v9 setWordScore:a2[188]];
  v3 = *(a2 + 1) + 240 * *a2;
  v4 = TILocaleIdentifierForLexiconID(*(v3 - 104));
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    [v9 setLexiconLocale:v6];
  }

  v7 = *a2;
  if (*a2 == 1)
  {
    [v9 setDynamicUsageCount:*(v3 - 116)];
    [v9 setDynamicPenaltyCount:*(v3 - 112)];
    v7 = *a2;
  }

  LODWORD(v5) = *(*(a2 + 1) + 240 * v7 - 184);
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v9 setStaticLinguisticLikelihood:v8];
}

void std::allocator_traits<std::allocator<KB::LanguageModelContext>>::destroy[abi:nn200100]<KB::LanguageModelContext,void,0>(uint64_t a1)
{
  v4 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 72));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<std::vector<KB::LanguageModelContext>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDADA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

__n128 __Block_byref_object_copy__334(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__335(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t __Block_byref_object_copy__330(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0x100000;
  v2 = a1 + 48;
  *(v2 + 4) = 0;
  *(v2 + 6) = 0;
  *(v2 + 8) = 0;
  return KB::String::operator=(v2, (a2 + 48));
}

void __Block_byref_object_dispose__331(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    if (*(a1 + 54) == 1)
    {
      free(v2);
    }
  }
}

__n128 __Block_byref_object_copy__325(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](uint64_t a1)
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

double std::__fs::filesystem::path::filename[abi:nn200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

void __destroy_helper_block_a8_72c16_ZTSN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*(a1 + 78) == 1)
    {
      free(v2);
    }
  }
}

std::string *std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::__assign_external(a1, a2);
  }

  result = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void ___ZL38TIGetSkipStickersSuggestionGatingValuev_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"SkipStickersSuggestionGating" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

void ___ZL35TIGetKeyboardDisableHitTestingValuev_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardDisableHitTesting" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

__n128 __Block_byref_object_copy__1248(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t std::tuple<KB::CandidateCollection,KB::String>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && *(a1 + 110) == 1)
  {
    free(v2);
  }

  v4 = (a1 + 72);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 48);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 24);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = a1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::optional<KB::String>::operator=[abi:nn200100]<KB::String,void>(uint64_t a1, KB::String *a2)
{
  if (*(a1 + 32) == 1)
  {
    return KB::String::operator=(a1, a2);
  }

  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  result = KB::String::operator=(a1, a2);
  *(result + 32) = 1;
  return result;
}

uint64_t TI::Favonius::KeyboardLayout::KeyboardLayout(uint64_t a1, void *a2)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v2 = *(MEMORY[0x277CBF398] + 16);
  *(a1 + 120) = *MEMORY[0x277CBF398];
  *(a1 + 64) = 1065353216;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0;
  *(a1 + 136) = v2;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x100000;
  *(a1 + 212) = 0;
  *(a1 + 214) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  if (*a2)
  {
    TI::Favonius::KeyboardLayout::add_key(a1, a2[1]);
  }

  return a1;
}

void TI::Favonius::KeyboardLayout::add_key(uint64_t a1, CGRect **a2)
{
  *(a1 + 120) = CGRectUnion(*(a1 + 120), (*a2)[2]);
  std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100]((a1 + 8), a2);
  v4 = *a2;
  v5 = WORD2((*a2)->origin.y);
  if (!WORD2((*a2)->origin.y))
  {
    KB::String::compute_length(v4 + 4);
    v5 = *(v4 + 6);
    v4 = *a2;
  }

  if (v5 != 1)
  {
LABEL_24:
    operator new();
  }

  v6 = *(v4 + 2);
  if (!v6)
  {
    v6 = (v4 + 6);
  }

  v14 = v6;
  v7 = *(v4 + 4);
  v15 = 0;
  v16 = v7;
  v17 = 0;
  KB::String::iterator::initialize(&v14);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v17;
      if (v8 <= v17)
      {
        v10 = v17 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & v17;
    }

    v11 = *(*(a1 + 32) + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v17)
        {
          if (*(i + 4) == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  operator new();
}

void std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100](uint64_t **a1, atomic_uint **a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = v3 - *a1;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v11 = 8 * v7;
    v12 = *a2;
    *(8 * v7) = *a2;
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    v6 = (v11 + 8);
    v13 = *a1;
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        v18 = *v16;
        *v16++ = 0;
        *v17++ = v18;
      }

      while (v16 != v14);
      do
      {
        if (*v13)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(*v13);
        }

        ++v13;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *v3 = *a2;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    v6 = v3 + 1;
  }

  a1[1] = v6;
}

uint64_t *std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float &&>,std::tuple<>>(uint64_t **a1, _DWORD **a2, float a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v3;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

atomic_uint *TI::Favonius::KeyboardLayout::find_nearest_key@<X0>(atomic_uint *this@<X0>, CGPoint a2@<0:D0, 8:D1>, atomic_uint **a3@<X8>)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    y = a2.y;
    x = a2.x;
    this = 0;
    v8 = INFINITY;
    do
    {
      v9 = *v4;
      v10 = sqrt((*(*v4 + 13) - y) * (*(*v4 + 13) - y) + (*(*v4 + 12) - x) * (*(*v4 + 12) - x));
      if (v8 <= v10)
      {
        v9 = this;
        v10 = v8;
      }

      else
      {
        atomic_fetch_add(v9, 1u);
        if (this)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(this);
        }
      }

      ++v4;
      v8 = v10;
      this = v9;
    }

    while (v4 != v5);
  }

  *a3 = v9;
  return this;
}

uint64_t TI::Favonius::KeyboardLayout::find_key_for_touch@<X0>(uint64_t this@<X0>, CGPoint a2@<0:D0, 8:D1>, CGRect **a3@<X8>)
{
  v4 = *(this + 8);
  v5 = *(this + 16);
  if (v4 == v5)
  {
    v10 = 0;
LABEL_11:
    *a3 = v10;
  }

  else
  {
    y = a2.y;
    x = a2.x;
    v8 = 0;
    v9 = INFINITY;
    while (1)
    {
      v13.x = x;
      v13.y = y;
      this = CGRectContainsPoint((*v4)[2], v13);
      v10 = *v4;
      if (this)
      {
        break;
      }

      v11 = sqrt((v10[3].origin.y - y) * (v10[3].origin.y - y) + (v10[3].origin.x - x) * (v10[3].origin.x - x));
      if (v9 <= v11)
      {
        v10 = v8;
        v11 = v9;
      }

      else
      {
        atomic_fetch_add(v10, 1u);
        if (v8)
        {
          this = WTF::RefCounted<TI::Favonius::Key>::deref(v8);
        }
      }

      ++v4;
      v9 = v11;
      v8 = v10;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    *a3 = v10;
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
    }

    if (v8)
    {

      return WTF::RefCounted<TI::Favonius::Key>::deref(v8);
    }
  }

  return this;
}

uint64_t TI::Favonius::KeyboardLayout::enumerate_keys(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; v2 += 8)
  {
    result = (*(a2 + 16))(a2, v2);
  }

  return result;
}

void TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *&v32 = a3;
  *(&v32 + 1) = a4;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 != v5)
  {
    do
    {
      std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100](&v29, v4);
      v7 = v29;
      v8 = v30;
      *v28 = v32;
      v33 = v32;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(CGPoint,void({block_pointer})(WTF::RefPtr<TI::Favonius::LayoutKey> const&))::$_0 &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::LayoutKey>*>>(v29, v30, &v33, (v30 - v29) >> 3);
      ++v4;
    }

    while (v4 != v5);
    for (; v7 != v8; v30 = v8)
    {
      (*(a2 + 16))(a2, v7);
      v9 = v28[0];
      v33 = *v28;
      v10 = (v8 - v7) >> 3;
      if (v10 >= 2)
      {
        v11 = 0;
        v12 = *v7;
        *v7 = 0;
        v13 = v7;
        do
        {
          v14 = &v13[v11 + 1];
          v15 = 2 * v11;
          v11 = (2 * v11) | 1;
          v16 = v15 + 2;
          if (v16 < v10)
          {
            v17 = sqrt((*(*v14 + 104) - v28[1]) * (*(*v14 + 104) - v28[1]) + (*(*v14 + 96) - v9) * (*(*v14 + 96) - v9));
            v18 = sqrt((*(v14[1] + 104) - v28[1]) * (*(v14[1] + 104) - v28[1]) + (*(v14[1] + 96) - v9) * (*(v14[1] + 96) - v9));
            if (v17 > v18)
            {
              ++v14;
              v11 = v16;
            }
          }

          v19 = *v14;
          *v14 = 0;
          v20 = *v13;
          *v13 = v19;
          if (v20)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v20);
            v9 = v28[0];
          }

          v13 = v14;
        }

        while (v11 <= ((v10 - 2) >> 1));
        v21 = (v8 - 8);
        if (v14 == (v8 - 8))
        {
          v25 = *v14;
          *v14 = v12;
          if (v25)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v25);
          }
        }

        else
        {
          v22 = *v21;
          *v21 = 0;
          v23 = *v14;
          *v14 = v22;
          if (v23)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v23);
          }

          v24 = *v21;
          *v21 = v12;
          if (v24)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v24);
          }

          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(CGPoint,void({block_pointer})(WTF::RefPtr<TI::Favonius::LayoutKey> const&))::$_0 &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::LayoutKey>*>>(v7, (v14 + 1), &v33, v14 + 1 - v7);
        }
      }

      v27 = *(v8 - 8);
      v8 -= 8;
      v26 = v27;
      if (v27)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v26);
      }
    }
  }

  *&v33 = &v29;
  std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v33);
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(CGPoint,void({block_pointer})(WTF::RefPtr<TI::Favonius::LayoutKey> const&))::$_0 &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::LayoutKey>*>>(uint64_t result, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v11 = *(a2 - 8);
    v9 = (a2 - 8);
    v10 = v11;
    v12 = a3[1];
    v13 = *(*v8 + 96) - *a3;
    *&v13 = sqrt((*(*v8 + 104) - v12) * (*(*v8 + 104) - v12) + v13 * v13);
    v14 = sqrt((*(v11 + 104) - v12) * (*(v11 + 104) - v12) + (*(v11 + 96) - *a3) * (*(v11 + 96) - *a3));
    if (*&v13 > v14)
    {
      *v9 = 0;
      v15 = *v8;
      do
      {
        v16 = v8;
        *v8 = 0;
        v17 = *v9;
        *v9 = v15;
        if (v17)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v17);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        v18 = a3[1];
        v15 = *v8;
        v19 = *(*v8 + 96) - *a3;
        *&v19 = sqrt((*(*v8 + 104) - v18) * (*(*v8 + 104) - v18) + v19 * v19);
        v20 = sqrt((*(v10 + 104) - v18) * (*(v10 + 104) - v18) + (*(v10 + 96) - *a3) * (*(v10 + 96) - *a3));
        v9 = v16;
      }

      while (*&v19 > v20);
      result = *v16;
      *v16 = v10;
      if (result)
      {

        return WTF::RefCounted<TI::Favonius::Key>::deref(result);
      }
    }
  }

  return result;
}

atomic_uint *TI::Favonius::KeyboardLayout::key_for_char@<X0>(atomic_uint **__return_ptr a1@<X8>, atomic_uint *this@<X0>, unsigned int a3@<W1>)
{
  v3 = *(this + 5);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a3;
    if (v3 <= a3)
    {
      v5 = a3 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a3;
  }

  v6 = *(*(this + 4) + 8 * v5);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *v6;
  if (!v7)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a3)
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
      goto LABEL_17;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  if (*(v7 + 4) != a3)
  {
    goto LABEL_16;
  }

  this = v7[3];
  if (!this)
  {
LABEL_17:
    *a1 = 0;
    return this;
  }

  atomic_fetch_add(this, 1u);
  *a1 = this;
  atomic_fetch_add(this, 1u);
  return WTF::RefCounted<TI::Favonius::Key>::deref(this);
}

float TI::Favonius::KeyboardLayout::enumerate_keys_with_sort_key(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *a2;
  if (v6 <= 0xE)
  {
    v7 = (a2 + 1);
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = KB::String::hash(v7, v6);
  v10 = *(a1 + 80);
  if (!v10)
  {
    return *v9.i32;
  }

  v11 = v8;
  v9 = vcnt_s8(v10);
  v9.i16[0] = vaddlv_u8(v9);
  v12 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v10 <= v8)
    {
      v13 = v8 % v10;
    }
  }

  else
  {
    v13 = (v10 - 1) & v8;
  }

  v14 = *(*(a1 + 72) + 8 * v13);
  if (!v14)
  {
    return *v9.i32;
  }

  v15 = *v14;
  if (!*v14)
  {
    return *v9.i32;
  }

  while (1)
  {
    v16 = *(v15 + 1);
    if (v16 == v11)
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
      return *v9.i32;
    }

LABEL_19:
    v15 = *v15;
    if (!v15)
    {
      return *v9.i32;
    }
  }

  if (!KB::operator==(v15 + 8, a2))
  {
    goto LABEL_19;
  }

  v17 = v15;
  do
  {
    v17 = *v17;
  }

  while (v17 && KB::operator==(v17 + 8, a2));
  while (v15 != v17)
  {
    v18 = *(a3 + 24);
    if (!v18)
    {
      v19 = std::__throw_bad_function_call[abi:nn200100]();
      *v9.i32 = TI::Favonius::KeyboardLayout::median_key_half_width(v19);
      return *v9.i32;
    }

    (*(*v18 + 48))(v18, v15 + 4);
    v15 = *v15;
  }

  return *v9.i32;
}

float TI::Favonius::KeyboardLayout::median_key_half_width(TI::Favonius::KeyboardLayout *this)
{
  v1 = *(this + 19);
  v2 = this + 160;
  if (v1 != (this + 160))
  {
    v3 = ((*(this + 2) - *(this + 1)) >> 3) >> 1;
    while (1)
    {
      v4 = *(v1 + 8);
      v5 = v3 < v4;
      v3 -= v4;
      if (v5)
      {
        break;
      }

      v6 = *(v1 + 1);
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
          v7 = *(v1 + 2);
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
      if (v7 == v2)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = v1;
LABEL_12:
  if (v7 == v2)
  {
    return 15.0;
  }

  else
  {
    return v7[7];
  }
}

float TI::Favonius::KeyboardLayout::median_key_half_height(TI::Favonius::KeyboardLayout *this)
{
  v1 = *(this + 22);
  v2 = this + 184;
  if (v1 != (this + 184))
  {
    v3 = ((*(this + 2) - *(this + 1)) >> 3) >> 1;
    while (1)
    {
      v4 = *(v1 + 8);
      v5 = v3 < v4;
      v3 -= v4;
      if (v5)
      {
        break;
      }

      v6 = *(v1 + 1);
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
          v7 = *(v1 + 2);
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
      if (v7 == v2)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = v1;
LABEL_12:
  if (v7 == v2)
  {
    return 22.0;
  }

  else
  {
    return v7[7];
  }
}

float TI::Favonius::KeyboardLayout::get_horizontal_center(TI::Favonius::KeyboardLayout *this)
{
  IsNull = CGRectIsNull(*(this + 120));
  result = 0.0;
  if (!IsNull)
  {
    return CGRectGetMidX(*(this + 120));
  }

  return result;
}

BOOL TI::Favonius::KeyboardLayout::is_far_away_point(CGFloat *this, CGPoint a2)
{
  y = a2.y;
  x = a2.x;
  v5 = TI::Favonius::KeyboardLayout::median_key_half_height(this);
  v7 = this[15];
  v6 = this[16];
  v9 = this[17];
  v8 = this[18];
  v14.origin.x = v7;
  v14.origin.y = v6;
  v14.size.width = v9;
  v14.size.height = v8;
  if (x >= CGRectGetMinX(v14))
  {
    v16.origin.x = v7;
    v16.origin.y = v6;
    v16.size.width = v9;
    v16.size.height = v8;
    v10 = 0.0;
    if (CGRectGetMaxX(v16) < x)
    {
      v17.origin.x = v7;
      v17.origin.y = v6;
      v17.size.width = v9;
      v17.size.height = v8;
      v10 = x - CGRectGetMaxX(v17);
    }
  }

  else
  {
    v15.origin.x = v7;
    v15.origin.y = v6;
    v15.size.width = v9;
    v15.size.height = v8;
    v10 = CGRectGetMinX(v15) - x;
  }

  v18.origin.x = v7;
  v18.origin.y = v6;
  v18.size.width = v9;
  v18.size.height = v8;
  if (y >= CGRectGetMinY(v18))
  {
    v20.origin.x = v7;
    v20.origin.y = v6;
    v20.size.width = v9;
    v20.size.height = v8;
    MaxY = CGRectGetMaxY(v20);
    v11 = 0.0;
    if (MaxY < y)
    {
      v21.origin.x = v7;
      v21.origin.y = v6;
      v21.size.width = v9;
      v21.size.height = v8;
      v11 = y - CGRectGetMaxY(v21);
    }
  }

  else
  {
    v19.origin.x = v7;
    v19.origin.y = v6;
    v19.size.width = v9;
    v19.size.height = v8;
    v11 = CGRectGetMinY(v19) - y;
  }

  return hypot(v10, v11) > (v5 * 4.0);
}

void KB::BoostPreferedFormForSortkey::filter_candidates(KB::BoostPreferedFormForSortkey *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if ((0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3)) >= 2)
  {
    v8 = *(a4 + 2);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }

    v9 = *(v8 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
    v12 = KB::Candidate::num_words_preserving_input(v4, a3, v9 + 144, v10, v11);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 240 * v12;
      v16 = 1;
      do
      {
        KB::Word::capitalized_string(&v48, (*(a3 + 1) + v13));
        if (KB::string_has_uppercase_characters(&v48, v17) || KB::string_contains_surface_form_features(&v48, v18))
        {
          v14 = v16;
        }

        if (v49 && BYTE6(v48) == 1)
        {
          free(v49);
        }

        v13 += 240;
        ++v16;
      }

      while (v15 != v13);
    }

    else
    {
      v14 = 0;
    }

    v19 = *a2;
    v20 = *(a2 + 1) - *a2;
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v47 = 0x1CAC083126E978D5 * (v20 >> 3);
      do
      {
        v23 = v19 + 1000 * v22;
        if (*v23 == *v4)
        {
          if (!*(v23 + 888))
          {
            KB::Candidate::compute_string(v23);
          }

          if (!*(v4 + 888))
          {
            KB::Candidate::compute_string(v4);
          }

          v24 = *(v9 + 168);
          if (!v24)
          {
            std::__throw_bad_function_call[abi:nn200100]();
          }

          if ((*(*v24 + 48))(v24, v23 + 888, v4 + 888))
          {
            if (*v23)
            {
              v27 = (*(v4 + 8) + 136);
              v28 = (*(v23 + 8) + 136);
              v29 = 240 * *v23;
              while (1)
              {
                v31 = *v28;
                v28 += 60;
                v30 = v31;
                v32 = *v27;
                v27 += 60;
                if (v30 != v32)
                {
                  break;
                }

                v29 -= 240;
                if (!v29)
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {
LABEL_28:
              if (KB::Candidate::num_words_preserving_input(v23, a3, v9 + 144, v25, v26) >= v14)
              {
                if (*v23 == v14)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = 0;
                  v34 = -240 * v14 + 240 * *v23;
                  v35 = (*(v23 + 8) + 240 * v14 + 104);
                  do
                  {
                    v36 = *v35;
                    v35 += 60;
                    v33 += (v36 >> 3) & 1;
                    v34 -= 240;
                  }

                  while (v34);
                }

                v37 = v47;
                if (v21 < v33)
                {
                  v37 = v22;
                }

                v47 = v37;
                if (v21 <= v33)
                {
                  v21 = v33;
                }
              }
            }
          }
        }

        ++v22;
        v19 = *a2;
        v38 = 0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3);
      }

      while (v22 < v38);
      if (v47)
      {
        if (v47 < v38)
        {
          v39 = *(v19 + 744);
          v40 = v39 + logf(*(this + 2) * 1.1);
          std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>(v19, (v19 + 1000 * v47), (v19 + 1000 * v47 + 1000));
          v41 = *a2;
          *(*a2 + 744) = v40;
          v42 = *(a4 + 7);
          if (v42)
          {
            KB::Candidate::capitalized_string(&v48, v41);
            v44 = v49;
            if (!v49)
            {
              v44 = v50;
            }

            if (v48)
            {
              v45 = v44;
            }

            else
            {
              v45 = "";
            }

            KB::append_format(v42, "[%s] %s\n", v43, v45, "filter_candidates");
            if (v49)
            {
              if (BYTE6(v48) == 1)
              {
                free(v49);
              }
            }
          }
        }
      }
    }
  }
}

void KB::BoostMinimumVariation::filter_candidates(KB::BoostMinimumVariation *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 != a2[1])
  {
    if (!*(v4 + 444))
    {
      KB::Candidate::compute_string(*a2);
    }

    KB::String::String(v52, (v4 + 222));
    v9 = expf(v4[186]);
    if (!*(v4 + 444))
    {
      KB::Candidate::compute_string(v4);
    }

    v11 = KB::count_word_medial_punctuation((v4 + 222), v8);
    if (!*(v4 + 444))
    {
      KB::Candidate::compute_string(v4);
    }

    v12 = KB::count_precomposed_diacritic_letters((v4 + 222), v10);
    v13 = *(a4 + 2);
    if (v13)
    {
      atomic_fetch_add(v13, 1u);
    }

    v14 = *(v13 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v13);
    v16 = *a2;
    v15 = a2[1];
    if ((0x1CAC083126E978D5 * ((v15 - *a2) >> 3)) >= 2)
    {
      v43 = a4;
      v44 = 0;
      v17 = v12 + v11;
      v18 = 1;
      do
      {
        v19 = (v16 + 1000 * v18);
        if ((expf(v19[186]) * *(this + 2)) < v9)
        {
          break;
        }

        if (!*(v19 + 444))
        {
          KB::Candidate::compute_string((v16 + 1000 * v18));
        }

        v22 = KB::count_word_medial_punctuation((v19 + 222), v20);
        if (!*(v19 + 444))
        {
          KB::Candidate::compute_string((v16 + 1000 * v18));
        }

        v23 = KB::count_precomposed_diacritic_letters((v19 + 222), v21) + v22;
        if (v23 < v17 && KB::CandidateFilter::is_suggestible_for_input(v16 + 125 * v18, a3, 1, this + 16, v14 + 144, 0))
        {
          if (!*v19)
          {
            goto LABEL_66;
          }

          v24 = 240 * *v19 - 240;
          v25 = (*(v19 + 1) + 120);
          do
          {
            v27 = *v25;
            v25 += 60;
            v26 = v27;
            if (v27)
            {
              v28 = 1;
            }

            else
            {
              v28 = v24 == 0;
            }

            v24 -= 240;
          }

          while (!v28);
          if (!v26)
          {
LABEL_66:
            if (!*(v19 + 444))
            {
              KB::Candidate::compute_string((v16 + 1000 * v18));
            }

            v29 = *(v14 + 168);
            if (!v29)
            {
              v42 = std::__throw_bad_function_call[abi:nn200100]();
              KB::BoostMinimumVariation::filter_description(v42);
              return;
            }

            v30 = (*(*v29 + 48))(v29, v19 + 888, v52);
            if (v30)
            {
              v17 = v23;
            }

            v31 = v44;
            if (v30)
            {
              v31 = v18;
            }

            v44 = v31;
          }
        }

        v18 = (v18 + 1);
        v16 = *a2;
        v15 = a2[1];
      }

      while (0x1CAC083126E978D5 * ((v15 - *a2) >> 3) > v18);
      if (v44)
      {
        v32 = (v16 + 1000 * v44);
        v33 = expf(v32[186]);
        v32[186] = logf(v33 * *(this + 2));
        v34 = *(v43 + 7);
        if (v34)
        {
          KB::Candidate::capitalized_string(&v49, v32);
          v35 = v50;
          if (!v50)
          {
            v35 = &v51;
          }

          if (v49)
          {
            v36 = v35;
          }

          else
          {
            v36 = "";
          }

          KB::Candidate::capitalized_string(&v46, v4);
          v38 = v47;
          if (!v47)
          {
            v38 = &v48;
          }

          if (v46)
          {
            v39 = v38;
          }

          else
          {
            v39 = "";
          }

          KB::append_format(v34, "[%s] boosted over [%s] by %s\n", v37, v36, v39, "filter_candidates");
          if (v47 && BYTE6(v46) == 1)
          {
            free(v47);
          }

          if (v50 && BYTE6(v49) == 1)
          {
            free(v50);
          }

          v16 = *a2;
          v15 = a2[1];
        }

        v40 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v15 - v16) >> 3));
        if (v15 == v16)
        {
          v41 = 0;
        }

        else
        {
          v41 = v40;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(v16, v15, v41, 1);
      }
    }

    if (v53)
    {
      if (v52[6] == 1)
      {
        free(v53);
      }
    }
  }
}

void KB::BoostCaseVariantsOfTopCandidate::filter_candidates(KB::BoostCaseVariantsOfTopCandidate *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4 && (0x1CAC083126E978D5 * ((v4 - v5) >> 3)) >= 2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v5 + 1000 * v8;
      if (*v5)
      {
        v10 = *v5 == *v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = 0;
        v12 = 0;
        while (++v12 < *v5)
        {
          KB::Word::capitalized_string(&v39, (*(v5 + 8) + v11));
          KB::Word::capitalized_string(&v37, (*(v9 + 8) + v11));
          v15 = KB::String::equal(&v39, &v37, 1, v13, v14);
          if (v38 && BYTE6(v37) == 1)
          {
            free(v38);
          }

          if (v40 && BYTE6(v39) == 1)
          {
            free(v40);
          }

          v11 += 240;
          if (!v15)
          {
            goto LABEL_38;
          }
        }

        KB::Word::capitalized_string(&v39, (*(v5 + 8) + 240 * *v5 - 240));
        KB::Word::capitalized_string(&v37, (*(v9 + 8) + 240 * *v9 - 240));
        v18 = KB::String::equal(&v39, &v37, 0, v16, v17);
        if (v38 && BYTE6(v37) == 1)
        {
          free(v38);
        }

        if (v40 && BYTE6(v39) == 1)
        {
          free(v40);
        }

        if (v18)
        {
          v19 = *(a4 + 7);
          if (v19)
          {
            v20 = 1000 * v8;
            KB::Candidate::capitalized_string(&v39, (1000 * v8 + *a2));
            v22 = v40;
            if (!v40)
            {
              v22 = v41;
            }

            v23 = "";
            if (v39)
            {
              v23 = v22;
            }

            KB::append_format(v19, "[%s] boosted capital case variant to the next spot that isn't a capital case variant\n", v21, v23);
            if (v40 && BYTE6(v39) == 1)
            {
              free(v40);
            }
          }

          else
          {
            v20 = 1000 * v8;
          }

          v24 = 1000 * v7 + 1000;
          if (v24 != v20)
          {
            std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>((v24 + *a2), (v20 + *a2), (v20 + *a2 + 1000));
          }

          ++v7;
        }
      }

LABEL_38:
      v8 = (v8 + 1);
      v5 = *a2;
      v25 = 0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3);
    }

    while (v25 > v8);
    if (v7)
    {
      v26 = v7 + 1;
      if (v25 > v26 && v26 >= 2)
      {
        v27 = *(v5 + 744);
        v28 = (*(v5 + 1000 * v26 + 744) - v27) / v26;
        v29 = 1;
        v30 = 1000;
        do
        {
          v31 = (*a2 + v30);
          v31[186] = v27 + (v29 * v28);
          v32 = *(a4 + 7);
          if (v32)
          {
            KB::Candidate::capitalized_string(&v39, v31);
            v34 = v40;
            if (!v40)
            {
              v34 = v41;
            }

            v35 = "";
            if (v39)
            {
              v35 = v34;
            }

            KB::append_format(v32, "[%s] updated omega after boost so order will be preserved after sort\n", v33, v35);
            if (v40)
            {
              if (BYTE6(v39) == 1)
              {
                free(v40);
              }
            }
          }

          ++v29;
          v30 += 1000;
        }

        while (v26 != v29);
      }
    }
  }
}

void KB::ExemptHighFrequencyWordsFromNoSuggest::filter_candidates(KB::ExemptHighFrequencyWordsFromNoSuggest *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = *(a2 + 1);
  if (*a2 == v5)
  {
    goto LABEL_21;
  }

  v7 = 0;
  v23 = *(a2 + 1);
  do
  {
    if (*v6)
    {
      v8 = v6[1];
      v9 = 240 * *v6;
      while (1)
      {
        v10 = *(v8 + 104);
        if ((v10 & 0x86) == 0)
        {
          goto LABEL_16;
        }

        if (*(v8 + 56) > 0.00001)
        {
          break;
        }

LABEL_17:
        v8 += 240;
        v9 -= 240;
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      *(v8 + 104) = v10 & 0xFFFFFF79;
      v11 = *(a4 + 7);
      if (v11)
      {
        KB::Word::capitalized_string(&v25, v8);
        v13 = v26;
        if (!v26)
        {
          v13 = v27;
        }

        if (v25)
        {
          v14 = v13;
        }

        else
        {
          v14 = "";
        }

        KB::append_format(v11, "[%s] updated no-suggest/no-predict flags for high frequency words\n", v12, v14);
        if (v26 && BYTE6(v25) == 1)
        {
          free(v26);
        }
      }

LABEL_16:
      ++v7;
      goto LABEL_17;
    }

LABEL_18:
    v6 += 125;
  }

  while (v6 != v23);
  if (!v7)
  {
    v6 = *a2;
    v5 = *(a2 + 1);
LABEL_21:
    if (v6 != v5)
    {
      v24 = v5;
      do
      {
        if (*v6)
        {
          v15 = v6[1];
          v16 = 240 * *v6;
          do
          {
            v17 = *(v15 + 26);
            if ((v17 & 0x86) != 0)
            {
              *(v15 + 26) = v17 & 0xFFFFFF79;
              v18 = *(a4 + 7);
              if (v18)
              {
                KB::Word::capitalized_string(&v25, v15);
                v20 = v26;
                if (!v26)
                {
                  v20 = v27;
                }

                if (v25)
                {
                  v21 = v20;
                }

                else
                {
                  v21 = "";
                }

                KB::append_format(v18, "[%s] updated no-suggest/no-predict flags as there are no other suggestable candidates\n", v19, v21);
                if (v26)
                {
                  if (BYTE6(v25) == 1)
                  {
                    free(v26);
                  }
                }
              }
            }

            v15 = (v15 + 240);
            v16 -= 240;
          }

          while (v16);
        }

        v6 += 125;
      }

      while (v6 != v24);
    }
  }
}

uint64_t KB::RescoreShortWords::update_candidate_probability_if_better(KB::RescoreShortWords *this, KB::Candidate *a2, KB::Candidate *a3, const KB::CandidateFilterLookupContext *a4, const KB::CandidateFilterResources *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 3);
  v8 = *(a5 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = *(a5 + 3);
    v10 = *(a5 + 4);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 16))(v9) ^ 1;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 1;
    if (v8)
    {
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  if ((v11 & 1) == 0)
  {
    if (*a3)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(1);
    }

    v15 = 0uLL;
    v16 = 0;
    v12 = *(a5 + 4);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    KB::Candidate::Candidate(&v17, a3);
    memset(v14, 0, sizeof(v14));
    std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate const*,KB::Candidate const*>(v14, &v17, &v18);
  }

  return 0;
}

BOOL KB::RescoreShortWords::is_word_replaceable(KB::RescoreShortWords *this, const KB::Word *a2)
{
  if (!TIIsLexiconIDEnglish(*(a2 + 34)))
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    v3 = a2 + 16;
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v4);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(__p) != 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&KB::RescoreShortWords::short_word_map + 1);
  if (!*(&KB::RescoreShortWords::short_word_map + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&KB::RescoreShortWords::short_word_map + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&KB::RescoreShortWords::short_word_map + 1))
    {
      v9 = v4 % *(&KB::RescoreShortWords::short_word_map + 1);
    }
  }

  else
  {
    v9 = (*(&KB::RescoreShortWords::short_word_map + 1) - 1) & v4;
  }

  v10 = *(KB::RescoreShortWords::short_word_map + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t KB::RescoreShortWords::update_candidate_probability(KB::RescoreShortWords *this, KB::Candidate *a2, KB::Candidate *a3, const KB::CandidateFilterLookupContext *a4, const KB::CandidateFilterResources *a5)
{
  v5 = *(this + 4);
  if (v5)
  {
    return (*(*v5 + 48))(v5, a2, a3, a4, a5);
  }

  else
  {
    return KB::RescoreShortWords::update_candidate_probability_if_better(0, a2, a3, a4, a5);
  }
}

void KB::RescoreShortWords::filter_candidates(KB::RescoreShortWords *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, atomic_uint **a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v30 = *(a2 + 1);
  if (*a2 == v30)
  {
    return;
  }

  v6 = 0;
  v29 = MEMORY[0x277D85DD0];
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v34[0] = v29;
    v34[1] = 0x40000000;
    v35 = ___ZNK2KB17RescoreShortWords17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke;
    v36 = &__block_descriptor_tmp_11947;
    v37 = this;
    if (v7)
    {
      v9 = 0;
      v10 = 240 * v7;
      do
      {
        v9 += (v35)(v34, v8);
        v8 += 240;
        v10 -= 240;
      }

      while (v10);
      if (v9 && 1 << v9 >= 2)
      {
        v12 = 1;
        v33 = 1 << v9;
        while (1)
        {
          KB::Candidate::Candidate(v45, v4);
          KB::Candidate::clear(v45);
          if (*v4)
          {
            break;
          }

LABEL_44:
          if (!*(v4 + 444))
          {
            KB::Candidate::compute_string(v4);
          }

          if (!v46[0])
          {
            KB::Candidate::compute_string(v45);
          }

          if (v4 == v45 || KB::String::equal((v4 + 111), v46, 1, v13, v14))
          {
            updated = 0;
          }

          else
          {
            updated = KB::RescoreShortWords::update_candidate_probability(this, v4, v45, a3, a4);
          }

          KB::Candidate::~Candidate(v45);
          v6 |= updated;
          if (++v12 == v33)
          {
            goto LABEL_53;
          }
        }

        v15 = 0;
        v16 = v4[1];
        v17 = 240 * *v4;
        while (TIIsLexiconIDEnglish(*(v16 + 136)))
        {
          if (*v16)
          {
            if (*(v16 + 8))
            {
              v18 = *(v16 + 8);
            }

            else
            {
              v18 = (v16 + 16);
            }
          }

          else
          {
            v18 = "";
          }

          std::string::basic_string[abi:nn200100]<0>(__p, v18);
          v20 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(__p);
          if (v20)
          {
            v19 = (v15 + 1);
            if ((v12 >> v15))
            {
              v21 = (v20 + 5);
              if (*(v20 + 63) < 0)
              {
                v21 = *v21;
              }

              KB::String::String(v43, v21);
              v22 = a4[2];
              if (v22)
              {
                atomic_fetch_add(v22, 1u);
              }

              KB::String::String(v40, v43);
              KB::DictionaryContainer::word_with_string(v42, v22, v40, *(v16 + 136));
              if (v41 && v40[6] == 1)
              {
                free(v41);
              }

              if (v22)
              {
                WTF::RefCounted<KB::DictionaryContainer>::deref(v22);
              }

              KB::Candidate::append(v45, v42);
              KB::Word::~Word(v42);
              if (v44 && v43[6] == 1)
              {
                free(v44);
              }

              v23 = 0;
            }

            else
            {
              v23 = 1;
            }
          }

          else
          {
            v23 = 1;
            v19 = v15;
          }

          if (v39 < 0)
          {
            operator delete(__p[0]);
            if (!v23)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          }

          if (v23)
          {
            goto LABEL_39;
          }

LABEL_40:
          v16 += 240;
          v15 = v19;
          v17 -= 240;
          if (!v17)
          {
            goto LABEL_44;
          }
        }

        v19 = v15;
LABEL_39:
        KB::Candidate::append(v45, v16);
        goto LABEL_40;
      }
    }

LABEL_53:
    v4 += 125;
  }

  while (v4 != v30);
  if (v6)
  {
    v25 = *(a2 + 1);
    v26 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v25 - *a2) >> 3));
    if (v25 == *a2)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a2, v25, v27, 1);
  }
}

void KB::RescoreShortWords::~RescoreShortWords(KB::RescoreShortWords *this)
{
  *this = &unk_283FDAF40;
  std::__function::__value_func<BOOL ()(KB::Candidate &,KB::Candidate &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)>::~__value_func[abi:nn200100](this + 8);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDAF40;
  std::__function::__value_func<BOOL ()(KB::Candidate &,KB::Candidate &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)>::~__value_func[abi:nn200100](this + 8);
}

uint64_t std::unordered_map<std::string,std::string>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
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

void TI::TIInputRecognizer::update_transcoder(TI::TIInputRecognizer *this)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x4002000000;
  v16[3] = __Block_byref_object_copy__11965;
  v16[4] = __Block_byref_object_dispose__11966;
  memset(v17, 0, sizeof(v17));
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x4002000000;
  v12[3] = __Block_byref_object_copy__1;
  v12[4] = __Block_byref_object_dispose__2;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v2 = *(this + 1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v8 = ___ZN2TI17TIInputRecognizer17update_transcoderEv_block_invoke;
  v9 = &unk_278731868;
  v10 = v16;
  v11 = v12;
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 8)
  {
    v8(v7, v3);
  }

  if (*(this + 8))
  {
    ITTouchTranscoderUpdateKeyboardLayout();
  }

  else
  {
    TI::TIInputRecognizer::create_transcoder(this);
    v5 = *(this + 5);
    if (v5)
    {
      v6 = (*(*v5 + 48))(v5);
      TI::TIInputRecognizer::load_lexicons_if_needed(this, *(*v6 + 24));
    }

    TI::TIInputRecognizer::create_transcoder_session(this);
  }

  _Block_object_dispose(v12, 8);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v16, 8);
  v12[0] = v17;
  std::vector<KB::retain_ptr<__CFString const*>>::__destroy_vector::operator()[abi:nn200100](v12);
}

__n128 __Block_byref_object_copy__11965(void *a1, uint64_t a2)
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

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN2TI17TIInputRecognizer17update_transcoderEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  KB::cf_string_impl<KB::String>(&cf, (*a2 + 8));
  v6 = v4[6];
  v5 = v4[7];
  if (v6 >= v5)
  {
    v7 = v4[5];
    v8 = v6 - v7;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

LABEL_37:
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * v8);
    v13 = cf;
    cf = 0;
    v14 = &v12[-(v6 - v7)];
    *v12 = v13;
    v15 = v12 + 1;
    if (v7 != v6)
    {
      v16 = v7;
      v17 = v14;
      do
      {
        v18 = *v16;
        *v16++ = 0;
        *v17++ = v18;
      }

      while (v16 != v6);
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
        }

        *v7++ = 0;
      }

      while (v7 != v6);
      v7 = v4[5];
    }

    v4[5] = v14;
    v4[6] = v15;
    v4[7] = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v19 = cf;
    v4[6] = v15;
    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    *v6 = cf;
    v4[6] = v6 + 1;
  }

  v20 = *(*a2 + 96);
  v21 = *(*a2 + 64);
  v23 = *(*a2 + 80);
  v22 = *(*a2 + 88);
  v24 = *(*(*(*(a1 + 32) + 8) + 48) - 8);
  v25 = *(*(a1 + 40) + 8);
  v26 = v25[6];
  v27 = v25[7];
  if (v26 < v27)
  {
    *v26 = v20;
    *(v26 + 16) = v21;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    v28 = v26 + 56;
    *(v26 + 48) = v24;
    goto LABEL_36;
  }

  v29 = v25[5];
  v30 = v26 - v29;
  v31 = 0x6DB6DB6DB6DB6DB7 * ((v26 - v29) >> 3);
  v32 = v31 + 1;
  if ((v31 + 1) > 0x492492492492492)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v33 = 0x6DB6DB6DB6DB6DB7 * ((v27 - v29) >> 3);
  if (2 * v33 > v32)
  {
    v32 = 2 * v33;
  }

  if (v33 >= 0x249249249249249)
  {
    v34 = 0x492492492492492;
  }

  else
  {
    v34 = v32;
  }

  if (v34)
  {
    if (v34 <= 0x492492492492492)
    {
      operator new();
    }

    goto LABEL_37;
  }

  v35 = 56 * v31;
  *v35 = v20;
  *(v35 + 16) = v21;
  *(v35 + 32) = v23;
  *(v35 + 40) = v22;
  *(v35 + 48) = v24;
  v28 = 56 * v31 + 56;
  v36 = v35 - v30;
  memcpy((v35 - v30), v29, v30);
  v25[5] = v36;
  v25[6] = v28;
  v25[7] = 0;
  if (v29)
  {
    operator delete(v29);
  }

LABEL_36:
  v25[6] = v28;
}

void TI::TIInputRecognizer::create_transcoder(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v2 = *v2;
  }

  KB::String::String(__p, v2);
  KB::cf_string_impl<KB::String>(&value, __p);
  if (*&__p[8])
  {
    v3 = __p[6] == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    free(*&__p[8]);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = value;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C130], value);
  if (*(a1 + 240))
  {
    v6 = MEMORY[0x277D1C120];
  }

  else
  {
    v6 = MEMORY[0x277D1C118];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C110], *v6);
  if (*(a1 + 232) == 1)
  {
    v7 = *(a1 + 231);
    if (v7 < 0)
    {
      v7 = *(a1 + 216);
    }

    if (v7)
    {
      v8 = (a1 + 208);
      Default = CFAllocatorGetDefault();
      v10 = (a1 + 208);
      if (*(a1 + 231) < 0)
      {
        v10 = *v8;
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v10);
      KB::cf_string(__p, &URLString);
      v11 = URLString;
      v12 = CFURLCreateWithString(Default, URLString, 0);
      if (v11)
      {
        CFRelease(v11);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(*__p);
        if (v12)
        {
          goto LABEL_22;
        }
      }

      else if (v12)
      {
LABEL_22:
        CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C108], v12);
        CFRelease(v12);
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 231) < 0)
        {
          v8 = *v8;
        }

        *__p = 136315394;
        *&__p[4] = "create_transcoder";
        *&__p[12] = 2080;
        *&__p[14] = v8;
        _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Failed to create CFURL from url string: %s, will be using the default bundle.", __p, 0x16u);
      }
    }
  }

LABEL_25:
  URLString = 0;
  v13 = ITTouchTranscoderCreateWithKeyboardLayout();
  v14 = *(a1 + 64);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 64) = v13;
  v15 = URLString;
  if (URLString)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 240);
      *&__p[4] = "create_transcoder";
      *__p = 136315650;
      if (v16 == 1)
      {
        v17 = "TapTyping";
      }

      else
      {
        v17 = "ContinuousPath";
      }

      *&__p[12] = 2080;
      *&__p[14] = v17;
      v21 = 2112;
      v22 = v15;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  failed to create touch transcoder for %s Error: %@", __p, 0x20u);
      v15 = URLString;
    }

    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t TI::TIInputRecognizer::load_lexicons_if_needed(uint64_t this, const KB::DynamicDictionary *a2)
{
  if (*(this + 64))
  {
    v3 = this;
    if (KB::DynamicDictionary::named_entity_lexicon(a2) && (*(v3 + 275) & 1) == 0)
    {
      KB::DynamicDictionary::named_entity_lexicon(a2);
      ITTouchTranscoderAddLexicon();
      *(v3 + 275) = 1;
    }

    v4 = *(a2 + 3);
    if (v4)
    {
      v5 = *v4;
      if (v5)
      {
        if (*v5 && (*(v3 + 272) & 1) == 0)
        {
          ITTouchTranscoderAddLexicon();
          *(v3 + 272) = 1;
        }
      }
    }

    if (*(a2 + 1) && (*(v3 + 273) & 1) == 0)
    {
      ITTouchTranscoderAddLexicon();
      *(v3 + 273) = 1;
    }

    if (*(a2 + 2) && *(v3 + 274) == 1)
    {
      ITTouchTranscoderAddLexicon();
      *(v3 + 274) = 1;
    }

    ActiveSupplementalLexiconWords = TITransientLexiconManagerGetActiveSupplementalLexiconWords();
    v7 = *(v3 + 280);
    if (ActiveSupplementalLexiconWords != v7)
    {
      v8 = ActiveSupplementalLexiconWords;
      if (v7)
      {
        ITTouchTranscoderRemoveLexicon();
      }

      if (v8)
      {
        ITTouchTranscoderAddLexicon();
      }

      *(v3 + 280) = v8;
    }

    this = (*(*a2 + 80))(a2);
    if (this && (*(v3 + 276) & 1) == 0)
    {
      this = (*(*a2 + 88))(a2, 0);
      if (this)
      {
        (*(*a2 + 88))(a2, 0);
        this = ITTouchTranscoderAddLexicon();
        *(v3 + 276) = 1;
      }
    }
  }

  return this;
}

void TI::TIInputRecognizer::create_transcoder_session(TI::TIInputRecognizer *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 8) && !*(this + 9))
  {
    Session = ITTouchTranscoderCreateSession();
    v3 = *(this + 9);
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 9) = Session;
    if (!Session && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = "ContinuousPath";
      if (*(this + 30) == 1)
      {
        v4 = "TapTyping";
      }

      v5 = 136315394;
      v6 = "create_transcoder_session";
      v7 = 2080;
      v8 = v4;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Failed to create touch transcoder session for %s", &v5, 0x16u);
    }
  }
}

void std::vector<KB::retain_ptr<__CFString const*>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        if (v7)
        {
          CFRelease(v6);
        }

        *v4 = 0;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void TI::TIInputRecognizer::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t TI::TIInputRecognizer::text_accepted_from_UI(TI::TIInputRecognizer *this, const KB::String *a2, const KB::String *a3)
{
  result = *(this + 5);
  if (result)
  {
    v5 = *(*(*(*result + 48))(result, a2, a3) + 24);

    return TI::TIInputRecognizer::load_lexicons_if_needed(this, v5);
  }

  return result;
}

void TI::TIInputRecognizer::generate_candidates(TI::CP::TIPathRecognizerInterface *a1, KB::Candidate **a2, uint64_t a3)
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  v11 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    v11 = v7;
    TI::TIInputRecognizer::generate_candidates(a1, &v11, &__block_literal_global_11974);
    CFRelease(v7);
  }

  else
  {
    TI::TIInputRecognizer::generate_candidates(a1, &v11, &__block_literal_global_11974);
  }

  v8 = *(a1 + 10);
  v9 = *(a1 + 11);
  while (v8 != v9)
  {
    v10 = *v8++;
    TI::TIInputRecognizer::addCandidatesForITCandidate(a1, a2, v10, v3);
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t TI::TIInputRecognizer::generate_candidates(uint64_t this, uint64_t *a2, uint64_t a3)
{
  if (*(this + 64) && *(this + 80) == *(this + 88) && *(this + 72))
  {
    this = TI::CP::TIPathRecognizerInterface::should_generate_candidates(this);
    if (this)
    {
      return ITTouchTranscoderSessionEnumerateCandidatesWithOptions();
    }
  }

  return this;
}

void TI::TIInputRecognizer::addCandidatesForITCandidate(uint64_t a1, KB::Candidate **a2, uint64_t a3, int a4)
{
  v65 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) && (v4 = a2, ITCandidateIsValidWord()))
  {
    v5 = *(a1 + 40);
    if (!ITCandidateIsMultiWord())
    {
      String = ITCandidateGetString();
      KB::utf8_string(v57, String);
      v29 = v57[1];
      if (!v57[1])
      {
        v29 = &v58;
      }

      if (LOWORD(v57[0]))
      {
        v30 = v29;
      }

      else
      {
        v30 = "";
      }

      std::string::basic_string[abi:nn200100]<0>(v44, v30);
      if (v57[1] && BYTE6(v57[0]) == 1)
      {
        free(v57[1]);
      }

      v31 = *(*(*v5 + 48))(v5);
      *&v36 = v31;
      if (v31)
      {
        atomic_fetch_add(v31, 1u);
      }

      if ((SBYTE7(v45[0]) & 0x80u) == 0)
      {
        v32 = v44;
      }

      else
      {
        v32 = v44[0];
      }

      KB::String::String(v57, v32);
      TI::Favonius::DictionaryHypothesis::create(&valuePtr, &v36, v57);
    }

    v6 = *(*(*v5 + 48))(v5);
    v49 = v6;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = ITCandidateGetString();
    KB::utf8_string(v53, v7);
    KB::word_ranges(__p, v53, 0);
    v47 = 0;
    *v44 = 0u;
    memset(v45, 0, sizeof(v45));
    memset(v46, 0, sizeof(v46));
    v8 = __p[0];
    if (__p[0] != __p[1])
    {
      v9 = v55;
      if (!v55)
      {
        v9 = &v56;
      }

      v57[0] = v9;
      LODWORD(v57[1]) = 0;
      HIDWORD(v57[1]) = v53[0];
      LODWORD(v58) = 0;
      KB::String::iterator::initialize(v57);
      v10 = *v8;
      v42 = *v57;
      v43 = v58;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v42, v10);
      v11 = v8[1];
      v40 = v42;
      v41 = v43;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v40, v11);
      KB::String::String(v52, &v42, &v40);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      TI::Favonius::DictionaryHypothesis::create(v57, &v49, v52);
    }

    v57[0] = &v46[1] + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v57);
    v57[0] = v46;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v57);
    v57[0] = v45 + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v57);
    v57[0] = v44;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v57);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v55 && v54 == 1)
    {
      free(v55);
    }

    if (v49)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v49);
    }
  }

  else
  {
    v12 = ITCandidateGetString();
    KB::utf8_string(&valuePtr, v12);
    KB::Candidate::Candidate(v57, &valuePtr, 0);
    if (v51 && BYTE6(valuePtr) == 1)
    {
      free(v51);
    }

    IsCompletion = ITCandidateIsCompletion();
    v64 = ITCandidateIsValidWord() ^ 1;
    UnshiftMask = ITCandidateGetUnshiftMask();
    ITCandidateGetScore();
    v14 = v13;
    v15 = logf(v13);
    v59 = v15;
    if (a4 >= 1)
    {
      v16 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      valuePtr = v14;
      v18 = CFNumberCreate(v16, kCFNumberDoubleType, &valuePtr);
      CFDictionarySetValue(Mutable, @"lstm_prob", v18);
      if (v18)
      {
        CFRelease(v18);
      }

      CFDictionarySetValue(Mutable, @"source", @"ml");
      CFDictionarySetValue(Mutable, @"sort_key_expanded", @"no");
      StrokedPath = ITCandidateGetStrokedPath();
      CFDictionarySetValue(Mutable, @"stroked_path", StrokedPath);
      KB::Candidate::add_sources_info(v57, @"ml", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v60 = v15;
    v61 = xmmword_22CC88B00;
    v4 = a2;
    std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v57);
    KB::Candidate::~Candidate(v57);
  }

  if (*(a1 + 240))
  {
    v20 = 4;
  }

  else
  {
    v20 = 3;
  }

  v21 = *v4;
  v22 = v4[1];
  if (*v4 != v22)
  {
    v23 = 0;
    v24 = v22 - v21 - 1000;
    v25 = vdupq_n_s64(v24 / 0x3E8);
    do
    {
      v26 = vdupq_n_s64(v23);
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v26, xmmword_22CC88AA0)));
      if (vuzp1_s16(v27, *v25.i8).u8[0])
      {
        *(v21 + 248) = v20;
      }

      if (vuzp1_s16(v27, *&v25).i8[2])
      {
        *(v21 + 498) = v20;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v26, xmmword_22CC88A90)))).i32[1])
      {
        *(v21 + 748) = v20;
        *(v21 + 998) = v20;
      }

      v23 += 4;
      v21 = (v21 + 4000);
    }

    while (((v24 / 0x3E8 + 4) & 0xFFFFFFFFFFFFFCLL) != v23);
  }
}

void TI::create_kb_candidate(KB::Candidate *a1, size_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v53 = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(a1, a2);
  v11 = *a4;
  if (*a4)
  {
    v12 = *(v11 + 100);
    v13 = (v12 * KB::DictionaryCursors::termination_probability((v11 + 16), *(v11 + 8))) * *(a2 + 12);
  }

  else
  {
    v13 = *(a2 + 13);
  }

  v15 = *a1;
  v14 = *(a1 + 1);
  if (*a1)
  {
    v16 = 240 * v15;
    v17 = *(a1 + 1);
    while ((*(v17 + 105) & 1) == 0)
    {
      v17 += 240;
      v16 -= 240;
      if (!v16)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v17 = *(a1 + 1);
  }

  if (v17 != v14 + 240 * v15)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v15)
  {
    v18 = 240 * v15 - 240;
    v19 = (v14 + 224);
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
LABEL_19:
      v13 = v13 * 0.8;
    }
  }

  KB::LanguageModelContext::operator=(a1 + 784, a5);
  *(*(a1 + 1) + 240 * *a1 - 188) = v13;
  ITCandidateGetScore();
  v24 = logf(v23);
  *(a1 + 186) = v24;
  *(a1 + 187) = v24;
  *(a1 + 47) = xmmword_22CC88B00;
  *(a1 + 960) = ITCandidateIsCompletion();
  *(a1 + 961) = ITCandidateIsValidWord() ^ 1;
  *(a1 + 195) = ITCandidateGetUnshiftMask();
  v25 = *a1;
  v26 = *(a1 + 1);
  ITCandidateGetScore();
  v28 = v27;
  String = ITCandidateGetString();
  KB::utf8_string(&valuePtr, String);
  v30 = v51;
  if (!v51)
  {
    v30 = &v52;
  }

  if (LOWORD(valuePtr))
  {
    v31 = v30;
  }

  else
  {
    v31 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v31);
  if (v51 && BYTE6(valuePtr) == 1)
  {
    free(v51);
  }

  if (a6 >= 1)
  {
    v32 = v26 + 240 * v25;
    v33 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (*(v32 - 240))
    {
      if (*(v32 - 232))
      {
        v35 = *(v32 - 232);
      }

      else
      {
        v35 = (v32 - 224);
      }
    }

    else
    {
      v35 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&valuePtr, v35);
    v36 = SHIBYTE(v52);
    v38 = valuePtr;
    v37 = v51;
    v39 = v49;
    if ((v49 & 0x80u) == 0)
    {
      v40 = __p;
    }

    else
    {
      v39 = __p[1];
      v40 = __p[0];
    }

    if (v52 < 0)
    {
      p_valuePtr = *&valuePtr;
    }

    else
    {
      v37 = SHIBYTE(v52);
      p_valuePtr = &valuePtr;
    }

    if (v37 >= v39)
    {
      v42 = v39;
    }

    else
    {
      v42 = v37;
    }

    v43 = v37 == v39;
    if (memcmp(v40, p_valuePtr, v42))
    {
      v43 = 0;
    }

    if (v36 < 0)
    {
      operator delete(*&v38);
    }

    if (v43)
    {
      v44 = @"no";
    }

    else
    {
      v44 = @"yes";
    }

    CFDictionarySetValue(Mutable, @"sort_key_expanded", v44);
    valuePtr = v28;
    v45 = CFNumberCreate(v33, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"lstm_prob", v45);
    if (v45)
    {
      CFRelease(v45);
    }

    valuePtr = v13;
    v46 = CFNumberCreate(v33, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"uni_prob", v46);
    if (v46)
    {
      CFRelease(v46);
    }

    StrokedPath = ITCandidateGetStrokedPath();
    CFDictionarySetValue(Mutable, @"stroked_path", StrokedPath);
    CFDictionarySetValue(Mutable, @"source", @"ml");
    KB::Candidate::add_sources_info(a1, @"ml", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    v3 = *(result + 72);
    *(v1 + 72) = 0;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    v4 = 32;
    while (1)
    {
      v5 = *(v1 + v4);
      if (v5)
      {
        CFRelease(v5);
      }

      *(v1 + v4) = 0;
      v4 -= 8;
      if (v4 == 8)
      {
        v6 = *(v1 + 8);
        if (v6)
        {
          WTF::RefCounted<KB::DictionaryContainer>::deref(v6);
        }

        JUMPOUT(0x2318BE270);
      }
    }
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

BOOL TI::CP::TIPathRecognizerInterface::should_generate_candidates(TI::CP::TIPathRecognizerInterface *this)
{
  if ((*(*this + 40))(this) == 7)
  {
    return 0;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v4.x = (*(*this + 48))(this);
  return !TI::Favonius::KeyboardLayout::is_far_away_point(v2, v4);
}

void ___ZN2TI17TIInputRecognizer19generate_candidatesEN2KB10retain_ptrIP14__CFDictionaryEEU13block_pointerFbP11__CandidateE_block_invoke(uint64_t a1, const void *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  String = ITCandidateGetString();
  KB::utf8_string(v18, String);
  v6 = v20;
  if (!v20)
  {
    v6 = v21;
  }

  if (v18[0])
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v7);
  if (v20 && v19 == 1)
  {
    free(v20);
  }

  if ((v17 & 0x80u) == 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v16;
  }

  if (!v8)
  {
    if ((v17 & 0x80) == 0)
    {
      return;
    }

    v11 = __p;
    goto LABEL_38;
  }

  if ((v17 & 0x80) != 0)
  {
    if (v16 != 3)
    {
      v11 = __p;
      if (v16 == 1)
      {
        v14 = *__p;
        operator delete(__p);
        if (v14 == 95)
        {
          return;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    }

    v11 = __p;
    if ((*__p != 20053 || *(__p + 2) != 75) && (*__p != 28277 || *(__p + 2) != 107))
    {
LABEL_44:
      operator delete(v11);
      goto LABEL_45;
    }

LABEL_38:
    operator delete(v11);
    return;
  }

  if (v17 == 1)
  {
    if (__p == 95)
    {
      return;
    }

    goto LABEL_45;
  }

  if (v17 != 3 || (__p == 20053 ? (v9 = BYTE2(__p) == 75) : (v9 = 0), !v9 && (__p == 28277 ? (v10 = BYTE2(__p) == 107) : (v10 = 0), !v10)))
  {
LABEL_45:
    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      TI::TIInputRecognizer::add_candidate_to_cache(v4, a2);
    }
  }
}

void TI::TIInputRecognizer::add_candidate_to_cache(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v5 = a1[11];
  v4 = a1[12];
  if (v5 >= v4)
  {
    v7 = a1[10];
    v8 = v5 - v7;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * v8);
    v13 = &v12[-(v5 - v7)];
    *v12 = cf;
    v6 = v12 + 1;
    if (v7 != v5)
    {
      v14 = v7;
      v15 = v13;
      do
      {
        v16 = *v14;
        *v14++ = 0;
        *v15++ = v16;
      }

      while (v14 != v5);
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
        }

        *v7++ = 0;
      }

      while (v7 != v5);
      v7 = a1[10];
    }

    a1[10] = v13;
    a1[11] = v6;
    a1[12] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = cf;
    v6 = v5 + 1;
  }

  a1[11] = v6;
}

void TI::TIInputRecognizer::reset_session(TI::TIInputRecognizer *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 9) = 0;
  TI::TIInputRecognizer::create_transcoder_session(this);
  *(this + 66) = 7;

  std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
}

void TI::TIInputRecognizer::add_touch(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100]((a1 + 80));
  v10 = *(a1 + 8);
  v11 = *(v10 + 200);
  v12 = ((*(v10 + 16) - *(v10 + 8)) >> 3) >> 1;
  if (v11 > 0xB || v12 < v11)
  {
    *(a1 + 248) = a3;
    *(a1 + 256) = a4;
    *(a1 + 264) = a2;
    if (*(a1 + 240) != 1)
    {
      if (*(a1 + 72))
      {
        ITTouchTranscoderSessionAddEventWithTouchKeyInfo();
      }
    }
  }
}

void TI::TIInputRecognizer::~TIInputRecognizer(void **this)
{
  TI::TIInputRecognizer::~TIInputRecognizer(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDAF88;
  if (*(this + 232) == 1 && *(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v10 = this + 23;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v10);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 22));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 21));
  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (this[10])
  {
    std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
    operator delete(this[10]);
  }

  v4 = this[9];
  if (v4)
  {
    CFRelease(v4);
  }

  this[9] = 0;
  v5 = this[8];
  if (v5)
  {
    CFRelease(v5);
  }

  this[8] = 0;
  v6 = this[7];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = this[5];
  if (v7)
  {
    v8 = atomic_load(v7 + 2);
    if (v8 == 1)
    {
      (*(*v7 + 40))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  *this = &unk_283FDDD68;
  v9 = this[1];
  if (v9)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v9);
  }
}

uint64_t TI::TIInputRecognizer::TIInputRecognizer(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  *a1 = &unk_283FDAF88;
  *(a1 + 8) = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v9;
  }

  v10 = *a3;
  *a3 = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 168));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 176));
  *(a1 + 208) = 0;
  v11 = (a1 + 208);
  *(a1 + 232) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  if (*(a5 + 24) == 1)
  {
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v11, *a5, *(a5 + 1));
    }

    else
    {
      v12 = *a5;
      *(a1 + 224) = *(a5 + 2);
      *&v11->__r_.__value_.__l.__data_ = v12;
    }

    *(a1 + 232) = 1;
  }

  *(a1 + 240) = a2;
  *(a1 + 264) = 7;
  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  return a1;
}

void TI::TIInputRecognizer::recreate_transcoder(TI::TIInputRecognizer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 8) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 9) = 0;

  TI::TIInputRecognizer::update_transcoder(this);
}

BOOL TI::TIInputRecognizer::is_ready(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRetain(*(a1 + 64));
    CFRelease(v1);
  }

  return v1 != 0;
}

void TI::TIInputRecognizer::process_candidates_from_cache(uint64_t a1, KB::Candidate **a2, int a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  while (v3 != v4)
  {
    v8 = *v3++;
    TI::TIInputRecognizer::addCandidatesForITCandidate(a1, a2, v8, a3);
  }
}

void TI::TIInputRecognizer::generate_mltt_autocorrection_candidates(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a4;
  v50 = *MEMORY[0x277D85DE8];
  if (a1[30] == 1)
  {
    v7 = a1;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    KB::cf_string_impl<KB::String>(&value, a2);
    v9 = value;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C140], value);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C138], *MEMORY[0x277CBED28]);
    if (*(a3 + 64) == 1)
    {
      KB::cf_string_impl<KB::String>(&v42, a3);
      KB::cf_string_impl<KB::String>(v35, (a3 + 32));
      v10 = v42;
      CFDictionaryAddValue(Mutable, @"previousTypedString", v42);
      v11 = v35[0];
      CFDictionaryAddValue(Mutable, @"previousCandidateString", v35[0]);
      if (v11)
      {
        CFRelease(v11);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    v39 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
      v39 = Mutable;
      TI::TIInputRecognizer::generate_candidates(v7, &v39, &__block_literal_global_13);
      CFRelease(Mutable);
    }

    else
    {
      TI::TIInputRecognizer::generate_candidates(v7, &v39, &__block_literal_global_13);
    }

    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v13 = v7[10];
    v12 = v7[11];
    if (v13 != v12)
    {
      v30 = Mutable;
      v31 = v4;
      v14 = 0;
      v32 = v7[11];
      v33 = v7;
      do
      {
        v38 = 0;
        *v35 = 0u;
        memset(v36, 0, sizeof(v36));
        memset(v37, 0, sizeof(v37));
        TI::TIInputRecognizer::addCandidatesForITCandidate(v7, v35, *v13, 0);
        v15 = ITCandidateCopyPrefix();
        KB::utf8_string(v48, v15);
        KB::String::String(&v42, v48);
        KB::CandidateCollection::CandidateCollection(v44, v35);
        v16 = v4[2];
        if (v14 >= v16)
        {
          v17 = 0xF0F0F0F0F0F0F0F1 * ((v14 - *v4) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0x1E1E1E1E1E1E1E1)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v19 = 0xF0F0F0F0F0F0F0F1 * ((v16 - *v4) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0xF0F0F0F0F0F0F0)
          {
            v20 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (v20 <= 0x1E1E1E1E1E1E1E1)
            {
              operator new();
            }

            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v14 = 8 * ((v14 - *v4) >> 3);
          KB::String::String((136 * v17), &v42);
          KB::CandidateCollection::CandidateCollection((136 * v17 + 32), v44);
          v21 = *v4;
          v22 = v4[1];
          v34 = &v22[-*v4];
          if (v22 != *v4)
          {
            v23 = 0;
            v24 = -8 * ((v22 - v21) >> 3) + 136 * v17;
            do
            {
              v25 = v24 + v23;
              *v25 = 0x100000;
              v26 = &v21[v23];
              *(v25 + 4) = 0;
              *(v25 + 6) = 0;
              *(v25 + 8) = 0;
              v27 = KB::String::operator=(v24 + v23, &v21[v23]);
              v27[4] = 0;
              v27[5] = 0;
              v27[6] = 0;
              *(v27 + 2) = *&v21[v23 + 32];
              v27[6] = *&v21[v23 + 48];
              *(v26 + 4) = 0;
              *(v26 + 5) = 0;
              *(v26 + 6) = 0;
              v27[7] = 0;
              v27[8] = 0;
              v27[9] = 0;
              *(v27 + 7) = *&v21[v23 + 56];
              v27[9] = *&v21[v23 + 72];
              *(v26 + 7) = 0;
              *(v26 + 8) = 0;
              *(v26 + 9) = 0;
              v27[10] = 0;
              v27[11] = 0;
              v27[12] = 0;
              *(v27 + 5) = *&v21[v23 + 80];
              v27[12] = *&v21[v23 + 96];
              *(v26 + 10) = 0;
              *(v26 + 11) = 0;
              *(v26 + 12) = 0;
              v27[13] = 0;
              v27[14] = 0;
              v27[15] = 0;
              *(v27 + 13) = *&v21[v23 + 104];
              v27[15] = *&v21[v23 + 120];
              *(v26 + 13) = 0;
              *(v26 + 14) = 0;
              *(v26 + 15) = 0;
              v27[16] = *&v21[v23 + 128];
              v23 += 136;
            }

            while (&v21[v23] != v22);
            v4 = v31;
            do
            {
              v41 = (v21 + 104);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
              v41 = (v21 + 80);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
              v41 = (v21 + 56);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
              v41 = (v21 + 32);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
              v28 = *(v21 + 1);
              if (v28 && v21[6] == 1)
              {
                free(v28);
              }

              v21 += 136;
            }

            while (v21 != v22);
          }

          v29 = *v4;
          *v4 = v14 - v34;
          v4[2] = 0;
          if (v29)
          {
            operator delete(v29);
          }

          v12 = v32;
          v7 = v33;
        }

        else
        {
          KB::String::String(v14, &v42);
          KB::CandidateCollection::CandidateCollection((v14 + 32), v44);
        }

        v14 += 136;
        v4[1] = v14;
        v41 = &v47;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
        v41 = &v46;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
        v41 = &v45;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
        v41 = v44;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v41);
        if (v43 && BYTE6(v42) == 1)
        {
          free(v43);
        }

        if (v49 && v48[6] == 1)
        {
          free(v49);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v42 = &v37[1] + 8;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v42);
        v42 = v37;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v42);
        v42 = v36 + 8;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v42);
        v42 = v35;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v42);
        ++v13;
      }

      while (v13 != v12);
      v9 = value;
      Mutable = v30;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

uint64_t ___ZN2TI17TIInputRecognizer39generate_mltt_autocorrection_candidatesERKN2KB6StringERKNSt3__18optionalINS5_4pairIS2_S2_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!ITCandidateIsValidWord())
  {
    return 1;
  }

  return ITCandidateIsCompletion();
}

uint64_t TI::TIInputRecognizer::is_language_and_layout_supported(uint64_t a1, const KB::String *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  KB::String::String(v12, v3);
  KB::cf_string_impl<KB::String>(&localeIdentifier, v12);
  if (v14)
  {
    v4 = v13 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v14);
  }

  v5 = localeIdentifier;
  if (!localeIdentifier)
  {
    return 0;
  }

  v6 = CFLocaleCreate(*MEMORY[0x277CBECE8], localeIdentifier);
  KB::String::String(v12, a2);
  KB::cf_string_impl<KB::String>(&v10, v12);
  v7 = v10;
  v8 = ITTouchTranscoderSupportsLocaleAndLayout();
  if (v7)
  {
    CFRelease(v7);
  }

  if (v14 && v13 == 1)
  {
    free(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v5);
  return v8;
}

uint64_t TI::TIInputRecognizer::is_ml_based_typing_mode_supported(const UInt8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277CBECE8];
  KB::cf_string(a1, &localeIdentifier);
  v8 = localeIdentifier;
  v9 = CFLocaleCreate(v7, localeIdentifier);
  if (v8)
  {
    CFRelease(v8);
  }

  if (!v9)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C130], v9);
  if (*(a3 + 24) == 1)
  {
    Default = CFAllocatorGetDefault();
    KB::cf_string(a3, &localeIdentifier);
    v12 = localeIdentifier;
    v13 = CFURLCreateWithString(Default, localeIdentifier, 0);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C108], v13);
      CFRelease(v13);
    }
  }

  v14 = *(a2 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  if (v14)
  {
    v15 = *MEMORY[0x277D1C128];
    KB::cf_string(a2, &localeIdentifier);
    v16 = localeIdentifier;
    CFDictionaryAddValue(Mutable, v15, localeIdentifier);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  v17 = MEMORY[0x277D1C118];
  if (a4)
  {
    v17 = MEMORY[0x277D1C120];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C110], *v17);
  v18 = ITTouchTranscoderSupportsConfiguration();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(v9);
  return v18;
}

uint64_t TI::TIInputRecognizer::ml_based_tap_typing_enabled(unsigned __int16 *a1, uint64_t a2, atomic_uint **a3, uint64_t a4)
{
  v55[19] = *MEMORY[0x277D85DE8];
  {
    TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table = 0u;
    *&qword_280FAC340 = 0u;
    dword_280FAC350 = 1065353216;
    __cxa_atexit(std::unordered_map<std::string,BOOL>::~unordered_map[abi:nn200100], &TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table, &dword_22CA55000);
  }

  {
    TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::ml_based_tap_typing_feature_flag = _os_feature_enabled_impl();
  }

  if ((s_ml_based_tap_typing & 1) == 0 && TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::ml_based_tap_typing_feature_flag != 1)
  {
    is_ml_based_typing_mode_supported = 0;
    return is_ml_based_typing_mode_supported & 1;
  }

  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add(v8, 1u);
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&__n);
  v9 = *(a1 + 1);
  if (!v9)
  {
    v9 = a1 + 8;
  }

  v10 = "";
  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, "_", 1);
  v13 = *(a2 + 8);
  if (!v13)
  {
    v13 = (a2 + 16);
  }

  if (*a2)
  {
    v10 = v13;
  }

  v14 = strlen(v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, v10, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, "_", 1);
  MEMORY[0x2318BE080](&__n, v8);
  if (*(a4 + 24) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, "_", 1);
    v15 = *(a4 + 23);
    if (v15 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if (v15 >= 0)
    {
      v17 = *(a4 + 23);
    }

    else
    {
      v17 = *(a4 + 8);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, v16, v17);
  }

  if ((v54 & 0x10) != 0)
  {
    v19 = v53;
    if (v53 < v50)
    {
      v53 = v50;
      v19 = v50;
    }

    locale = v49[4].__locale_;
  }

  else
  {
    if ((v54 & 8) == 0)
    {
      v18 = 0;
      v46 = 0;
      goto LABEL_38;
    }

    locale = v49[1].__locale_;
    v19 = v49[3].__locale_;
  }

  v18 = v19 - locale;
  if ((v19 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  v46 = v19 - locale;
  if (v18)
  {
    memmove(__dst, locale, v18);
  }

LABEL_38:
  *(__dst + v18) = 0;
  __n = *MEMORY[0x277D82828];
  *(&__n + *(__n - 24)) = *(MEMORY[0x277D82828] + 24);
  v48 = (MEMORY[0x277D82878] + 16);
  if (v52 < 0)
  {
    operator delete(__p);
  }

  v48 = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v49);
  std::ostream::~ostream();
  MEMORY[0x2318BE200](v55);
  if (v8)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
  }

  if ((v46 & 0x80u) == 0)
  {
    v22 = __dst;
  }

  else
  {
    v22 = __dst[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v23 = v46;
  }

  else
  {
    v23 = __dst[1];
  }

  v24 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v22, v23);
  v25 = *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
  if (*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
  {
    v26 = v24;
    v27 = vcnt_s8(*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8));
    v27.i16[0] = vaddlv_u8(v27);
    v28 = v27.u32[0];
    if (v27.u32[0] > 1uLL)
    {
      v29 = v24;
      if (v24 >= *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
      {
        v29 = v24 % *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
      }
    }

    else
    {
      v29 = (*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1) - 1) & v24;
    }

    v30 = *(TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8 * v29);
    if (v30)
    {
      for (i = *v30; i; i = *i)
      {
        v32 = i[1];
        if (v32 == v26)
        {
          if (std::equal_to<std::string>::operator()[abi:nn200100](i + 2, __dst))
          {
            is_ml_based_typing_mode_supported = *(i + 40);
            goto LABEL_105;
          }
        }

        else
        {
          if (v28 > 1)
          {
            if (v32 >= v25)
            {
              v32 %= v25;
            }
          }

          else
          {
            v32 &= v25 - 1;
          }

          if (v32 != v29)
          {
            break;
          }
        }
      }
    }
  }

  v33 = *a3;
  if (v33)
  {
    atomic_fetch_add(v33, 1u);
  }

  KB::String::String(&__n, "en");
  if (__n <= *a1)
  {
    if (*(a1 + 1))
    {
      v36 = *(a1 + 1);
    }

    else
    {
      v36 = (a1 + 8);
    }

    v35 = v48;
    if (v48)
    {
      v37 = v48;
    }

    else
    {
      v37 = v49;
    }

    v34 = strncmp(v36, v37, __n) == 0;
    if (!v35)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v34 = 0;
    v35 = v48;
    if (!v48)
    {
      goto LABEL_78;
    }
  }

  if (BYTE6(__n) == 1)
  {
    free(v35);
  }

LABEL_78:
  if (v34)
  {
    LOBYTE(__n) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableMLTapTyping", @"com.apple.keyboard", &__n);
    if (!__n || !AppBooleanValue)
    {
      if (!v33)
      {
        LOBYTE(v34) = 0;
        goto LABEL_83;
      }

      LOBYTE(v34) = *(v33 + 66) ^ 1;
      goto LABEL_82;
    }
  }

  if (v33)
  {
LABEL_82:
    WTF::RefCounted<KB::DictionaryContainer>::deref(v33);
  }

LABEL_83:
  if (s_ml_based_tap_typing == 1)
  {
    __n = __dst;
    *(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__dst, &__n) + 40) = v34 & 1;
    is_ml_based_typing_mode_supported = v34;
  }

  else
  {
    is_ml_based_typing_mode_supported = 0;
    if (*a2 && *a1)
    {
      if (v34)
      {
        if (*(a1 + 1))
        {
          v39 = *(a1 + 1);
        }

        else
        {
          v39 = (a1 + 8);
        }

        std::string::basic_string[abi:nn200100]<0>(&__n, v39);
        v40 = *(a2 + 8);
        if (!v40)
        {
          v40 = (a2 + 16);
        }

        if (*a2)
        {
          v41 = v40;
        }

        else
        {
          v41 = "";
        }

        std::string::basic_string[abi:nn200100]<0>(v43, v41);
        is_ml_based_typing_mode_supported = TI::TIInputRecognizer::is_ml_based_typing_mode_supported(&__n, v43, a4, 1);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        if (SHIBYTE(v49[0].__locale_) < 0)
        {
          operator delete(__n);
        }
      }

      else
      {
        is_ml_based_typing_mode_supported = 0;
      }

      __n = __dst;
      *(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__dst, &__n) + 40) = is_ml_based_typing_mode_supported;
    }
  }

LABEL_105:
  if (v46 < 0)
  {
    operator delete(__dst[0]);
  }

  return is_ml_based_typing_mode_supported & 1;
}

void *std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, __int128 **a2)
{
  v2 = a1;
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v4);
  v6 = v5;
  v7 = *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
  if (!*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
    {
      v10 = v5 % *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
    }
  }

  else
  {
    v10 = (*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1) - 1) & v5;
  }

  v11 = *(TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, v2))
  {
    goto LABEL_20;
  }

  return v12;
}

uint64_t std::unordered_map<std::string,BOOL>::~unordered_map[abi:nn200100](uint64_t a1)
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

void TI::TIInputRecognizer::sync_with_input_from_UI(TI::TIInputRecognizer *this, const KB::String *a2, const KB::LanguageModelContext *a3)
{
  if (*(this + 30) == 1 && *(this + 9))
  {
    KB::LanguageModelContext::operator=(this + 104, a3);

    std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
  }
}

void TI::TIInputRecognizer::drop_input_prefix(TI::TIInputRecognizer *this, const KB::LanguageModelContext *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  KB::String::String(v6, "");
  TI::TIInputRecognizer::sync_with_input_from_UI(this, v4, a2);
  if (v7)
  {
    v5 = v6[6] == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v7);
  }

  std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
}

void TI::TIInputRecognizer::state_for_typology_logging(uint64_t a1@<X0>, int a2@<W1>, CFMutableStringRef *a3@<X8>)
{
  v44[2] = *MEMORY[0x277D85DE8];
  Mutable = CFStringCreateMutable(0, 0);
  v8 = Mutable;
  if (*(a1 + 80) == *(a1 + 88))
  {
    *a3 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
      *a3 = v8;

      CFRelease(v8);
    }

    return;
  }

  KB::append_format(Mutable, "IT Recognizer State\n", v7);
  if (*(a1 + 232) == 1)
  {
    v10 = (a1 + 208);
    if (*(a1 + 231) < 0)
    {
      if (!*(a1 + 216))
      {
        goto LABEL_13;
      }

      v10 = *v10;
    }

    else if (!*(a1 + 231))
    {
      goto LABEL_13;
    }

    KB::append_format(v8, "BundleURL: %s\n", v9, v10);
  }

LABEL_13:
  v36 = a3;
  if (a2 == 1)
  {
    KB::append_format(v8, "\nIT Prefixes:\n", v9);
    v11 = *(a1 + 80);
    for (i = *(a1 + 88); v11 != i; v11 += 8)
    {
      if ((ITCandidateIsValidWord() & 1) == 0)
      {
        String = ITCandidateGetString();
        KB::utf8_string(v41, String);
        v14 = v43;
        if (!v43)
        {
          v14 = v44;
        }

        if (v41[0])
        {
          v15 = v14;
        }

        else
        {
          v15 = "";
        }

        ITCandidateGetScore();
        v17 = v16;
        StrokedPath = ITCandidateGetStrokedPath();
        KB::utf8_string(v37, StrokedPath);
        v20 = v39;
        if (!v39)
        {
          v20 = v40;
        }

        if (v37[0])
        {
          v21 = v20;
        }

        else
        {
          v21 = "";
        }

        KB::append_format(v8, "[%s] G %.6f StrokedPath=%s\n", v19, v15, *&v17, v21);
        if (v39 && v38 == 1)
        {
          free(v39);
        }

        if (v43 && v42 == 1)
        {
          free(v43);
        }
      }
    }
  }

  KB::append_format(v8, "\nIT Candidates:\n", v9);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  if (v22 != v23)
  {
    v24 = 0;
    do
    {
      IsCompletion = ITCandidateIsCompletion();
      if (a2 != 5)
      {
        if (a2)
        {
          if (((a2 == 1) & IsCompletion) != 1)
          {
            goto LABEL_60;
          }
        }

        else if (IsCompletion)
        {
          goto LABEL_60;
        }
      }

      v26 = ITCandidateGetString();
      KB::utf8_string(v41, v26);
      v27 = v43;
      if (!v43)
      {
        v27 = v44;
      }

      if (v41[0])
      {
        v28 = v27;
      }

      else
      {
        v28 = "";
      }

      ITCandidateGetScore();
      v30 = v29;
      if (ITCandidateIsCompletion())
      {
        v31 = "Yes";
      }

      else
      {
        v31 = "No";
      }

      v32 = ITCandidateGetStrokedPath();
      KB::utf8_string(v37, v32);
      v34 = v39;
      if (!v39)
      {
        v34 = v40;
      }

      if (v37[0])
      {
        v35 = v34;
      }

      else
      {
        v35 = "";
      }

      KB::append_format(v8, "[%s] G %.6f Completion=%s StrokedPath=%s\n", v33, v28, *&v30, v31, v35);
      if (v39 && v38 == 1)
      {
        free(v39);
      }

      if (v43)
      {
        if (v42 == 1)
        {
          free(v43);
        }
      }

      if (++v24 == 10)
      {
        break;
      }

LABEL_60:
      v22 += 8;
    }

    while (v22 != v23);
  }

  *v36 = v8;
}

uint64_t TI::Favonius::Touch::Touch(uint64_t result, int a2, int a3, atomic_uint **a4, int a5, int a6, double a7, double a8, float a9, double a10)
{
  *result = 1;
  *(result + 8) = a7;
  *(result + 16) = a8;
  *(result + 24) = a9;
  *(result + 32) = a10;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = a2;
  *(result + 52) = a3;
  v10 = *a4;
  *(result + 56) = *a4;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  return result;
}

{
  *result = 1;
  *(result + 8) = a7;
  *(result + 16) = a8;
  *(result + 24) = a9;
  *(result + 32) = a10;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = a2;
  *(result + 52) = a3;
  v10 = *a4;
  *(result + 56) = *a4;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  return result;
}

void std::__shared_ptr_emplace<TIInlineCompletionEventDispatcher>::__on_zero_shared(uint64_t a1)
{
  std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::~__optional_storage_base(a1 + 168);
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      if (*(a1 + 126) == 1)
      {
        free(v2);
      }
    }
  }

  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 88);
    if (v3)
    {
      if (*(a1 + 86) == 1)
      {
        free(v3);
      }
    }
  }

  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      if (*(a1 + 46) == 1)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__shared_ptr_emplace<TIInlineCompletionEventDispatcher>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDB148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::pair<KB::LanguageModelContext,TIInlineCompletion>::~pair(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    language_modeling::v1::InlineCompletion::~InlineCompletion((a1 + 168));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v5 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 72));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

uint64_t ___Z15validFirstNamesRKNSt3__16vectorIN2KB6StringENS_9allocatorIS2_EEEEPK4USet_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  v6 = MEMORY[0x2318BF180](a2);
  result = MEMORY[0x2318BF290](v5, v6);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void std::vector<KB::String>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          if (*(v3 - 26) == 1)
          {
            free(v5);
          }
        }

        v3 -= 32;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void completionFromCacheElement(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  std::string::basic_string(&v8, &__str, *(a2 + 80), 0xFFFFFFFFFFFFFFFFLL, &v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  if (*(a2 + 72) == 1)
  {
    v4 = language_modeling::v1::InlineCompletion::probability((a2 + 64));
  }

  else
  {
    v4 = *(a2 + 48);
  }

  v5 = *(a2 + 56);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else
  {
    *a1 = __p;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

uint64_t TIInlineCompletionsNegativeLearning::wordBlockedByNegativeLearning(sqlite3 **a1, int a2, void ***a3, char a4)
{
  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    if ((adaptation_autocorrection_rejection_v2_override_for_trial & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (!_os_feature_enabled_impl())
  {
    goto LABEL_48;
  }

  v9 = std::chrono::system_clock::now().__d_.__rep_ / 1000000.0;
  if ((a4 & 1) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "");
    should_block = TI::RejectionsDatabase::soft_should_block(a1, __p, a3, 20, v9);
    v11 = should_block;
    if (SBYTE7(v36) < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else if (should_block)
    {
LABEL_8:
      if (*(a3 + 23) >= 0)
      {
        LODWORD(size) = *(a3 + 23);
      }

      else
      {
        size = a3[1];
      }

      v13 = size & 0xFFFFFF00;
      v14 = 0x100000000;
      return size | v14 | v13;
    }
  }

  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v15 = *a1;
  ppStmt = 0;
  v16 = __p;
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "SELECT typed, performed_count, soft_rejections, hard_rejections, last_soft_rejection, last_hard_rejection ", 106);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "FROM ", 5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "inline_completion_rejections", 28);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, " WHERE correction = :correction", 31);
  size = v32;
  std::ostringstream::str[abi:nn200100](v32, __p);
  v17 = MEMORY[0x277D82828];
  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v39 < 0)
  {
    operator delete(v38);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v36);
  std::ostream::~ostream();
  MEMORY[0x2318BE200](&v40);
  if (v33 >= 0)
  {
    v18 = v32;
  }

  else
  {
    v18 = v32[0];
  }

  if (sqlite3_prepare_v2(v15, v18, -1, &ppStmt, 0))
  {
    v19 = 0;
  }

  else
  {
    v20 = ppStmt;
    v21 = sqlite3_bind_parameter_index(ppStmt, ":correction");
    sqlite3_bind_text(v20, v21, a3, -1, 0);
    v22 = sqlite3_step(ppStmt);
    v23 = ppStmt;
    v19 = v22 == 100;
    if (v22 == 100)
    {
      memset(&v31, 0, sizeof(v31));
      v24 = sqlite3_column_text(ppStmt, 0);
      std::string::__assign_external(&v31, v24);
      LODWORD(v29) = sqlite3_column_int(ppStmt, 1);
      DWORD1(v29) = sqlite3_column_int(ppStmt, 2);
      DWORD2(v29) = sqlite3_column_int(ppStmt, 3);
      *&v30 = sqlite3_column_double(ppStmt, 4);
      *(&v30 + 1) = sqlite3_column_double(ppStmt, 5);
      *__p = v29;
      v36 = v30;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
      }

      else
      {
        v37 = v31;
      }

      LODWORD(v16) = __p[1];
      v4 = *(&v36 + 1);
      size = v37.__r_.__value_.__l.__size_;
      a3 = v37.__r_.__value_.__r.__words[0];
      v17 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      memset(&v37, 0, sizeof(v37));
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v23 = ppStmt;
    }

    sqlite3_finalize(v23);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
    if (v19)
    {
      goto LABEL_32;
    }

LABEL_48:
    v14 = 0;
    LOBYTE(size) = 0;
    v13 = 0;
    return size | v14 | v13;
  }

  if (!v19)
  {
    goto LABEL_48;
  }

LABEL_32:
  if ((v17 & 0x80u) == 0)
  {
    size = v17;
  }

  if (size < a2 || ((v25 = (v9 - v4) / 60.0 / 60.0 / 24.0, v25 <= 180.0) ? (v26 = v16 == 0) : (v26 = 1), v26 || log(v25) / 1.38629436 >= (v16 - 1)))
  {
    v14 = 0;
    LOBYTE(size) = 0;
    v13 = 0;
  }

  else
  {
    v13 = size & 0xFFFFFF00;
    v14 = 0x100000000;
  }

  if ((v17 & 0x80u) != 0 && v19)
  {
    operator delete(a3);
  }

  return size | v14 | v13;
}

uint64_t TIInlineCompletionGeneratorImpl::_shouldSuppress(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a2 + 72) == 1 && language_modeling::v1::InlineCompletion::wordBoundaryAt((a2 + 64)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
      }

      else
      {
        v24 = *a2;
      }

      v21 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v24.__r_.__value_.__r.__words[0];
      }

      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      LODWORD(v25.__r_.__value_.__l.__data_) = 136315650;
      *(v25.__r_.__value_.__r.__words + 4) = "_shouldSuppress";
      WORD2(v25.__r_.__value_.__r.__words[1]) = 2080;
      *(&v25.__r_.__value_.__r.__words[1] + 6) = v21;
      HIWORD(v25.__r_.__value_.__r.__words[2]) = 2080;
      __p = a3;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  TIInlineCompletionGeneratorImpl: Completion --> %s was found but was suppressed for prefix %s", &v25, 0x20u);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    return 1;
  }

  else
  {
    completionFromCacheElement(&v25, a2);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v25;
    }

    if (v30[8] == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v30);
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v7 = *(a1 + 312);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a3 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = a3[1];
    }

    v9 = 0;
    memset(&v24, 0, sizeof(v24));
    while (1)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v22.__r_.__value_.__l.__size_;
      }

      if (size <= v9)
      {
        break;
      }

      v11 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
      v12 = memchr(v11 + v9, 32, size - v9);
      v13 = v12 - v11;
      if (!v12 || v13 == -1)
      {
        break;
      }

      std::string::basic_string(&v25, &v22, v9, v13 - v9, &v23);
      std::vector<std::string>::push_back[abi:nn200100](&v24, &v25);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      v9 = v13 + 1;
    }

    std::string::basic_string(&v25, &v22, v9, 0xFFFFFFFFFFFFFFFFLL, &v23);
    std::vector<std::string>::push_back[abi:nn200100](&v24, &v25);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v16 = v24.__r_.__value_.__l.__size_;
    v15 = v24.__r_.__value_.__r.__words[0];
    if (v24.__r_.__value_.__r.__words[0] == v24.__r_.__value_.__l.__size_)
    {
LABEL_38:
      v25.__r_.__value_.__r.__words[0] = &v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v25);
      v6 = 0;
    }

    else
    {
      v17 = v8;
      while (!(TIInlineCompletionsNegativeLearning::wordBlockedByNegativeLearning(v7, v17, v15, 0) >> 32))
      {
        v17 = 0;
        v15 += 3;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string(&v23, &v22, 0, v8, &v25);
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v23;
        }

        else
        {
          v19 = v23.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v22;
        }

        else
        {
          v20 = v22.__r_.__value_.__r.__words[0];
        }

        if (*(v15 + 23) < 0)
        {
          v15 = *v15;
        }

        LODWORD(v25.__r_.__value_.__l.__data_) = 136315906;
        *(v25.__r_.__value_.__r.__words + 4) = "phraseBlockedByNegativeLearning";
        WORD2(v25.__r_.__value_.__r.__words[1]) = 2080;
        *(&v25.__r_.__value_.__r.__words[1] + 6) = v19;
        HIWORD(v25.__r_.__value_.__r.__words[2]) = 2080;
        __p = v20;
        v27 = 2080;
        v28 = v15;
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }

      v25.__r_.__value_.__r.__words[0] = &v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v25);
      v6 = 2;
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  return v6;
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:nn200100]<true,0>(std::string *this, __int128 *a2, void *a3)
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

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[1].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void greetingCompletion(std::string *a1, uint64_t a2, language_modeling::v1::CompletionStem *this, uint64_t a4, KB::DictionaryContainer **a5, const __CFLocale *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a2 + 88) == *(a2 + 80) || (*(a4 + 24) & 1) == 0)
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v10 = *(a2 + 88);
    if (*(v10 - 1) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *(v10 - 24), *(v10 - 16));
    }

    else
    {
      v15 = *(v10 - 24);
    }

    language_modeling::v1::CompletionStem::prefix(v13, this);
    if (*(a2 + 88) - *(a2 + 80) == 48)
    {
      v11 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v11 = v13[1];
      }

      if (v11)
      {
        Value = CFLocaleGetValue(a6, *MEMORY[0x277CBEED0]);
        if (Value)
        {
          KB::std_string(&v16, Value);
          std::string::basic_string[abi:nn200100]<0>(&v17, "en");
          std::string::basic_string[abi:nn200100]<0>(&v18, "Hi");
          std::string::basic_string[abi:nn200100]<0>(v19, "Hey");
          std::string::basic_string[abi:nn200100]<0>(v20, "Hello");
          std::string::basic_string[abi:nn200100]<0>(v21, "Dear");
          std::string::basic_string[abi:nn200100]<0>(v22, "hi");
          std::string::basic_string[abi:nn200100]<0>(v23, "hey");
          std::string::basic_string[abi:nn200100]<0>(v24, "hello");
          std::string::basic_string[abi:nn200100]<0>(v25, "dear");
          operator new();
        }
      }
    }

    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TIInlineCompletion>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__function::__func<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_1,std::allocator<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_1>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDB1C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0,std::allocator<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0>,BOOL ()(language_modeling::v1::InlineCompletion const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2[1];
  v4 = v2[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *v2) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v4 - *v2;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = 8 * v6;
    MEMORY[0x2318BDB20](v10, a2);
    v5 = v10 + 8;
    v11 = *v2;
    v12 = v2[1];
    v13 = v10 + *v2 - v12;
    if (v12 != *v2)
    {
      v14 = *v2;
      do
      {
        language_modeling::v1::InlineCompletion::InlineCompletion();
        v14 = (v14 + 8);
      }

      while (v14 != v12);
      do
      {
        language_modeling::v1::InlineCompletion::~InlineCompletion(v11);
        v11 = (v11 + 8);
      }

      while (v11 != v12);
    }

    v15 = *v2;
    *v2 = v13;
    v2[1] = v5;
    v2[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = MEMORY[0x2318BDB20]() + 8;
  }

  v2[1] = v5;
  return 1;
}

uint64_t std::__function::__func<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0,std::allocator<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0>,BOOL ()(language_modeling::v1::InlineCompletion const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDB180;
  a2[1] = v2;
  return result;
}

void TIInlineCompletionGeneratorImpl::_computeInlineCompletions(uint64_t a1, const KB::LanguageModelContext *a2, language_modeling::v1::CompletionStem **a3, uint64_t a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v7 = atomic_load((a1 + 16));
  v43 = v5;
  v41 = v6;
  if (v7)
  {
    language_modeling::v1::CompletionStem::prefix(&buf, *a3);
    if ((v69 & 0x8000000000000000) != 0)
    {
      v8 = *(a1 + 88);
      v9 = *(&buf + 1);
      operator delete(buf);
      if (v9 < v8)
      {
        goto LABEL_25;
      }
    }

    else if (*(a1 + 88) > v69)
    {
      goto LABEL_25;
    }

    kdebug_trace();
    v10 = kac_get_log();
    v11 = os_signpost_id_make_with_pointer(v10, (a1 ^ 0xC8));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "kbdManager.languageModel.generateInlineCompletions", &unk_22CCA4FEF, &buf, 2u);
      }
    }

    v13 = *(a1 + 296);
    std::mutex::lock(v13);
    *&buf = &unk_283FDB180;
    *(&buf + 1) = &v48;
    p_buf = &buf;
    v85 = &unk_283FDB1C8;
    v86 = a1;
    v88 = &v85;
    language_modeling::v1::LanguageModelSession::enumerateInlineCompletions();
    kdebug_trace();
    v14 = kac_get_log();
    v15 = os_signpost_id_make_with_pointer(v14, (a1 ^ 0xC8));
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *v51 = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v14, OS_SIGNPOST_INTERVAL_END, v16, "kbdManager.languageModel.generateInlineCompletions", &unk_22CCA4FEF, v51, 2u);
      }
    }

    if (v88 == &v85)
    {
      (*(*v88 + 4))(v88);
    }

    else if (v88)
    {
      (*(*v88 + 5))(v88);
    }

    if (p_buf == &buf)
    {
      (*(*p_buf + 32))(p_buf);
    }

    else if (p_buf)
    {
      (*(*p_buf + 40))();
    }

    std::mutex::unlock(v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "_inlineCompletionsWithLM";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  TIInlineCompletionGeneratorImpl: langugage model is not loaded, cannot compute inline completions", &buf, 0xCu);
  }

LABEL_25:
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v18 = v48;
  v17 = v49;
  if (v48 == v49)
  {
    v19 = 0;
    v36 = 0;
  }

  else
  {
    v19 = 0;
    v47 = v49;
    do
    {
      if (v19 >= v87)
      {
        v20 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v85) >> 4);
        v21 = v20 + 1;
        if (v20 + 1 > 0x333333333333333)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (0x999999999999999ALL * ((v87 - v85) >> 4) > v21)
        {
          v21 = 0x999999999999999ALL * ((v87 - v85) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v87 - v85) >> 4) >= 0x199999999999999)
        {
          v22 = 0x333333333333333;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<TIInlineCompletion>>(v22);
        }

        v23 = 16 * ((v19 - v85) >> 4);
        std::construct_at[abi:nn200100]<TIInlineCompletion,language_modeling::v1::InlineCompletion const&,TIInlineCompletion*>(v23);
        v25 = v85;
        v24 = v86;
        v26 = 80 * v20 - (v86 - v85);
        if (v86 != v85)
        {
          v27 = 0;
          v28 = -16 * ((v86 - v85) >> 4) + 80 * v20;
          do
          {
            v29 = (v25 + v27);
            v30 = v26 + v27;
            v31 = *(v25 + v27);
            *(v30 + 16) = *(v25 + v27 + 16);
            *v30 = v31;
            v29[1] = 0;
            v29[2] = 0;
            *v29 = 0;
            v32 = *(v25 + v27 + 24);
            *(v30 + 40) = *(v25 + v27 + 40);
            *(v30 + 24) = v32;
            v29[4] = 0;
            v29[5] = 0;
            v29[3] = 0;
            v33 = *(v25 + v27 + 48);
            *(v30 + 56) = *(v25 + v27 + 56);
            *(v30 + 48) = v33;
            v34 = v28 + v27;
            *(v34 + 64) = 0;
            *(v34 + 72) = 0;
            if (*(v25 + v27 + 72) == 1)
            {
              language_modeling::v1::InlineCompletion::InlineCompletion();
              *(v34 + 72) = 1;
            }

            v27 += 80;
          }

          while (v29 + 10 != v24);
          v17 = v47;
          do
          {
            std::allocator_traits<std::allocator<TIInlineCompletion>>::destroy[abi:nn200100]<TIInlineCompletion,void,0>(v25);
            v25 += 80;
          }

          while (v25 != v24);
        }

        v35 = v85;
        v19 = v23 + 80;
        v85 = v26;
        v86 = v23 + 80;
        v87 = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        std::construct_at[abi:nn200100]<TIInlineCompletion,language_modeling::v1::InlineCompletion const&,TIInlineCompletion*>(v19);
        v19 += 80;
      }

      v86 = v19;
      v18 += 8;
    }

    while (v18 != v17);
    v36 = v85;
  }

  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](&buf, a4);
  KB::LanguageModelContext::LanguageModelContext(&v71, a2);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>(&v78, *a3, a3[1], (a3[1] - *a3) >> 3);
  v82 = 0;
  v81 = 0;
  v83 = 0;
  std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion*,TIInlineCompletion*>(&v81, v36, v19, 0xCCCCCCCCCCCCCCCDLL * ((v19 - v36) >> 4));
  v84 = a1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    TIInlineCompletionGeneratorImpl::_computeInlineCompletions(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&,std::function<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>)::$_0::operator()(&buf);
    v37 = v43;
  }

  else
  {
    v52 = MEMORY[0x277D85DD0];
    v53 = 3321888768;
    v54 = ___ZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEE_block_invoke;
    v55 = &__block_descriptor_240_a8_32c56_ZTSNSt3__18weak_ptrI31TIInlineCompletionGeneratorImplEE48c241_ZTSZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEE3__0_e5_v8__0l;
    v37 = v43;
    v56 = v41;
    v57 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v58, &buf);
    KB::LanguageModelContext::LanguageModelContext(&v59, &v71);
    memset(v66, 0, sizeof(v66));
    std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>(v66, v78, v79, (v79 - v78) >> 3);
    memset(v67, 0, 24);
    std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion*,TIInlineCompletion*>(v67, v81, v82, 0xCCCCCCCCCCCCCCCDLL * ((v82 - v81) >> 4));
    v67[3] = v84;
    TIDispatchAsync();
    *v51 = v67;
    std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](v51);
    *v51 = v66;
    std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](v51);
    *v51 = &v65;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v51);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v64);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v63);
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v60);
    }

    std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v58);
    if (v57)
    {
      std::__shared_weak_count::__release_weak(v57);
    }
  }

  *v51 = &v81;
  std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](v51);
  *v51 = &v78;
  std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](v51);
  *v51 = &v77;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v51);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v76);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v75);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v72);
  }

  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](&buf);
  *&buf = &v85;
  std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&buf);
  v38 = v48;
  if (v48)
  {
    v39 = v49;
    v40 = v48;
    if (v49 != v48)
    {
      do
      {
        language_modeling::v1::InlineCompletion::~InlineCompletion((v39 - 8));
      }

      while (v39 != v38);
      v40 = v48;
    }

    v49 = v38;
    operator delete(v40);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>(language_modeling::v1::CompletionStem *result, const language_modeling::v1::CompletionStem *a2, const language_modeling::v1::CompletionStem *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion*,TIInlineCompletion*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TIInlineCompletion>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

uint64_t std::construct_at[abi:nn200100]<TIInlineCompletion,language_modeling::v1::InlineCompletion const&,TIInlineCompletion*>(uint64_t a1)
{
  MEMORY[0x2318BDB20](v5);
  language_modeling::v1::InlineCompletion::string(v5);
  language_modeling::v1::InlineCompletion::log(v5);
  *(a1 + 48) = language_modeling::v1::InlineCompletion::probability(v5);
  v2 = language_modeling::v1::InlineCompletion::source(v5) - 4;
  if (v2 > 3)
  {
    v3 = 4;
  }

  else
  {
    v3 = dword_22CC88C80[v2];
  }

  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  MEMORY[0x2318BDB20](a1 + 64, v5);
  *(a1 + 72) = 1;
  language_modeling::v1::InlineCompletion::~InlineCompletion(v5);
  return a1;
}

void ___ZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*(a1 + 32))
      {
        TIInlineCompletionGeneratorImpl::_computeInlineCompletions(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&,std::function<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>)::$_0::operator()(a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void TIInlineCompletionGeneratorImpl::_computeInlineCompletions(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&,std::function<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>)::$_0::operator()(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 160);
  v3 = *(a1 + 184);
  if (*(a1 + 168) != *(a1 + 160))
  {
    KB::LanguageModelContext::LanguageModelContext(v43, (a1 + 32));
    v4 = *(a1 + 160);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      v37.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v37.__r_.__value_.__l.__data_ = v5;
    }

    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 3), *(v4 + 4));
    }

    else
    {
      v9 = *(v4 + 24);
      __p.__r_.__value_.__r.__words[2] = *(v4 + 5);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = *(v4 + 6);
    v40 = *(v4 + 14);
    v39 = v10;
    v41[0] = 0;
    v42 = 0;
    if (*(v4 + 72) == 1)
    {
      MEMORY[0x2318BDB20](v41, v4 + 4);
      v42 = 1;
    }

    KB::LanguageModelContext::LanguageModelContext(&v64, v43);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
    }

    else
    {
      __s = v37;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v71, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v71 = __p;
    }

    v72 = v39;
    v73 = v40;
    v74[0] = 0;
    v75 = 0;
    if (v42 == 1)
    {
      MEMORY[0x2318BDB20](v74, v41);
      v75 = 1;
    }

    TIInlineCompletionsCache::clear((v3 + 96));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v50, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
      }

      else
      {
        v50 = *&v37.__r_.__value_.__l.__data_;
        v51.__r_.__value_.__r.__words[0] = v37.__r_.__value_.__r.__words[2];
      }

      v27 = &v50;
      if (v51.__r_.__value_.__s.__data_[7] < 0)
      {
        v27 = v50;
      }

      *buf = 136315394;
      *&buf[4] = "_updateCache";
      v77 = 2080;
      v78 = v27;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  TIInlineCompletionGeneratorImpl: Updating cache with new completion: %s", buf, 0x16u);
      if (v51.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v50);
      }
    }

    KB::LanguageModelContext::LanguageModelContext(&v50, &v64);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = __s;
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
    }

    else
    {
      v59 = v71;
    }

    v60 = v72;
    v61 = v73;
    v62[0] = 0;
    v63 = 0;
    if (v75 == 1)
    {
      MEMORY[0x2318BDB20](v62, v74);
      v63 = 1;
    }

    v11 = (v3 + 104);
    if (*(v3 + 288) == 1)
    {
      KB::LanguageModelContext::operator=(v11, &v50);
      std::string::operator=((v3 + 208), &v58);
      std::string::operator=((v3 + 232), &v59);
      *(v3 + 256) = v60;
      *(v3 + 264) = v61;
      if (*(v3 + 280) == v63)
      {
        if (*(v3 + 280))
        {
          language_modeling::v1::InlineCompletion::operator=();
        }
      }

      else
      {
        v12 = (v3 + 272);
        if (*(v3 + 280))
        {
          language_modeling::v1::InlineCompletion::~InlineCompletion(v12);
          *(v3 + 280) = 0;
        }

        else
        {
          MEMORY[0x2318BDB20](v12, v62);
          *(v3 + 280) = 1;
        }
      }
    }

    else
    {
      KB::LanguageModelContext::LanguageModelContext(v11, &v50);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v3 + 208), v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v3 + 208) = v58;
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v3 + 232), v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v3 + 232) = v59;
      }

      *(v3 + 256) = v60;
      *(v3 + 264) = v61;
      *(v3 + 272) = 0;
      *(v3 + 280) = 0;
      if (v63 == 1)
      {
        MEMORY[0x2318BDB20](v3 + 272, v62);
        *(v3 + 280) = 1;
      }

      *(v3 + 288) = 1;
    }

    std::pair<KB::LanguageModelContext,TIInlineCompletion>::~pair(&v50);
    std::pair<KB::LanguageModelContext,TIInlineCompletion>::~pair(&v64);
    if (v42 == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v41);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    *&v64 = &v49;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v64);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v48);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v47);
    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v44);
    }

    v13 = *v2;
    if (*(*v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      v30.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v30.__r_.__value_.__l.__data_ = v14;
    }

    if (*(v13 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(v13 + 3), *(v13 + 4));
    }

    else
    {
      v15 = *(v13 + 24);
      v31.__r_.__value_.__r.__words[2] = *(v13 + 5);
      *&v31.__r_.__value_.__l.__data_ = v15;
    }

    v16 = *(v13 + 6);
    v33 = *(v13 + 14);
    v32 = v16;
    v34[0] = 0;
    v35 = 0;
    if (*(v13 + 72) == 1)
    {
      MEMORY[0x2318BDB20](v34, v13 + 4);
      v35 = 1;
    }

    v36 = 0;
    language_modeling::v1::CompletionStem::prefix(v28, *(a1 + 136));
    shouldSuppress = TIInlineCompletionGeneratorImpl::_shouldSuppress(v3, &v30, v28);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (v35 == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v34);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v18 = *(a1 + 136);
    std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(&v64, **(v3 + 744), *(*(v3 + 744) + 8));
    v19 = v64;
    if (*(&v64 + 1))
    {
      atomic_fetch_add_explicit((*(&v64 + 1) + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19 + 1));
    }

    v20 = analytics_queue();
    *&v64 = MEMORY[0x277D85DD0];
    *(&v64 + 1) = 3321888768;
    *&v65 = ___ZN33TIInlineCompletionEventDispatcher27did_generate_new_completionERK18TIInlineCompletionRKN17language_modeling2v114CompletionStemE23TIICSuppressionModality_block_invoke;
    *(&v65 + 1) = &__block_descriptor_144_a8_32c166_ZTSKZN33TIInlineCompletionEventDispatcher27did_generate_new_completionERK18TIInlineCompletionRKN17language_modeling2v114CompletionStemE23TIICSuppressionModalityE3__0_e5_v8__0l;
    v50 = v19;
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *v13, *(v13 + 1));
    }

    else
    {
      v21 = *v13;
      v51.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v51.__r_.__value_.__l.__data_ = v21;
    }

    if (*(v13 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v52, *(v13 + 3), *(v13 + 4));
    }

    else
    {
      v22 = *(v13 + 24);
      v52.__r_.__value_.__r.__words[2] = *(v13 + 5);
      *&v52.__r_.__value_.__l.__data_ = v22;
    }

    v23 = *(v13 + 6);
    v54 = *(v13 + 14);
    v53 = v23;
    v55[0] = 0;
    v56 = 0;
    if (*(v13 + 72) == 1)
    {
      MEMORY[0x2318BDB20](v55, v13 + 4);
      v56 = 1;
    }

    language_modeling::v1::CompletionStem::CompletionStem(&v57, v18);
    LODWORD(v58.__r_.__value_.__l.__data_) = shouldSuppress;
    v66 = v50;
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    }

    else
    {
      v67 = v51;
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
    }

    else
    {
      v68 = v52;
    }

    v69 = v53;
    LODWORD(__s.__r_.__value_.__l.__data_) = v54;
    __s.__r_.__value_.__s.__data_[8] = 0;
    __s.__r_.__value_.__s.__data_[16] = 0;
    if (v56 == 1)
    {
      MEMORY[0x2318BDB20](&__s.__r_.__value_.__r.__words[1], v55);
      __s.__r_.__value_.__s.__data_[16] = 1;
    }

    language_modeling::v1::CompletionStem::CompletionStem(&v71, &v57);
    LODWORD(v71.__r_.__value_.__r.__words[1]) = v58.__r_.__value_.__l.__data_;
    TIDispatchAsync();
    language_modeling::v1::CompletionStem::~CompletionStem(&v57);
    if (v56 == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v55);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (*(&v50 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v50 + 1));
    }

    language_modeling::v1::CompletionStem::~CompletionStem(&v71);
    if (__s.__r_.__value_.__s.__data_[16] == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(&__s.__r_.__value_.__r.__words[1]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (*(&v66 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v66 + 1));
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v19 + 1));
    }

    if (shouldSuppress)
    {
      v50 = 0uLL;
      v51.__r_.__value_.__r.__words[0] = 0;
      v66 = 0u;
      *&v67.__r_.__value_.__l.__data_ = 0u;
      v64 = 0u;
      v65 = 0u;
      language_modeling::v1::LinguisticContext::LinguisticContext(&v67.__r_.__value_.__r.__words[2]);
      language_modeling::v1::LinguisticContext::LinguisticContext(&v68);
      *&v68.__r_.__value_.__r.__words[1] = 0uLL;
      v69 = 0;
      v24 = *(a1 + 24);
      if (v24)
      {
        (*(*v24 + 48))(v24, &v50, &v64);
        *buf = &v68.__r_.__value_.__l.__size_;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v68);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v67.__r_.__value_.__r.__words[2]);
        if (v65)
        {
          *(&v65 + 1) = v65;
          operator delete(v65);
        }

        if (*(&v64 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v64 + 1));
        }

        *&v64 = &v50;
        std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&v64);
        return;
      }
    }

    else
    {
      v25 = *(a1 + 24);
      if (v25)
      {
        (*(*v25 + 48))(v25, v2, a1 + 32);
        return;
      }
    }

LABEL_142:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v6 = atomic_load((v3 + 16));
  if (v6)
  {
    std::shared_ptr<TIInlineCompletionEventDispatcher>::shared_ptr[abi:nn200100]<TIInlineCompletionEventDispatcher,0>(&v64, **(v3 + 744), *(*(v3 + 744) + 8));
    v7 = v64;
    if (*(&v64 + 1))
    {
      atomic_fetch_add_explicit((*(&v64 + 1) + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
    }

    v8 = analytics_queue();
    *&v64 = MEMORY[0x277D85DD0];
    *(&v64 + 1) = 3321888768;
    *&v65 = ___ZN33TIInlineCompletionEventDispatcher26did_generate_no_completionEv_block_invoke;
    *(&v65 + 1) = &__block_descriptor_48_a8_32c77_ZTSKZN33TIInlineCompletionEventDispatcher26did_generate_no_completionEvE3__0_e5_v8__0l;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 16), 1uLL, memory_order_relaxed);
      v66 = v7;
      atomic_fetch_add_explicit((*(&v7 + 1) + 16), 1uLL, memory_order_relaxed);
      TIDispatchAsync();
      std::__shared_weak_count::__release_weak(*(&v7 + 1));
    }

    else
    {
      v66 = v7;
      TIDispatchAsync();
    }

    if (*(&v66 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v66 + 1));
    }

    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v7 + 1));
    }
  }

  v66 = 0u;
  *&v67.__r_.__value_.__l.__data_ = 0u;
  v64 = 0u;
  v65 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v67.__r_.__value_.__r.__words[2]);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v68);
  *&v68.__r_.__value_.__r.__words[1] = 0uLL;
  v69 = 0;
  v26 = *(a1 + 24);
  if (!v26)
  {
    goto LABEL_142;
  }

  (*(*v26 + 48))(v26, v2, &v64);
  *&v50 = &v68.__r_.__value_.__l.__size_;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v50);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v68);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v67.__r_.__value_.__r.__words[2]);
  if (v65)
  {
    *(&v65 + 1) = v65;
    operator delete(v65);
  }

  if (*(&v64 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v64 + 1));
  }
}