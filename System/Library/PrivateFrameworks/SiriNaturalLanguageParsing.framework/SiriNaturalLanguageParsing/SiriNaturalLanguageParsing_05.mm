void sub_2228A6200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, char *a51)
{
  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  a51 = (a11 + 48);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a51);
  v52 = *(a11 + 24);
  if (v52)
  {
    *(a11 + 32) = v52;
    operator delete(v52);
  }

  v53 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v53;
    operator delete(v53);
  }

  a51 = &a34;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a51);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

const void *nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "tokenText argument is empty");
    goto LABEL_11;
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 144), a2);
  if (!v4)
  {
    if (*(a1 + 104))
    {
      v5 = (a1 + 96);
      return *v5;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Encountered unknown token text and the vocabulary hasno special unknown token");
LABEL_11:
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  v5 = v4 + 5;
  return *v5;
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2228A66F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getExpandedSpanLabels(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int *a4@<X3>, std::string **a5@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (*(v7 + 48))
  {
    nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::convertMatcherNamesToLabelComponents(a1, (v7 + 8), a4, &v46);
    v10 = v49;
    if (v49 >= v50)
    {
      v15 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v48, a2);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v49, *a2, *(a2 + 8));
      }

      else
      {
        v11 = *a2;
        v49->__r_.__value_.__r.__words[2] = *(a2 + 16);
        *&v10->__r_.__value_.__l.__data_ = v11;
      }

      v15 = v10 + 1;
    }

    v49 = v15;
    v16 = v46;
    v17 = v47;
    if (v46 != v47)
    {
      v42 = a5;
      do
      {
        nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getProcessedSpanLabel(*(v7 + 48), a2, v16 + 8, a3, a4, &__p);
        v18 = v49;
        if (v49 >= v50)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v50 - v48) >> 3) > v21)
          {
            v21 = 0x5555555555555556 * ((v50 - v48) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v50 - v48) >> 3) >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          v51.__end_cap_.__value_ = &v48;
          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v48, v22);
          }

          v23 = 8 * ((v49 - v48) >> 3);
          v24 = *&__p.__r_.__value_.__l.__data_;
          *(v23 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v23 = v24;
          memset(&__p, 0, sizeof(__p));
          v25 = (24 * v20 + 24);
          v26 = (24 * v20 - (v49 - v48));
          memcpy((v23 - (v49 - v48)), v48, v49 - v48);
          v27 = v48;
          v28 = v50;
          v48 = v26;
          v49 = v25;
          v50 = 0;
          v51.__first_ = v27;
          v51.__end_ = v27;
          v51.__end_cap_.__value_ = v28;
          v51.__begin_ = v27;
          std::__split_buffer<std::string>::~__split_buffer(&v51);
          v49 = v25;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v19 = *&__p.__r_.__value_.__l.__data_;
          v49->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
          *&v18->__r_.__value_.__l.__data_ = v19;
          v49 = v18 + 1;
        }

        v29 = *(v7 + 56);
        if (v29)
        {
          if (*(v29 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v29, *(v29 + 1));
          }

          else
          {
            v30 = *v29;
            __p.__r_.__value_.__r.__words[2] = *(v29 + 2);
            *&__p.__r_.__value_.__l.__data_ = v30;
          }

          v44 = 1;
          nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::makeVocabLabel(a2, v16 + 8, &__p, &v45);
          v31 = v49;
          if (v49 >= v50)
          {
            v33 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3);
            v34 = v33 + 1;
            if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v50 - v48) >> 3) > v34)
            {
              v34 = 0x5555555555555556 * ((v50 - v48) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v50 - v48) >> 3) >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v34;
            }

            v51.__end_cap_.__value_ = &v48;
            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v48, v35);
            }

            v36 = (8 * ((v49 - v48) >> 3));
            *v36 = v45;
            v32 = (24 * v33 + 24);
            v37 = (24 * v33 - (v49 - v48));
            memcpy(v36 - (v49 - v48), v48, v49 - v48);
            v38 = v48;
            v39 = v50;
            v48 = v37;
            v49 = v32;
            v50 = 0;
            v51.__first_ = v38;
            v51.__end_ = v38;
            v51.__end_cap_.__value_ = v39;
            v51.__begin_ = v38;
            std::__split_buffer<std::string>::~__split_buffer(&v51);
          }

          else
          {
            *&v49->__r_.__value_.__l.__data_ = *&v45.__r_.__value_.__l.__data_;
            v31->__r_.__value_.__r.__words[2] = v45.__r_.__value_.__r.__words[2];
            v32 = v31 + 1;
          }

          v49 = v32;
          if ((v44 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v16 += 32;
      }

      while (v16 != v17);
      v15 = v49;
      a5 = v42;
    }

    v40 = v50;
    *a5 = v48;
    a5[1] = v15;
    a5[2] = v40;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    v51.__first_ = &v46;
    std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&v51);
  }

  else
  {
    v12 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a4;
      if (v13 >= 8)
      {
        v41 = SNLPOSLoggerForCategory(4);
        v14 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v51.__first_) = 136315394;
          *(&v51.__first_ + 4) = "<UNDEFINED_COMPONENT>";
          WORD2(v51.__begin_) = 2048;
          *(&v51.__begin_ + 6) = v13;
          _os_log_impl(&dword_22284A000, v41, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v51, 0x16u);
        }
      }

      else
      {
        v14 = off_2784B6F30[v13];
      }

      LODWORD(v51.__first_) = 136315138;
      *(&v51.__first_ + 4) = v14;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] Warning: encountered span missing label", &v51, 0xCu);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  v51.__first_ = &v48;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v51);
}

void sub_2228A6BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  a11 = &a25;
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a11 = &a28;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::span_matching::SpanTruncator::truncate(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3 < ((a2[1] - *a2) >> 5))
  {
    v5 = result;
    v6 = *(result + 40);
    if (v6 > 6)
    {
      v7 = 4;
    }

    else
    {
      v7 = dword_2229DA4F4[v6];
    }

    v8 = SNLPOSLoggerForCategory(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      return nlv4_inference_orchestrator::span_matching::SpanTruncator::truncateSpans(v5, a2, a3);
    }

    v9 = *(v5 + 40);
    if (v9 > 3)
    {
      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v10 = "PSC";
LABEL_26:
          v11 = "[insights-snlp-psc]: ";
          goto LABEL_31;
        }

        v10 = "LVC";
        goto LABEL_15;
      }

      if (v9 == 6)
      {
        v10 = "SSU";
        goto LABEL_30;
      }

      if (v9 == 7)
      {
        v10 = "UNKNOWN";
        goto LABEL_22;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          v10 = "UaaP";
          goto LABEL_18;
        }

        v10 = "OWL";
        goto LABEL_28;
      }

      if (!v9)
      {
        v11 = "[insights-snlp-nlv4]: ";
        v10 = "NLv4";
        goto LABEL_31;
      }

      if (v9 == 1)
      {
        v10 = "SNLC";
LABEL_11:
        v11 = "[insights-snlp-snlc]: ";
LABEL_31:
        v13 = (a2[1] - *a2) >> 5;
        v15 = 136315906;
        v16 = v10;
        v17 = 2080;
        v18 = v11;
        v19 = 2048;
        v20 = v13;
        v21 = 1024;
        v22 = a3;
        _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] %sThe model has received %lu spans. Truncating this list of spans to %u spans.", &v15, 0x26u);
        return nlv4_inference_orchestrator::span_matching::SpanTruncator::truncateSpans(v5, a2, a3);
      }
    }

    v14 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "<UNDEFINED_COMPONENT>";
      v17 = 2048;
      v18 = v9;
      _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v15, 0x16u);
    }

    v9 = *(v5 + 40);
    v10 = "<UNDEFINED_COMPONENT>";
    if (v9 > 2)
    {
      if (v9 <= 4)
      {
        if (v9 != 3)
        {
          goto LABEL_26;
        }

LABEL_18:
        v11 = "[insights-snlp-uaap]: ";
        goto LABEL_31;
      }

      if (v9 != 5)
      {
        if (v9 != 6)
        {
          goto LABEL_22;
        }

LABEL_30:
        v11 = "[insights-snlp-ssu]: ";
        goto LABEL_31;
      }

LABEL_15:
      v11 = "[insights-snlp-lvc]: ";
      goto LABEL_31;
    }

    if (!v9)
    {
      v11 = "[insights-snlp-nlv4]: ";
      goto LABEL_31;
    }

    if (v9 == 1)
    {
      goto LABEL_11;
    }

    if (v9 != 2)
    {
LABEL_22:
      v12 = SNLPOSLoggerForCategory(4);
      v11 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v15, 0x16u);
      }

      goto LABEL_31;
    }

LABEL_28:
    v11 = "[insights-snlp-owl]: ";
    goto LABEL_31;
  }

  return result;
}

void itfm_inference_orchestrator::context::ContextFeaturizer::featurize(uint64_t a1, uint64_t a2, uint64_t a3, sirinluexternal::LegacyNLContext *a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabels(&v31, a1, a4, a3);
  v6 = 0uLL;
  memset(&v30, 0, sizeof(v30));
  v7 = v32;
  if (v32)
  {
    do
    {
      std::vector<std::string>::push_back[abi:ne200100](&v30, v7 + 1);
      v7 = *v7;
    }

    while (v7);
    v6 = *&v30.__begin_;
  }

  v8 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v6 + 1) - v6) >> 3));
  if (*(&v6 + 1) == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v6, *(&v6 + 1), v9, 1);
  v10 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v30.__end_ - v30.__begin_) >> 3) > v10)
  {
    v11 = &v30.__begin_[v10];
    memset(&v35, 0, sizeof(v35));
    *buf = &v35;
    buf[8] = 0;
    if (v11 != v30.__end_)
    {
      std::vector<std::string>::__vallocate[abi:ne200100](&v35, 0xAAAAAAAAAAAAAAABLL * ((v30.__end_ - v11) >> 3));
    }

    itfm_inference_orchestrator::inference_engine::vectorToString<std::string>(__p, &v30);
    v12 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 56);
      if (v13 >= 8)
      {
        v15 = SNLPOSLoggerForCategory(4);
        v14 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          *&buf[12] = 2048;
          *&buf[14] = v13;
          _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v14 = off_2784B6F30[v13];
      }

      v16 = *(a1 + 8);
      v17 = __p;
      if (v34 < 0)
      {
        v17 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v30.__end_ - v30.__begin_) >> 3);
      v37 = 2048;
      v38 = v16;
      v39 = 2080;
      v40 = v17;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEFAULT, "[%s] Number of context features (%lu) exceeds maximum limit (%lu): truncating by removing features %s", buf, 0x2Au);
    }

    std::vector<std::string>::resize(&v30, *(a1 + 8));
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    *buf = &v35;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  itfm_inference_orchestrator::inference_engine::vectorToString<std::string>(v28, &v30);
  v19 = (a1 + 56);
  v18 = *(a1 + 56);
  if (v18 > 6)
  {
    v20 = 4;
  }

  else
  {
    v20 = dword_2229DA4F4[v18];
  }

  v21 = SNLPOSLoggerForCategory(v20);
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
LABEL_55:
    itfm_inference_orchestrator::context::Embedder::embed(a1 + 32, &v30);
  }

  v22 = *v19;
  if (*v19 > 3)
  {
    if (v22 > 5)
    {
      if (v22 == 6)
      {
        v23 = "SSU";
        goto LABEL_51;
      }

      if (v22 == 7)
      {
        v23 = "UNKNOWN";
        goto LABEL_43;
      }
    }

    else
    {
      if (v22 == 4)
      {
        v23 = "PSC";
        goto LABEL_47;
      }

      if (v22 == 5)
      {
        v23 = "LVC";
        goto LABEL_35;
      }
    }
  }

  else if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = "OWL";
      goto LABEL_49;
    }

    if (v22 == 3)
    {
      v23 = "UaaP";
      goto LABEL_39;
    }
  }

  else
  {
    if (!v22)
    {
      v24 = "[insights-snlp-nlv4]: ";
      v23 = "NLv4";
      goto LABEL_52;
    }

    if (v22 == 1)
    {
      v23 = "SNLC";
LABEL_30:
      v24 = "[insights-snlp-snlc]: ";
LABEL_52:
      v26 = v28;
      if (v29 < 0)
      {
        v26 = v28[0];
      }

      *buf = 136315650;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = v24;
      v37 = 2080;
      v38 = v26;
      _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, "[%s] %sITFM context: %s", buf, 0x20u);
      goto LABEL_55;
    }
  }

  v27 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "<UNDEFINED_COMPONENT>";
    *&buf[12] = 2048;
    *&buf[14] = v22;
    _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
  }

  v22 = *v19;
  v23 = "<UNDEFINED_COMPONENT>";
  if (*v19 > 2)
  {
    if (v22 <= 4)
    {
      if (v22 != 3)
      {
        if (v22 != 4)
        {
          goto LABEL_43;
        }

LABEL_47:
        v24 = "[insights-snlp-psc]: ";
        goto LABEL_52;
      }

LABEL_39:
      v24 = "[insights-snlp-uaap]: ";
      goto LABEL_52;
    }

    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_43;
      }

LABEL_51:
      v24 = "[insights-snlp-ssu]: ";
      goto LABEL_52;
    }

LABEL_35:
    v24 = "[insights-snlp-lvc]: ";
    goto LABEL_52;
  }

  if (!v22)
  {
    v24 = "[insights-snlp-nlv4]: ";
    goto LABEL_52;
  }

  if (v22 == 1)
  {
    goto LABEL_30;
  }

  if (v22 != 2)
  {
LABEL_43:
    v25 = SNLPOSLoggerForCategory(4);
    v24 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      *&buf[12] = 2048;
      *&buf[14] = v22;
      _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }

    goto LABEL_52;
  }

LABEL_49:
  v24 = "[insights-snlp-owl]: ";
  goto LABEL_52;
}

void sub_2228A7BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a58);
  __p = &a20;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabels(uint64_t *__return_ptr a1@<X8>, itfm_inference_orchestrator::context::ContextFeaturizer *this@<X0>, sirinluexternal::LegacyNLContext *a3@<X2>, uint64_t a4@<X1>)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a3 + 80) == 1 && *this <= 1u)
  {
    v9 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(this + 14);
      if (v10 >= 8)
      {
        v12 = SNLPOSLoggerForCategory(4);
        v11 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v11 = off_2784B6F30[v10];
      }

      v13 = *this;
      *buf = 136315394;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *&buf[14] = v13;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "[%s] Warning: Legacy NL context features were supplied, but the asset directory major version (%u) does not support these. These will not be featurized.", buf, 0x12u);
    }
  }

  memset(buf, 0, sizeof(buf));
  v52 = 1065353216;
  if (*(a3 + 80) == 1)
  {
    itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabelsFromLegacyNlContext(__p, this, a3);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(buf, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v50[2]);
    v14 = *__p;
    *__p = 0;
    if (v14)
    {
      operator delete(v14);
    }

    if ((*(a3 + 80) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v15 = *(a3 + 16) != 2;
    v16 = *&buf[24] == 0;
  }

  else
  {
    v16 = 1;
    v15 = 1;
  }

  if (*(a4 + 112) == 1)
  {
    v17 = *(a4 + 8) != *(a4 + 16);
    v18 = *(a4 + 32) != *(a4 + 40);
    if (*(a4 + 88) != *(a4 + 96))
    {
      *a1 = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 8) = 1065353216;
LABEL_27:
      v23 = SNLPOSLoggerForCategory(2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(this + 14);
        if (v24 >= 8)
        {
          v28 = SNLPOSLoggerForCategory(4);
          v25 = "<UNDEFINED_COMPONENT>";
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "<UNDEFINED_COMPONENT>";
            v49 = 2048;
            *v50 = v24;
            _os_log_impl(&dword_22284A000, v28, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
          }
        }

        else
        {
          v25 = off_2784B6F30[v24];
        }

        *__p = 136315138;
        *&__p[4] = v25;
        _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_DEBUG, "[%s] Using context featurization labels extracted from the NL Context", __p, 0xCu);
      }

      if ((*(a4 + 112) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      itfm_inference_orchestrator::context::ContextFeaturizer::extractContextLabelsFromNLContext(__p, this, a4);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a1, __p);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v50[2]);
      v29 = *__p;
      *__p = 0;
      if (v29)
      {
        operator delete(v29);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 73, this + 584);
      if (*(a3 + 80) == 1)
      {
        v30 = SNLPOSLoggerForCategory(2);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(this + 14);
          if (v31 >= 8)
          {
            v33 = SNLPOSLoggerForCategory(4);
            v32 = "<UNDEFINED_COMPONENT>";
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "<UNDEFINED_COMPONENT>";
              v49 = 2048;
              *v50 = v31;
              _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
            }
          }

          else
          {
            v32 = off_2784B6F30[v31];
          }

          *__p = 136315138;
          *&__p[4] = v32;
          _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_DEBUG, "[%s] Warning: The request's nlContext contains a SDA. Skipping featurization for the legacy context.", __p, 0xCu);
        }
      }

      goto LABEL_55;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (v18 || v15 && v17)
  {
    goto LABEL_27;
  }

  v19 = SNLPOSLoggerForCategory(2);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v20)
    {
      v21 = *(this + 14);
      if (v21 >= 8)
      {
        v34 = SNLPOSLoggerForCategory(4);
        v22 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "<UNDEFINED_COMPONENT>";
          v49 = 2048;
          *v50 = v21;
          _os_log_impl(&dword_22284A000, v34, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
        }
      }

      else
      {
        v22 = off_2784B6F30[v21];
      }

      *__p = 136315138;
      *&__p[4] = v22;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "[%s] Failed to extract any labels from NL Context or Legacy NL Context", __p, 0xCu);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 70, this + 560);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 73, this + 584);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 67, this + 536);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 64, this + 512);
  }

  else
  {
    if (v20)
    {
      v26 = *(this + 14);
      if (v26 >= 8)
      {
        v35 = SNLPOSLoggerForCategory(4);
        v27 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "<UNDEFINED_COMPONENT>";
          v49 = 2048;
          *v50 = v26;
          _os_log_impl(&dword_22284A000, v35, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
        }
      }

      else
      {
        v27 = off_2784B6F30[v26];
      }

      *__p = 136315138;
      *&__p[4] = v27;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "[%s] SDA not featurized; using featurized labels from Legacy NL Context instead", __p, 0xCu);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 70, this + 560);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 67, this + 536);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, this + 64, this + 512);
    v36 = *&buf[16];
    if (*&buf[16])
    {
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, v36 + 2, (v36 + 2));
        v36 = *v36;
      }

      while (v36);
    }
  }

