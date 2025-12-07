@interface UPPreprocessor
+ (vector<nl_featurization::span_matching::MatchedSpan,)buildMatchedSpanListFromQuerySpans:(id)spans;
- (UPPreprocessor)initWithLocale:(id)locale featurizer:(const AbstractFeaturizer *)featurizer;
- (id)preprocess:(id)preprocess error:(id *)error;
@end

@implementation UPPreprocessor

- (id)preprocess:(id)preprocess error:(id *)error
{
  v133 = *MEMORY[0x277D85DE8];
  preprocessCopy = preprocess;
  v5 = SNLPOSLoggerForCategory(7);
  v6 = os_signpost_id_generate(v5);

  v7 = SNLPOSLoggerForCategory(7);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "UaaP Preprocessing", "", buf, 2u);
  }

  v9 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN UaaP Preprocessing", buf, 2u);
  }

  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  v11 = localeIdentifier;
  std::string::basic_string[abi:ne200100]<0>(&v118, [localeIdentifier UTF8String]);
  utterance = [preprocessCopy utterance];
  v13 = utterance;
  std::string::basic_string[abi:ne200100]<0>(buf, [utterance UTF8String]);
  if ((v92.__r_.__value_.__r.__words[0] & 0x8000000000000000) == 0)
  {
    v14 = buf;
  }

  else
  {
    v14 = *buf;
  }

  if ((v92.__r_.__value_.__r.__words[0] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v92.__r_.__value_.__r.__words[0]);
  }

  else
  {
    v15 = *&buf[8];
  }

  toU16String(&v120, v14, v15);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[0]) < 0)
  {
    operator delete(*buf);
  }

  array = [MEMORY[0x277CBEB18] array];
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  tokens = [preprocessCopy tokens];
  v17 = [tokens countByEnumeratingWithState:&v114 objects:v132 count:16];
  if (!v17)
  {
LABEL_22:

    memset(v113, 0, 24);
    tokens2 = [preprocessCopy tokens];
    v25 = [tokens2 count];
    if (0xAAAAAAAAAAAAAAABLL * ((*&v113[1] - *&v113[0]) >> 4) < v25)
    {
      if (v25 <= 0x555555555555555)
      {
        v92.__r_.__value_.__r.__words[2] = v113;
        std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::Token>>(v25);
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    tokens3 = [preprocessCopy tokens];
    v27 = [tokens3 countByEnumeratingWithState:&v109 objects:v129 count:16];
    if (v27)
    {
      v28 = *v110;
      obj = tokens3;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v110 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v109 + 1) + 8 * i);
          *buf = [v30 begin];
          *&buf[8] = [v30 end];
          value = [v30 value];
          v32 = value;
          std::string::basic_string[abi:ne200100]<0>(__p, [value UTF8String]);
          if (v104 >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = __p[0];
          }

          if (v104 >= 0)
          {
            v34 = HIBYTE(v104);
          }

          else
          {
            v34 = __p[1];
          }

          toU16String(&v92, v33, v34);
          LOBYTE(v93) = 0;
          v35 = *(&v113[0] + 1);
          if (*(&v113[0] + 1) >= *&v113[1])
          {
            v37 = 0xAAAAAAAAAAAAAAABLL * ((*(&v113[0] + 1) - *&v113[0]) >> 4);
            v38 = v37 + 1;
            if (v37 + 1 > 0x555555555555555)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((*&v113[1] - *&v113[0]) >> 4) > v38)
            {
              v38 = 0x5555555555555556 * ((*&v113[1] - *&v113[0]) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*&v113[1] - *&v113[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v39 = 0x555555555555555;
            }

            else
            {
              v39 = v38;
            }

            v100 = v113;
            if (v39)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::Token>>(v39);
            }

            v40 = 16 * ((*(&v113[0] + 1) - *&v113[0]) >> 4);
            v97 = 0;
            v98 = v40;
            *(&v99 + 1) = 0;
            *v40 = *buf;
            v41 = *&v92.__r_.__value_.__l.__data_;
            *(v40 + 32) = *(&v92.__r_.__value_.__l + 2);
            *(v40 + 16) = v41;
            memset(&v92, 0, sizeof(v92));
            *(v40 + 40) = v93;
            *&v99 = 48 * v37 + 48;
            v42 = 48 * v37 + *&v113[0] - *(&v113[0] + 1);
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::Token>,nl_featurization::Token*>(v113, *&v113[0], *(&v113[0] + 1), v40 + *&v113[0] - *(&v113[0] + 1));
            v43 = *&v113[0];
            v44 = *&v113[1];
            *&v113[0] = v42;
            v88 = v99;
            *(v113 + 8) = v99;
            *&v99 = v43;
            *(&v99 + 1) = v44;
            v98 = v43;
            v97 = v43;
            std::__split_buffer<nl_featurization::Token>::~__split_buffer(&v97);
            *(&v113[0] + 1) = v88;
            if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v92.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            **(&v113[0] + 1) = *buf;
            v36 = *&v92.__r_.__value_.__l.__data_;
            *(v35 + 32) = *(&v92.__r_.__value_.__l + 2);
            *(v35 + 16) = v36;
            memset(&v92, 0, sizeof(v92));
            *(v35 + 40) = v93;
            *(&v113[0] + 1) = v35 + 48;
          }

          if (SHIBYTE(v104) < 0)
          {
            operator delete(__p[0]);
          }
        }

        tokens3 = obj;
        v27 = [obj countByEnumeratingWithState:&v109 objects:v129 count:16];
      }

      while (v27);
    }

    v45 = objc_opt_class();
    spans = [preprocessCopy spans];
    if (v45)
    {
      objc_msgSend_buildMatchedSpanListFromQuerySpans_(v45);
    }

    else
    {
      v107 = 0uLL;
      v108 = 0;
    }

    *__p = v113[0];
    v52 = *&v113[1];
    memset(v113, 0, 24);
    v105 = v107;
    v104 = v52;
    v106 = v108;
    v107 = 0uLL;
    v108 = 0;
    (*(self->__featurizer->var0 + 2))(&v97);
    v79 = v97;
    v80 = v98;
    v81 = 0xAAAAAAAAAAAAAAABLL * ((v98 - v97) >> 4);
    if (v98 != v97)
    {
      v53 = 0;
      if (v81 <= 1)
      {
        v54 = 1;
      }

      else
      {
        v54 = 0xAAAAAAAAAAAAAAABLL * ((v98 - v97) >> 4);
      }

      do
      {
        v55 = v97 + v53;
        if (*(v97 + v53 + 39) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(buf, *(v55 + 16), *(v55 + 24));
        }

        else
        {
          v56 = *(v55 + 16);
          v92.__r_.__value_.__r.__words[0] = *(v55 + 32);
          *buf = v56;
        }

        v57 = SNLPOSLoggerForCategory(3);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          morphun::util::StringUtils::to_string();
          v58 = v123 >= 0 ? &v121 : v121;
          LODWORD(v127) = 136315138;
          *(&v127 + 4) = v58;
          _os_log_impl(&dword_22284A000, v57, OS_LOG_TYPE_DEBUG, "Featurized token with text=%s", &v127, 0xCu);
          if (SHIBYTE(v123) < 0)
          {
            operator delete(v121);
          }
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[0]) < 0)
        {
          operator delete(*buf);
        }

        v53 += 48;
        --v54;
      }

      while (v54);
    }

    v127 = 0uLL;
    v128 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v127, *(&v99 + 1), v100, (v100 - *(&v99 + 1)) >> 3);
    if (*(&v127 + 1) - v127 == 16 && *v127 == v81)
    {
      if (v80 != v79)
      {
        v59 = 0;
        v60 = *(v127 + 8);
        v61 = *(MEMORY[0x277D82818] + 72);
        obja = *(MEMORY[0x277D82818] + 64);
        v89 = *MEMORY[0x277D82818];
        v62 = v81;
        if (v81 <= 1)
        {
          v62 = 1;
        }

        v83 = v62;
        do
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
          LOBYTE(v121) = 91;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, &v121, 1);
          if (v60)
          {
            v125 = v59;
            v123 = 0;
            v121 = 0;
            v122 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v121, &v125, &v126, 2uLL);
          }

          LOBYTE(v121) = 93;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, &v121, 1);
          v63 = SNLPOSLoggerForCategory(3);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            std::stringbuf::str();
            v64 = &v121;
            if (v123 < 0)
            {
              v64 = v121;
            }

            LODWORD(v125) = 136315138;
            *(&v125 + 4) = v64;
            _os_log_impl(&dword_22284A000, v63, OS_LOG_TYPE_DEBUG, "Token span labels: %s", &v125, 0xCu);
            if (SHIBYTE(v123) < 0)
            {
              operator delete(v121);
            }
          }

          *buf = v89;
          *&buf[*(v89 - 24)] = obja;
          v92.__r_.__value_.__r.__words[0] = v61;
          v92.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
          if (v95 < 0)
          {
            operator delete(v94);
          }

          v92.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v92.__r_.__value_.__r.__words[2]);
          std::iostream::~basic_iostream();
          MEMORY[0x223DC4C10](&v96);
          ++v59;
        }

        while (v59 != v83);
      }

      firstObject = [array firstObject];
      getDimension = [firstObject getDimension];

      *buf = 0;
      std::vector<float>::vector[abi:ne200100](&v125, getDimension * v81, buf);
      if (v80 != v79)
      {
        v67 = 0;
        v68 = 0;
        if (v81 <= 1)
        {
          v69 = 1;
        }

        else
        {
          v69 = v81;
        }

        do
        {
          v70 = [array objectAtIndexedSubscript:v68];
          getCoordinates = [v70 getCoordinates];

          if (getDimension)
          {
            v72 = 0;
            v73 = v67;
            v74 = getDimension;
            do
            {
              v75 = [getCoordinates objectAtIndexedSubscript:v72];
              [v75 floatValue];
              *(v125 + v73) = v76;

              ++v72;
              v73 += 4;
              --v74;
            }

            while (v74);
          }

          ++v68;
          v67 += 4 * getDimension;
        }

        while (v68 != v69);
      }

      memset(buf, 0, sizeof(buf));
      v92.__r_.__value_.__r.__words[0] = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(buf, *(&v99 + 1), v100, (v100 - *(&v99 + 1)) >> 3);
      v93 = 0;
      *&v92.__r_.__value_.__r.__words[1] = 0uLL;
      if (v102 != v101)
      {
        std::vector<int>::__vallocate[abi:ne200100](&v92.__r_.__value_.__l.__size_, (v102 - v101) >> 3);
      }

      v121 = (0xAAAAAAAAAAAAAAABLL * ((v98 - v97) >> 4));
      v122 = 1;
      v123 = getDimension;
      memset(v90, 0, sizeof(v90));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v90, &v121, &v124, 3uLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Span label shape incorrect.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = *v115;
