void KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(uint64_t a1, CFTypeRef *a2)
{
  v4 = 0;
  v5 = *(a1 + 88);
  while (1)
  {
    v6 = v4;
    v7 = v5 + v4;
    v8 = *(a1 + 24);
    if (v7 >= (*(a1 + 32) - v8) >> 3)
    {
      break;
    }

    v9 = *(v8 + 8 * v5 + 8 * v6);
    if (!v9)
    {
      goto LABEL_79;
    }

    v10 = applesauce::CF::details::find_at_key_or_optional<unsigned long,__CFString const* const&>(v9);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = -1;
    }

    v4 = v6 + 1;
    if (v12 > v6 + 1 + ((*(a1 + 8) - *a1) >> 3))
    {
      v7 = v5 + v6;
      break;
    }
  }

  for (i = *(a1 + 88); i < v7; *(a1 + 88) = i)
  {
    v14 = *(a1 + 24);
    if (i >= (*(a1 + 32) - v14) >> 3)
    {
      break;
    }

    std::vector<applesauce::CF::DictionaryRef>::push_back[abi:nn200100](a1, (v14 + 8 * i));
    i = *(a1 + 88) + 1;
  }

  v15 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    extract_name(v48, v15);
    CFRelease(v15);
  }

  else
  {
    extract_name(v48, 0);
  }

  if ((v49 & 0x80u) == 0)
  {
    v16 = v48;
  }

  else
  {
    v16 = v48[0];
  }

  if ((v49 & 0x80u) == 0)
  {
    v17 = v49;
  }

  else
  {
    v17 = v48[1];
  }

  v18 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, v17);
  v19 = *(a1 + 56);
  if (!*&v19)
  {
    goto LABEL_38;
  }

  v20 = v18;
  v21 = vcnt_s8(v19);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v18;
    if (v18 >= *&v19)
    {
      v23 = v18 % *&v19;
    }
  }

  else
  {
    v23 = (*&v19 - 1) & v18;
  }

  v24 = *(*(a1 + 48) + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_38:
    v47 = 0;
    std::string::basic_string[abi:nn200100]<0>(&__p, "");
    v27 = 0;
    goto LABEL_39;
  }

  while (1)
  {
    v26 = v25[1];
    if (v20 == v26)
    {
      break;
    }

    if (v22 > 1)
    {
      if (v26 >= *&v19)
      {
        v26 %= *&v19;
      }
    }

    else
    {
      v26 &= *&v19 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_38;
    }

LABEL_37:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_38;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v25 + 2, v48))
  {
    goto LABEL_37;
  }

  __p.__r_.__value_.__r.__words[0] = v48;
  v41 = std::__hash_table<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), v48, &__p);
  v27 = v41[5];
  if (!v27)
  {
    goto LABEL_38;
  }

  CFRetain(v41[5]);
  v47 = v27;
  applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&__p, v27, @"Operation");
LABEL_39:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ == 6)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      goto LABEL_50;
    }

    if (__p.__r_.__value_.__l.__size_ != 8)
    {
      goto LABEL_54;
    }

    v28 = *__p.__r_.__value_.__l.__data_;
LABEL_46:
    if (v28 == 0x656469727265764FLL)
    {
      v29 = &v47;
      v30 = a1;
    }

    else
    {
LABEL_54:
      v30 = a1;
      v29 = a2;
    }

    std::vector<applesauce::CF::DictionaryRef>::push_back[abi:nn200100](v30, v29);
    goto LABEL_56;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 6)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 8)
    {
      v28 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_46;
    }

    goto LABEL_54;
  }

  p_p = &__p;
LABEL_50:
  data = p_p->__r_.__value_.__l.__data_;
  v33 = WORD2(p_p->__r_.__value_.__r.__words[0]);
  if (data != 1701602628 || v33 != 25972)
  {
    goto LABEL_54;
  }

  if (!v27)
  {
    goto LABEL_79;
  }

  cf = 0;
  applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(&v45, v27, @"Parameters", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v35 = *a2;
  if (!*a2)
  {
LABEL_79:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v43 = 0;
  applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(&cf, v35, @"Parameters", &v43);
  if (v43)
  {
    CFRelease(v43);
  }

  v36 = cf;
  v37 = v45;
  if (v45)
  {
    if (cf)
    {
      v38 = cf;
      v40 = areDictionariesEqualWithPrecision(v38, v37, v39);

      if ((v40 & 1) == 0)
      {
        std::vector<applesauce::CF::DictionaryRef>::push_back[abi:nn200100](a1, a2);
      }

      CFRelease(v38);
    }

    v36 = v37;
LABEL_78:
    CFRelease(v36);
  }

  else if (cf)
  {
    goto LABEL_78;
  }

LABEL_56:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }
}

void applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(void *a1, CFDictionaryRef theDict, void *key, void *a4)
{
  if (!key)
  {
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    goto LABEL_8;
  }

  v7 = Value;
  CFRetain(Value);
  v8 = CFGetTypeID(v7);
  if (v8 != CFDictionaryGetTypeID())
  {
    CFRelease(v7);
LABEL_8:
    *a1 = *a4;
    *a4 = 0;
    return;
  }

  CFRetain(v7);
  *a1 = v7;

  CFRelease(v7);
}

uint64_t areDictionariesEqualWithPrecision(NSDictionary *a1, NSDictionary *a2, float a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v6 = [(NSDictionary *)v4 count];
  if (v6 == [(NSDictionary *)v5 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v4;
    v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [(NSDictionary *)v7 objectForKeyedSubscript:v12, v21];
          v14 = [(NSDictionary *)v5 objectForKeyedSubscript:v12];
          if (!v14)
          {
LABEL_22:

            v19 = 0;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if ((areDictionariesEqualWithPrecision(v13, v14, v15) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [(NSDictionary *)v13 floatValue];
              v17 = v16;
              [(NSDictionary *)v14 floatValue];
              if (vabds_f32(v17, v18) > 0.001)
              {
                goto LABEL_22;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSDictionary *)v13 isEqual:v14])
              {
                goto LABEL_22;
              }
            }
          }
        }

        v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v19 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 1;
    }

LABEL_24:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void KB::CandidateFilterFactory::FilterStackDefinition::convert_filter_stack_definition_to_filters(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 88);
  v6 = *(a2 + 24);
  for (i = *(a2 + 32); v5 < (i - v6) >> 3; i = *(a2 + 32))
  {
    *(a2 + 88) = v5 + 1;
    std::vector<applesauce::CF::DictionaryRef>::push_back[abi:nn200100](a2, (v6 + 8 * v5));
    v5 = *(a2 + 88);
    v6 = *(a2 + 24);
  }

  v51 = 0u;
  v9 = *a2;
  v8 = *(a2 + 8);
  if (*a2 == v8)
  {
    goto LABEL_113;
  }

  while (1)
  {
    v10 = *v9;
    if (!*v9)
    {
      goto LABEL_97;
    }

    CFRetain(*v9);
    v11 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v10);
    if (v11 >= 0x100u && (v11 & 1) == 0)
    {
      memset(buf, 0, sizeof(buf));
      goto LABEL_80;
    }

    CFRetain(v10);
    extract_name(&__s1, v10);
    CFRelease(v10);
    v12 = filter_factory_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if ((v55 & 0x80u) == 0)
      {
        p_s1 = &__s1;
      }

      else
      {
        p_s1 = __s1;
      }

      *buf = 136315138;
      *&buf[4] = p_s1;
      _os_log_impl(&dword_22CA55000, v12, OS_LOG_TYPE_INFO, "Creating filter '%s'.", buf, 0xCu);
    }

    v14 = [@"CustomFilter" UTF8String];
    v15 = strlen(v14);
    v16 = v15;
    if ((v55 & 0x8000000000000000) != 0)
    {
      if (v15 == v54)
      {
        if (v15 == -1)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v17 = __s1;
LABEL_20:
        if (!memcmp(v17, v14, v16))
        {
          v49 = *(a3 + 176);
          *buf = *(a3 + 168);
          *&buf[8] = v49;
          if (v49)
          {
            atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
          }

          goto LABEL_78;
        }
      }
    }

    else if (v15 == v55)
    {
      v17 = &__s1;
      goto LABEL_20;
    }

    *buf = 0;
    applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(&cf, v10, @"Parameters", buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    v18 = filter_factory_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22CA55000, v18, OS_LOG_TYPE_INFO, "Looking for filter factory...", buf, 2u);
    }

    {
      __cxa_atexit(std::unique_ptr<std::unordered_map<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>>::~unique_ptr[abi:nn200100], &KB::CandidateFilterFactory::filter_factory_lookup_table(void)::lookup_table_ptr, &dword_22CA55000);
    }

    if (KB::CandidateFilterFactory::filter_factory_lookup_table(void)::once_token != -1)
    {
      dispatch_once(&KB::CandidateFilterFactory::filter_factory_lookup_table(void)::once_token, &__block_literal_global_4683);
    }

    v19 = KB::CandidateFilterFactory::filter_factory_lookup_table(void)::lookup_table_ptr;
    *buf = 0u;
    v63 = 0u;
    v64 = *(KB::CandidateFilterFactory::filter_factory_lookup_table(void)::lookup_table_ptr + 32);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(buf, *(KB::CandidateFilterFactory::filter_factory_lookup_table(void)::lookup_table_ptr + 8));
    for (j = *(v19 + 16); j; j = *j)
    {
      std::__hash_table<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>> const&>(buf, (j + 2), (j + 2));
    }

    if ((v55 & 0x80u) == 0)
    {
      v21 = &__s1;
    }

    else
    {
      v21 = __s1;
    }

    if ((v55 & 0x80u) == 0)
    {
      v22 = v55;
    }

    else
    {
      v22 = v54;
    }

    v23 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v21, v22);
    v24 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_52;
    }

    v25 = v23;
    v26 = vcnt_s8(*&buf[8]);
    v26.i16[0] = vaddlv_u8(v26);
    v27 = v26.u32[0];
    if (v26.u32[0] > 1uLL)
    {
      v28 = v23;
      if (v23 >= *&buf[8])
      {
        v28 = v23 % *&buf[8];
      }
    }

    else
    {
      v28 = (*&buf[8] - 1) & v23;
    }

    v29 = *(*buf + 8 * v28);
    if (!v29 || (v30 = *v29) == 0)
    {
LABEL_52:
      v56[0] = 0;
      v58 = 0;
      goto LABEL_53;
    }

    while (1)
    {
      v31 = v30[1];
      if (v31 == v25)
      {
        break;
      }

      if (v27 > 1)
      {
        if (v31 >= v24)
        {
          v31 %= v24;
        }
      }

      else
      {
        v31 &= v24 - 1;
      }

      if (v31 != v28)
      {
        goto LABEL_52;
      }

LABEL_51:
      v30 = *v30;
      if (!v30)
      {
        goto LABEL_52;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v30 + 2, &__s1))
    {
      goto LABEL_51;
    }

    std::__function::__value_func<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::__value_func[abi:nn200100](v59, (v30 + 5));
    if (v61)
    {
      if (v61 == v59)
      {
        v57 = v56;
        (*(*v61 + 24))();
      }

      else
      {
        v57 = v61;
        v61 = 0;
      }
    }

    else
    {
      v57 = 0;
    }

    v58 = 1;
    std::__function::__value_func<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::~__value_func[abi:nn200100](v59);
LABEL_53:
    std::__hash_table<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>>>::~__hash_table(buf);
    v32 = v58;
    v33 = filter_factory_log();
    v34 = v33;
    if (v32 == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        if ((v55 & 0x80u) == 0)
        {
          v35 = &__s1;
        }

        else
        {
          v35 = __s1;
        }

        *buf = 136315138;
        *&buf[4] = v35;
        _os_log_impl(&dword_22CA55000, v34, OS_LOG_TYPE_INFO, "Found filter factory for '%s'.", buf, 0xCu);
      }

      if (v58)
      {
        v36 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        if (v57)
        {
          (*(*v57 + 48))(buf);
          if (v36)
          {
            CFRelease(v36);
          }

          if (!*buf)
          {
            v37 = filter_factory_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              if ((v55 & 0x80u) == 0)
              {
                v38 = &__s1;
              }

              else
              {
                v38 = __s1;
              }

              *v59 = 136315138;
              v60 = v38;
              _os_log_impl(&dword_22CA55000, v37, OS_LOG_TYPE_INFO, "Skipped filter '%s' for provided specification and configuration.", v59, 0xCu);
            }
          }

          goto LABEL_74;
        }
      }

      else
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      std::__throw_bad_function_call[abi:nn200100]();
LABEL_117:
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      if ((v55 & 0x80u) == 0)
      {
        v50 = &__s1;
      }

      else
      {
        v50 = __s1;
      }

      *buf = 136315138;
      *&buf[4] = v50;
      _os_log_error_impl(&dword_22CA55000, v34, OS_LOG_TYPE_ERROR, "Unrecognized filter name '%s'", buf, 0xCu);
    }

    memset(buf, 0, sizeof(buf));
LABEL_74:
    if (v58 == 1)
    {
      std::__function::__value_func<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::~__value_func[abi:nn200100](v56);
    }

    if (cf)
    {
      CFRelease(cf);
    }

LABEL_78:
    if (v55 < 0)
    {
      operator delete(__s1);
    }

LABEL_80:
    CFRelease(v10);
    if (*buf)
    {
      v39 = v51;
      v40 = *(&v51 + 1) - v51;
      v41 = (*(&v51 + 1) - v51) >> 4;
      v42 = v41 + 1;
      if ((v41 + 1) >> 60)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v43 = -v51;
      if (-v51 >> 3 > v42)
      {
        v42 = v43 >> 3;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF0)
      {
        v44 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (!(v44 >> 60))
        {
          operator new();
        }

        goto LABEL_117;
      }

      v45 = 16 * v41;
      v46 = *&buf[8];
      *(16 * v41) = *buf;
      if (v46)
      {
        atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
        v40 = *(&v51 + 1) - v51;
        v41 = (*(&v51 + 1) - v51) >> 4;
      }

      v47 = v45 + 16;
      v48 = (v45 - 16 * v41);
      memcpy(v48, v51, v40);
      *&v51 = v48;
      if (v39)
      {
        operator delete(v39);
      }

      *(&v51 + 1) = v47;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
    }

LABEL_97:
    if (++v9 == v8)
    {
LABEL_113:
      operator new();
    }
  }
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Enabled");
  if (Value)
  {
    v2 = Value;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      v4 = CFBooleanGetValue(v2) != 0;
LABEL_33:
      v5 = 1;
      return v4 | (v5 << 8);
    }

    v6 = CFNumberGetTypeID();
    if (v6 == CFGetTypeID(v2))
    {
      switch(CFNumberGetType(v2))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          v7 = v2;
          v8 = kCFNumberSInt8Type;
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v18 = v2;
          v19 = kCFNumberSInt16Type;
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v16 = v2;
          v17 = kCFNumberSInt32Type;
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v9 = v2;
          v10 = kCFNumberSInt64Type;
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v11 = v2;
          v12 = kCFNumberFloat32Type;
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v14 = v2;
          v15 = kCFNumberFloat64Type;
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          v7 = v2;
          v8 = kCFNumberCharType;
LABEL_25:
          v5 = CFNumberGetValue(v7, v8, &valuePtr);
          v4 = v5 != 0;
          v13 = LOBYTE(valuePtr) == 0;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v18 = v2;
          v19 = kCFNumberShortType;
LABEL_20:
          v5 = CFNumberGetValue(v18, v19, &valuePtr);
          v4 = v5 != 0;
          v13 = LOWORD(valuePtr) == 0;
          break;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v16 = v2;
          v17 = kCFNumberIntType;
LABEL_29:
          v5 = CFNumberGetValue(v16, v17, &valuePtr);
          v4 = v5 != 0;
          v13 = LODWORD(valuePtr) == 0;
          break;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v9 = v2;
          v10 = kCFNumberLongType;
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v9 = v2;
          v10 = kCFNumberLongLongType;
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v11 = v2;
          v12 = kCFNumberFloatType;
LABEL_12:
          v5 = CFNumberGetValue(v11, v12, &valuePtr);
          v4 = v5 != 0;
          v13 = *&valuePtr == 0.0;
          break;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v14 = v2;
          v15 = kCFNumberDoubleType;
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v9 = v2;
          v10 = kCFNumberCFIndexType;
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v9 = v2;
          v10 = kCFNumberNSIntegerType;
LABEL_27:
          v5 = CFNumberGetValue(v9, v10, &valuePtr);
          v4 = v5 != 0;
          v13 = *&valuePtr == 0;
          break;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v14 = v2;
          v15 = kCFNumberCGFloatType;
LABEL_22:
          v5 = CFNumberGetValue(v14, v15, &valuePtr);
          v4 = v5 != 0;
          v13 = valuePtr == 0.0;
          break;
        default:
          goto LABEL_8;
      }

      if (v13)
      {
        v4 = 0;
      }

      if (v5)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_8:
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4 | (v5 << 8);
}

uint64_t std::__function::__value_func<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::~__value_func[abi:nn200100]((v2 + 5));
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

void std::__hash_table<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>> const&>(void *a1, uint64_t a2, uint64_t a3)
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