LABEL_55:
  for (i = a1[2]; i; i = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(a1, i))
  {
    while (1)
    {
      v38 = i + 2;
      v39 = itfm_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(*(this + 2), (i + 2));
      TokenId = itfm_inference_orchestrator::vocabulary::Vocabulary::getTokenId(*(this + 2), *(this + 2));
      if ((v41 & 1) != 0 && v39 == TokenId)
      {
        break;
      }

      i = *i;
      if (!i)
      {
        goto LABEL_69;
      }
    }

    v42 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(this + 14);
      if (v43 >= 8)
      {
        v45 = SNLPOSLoggerForCategory(4);
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
        v44 = "<UNDEFINED_COMPONENT>";
        if (v46)
        {
          *__p = 136315394;
          *&__p[4] = "<UNDEFINED_COMPONENT>";
          v49 = 2048;
          *v50 = v43;
          _os_log_impl(&dword_22284A000, v45, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", __p, 0x16u);
          v44 = "<UNDEFINED_COMPONENT>";
        }
      }

      else
      {
        v44 = off_2784B6F30[v43];
      }

      if (*(i + 39) < 0)
      {
        v38 = *v38;
      }

      *__p = 136315394;
      *&__p[4] = v44;
      v49 = 2080;
      *v50 = v38;
      _os_log_impl(&dword_22284A000, v42, OS_LOG_TYPE_DEBUG, "[%s] Label '%s' not present in vocabulary. Skipping. (Is this label supported by the provided assets?)", __p, 0x16u);
    }
  }

LABEL_69:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&buf[16]);
  v47 = *buf;
  *buf = 0;
  if (v47)
  {
    operator delete(v47);
  }
}

void sub_2228A848C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t itfm_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "tokenText argument is empty");
    goto LABEL_10;
  }

  v4 = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 96, a2);
  if (a1 + 104 == v4)
  {
    v5 = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 96, a1);
    if (v4 != v5)
    {
      v4 = v5;
      return *(v4 + 56);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Encountered unknown token text and the vocabulary hasno special unknown token");
LABEL_10:
    __cxa_throw(exception, off_2784B6778, MEMORY[0x277D82610]);
  }

  return *(v4 + 56);
}

uint64_t std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t itfm_inference_orchestrator::vocabulary::Vocabulary::getTokenId(uint64_t a1, const void **a2)
{
  if (a1 + 104 == std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::find<std::string>(a1 + 96, a2))
  {
    return 0;
  }

  v4 = *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(a1 + 96, &v6, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return *(v4 + 56);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
  v198 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v8 = a2 - 24;
    v191 = a2 - 48;
    v9 = a2 - 72;
    v10 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = &a2[-v10];
          v12 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v10] >> 3);
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v127 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1);
                v128 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1 + 3);
                if (v127)
                {
                  if (v128)
                  {
                    goto LABEL_116;
                  }

                  v188 = *a1;
                  v195 = *(a1 + 2);
                  v194 = v188;
                  *a1 = *(a1 + 24);
                  *(a1 + 2) = *(a1 + 5);
                  *(a1 + 24) = v194;
                  *(a1 + 5) = v195;
                  if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1 + 3))
                  {
                    return;
                  }

                  v131 = *(a1 + 24);
                  v194 = v131;
                  v132 = *(a1 + 5);
                  v195 = v132;
                  v189 = *(a2 - 1);
                  *(a1 + 24) = *v8;
                  *(a1 + 5) = v189;
LABEL_117:
                  *(a2 - 1) = v132;
                  *v8 = v131;
                  return;
                }

                if (!v128)
                {
                  return;
                }

                v194 = *(a1 + 24);
                v178 = v194;
                v195 = *(a1 + 5);
                v179 = v195;
                v180 = *(a2 - 1);
                *(a1 + 24) = *v8;
                *(a1 + 5) = v180;
                *(a2 - 1) = v179;
                *v8 = v178;
LABEL_173:
                if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 3, a1))
                {
                  v181 = *a1;
                  v195 = *(a1 + 2);
                  v194 = v181;
                  *a1 = *(a1 + 24);
                  *(a1 + 2) = *(a1 + 5);
                  *(a1 + 24) = v194;
                  *(a1 + 5) = v195;
                }

                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
                return;
              case 5:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
                if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1 + 9))
                {
                  return;
                }

                v194 = *(a1 + 72);
                v119 = v194;
                v195 = *(a1 + 11);
                v120 = v195;
                v121 = *(a2 - 1);
                *(a1 + 72) = *v8;
                *(a1 + 11) = v121;
                *(a2 - 1) = v120;
                *v8 = v119;
                if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 9, a1 + 6))
                {
                  return;
                }

                v122 = *(a1 + 8);
                v123 = *(a1 + 3);
                *(a1 + 3) = *(a1 + 72);
                *(a1 + 8) = *(a1 + 11);
                *(a1 + 72) = v123;
                *(a1 + 11) = v122;
                if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 + 6, a1 + 3))
                {
                  return;
                }

                v124 = *(a1 + 5);
                v125 = *(a1 + 24);
                *(a1 + 24) = *(a1 + 3);
                *(a1 + 5) = *(a1 + 8);
                *(a1 + 3) = v125;
                *(a1 + 8) = v124;
                goto LABEL_173;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1))
              {
                return;
              }

LABEL_116:
              v129 = *a1;
              v195 = *(a1 + 2);
              v194 = v129;
              v130 = *v8;
              *(a1 + 2) = *(a2 - 1);
              *a1 = v130;
              v131 = v194;
              v132 = v195;
              goto LABEL_117;
            }
          }

          if (v11 <= 575)
          {
            v133 = a1 + 24;
            v135 = a1 == a2 || v133 == a2;
            if (a4)
            {
              if (!v135)
              {
                v136 = 0;
                v137 = a1;
                do
                {
                  v138 = v137;
                  v137 = v133;
                  if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v133, v138))
                  {
                    v139 = *v137;
                    v195 = *(v137 + 2);
                    v194 = v139;
                    *(v137 + 1) = 0;
                    *(v137 + 2) = 0;
                    *v137 = 0;
                    v140 = v136;
                    while (1)
                    {
                      v141 = &a1[v140];
                      *(v141 + 24) = *&a1[v140];
                      *(v141 + 5) = *&a1[v140 + 16];
                      v141[23] = 0;
                      *v141 = 0;
                      if (!v140)
                      {
                        break;
                      }

                      v140 -= 24;
                      if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v194, &a1[v140]))
                      {
                        v142 = &a1[v140 + 24];
                        goto LABEL_136;
                      }
                    }

                    v142 = a1;
LABEL_136:
                    v143 = v194;
                    *(v142 + 2) = v195;
                    *v142 = v143;
                  }

                  v133 = v137 + 24;
                  v136 += 24;
                }

                while (v137 + 24 != a2);
              }
            }

            else if (!v135)
            {
              do
              {
                v182 = a1;
                a1 = v133;
                if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v133, v182))
                {
                  v183 = *a1;
                  v195 = *(a1 + 2);
                  v194 = v183;
                  *(a1 + 1) = 0;
                  *(a1 + 2) = 0;
                  *a1 = 0;
                  v184 = a1;
                  do
                  {
                    v185 = v184 - 24;
                    *v184 = *(v184 - 24);
                    *(v184 + 2) = *(v184 - 1);
                    *(v184 - 1) = 0;
                    *(v184 - 24) = 0;
                    v186 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v194, v184 - 6);
                    v184 = v185;
                  }

                  while (v186);
                  v187 = v194;
                  *(v185 + 2) = v195;
                  *v185 = v187;
                }

                v133 = a1 + 24;
              }

              while (a1 + 24 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v192 = a2;
              v144 = v13 >> 1;
              v145 = v13 >> 1;
              do
              {
                v146 = v145;
                if (v144 >= v145)
                {
                  v147 = (2 * v145) | 1;
                  v148 = &a1[24 * v147];
                  if (2 * v145 + 2 < v12 && std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&a1[24 * v147], v148 + 3))
                  {
                    v148 += 24;
                    v147 = 2 * v146 + 2;
                  }

                  v149 = &a1[24 * v146];
                  if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v148, v149))
                  {
                    v150 = *v149;
                    v195 = *(v149 + 2);
                    v194 = v150;
                    *(v149 + 1) = 0;
                    *(v149 + 2) = 0;
                    *v149 = 0;
                    do
                    {
                      v151 = v148;
                      v152 = *v148;
                      *(v149 + 2) = *(v148 + 2);
                      *v149 = v152;
                      v148[23] = 0;
                      *v148 = 0;
                      if (v144 < v147)
                      {
                        break;
                      }

                      v153 = (2 * v147) | 1;
                      v148 = &a1[24 * v153];
                      v154 = 2 * v147 + 2;
                      if (v154 < v12 && std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&a1[24 * v153], v148 + 3))
                      {
                        v148 += 24;
                        v153 = v154;
                      }

                      v149 = v151;
                      v147 = v153;
                    }

                    while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v148, &v194));
                    v155 = v194;
                    *(v151 + 2) = v195;
                    *v151 = v155;
                  }
                }

                v145 = v146 - 1;
              }

              while (v146);
              v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              v157 = v192;
              do
              {
                v158 = 0;
                v159 = v157;
                v190 = *a1;
                *&v196 = *(a1 + 1);
                *(&v196 + 7) = *(a1 + 15);
                v193 = a1[23];
                *(a1 + 1) = 0;
                *(a1 + 2) = 0;
                *a1 = 0;
                v160 = a1;
                do
                {
                  v161 = &v160[24 * v158];
                  v162 = v161 + 24;
                  v163 = (2 * v158) | 1;
                  v164 = 2 * v158 + 2;
                  if (v164 < v156)
                  {
                    v165 = v161 + 48;
                    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v161 + 3, v161 + 6))
                    {
                      v162 = v165;
                      v163 = v164;
                    }
                  }

                  v166 = *v162;
                  *(v160 + 2) = *(v162 + 2);
                  *v160 = v166;
                  v162[23] = 0;
                  *v162 = 0;
                  v160 = v162;
                  v158 = v163;
                }

                while (v163 <= (v156 - 2) / 2);
                if (v162 == v159 - 24)
                {
                  v157 = v159 - 24;
                  *v162 = v190;
                  v176 = *(&v196 + 7);
                  *(v162 + 1) = v196;
                  *(v162 + 15) = v176;
                  v162[23] = v193;
                }

                else
                {
                  v167 = *(v159 - 24);
                  v157 = v159 - 24;
                  *(v162 + 2) = *(v159 - 1);
                  *v162 = v167;
                  *(v159 - 3) = v190;
                  v168 = v196;
                  *(v159 - 9) = *(&v196 + 7);
                  *(v159 - 2) = v168;
                  *(v159 - 1) = v193;
                  v169 = v162 - a1 + 24;
                  if (v169 >= 25)
                  {
                    v170 = (-2 - 0x5555555555555555 * (v169 >> 3)) >> 1;
                    v171 = &a1[24 * v170];
                    if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v171, v162))
                    {
                      v172 = *v162;
                      v195 = *(v162 + 2);
                      v194 = v172;
                      *(v162 + 1) = 0;
                      *(v162 + 2) = 0;
                      *v162 = 0;
                      do
                      {
                        v173 = v171;
                        v174 = *v171;
                        *(v162 + 2) = *(v171 + 2);
                        *v162 = v174;
                        v171[23] = 0;
                        *v171 = 0;
                        if (!v170)
                        {
                          break;
                        }

                        v170 = (v170 - 1) >> 1;
                        v171 = &a1[24 * v170];
                        v162 = v173;
                      }

                      while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v171, &v194));
                      v175 = v194;
                      *(v173 + 2) = v195;
                      *v173 = v175;
                    }
                  }
                }
              }

              while (v156-- > 2);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = &a1[24 * (v12 >> 1)];
          if (v11 >= 0xC01)
          {
            v16 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, a1);
            v17 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, v15);
            if (v16)
            {
              if (v17)
              {
                v18 = *a1;
                v195 = *(a1 + 2);
                v194 = v18;
                v19 = *v8;
                *(a1 + 2) = *(a2 - 1);
                *a1 = v19;
              }

              else
              {
                v36 = *a1;
                v195 = *(a1 + 2);
                v194 = v36;
                v37 = *v15;
                *(a1 + 2) = *(v15 + 2);
                *a1 = v37;
                v38 = v194;
                *(v15 + 2) = v195;
                *v15 = v38;
                if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, v15))
                {
                  goto LABEL_28;
                }

                v39 = *v15;
                v195 = *(v15 + 2);
                v194 = v39;
                v40 = *v8;
                *(v15 + 2) = *(a2 - 1);
                *v15 = v40;
              }

              v41 = v194;
              *(a2 - 1) = v195;
              *v8 = v41;
            }

            else if (v17)
            {
              v24 = *v15;
              v195 = *(v15 + 2);
              v194 = v24;
              v25 = *v8;
              *(v15 + 2) = *(a2 - 1);
              *v15 = v25;
              v26 = v194;
              *(a2 - 1) = v195;
              *v8 = v26;
              if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, a1))
              {
                v27 = *a1;
                v195 = *(a1 + 2);
                v194 = v27;
                v28 = *v15;
                *(a1 + 2) = *(v15 + 2);
                *a1 = v28;
                v29 = v194;
                *(v15 + 2) = v195;
                *v15 = v29;
              }
            }

LABEL_28:
            v42 = &a1[24 * v14 - 24];
            v43 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v42, a1 + 3);
            v44 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v191, v42);
            if (v43)
            {
              if (v44)
              {
                v194 = *(a1 + 24);
                v45 = v194;
                v195 = *(a1 + 5);
                v46 = v195;
                v47 = *(a2 - 4);
                *(a1 + 24) = *v191;
                *(a1 + 5) = v47;
                *(a2 - 4) = v46;
                *v191 = v45;
              }

              else
              {
                v194 = *(a1 + 24);
                v60 = v194;
                v195 = *(a1 + 5);
                v61 = v195;
                v62 = *&a1[24 * v14 - 8];
                *(a1 + 24) = *v42;
                *(a1 + 5) = v62;
                *&a1[24 * v14 - 8] = v61;
                *v42 = v60;
                if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v191, v42))
                {
                  v63 = *v42;
                  v195 = *&a1[24 * v14 - 8];
                  v194 = v63;
                  v64 = *v191;
                  *&a1[24 * v14 - 8] = *(a2 - 4);
                  *v42 = v64;
                  v65 = v194;
                  *(a2 - 4) = v195;
                  *v191 = v65;
                }
              }
            }

            else if (v44)
            {
              v48 = *v42;
              v195 = *&a1[24 * v14 - 8];
              v194 = v48;
              v49 = *v191;
              *&a1[24 * v14 - 8] = *(a2 - 4);
              *v42 = v49;
              v50 = v194;
              *(a2 - 4) = v195;
              *v191 = v50;
              if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v42, a1 + 3))
              {
                v194 = *(a1 + 24);
                v51 = v194;
                v195 = *(a1 + 5);
                v52 = v195;
                v53 = *&a1[24 * v14 - 8];
                *(a1 + 24) = *v42;
                *(a1 + 5) = v53;
                *&a1[24 * v14 - 8] = v52;
                *v42 = v51;
              }
            }

            v66 = &a1[24 * v14];
            v67 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, a1 + 6);
            v68 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 9, v66 + 3);
            if (v67)
            {
              if (v68)
              {
                v69 = *(a1 + 3);
                v194 = v69;
                v70 = *(a1 + 8);
                v195 = v70;
                v71 = *(a2 - 7);
                *(a1 + 3) = *v9;
                *(a1 + 8) = v71;
              }

              else
              {
                v194 = *(a1 + 3);
                v78 = v194;
                v195 = *(a1 + 8);
                v79 = v195;
                v80 = *(v66 + 5);
                *(a1 + 3) = *(v66 + 24);
                *(a1 + 8) = v80;
                *(v66 + 5) = v79;
                *(v66 + 24) = v78;
                if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 9, v66 + 3))
                {
                  goto LABEL_48;
                }

                v81 = *(v66 + 24);
                v195 = *(v66 + 5);
                v194 = v81;
                v82 = *v9;
                *(v66 + 5) = *(a2 - 7);
                *(v66 + 24) = v82;
                v69 = v194;
                v70 = v195;
              }

              *(a2 - 7) = v70;
              *v9 = v69;
            }

            else if (v68)
            {
              v72 = *(v66 + 24);
              v195 = *(v66 + 5);
              v194 = v72;
              v73 = *v9;
              *(v66 + 5) = *(a2 - 7);
              *(v66 + 24) = v73;
              v74 = v194;
              *(a2 - 7) = v195;
              *v9 = v74;
              if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, a1 + 6))
              {
                v194 = *(a1 + 3);
                v75 = v194;
                v195 = *(a1 + 8);
                v76 = v195;
                v77 = *(v66 + 5);
                *(a1 + 3) = *(v66 + 24);
                *(a1 + 8) = v77;
                *(v66 + 5) = v76;
                *(v66 + 24) = v75;
              }
            }