LABEL_16:
  v19 = 0;
  while (1)
  {
    if (*v115 != v18)
    {
      objc_enumerationMutation(tokens);
    }

    v20 = *(*(&v114 + 1) + 8 * v19);
    embeddingsByToken = [preprocessCopy embeddingsByToken];
    v22 = [embeddingsByToken objectForKeyedSubscript:v20];
    firstObject2 = [v22 firstObject];

    if (!firstObject2)
    {
      break;
    }

    [array addObject:firstObject2];

    if (v17 == ++v19)
    {
      v17 = [tokens countByEnumeratingWithState:&v114 objects:v132 count:16];
      if (!v17)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }
  }

  v47 = MEMORY[0x277CCACA8];
  value2 = [v20 value];
  v49 = [v47 stringWithFormat:@"No embeddings are associated with token %@", value2];

  v50 = MEMORY[0x277CCA9B8];
  v130 = *MEMORY[0x277CCA450];
  v131 = v49;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
  *error = [v50 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v51];

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  return 0;
}

- (UPPreprocessor)initWithLocale:(id)locale featurizer:(const AbstractFeaturizer *)featurizer
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = UPPreprocessor;
  v8 = [(UPPreprocessor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, locale);
    v9->__featurizer = featurizer;
  }

  return v9;
}