void ___ZN2KB22CandidateFilterFactory27filter_factory_lookup_tableEv_block_invoke()
{
  v81[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v0, "FilterZeroProbability");
  v1[0] = &unk_283FD8058;
  v1[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterZeroProbability>;
  v1[3] = v1;
  std::string::basic_string[abi:nn200100]<0>(v2, "FilterWordsConflictingWithValidContactNames");
  v3[0] = &unk_283FD8058;
  v3[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterWordsConflictingWithValidContactNames>;
  v3[3] = v3;
  std::string::basic_string[abi:nn200100]<0>(v4, "FilterAppNames");
  v5[0] = &unk_283FD8058;
  v5[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterAppNames>;
  v5[3] = v5;
  std::string::basic_string[abi:nn200100]<0>(v6, "FilterIncomplete");
  v7[0] = &unk_283FD8058;
  v7[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterIncomplete>;
  v7[3] = v7;
  std::string::basic_string[abi:nn200100]<0>(v8, "FilterControlCharacters");
  v9[0] = &unk_283FD8058;
  v9[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterControlCharacters>;
  v9[3] = v9;
  std::string::basic_string[abi:nn200100]<0>(v10, "FilterNotSuggestibleForInput");
  v11[0] = &unk_283FD8058;
  v11[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>;
  v11[3] = v11;
  std::string::basic_string[abi:nn200100]<0>(v12, "FilterNumberMismatch");
  v13[0] = &unk_283FD8058;
  v13[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNumberMismatch>;
  v13[3] = v13;
  std::string::basic_string[abi:nn200100]<0>(v14, "FilterNumberlikeTokenMismatch");
  v15[0] = &unk_283FD8058;
  v15[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNumberlikeTokenMismatch>;
  v15[3] = v15;
  std::string::basic_string[abi:nn200100]<0>(v16, "FilterCharacterCount");
  v17[0] = &unk_283FD8058;
  v17[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>;
  v17[3] = v17;
  std::string::basic_string[abi:nn200100]<0>(v18, "FilterAlteredURLFragments");
  v19[0] = &unk_283FD8058;
  v19[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterAlteredURLFragments>;
  v19[3] = v19;
  std::string::basic_string[abi:nn200100]<0>(v20, "FilterDoubleApostrophe");
  v21[0] = &unk_283FD8058;
  v21[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterDoubleApostrophe>;
  v21[3] = v21;
  std::string::basic_string[abi:nn200100]<0>(v22, "FilterWordEndingApostropheBetweenNonseparators");
  v23[0] = &unk_283FD8058;
  v23[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterWordEndingApostropheBetweenNonseparators>;
  v23[3] = v23;
  std::string::basic_string[abi:nn200100]<0>(v24, "FilterPopupVariantMismatch");
  v25[0] = &unk_283FD8058;
  v25[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterPopupVariantMismatch>;
  v25[3] = v25;
  std::string::basic_string[abi:nn200100]<0>(v26, "FilterAllCapsNoSuggestWordsOfLength");
  v27[0] = &unk_283FD8058;
  v27[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterAllCapsNoSuggestWordsOfLength>;
  v27[3] = v27;
  std::string::basic_string[abi:nn200100]<0>(v28, "FilterMissingOneLetterWordFromInput");
  v29[0] = &unk_283FD8058;
  v29[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterMissingOneLetterWordFromInput>;
  v29[3] = v29;
  std::string::basic_string[abi:nn200100]<0>(v30, "FilterCorrectionsIfAnyCandidateMatchesInput");
  v31[0] = &unk_283FD8058;
  v31[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCorrectionsIfAnyCandidateMatchesInput>;
  v31[3] = v31;
  std::string::basic_string[abi:nn200100]<0>(v32, "FilterNondominantCorrectionOfMoreWords");
  v33[0] = &unk_283FD8058;
  v33[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNondominantCorrectionOfMoreWords>;
  v33[3] = v33;
  std::string::basic_string[abi:nn200100]<0>(v34, "FilterInputPrefixMismatch");
  v35[0] = &unk_283FD8058;
  v35[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterInputPrefixMismatch>;
  v35[3] = v35;
  std::string::basic_string[abi:nn200100]<0>(v36, "BoostPreferedFormForSortkey");
  v37[0] = &unk_283FD8058;
  v37[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::BoostPreferedFormForSortkey>;
  v37[3] = v37;
  std::string::basic_string[abi:nn200100]<0>(v38, "BoostMinimumVariation");
  v39[0] = &unk_283FD8058;
  v39[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::BoostMinimumVariation>;
  v39[3] = v39;
  std::string::basic_string[abi:nn200100]<0>(v40, "BoostCaseVariantsOfTopCandidate");
  v41[0] = &unk_283FD8058;
  v41[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::BoostCaseVariantsOfTopCandidate>;
  v41[3] = v41;
  std::string::basic_string[abi:nn200100]<0>(v42, "ExemptHighFrequencyWordsFromNoSuggest");
  v43[0] = &unk_283FD8058;
  v43[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::ExemptHighFrequencyWordsFromNoSuggest>;
  v43[3] = v43;
  std::string::basic_string[abi:nn200100]<0>(v44, "RescoreShortWords");
  v45[0] = &unk_283FD8058;
  v45[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::RescoreShortWords>;
  v45[3] = v45;
  std::string::basic_string[abi:nn200100]<0>(v46, "FilterLearnedTypo");
  v47[0] = &unk_283FD8058;
  v47[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterLearnedTypo>;
  v47[3] = v47;
  std::string::basic_string[abi:nn200100]<0>(v48, "FilterTopDynamicWordsWithStaticVariant");
  v49[0] = &unk_283FD8058;
  v49[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterTopDynamicWordsWithStaticVariant>;
  v49[3] = v49;
  std::string::basic_string[abi:nn200100]<0>(v50, "FilterInvalidTextReplacement");
  v51[0] = &unk_283FD8058;
  v51[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterInvalidTextReplacement>;
  v51[3] = v51;
  std::string::basic_string[abi:nn200100]<0>(v52, "FilterContactWordsConflictingWithValidInput");
  v53[0] = &unk_283FD8058;
  v53[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterContactWordsConflictingWithValidInput>;
  v53[3] = v53;
  std::string::basic_string[abi:nn200100]<0>(v54, "FilterWithoutSupplementalWords");
  v55[0] = &unk_283FD8058;
  v55[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterWithoutSupplementalWords>;
  v55[3] = v55;
  std::string::basic_string[abi:nn200100]<0>(v56, "FilterPartOfHyphenatedWord");
  v57[0] = &unk_283FD8058;
  v57[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterPartOfHyphenatedWord>;
  v57[3] = v57;
  std::string::basic_string[abi:nn200100]<0>(v58, "FilterLowQualityContinuousPathRetrocorrections");
  v59[0] = &unk_283FD8058;
  v59[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterLowQualityContinuousPathRetrocorrections>;
  v59[3] = v59;
  std::string::basic_string[abi:nn200100]<0>(v60, "FilterNoPredictContinuousPathAlternates");
  v61[0] = &unk_283FD8058;
  v61[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNoPredictContinuousPathAlternates>;
  v61[3] = v61;
  std::string::basic_string[abi:nn200100]<0>(v62, "FilterContinuousPathAlternatesFromOtherLanguage");
  v63[0] = &unk_283FD8058;
  v63[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterContinuousPathAlternatesFromOtherLanguage>;
  v63[3] = v63;
  std::string::basic_string[abi:nn200100]<0>(v64, "FilterSortkeyMatchFromDifferentLanguage");
  v65[0] = &unk_283FD8058;
  v65[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterSortkeyMatchFromDifferentLanguage>;
  v65[3] = v65;
  std::string::basic_string[abi:nn200100]<0>(v66, "FilterDifferentLanguageThanContext");
  v67[0] = &unk_283FD8058;
  v67[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterDifferentLanguageThanContext>;
  v67[3] = v67;
  std::string::basic_string[abi:nn200100]<0>(v68, "ChooseTopQualityAutocorrection");
  v69[0] = &unk_283FD8058;
  v69[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::ChooseTopQualityAutocorrection>;
  v69[3] = v69;
  std::string::basic_string[abi:nn200100]<0>(v70, "RemoveAlternatesIfNoLinguisticCandidate");
  v71[0] = &unk_283FD8058;
  v71[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::RemoveAlternatesIfNoLinguisticCandidate>;
  v71[3] = v71;
  std::string::basic_string[abi:nn200100]<0>(v72, "FilterCommonLearnedTypos");
  v73[0] = &unk_283FD8058;
  v73[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCommonLearnedTypos>;
  v73[3] = v73;
  std::string::basic_string[abi:nn200100]<0>(v74, "FilterNonVulgarIfTopCandidateVulgar");
  v75[0] = &unk_283FD8058;
  v75[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNonVulgarIfTopCandidateVulgar>;
  v75[3] = v75;
  std::string::basic_string[abi:nn200100]<0>(v76, "AddAlternativesForRetrocorrection");
  v77[0] = &unk_283FD8058;
  v77[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::AddAlternativesForRetrocorrection>;
  v77[3] = v77;
  std::string::basic_string[abi:nn200100]<0>(v78, "FilterDuplicates");
  v79[0] = &unk_283FD8058;
  v79[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterDuplicates>;
  v79[3] = v79;
  std::string::basic_string[abi:nn200100]<0>(v80, "FilterCaseVariantsOfStaticWords");
  v81[0] = &unk_283FD8058;
  v81[1] = KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCaseVariantsOfStaticWords>;
  v81[3] = v81;
  operator new();
}

uint64_t std::unique_ptr<std::unordered_map<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>>>>::~__hash_table(result);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCaseVariantsOfStaticWords>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterCaseVariantsOfStaticWords";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void *applesauce::CF::DictionaryRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void std::__shared_ptr_emplace<KB::FilterCaseVariantsOfStaticWords>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterDuplicates>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterDuplicates";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterDuplicates>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::AddAlternativesForRetrocorrection>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "AddAlternativesForRetrocorrection";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::AddAlternativesForRetrocorrection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8AD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNonVulgarIfTopCandidateVulgar>(const __CFDictionary **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v7 = 134217984;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "FilterNonVulgarIfTopCandidateVulgar factory expects 0 parameters, but specification includes %ld", &v7, 0xCu);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterNonVulgarIfTopCandidateVulgar>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD81E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCommonLearnedTypos>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterCommonLearnedTypos";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__deallocate_node(0);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterCommonLearnedTypos>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::RemoveAlternatesIfNoLinguisticCandidate>(const __CFDictionary **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v7 = 134217984;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "RemoveAlternatesIfNoLinguisticCandidate factory expects 0 parameters, but specification includes %ld", &v7, 0xCu);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::RemoveAlternatesIfNoLinguisticCandidate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::ChooseTopQualityAutocorrection>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 5)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v18 = 134217984;
      Count = CFDictionaryGetCount(v16);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "ChooseTopQualityAutocorrection factory expects 5 parameter, but specification includes %ld", &v18, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"MinLinguisticSynergyForComplexCorrection", 0.0, INFINITY);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"MinLinguisticSynergyForComplexCorrection", 0.0, INFINITY);
  }

  if (HIDWORD(v7))
  {
    v8 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
      v9 = bounded_float_for_key(v8, @"MinSuggestionDominanceRatio", 1.0, INFINITY);
      CFRelease(v8);
    }

    else
    {
      v9 = bounded_float_for_key(0, @"MinSuggestionDominanceRatio", 1.0, INFINITY);
    }

    if (HIDWORD(v9))
    {
      v10 = *a1;
      if (*a1)
      {
        CFRetain(*a1);
        v11 = bounded_integer_for_key(v10, @"MinStemLengthForPredictingOneLetter", 0, 0xFFFF);
        CFRelease(v10);
      }

      else
      {
        v11 = bounded_integer_for_key(0, @"MinStemLengthForPredictingOneLetter", 0, 0xFFFF);
      }

      if (HIDWORD(v11))
      {
        v12 = *a1;
        if (*a1)
        {
          CFRetain(*a1);
          v13 = bounded_integer_for_key(v12, @"MinStemLengthForPredictingTwoLetters", 0, 0xFFFF);
          CFRelease(v12);
        }

        else
        {
          v13 = bounded_integer_for_key(0, @"MinStemLengthForPredictingTwoLetters", 0, 0xFFFF);
        }

        if (HIDWORD(v13))
        {
          v14 = *a1;
          if (*a1)
          {
            CFRetain(*a1);
            v15 = bounded_integer_for_key(v14, @"MinStemLengthForPredictingThreeLetters", 0, 0xFFFF);
            CFRelease(v14);
          }

          else
          {
            v15 = bounded_integer_for_key(0, @"MinStemLengthForPredictingThreeLetters", 0, 0xFFFF);
          }

          if (HIDWORD(v15))
          {
            operator new();
          }
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t bounded_float_for_key(const __CFDictionary *a1, const __CFString *key, float a3, float a4)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  if (!key)
  {
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    goto LABEL_44;
  }

  v8 = Value;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v8))
  {
    switch(CFNumberGetType(v8))
    {
      case kCFNumberSInt8Type:
        valuePtr[0] = 0;
        v10 = v8;
        v11 = kCFNumberSInt8Type;
        goto LABEL_33;
      case kCFNumberSInt16Type:
        *valuePtr = 0;
        v28 = v8;
        v29 = kCFNumberSInt16Type;
        goto LABEL_28;
      case kCFNumberSInt32Type:
        *valuePtr = 0;
        v26 = v8;
        v27 = kCFNumberSInt32Type;
        goto LABEL_38;
      case kCFNumberSInt64Type:
        *valuePtr = 0;
        v18 = v8;
        v19 = kCFNumberSInt64Type;
        goto LABEL_36;
      case kCFNumberFloat32Type:
        *valuePtr = 0;
        v20 = v8;
        v21 = kCFNumberFloat32Type;
        goto LABEL_20;
      case kCFNumberFloat64Type:
        *valuePtr = 0;
        v24 = v8;
        v25 = kCFNumberFloat64Type;
        goto LABEL_30;
      case kCFNumberCharType:
        valuePtr[0] = 0;
        v10 = v8;
        v11 = kCFNumberCharType;
LABEL_33:
        v22 = CFNumberGetValue(v10, v11, valuePtr);
        v30 = valuePtr[0];
        goto LABEL_34;
      case kCFNumberShortType:
        *valuePtr = 0;
        v28 = v8;
        v29 = kCFNumberShortType;
LABEL_28:
        v22 = CFNumberGetValue(v28, v29, valuePtr);
        v30 = *valuePtr;
LABEL_34:
        v31 = v30;
        goto LABEL_39;
      case kCFNumberIntType:
        *valuePtr = 0;
        v26 = v8;
        v27 = kCFNumberIntType;
LABEL_38:
        v22 = CFNumberGetValue(v26, v27, valuePtr);
        v31 = *valuePtr;
        goto LABEL_39;
      case kCFNumberLongType:
        *valuePtr = 0;
        v18 = v8;
        v19 = kCFNumberLongType;
        goto LABEL_36;
      case kCFNumberLongLongType:
        *valuePtr = 0;
        v18 = v8;
        v19 = kCFNumberLongLongType;
        goto LABEL_36;
      case kCFNumberFloatType:
        *valuePtr = 0;
        v20 = v8;
        v21 = kCFNumberFloatType;
LABEL_20:
        v22 = CFNumberGetValue(v20, v21, valuePtr);
        v23 = *valuePtr;
        goto LABEL_40;
      case kCFNumberDoubleType:
        *valuePtr = 0;
        v24 = v8;
        v25 = kCFNumberDoubleType;
        goto LABEL_30;
      case kCFNumberCFIndexType:
        *valuePtr = 0;
        v18 = v8;
        v19 = kCFNumberCFIndexType;
        goto LABEL_36;
      case kCFNumberNSIntegerType:
        *valuePtr = 0;
        v18 = v8;
        v19 = kCFNumberNSIntegerType;
LABEL_36:
        v22 = CFNumberGetValue(v18, v19, valuePtr);
        v31 = *valuePtr;
        goto LABEL_39;
      case kCFNumberCGFloatType:
        *valuePtr = 0;
        v24 = v8;
        v25 = kCFNumberCGFloatType;
LABEL_30:
        v22 = CFNumberGetValue(v24, v25, valuePtr);
        v31 = *valuePtr;
LABEL_39:
        v23 = LODWORD(v31);
LABEL_40:
        v32 = v23 | 0x100000000;
        if (!v22)
        {
          v32 = 0;
        }

        v33 = v32 & 0x100000000;
        break;
      default:
        v33 = 0;
        LODWORD(v32) = 0;
        break;
    }

    v13 = v32 | v33;
    if ((v13 & 0x100000000) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v12 = CFBooleanGetTypeID();
    if (v12 != CFGetTypeID(v8))
    {
LABEL_44:
      v16 = filter_factory_log();
      a3 = 0.0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        KB::std_string(valuePtr, key);
        if (v44 >= 0)
        {
          v35 = valuePtr;
        }

        else
        {
          v35 = *valuePtr;
        }

        *__p = 136315138;
        *&__p[4] = v35;
        _os_log_error_impl(&dword_22CA55000, v16, OS_LOG_TYPE_ERROR, "Key '%s' is missing from specification or its value is not float", __p, 0xCu);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(*valuePtr);
        }
      }

      v15 = 0;
LABEL_46:

      *&v13 = a3;
      return v15 | v13;
    }

    *&v13 = CFBooleanGetValue(v8);
  }

  v14 = *&v13;
  if (*&v13 < a3 || *&v13 > a4)
  {
    v16 = filter_factory_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v14 >= a3)
    {
      if (v17)
      {
        KB::std_string(__p, key);
        v37 = v40 >= 0 ? __p : *__p;
        *valuePtr = 136315650;
        *&valuePtr[4] = v37;
        v42 = 2048;
        v43 = v14;
        v44 = 2048;
        v45 = a4;
        _os_log_error_impl(&dword_22CA55000, v16, OS_LOG_TYPE_ERROR, "Key '%s' has value %f, which is greater than upper bound %f", valuePtr, 0x20u);
        if (v40 < 0)
        {
          operator delete(*__p);
        }
      }

      v15 = 0x100000000;
      a3 = a4;
    }

    else
    {
      if (v17)
      {
        KB::std_string(__p, key);
        v36 = v40 >= 0 ? __p : *__p;
        *valuePtr = 136315650;
        *&valuePtr[4] = v36;
        v42 = 2048;
        v43 = v14;
        v44 = 2048;
        v45 = a3;
        _os_log_error_impl(&dword_22CA55000, v16, OS_LOG_TYPE_ERROR, "Key '%s' has value %f, which is less than lower bound %f", valuePtr, 0x20u);
        if (v40 < 0)
        {
          operator delete(*__p);
        }
      }

      v15 = 0x100000000;
    }

    goto LABEL_46;
  }

  v15 = 0x100000000;
  return v15 | v13;
}

uint64_t bounded_integer_for_key(const __CFDictionary *a1, const __CFString *key, int a3, int a4)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  if (!key)
  {
    goto LABEL_52;
  }

  LODWORD(v6) = a3;
  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    goto LABEL_52;
  }

  v8 = Value;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v8))
  {
    switch(CFNumberGetType(v8))
    {
      case kCFNumberSInt8Type:
        valuePtr[0] = 0;
        v10 = v8;
        v11 = kCFNumberSInt8Type;
        goto LABEL_39;
      case kCFNumberSInt16Type:
        *valuePtr = 0;
        v29 = v8;
        v30 = kCFNumberSInt16Type;
        goto LABEL_32;
      case kCFNumberSInt32Type:
        *valuePtr = 0;
        v21 = v8;
        v22 = kCFNumberSInt32Type;
        goto LABEL_47;
      case kCFNumberSInt64Type:
        *valuePtr = 0;
        v21 = v8;
        v22 = kCFNumberSInt64Type;
        goto LABEL_47;
      case kCFNumberFloat32Type:
        *valuePtr = 0;
        v23 = v8;
        v24 = kCFNumberFloat32Type;
        goto LABEL_24;
      case kCFNumberFloat64Type:
        *valuePtr = 0;
        v27 = v8;
        v28 = kCFNumberFloat64Type;
        goto LABEL_36;
      case kCFNumberCharType:
        valuePtr[0] = 0;
        v10 = v8;
        v11 = kCFNumberCharType;
LABEL_39:
        v32 = CFNumberGetValue(v10, v11, valuePtr);
        LOBYTE(v31) = valuePtr[0];
        if (!v32)
        {
          LOBYTE(v31) = 0;
        }

        v33 = valuePtr[0] < 0 && v32 != 0;
        v34.i64[0] = v32 != 0;
        v34.i64[1] = v33 << 63 >> 63;
        break;
      case kCFNumberShortType:
        *valuePtr = 0;
        v29 = v8;
        v30 = kCFNumberShortType;
LABEL_32:
        if (CFNumberGetValue(v29, v30, valuePtr))
        {
          v31 = *valuePtr & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_50;
      case kCFNumberIntType:
        *valuePtr = 0;
        v21 = v8;
        v22 = kCFNumberIntType;
        goto LABEL_47;
      case kCFNumberLongType:
        *valuePtr = 0;
        v21 = v8;
        v22 = kCFNumberLongType;
        goto LABEL_47;
      case kCFNumberLongLongType:
        *valuePtr = 0;
        v21 = v8;
        v22 = kCFNumberLongLongType;
        goto LABEL_47;
      case kCFNumberFloatType:
        *valuePtr = 0;
        v23 = v8;
        v24 = kCFNumberFloatType;
LABEL_24:
        v25 = CFNumberGetValue(v23, v24, valuePtr);
        v26 = *valuePtr;
        goto LABEL_48;
      case kCFNumberDoubleType:
        *valuePtr = 0;
        v27 = v8;
        v28 = kCFNumberDoubleType;
        goto LABEL_36;
      case kCFNumberCFIndexType:
        *valuePtr = 0;
        v21 = v8;
        v22 = kCFNumberCFIndexType;
        goto LABEL_47;
      case kCFNumberNSIntegerType:
        *valuePtr = 0;
        v21 = v8;
        v22 = kCFNumberNSIntegerType;
LABEL_47:
        v25 = CFNumberGetValue(v21, v22, valuePtr);
        v26 = *valuePtr;
        goto LABEL_48;
      case kCFNumberCGFloatType:
        *valuePtr = 0;
        v27 = v8;
        v28 = kCFNumberCGFloatType;
LABEL_36:
        v25 = CFNumberGetValue(v27, v28, valuePtr);
        v26 = *valuePtr;
LABEL_48:
        v31 = v26 | 0x100000000;
        if (!v25)
        {
          v31 = 0;
        }

LABEL_50:
        v34 = vshlq_u64(vdupq_n_s64(v31), xmmword_22CC88A20);
        break;
      default:
        LOBYTE(v31) = 0;
        v34 = 0uLL;
        break;
    }

    v35 = vandq_s8(vshlq_u64(v34, xmmword_22CC88A30), xmmword_22CC88A40);
    v15 = v35.i32[0] | v31 | v35.i32[2];
    if (!(v35.i64[0] & 0x100000000 | v35.i64[1] & 0x100000000))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v12 = CFBooleanGetTypeID();
    if (v12 == CFGetTypeID(v8))
    {
      v13 = CFBooleanGetValue(v8);
      v14 = 0x100000000;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = v14 | v13;
    if (((v14 | v13) & 0x100000000) == 0)
    {
LABEL_52:
      v6 = filter_factory_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        KB::std_string(valuePtr, key);
        if (v47 >= 0)
        {
          v37 = valuePtr;
        }

        else
        {
          v37 = *valuePtr;
        }

        *__p = 136315138;
        *&__p[4] = v37;
        _os_log_error_impl(&dword_22CA55000, v6, OS_LOG_TYPE_ERROR, "Key '%s' is missing from specification or its value is not int32_t", __p, 0xCu);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(*valuePtr);
        }
      }

      v20 = 0;
      LOBYTE(v6) = 0;
      v19 = 0;
      return v20 | v19 | v6;
    }
  }

  if (v15 >= v6 && v15 <= a4)
  {
    v19 = v15 & 0xFFFFFF00;
    v20 = 0x100000000;
    LOBYTE(v6) = v15;
  }

  else
  {
    v17 = filter_factory_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v15 >= v6)
    {
      if (v18)
      {
        KB::std_string(__p, key);
        v39 = v42 >= 0 ? __p : *__p;
        *valuePtr = 136315650;
        *&valuePtr[4] = v39;
        v44 = 1024;
        v45 = v15;
        v46 = 1024;
        v47 = a4;
        _os_log_error_impl(&dword_22CA55000, v17, OS_LOG_TYPE_ERROR, "Key '%s' has value %d, which is greater than upper bound %d", valuePtr, 0x18u);
        if (v42 < 0)
        {
          operator delete(*__p);
        }
      }

      v19 = a4 & 0xFFFFFF00;
      v20 = 0x100000000;
      LOBYTE(v6) = a4;
    }

    else
    {
      if (v18)
      {
        KB::std_string(__p, key);
        v38 = v42 >= 0 ? __p : *__p;
        *valuePtr = 136315650;
        *&valuePtr[4] = v38;
        v44 = 1024;
        v45 = v15;
        v46 = 1024;
        v47 = v6;
        _os_log_error_impl(&dword_22CA55000, v17, OS_LOG_TYPE_ERROR, "Key '%s' has value %d, which is less than lower bound %d", valuePtr, 0x18u);
        if (v42 < 0)
        {
          operator delete(*__p);
        }
      }

      v19 = 0;
      v20 = 0x100000000;
    }
  }

  return v20 | v19 | v6;
}

void std::__shared_ptr_emplace<KB::ChooseTopQualityAutocorrection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD84E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterDifferentLanguageThanContext>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 1)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterDifferentLanguageThanContext factory expects 1 parameter, but specification includes %ld", &v10, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"MinConfidenceToEstablishLanguage", 0.0, 1.0);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"MinConfidenceToEstablishLanguage", 0.0, 1.0);
  }

  if (HIDWORD(v7))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterDifferentLanguageThanContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD84B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterSortkeyMatchFromDifferentLanguage>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 2)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v12 = 134217984;
      Count = CFDictionaryGetCount(v10);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterSortkeyMatchFromDifferentLanguage factory expects 2 parameters, but specification includes %ld", &v12, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"MinConfidenceToEstablishCurrentLanguage", 0.0, 1.0);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"MinConfidenceToEstablishCurrentLanguage", 0.0, 1.0);
  }

  if (HIDWORD(v7))
  {
    v8 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
      v9 = bounded_float_for_key(v8, @"SameLanguageSortkeyMatchDominanceRatio", 1.0, INFINITY);
      CFRelease(v8);
    }

    else
    {
      v9 = bounded_float_for_key(0, @"SameLanguageSortkeyMatchDominanceRatio", 1.0, INFINITY);
    }

    if (HIDWORD(v9))
    {
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterSortkeyMatchFromDifferentLanguage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterContinuousPathAlternatesFromOtherLanguage>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 1)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterContinuousPathAlternatesFromOtherLanguage factory expects 1 parameter, but specification includes %ld", &v10, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"MinConfidenceToEstablishContinuousPathLanguage", 0.0, 1.0);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"MinConfidenceToEstablishContinuousPathLanguage", 0.0, 1.0);
  }

  if (HIDWORD(v7))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterContinuousPathAlternatesFromOtherLanguage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNoPredictContinuousPathAlternates>(const __CFDictionary **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (v4 && CFDictionaryGetCount(v4))
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v8 = 134217984;
      Count = CFDictionaryGetCount(v6);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterNoPredictContinuousPathAlternates factory expects 0 parameters, but specification includes %ld", &v8, 0xCu);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterNoPredictContinuousPathAlternates>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterLowQualityContinuousPathRetrocorrections>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 1)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterLowQualityContinuousPathRetrocorrections factory expects 2 parameters, but specification includes %ld", &v10, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"MinOmegaRatioForContinuousPathRetrocorrections", 0.0, 1.0);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"MinOmegaRatioForContinuousPathRetrocorrections", 0.0, 1.0);
  }

  if (HIDWORD(v7))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterLowQualityContinuousPathRetrocorrections>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD83D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterPartOfHyphenatedWord>(const __CFDictionary **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (v6 && CFDictionaryGetCount(v6))
  {
    v7 = filter_factory_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v7, OS_LOG_TYPE_ERROR, "FilterPartOfHyphenatedWord> factory expects 0 parameters, but specification includes %ld", &v10, 0xCu);
    }
  }

  if (*(a2 + 185) == 1)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterPartOfHyphenatedWord>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterWithoutSupplementalWords>(const __CFDictionary **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (v6 && CFDictionaryGetCount(v6))
  {
    v7 = filter_factory_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v7, OS_LOG_TYPE_ERROR, "FilterWithoutSupplementalWords factory expects 0 parameters, but specification includes %ld", &v10, 0xCu);
    }
  }

  if (*(a2 + 185) == 1)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterWithoutSupplementalWords>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD80D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterContactWordsConflictingWithValidInput>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "CandidateFilterContactWordsConflictingWithValidInput";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterContactWordsConflictingWithValidInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterInvalidTextReplacement>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterInvalidTextReplacement";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterInvalidTextReplacement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD89C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterTopDynamicWordsWithStaticVariant>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 2)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v12 = 134217984;
      Count = CFDictionaryGetCount(v10);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterTopDynamicWordsWithStaticVariant factory expects 2 parameters, but specification includes %ld", &v12, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_integer_for_key(v6, @"MinUsageCountForDynamicCaseVariant", 0, 0xFFFF);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_integer_for_key(0, @"MinUsageCountForDynamicCaseVariant", 0, 0xFFFF);
  }

  if (HIDWORD(v7))
  {
    v8 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
      v9 = bounded_float_for_key(v8, @"MinOmegaRatioForDynamicCaseVariant", 1.0, INFINITY);
      CFRelease(v8);
    }

    else
    {
      v9 = bounded_float_for_key(0, @"MinOmegaRatioForDynamicCaseVariant", 1.0, INFINITY);
    }

    if (HIDWORD(v9))
    {
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterTopDynamicWordsWithStaticVariant>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterLearnedTypo>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterLearnedTypo";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterLearnedTypo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::RescoreShortWords>(const __CFDictionary **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      memset(v7, 0, sizeof(v7));
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v9 = "RescoreShortWords";
      v10 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
      std::__function::__value_func<BOOL ()(KB::Candidate &,KB::Candidate &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)>::~__value_func[abi:nn200100](v7);
    }
  }

  operator new();
}

uint64_t std::__function::__value_func<BOOL ()(KB::Candidate &,KB::Candidate &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__shared_ptr_emplace<KB::RescoreShortWords>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD88F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::ExemptHighFrequencyWordsFromNoSuggest>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "ExemptHighFrequencyWordsFromNoSuggest";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::ExemptHighFrequencyWordsFromNoSuggest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD88C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::BoostCaseVariantsOfTopCandidate>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "BoostCaseVariantsOfTopCandidate";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::BoostCaseVariantsOfTopCandidate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::BoostMinimumVariation>(CFTypeRef *a1@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!v5 || CFDictionaryGetCount(v5) != 1)
  {
    v6 = filter_factory_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v11 = 134217984;
      Count = CFDictionaryGetCount(v9);
      _os_log_error_impl(&dword_22CA55000, v6, OS_LOG_TYPE_ERROR, "BoostMinimumVariation factory expects 1 parameter, but specification includes %ld", &v11, 0xCu);
    }
  }

  v7 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v8 = bounded_float_for_key(v7, @"MinCandidateDominanceRatio", 1.0, INFINITY);
    CFRelease(v7);
  }

  else
  {
    v8 = bounded_float_for_key(0, @"MinCandidateDominanceRatio", 1.0, INFINITY);
  }

  if (HIDWORD(v8))
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void std::__shared_ptr_emplace<KB::BoostMinimumVariation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::BoostPreferedFormForSortkey>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 1)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "BoostPreferedFormForSortkey factory expects 1 parameter, but specification includes %ld", &v10, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"MinSuggestionDominanceRatio", 1.0, INFINITY);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"MinSuggestionDominanceRatio", 1.0, INFINITY);
  }

  if (HIDWORD(v7))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::BoostPreferedFormForSortkey>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD82F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterInputPrefixMismatch>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 2)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v12 = 134217984;
      Count = CFDictionaryGetCount(v10);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterInputPrefixMismatch factory expects 2 parameters, but specification includes %ld", &v12, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_integer_for_key(v6, @"MinPrefixMatchLen", 0, 0xFFFF);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_integer_for_key(0, @"MinPrefixMatchLen", 0, 0xFFFF);
  }

  if (HIDWORD(v7))
  {
    v8 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
      v9 = bounded_integer_for_key(v8, @"MinTargetCandidates", 0, 0xFFFF);
      CFRelease(v8);
    }

    else
    {
      v9 = bounded_integer_for_key(0, @"MinTargetCandidates", 0, 0xFFFF);
    }

    if (HIDWORD(v9))
    {
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterInputPrefixMismatch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD82C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNondominantCorrectionOfMoreWords>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 2)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v12 = 134217984;
      Count = CFDictionaryGetCount(v10);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterNondominantCorrectionOfMoreWords factory expects 2 parameters, but specification includes %ld", &v12, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"SortKeyMatchBoostRatio", 1.0, INFINITY);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"SortKeyMatchBoostRatio", 1.0, INFINITY);
  }

  if (HIDWORD(v7))
  {
    v8 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
      v9 = bounded_float_for_key(v8, @"NonRetrocorrectionBoostRatio", 1.0, INFINITY);
      CFRelease(v8);
    }

    else
    {
      v9 = bounded_float_for_key(0, @"NonRetrocorrectionBoostRatio", 1.0, INFINITY);
    }

    if (HIDWORD(v9))
    {
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterNondominantCorrectionOfMoreWords>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCorrectionsIfAnyCandidateMatchesInput>(const __CFDictionary **a1)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  if (CFDictionaryGetCount(v3) != 1)
  {
    goto LABEL_6;
  }

  v4 = *a1;
  if (v4)
  {
    CFRetain(v4);
    bounded_integer_for_key(v4, @"WithinTopXAutocorrectionCandidates", 1, 0x7FFFFFFF);
    CFRelease(v4);
  }

  else
  {
LABEL_5:
    bounded_integer_for_key(0, @"WithinTopXAutocorrectionCandidates", 1, 0x7FFFFFFF);
  }

LABEL_6:
  operator new();
}

void std::__shared_ptr_emplace<KB::FilterCorrectionsIfAnyCandidateMatchesInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD80A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterMissingOneLetterWordFromInput>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterMissingOneLetterWordFromInput";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterMissingOneLetterWordFromInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterAllCapsNoSuggestWordsOfLength>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 1)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterAllCapsNoSuggestWordsOfLength factory expects 1 parameter, but specification includes %ld", &v10, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_integer_for_key(v6, @"Length", 1, 0xFFFF);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_integer_for_key(0, @"Length", 1, 0xFFFF);
  }

  if (HIDWORD(v7))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterAllCapsNoSuggestWordsOfLength>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterPopupVariantMismatch>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterPopupVariantMismatch";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterPopupVariantMismatch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterWordEndingApostropheBetweenNonseparators>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterWordEndingApostropheBetweenNonseparators";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterWordEndingApostropheBetweenNonseparators>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD87E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterDoubleApostrophe>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterDoubleApostrophe";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterDoubleApostrophe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD87A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterAlteredURLFragments>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterAlteredURLFragments";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterAlteredURLFragments>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(CFDictionaryRef *a1@<X0>, void *a2@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 2)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v39 = *a1;
      if (!*a1)
      {
        goto LABEL_102;
      }

      LODWORD(__s1.__r_.__value_.__l.__data_) = 134217984;
      *(__s1.__r_.__value_.__r.__words + 4) = CFDictionaryGetCount(v39);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterCharacterCount factory expects 2 parameters, but specification includes %ld", &__s1, 0xCu);
    }
  }

  {
    KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::character_key = @"Character";
  }

  if (!*a1)
  {
LABEL_102:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&__p, *a1, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::character_key);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_)
    {
      v7 = __p.__r_.__value_.__r.__words[0];
LABEL_12:
      if (size >= 0xFFFF)
      {
        v8 = 0xFFFF;
      }

      else
      {
        v8 = size;
      }

      KB::String::String(&__s1, v7, v8);
      v9 = WORD2(__s1.__r_.__value_.__r.__words[0]);
      if (!WORD2(__s1.__r_.__value_.__r.__words[0]))
      {
        KB::String::compute_length(&__s1);
        v9 = WORD2(__s1.__r_.__value_.__r.__words[0]);
      }

      if (v9 != 1)
      {
        v10 = filter_factory_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          KB::std_string(buf, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::character_key);
          if (v54 >= 0)
          {
            v41 = buf;
          }

          else
          {
            v41 = *buf;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *v47 = 136315394;
          v48 = v41;
          v49 = 2080;
          v50 = p_p;
          _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "String for key '%s' has more than one code point (string='%s')", v47, 0x16u);
          if (v54 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      v11 = __s1.__r_.__value_.__l.__size_;
      v12 = &__s1.__r_.__value_.__s.__data_[16];
      if (__s1.__r_.__value_.__l.__size_)
      {
        v12 = __s1.__r_.__value_.__l.__size_;
      }

      *buf = v12;
      *&buf[8] = 0;
      data_low = LOWORD(__s1.__r_.__value_.__l.__data_);
      KB::String::iterator::initialize(buf);
      if (v11 && __s1.__r_.__value_.__s.__data_[6] == 1)
      {
        free(v11);
      }

      {
        KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::count_relation_key = @"CharacterCountRelation";
      }

      if (*a1)
      {
        applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&__s1, *a1, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::count_relation_key);
        v13 = [@"LessThanInputCount" UTF8String];
        v14 = strlen(v13);
        v15 = v14;
        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v14 != __s1.__r_.__value_.__l.__size_)
          {
            goto LABEL_36;
          }

          if (v14 == -1)
          {
            goto LABEL_107;
          }

          p_s1 = __s1.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v14 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_36;
          }

          p_s1 = &__s1;
        }

        if (!memcmp(p_s1, v13, v15))
        {
          goto LABEL_75;
        }

LABEL_36:
        v18 = [@"LessThanOrEqualToInputCount" UTF8String];
        v19 = strlen(v18);
        v20 = v19;
        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v19 != __s1.__r_.__value_.__l.__size_)
          {
            goto LABEL_43;
          }

          if (v19 == -1)
          {
            goto LABEL_107;
          }

          v21 = __s1.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v19 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_43;
          }

          v21 = &__s1;
        }

        if (!memcmp(v21, v18, v20))
        {
          goto LABEL_75;
        }

LABEL_43:
        v22 = [@"EqualToInputCount" UTF8String];
        v23 = strlen(v22);
        v24 = v23;
        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v23 != __s1.__r_.__value_.__l.__size_)
          {
            goto LABEL_50;
          }

          if (v23 == -1)
          {
            goto LABEL_107;
          }

          v25 = __s1.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v23 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_50;
          }

          v25 = &__s1;
        }

        if (!memcmp(v25, v22, v24))
        {
          goto LABEL_75;
        }