LABEL_48:
            v83 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, v42);
            v84 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, v15);
            if (!v83)
            {
              if (v84)
              {
                v86 = *v15;
                v195 = *(v15 + 2);
                v194 = v86;
                *v15 = *(v66 + 24);
                *(v15 + 2) = *(v66 + 5);
                v87 = v194;
                *(v66 + 5) = v195;
                *(v66 + 24) = v87;
                if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v15, v42))
                {
                  v88 = *v42;
                  v195 = *(v42 + 2);
                  v194 = v88;
                  *v42 = *v15;
                  *(v42 + 2) = *(v15 + 2);
                  v89 = v194;
                  *(v15 + 2) = v195;
                  *v15 = v89;
                }
              }

              goto LABEL_57;
            }

            if (v84)
            {
              v85 = *v42;
              v195 = *(v42 + 2);
              v194 = v85;
              *v42 = *(v66 + 24);
              *(v42 + 2) = *(v66 + 5);
            }

            else
            {
              v90 = *v42;
              v195 = *(v42 + 2);
              v194 = v90;
              *v42 = *v15;
              *(v42 + 2) = *(v15 + 2);
              v91 = v194;
              *(v15 + 2) = v195;
              *v15 = v91;
              if (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v66 + 3, v15))
              {
LABEL_57:
                v94 = *a1;
                v195 = *(a1 + 2);
                v194 = v94;
                v95 = *v15;
                *(a1 + 2) = *(v15 + 2);
                *a1 = v95;
                v96 = v194;
                *(v15 + 2) = v195;
                *v15 = v96;
                goto LABEL_58;
              }

              v92 = *v15;
              v195 = *(v15 + 2);
              v194 = v92;
              *v15 = *(v66 + 24);
              *(v15 + 2) = *(v66 + 5);
            }

            v93 = v194;
            *(v66 + 5) = v195;
            *(v66 + 24) = v93;
            goto LABEL_57;
          }

          v20 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, v15);
          v21 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1);
          if (v20)
          {
            if (v21)
            {
              v22 = *v15;
              v195 = *(v15 + 2);
              v194 = v22;
              v23 = *v8;
              *(v15 + 2) = *(a2 - 1);
              *v15 = v23;
LABEL_36:
              v59 = v194;
              *(a2 - 1) = v195;
              *v8 = v59;
              goto LABEL_58;
            }

            v54 = *v15;
            v195 = *(v15 + 2);
            v194 = v54;
            v55 = *a1;
            *(v15 + 2) = *(a1 + 2);
            *v15 = v55;
            v56 = v194;
            *(a1 + 2) = v195;
            *a1 = v56;
            if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a2 - 3, a1))
            {
              v57 = *a1;
              v195 = *(a1 + 2);
              v194 = v57;
              v58 = *v8;
              *(a1 + 2) = *(a2 - 1);
              *a1 = v58;
              goto LABEL_36;
            }
          }

          else if (v21)
          {
            v30 = *a1;
            v195 = *(a1 + 2);
            v194 = v30;
            v31 = *v8;
            *(a1 + 2) = *(a2 - 1);
            *a1 = v31;
            v32 = v194;
            *(a2 - 1) = v195;
            *v8 = v32;
            if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1, v15))
            {
              v33 = *v15;
              v195 = *(v15 + 2);
              v194 = v33;
              v34 = *a1;
              *(v15 + 2) = *(a1 + 2);
              *v15 = v34;
              v35 = v194;
              *(a1 + 2) = v195;
              *a1 = v35;
            }
          }

LABEL_58:
          --a3;
          if ((a4 & 1) != 0 || std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](a1 - 3, a1))
          {
            break;
          }

          v109 = *a1;
          v197 = *(a1 + 2);
          v196 = v109;
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          if (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, a2 - 3))
          {
            v10 = a1;
            do
            {
              v10 += 24;
            }

            while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, v10));
          }

          else
          {
            v110 = a1 + 24;
            do
            {
              v10 = v110;
              if (v110 >= a2)
              {
                break;
              }

              v111 = std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, v110);
              v110 = (v10 + 24);
            }

            while (!v111);
          }

          v112 = a2;
          if (v10 < a2)
          {
            v112 = a2;
            do
            {
              v112 -= 24;
            }

            while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, v112));
          }

          while (v10 < v112)
          {
            v113 = *v10;
            v195 = *(v10 + 16);
            v194 = v113;
            v114 = *v112;
            *(v10 + 16) = *(v112 + 2);
            *v10 = v114;
            v115 = v194;
            *(v112 + 2) = v195;
            *v112 = v115;
            do
            {
              v10 += 24;
            }

            while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, v10));
            do
            {
              v112 -= 24;
            }

            while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](&v196, v112));
          }

          v116 = (v10 - 24);
          if ((v10 - 24) == a1)
          {
            if (*(v10 - 1) < 0)
            {
              operator delete(*v116);
            }
          }

          else
          {
            if (a1[23] < 0)
            {
              operator delete(*a1);
            }

            v117 = *v116;
            *(a1 + 2) = *(v10 - 8);
            *a1 = v117;
            *(v10 - 1) = 0;
            *(v10 - 24) = 0;
          }

          a4 = 0;
          v118 = v196;
          *(v10 - 8) = v197;
          *v116 = v118;
        }

        v97 = *a1;
        v197 = *(a1 + 2);
        v196 = v97;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        v98 = a1;
        do
        {
          v99 = v98;
          v98 += 24;
        }

        while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v98, &v196));
        v100 = a2;
        if (v99 == a1)
        {
          v100 = a2;
          do
          {
            if (v98 >= v100)
            {
              break;
            }

            v100 -= 24;
          }

          while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v100, &v196));
        }

        else
        {
          do
          {
            v100 -= 24;
          }

          while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v100, &v196));
        }

        v10 = v98;
        if (v98 < v100)
        {
          v101 = v100;
          do
          {
            v194 = *v10;
            v102 = v194;
            v195 = *(v10 + 16);
            v103 = v195;
            v104 = *(v101 + 2);
            *v10 = *v101;
            *(v10 + 16) = v104;
            *(v101 + 2) = v103;
            *v101 = v102;
            do
            {
              v10 += 24;
            }

            while (std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v10, &v196));
            do
            {
              v101 -= 24;
            }

            while (!std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>::operator()[abi:ne200100](v101, &v196));
          }

          while (v10 < v101);
        }

        v105 = (v10 - 24);
        if ((v10 - 24) == a1)
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*v105);
          }
        }

        else
        {
          if (a1[23] < 0)
          {
            operator delete(*a1);
          }

          v106 = *v105;
          *(a1 + 2) = *(v10 - 8);
          *a1 = v106;
          *(v10 - 1) = 0;
          *(v10 - 24) = 0;
        }

        v107 = v196;
        *(v10 - 8) = v197;
        *v105 = v107;
        if (v98 >= v100)
        {
          break;
        }

LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, (v10 - 24), a3, a4 & 1);
        a4 = 0;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, (v10 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2))
      {
        break;
      }

      if (!v108)
      {
        goto LABEL_83;
      }
    }

    a2 = (v10 - 24);
    if (!v108)
    {
      continue;
    }

    break;
  }
}

uint64_t itfm_inference_orchestrator::inference_engine::vectorToString<std::string>(void *a1, uint64_t **a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "[", 1);
  for (i = *a2; i != a2[1]; i += 24)
  {
    if (i != *a2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " ", 1);
    }

    v4 = *(i + 23);
    if (v4 >= 0)
    {
      v5 = i;
    }

    else
    {
      v5 = *i;
    }

    if (v4 >= 0)
    {
      v6 = *(i + 23);
    }

    else
    {
      v6 = *(i + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "]", 1);
  std::stringbuf::str();
  v9[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v7;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v14);
}

void sub_2228A9A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_26:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_26;
      }
    }

    result = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (result)
    {
      v18 = result < 0;
    }

    if (!v18)
    {
      return result;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_26;
    }
  }
}

uint64_t nlv4_inference_orchestrator::span_matching::RelativeThresholdMatchingSpansFilter::filterMatchingSpans@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v58 = 1065353216;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    memset(v54, 0, sizeof(v54));
    v55 = 1065353216;
    goto LABEL_35;
  }

  do
  {
    v7 = v6[5];
    if (!v7 || !*(v7 + 40) || !nlv4_inference_orchestrator::span_matching::hasProbability(v6, (a1 + 8)))
    {
      goto LABEL_30;
    }

    v8 = *(*(**(v6[8] + 56) + 24) + 8);
    v9 = v6[6];
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v54, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      *&v54[16] = *(v9 + 2);
      *v54 = v10;
    }

    v11 = std::__string_hash<char>::operator()[abi:ne200100](&v56, v54);
    v12 = *(&v56 + 1);
    if (!*(&v56 + 1) || ((v13 = v11, v14 = vcnt_s8(*(&v56 + 8)), v14.i16[0] = vaddlv_u8(v14), v15 = v14.u32[0], v14.u32[0] > 1uLL) ? (v11 >= *(&v56 + 1) ? (v16 = v11 % *(&v56 + 1)) : (v16 = v11)) : (v16 = (*(&v56 + 1) - 1) & v11), (v17 = *(v56 + 8 * v16)) == 0 || (v18 = *v17) == 0))
    {
LABEL_27:
      *buf = v54;
      *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v56, v54, buf) + 5) = v8;
      goto LABEL_28;
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v13)
      {
        break;
      }

      if (v15 > 1)
      {
        if (v19 >= v12)
        {
          v19 %= v12;
        }
      }

      else
      {
        v19 &= v12 - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_27;
      }

LABEL_24:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](&v56, v18 + 2, v54))
    {
      goto LABEL_24;
    }

    *buf = v54;
    if (*(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v56, v54, buf) + 5) < v8)
    {
      goto LABEL_27;
    }

LABEL_28:
    if ((v54[23] & 0x80000000) != 0)
    {
      operator delete(*v54);
    }

LABEL_30:
    v6 += 11;
  }

  while (v6 != v5);
  v20 = v57;
  memset(v54, 0, sizeof(v54));
  v55 = 1065353216;
  if (v57)
  {
    do
    {
      v21 = *(a1 + 16);
      v22 = *(v20 + 5);
      *buf = v20 + 2;
      *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v54, v20 + 2, buf) + 5) = v21 * v22;
      v20 = *v20;
    }

    while (v20);
  }

LABEL_35:
  v25 = *(a1 + 8);
  v24 = (a1 + 8);
  v23 = v25;
  if (v25 >= 8)
  {
    v27 = SNLPOSLoggerForCategory(4);
    v26 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      v62 = 2048;
      v63 = v23;
      _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v26 = off_2784B6F30[v23];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v26);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v29 = *a2;
  v28 = a2[1];
  if (*a2 != v28)
  {
    while (2)
    {
      hasProbability = nlv4_inference_orchestrator::span_matching::hasProbability(v29, v24);
      v31 = 0.0;
      if (hasProbability)
      {
        v31 = *(*(**(v29[8] + 56) + 24) + 8);
      }

      v32 = v29[6];
      if (*(v32 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v59, *v32, *(v32 + 1));
      }

      else
      {
        v33 = *v32;
        v59.__r_.__value_.__r.__words[2] = *(v32 + 2);
        *&v59.__r_.__value_.__l.__data_ = v33;
      }

      v34 = v29[5];
      if (v34)
      {
        v35 = *(v34 + 40);
        v36 = v35 == 0;
        if (v35 && ((hasProbability ^ 1) & 1) == 0)
        {
          v60 = &v59;
          v36 = v31 > *(std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v54, &v59.__r_.__value_.__l.__data_, &v60) + 5);
        }
      }

      else
      {
        v36 = 1;
      }

      v37 = SNLPOSLoggerForCategory(4);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
      if (hasProbability)
      {
        if (v38)
        {
          v39 = __p;
          if (v53 < 0)
          {
            v39 = __p[0];
          }

          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v59;
          }

          else
          {
            v40 = v59.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = v39;
          v62 = 2080;
          v63 = v40;
          v64 = 2048;
          v65 = v31;
          v66 = 1024;
          v67 = v36;
          v41 = v37;
          v42 = "[%s] Span %s [score %f] was kept?: %{BOOL}d";
          v43 = 38;
          goto LABEL_65;
        }
      }

      else if (v38)
      {
        v44 = __p;
        if (v53 < 0)
        {
          v44 = __p[0];
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v59;
        }

        else
        {
          v45 = v59.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v44;
        v62 = 2080;
        v63 = v45;
        v64 = 1024;
        LODWORD(v65) = v36;
        v41 = v37;
        v42 = "[%s] Span %s [no score] was kept?: %{BOOL}d";
        v43 = 28;
LABEL_65:
        _os_log_impl(&dword_22284A000, v41, OS_LOG_TYPE_DEBUG, v42, buf, v43);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
        if (!v36)
        {
          goto LABEL_71;
        }
      }

      else if (!v36)
      {
LABEL_71:
        v29 += 11;
        if (v29 == v28)
        {
          goto LABEL_72;
        }

        continue;
      }

      break;
    }

    std::vector<sirinluinternal::MatchingSpan>::push_back[abi:ne200100](a3, v29);
    goto LABEL_71;
  }

LABEL_72:
  v46 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = __p;
    if (v53 < 0)
    {
      v47 = __p[0];
    }

    v48 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    v49 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    *buf = 136315650;
    *&buf[4] = v47;
    v62 = 2048;
    v63 = v48;
    v64 = 2048;
    v65 = *&v49;
    _os_log_impl(&dword_22284A000, v46, OS_LOG_TYPE_DEBUG, "[%s] Span filtering: %lu out of %lu spans kept", buf, 0x20u);
  }

  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v54);
  return std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&v56);
}

void sub_2228AA20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

void std::__tree<unsigned long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned long>::destroy(*a1);
    std::__tree<unsigned long>::destroy(a1[1]);

    operator delete(a1);
  }
}

void nlv4_inference_orchestrator::vocabulary::Vocabulary::getPadToken(nlv4_inference_orchestrator::vocabulary::Vocabulary *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 30))
  {
    if (*(this + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
    }

    else
    {
      *a2 = *(this + 1);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  a2[1].__r_.__value_.__s.__data_[0] = v3;
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (v4 - *a1) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return;
    }

    v12 = v5 + 4 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v11);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v4 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_2229D1B30)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_2229D1B20)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = v4 + 4 * v7;
  }

  a1[1] = v12;
}

void nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::featurizeSpans(uint64_t a1@<X0>, const sirinluinternal::MatchingSpan **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 440), (a1 + 8)))
  {
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 440), (a1 + 8));
    if (!v10)
    {
      goto LABEL_11;
    }

    if (*(v10 + 16) == 1)
    {
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 440), (a1 + 8));
      if (v11)
      {
        if (*(v11 + 16) == 1)
        {
          v12 = *(v11 + 10);
          *(a5 + 16) = 0u;
          *(a5 + 32) = 0u;
          *a5 = 0u;
          nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::featurize((a1 + 784), a5, a2, a3, a4, v12);
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_11:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "The NLv4 model config does not contain a setting for the maximum number of matching spans, max_num_spans_tokens.  Inference cannot continue.");
  exception = __cxa_allocate_exception(0x10uLL);
  if (v17 >= 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = v16[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&v15, v14);
  std::runtime_error::runtime_error(exception, &v15);
  exception->__vftable = &unk_2835E9238;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

uint64_t psc_inference_orchestrator::orchestration::PSCOverrideGenerator::sdaMessagePayloadPromptOverride@<X0>(itfm_inference_orchestrator::vocabulary::Vocabulary **a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[56] = 0;
  result = *(a2 + 32);
  if (result)
  {
    result = snlp::common::text_uso_graph::isMessageContentPrompt(result);
    if (result)
    {
      v6 = 0;
      psc_inference_orchestrator::orchestration::PSCOverrideGenerator::buildPSCOverrideITFMResponse(a1, &v6, buf);
    }
  }

  return result;
}

void sub_2228AAA08(_Unwind_Exception *exception_object)
{
  v4 = v3;
  *(v2 + 8) = v4;
  if (*(v1 + 56) == 1)
  {
    MEMORY[0x223DC3310](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::selflogging::logBackgroundUpdateStarted(uint64_t a1)
{
  v2 = [SNLPSSUSELFLoggingUtils logBackgroundUpdateStarted:snlp::ssu::selflogging::convertBackgroundUpdateType(a1)];
  v3 = v2;
  if (v2 && [v2 hasLowInt] && (objc_msgSend(v3, "hasHighInt") & 1) != 0)
  {
    v1 = [v3 lowInt];
    [v3 highInt];
  }

  return v1;
}

uint64_t *std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>,snlp::ssu::cache::SSUCacheObjectParameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    do
    {
      std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](v5);
      v5 += 48;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::cache::SSUCacheObjectParameter>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void snlp::ssu::matcher::SSUMatcher::handleUserShortcutsDatabaseChanged(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 344));
  v5 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Handling user shortcuts database change with %lu total configured shortcuts.", &v7, 0xCu);
  }

  snlp::ssu::matcher::SSUPersister::updateCacheForUserShortcutsIfRequired(a1 + 64, a2);
}

void snlp::ssu::usershortcut::computeHash(uint64_t *a1)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v2 = *a1;
  v3 = a1[1];
  v24 = &v34;
  v25 = 0;
  if (v3 != v2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 4);
    if (v4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(0, 0, &v31, 0, 0, 0);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<double>::reserve(&v31, 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 4));
  v5 = v34;
  v6 = v35;
  if (v34 == v35)
  {
    v12 = v32;
  }

  else
  {
    do
    {
      v7 = std::__string_hash<char>::operator()[abi:ne200100](&v24, v5);
      v8 = v5 + 24;
      v9 = std::__string_hash<char>::operator()[abi:ne200100](&v24, v8);
      v10 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v9) ^ ((0xC6A4A7935BD1E995 * v9) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v7) ^ ((0xC6A4A7935BD1E995 * v7) >> 47)) + 3864292196u));
      v11 = v32;
      if (v32 >= v33)
      {
        v13 = v31;
        v14 = v32 - v31;
        v15 = v32 - v31;
        v16 = v15 + 1;
        if ((v15 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v17 = v33 - v31;
        if ((v33 - v31) >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v31, v18);
        }

        *(8 * v15) = v10;
        v12 = (8 * v15 + 8);
        memcpy(0, v13, v14);
        v19 = v31;
        v31 = 0;
        v32 = v12;
        v33 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v32 = v10;
        v12 = v11 + 1;
      }

      v32 = v12;
      v5 = v8 + 24;
    }

    while (v5 != v6);
  }

  v20 = v31;
  if (v31 == v12)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = *v20++;
      v21 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v22) ^ ((0xC6A4A7935BD1E995 * v22) >> 47))) ^ v21);
    }

    while (v20 != v12);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v24);
  *(&v26 + *(v26 - 24) + 8) = *(&v26 + *(v26 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x223DC4940](&v26, v21);
  std::stringbuf::str();
  v24 = *MEMORY[0x277D82818];
  v23 = *(MEMORY[0x277D82818] + 72);
  *(&v24 + *(v24 - 3)) = *(MEMORY[0x277D82818] + 64);
  v26 = v23;
  v27 = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](&v30);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  v24 = &v34;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v24);
}

