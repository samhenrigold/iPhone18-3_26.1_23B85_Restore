void sub_2227E2970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v69 - 153) < 0)
  {
    operator delete(*(v69 - 176));
  }

  if (*(v69 - 121) < 0)
  {
    operator delete(*(v69 - 144));
    if ((v67 & 1) == 0)
    {
LABEL_8:
      if (v66)
      {
        operator delete(v66);
      }

      v71 = STACK[0x258];
      if (STACK[0x258])
      {
        STACK[0x260] = v71;
        operator delete(v71);
      }

      v72 = STACK[0x270];
      if (STACK[0x270])
      {
        STACK[0x278] = v72;
        operator delete(v72);
      }

      v73 = STACK[0x288];
      if (STACK[0x288])
      {
        STACK[0x290] = v73;
        operator delete(v73);
      }

      v74 = STACK[0x2A0];
      if (STACK[0x2A0])
      {
        STACK[0x2A8] = v74;
        operator delete(v74);
      }

      v75 = *(v69 - 224);
      if (v75)
      {
        *(v69 - 216) = v75;
        operator delete(v75);
      }

      v76 = *(v69 - 200);
      if (v76)
      {
        *(v69 - 192) = v76;
        operator delete(v76);
      }

      if (v68)
      {
        operator delete(v68);
      }

      if (a14)
      {
        operator delete(a14);
      }

      if (a23)
      {
        operator delete(a23);
      }

      if (a13)
      {
        operator delete(a13);
      }

      *(v69 - 144) = &STACK[0x2B8];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v69 - 144));
      RepetitionPredictorResult::~RepetitionPredictorResult(&STACK[0x2D0]);
      if (a28)
      {
        operator delete(a28);
      }

      RepetitionPredictorResult::~RepetitionPredictorResult(&a65);
      *(v69 - 144) = &STACK[0x210];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v69 - 144));
      *(v69 - 144) = &STACK[0x228];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v69 - 144));
      RepetitionPredictorInput::~RepetitionPredictorInput(&a29);
      _Unwind_Resume(a1);
    }
  }

  else if (!v67)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v65);
  goto LABEL_8;
}

void RepetitionPredictorResult::~RepetitionPredictorResult(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

void RepetitionPredictorResult::RepetitionPredictorResult(RepetitionPredictorResult *this)
{
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *this = 1065353216;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  MEMORY[0x223DC1FB0](this + 48, "");
  *(this + 72) = 0;
}

void sub_2227E2CC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void MDConfig::~MDConfig(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<MDMentionOverride>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MDMentionOverride>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MDMentionOverride>,MDMentionOverride*,MDMentionOverride*,MDMentionOverride*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 1);
      v8 = (v4 + 1);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        v4[3] = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v4 += 4;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MDMentionOverride>,MDMentionOverride*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MDMentionOverride>,MDMentionOverride*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MDMentionOverride>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<MDMentionOverride>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t std::__split_buffer<MDMentionOverride>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
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

void MRRuleConfig::~MRRuleConfig(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void MRModelConfig::~MRModelConfig(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(*(a1 + 16));
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

    std::__tree<std::__value_type<std::string,std::vector<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<float>>>>::destroy(v2);
  }

  return a1;
}

void VisTextMatchKeywords::~VisTextMatchKeywords(char **this)
{
  std::__tree<std::string>::destroy(this[7]);
  std::__tree<std::string>::destroy(this[4]);
  std::__tree<std::string>::destroy(this[1]);
}

uint64_t std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::string>::destroy(v2);
  }

  return a1;
}

void marrs::mrr::mr::VerbalKeywordEntry::~VerbalKeywordEntry(char **this)
{
  std::__tree<std::string>::destroy(this[4]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(*(a1 + 16));
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

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(*(a1 + 16));
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

    std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(v2);
  }

  return a1;
}

uint64_t ***std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *,marrs::mrr::mr::VerbalPatternEntry *>(uint64_t *a1, uint64_t *a2, uint64_t ***a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1 + 4;
    do
    {
      if (v5 != a3)
      {
        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a3, *v5, v6 - 3);
        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a3 + 3, v5[3], v6);
      }

      v5 += 6;
      a3 += 6;
      v6 += 6;
    }

    while (v5 != a2);
  }

  return a3;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *,marrs::mrr::mr::VerbalKeywordEntry *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    p_size = &__str[1].__r_.__value_.__l.__size_;
    do
    {
      std::string::operator=(this, v5);
      if (this != v5)
      {
        std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&this[1], v5[1].__r_.__value_.__l.__data_, p_size);
      }

      LODWORD(this[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
      v5 = (v5 + 56);
      this = (this + 56);
      p_size += 7;
    }

    while (v5 != a2);
  }

  return this;
}

void TypedJson<CcqrConfig>::fromJson(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v73 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v70 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v70 fileExistsAtPath:v73] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(v74, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, v75, v74, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/TypedJson.mm", 618);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithJSON:v73];
  v72 = v4;
  v5 = [v4 objectForKeyedSubscript:@"preprocessing"];
  v6 = [v5 objectForKeyedSubscript:@"useRewritten"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"useRewritten"];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"useNonSignificantNonWhitespace"];

  if (v9)
  {
    v10 = [v5 objectForKeyedSubscript:@"useNonSignificantNonWhitespace"];
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 objectForKeyedSubscript:@"useWhitespace"];

  if (v12)
  {
    v13 = [v5 objectForKeyedSubscript:@"useWhitespace"];
    v68 = [v13 BOOLValue];
  }

  else
  {
    v68 = 0;
  }

  v14 = [v5 objectForKeyedSubscript:@"useSiriResponse"];

  if (v14)
  {
    v15 = [v5 objectForKeyedSubscript:@"useSiriResponse"];
    v66 = [v15 BOOLValue];
  }

  else
  {
    v66 = 1;
  }

  v16 = [v5 objectForKeyedSubscript:@"contextSize"];

  if (v16)
  {
    v17 = [v5 objectForKeyedSubscript:@"contextSize"];
    v65 = [v17 intValue];
  }

  else
  {
    v65 = 2;
  }

  v18 = [v5 objectForKeyedSubscript:@"maxCharNum"];

  if (v18)
  {
    v19 = [v5 objectForKeyedSubscript:@"maxCharNum"];
    v64 = [v19 intValue];
  }

  else
  {
    v64 = 34;
  }

  v20 = [v5 objectForKeyedSubscript:@"charPaddingIndex"];

  if (v20)
  {
    v21 = [v5 objectForKeyedSubscript:@"charPaddingIndex"];
    v63 = [v21 unsignedIntValue];
  }

  else
  {
    v63 = 56;
  }

  v22 = [v5 objectForKeyedSubscript:@"maxTokenNum"];

  if (v22)
  {
    v23 = [v5 objectForKeyedSubscript:@"maxTokenNum"];
    v62 = [v23 unsignedIntValue];
  }

  else
  {
    v62 = 200;
  }

  v69 = [v4 objectForKeyedSubscript:@"embeddingModule"];
  v24 = [v69 objectForKeyedSubscript:@"modelPrecision"];
  v61 = [v24 intValue];
  v25 = [v69 objectForKeyedSubscript:@"tokenEmbeddingDimension"];
  v60 = [v25 intValue];

  v71 = [v4 objectForKeyedSubscript:@"aneEmbeddingModule"];
  v26 = [v71 objectForKeyedSubscript:@"modelPrecision"];
  v59 = [v26 intValue];
  v27 = [v71 objectForKeyedSubscript:@"aneEmbeddingDimension"];
  v58 = [v27 intValue];

  v67 = [v4 objectForKeyedSubscript:@"encoderModule"];
  v28 = [v67 objectForKeyedSubscript:@"modelPrecision"];
  v56 = v11;
  v57 = v8;
  v55 = [v28 intValue];

  v29 = [v4 objectForKeyedSubscript:@"decoderModule"];
  v30 = [v29 objectForKeyedSubscript:@"modelPrecision"];
  v54 = [v30 intValue];
  v31 = [v29 objectForKeyedSubscript:@"numDecoderSteps"];
  v32 = [v31 unsignedIntValue];

  v33 = [v4 objectForKeyedSubscript:@"scoringModule"];
  v34 = [v33 objectForKeyedSubscript:@"cbrDecisionThreshold"];
  [v34 floatValue];
  v36 = v35;
  v37 = [v33 objectForKeyedSubscript:@"aerDecisionThreshold"];
  [v37 floatValue];
  v39 = v38;

  v40 = [v4 objectForKeyedSubscript:@"parityTest"];
  v41 = [v40 objectForKeyedSubscript:@"ignoreClassifier"];
  v42 = [v41 BOOLValue];

  v43 = [v72 objectForKeyedSubscript:@"asrConfig"];
  v44 = [v43 objectForKeyedSubscript:@"curConfMin"];
  [v44 floatValue];
  v46 = v45;
  v47 = [v43 objectForKeyedSubscript:@"prevConfMax"];
  [v47 floatValue];
  v49 = v48;

  if (!v5 || !v33 || !v29)
  {
    v53 = __cxa_allocate_exception(0x30uLL);
    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(v74, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(v53, v75, v74, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/TypedJson.mm", 679);
  }

  *a1 = v57;
  v50 = 0.0;
  if (v43)
  {
    v50 = v46;
  }

  *(a1 + 1) = v56;
  v51 = 1000.0;
  *(a1 + 2) = v68;
  if (v43)
  {
    v51 = v49;
  }

  *(a1 + 3) = v66;
  *(a1 + 4) = v65;
  *(a1 + 8) = v64;
  *(a1 + 12) = 0;
  *(a1 + 16) = v63;
  *(a1 + 24) = v62;
  *(a1 + 32) = v61;
  *(a1 + 36) = v60;
  *(a1 + 40) = v59;
  *(a1 + 44) = v58;
  *(a1 + 48) = v55;
  *(a1 + 56) = v54;
  *(a1 + 64) = v32;
  *(a1 + 72) = v36;
  *(a1 + 76) = v39;
  *(a1 + 80) = v42;
  *(a1 + 84) = v50;
  *(a1 + 88) = v51;
}

void sub_2227E3F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, id a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
    if ((v31 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v33);
  goto LABEL_8;
}

void marrs::qr::inference_engine::LSTMEncoderModule::setUtteranceTokensEmbeddings(marrs::qr::inference_engine::LSTMEncoderModule *this, marrs::inference_engine::InferenceTensor *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "embedded_seq");
  marrs::inference_engine::EspressoModule::setInput(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2227E419C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2227E420C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BaseException::BaseException(uint64_t a1, __int128 *a2, uint64_t a3, char *a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835DF710;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v10;
  }

  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  v12 = os_log_create("com.apple.siri", v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v31 = a2;
    }

    else
    {
      v31 = *a2;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v31;
    _os_log_error_impl(&dword_2227A9000, v12, OS_LOG_TYPE_ERROR, "%s", &__str, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, a4);
  v13 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    v13 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      p_str = __str.__r_.__value_.__r.__words[0];
      goto LABEL_12;
    }
  }

  else
  {
    v41 = __str;
  }

  size = v13;
  p_str = &__str;
LABEL_12:
  v16 = p_str + size;
  while (size)
  {
    v18 = *--v16;
    v17 = v18;
    if (v18 != 92)
    {
      --size;
      if (v17 != 47)
      {
        continue;
      }
    }

    v19 = v16 - p_str;
    if (v19 != -1)
    {
      std::string::basic_string(&v42, &__str, v19 + 1, 0xFFFFFFFFFFFFFFFFLL, &v33);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      v41 = v42;
      LOBYTE(v13) = *(&__str.__r_.__value_.__s + 23);
    }

    break;
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v34 = MEMORY[0x277D85DD0];
  v35 = 1174405120;
  v36 = ___ZN13BaseExceptionC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_PKci_block_invoke;
  v37 = &__block_descriptor_tmp_263;
  v38 = a2;
  v20 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v41;
  }

  v40 = a5;
  std::string::basic_string[abi:ne200100]<0>(&v32, "com.apple.siri.marrs");
  v21 = std::string::append(&v32, ".");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = *(a3 + 23);
  if (v23 >= 0)
  {
    v24 = a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v23 >= 0)
  {
    v25 = *(a3 + 23);
  }

  else
  {
    v25 = *(a3 + 8);
  }

  v26 = std::string::append(&v33, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v42, ".exception");
  v29 = *&v28->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  analytics_send_event_lazy();
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v20 & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_43:
    operator delete(v41.__r_.__value_.__l.__data_);
    return a1;
  }

  if (v20 < 0)
  {
    goto LABEL_43;
  }

  return a1;
}

void sub_2227E45B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  operator delete(__p);
  if (*(v39 + 47) < 0)
  {
    operator delete(*(v39 + 24));
  }

  std::exception::~exception(v39);
  _Unwind_Resume(a1);
}

void *___ZN13BaseExceptionC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_PKci_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4[23] < 0)
    {
      v4 = *v4;
    }

    xpc_dictionary_set_string(v2, "errorMessage", v4);
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    xpc_dictionary_set_string(v3, "fileName", v5);
    std::to_string(&v8, *(a1 + 64));
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    xpc_dictionary_set_string(v3, "line", v6);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  return v3;
}

void sub_2227E475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

marrs::qr::orchestration::AsrConfidenceChecker *marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::validate(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this, const QRRequest *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v11[3] = &unk_2835DF300;
  v11[4] = 0;
  var1 = a2->var1.var1;
  var0 = a2->var1.var0;
  if ((0x6DB6DB6DB6DB6DB7 * ((var1 - var0) >> 4)) <= 1)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(buf, "Number of TurnInputs less than two");
    std::string::basic_string[abi:ne200100]<0>(v11, "QueryRewrite");
    IOContentError::IOContentError(exception, buf, v11, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/RepetitionDetection/src/CorrectionsRepetitionPredictorPlugin.cpp", 162);
  }

  v5 = marrs::qr::orchestration::InputCheckerUtil::utteranceCheckerHelper(var0, var1, 1);
  v6 = v5;
  if (v5)
  {
    if ((marrs::qr::orchestration::AsrConfidenceChecker::verify(v5, a2) & 1) == 0)
    {
      v7 = __cxa_allocate_exception(0x30uLL);
      std::string::basic_string[abi:ne200100]<0>(buf, "Invalid ASR confidence score in turn inputs");
      std::string::basic_string[abi:ne200100]<0>(v11, "QueryRewrite");
      IOContentError::IOContentError(v7, buf, v11, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/RepetitionDetection/src/CorrectionsRepetitionPredictorPlugin.cpp", 173);
    }
  }

  else
  {
    v8 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v13 = "validate";
      _os_log_debug_impl(&dword_2227A9000, v8, OS_LOG_TYPE_DEBUG, "%s Received empty ASR utterance in TurnInputs, skipping RD.", buf, 0xCu);
    }
  }

  return v6;
}

void sub_2227E4A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
    if ((v20 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v19);
  goto LABEL_8;
}

void marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin::predict(marrs::qr::orchestration::CorrectionsRepetitionPredictorPlugin *this@<X0>, const QRRequest *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  if (marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::once != -1)
  {
    dispatch_once(&marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::once, &__block_literal_global);
  }

  v6 = marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::rdLogContext;
  v7 = os_signpost_id_generate(marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::rdLogContext);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Predict", "", buf, 2u);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 4;
  if ((*(*this + 24))(this, a2))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
  }

  v14 = 0u;
  v13 = 0u;
  v15 = 4;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__vdeallocate(a3);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v11 = 0;
  v12 = 0;
  *buf = 0;
  *(a3 + 24) = v13;
  *(a3 + 40) = v14;
  *(a3 + 56) = v15;
  *v17 = buf;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](v17);
  std::string::basic_string[abi:ne200100]<0>(&v16, "com.apple.siri.marrs");
  v8 = std::string::append(&v16, ".QueryRewrite.RepetitionDetector.Outcome");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v18 = v8->__r_.__value_.__r.__words[2];
  *v17 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  *buf = MEMORY[0x277D85DD0];
  v11 = 0x40000000;
  v12 = ___ZNK5marrs2qr13orchestration36CorrectionsRepetitionPredictorPlugin24doCoreAnalyticsForOutputERKNS1_10QRResponseE_block_invoke;
  *&v13 = &__block_descriptor_tmp_28;
  *(&v13 + 1) = this;
  *&v14 = a3;
  analytics_send_event_lazy();
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*v17);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v6, OS_SIGNPOST_INTERVAL_END, v7, "Predict", " enableTelemetry=YES ", buf, 2u);
  }
}

void sub_2227E5904(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, os_signpost_id_t spid, uint64_t a13, NSObject *log, unint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *buf, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (*(v67 - 121) < 0)
  {
    operator delete(*(v67 - 144));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
    if ((v65 & 1) == 0)
    {
LABEL_9:
      RepetitionPredictorResult::~RepetitionPredictorResult(&buf);
      RepetitionPredictorResult::~RepetitionPredictorResult(&STACK[0x320]);
      RepetitionPredictorResult::~RepetitionPredictorResult((v67 - 224));
      *(v67 - 224) = &STACK[0x370];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v67 - 224));
      *(v67 - 224) = &STACK[0x388];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v67 - 224));
      RepetitionPredictorInput::~RepetitionPredictorInput(&a18);
      RepetitionPredictorInput::~RepetitionPredictorInput(&a65);
      __cxa_begin_catch(a1);
      if (a15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, log, OS_SIGNPOST_INTERVAL_END, spid, "Predict", " enableTelemetry=YES ", &buf, 2u);
      }

      std::current_exception();
      v69.__ptr_ = &a17;
      std::rethrow_exception(v69);
      sub_2227E5CB4();
    }
  }

  else if (!v65)
  {
    goto LABEL_9;
  }

  __cxa_free_exception(v66);
  goto LABEL_9;
}

void sub_2227E5CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::exception_ptr a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  std::exception_ptr::~exception_ptr(&a17);
  __cxa_end_catch();
  a53 = a13;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Unwind_Resume(a1);
}

void sub_2227E5CDC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2227E5CE4);
  }

  __clang_call_terminate(a1);
}

xpc_object_t ___ZNK5marrs2qr13orchestration36CorrectionsRepetitionPredictorPlugin24doCoreAnalyticsForOutputERKNS1_10QRResponseE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  v4 = *(*(a1 + 40) + 24);
  if (v4 >= 4)
  {
    v5 = "NOT_AVAILABLE";
  }

  else
  {
    v5 = (&off_2784B5088)[v4];
  }

  MEMORY[0x223DC1FB0](__p, v5);
  if (v3)
  {
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    xpc_dictionary_set_string(v3, "repetitionType", v6);
    v7 = (v2 + 216);
    if (*(v2 + 239) < 0)
    {
      v7 = *v7;
    }

    xpc_dictionary_set_string(v3, "locale", v7);
    v8 = (v2 + 312);
    if (*(v2 + 335) < 0)
    {
      v8 = *v8;
    }

    xpc_dictionary_set_string(v3, "assetVersion", v8);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2227E5DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v13);
        }

        *(4 * v10) = *v5;
        v6 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2227E5F8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, v2);
  }

  return a1;
}

void *___ZNK5marrs2qr13orchestration36CorrectionsRepetitionPredictorPlugin23doCoreAnalyticsForInputERKNS1_9QRRequestE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_double(v3, "turn1MinConfidence", *(a1 + 40));
    xpc_dictionary_set_double(v4, "turn1MaxConfidence", *(a1 + 48));
    v5 = (v2 + 216);
    if (*(v2 + 239) < 0)
    {
      v5 = *v5;
    }

    xpc_dictionary_set_string(v4, "locale", v5);
    v6 = (v2 + 312);
    if (*(v2 + 335) < 0)
    {
      v6 = *v6;
    }

    xpc_dictionary_set_string(v4, "assetVersion", v6);
  }

  return v4;
}

void marrs::mrr::mr::ModelBasedMR::resolveMentionsInUtterance(uint64_t a1@<X0>, char **a2@<X1>, char **a3@<X2>, uint64_t **a4@<X3>, unint64_t *a5@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v8, OS_LOG_TYPE_INFO, "executing model based MR request", buf, 2u);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a2 == a2[1])
  {
    v20 = MRRLoggerForCategory(2);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v21 = "No of MRREntities is zero, not running visual MR";
    v22 = v20;
    v23 = 2;
    goto LABEL_95;
  }

  v9 = a3[5];
  v10 = a3[6];
  if (v9 == v10)
  {
LABEL_8:
    v58 = a2;
    v64 = 0uLL;
    v65 = 0;
    v12 = *a4;
    v13 = a4[1];
    if (*a4 != v13)
    {
      do
      {
        v14 = *v12;
        if ((*(*v12 + 72) - *(*v12 + 76)) < 0xB)
        {
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>(&v64, *v12);
        }

        v15 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(v14 + 32);
          if (*(v16 + 23) < 0)
          {
            v16 = *v16;
          }

          *buf = 136315394;
          *&buf[4] = v16;
          *&buf[12] = 1024;
          *&buf[14] = 10;
          _os_log_impl(&dword_2227A9000, v15, OS_LOG_TYPE_DEBUG, "contextualSpans span - (%s) was discarded since it's longer than supported length of %d", buf, 0x12u);
        }

        ++v12;
      }

      while (v12 != v13);
      v9 = a3[5];
      v10 = a3[6];
    }

    if (v9 != v10)
    {
      v17 = a3[8];
      v18 = a3[19];
      *v66 = 0;
      v67 = 0;
      v68 = 0;
      marrs::mrr::mr::ModelBasedMR::resolveMentionsInUtterance(buf, a1, v17, a3 + 5, v58, v18, v66);
    }

    v19 = v64;
    if (v64 != *(&v64 + 1))
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v67 = 0;
      v68 = 0;
      *v66 = &v67;
      do
      {
        if ((~*(*v19 + 80) & 3) == 0)
        {
          operator new();
        }

        v19 += 8;
      }

      while (v19 != *(&v64 + 1));
      v24 = *v66;
      if (*v66 != &v67)
      {
        v25 = 0;
        do
        {
          if (v25 >= v63)
          {
            v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v61) >> 3);
            v27 = v26 + 1;
            if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v63 - v61) >> 3) > v27)
            {
              v27 = 0x5555555555555556 * ((v63 - v61) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v63 - v61) >> 3) >= 0x555555555555555)
            {
              v28 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v28 = v27;
            }

            v71 = &v61;
            if (v28)
            {
              if (v28 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v29 = 24 * v26;
            *buf = 0;
            *&buf[8] = v29;
            *&buf[16] = 24 * v26;
            v70 = 0;
            *(v29 + 8) = 0;
            *(v29 + 16) = 0;
            *v29 = 0;
            std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(24 * v26, *(v24 + 5), *(v24 + 6), 0x2E8BA2E8BA2E8BA3 * ((*(v24 + 6) - *(v24 + 5)) >> 3));
            v25 = (*&buf[16] + 24);
            v30 = (*&buf[8] - (v62 - v61));
            memcpy(v30, v61, v62 - v61);
            v31 = v61;
            v32 = v63;
            v61 = v30;
            v62 = v25;
            v63 = v70;
            *&buf[16] = v31;
            v70 = v32;
            *buf = v31;
            *&buf[8] = v31;
            std::__split_buffer<std::vector<sirinluinternal::MatchingSpan>>::~__split_buffer(buf);
          }

          else
          {
            *v25 = 0;
            *(v25 + 1) = 0;
            *(v25 + 2) = 0;
            std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(v25, *(v24 + 5), *(v24 + 6), 0x2E8BA2E8BA2E8BA3 * ((*(v24 + 6) - *(v24 + 5)) >> 3));
            v25 += 24;
          }

          v62 = v25;
          v33 = *(v24 + 1);
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = *(v24 + 2);
              v47 = *v34 == v24;
              v24 = v34;
            }

            while (!v47);
          }

          v24 = v34;
        }

        while (v34 != &v67);
      }

      std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(v67);
      v35 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = 0xAAAAAAAAAAAAAAABLL * (v62 - v61);
        _os_log_impl(&dword_2227A9000, v35, OS_LOG_TYPE_INFO, "CSM Span Group size: %lu", buf, 0xCu);
      }

      v36 = v61;
      v37 = v62;
      if (v61 != v62)
      {
        while (1)
        {
          if (v36[1] == *v36)
          {
            goto LABEL_90;
          }

          memset(buf, 0, sizeof(buf));
          v38 = *v36;
LABEL_52:
          if (v38 != v36[1])
          {
            break;
          }

          v53 = MRRLoggerForCategory(2);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *v66 = 0;
            _os_log_impl(&dword_2227A9000, v53, OS_LOG_TYPE_INFO, "CSM span resolved to SDA. Skipping model run", v66, 2u);
          }

          v54 = *&buf[8];
          v55 = *buf;
          if (*buf == *&buf[8])
          {
            marrs::mrr::mr::addCSMSpansToMatchingResult(v36, a5, 1.0);
          }

          v56 = a5[1];
          do
          {
            if (v56 >= a5[2])
            {
              v56 = std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<marrs::mrr::mr::MRMatchingResult const&>(a5, v55);
            }

            else
            {
              std::vector<marrs::mrr::mr::MRMatchingResult>::__construct_one_at_end[abi:ne200100]<marrs::mrr::mr::MRMatchingResult const&>(a5, v55);
              v56 += 344;
            }

            a5[1] = v56;
            v55 += 344;
          }

          while (v55 != v54);
          *v66 = buf;
          std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](v66);