LABEL_50:
        v26 = [@"NotEqualToInputCount" UTF8String];
        v27 = strlen(v26);
        v28 = v27;
        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v27 != __s1.__r_.__value_.__l.__size_)
          {
            goto LABEL_57;
          }

          if (v27 == -1)
          {
            goto LABEL_107;
          }

          v29 = __s1.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (v27 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_57;
          }

          v29 = &__s1;
        }

        if (!memcmp(v29, v26, v28))
        {
          goto LABEL_75;
        }

LABEL_57:
        v30 = [@"GreaterThanOrEqualToInputCount" UTF8String];
        v31 = strlen(v30);
        v32 = v31;
        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v31 == __s1.__r_.__value_.__l.__size_)
          {
            if (v31 == -1)
            {
              goto LABEL_107;
            }

            v33 = __s1.__r_.__value_.__r.__words[0];
            goto LABEL_64;
          }
        }

        else if (v31 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
        {
          v33 = &__s1;
LABEL_64:
          if (!memcmp(v33, v30, v32))
          {
            goto LABEL_75;
          }
        }

        v34 = [@"GreaterThanInputCount" UTF8String];
        v35 = strlen(v34);
        v36 = v35;
        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          if (v35 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
          {
            v37 = &__s1;
            goto LABEL_72;
          }

LABEL_73:
          v38 = filter_factory_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            KB::std_string(buf, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::count_relation_key);
            if (v54 >= 0)
            {
              v43 = buf;
            }

            else
            {
              v43 = *buf;
            }

            v44 = &__s1;
            if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v44 = __s1.__r_.__value_.__r.__words[0];
            }

            *v47 = 136315394;
            v48 = v43;
            v49 = 2080;
            v50 = v44;
            _os_log_error_impl(&dword_22CA55000, v38, OS_LOG_TYPE_ERROR, "Key '%s' is missing from specification or has unrecognized value '%s'", v47, 0x16u);
            if (v54 < 0)
            {
              operator delete(*buf);
            }
          }

          *a2 = 0;
          a2[1] = 0;
          if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s1.__r_.__value_.__l.__data_);
          }

          goto LABEL_78;
        }

        if (v35 != __s1.__r_.__value_.__l.__size_)
        {
          goto LABEL_73;
        }

        if (v35 != -1)
        {
          v37 = __s1.__r_.__value_.__r.__words[0];
LABEL_72:
          if (memcmp(v37, v34, v36))
          {
            goto LABEL_73;
          }

LABEL_75:
          operator new();
        }