void sub_2228AB348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  v13 = *(v11 - 136);
  if (v13)
  {
    *(v11 - 128) = v13;
    operator delete(v13);
  }

  a11 = (v11 - 112);
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSUPersister::updateCacheForUserShortcutsIfRequired(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  snlp::ssu::usershortcut::computeHash(a2);
  snlp::ssu::matcher::SSUPersister::userShortcutsRequireUpdate(a1, &v4);
}

void sub_2228AB7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 145) < 0)
  {
    operator delete(*v36);
  }

  _Unwind_Resume(exception_object);
}

BOOL snlp::ssu::usershortcut::operator<(const void **a1, const void **a2)
{
  v4 = *(a2 + 23);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  if (v5 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v4 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v4 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  v12 = v6 < v8;
  if (v11)
  {
    v12 = v11 < 0;
  }

  if (v12)
  {
    return 1;
  }

  if (v6 != v8 || memcmp(v7, v9, v6))
  {
    return 0;
  }

  v16 = a2[3];
  v15 = a2 + 3;
  v14 = v16;
  v17 = *(v15 + 23);
  v20 = a1[3];
  v19 = a1 + 3;
  v18 = v20;
  v21 = *(v19 + 23);
  v22 = v21 >= 0 ? *(v19 + 23) : v19[1];
  v23 = v21 >= 0 ? v19 : v18;
  v24 = v17 >= 0 ? *(v15 + 23) : v15[1];
  v25 = v17 >= 0 ? v15 : v14;
  v26 = (v24 >= v22 ? v22 : v24);
  v27 = memcmp(v23, v25, v26);
  v28 = v22 < v24;
  if (v27)
  {
    return v27 < 0;
  }

  return v28;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(uint64_t *result, const void **a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v54 = &v55;
      v55 = 0;
      v11 = a2 - 6;
      if (snlp::ssu::usershortcut::operator<(a2 - 6, result))
      {
        v12 = *v11;
        *(v5 + 16) = *(a2 - 4);
        *v5 = v12;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *v11 = 0;
        v13 = *(a2 - 3);
        *(v5 + 40) = *(a2 - 1);
        *(v5 + 24) = v13;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        *(a2 - 3) = 0;
        v14 = *v8;
        *(v5 + 64) = v8[2];
        *(v5 + 48) = v14;
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        v15 = (v8 + 3);
      }

      else
      {
        v31 = *v8;
        *(v5 + 16) = v8[2];
        *v5 = v31;
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        v32 = *(v8 + 3);
        *(v5 + 40) = v8[5];
        *(v5 + 24) = v32;
        v8[4] = 0;
        v8[5] = 0;
        v8[3] = 0;
        v33 = *v11;
        *(v5 + 64) = *(a2 - 4);
        *(v5 + 48) = v33;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *v11 = 0;
        v15 = a2 - 3;
      }

      v34 = *v15;
      *(v5 + 88) = v15[2];
      *(v5 + 72) = v34;
      v15[1] = 0;
      v15[2] = 0;
      *v15 = 0;
      v55 = 1;
    }

    else
    {
      if (a4 == 1)
      {
        v9 = *result;
        *(a5 + 16) = result[2];
        *a5 = v9;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        v10 = *(result + 3);
        *(a5 + 40) = result[5];
        *(a5 + 24) = v10;
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        return result;
      }

      if (a4 > 8)
      {
        v36 = &result[6 * (a4 >> 1)];
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(result, v36, a3, a4 >> 1, a5, a4 >> 1);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(&v8[6 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v5 + 48 * (a4 >> 1), a4 - (a4 >> 1));
        v37 = 0;
        v53 = v5;
        v54 = &v55;
        v55 = 0;
        v38 = v36;
        while (v38 != a2)
        {
          if (snlp::ssu::usershortcut::operator<(v38, v8))
          {
            v39 = *v38;
            *(v5 + 16) = v38[2];
            *v5 = v39;
            v38[1] = 0;
            v38[2] = 0;
            *v38 = 0;
            v40 = *(v38 + 3);
            *(v5 + 40) = v38[5];
            *(v5 + 24) = v40;
            v38[4] = 0;
            v38[5] = 0;
            v38[3] = 0;
            v38 += 6;
          }

          else
          {
            v41 = *v8;
            *(v5 + 16) = v8[2];
            *v5 = v41;
            v8[1] = 0;
            v8[2] = 0;
            *v8 = 0;
            v42 = *(v8 + 3);
            *(v5 + 40) = v8[5];
            *(v5 + 24) = v42;
            v8[4] = 0;
            v8[5] = 0;
            v8[3] = 0;
            v8 += 6;
          }

          v55 = ++v37;
          v5 += 48;
          if (v8 == v36)
          {
            if (v38 == a2)
            {
              goto LABEL_45;
            }

            v43 = 0;
            do
            {
              v44 = &v38[v43];
              v45 = v5 + v43 * 8;
              v46 = *&v38[v43];
              *(v45 + 16) = v38[v43 + 2];
              *v45 = v46;
              v44[1] = 0;
              v44[2] = 0;
              *v44 = 0;
              v47 = *&v38[v43 + 3];
              *(v45 + 40) = v38[v43 + 5];
              *(v45 + 24) = v47;
              v44[4] = 0;
              v44[5] = 0;
              v44[3] = 0;
              ++v37;
              v43 += 6;
            }

            while (v44 + 6 != a2);
            goto LABEL_44;
          }
        }

        if (v8 == v36)
        {
          goto LABEL_45;
        }

        v48 = 0;
        do
        {
          v49 = v5 + v48 * 8;
          v50 = &v8[v48];
          v51 = *&v8[v48];
          *(v49 + 16) = v8[v48 + 2];
          *v49 = v51;
          v50[1] = 0;
          v50[2] = 0;
          *v50 = 0;
          v52 = *&v8[v48 + 3];
          *(v49 + 40) = v8[v48 + 5];
          *(v49 + 24) = v52;
          v50[4] = 0;
          v50[5] = 0;
          v50[3] = 0;
          ++v37;
          v48 += 6;
        }

        while (v50 + 6 != v36);
LABEL_44:
        v55 = v37;
      }

      else
      {
        if (result == a2)
        {
          return result;
        }

        v53 = a5;
        v54 = &v55;
        v16 = *result;
        *(a5 + 16) = result[2];
        *a5 = v16;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        v17 = *(result + 3);
        *(a5 + 40) = result[5];
        *(a5 + 24) = v17;
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        v55 = 1;
        v18 = (result + 6);
        if (result + 6 != a2)
        {
          v19 = 0;
          v20 = a5;
          do
          {
            v21 = v18;
            v22 = (v20 + 48);
            if (snlp::ssu::usershortcut::operator<(v18, v20))
            {
              *v22 = *v20;
              *(v20 + 64) = *(v20 + 16);
              *v20 = 0;
              *(v20 + 8) = 0;
              v23 = *(v20 + 24);
              *(v20 + 16) = 0;
              *(v20 + 24) = 0;
              *(v20 + 72) = v23;
              *(v20 + 88) = *(v20 + 40);
              ++v55;
              v24 = v5;
              *(v20 + 32) = 0;
              *(v20 + 40) = 0;
              if (v20 != v5)
              {
                v25 = v19;
                while (1)
                {
                  v24 = v5 + v25;
                  if (!snlp::ssu::usershortcut::operator<(v21, (v5 + v25 - 48)))
                  {
                    break;
                  }

                  if (*(v24 + 23) < 0)
                  {
                    operator delete(*v24);
                  }

                  v26 = v5 + v25;
                  *v24 = *(v5 + v25 - 48);
                  *(v24 + 16) = *(v5 + v25 - 32);
                  *(v5 + v25 - 25) = 0;
                  *(v24 - 48) = 0;
                  if (*(v5 + v25 + 47) < 0)
                  {
                    operator delete(*(v26 + 24));
                  }

                  *(v26 + 24) = *(v26 - 24);
                  *(v26 + 40) = *(v26 - 8);
                  *(v26 - 1) = 0;
                  *(v26 - 24) = 0;
                  v25 -= 48;
                  if (!v25)
                  {
                    v24 = v5;
                    break;
                  }
                }
              }

              if (*(v24 + 23) < 0)
              {
                operator delete(*v24);
              }

              v27 = *v21;
              *(v24 + 16) = v21[2];
              *v24 = v27;
              *(v8 + 71) = 0;
              *v21 = 0;
              if (*(v24 + 47) < 0)
              {
                operator delete(*(v24 + 24));
              }

              v28 = *(v8 + 9);
              *(v24 + 40) = v8[11];
              *(v24 + 24) = v28;
              *(v8 + 95) = 0;
              *(v8 + 72) = 0;
            }

            else
            {
              v29 = *v21;
              *(v20 + 64) = v21[2];
              *v22 = v29;
              v21[1] = 0;
              v21[2] = 0;
              *v21 = 0;
              v30 = *(v8 + 9);
              *(v20 + 88) = v8[11];
              *(v20 + 72) = v30;
              v8[10] = 0;
              v8[11] = 0;
              v8[9] = 0;
              ++v55;
            }

            v18 = v21 + 6;
            v19 += 48;
            v20 += 48;
            v8 = v21;
          }

          while (v21 + 6 != a2);
        }
      }
    }

LABEL_45:
    v53 = 0;
    return std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v53);
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(const void **a1, const void **a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (snlp::ssu::usershortcut::operator<(a2 - 6, a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(a1, (a2 - 6));
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v15 = a1 + 6;
        if (a1 + 6 != a2)
        {
          v16 = 0;
          v17 = a1;
          do
          {
            v18 = v15;
            if (snlp::ssu::usershortcut::operator<(v15, v17))
            {
              v44 = *v18;
              v45 = v18[2];
              v18[1] = 0;
              v18[2] = 0;
              *v18 = 0;
              v46 = *(v17 + 9);
              v47 = v17[11];
              v17[9] = 0;
              v17[10] = 0;
              v17[11] = 0;
              v19 = v16;
              while (1)
              {
                v20 = v19;
                v21 = (a1 + v19);
                if (*(v21 + 71) < 0)
                {
                  operator delete(v21[6]);
                }

                *(v21 + 3) = *v21;
                v21[8] = v21[2];
                *(v21 + 23) = 0;
                *v21 = 0;
                if (*(v21 + 95) < 0)
                {
                  operator delete(v21[9]);
                }

                v22 = a1 + v20;
                v23 = *(a1 + v20 + 24);
                v21[11] = *(a1 + v20 + 40);
                *(v21 + 9) = v23;
                v22[47] = 0;
                v22[24] = 0;
                if (!v20)
                {
                  break;
                }

                v19 = v20 - 48;
                if (!snlp::ssu::usershortcut::operator<(&v44, (a1 + v20 - 48)))
                {
                  v24 = (a1 + v20);
                  v25 = a1 + v20 + 24;
                  goto LABEL_26;
                }
              }

              v25 = v22 + 24;
              v24 = a1;
LABEL_26:
              if (*(v24 + 23) < 0)
              {
                operator delete(*v24);
              }

              *v24 = v44;
              v24[2] = v45;
              if (*(v24 + 47) < 0)
              {
                operator delete(*v25);
              }

              *v25 = v46;
              *(v25 + 2) = v47;
            }

            v15 = v18 + 6;
            v16 += 48;
            v17 = v18;
          }

          while (v18 + 6 != a2);
        }
      }
    }

    else
    {
      v10 = a5;
      v12 = a4 >> 1;
      v13 = &a1[6 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v43 = 0;
        *&v44 = a5;
        *(&v44 + 1) = &v43;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a1, &a1[6 * (a4 >> 1)], a3, a4 >> 1, a5);
        v43 = a4 >> 1;
        v26 = a4 - v12;
        v27 = v10 + 48 * v12;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(&a1[6 * (a4 >> 1)], a2, a3, v26, v27);
        v43 = a4;
        v28 = v10 + 48 * a4;
        v29 = a1 + 23;
        v30 = v27;
        while (v30 != v28)
        {
          v31 = (v29 - 23);
          v32 = snlp::ssu::usershortcut::operator<(v30, v10);
          v33 = *v29;
          if (v32)
          {
            if (v33 < 0)
            {
              operator delete(*v31);
            }

            v34 = *v30;
            *(v29 - 7) = *(v30 + 16);
            *v31 = v34;
            *(v30 + 23) = 0;
            *v30 = 0;
            if (v29[24] < 0)
            {
              operator delete(*(v29 + 1));
            }

            v35 = *(v30 + 24);
            *(v29 + 17) = *(v30 + 40);
            *(v29 + 1) = v35;
            *(v30 + 47) = 0;
            *(v30 + 24) = 0;
            v30 += 48;
          }

          else
          {
            if (v33 < 0)
            {
              operator delete(*v31);
            }

            v36 = *v10;
            *(v29 - 7) = *(v10 + 16);
            *v31 = v36;
            *(v10 + 23) = 0;
            *v10 = 0;
            if (v29[24] < 0)
            {
              operator delete(*(v29 + 1));
            }

            v37 = *(v10 + 24);
            *(v29 + 17) = *(v10 + 40);
            *(v29 + 1) = v37;
            *(v10 + 47) = 0;
            *(v10 + 24) = 0;
            v10 += 48;
          }

          v29 += 48;
          if (v10 == v27)
          {
            while (v30 != v28)
            {
              if (*v29 < 0)
              {
                operator delete(*(v29 - 23));
              }

              v41 = *v30;
              *(v29 - 7) = *(v30 + 16);
              *(v29 - 23) = v41;
              *(v30 + 23) = 0;
              *v30 = 0;
              if (v29[24] < 0)
              {
                operator delete(*(v29 + 1));
              }

              v42 = *(v30 + 24);
              *(v29 + 17) = *(v30 + 40);
              *(v29 + 1) = v42;
              *(v30 + 47) = 0;
              *(v30 + 24) = 0;
              v30 += 48;
              v29 += 48;
            }

            goto LABEL_61;
          }
        }

        while (v10 != v27)
        {
          v38 = (v29 - 23);
          if (*v29 < 0)
          {
            operator delete(*v38);
          }

          v39 = *v10;
          *(v29 - 7) = *(v10 + 16);
          *v38 = v39;
          *(v10 + 23) = 0;
          *v10 = 0;
          if (v29[24] < 0)
          {
            operator delete(*(v29 + 1));
          }

          v40 = *(v10 + 24);
          *(v29 + 17) = *(v10 + 40);
          *(v29 + 1) = v40;
          *(v10 + 47) = 0;
          *(v10 + 24) = 0;
          v10 += 48;
          v29 += 48;
        }

LABEL_61:
        std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v44);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a1, &a1[6 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(v13, a2, a3, v14, v10, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a1, v13, a2, v12, v14, v10, a6);
      }
    }
  }
}