LABEL_90:
          v36 += 3;
          if (v36 == v37)
          {
            goto LABEL_91;
          }
        }

        v39 = *(v38 + 64);
        v40 = *(v39 + 56);
        v41 = *(v39 + 64);
        while (1)
        {
          if (v40 == v41)
          {
            v38 += 88;
            goto LABEL_52;
          }

          v42 = *(*v40 + 16);
          if (v42)
          {
            v43 = *(v42 + 8);
            if (v43)
            {
              v44 = *(v43 + 23);
              if (v44 < 0)
              {
                if (v43[1] != 14)
                {
                  goto LABEL_66;
                }

                v43 = *v43;
              }

              else if (v44 != 14)
              {
                goto LABEL_66;
              }

              v45 = *v43;
              v46 = *(v43 + 6);
              v47 = v45 == 0x686374614D6D7363 && v46 == 0x656372756F536863;
              if (v47)
              {
                v48 = *(*v40 + 32);
                if (v48)
                {
                  v49 = *(v48 + 23);
                  if (v49 < 0)
                  {
                    if (v48[1] != 13)
                    {
                      goto LABEL_66;
                    }

                    v48 = *v48;
                  }

                  else if (v49 != 13)
                  {
                    goto LABEL_66;
                  }

                  v50 = *v48;
                  v51 = *(v48 + 5);
                  if (v50 == 0x45746E65696C6173 && v51 == 0x797469746E45746ELL)
                  {
                    *v66 = 0;
                    v67 = 0;
                    v68 = 0;
                    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>(v66, *v36);
                  }
                }
              }
            }
          }

LABEL_66:
          v40 += 8;
        }
      }

LABEL_91:
      *buf = &v61;
      std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    *buf = &v64;
    std::vector<std::unique_ptr<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](buf);
    return;
  }

  v11 = a3[5];
  while ((*(*v11 + 72) - *(*v11 + 76)) < 0xB)
  {
    v11 += 8;
    if (v11 == v10)
    {
      goto LABEL_8;
    }
  }

  v57 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = 10;
    v21 = "Model based mention resolver does not support mentions with more than %d tokens";
    v22 = v57;
    v23 = 8;
LABEL_95:
    _os_log_impl(&dword_2227A9000, v22, OS_LOG_TYPE_INFO, v21, buf, v23);
  }
}

void sub_2227E6B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void marrs::mrr::mr::ModelBasedMR::resolveMentionsInUtterance(void *a1, uint64_t a2, void *a3, char **a4, char **a5, uint64_t a6, uint64_t *a7)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(&v12[3], 0, 24);
  v7 = MRRLoggerForCategory(3);
  v8 = os_signpost_id_generate(v7);
  v9 = MRRLoggerForCategory(3);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MRModelPreprocessing", "", buf, 2u);
    }
  }

  v11 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v11, OS_LOG_TYPE_INFO, "BEGIN MRModelPreprocessing", buf, 2u);
  }

  *buf = 0;
  memset(v12, 0, 24);
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType const*,marrs::mrr::mr::MRResultType const*>(v12, buf, &buf[4], 1uLL);
}

void sub_2227ECD5C()
{
  if (v0 < 0)
  {
    JUMPOUT(0x2227EDEECLL);
  }

  JUMPOUT(0x2227EDEF0);
}

void sub_2227ED5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  STACK[0x4B0] = &STACK[0x480];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  *(v56 - 208) = &STACK[0x450];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100]((v56 - 208));
  *(v56 - 208) = a44;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100]((v56 - 208));
  *(v56 - 208) = &STACK[0x3C0];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v56 - 208));
  if (a56)
  {
    operator delete(a56);
  }

  JUMPOUT(0x2227EDE40);
}

void sub_2227ED618(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      operator delete(v2);
    }

    if (SLOBYTE(STACK[0x277]) < 0)
    {
      operator delete(STACK[0x260]);
    }

    v3 = STACK[0x4B0];
    if (STACK[0x4B0])
    {
      STACK[0x4B8] = v3;
      operator delete(v3);
    }

    STACK[0x4B0] = &STACK[0x450];
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
    JUMPOUT(0x2227ED898);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED634(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35)
{
  if (a2)
  {
    if (v35)
    {
      operator delete(v35);
      JUMPOUT(0x2227ED86CLL);
    }

    JUMPOUT(0x2227ED898);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED640(uint64_t a1, int a2)
{
  if (a2)
  {
    STACK[0x428] = v2;
    JUMPOUT(0x2227ED64CLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED6B4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227ED6BCLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED6D4(uint64_t a1, int a2)
{
  if (a2)
  {
    *(v2 - 208) = &STACK[0x260];
    std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100]((v2 - 208));
    std::pair<std::vector<marrs::mrr::mr::MRREntity>,std::vector<marrs::mrr::mr::MRREntity>>::~pair(&STACK[0x4B0]);
    JUMPOUT(0x2227ED6F4);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED714(uint64_t a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x277]) < 0)
    {
      operator delete(STACK[0x260]);
    }

    std::__tree<std::string>::destroy(STACK[0x4B8]);
    if (STACK[0x450])
    {
      operator delete(STACK[0x450]);
    }

    JUMPOUT(0x2227EDB60);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED744(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(v2 - 185) < 0)
    {
      operator delete(*(v2 - 208));
    }

    if (SLOBYTE(STACK[0x277]) < 0)
    {
      operator delete(STACK[0x260]);
    }

    std::__tree<std::string>::destroy(STACK[0x4B8]);
    if (STACK[0x450])
    {
      operator delete(STACK[0x450]);
    }

    JUMPOUT(0x2227EDB60);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED774()
{
  if (STACK[0x4B0])
  {
    operator delete(STACK[0x4B0]);
  }

  STACK[0x4B0] = v0 - 208;
  JUMPOUT(0x2227ED934);
}

void sub_2227ED794()
{
  if (STACK[0x4B0])
  {
    JUMPOUT(0x2227ED7A0);
  }

  JUMPOUT(0x2227ED7A4);
}

void sub_2227ED7CC()
{
  if (STACK[0x4B0])
  {
    JUMPOUT(0x2227ED7D8);
  }

  JUMPOUT(0x2227ED7DCLL);
}

void sub_2227ED7F4(uint64_t a1, int a2)
{
  if (a2)
  {
    std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(&STACK[0x4B0]);
    JUMPOUT(0x2227EDA48);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED808(uint64_t a1, int a2)
{
  if (a2)
  {
    STACK[0x458] = v2;
    JUMPOUT(0x2227EDA48);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED824(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53)
{
  if (a2)
  {
    if (v53)
    {
      operator delete(v53);
    }

    JUMPOUT(0x2227EDCE8);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED844(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227ED84CLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED874(uint64_t a1, int a2)
{
  if (a2)
  {
    if (STACK[0x260])
    {
      operator delete(STACK[0x260]);
    }

    JUMPOUT(0x2227EDCE8);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED8A8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227ED8B4);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED8FC()
{
  STACK[0x4B0] = &STACK[0x480];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(*(v0 - 200));
  JUMPOUT(0x2227ED918);
}

void sub_2227ED95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (v66)
  {
    operator delete(v66);
  }

  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x330]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x360]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x390]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x3C0]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x3F0]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x420]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x480]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x450]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor((v67 - 208));
  STACK[0x450] = &a59;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a21)
  {
    operator delete(a21);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a19)
  {
    operator delete(a19);
  }

  STACK[0x450] = &a63;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a53)
  {
    operator delete(a53);
  }

  STACK[0x450] = &a65;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  STACK[0x450] = &a66;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a35)
  {
    operator delete(a35);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a29)
  {
    JUMPOUT(0x2227EDEECLL);
  }

  JUMPOUT(0x2227EDEF0);
}

void sub_2227ED99C()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227ED990);
}

void sub_2227ED9B0()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227EDC60);
}

void sub_2227ED9C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (STACK[0x480])
    {
      operator delete(STACK[0x480]);
    }

    JUMPOUT(0x2227EDAA8);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227ED9DC()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227EDE38);
}

void sub_2227ED9F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      operator delete(v2);
    }

    JUMPOUT(0x2227EDA48);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDA08()
{
  if (v0)
  {
    JUMPOUT(0x2227ED950);
  }

  JUMPOUT(0x2227EDE40);
}

void sub_2227EDA1C()
{
  STACK[0x360] = &STACK[0x4B0];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  JUMPOUT(0x2227EDC4CLL);
}

void sub_2227EDA24()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2227ED938);
}

void sub_2227EDA38()
{
  STACK[0x3F0] = &STACK[0x4B0];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3F0]);
  JUMPOUT(0x2227EDC94);
}

void sub_2227EDA40(uint64_t a1, int a2)
{
  if (a2)
  {
    STACK[0x480] = v2 - 208;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x480]);
    JUMPOUT(0x2227EDA58);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDA88(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, os_signpost_id_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a2)
  {
    v45 = STACK[0x260];
    if (STACK[0x260])
    {
      STACK[0x268] = v45;
      operator delete(v45);
    }

    STACK[0x4B0] = &STACK[0x420];
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
    __cxa_begin_catch(a1);
    v46 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      LOWORD(STACK[0x260]) = 0;
      _os_log_impl(&dword_2227A9000, v46, OS_LOG_TYPE_INFO, "[VisualMR] Error computing features, returning empty", &STACK[0x260], 2u);
    }

    v47 = MRRLoggerForCategory(3);
    if (a39 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = v47;
      if (os_signpost_enabled(v47))
      {
        LOWORD(STACK[0x260]) = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v48, OS_SIGNPOST_INTERVAL_END, a34, "MRModelPreprocessing", " enableTelemetry=YES ", &STACK[0x260], 2u);
      }
    }

    v49 = MRRLoggerForCategory(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      LOWORD(STACK[0x260]) = 0;
      _os_log_impl(&dword_2227A9000, v49, OS_LOG_TYPE_INFO, "END MRModelPreprocessing", &STACK[0x260], 2u);
    }

    *a44 = *&STACK[0x240];
    *(a44 + 16) = STACK[0x250];
    STACK[0x250] = 0;
    STACK[0x248] = 0;
    STACK[0x240] = 0;
    __cxa_end_catch();
    JUMPOUT(0x2227EC8F0);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDADC(void *a1, int a2)
{
  if (a2)
  {
    if (*(v2 - 185) < 0)
    {
      operator delete(*(v2 - 208));
    }

    std::__tree<std::string>::destroy(STACK[0x268]);
    if (STACK[0x420])
    {
      operator delete(STACK[0x420]);
    }

    STACK[0x4B0] = &STACK[0x480];
    std::vector<std::vector<marrs::mrr::mr::SurroundingText>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
    __cxa_begin_catch(a1);
    if (a2 == 3)
    {
      v5 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(STACK[0x4B0]) = 0;
        _os_log_impl(&dword_2227A9000, v5, OS_LOG_TYPE_INFO, "IO Error in computing surrounding text features, disabling for this request", &STACK[0x4B0], 2u);
      }
    }

    else
    {
      v6 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(STACK[0x4B0]) = 0;
        _os_log_impl(&dword_2227A9000, v6, OS_LOG_TYPE_INFO, "Unknown error in computing surrounding text features, disabling for this request", &STACK[0x4B0], 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2227E9498);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDCB0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2227EDCBCLL);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDE10(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x2227EDF1CLL);
}

void sub_2227EDE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v66)
  {
    operator delete(v66);
  }

  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x450]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor((v67 - 208));
  STACK[0x450] = &a59;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a21)
  {
    operator delete(a21);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a19)
  {
    operator delete(a19);
  }

  STACK[0x450] = &a63;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a53)
  {
    operator delete(a53);
  }

  STACK[0x450] = &a65;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  STACK[0x450] = &a66;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x450]);
  if (a35)
  {
    operator delete(a35);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a29)
  {
    JUMPOUT(0x2227EDEECLL);
  }

  JUMPOUT(0x2227EDEF0);
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v1; std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(i))
    {
      i -= 344;
    }

    a1[1] = v1;
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(i))
    {
      i -= 344;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 11;
      v7 = v4 - 11;
      v8 = v4 - 11;
      do
      {
        v9 = *v8;
        v8 -= 11;
        (*v9)(v7);
        v6 -= 11;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void marrs::mrr::mr::addCSMSpansToMatchingResult(uint64_t *a1, unint64_t *a2, float a3)
{
  v4 = 3;
  memset(__p, 0, sizeof(__p));
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType const*,marrs::mrr::mr::MRResultType const*>(__p, &v4, &v5, 1uLL);
}

void sub_2227EE3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<marrs::mrr::mr::MRMatchingResult>::__construct_one_at_end[abi:ne200100]<marrs::mrr::mr::MRMatchingResult const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  MEMORY[0x223DC1930](v4);
  *(v4 + 88) = *(a2 + 88);
  std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((v4 + 96), (a2 + 96));
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  *(v4 + 336) = 0;
  result = std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((v4 + 320), *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 2);
  *(a1 + 8) = v4 + 344;
  return result;
}

void sub_2227EE478(_Unwind_Exception *a1)
{
  if (*(v2 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((v2 + 96));
  }

  MEMORY[0x223DC1950](v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<marrs::mrr::mr::MRMatchingResult const&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0x82FA0BE82FA0BE83 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xBE82FA0BE82FA0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F417D05F417D06 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5F417D05F417D06 * ((a1[2] - *a1) >> 3);
  }

  if (0x82FA0BE82FA0BE83 * ((a1[2] - *a1) >> 3) >= 0x5F417D05F417D0)
  {
    v6 = 0xBE82FA0BE82FA0;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v6);
  }

  v7 = 344 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  MEMORY[0x223DC1930](v7, a2);
  *(v7 + 88) = *(a2 + 88);
  std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((v7 + 96), (a2 + 96));
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 336) = 0;
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((v7 + 320), *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 2);
  *&v16 = v16 + 344;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(&v14);
  return v13;
}

void sub_2227EE60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((v7 + 96));
  }

  MEMORY[0x223DC1950](v7);
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(unint64_t a1)
{
  if (a1 < 0xBE82FA0BE82FA1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

marrs::mrr::mr::MRREntity *std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100](marrs::mrr::mr::MRREntity *this, const marrs::mrr::mr::MRREntity *a2)
{
  *this = 0;
  *(this + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    marrs::mrr::mr::MRREntity::MRREntity(this, a2);
    *(this + 216) = 1;
  }

  return this;
}

void sub_2227EE6E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227EE768(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = v6 + v7;
      v10 = MEMORY[0x223DC1920](a4 + v7, v6 + v7);
      v11 = *(v6 + v7 + 88);
      *(v10 + 96) = 0;
      v12 = v10 + 96;
      *(v12 - 8) = v11;
      *(v12 + 216) = 0;
      if (*(v6 + v7 + 312) == 1)
      {
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(v12, v9 + 96);
      }

      v8[40] = 0;
      v8[41] = 0;
      v8[42] = 0;
      *(v8 + 20) = *(v9 + 320);
      v8[42] = *(v9 + 336);
      *(v9 + 320) = 0;
      *(v9 + 328) = 0;
      *(v9 + 336) = 0;
      v7 += 344;
    }

    while (v6 + v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(v6);
      v6 += 344;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 344;
    std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(v3 - 344);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  if (*(a1 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((a1 + 96));
  }

  JUMPOUT(0x223DC1950);
}

__n128 std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  v7 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v7;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 1;
  return result;
}

void std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void sub_2227EEA7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marrs::mrr::mr::MRMatchingResult::MRMatchingResult(uint64_t a1, float a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x223DC1930](a1, a3);
  *(v7 + 96) = 0;
  *(v7 + 88) = a2;
  *(v7 + 312) = 0;
  *(v7 + 328) = 0;
  *(v7 + 336) = 0;
  *(v7 + 320) = 0;
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((v7 + 320), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
  return a1;
}

void sub_2227EEB04(_Unwind_Exception *a1)
{
  if (*(v1 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity(v2);
  }

  MEMORY[0x223DC1950](v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<sirinluinternal::MatchingSpan>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v22 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(v5);
  }

  v6 = 88 * v2;
  MEMORY[0x223DC1930](v6, a2);
  v21 = (v6 + 88);
  v7 = *a1;
  v8 = a1[1];
  v9 = v6 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v9;
    do
    {
      v12 = MEMORY[0x223DC1920](v11, v10);
      v10 += 88;
      v11 = v12 + 88;
    }

    while (v10 != v8);
    v13 = v7;
    v14 = v7;
    do
    {
      v15 = *v14;
      v14 += 11;
      (*v15)(v7);
      v13 += 11;
      v7 = v14;
    }

    while (v14 != v8);
  }

  v16 = *a1;
  *a1 = v9;
  v17 = a1[2];
  v19 = v21;
  *(a1 + 1) = v21;
  *&v21 = v16;
  *(&v21 + 1) = v17;
  v20[0] = v16;
  v20[1] = v16;
  std::__split_buffer<sirinluinternal::MatchingSpan>::~__split_buffer(v20);
  return v19;
}

void std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void std::vector<sirinluinternal::MatchingSpan>::__init_with_size[abi:ne200100]<sirinluinternal::MatchingSpan*,sirinluinternal::MatchingSpan*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2E8BA2E8BA2E8BBLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__split_buffer<std::vector<sirinluinternal::MatchingSpan>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluinternal::MatchingSpan>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<sirinluinternal::MatchingSpan>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::vector<marrs::mrr::mr::MRResultType>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType const*,marrs::mrr::mr::MRResultType const*>(void **result, char *__src, char *a3)
{
  v3 = __src;
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if (v5 == *result)
  {
    if (v5)
    {
      result[1] = v6;
      operator delete(v6);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](v4, 1uLL);
  }

  v7 = result[1];
  if (v7 == v6)
  {
    if (__src == a3)
    {
      v10 = *result;
    }

    else
    {
      v10 = result[1];
      do
      {
        v11 = *v3;
        v3 += 4;
        *v10 = v11;
        v10 += 4;
      }

      while (v3 != a3);
    }

    v9 = (v7 + v10 - v6);
  }

  else
  {
    v8 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v8);
    }

    v9 = &v6[v8];
  }

  v4[1] = v9;
  return result;
}

uint64_t std::map<marrs::mrr::mr::EntityType,char const*>::at(int a1)
{
  v1 = qword_280AC2C58;
  if (!qword_280AC2C58)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(v1 + 32);
      if (v2 <= a1)
      {
        break;
      }

      v1 = *v1;
      if (!v1)
      {
        goto LABEL_8;
      }
    }

    if (v2 >= a1)
    {
      return v1 + 40;
    }

    v1 = *(v1 + 8);
    if (!v1)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::vector<marrs::mrr::mr::SurroundingText>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<marrs::mrr::mr::MRMatchingResult const&>(a1, a2);
  }

  else
  {
    std::vector<marrs::mrr::mr::MRMatchingResult>::__construct_one_at_end[abi:ne200100]<marrs::mrr::mr::MRMatchingResult const&>(a1, a2);
    result = v3 + 344;
  }

  a1[1] = result;
  return result;
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__insert_with_size[abi:ne200100]<std::__wrap_iter<marrs::mrr::mr::MRMatchingResult*>,std::__wrap_iter<marrs::mrr::mr::MRMatchingResult*>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v10 = result[1];
    v9 = result[2];
    if ((0x82FA0BE82FA0BE83 * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0x82FA0BE82FA0BE83 * ((v10 - a2) >> 3)) >= a5)
      {
        v17 = 344 * a5;
        std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(result, a2, result[1], a2 + 344 * a5);
        v16 = v17 + a3;
      }

      else
      {
        result[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*>(result, v15 + a3, a4, result[1]);
        if (v15 < 1)
        {
          return;
        }

        std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(result, a2, v10, a2 + 344 * a5);
        v16 = v15 + a3;
      }

      std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *>(a3, v16, a2);
    }

    else
    {
      v11 = *result;
      v12 = a5 - 0x7D05F417D05F417DLL * ((v10 - *result) >> 3);
      if (v12 > 0xBE82FA0BE82FA0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0x82FA0BE82FA0BE83 * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x5F417D05F417D0)
      {
        v14 = 0xBE82FA0BE82FA0;
      }

      else
      {
        v14 = v12;
      }

      v26 = result;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v14);
      }

      v18 = 0;
      v19 = 8 * ((a2 - v11) >> 3);
      v23[0] = 0;
      v23[1] = v19;
      v24 = v19;
      v25 = 0;
      v20 = 344 * a5;
      v21 = v19 + 344 * a5;
      do
      {
        v22 = v19 + v18;
        MEMORY[0x223DC1930](v19 + v18, a3 + v18, a3, a4);
        *(v22 + 88) = *(a3 + v18 + 88);
        std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((v19 + v18 + 96), (a3 + v18 + 96));
        *(v22 + 320) = 0;
        *(v22 + 328) = 0;
        *(v22 + 336) = 0;
        std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((v19 + v18 + 320), *(a3 + v18 + 320), *(a3 + v18 + 328), (*(a3 + v18 + 328) - *(a3 + v18 + 320)) >> 2);
        v18 += 344;
      }

      while (v20 != v18);
      v24 = v21;
      std::vector<marrs::mrr::mr::MRMatchingResult>::__swap_out_circular_buffer(result, v23, a2);
      std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(v23);
    }
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      MEMORY[0x223DC1930](a4 + v7, a2 + v7);
      *(v8 + 88) = *(a2 + v7 + 88);
      std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((a4 + v7 + 96), (a2 + v7 + 96));
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((a4 + v7 + 320), *(a2 + v7 + 320), *(a2 + v7 + 328), (*(a2 + v7 + 328) - *(a2 + v7 + 320)) >> 2);
      v7 += 344;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2227EF410(_Unwind_Exception *a1)
{
  MEMORY[0x223DC1950](v2);
  while (v2 != v1)
  {
    v2 -= 344;
    std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::destroy[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,0>(v2);
  }

  _Unwind_Resume(a1);
}

__n128 std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v11 = (v7 + v10);
      v12 = (v6 + v10);
      v13 = MEMORY[0x223DC1920](v6 + v10, v7 + v10);
      v14 = *(v7 + v10 + 88);
      *(v13 + 96) = 0;
      v15 = v13 + 96;
      *(v15 - 8) = v14;
      *(v15 + 216) = 0;
      if (*(v7 + v10 + 312) == 1)
      {
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(v15, &v11[6]);
      }

      v10 += 344;
      v12[20].n128_u64[0] = 0;
      v12[20].n128_u64[1] = 0;
      v12[21].n128_u64[0] = 0;
      result = v11[20];
      v12[20] = result;
      v12[21].n128_u64[0] = v11[21].n128_u64[0];
      v11[20].n128_u64[0] = 0;
      v11[20].n128_u64[1] = 0;
      v11[21].n128_u64[0] = 0;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(a1 + 8) = v8;
  if (v6 != a4)
  {
    v17 = 0;
    v18 = a4 - v6;
    do
    {
      v19 = v7 + v17;
      v20 = v6 + v17;
      sirinluinternal::MatchingSpan::operator=();
      *(v6 + v17 - 256) = *(v7 + v17 - 256);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v6 + v17 - 248, v7 + v17 - 248);
      v22 = (v6 + v17 - 24);
      v21 = *v22;
      if (*v22)
      {
        *(v20 - 16) = v21;
        operator delete(v21);
        *v22 = 0;
        *(v20 - 16) = 0;
        *(v20 - 8) = 0;
      }

      v23 = (v19 - 24);
      result = *(v19 - 24);
      *v22 = result;
      *(v20 - 8) = *(v19 - 8);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
      v17 -= 344;
    }

    while (v18 != v17);
  }

  return result;
}

void std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      sirinluinternal::MatchingSpan::operator=();
      *(a3 + 88) = *(v5 + 88);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<marrs::mrr::mr::MRREntity,false> const&>((a3 + 96), (v5 + 96));
      if (a3 != v5)
      {
        std::vector<marrs::mrr::mr::MRResultType>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((a3 + 320), *(v5 + 320), *(v5 + 328), (*(v5 + 328) - *(v5 + 320)) >> 2);
      }

      v5 += 344;
      a3 += 344;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<marrs::mrr::mr::MRREntity,false> const&>(marrs::mrr::mr::MRREntity *this, marrs::mrr::mr::MRREntity *a2)
{
  if (*(this + 216) == *(a2 + 216))
  {
    if (*(this + 216))
    {
      *this = *a2;
      std::string::operator=((this + 8), (a2 + 8));
      std::string::operator=((this + 32), (a2 + 32));
      std::string::operator=((this + 56), (a2 + 56));
      v4 = *(a2 + 92);
      *(this + 5) = *(a2 + 5);
      *(this + 92) = v4;
      if (this == a2)
      {
        std::string::operator=((this + 136), (a2 + 136));
        *(this + 40) = *(a2 + 40);

        std::string::operator=(this + 7, a2 + 7);
      }

      else
      {
        v5 = *(this + 14);
        v7 = *(a2 + 14);
        v6 = *(a2 + 15);
        v8 = v6 - v7;
        if (*(this + 16) - v5 < v6 - v7)
        {
          v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
          std::vector<marrs::mrr::mr::SurroundingText>::__vdeallocate(this + 112);
          if (v9 <= 0x666666666666666)
          {
            v10 = 0x999999999999999ALL * ((*(this + 16) - *(this + 14)) >> 3);
            if (v10 <= v9)
            {
              v10 = v9;
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 16) - *(this + 14)) >> 3) >= 0x333333333333333)
            {
              v11 = 0x666666666666666;
            }

            else
            {
              v11 = v10;
            }

            std::vector<marrs::mrr::mr::SurroundingText>::__vallocate[abi:ne200100](this + 14, v11);
          }

          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v12 = *(this + 15);
        if (v12 - v5 >= v8)
        {
          if (v7 != v6)
          {
            do
            {
              std::string::operator=(v5, v7);
              *(v5 + 24) = *(v7 + 24);
              v7 += 40;
              v5 += 40;
            }

            while (v7 != v6);
            v12 = *(this + 15);
          }

          while (v12 != v5)
          {
            v14 = v12[-1].__r_.__value_.__s.__data_[7];
            v12 = (v12 - 40);
            if (v14 < 0)
            {
              operator delete(v12->__r_.__value_.__l.__data_);
            }
          }

          *(this + 15) = v5;
        }

        else
        {
          v13 = (v12 + v7 - v5);
          if (v12 != v5)
          {
            do
            {
              std::string::operator=(v5, v7);
              *(v5 + 24) = *(v7 + 24);
              v7 += 40;
              v5 += 40;
            }

            while (v7 != v13);
            v12 = *(this + 15);
          }

          *(this + 15) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::SurroundingText>,marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*>(this + 112, v13, v6, v12);
        }

        std::string::operator=((this + 136), (a2 + 136));
        *(this + 40) = *(a2 + 40);
        std::string::operator=(this + 7, a2 + 7);
        v15 = *(a2 + 24);
        v16 = *(a2 + 25);

        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 8, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
      }
    }
  }

  else if (*(this + 216))
  {
    marrs::mrr::mr::MRREntity::~MRREntity(this);
    *(this + 216) = 0;
  }

  else
  {
    marrs::mrr::mr::MRREntity::MRREntity(this, a2);
    *(this + 216) = 1;
  }
}