LABEL_107:
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      goto LABEL_102;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    v7 = &__p;
    goto LABEL_12;
  }

  v17 = filter_factory_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    KB::std_string(&__s1, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterCharacterCount>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::character_key);
    v40 = (__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__s1 : __s1.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_error_impl(&dword_22CA55000, v17, OS_LOG_TYPE_ERROR, "Key '%s' is missing from specification or is not a UTF-8 string", buf, 0xCu);
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }
  }

  *a2 = 0;
  a2[1] = 0;
LABEL_78:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__shared_ptr_emplace<KB::FilterCharacterCount>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNumberlikeTokenMismatch>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterNumberlikeTokenMismatch";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterNumberlikeTokenMismatch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNumberMismatch>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterNumberMismatch";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterNumberMismatch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(CFDictionaryRef *a1@<X0>, void *a3@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!v5 || CFDictionaryGetCount(v5) != 3)
  {
    v6 = filter_factory_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v38 = *a1;
      if (!*a1)
      {
        goto LABEL_97;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = CFDictionaryGetCount(v38);
      _os_log_error_impl(&dword_22CA55000, v6, OS_LOG_TYPE_ERROR, "FilterNotSuggestibleForInput factory expects 3 parameters, but specification includes %ld", &buf, 0xCu);
    }
  }

  {
    KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::should_remove_vulgar = @"ShouldRemoveVulgar";
  }

  if (!*a1)
  {
LABEL_97:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&buf, *a1, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::should_remove_vulgar);
  v7 = [@"RemoveVulgar" UTF8String];
  v8 = strlen(v7);
  v9 = v8;
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v8 != buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_14;
    }

    if (v8 == -1)
    {
      goto LABEL_100;
    }

    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v8 != SHIBYTE(buf.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_14;
    }

    p_buf = &buf;
  }

  if (!memcmp(p_buf, v7, v9))
  {
    goto LABEL_30;
  }

LABEL_14:
  v11 = [@"RemoveVulgarOnlyIfNotAllowlisted" UTF8String];
  v12 = strlen(v11);
  v13 = v12;
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v12 != buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_21;
    }

    if (v12 == -1)
    {
      goto LABEL_100;
    }

    v14 = buf.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v12 != SHIBYTE(buf.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_21;
    }

    v14 = &buf;
  }

  if (!memcmp(v14, v11, v13))
  {
    goto LABEL_30;
  }

LABEL_21:
  v15 = [@"DoNotRemoveVulgar" UTF8String];
  v16 = strlen(v15);
  v17 = v16;
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v16 == buf.__r_.__value_.__l.__size_)
    {
      if (v16 == -1)
      {
        goto LABEL_100;
      }

      v18 = buf.__r_.__value_.__r.__words[0];
      goto LABEL_27;
    }

LABEL_28:
    v19 = filter_factory_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      KB::std_string(&__s1, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::should_remove_vulgar);
      if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_s1 = &__s1;
      }

      else
      {
        p_s1 = __s1.__r_.__value_.__r.__words[0];
      }

      v40 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v55.__r_.__value_.__l.__data_) = 136315394;
      *(v55.__r_.__value_.__r.__words + 4) = p_s1;
      WORD2(v55.__r_.__value_.__r.__words[1]) = 2080;
      *(&v55.__r_.__value_.__r.__words[1] + 6) = v40;
      _os_log_error_impl(&dword_22CA55000, v19, OS_LOG_TYPE_ERROR, "Key '%s' is missing from specification or has unrecognized value '%s'", &v55, 0x16u);
      if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s1.__r_.__value_.__l.__data_);
      }
    }

    *a3 = 0;
    a3[1] = 0;
    goto LABEL_80;
  }

  if (v16 != SHIBYTE(buf.__r_.__value_.__r.__words[2]))
  {
    goto LABEL_28;
  }

  v18 = &buf;
LABEL_27:
  if (memcmp(v18, v15, v17))
  {
    goto LABEL_28;
  }

LABEL_30:
  {
    KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::word_equivalence_type_key = @"WordEquivalenceType";
  }

  if (!*a1)
  {
    goto LABEL_97;
  }

  applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&__s1, *a1, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::word_equivalence_type_key);
  v20 = [@"SortkeyEquivalence" UTF8String];
  v21 = strlen(v20);
  v22 = v21;
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v21 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_39;
    }

    if (v21 == -1)
    {
      goto LABEL_100;
    }

    v23 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v21 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_39;
    }

    v23 = &__s1;
  }

  if (!memcmp(v23, v20, v22))
  {
    goto LABEL_48;
  }

LABEL_39:
  v24 = [@"SurfaceFormEquivalence" UTF8String];
  v25 = strlen(v24);
  v26 = v25;
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v25 == __s1.__r_.__value_.__l.__size_)
    {
      if (v25 == -1)
      {
        goto LABEL_100;
      }

      v27 = __s1.__r_.__value_.__r.__words[0];
      goto LABEL_45;
    }
  }

  else if (v25 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
  {
    v27 = &__s1;
LABEL_45:
    if (memcmp(v27, v24, v26))
    {
      goto LABEL_46;
    }

LABEL_48:
    {
      KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::apply_filter_condition_key = @"ApplyFilterCondition";
    }

    if (*a1)
    {
      applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&v55, *a1, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::apply_filter_condition_key);
      v29 = [@"ApplyAlways" UTF8String];
      v30 = strlen(v29);
      v31 = v30;
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v30 == v55.__r_.__value_.__l.__size_)
        {
          if (v30 == -1)
          {
            goto LABEL_100;
          }

          v32 = v55.__r_.__value_.__r.__words[0];
          goto LABEL_56;
        }
      }

      else if (v30 == SHIBYTE(v55.__r_.__value_.__r.__words[2]))
      {
        v32 = &v55;
LABEL_56:
        if (!memcmp(v32, v29, v31))
        {
          goto LABEL_75;
        }
      }

      v33 = [@"ApplyIfCandidatesContainInputMatch" UTF8String];
      v34 = strlen(v33);
      v35 = v34;
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (v34 == SHIBYTE(v55.__r_.__value_.__r.__words[2]))
        {
          v36 = &v55;
          goto LABEL_63;
        }

LABEL_64:
        v37 = filter_factory_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          KB::std_string(v47, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::apply_filter_condition_key);
          if (v50 >= 0)
          {
            v43 = v47;
          }

          else
          {
            v43 = *v47;
          }

          v44 = &v55;
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v55.__r_.__value_.__r.__words[0];
          }

          *v51 = 136315394;
          v52 = v43;
          v53 = 2080;
          v54 = v44;
          _os_log_error_impl(&dword_22CA55000, v37, OS_LOG_TYPE_ERROR, "Key '%s' is missing from specification or has unrecognized value '%s'", v51, 0x16u);
          if (v50 < 0)
          {
            operator delete(*v47);
          }
        }

        *a3 = 0;
        a3[1] = 0;
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        goto LABEL_78;
      }

      if (v34 != v55.__r_.__value_.__l.__size_)
      {
        goto LABEL_64;
      }

      if (v34 != -1)
      {
        v36 = v55.__r_.__value_.__r.__words[0];
LABEL_63:
        if (memcmp(v36, v33, v35))
        {
          goto LABEL_64;
        }

LABEL_75:
        operator new();
      }

LABEL_100:
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    goto LABEL_97;
  }