void sub_2228AC318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 23);
      do
      {
        if (v5[24] < 0)
        {
          operator delete(*(v5 + 1));
        }

        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }

        ++v4;
        v5 += 48;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void std::vector<double>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2228AC770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::optional<snlp::ssu::cache::SSUCacheFileVersion>::~optional(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSUPersister::lookupExistingCacheVersion(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForApp(*(a1 + 32), a2, v8, (a1 + 8));
  v4 = v8[0];
  if (v8[0] == v8[1])
  {
    v6 = 0;
    a3->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (*(v8[0] + 55) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *(v8[0] + 32), *(v8[0] + 40));
    }

    else
    {
      v5 = *(v8[0] + 32);
      a3->__r_.__value_.__r.__words[2] = *(v8[0] + 48);
      *&a3->__r_.__value_.__l.__data_ = v5;
    }

    if (*(v4 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(a3 + 1, *(v4 + 56), *(v4 + 64));
    }

    else
    {
      v7 = *(v4 + 56);
      a3[1].__r_.__value_.__r.__words[2] = *(v4 + 72);
      *&a3[1].__r_.__value_.__l.__data_ = v7;
    }

    v6 = 1;
  }

  a3[2].__r_.__value_.__s.__data_[0] = v6;
  v9 = v8;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_2228AC860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  a12 = &a9;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForApp(uint64_t a1@<X0>, std::string *a2@<X2>, void *a3@<X8>, std::string *a4@<X1>)
{
  v46 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheDirectory::buildAppBundleDirectoryPath(a1, a4, a2, &v41.__pn_);
  v39 = 0uLL;
  v40 = 0;
  std::recursive_mutex::lock((a1 + 24));
  std::__fs::filesystem::__status(&v41, 0);
  if (v45[0] == 2)
  {
    MEMORY[0x223DC4A70](&v37, &v41, 0, 0);
    v6 = v37;
    v7 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v38;
      v36.__imp_.__ptr_ = v6;
      v36.__imp_.__cntrl_ = v7;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      v36.__imp_.__ptr_ = v37;
      v36.__imp_.__cntrl_ = 0;
    }

    while (v36.__imp_.__ptr_)
    {
      v9 = std::__fs::filesystem::directory_iterator::__dereference(&v36);
      v10 = v9;
      if (((1 << v9[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
      {
        std::__fs::filesystem::__status(v9, 0);
        v11 = v45[0];
      }

      else
      {
        v11 = v9[3].__pn_.__r_.__value_.__s.__data_[0];
      }

      if (v11 == 1)
      {
        if (SHIBYTE(v10->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&pn, v10->__pn_.__r_.__value_.__l.__data_, v10->__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          pn = v10->__pn_;
        }

        snlp::ssu::cache::SSUCacheDirectory::buildResultForCacheFile();
      }

      v12 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = &v41;
        if ((v41.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v41.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((v10->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = v10->__pn_.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v13;
        v43 = 2080;
        v44 = v14;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "Found non-regular-file entry in directory %s: %s. Skipping.", buf, 0x16u);
      }

      std::__fs::filesystem::directory_iterator::__increment(&v36, 0);
    }

    if (v36.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36.__imp_.__cntrl_);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    std::recursive_mutex::unlock((a1 + 24));
    v15 = v39;
    if (v39 == *(&v39 + 1))
    {
      v32 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = &v41;
        if ((v41.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = v41.__pn_.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&dword_22284A000, v32, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Could not find any cache files in directory: %s", buf, 0xCu);
      }
    }

    else
    {
      v34 = v39;
      v16 = *(v39 + 55);
      if (v16 >= 0)
      {
        v17 = *(v39 + 55);
      }

      else
      {
        v17 = *(v39 + 40);
      }

      v18 = (v39 + 79);
      while (1)
      {
        v19 = *(v18 - 24);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v18 - 39);
        }

        if (v17 != v19)
        {
          break;
        }

        v21 = v16 >= 0 ? (v15 + 32) : *(v15 + 32);
        v22 = v20 >= 0 ? v18 - 47 : *(v18 - 47);
        if (memcmp(v21, v22, v17))
        {
          break;
        }

        v23 = *(v15 + 79);
        if (v23 >= 0)
        {
          v24 = *(v15 + 79);
        }

        else
        {
          v24 = *(v15 + 64);
        }

        v25 = *v18;
        v26 = v25;
        if ((v25 & 0x80u) != 0)
        {
          v25 = *(v18 - 15);
        }

        if (v24 != v25)
        {
          break;
        }

        v27 = v23 >= 0 ? (v15 + 56) : *(v15 + 56);
        v28 = v26 >= 0 ? v18 - 23 : *(v18 - 23);
        if (memcmp(v27, v28, v24))
        {
          break;
        }

        v29 = v18 + 25;
        v18 += 104;
        if (v29 == *(&v15 + 1))
        {
          *a3 = v34;
          a3[2] = v40;
          v40 = 0;
          v39 = 0uLL;
          goto LABEL_68;
        }
      }

      v30 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = &v41;
        if ((v41.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v41.__pn_.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Encountered cache files of different versions in directory: %s", buf, 0xCu);
      }
    }

    snlp::ssu::cache::SSUCacheDirectory::healByRemovingDirectory(a1, &v41);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::recursive_mutex::unlock((a1 + 24));
  }

LABEL_68:
  *buf = &v39;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v41.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_2228ACEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char *buf)
{
  buf = &a25;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2228ACF50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34)
{
  std::optional<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::~optional(&a34);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::recursive_mutex::unlock((v34 + 24));
  if (a2 == 1)
  {
    v37 = __cxa_begin_catch(a1);
    v38 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = (*(*v37 + 16))(v37);
      LODWORD(a34) = 136315138;
      *(&a34 + 4) = v39;
      _os_log_impl(&dword_22284A000, v38, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error: %s)", &a34, 0xCu);
    }

    *a10 = 0;
    a10[1] = 0;
    a10[2] = 0;
    __cxa_end_catch();
    JUMPOUT(0x2228ACE90);
  }

  JUMPOUT(0x2228ACEFCLL);
}

void snlp::ssu::cache::SSUCacheDirectory::buildAppBundleDirectoryPath(snlp::ssu::cache::SSUCacheDirectory *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(&v10, a1);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v8.__pn_, a2);
  std::__fs::filesystem::operator/[abi:ne200100](&v9, &v10, &v8);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a3);
  std::__fs::filesystem::operator/[abi:ne200100](a4, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2228AD130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(std::string *__return_ptr a1@<X8>, snlp::ssu::cache::SSUCacheDirectory *this@<X0>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__p, &snlp::ssu::cache::SSUCacheDirectory::kLocalesDirectoryName);
  std::__fs::filesystem::operator/[abi:ne200100](a1, this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2228AD1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2228AD6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nlv4_inference_orchestrator::orchestration::Token::~Token(&STACK[0x2A0]);
  nlv4_inference_orchestrator::orchestration::Token::~Token(&a65);
  nlv4_inference_orchestrator::orchestration::Token::~Token(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = *(a2 + v7 + 24);
      v13 = *(a2 + v7 + 35);
      *(a4 + v7 + 56) = 0;
      v14 = (a4 + v7 + 56);
      *(v14 - 21) = v13;
      *(v14 - 2) = v12;
      v14[1] = 0;
      v14[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, *(a2 + v7 + 56), *(a2 + v7 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 64) - *(a2 + v7 + 56)) >> 3));
      v15 = *(a2 + v7 + 96);
      *(v11 + 80) = *(a2 + v7 + 80);
      *(v11 + 96) = v15;
      v7 += 112;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2228AD94C(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getEmbeddings(nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator *this, const nlv4_inference_orchestrator::orchestration::EmbedderRequest *a2)
{
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Request Preprocess", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Request Preprocess", buf, 2u);
  }

  nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::preprocessRequest(this, a2);
}

void sub_2228ADDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelOutputType::~EspressoBertModelOutputType(&a39);
  nlv4_inference_orchestrator::orchestration::BertPreprocessingOutput::~BertPreprocessingOutput(&a65);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::reformulateTokens(uint64_t a1@<X0>, const nlv4_inference_orchestrator::orchestration::Token **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(a3, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  v6 = *a2;
  for (i = a2[1]; v6 != i; v6 = (v6 + 112))
  {
    nlv4_inference_orchestrator::pre_processing::Reformulator::applyReformulationToToken(__p, (a1 + 192), v6);
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v12 = std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(a3, __p);
    }

    else
    {
      v9 = *__p;
      *(v8 + 16) = v14;
      *v8 = v9;
      __p[1] = 0;
      v14 = 0;
      __p[0] = 0;
      v10 = *(v15 + 11);
      *(v8 + 24) = v15[0];
      *(v8 + 35) = v10;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      *(v8 + 56) = v16;
      *(v8 + 72) = v17;
      v16 = 0uLL;
      v17 = 0;
      v11 = v19;
      *(v8 + 80) = v18;
      *(v8 + 96) = v11;
      v12 = v8 + 112;
    }

    a3[1] = v12;
    v20 = &v16;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v20);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2228ADF58(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 35) = *(v6 + 35);
      *(a4 + 24) = v8;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 9);
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      v9 = v6[6];
      *(a4 + 80) = v6[5];
      *(a4 + 96) = v9;
      v6 += 7;
      a4 += 112;
    }

    while (v6 != a3);
    do
    {
      std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v5);
      v5 += 7;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<nlv4_inference_orchestrator::orchestration::Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](i - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::pre_processing::Reformulator::applyReformulationToToken(void *__return_ptr a1@<X8>, nlv4_inference_orchestrator::pre_processing::Reformulator *this@<X0>, const nlv4_inference_orchestrator::orchestration::Token *a3@<X1>)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
  }

  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6 != v7)
  {
    while (1)
    {
      v8 = *(a3 + 23);
      if ((v8 & 0x80u) == 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a3 + 1);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      memset(__p, 0, 41);
      v10 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v9, &v9[v8], __p, v6);
      if (__p[0].__r_.__value_.__r.__words[0])
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v10)
      {
        break;
      }

      v6 += 88;
      if (v6 == v7)
      {
        goto LABEL_26;
      }
    }

    memset(__p, 0, 24);
    v11 = *(a3 + 23);
    if ((v11 & 0x80u) == 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 1);
    }

    if (*(v6 + 87) >= 0)
    {
      v13 = (v6 + 64);
    }

    else
    {
      v13 = *(v6 + 64);
    }

    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(__p, v12, &v12[v11], v6, v13);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v15 = __p[0];
  }

LABEL_26:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *a3, *(a3 + 1));
  }

  else
  {
    *a1 = *a3;
    a1[2] = *(a3 + 2);
  }

  a1[7] = 0;
  *(a1 + 3) = *(a3 + 24);
  *(a1 + 35) = *(a3 + 35);
  a1[8] = 0;
  a1[9] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 7, *(a3 + 7), *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *(a3 + 7)) >> 3));
  v14 = *(a3 + 6);
  *(a1 + 5) = *(a3 + 5);
  *(a1 + 6) = v14;
  std::string::operator=(a1, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_2228AE31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::allocator_traits<std::allocator<nlv4_inference_orchestrator::orchestration::Token>>::construct[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token,nlv4_inference_orchestrator::orchestration::Token const&,0>(std::string *this, __int128 *a2)
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

  v5 = *(a2 + 24);
  v6 = *(a2 + 35);
  this[2].__r_.__value_.__l.__size_ = 0;
  *(&this[1].__r_.__value_.__r.__words[1] + 3) = v6;
  *&this[1].__r_.__value_.__l.__data_ = v5;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  result = a2[5];
  v8 = a2[6];
  *&this[3].__r_.__value_.__r.__words[1] = result;
  *&this[4].__r_.__value_.__l.__data_ = v8;
  return result;
}

void sub_2228AE410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = (a1 + 56);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getSubwordTokenChain(uint64_t a1@<X0>, void *a2@<X1>, sirinluinternal::SubwordTokenChain *a3@<X8>)
{
  sirinluinternal::SubwordTokenChain::SubwordTokenChain(a3);
  if ((*(**(*(a1 + 184) + 8) + 16))(*(*(a1 + 184) + 8)) && *a2 != a2[1])
  {
    nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getMaxNumTokens(*(a1 + 184));
    v6 = *a2;
    if (*(*a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      v12.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v12.__r_.__value_.__l.__data_ = v7;
    }

    v8 = a2[1];
    if (*(v8 - 89) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(v8 - 112), *(v8 - 104));
    }

    else
    {
      v9 = *(v8 - 112);
      v11.__r_.__value_.__r.__words[2] = *(v8 - 96);
      *&v11.__r_.__value_.__l.__data_ = v9;
    }

    nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getSubwordToken(&v12, 0, 0, v10);
    PB::PtrVector<sirinluinternal::SubwordToken>::emplace_back<sirinluinternal::SubwordToken&>(a3 + 16, v10);
  }
}

void sub_2228AE714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  MEMORY[0x223DC3200](v28, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getMaxNumTokens(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this)
{
  v1 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "max_seq_length");
  v2 = (*(*v1 + 8))(v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2228AE82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::basic_string<char16_t>>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

std::string *nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getSubwordToken@<X0>(const std::string *a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  sirinluinternal::SubwordToken::SubwordToken(a4);
  v8 = *(a4 + 8);
  if (!v8)
  {
    operator new();
  }

  result = std::string::operator=(v8, a1);
  *(a4 + 24) |= 3u;
  *(a4 + 16) = a3;
  *(a4 + 20) = a2;
  return result;
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getSubwordTokens(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    memset(v6, 0, sizeof(v6));
    nl_sentencepiece::SentencepieceModel::encodeUtterance(a3, **(a1 + 16), a2);
    v7 = v6;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_2228AEB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void nl_sentencepiece::SentencepieceModel::encodeUtterance(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  (*(*a2 + 136))(v7, a2, v5, v6, a1);
  sentencepiece::util::Status::~Status(v7);
}

void sub_2228AEBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceText::SentencePieceText(uint64_t a1, google::protobuf::Arena *a2)
{
  *a1 = &unk_2835E3280;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_sentencepiece_2eproto);
  }

  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 0;
  return a1;
}

void sub_2228AEC90(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSet(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::forward(E5RT::ExecutionStreamOperation **this, const nlv4_inference_orchestrator::inference_engine::BertModuleInputType *a2)
{
  v4 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Executing reshapable E5-ML inference.", buf, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::BertModuleInputType(buf, a2);
  if (v70 != 1 || v68 == v69)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v66, "sequence Length tensor incorrectly specified for Dynamic E5ML module, Bert reshape failed!");
    std::runtime_error::runtime_error(exception, &v66);
    exception->__vftable = &unk_2835E9238;
  }

  nlv4_inference_orchestrator::inference_engine::BertReshapableE5MLModule::reshapeStream(&v66, this, *v68);
  v5 = SNLPOSLoggerForCategory(7);
  v6 = os_signpost_id_generate(v5);
  v7 = SNLPOSLoggerForCategory(7);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Reshaping Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v9 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN Reshaping Bert E5ML Inference network", v65, 2u);
  }

  E5RT::ExecutionStreamOperation::ReshapeOperation();
  v10 = SNLPOSLoggerForCategory(7);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v10))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v11, OS_SIGNPOST_INTERVAL_END, v6, "Reshaping Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v12 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEFAULT, "END Reshaping Bert E5ML Inference network", v65, 2u);
  }

  v13 = SNLPOSLoggerForCategory(7);
  v14 = os_signpost_id_generate(v13);
  v15 = SNLPOSLoggerForCategory(7);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v15))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Binding to Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v17 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN Binding to Bert E5ML Inference network", v65, 2u);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(this + 54);
  v18 = SNLPOSLoggerForCategory(7);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v18))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v19, OS_SIGNPOST_INTERVAL_END, v14, "Binding to Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v20 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEFAULT, "END Binding to Bert E5ML Inference network", v65, 2u);
  }

  v21 = SNLPOSLoggerForCategory(7);
  v22 = os_signpost_id_generate(v21);
  v23 = SNLPOSLoggerForCategory(7);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v23))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "Setting inputs of Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v25 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN Setting inputs of Bert E5ML Inference network", v65, 2u);
  }

  (*(*this + 21))(this, buf);
  v26 = SNLPOSLoggerForCategory(7);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v27 = v26;
    if (os_signpost_enabled(v26))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v27, OS_SIGNPOST_INTERVAL_END, v22, "Setting inputs of Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v28 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v28, OS_LOG_TYPE_DEFAULT, "END Setting inputs of Bert E5ML Inference network", v65, 2u);
  }

  v29 = SNLPOSLoggerForCategory(7);
  v30 = os_signpost_id_generate(v29);
  v31 = SNLPOSLoggerForCategory(7);
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v32 = v31;
    if (os_signpost_enabled(v31))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "Encode Operation of Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v33 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v33, OS_LOG_TYPE_DEFAULT, "BEGIN Encode Operation of Bert E5ML Inference network", v65, 2u);
  }

  v34 = this[77];
  v64 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v35 = SNLPOSLoggerForCategory(7);
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v36 = v35;
    if (os_signpost_enabled(v35))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v36, OS_SIGNPOST_INTERVAL_END, v30, "Encode Operation of Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v37 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v37, OS_LOG_TYPE_DEFAULT, "END Encode Operation of Bert E5ML Inference network", v65, 2u);
  }

  v38 = SNLPOSLoggerForCategory(7);
  v39 = os_signpost_id_generate(v38);
  v40 = SNLPOSLoggerForCategory(7);
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v41 = v40;
    if (os_signpost_enabled(v40))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "Execute Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v42 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v42, OS_LOG_TYPE_DEFAULT, "BEGIN Execute Bert E5ML Inference network", v65, 2u);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(this[57]);
  v43 = SNLPOSLoggerForCategory(7);
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v44 = v43;
    if (os_signpost_enabled(v43))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v44, OS_SIGNPOST_INTERVAL_END, v39, "Execute Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v45 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v45, OS_LOG_TYPE_DEFAULT, "END Execute Bert E5ML Inference network", v65, 2u);
  }

  v46 = SNLPOSLoggerForCategory(7);
  v47 = os_signpost_id_generate(v46);
  v48 = SNLPOSLoggerForCategory(7);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v49 = v48;
    if (os_signpost_enabled(v48))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v47, "Reset Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v50 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v50, OS_LOG_TYPE_DEFAULT, "BEGIN Reset Bert E5ML Inference network", v65, 2u);
  }

  E5RT::ExecutionStream::ResetStream(this[57]);
  v51 = SNLPOSLoggerForCategory(7);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v52 = v51;
    if (os_signpost_enabled(v51))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v52, OS_SIGNPOST_INTERVAL_END, v47, "Reset Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v53 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v53, OS_LOG_TYPE_DEFAULT, "END Reset Bert E5ML Inference network", v65, 2u);
  }

  v54 = SNLPOSLoggerForCategory(7);
  v55 = os_signpost_id_generate(v54);
  v56 = SNLPOSLoggerForCategory(7);
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v57 = v56;
    if (os_signpost_enabled(v56))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v57, OS_SIGNPOST_INTERVAL_BEGIN, v55, "Get Outputs of Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v58 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v58, OS_LOG_TYPE_DEFAULT, "BEGIN Get Outputs of Bert E5ML Inference network", v65, 2u);
  }

  (*(*this + 22))(this);
  v59 = SNLPOSLoggerForCategory(7);
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v60 = v59;
    if (os_signpost_enabled(v59))
    {
      *v65 = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v60, OS_SIGNPOST_INTERVAL_END, v55, "Get Outputs of Bert E5ML Inference network", "", v65, 2u);
    }
  }

  v61 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v61, OS_LOG_TYPE_DEFAULT, "END Get Outputs of Bert E5ML Inference network", v65, 2u);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(this + 54);
  v62 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *v65 = 0;
    _os_log_impl(&dword_22284A000, v62, OS_LOG_TYPE_DEBUG, "Success Executing reshapable E5-ML inference.", v65, 2u);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(&v66);
  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(buf);
}

void sub_2228AF8A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      if (a23 < 0)
      {
        operator delete(a18);
      }

      __cxa_end_catch();
      JUMPOUT(0x2228AF790);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void sub_2228AF914(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
LABEL_6:
  JUMPOUT(0x2228AF798);
}

void nlv4_inference_orchestrator::inference_engine::BertModule::getTensorOutputs(nlv4_inference_orchestrator::inference_engine::BertModule *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v4 = a2 + 104;
  *(a2 + 152) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  (*(*this + 96))(v7);
  v5 = v8;
  *a2 = *v7;
  *(a2 + 16) = v5;
  v6 = v10;
  *(a2 + 24) = *__p;
  *(a2 + 40) = v6;
  std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](a2 + 48);
  if (*(this + 424) == 1)
  {
    (*(*this + 104))(v7, this);
    std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100]<snlp::common::tensor::InferenceTensor,void>(a2 + 48, v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](v4);
  if (*(this + 425) == 1)
  {
    (*(*this + 112))(v7, this);
    std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100]<snlp::common::tensor::InferenceTensor,void>(v4, v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }
}

void nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(nlv4_inference_orchestrator::inference_engine::BertModuleInputType *this)
{
  if (*(this + 376) == 1)
  {
    v2 = *(this + 44);
    if (v2)
    {
      *(this + 45) = v2;
      operator delete(v2);
    }

    v3 = *(this + 41);
    if (v3)
    {
      *(this + 42) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 320) == 1)
  {
    v4 = *(this + 37);
    if (v4)
    {
      *(this + 38) = v4;
      operator delete(v4);
    }

    v5 = *(this + 34);
    if (v5)
    {
      *(this + 35) = v5;
      operator delete(v5);
    }
  }

  if (*(this + 264) == 1)
  {
    v6 = *(this + 30);
    if (v6)
    {
      *(this + 31) = v6;
      operator delete(v6);
    }

    v7 = *(this + 27);
    if (v7)
    {
      *(this + 28) = v7;
      operator delete(v7);
    }
  }

  if (*(this + 208) == 1)
  {
    v8 = *(this + 23);
    if (v8)
    {
      *(this + 24) = v8;
      operator delete(v8);
    }

    v9 = *(this + 20);
    if (v9)
    {
      *(this + 21) = v9;
      operator delete(v9);
    }
  }

  if (*(this + 152) == 1)
  {
    v10 = *(this + 16);
    if (v10)
    {
      *(this + 17) = v10;
      operator delete(v10);
    }

    v11 = *(this + 13);
    if (v11)
    {
      *(this + 14) = v11;
      operator delete(v11);
    }
  }

  if (*(this + 96) == 1)
  {
    v12 = *(this + 9);
    if (v12)
    {
      *(this + 10) = v12;
      operator delete(v12);
    }

    v13 = *(this + 6);
    if (v13)
    {
      *(this + 7) = v13;
      operator delete(v13);
    }
  }

  v14 = *(this + 3);
  if (v14)
  {
    *(this + 4) = v14;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    *(this + 1) = v15;
    operator delete(v15);
  }
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228AFC94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<nlv4_inference_orchestrator::orchestration::EmbeddingTensor,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<nlv4_inference_orchestrator::orchestration::EmbeddingTensor,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 72))
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v7 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v7;
      operator delete(v7);
    }

    *(a1 + 72) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v8;
    result = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = result;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