uint64_t *std::vector<marrs::mrr::mr::MRResultType>::__assign_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<marrs::mrr::mr::MRResultType>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

void std::vector<marrs::mrr::mr::SurroundingText>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<marrs::mrr::mr::SurroundingText>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

double std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == *(a2 + 216))
  {
    if (*(a1 + 216))
    {

      marrs::mrr::mr::MRREntity::operator=(a1, a2);
    }
  }

  else if (*(a1 + 216))
  {
    marrs::mrr::mr::MRREntity::~MRREntity(a1);
    *(v4 + 216) = 0;
  }

  else
  {

    *&result = std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__construct[abi:ne200100]<marrs::mrr::mr::MRREntity>(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t marrs::mrr::mr::MRREntity::operator=(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  v8 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = v8;
  std::vector<marrs::mrr::mr::SurroundingText>::__vdeallocate(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v9 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v9;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v10 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v10;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 192));
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return a1;
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xBE82FA0BE82FA1)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2227EFD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::__emplace_unique_key_args<marrs::mrr::mr::EntityType,std::piecewise_construct_t const&,std::tuple<marrs::mrr::mr::EntityType const&>,std::tuple<>>(uint64_t **a1, int a2, _DWORD **a3)
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
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::allocator<marrs::mrr::mr::MRMatchingResult>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,sirinluinternal::MatchingSpan const&,float &,marrs::mrr::mr::MRREntity const&,std::vector<marrs::mrr::mr::MRResultType> &>(uint64_t a1, uint64_t a2, marrs::mrr::mr::MRREntity *a3, uint64_t a4, float a5)
{
  marrs::mrr::mr::MRREntity::MRREntity(&v9, a3);
  marrs::mrr::mr::MRMatchingResult::MRMatchingResult(a1, a5, a2, &v9, a4);
  v22 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  v22 = &v16;
  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&,float &,marrs::mrr::mr::MRREntity const&,std::vector<marrs::mrr::mr::MRResultType> &>(uint64_t *a1, uint64_t a2, float *a3, marrs::mrr::mr::MRREntity *a4, uint64_t a5)
{
  v5 = 0x82FA0BE82FA0BE83 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0xBE82FA0BE82FA0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F417D05F417D06 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x5F417D05F417D06 * ((a1[2] - *a1) >> 3);
  }

  if (0x82FA0BE82FA0BE83 * ((a1[2] - *a1) >> 3) >= 0x5F417D05F417D0)
  {
    v8 = 0xBE82FA0BE82FA0;
  }

  else
  {
    v8 = v6;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v8);
  }

  v15 = 0;
  v16 = 344 * v5;
  v17 = 344 * v5;
  std::allocator<marrs::mrr::mr::MRMatchingResult>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,sirinluinternal::MatchingSpan const&,float &,marrs::mrr::mr::MRREntity const&,std::vector<marrs::mrr::mr::MRResultType> &>(344 * v5, a2, a4, a5, *a3);
  *&v17 = 344 * v5 + 344;
  v9 = a1[1];
  v10 = 344 * v5 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(&v15);
  return v14;
}

void sub_2227F00B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::mr::MRMatchingResult::MRMatchingResult(uint64_t a1, float a2, uint64_t a3, const marrs::mrr::mr::MRREntity *a4, uint64_t a5)
{
  v9 = MEMORY[0x223DC1930](a1, a3);
  *(v9 + 88) = a2;
  marrs::mrr::mr::MRREntity::MRREntity((v9 + 96), a4);
  *(a1 + 312) = 1;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((a1 + 320), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  return a1;
}

void sub_2227F0140(_Unwind_Exception *a1)
{
  if (*(v1 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((v1 + 96));
  }

  MEMORY[0x223DC1950](v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::pair<std::string,std::string>>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void std::__tree<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::__map_value_compare<std::pair<std::string,std::string>,std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,std::less<std::pair<std::string,std::string>>,true>,std::allocator<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 80);
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<std::string,std::string>,std::vector<sirinluinternal::MatchingSpan>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a2 + 80);
    std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__split_buffer<std::unique_ptr<sirinluinternal::MatchingSpan>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,2ul>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void marrs::mrr::md::preprocessing::getIndexesOfTopMentions(uint64_t a1, uint64_t *a2, int a3, float a4)
{
  v8 = std::vector<unsigned long>::vector[abi:ne200100](a1, (a2[1] - *a2) >> 2);
  v9 = *v8;
  v10 = v8[1];
  v11 = *v8;
  if (*v8 != v10)
  {
    v12 = 0;
    v13 = (v10 - v9 - 8) >> 3;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v16 = xmmword_2228320F0;
    v17 = vdupq_n_s64(2uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v14, v16));
      if (v18.i8[0])
      {
        v9[v12] = v12;
      }

      if (v18.i8[4])
      {
        v9[v12 + 1] = v12 + 1;
      }

      v12 += 2;
      v16 = vaddq_s64(v16, v17);
    }

    while (v15 != v12);
    v19 = *a2;
    v11 = v9;
    while (*(v19 + (*v11 << 32 >> 30)) > a4)
    {
      if (++v11 == v10)
      {
        goto LABEL_20;
      }
    }

    if (v11 != v10)
    {
      for (i = v11 + 1; i != v10; ++i)
      {
        if (*(v19 + (*i << 32 >> 30)) > a4)
        {
          *v11++ = *i;
        }
      }
    }
  }

  if (v11 != v10)
  {
    v10 = v11;
    *(a1 + 8) = v11;
  }

LABEL_20:
  v37 = a2;
  if (v10 - v9 < 129)
  {
    v24 = 0;
LABEL_26:
    std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v9, v10, &v37, v10 - v9, 0, v24);
  }

  else
  {
    v21 = MEMORY[0x277D826F0];
    v22 = v10 - v9;
    while (1)
    {
      v23 = operator new(8 * v22, v21);
      if (v23)
      {
        break;
      }

      v24 = v22 >> 1;
      v25 = v22 > 1;
      v22 >>= 1;
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    v26 = v23;
    std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v9, v10, &v37, v10 - v9, v23, v22);
    operator delete(v26);
  }

  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = v28 - *a1;
  if ((v29 >> 3) > a3)
  {
    v30 = a3;
    v31 = v29 >> 3;
    if (a3 <= (v29 >> 3))
    {
      if (a3 >= v31)
      {
        return;
      }

      v36 = v27 + 8 * a3;
    }

    else
    {
      v32 = a3 - v31;
      v33 = *(a1 + 16);
      if (v32 > (v33 - v28) >> 3)
      {
        if ((a3 & 0x80000000) == 0)
        {
          v34 = v33 - v27;
          if (v34 >> 2 > a3)
          {
            v30 = v34 >> 2;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v35 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v30;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v35);
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(a1 + 8), 8 * v32);
      v36 = v28 + 8 * v32;
    }

    *(a1 + 8) = v36;
  }
}

void sub_2227F0658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) > *(**a3 + 4 * *result))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(result, v24, a3, v25, a5);
        v26 = &v22[v23];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * *v29);
          v32 = *(*v28 + 4 * *v22);
          if (v31 <= v32)
          {
            v30 = *v22;
          }

          v22 += v31 <= v32;
          v29 += v31 > v32;
          *v8++ = v30;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8++ = v34;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22++;
          *v8++ = v33;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(result, v24, a3, v25, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v22, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 > *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 8) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 8);
              v19 -= 8;
              if (v18 <= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 8);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 8;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 <= v13)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 <= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 4 * *v26);
        v29 = *(*v25 + 4 * *v7);
        if (v28 <= v29)
        {
          v27 = *v7;
        }

        v26 += v28 > v29;
        v7 += v28 <= v29;
        *v5++ = v27;
        if (v7 == v24)
        {
          while (v26 != a2)
          {
            v31 = *v26++;
            *v5++ = v31;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v30 = *v7++;
        *v5++ = v30;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*(v16 + 4 * *v14) <= *(v16 + 4 * v20))
          {
            *v18 = *v14;
          }

          else
          {
            v17[1] = v19;
            v21 = a5;
            if (v17 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (a5 + v22);
                v23 = *(a5 + v22 - 8);
                if (*(v16 + 4 * *v14) <= *(v16 + 4 * v23))
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          ++v14;
          v15 += 8;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    v11 = result;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = **a4;
      while (1)
      {
        v13 = *v11;
        if (*(v12 + 4 * *a2) > *(v12 + 4 * *v11))
        {
          break;
        }

        ++v11;
        if (!--a5)
        {
          return result;
        }
      }

      if (a5 >= v8)
      {
        if (a5 == 1)
        {
          *v11 = *a2;
          *a2 = v13;
          return result;
        }

        v22 = a5 / 2;
        v16 = &v11[a5 / 2];
        v15 = a2;
        if (a2 != a3)
        {
          v23 = a3 - a2;
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[v23 >> 1];
            v27 = *v25;
            v26 = v25 + 1;
            v23 += ~(v23 >> 1);
            if (*(v12 + 4 * v27) > *(v12 + 4 * *v16))
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = v15 - a2;
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[v8 / 2];
        v16 = a2;
        if (a2 != v11)
        {
          v17 = a2 - v11;
          v16 = v11;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[v17 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v17 += ~(v17 >> 1);
            if (*(v12 + 4 * *v15) > *(v12 + 4 * v21))
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = v16 - v11;
      }

      v28 = v15;
      v29 = a2 - v16;
      if (a2 != v16)
      {
        v28 = v16;
        v30 = v15 - a2;
        if (v15 != a2)
        {
          if (v16 + 1 == a2)
          {
            v80 = *v16;
            v82 = v22;
            v31 = v15 - a2;
            v84 = a7;
            v32 = a3;
            v33 = a4;
            v34 = a8;
            v35 = v14;
            memmove(v16, a2, v15 - a2);
            v14 = v35;
            v22 = v82;
            a7 = v84;
            a8 = v34;
            a4 = v33;
            a3 = v32;
            v28 = (v16 + v31);
            *v28 = v80;
          }

          else if (a2 + 1 == v15)
          {
            v36 = *(v15 - 1);
            v28 = v16 + 1;
            if (v15 - 1 != v16)
            {
              v83 = v22;
              v85 = a7;
              v37 = a3;
              v38 = a4;
              v39 = a8;
              v40 = v14;
              v81 = *(v15 - 1);
              memmove(v16 + 1, v16, (v15 - 1) - v16);
              v14 = v40;
              v36 = v81;
              v22 = v83;
              a8 = v39;
              a4 = v38;
              a3 = v37;
              a7 = v85;
            }

            *v16 = v36;
          }

          else
          {
            v41 = v29 >> 3;
            if (v29 >> 3 == v30 >> 3)
            {
              v42 = v16 + 1;
              v43 = a2 + 1;
              do
              {
                v44 = *(v42 - 1);
                *(v42 - 1) = *(v43 - 1);
                *(v43 - 1) = v44;
                if (v42 == a2)
                {
                  break;
                }

                ++v42;
              }

              while (v43++ != v15);
              v28 = a2;
            }

            else
            {
              v46 = v30 >> 3;
              v47 = v29 >> 3;
              do
              {
                v48 = v47;
                v47 = v46;
                v46 = v48 % v46;
              }

              while (v46);
              v49 = &v16[v47];
              do
              {
                v51 = *--v49;
                v50 = v51;
                v52 = (v49 + v29);
                v53 = v49;
                do
                {
                  v54 = v52;
                  *v53 = *v52;
                  v55 = &v52[v41];
                  v56 = __OFSUB__(v41, v15 - v52);
                  v58 = v41 - (v15 - v52);
                  v57 = (v58 < 0) ^ v56;
                  v52 = &v16[v58];
                  if (v57)
                  {
                    v52 = v55;
                  }

                  v53 = v54;
                }

                while (v52 != v49);
                *v54 = v50;
              }

              while (v49 != v16);
              v28 = (v16 + v30);
            }
          }
        }
      }

      a5 -= v22;
      v8 -= v14;
      v59 = a4;
      if (v22 + v14 >= a5 + v8)
      {
        v64 = a5;
        v65 = v14;
        v61 = a7;
        v62 = a8;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v28, v15, a3, a4, v64, v8, a7, a8);
        v15 = v16;
        v8 = v65;
        a5 = v22;
        a3 = v28;
      }

      else
      {
        v60 = v22;
        v61 = a7;
        v62 = a8;
        v63 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,marrs::mrr::md::preprocessing::getIndexesOfTopMentions(std::vector<float> const&,int,float)::$_1 &,std::__wrap_iter<unsigned long *>>(v11, v16, v28, a4, v60, v14, a7, a8);
        a3 = v63;
        v11 = v28;
      }

      a2 = v15;
      a7 = v61;
      a4 = v59;
      a8 = v62;
      if (!v8)
      {
        return result;
      }
    }

    if (a5 <= v8)
    {
      if (a2 != v11)
      {
        v71 = a7;
        v72 = v11;
        do
        {
          v73 = *v72++;
          *v71 = v73;
          v71 += 8;
        }

        while (v72 != a2);
        v74 = *a4;
        while (a2 != a3)
        {
          v75 = *a2;
          v76 = *(*v74 + 4 * *a2);
          v77 = *(*v74 + 4 * *a7);
          if (v76 <= v77)
          {
            v75 = *a7;
          }

          a2 += v76 > v77;
          a7 += 8 * (v76 <= v77);
          *v11++ = v75;
          if (a7 == v71)
          {
            return result;
          }
        }

        return memmove(v11, a7, v71 - a7);
      }
    }

    else if (a2 != a3)
    {
      v66 = a7;
      v67 = a2;
      do
      {
        v68 = *v67++;
        *v66 = v68;
        v66 += 8;
      }

      while (v67 != a3);
      v69 = *a4;
      while (a2 != v11)
      {
        v70 = *(v66 - 1);
        if (*(*v69 + 4 * v70) <= *(*v69 + 4 * *(a2 - 1)))
        {
          v66 -= 8;
        }

        else
        {
          v70 = *--a2;
        }

        *--a3 = v70;
        if (v66 == a7)
        {
          return result;
        }
      }

      if (v66 != a7)
      {
        v78 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v79 = *(v66 - 1);
          v66 -= 8;
          a3[v78--] = v79;
        }

        while (v66 != a7);
      }
    }
  }

  return result;
}

void marrs::mrr::mr::MentionKeywordFilter::~MentionKeywordFilter(void **this)
{
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::MentionKeywordFilter::filterEntities(_BYTE *a1@<X8>)
{
  v2 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2227A9000, v2, OS_LOG_TYPE_INFO, "[MentionKeywordFilter] Not implemented yet, returning input list", v3, 2u);
  }

  *a1 = 0;
  a1[24] = 0;
}

uint64_t getFirstAndLastIndices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v6 = a6;
  if (a4 == a3)
  {
    *a5 = 0;
    *a6 = 0;
  }

  else
  {
    *a5 = 0;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 == a1)
    {
      v12 = 0;
    }

    else
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
      v12 = 0;
      if (v11 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
      }

      do
      {
        v14 = a1 + 24 * v12;
        v15 = *(v14 + 23);
        if (v15 >= 0)
        {
          v16 = *(v14 + 23);
        }

        else
        {
          v16 = *(v14 + 8);
        }

        if (v15 >= 0)
        {
          v17 = (a1 + 24 * v12);
        }

        else
        {
          v17 = *v14;
        }

        v18 = a3;
        while (1)
        {
          v19 = *(v18 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v18 + 8);
          }

          if (v19 == v16)
          {
            v21 = v20 >= 0 ? v18 : *v18;
            if (!memcmp(v21, v17, v16))
            {
              break;
            }
          }

          v18 += 24;
          if (v18 == a4)
          {
            goto LABEL_23;
          }
        }

        if (v18 != a4)
        {
          goto LABEL_25;
        }

LABEL_23:
        *a5 = ++v12;
      }

      while (v12 != v13);
      v12 = v13;
LABEL_25:
      v11 = v32;
      v6 = a6;
    }

    if (v12 == v11)
    {
      return 0;
    }

    v23 = v11 - 1;
    for (*v6 = v23; v23 > *a5; *v6 = v23)
    {
      v24 = a1 + 24 * v23;
      v25 = *(v24 + 23);
      if (v25 >= 0)
      {
        v26 = *(v24 + 23);
      }

      else
      {
        v26 = *(v24 + 8);
      }

      if (v25 >= 0)
      {
        v27 = (a1 + 24 * v23);
      }

      else
      {
        v27 = *v24;
      }

      v28 = a3;
      while (1)
      {
        v29 = *(v28 + 23);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v28 + 8);
        }

        if (v29 == v26)
        {
          v31 = v30 >= 0 ? v28 : *v28;
          if (!memcmp(v31, v27, v26))
          {
            break;
          }
        }

        v28 += 24;
        if (v28 == a4)
        {
          goto LABEL_48;
        }
      }

      if (v28 != a4)
      {
        return 1;
      }

LABEL_48:
      --v23;
    }
  }

  return 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<std::string const*>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float rawEditDistance<unsigned int>(char **a1, char **a2, uint64_t *a3, uint64_t a4)
{
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  computeAlignmentMatrix<unsigned int>(a1, a2, a3, a4, v14, v13, v12, v11, 0.0, 0.0, 0, 0, &v8, v7, v6);
  v4 = *(*(v9 - 24) + v8[1] - *v8 - 4);
  v15 = v6;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v15);
  v6[0] = v7;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v6);
  v7[0] = &v8;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v7);
  return v4;
}

void sub_2227F1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v22 - 72) = v21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  a15 = &a18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a18 = &a21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void computeAlignmentMatrix<unsigned int>(char **a1, char **a2, uint64_t *a3, unsigned int a4, int **a5, int **a6, uint64_t a7, uint64_t a8, float a9, float a10, uint64_t a11, char a13, uint64_t *a14, uint64_t *a15, uint64_t *a16)
{
  v20 = a14;
  v173 = a2[1] - *a2;
  v21 = (v173 >> 2) + 1;
  v171 = a1[1] - *a1;
  v22 = (v171 >> 2) + 1;
  std::vector<std::vector<float>>::clear[abi:ne200100](a14);
  std::vector<std::vector<float>>::clear[abi:ne200100](a15);
  std::vector<std::vector<float>>::clear[abi:ne200100](a16);
  std::vector<std::vector<float>>::resize(a14, v21);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::resize(a15, v21);
  v23 = a16;
  v24 = *a16;
  v25 = a16[1];
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *a16) >> 3);
  v27 = v21 - v26;
  v180 = a4;
  if (v21 <= v26)
  {
    if (v21 < v26)
    {
      v32 = (v24 + 24 * v21);
      if (v25 != v32)
      {
        v33 = a16[1];
        do
        {
          v35 = *(v33 - 24);
          v33 -= 24;
          v34 = v35;
          if (v35)
          {
            *(v25 - 2) = v34;
            operator delete(v34);
            v23 = a16;
          }

          v25 = v33;
        }

        while (v33 != v32);
      }

      v23[1] = v32;
    }

    v36 = (v173 >> 2) + 1;
    if ((v173 >> 2) == -1)
    {
      v37 = 1;
      v38 = a1;
      goto LABEL_77;
    }
  }

  else
  {
    v28 = a16[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v28 - v25) >> 3) < v27)
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v24) >> 3);
      v30 = 2 * v29;
      if (2 * v29 <= v21)
      {
        v30 = (v173 >> 2) + 1;
      }

      if (v29 >= 0x555555555555555)
      {
        v31 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v31 = v30;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(v31);
    }

    v39 = 24 * ((24 * v27 - 24) / 0x18) + 24;
    bzero(v25, v39);
    v23 = a16;
    v20 = a14;
    a16[1] = v25 + v39;
    v36 = (v173 >> 2) + 1;
  }

  v40 = 0;
  v38 = a1;
  do
  {
    v41 = (*v20 + 24 * v40);
    v43 = *v41;
    v42 = v41[1];
    v44 = (v42 - *v41) >> 2;
    if (v22 <= v44)
    {
      if (v22 < v44)
      {
        v41[1] = v43 + 4 * v22;
      }
    }

    else
    {
      v45 = v22 - v44;
      v46 = v41[2];
      if (v45 > (v46 - v42) >> 2)
      {
        v47 = v46 - v43;
        v48 = (v46 - v43) >> 1;
        if (v48 <= v22)
        {
          v48 = (v171 >> 2) + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v49 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v49);
      }

      v50 = (v45 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v51 = vdupq_n_s64(v50);
      v52 = v50 - ((v45 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v53 = (v42 + 8);
      v54 = -4;
      do
      {
        v55 = vdupq_n_s64(v54 + 4);
        v56 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v55, xmmword_2228320F0)));
        if (vuzp1_s16(v56, *v51.i8).u8[0])
        {
          *(v53 - 2) = 0;
        }

        if (vuzp1_s16(v56, *&v51).i8[2])
        {
          *(v53 - 1) = 0;
        }

        if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v55, xmmword_222832500)))).i32[1])
        {
          *v53 = 0;
          v53[1] = 0;
        }

        v54 += 4;
        v53 += 4;
      }

      while (v52 != v54);
      v41[1] = v42 + 4 * v45;
      v38 = a1;
    }

    v57 = (*a15 + 24 * v40);
    v58 = *v57;
    v59 = v57[1];
    v60 = v59 - *v57;
    v61 = v60 >> 3;
    if (v22 <= v60 >> 3)
    {
      if (v22 >= v61)
      {
        goto LABEL_56;
      }

      v67 = v58 + 8 * v22;
    }

    else
    {
      v62 = v22 - v61;
      v63 = v57[2];
      if (v62 > (v63 - v59) >> 3)
      {
        v64 = v63 - v58;
        v65 = v64 >> 2;
        if (v64 >> 2 <= v22)
        {
          v65 = (v171 >> 2) + 1;
        }

        if (v64 >= 0x7FFFFFFFFFFFFFF8)
        {
          v66 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v66 = v65;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v66);
      }

      v68 = 0;
      v67 = v59 + 8 * v62;
      v69 = (8 * ((v171 >> 2) + 1) - 8 - v60) >> 3;
      v70 = vdupq_n_s64(v69);
      v71 = (v59 + 8);
      do
      {
        v72 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(vdupq_n_s64(v68), xmmword_2228320F0)));
        if (v72.i8[0])
        {
          *(v71 - 1) = 0;
        }

        if (v72.i8[4])
        {
          *v71 = 0;
        }

        v68 += 2;
        v71 += 2;
      }

      while (((v69 + 2) & 0x3FFFFFFFFFFFFFFELL) != v68);
    }

    v57[1] = v67;
LABEL_56:
    v73 = (*v23 + 24 * v40);
    v75 = *v73;
    v74 = v73[1];
    v76 = (v74 - *v73) >> 2;
    if (v22 <= v76)
    {
      if (v22 < v76)
      {
        v73[1] = v75 + 4 * v22;
      }
    }

    else
    {
      v77 = v22 - v76;
      v78 = v73[2];
      if (v77 > (v78 - v74) >> 2)
      {
        v79 = v78 - v75;
        v80 = (v78 - v75) >> 1;
        if (v80 <= v22)
        {
          v80 = (v171 >> 2) + 1;
        }

        if (v79 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v81 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v81 = v80;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v81);
      }

      v82 = (v77 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v83 = vdupq_n_s64(v82);
      v84 = v82 - ((v77 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v85 = (v74 + 8);
      v86 = -4;
      do
      {
        v87 = vdupq_n_s64(v86 + 4);
        v88 = vmovn_s64(vcgeq_u64(v83, vorrq_s8(v87, xmmword_2228320F0)));
        if (vuzp1_s16(v88, *v83.i8).u8[0])
        {
          *(v85 - 2) = 0;
        }

        if (vuzp1_s16(v88, *&v83).i8[2])
        {
          *(v85 - 1) = 0;
        }

        if (vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v83, vorrq_s8(v87, xmmword_222832500)))).i32[1])
        {
          *v85 = 0;
          v85[1] = 0;
        }

        v86 += 4;
        v85 += 4;
      }

      while (v84 != v86);
      v73[1] = v74 + 4 * v77;
      v38 = a1;
    }

    ++v40;
  }

  while (v40 != v36);
  v37 = 0;