LABEL_46:
  v28 = filter_factory_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    KB::std_string(&v55, KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterNotSuggestibleForInput>(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)::word_equivalence_type_key);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v55;
    }

    else
    {
      v41 = v55.__r_.__value_.__r.__words[0];
    }

    v42 = &__s1;
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = __s1.__r_.__value_.__r.__words[0];
    }

    *v47 = 136315394;
    *&v47[4] = v41;
    v48 = 2080;
    v49 = v42;
    _os_log_error_impl(&dword_22CA55000, v28, OS_LOG_TYPE_ERROR, "Key '%s' is missing from specification or has unrecognized value '%s'", v47, 0x16u);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_78:
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_80:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void std::__shared_ptr_emplace<KB::FilterNotSuggestibleForInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD81A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterControlCharacters>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterControlCharacters";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterControlCharacters>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD86C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterIncomplete>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterIncomplete";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterIncomplete>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8690;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterAppNames>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterAppNames";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterAppNames>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterWordsConflictingWithValidContactNames>(CFTypeRef *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4 || CFDictionaryGetCount(v4) != 1)
  {
    v5 = filter_factory_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      v10 = 134217984;
      Count = CFDictionaryGetCount(v8);
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "FilterWordsConflictingWithValidContactNames factory expects 1 parameter, but specification includes %ld", &v10, 0xCu);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v7 = bounded_float_for_key(v6, @"LanguagePowerRatio", 0.0, 1.0);
    CFRelease(v6);
  }

  else
  {
    v7 = bounded_float_for_key(0, @"LanguagePowerRatio", 0.0, 1.0);
  }

  if (HIDWORD(v7))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void std::__shared_ptr_emplace<KB::FilterWordsConflictingWithValidContactNames>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__function::__func<std::shared_ptr<KB::CandidateFilter> (*)(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&),std::allocator<std::shared_ptr<KB::CandidateFilter> (*)(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>,std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::operator()(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  cf = *a2;
  *a2 = 0;
  v3(&cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::__function::__func<std::shared_ptr<KB::CandidateFilter> (*)(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&),std::allocator<std::shared_ptr<KB::CandidateFilter> (*)(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>,std::shared_ptr<KB::CandidateFilter> ()(applesauce::CF::DictionaryRef,KB::CandidateFilterConfiguration const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FD8058;
  a2[1] = v2;
  return result;
}

void KB::CandidateFilterFactory::create_filter_with_parameters<KB::FilterZeroProbability>(const __CFDictionary **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 && CFDictionaryGetCount(v3))
  {
    v4 = filter_factory_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      if (!*a1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = 136315394;
      v8 = "FilterZeroProbability";
      v9 = 2048;
      Count = CFDictionaryGetCount(v5);
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%s factory expects 0 parameters, but specification includes %ld", buf, 0x16u);
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<KB::FilterZeroProbability>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD85F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<KB::CompositeCandidateFilter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::CandidateFilterFactory::create_standard_filter_definition(KB::CandidateFilterFlags **a1, uint64_t a2)
{
  v346[1] = *MEMORY[0x277D85DE8];
  if (KB::CandidateFilterFlags::candidate_filter_flag_type(a1[18], a1[19]) - 1 > 1)
  {
    return;
  }

  v4 = *a1;
  if ((*a1 - 1) >= 4)
  {
    if ((v4 - 5) >= 2)
    {
      if (v4)
      {
        return;
      }

      v23 = *(a1 + 34);
      if (!v23)
      {
        v112 = filter_factory_log();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22CA55000, v112, OS_LOG_TYPE_INFO, "Create standard autocorrect candidate filter (TICandQualityFilter).", buf, 2u);
        }

        KB::CandidateFilterFactory::create_standard_autocorrect_filter_definition(a1, a2);
        return;
      }

      if (v23 == 1)
      {
        v24 = filter_factory_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22CA55000, v24, OS_LOG_TYPE_INFO, "Create standard autocorrect candidate filter (TIFavoniusCandQualityFilter).", buf, 2u);
        }

        KB::CandidateFilterFactory::create_standard_autocorrect_filter_favonius_definition(a1, a2);
        return;
      }
    }

    v15 = filter_factory_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22CA55000, v15, OS_LOG_TYPE_INFO, "Create standard continuous path candidate filter.", buf, 2u);
    }

    v16 = *(a1 + 10);
    v17 = *(a1 + 14);
    v18 = *(a1 + 24);
    v293 = @"FilterName";
    v301 = @"FilterZeroProbability";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v301 forKeys:&v293 count:1];
    v20 = v19;
    if (v19)
    {
      CFRetain(v19);
      v303 = v20;
      v21 = CFGetTypeID(v20);
      v22 = v20;
      if (v21 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v22 = 0;
      v303 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v303);
    if (v22)
    {
      CFRelease(v22);
    }

    v281 = @"FilterName";
    v283 = @"FilterIncomplete";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v283 forKeys:&v281 count:1];
    v35 = v34;
    if (v34)
    {
      CFRetain(v34);
      v291 = v35;
      v36 = CFGetTypeID(v35);
      v37 = v35;
      if (v36 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v37 = 0;
      v291 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v291);
    if (v37)
    {
      CFRelease(v37);
    }

    if (*(a1 + 185) == 1)
    {
      v272 = @"FilterName";
      v274 = @"FilterWithoutSupplementalWords";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v274 forKeys:&v272 count:1];
      v39 = v38;
      if (v38)
      {
        CFRetain(v38);
        v276 = v39;
        v40 = CFGetTypeID(v39);
        v41 = v39;
        if (v40 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v41 = 0;
        v276 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v276);
      if (v41)
      {
        CFRelease(v41);
      }

      v264[0] = @"FilterName";
      v265[0] = @"FilterPartOfHyphenatedWord";
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v265 forKeys:v264 count:1];
      v67 = v66;
      if (v66)
      {
        CFRetain(v66);
        v270 = v67;
        v68 = CFGetTypeID(v67);
        v69 = v67;
        if (v68 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v69 = 0;
        v270 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v270);
      if (v69)
      {
        CFRelease(v69);
      }
    }

    v344 = @"FilterName";
    v345 = @"FilterInvalidTextReplacement";
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
    v71 = v70;
    if (v70)
    {
      CFRetain(v70);
      v346[0] = v71;
      v72 = CFGetTypeID(v71);
      v73 = v71;
      if (v72 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v73 = 0;
      v346[0] = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, v346);
    if (v73)
    {
      CFRelease(v73);
    }

    v341 = @"FilterName";
    v342 = @"ExemptHighFrequencyWordsFromNoSuggest";
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
    v75 = v74;
    if (v74)
    {
      CFRetain(v74);
      v343 = v75;
      v76 = CFGetTypeID(v75);
      v77 = v75;
      if (v76 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v77 = 0;
      v343 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v343);
    if (v77)
    {
      CFRelease(v77);
    }

    v288 = @"FilterNotSuggestibleForInput";
    v320 = @"WordEquivalenceType";
    v321 = @"ApplyFilterCondition";
    *buf = @"SurfaceFormEquivalence";
    v324 = @"ApplyAlways";
    v285 = @"FilterName";
    v286 = @"Parameters";
    v322 = @"ShouldRemoveVulgar";
    v325 = @"RemoveVulgarOnlyIfNotAllowlisted";
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v320 count:3];
    v289 = v78;
    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v285 count:2];
    v80 = v79;
    if (v79)
    {
      CFRetain(v79);
      v340 = v80;
      v81 = CFGetTypeID(v80);
      v82 = v80;
      if (v81 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v82 = 0;
      v340 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v340);
    if (v82)
    {
      CFRelease(v82);
    }

    v328 = @"FilterLowQualityContinuousPathRetrocorrections";
    v326 = @"FilterName";
    v327 = @"Parameters";
    v337 = @"MinOmegaRatioForContinuousPathRetrocorrections";
    LODWORD(v83) = v17;
    v84 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
    v338 = v84;
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
    v329 = v85;
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v328 forKeys:&v326 count:2];
    v87 = v86;
    if (v86)
    {
      CFRetain(v86);
      v339 = v87;
      v88 = CFGetTypeID(v87);
      v89 = v87;
      if (v88 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v89 = 0;
      v339 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v339);
    if (v89)
    {
      CFRelease(v89);
    }

    v317 = @"BoostPreferedFormForSortkey";
    v315 = @"FilterName";
    v316 = @"Parameters";
    v334 = @"MinSuggestionDominanceRatio";
    LODWORD(v90) = v16;
    v91 = [MEMORY[0x277CCABB0] numberWithFloat:v90];
    v335 = v91;
    v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
    v318 = v92;
    v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v317 forKeys:&v315 count:2];
    v94 = v93;
    if (v93)
    {
      CFRetain(v93);
      v336 = v94;
      v95 = CFGetTypeID(v94);
      v96 = v94;
      if (v95 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v96 = 0;
      v336 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v336);
    if (v96)
    {
      CFRelease(v96);
    }

    v331 = @"FilterName";
    v332 = @"FilterNoPredictContinuousPathAlternates";
    v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
    v98 = v97;
    if (v97)
    {
      CFRetain(v97);
      v333 = v98;
      v99 = CFGetTypeID(v98);
      v100 = v98;
      if (v99 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v100 = 0;
      v333 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v333);
    if (v100)
    {
      CFRelease(v100);
    }

    if (*(a1 + 187) == 1)
    {
      v314 = @"FilterName";
      v319 = @"BoostCaseVariantsOfTopCandidate";
      v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v319 forKeys:&v314 count:1];
      v103 = v102;
      if (v102)
      {
        CFRetain(v102);
        v330 = v103;
        v104 = CFGetTypeID(v103);
        v105 = v103;
        if (v104 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v105 = 0;
        v330 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v330);
      if (v105)
      {
        CFRelease(v105);
      }
    }

    v306 = @"Parameters";
    v307 = @"FilterContinuousPathAlternatesFromOtherLanguage";
    v305 = @"FilterName";
    v311 = @"MinConfidenceToEstablishContinuousPathLanguage";
    LODWORD(v101) = v18;
    v106 = [MEMORY[0x277CCABB0] numberWithFloat:v101];
    v312 = v106;
    v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
    v308 = v107;
    v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v307 forKeys:&v305 count:2];
    v109 = v108;
    if (v108)
    {
      CFRetain(v108);
      v313 = v109;
      v110 = CFGetTypeID(v109);
      v111 = v109;
      if (v110 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v111 = 0;
      v313 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v313);
    if (v111)
    {
      CFRelease(v111);
    }

    goto LABEL_330;
  }

  v5 = *(a1 + 34);
  if (!v5)
  {
    v25 = filter_factory_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22CA55000, v25, OS_LOG_TYPE_INFO, "Create standard prediction, completion, or replacement candidate filter (TICandQualityFilter).", buf, 2u);
    }

    v26 = *(a1 + 11);
    v27 = *(a1 + 16);
    v28 = a1[9];
    v29 = *(a1 + 23);
    v346[0] = @"FilterName";
    v264[0] = @"FilterZeroProbability";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v346 count:1];
    v31 = v30;
    if (v30)
    {
      CFRetain(v30);
      v265[0] = v31;
      v32 = CFGetTypeID(v31);
      v33 = v31;
      if (v32 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v33 = 0;
      v265[0] = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, v265);
    if (v33)
    {
      CFRelease(v33);
    }

    v343 = @"FilterName";
    v344 = @"FilterAppNames";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
    v47 = v46;
    if (v46)
    {
      CFRetain(v46);
      v345 = v47;
      v48 = CFGetTypeID(v47);
      v49 = v47;
      if (v48 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v49 = 0;
      v345 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v345);
    if (v49)
    {
      CFRelease(v49);
    }

    v340 = @"FilterName";
    v341 = @"FilterIncomplete";
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
    v55 = v54;
    if (v54)
    {
      CFRetain(v54);
      v342 = v55;
      v56 = CFGetTypeID(v55);
      v57 = v55;
      if (v56 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v57 = 0;
      v342 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v342);
    if (v57)
    {
      CFRelease(v57);
    }

    if (*(a1 + 185) == 1)
    {
      v337 = @"FilterName";
      v338 = @"FilterWithoutSupplementalWords";
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
      v63 = v62;
      if (v62)
      {
        CFRetain(v62);
        v339 = v63;
        v64 = CFGetTypeID(v63);
        v65 = v63;
        if (v64 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v65 = 0;
        v339 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v339);
      if (v65)
      {
        CFRelease(v65);
      }

      v334 = @"FilterName";
      v335 = @"FilterPartOfHyphenatedWord";
      v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
      v118 = v117;
      if (v117)
      {
        CFRetain(v117);
        v336 = v118;
        v119 = CFGetTypeID(v118);
        v120 = v118;
        if (v119 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v120 = 0;
        v336 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v336);
      if (v120)
      {
        CFRelease(v120);
      }
    }

    v331 = @"FilterName";
    v332 = @"FilterControlCharacters";
    v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
    v188 = v187;
    if (v187)
    {
      CFRetain(v187);
      v333 = v188;
      v189 = CFGetTypeID(v188);
      v190 = v188;
      if (v189 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v190 = 0;
      v333 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v333);
    if (v190)
    {
      CFRelease(v190);
    }

    v328 = @"FilterNotSuggestibleForInput";
    v326 = @"FilterName";
    v327 = @"Parameters";
    v320 = @"WordEquivalenceType";
    v321 = @"ApplyFilterCondition";
    *buf = @"SortkeyEquivalence";
    v324 = @"ApplyIfCandidatesContainInputMatch";
    v322 = @"ShouldRemoveVulgar";
    v325 = @"RemoveVulgar";
    v191 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v320 count:3];
    v329 = v191;
    v192 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v328 forKeys:&v326 count:2];
    v193 = v192;
    if (v192)
    {
      CFRetain(v192);
      v330 = v193;
      v194 = CFGetTypeID(v193);
      v195 = v193;
      if (v194 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v195 = 0;
      v330 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v330);
    if (v195)
    {
      CFRelease(v195);
    }

    v317 = @"BoostMinimumVariation";
    v315 = @"FilterName";
    v316 = @"Parameters";
    v313 = @"MinCandidateDominanceRatio";
    LODWORD(v196) = v26;
    v197 = [MEMORY[0x277CCABB0] numberWithFloat:v196];
    v314 = v197;
    v198 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
    v318 = v198;
    v199 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v317 forKeys:&v315 count:2];
    v200 = v199;
    if (v199)
    {
      CFRetain(v199);
      v319 = v200;
      v201 = CFGetTypeID(v200);
      v202 = v200;
      if (v201 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v202 = 0;
      v319 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v319);
    if (v202)
    {
      CFRelease(v202);
    }

    if (_os_feature_enabled_impl())
    {
      v310 = @"FilterName";
      v203 = @"FilterNumberlikeTokenMismatch";
    }

    else
    {
      v310 = @"FilterName";
      v203 = @"FilterNumberMismatch";
    }

    v311 = v203;
    v204 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
    v205 = v204;
    if (v204)
    {
      CFRetain(v204);
      v312 = v205;
      v206 = CFGetTypeID(v205);
      v207 = v205;
      if (v206 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v207 = 0;
      v312 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v312);
    if (v207)
    {
      CFRelease(v207);
    }

    v306 = @"Parameters";
    v307 = @"FilterCharacterCount";
    v301 = @"Character";
    v302 = @"CharacterCountRelation";
    v303 = @"&";
    v304 = @"LessThanOrEqualToInputCount";
    v305 = @"FilterName";
    v208 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v303 forKeys:&v301 count:2];
    v308 = v208;
    v209 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v307 forKeys:&v305 count:2];
    v210 = v209;
    if (v209)
    {
      CFRetain(v209);
      v309 = v210;
      v211 = CFGetTypeID(v210);
      v212 = v210;
      if (v211 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v212 = 0;
      v309 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v309);
    if (v212)
    {
      CFRelease(v212);
    }

    v299 = @"FilterName";
    v300 = @"FilterDoubleApostrophe";
    v213 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
    v214 = v213;
    if (v213)
    {
      CFRetain(v213);
      v261 = v214;
      v215 = CFGetTypeID(v214);
      v216 = v214;
      if (v215 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v216 = 0;
      v261 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v261);
    if (v216)
    {
      CFRelease(v216);
    }

    v297 = @"FilterName";
    v298 = @"FilterWordEndingApostropheBetweenNonseparators";
    v217 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
    v218 = v217;
    if (v217)
    {
      CFRetain(v217);
      v260 = v218;
      v219 = CFGetTypeID(v218);
      v220 = v218;
      if (v219 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v220 = 0;
      v260 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v260);
    if (v220)
    {
      CFRelease(v220);
    }

    v295 = @"FilterName";
    v296 = @"FilterInvalidTextReplacement";
    v221 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
    v222 = v221;
    if (v221)
    {
      CFRetain(v221);
      v259 = v222;
      v223 = CFGetTypeID(v222);
      v224 = v222;
      if (v223 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v224 = 0;
      v259 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v259);
    if (v224)
    {
      CFRelease(v224);
    }

    v292 = @"Parameters";
    v293 = @"FilterNotSuggestibleForInput";
    v290 = @"RemoveVulgar";
    v291 = @"FilterName";
    v285 = @"WordEquivalenceType";
    v286 = @"ApplyFilterCondition";
    v288 = @"SurfaceFormEquivalence";
    v289 = @"ApplyAlways";
    v287 = @"ShouldRemoveVulgar";
    v225 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v285 count:3];
    v294 = v225;
    v226 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v293 forKeys:&v291 count:2];
    v227 = v226;
    if (v226)
    {
      CFRetain(v226);
      v258 = v227;
      v228 = CFGetTypeID(v227);
      v229 = v227;
      if (v228 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v229 = 0;
      v258 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v258);
    if (v229)
    {
      CFRelease(v229);
    }

    v282 = @"Parameters";
    v283 = @"FilterDifferentLanguageThanContext";
    v281 = @"FilterName";
    v279 = @"MinConfidenceToEstablishLanguage";
    LODWORD(v230) = v29;
    v231 = [MEMORY[0x277CCABB0] numberWithFloat:v230];
    v280 = v231;
    v232 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
    v284 = v232;
    v233 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v283 forKeys:&v281 count:2];
    v234 = v233;
    if (v233)
    {
      CFRetain(v233);
      v257 = v234;
      v235 = CFGetTypeID(v234);
      v236 = v234;
      if (v235 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v236 = 0;
      v257 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v257);
    if (v236)
    {
      CFRelease(v236);
    }

    if (*(a1 + 186) == 1)
    {
      v275 = @"Parameters";
      v276 = @"FilterInputPrefixMismatch";
      v274 = @"FilterName";
      v270 = @"MinPrefixMatchLen";
      v237 = [MEMORY[0x277CCABB0] numberWithInt:v27];
      v271 = @"MinTargetCandidates";
      v272 = v237;
      v238 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v28];
      v273 = v238;
      v239 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v272 forKeys:&v270 count:2];
      v277 = v239;
      v240 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v276 forKeys:&v274 count:2];
      v241 = v240;
      if (v240)
      {
        CFRetain(v240);
        v278 = v241;
        v242 = CFGetTypeID(v241);
        v243 = v241;
        if (v242 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v243 = 0;
        v278 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v278);
      if (v243)
      {
        CFRelease(v243);
      }
    }

    if (*(a1 + 187) != 1)
    {
      return;
    }

    v268 = @"FilterName";
    v269 = @"BoostCaseVariantsOfTopCandidate";
    v244 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
    v106 = v244;
    if (v244)
    {
      CFRetain(v244);
      v256 = v106;
      v245 = CFGetTypeID(v106);
      v246 = v106;
      if (v245 != CFDictionaryGetTypeID())
      {
LABEL_325:
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }
    }

    else
    {
      v246 = 0;
      v256 = 0;
    }

    v247 = &v256;
LABEL_328:
    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, v247);
    if (v246)
    {
      CFRelease(v246);
    }

LABEL_330:

    return;
  }

  if (v5 == 1)
  {
    v6 = filter_factory_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_INFO, "Create standard prediction, completion, or replacement candidate filter (TIFavoniusCandQualityFilter).", buf, 2u);
    }

    v7 = *(a1 + 11);
    v8 = *(a1 + 16);
    v9 = a1[9];
    v10 = *(a1 + 23);
    v344 = @"FilterName";
    v345 = @"FilterZeroProbability";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
      v346[0] = v12;
      v13 = CFGetTypeID(v12);
      v14 = v12;
      if (v13 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v14 = 0;
      v346[0] = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, v346);
    if (v14)
    {
      CFRelease(v14);
    }

    v341 = @"FilterName";
    v342 = @"FilterAppNames";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
    v43 = v42;
    if (v42)
    {
      CFRetain(v42);
      v343 = v43;
      v44 = CFGetTypeID(v43);
      v45 = v43;
      if (v44 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v45 = 0;
      v343 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v343);
    if (v45)
    {
      CFRelease(v45);
    }

    v338 = @"FilterName";
    v339 = @"FilterIncomplete";
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
    v51 = v50;
    if (v50)
    {
      CFRetain(v50);
      v340 = v51;
      v52 = CFGetTypeID(v51);
      v53 = v51;
      if (v52 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v53 = 0;
      v340 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v340);
    if (v53)
    {
      CFRelease(v53);
    }

    if (*(a1 + 185) == 1)
    {
      v335 = @"FilterName";
      v336 = @"FilterWithoutSupplementalWords";
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
      v59 = v58;
      if (v58)
      {
        CFRetain(v58);
        v337 = v59;
        v60 = CFGetTypeID(v59);
        v61 = v59;
        if (v60 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v61 = 0;
        v337 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v337);
      if (v61)
      {
        CFRelease(v61);
      }

      v332 = @"FilterName";
      v333 = @"FilterPartOfHyphenatedWord";
      v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
      v114 = v113;
      if (v113)
      {
        CFRetain(v113);
        v334 = v114;
        v115 = CFGetTypeID(v114);
        v116 = v114;
        if (v115 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v116 = 0;
        v334 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v334);
      if (v116)
      {
        CFRelease(v116);
      }
    }

    v319 = @"FilterName";
    if (_os_feature_enabled_impl())
    {
      v121 = @"FilterNumberlikeTokenMismatch";
    }

    else
    {
      v121 = @"FilterNumberMismatch";
    }

    v330 = v121;
    v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v330 forKeys:&v319 count:1];
    v123 = v122;
    if (v122)
    {
      CFRetain(v122);
      v331 = v123;
      v124 = CFGetTypeID(v123);
      v125 = v123;
      if (v124 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v125 = 0;
      v331 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v331);
    if (v125)
    {
      CFRelease(v125);
    }

    v312 = @"FilterName";
    v313 = @"FilterControlCharacters";
    v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
    v127 = v126;
    if (v126)
    {
      CFRetain(v126);
      v314 = v127;
      v128 = CFGetTypeID(v127);
      v129 = v127;
      if (v128 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v129 = 0;
      v314 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v314);
    if (v129)
    {
      CFRelease(v129);
    }

    v309 = @"FilterName";
    v310 = @"FilterDoubleApostrophe";
    v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
    v131 = v130;
    if (v130)
    {
      CFRetain(v130);
      v311 = v131;
      v132 = CFGetTypeID(v131);
      v133 = v131;
      if (v132 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v133 = 0;
      v311 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v311);
    if (v133)
    {
      CFRelease(v133);
    }

    v299 = @"FilterName";
    v300 = @"FilterWordEndingApostropheBetweenNonseparators";
    v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
    v135 = v134;
    if (v134)
    {
      CFRetain(v134);
      v261 = v135;
      v136 = CFGetTypeID(v135);
      v137 = v135;
      if (v136 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v137 = 0;
      v261 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v261);
    if (v137)
    {
      CFRelease(v137);
    }

    v328 = @"FilterAllCapsNoSuggestWordsOfLength";
    v326 = @"FilterName";
    v327 = @"Parameters";
    v297 = @"Length";
    v298 = &unk_28400BD00;
    v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
    v329 = v138;
    v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v328 forKeys:&v326 count:2];
    v140 = v139;
    if (v139)
    {
      CFRetain(v139);
      v260 = v140;
      v141 = CFGetTypeID(v140);
      v142 = v140;
      if (v141 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v142 = 0;
      v260 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v260);
    if (v142)
    {
      CFRelease(v142);
    }

    v295 = @"FilterName";
    v296 = @"FilterPopupVariantMismatch";
    v143 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
    v144 = v143;
    if (v143)
    {
      CFRetain(v143);
      v259 = v144;
      v145 = CFGetTypeID(v144);
      v146 = v144;
      if (v145 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v146 = 0;
      v259 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v259);
    if (v146)
    {
      CFRelease(v146);
    }

    v317 = @"FilterCharacterCount";
    v315 = @"FilterName";
    v316 = @"Parameters";
    v305 = @"Character";
    v306 = @"CharacterCountRelation";
    v307 = @"&";
    v308 = @"GreaterThanOrEqualToInputCount";
    v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v307 forKeys:&v305 count:2];
    v318 = v147;
    v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v317 forKeys:&v315 count:2];
    v149 = v148;
    if (v148)
    {
      CFRetain(v148);
      v258 = v149;
      v150 = CFGetTypeID(v149);
      v151 = v149;
      if (v150 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v151 = 0;
      v258 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v258);
    if (v151)
    {
      CFRelease(v151);
    }

    v301 = @"FilterName";
    v302 = @"Parameters";
    v303 = @"FilterNotSuggestibleForInput";
    v320 = @"WordEquivalenceType";
    v321 = @"ApplyFilterCondition";
    *buf = @"SortkeyEquivalence";
    v324 = @"ApplyAlways";
    v322 = @"ShouldRemoveVulgar";
    v325 = @"RemoveVulgar";
    v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v320 count:3];
    v304 = v152;
    v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v303 forKeys:&v301 count:2];
    v154 = v153;
    if (v153)
    {
      CFRetain(v153);
      v257 = v154;
      v155 = CFGetTypeID(v154);
      v156 = v154;
      if (v155 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v156 = 0;
      v257 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v257);
    if (v156)
    {
      CFRelease(v156);
    }

    v251 = v9;

    v291 = @"FilterName";
    v292 = @"Parameters";
    v293 = @"BoostMinimumVariation";
    v278 = @"MinCandidateDominanceRatio";
    LODWORD(v157) = v7;
    v158 = [MEMORY[0x277CCABB0] numberWithFloat:v157];
    v279 = v158;
    v159 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v279 forKeys:&v278 count:1];
    v294 = v159;
    v160 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v293 forKeys:&v291 count:2];
    v161 = v160;
    if (v160)
    {
      CFRetain(v160);
      v280 = v161;
      v162 = CFGetTypeID(v161);
      v163 = v161;
      if (v162 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v163 = 0;
      v280 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v280);
    if (v163)
    {
      CFRelease(v163);
    }

    v268 = @"FilterName";
    v269 = @"FilterInvalidTextReplacement";
    v164 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
    v165 = v164;
    if (v164)
    {
      CFRetain(v164);
      v256 = v165;
      v166 = CFGetTypeID(v165);
      v167 = v165;
      if (v166 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v167 = 0;
      v256 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v256);
    if (v167)
    {
      CFRelease(v167);
    }

    v281 = @"FilterName";
    v282 = @"Parameters";
    v283 = @"FilterNotSuggestibleForInput";
    v285 = @"WordEquivalenceType";
    v286 = @"ApplyFilterCondition";
    v288 = @"SurfaceFormEquivalence";
    v289 = @"ApplyAlways";
    v287 = @"ShouldRemoveVulgar";
    v290 = @"RemoveVulgar";
    v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v285 count:3];
    v284 = v168;
    v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v283 forKeys:&v281 count:2];
    v170 = v169;
    if (v169)
    {
      CFRetain(v169);
      v255 = v170;
      v171 = CFGetTypeID(v170);
      v172 = v170;
      if (v171 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v172 = 0;
      v255 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v255);
    if (v172)
    {
      CFRelease(v172);
    }

    v274 = @"FilterName";
    v275 = @"Parameters";
    v276 = @"FilterDifferentLanguageThanContext";
    v266 = @"MinConfidenceToEstablishLanguage";
    LODWORD(v173) = v10;
    v174 = [MEMORY[0x277CCABB0] numberWithFloat:v173];
    v267 = v174;
    v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
    v277 = v175;
    v176 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v276 forKeys:&v274 count:2];
    v177 = v176;
    if (v176)
    {
      CFRetain(v176);
      v254 = v177;
      v178 = CFGetTypeID(v177);
      v179 = v177;
      if (v178 != CFDictionaryGetTypeID())
      {
        goto LABEL_325;
      }
    }

    else
    {
      v179 = 0;
      v254 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v254);
    if (v179)
    {
      CFRelease(v179);
    }

    if (*(a1 + 186) == 1)
    {
      v270 = @"FilterName";
      v271 = @"Parameters";
      v272 = @"FilterInputPrefixMismatch";
      v264[0] = @"MinPrefixMatchLen";
      v180 = [MEMORY[0x277CCABB0] numberWithInt:v8];
      v264[1] = @"MinTargetCandidates";
      v265[0] = v180;
      v181 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v251];
      v265[1] = v181;
      v182 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v265 forKeys:v264 count:2];
      v273 = v182;
      v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v272 forKeys:&v270 count:2];
      v184 = v183;
      if (v183)
      {
        CFRetain(v183);
        v253 = v184;
        v185 = CFGetTypeID(v184);
        v186 = v184;
        if (v185 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v186 = 0;
        v253 = 0;
      }

      KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v253);
      if (v186)
      {
        CFRelease(v186);
      }
    }

    if (*(a1 + 187) == 1)
    {
      v262 = @"FilterName";
      v263 = @"BoostCaseVariantsOfTopCandidate";
      v248 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
      v106 = v248;
      if (v248)
      {
        CFRetain(v248);
        v252 = v106;
        v249 = CFGetTypeID(v106);
        v246 = v106;
        if (v249 != CFDictionaryGetTypeID())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v246 = 0;
        v252 = 0;
      }

      v247 = &v252;
      goto LABEL_328;
    }
  }
}

void KB::CandidateFilterFactory::create_standard_autocorrect_filter_favonius_definition(uint64_t a1, uint64_t a2)
{
  v308[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v7 = *(a1 + 48);
  v6 = *(a1 + 52);
  v186 = *(a1 + 60);
  v9 = *(a1 + 80);
  v8 = *(a1 + 84);
  v187 = *(a1 + 88);
  v10 = *(a1 + 92);
  v12 = *(a1 + 100);
  v11 = *(a1 + 104);
  v13 = *(a1 + 108);
  v14 = *(a1 + 120);
  v307 = @"FilterName";
  v308[0] = @"FilterZeroProbability";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v308 forKeys:&v307 count:1];
  v16 = v15;
  if (v15)
  {
    CFRetain(v15);
    v220 = v16;
    v17 = CFGetTypeID(v16);
    v18 = v16;
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v18 = 0;
    v220 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v220);
  if (v18)
  {
    CFRelease(v18);
  }

  v305 = @"FilterName";
  v306 = @"FilterIncomplete";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
  v20 = v19;
  if (v19)
  {
    CFRetain(v19);
    v219 = v20;
    v21 = CFGetTypeID(v20);
    v22 = v20;
    if (v21 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v22 = 0;
    v219 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v219);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = 0x277CBE000uLL;
  if (*(a1 + 185) == 1)
  {
    v303 = @"FilterName";
    v304 = @"FilterWithoutSupplementalWords";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v304 forKeys:&v303 count:1];
    v25 = v24;
    if (v24)
    {
      CFRetain(v24);
      v218 = v25;
      v26 = CFGetTypeID(v25);
      v27 = v25;
      v28 = v26 == CFDictionaryGetTypeID();
      v23 = 0x277CBE000;
      if (!v28)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v27 = 0;
      v218 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v218);
    if (v27)
    {
      CFRelease(v27);
    }

    v301 = @"FilterName";
    v302 = @"FilterPartOfHyphenatedWord";
    v29 = [*(v23 + 2752) dictionaryWithObjects:&v302 forKeys:&v301 count:1];
    v30 = v29;
    if (v29)
    {
      CFRetain(v29);
      v217 = v30;
      v31 = CFGetTypeID(v30);
      v32 = v30;
      if (v31 != CFDictionaryGetTypeID())
      {
        goto LABEL_202;
      }
    }

    else
    {
      v32 = 0;
      v217 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v217);
    if (v32)
    {
      CFRelease(v32);
    }

    v23 = 0x277CBE000uLL;
  }

  v34 = *(a1 + 168);
  v33 = *(a1 + 176);
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  if (v34)
  {
    v299 = @"FilterName";
    v300 = @"CustomFilter";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
    v36 = v35;
    if (v35)
    {
      CFRetain(v35);
      v216 = v36;
      v37 = CFGetTypeID(v36);
      v38 = v36;
      if (v37 != CFDictionaryGetTypeID())
      {
        goto LABEL_202;
      }
    }

    else
    {
      v38 = 0;
      v216 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v216);
    if (v38)
    {
      CFRelease(v38);
    }
  }

  if (_os_feature_enabled_impl())
  {
    v297 = @"FilterName";
    v298 = @"FilterNumberlikeTokenMismatch";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
    v40 = v39;
    if (v39)
    {
      CFRetain(v39);
      v215 = v40;
      v41 = CFGetTypeID(v40);
      v42 = v40;
      if (v41 != CFDictionaryGetTypeID())
      {
        goto LABEL_202;
      }
    }

    else
    {
      v42 = 0;
      v215 = 0;
    }

    v45 = &v215;
  }

  else
  {
    v295 = @"FilterName";
    v296 = @"FilterNumberMismatch";
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
    v40 = v43;
    if (v43)
    {
      CFRetain(v43);
      v214 = v40;
      v44 = CFGetTypeID(v40);
      v42 = v40;
      if (v44 != CFDictionaryGetTypeID())
      {
        goto LABEL_202;
      }
    }

    else
    {
      v42 = 0;
      v214 = 0;
    }

    v45 = &v214;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, v45);
  if (v42)
  {
    CFRelease(v42);
  }

  v293 = @"FilterName";
  v294 = @"FilterControlCharacters";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
  v47 = v46;
  if (v46)
  {
    CFRetain(v46);
    v213 = v47;
    v48 = CFGetTypeID(v47);
    v49 = v47;
    if (v48 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v49 = 0;
    v213 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v213);
  if (v49)
  {
    CFRelease(v49);
  }

  v291 = @"FilterName";
  v292 = @"FilterAlteredURLFragments";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
  v51 = v50;
  if (v50)
  {
    CFRetain(v50);
    v212 = v51;
    v52 = CFGetTypeID(v51);
    v53 = v51;
    if (v52 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v53 = 0;
    v212 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v212);
  if (v53)
  {
    CFRelease(v53);
  }

  v289 = @"FilterName";
  v290 = @"FilterDoubleApostrophe";
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
  v55 = v54;
  if (v54)
  {
    CFRetain(v54);
    v211 = v55;
    v56 = CFGetTypeID(v55);
    v57 = v55;
    if (v56 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v57 = 0;
    v211 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v211);
  if (v57)
  {
    CFRelease(v57);
  }

  v287 = @"FilterName";
  v288 = @"FilterWordEndingApostropheBetweenNonseparators";
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
  v59 = v58;
  if (v58)
  {
    CFRetain(v58);
    v210 = v59;
    v60 = CFGetTypeID(v59);
    v61 = v59;
    if (v60 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v61 = 0;
    v210 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v210);
  if (v61)
  {
    CFRelease(v61);
  }

  v286[0] = @"FilterAllCapsNoSuggestWordsOfLength";
  v285[0] = @"FilterName";
  v285[1] = @"Parameters";
  v283 = @"Length";
  v284 = &unk_28400BD00;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
  v286[1] = v62;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v286 forKeys:v285 count:2];
  v64 = v63;
  if (v63)
  {
    CFRetain(v63);
    v209 = v64;
    v65 = CFGetTypeID(v64);
    v66 = v64;
    v28 = v65 == CFDictionaryGetTypeID();
    v23 = 0x277CBE000;
    if (!v28)
    {
      goto LABEL_202;
    }
  }

  else
  {
    v66 = 0;
    v209 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v209);
  if (v66)
  {
    CFRelease(v66);
  }

  v281 = @"FilterName";
  v282 = @"FilterPopupVariantMismatch";
  v67 = [*(v23 + 2752) dictionaryWithObjects:&v282 forKeys:&v281 count:1];
  v68 = v67;
  if (v67)
  {
    CFRetain(v67);
    v208 = v68;
    v69 = CFGetTypeID(v68);
    v70 = v68;
    if (v69 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v70 = 0;
    v208 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v208);
  if (v70)
  {
    CFRelease(v70);
  }

  v280[0] = @"FilterCharacterCount";
  v279[0] = @"FilterName";
  v279[1] = @"Parameters";
  v277[0] = @"Character";
  v277[1] = @"CharacterCountRelation";
  v278[0] = @"&";
  v278[1] = @"GreaterThanOrEqualToInputCount";
  v71 = [*(v23 + 2752) dictionaryWithObjects:v278 forKeys:v277 count:2];
  v280[1] = v71;
  v72 = [*(v23 + 2752) dictionaryWithObjects:v280 forKeys:v279 count:2];
  v73 = v72;
  if (v72)
  {
    CFRetain(v72);
    v207 = v73;
    v74 = CFGetTypeID(v73);
    v75 = v73;
    v28 = v74 == CFDictionaryGetTypeID();
    v23 = 0x277CBE000;
    if (!v28)
    {
      goto LABEL_202;
    }
  }

  else
  {
    v75 = 0;
    v207 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v207);
  if (v75)
  {
    CFRelease(v75);
  }

  v275 = @"FilterName";
  v276 = @"FilterContactWordsConflictingWithValidInput";
  v76 = [*(v23 + 2752) dictionaryWithObjects:&v276 forKeys:&v275 count:1];
  v77 = v76;
  if (v76)
  {
    CFRetain(v76);
    v206 = v77;
    v78 = CFGetTypeID(v77);
    v79 = v77;
    if (v78 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v79 = 0;
    v206 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v206);
  if (v79)
  {
    CFRelease(v79);
  }

  v274[0] = @"FilterWordsConflictingWithValidContactNames";
  v273[0] = @"FilterName";
  v273[1] = @"Parameters";
  v271 = @"LanguagePowerRatio";
  LODWORD(v80) = v14;
  v81 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
  v272 = v81;
  v82 = [*(v23 + 2752) dictionaryWithObjects:&v272 forKeys:&v271 count:1];
  v274[1] = v82;
  v83 = [*(v23 + 2752) dictionaryWithObjects:v274 forKeys:v273 count:2];
  v84 = v83;
  if (v83)
  {
    CFRetain(v83);
    v205 = v84;
    v85 = CFGetTypeID(v84);
    v86 = v84;
    if (v85 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v86 = 0;
    v205 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v205);
  if (v86)
  {
    CFRelease(v86);
  }

  v269 = @"FilterName";
  v270 = @"RescoreShortWords";
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
  v88 = v87;
  if (v87)
  {
    CFRetain(v87);
    v204 = v88;
    v89 = CFGetTypeID(v88);
    v90 = v88;
    if (v89 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v90 = 0;
    v204 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v204);
  if (v90)
  {
    CFRelease(v90);
  }

  v267 = @"FilterName";
  v268 = @"FilterMissingOneLetterWordFromInput";
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
  v92 = v91;
  if (v91)
  {
    CFRetain(v91);
    v203 = v92;
    v93 = CFGetTypeID(v92);
    v94 = v92;
    if (v93 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v94 = 0;
    v203 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v203);
  if (v94)
  {
    CFRelease(v94);
  }

  v265 = @"FilterName";
  v266 = @"FilterCommonLearnedTypos";
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
  v96 = v95;
  if (v95)
  {
    CFRetain(v95);
    v202 = v96;
    v97 = CFGetTypeID(v96);
    v98 = v96;
    if (v97 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v98 = 0;
    v202 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v202);
  if (v98)
  {
    CFRelease(v98);
  }

  v264[0] = @"FilterSortkeyMatchFromDifferentLanguage";
  v263[0] = @"FilterName";
  v263[1] = @"Parameters";
  v261[0] = @"MinConfidenceToEstablishCurrentLanguage";
  LODWORD(v99) = v10;
  v100 = [MEMORY[0x277CCABB0] numberWithFloat:v99];
  v262[0] = v100;
  v261[1] = @"SameLanguageSortkeyMatchDominanceRatio";
  LODWORD(v101) = v12;
  v102 = [MEMORY[0x277CCABB0] numberWithFloat:v101];
  v262[1] = v102;
  v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v262 forKeys:v261 count:2];
  v264[1] = v103;
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v263 count:2];
  v105 = v104;
  if (v104)
  {
    CFRetain(v104);
    v201 = v105;
    v106 = CFGetTypeID(v105);
    v107 = v105;
    if (v106 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v107 = 0;
    v201 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v201);
  if (v107)
  {
    CFRelease(v107);
  }

  v260[0] = @"FilterNondominantCorrectionOfMoreWords";
  v259[0] = @"FilterName";
  v259[1] = @"Parameters";
  v257[0] = @"SortKeyMatchBoostRatio";
  LODWORD(v108) = v7;
  v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
  v258[0] = v109;
  v257[1] = @"NonRetrocorrectionBoostRatio";
  LODWORD(v110) = v6;
  v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
  v258[1] = v111;
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v258 forKeys:v257 count:2];
  v260[1] = v112;
  v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v260 forKeys:v259 count:2];
  v114 = v113;
  if (v113)
  {
    CFRetain(v113);
    v200 = v114;
    v115 = CFGetTypeID(v114);
    v116 = v114;
    if (v115 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v116 = 0;
    v200 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v200);
  if (v116)
  {
    CFRelease(v116);
  }

  v256[0] = @"FilterNotSuggestibleForInput";
  v255[0] = @"FilterName";
  v255[1] = @"Parameters";
  v253[0] = @"WordEquivalenceType";
  v253[1] = @"ApplyFilterCondition";
  v254[0] = @"SortkeyEquivalence";
  v254[1] = @"ApplyAlways";
  v253[2] = @"ShouldRemoveVulgar";
  v254[2] = @"DoNotRemoveVulgar";
  v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:3];
  v256[1] = v117;
  v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v256 forKeys:v255 count:2];
  v119 = v118;
  if (v118)
  {
    CFRetain(v118);
    v199 = v119;
    v120 = CFGetTypeID(v119);
    v121 = v119;
    if (v120 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v121 = 0;
    v199 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v199);
  if (v121)
  {
    CFRelease(v121);
  }

  v251 = @"FilterName";
  v252 = @"FilterNonVulgarIfTopCandidateVulgar";
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v252 forKeys:&v251 count:1];
  v123 = v122;
  if (v122)
  {
    CFRetain(v122);
    v198 = v123;
    v124 = CFGetTypeID(v123);
    v125 = v123;
    if (v124 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v125 = 0;
    v198 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v198);
  if (v125)
  {
    CFRelease(v125);
  }

  v250[0] = @"BoostMinimumVariation";
  v249[0] = @"FilterName";
  v249[1] = @"Parameters";
  v247 = @"MinCandidateDominanceRatio";
  LODWORD(v126) = v5;
  v127 = [MEMORY[0x277CCABB0] numberWithFloat:v126];
  v248 = v127;
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v248 forKeys:&v247 count:1];
  v250[1] = v128;
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v249 count:2];
  v130 = v129;
  if (v129)
  {
    CFRetain(v129);
    v197 = v130;
    v131 = CFGetTypeID(v130);
    v132 = v130;
    if (v131 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v132 = 0;
    v197 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v197);
  if (v132)
  {
    CFRelease(v132);
  }

  v245 = @"FilterName";
  v246 = @"FilterInvalidTextReplacement";
  v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v246 forKeys:&v245 count:1];
  v134 = v133;
  if (v133)
  {
    CFRetain(v133);
    v196 = v134;
    v135 = CFGetTypeID(v134);
    v136 = v134;
    if (v135 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v136 = 0;
    v196 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v196);
  if (v136)
  {
    CFRelease(v136);
  }

  v243 = @"FilterName";
  v244 = @"FilterLearnedTypo";
  v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v244 forKeys:&v243 count:1];
  v138 = v137;
  if (v137)
  {
    CFRetain(v137);
    v195 = v138;
    v139 = CFGetTypeID(v138);
    v140 = v138;
    if (v139 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v140 = 0;
    v195 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v195);
  if (v140)
  {
    CFRelease(v140);
  }

  v241 = @"FilterName";
  v242 = @"FilterCaseVariantsOfStaticWords";
  v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
  v142 = v141;
  if (v141)
  {
    CFRetain(v141);
    v194 = v142;
    v143 = CFGetTypeID(v142);
    v144 = v142;
    if (v143 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v144 = 0;
    v194 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v194);
  if (v144)
  {
    CFRelease(v144);
  }

  v240[0] = @"FilterTopDynamicWordsWithStaticVariant";
  v239[0] = @"FilterName";
  v239[1] = @"Parameters";
  v237[0] = @"MinUsageCountForDynamicCaseVariant";
  v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
  v238[0] = v145;
  v237[1] = @"MinOmegaRatioForDynamicCaseVariant";
  LODWORD(v146) = v11;
  v147 = [MEMORY[0x277CCABB0] numberWithFloat:v146];
  v238[1] = v147;
  v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v238 forKeys:v237 count:2];
  v240[1] = v148;
  v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v240 forKeys:v239 count:2];
  v150 = v149;
  if (v149)
  {
    CFRetain(v149);
    v193 = v150;
    v151 = CFGetTypeID(v150);
    v152 = v150;
    if (v151 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v152 = 0;
    v193 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v193);
  if (v152)
  {
    CFRelease(v152);
  }

  v236[0] = @"BoostPreferedFormForSortkey";
  v235[0] = @"FilterName";
  v235[1] = @"Parameters";
  v233 = @"MinSuggestionDominanceRatio";
  LODWORD(v153) = v4;
  v154 = [MEMORY[0x277CCABB0] numberWithFloat:v153];
  v234 = v154;
  v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v234 forKeys:&v233 count:1];
  v236[1] = v155;
  v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:2];
  v157 = v156;
  if (v156)
  {
    CFRetain(v156);
    v192 = v157;
    v158 = CFGetTypeID(v157);
    v159 = v157;
    if (v158 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v159 = 0;
    v192 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v192);
  if (v159)
  {
    CFRelease(v159);
  }

  v231[0] = @"FilterName";
  v231[1] = @"Parameters";
  v232[0] = @"ChooseTopQualityAutocorrection";
  v229[0] = @"MinLinguisticSynergyForComplexCorrection";
  LODWORD(v160) = v186;
  v161 = [MEMORY[0x277CCABB0] numberWithFloat:v160];
  v230[0] = v161;
  v229[1] = @"MinSuggestionDominanceRatio";
  LODWORD(v162) = v4;
  v163 = [MEMORY[0x277CCABB0] numberWithFloat:v162];
  v230[1] = v163;
  v229[2] = @"MinStemLengthForPredictingOneLetter";
  v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v230[2] = v164;
  v229[3] = @"MinStemLengthForPredictingTwoLetters";
  v165 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v230[3] = v165;
  v229[4] = @"MinStemLengthForPredictingThreeLetters";
  v166 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v187];
  v230[4] = v166;
  v167 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v230 forKeys:v229 count:5];
  v232[1] = v167;
  v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v232 forKeys:v231 count:2];
  v169 = v168;
  if (v168)
  {
    CFRetain(v168);
    v191 = v169;
    v170 = CFGetTypeID(v169);
    v171 = v169;
    if (v170 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v171 = 0;
    v191 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v191);
  if (v171)
  {
    CFRelease(v171);
  }

  v227[0] = @"FilterName";
  v227[1] = @"Parameters";
  v228[0] = @"FilterNotSuggestibleForInput";
  v225[0] = @"WordEquivalenceType";
  v225[1] = @"ApplyFilterCondition";
  v226[0] = @"SurfaceFormEquivalence";
  v226[1] = @"ApplyAlways";
  v225[2] = @"ShouldRemoveVulgar";
  v226[2] = @"RemoveVulgarOnlyIfNotAllowlisted";
  v172 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v225 count:3];
  v228[1] = v172;
  v173 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v228 forKeys:v227 count:2];
  v174 = v173;
  if (v173)
  {
    CFRetain(v173);
    v190 = v174;
    v175 = CFGetTypeID(v174);
    v176 = v174;
    if (v175 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v176 = 0;
    v190 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v190);
  if (v176)
  {
    CFRelease(v176);
  }

  v223 = @"FilterName";
  v224 = @"RemoveAlternatesIfNoLinguisticCandidate";
  v177 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v224 forKeys:&v223 count:1];
  v178 = v177;
  if (v177)
  {
    CFRetain(v177);
    v189 = v178;
    v179 = CFGetTypeID(v178);
    v180 = v178;
    if (v179 != CFDictionaryGetTypeID())
    {
LABEL_202:
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
    }
  }

  else
  {
    v180 = 0;
    v189 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v189);
  if (v180)
  {
    CFRelease(v180);
  }

  v221 = @"FilterName";
  v222 = @"FilterDuplicates";
  v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
  v182 = v181;
  if (v181)
  {
    CFRetain(v181);
    v188 = v182;
    v183 = CFGetTypeID(v182);
    v184 = v182;
    if (v183 != CFDictionaryGetTypeID())
    {
      goto LABEL_202;
    }
  }

  else
  {
    v184 = 0;
    v188 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v188);
  if (v184)
  {
    CFRelease(v184);
  }
}

void KB::CandidateFilterFactory::create_standard_autocorrect_filter_definition(uint64_t a1, uint64_t a2)
{
  v253[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = *(a1 + 60);
  v7 = *(a1 + 80);
  v154 = *(a1 + 84);
  v8 = *(a1 + 88);
  v9 = *(a1 + 104);
  v10 = *(a1 + 108);
  v11 = *(a1 + 120);
  v12 = *(a1 + 124);
  v252 = @"FilterName";
  v253[0] = @"FilterZeroProbability";
  v13 = 0x277CBE000uLL;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v253 forKeys:&v252 count:1];
  v15 = v14;
  if (v14)
  {
    CFRetain(v14);
    v181 = v15;
    v16 = CFGetTypeID(v15);
    v17 = v15;
    v18 = v16 == CFDictionaryGetTypeID();
    v13 = 0x277CBE000;
    if (!v18)
    {
      goto LABEL_168;
    }
  }

  else
  {
    v17 = 0;
    v181 = 0;
  }

  v153 = v8;

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v181);
  if (v17)
  {
    CFRelease(v17);
  }

  v250[0] = @"FilterName";
  v250[1] = @"Parameters";
  v251[0] = @"FilterWordsConflictingWithValidContactNames";
  v248 = @"LanguagePowerRatio";
  LODWORD(v19) = v11;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v249 = v20;
  v21 = [*(v13 + 2752) dictionaryWithObjects:&v249 forKeys:&v248 count:1];
  v22 = v13;
  v23 = v21;
  v251[1] = v21;
  v24 = [*(v22 + 2752) dictionaryWithObjects:v251 forKeys:v250 count:2];
  v25 = v24;
  if (v24)
  {
    CFRetain(v24);
    v180 = v25;
    v26 = CFGetTypeID(v25);
    v27 = v25;
    if (v26 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v27 = 0;
    v180 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v180);
  if (v27)
  {
    CFRelease(v27);
  }

  v246 = @"FilterName";
  v247 = @"RescoreShortWords";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
  v29 = v28;
  if (v28)
  {
    CFRetain(v28);
    v179 = v29;
    v30 = CFGetTypeID(v29);
    v31 = v29;
    if (v30 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v31 = 0;
    v179 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v179);
  if (v31)
  {
    CFRelease(v31);
  }

  v244 = @"FilterName";
  v245 = @"FilterIncomplete";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
  v33 = v32;
  if (v32)
  {
    CFRetain(v32);
    v178 = v33;
    v34 = CFGetTypeID(v33);
    v35 = v33;
    if (v34 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v35 = 0;
    v178 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v178);
  if (v35)
  {
    CFRelease(v35);
  }

  if (*(a1 + 185) == 1)
  {
    v242 = @"FilterName";
    v243 = @"FilterWithoutSupplementalWords";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
    v37 = v36;
    if (v36)
    {
      CFRetain(v36);
      v177 = v37;
      v38 = CFGetTypeID(v37);
      v39 = v37;
      if (v38 != CFDictionaryGetTypeID())
      {
        goto LABEL_168;
      }
    }

    else
    {
      v39 = 0;
      v177 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v177);
    if (v39)
    {
      CFRelease(v39);
    }

    v240 = @"FilterName";
    v241 = @"FilterPartOfHyphenatedWord";
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
    v41 = v40;
    if (v40)
    {
      CFRetain(v40);
      v176 = v41;
      v42 = CFGetTypeID(v41);
      v43 = v41;
      if (v42 != CFDictionaryGetTypeID())
      {
        goto LABEL_168;
      }
    }

    else
    {
      v43 = 0;
      v176 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v176);
    if (v43)
    {
      CFRelease(v43);
    }
  }

  v45 = *(a1 + 168);
  v44 = *(a1 + 176);
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  if (v45)
  {
    v238 = @"FilterName";
    v239 = @"CustomFilter";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
    v47 = v46;
    if (v46)
    {
      CFRetain(v46);
      v175 = v47;
      v48 = CFGetTypeID(v47);
      v49 = v47;
      if (v48 != CFDictionaryGetTypeID())
      {
        goto LABEL_168;
      }
    }

    else
    {
      v49 = 0;
      v175 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v175);
    if (v49)
    {
      CFRelease(v49);
    }
  }

  v236 = @"FilterName";
  v237 = @"FilterControlCharacters";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
  v51 = v50;
  if (v50)
  {
    CFRetain(v50);
    v174 = v51;
    v52 = CFGetTypeID(v51);
    v53 = v51;
    if (v52 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v53 = 0;
    v174 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v174);
  if (v53)
  {
    CFRelease(v53);
  }

  if ((*(a1 + 188) & 1) == 0)
  {
    v235[0] = @"FilterCorrectionsIfAnyCandidateMatchesInput";
    v234[0] = @"FilterName";
    v234[1] = @"Parameters";
    v232 = @"WithinTopXAutocorrectionCandidates";
    v54 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    v233 = v54;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    v235[1] = v55;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v235 forKeys:v234 count:2];
    v57 = v56;
    if (v56)
    {
      CFRetain(v56);
      v173 = v57;
      v58 = CFGetTypeID(v57);
      v59 = v57;
      if (v58 != CFDictionaryGetTypeID())
      {
        goto LABEL_168;
      }
    }

    else
    {
      v59 = 0;
      v173 = 0;
    }

    KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v173);
    if (v59)
    {
      CFRelease(v59);
    }
  }

  v231[0] = @"FilterNotSuggestibleForInput";
  v230[0] = @"FilterName";
  v230[1] = @"Parameters";
  v228[0] = @"WordEquivalenceType";
  v228[1] = @"ApplyFilterCondition";
  v229[0] = @"SortkeyEquivalence";
  v229[1] = @"ApplyIfCandidatesContainInputMatch";
  v228[2] = @"ShouldRemoveVulgar";
  v229[2] = @"DoNotRemoveVulgar";
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v229 forKeys:v228 count:3];
  v231[1] = v60;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v231 forKeys:v230 count:2];
  v62 = v61;
  if (v61)
  {
    CFRetain(v61);
    v172 = v62;
    v63 = CFGetTypeID(v62);
    v64 = v62;
    if (v63 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v64 = 0;
    v172 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v172);
  if (v64)
  {
    CFRelease(v64);
  }

  v226 = @"FilterName";
  v227 = @"FilterNonVulgarIfTopCandidateVulgar";
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
  v66 = v65;
  if (v65)
  {
    CFRetain(v65);
    v171 = v66;
    v67 = CFGetTypeID(v66);
    v68 = v66;
    if (v67 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v68 = 0;
    v171 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v171);
  if (v68)
  {
    CFRelease(v68);
  }

  v225[0] = @"BoostMinimumVariation";
  v224[0] = @"FilterName";
  v224[1] = @"Parameters";
  v222 = @"MinCandidateDominanceRatio";
  LODWORD(v69) = v5;
  v70 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
  v223 = v70;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
  v225[1] = v71;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v225 forKeys:v224 count:2];
  v73 = v72;
  if (v72)
  {
    CFRetain(v72);
    v170 = v73;
    v74 = CFGetTypeID(v73);
    v75 = v73;
    if (v74 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v75 = 0;
    v170 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v170);
  if (v75)
  {
    CFRelease(v75);
  }

  if (_os_feature_enabled_impl())
  {
    v220 = @"FilterName";
    v221 = @"FilterNumberlikeTokenMismatch";
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
    v77 = v76;
    if (v76)
    {
      CFRetain(v76);
      v169 = v77;
      v78 = CFGetTypeID(v77);
      v79 = v77;
      if (v78 != CFDictionaryGetTypeID())
      {
        goto LABEL_168;
      }
    }

    else
    {
      v79 = 0;
      v169 = 0;
    }

    v82 = &v169;
  }

  else
  {
    v218 = @"FilterName";
    v219 = @"FilterNumberMismatch";
    v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
    v77 = v80;
    if (v80)
    {
      CFRetain(v80);
      v168 = v77;
      v81 = CFGetTypeID(v77);
      v79 = v77;
      if (v81 != CFDictionaryGetTypeID())
      {
        goto LABEL_168;
      }
    }

    else
    {
      v79 = 0;
      v168 = 0;
    }

    v82 = &v168;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, v82);
  if (v79)
  {
    CFRelease(v79);
  }

  v217[0] = @"FilterCharacterCount";
  v216[0] = @"FilterName";
  v216[1] = @"Parameters";
  v214[0] = @"Character";
  v214[1] = @"CharacterCountRelation";
  v215[0] = @"&";
  v215[1] = @"LessThanOrEqualToInputCount";
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:2];
  v217[1] = v83;
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:2];
  v85 = v84;
  if (v84)
  {
    CFRetain(v84);
    v167 = v85;
    v86 = CFGetTypeID(v85);
    v87 = v85;
    if (v86 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v87 = 0;
    v167 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v167);
  if (v87)
  {
    CFRelease(v87);
  }

  v212 = @"FilterName";
  v213 = @"FilterAlteredURLFragments";
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
  v89 = v88;
  if (v88)
  {
    CFRetain(v88);
    v166 = v89;
    v90 = CFGetTypeID(v89);
    v91 = v89;
    if (v90 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v91 = 0;
    v166 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v166);
  if (v91)
  {
    CFRelease(v91);
  }

  v210 = @"FilterName";
  v211 = @"FilterDoubleApostrophe";
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
  v93 = v92;
  if (v92)
  {
    CFRetain(v92);
    v165 = v93;
    v94 = CFGetTypeID(v93);
    v95 = v93;
    if (v94 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v95 = 0;
    v165 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v165);
  if (v95)
  {
    CFRelease(v95);
  }

  v208 = @"FilterName";
  v209 = @"FilterWordEndingApostropheBetweenNonseparators";
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
  v97 = v96;
  if (v96)
  {
    CFRetain(v96);
    v164 = v97;
    v98 = CFGetTypeID(v97);
    v99 = v97;
    if (v98 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v99 = 0;
    v164 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v164);
  if (v99)
  {
    CFRelease(v99);
  }

  v206 = @"FilterName";
  v207 = @"FilterInvalidTextReplacement";
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
  v101 = v100;
  if (v100)
  {
    CFRetain(v100);
    v163 = v101;
    v102 = CFGetTypeID(v101);
    v103 = v101;
    if (v102 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v103 = 0;
    v163 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v163);
  if (v103)
  {
    CFRelease(v103);
  }

  v204 = @"FilterName";
  v205 = @"FilterLearnedTypo";
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
  v105 = v104;
  if (v104)
  {
    CFRetain(v104);
    v162 = v105;
    v106 = CFGetTypeID(v105);
    v107 = v105;
    if (v106 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v107 = 0;
    v162 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v162);
  if (v107)
  {
    CFRelease(v107);
  }

  v202 = @"FilterName";
  v203 = @"FilterCaseVariantsOfStaticWords";
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
  v109 = v108;
  if (v108)
  {
    CFRetain(v108);
    v161 = v109;
    v110 = CFGetTypeID(v109);
    v111 = v109;
    if (v110 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v111 = 0;
    v161 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v161);
  if (v111)
  {
    CFRelease(v111);
  }

  v201[0] = @"FilterTopDynamicWordsWithStaticVariant";
  v200[0] = @"FilterName";
  v200[1] = @"Parameters";
  v198[0] = @"MinUsageCountForDynamicCaseVariant";
  v112 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v199[0] = v112;
  v198[1] = @"MinOmegaRatioForDynamicCaseVariant";
  LODWORD(v113) = v9;
  v114 = [MEMORY[0x277CCABB0] numberWithFloat:v113];
  v199[1] = v114;
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v199 forKeys:v198 count:2];
  v201[1] = v115;
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v201 forKeys:v200 count:2];
  v117 = v116;
  if (v116)
  {
    CFRetain(v116);
    v160 = v117;
    v118 = CFGetTypeID(v117);
    v119 = v117;
    if (v118 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v119 = 0;
    v160 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v160);
  if (v119)
  {
    CFRelease(v119);
  }

  v196[0] = @"FilterName";
  v196[1] = @"Parameters";
  v197[0] = @"BoostPreferedFormForSortkey";
  v194 = @"MinSuggestionDominanceRatio";
  LODWORD(v120) = v4;
  v121 = [MEMORY[0x277CCABB0] numberWithFloat:v120];
  v195 = v121;
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
  v197[1] = v122;
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
  v124 = v123;
  if (v123)
  {
    CFRetain(v123);
    v159 = v124;
    v125 = CFGetTypeID(v124);
    v126 = v124;
    if (v125 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v126 = 0;
    v159 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v159);
  if (v126)
  {
    CFRelease(v126);
  }

  v192[0] = @"FilterName";
  v192[1] = @"Parameters";
  v193[0] = @"ChooseTopQualityAutocorrection";
  v190[0] = @"MinLinguisticSynergyForComplexCorrection";
  LODWORD(v127) = v6;
  v128 = [MEMORY[0x277CCABB0] numberWithFloat:v127];
  v191[0] = v128;
  v190[1] = @"MinSuggestionDominanceRatio";
  LODWORD(v129) = v4;
  v130 = [MEMORY[0x277CCABB0] numberWithFloat:v129];
  v191[1] = v130;
  v190[2] = @"MinStemLengthForPredictingOneLetter";
  v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v191[2] = v131;
  v190[3] = @"MinStemLengthForPredictingTwoLetters";
  v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v154];
  v191[3] = v132;
  v190[4] = @"MinStemLengthForPredictingThreeLetters";
  v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v153];
  v191[4] = v133;
  v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:5];
  v193[1] = v134;
  v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:2];
  v136 = v135;
  if (v135)
  {
    CFRetain(v135);
    v158 = v136;
    v137 = CFGetTypeID(v136);
    v138 = v136;
    if (v137 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v138 = 0;
    v158 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v158);
  if (v138)
  {
    CFRelease(v138);
  }

  v188[1] = @"Parameters";
  v189[0] = @"FilterNotSuggestibleForInput";
  v186[0] = @"WordEquivalenceType";
  v186[1] = @"ApplyFilterCondition";
  v187[0] = @"SurfaceFormEquivalence";
  v187[1] = @"ApplyAlways";
  v186[2] = @"ShouldRemoveVulgar";
  v187[2] = @"RemoveVulgarOnlyIfNotAllowlisted";
  v188[0] = @"FilterName";
  v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:3];
  v189[1] = v139;
  v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:2];
  v141 = v140;
  if (v140)
  {
    CFRetain(v140);
    v157 = v141;
    v142 = CFGetTypeID(v141);
    v143 = v141;
    if (v142 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v143 = 0;
    v157 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v157);
  if (v143)
  {
    CFRelease(v143);
  }

  v184 = @"FilterName";
  v185 = @"RemoveAlternatesIfNoLinguisticCandidate";
  v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
  v145 = v144;
  if (v144)
  {
    CFRetain(v144);
    v156 = v145;
    v146 = CFGetTypeID(v145);
    v147 = v145;
    if (v146 != CFDictionaryGetTypeID())
    {
LABEL_168:
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
    }
  }

  else
  {
    v147 = 0;
    v156 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v156);
  if (v147)
  {
    CFRelease(v147);
  }

  v182 = @"FilterName";
  v183 = @"FilterDuplicates";
  v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
  v149 = v148;
  if (v148)
  {
    CFRetain(v148);
    v155 = v149;
    v150 = CFGetTypeID(v149);
    v151 = v149;
    if (v150 != CFDictionaryGetTypeID())
    {
      goto LABEL_168;
    }
  }

  else
  {
    v151 = 0;
    v155 = 0;
  }

  KB::CandidateFilterFactory::FilterStackDefinition::emplace_filter_definition(a2, &v155);
  if (v151)
  {
    CFRelease(v151);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,applesauce::CF::DictionaryRef>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 5);
      if (v4)
      {
        CFRelease(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
          CFRelease(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const* const&>(void *a1, CFDictionaryRef theDict, void *key, void *a4)
{
  if (!theDict)
  {
    goto LABEL_9;
  }

  if (!key)
  {
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    goto LABEL_9;
  }

  v7 = Value;
  CFRetain(Value);
  v8 = CFGetTypeID(v7);
  if (v8 != CFArrayGetTypeID())
  {
    CFRelease(v7);
LABEL_9:
    *a1 = *a4;
    *a4 = 0;
    return;
  }

  CFRetain(v7);
  *a1 = v7;

  CFRelease(v7);
}

BOOL vector_contains_string(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v4 + 8);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v4 : *v4;
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == a2)
      {
        v4 = a2;
        return v4 != a2;
      }
    }
  }

  return v4 != a2;
}

uint64_t *std::vector<KB::FilterFlag>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

__n128 applesauce::CF::convert_or<std::vector<std::string>,0>(__n128 *a1, const __CFArray *a2, __n128 *a3)
{
  applesauce::CF::convert_as<std::vector<std::string>,0>(&v6, a2);
  if (v8 == 1)
  {
    a1->n128_u64[0] = 0;
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(a1, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
    v9 = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v9);
  }

  else
  {
    result = *a3;
    *a1 = *a3;
    a1[1].n128_u64[0] = a3[1].n128_u64[0];
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
  }

  return result;
}

void *applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(void *result, void *a2)
{
  *result = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void std::vector<applesauce::CF::ArrayRef>::emplace_back<applesauce::CF::ArrayRef const&>(CFTypeRef **a1, CFTypeRef *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = v4 - *a1;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(v10);
    }

    v11 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v12 = (8 * v7);
    v13 = *a1;
    v14 = a1[1];
    v15 = *a1 == v14;
    v16 = (8 * v7 + *a1 - v14);
    *v12 = v11;
    v6 = (v12 + 1);
    if (!v15)
    {
      v17 = v13;
      v18 = v16;
      do
      {
        *v18++ = *v17;
        *v17++ = 0;
      }

      while (v17 != v14);
      do
      {
        if (*v13)
        {
          CFRelease(*v13);
        }

        ++v13;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v16;
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
    if (*a2)
    {
      CFRetain(*a2);
    }

    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[1] = v6;
}

void applesauce::CF::convert_as<std::vector<std::string>,0>(char *a1, const __CFArray *a2)
{
  if (a2 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    Count = CFArrayGetCount(a2);
    v23 = 0uLL;
    v24 = 0;
    if (Count << 32)
    {
      if (Count <= 0xAAAAAAAAAAAAAAALL)
      {
        v25.__end_cap_.__value_ = &v23;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(Count);
      }

LABEL_27:
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (Count < 1)
    {
LABEL_21:
      *a1 = v23;
      *(a1 + 2) = v24;
      v24 = 0;
      v23 = 0uLL;
      a1[24] = 1;
    }

    else
    {
      v6 = 0;
      v7 = Count & 0x7FFFFFFF;
      v18 = a1[24];
      v19 = *a1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        applesauce::CF::convert_as<std::string,0>(&v20, ValueAtIndex);
        if (v22 != 1)
        {
          break;
        }

        v9 = *(&v23 + 1);
        if (*(&v23 + 1) >= v24)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(&v23 + 1) - v23) >> 3);
          v12 = v11 + 1;
          if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            a1[24] = v18;
            *a1 = v19;
            goto LABEL_27;
          }

          if (0x5555555555555556 * ((v24 - v23) >> 3) > v12)
          {
            v12 = 0x5555555555555556 * ((v24 - v23) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v12;
          }

          v25.__end_cap_.__value_ = &v23;
          if (v13)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v13);
          }

          v14 = 8 * ((*(&v23 + 1) - v23) >> 3);
          *v14 = v20;
          *(v14 + 16) = v21;
          v21 = 0;
          v20 = 0uLL;
          v10 = 24 * v11 + 24;
          v15 = 24 * v11 - (*(&v23 + 1) - v23);
          memcpy((v14 - (*(&v23 + 1) - v23)), v23, *(&v23 + 1) - v23);
          v16 = v23;
          v17 = v24;
          *&v23 = v15;
          *(&v23 + 1) = v10;
          v24 = 0;
          v25.__first_ = v16;
          v25.__end_ = v16;
          v25.__end_cap_.__value_ = v17;
          v25.__begin_ = v16;
          std::__split_buffer<std::string>::~__split_buffer(&v25);
        }

        else
        {
          **(&v23 + 1) = v20;
          *(v9 + 16) = v21;
          v21 = 0;
          v20 = 0uLL;
          v10 = v9 + 24;
        }

        *(&v23 + 1) = v10;
        if (v7 == ++v6)
        {
          goto LABEL_21;
        }
      }

      a1[24] = 0;
      *a1 = 0;
    }

    v25.__first_ = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v25);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t KB::LanguageModelContainer::do_store(uint64_t this, uint64_t a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 592))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return this;
}