void nlv4_inference_orchestrator::orchestration::removeCLSSEPFromEmbeddings(void **this, const nlv4_inference_orchestrator::orchestration::EmbeddingTensor *a2)
{
  v4 = *(a2 + 3);
  v5 = *a2;
  v6 = *(a2 + 5);
  v7 = (*a2 + 4 * v6);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v7, ((4 * v4 - 4) * v6 + v5), ((4 * v4 - 4) * v6 - 4 * v6) >> 2);
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  if (&__p != this)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this, __p, v10, (v10 - __p) >> 2);
  }

  v8 = *(a2 + 5);
  this[3] = (v4 - 2);
  this[4] = 1;
  this[5] = v8;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2228AFE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::postProcessBertOutput(nlv4_inference_orchestrator::orchestration::EmbeddingTensor *a1@<X2>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>, uint64_t *a5@<X3>)
{
  nlv4_inference_orchestrator::orchestration::removeCLSSEPFromEmbeddings(&v28, a1);
  memset(&v24, 0, sizeof(v24));
  v26 = 0uLL;
  v27 = 0;
  if (*(a1 + 224) == 1)
  {
    nlv4_inference_orchestrator::orchestration::removeCLSSEPFromEmbeddings(&v20.__r_.__value_.__l.__data_, (a1 + 152));
    v24 = v20;
    v25 = __p;
    v26 = v22;
    v27 = v23;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(&v17, *a5, a5[1], 0x6DB6DB6DB6DB6DB7 * ((a5[1] - *a5) >> 4));
  v11 = v17;
  v10 = v18;
  if (v17 + 112 != v18)
  {
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      *v11 = *(v11 + 112);
      *(v11 + 16) = *(v11 + 128);
      *(v11 + 135) = 0;
      *(v11 + 112) = 0;
      v12 = v11 + 112;
      *(v11 + 24) = *(v11 + 136);
      *(v11 + 35) = *(v11 + 147);
      std::vector<std::string>::__vdeallocate((v11 + 56));
      *(v11 + 56) = *(v11 + 168);
      *(v11 + 72) = *(v11 + 184);
      *(v11 + 176) = 0;
      *(v11 + 184) = 0;
      *(v11 + 168) = 0;
      v13 = *(v11 + 208);
      v14 = v11 + 224;
      *(v11 + 80) = *(v11 + 192);
      *(v11 + 96) = v13;
      v11 += 112;
    }

    while (v14 != v10);
    v10 = v18;
    v11 = v12;
  }

  while (v10 != v11)
  {
    v10 -= 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v10);
  }

  v18 = v11;
  std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v11 - 112);
  v18 = v11 - 112;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
  }

  else
  {
    v20 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __p = *(a2 + 24);
  }

  v22 = 0uLL;
  v23 = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(&v22, v17, v18, 0x6DB6DB6DB6DB6DB7 * ((v18 - v17) >> 4));
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a4, v28, v29, (v29 - v28) >> 2);
  *(a4 + 3) = v30;
  a4[5] = v31;
  if (SHIBYTE(v33) < 0)
  {
    std::string::__init_copy_ctor_external(a4 + 2, v32, *(&v32 + 1));
  }

  else
  {
    *(a4 + 3) = v32;
    a4[8] = v33;
  }

  a4[9] = 0;
  a4[10] = 0;
  a4[11] = 0;
  v15 = v24.__r_.__value_.__r.__words[0];
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a4 + 9, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_, (v24.__r_.__value_.__l.__size_ - v24.__r_.__value_.__r.__words[0]) >> 2);
  *(a4 + 4) = v25;
  v16 = SHIBYTE(v27);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(a4 + 5, v26, *(&v26 + 1));
  }

  else
  {
    *(a4 + 15) = v26;
    a4[17] = v27;
  }

  *(a4 + 152) = 0;
  *(a4 + 144) = 1;
  *(a4 + 224) = 0;
  if (*(a1 + 144) == 1)
  {
    a4[19] = 0;
    a4[20] = 0;
    a4[21] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a4 + 19, *(a1 + 9), *(a1 + 10), (*(a1 + 10) - *(a1 + 9)) >> 2);
    *(a4 + 11) = *(a1 + 6);
    a4[24] = *(a1 + 14);
    if (*(a1 + 143) < 0)
    {
      std::string::__init_copy_ctor_external((a4 + 25), *(a1 + 15), *(a1 + 16));
    }

    else
    {
      *(a4 + 25) = *(a1 + 120);
      a4[27] = *(a1 + 17);
    }

    *(a4 + 224) = 1;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a4 + 29), v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a4 + 29) = v20;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a4 + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a4 + 32) = __p;
  }

  a4[35] = 0;
  a4[36] = 0;
  a4[37] = 0;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(a4 + 35, v22, *(&v22 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v22 + 1) - v22) >> 4));
  MEMORY[0x223DC31E0](a4 + 38, a3);
  v34 = &v22;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v34);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v20.__r_.__value_.__r.__words[0] = &v17;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (v16 < 0)
  {
    operator delete(v26);
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_2228B02F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  v31 = *v28;
  if (*v28)
  {
    *(v26 + 160) = v31;
    operator delete(v31);
  }

  if (*(v26 + 224) == 1)
  {
    nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(v28);
  }

  std::optional<nlv4_inference_orchestrator::orchestration::EmbeddingTensor>::~optional(v27);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(v26);
  nlv4_inference_orchestrator::orchestration::EmbedderRequest::~EmbedderRequest(&__p);
  __p = &a10;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a26);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor((v29 - 176));
  _Unwind_Resume(a1);
}

void sub_2228B03FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a15) < 0)
  {
    operator delete(a13);
  }

  JUMPOUT(0x2228B03D4);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228B0484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 112;
        std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::orchestration::BertPreprocessingOutput::~BertPreprocessingOutput(nlv4_inference_orchestrator::orchestration::BertPreprocessingOutput *this)
{
  MEMORY[0x223DC3200](this + 192);
  v4 = (this + 168);
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 160) == 1)
  {
    v2 = *(this + 17);
    if (v2)
    {
      *(this + 18) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 128) == 1)
  {
    v4 = (this + 104);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 10) = v3;
      operator delete(v3);
    }
  }

  v4 = (this + 48);
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vdeallocate(char **a1)
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
        v3 -= 112;
        std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v3);
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

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      sentencepiece::SentencePieceText_SentencePiece::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_2228B06EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabels(const void **this@<X0>, const sirinluexternal::NLContext *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = *(a2 + 11);
  v7 = *(a2 + 12);
  v8 = this + 14;
  if (v6 == v7)
  {
    v8 = this + 8;
  }

  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *v8, v8[1]);
    v6 = *(a2 + 11);
    v7 = *(a2 + 12);
  }

  else
  {
    v31 = *v8;
  }

  if (v6 == v7)
  {
    v9 = this + 20;
  }

  else
  {
    v9 = this + 26;
  }

  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *v9, v9[1]);
  }

  else
  {
    v30 = *v9;
  }

  for (i = *(a2 + 1); ; ++i)
  {
    if (i == *(a2 + 2))
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v30.__r_.__value_.__l.__data_, this + 47);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p, __p);
      goto LABEL_20;
    }

    v11 = *i;
    if (*(*i + 24) || *(v11 + 16) || *(v11 + 8))
    {
      break;
    }
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v30.__r_.__value_.__l.__data_, this + 44);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p, __p);
LABEL_20:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  for (j = *(a2 + 1); j != *(a2 + 2); j += 8)
  {
    if (*(*j + 16))
    {
      nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
    }
  }

  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  if (v13 != v14)
  {
    do
    {
      if (*(*v13 + 16))
      {
        nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
      }

      ++v13;
    }

    while (v13 != v14);
    v13 = *(a2 + 4);
    v14 = *(a2 + 5);
  }

  while (1)
  {
    if (v13 == v14)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 47);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p, __p);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 44);
      v16 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, __p);
      v17 = v16;
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
        if (!v17)
        {
          goto LABEL_52;
        }
      }

      else if (!v16)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v15 = *v13;
    if (*(*v13 + 24) || *(v15 + 16) || *(v15 + 8))
    {
      break;
    }

    ++v13;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 44);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p, __p);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 47);
  v18 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, __p);
  v19 = v18;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if (!v19)
    {
      goto LABEL_52;
    }
  }

  else if (!v18)
  {
    goto LABEL_52;
  }

LABEL_50:
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 20, this + 47);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(a3, __p);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_52:
  v20 = *(a2 + 11);
  v21 = *(a2 + 12);
  if (v20 != v21)
  {
    do
    {
      v22 = *v20;
      nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSystemDialogAct(this, *v20, __p);
      for (k = v29; k; k = *k)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, k + 2, (k + 2));
      }

      if (!*(v22 + 32))
      {
        nlv4_inference_orchestrator::context::ContextLabelsExtractor::handleBelowVerbPaths(v23, a3, this + 5, __p);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v29);
      v25 = __p[0];
      __p[0] = 0;
      if (v25)
      {
        operator delete(v25);
      }

      ++v20;
    }

    while (v20 != v21);
    v20 = *(a2 + 11);
    v21 = *(a2 + 12);
  }

  while (v20 != v21)
  {
    v26 = *v20;
    if ((*v20)[8] || v26[7] || v26[5] || v26[4] || v26[3] || v26[1])
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 17, this + 44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p, __p);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_74;
    }

    ++v20;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 17, this + 47);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, __p, __p);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, this + 50, (this + 50));
LABEL_74:
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::postProcessContextLabels(v27, a3);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_2228B0C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v30);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::context::Embedder::embed(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  __src = 0;
  v27 = 0;
  v28 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v25 = 0;
  }

  else
  {
    do
    {
      v6 = itfm_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(*a1, v3);
      TokenId = itfm_inference_orchestrator::vocabulary::Vocabulary::getTokenId(*a1, *a1);
      v8 = v6;
      if ((v9 & 1) != 0 && v8 == TokenId)
      {
        v10 = SNLPOSLoggerForCategory(2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 16);
          if (v11 >= 8)
          {
            v21 = SNLPOSLoggerForCategory(4);
            v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
            v12 = "<UNDEFINED_COMPONENT>";
            if (v22)
            {
              *buf = 136315394;
              *&buf[4] = "<UNDEFINED_COMPONENT>";
              *&buf[12] = 2048;
              *&buf[14] = v11;
              _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
              v12 = "<UNDEFINED_COMPONENT>";
            }
          }

          else
          {
            v12 = off_2784B6F30[v11];
          }

          v23 = v3;
          if (*(v3 + 23) < 0)
          {
            v23 = *v3;
          }

          *buf = 136315394;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v23;
          _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Warning: cannot embed OOV token '%s'.\n", buf, 0x16u);
        }
      }

      else
      {
        v13 = v27;
        if (v27 >= v28)
        {
          v15 = __src;
          v16 = v27 - __src;
          v17 = (v27 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v19 = v28 - __src;
          if ((v28 - __src) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v20);
          }

          *(4 * v17) = v8;
          v14 = 4 * v17 + 4;
          memcpy(0, v15, v16);
          v24 = __src;
          __src = 0;
          v27 = v14;
          v28 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v27 = v8;
          v14 = (v13 + 1);
        }

        v27 = v14;
      }

      v3 += 24;
    }

    while (v3 != v4);
    v25 = (v27 - __src) >> 2;
  }

  v29[0] = 1;
  v29[1] = v25;
  memset(buf, 0, sizeof(buf));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(buf, v29, buf, 2uLL);
}

void sub_2228B0FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(void *__dst, char *__src)
{
  if (*__src)
  {
    v3 = 0;
    do
    {
      v4 = &__src[2 * v3++];
    }

    while (*(v4 + 1));
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
    }

    if (v3 >= 0xB)
    {
      if ((v3 | 3) == 0xB)
      {
        v6 = 13;
      }

      else
      {
        v6 = (v3 | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v6);
    }

    *(__dst + 23) = v3;
    v5 = __dst;
    if (v3)
    {
      memmove(__dst, __src, 2 * v3);
      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    *(__dst + 23) = 0;
  }

  v5 = __dst;
LABEL_15:
  *(v5 + v3) = 0;
  return __dst;
}

void uaap::UPDataDetector::matchSpansInner(uint64_t result, unint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if (a3 && DDScannerScanString())
  {
    v24 = *a4;
    v25 = *(a4 + 2);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    v7 = DDScannerCopyResultsWithOptions();
    v9 = a2[1];
    v8 = a2[2];
    if (v9 >= v8)
    {
      v10 = *a2;
      v11 = v9 - *a2;
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) + 1;
      if (v12 > 0x666666666666666)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x333333333333333)
      {
        v14 = 0x666666666666666;
      }

      else
      {
        v14 = v12;
      }

      v29 = a2;
      if (v14)
      {
        if (v14 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = 8 * (v11 >> 3);
      v26 = 0;
      v27 = v15;
      *v15 = v24;
      *(v15 + 16) = v25;
      *(v15 + 24) = v7;
      *(v15 + 32) = MEMORY[0x277CBE550];
      v28 = (v15 + 40);
      v16 = v15 - v11;
      v32 = v15 - v11;
      v33 = v15 - v11;
      v30[0] = a2;
      v30[1] = &v32;
      v30[2] = &v33;
      if (v10 == v9)
      {
        v31 = 1;
      }

      else
      {
        v17 = v10;
        v18 = 8 * (v11 >> 3) - v11;
        do
        {
          v19 = *v17;
          *(v18 + 16) = *(v17 + 16);
          *v18 = v19;
          *v17 = 0;
          *(v17 + 8) = 0;
          v20 = *(v17 + 24);
          *(v17 + 16) = 0;
          *(v17 + 24) = 0;
          *(v18 + 24) = v20;
          *(v18 + 32) = *(v17 + 32);
          v17 += 40;
          v18 += 40;
        }

        while (v17 != v9);
        v33 = v18;
        v31 = 1;
        do
        {
          std::allocator_traits<std::allocator<uaap::UPDataDetectorResult>>::destroy[abi:ne200100]<uaap::UPDataDetectorResult,0>(v10);
          v10 += 40;
        }

        while (v10 != v9);
      }

      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap::UPDataDetectorResult>,uaap::UPDataDetectorResult*>>::~__exception_guard_exceptions[abi:ne200100](v30);
      v21 = *a2;
      *a2 = v16;
      v22 = a2[2];
      v23 = v28;
      *(a2 + 1) = v28;
      *&v28 = v21;
      *(&v28 + 1) = v22;
      v26 = v21;
      v27 = v21;
      std::__split_buffer<uaap::UPDataDetectorResult>::~__split_buffer(&v26);
      a2[1] = v23;
    }

    else
    {
      *(v9 + 16) = v25;
      *(v9 + 24) = v7;
      *v9 = v24;
      *(v9 + 32) = MEMORY[0x277CBE550];
      a2[1] = v9 + 40;
    }
  }
}

void sub_2228B1388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::SentencePieceProcessor::Encode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, sentencepiece::util::Status *a5@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a5)
  {
    sentencepiece::util::Status::~Status(a5);
    if (a4)
    {
      std::vector<std::basic_string<char16_t>>::clear[abi:ne200100](a4);
      sentencepiece::SentencePieceText::SentencePieceText(&v15, 0);
      (*(*a1 + 232))(a1, a2, a3, &v15);
      if (!*a5)
      {
        sentencepiece::util::Status::~Status(a5);
        if (v20)
        {
          v10 = v20 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (v19)
        {
          v11 = *(a4 + 8);
          v12 = 8 * v19;
          do
          {
            v13 = *(*v10 + 48);
            if (v11 >= *(a4 + 16))
            {
              v11 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
            }

            else
            {
              std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a4, (v13 & 0xFFFFFFFFFFFFFFFELL));
              ++v11;
            }

            *(a4 + 8) = v11;
            v10 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        sentencepiece::util::Status::Status(a5);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v15);
    }

    else
    {
      v15 = 13;
      v14 = std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "(", 1);
      MEMORY[0x223DC4920](&v16, 415);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "pieces", 6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v15, a5);
      v16 = *MEMORY[0x277D82828];
      *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
      v17 = MEMORY[0x277D82878] + 16;
      if (v22 < 0)
      {
        operator delete(__p);
      }

      v17 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v18);
      std::ostream::~ostream();
      MEMORY[0x223DC4C10](&v23);
    }
  }
}

double sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v38[11] = v3;
    v38[12] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = (*(v10 + 24) + *(v8 + 24));
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12;
              v12 = (v12 + 1);
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              v17 = (v17 - 1);
              if (!v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v38[0] = v37;
                  v33 = std::__hash_table<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,std::pair<std::string_view,std::string_view>>>>::__emplace_unique_key_args<std::string_view,std::piecewise_construct_t const&,std::tuple<std::string_view const&>,std::tuple<>>(v32, v37, &std::piecewise_construct, v38);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void std::vector<sentencepiece::unigram::anonymous namespace::Hypothesis *>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void itfm_inference_orchestrator::context::ContextFeaturizer::insertToFeatureStore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    itfm_inference_orchestrator::context::ContextFeaturizer::makeContextResponse();
  }

  v6 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 56);
    if (v7 >= 8)
    {
      v9 = SNLPOSLoggerForCategory(4);
      v8 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "<UNDEFINED_COMPONENT>";
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v14, 0x16u);
      }
    }

    else
    {
      v8 = off_2784B6F30[v7];
    }

    v14 = 136315138;
    v15 = v8;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Skipping insertion of ITFM context featurizer response into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled", &v14, 0xCu);
  }

  v10 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 56);
    if (v11 >= 8)
    {
      v13 = SNLPOSLoggerForCategory(4);
      v12 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "<UNDEFINED_COMPONENT>";
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v14, 0x16u);
      }
    }

    else
    {
      v12 = off_2784B6F30[v11];
    }

    v14 = 136315138;
    v15 = v12;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Unable to insert context featurizer response into FeatureStore", &v14, 0xCu);
  }
}