LABEL_77:
  v89 = *v20;
  v90 = **v20;
  *v90 = a9;
  ***v23 = a10;
  v91 = *a5;
  v92 = (v171 >> 2);
  if (a5[1] == *a5)
  {
    if ((v171 >> 2))
    {
      v178 = v37;
      v96 = 0;
      do
      {
        a9 = a9 + cost<unsigned int>(a3, *&(*v38)[v96 * 4], v180);
        v89 = *v20;
        v90 = **v20;
        v90[++v96] = a9;
      }

      while (v92 != v96);
      v23 = a16;
      v37 = v178;
    }
  }

  else if ((v171 >> 2))
  {
    v93 = v90 + 1;
    v94 = (v171 >> 2);
    do
    {
      v95 = *v91++;
      *v93++ = v95;
      --v94;
    }

    while (v94);
  }

  v97 = *a6;
  v98 = (v173 >> 2);
  if (a6[1] == *a6)
  {
    if ((v173 >> 2))
    {
      v179 = v37;
      v102 = 0;
      v103 = *v90;
      v104 = 4 * v98;
      v105 = 24;
      do
      {
        v103 = v103 + cost<unsigned int>(a3, v180, *&(*a2)[v102]);
        v89 = *v20;
        **(*v20 + v105) = v103;
        v102 += 4;
        v105 += 24;
      }

      while (v104 != v102);
      v38 = a1;
      v23 = a16;
      v98 = (v173 >> 2);
      v37 = v179;
    }
  }

  else if ((v173 >> 2))
  {
    v99 = 3;
    v100 = (v173 >> 2);
    do
    {
      v101 = *v97++;
      *v89[v99] = v101;
      v99 += 3;
      --v100;
    }

    while (v100);
  }

  v106 = *a7;
  if (*(a7 + 8) == *a7)
  {
    if ((v171 >> 2) != -1)
    {
      v110 = 0;
      v111 = vdupq_n_s64(v22 - 1);
      v112 = xmmword_222832500;
      v113 = xmmword_2228320F0;
      v114 = (**v23 + 8);
      v115 = vdupq_n_s64(4uLL);
      do
      {
        v116 = vmovn_s64(vcgeq_u64(v111, v113));
        if (vuzp1_s16(v116, *v111.i8).u8[0])
        {
          *(v114 - 2) = v110;
        }

        if (vuzp1_s16(v116, *&v111).i8[2])
        {
          *(v114 - 1) = v110 + 1;
        }

        if (vuzp1_s16(*&v111, vmovn_s64(vcgeq_u64(v111, *&v112))).i32[1])
        {
          *v114 = v110 + 2;
          v114[1] = v110 + 3;
        }

        v110 += 4;
        v112 = vaddq_s64(v112, v115);
        v113 = vaddq_s64(v113, v115);
        v114 += 4;
      }

      while (((v22 + 3) & 0x1FFFFFFFCLL) != v110);
    }
  }

  else if ((v171 >> 2))
  {
    v107 = (**v23 + 4);
    v108 = (v171 >> 2);
    do
    {
      v109 = *v106++;
      *v107++ = v109;
      --v108;
    }

    while (v108);
  }

  v117 = *a8;
  if (*(a8 + 8) != *a8 && v98 != 0)
  {
    v119 = (*v23 + 24);
    v120 = v98;
    do
    {
      v121 = *v117++;
      v122 = v121;
      v123 = *v119;
      v119 += 3;
      *v123 = v122;
      --v120;
    }

    while (v120);
  }

  if ((v171 >> 2))
  {
    v124 = 0;
    v125 = vdupq_n_s64(v92 - 1);
    v126 = (**a15 + 20);
    do
    {
      v127 = vdupq_n_s64(v124);
      v128 = vmovn_s64(vcgeq_u64(v125, vorrq_s8(v127, xmmword_2228320F0)));
      if (vuzp1_s16(v128, *v125.i8).u8[0])
      {
        *(v126 - 2) = HIDWORD(a11) + v124;
      }

      if (vuzp1_s16(v128, *&v125).i8[2])
      {
        *v126 = HIDWORD(a11) + v124 + 1;
      }

      if (vuzp1_s16(*&v125, vmovn_s64(vcgeq_u64(v125, vorrq_s8(v127, xmmword_222832500)))).i32[1])
      {
        v126[2] = HIDWORD(a11) + v124 + 2;
        v126[4] = HIDWORD(a11) + v124 + 3;
      }

      v124 += 4;
      v126 += 8;
    }

    while (((v92 + 3) & 0x1FFFFFFFCLL) != v124);
  }

  if ((v171 >> 2) != -1)
  {
    v129 = (v22 + 3) & 0x1FFFFFFFCLL;
    v130 = vdupq_n_s64(v22 - 1);
    v131 = xmmword_222832500;
    v132 = xmmword_2228320F0;
    v133 = (**a15 + 16);
    v134 = vdupq_n_s64(4uLL);
    do
    {
      v135 = vmovn_s64(vcgeq_u64(v130, v132));
      if (vuzp1_s16(v135, *v130.i8).u8[0])
      {
        *(v133 - 4) = a11;
      }

      if (vuzp1_s16(v135, *&v130).i8[2])
      {
        *(v133 - 2) = a11;
      }

      if (vuzp1_s16(*&v130, vmovn_s64(vcgeq_u64(v130, *&v131))).i32[1])
      {
        *v133 = a11;
        v133[2] = a11;
      }

      v131 = vaddq_s64(v131, v134);
      v132 = vaddq_s64(v132, v134);
      v133 += 8;
      v129 -= 4;
    }

    while (v129);
  }

  if ((v37 & 1) == 0)
  {
    v136 = *a15;
    do
    {
      v137 = *v136;
      v136 += 3;
      *(v137 + 4) = HIDWORD(a11);
      --v36;
    }

    while (v36);
  }

  if (v98)
  {
    v138 = (*a15 + 24);
    v139 = a11;
    v140 = v98;
    do
    {
      v141 = *v138;
      v138 += 3;
      *v141 = v139++;
      --v140;
    }

    while (v140);
  }

  if ((v171 >> 2))
  {
    v142 = 0;
    v143 = 24 * v98;
    do
    {
      v144 = v142 + 1;
      if (v98)
      {
        v145 = 0;
        v146 = 0;
        v177 = v142 + HIDWORD(a11);
        v147 = a11;
        do
        {
          v148 = v89[v145 / 8 + 3][v142];
          v149 = v148 + cost<unsigned int>(a3, *&(*v38)[4 * v142], v180);
          v150 = *(*(*a14 + v145) + 4 * v144);
          v38 = a1;
          v151 = v150 + cost<unsigned int>(a3, v180, *&(*a2)[4 * v146]);
          v152 = *(*(*a14 + v145) + 4 * v142);
          v153 = v152 + cost<unsigned int>(a3, *&(*a1)[4 * v142], *&(*a2)[4 * v146]);
          v154 = a16;
          v155 = (*a16 + v145);
          v156 = v149 / (*(v155[3] + 4 * v142) + 1);
          v157 = *v155;
          v158 = v151 / *(v157 + 4 * v144);
          v159 = v153 / (*(v157 + 4 * v142) + 1);
          if (!(v146 | v142) && a13 && ((v160 = cost<unsigned int>(a3, **a1, **a2), v154 = a16, v160 < v156) ? (v161 = v160 < v158) : (v161 = 0), v161 ? (v162 = v160 < v159) : (v162 = 0), v162))
          {
            v89 = *a14;
            *(*(*a14 + v145 + 24) + 4 * v144) = v160;
            *(*(*a15 + v145 + 24) + 8 * v144) = 0;
            v168 = *(*a16 + v145 + 24);
            v169 = 1;
          }

          else if (v156 > v158 || v156 > v159)
          {
            v89 = *a14;
            v164 = *(*a14 + v145 + 24);
            if (v158 <= v159)
            {
              *(v164 + 4 * v144) = v151;
              v170 = (*(*a15 + v145 + 24) + 8 * v144);
              *v170 = v147;
              v170[1] = v144 + HIDWORD(a11);
              v166 = (*v154 + v145);
              v169 = *(*v166 + 4 * v144);
            }

            else
            {
              *(v164 + 4 * v144) = v153;
              v165 = (*(*a15 + v145 + 24) + 8 * v144);
              *v165 = v147;
              v165[1] = v177;
              v166 = (*v154 + v145);
              v169 = *(*v166 + 4 * v142) + 1;
            }

            v168 = v166[3];
          }

          else
          {
            v89 = *a14;
            *(*(*a14 + v145 + 24) + 4 * v144) = v149;
            v167 = (*(*a15 + v145 + 24) + 8 * v144);
            *v167 = v147 + 1;
            v167[1] = v177;
            v168 = *(*v154 + v145 + 24);
            v169 = *(v168 + 4 * v142) + 1;
          }

          *(v168 + 4 * v144) = v169;
          v145 += 24;
          ++v147;
          ++v146;
        }

        while (v143 != v145);
      }

      ++v142;
      v98 = (v173 >> 2);
    }

    while (v144 != (v171 >> 2));
  }
}

void std::vector<std::vector<float>>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = &v3[24 * a2];
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 2) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(v10);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = &v4[v15];
  }
}

void std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 2) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * (&v7[-v3] >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = &v4[24 * ((24 * v6 - 24) / 0x18) + 24];
  }
}

float cost<unsigned int>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (!a1[3])
  {
    if (a2 == a3)
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::find<unsigned int>(*a1, a1[1], a2);
  if (!v4)
  {
    return 1.0;
  }

  v5 = v4;
  memset(v16, 0, sizeof(v16));
  v17 = *(v4 + 14);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__rehash<true>(v16, v4[4]);
  v6 = v5[5];
  if (!v6)
  {
    goto LABEL_22;
  }

  do
  {
    v7 = *(v6 + 16);
    if (!*(&v16[0] + 1))
    {
      goto LABEL_20;
    }

    v8 = vcnt_s8(*(v16 + 8));
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = *(v6 + 16);
      if (*(&v16[0] + 1) <= v7)
      {
        v9 = v7 % DWORD2(v16[0]);
      }
    }

    else
    {
      v9 = (DWORD2(v16[0]) - 1) & v7;
    }

    v10 = *(*&v16[0] + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v7)
      {
        break;
      }

      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *(&v16[0] + 1))
        {
          v12 %= *(&v16[0] + 1);
        }
      }

      else
      {
        v12 &= *(&v16[0] + 1) - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_20;
      }

LABEL_19:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    if (*(v11 + 4) != v7)
    {
      goto LABEL_19;
    }

    v6 = *v6;
  }

  while (v6);
LABEL_22:
  v13 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::find<unsigned int>(*&v16[0], *(&v16[0] + 1), v3);
  if (v13)
  {
    v14 = *(v13 + 5);
  }

  else
  {
    v14 = 1.0;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v16);
  return v14;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,float>>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void marrs::mrr::mr::ProtocolFilter::~ProtocolFilter(void **this)
{
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::ProtocolFilter::filterEntities(_BYTE *a1@<X8>)
{
  v2 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2227A9000, v2, OS_LOG_TYPE_INFO, "[ProtocolFilter] Not implemented yet, returning input list", v3, 2u);
  }

  *a1 = 0;
  a1[24] = 0;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 344;
  v208 = a2 - 1032;
  v209 = a2 - 688;
  v206 = (a2 - 272);
  v207 = (a2 - 268);
  v205 = (a2 - 612);
  m = v7;
  v210 = a2;
  while (1)
  {
    v7 = m;
    v10 = a2 - m;
    v11 = 0x82FA0BE82FA0BE83 * ((a2 - m) >> 3);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v7 + 344, v8);
        case 4:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v7 + 344, v7 + 688, v8);
        case 5:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v7 + 344, v7 + 688, v7 + 1032, v8);
      }

      goto LABEL_10;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_10:
    if (v10 <= 8255)
    {
      if ((a4 & 1) == 0)
      {
        if (v7 == a2)
        {
          return result;
        }

        v187 = v7 + 344;
        if (v7 + 344 == a2)
        {
          return result;
        }

        for (i = (v7 + 680); ; i += 43)
        {
          v189 = v7;
          v7 = v187;
          v190 = *(v189 + 420);
          v191 = *(v189 + 76);
          v192 = v190 >= v191;
          if (v190 == v191 && (v193 = *(v189 + 416), v194 = *(v189 + 72), v192 = v193 >= v194, v193 == v194))
          {
            if (*(v189 + 432) > *(v189 + 88))
            {
              goto LABEL_329;
            }
          }

          else if (!v192)
          {
LABEL_329:
            v195 = (v189 + 552);
            MEMORY[0x223DC1920](v234, v7);
            v237 = *(v189 + 432);
            LOBYTE(v238) = 0;
            v255 = 0;
            if (*(v189 + 656) == 1)
            {
              v238 = *(v189 + 440);
              v239 = *(v189 + 448);
              v240 = *(v189 + 464);
              *(v189 + 456) = 0u;
              *(v189 + 448) = 0;
              v242 = *(v189 + 488);
              v241 = *(v189 + 472);
              *(v189 + 472) = 0;
              v196 = *(v189 + 496);
              v244 = *(v189 + 512);
              v243 = v196;
              *(v189 + 512) = 0;
              *(v189 + 480) = 0u;
              *(v189 + 496) = 0u;
              v197 = *(v189 + 520);
              *(v245 + 12) = *(v189 + 532);
              v245[0] = v197;
              v246 = *v195;
              v247 = *(v189 + 568);
              *v195 = 0u;
              *(v189 + 568) = 0;
              v249 = *(v189 + 592);
              v248 = *(v189 + 576);
              *(v189 + 592) = 0;
              *(v189 + 576) = 0u;
              v250 = *(v189 + 600);
              __p = *(v189 + 608);
              v252 = *(v189 + 624);
              *(v189 + 624) = 0;
              *(v189 + 608) = 0u;
              v253 = *(v189 + 632);
              v254 = *(v189 + 648);
              *(v189 + 632) = 0;
              *(v189 + 640) = 0;
              *(v189 + 648) = 0;
              v255 = 1;
            }

            v256[0] = *(v189 + 664);
            *&v256[1] = *(v189 + 680);
            *(v189 + 664) = 0;
            *(v189 + 672) = 0;
            *(v189 + 680) = 0;
            for (j = i; ; j -= 43)
            {
              sirinluinternal::MatchingSpan::operator=();
              *(j - 62) = *(j - 148);
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((j - 30), (j - 73));
              v199 = *(j - 2);
              if (v199)
              {
                *(j - 1) = v199;
                operator delete(v199);
                *j = 0;
              }

              v200 = (j - 45);
              *(j - 1) = *(j - 45);
              *j = *(j - 43);
              *v200 = 0;
              v200[1] = 0;
              v200[2] = 0;
              v201 = *(j - 237);
              v202 = v236 >= v201;
              if (v236 == v201 && (v203 = *(j - 238), v202 = v235 >= v203, v235 == v203))
              {
                if (v237 <= *(j - 234))
                {
                  goto LABEL_340;
                }
              }

              else if (v202)
              {
LABEL_340:
                sirinluinternal::MatchingSpan::operator=();
                *(j - 148) = v237;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((j - 73), &v238);
                v204 = *v200;
                if (*v200)
                {
                  *(j - 44) = v204;
                  operator delete(v204);
                  *v200 = 0;
                  *(j - 44) = 0;
                  *(j - 43) = 0;
                }

                *v200 = v256[0];
                *(j - 43) = *&v256[1];
                memset(v256, 0, 24);
                if (v255 == 1)
                {
                  v211[0] = &v253;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
                  if (SHIBYTE(v252) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v249) < 0)
                  {
                    operator delete(v248);
                  }

                  v211[0] = &v246;
                  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
                  if (SHIBYTE(v244) < 0)
                  {
                    operator delete(v243);
                  }

                  if (SHIBYTE(v242) < 0)
                  {
                    operator delete(v241);
                  }

                  if (SHIBYTE(v240) < 0)
                  {
                    operator delete(v239);
                  }
                }

                result = MEMORY[0x223DC1950](v234);
                break;
              }
            }
          }

          v187 = v7 + 344;
          if (v7 + 344 == v210)
          {
            return result;
          }
        }
      }

      if (v7 == a2)
      {
        return result;
      }

      v83 = v7 + 344;
      if (v7 + 344 == a2)
      {
        return result;
      }

      v84 = 0;
      v85 = v7;
LABEL_166:
      v86 = v85;
      v85 = v83;
      v87 = *(v86 + 420);
      v88 = *(v86 + 76);
      v89 = v87 >= v88;
      if (v87 == v88 && (v90 = *(v86 + 416), v91 = *(v86 + 72), v89 = v90 >= v91, v90 == v91))
      {
        if (*(v86 + 432) <= *(v86 + 88))
        {
          goto LABEL_199;
        }
      }

      else if (v89)
      {
        goto LABEL_199;
      }

      v92 = (v86 + 552);
      MEMORY[0x223DC1920](v234, v85);
      v237 = *(v86 + 432);
      LOBYTE(v238) = 0;
      v255 = 0;
      if (*(v86 + 656) == 1)
      {
        v238 = *(v86 + 440);
        v239 = *(v86 + 448);
        v240 = *(v86 + 464);
        *(v86 + 456) = 0u;
        *(v86 + 448) = 0;
        v242 = *(v86 + 488);
        v241 = *(v86 + 472);
        *(v86 + 472) = 0;
        v93 = *(v86 + 496);
        v244 = *(v86 + 512);
        v243 = v93;
        *(v86 + 512) = 0;
        *(v86 + 480) = 0u;
        *(v86 + 496) = 0u;
        v94 = *(v86 + 520);
        *(v245 + 12) = *(v86 + 532);
        v245[0] = v94;
        v246 = *v92;
        v247 = *(v86 + 568);
        *v92 = 0u;
        *(v86 + 568) = 0;
        v249 = *(v86 + 592);
        v248 = *(v86 + 576);
        *(v86 + 592) = 0;
        *(v86 + 576) = 0u;
        v250 = *(v86 + 600);
        __p = *(v86 + 608);
        v252 = *(v86 + 624);
        *(v86 + 624) = 0;
        *(v86 + 608) = 0u;
        v253 = *(v86 + 632);
        v254 = *(v86 + 648);
        *(v86 + 632) = 0;
        *(v86 + 640) = 0;
        *(v86 + 648) = 0;
        v255 = 1;
      }

      v256[0] = *(v86 + 664);
      *&v256[1] = *(v86 + 680);
      *(v86 + 664) = 0;
      *(v86 + 672) = 0;
      *(v86 + 680) = 0;
      for (k = v84; ; k -= 344)
      {
        v96 = v7 + k;
        sirinluinternal::MatchingSpan::operator=();
        *(v96 + 432) = *(v96 + 88);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v96 + 440, v96 + 96);
        v97 = *(v7 + k + 664);
        if (v97)
        {
          *(v96 + 672) = v97;
          operator delete(v97);
          *(v96 + 680) = 0;
        }

        *(v96 + 664) = *(v96 + 320);
        *(v96 + 680) = *(v96 + 336);
        *(v96 + 320) = 0;
        *(v96 + 328) = 0;
        *(v96 + 336) = 0;
        if (!k)
        {
          v101 = v7 + 320;
          v102 = v7 + 96;
          v103 = v7;
          goto LABEL_185;
        }

        v98 = *(v7 + k - 268);
        v99 = v236 >= v98;
        if (v236 == v98 && (v100 = *(v7 + k - 272), v99 = v235 >= v100, v235 == v100))
        {
          if (v237 <= *(v7 + k - 256))
          {
            goto LABEL_184;
          }
        }

        else if (v99)
        {
LABEL_184:
          v103 = v7 + k;
          v101 = v7 + k + 320;
          v102 = v103 + 96;
LABEL_185:
          sirinluinternal::MatchingSpan::operator=();
          *(v103 + 88) = v237;
          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v102, &v238);
          v104 = *v101;
          if (*v101)
          {
            *(v103 + 328) = v104;
            operator delete(v104);
            *v101 = 0;
            *(v101 + 8) = 0;
            *(v101 + 16) = 0;
          }

          *v101 = *&v256[0];
          *(v103 + 328) = *(v256 + 8);
          memset(v256, 0, 24);
          if (v255 == 1)
          {
            v211[0] = &v253;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v252) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v249) < 0)
            {
              operator delete(v248);
            }

            v211[0] = &v246;
            std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(v243);
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(v241);
            }

            if (SHIBYTE(v240) < 0)
            {
              operator delete(v239);
            }
          }

          result = MEMORY[0x223DC1950](v234);
LABEL_199:
          v83 = v85 + 344;
          v84 += 344;
          if (v85 + 344 == v210)
          {
            return result;
          }

          goto LABEL_166;
        }
      }
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v105 = v12 >> 1;
      v106 = v12 >> 1;
      while (2)
      {
        v107 = v106;
        if (v105 < v106)
        {
          goto LABEL_249;
        }

        v108 = (2 * v106) | 1;
        v109 = v7 + 344 * v108;
        if (2 * v106 + 2 < v11)
        {
          v110 = *(v109 + 76);
          v111 = *(v109 + 420);
          v112 = v110 >= v111;
          if (v110 == v111 && (v113 = *(v109 + 72), v114 = *(v109 + 416), v112 = v113 >= v114, v113 == v114))
          {
            if (*(v109 + 88) <= *(v109 + 432))
            {
              goto LABEL_211;
            }

LABEL_210:
            v109 += 344;
            v108 = 2 * v106 + 2;
          }

          else if (!v112)
          {
            goto LABEL_210;
          }
        }

LABEL_211:
        v115 = v7 + 344 * v106;
        v116 = *(v109 + 76);
        v117 = *(v115 + 76);
        v118 = v116 >= v117;
        if (v116 == v117 && (v119 = *(v109 + 72), v120 = *(v115 + 72), v118 = v119 >= v120, v119 == v120))
        {
          if (*(v109 + 88) > *(v115 + 88))
          {
            goto LABEL_249;
          }
        }

        else if (!v118)
        {
          goto LABEL_249;
        }

        MEMORY[0x223DC1920](v234, v7 + 344 * v107);
        v237 = *(v115 + 88);
        LOBYTE(v238) = 0;
        v255 = 0;
        if (*(v115 + 312) == 1)
        {
          v238 = *(v115 + 96);
          v121 = *(v115 + 104);
          v240 = *(v115 + 120);
          v239 = v121;
          *(v115 + 112) = 0;
          *(v115 + 120) = 0;
          *(v115 + 104) = 0;
          v122 = *(v115 + 128);
          v242 = *(v115 + 144);
          v241 = v122;
          *(v115 + 136) = 0;
          *(v115 + 144) = 0;
          *(v115 + 128) = 0;
          v123 = *(v115 + 152);
          v244 = *(v115 + 168);
          v243 = v123;
          *(v115 + 160) = 0;
          *(v115 + 168) = 0;
          *(v115 + 152) = 0;
          v124 = *(v115 + 176);
          *(v245 + 12) = *(v115 + 188);
          v245[0] = v124;
          v247 = 0;
          v246 = 0uLL;
          v246 = *(v115 + 208);
          v247 = *(v115 + 224);
          *(v115 + 208) = 0;
          *(v115 + 216) = 0;
          *(v115 + 224) = 0;
          v125 = *(v115 + 232);
          v249 = *(v115 + 248);
          v248 = v125;
          *(v115 + 240) = 0;
          *(v115 + 248) = 0;
          *(v115 + 232) = 0;
          v250 = *(v115 + 256);
          v126 = *(v115 + 264);
          v252 = *(v115 + 280);
          __p = v126;
          *(v115 + 272) = 0;
          *(v115 + 280) = 0;
          *(v115 + 264) = 0;
          v253 = 0uLL;
          v254 = 0;
          v253 = *(v115 + 288);
          v254 = *(v115 + 304);
          *(v115 + 288) = 0;
          *(v115 + 296) = 0;
          *(v115 + 304) = 0;
          v255 = 1;
        }

        v256[0] = *(v115 + 320);
        *&v256[1] = *(v115 + 336);
        *(v115 + 320) = 0;
        *(v115 + 328) = 0;
        *(v115 + 336) = 0;
LABEL_220:
        v127 = v109;
        sirinluinternal::MatchingSpan::operator=();
        *(v115 + 88) = *(v109 + 88);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v115 + 96, v109 + 96);
        v128 = *(v115 + 320);
        if (v128)
        {
          *(v115 + 328) = v128;
          operator delete(v128);
          *(v115 + 320) = 0;
          *(v115 + 328) = 0;
          *(v115 + 336) = 0;
        }

        *(v115 + 320) = *(v109 + 320);
        *(v115 + 336) = *(v109 + 336);
        *(v109 + 320) = 0;
        *(v109 + 328) = 0;
        *(v109 + 336) = 0;
        if (v105 < v108)
        {
LABEL_235:
          sirinluinternal::MatchingSpan::operator=();
          *(v127 + 88) = v237;
          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v127 + 96, &v238);
          v139 = *(v127 + 320);
          if (v139)
          {
            *(v127 + 328) = v139;
            operator delete(v139);
            *(v127 + 320) = 0;
            *(v127 + 328) = 0;
            *(v127 + 336) = 0;
          }

          *(v127 + 320) = v256[0];
          *(v127 + 336) = *&v256[1];
          memset(v256, 0, 24);
          if (v255 == 1)
          {
            v211[0] = &v253;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v252) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v249) < 0)
            {
              operator delete(v248);
            }

            v211[0] = &v246;
            std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(v243);
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(v241);
            }

            if (SHIBYTE(v240) < 0)
            {
              operator delete(v239);
            }
          }

          MEMORY[0x223DC1950](v234);