void KB::LanguageModelContainer::engine_string_to_surface_form(KB::LanguageModelContainer *this@<X0>, CFTypeRef cf@<X1>, void *a3@<X8>)
{
  v5 = *(this + 3);
  if (v5 == *(this + 4))
  {
    v7 = 0;
  }

  else
  {
    v6 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      (*(*v6 + 568))(v6, cf);
      goto LABEL_9;
    }
  }

  *a3 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a3 = cf;
  }

LABEL_9:
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

uint64_t KB::LanguageModelContainer::set_string_converter(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 24);
  if (v5 != *(a1 + 32))
  {
    v3 = *v5;
    v6 = *(v5 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = v4;
    if (v3)
    {
      v3 = (*(*v3 + 560))(v3, v4);
      v4 = v8;
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      v4 = v8;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t KB::LanguageModelContainer::tokenize_text(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 24);
  if (v6 != *(a1 + 32))
  {
    v7 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      (*(*v7 + 552))(v7, a2, v5);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  return MEMORY[0x2821F9730]();
}

void KB::LanguageModelContainer::register_inline_completion_acceptance_rejection(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == *(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *v1;
    v3 = v1[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  (*(*v2 + 544))(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void KB::LanguageModelContainer::inline_completions_with_stems(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0.0;
  v12 = (*(*a1 + 448))(a1, a3, &v20);
  v13 = a1[3];
  v14 = a1[4];
  while (v13 != v14)
  {
    if ((*(**v13 + 160))() && KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v13, v12))
    {
      v16 = *v13;
      std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v24, a5);
      (*(*v16 + 536))(v16, a2, a3, a4, v24);
      std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v24);
      return;
    }

    v13 = (v13 + 56);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = TILocaleIdentifierForLexiconID(v12);
    *buf = 136315650;
    *&buf[4] = "inline_completions_with_stems";
    *&buf[12] = 2080;
    *&buf[14] = v17;
    *&buf[22] = 2048;
    v23 = v20;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Inline completion not supported on detected language  (language : %s confidence = %f)", buf, 0x20u);
  }

  memset(buf, 0, sizeof(buf));
  v15 = *(a5 + 24);
  if (v15)
  {
    (*(*v15 + 48))(v15, buf, *a2, a3);
    *a6 = 0;
    a6[24] = 0;
    v21 = buf;
    std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&v21);
  }

  else
  {
    v18 = std::__throw_bad_function_call[abi:nn200100]();
    KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v18, v19);
  }
}

BOOL KB::LanguageModelLexiconGroup::model_contains_lexicon_id(KB::LanguageModelLexiconGroup *this, int a2)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 48))(&v7);
    v4 = v8;
    v5 = v7;
    if (v7 != v8)
    {
      v5 = v7;
      while (*v5 != a2)
      {
        if (++v5 == v8)
        {
          v5 = v8;
          break;
        }
      }
    }

    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v5 != v4;
}