void sentencepiece::bpe::Model::SampleEncode(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v70 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(v56);
  if (*&v56[0])
  {
    sentencepiece::util::Status::~Status(v56);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sentencepiece::util::Status::~Status(v56);
  if (!a3)
  {
    goto LABEL_3;
  }

  v64 = 0;
  v65 = 0;
  v66 = 0;
  __p = 0;
  v61 = 0uLL;
  if (a3 >> 59)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(v56, a3, 0, &__p);
  v10 = (*(&v56[0] + 1) - (v61 - __p));
  memcpy(v10, __p, v61 - __p);
  v11 = __p;
  v12 = *(&v61 + 1);
  __p = v10;
  v61 = v56[1];
  *&v56[1] = v11;
  *(&v56[1] + 1) = v12;
  *&v56[0] = v11;
  *(&v56[0] + 1) = v11;
  if (v11)
  {
    operator delete(v11);
  }

  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  memset(v56 + 8, 0, 40);
  v57 = 256;
  v55[0] = a1;
  v55[1] = v56;
  v55[2] = &__p;
  v55[3] = &v64;
  v55[4] = v58;
  *&v56[0] = &unk_2835E3B08;
  v13 = 1;
  do
  {
    v63 = 0uLL;
    v14 = sentencepiece::normalizer::PrefixMatcher::PrefixMatch(a1[2], a2, a3, &v62 + 8);
    *&v63 = a2;
    *(&v63 + 1) = v14;
    a3 -= v14;
    if (a3)
    {
      v15 = v13;
    }

    else
    {
      v15 = -1;
    }

    LODWORD(v62) = v13 - 2;
    DWORD1(v62) = v15;
    v16 = v61;
    if (v61 >= *(&v61 + 1))
    {
      v19 = (v61 - __p) >> 5;
      v20 = v19 + 1;
      if ((v19 + 1) >> 59)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v61 + 1) - __p;
      if ((*(&v61 + 1) - __p) >> 4 > v20)
      {
        v20 = v21 >> 4;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFE0)
      {
        v22 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      std::__split_buffer<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol,std::allocator<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::Symbol> &>::__split_buffer(&v67, v22, v19, &__p);
      v23 = v69;
      v24 = v63;
      *v69 = v62;
      *(v23 + 16) = v24;
      *&v69 = v69 + 32;
      v25 = &v68[-(v61 - __p)];
      memcpy(v25, __p, v61 - __p);
      v26 = __p;
      v27 = *(&v61 + 1);
      __p = v25;
      v28 = v69;
      v61 = v69;
      *&v69 = v26;
      *(&v69 + 1) = v27;
      v67 = v26;
      v68 = v26;
      if (v26)
      {
        v54 = v28;
        operator delete(v26);
        v28 = v54;
      }

      v18 = v28;
    }

    else
    {
      v17 = v63;
      *v61 = v62;
      *(v16 + 16) = v17;
      v18 = (v16 + 32);
    }

    a2 += v14;
    *&v61 = v18;
    ++v13;
  }

  while (a3);
  if (__p != v18)
  {
    if ((v18 - __p) >= 0x21)
    {
      v29 = 1;
      do
      {
        sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v55, v29 - 1, v29);
        ++v29;
      }

      while (v29 < (v61 - __p) >> 5);
    }

    v30 = v64;
    v31 = v65;
    if (v64 == v65)
    {
LABEL_55:
      *(&v63 + 1) = 0;
      operator new();
    }

    RandomGenerator = 0;
    while (1)
    {
      v33 = *v30;
      v34 = (v31 - v30) >> 3;
      if (v34 >= 2)
      {
        v35 = 0;
        v36 = v30;
        do
        {
          v37 = v36;
          v36 = (v36 + 8 * v35 + 8);
          v38 = 2 * v35;
          v35 = (2 * v35) | 1;
          v39 = v38 + 2;
          if (v39 < v34)
          {
            v40 = *(v36 + 1);
            v41 = *(*v36 + 8);
            v42 = *(v40 + 8);
            if (v41 < v42 || v41 == v42 && **v36 > *v40)
            {
              v36 = (v36 + 8);
              v35 = v39;
            }
          }

          *v37 = *v36;
        }

        while (v35 <= ((v34 - 2) >> 1));
        v43 = (v31 - 8);
        if (v36 == v43)
        {
          *v36 = v33;
        }

        else
        {
          *v36 = *v43;
          *v43 = v33;
          v30 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(v30, v36 + 8, ((v36 + 8) - v30) >> 3);
        }
      }

      v65 = (v65 - 8);
      v44 = *v33;
      v45 = *v33;
      v46 = __p;
      v47 = *(__p + 4 * v45 + 3);
      if (!v47)
      {
        goto LABEL_54;
      }

      v48 = v33[1];
      v49 = *(__p + 4 * v48 + 3);
      if (!v49 || v49 + v47 != *(v33 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!RandomGenerator)
        {
          RandomGenerator = sentencepiece::random::GetRandomGenerator(v30);
        }

        v50 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator);
        if ((v50 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(RandomGenerator) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v46 = __p;
        v44 = *v33;
        v48 = v33[1];
        v45 = *v33;
      }

      v51 = &v46[8 * v45];
      v52 = &v46[8 * v48];
      *(v51 + 3) += *(v52 + 3);
      v53 = *(v52 + 1);
      *(v51 + 1) = v53;
      if ((v53 & 0x80000000) == 0)
      {
        v46[8 * v53] = v44;
      }

      *(v52 + 2) = "";
      *(v52 + 3) = 0;
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v55, *(__p + 8 * v45), v44);
      sentencepiece::bpe::Model::SampleEncode(std::string_view,float)const::$_1::operator()(v55, *v33, *(__p + 8 * *v33 + 1));
LABEL_54:
      v30 = v64;
      v31 = v65;
      if (v64 == v65)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(v56);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(v58);
  if (__p)
  {
    *&v61 = __p;
    operator delete(__p);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }
}

void sub_2228B24D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::~__value_func[abi:ne200100](va);
  sentencepiece::model::FreeList<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair>::~FreeList(&a18);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::~__hash_table(&a25);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v34 = *(v32 - 208);
  if (v34)
  {
    *(v32 - 200) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPairComparator &,std::__wrap_iter<sentencepiece::bpe::Model::SampleEncode(std::string_view,float)::SymbolPair **>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

void sub_2228B2670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlv4_inference_orchestrator::orchestration::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2228B26F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::orchestration::Token>,nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a4 + v7), *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = *(a2 + v7 + 24);
      v13 = *(a2 + v7 + 35);
      *(a4 + v7 + 56) = 0;
      v14 = (a4 + v7 + 56);
      *(v14 - 21) = v13;
      *(v14 - 2) = v12;
      v14[1] = 0;
      v14[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, *(a2 + v7 + 56), *(a2 + v7 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 64) - *(a2 + v7 + 56)) >> 3));
      v15 = *(a2 + v7 + 96);
      *(v11 + 80) = *(a2 + v7 + 80);
      *(v11 + 96) = v15;
      v7 += 112;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2228B27F4(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 112;
    std::allocator<nlv4_inference_orchestrator::orchestration::Token>::destroy[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::preprocessRequest(uint64_t a1, uint64_t a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = 0;
  memset(&v4[3], 0, 73);
  nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::reformulateTokens(a1, (a2 + 48), v4);
  std::string::basic_string[abi:ne200100]<0>(&v18, "[CLS]");
  *v19 = 0;
  *&v19[8] = 0;
  *&v19[23] = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *&v19[16] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "[SEP]");
  v11 = 0;
  v12 = 0;
  *(v13 + 7) = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13[0] = 0;
  v17 = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v18;
  }

  *v23 = *v19;
  *&v23[11] = *&v19[11];
  memset(v24, 0, sizeof(v24));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v24, v20, SDWORD2(v20), 0xAAAAAAAAAAAAAAABLL * ((*(&v20 + 1) - v20) >> 3));
  v25 = *&v21[1];
  v26 = *&v21[3];
  memset(v3, 0, sizeof(v3));
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token const*>(v3, &v22, v27, 1uLL);
}

void sub_2228B327C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t **a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char *__p)
{
  a11 = &a14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a14 = &a17;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v66 = *(v64 - 224);
  if (v66)
  {
    *(v64 - 216) = v66;
    operator delete(v66);
  }

  if (__p)
  {
    a64 = __p;
    operator delete(__p);
  }

  MEMORY[0x223DC3200](&a49);
  __p = &a21;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  a49 = &a24;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&a49);
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType::~EspressoBertModelInputType(&a27);
  _Unwind_Resume(a1);
}

uint64_t std::optional<snlp::common::tensor::InferenceTensor>::operator=[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }

    v3 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
      operator delete(v3);
    }

    *(a1 + 48) = 0;
  }

  return a1;
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::forward(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this, const nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  std::chrono::steady_clock::now();
  v5 = SNLPOSLoggerForCategory(7);
  v6 = os_signpost_id_generate(v5);
  v7 = SNLPOSLoggerForCategory(7);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "OWL Input Preprocess", "", buf, 2u);
    }
  }

  v9 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Input Preprocess", buf, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generateBertInput(this, a3);
}

void sub_2228B3F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a53);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a62);
  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a65);
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelOutputType::~EspressoBertModelOutputType(v65);
  nlv4_inference_orchestrator::inference_engine::BertModuleOutputType::~BertModuleOutputType(&STACK[0x240]);
  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

uint64_t std::optional<nlv4_inference_orchestrator::orchestration::EmbeddingTensor>::operator=[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    *(a1 + 72) = 0;
  }

  return a1;
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void nlv4_inference_orchestrator::orchestration::EmbedderResponse::~EmbedderResponse(void **this)
{
  MEMORY[0x223DC3200](this + 38);
  v5 = this + 35;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  if (*(this + 224) == 1)
  {
    if (*(this + 223) < 0)
    {
      operator delete(this[25]);
    }

    v2 = this[19];
    if (v2)
    {
      this[20] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 144) == 1)
  {
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }

    v3 = this[9];
    if (v3)
    {
      this[10] = v3;
      operator delete(v3);
    }
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v4 = *this;
  if (*this)
  {
    this[1] = v4;
    operator delete(v4);
  }
}

void psc_inference_orchestrator::orchestration::PSCOverrideGenerator::sdaIntercomPayloadPromptOverride(itfm_inference_orchestrator::vocabulary::Vocabulary **a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[56] = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    if (snlp::common::text_uso_graph::isIntercomPayloadPrompt(v5))
    {
      v6 = 0;
      psc_inference_orchestrator::orchestration::PSCOverrideGenerator::buildPSCOverrideITFMResponse(a1, &v6, buf);
    }
  }
}

void sub_2228B44C0(_Unwind_Exception *a1, uint64_t a2, std::__split_buffer<std::string> *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::__split_buffer<std::string>::~__split_buffer(&a11);
  if (*(v11 + 56) == 1)
  {
    MEMORY[0x223DC3310](v11);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::Embedder::embed(nlv4_inference_orchestrator::context::Embedder *this, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  __src = 0;
  v18 = 0;
  v19 = 0;
  v4 = *(a2 + 16);
  if (v4)
  {
    do
    {
      v5 = v4 + 2;
      v6 = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(this, (v4 + 2));
      if ((*(this + 26) & 1) != 0 && v6 == *(this + 12))
      {
        v7 = SNLPOSLoggerForCategory(1);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          if (*(v4 + 39) < 0)
          {
            v5 = *v5;
          }

          *buf = 136315650;
          *&buf[4] = "NLv4";
          *&buf[12] = 2080;
          *&buf[14] = "[insights-snlp-nlv4]: ";
          *&buf[22] = 2080;
          v22 = v5;
          _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] %sRejecting '%s'.\n", buf, 0x20u);
        }
      }

      else
      {
        v8 = v18;
        if (v18 >= v19)
        {
          v10 = __src;
          v11 = v18 - __src;
          v12 = (v18 - __src) >> 2;
          v13 = v12 + 1;
          if ((v12 + 1) >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v14 = v19 - __src;
          if ((v19 - __src) >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v15);
          }

          *(4 * v12) = v6;
          v9 = 4 * v12 + 4;
          memcpy(0, v10, v11);
          v16 = __src;
          __src = 0;
          v18 = v9;
          v19 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v18 = v6;
          v9 = (v8 + 1);
        }

        v18 = v9;
      }

      v4 = *v4;
    }

    while (v4);
    if (__src != v18)
    {
      v20[0] = 1;
      v20[1] = (v18 - __src) >> 2;
      memset(buf, 0, sizeof(buf));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(buf, v20, buf, 2uLL);
    }
  }

  nlv4_inference_orchestrator::context::Embedder::setEmptyContext(this);
}

void sub_2228B47C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v20);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::logFeatureTensor(unsigned int *a1, uint64_t **a2)
{
  v70[20] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2 - *a2 != 24)
  {
    v7 = SNLPOSLoggerForCategory(4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v8 = *a1;
    if (v8 >= 8)
    {
      v13 = SNLPOSLoggerForCategory(4);
      v9 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v61 = 2048;
        *v62 = v8;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v9 = off_2784B6F30[v8];
    }

    *buf = 136315138;
    *&buf[4] = v9;
    v14 = "[%s] Warning: Featurised spans shape not 3-dim";
    goto LABEL_54;
  }

  v5 = 1;
  while (v3 != v2)
  {
    v6 = *v3++;
    v5 = (v5 * v6);
  }

  v10 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a1;
    if (v11 >= 8)
    {
      v15 = SNLPOSLoggerForCategory(4);
      v12 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v61 = 2048;
        *v62 = v11;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v12 = off_2784B6F30[v11];
    }

    v16 = **a2;
    v17 = (*a2)[1];
    v18 = (*a2)[2];
    *buf = 136316162;
    *&buf[4] = v12;
    v61 = 2048;
    *v62 = v16;
    *&v62[8] = 2048;
    v63 = v17;
    v64 = 2048;
    v65 = v18;
    v66 = 2048;
    v67 = v5;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] [Span Tensor] shape=%lu,%lu,%lu num_elems=%lu", buf, 0x34u);
  }

  if (v5 != (a2[4] - a2[3]) >> 2)
  {
    v7 = SNLPOSLoggerForCategory(4);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v42 = *a1;
    if (v42 >= 8)
    {
      v48 = SNLPOSLoggerForCategory(4);
      v43 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v61 = 2048;
        *v62 = v42;
        _os_log_impl(&dword_22284A000, v48, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v43 = off_2784B6F30[v42];
    }

    *buf = 136315138;
    *&buf[4] = v43;
    v14 = "[%s] Warning: Span shape not consistent with data";
LABEL_54:
    _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, v14, buf, 0xCu);
    return;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v19 = *a2;
  v20 = **a2;
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      if (v19[1])
      {
        v22 = 0;
        do
        {
          v23 = v19[2];
          if (v23)
          {
            for (j = 0; j < v23; ++j)
            {
              v25 = j + v23 * (v22 + i * v19[1]);
              v26 = a2[3];
              if (v25 < (a2[4] - v26) >> 2)
              {
                v27 = *(v26 + v25);
                v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62[2], "[Span Token] i=", 15);
                v29 = MEMORY[0x223DC4940](v28, i);
                v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " j=", 3);
                v31 = MEMORY[0x223DC4940](v30, v22);
                v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " k=", 3);
                v33 = MEMORY[0x223DC4940](v32, j);
                v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " id=", 4);
                v35 = MEMORY[0x223DC4940](v34, v27);
                v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " token=", 7);
                nlv4_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken(&__p, (a1 + 12), v27);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __p.__r_.__value_.__l.__size_;
                }

                v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, p_p, size);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\n", 1);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v19 = *a2;
              }

              v23 = v19[2];
            }
          }

          ++v22;
        }

        while (v22 < v19[1]);
        v20 = *v19;
      }
    }
  }

  v40 = *a1;
  if (v40 > 6)
  {
    v41 = 4;
  }

  else
  {
    v41 = dword_2229DA4F4[v40];
  }

  v44 = SNLPOSLoggerForCategory(v41);
  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_81;
  }

  v45 = *a1;
  if (*a1 > 3)
  {
    if (v45 > 5)
    {
      if (v45 == 6)
      {
        v46 = "SSU";
LABEL_75:
        v47 = "[insights-snlp-ssu]: ";
        goto LABEL_76;
      }

      if (v45 == 7)
      {
        v46 = "UNKNOWN";
        goto LABEL_67;
      }
    }

    else
    {
      if (v45 == 4)
      {
        v46 = "PSC";
LABEL_71:
        v47 = "[insights-snlp-psc]: ";
        goto LABEL_76;
      }

      if (v45 == 5)
      {
        v46 = "LVC";
        goto LABEL_59;
      }
    }
  }

  else if (v45 > 1)
  {
    if (v45 == 2)
    {
      v46 = "OWL";
LABEL_73:
      v47 = "[insights-snlp-owl]: ";
      goto LABEL_76;
    }

    if (v45 == 3)
    {
      v46 = "UaaP";
      goto LABEL_63;
    }
  }

  else
  {
    if (!v45)
    {
      v47 = "[insights-snlp-nlv4]: ";
      v46 = "NLv4";
      goto LABEL_76;
    }

    if (v45 == 1)
    {
      v46 = "SNLC";
LABEL_50:
      v47 = "[insights-snlp-snlc]: ";
      goto LABEL_76;
    }
  }

  v52 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *v54 = 136315394;
    *&v54[4] = "<UNDEFINED_COMPONENT>";
    v55 = 2048;
    v56 = v45;
    _os_log_impl(&dword_22284A000, v52, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v54, 0x16u);
  }

  v45 = *a1;
  v46 = "<UNDEFINED_COMPONENT>";
  if (*a1 > 2)
  {
    if (v45 <= 4)
    {
      if (v45 != 3)
      {
        if (v45 != 4)
        {
          goto LABEL_67;
        }

        goto LABEL_71;
      }

LABEL_63:
      v47 = "[insights-snlp-uaap]: ";
      goto LABEL_76;
    }

    if (v45 != 5)
    {
      if (v45 != 6)
      {
        goto LABEL_67;
      }

      goto LABEL_75;
    }

LABEL_59:
    v47 = "[insights-snlp-lvc]: ";
    goto LABEL_76;
  }

  if (v45)
  {
    if (v45 == 1)
    {
      goto LABEL_50;
    }

    if (v45 != 2)
    {
LABEL_67:
      v49 = SNLPOSLoggerForCategory(4);
      v47 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v54 = 136315394;
        *&v54[4] = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v55 = 2048;
        v56 = v45;
        _os_log_impl(&dword_22284A000, v49, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v54, 0x16u);
      }

      goto LABEL_76;
    }

    goto LABEL_73;
  }

  v47 = "[insights-snlp-nlv4]: ";