LABEL_249:
          v106 = v107 - 1;
          if (v107)
          {
            continue;
          }

          v140 = 0x82FA0BE82FA0BE83 * (v10 >> 3);
          v141 = (v7 + 264);
          v142 = v210;
          while (2)
          {
            MEMORY[0x223DC1920](v211, v7);
            v212 = *(v7 + 88);
            LOBYTE(v213) = 0;
            v230 = 0;
            if (*(v7 + 312) == 1)
            {
              v213 = *(v7 + 96);
              v143 = *(v7 + 120);
              v214 = *(v7 + 104);
              v215 = v143;
              *(v7 + 112) = 0;
              *(v7 + 120) = 0;
              *(v7 + 104) = 0;
              v144 = *(v7 + 144);
              v216 = *(v7 + 128);
              v217 = v144;
              *(v7 + 136) = 0;
              *(v7 + 144) = 0;
              *(v7 + 128) = 0;
              v145 = *(v7 + 152);
              v219 = *(v7 + 168);
              v218 = v145;
              *(v7 + 152) = 0;
              *(v7 + 160) = 0;
              *(v7 + 168) = 0;
              v146 = *(v7 + 176);
              *(v220 + 12) = *(v7 + 188);
              v220[0] = v146;
              v222 = 0;
              v221 = 0uLL;
              v221 = *(v7 + 208);
              v222 = *(v7 + 224);
              *(v7 + 208) = 0;
              *(v7 + 216) = 0;
              *(v7 + 224) = 0;
              v147 = *(v7 + 232);
              v224 = *(v7 + 248);
              v223 = v147;
              *(v7 + 232) = 0;
              *(v7 + 240) = 0;
              *(v7 + 248) = 0;
              v225 = *(v7 + 256);
              v148 = *v141;
              v227 = *(v7 + 280);
              v226 = v148;
              *v141 = 0;
              *(v7 + 272) = 0;
              *(v7 + 280) = 0;
              v228 = 0uLL;
              v229 = 0;
              v228 = *(v7 + 288);
              v229 = *(v7 + 304);
              *(v7 + 288) = 0;
              *(v7 + 296) = 0;
              *(v7 + 304) = 0;
              v230 = 1;
            }

            v149 = 0;
            *v231 = *(v7 + 320);
            v232 = *(v7 + 336);
            *(v7 + 320) = 0;
            *(v7 + 328) = 0;
            *(v7 + 336) = 0;
            v150 = v7;
LABEL_254:
            v151 = v150 + 344 * v149;
            v152 = v151 + 344;
            v153 = 2 * v149;
            v149 = (2 * v149) | 1;
            v154 = v153 + 2;
            if (v154 < v140)
            {
              v155 = *(v151 + 420);
              v156 = *(v151 + 764);
              v157 = v155 >= v156;
              if (v155 == v156 && (v158 = *(v151 + 416), v159 = *(v151 + 760), v157 = v158 >= v159, v158 == v159))
              {
                if (*(v151 + 432) <= *(v151 + 776))
                {
                  goto LABEL_261;
                }
              }

              else if (v157)
              {
                goto LABEL_261;
              }

              v152 = v151 + 688;
              v149 = v154;
            }

LABEL_261:
            sirinluinternal::MatchingSpan::operator=();
            *(v150 + 88) = *(v152 + 88);
            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v150 + 96, v152 + 96);
            v160 = *(v150 + 320);
            if (v160)
            {
              *(v150 + 328) = v160;
              operator delete(v160);
              *(v150 + 320) = 0;
              *(v150 + 328) = 0;
              *(v150 + 336) = 0;
            }

            *(v150 + 320) = *(v152 + 320);
            *(v150 + 336) = *(v152 + 336);
            *(v152 + 320) = 0;
            *(v152 + 328) = 0;
            *(v152 + 336) = 0;
            v150 = v152;
            if (v149 > ((v140 - 2) >> 1))
            {
              if (v152 == v142 - 344)
              {
                v163 = v142 - 344;
                sirinluinternal::MatchingSpan::operator=();
                *(v152 + 88) = v212;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v152 + 96, &v213);
                v173 = *(v152 + 320);
                if (v173)
                {
                  *(v152 + 328) = v173;
                  operator delete(v173);
                  *(v152 + 320) = 0;
                  *(v152 + 328) = 0;
                  *(v152 + 336) = 0;
                }

                *(v152 + 320) = *v231;
                *(v152 + 336) = v232;
                v231[0] = 0;
                v231[1] = 0;
                v232 = 0;
              }

              else
              {
                sirinluinternal::MatchingSpan::operator=();
                *(v152 + 88) = *(v142 - 256);
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v152 + 96, v142 - 248);
                v161 = *(v152 + 320);
                if (v161)
                {
                  *(v152 + 328) = v161;
                  operator delete(v161);
                  *(v152 + 320) = 0;
                  *(v152 + 328) = 0;
                  *(v152 + 336) = 0;
                }

                v162 = (v142 - 24);
                *(v152 + 320) = *(v142 - 24);
                *(v152 + 336) = *(v142 - 8);
                *v162 = 0;
                v162[1] = 0;
                v162[2] = 0;
                v163 = v142 - 344;
                sirinluinternal::MatchingSpan::operator=();
                *(v142 - 256) = v212;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v142 - 248, &v213);
                v164 = *(v142 - 24);
                if (v164)
                {
                  *(v142 - 16) = v164;
                  operator delete(v164);
                }

                *(v142 - 24) = *v231;
                *(v142 - 8) = v232;
                v231[0] = 0;
                v231[1] = 0;
                v232 = 0;
                v165 = v152 + 344 - v7;
                if (v165 >= 345)
                {
                  v166 = (-2 - 0x7D05F417D05F417DLL * (v165 >> 3)) >> 1;
                  v167 = v7 + 344 * v166;
                  v168 = *(v167 + 76);
                  v169 = *(v152 + 76);
                  v170 = v168 >= v169;
                  if (v168 == v169 && (v171 = *(v167 + 72), v172 = *(v152 + 72), v170 = v171 >= v172, v171 == v172))
                  {
                    if (*(v167 + 88) <= *(v152 + 88))
                    {
                      goto LABEL_305;
                    }
                  }

                  else if (v170)
                  {
                    goto LABEL_305;
                  }

                  MEMORY[0x223DC1920](v234, v152);
                  v237 = *(v152 + 88);
                  LOBYTE(v238) = 0;
                  v255 = 0;
                  if (*(v152 + 312) == 1)
                  {
                    v238 = *(v152 + 96);
                    v174 = *(v152 + 120);
                    v239 = *(v152 + 104);
                    v240 = v174;
                    *(v152 + 112) = 0;
                    *(v152 + 120) = 0;
                    *(v152 + 104) = 0;
                    v175 = *(v152 + 144);
                    v241 = *(v152 + 128);
                    v242 = v175;
                    *(v152 + 136) = 0;
                    *(v152 + 144) = 0;
                    *(v152 + 128) = 0;
                    v176 = *(v152 + 152);
                    v244 = *(v152 + 168);
                    v243 = v176;
                    *(v152 + 152) = 0;
                    *(v152 + 160) = 0;
                    *(v152 + 168) = 0;
                    v177 = *(v152 + 176);
                    *(v245 + 12) = *(v152 + 188);
                    v245[0] = v177;
                    v247 = 0;
                    v246 = 0uLL;
                    v246 = *(v152 + 208);
                    v247 = *(v152 + 224);
                    *(v152 + 208) = 0;
                    *(v152 + 216) = 0;
                    *(v152 + 224) = 0;
                    v178 = *(v152 + 232);
                    v249 = *(v152 + 248);
                    v248 = v178;
                    *(v152 + 232) = 0;
                    *(v152 + 240) = 0;
                    *(v152 + 248) = 0;
                    v250 = *(v152 + 256);
                    v179 = *(v152 + 264);
                    v252 = *(v152 + 280);
                    __p = v179;
                    *(v152 + 264) = 0;
                    *(v152 + 272) = 0;
                    *(v152 + 280) = 0;
                    v253 = 0uLL;
                    v254 = 0;
                    v253 = *(v152 + 288);
                    v254 = *(v152 + 304);
                    *(v152 + 288) = 0;
                    *(v152 + 296) = 0;
                    *(v152 + 304) = 0;
                    v255 = 1;
                  }

                  v256[0] = *(v152 + 320);
                  *&v256[1] = *(v152 + 336);
                  *(v152 + 320) = 0;
                  *(v152 + 328) = 0;
                  *(v152 + 336) = 0;
                  while (1)
                  {
                    v180 = v167;
                    sirinluinternal::MatchingSpan::operator=();
                    *(v152 + 88) = *(v167 + 88);
                    std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v152 + 96, v167 + 96);
                    v181 = *(v152 + 320);
                    if (v181)
                    {
                      *(v152 + 328) = v181;
                      operator delete(v181);
                      *(v152 + 320) = 0;
                      *(v152 + 328) = 0;
                      *(v152 + 336) = 0;
                    }

                    *(v152 + 320) = *(v167 + 320);
                    *(v152 + 336) = *(v167 + 336);
                    *(v167 + 320) = 0;
                    *(v167 + 328) = 0;
                    *(v167 + 336) = 0;
                    if (!v166)
                    {
                      break;
                    }

                    v166 = (v166 - 1) >> 1;
                    v167 = v7 + 344 * v166;
                    v182 = *(v167 + 76);
                    v183 = v182 >= v236;
                    if (v182 == v236 && (v184 = *(v167 + 72), v183 = v184 >= v235, v184 == v235))
                    {
                      v152 = v180;
                      if (*(v167 + 88) <= v237)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v152 = v180;
                      if (v183)
                      {
                        break;
                      }
                    }
                  }

                  sirinluinternal::MatchingSpan::operator=();
                  *(v180 + 88) = v237;
                  std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v180 + 96, &v238);
                  v185 = *(v180 + 320);
                  if (v185)
                  {
                    *(v180 + 328) = v185;
                    operator delete(v185);
                  }

                  *(v180 + 320) = v256[0];
                  *(v180 + 336) = *&v256[1];
                  memset(v256, 0, 24);
                  if (v255 == 1)
                  {
                    v233 = &v253;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v233);
                    if (SHIBYTE(v252) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v249) < 0)
                    {
                      operator delete(v248);
                    }

                    v233 = &v246;
                    std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v233);
                    if (SHIBYTE(v244) < 0)
                    {
                      operator delete(v243);
                    }

                    if (SHIBYTE(v242) < 0)
                    {
                      operator delete(v241);
                    }

                    if (SHIBYTE(v240) < 0)
                    {
                      operator delete(v239);
                    }
                  }

                  MEMORY[0x223DC1950](v234);
                  if (v231[0])
                  {
                    v231[1] = v231[0];
                    operator delete(v231[0]);
                  }
                }
              }

LABEL_305:
              v142 = v163;
              if (v230 == 1)
              {
                v234[0] = &v228;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v234);
                if (SHIBYTE(v227) < 0)
                {
                  operator delete(v226);
                }

                if (SHIBYTE(v224) < 0)
                {
                  operator delete(v223);
                }

                v234[0] = &v221;
                std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v234);
                if (SHIBYTE(v219) < 0)
                {
                  operator delete(v218);
                }

                if (SHIBYTE(v217) < 0)
                {
                  operator delete(v216);
                }

                if (SHIBYTE(v215) < 0)
                {
                  operator delete(v214);
                }
              }

              result = MEMORY[0x223DC1950](v211);
              if (v140-- <= 2)
              {
                return result;
              }

              continue;
            }

            goto LABEL_254;
          }
        }

        break;
      }

      v129 = 2 * v108;
      v108 = (2 * v108) | 1;
      v109 = v7 + 344 * v108;
      v130 = v129 + 2;
      if (v130 < v11)
      {
        v131 = *(v109 + 76);
        v132 = *(v109 + 420);
        v133 = v131 >= v132;
        if (v131 == v132 && (v134 = *(v109 + 72), v135 = *(v109 + 416), v133 = v134 >= v135, v134 == v135))
        {
          if (*(v109 + 88) <= *(v109 + 432))
          {
            goto LABEL_230;
          }

LABEL_229:
          v109 += 344;
          v108 = v130;
        }

        else if (!v133)
        {
          goto LABEL_229;
        }
      }

LABEL_230:
      v136 = *(v109 + 76);
      v137 = v136 >= v236;
      if (v136 == v236 && (v138 = *(v109 + 72), v137 = v138 >= v235, v138 == v235))
      {
        v115 = v127;
        if (*(v109 + 88) > v237)
        {
          goto LABEL_235;
        }
      }

      else
      {
        v115 = v127;
        if (!v137)
        {
          goto LABEL_235;
        }
      }

      goto LABEL_220;
    }

    v13 = v11 >> 1;
    v14 = v7 + 344 * (v11 >> 1);
    if (v10 < 0xAC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v14, v7, v8);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7, v14, v8);
      v15 = 344 * v13;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7 + 344, v15 + v7 - 344, v209);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v7 + 688, v7 + 344 + v15, v208);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v15 + v7 - 344, v14, v7 + 344 + v15);
      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v7, v14);
    }

    --a3;
    a2 = v210;
    if ((a4 & 1) == 0)
    {
      v16 = *(v7 - 268);
      v17 = *(v7 + 76);
      v18 = v16 >= v17;
      if (v16 == v17)
      {
        v19 = *(v7 - 272);
        v20 = *(v7 + 72);
        v18 = v19 >= v20;
        if (v19 == v20)
        {
          if (*(v7 - 256) <= *(v7 + 88))
          {
            goto LABEL_19;
          }

          goto LABEL_26;
        }
      }

      if (v18)
      {
LABEL_19:
        MEMORY[0x223DC1920](v234, v7);
        v21 = *(v7 + 88);
        v237 = v21;
        LOBYTE(v238) = 0;
        v255 = 0;
        if (*(v7 + 312) == 1)
        {
          v238 = *(v7 + 96);
          v22 = *(v7 + 120);
          v239 = *(v7 + 104);
          v240 = v22;
          *(v7 + 112) = 0;
          *(v7 + 120) = 0;
          *(v7 + 104) = 0;
          v23 = *(v7 + 144);
          v241 = *(v7 + 128);
          v242 = v23;
          *(v7 + 136) = 0;
          *(v7 + 144) = 0;
          *(v7 + 128) = 0;
          v24 = *(v7 + 152);
          v244 = *(v7 + 168);
          v243 = v24;
          *(v7 + 152) = 0;
          *(v7 + 160) = 0;
          *(v7 + 168) = 0;
          v25 = *(v7 + 176);
          *(v245 + 12) = *(v7 + 188);
          v245[0] = v25;
          v247 = 0;
          v246 = 0uLL;
          v246 = *(v7 + 208);
          v247 = *(v7 + 224);
          *(v7 + 208) = 0;
          *(v7 + 216) = 0;
          *(v7 + 224) = 0;
          v26 = *(v7 + 232);
          v249 = *(v7 + 248);
          v248 = v26;
          *(v7 + 232) = 0;
          *(v7 + 240) = 0;
          *(v7 + 248) = 0;
          v250 = *(v7 + 256);
          v27 = *(v7 + 264);
          v252 = *(v7 + 280);
          __p = v27;
          *(v7 + 264) = 0;
          *(v7 + 272) = 0;
          *(v7 + 280) = 0;
          v253 = 0uLL;
          v254 = 0;
          v253 = *(v7 + 288);
          v254 = *(v7 + 304);
          *(v7 + 288) = 0;
          *(v7 + 296) = 0;
          *(v7 + 304) = 0;
          v255 = 1;
        }

        v256[0] = *(v7 + 320);
        *&v256[1] = *(v7 + 336);
        *(v7 + 320) = 0;
        *(v7 + 328) = 0;
        *(v7 + 336) = 0;
        v28 = *v207;
        if (v236 == *v207)
        {
          v29 = v235;
          if (v235 == *v206)
          {
            if (v21 > *(v210 - 256))
            {
              goto LABEL_97;
            }
          }

          else if (v235 < *v206)
          {
            goto LABEL_97;
          }
        }

        else if (v236 < v28)
        {
          v29 = v235;
LABEL_97:
          for (m = v7 + 344; ; m += 344)
          {
            v61 = *(m + 76);
            v62 = v236 >= v61;
            if (v236 == v61 && (v63 = *(m + 72), v62 = v29 >= v63, v29 == v63))
            {
              if (v21 > *(m + 88))
              {
                goto LABEL_113;
              }
            }

            else if (!v62)
            {
              goto LABEL_113;
            }
          }
        }

        for (m = v7 + 344; m < v210; m += 344)
        {
          v64 = *(m + 76);
          v65 = v236 >= v64;
          if (v236 == v64 && (v66 = *(m + 72), v65 = v235 >= v66, v235 == v66))
          {
            if (v21 > *(m + 88))
            {
              break;
            }
          }

          else if (!v65)
          {
            break;
          }
        }

LABEL_113:
        v67 = v210;
        if (m >= v210)
        {
          goto LABEL_134;
        }

        v68 = v205;
        while (2)
        {
          v69 = v236 >= v28;
          if (v236 == v28)
          {
            v70 = *(v68 + 85);
            v69 = v235 >= v70;
            if (v235 == v70)
            {
              if (v21 <= v68[89])
              {
                break;
              }

              goto LABEL_120;
            }
          }

          if (!v69)
          {
LABEL_120:
            v28 = *v68;
            v68 -= 86;
            continue;
          }

          break;
        }

        v67 = (v68 + 67);
LABEL_134:
        if (m >= v67)
        {
          if (m - 344 != v7)
          {
            sirinluinternal::MatchingSpan::operator=();
            *(v7 + 88) = *(m - 256);
            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v7 + 96, m - 248);
            v77 = *(v7 + 320);
            if (v77)
            {
              *(v7 + 328) = v77;
              operator delete(v77);
              *(v7 + 320) = 0;
              *(v7 + 328) = 0;
              *(v7 + 336) = 0;
            }

            v78 = (m - 24);
            *(v7 + 320) = *(m - 24);
            *(v7 + 336) = *(m - 8);
            *v78 = 0;
            v78[1] = 0;
            v78[2] = 0;
          }

          sirinluinternal::MatchingSpan::operator=();
          *(m - 256) = v237;
          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(m - 248, &v238);
          v79 = *(m - 24);
          if (v79)
          {
            *(m - 16) = v79;
            operator delete(v79);
            *(m - 24) = 0;
            *(m - 16) = 0;
            *(m - 8) = 0;
          }

          *(m - 24) = v256[0];
          *(m - 8) = *&v256[1];
          memset(v256, 0, 24);
          if (v255 == 1)
          {
            v211[0] = &v253;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v252) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v249) < 0)
            {
              operator delete(v248);
            }

            v211[0] = &v246;
            std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
            if (SHIBYTE(v244) < 0)
            {
              operator delete(v243);
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(v241);
            }

            if (SHIBYTE(v240) < 0)
            {
              operator delete(v239);
            }
          }

          result = MEMORY[0x223DC1950](v234);
          a4 = 0;
          continue;
        }

        std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(m, v67);
        for (m += 344; ; m += 344)
        {
          v71 = *(m + 76);
          v72 = v236 >= v71;
          if (v236 == v71 && (v73 = *(m + 72), v72 = v235 >= v73, v235 == v73))
          {
            if (v237 > *(m + 88))
            {
              do
              {
LABEL_131:
                while (1)
                {
                  v67 -= 344;
                  v74 = *(v67 + 76);
                  v75 = v236 >= v74;
                  if (v236 == v74)
                  {
                    v76 = *(v67 + 72);
                    v75 = v235 >= v76;
                    if (v235 == v76)
                    {
                      break;
                    }
                  }

                  if (v75)
                  {
                    goto LABEL_134;
                  }
                }
              }

              while (v237 > *(v67 + 88));
              goto LABEL_134;
            }
          }

          else if (!v72)
          {
            goto LABEL_131;
          }
        }
      }
    }

LABEL_26:
    MEMORY[0x223DC1920](v234, v7);
    v30 = *(v7 + 88);
    v237 = v30;
    LOBYTE(v238) = 0;
    v255 = 0;
    if (*(v7 + 312) == 1)
    {
      v238 = *(v7 + 96);
      v31 = *(v7 + 120);
      v239 = *(v7 + 104);
      v240 = v31;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      v32 = *(v7 + 144);
      v241 = *(v7 + 128);
      v242 = v32;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 128) = 0;
      v33 = *(v7 + 152);
      v244 = *(v7 + 168);
      v243 = v33;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      v34 = *(v7 + 176);
      *(v245 + 12) = *(v7 + 188);
      v245[0] = v34;
      v247 = 0;
      v246 = 0uLL;
      v246 = *(v7 + 208);
      v247 = *(v7 + 224);
      *(v7 + 208) = 0;
      *(v7 + 216) = 0;
      *(v7 + 224) = 0;
      v35 = *(v7 + 232);
      v249 = *(v7 + 248);
      v248 = v35;
      *(v7 + 232) = 0;
      *(v7 + 240) = 0;
      *(v7 + 248) = 0;
      v250 = *(v7 + 256);
      v36 = *(v7 + 264);
      v252 = *(v7 + 280);
      __p = v36;
      *(v7 + 264) = 0;
      *(v7 + 272) = 0;
      *(v7 + 280) = 0;
      v253 = 0uLL;
      v254 = 0;
      v253 = *(v7 + 288);
      v254 = *(v7 + 304);
      *(v7 + 288) = 0;
      *(v7 + 296) = 0;
      *(v7 + 304) = 0;
      v255 = 1;
    }

    v256[0] = *(v7 + 320);
    *&v256[1] = *(v7 + 336);
    *(v7 + 320) = 0;
    *(v7 + 328) = 0;
    *(v7 + 336) = 0;
    for (n = v7 + 344; ; n += 344)
    {
      v38 = *(n + 76);
      v39 = v38 >= v236;
      if (v38 != v236)
      {
        break;
      }

      v40 = *(n + 72);
      v39 = v40 >= v235;
      if (v40 != v235)
      {
        break;
      }

      if (*(n + 88) <= v30)
      {
        goto LABEL_35;
      }

LABEL_34:
      ;
    }

    if (!v39)
    {
      goto LABEL_34;
    }

LABEL_35:
    ii = v8;
    if (n - 344 != v7)
    {
      while (1)
      {
        v42 = *(ii + 76);
        v43 = v42 >= v236;
        if (v42 == v236 && (v44 = *(ii + 72), v43 = v44 >= v235, v44 == v235))
        {
          if (*(ii + 88) > v30)
          {
            goto LABEL_58;
          }
        }

        else if (!v43)
        {
          goto LABEL_58;
        }

        ii -= 344;
      }
    }

    ii = v210;
    if (n < v210)
    {
      for (ii = v8; ; ii -= 344)
      {
        v45 = *(ii + 76);
        v46 = v45 >= v236;
        if (v45 == v236 && (v47 = *(ii + 72), v46 = v47 >= v235, v47 == v235))
        {
          if (*(ii + 88) > v30 || n >= ii)
          {
            break;
          }
        }

        else if (!v46 || n >= ii)
        {
          break;
        }
      }
    }

LABEL_58:
    m = n;
    if (n >= ii)
    {
      goto LABEL_73;
    }

    m = n;
    v50 = ii;
    while (2)
    {
      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(m, v50);
      m += 344;
      while (2)
      {
        v51 = *(m + 76);
        v52 = v51 >= v236;
        if (v51 == v236)
        {
          v53 = *(m + 72);
          v52 = v53 >= v235;
          if (v53 == v235)
          {
            if (*(m + 88) <= v237)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }
        }

        if (!v52)
        {
LABEL_66:
          m += 344;
          continue;
        }

        break;
      }

      do
      {
LABEL_69:
        while (1)
        {
          v50 -= 344;
          v54 = *(v50 + 76);
          v55 = v54 >= v236;
          if (v54 == v236)
          {
            v56 = *(v50 + 72);
            v55 = v56 >= v235;
            if (v56 == v235)
            {
              break;
            }
          }

          if (!v55)
          {
            goto LABEL_72;
          }
        }
      }

      while (*(v50 + 88) <= v237);
LABEL_72:
      if (m < v50)
      {
        continue;
      }

      break;
    }

LABEL_73:
    if (m - 344 != v7)
    {
      sirinluinternal::MatchingSpan::operator=();
      *(v7 + 88) = *(m - 256);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v7 + 96, m - 248);
      v57 = *(v7 + 320);
      if (v57)
      {
        *(v7 + 328) = v57;
        operator delete(v57);
        *(v7 + 320) = 0;
        *(v7 + 328) = 0;
        *(v7 + 336) = 0;
      }

      v58 = (m - 24);
      *(v7 + 320) = *(m - 24);
      *(v7 + 336) = *(m - 8);
      *v58 = 0;
      v58[1] = 0;
      v58[2] = 0;
    }

    sirinluinternal::MatchingSpan::operator=();
    *(m - 256) = v237;
    std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(m - 248, &v238);
    v59 = *(m - 24);
    if (v59)
    {
      *(m - 16) = v59;
      operator delete(v59);
      *(m - 24) = 0;
      *(m - 16) = 0;
      *(m - 8) = 0;
    }

    *(m - 24) = v256[0];
    *(m - 8) = *&v256[1];
    memset(v256, 0, 24);
    a2 = v210;
    if (v255 == 1)
    {
      v211[0] = &v253;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v211);
      if (SHIBYTE(v252) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v249) < 0)
      {
        operator delete(v248);
      }

      v211[0] = &v246;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v211);
      if (SHIBYTE(v244) < 0)
      {
        operator delete(v243);
      }

      if (SHIBYTE(v242) < 0)
      {
        operator delete(v241);
      }

      if (SHIBYTE(v240) < 0)
      {
        operator delete(v239);
      }
    }

    MEMORY[0x223DC1950](v234);
    if (n < ii)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(v7, m - 344, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v60 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(v7, m - 344);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(m, v210);
      if (result)
      {
        a2 = m - 344;
        if (v60)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v60)
      {
        goto LABEL_93;
      }
    }
  }

  v80 = *(v7 + 76);
  v81 = *v207 >= v80;
  if (*v207 == v80 && (v82 = *(v7 + 72), v81 = *v206 >= v82, *v206 == v82))
  {
    if (*(a2 - 256) <= *(v7 + 88))
    {
      return result;
    }
  }

  else if (v81)
  {
    return result;
  }

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v7, v8);
}