void KB::LanguageModelContainer::completions(uint64_t a1, int a2, KB::LanguageModelContext *a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a6;
  std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v7, a4);
  operator new();
}

uint64_t KB::LanguageModelContainer::unified_predictions(KB::LanguageModelContainer *a1, void ***a2, KB::LanguageModelContext *a3, uint64_t a4, uint64_t a5)
{
  v62[4] = *MEMORY[0x277D85DE8];
  KB::LanguageModelContext::LanguageModelContext(v49, a3);
  KB::LanguageModelContainer::update_context_with_predominant_locale(a1, v49);
  if ((*(*a1 + 144))(a1))
  {
    v8 = *(a1 + 3);
    v9 = *(a1 + 4);
    if ((0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 3)) >= 2)
    {
      v10 = KB::LanguageModelContainer::most_probable_lexicon_for_context_and_stems(a1, v49, a2);
      v11 = KB::LanguageModelContainer::index_for_lexicon_id(a1, v10);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v12 = *(*(a1 + 3) + 56 * v11);
      if (v12)
      {
        v12 = (*(*v12 + 48))(&v43);
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
      }

      KB::LanguageModelContainer::remove_differing_lex_stems(v12, &v43, a2, &v46);
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v47 == v46)
      {
        v20 = v61;
        v61[0] = &unk_283FD8F58;
        v61[1] = a1;
        v61[2] = a4;
        v61[3] = v61;
        v21 = *(a5 + 24);
        v23 = v61;
        v22 = a2;
      }

      else
      {
        v20 = v62;
        v62[0] = &unk_283FD8F58;
        v62[1] = a1;
        v62[2] = a4;
        v62[3] = v62;
        v21 = *(a5 + 24);
        v22 = &v46;
        v23 = v62;
      }

      std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::operator()(v21, v22, v49, v23, v11);
      v14 = v24;
      std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v20);
      if (v47 == v46 || (v14 & 1) == 0)
      {
        v25 = *(a1 + 3);
        if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v25) >> 3)) >= 2)
        {
          v26 = v11 == 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v27 = *(v25 + 56 * v26);
          if (v27)
          {
            v27 = (*(*v27 + 48))(&v37);
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
          }

          KB::LanguageModelContainer::remove_differing_lex_stems(v27, &v37, a2, &v40);
          if (v37)
          {
            v38 = v37;
            operator delete(v37);
          }

          if (v41 == v40)
          {
            v28 = v59;
            v59[0] = &unk_283FD8F58;
            v59[1] = a1;
            v59[2] = a4;
            v59[3] = v59;
            v29 = *(a5 + 24);
            v31 = v59;
            v30 = a2;
          }

          else
          {
            v28 = v60;
            v60[0] = &unk_283FD8F58;
            v60[1] = a1;
            v60[2] = a4;
            v60[3] = v60;
            v29 = *(a5 + 24);
            v30 = &v40;
            v31 = v60;
          }

          std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::operator()(v29, v30, v49, v31, v26);
          v33 = v32;
          std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v28);
          v14 |= v33;
          v56 = &v40;
          std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v56);
        }
      }

      else
      {
        v14 = 1;
      }

      v40 = &v46;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v40);
      goto LABEL_36;
    }
  }

  else
  {
    v8 = *(a1 + 3);
    v9 = *(a1 + 4);
  }

  if (v9 == v8)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if ((*(**(v8 + v13) + 144))(*(v8 + v13)))
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v16 = (*(**(*(a1 + 3) + v13) + 48))(__p);
        KB::LanguageModelContainer::remove_differing_lex_stems(v16, __p, a2, &v46);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v58[0] = &unk_283FD8F58;
        v58[1] = a1;
        v58[2] = a4;
        v58[3] = v58;
        std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::operator()(*(a5 + 24), &v46, v49, v58, v15);
        v18 = v17;
        std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v58);
        v40 = &v46;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v40);
      }

      else
      {
        v57[0] = &unk_283FD8F58;
        v57[1] = a1;
        v57[2] = a4;
        v57[3] = v57;
        std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::operator()(*(a5 + 24), a2, v49, v57, v15);
        v18 = v19;
        std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v57);
      }

      v14 |= v18;
      ++v15;
      v8 = *(a1 + 3);
      v13 += 56;
    }

    while (v15 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v8) >> 3));
  }