LABEL_76:
  std::stringbuf::str();
  if (v57 >= 0)
  {
    v50 = v54;
  }

  else
  {
    v50 = *v54;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
  *(__p.__r_.__value_.__r.__words + 4) = v46;
  WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
  *(&__p.__r_.__value_.__r.__words[1] + 6) = v47;
  HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
  v59 = v50;
  _os_log_impl(&dword_22284A000, v44, OS_LOG_TYPE_DEBUG, "[%s] %s%s", &__p, 0x20u);
  if (v57 < 0)
  {
    operator delete(*v54);
  }

LABEL_81:
  *buf = *MEMORY[0x277D82818];
  v51 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v62[2] = v51;
  v63 = MEMORY[0x277D82878] + 16;
  if (v69 < 0)
  {
    operator delete(v68);
  }

  v63 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v64);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](v70);
}

void sub_2228B5204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a22 = *MEMORY[0x277D82818];
  v42 = *(MEMORY[0x277D82818] + 72);
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82818] + 64);
  a24 = v42;
  a25 = MEMORY[0x277D82878] + 16;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  a25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a26);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC4C10](&a41);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::insertToFeatureStore(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::createLoggingSpanFeaturizerResponse();
  }

  v5 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a1;
    if (v6 >= 8)
    {
      v8 = SNLPOSLoggerForCategory(4);
      v7 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "<UNDEFINED_COMPONENT>";
        v15 = 2048;
        v16 = v6;
        _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v7 = off_2784B6F30[v6];
    }

    *buf = 136315138;
    v14 = v7;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "[%s] Skipping insertion of matched spans featurized response into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled", buf, 0xCu);
  }

  v9 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *a1;
    if (v10 >= 8)
    {
      v12 = SNLPOSLoggerForCategory(4);
      v11 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "<UNDEFINED_COMPONENT>";
        v15 = 2048;
        v16 = v10;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v11 = off_2784B6F30[v10];
    }

    *buf = 136315138;
    v14 = v11;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "[%s] Unable to insert span featurizer response into FeatureStore", buf, 0xCu);
  }
}

void std::vector<std::pair<nlv4_inference_orchestrator::orchestration::IndexedToken,std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 168;
        v7 = (v4 - 24);
        std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v7);
        MEMORY[0x223DC3250](v6);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlv4_inference_orchestrator::context::ContextFeaturizer::featurize(uint64_t a1)
{
  *__p = 0u;
  v4 = 0u;
  v5 = 1065353216;
  nlv4_inference_orchestrator::context::Embedder::embed((a1 + 72), __p);
}

void sub_2228B59F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a18);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::Embedder::setEmptyContext(nlv4_inference_orchestrator::context::Embedder *this)
{
  v4[6] = *MEMORY[0x277D85DE8];
  __p = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken(this, this + 208);
  memset(v4, 0, 24);
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v4, &__p, &__p_4);
}

void sub_2228B5B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::context::ContextFeaturizer::featurize(const void **a1, _BYTE *a2, sirinluexternal::NLContext *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabels(a1 + 38, a3, v16);
  *v13 = 0u;
  *v14 = 0u;
  v15 = 1065353216;
  if (_os_feature_enabled_impl())
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractSalientEntityContextLabels(__p, a1 + 38, a3);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(v13, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&__p_14[2]);
    v7 = *__p;
    *__p = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = v14[0];
    if (v14[0])
    {
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v16, v8 + 2, (v8 + 2));
        v8 = *v8;
      }

      while (v8);
    }
  }

  v9 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136315394;
    *&__p[4] = "NLv4";
    __p_12 = 2080;
    *__p_14 = "[insights-snlp-nlv4]: ";
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "[%s] %sFeaturizing the following context labels in NLv4ParserRequest.\n", __p, 0x16u);
  }

  v10 = v17;
  if (v17)
  {
    do
    {
      v11 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = v10 + 16;
        if (v10[39] < 0)
        {
          v12 = *v12;
        }

        *__p = 136315650;
        *&__p[4] = "NLv4";
        __p_12 = 2080;
        *__p_14 = "[insights-snlp-nlv4]: ";
        *&__p_14[8] = 2080;
        *&v21 = v12;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] %s%s", __p, 0x20u);
      }

      v10 = *v10;
    }

    while (v10);
  }

  a2[48] = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v16, a1) != 0;
  a2[49] = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v16, a1 + 3) != 0;
  a2[50] = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v16, a1 + 6) != 0;
  nlv4_inference_orchestrator::context::Embedder::embed((a1 + 9), v16);
}

void sub_2228B5F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::EspressoITFME5MLModel::forward(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v10, 0, sizeof(v10));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v10, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  memset(v11, 0, sizeof(v11));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v11, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  memset(v12, 0, sizeof(v12));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v12, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
  memset(v13, 0, sizeof(v13));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  memset(v14, 0, sizeof(v14));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v14, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  memset(v15, 0, sizeof(v15));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 2);
  memset(v16, 0, sizeof(v16));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v16, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  memset(v17, 0, sizeof(v17));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v17, *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::forward(*(a1 + 8), v10, &v6);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, v6, v7, (v7 - v6) >> 3);
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3 + 3, __p, v9, (v9 - __p) >> 2);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(v10);
}

void sub_2228B6100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  v36 = *v34;
  if (*v34)
  {
    *(v34 + 8) = v36;
    operator delete(v36);
  }

  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(&a9);
  nlv4_inference_orchestrator::inference_engine::TransformerDecoderOutputType::~TransformerDecoderOutputType(&a15);
  _Unwind_Resume(a1);
}

void sub_2228B61B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2228B61ACLL);
}

uint64_t itfm_inference_orchestrator::inference_engine::ITFME5MLModule::forward@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2[1] - *a2 <= 8uLL || a2[13] - a2[12] <= 8uLL || (v5 = a2[6], (a2[7] - v5) <= 0x10))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::reshapeStream(v10, a1, *(*a2 + 8), *(v5 + 16));
  E5RT::ExecutionStreamOperation::ReshapeOperation();
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::bindPorts(a1);
  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::setInputs(a1, a2);
  v7 = *(a1 + 184);
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(*(a1 + 24));
  E5RT::ExecutionStream::ResetStream(*(a1 + 24));
  itfm_inference_orchestrator::inference_engine::ITFME5MLModule::getOutputs(a1, a3);
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::unbindPorts(a1);
  return std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(v10);
}

void sub_2228B62C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::string *a12, void *__p, uint64_t a14, void *__pa, char a16, uint64_t a17, ...)
{
  va_start(va, a17);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v17);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void itfm_inference_orchestrator::inference_engine::ITFME5MLModule::reshapeStream(uint64_t *__return_ptr a1@<X8>, itfm_inference_orchestrator::inference_engine::ITFME5MLModule *this@<X0>, unsigned int a3@<W1>, unsigned int a5@<W3>)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(this + 88);
    if (v10 >= 8)
    {
      v12 = SNLPOSLoggerForCategory(4);
      v11 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        *&buf[12] = 2048;
        *&buf[14] = v10;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v11 = off_2784B6F30[v10];
    }

    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "[%s] Reshaping encoder input stream.", buf, 0xCu);
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(buf, "utterance_tokens_embedder_emb_dim");
  v13 = *(this + 88);
  if (v13 >= 8)
  {
    v15 = SNLPOSLoggerForCategory(4);
    v14 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      v26 = "<UNDEFINED_COMPONENT>";
      v27 = 2048;
      v28 = v13;
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v25, 0x16u);
    }
  }

  else
  {
    v14 = off_2784B6F30[v13];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v14);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 34, buf))
  {
    v16 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 34, buf);
    if (!v16)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v16 + 16) == 1)
    {
      v17 = 0;
      goto LABEL_25;
    }

    v18 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = __p;
      if (v23 < 0)
      {
        v21 = __p[0];
      }

      *v25 = 136315138;
      v26 = v21;
      v20 = "[%s] Could not reshape because the relevant dimensions could not be read from the config.";
LABEL_23:
      _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, v20, v25, 0xCu);
    }
  }

  else
  {
    v18 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = __p;
      if (v23 < 0)
      {
        v19 = __p[0];
      }

      *v25 = 136315138;
      v26 = v19;
      v20 = "[%s] Could not reshape because the relevant dimensions could not be found in the config.";
      goto LABEL_23;
    }
  }

  v17 = 1;
LABEL_25:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if ((buf[23] & 0x80000000) == 0)
  {
    if (v17)
    {
      return;
    }

LABEL_31:
    __p[0] = 1;
    __p[1] = a3;
    v23 = a5;
    memset(buf, 0, 24);
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(buf, __p, buf, 3uLL);
  }

  operator delete(*buf);
  if ((v17 & 1) == 0)
  {
    goto LABEL_31;
  }
}

void sub_2228B6B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  E5RT::TensorDataType::~TensorDataType(&a25);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<E5RT::OperandDescriptor const>>>>::~__hash_table(v25);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::postProcessContextLabels(uint64_t a1, uint64_t a2)
{
  *v26 = 0u;
  *v27 = 0u;
  v28 = 1065353216;
  for (i = *(a2 + 16); i; i = *i)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ".primitive_String");
    v4 = *(i + 39);
    if (v4 < 0)
    {
      v5 = i[2];
      v6 = i[3];
    }

    else
    {
      v5 = (i + 2);
      v6 = *(i + 39);
    }

    if ((v31 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v31 & 0x80u) == 0)
    {
      v8 = v31;
    }

    else
    {
      v8 = __p[1];
    }

    if (v8)
    {
      if (v6 >= v8)
      {
        v9 = &v5[v6];
        v10 = *v7;
        v11 = v5;
        do
        {
          v12 = v6 - v8;
          if (v12 == -1)
          {
            break;
          }

          v13 = memchr(v11, v10, v12 + 1);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          if (!memcmp(v13, v7, v8))
          {
            if (v14 == v9 || v14 - v5 == -1)
            {
              break;
            }

            goto LABEL_22;
          }

          v11 = v14 + 1;
          v6 = v9 - (v14 + 1);
        }

        while (v6 >= v8);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v26, i + 2, (i + 2));
      goto LABEL_33;
    }

LABEL_22:
    if ((v4 & 0x80000000) != 0)
    {
      v15 = i[2];
      v4 = i[3];
      if (v8)
      {
LABEL_24:
        v16 = &v15[v4];
        if (v4 >= v8)
        {
          v19 = *v7;
          v20 = v15;
          do
          {
            if (v4 - v8 == -1)
            {
              break;
            }

            v21 = memchr(v20, v19, v4 - v8 + 1);
            if (!v21)
            {
              break;
            }

            v17 = v21;
            if (!memcmp(v21, v7, v8))
            {
              goto LABEL_26;
            }

            v20 = v17 + 1;
            v4 = v16 - (v17 + 1);
          }

          while (v4 >= v8);
        }

        v17 = v16;
LABEL_26:
        if (v17 == v16)
        {
          v18 = -1;
        }

        else
        {
          v18 = v17 - v15;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v15 = (i + 2);
      if (v8)
      {
        goto LABEL_24;
      }
    }

    v18 = 0;
LABEL_31:
    std::string::basic_string(&v29, (i + 2), 0, v18, &v32);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v26, &v29.__r_.__value_.__l.__data_, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

LABEL_33:
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a2, v26);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v27[0]);
  v22 = v26[0];
  v26[0] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  nlv4_inference_orchestrator::context::generateUserStatedTaskPaths(v26, *(a2 + 16));
  v23 = v27[0];
  if (v27[0])
  {
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, v23 + 2, (v23 + 2));
      v23 = *v23;
    }

    while (v23);
    v24 = v27[0];
  }

  else
  {
    v24 = 0;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v24);
  v25 = v26[0];
  v26[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }
}

void sub_2228B6E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void nlv4_inference_orchestrator::context::generateUserStatedTaskPaths(uint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2)
  {
    v2 = a2;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v39, "SystemOffered.offered_act.UserStatedTask");
      std::string::basic_string[abi:ne200100]<0>(v37, "SystemOffered.offered_act.UserWantedToProceed");
      v3 = *(v2 + 39);
      if (v3 < 0)
      {
        v4 = v2[2];
        v5 = v2[3];
      }

      else
      {
        v4 = v2 + 2;
        v5 = *(v2 + 39);
      }

      if ((v41 & 0x80u) == 0)
      {
        v6 = &v39;
      }

      else
      {
        v6 = v39;
      }

      if ((v41 & 0x80u) == 0)
      {
        v7 = v41;
      }

      else
      {
        v7 = v40;
      }

      if (v7)
      {
        if (v5 >= v7)
        {
          v8 = v4 + v5;
          v9 = *v6;
          v10 = v4;
          while (1)
          {
            v11 = v5 - v7;
            if (v11 == -1)
            {
              break;
            }

            v12 = memchr(v10, v9, v11 + 1);
            if (!v12)
            {
              break;
            }

            v13 = v12;
            if (!memcmp(v12, v6, v7))
            {
              if (v13 == v8 || v13 - v4 == -1)
              {
                goto LABEL_55;
              }

              goto LABEL_22;
            }

            v10 = (v13 + 1);
            v5 = v8 - (v13 + 1);
            if (v5 < v7)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_22:
      if ((v3 & 0x80000000) != 0)
      {
        v14 = v2[2];
        v3 = v2[3];
        if (v7)
        {
LABEL_24:
          v15 = v14 + v3;
          if (v3 >= v7)
          {
            v28 = *v6;
            v29 = v14;
            do
            {
              if (v3 - v7 == -1)
              {
                break;
              }

              v30 = memchr(v29, v28, v3 - v7 + 1);
              if (!v30)
              {
                break;
              }

              v16 = v30;
              if (!memcmp(v30, v6, v7))
              {
                goto LABEL_26;
              }

              v29 = (v16 + 1);
              v3 = v15 - (v16 + 1);
            }

            while (v3 >= v7);
          }

          v16 = v15;
LABEL_26:
          if (v16 == v15)
          {
            v17 = -1;
          }

          else
          {
            v17 = v16 - v14;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v14 = v2 + 2;
        if (v7)
        {
          goto LABEL_24;
        }
      }

      v17 = 0;
LABEL_31:
      std::string::basic_string(&v33, (v2 + 2), 0, v17, &v32);
      if ((v38 & 0x80u) == 0)
      {
        v18 = v37;
      }

      else
      {
        v18 = v37[0];
      }

      if ((v38 & 0x80u) == 0)
      {
        v19 = v38;
      }

      else
      {
        v19 = v37[1];
      }

      v20 = std::string::append(&v33, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = v41;
      if ((v41 & 0x80u) != 0)
      {
        v22 = v40;
      }

      v23 = *(v2 + 39);
      if ((v23 & 0x8000000000000000) != 0)
      {
        v23 = v2[3];
      }

      std::string::basic_string(&v32, (v2 + 2), v22 + v17, v23, v42);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v32;
      }

      else
      {
        v24 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__r_.__value_.__l.__size_;
      }

      v26 = std::string::append(&v34, v24, size);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v36 = v26->__r_.__value_.__r.__words[2];
      *__p = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, __p, __p);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_55:
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (v41 < 0)
      {
        operator delete(v39);
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_2228B7268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a10);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::Embedder::logFeatureTensor(nlv4_inference_orchestrator::vocabulary::Vocabulary *a1, char **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 16)
  {
    v18 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 0;
    v19 = "Warning: Context shape not 2-dim";
LABEL_23:
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 2u);
    return;
  }

  v4 = *(*a2 + 1) * **a2;
  v5 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = **a2;
    v6 = *(*a2 + 1);
    *buf = 134218496;
    v22 = v7;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v4;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "[NLv4IO Context Tensor] shape=%lu,%lu num_elems=%lu", buf, 0x20u);
  }

  if (v4 != (a2[4] - a2[3]) >> 2)
  {
    v18 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 0;
    v19 = "Warning: Context shape not consistent with data";
    goto LABEL_23;
  }

  v8 = *a2;
  v9 = **a2;
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = *(v8 + 1);
      if (v11)
      {
        for (j = 0; j < v11; ++j)
        {
          v13 = j + i * v11;
          v14 = a2[3];
          if (v13 < (a2[4] - v14) >> 2)
          {
            v15 = *(v14 + v13);
            v16 = SNLPOSLoggerForCategory(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              nlv4_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken(&__p, a1, v15);
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 134218754;
              v22 = i;
              v23 = 2048;
              v24 = j;
              v25 = 2048;
              v26 = v15;
              v27 = 2080;
              v28 = p_p;
              _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_DEBUG, "[NLv4IO Context Token] i=%lu j=%lu id=%lu token=%s", buf, 0x2Au);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          v8 = *a2;
          v11 = *(*a2 + 1);
        }

        v9 = *v8;
      }
    }
  }
}

void *std::__function::__value_func<void ()(std::string_view,std::vector<std::pair<std::string_view,int>> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_2228B77F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void nlv4_inference_orchestrator::context::ContextFeaturizer::insertToFeatureStore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_os_feature_enabled_impl())
  {
    nlv4_inference_orchestrator::context::ContextFeaturizer::makeContextResponse();
  }

  v4 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Skipping insertion of NLv4 context featurizer response into FeatureStore because SNLPFeatureStoreEnabled feature flag is disabled", v6, 2u);
  }

  v5 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Unable to insert context featurizer response into FeatureStore", v6, 2u);
  }
}