uint64_t std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(uint64_t a1, uint64_t a2)
{
  MEMORY[0x223DC1920](v16, a1);
  v17 = *(a1 + 88);
  LOBYTE(v18) = 0;
  v35 = 0;
  if (*(a1 + 312) == 1)
  {
    v18 = *(a1 + 96);
    *v19 = *(a1 + 104);
    v20 = *(a1 + 120);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *v21 = *(a1 + 128);
    v4 = *(a1 + 144);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    v5 = *(a1 + 152);
    v6 = *(a1 + 168);
    v22 = v4;
    v24 = v6;
    *v23 = v5;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v7 = *(a1 + 176);
    *&v25[12] = *(a1 + 188);
    v8 = *(a1 + 208);
    *v25 = v7;
    v26 = v8;
    v9 = *(a1 + 224);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    v10 = *(a1 + 232);
    v11 = *(a1 + 248);
    v27 = v9;
    v29 = v11;
    *v28 = v10;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    v30 = *(a1 + 256);
    v12 = *(a1 + 280);
    __p = *(a1 + 264);
    v32 = v12;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    v33 = *(a1 + 288);
    v34 = *(a1 + 304);
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    v35 = 1;
  }

  v36 = *(a1 + 320);
  v37 = *(a1 + 336);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0;
  sirinluinternal::MatchingSpan::operator=();
  *(a1 + 88) = *(a2 + 88);
  std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(a1 + 96, a2 + 96);
  v13 = *(a1 + 320);
  if (v13)
  {
    *(a1 + 328) = v13;
    operator delete(v13);
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
  }

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  sirinluinternal::MatchingSpan::operator=();
  *(a2 + 88) = v17;
  std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(a2 + 96, &v18);
  v14 = *(a2 + 320);
  if (v14)
  {
    *(a2 + 328) = v14;
    operator delete(v14);
  }

  *(a2 + 320) = v36;
  *(a2 + 336) = v37;
  v37 = 0;
  v36 = 0uLL;
  if (v35 == 1)
  {
    v38 = &v33;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    v38 = &v26;
    std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v38);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  return MEMORY[0x223DC1950](v16);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 76);
  v7 = *(result + 76);
  v8 = v6 >= v7;
  if (v6 == v7)
  {
    v9 = *(a2 + 72);
    v10 = *(result + 72);
    v8 = v9 >= v10;
    if (v9 == v10)
    {
      if (*(a2 + 88) <= *(result + 88))
      {
        goto LABEL_4;
      }

LABEL_9:
      v15 = *(a3 + 76);
      v16 = v15 >= v6;
      if (v15 == v6 && (v17 = *(a3 + 72), v18 = *(a2 + 72), v16 = v17 >= v18, v17 == v18))
      {
        if (*(a3 + 88) <= *(a2 + 88))
        {
          goto LABEL_12;
        }
      }

      else if (v16)
      {
LABEL_12:
        result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(result, a2);
        v19 = *(a3 + 76);
        v20 = *(a2 + 76);
        v21 = v19 >= v20;
        if (v19 == v20 && (v22 = *(a3 + 72), v23 = *(a2 + 72), v21 = v22 >= v23, v22 == v23))
        {
          if (*(a3 + 88) <= *(a2 + 88))
          {
            return result;
          }
        }

        else if (v21)
        {
          return result;
        }

        result = a2;
      }

      v29 = a3;
      goto LABEL_28;
    }
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = *(a3 + 76);
  v12 = v11 >= v6;
  if (v11 == v6 && (v13 = *(a3 + 72), v14 = *(a2 + 72), v12 = v13 >= v14, v13 == v14))
  {
    if (*(a3 + 88) <= *(a2 + 88))
    {
      return result;
    }
  }

  else if (v12)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  v24 = *(a2 + 76);
  v25 = *(v5 + 76);
  v26 = v24 >= v25;
  if (v24 == v25 && (v27 = *(a2 + 72), v28 = *(v5 + 72), v26 = v27 >= v28, v27 == v28))
  {
    if (*(a2 + 88) <= *(v5 + 88))
    {
      return result;
    }
  }

  else if (v26)
  {
    return result;
  }

  result = v5;
  v29 = a2;
LABEL_28:

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(result, v29);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a2, a3);
  v9 = *(a4 + 76);
  v10 = *(a3 + 76);
  v11 = v9 >= v10;
  if (v9 == v10 && (v12 = *(a4 + 72), v13 = *(a3 + 72), v11 = v12 >= v13, v12 == v13))
  {
    if (*(a4 + 88) <= *(a3 + 88))
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a3, a4);
  v14 = *(a3 + 76);
  v15 = *(a2 + 76);
  v16 = v14 >= v15;
  if (v14 == v15 && (v17 = *(a3 + 72), v18 = *(a2 + 72), v16 = v17 >= v18, v17 == v18))
  {
    if (*(a3 + 88) <= *(a2 + 88))
    {
      return result;
    }
  }

  else if (v16)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  v19 = *(a2 + 76);
  v20 = *(a1 + 76);
  v21 = v19 >= v20;
  if (v19 == v20 && (v22 = *(a2 + 72), v23 = *(a1 + 72), v21 = v22 >= v23, v22 == v23))
  {
    if (*(a2 + 88) <= *(a1 + 88))
    {
      return result;
    }
  }

  else if (v21)
  {
    return result;
  }

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2);
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a2, a3, a4);
  v11 = *(a5 + 76);
  v12 = *(a4 + 76);
  v13 = v11 >= v12;
  if (v11 == v12 && (v14 = *(a5 + 72), v15 = *(a4 + 72), v13 = v14 >= v15, v14 == v15))
  {
    if (*(a5 + 88) <= *(a4 + 88))
    {
      return result;
    }
  }

  else if (v13)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a4, a5);
  v16 = *(a4 + 76);
  v17 = *(a3 + 76);
  v18 = v16 >= v17;
  if (v16 == v17 && (v19 = *(a4 + 72), v20 = *(a3 + 72), v18 = v19 >= v20, v19 == v20))
  {
    if (*(a4 + 88) <= *(a3 + 88))
    {
      return result;
    }
  }

  else if (v18)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a3, a4);
  v21 = *(a3 + 76);
  v22 = *(a2 + 76);
  v23 = v21 >= v22;
  if (v21 == v22 && (v24 = *(a3 + 72), v25 = *(a2 + 72), v23 = v24 >= v25, v24 == v25))
  {
    if (*(a3 + 88) <= *(a2 + 88))
    {
      return result;
    }
  }

  else if (v23)
  {
    return result;
  }

  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  v26 = *(a2 + 76);
  v27 = *(a1 + 76);
  v28 = v26 >= v27;
  if (v26 == v27 && (v29 = *(a2 + 72), v30 = *(a1 + 72), v28 = v29 >= v30, v29 == v30))
  {
    if (*(a2 + 88) <= *(a1 + 88))
    {
      return result;
    }
  }

  else if (v28)
  {
    return result;
  }

  return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2)
{
  v4 = 0x82FA0BE82FA0BE83 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a2 - 344);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688, a2 - 344);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688, a1 + 1032, a2 - 344);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 268);
      v6 = *(a1 + 76);
      v7 = v5 >= v6;
      if (v5 == v6 && (v8 = *(a2 - 272), v9 = *(a1 + 72), v7 = v8 >= v9, v8 == v9))
      {
        if (*(a2 - 256) <= *(a1 + 88))
        {
          return 1;
        }
      }

      else if (v7)
      {
        return 1;
      }

      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2 - 344);
      return 1;
    }
  }

  v10 = a1 + 688;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688);
  v11 = a1 + 1032;
  v12 = 1;
  if (a1 + 1032 != a2)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(v11 + 76);
      v16 = *(v10 + 76);
      v17 = v15 >= v16;
      if (v15 == v16 && (v18 = *(v11 + 72), v19 = *(v10 + 72), v17 = v18 >= v19, v18 == v19))
      {
        if (*(v11 + 88) <= *(v10 + 88))
        {
          goto LABEL_50;
        }
      }

      else if (v17)
      {
        goto LABEL_50;
      }

      MEMORY[0x223DC1920](v34, v11);
      v37 = *(v11 + 88);
      LOBYTE(v38) = 0;
      v55 = 0;
      if (*(v11 + 312) == 1)
      {
        v38 = *(v11 + 96);
        v39 = *(v11 + 104);
        v40 = *(v11 + 120);
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
        v41 = *(v11 + 128);
        v42 = *(v11 + 144);
        *(v11 + 120) = 0;
        *(v11 + 128) = 0;
        *(v11 + 136) = 0;
        *(v11 + 144) = 0;
        v20 = *(v11 + 152);
        v44 = *(v11 + 168);
        v43 = v20;
        *(v11 + 152) = 0;
        *(v11 + 160) = 0;
        *(v11 + 168) = 0;
        v21 = *(v11 + 176);
        *(v45 + 12) = *(v11 + 188);
        v45[0] = v21;
        v46 = *(v11 + 208);
        v47 = *(v11 + 224);
        *(v11 + 208) = 0;
        *(v11 + 216) = 0;
        v22 = *(v11 + 232);
        v49 = *(v11 + 248);
        v48 = v22;
        *(v11 + 224) = 0;
        *(v11 + 232) = 0;
        *(v11 + 240) = 0;
        *(v11 + 248) = 0;
        v50 = *(v11 + 256);
        v23 = *(v11 + 264);
        v52 = *(v11 + 280);
        __p = v23;
        *(v11 + 264) = 0;
        *(v11 + 272) = 0;
        v53 = *(v11 + 288);
        v54 = *(v11 + 304);
        *(v11 + 280) = 0;
        *(v11 + 288) = 0;
        *(v11 + 296) = 0;
        *(v11 + 304) = 0;
        v55 = 1;
      }

      *v56 = *(v11 + 320);
      *&v56[16] = *(v11 + 336);
      *(v11 + 328) = 0;
      *(v11 + 336) = 0;
      *(v11 + 320) = 0;
      for (i = v13; ; i -= 344)
      {
        v25 = a1 + i;
        sirinluinternal::MatchingSpan::operator=();
        *(v25 + 1120) = *(v25 + 776);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v25 + 1128, v25 + 784);
        v26 = *(a1 + i + 1352);
        if (v26)
        {
          *(v25 + 1360) = v26;
          operator delete(v26);
          *(v25 + 1368) = 0;
        }

        *(v25 + 1352) = *(v25 + 1008);
        *(v25 + 1368) = *(v25 + 1024);
        *(v25 + 1008) = 0;
        *(v25 + 1016) = 0;
        *(v25 + 1024) = 0;
        if (i == -688)
        {
          v10 = a1;
LABEL_35:
          v29 = a1 + i;
          goto LABEL_36;
        }

        v27 = *(a1 + i + 420);
        if (v36 == v27)
        {
          break;
        }

        if (v36 >= v27)
        {
          goto LABEL_35;
        }

LABEL_33:
        v10 -= 344;
      }

      v28 = *(a1 + i + 416);
      if (v35 == v28)
      {
        break;
      }

      if (v35 < v28)
      {
        goto LABEL_33;
      }

      v29 = a1 + i;
      v10 = a1 + i + 688;
LABEL_36:
      v30 = v29 + 1008;
      v31 = v29 + 784;
      sirinluinternal::MatchingSpan::operator=();
      *(v10 + 88) = v37;
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v31, &v38);
      v32 = *v30;
      if (*v30)
      {
        *(v10 + 328) = v32;
        operator delete(v32);
        *v30 = 0;
        *(v30 + 8) = 0;
        *(v30 + 16) = 0;
      }

      *v30 = *v56;
      *(v10 + 328) = *&v56[8];
      memset(v56, 0, sizeof(v56));
      if (v55 == 1)
      {
        v57[0] = &v53;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v57);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(v48);
        }

        v57[0] = &v46;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v57);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }
      }

      ++v14;
      MEMORY[0x223DC1950](v34);
      if (v14 == 8)
      {
        return v11 + 344 == a2;
      }

LABEL_50:
      v10 = v11;
      v13 += 344;
      v11 += 344;
      if (v11 == a2)
      {
        return 1;
      }
    }

    if (v37 <= *(a1 + i + 432))
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  return v12;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v5 = result;
LABEL_2:
  v6 = a2;
  v7 = a2 - 344;
  v8 = v5;
  while (1)
  {
    v9 = v8;
    v10 = v6 - v8;
    v11 = 0x82FA0BE82FA0BE83 * ((v6 - v8) >> 3);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344, v7);
        case 4uLL:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344, v8 + 688, v7);
        case 5uLL:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344, v8 + 688, v8 + 1032, v7);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      v6 = a2;
      if (v11 == 2)
      {
        if (*(a2 - 32) != 1)
        {
          return result;
        }

        if (*(v8 + 312) != 1)
        {
          return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v7);
        }

        v157 = *(a2 - 169);
        if (v157 >= 0)
        {
          v158 = *(a2 - 169);
        }

        else
        {
          v158 = *(a2 - 184);
        }

        v159 = *(v8 + 175);
        if (v159 >= 0)
        {
          v160 = *(v8 + 175);
        }

        else
        {
          v160 = *(v8 + 160);
        }

        if (v158 == v160)
        {
          if (v157 >= 0)
          {
            v161 = (a2 - 192);
          }

          else
          {
            v161 = *(a2 - 192);
          }

          if (v159 >= 0)
          {
            v162 = (v8 + 152);
          }

          else
          {
            v162 = *(v8 + 152);
          }

          result = memcmp(v161, v162, v158);
          if (!result)
          {
            if (*(a2 - 256) <= *(v8 + 88))
            {
              return result;
            }

            return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v7);
          }
        }

        else
        {
          if (v159 >= 0)
          {
            v162 = (v8 + 152);
          }

          else
          {
            v162 = *(v8 + 152);
          }

          if (v157 >= 0)
          {
            v161 = (a2 - 192);
          }

          else
          {
            v161 = *(a2 - 192);
          }
        }

        if (v158 >= v160)
        {
          v338 = v160;
        }

        else
        {
          v338 = v158;
        }

        result = memcmp(v162, v161, v338);
        v339 = v160 < v158;
        if (result)
        {
          v339 = result < 0;
        }

        if (!v339)
        {
          return result;
        }

        return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v7);
      }
    }

    v347 = v8;
    if (v10 <= 8255)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == v6)
      {
        return result;
      }

      v197 = v12 >> 1;
      v198 = v12 >> 1;
      v345 = v10;
      while (1)
      {
        v199 = v198;
        if (v197 < v198)
        {
          goto LABEL_647;
        }

        v200 = (2 * v198) | 1;
        v201 = v9 + 344 * v200;
        v202 = 2 * v198 + 2;
        v349 = v198;
        if (v202 >= v11 || *(v201 + 312) != 1)
        {
          goto LABEL_535;
        }

        if (*(v201 + 656) == 1)
        {
          v203 = *(v201 + 175);
          if (v203 >= 0)
          {
            v204 = *(v201 + 175);
          }

          else
          {
            v204 = *(v201 + 160);
          }

          v205 = *(v201 + 519);
          if (v205 >= 0)
          {
            v206 = *(v201 + 519);
          }

          else
          {
            v206 = *(v201 + 504);
          }

          if (v204 == v206)
          {
            if (v203 >= 0)
            {
              v207 = (v201 + 152);
            }

            else
            {
              v207 = *(v201 + 152);
            }

            if (v205 >= 0)
            {
              v208 = (v201 + 496);
            }

            else
            {
              v208 = *(v201 + 496);
            }

            if (!memcmp(v207, v208, v204))
            {
              v9 = v347;
              v10 = v345;
              v199 = v349;
              if (*(v201 + 88) <= *(v201 + 432))
              {
                goto LABEL_535;
              }

              goto LABEL_534;
            }
          }

          else
          {
            if (v205 >= 0)
            {
              v208 = (v201 + 496);
            }

            else
            {
              v208 = *(v201 + 496);
            }

            if (v203 >= 0)
            {
              v207 = (v201 + 152);
            }

            else
            {
              v207 = *(v201 + 152);
            }
          }

          if (v204 >= v206)
          {
            v209 = v206;
          }

          else
          {
            v209 = v204;
          }

          v210 = memcmp(v208, v207, v209);
          v211 = v206 < v204;
          if (v210)
          {
            v211 = v210 < 0;
          }

          v9 = v347;
          v10 = v345;
          v199 = v349;
          if (!v211)
          {
            goto LABEL_535;
          }
        }

LABEL_534:
        v201 += 344;
        v200 = v202;
LABEL_535:
        v212 = v9 + 344 * v199;
        if (*(v201 + 312) != 1)
        {
          goto LABEL_565;
        }

        if (*(v212 + 312) != 1)
        {
          goto LABEL_647;
        }

        v213 = *(v201 + 175);
        if (v213 >= 0)
        {
          v214 = *(v201 + 175);
        }

        else
        {
          v214 = *(v201 + 160);
        }

        v215 = *(v212 + 175);
        if (v215 >= 0)
        {
          v216 = *(v212 + 175);
        }

        else
        {
          v216 = *(v212 + 160);
        }

        if (v214 == v216)
        {
          if (v213 >= 0)
          {
            v217 = (v201 + 152);
          }

          else
          {
            v217 = *(v201 + 152);
          }

          if (v215 >= 0)
          {
            v218 = (v212 + 152);
          }

          else
          {
            v218 = *(v212 + 152);
          }

          if (!memcmp(v217, v218, v214))
          {
            v9 = v347;
            v10 = v345;
            v199 = v349;
            if (*(v201 + 88) > *(v212 + 88))
            {
              goto LABEL_647;
            }

LABEL_565:
            MEMORY[0x223DC1920](v374, v212);
            v375 = *(v212 + 88);
            LOBYTE(v376) = 0;
            v393 = 0;
            if (*(v212 + 312) == 1)
            {
              v376 = *(v212 + 96);
              v222 = *(v212 + 104);
              v378 = *(v212 + 120);
              v377 = v222;
              *(v212 + 112) = 0;
              *(v212 + 120) = 0;
              *(v212 + 104) = 0;
              v223 = *(v212 + 128);
              v380 = *(v212 + 144);
              v379 = v223;
              *(v212 + 136) = 0;
              *(v212 + 144) = 0;
              *(v212 + 128) = 0;
              v224 = *(v212 + 152);
              v382 = *(v212 + 168);
              v381 = v224;
              *(v212 + 160) = 0;
              *(v212 + 168) = 0;
              *(v212 + 152) = 0;
              v225 = *(v212 + 176);
              *(v383 + 12) = *(v212 + 188);
              v383[0] = v225;
              v385 = 0;
              v384 = 0uLL;
              v384 = *(v212 + 208);
              v385 = *(v212 + 224);
              *(v212 + 208) = 0;
              *(v212 + 216) = 0;
              *(v212 + 224) = 0;
              v226 = *(v212 + 232);
              v387 = *(v212 + 248);
              v386 = v226;
              *(v212 + 240) = 0;
              *(v212 + 248) = 0;
              *(v212 + 232) = 0;
              v388 = *(v212 + 256);
              v227 = *(v212 + 264);
              v390 = *(v212 + 280);
              __p = v227;
              *(v212 + 272) = 0;
              *(v212 + 280) = 0;
              *(v212 + 264) = 0;
              v391 = 0uLL;
              v392 = 0;
              v391 = *(v212 + 288);
              v392 = *(v212 + 304);
              *(v212 + 288) = 0;
              *(v212 + 296) = 0;
              *(v212 + 304) = 0;
              v393 = 1;
            }

            v394[0] = *(v212 + 320);
            *&v394[1] = *(v212 + 336);
            *(v212 + 320) = 0;
            *(v212 + 328) = 0;
            *(v212 + 336) = 0;
            while (1)
            {
              v228 = v201;
              sirinluinternal::MatchingSpan::operator=();
              *(v212 + 88) = *(v201 + 88);
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v212 + 96, v201 + 96);
              v229 = *(v212 + 320);
              if (v229)
              {
                *(v212 + 328) = v229;
                operator delete(v229);
                *(v212 + 320) = 0;
                *(v212 + 328) = 0;
                *(v212 + 336) = 0;
              }

              *(v212 + 320) = *(v201 + 320);
              *(v212 + 336) = *(v201 + 336);
              *(v201 + 320) = 0;
              *(v201 + 328) = 0;
              *(v201 + 336) = 0;
              if (v197 < v200)
              {
LABEL_633:
                sirinluinternal::MatchingSpan::operator=();
                *(v228 + 88) = v375;
                std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v228 + 96, &v376);
                v250 = *(v228 + 320);
                if (v250)
                {
                  *(v228 + 328) = v250;
                  operator delete(v250);
                  *(v228 + 320) = 0;
                  *(v228 + 328) = 0;
                  *(v228 + 336) = 0;
                }

                *(v228 + 320) = v394[0];
                *(v228 + 336) = *&v394[1];
                memset(v394, 0, 24);
                v9 = v347;
                if (v393 == 1)
                {
                  v351[0] = &v391;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v351);
                  if (SHIBYTE(v390) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v387) < 0)
                  {
                    operator delete(v386);
                  }

                  v351[0] = &v384;
                  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v351);
                  if (SHIBYTE(v382) < 0)
                  {
                    operator delete(v381);
                  }

                  if (SHIBYTE(v380) < 0)
                  {
                    operator delete(v379);
                  }

                  if (SHIBYTE(v378) < 0)
                  {
                    operator delete(v377);
                  }
                }

                MEMORY[0x223DC1950](v374);
                v10 = v345;
                v199 = v349;
                goto LABEL_647;
              }

              v230 = 2 * v200;
              v200 = (2 * v200) | 1;
              v201 = v347 + 344 * v200;
              v231 = v230 + 2;
              if (v230 + 2 >= v11 || *(v201 + 312) != 1)
              {
                goto LABEL_603;
              }

              if (*(v201 + 656) == 1)
              {
                v232 = v197;
                v233 = *(v201 + 175);
                if (v233 >= 0)
                {
                  v234 = *(v201 + 175);
                }

                else
                {
                  v234 = *(v201 + 160);
                }

                v235 = *(v201 + 519);
                if (v235 >= 0)
                {
                  v236 = *(v201 + 519);
                }

                else
                {
                  v236 = *(v201 + 504);
                }

                if (v234 == v236)
                {
                  if (v233 >= 0)
                  {
                    v237 = (v201 + 152);
                  }

                  else
                  {
                    v237 = *(v201 + 152);
                  }

                  if (v235 >= 0)
                  {
                    v238 = (v201 + 496);
                  }

                  else
                  {
                    v238 = *(v201 + 496);
                  }

                  if (!memcmp(v237, v238, v234))
                  {
                    v197 = v232;
                    if (*(v201 + 88) <= *(v201 + 432))
                    {
                      goto LABEL_603;
                    }

                    goto LABEL_602;
                  }
                }

                else
                {
                  if (v235 >= 0)
                  {
                    v238 = (v201 + 496);
                  }

                  else
                  {
                    v238 = *(v201 + 496);
                  }

                  if (v233 >= 0)
                  {
                    v237 = (v201 + 152);
                  }

                  else
                  {
                    v237 = *(v201 + 152);
                  }
                }

                if (v234 >= v236)
                {
                  v239 = v236;
                }

                else
                {
                  v239 = v234;
                }

                v240 = memcmp(v238, v237, v239);
                v241 = v236 < v234;
                if (v240)
                {
                  v241 = v240 < 0;
                }

                v197 = v232;
                if (!v241)
                {
                  goto LABEL_603;
                }
              }

LABEL_602:
              v201 += 344;
              v200 = v231;