+ (vector<nl_featurization::span_matching::MatchedSpan,)buildMatchedSpanListFromQuerySpans:(id)spans
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v7)
  {
    v9 = *v46;
    *&v8 = 67109634;
    v37 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        if ([v11 type] == 2)
        {
          category = [v11 category];
          v13 = category;
          std::string::basic_string[abi:ne200100]<0>(&buf, [category UTF8String]);
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf;
          }

          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v15 = BYTE7(v51);
          }

          else
          {
            v15 = *(&buf + 1);
          }

          toU16String(&v44, p_buf, v15);
          if (SBYTE7(v51) < 0)
          {
            operator delete(buf);
          }

          uaap::UPDataDetector::labelToUaapType(&v44, &v41);
          if (v43)
          {
            LODWORD(v39) = [v11 range];
            range = [v11 range];
            [v11 range];
            HIDWORD(v39) = v17 + range;
            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              std::basic_string<char16_t>::__init_copy_ctor_external(&__p, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v44;
            }

            v20 = SNLPOSLoggerForCategory(3);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = [UPUtilities stdU16ToNSString:&__p];
              *&buf = __PAIR64__(v39, v37);
              WORD4(buf) = 1024;
              *(&buf + 10) = HIDWORD(v39);
              HIWORD(buf) = 2112;
              *&v51 = v21;
              _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "Adding matching span (%u -> %u) with label %@", &buf, 0x18u);
            }

            var1 = retstr->var1;
            var2 = retstr->var2;
            if (var1 >= var2)
            {
              v25 = (var1 - retstr->var0) >> 5;
              v26 = v25 + 1;
              if ((v25 + 1) >> 59)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              v27 = var2 - retstr->var0;
              if (v27 >> 4 > v26)
              {
                v26 = v27 >> 4;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFE0)
              {
                v28 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v26;
              }

              v52 = retstr;
              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>>(v28);
              }

              v29 = 32 * v25;
              *&buf = 0;
              *(&buf + 1) = v29;
              *(&v51 + 1) = 0;
              *v29 = v39;
              v30 = *&__p.__r_.__value_.__l.__data_;
              *(v29 + 24) = *(&__p.__r_.__value_.__l + 2);
              *(v29 + 8) = v30;
              memset(&__p, 0, sizeof(__p));
              *&v51 = 32 * v25 + 32;
              v31 = retstr->var1;
              v32 = (32 * v25 + retstr->var0 - v31);
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>(retstr, retstr->var0, v31, v29 + retstr->var0 - v31);
              var0 = retstr->var0;
              retstr->var0 = v32;
              v34 = retstr->var2;
              v38 = v51;
              *&retstr->var1 = v51;
              *&v51 = var0;
              *(&v51 + 1) = v34;
              *&buf = var0;
              *(&buf + 1) = var0;
              std::__split_buffer<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::~__split_buffer(&buf);
              v35 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              retstr->var1 = v38;
              if (v35 < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *var1 = v39;
              v24 = *&__p.__r_.__value_.__l.__data_;
              *(var1 + 3) = *(&__p.__r_.__value_.__l + 2);
              *(var1 + 8) = v24;
              retstr->var1 = (var1 + 32);
            }

            if ((v43 & 1) != 0 && v42 < 0)
            {
              operator delete(v41);
            }
          }

          else
          {
            v18 = SNLPOSLoggerForCategory(3);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              category2 = [v11 category];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = category2;
              _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "Warning: discarding data detector matching span with unknown category %@", &buf, 0xCu);
            }
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v7);
  }

  return result;
}

@end