LABEL_36:
  v46 = &v55;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v46);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v54);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v53);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  return v14 & 1;
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void KB::LanguageModelContainer::update_context_with_predominant_locale(KB::LanguageModelContainer *this, KB::LanguageModelContext *a2)
{
  v3 = (*(*this + 440))(this);
  if (v3)
  {
    v4 = TILocaleIdentifierForLexiconID(v3);
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v5;
    if (v5)
    {
      memmove(&__dst, v4, v5);
    }

    __dst.__r_.__value_.__s.__data_[v6] = 0;
    v7 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    KB::LanguageModelContext::set_predominant_locale(a2, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_15:
      operator delete(__dst.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (v7 < 0)
    {
      goto LABEL_15;
    }
  }
}

uint64_t KB::LanguageModelContainer::most_probable_lexicon_for_context_and_stems(void *a1, KB::LanguageModelContext *a2, const KB::Candidate **a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 1065353216;
  v6 = a1[3];
  v7 = a1[4];
  while (v6 != v7)
  {
    if (*v6)
    {
      (*(**v6 + 48))(&v53);
      v8 = v53;
      v9 = v54;
      if (v53 != v54)
      {
        do
        {
          v41 = v8;
          v10 = *v8;
          v8 = (v8 + 4);
          *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v48, v10, &v41) + 5) = 0;
        }

        while (v8 != v9);
        v8 = v53;
      }

      if (v8)
      {
        v54 = v8;
        operator delete(v8);
      }
    }

    v6 += 56;
  }

  v11 = *a3;
  v12 = a3[1];
  if (*a3 == v12)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 0.0;
    do
    {
      if (*v11)
      {
        v14 = 240 * *v11;
        v15 = (*(v11 + 1) + 52);
        v16 = 1.0;
        do
        {
          v17 = *v15;
          v15 += 60;
          v16 = v16 * v17;
          v14 -= 240;
        }

        while (v14);
      }

      else
      {
        v16 = 1.0;
      }

      KB::LanguageModelContext::LanguageModelContext(&v41, a2);
      KB::Candidate::Candidate(&v53, v11);
      if (v53 >= 2)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = v54[v18 + 17];
          KB::Word::capitalized_string(&v51, &v54[v18]);
          v21 = v20;
          KB::LanguageModelContext::append(&v41, v21, &v51, 0);
          if (v52)
          {
            v22 = BYTE6(v51) == 1;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
            free(v52);
          }

          ++v19;
          v18 += 30;
        }

        while (v19 < v53 - 1);
      }

      v23 = (*(*a1 + 440))(a1, &v41);
      v40 = v23;
      if (*(&v48 + 1))
      {
        v24 = vcnt_s8(*(&v48 + 8));
        v24.i16[0] = vaddlv_u8(v24);
        if (v24.u32[0] > 1uLL)
        {
          v25 = v23;
          if (*(&v48 + 1) <= v23)
          {
            v25 = v23 % DWORD2(v48);
          }
        }

        else
        {
          v25 = (DWORD2(v48) - 1) & v23;
        }

        v26 = *(v48 + 8 * v25);
        if (v26)
        {
          for (i = *v26; i; i = *i)
          {
            v28 = i[1];
            if (v28 == v23)
            {
              if (*(i + 4) == v23)
              {
                if (*v11)
                {
                  v29 = 240 * *v11;
                  v30 = (*(v11 + 1) + 52);
                  v31 = 1.0;
                  do
                  {
                    v32 = *v30;
                    v30 += 60;
                    v31 = v31 * v32;
                    v29 -= 240;
                  }

                  while (v29);
                }

                else
                {
                  v31 = 1.0;
                }

                v51 = &v40;
                v33 = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v48, v23, &v51);
                *(v33 + 5) = v31 + *(v33 + 5);
                break;
              }
            }

            else
            {
              if (v24.u32[0] > 1uLL)
              {
                if (v28 >= *(&v48 + 1))
                {
                  v28 %= *(&v48 + 1);
                }
              }

              else
              {
                v28 &= *(&v48 + 1) - 1;
              }

              if (v28 != v25)
              {
                break;
              }
            }
          }
        }
      }

      KB::Candidate::~Candidate(&v53);
      v53 = &v47;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v53);
      language_modeling::v1::LinguisticContext::~LinguisticContext(&v46);
      language_modeling::v1::LinguisticContext::~LinguisticContext(&v45);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v42);
      }

      v13 = v13 + v16;
      v11 = (v11 + 1000);
    }

    while (v11 != v12);
  }

  v34 = v49;
  if (v49)
  {
    v35 = v49;
    do
    {
      v35[5] = v35[5] / v13;
      v35 = *v35;
    }

    while (v35);
    LODWORD(v36) = 0;
    v37 = -3.4028e38;
    do
    {
      v38 = v34[5];
      if (v38 <= v37)
      {
        v36 = v36;
      }

      else
      {
        v36 = *(v34 + 4);
      }

      if (v38 > v37)
      {
        v37 = v34[5];
      }

      v34 = *v34;
    }

    while (v34);
  }

  else
  {
    v36 = 0;
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v48);
  return v36;
}

uint64_t KB::LanguageModelContainer::index_for_lexicon_id(KB::LanguageModelContainer *this, int a2)
{
  v2 = *(this + 3);
  if (*(this + 4) != v2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v2 + v5 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = KB::LanguageModelLexiconGroup::model_contains_lexicon_id((*(this + 3) + v5), a2);
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        if (v8)
        {
          return v6;
        }
      }

      else if (KB::LanguageModelLexiconGroup::model_contains_lexicon_id((v2 + v5), a2))
      {
        return v6;
      }

      ++v6;
      v2 = *(this + 3);
      v5 += 56;
    }

    while (v6 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 4) - v2) >> 3));
  }

  return -1;
}

uint64_t KB::LanguageModelContainer::remove_differing_lex_stems(uint64_t a1, uint64_t a2, const KB::Candidate **a3, KB::Candidate **a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    return result;
  }

  do
  {
    if (*v4 < 2)
    {
      goto LABEL_20;
    }

    v8 = 0;
    v9 = *(a2 + 8);
    v10 = 1;
    do
    {
      v11 = *(v4 + 1) + 240 * v8;
      v12 = *(v11 + 136);
      v13 = *a2;
      if (*a2 != v9)
      {
        v13 = *a2;
        while (*v13 != v12)
        {
          if (++v13 == v9)
          {
            v13 = *(a2 + 8);
            break;
          }
        }
      }

      if (v12 >> 34 >= 0x7D && (*(v11 + 135) & 4) == 0)
      {
        v14 = *(v11 + 8);
        v15 = (v11 + 16);
        if (v14)
        {
          v15 = v14;
        }

        if (*v15 == 32)
        {
          if (!v15[1])
          {
            goto LABEL_18;
          }

          v16 = v13 != v9;
        }

        else
        {
          v16 = v13 != v9;
          if (!*v15)
          {
            goto LABEL_18;
          }
        }

        v10 &= v16;
      }

LABEL_18:
      ++v8;
    }

    while (v8 != *v4 - 1);
    if (v10)
    {
LABEL_20:
      result = std::vector<KB::Candidate>::push_back[abi:nn200100](a4, v4);
    }

    v4 = (v4 + 1000);
  }

  while (v4 != v5);
  return result;
}

void std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  if (a1)
  {
    (*(*a1 + 48))(a1, a2, a3, a4, &v9);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0,std::allocator<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::operator()(v5, v6, v7, v8);
  }
}

void std::__function::__func<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0,std::allocator<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  std::vector<TITokenID>::vector[abi:nn200100](v12, a2);
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v15 = *(a2 + 48);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    __p = *(a2 + 72);
  }

  memset(v17, 0, sizeof(v17));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v17, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  memset(v18, 0, sizeof(v18));
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v18, *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
  v19 = *(a2 + 144);
  v9 = (*(*v8 + 456))(v8, *(a2 + 144), a4);
  *&v13 = v9 * *&v13;
  v10 = *(*(a1 + 16) + 24);
  if (v10)
  {
    (*(*v10 + 48))(v10, v12, a3, a4);
    v20 = v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v20);
    v20 = v17;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (v12[0])
    {
      v12[1] = v12[0];
      operator delete(v12[0]);
    }
  }

  else
  {
    v11 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0,std::allocator<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy_deallocate(v11);
  }
}

__n128 std::__function::__func<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0,std::allocator<KB::LanguageModelContainer::unified_predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD8F58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
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