LABEL_603:
              v212 = v228;
              if (*(v201 + 312) == 1)
              {
                if (v393 != 1)
                {
                  goto LABEL_633;
                }

                v242 = *(v201 + 175);
                if (v242 >= 0)
                {
                  v243 = *(v201 + 175);
                }

                else
                {
                  v243 = *(v201 + 160);
                }

                if (v382 >= 0)
                {
                  v244 = HIBYTE(v382);
                }

                else
                {
                  v244 = *(&v381 + 1);
                }

                if (v243 != v244)
                {
                  if (v382 >= 0)
                  {
                    v246 = &v381;
                  }

                  else
                  {
                    v246 = v381;
                  }

                  if (v242 >= 0)
                  {
                    v245 = (v201 + 152);
                  }

                  else
                  {
                    v245 = *(v201 + 152);
                  }

                  goto LABEL_627;
                }

                if (v242 >= 0)
                {
                  v245 = (v201 + 152);
                }

                else
                {
                  v245 = *(v201 + 152);
                }

                if (v382 >= 0)
                {
                  v246 = &v381;
                }

                else
                {
                  v246 = v381;
                }

                if (!memcmp(v245, v246, v243))
                {
                  v212 = v228;
                  if (*(v201 + 88) > v375)
                  {
                    goto LABEL_633;
                  }
                }

                else
                {
LABEL_627:
                  if (v243 >= v244)
                  {
                    v247 = v244;
                  }

                  else
                  {
                    v247 = v243;
                  }

                  v248 = memcmp(v246, v245, v247);
                  v249 = v244 < v243;
                  if (v248)
                  {
                    v249 = v248 < 0;
                  }

                  v212 = v228;
                  if (v249)
                  {
                    goto LABEL_633;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v215 >= 0)
          {
            v218 = (v212 + 152);
          }

          else
          {
            v218 = *(v212 + 152);
          }

          if (v213 >= 0)
          {
            v217 = (v201 + 152);
          }

          else
          {
            v217 = *(v201 + 152);
          }
        }

        if (v214 >= v216)
        {
          v219 = v216;
        }

        else
        {
          v219 = v214;
        }

        v220 = memcmp(v218, v217, v219);
        v221 = v216 < v214;
        if (v220)
        {
          v221 = v220 < 0;
        }

        v9 = v347;
        v10 = v345;
        v199 = v349;
        if (!v221)
        {
          goto LABEL_565;
        }

LABEL_647:
        v198 = v199 - 1;
        if (!v199)
        {
          v251 = 0x82FA0BE82FA0BE83 * (v10 >> 3);
          v340 = v9 + 264;
          while (1)
          {
            MEMORY[0x223DC1920](v351, v9);
            v352 = *(v9 + 88);
            LOBYTE(v353) = 0;
            v370 = 0;
            if (*(v9 + 312) == 1)
            {
              v353 = *(v9 + 96);
              v252 = *(v9 + 120);
              v354 = *(v9 + 104);
              v355 = v252;
              *(v9 + 112) = 0;
              *(v9 + 120) = 0;
              *(v9 + 104) = 0;
              v253 = *(v9 + 144);
              v356 = *(v9 + 128);
              v357 = v253;
              *(v9 + 136) = 0;
              *(v9 + 144) = 0;
              *(v9 + 128) = 0;
              v254 = *(v9 + 152);
              v359 = *(v9 + 168);
              v358 = v254;
              *(v9 + 152) = 0;
              *(v9 + 160) = 0;
              *(v9 + 168) = 0;
              v255 = *(v9 + 176);
              *(v360 + 12) = *(v9 + 188);
              v360[0] = v255;
              v362 = 0;
              v361 = 0uLL;
              v361 = *(v9 + 208);
              v362 = *(v9 + 224);
              *(v9 + 208) = 0;
              *(v9 + 216) = 0;
              *(v9 + 224) = 0;
              v256 = *(v9 + 232);
              v364 = *(v9 + 248);
              v363 = v256;
              *(v9 + 232) = 0;
              *(v9 + 240) = 0;
              *(v9 + 248) = 0;
              v365 = *(v9 + 256);
              v257 = *v340;
              v367 = *(v340 + 16);
              v366 = v257;
              *v340 = 0;
              *(v340 + 8) = 0;
              *(v340 + 16) = 0;
              v368 = 0uLL;
              v369 = 0;
              v368 = *(v9 + 288);
              v369 = *(v9 + 304);
              *(v9 + 288) = 0;
              *(v9 + 296) = 0;
              *(v9 + 304) = 0;
              v370 = 1;
            }

            v258 = 0;
            *v371 = *(v9 + 320);
            v372 = *(v9 + 336);
            *(v9 + 320) = 0;
            *(v9 + 328) = 0;
            *(v9 + 336) = 0;
            v259 = (v251 - 2) >> 1;
            v260 = v9;
            v350 = v251;
            do
            {
              v261 = v260 + 344 * v258;
              v262 = v261 + 344;
              v263 = 2 * v258;
              v258 = (2 * v258) | 1;
              v264 = v263 + 2;
              if (v263 + 2 >= v251 || *(v261 + 656) != 1)
              {
                goto LABEL_684;
              }

              if (*(v261 + 1000) != 1)
              {
                goto LABEL_683;
              }

              v265 = *(v261 + 519);
              if (v265 >= 0)
              {
                v266 = *(v261 + 519);
              }

              else
              {
                v266 = *(v261 + 504);
              }

              v267 = *(v261 + 863);
              if (v267 >= 0)
              {
                v268 = *(v261 + 863);
              }

              else
              {
                v268 = *(v261 + 848);
              }

              if (v266 == v268)
              {
                if (v265 >= 0)
                {
                  v269 = (v261 + 496);
                }

                else
                {
                  v269 = *(v261 + 496);
                }

                if (v267 >= 0)
                {
                  v270 = (v261 + 840);
                }

                else
                {
                  v270 = *(v261 + 840);
                }

                if (!memcmp(v269, v270, v266))
                {
                  v251 = v350;
                  if (*(v261 + 432) > *(v261 + 776))
                  {
                    goto LABEL_683;
                  }

                  goto LABEL_684;
                }
              }

              else
              {
                if (v267 >= 0)
                {
                  v270 = (v261 + 840);
                }

                else
                {
                  v270 = *(v261 + 840);
                }

                if (v265 >= 0)
                {
                  v269 = (v261 + 496);
                }

                else
                {
                  v269 = *(v261 + 496);
                }
              }

              if (v266 >= v268)
              {
                v271 = v268;
              }

              else
              {
                v271 = v266;
              }

              v272 = memcmp(v270, v269, v271);
              v273 = v268 < v266;
              if (v272)
              {
                v273 = v272 < 0;
              }

              v251 = v350;
              if (v273)
              {
LABEL_683:
                v262 = v261 + 688;
                v258 = v264;
              }

LABEL_684:
              sirinluinternal::MatchingSpan::operator=();
              *(v260 + 88) = *(v262 + 88);
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v260 + 96, v262 + 96);
              v274 = *(v260 + 320);
              if (v274)
              {
                *(v260 + 328) = v274;
                operator delete(v274);
                *(v260 + 320) = 0;
                *(v260 + 328) = 0;
                *(v260 + 336) = 0;
              }

              *(v260 + 320) = *(v262 + 320);
              *(v260 + 336) = *(v262 + 336);
              *(v262 + 320) = 0;
              *(v262 + 328) = 0;
              *(v262 + 336) = 0;
              v260 = v262;
            }

            while (v258 <= v259);
            if (v262 == a2 - 344)
            {
              sirinluinternal::MatchingSpan::operator=();
              *(v262 + 88) = v352;
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v262 + 96, &v353);
              v287 = *(v262 + 320);
              if (v287)
              {
                *(v262 + 328) = v287;
                operator delete(v287);
                *(v262 + 320) = 0;
                *(v262 + 328) = 0;
                *(v262 + 336) = 0;
              }

              *(v262 + 320) = *v371;
              *(v262 + 336) = v372;
              v371[0] = 0;
              v371[1] = 0;
              v372 = 0;
            }

            else
            {
              sirinluinternal::MatchingSpan::operator=();
              *(v262 + 88) = *(a2 - 256);
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v262 + 96, a2 - 248);
              v275 = *(v262 + 320);
              if (v275)
              {
                *(v262 + 328) = v275;
                operator delete(v275);
                *(v262 + 320) = 0;
                *(v262 + 328) = 0;
                *(v262 + 336) = 0;
              }

              v276 = (a2 - 24);
              *(v262 + 320) = *(a2 - 24);
              *(v262 + 336) = *(a2 - 8);
              *v276 = 0;
              v276[1] = 0;
              v276[2] = 0;
              sirinluinternal::MatchingSpan::operator=();
              *(a2 - 256) = v352;
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(a2 - 248, &v353);
              v277 = *(a2 - 24);
              if (v277)
              {
                *(a2 - 16) = v277;
                operator delete(v277);
              }

              *(a2 - 24) = *v371;
              *(a2 - 8) = v372;
              v371[0] = 0;
              v371[1] = 0;
              v372 = 0;
              v278 = v262 + 344 - v347;
              if (v278 >= 345)
              {
                v279 = (-2 - 0x7D05F417D05F417DLL * (v278 >> 3)) >> 1;
                v280 = v347 + 344 * v279;
                if (*(v280 + 312) == 1)
                {
                  if (*(v262 + 312) != 1)
                  {
                    goto LABEL_740;
                  }

                  v281 = *(v280 + 175);
                  if (v281 >= 0)
                  {
                    v282 = *(v280 + 175);
                  }

                  else
                  {
                    v282 = *(v280 + 160);
                  }

                  v283 = *(v262 + 175);
                  if (v283 >= 0)
                  {
                    v284 = *(v262 + 175);
                  }

                  else
                  {
                    v284 = *(v262 + 160);
                  }

                  if (v282 == v284)
                  {
                    if (v281 >= 0)
                    {
                      v285 = (v280 + 152);
                    }

                    else
                    {
                      v285 = *(v280 + 152);
                    }

                    if (v283 >= 0)
                    {
                      v286 = (v262 + 152);
                    }

                    else
                    {
                      v286 = *(v262 + 152);
                    }

                    if (!memcmp(v285, v286, v282))
                    {
                      v251 = v350;
                      if (*(v280 + 88) <= *(v262 + 88))
                      {
                        goto LABEL_714;
                      }

LABEL_740:
                      MEMORY[0x223DC1920](v374, v262);
                      v375 = *(v262 + 88);
                      LOBYTE(v376) = 0;
                      v393 = 0;
                      if (*(v262 + 312) == 1)
                      {
                        v376 = *(v262 + 96);
                        v292 = *(v262 + 120);
                        v377 = *(v262 + 104);
                        v378 = v292;
                        *(v262 + 112) = 0;
                        *(v262 + 120) = 0;
                        *(v262 + 104) = 0;
                        v293 = *(v262 + 144);
                        v379 = *(v262 + 128);
                        v380 = v293;
                        *(v262 + 136) = 0;
                        *(v262 + 144) = 0;
                        *(v262 + 128) = 0;
                        v294 = *(v262 + 152);
                        v382 = *(v262 + 168);
                        v381 = v294;
                        *(v262 + 152) = 0;
                        *(v262 + 160) = 0;
                        *(v262 + 168) = 0;
                        v295 = *(v262 + 176);
                        *(v383 + 12) = *(v262 + 188);
                        v383[0] = v295;
                        v385 = 0;
                        v384 = 0uLL;
                        v384 = *(v262 + 208);
                        v385 = *(v262 + 224);
                        *(v262 + 208) = 0;
                        *(v262 + 216) = 0;
                        *(v262 + 224) = 0;
                        v296 = *(v262 + 232);
                        v387 = *(v262 + 248);
                        v386 = v296;
                        *(v262 + 232) = 0;
                        *(v262 + 240) = 0;
                        *(v262 + 248) = 0;
                        v388 = *(v262 + 256);
                        v297 = *(v262 + 264);
                        v390 = *(v262 + 280);
                        __p = v297;
                        *(v262 + 264) = 0;
                        *(v262 + 272) = 0;
                        *(v262 + 280) = 0;
                        v391 = 0uLL;
                        v392 = 0;
                        v391 = *(v262 + 288);
                        v392 = *(v262 + 304);
                        *(v262 + 288) = 0;
                        *(v262 + 296) = 0;
                        *(v262 + 304) = 0;
                        v393 = 1;
                      }

                      v394[0] = *(v262 + 320);
                      *&v394[1] = *(v262 + 336);
                      *(v262 + 320) = 0;
                      *(v262 + 328) = 0;
                      *(v262 + 336) = 0;
                      while (1)
                      {
                        do
                        {
LABEL_743:
                          v298 = v280;
                          sirinluinternal::MatchingSpan::operator=();
                          *(v262 + 88) = *(v280 + 88);
                          std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v262 + 96, v280 + 96);
                          v299 = *(v262 + 320);
                          if (v299)
                          {
                            *(v262 + 328) = v299;
                            operator delete(v299);
                            *(v262 + 320) = 0;
                            *(v262 + 328) = 0;
                            *(v262 + 336) = 0;
                          }

                          *(v262 + 320) = *(v280 + 320);
                          *(v262 + 336) = *(v280 + 336);
                          *(v280 + 320) = 0;
                          *(v280 + 328) = 0;
                          *(v280 + 336) = 0;
                          if (!v279 || (v279 = (v279 - 1) >> 1, v280 = v347 + 344 * v279, *(v280 + 312) != 1))
                          {
LABEL_776:
                            sirinluinternal::MatchingSpan::operator=();
                            *(v298 + 88) = v375;
                            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v298 + 96, &v376);
                            v308 = *(v298 + 320);
                            if (v308)
                            {
                              *(v298 + 328) = v308;
                              operator delete(v308);
                            }

                            *(v298 + 320) = v394[0];
                            *(v298 + 336) = *&v394[1];
                            memset(v394, 0, 24);
                            if (v393 == 1)
                            {
                              v373 = &v391;
                              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v373);
                              if (SHIBYTE(v390) < 0)
                              {
                                operator delete(__p);
                              }

                              if (SHIBYTE(v387) < 0)
                              {
                                operator delete(v386);
                              }

                              v373 = &v384;
                              std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v373);
                              if (SHIBYTE(v382) < 0)
                              {
                                operator delete(v381);
                              }

                              if (SHIBYTE(v380) < 0)
                              {
                                operator delete(v379);
                              }

                              if (SHIBYTE(v378) < 0)
                              {
                                operator delete(v377);
                              }
                            }

                            MEMORY[0x223DC1950](v374);
                            if (v371[0])
                            {
                              v371[1] = v371[0];
                              operator delete(v371[0]);
                            }

                            goto LABEL_714;
                          }

                          v262 = v298;
                        }

                        while (v393 != 1);
                        v300 = *(v280 + 175);
                        if (v300 >= 0)
                        {
                          v301 = *(v280 + 175);
                        }

                        else
                        {
                          v301 = *(v280 + 160);
                        }

                        if (v382 >= 0)
                        {
                          v302 = HIBYTE(v382);
                        }

                        else
                        {
                          v302 = *(&v381 + 1);
                        }

                        if (v301 == v302)
                        {
                          if (v300 >= 0)
                          {
                            v303 = (v280 + 152);
                          }

                          else
                          {
                            v303 = *(v280 + 152);
                          }

                          if (v382 >= 0)
                          {
                            v304 = &v381;
                          }

                          else
                          {
                            v304 = v381;
                          }

                          if (!memcmp(v303, v304, v301))
                          {
                            v262 = v298;
                            v251 = v350;
                            if (*(v280 + 88) <= v375)
                            {
                              goto LABEL_776;
                            }

                            goto LABEL_743;
                          }
                        }

                        else
                        {
                          if (v382 >= 0)
                          {
                            v304 = &v381;
                          }

                          else
                          {
                            v304 = v381;
                          }

                          if (v300 >= 0)
                          {
                            v303 = (v280 + 152);
                          }

                          else
                          {
                            v303 = *(v280 + 152);
                          }
                        }

                        if (v301 >= v302)
                        {
                          v305 = v302;
                        }

                        else
                        {
                          v305 = v301;
                        }

                        v306 = memcmp(v304, v303, v305);
                        v307 = v302 < v301;
                        if (v306)
                        {
                          v307 = v306 < 0;
                        }

                        v262 = v298;
                        v251 = v350;
                        if (!v307)
                        {
                          goto LABEL_776;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v283 >= 0)
                    {
                      v286 = (v262 + 152);
                    }

                    else
                    {
                      v286 = *(v262 + 152);
                    }

                    if (v281 >= 0)
                    {
                      v285 = (v280 + 152);
                    }

                    else
                    {
                      v285 = *(v280 + 152);
                    }
                  }

                  if (v282 >= v284)
                  {
                    v289 = v284;
                  }

                  else
                  {
                    v289 = v282;
                  }

                  v290 = memcmp(v286, v285, v289);
                  v291 = v284 < v282;
                  if (v290)
                  {
                    v291 = v290 < 0;
                  }

                  v251 = v350;
                  if (v291)
                  {
                    goto LABEL_740;
                  }
                }
              }
            }

LABEL_714:
            v9 = v347;
            if (v370 == 1)
            {
              v374[0] = &v368;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v374);
              if (SHIBYTE(v367) < 0)
              {
                operator delete(v366);
              }

              if (SHIBYTE(v364) < 0)
              {
                operator delete(v363);
              }

              v374[0] = &v361;
              std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v374);
              if (SHIBYTE(v359) < 0)
              {
                operator delete(v358);
              }

              if (SHIBYTE(v357) < 0)
              {
                operator delete(v356);
              }

              if (SHIBYTE(v355) < 0)
              {
                operator delete(v354);
              }
            }

            a2 -= 344;
            result = MEMORY[0x223DC1950](v351);
            if (v251-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    if (v10 < 0xAC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8 + 344 * (v11 >> 1), v8, v7);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8, v8 + 344 * (v11 >> 1), v7);
      v13 = 344 * (v11 >> 1);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8 + 344, v13 + v8 - 344, a2 - 688);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v8 + 688, v8 + 344 + v13, a2 - 1032);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(v13 + v8 - 344, v8 + v13, v8 + 344 + v13);
      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v8 + v13);
    }

    v342 = a3 - 1;
    if (a4)
    {
      goto LABEL_63;
    }

    if (*(v8 - 32) != 1)
    {
      goto LABEL_33;
    }

    if (*(v8 + 312) != 1)
    {
      goto LABEL_63;
    }

    v14 = *(v8 - 169);
    v15 = v14 >= 0 ? *(v8 - 169) : *(v8 - 184);
    v16 = *(v8 + 175);
    v17 = v16 >= 0 ? *(v8 + 175) : *(v8 + 160);
    if (v15 == v17)
    {
      if (v14 >= 0)
      {
        v18 = (v8 - 192);
      }

      else
      {
        v18 = *(v8 - 192);
      }

      if (v16 >= 0)
      {
        v19 = (v8 + 152);
      }

      else
      {
        v19 = *(v8 + 152);
      }

      if (!memcmp(v18, v19, v15))
      {
        if (*(v8 - 256) <= *(v8 + 88))
        {
          goto LABEL_33;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v19 = v16 >= 0 ? (v8 + 152) : *(v8 + 152);
      v18 = v14 >= 0 ? (v8 - 192) : *(v8 - 192);
    }

    if (v15 >= v17)
    {
      v39 = v17;
    }

    else
    {
      v39 = v15;
    }

    v40 = memcmp(v19, v18, v39);
    v41 = v17 < v15;
    if (v40)
    {
      v41 = v40 < 0;
    }

    if (v41)
    {
LABEL_63:
      MEMORY[0x223DC1920](v374, v8);
      v42 = *(v8 + 88);
      v375 = v42;
      LOBYTE(v376) = 0;
      v393 = 0;
      v43 = *(v8 + 312);
      if (v43 == 1)
      {
        v376 = *(v8 + 96);
        v44 = *(v8 + 120);
        v377 = *(v8 + 104);
        v378 = v44;
        *(v8 + 112) = 0;
        *(v8 + 120) = 0;
        *(v8 + 104) = 0;
        v45 = *(v8 + 144);
        v379 = *(v8 + 128);
        v380 = v45;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v46 = *(v8 + 152);
        v382 = *(v8 + 168);
        v381 = v46;
        *(v8 + 152) = 0;
        *(v8 + 160) = 0;
        *(v8 + 168) = 0;
        v47 = *(v8 + 176);
        *(v383 + 12) = *(v8 + 188);
        v383[0] = v47;
        v385 = 0;
        v384 = 0uLL;
        v384 = *(v8 + 208);
        v385 = *(v8 + 224);
        *(v8 + 208) = 0;
        *(v8 + 216) = 0;
        *(v8 + 224) = 0;
        v48 = *(v8 + 232);
        v387 = *(v8 + 248);
        v386 = v48;
        *(v8 + 232) = 0;
        *(v8 + 240) = 0;
        *(v8 + 248) = 0;
        v388 = *(v8 + 256);
        v49 = *(v8 + 264);
        v390 = *(v8 + 280);
        __p = v49;
        *(v8 + 264) = 0;
        *(v8 + 272) = 0;
        *(v8 + 280) = 0;
        v391 = 0uLL;
        v392 = 0;
        v391 = *(v8 + 288);
        v392 = *(v8 + 304);
        *(v8 + 288) = 0;
        *(v8 + 296) = 0;
        *(v8 + 304) = 0;
        v393 = 1;
      }

      v394[0] = *(v8 + 320);
      *&v394[1] = *(v8 + 336);
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      if (*(v8 + 656) != 1)
      {
        v71 = (v8 + 344);
        goto LABEL_95;
      }

      if (v382 >= 0)
      {
        v50 = HIBYTE(v382);
      }

      else
      {
        v50 = *(&v381 + 1);
      }

      if (v382 >= 0)
      {
        v51 = &v381;
      }

      else
      {
        v51 = v381;
      }

      v52 = (v8 + 1000);
      while (1)
      {
        if (!v43)
        {
          goto LABEL_88;
        }

        v53 = *(v52 - 481);
        v54 = v53 >= 0 ? *(v52 - 481) : *(v52 - 62);
        v55 = v53 >= 0 ? v52 - 504 : *(v52 - 63);
        if (v54 != v50 || memcmp(v55, v51, v50))
        {
          break;
        }

        if (*(v52 - 142) <= v42)
        {
          goto LABEL_91;
        }

LABEL_88:
        v59 = *v52;
        v52 += 344;
        if ((v59 & 1) == 0)
        {
          v71 = v52 - 656;
          goto LABEL_131;
        }
      }

      if (v54 >= v50)
      {
        v56 = v50;
      }

      else
      {
        v56 = v54;
      }

      v57 = memcmp(v51, v55, v56);
      v58 = v50 < v54;
      if (v57)
      {
        v58 = v57 < 0;
      }

      if (v58)
      {
        goto LABEL_88;
      }

LABEL_91:
      v60 = v52 - 1000 == v9;
      v71 = v52 - 656;
      if (!v60)
      {
        while (1)
        {
LABEL_131:
          if (*(v7 + 312) == 1)
          {
            if (!v43)
            {
              goto LABEL_149;
            }

            v72 = *(v7 + 175);
            if (v72 >= 0)
            {
              v73 = *(v7 + 175);
            }

            else
            {
              v73 = *(v7 + 160);
            }

            if (v72 >= 0)
            {
              v74 = (v7 + 152);
            }

            else
            {
              v74 = *(v7 + 152);
            }

            if (v73 == v50 && !memcmp(v74, v51, v50))
            {
              if (*(v7 + 88) > v42)
              {
                goto LABEL_149;
              }
            }

            else
            {
              if (v73 >= v50)
              {
                v75 = v50;
              }

              else
              {
                v75 = v73;
              }

              v76 = memcmp(v51, v74, v75);
              v77 = v50 < v73;
              if (v76)
              {
                v77 = v76 < 0;
              }

              if (v77)
              {
                goto LABEL_149;
              }
            }
          }

          v7 -= 344;
        }
      }

LABEL_95:
      if (v71 < v6)
      {
        if (v382 >= 0)
        {
          v61 = HIBYTE(v382);
        }

        else
        {
          v61 = *(&v381 + 1);
        }

        if (v382 >= 0)
        {
          v62 = &v381;
        }

        else
        {
          v62 = v381;
        }

        while (1)
        {
          if (*(v7 + 312) == 1)
          {
            if (!v43)
            {
              goto LABEL_149;
            }

            v63 = *(v7 + 175);
            if (v63 >= 0)
            {
              v64 = *(v7 + 175);
            }

            else
            {
              v64 = *(v7 + 160);
            }

            if (v63 >= 0)
            {
              v65 = (v7 + 152);
            }

            else
            {
              v65 = *(v7 + 152);
            }

            if (v64 == v61 && !memcmp(v65, v62, v61))
            {
              if (*(v7 + 88) > v42 || v71 >= v7)
              {
                goto LABEL_149;
              }
            }

            else
            {
              if (v64 >= v61)
              {
                v66 = v61;
              }

              else
              {
                v66 = v64;
              }

              v67 = memcmp(v62, v65, v66);
              v68 = v61 >= v64;
              if (v67)
              {
                v68 = v67 >= 0;
              }

              if (!v68 || v71 >= v7)
              {
LABEL_149:
                v344 = v7;
                goto LABEL_151;
              }
            }
          }

          else if (v71 >= v7)
          {
            goto LABEL_149;
          }

          v7 -= 344;
        }
      }

      v344 = v6;
LABEL_151:
      v8 = v71;
      v343 = v71;
      if (v71 >= v344)
      {
        goto LABEL_208;
      }

      v8 = v71;
      v78 = v344;
      while (2)
      {
        std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, v78);
        v79 = v8 + 344;
        v80 = v393;
        v81 = HIBYTE(v382);
        v82 = *(&v381 + 1);
        v83 = v381;
        v84 = v375;
        if ((*(v8 + 656) & 1) == 0)
        {
          v8 += 344;
          goto LABEL_183;
        }

        if (v382 >= 0)
        {
          v85 = HIBYTE(v382);
        }

        else
        {
          v85 = *(&v381 + 1);
        }

        v348 = v381;
        if (v382 >= 0)
        {
          v86 = &v381;
        }

        else
        {
          v86 = v381;
        }

        v87 = (v8 + 1000);
        while (2)
        {
          if ((v80 & 1) == 0)
          {
            goto LABEL_176;
          }

          v88 = *(v87 - 481);
          if (v88 >= 0)
          {
            v89 = *(v87 - 481);
          }

          else
          {
            v89 = *(v87 - 62);
          }

          if (v88 >= 0)
          {
            v90 = v87 - 504;
          }

          else
          {
            v90 = *(v87 - 63);
          }

          if (v89 == v85 && !memcmp(v90, v86, v85))
          {
            if (*(v87 - 142) <= v84)
            {
              v80 = 1;
              v8 = v79;
              goto LABEL_182;
            }

            goto LABEL_176;
          }

          if (v89 >= v85)
          {
            v91 = v85;
          }

          else
          {
            v91 = v89;
          }

          v92 = memcmp(v86, v90, v91);
          v93 = v85 < v89;
          if (v92)
          {
            v93 = v92 < 0;
          }

          if (v93)
          {
LABEL_176:
            v79 += 344;
            v94 = *v87;
            v87 += 344;
            if ((v94 & 1) == 0)
            {
              v8 = (v87 - 656);
              goto LABEL_182;
            }

            continue;
          }

          break;
        }

        v8 = (v87 - 656);
        v80 = 1;
LABEL_182:
        v83 = v348;
LABEL_183:
        if ((v81 & 0x80u) == 0)
        {
          v95 = v81;
        }

        else
        {
          v95 = v82;
        }

        if ((v81 & 0x80u) == 0)
        {
          v96 = &v381;
        }

        else
        {
          v96 = v83;
        }

        while (1)
        {
          do
          {
            v78 -= 344;
          }

          while (*(v78 + 312) != 1);
          if ((v80 & 1) == 0)
          {
            break;
          }

          v97 = *(v78 + 175);
          if (v97 >= 0)
          {
            v98 = *(v78 + 175);
          }

          else
          {
            v98 = *(v78 + 160);
          }

          if (v97 >= 0)
          {
            v99 = (v78 + 152);
          }

          else
          {
            v99 = *(v78 + 152);
          }

          if (v98 == v95 && !memcmp(v99, v96, v95))
          {
            if (*(v78 + 88) > v84)
            {
              break;
            }
          }

          else
          {
            if (v98 >= v95)
            {
              v100 = v95;
            }

            else
            {
              v100 = v98;
            }

            v101 = memcmp(v96, v99, v100);
            v102 = v95 < v98;
            if (v101)
            {
              v102 = v101 < 0;
            }

            if (v102)
            {
              break;
            }
          }
        }

        if (v8 < v78)
        {
          continue;
        }

        break;
      }

LABEL_208:
      v6 = a2;
      v5 = v347;
      v7 = a2 - 344;
      a3 = v342;
      if (v8 - 344 != v347)
      {
        sirinluinternal::MatchingSpan::operator=();
        *(v347 + 88) = *(v8 - 256);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v347 + 96, v8 - 248);
        v103 = *(v347 + 320);
        if (v103)
        {
          *(v347 + 328) = v103;
          operator delete(v103);
          *(v347 + 320) = 0;
          *(v347 + 328) = 0;
          *(v347 + 336) = 0;
        }

        v104 = (v8 - 24);
        *(v347 + 320) = *(v8 - 24);
        *(v347 + 336) = *(v8 - 8);
        *v104 = 0;
        v104[1] = 0;
        v104[2] = 0;
      }

      sirinluinternal::MatchingSpan::operator=();
      *(v8 - 256) = v375;
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v8 - 248, &v376);
      v105 = *(v8 - 24);
      if (v105)
      {
        *(v8 - 16) = v105;
        operator delete(v105);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      *(v8 - 24) = v394[0];
      *(v8 - 8) = *&v394[1];
      memset(v394, 0, 24);
      if (v393 == 1)
      {
        v351[0] = &v391;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v351);
        if (SHIBYTE(v390) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v387) < 0)
        {
          operator delete(v386);
        }

        v351[0] = &v384;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v351);
        if (SHIBYTE(v382) < 0)
        {
          operator delete(v381);
        }

        if (SHIBYTE(v380) < 0)
        {
          operator delete(v379);
        }

        if (SHIBYTE(v378) < 0)
        {
          operator delete(v377);
        }
      }

      MEMORY[0x223DC1950](v374);
      if (v343 < v344)
      {
LABEL_228:
        result = std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(v347, v8 - 344, v342, a4 & 1);
        a4 = 0;
      }

      else
      {
        v106 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(v347, v8 - 344);
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(v8, a2);
        if (result)
        {
          a2 = v8 - 344;
          if (v106)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v106)
        {
          goto LABEL_228;
        }
      }
    }

    else
    {
LABEL_33:
      MEMORY[0x223DC1920](v374, v8);
      v20 = *(v8 + 88);
      v375 = v20;
      LOBYTE(v376) = 0;
      v393 = 0;
      v21 = *(v8 + 312);
      if ((v21 & 1) == 0)
      {
        v107 = v8;
        v28 = (v8 + 320);
        v394[0] = *(v8 + 320);
        v29 = (v8 + 336);
        *&v394[1] = *(v8 + 336);
        *(v8 + 320) = 0;
        *(v8 + 328) = 0;
        *(v8 + 336) = 0;
        goto LABEL_230;
      }

      v376 = *(v8 + 96);
      v22 = *(v8 + 120);
      v377 = *(v8 + 104);
      v378 = v22;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 104) = 0;
      v23 = *(v8 + 144);
      v379 = *(v8 + 128);
      v380 = v23;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      v24 = *(v8 + 152);
      v382 = *(v8 + 168);
      v381 = v24;
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      v25 = *(v8 + 176);
      *(v383 + 12) = *(v8 + 188);
      v383[0] = v25;
      v385 = 0;
      v384 = 0uLL;
      v384 = *(v8 + 208);
      v385 = *(v8 + 224);
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      *(v8 + 224) = 0;
      v26 = *(v8 + 232);
      v387 = *(v8 + 248);
      v386 = v26;
      *(v8 + 232) = 0;
      *(v8 + 240) = 0;
      *(v8 + 248) = 0;
      v388 = *(v8 + 256);
      v27 = *(v8 + 264);
      v390 = *(v8 + 280);
      __p = v27;
      *(v8 + 264) = 0;
      *(v8 + 272) = 0;
      *(v8 + 280) = 0;
      v391 = 0uLL;
      v392 = 0;
      v391 = *(v8 + 288);
      v392 = *(v8 + 304);
      *(v8 + 288) = 0;
      *(v8 + 296) = 0;
      *(v8 + 304) = 0;
      v393 = 1;
      v28 = (v8 + 320);
      v394[0] = *(v8 + 320);
      v29 = (v8 + 336);
      *&v394[1] = *(v8 + 336);
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      v30 = HIBYTE(v382);
      if ((*(a2 - 32) & 1) == 0)
      {
        v32 = *(&v381 + 1);
        v33 = v381;
        goto LABEL_270;
      }

      v31 = (v8 + 336);
      v32 = *(&v381 + 1);
      v33 = v381;
      if (v382 >= 0)
      {
        v34 = HIBYTE(v382);
      }

      else
      {
        v34 = *(&v381 + 1);
      }

      v35 = *(a2 - 169);
      if (v35 >= 0)
      {
        v36 = *(a2 - 169);
      }

      else
      {
        v36 = *(a2 - 184);
      }

      if (v34 == v36)
      {
        if (v382 >= 0)
        {
          v37 = &v381;
        }

        else
        {
          v37 = v381;
        }

        if (v35 >= 0)
        {
          v38 = (a2 - 192);
        }

        else
        {
          v38 = *(a2 - 192);
        }

        if (!memcmp(v37, v38, v34))
        {
          v29 = v31;
          if (v20 <= *(a2 - 256))
          {
            goto LABEL_387;
          }

          goto LABEL_270;
        }
      }

      else
      {
        if (v35 >= 0)
        {
          v38 = (a2 - 192);
        }

        else
        {
          v38 = *(a2 - 192);
        }

        if (v382 >= 0)
        {
          v37 = &v381;
        }

        else
        {
          v37 = v381;
        }
      }

      if (v34 >= v36)
      {
        v116 = v36;
      }

      else
      {
        v116 = v34;
      }

      v117 = memcmp(v38, v37, v116);
      v118 = v36 < v34;
      if (v117)
      {
        v118 = v117 < 0;
      }

      v29 = v31;
      if (!v118)
      {
LABEL_387:
        v107 = v347;
LABEL_230:
        v8 = v107 + 344;
        if (v107 + 344 < a2)
        {
          if (v382 >= 0)
          {
            v108 = HIBYTE(v382);
          }

          else
          {
            v108 = *(&v381 + 1);
          }

          if (v382 >= 0)
          {
            v109 = &v381;
          }

          else
          {
            v109 = v381;
          }

          while (1)
          {
            if (v21)
            {
              if (*(v8 + 312) != 1)
              {
                goto LABEL_296;
              }

              v110 = *(v8 + 175);
              if (v110 >= 0)
              {
                v111 = *(v8 + 175);
              }

              else
              {
                v111 = *(v8 + 160);
              }

              if (v110 >= 0)
              {
                v112 = (v8 + 152);
              }

              else
              {
                v112 = *(v8 + 152);
              }

              if (v108 == v111 && !memcmp(v109, v112, v108))
              {
                if (v20 > *(v8 + 88))
                {
                  goto LABEL_296;
                }
              }

              else
              {
                if (v108 >= v111)
                {
                  v113 = v111;
                }

                else
                {
                  v113 = v108;
                }

                v114 = memcmp(v112, v109, v113);
                v115 = v111 < v108;
                if (v114)
                {
                  v115 = v114 < 0;
                }

                if (v115)
                {
                  goto LABEL_296;
                }
              }
            }

            v8 += 344;
            if (v8 >= a2)
            {
              goto LABEL_296;
            }
          }
        }

        goto LABEL_296;
      }

LABEL_270:
      if ((v30 & 0x80u) == 0)
      {
        v119 = v30;
      }

      else
      {
        v119 = v32;
      }

      if ((v30 & 0x80u) == 0)
      {
        v120 = &v381;
      }

      else
      {
        v120 = v33;
      }

      v8 = v347 + 344;
      if (*(v347 + 656) == 1)
      {
        v121 = (v347 + 1000);
        while (1)
        {
          v122 = *(v121 - 481);
          if (v122 >= 0)
          {
            v123 = *(v121 - 481);
          }

          else
          {
            v123 = *(v121 - 62);
          }

          if (v122 >= 0)
          {
            v124 = v121 - 504;
          }

          else
          {
            v124 = *(v121 - 63);
          }

          if (v119 == v123 && !memcmp(v120, v124, v119))
          {
            if (v20 > *(v121 - 142))
            {
LABEL_295:
              v8 = (v121 - 656);
              break;
            }
          }

          else
          {
            if (v119 >= v123)
            {
              v125 = v123;
            }

            else
            {
              v125 = v119;
            }

            v126 = memcmp(v124, v120, v125);
            v127 = v123 < v119;
            if (v126)
            {
              v127 = v126 < 0;
            }

            if (v127)
            {
              break;
            }
          }

          v8 += 344;
          v128 = *v121;
          v121 += 344;
          if ((v128 & 1) == 0)
          {
            goto LABEL_295;
          }
        }
      }

LABEL_296:
      if (v8 >= a2)
      {
        i = a2;
      }

      else
      {
        i = a2 - 344;
      }

      if (v8 < a2 && v21)
      {
        if (v382 >= 0)
        {
          v130 = HIBYTE(v382);
        }

        else
        {
          v130 = *(&v381 + 1);
        }

        if (v382 >= 0)
        {
          v131 = &v381;
        }

        else
        {
          v131 = v381;
        }

        for (i = a2 - 344; ; i -= 344)
        {
          if (*(i + 312) == 1)
          {
            v132 = *(i + 175);
            if (v132 >= 0)
            {
              v133 = *(i + 175);
            }

            else
            {
              v133 = *(i + 160);
            }

            if (v132 >= 0)
            {
              v134 = (i + 152);
            }

            else
            {
              v134 = *(i + 152);
            }

            if (v130 == v133 && !memcmp(v131, v134, v130))
            {
              if (v20 <= *(i + 88))
              {
                break;
              }
            }

            else
            {
              if (v130 >= v133)
              {
                v135 = v133;
              }

              else
              {
                v135 = v130;
              }

              v136 = memcmp(v134, v131, v135);
              v137 = v133 < v130;
              if (v136)
              {
                v137 = v136 < 0;
              }

              if (!v137)
              {
                break;
              }
            }
          }
        }
      }

LABEL_368:
      while (v8 < i)
      {
        std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v8, i);
        v138 = v393;
        if (v382 >= 0)
        {
          v139 = HIBYTE(v382);
        }

        else
        {
          v139 = *(&v381 + 1);
        }

        if (v382 >= 0)
        {
          v140 = &v381;
        }

        else
        {
          v140 = v381;
        }

        v141 = v375;
        do
        {
          while (1)
          {
            do
            {
              v8 += 344;
            }

            while (!v138);
            if (*(v8 + 312) != 1)
            {
              goto LABEL_351;
            }

            v142 = *(v8 + 175);
            v143 = v142 >= 0 ? *(v8 + 175) : *(v8 + 160);
            v144 = v142 >= 0 ? (v8 + 152) : *(v8 + 152);
            if (v139 != v143 || memcmp(v140, v144, v139))
            {
              break;
            }

            if (v141 > *(v8 + 88))
            {
              goto LABEL_351;
            }
          }

          if (v139 >= v143)
          {
            v145 = v143;
          }

          else
          {
            v145 = v139;
          }

          v146 = memcmp(v144, v140, v145);
          v147 = v143 < v139;
          if (v146)
          {
            v147 = v146 < 0;
          }
        }

        while (!v147);
        do
        {
          while (1)
          {
            do
            {
LABEL_351:
              i -= 344;
            }

            while (*(i + 312) != 1);
            v148 = *(i + 175);
            v149 = v148 >= 0 ? *(i + 175) : *(i + 160);
            v150 = v148 >= 0 ? (i + 152) : *(i + 152);
            if (v139 != v149 || memcmp(v140, v150, v139))
            {
              break;
            }

            if (v141 <= *(i + 88))
            {
              goto LABEL_368;
            }
          }

          if (v139 >= v149)
          {
            v151 = v149;
          }

          else
          {
            v151 = v139;
          }

          v152 = memcmp(v150, v140, v151);
          v153 = v149 < v139;
          if (v152)
          {
            v153 = v152 < 0;
          }
        }

        while (v153);
      }

      v6 = a2;
      v7 = a2 - 344;
      a3 = v342;
      if (v8 - 344 != v347)
      {
        sirinluinternal::MatchingSpan::operator=();
        *(v347 + 88) = *(v8 - 256);
        std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v347 + 96, v8 - 248);
        v154 = *(v347 + 320);
        if (v154)
        {
          *(v347 + 328) = v154;
          operator delete(v154);
          *v28 = 0;
          v28[1] = 0;
          v28[2] = 0;
        }

        v155 = (v8 - 24);
        *v28 = *(v8 - 24);
        *v29 = *(v8 - 8);
        *v155 = 0;
        v155[1] = 0;
        v155[2] = 0;
      }

      sirinluinternal::MatchingSpan::operator=();
      *(v8 - 256) = v375;
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v8 - 248, &v376);
      v156 = *(v8 - 24);
      if (v156)
      {
        *(v8 - 16) = v156;
        operator delete(v156);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      *(v8 - 24) = v394[0];
      *(v8 - 8) = *&v394[1];
      memset(v394, 0, 24);
      if (v393 == 1)
      {
        v351[0] = &v391;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v351);
        if (SHIBYTE(v390) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v387) < 0)
        {
          operator delete(v386);
        }

        v351[0] = &v384;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v351);
        if (SHIBYTE(v382) < 0)
        {
          operator delete(v381);
        }

        if (SHIBYTE(v380) < 0)
        {
          operator delete(v379);
        }

        if (SHIBYTE(v378) < 0)
        {
          operator delete(v377);
        }
      }

      result = MEMORY[0x223DC1950](v374);
      a4 = 0;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (v8 == v6)
    {
      return result;
    }

    v309 = v8 + 344;
    if (v8 + 344 == a2)
    {
      return result;
    }

    for (j = (v8 + 680); ; j += 43)
    {
      v311 = v9;
      v9 = v309;
      v312 = a2;
      if (*(v311 + 656) == 1)
      {
        if (*(v311 + 312) != 1)
        {
          goto LABEL_824;
        }

        v313 = v309;
        v314 = *(v311 + 519);
        if (v314 >= 0)
        {
          v315 = *(v311 + 519);
        }

        else
        {
          v315 = *(v311 + 504);
        }

        v316 = *(v311 + 175);
        if (v316 >= 0)
        {
          v317 = *(v311 + 175);
        }

        else
        {
          v317 = *(v311 + 160);
        }

        if (v315 != v317)
        {
          if (v316 >= 0)
          {
            v319 = (v311 + 152);
          }

          else
          {
            v319 = *(v311 + 152);
          }

          if (v314 >= 0)
          {
            v318 = (v311 + 496);
          }

          else
          {
            v318 = *(v311 + 496);
          }

LABEL_818:
          if (v315 >= v317)
          {
            v320 = v317;
          }

          else
          {
            v320 = v315;
          }

          result = memcmp(v319, v318, v320);
          v321 = v317 < v315;
          if (result)
          {
            v321 = result < 0;
          }

          v9 = v313;
          if (!v321)
          {
            goto LABEL_874;
          }

LABEL_824:
          v322 = (v311 + 552);
          MEMORY[0x223DC1920](v374, v9);
          v375 = *(v311 + 432);
          LOBYTE(v376) = 0;
          v393 = 0;
          if (*(v311 + 656) == 1)
          {
            v376 = *(v311 + 440);
            v377 = *(v311 + 448);
            v378 = *(v311 + 464);
            *(v311 + 456) = 0u;
            *(v311 + 448) = 0;
            v380 = *(v311 + 488);
            v379 = *(v311 + 472);
            *(v311 + 472) = 0;
            v323 = *(v311 + 496);
            v382 = *(v311 + 512);
            v381 = v323;
            *(v311 + 512) = 0;
            *(v311 + 480) = 0u;
            *(v311 + 496) = 0u;
            v324 = *(v311 + 520);
            *(v383 + 12) = *(v311 + 532);
            v383[0] = v324;
            v384 = *v322;
            v385 = *(v311 + 568);
            *v322 = 0u;
            *(v311 + 568) = 0;
            v387 = *(v311 + 592);
            v386 = *(v311 + 576);
            *(v311 + 592) = 0;
            *(v311 + 576) = 0u;
            v388 = *(v311 + 600);
            __p = *(v311 + 608);
            v390 = *(v311 + 624);
            *(v311 + 624) = 0;
            *(v311 + 608) = 0u;
            v391 = *(v311 + 632);
            v392 = *(v311 + 648);
            *(v311 + 632) = 0;
            *(v311 + 640) = 0;
            *(v311 + 648) = 0;
            v393 = 1;
          }

          v394[0] = *(v311 + 664);
          *&v394[1] = *(v311 + 680);
          *(v311 + 664) = 0;
          *(v311 + 672) = 0;
          *(v311 + 680) = 0;
          v325 = j;
          while (2)
          {
            sirinluinternal::MatchingSpan::operator=();
            *(v325 - 62) = *(v325 - 148);
            std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((v325 - 30), (v325 - 73));
            v326 = *(v325 - 2);
            if (v326)
            {
              *(v325 - 1) = v326;
              operator delete(v326);
              *v325 = 0;
            }

            v327 = (v325 - 45);
            *(v325 - 1) = *(v325 - 45);
            *v325 = *(v325 - 43);
            *v327 = 0;
            v327[1] = 0;
            v327[2] = 0;
            if (v393 != 1)
            {
LABEL_860:
              sirinluinternal::MatchingSpan::operator=();
              *(v325 - 148) = v375;
              std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>((v325 - 73), &v376);
              v337 = *v327;
              if (*v327)
              {
                *(v325 - 44) = v337;
                operator delete(v337);
                *v327 = 0;
                *(v325 - 44) = 0;
                *(v325 - 43) = 0;
              }

              *v327 = v394[0];
              *(v325 - 43) = *&v394[1];
              memset(v394, 0, 24);
              v312 = a2;
              if (v393 == 1)
              {
                v351[0] = &v391;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v351);
                if (SHIBYTE(v390) < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v387) < 0)
                {
                  operator delete(v386);
                }

                v351[0] = &v384;
                std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v351);
                if (SHIBYTE(v382) < 0)
                {
                  operator delete(v381);
                }

                if (SHIBYTE(v380) < 0)
                {
                  operator delete(v379);
                }

                if (SHIBYTE(v378) < 0)
                {
                  operator delete(v377);
                }
              }

              result = MEMORY[0x223DC1950](v374);
              goto LABEL_874;
            }

            if (*(v325 - 712) == 1)
            {
              v328 = (v325 - 109);
              if (v382 >= 0)
              {
                v329 = HIBYTE(v382);
              }

              else
              {
                v329 = *(&v381 + 1);
              }

              v330 = *(v325 - 849);
              if (v330 >= 0)
              {
                v331 = *(v325 - 849);
              }

              else
              {
                v331 = *(v325 - 108);
              }

              if (v329 == v331)
              {
                if (v382 >= 0)
                {
                  v332 = &v381;
                }

                else
                {
                  v332 = v381;
                }

                if (v330 >= 0)
                {
                  v333 = v325 - 109;
                }

                else
                {
                  v333 = *v328;
                }

                if (!memcmp(v332, v333, v329))
                {
                  if (v375 <= *(v325 - 234))
                  {
                    goto LABEL_860;
                  }

                  goto LABEL_859;
                }
              }

              else
              {
                if (v330 >= 0)
                {
                  v333 = v325 - 109;
                }

                else
                {
                  v333 = *v328;
                }

                if (v382 >= 0)
                {
                  v332 = &v381;
                }

                else
                {
                  v332 = v381;
                }
              }

              if (v329 >= v331)
              {
                v334 = v331;
              }

              else
              {
                v334 = v329;
              }

              v335 = memcmp(v333, v332, v334);
              v336 = v331 < v329;
              if (v335)
              {
                v336 = v335 < 0;
              }

              if (!v336)
              {
                goto LABEL_860;
              }
            }

LABEL_859:
            v325 -= 43;
            continue;
          }
        }

        if (v314 >= 0)
        {
          v318 = (v311 + 496);
        }

        else
        {
          v318 = *(v311 + 496);
        }

        if (v316 >= 0)
        {
          v319 = (v311 + 152);
        }

        else
        {
          v319 = *(v311 + 152);
        }

        result = memcmp(v318, v319, v315);
        if (result)
        {
          goto LABEL_818;
        }

        v9 = v313;
        if (*(v311 + 432) > *(v311 + 88))
        {
          goto LABEL_824;
        }
      }

LABEL_874:
      v309 = v9 + 344;
      if (v9 + 344 == v312)
      {
        return result;
      }
    }
  }

  if (v8 == v6)
  {
    return result;
  }

  v163 = v8 + 344;
  if (v8 + 344 == a2)
  {
    return result;
  }

  v164 = 0;
  v165 = v9;
  while (2)
  {
    v166 = v165;
    v165 = v163;
    if (*(v166 + 656) != 1)
    {
      goto LABEL_498;
    }

    if (*(v166 + 312) == 1)
    {
      v167 = *(v166 + 519);
      if (v167 >= 0)
      {
        v168 = *(v166 + 519);
      }

      else
      {
        v168 = *(v166 + 504);
      }

      v169 = *(v166 + 175);
      if (v169 >= 0)
      {
        v170 = *(v166 + 175);
      }

      else
      {
        v170 = *(v166 + 160);
      }

      if (v168 == v170)
      {
        if (v167 >= 0)
        {
          v171 = (v166 + 496);
        }

        else
        {
          v171 = *(v166 + 496);
        }

        if (v169 >= 0)
        {
          v172 = (v166 + 152);
        }

        else
        {
          v172 = *(v166 + 152);
        }

        result = memcmp(v171, v172, v168);
        if (!result)
        {
          if (*(v166 + 432) <= *(v166 + 88))
          {
            goto LABEL_498;
          }

          goto LABEL_445;
        }
      }

      else
      {
        if (v169 >= 0)
        {
          v172 = (v166 + 152);
        }

        else
        {
          v172 = *(v166 + 152);
        }

        if (v167 >= 0)
        {
          v171 = (v166 + 496);
        }

        else
        {
          v171 = *(v166 + 496);
        }
      }

      if (v168 >= v170)
      {
        v173 = v170;
      }

      else
      {
        v173 = v168;
      }

      result = memcmp(v172, v171, v173);
      v174 = v170 < v168;
      if (result)
      {
        v174 = result < 0;
      }

      if (!v174)
      {
        goto LABEL_498;
      }
    }

LABEL_445:
    v175 = (v166 + 552);
    MEMORY[0x223DC1920](v374, v165);
    v375 = *(v166 + 432);
    LOBYTE(v376) = 0;
    v393 = 0;
    if (*(v166 + 656) == 1)
    {
      v376 = *(v166 + 440);
      v377 = *(v166 + 448);
      v378 = *(v166 + 464);
      *(v166 + 456) = 0u;
      *(v166 + 448) = 0;
      v380 = *(v166 + 488);
      v379 = *(v166 + 472);
      *(v166 + 472) = 0;
      v176 = *(v166 + 496);
      v382 = *(v166 + 512);
      v381 = v176;
      *(v166 + 512) = 0;
      *(v166 + 480) = 0u;
      *(v166 + 496) = 0u;
      v177 = *(v166 + 520);
      *(v383 + 12) = *(v166 + 532);
      v383[0] = v177;
      v384 = *v175;
      v385 = *(v166 + 568);
      *v175 = 0u;
      *(v166 + 568) = 0;
      v387 = *(v166 + 592);
      v386 = *(v166 + 576);
      *(v166 + 592) = 0;
      *(v166 + 576) = 0u;
      v388 = *(v166 + 600);
      __p = *(v166 + 608);
      v390 = *(v166 + 624);
      *(v166 + 624) = 0;
      *(v166 + 608) = 0u;
      v391 = *(v166 + 632);
      v392 = *(v166 + 648);
      *(v166 + 632) = 0;
      *(v166 + 640) = 0;
      *(v166 + 648) = 0;
      v393 = 1;
    }

    v394[0] = *(v166 + 664);
    *&v394[1] = *(v166 + 680);
    *(v166 + 664) = 0;
    *(v166 + 672) = 0;
    *(v166 + 680) = 0;
    v178 = v164;
    while (2)
    {
      v179 = v347 + v178;
      sirinluinternal::MatchingSpan::operator=();
      *(v179 + 432) = *(v179 + 88);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v179 + 440, v179 + 96);
      v180 = *(v347 + v178 + 664);
      if (v180)
      {
        *(v179 + 672) = v180;
        operator delete(v180);
        *(v179 + 680) = 0;
      }

      *(v179 + 664) = *(v179 + 320);
      *(v179 + 680) = *(v179 + 336);
      *(v179 + 320) = 0;
      *(v179 + 328) = 0;
      *(v179 + 336) = 0;
      if (v178)
      {
        if (v393 != 1)
        {
          goto LABEL_482;
        }

        v181 = v347 + v178;
        if (*(v347 + v178 - 32) == 1)
        {
          v184 = *(v181 - 192);
          v182 = v181 - 192;
          v183 = v184;
          if (v382 >= 0)
          {
            v185 = HIBYTE(v382);
          }

          else
          {
            v185 = *(&v381 + 1);
          }

          v186 = *(v182 + 23);
          if (v186 >= 0)
          {
            v187 = *(v182 + 23);
          }

          else
          {
            v187 = *(v182 + 8);
          }

          if (v185 == v187)
          {
            if (v382 >= 0)
            {
              v188 = &v381;
            }

            else
            {
              v188 = v381;
            }

            if (v186 >= 0)
            {
              v189 = v182;
            }

            else
            {
              v189 = v183;
            }

            if (!memcmp(v188, v189, v185))
            {
              if (v375 <= *(v347 + v178 - 256))
              {
                goto LABEL_482;
              }

              goto LABEL_481;
            }
          }

          else
          {
            if (v186 >= 0)
            {
              v189 = v182;
            }

            else
            {
              v189 = v183;
            }

            if (v382 >= 0)
            {
              v188 = &v381;
            }

            else
            {
              v188 = v381;
            }
          }

          if (v185 >= v187)
          {
            v190 = v187;
          }

          else
          {
            v190 = v185;
          }

          v191 = memcmp(v189, v188, v190);
          v192 = v187 < v185;
          if (v191)
          {
            v192 = v191 < 0;
          }

          if (!v192)
          {
LABEL_482:
            v193 = v347 + v178;
            v194 = v347 + v178 + 320;
            v195 = v347 + v178 + 96;
            goto LABEL_484;
          }
        }

LABEL_481:
        v178 -= 344;
        continue;
      }

      break;
    }

    v193 = v347;
    v194 = v347 + 320;
    v195 = v347 + 96;
LABEL_484:
    sirinluinternal::MatchingSpan::operator=();
    *(v193 + 88) = v375;
    std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v195, &v376);
    v196 = *v194;
    if (*v194)
    {
      *(v193 + 328) = v196;
      operator delete(v196);
      *v194 = 0;
      *(v194 + 8) = 0;
      *(v194 + 16) = 0;
    }

    *v194 = *&v394[0];
    *(v193 + 328) = *(v394 + 8);
    memset(v394, 0, 24);
    if (v393 == 1)
    {
      v351[0] = &v391;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v351);
      if (SHIBYTE(v390) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v387) < 0)
      {
        operator delete(v386);
      }

      v351[0] = &v384;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v351);
      if (SHIBYTE(v382) < 0)
      {
        operator delete(v381);
      }

      if (SHIBYTE(v380) < 0)
      {
        operator delete(v379);
      }

      if (SHIBYTE(v378) < 0)
      {
        operator delete(v377);
      }
    }

    result = MEMORY[0x223DC1950](v374);
LABEL_498:
    v163 = v165 + 344;
    v164 += 344;
    if (v165 + 344 != a2)
    {
      continue;
    }

    return result;
  }
}