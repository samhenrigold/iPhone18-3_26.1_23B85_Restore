uint64_t writevall(uint64_t a1, iovec *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  do
  {
    while (1)
    {
      v6 = writev(a1, a2, v3);
      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      v7 = &a2[(v3 - 1) + 1];
      while (1)
      {
        iov_len = a2->iov_len;
        v9 = v6 >= iov_len;
        v10 = v6 - iov_len;
        if (!v9)
        {
          break;
        }

        ++a2;
        v6 = v10;
        v11 = v3 == 1;
        v3 = 1;
        if (v11)
        {
          v3 = 0;
          if (!v10)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      v7 = a2;
      v10 = v6;
      if (!v6)
      {
        goto LABEL_17;
      }

LABEL_16:
      v13 = v7->iov_base + v10;
      v14 = v7->iov_len - v10;
      v7->iov_base = v13;
      v7->iov_len = v14;
LABEL_17:
      a2 = v7;
      if (!v3)
      {
        return 0;
      }
    }

    v12 = *__error();
  }

  while (v12 == 4 || g_prot_error_callback && ((*(g_prot_error_callback + 16))(g_prot_error_callback, a1, v12, 18) & 1) != 0);
  return -v12;
}

off_t get_file_size(int a1)
{
  memset(&v2, 0, sizeof(v2));
  if (fstat(a1, &v2))
  {
    return -*__error();
  }

  else
  {
    return v2.st_size;
  }
}

void SIModelManager::loadDictionaryForLanguage(SIModelManager *this, const char *a2)
{
  v2 = a2;
  v42 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  v4 = CFPreferencesCopyAppValue(@"RootDirectory", @"com.apple.spotlight");
  if (v4)
  {
    v5 = v4;
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding >= 1024)
    {
      v8 = 1024;
    }

    else
    {
      v8 = MaximumSizeForEncoding;
    }

    CFStringGetCString(v5, buffer, v8, 0x8000100u);
    CFRelease(v5);
  }

  else
  {
    if (dword_1EBF46AD0 >= 5)
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "No RootDirectory set for Suggestions", __p, 2u);
      }

      *__error() = v32;
    }

    strcpy(buffer, "/var/mobile/Library/Caches/com.apple.parsecd");
  }

  memset(v40, 0, sizeof(v40));
  if (v2)
  {
    strcpy(v40, "spotlight_stopword");
  }

  else
  {
    strcpy(v40, "spotlight_phrase_dictionary");
  }

  v9 = open(buffer, 0);
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  __p[0] = v9;
  __p[1] = v40;
  v36 = 0xA00000004uLL;
  v10 = data_map32_init_with_ctx(__p);
  if (v10)
  {
    v11 = v10;
    if (v2)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, this);
      v34 = __p;
      v12 = &SIModelManager::getInstance(void)::instance;
    }

    else
    {
      v13 = *&xmmword_1EBF61C30;
      LOBYTE(__p[0]) = 0;
      extra_with_key = data_map_get_extra_with_key(v10, kPhraseDefaultScore, 0x12uLL, __p);
      v16 = HIDWORD(extra_with_key) == 4 && extra_with_key != 0;
      v17 = extra_with_key;
      if ((__p[0] & v16) == 0)
      {
        v17 = v13;
      }

      *&xmmword_1EBF61C30 = v17;
      LOBYTE(__p[0]) = 0;
      v18 = data_map_get_extra_with_key(v11, kPhraseStopwordScore, 0xCuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v18 & 0xFFFFFFFF00000000) == 0x400000000 && v18)
      {
        *(&xmmword_1EBF61C30 + 1) = 1.0 / v18;
      }

      LOBYTE(__p[0]) = 0;
      v19 = data_map_get_extra_with_key(v11, kPhraseIncompleteScore, 0x18uLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v19 & 0xFFFFFFFF00000000) == 0x400000000 && v19)
      {
        *&qword_1EBF61C40 = 1.0 / v19;
      }

      LOBYTE(__p[0]) = 0;
      v20 = data_map_get_extra_with_key(v11, kPhraseDiscountedScore, 0x14uLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v20 & 0xFFFFFFFF00000000) == 0x400000000 && v20)
      {
        *&qword_1EBF61C48 = 1.0 / v20;
      }

      v21 = qword_1EBF61C50;
      LOBYTE(__p[0]) = 0;
      v22 = data_map_get_extra_with_key(v11, kTotal, 0xEuLL, __p);
      v24 = HIDWORD(v22) == 4 && v22 != 0;
      v25 = v22;
      if ((__p[0] & v24) == 0)
      {
        v25 = *&v21;
      }

      qword_1EBF61C50 = *&v25;
      LOBYTE(__p[0]) = 0;
      v26 = data_map_get_extra_with_key(v11, k1gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v26 & 0xFFFFFFFF00000000) == 0x400000000 && v26)
      {
        *&xmmword_1EBF61C60 = 1.0 / v26;
      }

      LOBYTE(__p[0]) = 0;
      v27 = data_map_get_extra_with_key(v11, k2gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v27 & 0xFFFFFFFF00000000) == 0x400000000 && v27)
      {
        *(&xmmword_1EBF61C60 + 1) = 1.0 / v27;
      }

      LOBYTE(__p[0]) = 0;
      v28 = data_map_get_extra_with_key(v11, k3gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v28 & 0xFFFFFFFF00000000) == 0x400000000 && v28)
      {
        *&qword_1EBF61C70 = 1.0 / v28;
      }

      LOBYTE(__p[0]) = 0;
      v29 = data_map_get_extra_with_key(v11, k4gramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v29 & 0xFFFFFFFF00000000) == 0x400000000 && v29)
      {
        *&qword_1EBF61C78 = 1.0 / v29;
      }

      LOBYTE(__p[0]) = 0;
      v30 = data_map_get_extra_with_key(v11, kNgramSize, 0xEuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v30 & 0xFFFFFFFF00000000) == 0x400000000 && v30)
      {
        *&qword_1EBF61C80 = 1.0 / v30;
      }

      LOBYTE(__p[0]) = 0;
      v31 = data_map_get_extra_with_key(v11, kNotUseLog, 0xCuLL, __p);
      if (LOBYTE(__p[0]) == 1 && (v31 & 0xFFFFFFFF00000000) == 0x400000000 && v31)
      {
        byte_1EBF61C58 = 0;
      }

      std::string::basic_string[abi:nn200100]<0>(__p, this);
      v34 = __p;
      v12 = &qword_1EBF61C18;
    }

    std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12, __p, &v34)[7] = v11;
    if (SBYTE7(v36) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, _OWORD **a3)
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

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_26;
    }
  }
}

uint64_t SIModelManager::isStopword(SIModelManager *this, unsigned __int16 *a2, char *__s, const char *a4)
{
  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v7 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::find<std::string>(&SIModelManager::getInstance(void)::instance, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 == &qword_1EBF61C08)
  {
    SIModelManager::loadDictionaryForLanguage(__s, 1);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v12 = __p;
  v8 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&SIModelManager::getInstance(void)::instance, __p, &v12)[7];
  if ((v11 & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    return 0;
  }

  operator delete(__p[0]);
  if (!v8)
  {
    return 0;
  }

LABEL_8:
  LOBYTE(__p[0]) = 0;
  if (data_map_get_extra_with_key(v8, this, 2 * a2, __p) == 0x400000001)
  {
    return LOBYTE(__p[0]);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::find<std::string>(uint64_t a1, uint64_t a2)
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

void SIModelManager::getPhraseScore(uint64_t a1, char *__s, unint64_t a3, char *a4)
{
  v5 = a3;
  v38 = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    if (a3 == 1)
    {
      *a4 = SIModelManager::isStopword(*a1, *(a1 + 8), __s, a4);
    }
  }

  else if (SIModelManager::isStopword(*(a1 + 16 * a3 - 16), *(a1 + 16 * a3 - 8), __s, a4))
  {
    v8 = *&qword_1EBF61C40;
LABEL_35:
    log(v8);
    return;
  }

  if (*a4 == 1)
  {
    v8 = *&qword_1EBF61C48;
    goto LABEL_35;
  }

  std::string::basic_string[abi:nn200100]<0>(v34, __s);
  v9 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::find<std::string>(&qword_1EBF61C18, v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v9 == &qword_1EBF61C20)
  {
    SIModelManager::loadDictionaryForLanguage(__s, 0);
  }

  std::string::basic_string[abi:nn200100]<0>(v34, __s);
  v36 = v34;
  v10 = std::__tree<std::__value_type<std::string,data_map_s *>,std::__map_value_compare<std::string,std::__value_type<std::string,data_map_s *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,data_map_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&qword_1EBF61C18, v34, &v36)[7];
  if (v35 < 0)
  {
    operator delete(v34[0]);
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_24:
    v8 = *&qword_1EBF61C50 / *&xmmword_1EBF61C30;
    goto LABEL_35;
  }

  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v5 <= 0)
  {
    v27 = 0;
    v17 = &v37;
  }

  else
  {
    v12 = 0;
    v13 = (a1 + 8);
    v14 = v5 & 0x7FFFFFFF;
    do
    {
      v15 = *v13;
      v13 += 4;
      v12 += v15;
      --v14;
    }

    while (v14);
    MEMORY[0x1EEE9AC00](v11);
    v17 = v34 - v16;
    bzero(v34 - v16, v18);
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = a1 + 16 * v19;
      v22 = *(v21 + 8);
      if (v22 >= 1)
      {
        v23 = *v21;
        v24 = v22 & 0x7FFFFFFF;
        v25 = &v17[2 * v20];
        do
        {
          v26 = *v23++;
          *v25 = v26;
          v25 += 2;
          --v24;
        }

        while (v24);
      }

      v20 += v22;
      ++v19;
    }

    while (v19 != (v5 & 0x7FFFFFFF));
    v27 = 2 * v12;
  }

  v28 = *&qword_1EBF61C50;
  v29 = *&xmmword_1EBF61C30;
  LOBYTE(v34[0]) = 0;
  extra_with_key = data_map_get_extra_with_key(v10, v17, v27, v34);
  v31 = HIDWORD(extra_with_key) != 4 || extra_with_key == 0;
  v32 = extra_with_key;
  v33 = !v31;
  if ((v34[0] & v33) == 0)
  {
    v32 = v29;
  }

  log(v28 / v32);
}

void SIModelManager::getInstance(SIModelManager *this)
{
  {
    qword_1EBF61C08 = 0;
    SIModelManager::getInstance(void)::instance = &qword_1EBF61C08;
    qword_1EBF61C20 = 0;
    qword_1EBF61C28 = 0;
    qword_1EBF61C10 = 0;
    qword_1EBF61C18 = &qword_1EBF61C20;
    xmmword_1EBF61C30 = xmmword_1C2BFA380;
    *&qword_1EBF61C40 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
    qword_1EBF61C50 = 0x3FF0000000000000;
    byte_1EBF61C58 = 1;
    __asm { FMOV            V0.2D, #1.0 }

    xmmword_1EBF61C60 = _Q0;
    *&qword_1EBF61C70 = xmmword_1C2BFA390;
    qword_1EBF61C80 = 0x3FD0000000000000;
  }
}

void analytics::SampledLogger<analytics::GetEvent>::logEvent(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 88));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 >= *(a1 + 24))
  {
    ++*(a1 + 80);
    v11 = rand() % *(a1 + 80);
    v12 = *(a1 + 56);
    if (v11 < (*(a1 + 64) - v12) >> 3)
    {
      v13 = *a2;
      *a2 = 0;
      v14 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v13;
      if (v14)
      {
        MEMORY[0x1C691FEF0](v14, 0x1000C4073594BB7);
      }
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v5 >= v8)
    {
      v15 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = v8 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v18 = *a2;
      *a2 = 0;
      *(8 * v7) = v18;
      v10 = 8 * v7 + 8;
      memcpy(0, v4, v6);
      *(a1 + 56) = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v9 = *a2;
      *a2 = 0;
      *v5 = v9;
      v10 = (v5 + 8);
    }

    *(a1 + 64) = v10;
  }

  std::mutex::unlock((a1 + 88));
}

void analytics::SampledLogger<analytics::GetEvent>::~SampledLogger(uint64_t a1)
{
  analytics::SampledLogger<analytics::GetEvent>::~SampledLogger(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t analytics::SampledLogger<analytics::GetEvent>::~SampledLogger(uint64_t a1)
{
  *a1 = &unk_1F427BEE0;
  std::mutex::~mutex((a1 + 88));
  v5 = (a1 + 56);
  std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<analytics::GetEvent>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<analytics::GetEvent>>::__base_destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1C691FEF0](result, 0x1000C4073594BB7);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void analytics::SampledLogger<analytics::PutEvent>::logEvent(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 88));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 >= *(a1 + 24))
  {
    ++*(a1 + 80);
    v11 = rand() % *(a1 + 80);
    v12 = *(a1 + 56);
    if (v11 < (*(a1 + 64) - v12) >> 3)
    {
      v13 = *a2;
      *a2 = 0;
      v14 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v13;
      if (v14)
      {
        MEMORY[0x1C691FEF0](v14, 0x1000C4022EED179);
      }
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v5 >= v8)
    {
      v15 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = v8 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v18 = *a2;
      *a2 = 0;
      *(8 * v7) = v18;
      v10 = 8 * v7 + 8;
      memcpy(0, v4, v6);
      *(a1 + 56) = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v9 = *a2;
      *a2 = 0;
      *v5 = v9;
      v10 = (v5 + 8);
    }

    *(a1 + 64) = v10;
  }

  std::mutex::unlock((a1 + 88));
}

void analytics::SampledLogger<analytics::PutEvent>::~SampledLogger(uint64_t a1)
{
  analytics::SampledLogger<analytics::PutEvent>::~SampledLogger(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t analytics::SampledLogger<analytics::PutEvent>::~SampledLogger(uint64_t a1)
{
  *a1 = &unk_1F427BF08;
  std::mutex::~mutex((a1 + 88));
  v5 = (a1 + 56);
  std::vector<std::unique_ptr<analytics::PutEvent>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::vector<std::unique_ptr<analytics::PutEvent>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<analytics::PutEvent>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<analytics::PutEvent>>::__base_destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1C691FEF0](result, 0x1000C4022EED179);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void analytics::SampledLogger<analytics::DeleteEvent>::logEvent(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 88));
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 >= *(a1 + 24))
  {
    ++*(a1 + 80);
    v11 = rand() % *(a1 + 80);
    v12 = *(a1 + 56);
    if (v11 < (*(a1 + 64) - v12) >> 3)
    {
      v13 = *a2;
      *a2 = 0;
      v14 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v13;
      if (v14)
      {
        MEMORY[0x1C691FEF0](v14, 0x1000C4073594BB7);
      }
    }
  }

  else
  {
    v8 = *(a1 + 72);
    if (v5 >= v8)
    {
      v15 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v16 = v8 - v4;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v18 = *a2;
      *a2 = 0;
      *(8 * v7) = v18;
      v10 = 8 * v7 + 8;
      memcpy(0, v4, v6);
      *(a1 + 56) = 0;
      *(a1 + 64) = v10;
      *(a1 + 72) = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v9 = *a2;
      *a2 = 0;
      *v5 = v9;
      v10 = (v5 + 8);
    }

    *(a1 + 64) = v10;
  }

  std::mutex::unlock((a1 + 88));
}

void analytics::SampledLogger<analytics::DeleteEvent>::~SampledLogger(uint64_t a1)
{
  analytics::SampledLogger<analytics::DeleteEvent>::~SampledLogger(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t analytics::SampledLogger<analytics::DeleteEvent>::~SampledLogger(uint64_t a1)
{
  *a1 = &unk_1F427BF30;
  std::mutex::~mutex((a1 + 88));
  v5 = (a1 + 56);
  std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void analytics::XpcActivityScheduler::start(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v4 >= v5)
  {
    v7 = *(a1 + 80);
    v8 = (v4 - v7) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - v7;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v12 = 32 * v8;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v12, a2);
    v6 = v12 + 32;
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    v15 = v12 + v13 - v14;
    if (v14 != v13)
    {
      v16 = *(a1 + 80);
      v17 = v15;
      do
      {
        v18 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v17, v16);
        v16 += 32;
        v17 = v18 + 32;
      }

      while (v16 != v14);
      do
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
        v13 += 32;
      }

      while (v13 != v14);
    }

    v19 = *(a1 + 80);
    *(a1 + 80) = v15;
    *(a1 + 88) = v6;
    *(a1 + 96) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v6 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v4, a2) + 32;
  }

  *(a1 + 88) = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  if (analytics::XpcActivityScheduler::registerXpcActivityOnce(void)::onceToken != -1)
  {
    dispatch_once(&analytics::XpcActivityScheduler::registerXpcActivityOnce(void)::onceToken, block);
  }

  std::mutex::unlock((a1 + 16));
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9C68], *MEMORY[0x1E69E9CC8]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CE8]);
  v3 = *(v1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_19_2517;
  v4[4] = v1;
  v3("com.apple.spotlight.textstore.Analytics", v2, v4);
  xpc_release(v2);
}

void ___ZN9analytics20XpcActivityScheduler23registerXpcActivityOnceEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((v1 + 16));
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  while (v2 != v3)
  {
    v4 = *(v2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
      return;
    }

    (*(*v4 + 48))(v4);
    v2 += 32;
  }

  std::mutex::unlock((v1 + 16));
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void analytics::XpcActivityScheduler::~XpcActivityScheduler(analytics::XpcActivityScheduler *this)
{
  *this = &unk_1F427BF78;
  v1 = (this + 16);
  v2 = (this + 80);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::mutex::~mutex(v1);

  JUMPOUT(0x1C691FEF0);
}

{
  *this = &unk_1F427BF78;
  v1 = (this + 16);
  v2 = (this + 80);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::mutex::~mutex(v1);
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        std::mutex::lock((v5 + 88));
        v12 = *(v5 + 56);
        v10 = v12;
        v13 = *(v5 + 72);
        *(v5 + 72) = 0u;
        *(v5 + 56) = 0u;
        std::mutex::unlock((v5 + 88));
        for (i = v10; i != *(&v10 + 1); ++i)
        {
          v7 = *(v5 + 32);
          v8 = *i;
          *i = 0;
          v11 = v8;
          (*(*v7 + 16))(v7, &v11);
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            MEMORY[0x1C691FEF0](v9, 0x1000C4073594BB7);
          }
        }

        v14 = &v12;
        std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v14);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F427BFD8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427BFD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1C691FEF0);
}

void *std::__function::__func<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::GetEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427BFD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::GetEvent>::logEvent(uint64_t a1, std::__shared_weak_count_vtbl **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v9 = "com.apple.spotlight.textstore.Get";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v9 = "com.apple.spotlight.textstore.Get";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_8GetEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v45, 0, sizeof(v45));
  __p = 0;
  v43 = 0;
  v44 = 0;
  if (*(v2 + 1) == 1)
  {
    v41 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v41 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v41 = "requested_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v44)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v9 = v44 - __p;
      if ((v44 - __p) >> 2 > v8)
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v44 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v43 = v1;
  }

  if (*(v2 + 40) == 1)
  {
    v41 = "hot_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v12 = xpc_int64_create(*(v2 + 32));
    v13 = v12;
    if (v1 >= v44)
    {
      v14 = __p;
      v15 = v1 - __p;
      v16 = (v1 - __p) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v18 = v44 - __p;
      if ((v44 - __p) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      v20 = (8 * v16);
      *v20 = v13;
      v1 = (v20 + 1);
      memcpy(0, v14, v15);
      __p = 0;
      v44 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v1 = v12;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 56) == 1)
  {
    v41 = "cold_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v21 = xpc_int64_create(*(v2 + 48));
    v22 = v21;
    if (v1 >= v44)
    {
      v23 = __p;
      v24 = v1 - __p;
      v25 = (v1 - __p) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v27 = v44 - __p;
      if ((v44 - __p) >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      v29 = (8 * v25);
      *v29 = v22;
      v1 = (v29 + 1);
      memcpy(0, v23, v24);
      __p = 0;
      v44 = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v1 = v21;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 68) != 1)
  {
    goto LABEL_61;
  }

  v41 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
  v30 = xpc_double_create(*(v2 + 64));
  v31 = v30;
  if (v1 >= v44)
  {
    v33 = __p;
    v34 = v1 - __p;
    v35 = (v1 - __p) >> 3;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 61))
    {
      v37 = v44 - __p;
      if ((v44 - __p) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v38);
      }

      *(8 * v35) = v31;
      v32 = 8 * v35 + 8;
      memcpy(0, v33, v34);
      __p = 0;
      v44 = 0;
      if (v33)
      {
        operator delete(v33);
      }

      goto LABEL_60;
    }

LABEL_66:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v30;
  v32 = v1 + 8;
LABEL_60:
  v43 = v32;
LABEL_61:
  if (__p)
  {
    operator delete(__p);
  }

  if (v45[0])
  {
    operator delete(v45[0]);
  }

  return v39;
}

void __destroy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8GetEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8GetEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::vector<char const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

xpc_object_t analytics::anonymous namespace::to_dictionary(uint64_t a1, xpc_object_t **a2)
{
  v4 = *a1;
  v6 = *(a1 + 8) - v4;
  v7 = *a2;
  if (v6 != a2[1] - v7)
  {
    __assert_rtn("to_dictionary", "Analytics.cpp", 22, "keys.size() == values.size()");
  }

  v9 = xpc_dictionary_create(v4, v7, v6 >> 3);
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      v12 = *v10++;
      xpc_release(v12);
    }

    while (v10 != v11);
    v10 = *a2;
  }

  *(a1 + 8) = *a1;
  a2[1] = v10;
  return v9;
}

uint64_t std::__shared_ptr_pointer<analytics::GetEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::GetEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::GetEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        std::mutex::lock((v5 + 88));
        v12 = *(v5 + 56);
        v10 = v12;
        v13 = *(v5 + 72);
        *(v5 + 72) = 0u;
        *(v5 + 56) = 0u;
        std::mutex::unlock((v5 + 88));
        for (i = v10; i != *(&v10 + 1); ++i)
        {
          v7 = *(v5 + 32);
          v8 = *i;
          *i = 0;
          v11 = v8;
          (*(*v7 + 16))(v7, &v11);
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            MEMORY[0x1C691FEF0](v9, 0x1000C4022EED179);
          }
        }

        v14 = &v12;
        std::vector<std::unique_ptr<analytics::PutEvent>>::__destroy_vector::operator()[abi:nn200100](&v14);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F427C120;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C120;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1C691FEF0);
}

void *std::__function::__func<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::PutEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C120;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::PutEvent>::logEvent(uint64_t a1, std::__shared_weak_count_vtbl **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v9 = "com.apple.spotlight.textstore.Put";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v9 = "com.apple.spotlight.textstore.Put";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_8PutEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v27, 0, sizeof(v27));
  __p = 0;
  v25 = 0;
  v26 = 0;
  if (*(v2 + 1) == 1)
  {
    v23 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v23 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v23 = "doc_size";
    std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v26)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_38;
      }

      v9 = v26 - __p;
      if ((v26 - __p) >> 2 > v8)
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v26 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v25 = v1;
  }

  if (*(v2 + 36) != 1)
  {
    goto LABEL_33;
  }

  v23 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v27, &v23);
  v12 = xpc_double_create(*(v2 + 32));
  v13 = v12;
  if (v1 >= v26)
  {
    v15 = __p;
    v16 = v1 - __p;
    v17 = (v1 - __p) >> 3;
    v18 = v17 + 1;
    if (!((v17 + 1) >> 61))
    {
      v19 = v26 - __p;
      if ((v26 - __p) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v20);
      }

      *(8 * v17) = v13;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      __p = 0;
      v26 = 0;
      if (v15)
      {
        operator delete(v15);
      }

      goto LABEL_32;
    }

LABEL_38:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v12;
  v14 = v1 + 8;
LABEL_32:
  v25 = v14;
LABEL_33:
  if (__p)
  {
    operator delete(__p);
  }

  if (v27[0])
  {
    operator delete(v27[0]);
  }

  return v21;
}

void __destroy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8PutEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c47_ZTSNSt3__110shared_ptrIN9analytics8PutEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::PutEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::PutEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::PutEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        std::mutex::lock((v5 + 88));
        v12 = *(v5 + 56);
        v10 = v12;
        v13 = *(v5 + 72);
        *(v5 + 72) = 0u;
        *(v5 + 56) = 0u;
        std::mutex::unlock((v5 + 88));
        for (i = v10; i != *(&v10 + 1); ++i)
        {
          v7 = *(v5 + 32);
          v8 = *i;
          *i = 0;
          v11 = v8;
          (*(*v7 + 16))(v7, &v11);
          v9 = v11;
          v11 = 0;
          if (v9)
          {
            MEMORY[0x1C691FEF0](v9, 0x1000C4073594BB7);
          }
        }

        v14 = &v12;
        std::vector<std::unique_ptr<analytics::GetEvent>>::__destroy_vector::operator()[abi:nn200100](&v14);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F427C268;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C268;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1C691FEF0);
}

void *std::__function::__func<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1},std::allocator<analytics::SampledLogger<analytics::DeleteEvent>::startAsync(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F427C268;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::DeleteEvent>::logEvent(uint64_t a1, std::__shared_weak_count_vtbl **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v9 = "com.apple.spotlight.textstore.Delete";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v9 = "com.apple.spotlight.textstore.Delete";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_11DeleteEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v45, 0, sizeof(v45));
  __p = 0;
  v43 = 0;
  v44 = 0;
  if (*(v2 + 1) == 1)
  {
    v41 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v41 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v41 = "requested_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v44)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v9 = v44 - __p;
      if ((v44 - __p) >> 2 > v8)
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v44 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v43 = v1;
  }

  if (*(v2 + 40) == 1)
  {
    v41 = "hot_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v12 = xpc_int64_create(*(v2 + 32));
    v13 = v12;
    if (v1 >= v44)
    {
      v14 = __p;
      v15 = v1 - __p;
      v16 = (v1 - __p) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v18 = v44 - __p;
      if ((v44 - __p) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      v20 = (8 * v16);
      *v20 = v13;
      v1 = (v20 + 1);
      memcpy(0, v14, v15);
      __p = 0;
      v44 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v1 = v12;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 56) == 1)
  {
    v41 = "cold_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v21 = xpc_int64_create(*(v2 + 48));
    v22 = v21;
    if (v1 >= v44)
    {
      v23 = __p;
      v24 = v1 - __p;
      v25 = (v1 - __p) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v27 = v44 - __p;
      if ((v44 - __p) >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      v29 = (8 * v25);
      *v29 = v22;
      v1 = (v29 + 1);
      memcpy(0, v23, v24);
      __p = 0;
      v44 = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v1 = v21;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 68) != 1)
  {
    goto LABEL_61;
  }

  v41 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
  v30 = xpc_double_create(*(v2 + 64));
  v31 = v30;
  if (v1 >= v44)
  {
    v33 = __p;
    v34 = v1 - __p;
    v35 = (v1 - __p) >> 3;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 61))
    {
      v37 = v44 - __p;
      if ((v44 - __p) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v38);
      }

      *(8 * v35) = v31;
      v32 = 8 * v35 + 8;
      memcpy(0, v33, v34);
      __p = 0;
      v44 = 0;
      if (v33)
      {
        operator delete(v33);
      }

      goto LABEL_60;
    }

LABEL_66:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v30;
  v32 = v1 + 8;
LABEL_60:
  v43 = v32;
LABEL_61:
  if (__p)
  {
    operator delete(__p);
  }

  if (v45[0])
  {
    operator delete(v45[0]);
  }

  return v39;
}

void __destroy_helper_block_8_32c51_ZTSNSt3__110shared_ptrIN9analytics11DeleteEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c51_ZTSNSt3__110shared_ptrIN9analytics11DeleteEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::DeleteEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::DeleteEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::DeleteEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C2B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::OpenEvent>::logEvent(uint64_t a1, std::__shared_weak_count_vtbl **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v9 = "com.apple.spotlight.textstore.Open";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v9 = "com.apple.spotlight.textstore.Open";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_9OpenEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v91, 0, sizeof(v91));
  __p = 0;
  v89 = 0;
  v90 = 0;
  if (*(v1 + 4) == 1)
  {
    v87 = "open_type";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v2 = "load";
    if (*v1 != 1)
    {
      v2 = 0;
    }

    if (*v1)
    {
      v3 = v2;
    }

    else
    {
      v3 = "create";
    }

    v4 = xpc_string_create(v3);
    v5 = v4;
    v6 = v89;
    if (v89 >= v90)
    {
      v8 = (v89 - __p) >> 3;
      if ((v8 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v9 = (v90 - __p) >> 2;
      if (v9 <= v8 + 1)
      {
        v9 = v8 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      *(8 * v8) = v5;
      v7 = 8 * v8 + 8;
      v11 = __p;
      v12 = (8 * v8 - (v89 - __p));
      memcpy(v12, __p, v89 - __p);
      __p = v12;
      v90 = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v89 = v4;
      v7 = (v6 + 8);
    }

    v89 = v7;
  }

  if (*(v1 + 9) == 1)
  {
    v87 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v13 = xpc_BOOL_create(*(v1 + 8));
    v14 = v13;
    v15 = v89;
    if (v89 >= v90)
    {
      v17 = (v89 - __p) >> 3;
      if ((v17 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v18 = (v90 - __p) >> 2;
      if (v18 <= v17 + 1)
      {
        v18 = v17 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      *(8 * v17) = v14;
      v16 = 8 * v17 + 8;
      v20 = __p;
      v21 = (8 * v17 - (v89 - __p));
      memcpy(v21, __p, v89 - __p);
      __p = v21;
      v90 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v89 = v13;
      v16 = (v15 + 8);
    }

    v89 = v16;
  }

  if (*(v1 + 16) == 1)
  {
    v87 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v22 = xpc_int64_create(*(v1 + 12));
    v23 = v22;
    v24 = v89;
    if (v89 >= v90)
    {
      v26 = (v89 - __p) >> 3;
      if ((v26 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v27 = (v90 - __p) >> 2;
      if (v27 <= v26 + 1)
      {
        v27 = v26 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      *(8 * v26) = v23;
      v25 = 8 * v26 + 8;
      v29 = __p;
      v30 = (8 * v26 - (v89 - __p));
      memcpy(v30, __p, v89 - __p);
      __p = v30;
      v90 = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v89 = v22;
      v25 = (v24 + 8);
    }

    v89 = v25;
  }

  if (*(v1 + 32) == 1)
  {
    v87 = "hot_shard_size";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v31 = xpc_int64_create(*(v1 + 24));
    v32 = v31;
    v33 = v89;
    if (v89 >= v90)
    {
      v35 = (v89 - __p) >> 3;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v36 = (v90 - __p) >> 2;
      if (v36 <= v35 + 1)
      {
        v36 = v35 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v37);
      }

      *(8 * v35) = v32;
      v34 = 8 * v35 + 8;
      v38 = __p;
      v39 = (8 * v35 - (v89 - __p));
      memcpy(v39, __p, v89 - __p);
      __p = v39;
      v90 = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v89 = v31;
      v34 = (v33 + 8);
    }

    v89 = v34;
  }

  if (*(v1 + 48) == 1)
  {
    v87 = "cold_shard_file_count";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v40 = xpc_int64_create(*(v1 + 40));
    v41 = v40;
    v42 = v89;
    if (v89 >= v90)
    {
      v44 = (v89 - __p) >> 3;
      if ((v44 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v45 = (v90 - __p) >> 2;
      if (v45 <= v44 + 1)
      {
        v45 = v44 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v46 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v46);
      }

      *(8 * v44) = v41;
      v43 = 8 * v44 + 8;
      v47 = __p;
      v48 = (8 * v44 - (v89 - __p));
      memcpy(v48, __p, v89 - __p);
      __p = v48;
      v90 = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v89 = v40;
      v43 = (v42 + 8);
    }

    v89 = v43;
  }

  if (*(v1 + 64) == 1)
  {
    v87 = "cold_shard_total_size";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v49 = xpc_int64_create(*(v1 + 56));
    v50 = v49;
    v51 = v89;
    if (v89 >= v90)
    {
      v53 = (v89 - __p) >> 3;
      if ((v53 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v54 = (v90 - __p) >> 2;
      if (v54 <= v53 + 1)
      {
        v54 = v53 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v55 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v54;
      }

      if (v55)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v55);
      }

      *(8 * v53) = v50;
      v52 = 8 * v53 + 8;
      v56 = __p;
      v57 = (8 * v53 - (v89 - __p));
      memcpy(v57, __p, v89 - __p);
      __p = v57;
      v90 = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *v89 = v49;
      v52 = (v51 + 8);
    }

    v89 = v52;
  }

  if (*(v1 + 76) == 1)
  {
    v87 = "elapsed_ms";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v58 = xpc_double_create(*(v1 + 72));
    v59 = v58;
    v60 = v89;
    if (v89 >= v90)
    {
      v62 = (v89 - __p) >> 3;
      if ((v62 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v63 = (v90 - __p) >> 2;
      if (v63 <= v62 + 1)
      {
        v63 = v62 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v64 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v63;
      }

      if (v64)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v64);
      }

      *(8 * v62) = v59;
      v61 = 8 * v62 + 8;
      v65 = __p;
      v66 = (8 * v62 - (v89 - __p));
      memcpy(v66, __p, v89 - __p);
      __p = v66;
      v90 = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    else
    {
      *v89 = v58;
      v61 = (v60 + 8);
    }

    v89 = v61;
  }

  if (*(v1 + 88) == 1)
  {
    v87 = "extra_hot_shard_corrupt_count";
    std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
    v67 = xpc_int64_create(*(v1 + 80));
    v68 = v67;
    v69 = v89;
    if (v89 >= v90)
    {
      v71 = (v89 - __p) >> 3;
      if ((v71 + 1) >> 61)
      {
        goto LABEL_137;
      }

      v72 = (v90 - __p) >> 2;
      if (v72 <= v71 + 1)
      {
        v72 = v71 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v72;
      }

      if (v73)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v73);
      }

      *(8 * v71) = v68;
      v70 = 8 * v71 + 8;
      v74 = __p;
      v75 = (8 * v71 - (v89 - __p));
      memcpy(v75, __p, v89 - __p);
      __p = v75;
      v90 = 0;
      if (v74)
      {
        operator delete(v74);
      }
    }

    else
    {
      *v89 = v67;
      v70 = (v69 + 8);
    }

    v89 = v70;
  }

  if (*(v1 + 104) != 1)
  {
    goto LABEL_132;
  }

  v87 = "extra_hot_shard_cooled_count";
  std::vector<char const*>::push_back[abi:nn200100](v91, &v87);
  v76 = xpc_int64_create(*(v1 + 96));
  v77 = v76;
  v78 = v89;
  if (v89 >= v90)
  {
    v80 = (v89 - __p) >> 3;
    if (!((v80 + 1) >> 61))
    {
      v81 = (v90 - __p) >> 2;
      if (v81 <= v80 + 1)
      {
        v81 = v80 + 1;
      }

      if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v82 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v82);
      }

      *(8 * v80) = v77;
      v79 = 8 * v80 + 8;
      v83 = __p;
      v84 = (8 * v80 - (v89 - __p));
      memcpy(v84, __p, v89 - __p);
      __p = v84;
      v90 = 0;
      if (v83)
      {
        operator delete(v83);
      }

      goto LABEL_131;
    }

LABEL_137:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v89 = v76;
  v79 = (v78 + 8);
LABEL_131:
  v89 = v79;
LABEL_132:
  if (__p)
  {
    operator delete(__p);
  }

  if (v91[0])
  {
    operator delete(v91[0]);
  }

  return v85;
}

void __destroy_helper_block_8_32c48_ZTSNSt3__110shared_ptrIN9analytics9OpenEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c48_ZTSNSt3__110shared_ptrIN9analytics9OpenEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::OpenEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::OpenEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::OpenEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void *analytics::ScopedLogger<analytics::OpenEvent>::~ScopedLogger(void *a1)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *a1;
  v4 = (v2.__d_.__rep_ - a1[1]) * 0.00001;
  if ((*(*a1 + 76) & 1) == 0)
  {
    *(v3 + 76) = 1;
  }

  v5 = v4;
  *(v3 + 72) = v5;
  v6 = a1[2];
  *a1 = 0;
  v11 = v3;
  (*(*v6 + 16))(v6, &v11);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    MEMORY[0x1C691FEF0](v7, 0x1000C4027064493);
  }

  v8 = a1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    MEMORY[0x1C691FEF0](v9, 0x1000C4027064493);
  }

  return a1;
}

void analytics::anonymous namespace::CoreAnalyticsLogger<analytics::HotShardCoolDownEvent>::logEvent(uint64_t a1, std::__shared_weak_count_vtbl **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v2 = analytics_send_event_lazy();
  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = (2 * (dword_1EBF46AEC < 4));
  v6 = os_log_type_enabled(v4, v5);
  if (v2)
  {
    if (v6)
    {
      *buf = 136315138;
      v9 = "com.apple.spotlight.textstore.HotShardCoolDown";
      v7 = "successfully logged event: %s";
LABEL_8:
      _os_log_impl(&dword_1C278D000, v4, v5, v7, buf, 0xCu);
    }
  }

  else if (v6)
  {
    *buf = 136315138;
    v9 = "com.apple.spotlight.textstore.HotShardCoolDown";
    v7 = "event logging disabled: %s";
    goto LABEL_8;
  }

  *__error() = v3;
}

xpc_object_t ___ZN9analytics12_GLOBAL__N_119CoreAnalyticsLoggerINS_21HotShardCoolDownEventEE8logEventENSt3__110unique_ptrIS2_NS4_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  memset(v45, 0, sizeof(v45));
  __p = 0;
  v43 = 0;
  v44 = 0;
  if (*(v2 + 1) == 1)
  {
    v41 = "success";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_BOOL_create(*v2);
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 8) == 1)
  {
    v41 = "error_code";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    xpc_int64_create(*(v2 + 4));
    std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(1uLL);
  }

  if (*(v2 + 24) == 1)
  {
    v41 = "hot_shard_doc_count";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v3 = xpc_int64_create(*(v2 + 16));
    v4 = v3;
    if (v44)
    {
      MEMORY[0] = v3;
      v1 = 8;
    }

    else
    {
      v5 = __p;
      v6 = -__p;
      v7 = -__p >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v9 = v44 - __p;
      if ((v44 - __p) >> 2 > v8)
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v10);
      }

      v11 = (8 * v7);
      *v11 = v4;
      v1 = (v11 + 1);
      memcpy(0, v5, v6);
      __p = 0;
      v44 = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    v43 = v1;
  }

  if (*(v2 + 40) == 1)
  {
    v41 = "hot_shard_size";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v12 = xpc_int64_create(*(v2 + 32));
    v13 = v12;
    if (v1 >= v44)
    {
      v14 = __p;
      v15 = v1 - __p;
      v16 = (v1 - __p) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v18 = v44 - __p;
      if ((v44 - __p) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v19);
      }

      v20 = (8 * v16);
      *v20 = v13;
      v1 = (v20 + 1);
      memcpy(0, v14, v15);
      __p = 0;
      v44 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v1 = v12;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 56) == 1)
  {
    v41 = "cold_shard_size";
    std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
    v21 = xpc_int64_create(*(v2 + 48));
    v22 = v21;
    if (v1 >= v44)
    {
      v23 = __p;
      v24 = v1 - __p;
      v25 = (v1 - __p) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_66;
      }

      v27 = v44 - __p;
      if ((v44 - __p) >> 2 > v26)
      {
        v26 = v27 >> 2;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v28);
      }

      v29 = (8 * v25);
      *v29 = v22;
      v1 = (v29 + 1);
      memcpy(0, v23, v24);
      __p = 0;
      v44 = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v1 = v21;
      v1 += 8;
    }

    v43 = v1;
  }

  if (*(v2 + 68) != 1)
  {
    goto LABEL_61;
  }

  v41 = "elapsed_ms";
  std::vector<char const*>::push_back[abi:nn200100](v45, &v41);
  v30 = xpc_double_create(*(v2 + 64));
  v31 = v30;
  if (v1 >= v44)
  {
    v33 = __p;
    v34 = v1 - __p;
    v35 = (v1 - __p) >> 3;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 61))
    {
      v37 = v44 - __p;
      if ((v44 - __p) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<void *>>(v38);
      }

      *(8 * v35) = v31;
      v32 = 8 * v35 + 8;
      memcpy(0, v33, v34);
      __p = 0;
      v44 = 0;
      if (v33)
      {
        operator delete(v33);
      }

      goto LABEL_60;
    }

LABEL_66:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  *v1 = v30;
  v32 = v1 + 8;
LABEL_60:
  v43 = v32;
LABEL_61:
  if (__p)
  {
    operator delete(__p);
  }

  if (v45[0])
  {
    operator delete(v45[0]);
  }

  return v39;
}

void __destroy_helper_block_8_32c61_ZTSNSt3__110shared_ptrIN9analytics21HotShardCoolDownEventEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_8_32c61_ZTSNSt3__110shared_ptrIN9analytics21HotShardCoolDownEventEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<analytics::HotShardCoolDownEvent  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C691FEF0);
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::HotShardCoolDownEvent  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void std::__shared_ptr_emplace<analytics::anonymous namespace::CoreAnalyticsLogger<analytics::HotShardCoolDownEvent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427C440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void *analytics::ScopedLogger<analytics::DeleteEvent>::~ScopedLogger(void *a1)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *a1;
  v4 = (v2.__d_.__rep_ - a1[1]) * 0.00001;
  if ((*(*a1 + 68) & 1) == 0)
  {
    *(v3 + 68) = 1;
  }

  v5 = v4;
  *(v3 + 64) = v5;
  v6 = a1[2];
  *a1 = 0;
  v11 = v3;
  (*(*v6 + 16))(v6, &v11);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    MEMORY[0x1C691FEF0](v7, 0x1000C4073594BB7);
  }

  v8 = a1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    MEMORY[0x1C691FEF0](v9, 0x1000C4073594BB7);
  }

  return a1;
}

uint64_t SISetLogging(uint64_t result, int a2)
{
  if (result <= 0x15)
  {
    gSILogLevels[result] = a2;
  }

  return result;
}

uint64_t __isDebugVerboseMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  isDebugVerboseMode_debugEnabled = result;
  return result;
}

BOOL trie_level_info_eq(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *a1 == *a2 && *(a1 + 4) == *(a2 + 4) && (v2 = *(a1 + 16), v2 == *(a2 + 16)))
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL bt_changePrefix(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a3, "indexDirectory");
  v8 = fd_rename(*(a1 + 4576), __str);
  snprintf(__str, 0x400uLL, "%s%s", a3, "indexCompactDirectory");
  if (v8)
  {
    snprintf(__str, 0x400uLL, "%s%s", a3, "indexArrays");
    return 0;
  }

  v10 = fd_rename(*(a1 + 112), __str);
  snprintf(__str, 0x400uLL, "%s%s", a3, "indexArrays");
  if (v10)
  {
    return 0;
  }

  v11 = fd_rename(*(a1 + 376), __str);
  result = v11 == 0;
  if (!v11 && a4)
  {
    bzero(&__from, 0x400uLL);
    v12 = *(a1 + 152);
    memset(&v23, 0, sizeof(v23));
    if (fstat(v12, &v23))
    {
      return 1;
    }

    v13 = open(".", 4);
    if (MEMORY[0x1C6921200](v12))
    {
      if ((v13 & 0x80000000) == 0)
      {
        close(v13);
      }

      return 1;
    }

    snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
    snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexArrays");
    rename(&__from, __str, v14);
    v16 = v15;
    snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
    snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexDirectory");
    if (v16)
    {
      snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
      snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexCompactDirectory");
    }

    else
    {
      rename(&__from, __str, v17);
      v19 = v18;
      snprintf(&__from, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
      snprintf(__str, 0x400uLL, "%s%s", a3, "shadowIndexCompactDirectory");
      if (!v19)
      {
        rename(&__from, __str, v20);
        v21 = v22 == 0;
        goto LABEL_17;
      }
    }

    v21 = 0;
LABEL_17:
    MEMORY[0x1C6921200](v13);
    if ((v13 & 0x80000000) == 0)
    {
      close(v13);
    }

    return v21;
  }

  return result;
}

uint64_t bt_openTrie(uint64_t a1, int a2, const char *a3, int a4, int a5, int a6, int a7, void *a8)
{
  v126 = *MEMORY[0x1E69E9840];
  v15 = a1 + 4096;
  memset(&v115, 0, sizeof(v115));
  bzero(__str, 0x400uLL);
  *(a1 + 4584) = a4;
  *(a1 + 152) = a2;
  if (!*(a1 + 4544))
  {
    v16 = *MEMORY[0x1E695E480];
    *(v15 + 440) = xmmword_1C2BFA3A0;
    Mutable = CFBitVectorCreateMutable(v16, 0x2000);
    *(a1 + 4552) = Mutable;
    CFBitVectorSetCount(Mutable, 0x2000);
    if (!*(a1 + 4552))
    {
      v102 = __si_assert_copy_extra_2708(0);
      v103 = v102;
      v104 = "";
      if (v102)
      {
        v104 = v102;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 47, "bv->_cfbv", v104);
      free(v103);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  v113 = v15;
  v18 = 0;
  if (a5)
  {
    v19 = 0;
  }

  else
  {
    v19 = 514;
  }

  if (a6)
  {
    if ((a5 & 1) == 0)
    {
      v108 = __si_assert_copy_extra_2708(0);
      v109 = v108;
      v110 = "";
      if (v108)
      {
        v110 = v108;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 341, "0", v110);
      free(v109);
      if (__valid_fs(-1))
      {
        v111 = 2989;
      }

      else
      {
        v111 = 3072;
      }

      *v111 = -559038737;
      abort();
    }

    v18 = a4 == 0;
  }

  v114 = *(a1 + 148);
  if (v114)
  {
    v20 = "indexDirectory";
    if (v18)
    {
      v20 = "shadowIndexDirectory";
    }

    snprintf(__str, 0x400uLL, "%s%s", a3, v20);
    v21 = fd_create_protected(a2, __str, v19, 0);
    *(a1 + 4576) = v21;
    if (v21 || (a5 & 1) != 0)
    {
LABEL_18:
      if (v21)
      {
        goto LABEL_19;
      }

LABEL_45:
      v36 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v45 = *__error();
        *buf = 136315906;
        v117 = "bt_openTrie";
        v118 = 1024;
        v119 = 410;
        v120 = 2080;
        *v121 = __str;
        *&v121[8] = 1024;
        *&v121[10] = v45;
        v40 = "%s:%d: open %s err: %d";
        goto LABEL_93;
      }

      goto LABEL_95;
    }

    if (*__error() == 13)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v117 = "bt_openTrie";
        v118 = 1024;
        v119 = 403;
        v120 = 2080;
        *v121 = __str;
        _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: open rdwr error tyring readonly %s", buf, 0x1Cu);
      }

      *__error() = v22;
      v21 = fd_create_protected(a2, __str, 0, 0);
      v19 = 0;
      *(a1 + 4576) = v21;
      a5 = 1;
      goto LABEL_18;
    }

    a5 = 0;
    v21 = *(a1 + 4576);
    if (!v21)
    {
      goto LABEL_45;
    }

LABEL_19:
    while (1)
    {
      v24 = fstatat(*(v21 + 11), v21[9], &v115, 2048);
      v25 = g_prot_error_callback;
      if (v24 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v27 = *(v21 + 10);
      v28 = __error();
      if (((*(v25 + 16))(v25, v27, *v28, 8) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (v24 == -1)
    {
LABEL_42:
      v36 = *__error();
      v43 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *__error();
        *buf = 136315906;
        v117 = "bt_openTrie";
        v118 = 1024;
        v119 = 415;
        v120 = 1024;
        *v121 = v44;
        *&v121[4] = 2080;
        *&v121[6] = __str;
        v40 = "%s:%d: fstat err:%d %s";
LABEL_93:
        v41 = v43;
        v42 = 34;
        goto LABEL_94;
      }

LABEL_95:
      v55 = 0;
LABEL_96:
      v60 = 0;
LABEL_97:
      *__error() = v36;
      goto LABEL_98;
    }

    v35 = 1028 * *(a1 + 148);
    if (v115.st_size > v35 || v115.st_size < 1028 * *(a1 + 144))
    {
      v36 = *__error();
      v37 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      v38 = *(a1 + 148);
      v39 = 1028 * *(a1 + 144);
      *buf = 136316418;
      v117 = "bt_openTrie";
      v118 = 1024;
      v119 = 423;
      v120 = 1024;
      *v121 = v115.st_size;
      *&v121[4] = 1024;
      *&v121[6] = v39;
      *&v121[10] = 1024;
      *&v121[12] = 1028 * v38;
      *&v121[16] = 2080;
      *&v121[18] = __str;
      v40 = "%s:%d: FAT: bad file size:%d (expected %d - %d) %s";
      v41 = v37;
      v42 = 46;
LABEL_94:
      _os_log_error_impl(&dword_1C278D000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
      goto LABEL_95;
    }

    if ((a5 & 1) != 0 || fd_truncate(*(a1 + 4576), v35) != -1)
    {
      if (!*(a1 + 8))
      {
        if (a5)
        {
          v84 = 1;
        }

        else
        {
          v84 = 3;
        }

        v85 = fd_mmap(*(a1 + 4576), 1028 * *(a1 + 148), v84, 1, 0);
        *(a1 + 8) = v85;
        if (v85 == -1)
        {
          v36 = *__error();
          v43 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_95;
          }

          v89 = *__error();
          v90 = 1028 * *(a1 + 148);
          *buf = 136315906;
          v117 = "bt_openTrie";
          v118 = 1024;
          v119 = 436;
          v120 = 1024;
          *v121 = v89;
          *&v121[4] = 2048;
          *&v121[6] = v90;
          v40 = "%s:%d: fd_mmap err: %d, %ld";
          goto LABEL_93;
        }

        if (a5)
        {
          madvise(v85, 1028 * *(a1 + 148), 2);
          a5 = 1;
        }
      }

      goto LABEL_72;
    }

    v36 = *__error();
    v49 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_95;
    }

    v86 = *__error();
    *buf = 136315650;
    v117 = "bt_openTrie";
    v118 = 1024;
    v119 = 429;
    v120 = 1024;
    *v121 = v86;
    v40 = "%s:%d: ftruncate err: %d";
LABEL_64:
    v41 = v49;
    v42 = 24;
    goto LABEL_94;
  }

  *a1 = 11;
  if (a5)
  {
    v29 = 0;
  }

  else
  {
    v29 = 1538;
  }

  *(a1 + 144) = 0x800000001;
  v30 = "indexDirectory";
  if (v18)
  {
    v30 = "shadowIndexDirectory";
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, v30);
  v31 = fd_create_protected(a2, __str, v29, 0);
  *(a1 + 4576) = v31;
  if (!v31 && (a5 & 1) == 0)
  {
    if (*__error() == 13)
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v117 = "bt_openTrie";
        v118 = 1024;
        v119 = 366;
        v120 = 2080;
        *v121 = __str;
        _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: open rdwr error tyring readonly %s", buf, 0x1Cu);
      }

      *__error() = v32;
      v34 = fd_create_protected(a2, __str, 0, 0);
      *(a1 + 4576) = v34;
      if (!v34)
      {
LABEL_52:
        v36 = *__error();
        v43 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v46 = *__error();
          *buf = 136315906;
          v117 = "bt_openTrie";
          v118 = 1024;
          v119 = 373;
          v120 = 2080;
          *v121 = __str;
          *&v121[8] = 1024;
          *&v121[10] = v46;
          v40 = "%s:%d: open %s err: %d";
          goto LABEL_93;
        }

        goto LABEL_95;
      }

LABEL_50:
      v19 = 0;
      a5 = 1;
      if (*(a1 + 8))
      {
        goto LABEL_72;
      }

      goto LABEL_56;
    }

    v31 = *(a1 + 4576);
  }

  if (!v31)
  {
    goto LABEL_52;
  }

  if (a5)
  {
    goto LABEL_50;
  }

  if (fd_truncate(v31, 1028 * *(a1 + 148)) == -1)
  {
    v36 = *__error();
    v49 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_95;
    }

    v50 = *__error();
    *buf = 136315650;
    v117 = "bt_openTrie";
    v118 = 1024;
    v119 = 379;
    v120 = 1024;
    *v121 = v50;
    v40 = "%s:%d: ftruncate err: %d";
    goto LABEL_64;
  }

  a5 = 0;
  v19 = 1538;
  if (*(a1 + 8))
  {
    goto LABEL_72;
  }

LABEL_56:
  if (a5)
  {
    v47 = 1;
  }

  else
  {
    v47 = 3;
  }

  v48 = fd_mmap(*(a1 + 4576), 1028 * *(a1 + 148), v47, 1, 0);
  *(a1 + 8) = v48;
  if (v48 == -1)
  {
    v36 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v51 = *__error();
      v52 = 1028 * *(a1 + 148);
      *buf = 136315906;
      v117 = "bt_openTrie";
      v118 = 1024;
      v119 = 388;
      v120 = 1024;
      *v121 = v51;
      *&v121[4] = 2048;
      *&v121[6] = v52;
      v40 = "%s:%d: fd_mmap err: %d, %ld";
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  if (a5)
  {
    madvise(v48, 1028 * *(a1 + 148), 2);
    a5 = 1;
  }

  else
  {
    bzero(v48, 0x808uLL);
    a5 = 0;
  }

LABEL_72:
  v53 = "indexCompactDirectory";
  if (v18)
  {
    v53 = "shadowIndexCompactDirectory";
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, v53);
  v54 = fd_create_protected(a2, __str, v19, 0);
  v55 = v54;
  if ((a5 & 1) == 0 && !v54)
  {
    if (*__error() != 13)
    {
      goto LABEL_91;
    }

    v56 = *__error();
    v57 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v117 = "bt_openTrie";
      v118 = 1024;
      v119 = 449;
      v120 = 2080;
      *v121 = __str;
      _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, "%s:%d: open rdwr error tyring readonly %s", buf, 0x1Cu);
    }

    *__error() = v56;
    v55 = fd_create_protected(a2, __str, 0, 0);
    v19 = 0;
    a5 = 1;
  }

  if (!v55)
  {
LABEL_91:
    v36 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v66 = *__error();
      *buf = 136315906;
      v117 = "bt_openTrie";
      v118 = 1024;
      v119 = 455;
      v120 = 2080;
      *v121 = __str;
      *&v121[8] = 1024;
      *&v121[10] = v66;
      v40 = "%s:%d: open %s err: %d";
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  v58 = "indexArrays";
  if (v18)
  {
    v58 = "shadowIndexArrays";
  }

  snprintf(__str, 0x400uLL, "%s%s", a3, v58);
  v59 = fd_create_protected(a2, __str, v19, 0);
  if (!v59)
  {
    v36 = *__error();
    v69 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = *__error();
      *buf = 136315906;
      v117 = "bt_openTrie";
      v118 = 1024;
      v119 = 465;
      v120 = 2080;
      *v121 = __str;
      *&v121[8] = 1024;
      *&v121[10] = v70;
      _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: open %s err: %d", buf, 0x22u);
    }

    goto LABEL_96;
  }

  v60 = v59;
  if (v114)
  {
    while (1)
    {
      v61 = fstatat(*(v55 + 11), v55[9], &v115, 2048);
      v62 = g_prot_error_callback;
      if (v61 != -1 || g_prot_error_callback == 0)
      {
        break;
      }

      v64 = *(v55 + 10);
      v65 = __error();
      if (((*(v62 + 16))(v62, v64, *v65, 8) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    if (v61 == -1)
    {
LABEL_122:
      v36 = *__error();
      v81 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_97;
      }

      v82 = *__error();
      v83 = "indexCompactDirectory";
      if (v18)
      {
        v83 = "shadowIndexCompactDirectory";
      }

      *buf = 136316162;
      v117 = "bt_openTrie";
      v118 = 1024;
      v119 = 475;
      v120 = 1024;
      *v121 = v82;
      *&v121[4] = 2080;
      *&v121[6] = a3;
      *&v121[14] = 2080;
      *&v121[16] = v83;
      v78 = "%s:%d: fstat err:%d %s%s";
    }

    else
    {
      if (v115.st_size > *(a1 + 40) || (v74 = *(a1 + 32), v115.st_size < v74) && v74 >= 9)
      {
        v36 = *__error();
        v75 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_97;
        }

        v76 = *(a1 + 32);
        v77 = *(a1 + 40);
        *buf = 136316674;
        v117 = "bt_openTrie";
        v118 = 1024;
        v119 = 479;
        v120 = 1024;
        *v121 = v115.st_size;
        *&v121[4] = 1024;
        *&v121[6] = v76;
        *&v121[10] = 1024;
        *&v121[12] = v77;
        *&v121[16] = 2080;
        *&v121[18] = a3;
        *&v121[26] = 2080;
        *v122 = "indexCompactDirectory";
        v78 = "%s:%d: COMP: bad file size:%d (expected %d - %d) %s%s";
        v79 = v75;
        v80 = 56;
        goto LABEL_127;
      }

      if (fd_stat(v60, &v115) != -1)
      {
        v91 = *(a1 + 384);
        if (v115.st_size > v91 && !((v115.st_size - v91) >> 17))
        {
          v92 = *__error();
          v93 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            v106 = *(a1 + 384);
            v105 = *(a1 + 392);
            v107 = "indexArrays";
            if (v18)
            {
              v107 = "shadowIndexArrays";
            }

            *buf = 136316674;
            v117 = "bt_openTrie";
            v118 = 1024;
            v119 = 490;
            v120 = 2048;
            *v121 = v115.st_size;
            *&v121[8] = 2048;
            *&v121[10] = v105;
            *&v121[18] = 2048;
            *&v121[20] = v106;
            *v122 = 2080;
            *&v122[2] = a3;
            v123 = 2080;
            v124 = v107;
            _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, "%s:%d: FLAT: file size:%lld (expected %lld - %lld) %s%s", buf, 0x44u);
          }

          *__error() = v92;
          goto LABEL_147;
        }

        if (v115.st_size <= v91)
        {
          v96 = *(a1 + 392);
          if (v115.st_size >= v96 || v96 < 65)
          {
LABEL_147:
            if (a5)
            {
              v71 = 2;
            }

            else
            {
              v71 = 0;
            }

            *(a1 + 112) = v55;
            goto LABEL_107;
          }
        }

        v36 = *__error();
        v97 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_97;
        }

        v99 = *(a1 + 384);
        v98 = *(a1 + 392);
        v100 = "indexArrays";
        if (v18)
        {
          v100 = "shadowIndexArrays";
        }

        *buf = 136316674;
        v117 = "bt_openTrie";
        v118 = 1024;
        v119 = 492;
        v120 = 2048;
        *v121 = v115.st_size;
        *&v121[8] = 2048;
        *&v121[10] = v98;
        *&v121[18] = 2048;
        *&v121[20] = v99;
        *v122 = 2080;
        *&v122[2] = a3;
        v123 = 2080;
        v124 = v100;
        v78 = "%s:%d: FLAT: bad file size:%lld (expected %lld - %lld) %s%s";
        v79 = v97;
        v80 = 68;
LABEL_127:
        _os_log_error_impl(&dword_1C278D000, v79, OS_LOG_TYPE_ERROR, v78, buf, v80);
        goto LABEL_97;
      }

      v36 = *__error();
      v81 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_97;
      }

      v94 = *__error();
      v95 = "indexArrays";
      if (v18)
      {
        v95 = "shadowIndexArrays";
      }

      *buf = 136316162;
      v117 = "bt_openTrie";
      v118 = 1024;
      v119 = 484;
      v120 = 1024;
      *v121 = v94;
      *&v121[4] = 2080;
      *&v121[6] = a3;
      *&v121[14] = 2080;
      *&v121[16] = v95;
      v78 = "%s:%d: fstat err:%d %s%s";
    }

    v79 = v81;
    v80 = 44;
    goto LABEL_127;
  }

  *(v113 + 492) = 1;
  if (a5)
  {
    v71 = 2;
  }

  else
  {
    v71 = 0;
  }

  *(a1 + 112) = v55;
  *(a1 + 24) = 38;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 32) = xmmword_1C2BFA3B0;
  *(a1 + 48) = 0u;
LABEL_107:
  *(a1 + 120) = v71;
  *(a1 + 124) = 0;
  if ((*(a1 + 16) + 1) <= 1)
  {
    if (a5)
    {
      v72 = 1;
    }

    else
    {
      v72 = 3;
    }

    v73 = fd_mmap(v55, *(a1 + 40), v72, 1, 0);
    *(a1 + 16) = v73;
    madvise(v73, *(a1 + 40), *(a1 + 120));
  }

  if ((a5 & 1) == 0 && fd_truncate(*(a1 + 112), *(a1 + 40)) == -1)
  {
    v87 = *__error();
    v88 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      v101 = *__error();
      *buf = 136315650;
      v117 = "initMF";
      v118 = 1024;
      v119 = 151;
      v120 = 1024;
      *v121 = v101;
      _os_log_error_impl(&dword_1C278D000, v88, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate err: %d", buf, 0x18u);
    }

    v55 = 0;
    *__error() = v87;
  }

  else
  {
    if (storageInit(a1 + 160, 0x10000, 0x40uLL, v60, v114 == 0, 2, a5, a7, a8))
    {
      return 1;
    }

    v55 = 0;
    v60 = 0;
  }

LABEL_98:
  fd_release(v55);
  fd_release(v60);
  v67 = *(a1 + 8);
  if (v67 + 1 >= 2)
  {
    munmap(v67, 1028 * *(a1 + 148));
  }

  result = 0;
  *(a1 + 8) = 0;
  return result;
}

char *__si_assert_copy_extra_2708(_DWORD *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x400uLL);
  if (!a1 || (v11 = 0, v2 = _fd_acquire_fd(a1, &v11), v2 == -1) || (v3 = v12, v4 = v2, v5 = fcntl(v2, 50, v12), v6 = v12[0], _fd_release_fd(a1, v4, 0, v11), v5 < 0) || !v6)
  {
    v7 = getcwd(v12, 0x400uLL);
    if (v7)
    {
      v3 = v7;
    }

    else
    {
      v3 = "";
    }
  }

  v11 = 0;
  v8 = pthread_getspecific(__THREAD_STR_DATA_KEY[0]);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = "";
  }

  asprintf(&v11, "%s %s", v3, v9);
  return v11;
}

uint64_t bt_recoverTrie(uint64_t a1, const char *a2, _DWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x400uLL);
  bzero(v11, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a2, "indexDirectory");
  snprintf(v11, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
  memset(&v13, 0, sizeof(v13));
  if ((fstatat(a1, __str, &v13, 0) || v13.st_mode != 256) && (copyFileFallback(a1, v11, a1, __str, a3, 1, 1) & 1) == 0)
  {
    if (!*a3)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13.st_dev = 136315650;
        *&v13.st_mode = "bt_recoverTrie";
        WORD2(v13.st_ino) = 1024;
        *(&v13.st_ino + 6) = 531;
        HIWORD(v13.st_uid) = 2080;
        *&v13.st_gid = __str;
        goto LABEL_23;
      }

LABEL_20:
      v10 = __error();
      result = 0;
      *v10 = v8;
      return result;
    }

    return 0;
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, "indexCompactDirectory");
  snprintf(v11, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
  memset(&v13, 0, sizeof(v13));
  if ((fstatat(a1, __str, &v13, 0) || v13.st_mode != 256) && (copyFileFallback(a1, v11, a1, __str, a3, 1, 1) & 1) == 0)
  {
    if (!*a3)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13.st_dev = 136315650;
        *&v13.st_mode = "bt_recoverTrie";
        WORD2(v13.st_ino) = 1024;
        *(&v13.st_ino + 6) = 537;
        HIWORD(v13.st_uid) = 2080;
        *&v13.st_gid = __str;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    return 0;
  }

  snprintf(__str, 0x400uLL, "%s%s", a2, "indexArrays");
  snprintf(v11, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
  memset(&v13, 0, sizeof(v13));
  if (!fstatat(a1, __str, &v13, 0) && v13.st_mode == 256)
  {
    return 1;
  }

  v7 = copyFileFallback(a1, v11, a1, __str, a3, 1, 1);
  result = 1;
  if ((v7 & 1) == 0)
  {
    if (!*a3)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13.st_dev = 136315650;
        *&v13.st_mode = "bt_recoverTrie";
        WORD2(v13.st_ino) = 1024;
        *(&v13.st_ino + 6) = 543;
        HIWORD(v13.st_uid) = 2080;
        *&v13.st_gid = __str;
LABEL_23:
        _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: Could not recover %s", &v13, 0x1Cu);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    return 0;
  }

  return result;
}

uint64_t bt_syncTrie(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 4576))
  {
    v3 = *(a1 + 8);
    v4 = 1028 * (*(a1 + 144) + 1);
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    msync(v3, v4, 16);
    v5 = *(a1 + 4576);
    if (_gSystemStatusBool == 1)
    {
      pthread_mutex_lock(&_gSystemStatusLock);
      if (_gSystemStatusBool == 1)
      {
        do
        {
          pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
        }

        while ((_gSystemStatusBool & 1) != 0);
      }

      pthread_mutex_unlock(&_gSystemStatusLock);
    }

    *v22 = 0;
    v6 = _fd_acquire_fd(v5, v22);
    if (v6 != -1)
    {
      v7 = v6;
      prot_fsync(v6, 0);
      _fd_release_fd(v5, v7, 0, *v22);
    }
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  msync(v8, v9, 16);
  v10 = *(a1 + 112);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  *v22 = 0;
  v11 = _fd_acquire_fd(v10, v22);
  if (v11 != -1)
  {
    v12 = v11;
    prot_fsync(v11, 0);
    _fd_release_fd(v10, v12, 0, *v22);
  }

  result = storageSyncPages(a1 + 160, a1 + 4536, 0x20000uLL);
  if (!result)
  {
    v14 = result;
    v15 = *(a1 + 376);
    if (v15)
    {
      if (_gSystemStatusBool == 1)
      {
        pthread_mutex_lock(&_gSystemStatusLock);
        if (_gSystemStatusBool == 1)
        {
          do
          {
            pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
          }

          while ((_gSystemStatusBool & 1) != 0);
        }

        pthread_mutex_unlock(&_gSystemStatusLock);
      }

      *v22 = 0;
      v16 = _fd_acquire_fd(v15, v22);
      if (v16 != -1)
      {
        v17 = v16;
        prot_fsync(v16, 0);
        _fd_release_fd(v15, v17, 0, *v22);
      }
    }

    v18 = *__error();
    v19 = _SILogForLogForCategory(10);
    v20 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = CFAbsoluteTimeGetCurrent() - Current;
      *v22 = 134217984;
      *&v22[4] = v21;
      _os_log_impl(&dword_1C278D000, v19, v20, "syncTrie took %f seconds", v22, 0xCu);
    }

    *__error() = v18;
    return v14;
  }

  return result;
}

uint64_t bt_freeTrie(uint64_t a1)
{
  fd_release(*(a1 + 4576));
  *(a1 + 4576) = 0;
  v2 = *(a1 + 8);
  if (v2 + 1 >= 2)
  {
    munmap(v2, 1028 * *(a1 + 148));
    *(a1 + 8) = 0;
  }

  closeMF(a1 + 16);
  storageClose(a1 + 160);
  v3 = *(a1 + 4552);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 4552) = 0;
  }

  *(a1 + 4536) = 0u;

  return db_rwlock_destroy((a1 + 4600));
}

uint64_t insertFromBurst(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v143 = a7;
  if (!a3)
  {
    return a7;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  if (!HIDWORD(a7))
  {
    if (a7 << 6 < a1[49])
    {
      if (appendStringFlat(a1, a2, a7, a4, a3, a5, a6, &v143))
      {
        if (!*(a2 + 4))
        {
          v143 = burst2(a1, a2, v143);
          if (!*(a2 + 4))
          {
            v43 = *__error();
            v44 = _SILogForLogForCategory(10);
            v45 = 2 * (dword_1EBF46AF4 < 4);
            if (os_log_type_enabled(v44, v45))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v44, v45, "Re-burst!", buf, 2u);
            }

            *__error() = v43;
            return insertFromBurst(a1, a2, a3, a4, a5, a6, v143);
          }
        }
      }

      return v143;
    }

    v121 = __si_assert_copy_extra_2708(0);
    v122 = v121;
    v123 = "";
    if (v121)
    {
      v123 = v121;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 939, "flatStoreGetOffset(ptr) < storageGetCount(&t->flatStore)", v123);
    goto LABEL_164;
  }

  if (HIDWORD(a7) != 1)
  {
    if (HIDWORD(a7) != 3)
    {
      v134 = __si_assert_copy_extra_2708(0);
      v135 = v134;
      if (v134)
      {
        v136 = v134;
      }

      else
      {
        v136 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 951, v136);
      free(v135);
      goto LABEL_165;
    }

    if (a4)
    {
      v144 = 0;
      v13 = a7;
      v14 = *(a1[1] + 1028 * a7 + 4 * *a3 + 4);
      LODWORD(v15) = v14 >> 1;
      v16 = v14 >> 3;
      v17 = (v14 & 7) << 32;
      if ((v14 & 3) == 1)
      {
        v17 = 0x100000000;
        v16 = v14 >> 2;
      }

      v18 = (v14 & 1) == 0;
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v15 = v15;
      }

      else
      {
        v15 = v16;
      }

      if (v15)
      {
        v20 = insertFromBurst(a1, a2, a3 + 1, (a4 - 1), a5, a6, v19 | v15);
        v144 = v20;
        v21 = a1[1] + 1028 * v13 + 4 * *a3;
        v24 = *(v21 + 4);
        v22 = (v21 + 4);
        v23 = v24;
        v25 = HIDWORD(v20);
        v26 = v24 >> 1;
        v27 = v24 >> 3;
        v28 = v24 & 7;
        v29 = v24 >> 2;
        if ((v24 & 3) == 1)
        {
          v28 = 1;
          v27 = v29;
        }

        v30 = (v23 & 1) == 0;
        if (v23)
        {
          v31 = v28;
        }

        else
        {
          v31 = 0;
        }

        if (!v30)
        {
          v26 = v27;
        }

        if (v26 == v20 && v31 == HIDWORD(v20))
        {
          return v143;
        }

        v33 = (4 * v20) | 1;
        if (v25 != 1)
        {
          v33 = HIDWORD(v20) | (8 * v20);
        }

        if (v25)
        {
          v34 = v33;
        }

        else
        {
          v34 = 2 * v20;
        }

        if ((v34 & 3) == 1)
        {
          v35 = 2;
        }

        else
        {
          v35 = 3;
        }

        if ((v34 & 1) == 0)
        {
          v35 = 1;
        }

        if (v34 >> v35 == v20)
        {
          *v22 = v34;
          return v143;
        }

        v132 = __si_assert_copy_extra_2708(0);
        v122 = v132;
        v133 = "";
        if (v132)
        {
          v133 = v132;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v133);
LABEL_164:
        free(v122);
        if (!__valid_fs(-1))
        {
          v124 = 3072;
LABEL_167:
          *v124 = -559038737;
          abort();
        }

LABEL_165:
        v124 = 2989;
        goto LABEL_167;
      }

      if (*a2)
      {
        v61 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
        *(a2 + 2148) = v61;
        v144 = v61;
        if (v61)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v61 = trieNewFlatStoreBlock(a1, a4 - 1);
        v144 = v61;
        if (v61)
        {
LABEL_68:
          appendStringFlat(a1, a2, v61, a4 - 1, a3 + 1, a5, a6, &v144);
          if (!*(a2 + 4))
          {
            goto LABEL_126;
          }

          goto LABEL_146;
        }
      }

      v101 = __error();
      v102 = *v101;
      *(a2 + 4) = *v101;
      if (!v102)
      {
LABEL_126:
        v103 = a1[1] + 1028 * v13 + 4 * *a3;
        *(v103 + 4) = ptrD(v144);
        return v143;
      }

LABEL_146:
      LODWORD(v144) = 0;
      return v144;
    }

    v51 = a7;
    v52 = (a1[1] + 1028 * a7);
    if (!*v52)
    {
      if (*a2 != 1)
      {
        *v52 = a5;
        return a7;
      }

      v54 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
      *(a2 + 2148) = v54;
      if (v54)
      {
        *buf = 0u;
        v141 = a5;
        v142 = a6;
        v55 = storageResolvePtr((a1 + 20), v54 << 6, 8, 1);
        v56 = storageResolvePtr((a1 + 20), v54 << 6, 64 << *(v55 + 2), 1);
        *(a2 + 1084) = 0u;
        *v56 = FlatStorePageEntryWrite2(v56, buf, (a2 + 1084));
        *(a1[1] + 1028 * v51) = 0;
        if ((v54 & 0x80000000) == 0)
        {
          *(a1[1] + 1028 * v51) = 2 * v54;
          *(a2 + 36) = 0;
          *(a2 + 24) = 0;
          return a7;
        }

        goto LABEL_174;
      }

      goto LABEL_108;
    }

    v128 = __si_assert_copy_extra_2708(0);
    v126 = v128;
    v129 = "";
    if (v128)
    {
      v129 = v128;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 725, "getNum(t->baseFat[s].termInfo.termId.ptr)==0", v129);
    goto LABEL_177;
  }

  v36 = a7;
  v37 = mgetBase(a1, a7);
  if (!a4)
  {
    if (!*v37)
    {
      if (*a2 != 1)
      {
        *v37 = a5;
        return a7;
      }

      v46 = v37;
      v47 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
      *(a2 + 2148) = v47;
      if (v47)
      {
        *buf = 0u;
        v141 = a5;
        v142 = a6;
        v48 = storageResolvePtr((a1 + 20), v47 << 6, 8, 1);
        v49 = storageResolvePtr((a1 + 20), v47 << 6, 64 << *(v48 + 2), 1);
        *(a2 + 1084) = 0u;
        *v49 = FlatStorePageEntryWrite2(v49, buf, (a2 + 1084));
        *v46 = 0;
        if ((v47 & 0x80000000) == 0)
        {
          *v46 = 2 * v47;
          *(a2 + 36) = 0;
          *(a2 + 24) = 0;
          return a7;
        }

LABEL_174:
        v130 = __si_assert_copy_extra_2708(0);
        v126 = v130;
        v131 = "";
        if (v130)
        {
          v131 = v130;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v131);
        goto LABEL_177;
      }

LABEL_108:
      *(a2 + 4) = *__error();
      return 0;
    }

    v125 = __si_assert_copy_extra_2708(0);
    v126 = v125;
    v127 = "";
    if (v125)
    {
      v127 = v125;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 785, "getNum(b->termInfo.termId.ptr)==0", v127);
LABEL_177:
    free(v126);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v38 = *a3;
  v39 = (v37 + 4);
  if ((*(v37 + 4 + ((v38 >> 3) & 0x1C)) >> v38))
  {
    v40 = 0;
    v41 = v38 >> 6;
    if ((v38 >> 6) > 1)
    {
      if (v41 != 2)
      {
        v62 = vcnt_s8(*(v37 + 20));
        v62.i16[0] = vaddlv_u8(v62);
        v40 = v62.u32[0];
      }

      v63 = vcnt_s8(*(v37 + 12));
      v63.i16[0] = vaddlv_u8(v63);
      v40 += v63.u32[0];
    }

    else
    {
      v42 = v38 >> 6;
      if (!v41)
      {
LABEL_74:
        v65 = vcnt_s8((*&v39[v41] & ~(-1 << v38)));
        v65.i16[0] = vaddlv_u8(v65);
        v66 = v65.u32[0] + v42;
        v67 = *(v37 + 4 * v66 + 38);
        LODWORD(v68) = v67 >> 1;
        v69 = v67 >> 3;
        v70 = (v67 & 7) << 32;
        if ((v67 & 3) == 1)
        {
          v70 = 0x100000000;
          v69 = v67 >> 2;
        }

        v71 = (v67 & 1) == 0;
        if (v67)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0;
        }

        if (v71)
        {
          v68 = v68;
        }

        else
        {
          v68 = v69;
        }

        v73 = insertFromBurst(a1, a2, a3 + 1, (a4 - 1), a5, a6, v72 | v68);
        if (!v73)
        {
          return v143;
        }

        v74 = mgetBase(a1, v36) + 38;
        v75 = *(v74 + 4 * v66);
        v76 = v75 >> 1;
        v77 = v75 >> 3;
        v78 = (v75 & 7) << 32;
        if ((v75 & 3) == 1)
        {
          v78 = 0x100000000;
          v77 = v75 >> 2;
        }

        v79 = (v75 & 1) == 0;
        if (v75)
        {
          v80 = v78;
        }

        else
        {
          v80 = 0;
        }

        if (!v79)
        {
          v76 = v77;
        }

        v81 = (v80 ^ v73) >> 32;
        if (v76 == v73 && v81 == 0)
        {
          return v143;
        }

        v83 = HIDWORD(v73) | (8 * v73);
        if (HIDWORD(v73) == 1)
        {
          v83 = (4 * v73) | 1;
        }

        if (HIDWORD(v73))
        {
          v84 = v83;
        }

        else
        {
          v84 = 2 * v73;
        }

        if ((v84 & 3) == 1)
        {
          v85 = 2;
        }

        else
        {
          v85 = 3;
        }

        if ((v84 & 1) == 0)
        {
          v85 = 1;
        }

        if (v84 >> v85 == v73)
        {
          *(v74 + 4 * v66) = v84;
          return v143;
        }

        goto LABEL_174;
      }
    }

    v64 = vcnt_s8(*v39);
    v64.i16[0] = vaddlv_u8(v64);
    v42 = v64.u32[0] + v40;
    goto LABEL_74;
  }

  v57 = *(v37 + 36);
  HIDWORD(v59) = v57 - 4;
  LODWORD(v59) = v57 - 4;
  v58 = v59 >> 2;
  if (v58 <= 2)
  {
    if (v58)
    {
      if (v58 != 1)
      {
        goto LABEL_137;
      }

      v60 = 16;
    }

    else
    {
      v60 = 8;
    }

LABEL_129:
    v138 = v60;
    v104 = (4 * v60 + 41) & 0x1E8;
    v105 = mmalloc(v104, (a1 + 2), *(a2 + 2160), *(a2 + 2168));
    if (v105)
    {
      v106 = v105;
      v137 = v57;
      v107 = v105 >> 2;
      v108 = mgetBase(a1, v105 >> 2);
      *v108 = 0u;
      *(v108 + 16) = 0u;
      if (v104 != 40)
      {
        *(v108 + 32) = 0uLL;
        *(v108 + 48) = 0uLL;
        if (v104 != 72)
        {
          *(v108 + 64) = 0uLL;
          *(v108 + 80) = 0uLL;
          if (v104 != 104)
          {
            *(v108 + 96) = 0uLL;
            *(v108 + 112) = 0uLL;
            if (v104 != 136)
            {
              *(v108 + 128) = 0uLL;
              *(v108 + 144) = 0uLL;
            }
          }
        }
      }

      *(v108 + v104 - 8) = 0;
      *(v108 + 37) = v138;
      LODWORD(v143) = v107;
      if (v107)
      {
        v109 = mgetBase(a1, (v106 >> 2));
        v110 = mgetBase(a1, v36);
        memcpy(v109, v110, 4 * v137 + 38);
        v109[37] = v138;
        mfree(4 * (a7 & 0x3FFFFFFF), (4 * v137 + 41) & 0x7FC, a1 + 2);
        v37 = v109;
        LODWORD(v38) = *a3;
LABEL_137:
        v111 = v37;
        v112 = set_follows(v37, v38);
        if (*a2)
        {
          v113 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
          *(a2 + 2148) = v113;
        }

        else
        {
          v113 = trieNewFlatStoreBlock(a1, a4 - 1);
        }

        v144 = v113;
        if (v113)
        {
          appendStringFlat(a1, a2, v113, a4 - 1, a3 + 1, a5, a6, &v144);
          v114 = *(a2 + 4);
        }

        else
        {
          v115 = __error();
          v114 = *v115;
          *(a2 + 4) = *v115;
        }

        if (!v114)
        {
          *(v111 + 4 * v112 + 38) = ptrD(v144);
          return v143;
        }

        goto LABEL_146;
      }
    }

    else
    {
      LODWORD(v143) = 0;
    }

    goto LABEL_140;
  }

  if (v58 == 3)
  {
    v60 = 32;
    goto LABEL_129;
  }

  if (v58 != 7)
  {
    goto LABEL_137;
  }

  v86 = v37;
  v87 = newbaseFat(a1, *(a2 + 2160), *(a2 + 2168));
  v143 = v87 | 0x300000000;
  if (!v87)
  {
LABEL_140:
    *(a2 + 4) = *__error();
    return v143;
  }

  v88 = 0;
  v89 = v86;
  v90 = v86 + 38;
  v91 = v87;
  v92 = 1028 * v87 + 4;
  do
  {
    if (((v39->i32[v88 >> 5] >> v88) & 1) == 0)
    {
      v93 = a1[1];
      *(v93 + v92 + 4 * v88) = 0;
      goto LABEL_114;
    }

    v94 = 0;
    v95 = v88 >> 6;
    if (v88 >> 6 > 1)
    {
      if (v95 != 2)
      {
        v97 = vcnt_s8(*(v89 + 20));
        v97.i16[0] = vaddlv_u8(v97);
        v94 = v97.u32[0];
      }

      v98 = vcnt_s8(*(v89 + 12));
      v98.i16[0] = vaddlv_u8(v98);
      v94 += v98.u32[0];
    }

    else
    {
      v96 = v95;
      if (!v95)
      {
        goto LABEL_123;
      }
    }

    v99 = vcnt_s8(*v39);
    v99.i16[0] = vaddlv_u8(v99);
    v96 = v99.u32[0] + v94;
LABEL_123:
    v100 = vcnt_s8((*&v39[v95] & ~(-1 << v88)));
    v100.i16[0] = vaddlv_u8(v100);
    v93 = a1[1];
    *(v93 + v92 + 4 * v88) = *(v90 + 4 * (v100.u32[0] + v96));
LABEL_114:
    ++v88;
  }

  while (v88 != 256);
  *(v93 + 1028 * v87) = *v89;
  if (*a2)
  {
    v117 = flatStoreNewBlockForCompact((a1 + 20), *(a2 + 2148));
    *(a2 + 2148) = v117;
  }

  else
  {
    v117 = trieNewFlatStoreBlock(a1, a4 - 1);
  }

  *buf = v117;
  if (v117)
  {
    appendStringFlat(a1, a2, v117, a4 - 1, a3 + 1, a5, a6, buf);
    v118 = *(a2 + 4);
  }

  else
  {
    v119 = __error();
    v118 = *v119;
    *(a2 + 4) = *v119;
  }

  if (v118)
  {
    *buf = 0;
    return *buf;
  }

  else
  {
    v120 = a1[1] + 1028 * v91 + 4 * *a3;
    *(v120 + 4) = ptrD(*buf);
    mfree(4 * (a7 & 0x3FFFFFFF), (4 * v57 + 41) & 0x7FC, a1 + 2);
    return v143;
  }
}

uint64_t FlatStorePageEntryWrite2(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v6 = *a2;
  if (*a2 > 0x7F)
  {
    if (v6 >> 14)
    {
      if (v6 >> 21)
      {
        if (v6 >> 28)
        {
          *(a1 + 8) = -16;
          *(a1 + 9) = v6;
          v7 = 5;
        }

        else
        {
          *(a1 + 8) = HIBYTE(v6) | 0xE0;
          *(a1 + 9) = BYTE2(v6);
          *(a1 + 10) = BYTE1(v6);
          *(a1 + 11) = v6;
          v7 = 4;
        }
      }

      else
      {
        *(a1 + 8) = BYTE2(v6) | 0xC0;
        *(a1 + 9) = BYTE1(v6);
        *(a1 + 10) = v6;
        v7 = 3;
      }
    }

    else
    {
      *(a1 + 8) = BYTE1(v6) | 0x80;
      *(a1 + 9) = v6;
      v7 = 2;
    }
  }

  else
  {
    *v5 = v6;
    v7 = 1;
  }

  v8 = a2[1];
  if (v8 <= 0x7F)
  {
    v9 = v7 + 1;
    v5[v7] = v8;
    if (!*a2)
    {
      goto LABEL_26;
    }

LABEL_23:
    v14 = 0;
    do
    {
      *(v9 + a1 + 8 + v14) = *(*(a2 + 1) + v14);
      ++v14;
    }

    while (v14 < *a2);
    v9 += v14;
    goto LABEL_26;
  }

  if (v8 >> 14)
  {
    if (v8 >> 21)
    {
      if (v8 >> 28)
      {
        v13 = &v5[v7];
        *v13 = -16;
        *(v13 + 1) = v8;
        v9 = v7 + 5;
        if (!*a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      v12 = &v5[v7];
      *v12 = HIBYTE(v8) | 0xE0;
      v12[1] = BYTE2(v8);
      v12[2] = BYTE1(v8);
      v9 = v7 + 4;
      v12[3] = v8;
      if (*a2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = &v5[v7];
      *v11 = BYTE2(v8) | 0xC0;
      v11[1] = BYTE1(v8);
      v9 = v7 + 3;
      v11[2] = v8;
      if (*a2)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v10 = &v5[v7];
    *v10 = BYTE1(v8) | 0x80;
    v9 = v7 + 2;
    v10[1] = v8;
    if (*a2)
    {
      goto LABEL_23;
    }
  }

LABEL_26:
  v15 = *(a2 + 2);
  v16 = *a3;
  *a3 = v15;
  v17 = ldb_writeSmallVInt64(a1 + 8, v9, v15 - v16);
  v18 = *(a2 + 3);
  if (v18)
  {
    v19 = a3[1];
    a3[1] = v18;
    v20 = v18 - v19;
  }

  else
  {
    v20 = 0;
  }

  return ldb_writeSmallVInt64(v5, v17, v20);
}

uint64_t trieNewFlatStoreBlock(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v3 = 64;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < a2 + 23);
  memset(v15, 0, sizeof(v15));
  v5 = storageAllocOffset(a1 + 160, v4, v15, &v14);
  if (v5)
  {
    v6 = v5;
    v7 = storageResolvePtr(a1 + 160, v5, v4, 1);
    *v7 = 0;
    *(v7 + 2) = __clz(__rbit32(v4 >> 6));
    v8 = (v6 >> 6);
  }

  else
  {
    v8 = 0;
  }

  v9 = v14;
  if (v14 >= 1)
  {
    v10 = v15;
    do
    {
      v12 = *v10++;
      v11 = v12;
      bit_vector_set_4242((a1 + 4536), (v12 >> 17));
      if ((v12 >> 17) != (v12 + 8) >> 17)
      {
        bit_vector_set_4242((a1 + 4536), (v11 >> 17) + 1);
      }

      --v9;
    }

    while (v9);
  }

  return v8;
}

uint64_t ptrD(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1) | (8 * a1);
  if (HIDWORD(a1) == 1)
  {
    v2 = (4 * a1) | 1;
  }

  if (HIDWORD(a1))
  {
    result = v2;
  }

  else
  {
    result = (2 * a1);
  }

  if ((result & 3) == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if ((result & 1) == 0)
  {
    v4 = 1;
  }

  if (result >> v4 != v1)
  {
    v5 = __si_assert_copy_extra_2708(0);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

uint64_t newbaseFat(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = *(a1 + 148);
  result = (*(a1 + 144) + 1);
  if (result >= v7)
  {
    v15[5] = v3;
    v15[6] = v4;
    v9 = result;
    v15[0] = 0;
    v10 = a1;
    v11 = expandUnsafeMapNew((a1 + 8), *(a1 + 4576), v7, 0x404uLL, v15, a2, a3);
    if (v11)
    {
      v12 = v11;
      v13 = __error();
      result = 0;
      *v13 = v12;
    }

    else
    {
      v14 = v15[0];
      *(v10 + 144) = v9;
      *(v10 + 148) = v14;
      return v9;
    }
  }

  else
  {
    *(a1 + 144) = result;
  }

  return result;
}

unint64_t set_follows(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = *(a1 + 36);
  v4 = (a1 + 4);
  *(a1 + 4 + 4 * (a2 >> 5)) |= 1 << a2;
  v5 = a2 >> 6;
  if (a2 >> 6 > 1)
  {
    if (v5 != 2)
    {
      v7 = vcnt_s8(*(a1 + 20));
      v7.i16[0] = vaddlv_u8(v7);
      v2 = v7.i32[0];
    }

    v8 = vcnt_s8(*(a1 + 12));
    v8.i16[0] = vaddlv_u8(v8);
    v2 += v8.i32[0];
    goto LABEL_7;
  }

  v6 = a2 >> 6;
  if (v5)
  {
LABEL_7:
    v9 = vcnt_s8(*v4);
    v9.i16[0] = vaddlv_u8(v9);
    v6 = v2 + v9.i32[0];
  }

  v10 = vcnt_s8((*&v4[v5] & ~(-1 << a2)));
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v6 + v10.i32[0];
  if (v11 >= v3)
  {
    goto LABEL_16;
  }

  v12 = v3 - v11;
  if (v3 - v11 < 8)
  {
    v13 = v3;
    goto LABEL_15;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFF8;
  v15 = (a1 + 4 * v3 + 22);
  v16 = v12 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v17 = *(v15 - 1);
    *(v15 + 4) = *v15;
    *(v15 - 12) = v17;
    v15 -= 2;
    v16 -= 8;
  }

  while (v16);
  if (v12 != v14)
  {
    v13 = v3 - v14;
    do
    {
LABEL_15:
      *(a1 + 4 * v13 + 38) = *(a1 + 4 * v13 + 34);
      --v13;
    }

    while (v13 > v11);
  }

LABEL_16:
  v18 = v3 + 1;
  *(a1 + 36) = v18;
  if (*(a1 + 37) < v18)
  {
    if ((__native_fs() & 1) == 0)
    {
      v24 = __si_assert_copy_extra_2708(0);
      v25 = v24;
      v26 = "";
      if (v24)
      {
        v26 = v24;
      }

      si_analytics_log_2752("%s:%u: failed assertion '%s' %s %d < %d", "BurstTrie.c", 140, "t->size>=t->count", v26, *(a1 + 37), *(a1 + 36));
      free(v25);
      MEMORY[0xB00] = -559038737;
      abort();
    }

    if (*(a1 + 37) < *(a1 + 36))
    {
      v21 = __si_assert_copy_extra_2708(0);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s %d < %d", "BurstTrie.c", 140, "t->size>=t->count", v23, *(a1 + 37), *(a1 + 36));
      free(v22);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return v11;
}

unint64_t burst2(void *a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 4))
  {
    v3 = 0;
    v4 = a3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = mmalloc(0x38u, (a1 + 2), *(a2 + 2160), *(a2 + 2168));
    if (v8 && (v9 = v8, v10 = mgetBase(a1, v8 >> 2), *(v10 + 16) = 0u, *(v10 + 32) = 0u, *v10 = 0u, *(v10 + 48) = 0, *(v10 + 37) = 4, (v9 & 0x3FFFFFFFCLL) != 0))
    {
      if (HIDWORD(a3))
      {
        v16 = __si_assert_copy_extra_2708(0);
        v17 = v16;
        v18 = "";
        if (v16)
        {
          v18 = v16;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 3420, "oldPtr.kind == FLAT", v18);
        free(v17);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v11 = a2;
      v12 = (a2 + 1084);
      v19 = *v12;
      v13 = burstFlat(a1, v11, a3, (v9 >> 2) | 0x100000000);
      v4 = v13 & 0xFFFFFFFF00000000;
      *v12 = v19;
      v3 = v13;
    }

    else
    {
      v14 = __error();
      v3 = 0;
      *(a2 + 4) = *v14;
      v4 = 0x100000000;
    }
  }

  return v4 | v3;
}

void si_analytics_log_2752(char *a1, ...)
{
  va_start(va, a1);
  v6 = *MEMORY[0x1E69E9840];
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, a1, va);
  SISetCrashCStr(string[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *keys = 136315138;
    *&keys[4] = string[0];
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s", keys, 0xCu);
  }

  *keys = "crash_string";
  v1 = xpc_string_create(string[0]);
  values = v1;
  v2 = xpc_dictionary_create(keys, &values, 1uLL);
  analytics_send_event();
  xpc_release(v2);
  xpc_release(v1);
  free(string[0]);
}

uint64_t bt_getOffset(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v5 = *a1 >> 3;
  v6 = *a1 & 7;
  if ((*a1 & 3) == 1)
  {
    v6 = 1;
    v5 = *a1 >> 2;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = v5;
  }

  else
  {
    v8 = *a1 >> 1;
  }

  if (v8)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v13 = 0;
    v14 = a2 - 1;
    while (v7 != 1)
    {
      if (v7 != 3)
      {
        if (v7)
        {
          v38 = __si_assert_copy_extra_2708(0);
          v39 = v38;
          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1003, v40);
          free(v39);
          goto LABEL_52;
        }

LABEL_46:
        v7 = 0;
        *a4 = v13;
        v10 = v8;
        return v10 | (v7 << 32);
      }

      if (v8 > *(a1 + 144))
      {
        v34 = __si_assert_copy_extra_2708(*(a1 + 4576));
        v35 = v34;
        v36 = "";
        if (v34)
        {
          v36 = v34;
        }

        __message_assert("%s:%u: failed assertion '%s' %s s: %d, c: %d", "BurstTrie.c", 966, "ptr.next<=getNum(t->baseFatCount)", v36, v8, *(a1 + 144));
        free(v35);
        if (__valid_fsp(*(a1 + 4576)))
        {
LABEL_52:
          v37 = 2989;
        }

        else
        {
          v37 = 3072;
        }

        *v37 = -559038737;
        abort();
      }

      v17 = *(*(a1 + 8) + 1028 * v8 + 4 * *(a3 + v13) + 4);
      v18 = v17 >> 1;
      v19 = v17 >> 3;
      v20 = v17 & 7;
      if ((v17 & 3) == 1)
      {
        v20 = 1;
        v19 = v17 >> 2;
      }

      v21 = (v17 & 1) == 0;
      if (v17)
      {
        v7 = v20;
      }

      else
      {
        v7 = 0;
      }

      if (v21)
      {
        v8 = v18;
      }

      else
      {
        v8 = v19;
      }

LABEL_18:
      v15 = v13++;
      if (v8)
      {
        v16 = v14 == v15;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_15;
      }
    }

    v22 = mgetBase(a1, v8);
    v23 = *(a3 + v13);
    v24 = (v22 + 4);
    if (((*(v22 + 4 + ((v23 >> 3) & 0x1C)) >> v23) & 1) == 0)
    {
      v10 = 0;
      v7 = 1;
      return v10 | (v7 << 32);
    }

    v25 = 0;
    v26 = v23 >> 6;
    if ((v23 >> 6) > 1)
    {
      if (v26 != 2)
      {
        v28 = vcnt_s8(*(v22 + 20));
        v28.i16[0] = vaddlv_u8(v28);
        v25 = v28.u32[0];
      }

      v29 = vcnt_s8(*(v22 + 12));
      v29.i16[0] = vaddlv_u8(v29);
      v25 += v29.u32[0];
    }

    else
    {
      v27 = v23 >> 6;
      if (!v26)
      {
LABEL_41:
        v31 = vcnt_s8((*&v24[v26] & ~(-1 << v23)));
        v31.i16[0] = vaddlv_u8(v31);
        v32 = *(v22 + 4 * (v31.u32[0] + v27) + 38);
        if (v32)
        {
          if ((*(v22 + 4 * (v31.u32[0] + v27) + 38) & 3) == 1)
          {
            v8 = v32 >> 2;
            v7 = 1;
          }

          else
          {
            v8 = v32 >> 3;
            v7 = v32 & 7;
          }
        }

        else
        {
          v7 = 0;
          v8 = v32 >> 1;
        }

        goto LABEL_18;
      }
    }

    v30 = vcnt_s8(*v24);
    v30.i16[0] = vaddlv_u8(v30);
    v27 = v30.u32[0] + v25;
    goto LABEL_41;
  }

  LODWORD(v13) = 0;
LABEL_15:
  if (!v7)
  {
    goto LABEL_46;
  }

  v10 = 0;
  return v10 | (v7 << 32);
}

uint64_t bt_shadowTrie(uint64_t a1, const char *a2, int a3, _DWORD *a4)
{
  v5 = a3;
  v142 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 4588) & 1) == 0 && !a3)
  {
    return 0;
  }

  *valuePtr = *(a1 + 152);
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v10 = CFSetContainsValue(registeredCloneFds, v9);
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v9);
    if (v10)
    {
      bzero(valuePtr, 0x400uLL);
      bzero(__str, 0x400uLL);
      Current = CFAbsoluteTimeGetCurrent();
      snprintf(valuePtr, 0x400uLL, "%s%s", a2, "indexCompactDirectory");
      snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
      v12 = copyFileFallback(*(a1 + 152), valuePtr, *(a1 + 152), __str, a4, 1, 1);
      v13 = *__error();
      if (v12)
      {
        v14 = _SILogForLogForCategory(10);
        v15 = 2 * (dword_1EBF46AF4 < 4);
        if (os_log_type_enabled(v14, v15))
        {
          v16 = CFAbsoluteTimeGetCurrent() - Current;
          *buf = 134217984;
          *&buf[4] = v16;
          _os_log_impl(&dword_1C278D000, v14, v15, "shadowIndexCompactDirectory took %f seconds", buf, 0xCu);
        }

        *__error() = v13;
        v17 = CFAbsoluteTimeGetCurrent();
        snprintf(valuePtr, 0x400uLL, "%s%s", a2, "indexDirectory");
        snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
        v18 = copyFileFallback(*(a1 + 152), valuePtr, *(a1 + 152), __str, a4, 1, 1);
        v19 = *__error();
        if (v18)
        {
          v20 = _SILogForLogForCategory(10);
          v21 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v20, v21))
          {
            v22 = CFAbsoluteTimeGetCurrent() - v17;
            *buf = 134217984;
            *&buf[4] = v22;
            _os_log_impl(&dword_1C278D000, v20, v21, "shadowIndexDirectory took %f seconds", buf, 0xCu);
          }

          *__error() = v19;
          CFAbsoluteTimeGetCurrent();
          snprintf(valuePtr, 0x400uLL, "%s%s", a2, "indexArrays");
          snprintf(__str, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
          if (copyFileFallback(*(a1 + 152), valuePtr, *(a1 + 152), __str, a4, 1, 1))
          {
            v23 = *(a1 + 4536);
            if (v23 >= 1)
            {
              for (i = 0; i != v23; ++i)
              {
                bit_vector_set_2766((a1 + 4536), i, 0);
              }
            }

LABEL_16:
            result = 0;
            *(a1 + 4588) = 0;
            return result;
          }

          if (*__error() == 1)
          {
            bzero(v104, 0x400uLL);
            CFAbsoluteTimeGetCurrent();
            goto LABEL_61;
          }

          v44 = *__error();
          v45 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "bt_shadowTrie";
            v106 = 1024;
            v107 = 1742;
            v108 = 2080;
            *v109 = valuePtr;
            *&v109[8] = 2080;
            *&v109[10] = __str;
            goto LABEL_69;
          }

LABEL_70:
          *__error() = v44;
          return 0xFFFFFFFFLL;
        }

        if (v19 == 1)
        {
          bzero(v104, 0x400uLL);
          CFAbsoluteTimeGetCurrent();
          goto LABEL_35;
        }

        v44 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        *buf = 136315906;
        *&buf[4] = "bt_shadowTrie";
        v106 = 1024;
        v107 = 1727;
        v108 = 2080;
        *v109 = valuePtr;
        *&v109[8] = 2080;
        *&v109[10] = __str;
LABEL_69:
        _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: copyFile error, src: %s, dst: %s", buf, 0x26u);
        goto LABEL_70;
      }

      if (v13 != 1)
      {
        v44 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        *buf = 136315906;
        *&buf[4] = "bt_shadowTrie";
        v106 = 1024;
        v107 = 1713;
        v108 = 2080;
        *v109 = valuePtr;
        *&v109[8] = 2080;
        *&v109[10] = __str;
        goto LABEL_69;
      }
    }
  }

  else
  {
    pthread_mutex_unlock(&registeredFdsLock);
    CFRelease(v9);
  }

  bzero(v104, 0x400uLL);
  v25 = CFAbsoluteTimeGetCurrent();
  snprintf(v104, 0x400uLL, "%s%s", a2, "shadowIndexCompactDirectory");
  v26 = fd_create_protected(*(a1 + 152), v104, 1538, 0);
  if (!v26)
  {
    v40 = *__error();
    v41 = *__error();
    v42 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315906;
      *&valuePtr[4] = "bt_shadowTrie";
      v136 = 1024;
      v137 = 1767;
      v138 = 1024;
      v139 = v40;
      v140 = 2080;
      v141 = v104;
      goto LABEL_88;
    }

LABEL_40:
    v27 = 0;
    goto LABEL_42;
  }

  v27 = v26;
  *valuePtr = 0;
  v28 = _fd_acquire_fd(v26, valuePtr);
  if (v28 != -1)
  {
    *(v27 + 56) |= 1u;
    v29 = v28;
    fcntl(v28, 48, 1);
    fcntl(v29, 76, *(v27 + 56) & 1);
    _fd_release_fd(v27, v29, 0, *valuePtr);
  }

  if (__THREAD_SLOT_KEY[0])
  {
    v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v30)
    {
LABEL_163:
      makeThreadId();
      v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_25;
    }
  }

  else
  {
    makeThreadId();
    v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v30)
    {
      goto LABEL_163;
    }
  }

  if (v30 >= 0x801)
  {
    goto LABEL_163;
  }

LABEL_25:
  v31 = v30 - 1;
  v32 = CICleanUpPush(v30 - 1, fd_release, v27);
  v33 = fd_pwrite(v27, *(a1 + 16), *(a1 + 32), 0);
  CICleanUpClearItem(v31, v32);
  CICleanUpPop(v31);
  if (v33 == -1)
  {
    v40 = *__error();
    v41 = *__error();
    v43 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *valuePtr = 136315906;
    *&valuePtr[4] = "bt_shadowTrie";
    v136 = 1024;
    v137 = 1780;
    v138 = 1024;
    v139 = v40;
    v140 = 2080;
    v141 = v104;
    goto LABEL_90;
  }

  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  *valuePtr = 0;
  v34 = _fd_acquire_fd(v27, valuePtr);
  if (v34 != -1)
  {
    v35 = v34;
    prot_fsync(v34, 0);
    _fd_release_fd(v27, v35, 0, *valuePtr);
  }

  fd_release(v27);
  v36 = *__error();
  v37 = _SILogForLogForCategory(10);
  v38 = 2 * (dword_1EBF46AF4 < 4);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = CFAbsoluteTimeGetCurrent() - v25;
    *valuePtr = 134217984;
    *&valuePtr[4] = v39;
    _os_log_impl(&dword_1C278D000, v37, v38, "shadowIndexCompactDirectory took %f seconds", valuePtr, 0xCu);
  }

  *__error() = v36;
LABEL_35:
  if (*a4 == 1 || *a4 == -1 && (v5 & 1) != 0)
  {
    return 89;
  }

  v46 = CFAbsoluteTimeGetCurrent();
  snprintf(v104, 0x400uLL, "%s%s", a2, "shadowIndexDirectory");
  v47 = fd_create_protected(*(a1 + 152), v104, 1538, 0);
  if (!v47)
  {
    v40 = *__error();
    v41 = *__error();
    v42 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315906;
      *&valuePtr[4] = "bt_shadowTrie";
      v136 = 1024;
      v137 = 1803;
      v138 = 1024;
      v139 = v40;
      v140 = 2080;
      v141 = v104;
LABEL_88:
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", valuePtr, 0x22u);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v27 = v47;
  *valuePtr = 0;
  v48 = _fd_acquire_fd(v47, valuePtr);
  if (v48 != -1)
  {
    *(v27 + 56) |= 1u;
    v49 = v48;
    fcntl(v48, 48, 1);
    fcntl(v49, 76, *(v27 + 56) & 1);
    _fd_release_fd(v27, v49, 0, *valuePtr);
  }

  if (__THREAD_SLOT_KEY[0])
  {
    v50 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v50)
    {
      goto LABEL_54;
    }
  }

  else
  {
    makeThreadId();
    v50 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (v50)
    {
LABEL_54:
      if (v50 < 0x801)
      {
        goto LABEL_55;
      }
    }
  }

  makeThreadId();
  v50 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
LABEL_55:
  v51 = v50 - 1;
  v52 = CICleanUpPush(v50 - 1, fd_release, v27);
  v53 = fd_pwrite(v27, *(a1 + 8), 1028 * (*(a1 + 144) + 1), 0);
  CICleanUpClearItem(v51, v52);
  CICleanUpPop(v51);
  if (v53 != -1)
  {
    fd_sync(v27, 0);
    fd_release(v27);
    v54 = *__error();
    v55 = _SILogForLogForCategory(10);
    v56 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = CFAbsoluteTimeGetCurrent() - v46;
      *valuePtr = 134217984;
      *&valuePtr[4] = v57;
      _os_log_impl(&dword_1C278D000, v55, v56, "shadowIndexDirectory took %f seconds", valuePtr, 0xCu);
    }

    *__error() = v54;
LABEL_61:
    v134 = 0u;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    *__str = 0u;
    bzero(valuePtr, 0x400uLL);
    v102 = 0;
    v103 = 0;
    v58 = CFAbsoluteTimeGetCurrent();
    snprintf(valuePtr, 0x400uLL, "%s%s", a2, "shadowIndexArrays");
    v59 = fd_create_protected(*(a1 + 152), valuePtr, 514, 0);
    *buf = 0;
    v60 = _fd_acquire_fd(v59, buf);
    if (v60 == -1)
    {
      if (!v59)
      {
        v72 = *__error();
        v73 = *__error();
        v76 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "shadowFlatStore";
          v106 = 1024;
          v107 = 1562;
          v108 = 1024;
          *v109 = v72;
          *&v109[4] = 2080;
          *&v109[6] = valuePtr;
          _os_log_error_impl(&dword_1C278D000, v76, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
        }

        v64 = 0;
        goto LABEL_101;
      }
    }

    else
    {
      *(v59 + 28) |= 1u;
      v61 = v60;
      fcntl(v60, 48, 1);
      fcntl(v61, 76, v59[7] & 1);
      _fd_release_fd(v59, v61, 0, *buf);
    }

    v62 = (*(a1 + 392) + 0x1FFFF) >> 17;
    if ((v5 & 1) == 0 && v62 >= *(a1 + 4536))
    {
      v62 = *(a1 + 4536);
    }

    v63 = malloc_type_malloc(0x20000uLL, 0x3C1CF393uLL);
    if (!v63)
    {
      v96 = __si_assert_copy_extra_2708(0);
      v97 = v96;
      v98 = "";
      if (v96)
      {
        v98 = v96;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1576, "readBuffer", v98);
      free(v97);
      if (__valid_fs(-1))
      {
        v99 = 2989;
      }

      else
      {
        v99 = 3072;
      }

      *v99 = -559038737;
      abort();
    }

    v64 = v63;
    v65 = *(a1 + 392);
    v66 = *(a1 + 376);
    if (v65 >> 17)
    {
      v67 = _fd_acquire_fd(v66, &v102);
      if (v67 != -1)
      {
        v68 = v67;
        v69 = _fd_acquire_fd(v59, &v103);
        if (v69 != -1)
        {
          v101 = v69;
          if (v62 < 1)
          {
LABEL_155:
            _fd_release_fd(*(a1 + 376), v68, 0, v102);
            _fd_release_fd(v59, v101, 0, v103);
            goto LABEL_156;
          }

          __fd = v68;
          v70 = 0;
          if (v5)
          {
            v71 = 0;
            while (v70 != 100)
            {
LABEL_109:
              *&__str[4 * v70++] = v71;
              if (++v71 == v62)
              {
                goto LABEL_140;
              }
            }

            v79 = 0;
            while (*a4 != 1 && *a4 != -1)
            {
              v80 = *&__str[v79];
              if (prot_pread(__fd, v64, 0x20000uLL, v80 << 17) == -1)
              {
                goto LABEL_134;
              }

              if (*a4 == 1 || *a4 == -1)
              {
                break;
              }

              if (prot_pwrite_guarded(v101, &v103, v64, 0x20000uLL, v80 << 17) == -1)
              {
                goto LABEL_137;
              }

              bit_vector_set_2766((a1 + 4536), v80, 0);
              v79 += 4;
              if (v79 == 400)
              {
                v70 = 0;
                v68 = __fd;
                goto LABEL_109;
              }
            }

LABEL_133:
            v72 = 89;
            LODWORD(v68) = __fd;
            v77 = v101;
            goto LABEL_104;
          }

          for (j = 0; j != v62; ++j)
          {
            if (v70 == 100)
            {
              v82 = 0;
              while (*a4 != 1)
              {
                v83 = *&__str[v82];
                if (prot_pread(__fd, v64, 0x20000uLL, v83 << 17) == -1)
                {
LABEL_134:
                  v72 = *__error();
                  v73 = *__error();
                  v84 = _SILogForLogForCategory(0);
                  v77 = v101;
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "shadowFlatStore";
                    v106 = 1024;
                    v107 = 1612;
                    v108 = 1024;
                    *v109 = v72;
                    _os_log_error_impl(&dword_1C278D000, v84, OS_LOG_TYPE_ERROR, "%s:%d: read err: %d", buf, 0x18u);
                  }

                  LODWORD(v68) = __fd;
                  goto LABEL_103;
                }

                if (*a4 == 1)
                {
                  goto LABEL_133;
                }

                if (prot_pwrite_guarded(v101, &v103, v64, 0x20000uLL, v83 << 17) == -1)
                {
LABEL_137:
                  v72 = *__error();
                  v73 = *__error();
                  v85 = _SILogForLogForCategory(0);
                  LODWORD(v68) = __fd;
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "shadowFlatStore";
                    v106 = 1024;
                    v107 = 1621;
                    v108 = 1024;
                    *v109 = v72;
                    _os_log_error_impl(&dword_1C278D000, v85, OS_LOG_TYPE_ERROR, "%s:%d: pwrite err: %d", buf, 0x18u);
                  }

                  goto LABEL_139;
                }

                bit_vector_set_2766((a1 + 4536), v83, 0);
                v82 += 4;
                if (v82 == 400)
                {
                  v70 = 0;
                  v68 = __fd;
                  goto LABEL_130;
                }
              }

              goto LABEL_133;
            }

LABEL_130:
            if (*(a1 + 4536) > j && CFBitVectorGetBitAtIndex(*(a1 + 4552), j))
            {
              *&__str[4 * v70++] = j;
            }
          }

LABEL_140:
          if (!v70)
          {
            goto LABEL_155;
          }

          v86 = v70;
          v87 = __str;
          if (v5)
          {
            while (*a4 != 1 && *a4 != -1)
            {
              v88 = *v87;
              if (prot_pread(v68, v64, 0x20000uLL, v88 << 17) == -1)
              {
                goto LABEL_165;
              }

              if (*a4 == 1 || *a4 == -1)
              {
                break;
              }

              if (prot_pwrite_guarded(v101, &v103, v64, 0x20000uLL, v88 << 17) == -1)
              {
                goto LABEL_169;
              }

              bit_vector_set_2766((a1 + 4536), v88, 0);
              v87 += 4;
              if (!--v86)
              {
                goto LABEL_155;
              }
            }

LABEL_164:
            v72 = 89;
            v77 = v101;
            goto LABEL_104;
          }

          while (1)
          {
            if (*a4 == 1)
            {
              goto LABEL_164;
            }

            v89 = *v87;
            if (prot_pread(v68, v64, 0x20000uLL, v89 << 17) == -1)
            {
              break;
            }

            if (*a4 == 1)
            {
              goto LABEL_164;
            }

            if (prot_pwrite_guarded(v101, &v103, v64, 0x20000uLL, v89 << 17) == -1)
            {
LABEL_169:
              v72 = *__error();
              v73 = *__error();
              v94 = _SILogForLogForCategory(0);
              if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_170;
              }

              *buf = 136315650;
              *&buf[4] = "shadowFlatStore";
              v106 = 1024;
              v107 = 1659;
              v108 = 1024;
              *v109 = v72;
              v95 = "%s:%d: pwrite err: %d";
              goto LABEL_178;
            }

            bit_vector_set_2766((a1 + 4536), v89, 0);
            v87 += 4;
            if (!--v86)
            {
              goto LABEL_155;
            }
          }

LABEL_165:
          v72 = *__error();
          v73 = *__error();
          v94 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
LABEL_170:
            LODWORD(v68) = __fd;
            goto LABEL_139;
          }

          *buf = 136315650;
          *&buf[4] = "shadowFlatStore";
          v106 = 1024;
          v107 = 1650;
          v108 = 1024;
          *v109 = v72;
          v95 = "%s:%d: pread err: %d";
LABEL_178:
          _os_log_error_impl(&dword_1C278D000, v94, OS_LOG_TYPE_ERROR, v95, buf, 0x18u);
          LODWORD(v68) = __fd;
LABEL_139:
          v77 = v101;
LABEL_103:
          *__error() = v73;
LABEL_104:
          free(v64);
          _fd_release_fd(*(a1 + 376), v68, 0, v102);
          _fd_release_fd(v59, v77, 0, v103);
          fd_release(v59);
          if (v72)
          {
            return v72;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

        v72 = *__error();
        v73 = *__error();
        v78 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "shadowFlatStore";
          v106 = 1024;
          v107 = 1599;
          v108 = 1024;
          *v109 = v72;
          _os_log_error_impl(&dword_1C278D000, v78, OS_LOG_TYPE_ERROR, "%s:%d: fd_open err: %d", buf, 0x18u);
        }

LABEL_102:
        v77 = -1;
        goto LABEL_103;
      }

      v72 = *__error();
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "shadowFlatStore";
        v106 = 1024;
        v107 = 1593;
        v108 = 1024;
        *v109 = v72;
        v75 = "%s:%d: fd_open err: %d";
        goto LABEL_100;
      }
    }

    else
    {
      if (fd_pread(v66, v64, v65, 0) != -1)
      {
        if (fd_pwrite(v59, v64, *(a1 + 392), 0) != -1)
        {
          bit_vector_set_2766((a1 + 4536), 0, 0);
LABEL_156:
          free(v64);
          fd_truncate(v59, *(a1 + 384));
          fd_sync(v59, 0);
          fd_release(v59);
          v90 = *__error();
          v91 = _SILogForLogForCategory(10);
          v92 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v91, v92))
          {
            v93 = CFAbsoluteTimeGetCurrent() - v58;
            *buf = 134217984;
            *&buf[4] = v93;
            _os_log_impl(&dword_1C278D000, v91, v92, "shadowIndexArrays took %f seconds", buf, 0xCu);
          }

          *__error() = v90;
          if (*a4 != 1 && (*a4 != -1 || (v5 & 1) == 0))
          {
            goto LABEL_16;
          }

          v59 = 0;
          v64 = 0;
          LODWORD(v68) = -1;
          v72 = 89;
          v77 = -1;
          goto LABEL_104;
        }

        v72 = *__error();
        v73 = *__error();
        v74 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_101;
        }

        *buf = 136315650;
        *&buf[4] = "shadowFlatStore";
        v106 = 1024;
        v107 = 1585;
        v108 = 1024;
        *v109 = v72;
        v75 = "%s:%d: pwrite err: %d";
        goto LABEL_100;
      }

      v72 = *__error();
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "shadowFlatStore";
        v106 = 1024;
        v107 = 1580;
        v108 = 1024;
        *v109 = v72;
        v75 = "%s:%d: read err: %d";
LABEL_100:
        _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, v75, buf, 0x18u);
      }
    }

LABEL_101:
    LODWORD(v68) = -1;
    goto LABEL_102;
  }

  v40 = *__error();
  v41 = *__error();
  v43 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *valuePtr = 136315906;
    *&valuePtr[4] = "bt_shadowTrie";
    v136 = 1024;
    v137 = 1816;
    v138 = 1024;
    v139 = v40;
    v140 = 2080;
    v141 = v104;
LABEL_90:
    _os_log_error_impl(&dword_1C278D000, v43, OS_LOG_TYPE_ERROR, "%s:%d: write err: %d, %s", valuePtr, 0x22u);
  }

LABEL_42:
  *__error() = v41;
  fd_release(v27);
  if (v40)
  {
    return v40;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void bit_vector_set_2766(CFIndex *a1, CFIndex a2, CFBit a3)
{
  if (a2 < 0)
  {
    v5 = __si_assert_copy_extra_2708(0);
    v6 = v5;
    v7 = "";
    if (v5)
    {
      v7 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 142, "bitIndex >= 0", v7);
    free(v6);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v3 = a1[1];
  if (v3 <= a2)
  {
    if (v3)
    {
      v8 = a1[1];
    }

    else
    {
      v8 = 32;
    }

    while (1)
    {
      v8 *= 2;
      if (v8 > a2)
      {
        break;
      }

      if (v8 <= v3)
      {
        v9 = __si_assert_copy_extra_2708(0);
        v10 = v9;
        v11 = "";
        if (v9)
        {
          v11 = v9;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 124, "newCapacity > bv->capacity", v11);
        goto LABEL_20;
      }
    }

    v13 = a2;
    v14 = a3;
    v15 = a1;
    v16 = a1[2];
    v17 = *MEMORY[0x1E695E480];
    if (v16)
    {
      MutableCopy = CFBitVectorCreateMutableCopy(v17, v8, v16);
    }

    else
    {
      MutableCopy = CFBitVectorCreateMutable(v17, v8);
    }

    v19 = MutableCopy;
    if (!MutableCopy)
    {
      v20 = __si_assert_copy_extra_2708(0);
      v10 = v20;
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "bit_vector.h", 128, "newBV", v21);
LABEL_20:
      free(v10);
      if (__valid_fs(-1))
      {
        v12 = 2989;
      }

      else
      {
        v12 = 3072;
      }

      *v12 = -559038737;
      abort();
    }

    CFBitVectorSetCount(MutableCopy, v8);
    a1 = v15;
    if (v15[2])
    {
      CFRelease(v15[2]);
      a1 = v15;
    }

    a1[1] = v8;
    a1[2] = v19;
    a3 = v14;
    a2 = v13;
  }

  if (*a1 <= a2)
  {
    *a1 = a2 + 1;
  }

  v4 = a1[2];

  CFBitVectorSetBitAtIndex(v4, a2, a3);
}

uint64_t bt_mergeTerm(uint64_t a1, char *__s2, int **a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  v5 = **a3;
  v6 = v5 >> 3;
  v7 = (v5 & 7) << 32;
  if ((v5 & 3) == 1)
  {
    v7 = 0x100000000;
    v6 = v5 >> 2;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5 >> 1;
  }

  if (*(a3 + 3))
  {
    return 0;
  }

  v20[0] = 0;
  v20[1] = 0;
  ++currentCount;
  v13 = *(a3 + 11);
  if (v13 && a1 > v13 && !memcmp(a3 + 6, __s2, *(a3 + 11)))
  {
    if ((mergeEntryFlat(v14) & 1) == 0)
    {
      return LODWORD(v20[0]);
    }

    if (*(a3 + 3))
    {
      return 0;
    }

    if (*(a3 + 11))
    {
      v16 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    a3[4] = 0;
    a3[5] = 0;
  }

  v15 = 0uLL;
  *(a3 + 1092) = 0u;
  v16 = 1;
LABEL_15:
  bt_mergeEntry(v4, v3, v8 | v9, v20, __s2, a1, v15);
  if (*(a3 + 3))
  {
    return 0;
  }

  v18 = v16 ^ 1;
  if (*(a3 + 10))
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0 && *(a3 + 8))
  {
    v19 = *(a3 + 11);
    if (v19)
    {
      *(a3 + 11) = a1 - v19;
      __strncpy_chk();
      *(a3 + *(a3 + 11) + 48) = 0;
    }
  }

  return LODWORD(v20[0]);
}

unint64_t bt_mergeEntry(void *a1, _DWORD *a2, unint64_t a3, _DWORD *a4, unsigned __int8 *a5, uint64_t a6, __n128 a7)
{
  if (!HIDWORD(a3))
  {
    v12 = __si_assert_copy_extra_2708(0);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1513, "ptr.kind", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v7 = a3;
  if (HIDWORD(a3) == 1)
  {
    if (a3)
    {
      v10 = mergeEntry(a1, a2, a3, a5, a6, a4, a3);
      v7 = v10;
      if (HIDWORD(v10))
      {
        v8 = v10 & 0xFFFFFFFF00000000;
        return v7 | v8;
      }

      if (a2[1])
      {
        v8 = 0;
        return v7 | v8;
      }

      v18 = __si_assert_copy_extra_2708(0);
      v16 = v18;
      v19 = "";
      if (v18)
      {
        v19 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1535, "ptr.kind || ms->err", v19);
    }

    else
    {
      v15 = __si_assert_copy_extra_2708(0);
      v16 = v15;
      v17 = "";
      if (v15)
      {
        v17 = v15;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1527, "ptr.next", v17);
    }

    free(v16);
    if (!__valid_fs(-1))
    {
      v20 = 3072;
LABEL_25:
      *v20 = -559038737;
      abort();
    }

LABEL_23:
    v20 = 2989;
    goto LABEL_25;
  }

  if (HIDWORD(a3) != 3)
  {
    v21 = __si_assert_copy_extra_2708(0);
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1532, v23);
    free(v22);
    goto LABEL_23;
  }

  mergeEntryFat(a1, a2, a3, a5, a6, a4, a7);
  v8 = 0x300000000;
  return v7 | v8;
}

unint64_t mergeEntryFat(unint64_t result, uint64_t a2, unsigned int a3, unsigned __int8 *a4, int a5, _DWORD *a6, __n128 a7)
{
  v8 = result;
  v91 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v11 = *(result + 8) + 1028 * a3 + 4 * *a4;
    v14 = *(v11 + 4);
    v12 = (v11 + 4);
    v13 = v14;
    v15 = v14 >> 1;
    v16 = v14 >> 3;
    v17 = (v14 & 7) << 32;
    v18 = v14 >> 2;
    if ((v14 & 3) == 1)
    {
      v17 = 0x100000000;
      v16 = v18;
    }

    v19 = (v13 & 1) == 0;
    if (v13)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v15;
    }

    else
    {
      v21 = v16;
    }

    v22 = v20 | v21;
    if (!v21)
    {
      if (*a2)
      {
        v25 = flatStoreNewBlockForCompact(result + 160, *(a2 + 2148));
        v87 = v25;
        *(a2 + 2148) = v25;
      }

      else
      {
        memset(v90, 0, sizeof(v90));
        v66 = 64;
        v89 = 0;
        do
        {
          v67 = v66;
          v66 *= 2;
        }

        while (v67 < a5 + 22);
        v68 = storageAllocOffset(result + 160, v67, v90, &v89);
        if (v68)
        {
          v69 = v68;
          v70 = storageResolvePtr((v8 + 20), v68, v67, 1);
          *v70 = 0;
          v71 = __clz(__rbit32(v67 >> 6));
          if (!v67)
          {
            v71 = -1;
          }

          *(v70 + 2) = v71;
          v25 = (v69 >> 6);
        }

        else
        {
          v25 = 0;
        }

        v72 = v89;
        if (v89 >= 1)
        {
          v73 = v90;
          do
          {
            v75 = *v73++;
            v74 = v75;
            bit_vector_set_4242(v8 + 567, (v75 >> 17));
            if ((v75 >> 17) != (v75 + 8) >> 17)
            {
              bit_vector_set_4242(v8 + 567, (v74 >> 17) + 1);
            }

            --v72;
          }

          while (v72);
        }

        v87 = v25;
      }

      if (!v25)
      {
        result = __error();
        *(a2 + 4) = *result;
        return result;
      }

      result = mergeEntryFlat(v26);
      if (result)
      {
        if (*(a2 + 4))
        {
          return result;
        }

        v76 = __si_assert_copy_extra_2708(0);
        v77 = v76;
        v78 = "";
        if (v76)
        {
          v78 = v76;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1115, "ms->err", v78);
      }

      else
      {
        v79 = HIDWORD(v87) | (8 * v87);
        if (HIDWORD(v87) == 1)
        {
          v79 = (4 * v87) | 1;
        }

        if (HIDWORD(v87))
        {
          v80 = v79;
        }

        else
        {
          v80 = 2 * v87;
        }

        if ((v80 & 3) == 1)
        {
          v81 = 2;
        }

        else
        {
          v81 = 3;
        }

        if ((v80 & 1) == 0)
        {
          v81 = 1;
        }

        if (v80 >> v81 == v87)
        {
          *(v8[1] + 1028 * a3 + 4 * *a4 + 4) = v80;
          return result;
        }

        v82 = __si_assert_copy_extra_2708(0);
        v77 = v82;
        v83 = "";
        if (v82)
        {
          v83 = v82;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v83);
      }

      free(v77);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v23 = HIDWORD(v20);
    if (v23)
    {
      if (v23 != 1)
      {
        if (v23 == 3)
        {
          return mergeEntryFat(result, a2, v21, a4 + 1, a5 - 1, a6);
        }

        v84 = __si_assert_copy_extra_2708(0);
        v85 = v84;
        if (v84)
        {
          v86 = v84;
        }

        else
        {
          v86 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1097, v86);
        free(v85);
        goto LABEL_48;
      }

      result = mergeEntry(result, a2, v21, a4 + 1, (a5 - 1), a6, v22);
      if (!*(a2 + 4))
      {
        v27 = HIDWORD(result);
        v28 = v8[1] + 1028 * a3 + 4 * *a4;
        v31 = *(v28 + 4);
        v29 = (v28 + 4);
        v30 = v31;
        v32 = v31 >> 1;
        v33 = v31 >> 3;
        v34 = v31 & 7;
        v35 = v31 >> 2;
        if ((v31 & 3) == 1)
        {
          v34 = 1;
          v33 = v35;
        }

        v36 = (v30 & 1) == 0;
        if (v30)
        {
          v37 = v34;
        }

        else
        {
          v37 = 0;
        }

        if (!v36)
        {
          v32 = v33;
        }

        if (v32 != result || v37 != HIDWORD(result))
        {
          v39 = (4 * result) | 1;
          if (v27 != 1)
          {
            v39 = HIDWORD(result) | (8 * result);
          }

          if (v27)
          {
            v40 = v39;
          }

          else
          {
            v40 = 2 * result;
          }

          if ((v40 & 3) == 1)
          {
            v41 = 2;
          }

          else
          {
            v41 = 3;
          }

          if ((v40 & 1) == 0)
          {
            v41 = 1;
          }

          if (v40 >> v41 != result)
          {
            goto LABEL_45;
          }

LABEL_83:
          *v29 = v40;
        }
      }
    }

    else
    {
      v46 = *v12;
      LODWORD(v47) = v46 >> 1;
      v48 = v46 >> 3;
      v49 = (v46 & 7) << 32;
      if ((v46 & 3) == 1)
      {
        v49 = 0x100000000;
        v48 = v46 >> 2;
      }

      v50 = (v46 & 1) == 0;
      if (v46)
      {
        v51 = v49;
      }

      else
      {
        v51 = 0;
      }

      if (v50)
      {
        v47 = v47;
      }

      else
      {
        v47 = v48;
      }

      v88 = v51 | v47;
      v52 = (a5 - 1);
      result = mergeEntryFlat(a7);
      if (result)
      {
        if (*(a2 + 4))
        {
          return result;
        }

        result = burst2(v8, a2, v88);
        if (*(a2 + 4))
        {
          return result;
        }

        result = bt_mergeEntry(v8, a2, result, a6, (a4 + 1), v52);
        v88 = result;
        if (*(a2 + 4))
        {
          return result;
        }

        v54 = v8[1] + 1028 * a3 + 4 * *a4;
        result = ptrD(result);
        *(v54 + 4) = result;
      }

      v55 = v8[1] + 1028 * a3 + 4 * *a4;
      v57 = *(v55 + 4);
      v29 = (v55 + 4);
      v56 = v57;
      v58 = v57 >> 1;
      v59 = v57 >> 3;
      v60 = v57 & 7;
      v61 = v57 >> 2;
      if ((v57 & 3) == 1)
      {
        v60 = 1;
        v59 = v61;
      }

      v62 = (v56 & 1) == 0;
      if (v56)
      {
        v63 = v60;
      }

      else
      {
        v63 = 0;
      }

      if (!v62)
      {
        v58 = v59;
      }

      if (v88 != v58 || HIDWORD(v88) != v63)
      {
        v40 = (4 * v88) | 1;
        if (HIDWORD(v88) != 1)
        {
          v40 = HIDWORD(v88) | (8 * v88);
        }

        if (!HIDWORD(v88))
        {
          v40 = 2 * v88;
        }

        if ((v40 & 3) == 1)
        {
          v65 = 2;
        }

        else
        {
          v65 = 3;
        }

        if ((v40 & 1) == 0)
        {
          v65 = 1;
        }

        if (v40 >> v65 != v88)
        {
LABEL_45:
          v42 = __si_assert_copy_extra_2708(0);
          v43 = v42;
          v44 = "";
          if (v42)
          {
            v44 = v42;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v44);
          free(v43);
          if (!__valid_fs(-1))
          {
            v45 = 3072;
LABEL_123:
            *v45 = -559038737;
            abort();
          }

LABEL_48:
          v45 = 2989;
          goto LABEL_123;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    v24 = (*(result + 8) + 1028 * a3);
    if (!*v24)
    {
      *v24 = *(a2 + 8);
      if (!*a2)
      {
        ++*(a2 + 8);
      }
    }

    *a6 = *(*(result + 8) + 1028 * a3);
  }

  return result;
}

unint64_t mergeEntry(void *a1, _DWORD *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, _DWORD *a6, unint64_t a7)
{
  v9 = a5;
  v11 = a3;
  v14 = a3;
  v15 = mgetBase(a1, a3);
  if (!v9)
  {
    v22 = *v15;
    if (!*v15)
    {
      v22 = a2[2];
      *v15 = v22;
      if (!*a2)
      {
        a2[2] = v22 + 1;
      }
    }

    *a6 = v22;
    return a7;
  }

  v17 = *a4;
  if (!*a4)
  {
    v63 = __si_assert_copy_extra_2708(0);
    v64 = v63;
    v65 = "";
    if (v63)
    {
      v65 = v63;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1402, "*string", v65);
    goto LABEL_95;
  }

  v18 = (v15 + 4);
  if (((*(v15 + 4 + ((v17 >> 3) & 0x1C)) >> v17) & 1) == 0)
  {

    return _mergeEntryNoFollows(a1, a2, v11, a4, v9, a6, a7);
  }

  v19 = 0;
  v20 = v17 >> 6;
  if ((v17 >> 6) > 1)
  {
    if (v20 != 2)
    {
      v24 = vcnt_s8(*(v15 + 20));
      v24.i16[0] = vaddlv_u8(v24);
      v19 = v24.u32[0];
    }

    v25 = vcnt_s8(*(v15 + 12));
    v25.i16[0] = vaddlv_u8(v25);
    v19 += v25.u32[0];
    goto LABEL_19;
  }

  v21 = v17 >> 6;
  if (v20)
  {
LABEL_19:
    v26 = vcnt_s8(*v18);
    v26.i16[0] = vaddlv_u8(v26);
    v21 = v26.u32[0] + v19;
  }

  v16.n128_u64[0] = vcnt_s8((*&v18[v20] & ~(-1 << v17)));
  v16.n128_u16[0] = vaddlv_u8(v16.n128_u64[0]);
  v27 = v16.n128_u32[0] + v21;
  v28 = v15 + 38;
  v29 = *(v15 + 38 + 4 * v27);
  if ((v29 & 1) == 0)
  {
    v75 = v29 >> 1;
    goto LABEL_22;
  }

  if ((*(v15 + 38 + 4 * v27) & 3) == 1)
  {
    v31 = v29 >> 2;
    v32 = (v29 >> 2) | 0x100000000;
LABEL_46:
    result = mergeEntry(a1, a2, v31, a4 + 1, (v9 - 1), a6, v32);
    if (a2[1])
    {
      return result;
    }

    v42 = HIDWORD(result);
    v43 = result;
    v44 = mgetBase(a1, v14) + 38;
    v45 = *(v44 + 4 * v27);
    v46 = v45 >> 1;
    v47 = v45 >> 3;
    v48 = v45 & 7;
    if ((v45 & 3) == 1)
    {
      v48 = 1;
      v47 = v45 >> 2;
    }

    v49 = (v45 & 1) == 0;
    if (v45)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    if (!v49)
    {
      v46 = v47;
    }

    if (v46 == v43 && v50 == v42)
    {
      return a7;
    }

    v52 = (4 * v43) | 1;
    if (v42 != 1)
    {
      v52 = v42 | (8 * v43);
    }

    if (!v42)
    {
      v52 = 2 * v43;
    }

    if ((v52 & 3) == 1)
    {
      v53 = 2;
    }

    else
    {
      v53 = 3;
    }

    if ((v52 & 1) == 0)
    {
      v53 = 1;
    }

    if (v52 >> v53 == v43)
    {
      *(v44 + 4 * v27) = v52;
      return a7;
    }

    v70 = __si_assert_copy_extra_2708(0);
    v64 = v70;
    v71 = "";
    if (v70)
    {
      v71 = v70;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v71);
LABEL_95:
    free(v64);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v31 = v29 >> 3;
  v32 = v31 | ((v29 & 7) << 32);
  v75 = v32;
  v41 = *(v15 + 38 + 4 * v27) & 7;
  if (v41)
  {
    if (v41 != 1)
    {
      if (v41 != 3)
      {
        v72 = __si_assert_copy_extra_2708(0);
        v73 = v72;
        if (v72)
        {
          v74 = v72;
        }

        else
        {
          v74 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "BurstTrie.c", 1486, v74);
        free(v73);
        goto LABEL_101;
      }

      mergeEntryFat(a1, a2, v31, a4 + 1, v9 - 1, a6);
      return a7;
    }

    goto LABEL_46;
  }

LABEL_22:
  v30 = (v9 - 1);
  if (!mergeEntryFlat(v16))
  {
    v33 = *(v28 + 4 * v27);
    v34 = v33 >> 1;
    v35 = v33 >> 3;
    v36 = v33 & 7;
    if ((v33 & 3) == 1)
    {
      v36 = 1;
      v35 = v33 >> 2;
    }

    v37 = (v33 & 1) == 0;
    if (v33)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    if (!v37)
    {
      v34 = v35;
    }

    if (v75 == v34 && HIDWORD(v75) == v38)
    {
      return a7;
    }

    if (HIDWORD(v75))
    {
      v40 = HIDWORD(v75) | (8 * v75);
      if (HIDWORD(v75) == 1)
      {
        v40 = (4 * v75) | 1;
      }
    }

    else
    {
      v40 = 2 * v75;
    }

    if ((v40 & 3) == 1)
    {
      v54 = 2;
    }

    else
    {
      v54 = 3;
    }

    if ((v40 & 1) == 0)
    {
      v54 = 1;
    }

    if (v40 >> v54 == v75)
    {
      *(v28 + 4 * v27) = v40;
      return a7;
    }

    v66 = __si_assert_copy_extra_2708(0);
    v67 = v66;
    v68 = "";
    if (v66)
    {
      v68 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v68);
    free(v67);
    if (!__valid_fs(-1))
    {
      v69 = 3072;
LABEL_103:
      *v69 = -559038737;
      abort();
    }

LABEL_101:
    v69 = 2989;
    goto LABEL_103;
  }

  result = v75;
  if (!a2[1])
  {
    result = burst2(a1, a2, v75);
    if (!a2[1])
    {
      result = HIDWORD(result) == 1 ? mergeEntry(a1, a2, result, a4 + 1, v30, a6, result) : bt_mergeEntry(a1, a2, result, a6, (a4 + 1), v30);
      v76 = result;
      if (!a2[1])
      {
        v55 = mgetBase(a1, v14) + 38;
        v56 = *(v55 + 4 * v27);
        v57 = v56 >> 1;
        v58 = v56 >> 3;
        v59 = v56 & 7;
        if ((v56 & 3) == 1)
        {
          v59 = 1;
          v58 = v56 >> 2;
        }

        v60 = (v56 & 1) == 0;
        if (v56)
        {
          v61 = v59;
        }

        else
        {
          v61 = 0;
        }

        if (!v60)
        {
          v57 = v58;
        }

        if (v76 != v57 || HIDWORD(v76) != v61)
        {
          *(v55 + 4 * v27) = ptrD(v76);
        }

        return a7;
      }
    }
  }

  return result;
}

unint64_t _mergeEntryNoFollows(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = a7;
  v113 = *MEMORY[0x1E69E9840];
  v12 = HIDWORD(a7);
  v13 = mgetBase(a1, a3);
  v14 = *(v13 + 36);
  v15 = &v99 + 1;
  v16 = (a2 + 4);
  if (*(v13 + 37) != v14)
  {
    goto LABEL_23;
  }

  HIDWORD(v18) = v14 - 4;
  LODWORD(v18) = v14 - 4;
  v17 = v18 >> 2;
  if (v17 <= 2)
  {
    if (!v17)
    {
      v19 = 8;
      goto LABEL_59;
    }

    if (v17 == 1)
    {
      v19 = 16;
LABEL_59:
      if (v7 != a3)
      {
        v87 = __si_assert_copy_extra_2708(0);
        v49 = v87;
        v88 = "";
        if (v87)
        {
          v88 = v87;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1264, "old==s", v88);
        goto LABEL_111;
      }

      v95 = a4;
      v54 = (4 * v19 + 41) & 0x1E8;
      v55 = mmalloc((4 * v19 + 41) & 0x1E8, a1 + 16, *(a2 + 2160), *(a2 + 2168));
      if (!v55)
      {
        goto LABEL_70;
      }

      v56 = v55;
      v57 = v55 >> 2;
      v58 = mgetBase(a1, v55 >> 2);
      *v58 = 0u;
      *(v58 + 16) = 0u;
      if (v54 != 40)
      {
        *(v58 + 32) = 0uLL;
        *(v58 + 48) = 0uLL;
        if (v54 != 72)
        {
          *(v58 + 64) = 0uLL;
          *(v58 + 80) = 0uLL;
          if (v54 != 104)
          {
            *(v58 + 96) = 0uLL;
            *(v58 + 112) = 0uLL;
            if (v54 != 136)
            {
              *(v58 + 128) = 0uLL;
              *(v58 + 144) = 0uLL;
            }
          }
        }
      }

      *(v58 + v54 - 8) = 0;
      *(v58 + 37) = v19;
      if (!v57)
      {
LABEL_70:
        *(a2 + 4) = *__error();
        LODWORD(v99) = 0;
        goto LABEL_100;
      }

      v59 = mgetBase(a1, (v56 >> 2));
      v60 = mgetBase(a1, v7);
      memcpy(v59, v60, 4 * v14 + 38);
      v59[37] = v19;
      v61 = 4 * v7;
      v62 = (4 * v14 + 41) & 0x7FC;
      v63 = *(a1 + 24);
      v64 = v62 >= v63;
      v65 = v62 - v63;
      a4 = v95;
      if (v65 != 0 && v64)
      {
        v70 = ((v65 ^ (v65 - 1)) <= v65 - 1) - __clz(v65) + 28;
      }

      else
      {
        v70 = 0;
      }

      v16 = (a2 + 4);
      v33 = v57;
      if (v61 + (8 << v70) == *(a1 + 32))
      {
        *(a1 + 32) = v61;
      }

      else
      {
        v71 = *(a1 + 16);
        if (*(a1 + 128) < v70)
        {
          *(a1 + 128) = v70;
        }

        v72 = a1 + 4 * v70;
        *(v71 + v61) = *(v72 + 48);
        *(v72 + 48) = 4 * v7;
      }

      goto LABEL_24;
    }

LABEL_23:
    v33 = v7;
LABEL_24:
    v34 = mgetBase(a1, v33);
    v94 = set_follows(v34, *a4);
    v99 = 0;
    v97 = v12;
    if (*a2)
    {
      v35 = flatStoreNewBlockForCompact(a1 + 160, *(a2 + 2148));
      v99 = v35;
      *(a2 + 2148) = v35;
      if (!v35)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v93 = v33;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v37 = 64;
      v100 = 0;
      do
      {
        v38 = v37;
        v37 *= 2;
      }

      while (v38 < a5 + 22);
      v96 = v16;
      v39 = storageAllocOffset(a1 + 160, v38, &v101, &v100);
      if (v39)
      {
        v40 = v39;
        v41 = storageResolvePtr(a1 + 160, v39, v38, 1);
        *v41 = 0;
        v42 = __clz(__rbit32(v38 >> 6));
        if (!v38)
        {
          v42 = -1;
        }

        *(v41 + 2) = v42;
        v43 = (v40 >> 6);
      }

      else
      {
        v43 = 0;
      }

      v44 = v100;
      if (v100 >= 1)
      {
        v45 = &v101;
        do
        {
          v47 = *v45++;
          v46 = v47;
          bit_vector_set_4242((a1 + 4536), (v47 >> 17));
          if ((v47 >> 17) != (v47 + 8) >> 17)
          {
            bit_vector_set_4242((a1 + 4536), (v46 >> 17) + 1);
          }

          --v44;
        }

        while (v44);
      }

      v99 = v43;
      v33 = v93;
      v15 = &v99 + 1;
      v16 = v96;
      if (!v43)
      {
        goto LABEL_99;
      }
    }

    if (mergeEntryFlat(v36))
    {
      if (*v16)
      {
        return v99;
      }

      v48 = __si_assert_copy_extra_2708(0);
      v49 = v48;
      v50 = "";
      if (v48)
      {
        v50 = v48;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1362, "ms->err", v50);
    }

    else
    {
      v51 = HIDWORD(v99) | (8 * v99);
      if (HIDWORD(v99) == 1)
      {
        v51 = (4 * v99) | 1;
      }

      if (HIDWORD(v99))
      {
        v52 = v51;
      }

      else
      {
        v52 = 2 * v99;
      }

      if ((v52 & 3) == 1)
      {
        v53 = 2;
      }

      else
      {
        v53 = 3;
      }

      if ((v52 & 1) == 0)
      {
        v53 = 1;
      }

      if (v52 >> v53 == v99)
      {
        *(v34 + 38 + 4 * v94) = v52;
        LODWORD(v99) = v33;
        LODWORD(v12) = v97;
        goto LABEL_100;
      }

      v89 = __si_assert_copy_extra_2708(0);
      v49 = v89;
      v90 = "";
      if (v89)
      {
        v90 = v89;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "nextptr.h", 70, "ptrM(newptr).next == ptr.next", v90);
    }

    goto LABEL_111;
  }

  if (v17 == 3)
  {
    v19 = 32;
    goto LABEL_59;
  }

  if (v17 != 7)
  {
    goto LABEL_23;
  }

  if (v7 != a3)
  {
    v91 = __si_assert_copy_extra_2708(0);
    v49 = v91;
    v92 = "";
    if (v91)
    {
      v92 = v91;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1285, "old==s", v92);
    goto LABEL_111;
  }

  v20 = *(a1 + 148);
  v21 = *(a1 + 144) + 1;
  if (v21 >= v20)
  {
    v73 = v13;
    v74 = *(a2 + 2168);
    v75 = *(a2 + 2160);
    *&v101 = 0;
    v76 = expandUnsafeMapNew((a1 + 8), *(a1 + 4576), v20, 0x404uLL, &v101, v75, v74);
    if (v76)
    {
      v21 = 0;
      *__error() = v76;
    }

    else
    {
      v85 = v101;
      *(a1 + 144) = v21;
      *(a1 + 148) = v85;
    }

    v13 = v73;
    if (v21)
    {
      goto LABEL_11;
    }

LABEL_94:
    *v16 = *__error();
    LODWORD(v99) = 0;
    LODWORD(v12) = 3;
    goto LABEL_100;
  }

  *(a1 + 144) = v21;
  if (!v21)
  {
    goto LABEL_94;
  }

LABEL_11:
  v22 = 0;
  v23 = (v13 + 4);
  v24 = 1028 * v21 + 4;
  do
  {
    if (((v23->i32[v22 >> 5] >> v22) & 1) == 0)
    {
      v25 = *(a1 + 8);
      *(v25 + v24 + 4 * v22) = 0;
      goto LABEL_13;
    }

    v26 = 0;
    v27 = v22 >> 6;
    if (v22 >> 6 > 1)
    {
      if (v27 != 2)
      {
        v29 = vcnt_s8(*(v13 + 20));
        v29.i16[0] = vaddlv_u8(v29);
        v26 = v29.u32[0];
      }

      v30 = vcnt_s8(*(v13 + 12));
      v30.i16[0] = vaddlv_u8(v30);
      v26 += v30.u32[0];
    }

    else
    {
      v28 = v27;
      if (!v27)
      {
        goto LABEL_22;
      }
    }

    v31 = vcnt_s8(*v23);
    v31.i16[0] = vaddlv_u8(v31);
    v28 = v31.u32[0] + v26;
LABEL_22:
    v32 = vcnt_s8((*&v23[v27] & ~(-1 << v22)));
    v32.i16[0] = vaddlv_u8(v32);
    v25 = *(a1 + 8);
    *(v25 + v24 + 4 * v22) = *(v13 + 38 + 4 * (v32.u32[0] + v28));
LABEL_13:
    ++v22;
  }

  while (v22 != 256);
  *(v25 + 1028 * v21) = *v13;
  v99 = 0;
  if (!*a2)
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v77 = 64;
    v100 = 0;
    do
    {
      v78 = v77;
      v77 *= 2;
    }

    while (v78 < a5 + 22);
    v79 = storageAllocOffset(a1 + 160, v78, &v101, &v100);
    if (v79)
    {
      v80 = v79;
      v81 = storageResolvePtr(a1 + 160, v79, v78, 1);
      *v81 = 0;
      v82 = __clz(__rbit32(v78 >> 6));
      if (!v78)
      {
        v82 = -1;
      }

      *(v81 + 2) = v82;
      v83 = (v80 >> 6);
    }

    else
    {
      v83 = 0;
    }

    v16 = (a2 + 4);
    if (v100)
    {
      dirtyStorageOffsets(a1 + 160, &v101, v100);
    }

    v99 = v83;
    if (!v83)
    {
      goto LABEL_99;
    }

LABEL_73:
    if ((mergeEntryFlat(v67) & 1) == 0)
    {
      v84 = *(a1 + 8) + 1028 * v21 + 4 * *a4;
      *(v84 + 4) = ptrD(v99);
      mfree(4 * (v7 & 0x3FFFFFFF), (4 * v14 + 41) & 0x7FC, (a1 + 16));
      LODWORD(v99) = v21;
      LODWORD(v12) = 3;
      v15 = &v99 + 1;
      goto LABEL_100;
    }

    if (*v16)
    {
      return v99;
    }

    v68 = __si_assert_copy_extra_2708(0);
    v49 = v68;
    v69 = "";
    if (v68)
    {
      v69 = v68;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1326, "ms->err", v69);
LABEL_111:
    free(v49);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v66 = flatStoreNewBlockForCompact(a1 + 160, *(a2 + 2148));
  v99 = v66;
  *(a2 + 2148) = v66;
  if (v66)
  {
    goto LABEL_73;
  }

LABEL_99:
  LODWORD(v12) = *__error();
  v15 = v16;
LABEL_100:
  *v15 = v12;
  return v99;
}

void _qsort_termids(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  v5 = 0;
  *v4 = 0;
  v4[1] = 0;
  v6 = a1 + 28;
  v7 = 1;
  do
  {
    if (a2 > v5)
    {
      if (v7 <= 128)
      {
        v10 = 128;
      }

      else
      {
        v10 = v7;
      }

      while (1)
      {
        v11 = a2 - v5;
        if (a2 - v5 <= 16)
        {
          break;
        }

        v12 = v11 + 1;
        v13 = (a1 + 24 * v5);
        v14 = &v13[6 * ((v11 + 1) >> 1)];
        v15 = (a1 + 24 * a2);
        if (v11 < 0x400)
        {
          v29 = &v13[6 * ((v11 + 1) >> 1)];
          v30 = (a1 + 24 * a2);
          v20 = (a1 + 24 * v5);
        }

        else
        {
          v16 = v12 >> 3;
          v17 = &v13[6 * (v12 >> 3)];
          v18 = *v13;
          v19 = *v17;
          v20 = (a1 + 24 * v5);
          if (*v17 != *v13)
          {
            v20 = &v13[12 * v16];
            v21 = *v20;
            if (*v20 >= v18)
            {
              v22 = &v13[12 * v16];
            }

            else
            {
              v22 = (a1 + 24 * v5);
            }

            if (v21 > v19)
            {
              v22 = &v13[6 * (v12 >> 3)];
            }

            if (v21 >= v18)
            {
              v23 = (a1 + 24 * v5);
            }

            else
            {
              v23 = &v13[12 * v16];
            }

            if (v21 >= v19)
            {
              v17 = v23;
            }

            if (v19 >= v18)
            {
              v17 = v22;
            }

            if (v18 != v21 && v19 != v21)
            {
              v20 = v17;
            }
          }

          v25 = v14[-6 * v16];
          v26 = *v14;
          if (*v14 == v25)
          {
            v29 = &v14[-6 * v16];
          }

          else
          {
            v27 = v14[6 * v16];
            v28 = v25 == v27 || v26 == v27;
            v29 = &v14[6 * v16];
            if (!v28)
            {
              v29 = &v13[6 * ((v11 + 1) >> 1)];
              if (v26 >= v25)
              {
                if (v27 <= v26)
                {
                  if (v27 >= v25)
                  {
                    v29 = &v14[6 * v16];
                  }

                  else
                  {
                    v29 = &v14[-6 * v16];
                  }
                }
              }

              else if (v27 >= v26)
              {
                if (v27 >= v25)
                {
                  v29 = &v14[-6 * v16];
                }

                else
                {
                  v29 = &v14[6 * v16];
                }
              }
            }
          }

          v31 = -v16;
          v30 = &v15[-12 * v16];
          v32 = &v15[6 * v31];
          v33 = *v30;
          v34 = *v32;
          if (*v32 != *v30)
          {
            v35 = *v15;
            if (*v15 >= v33)
            {
              v36 = (a1 + 24 * a2);
            }

            else
            {
              v36 = v30;
            }

            if (v35 > v34)
            {
              v36 = v32;
            }

            if (v35 < v33)
            {
              v30 = (a1 + 24 * a2);
            }

            if (v35 < v34)
            {
              v30 = v32;
            }

            if (v34 >= v33)
            {
              v30 = v36;
            }

            if (v33 == v35 || v34 == v35)
            {
              v30 = (a1 + 24 * a2);
            }
          }
        }

        v38 = *v20;
        v39 = *v29;
        if (*v29 == *v20)
        {
          v29 = v20;
        }

        else
        {
          v40 = *v30;
          if (v38 == *v30 || v39 == v40)
          {
            v29 = v30;
          }

          else if (v39 >= v38)
          {
            if (v40 <= v39)
            {
              if (v40 >= v38)
              {
                v29 = v30;
              }

              else
              {
                v29 = v20;
              }
            }
          }

          else if (v40 >= v39)
          {
            if (v40 >= v38)
            {
              v29 = v20;
            }

            else
            {
              v29 = v30;
            }
          }
        }

        v42 = *v29;
        v74 = *(v29 + 1);
        v76 = v29[5];
        v43 = *(v15 + 2);
        *v29 = *v15;
        *(v29 + 2) = v43;
        *v15 = v42;
        *(v15 + 1) = v74;
        v15[5] = v76;
        v44 = *v13;
        v70 = *(v13 + 1);
        v72 = v13[5];
        v45 = (v6 + 24 * v5);
        v46 = v5;
        do
        {
          v68 = v70;
          v69 = v72;
          v47 = *(v45 - 1);
          v70 = *v45;
          v72 = *(v45 + 4);
          if (v42 <= v44)
          {
            v48 = (a1 + 24 * v46);
            v49 = *v48;
            *(v45 - 12) = *(v48 + 2);
            *(v45 - 28) = v49;
            *v48 = v44;
            *(v48 + 4) = v68;
            *(v48 + 5) = v69;
            ++v46;
          }

          v45 = (v45 + 24);
          v44 = v47;
          --v11;
        }

        while (v11);
        v50 = (a1 + 24 * v46);
        v51 = *(v50 + 2);
        v52 = *v50;
        v53 = *(v15 + 2);
        *v50 = *v15;
        *(v50 + 2) = v53;
        *v15 = v52;
        *(v15 + 2) = v51;
        if (v46 < v5)
        {
          v64 = __si_assert_copy_extra_2708(0);
          v65 = v64;
          v66 = "";
          if (v64)
          {
            v66 = v64;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 1990, "q>=left", v66);
          free(v65);
          if (__valid_fs(-1))
          {
            v67 = 2989;
          }

          else
          {
            v67 = 3072;
          }

          *v67 = -559038737;
          abort();
        }

        if (v7 == v10)
        {
          v8 = v4;
          heapsort_b((a1 + 24 * v5), v12, 0x18uLL, &__block_literal_global_2831);
          v4 = v8;
          v7 = v10;
          goto LABEL_3;
        }

        v54 = &v4[2 * v7];
        if (v46 - v5 <= a2 - v46)
        {
          *v54 = v5;
          v54[1] = v46 - 1;
          v5 = v46;
        }

        else
        {
          *v54 = v46;
          v54[1] = a2;
          a2 = v46 - 1;
        }

        ++v7;
        if (a2 <= v5)
        {
          goto LABEL_3;
        }
      }

      v55 = v6 + 24 * v5;
      v56 = v5;
      do
      {
        v58 = v56++;
        v59 = (a1 + 24 * v58);
        v75 = *(v59 + 7);
        v77 = v59[11];
        v60 = *v59;
        v71 = *(v59 + 1);
        v61 = v59[6];
        v73 = v59[5];
        v62 = v56;
        if (v61 > v60)
        {
          v63 = v55;
          do
          {
            v62 = v58;
            *(v63 - 4) = v60;
            *v63 = v71;
            *(v63 + 16) = v73;
            if (v58 <= v5)
            {
              break;
            }

            v60 = *(v63 - 52);
            v71 = *(v63 - 48);
            v73 = *(v63 - 32);
            --v58;
            v63 -= 24;
          }

          while (v61 > v60);
        }

        v57 = a1 + 24 * v62;
        *v57 = v61;
        *(v57 + 4) = v75;
        *(v57 + 20) = v77;
        v55 += 24;
      }

      while (v56 != a2);
    }

LABEL_3:
    --v7;
    v9 = &v4[2 * v7];
    v5 = *v9;
    a2 = v9[1];
  }

  while (v7);

  free(v4);
}

uint64_t mergeFlushPositions(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v142 = a6;
  v152 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return 0;
  }

  v8 = a5;
  v10 = a3;
  v133 = a3[1];
  v129 = *a3;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = *a4;
  if (*a4 <= a4[6 * v8 - 6])
  {
    v13 = a4[6 * v8 - 6];
  }

  v14 = *(v10 + 1114);
  v15 = v13 >= v14;
  v16 = v13 - v14;
  if (!v15 || (result = termIdStoreAllocBulk((v10 + 5), v16 + 1), !result))
  {
    v150 = 0;
    v148 = 0u;
    v149 = 0u;
    PayloadWriteBufferInit(&v148, v10);
    v18 = v10[1];
    v145 = 0;
    v146 = xmmword_1C2BFA3C0;
    v147 = malloc_type_malloc(0x8000uLL, 0xAFD51C2BuLL);
    if (!v147)
    {
      v117 = __si_assert_copy_extra_332();
      v105 = v117;
      v118 = "";
      if (v117)
      {
        v118 = v117;
      }

      __message_assert(v117, "CIPositionRun.c", 11, "run->buffer", v118);
LABEL_164:
      free(v105);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    if (!v150)
    {
      v19 = 0;
      v134 = 0;
      v20 = 0;
      v128 = a4 + 6;
      v130 = a4;
      v131 = v8;
      v132 = v10;
      while (1)
      {
        v21 = &a4[6 * v20];
        v22 = *(v21 + 1);
        if ((*v22 & 1) != 0 || (v23 = *(v22 + 12)) == 0)
        {
          ++v20;
          v39 = 1;
          if (v20 >= v8)
          {
            goto LABEL_129;
          }

          goto LABEL_124;
        }

        v24 = atomic_load((a1 + 248));
        if (v23 >= v24)
        {
          goto LABEL_129;
        }

        v25 = *(*(v21 + 1) + 12);
        v26 = atomic_load((a1 + 248));
        if (v25 >= v26)
        {
          if (__valid_fs(-1))
          {
            v113 = __si_assert_copy_extra_2708(0);
            atomic_load((a1 + 248));
            si_analytics_log_2752("%s:%u: failed assertion '%s' %s termId: %d next_term_id: %d");
            goto LABEL_158;
          }

LABEL_159:
          v112 = 3072;
LABEL_160:
          *v112 = -559038737;
          abort();
        }

        v139 = v19;
        v140 = v18;
        v27 = *(a1 + 240);
        v28 = *(*(v21 + 1) + 12);
        v141 = *v21;
        v136 = 8 * v141;
        v29 = v20;
        v30 = storageResolvePtr((v10 + 5), 8 * v141, 8, 1);
        v31 = v29;
        v32 = *v30;
        LODWORD(v145) = 0;
        v144 = 0;
        v33 = v29 + 1;
        if (v33 >= v8)
        {
          v35 = a2;
          v36 = v141;
          v38 = v134;
        }

        else
        {
          v34 = &v128[6 * v31];
          v35 = a2;
          v36 = v141;
          while (1)
          {
            v37 = *(v34 + 1);
            if ((*v37 & 1) == 0)
            {
              if (*(v37 + 12))
              {
                break;
              }
            }

            ++v33;
            v34 += 6;
            if (v8 == v33)
            {
              v38 = v141;
              v33 = v8;
              goto LABEL_28;
            }
          }

          v38 = *v34;
        }

        if (v33 == v8)
        {
          v38 = v36;
          goto LABEL_28;
        }

        if (v36 <= v38)
        {
          if (!__valid_fs(-1))
          {
            goto LABEL_159;
          }

          v113 = __si_assert_copy_extra_2708(0);
          si_analytics_log_2752("%s:%u: failed assertion '%s' %s termId: %d prevTermId: %d j: %ld count: %ld", "BurstTrie.c");
LABEL_158:
          free(v113);
          v112 = 2816;
          goto LABEL_160;
        }

LABEL_28:
        v134 = v38;
        v135 = v33;
        v40 = v36 - v38;
        v41 = v147;
        if (v40 <= 0x7F)
        {
          *v147 = v40;
          v42 = 1;
          v43 = 1;
          if (!v32)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        if (!(v40 >> 14))
        {
          *v147 = BYTE1(v40) | 0x80;
          v41[1] = v40;
          v42 = 2;
          v43 = 2;
          if (!v32)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        if (!(v40 >> 21))
        {
          break;
        }

        if (!(v40 >> 28))
        {
          *v147 = HIBYTE(v40) | 0xE0;
          v41[1] = BYTE2(v40);
          v41[2] = BYTE1(v40);
          v41[3] = v40;
          v42 = 4;
          v43 = 4;
          if (!v32)
          {
            goto LABEL_42;
          }

LABEL_41:
          v43 = ldb_writeSmallVInt64(v41, v42, (2 * v32) | 1);
          goto LABEL_42;
        }

        *v147 = -16;
        *(v41 + 1) = v40;
        v42 = 5;
        v43 = 5;
        if (v32)
        {
          goto LABEL_41;
        }

LABEL_42:
        v138 = v42;
        v44 = v27 + 32 * v28;
        v45 = ldb_writeSmallVInt64(v41, v43, 2 * *(v44 + 16));
        *(&v146 + 1) = v45;
        if (!*v44 && !*(v44 + 4))
        {
          if (*(v44 + 16))
          {
            v119 = v45 + 1;
            v120 = v146;
            while (v119 >= v120)
            {
              v120 *= 2;
              v41 = malloc_type_realloc(v41, v120, 0x100004077774924uLL);
              if (!v41)
              {
                v121 = __si_assert_copy_extra_2708(0);
                v105 = v121;
                v122 = "";
                if (v121)
                {
                  v122 = v121;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 75, "run->buffer", v122);
                goto LABEL_164;
              }
            }

            v123 = v144;
            v124 = __si_assert_copy_extra_2708(0);
            v105 = v124;
            v125 = "";
            if (v124)
            {
              v125 = v124;
            }

            if (!v123)
            {
              __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 77, "bytes[0]!=0", v125);
              goto LABEL_164;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "CIPositionRun.h", 78, "len == 0 || bytes[len-1]==0", v125);
          }

          else
          {
            v126 = __si_assert_copy_extra_2708(0);
            v105 = v126;
            v127 = "";
            if (v126)
            {
              v127 = v126;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "BurstTrie.c", 2083, "node->offset", v127);
          }

LABEL_148:
          free(v105);
          if (!__valid_fs(-1))
          {
            goto LABEL_159;
          }

          v112 = 2989;
          goto LABEL_160;
        }

        v47 = atomic_load((a1 + 268));
        v137 = v47;
        if (*(v44 + 8))
        {
          v48 = v142;
          v49 = CIPositionNodeFinalizeDocument(v46);
LABEL_47:
          v50 = 0;
          v51 = 0;
          while (1)
          {
            v52 = (*(a1 + 256) + 8 * v49);
            v54 = v52 + 1;
            v53 = *v52;
            if (v48)
            {
              v55 = *v54;
              if (*v54 < 0)
              {
                if (v55 > 0xBF)
                {
                  if (v55 > 0xDF)
                  {
                    if (v55 > 0xEF)
                    {
                      v55 = *(v52 + 5);
                      v56 = 5;
                    }

                    else
                    {
                      v55 = ((v55 & 0xF) << 24) | (*(v52 + 5) << 16) | (*(v52 + 6) << 8) | *(v52 + 7);
                      v56 = 4;
                    }
                  }

                  else
                  {
                    v55 = ((v55 & 0x1F) << 16) | (*(v52 + 5) << 8) | *(v52 + 6);
                    v56 = 3;
                  }
                }

                else
                {
                  v56 = 2;
                  v55 = *(v52 + 5) | ((v55 & 0x3F) << 8);
                }
              }

              else
              {
                v56 = 1;
              }

              if (v51 - 1 < v55)
              {
                v105 = __si_assert_copy_extra(0);
                __message_assert("%s:%u: failed assertion '%s' %s [round-%d] docId:%d newDocID:%d posStart:%p next:%d", "CIPayloadData.c", 587);
                goto LABEL_148;
              }

              if (!v55)
              {
                v105 = __si_assert_copy_extra(0);
                __message_assert("%s:%u: failed assertion '%s' %s [round-%d] unexpected zero newDocID. docId:%d posStart:%p  next:%d", "CIPayloadData.c");
                goto LABEL_148;
              }

              if (v35 && *v35 > v55 && CFBitVectorGetBitAtIndex(*(v35 + 16), v55))
              {
                *&buf[8] = 0;
                *buf = 0;
                v57 = v51 - v55;
                if (!v51)
                {
                  v57 = v55;
                }

                if (v57 > 0x7F)
                {
                  if (v57 >> 14)
                  {
                    if (v57 >> 21)
                    {
                      if (v57 >> 28)
                      {
                        buf[0] = -16;
                        *&buf[1] = v57;
                        v58 = 5;
                      }

                      else
                      {
                        buf[0] = HIBYTE(v57) | 0xE0;
                        buf[1] = BYTE2(v57);
                        buf[2] = BYTE1(v57);
                        buf[3] = v57;
                        v58 = 4;
                      }
                    }

                    else
                    {
                      buf[0] = BYTE2(v57) | 0xC0;
                      buf[1] = BYTE1(v57);
                      buf[2] = v57;
                      v58 = 3;
                    }
                  }

                  else
                  {
                    buf[0] = BYTE1(v57) | 0x80;
                    buf[1] = v57;
                    v58 = 2;
                  }
                }

                else
                {
                  buf[0] = v57;
                  v58 = 1;
                }

                *(buf | v58) = 1;
                ci_position_run_add_bytes(&v145, (v58 + 2), buf);
              }

              else
              {
                if (v51)
                {
                  v59 = v51 - v55;
                }

                else
                {
                  v59 = v55;
                }

                v60 = v146;
                v61 = *(&v146 + 1) + 5;
                if (*(&v146 + 1) + 5 >= v146)
                {
                  *&v146 = 2 * v146;
                  v62 = malloc_type_realloc(v147, 2 * v60, 0x100004077774924uLL);
                  v147 = v62;
                  if (!v62)
                  {
                    goto LABEL_145;
                  }
                }

                else
                {
                  v62 = v147;
                }

                if (v59 > 0x7F)
                {
                  if (v59 >> 14)
                  {
                    if (v59 >> 21)
                    {
                      if (v59 >> 28)
                      {
                        v66 = &v62[*(&v60 + 1)];
                        *v66 = -16;
                        *(v66 + 1) = v59;
                      }

                      else
                      {
                        v65 = &v62[*(&v60 + 1)];
                        *v65 = HIBYTE(v59) | 0xE0;
                        v65[1] = BYTE2(v59);
                        v65[2] = BYTE1(v59);
                        v61 = *(&v60 + 1) + 4;
                        v65[3] = v59;
                      }
                    }

                    else
                    {
                      v64 = &v62[*(&v60 + 1)];
                      *v64 = BYTE2(v59) | 0xC0;
                      v64[1] = BYTE1(v59);
                      v61 = *(&v60 + 1) + 3;
                      v64[2] = v59;
                    }
                  }

                  else
                  {
                    v63 = &v62[*(&v60 + 1)];
                    *v63 = BYTE1(v59) | 0x80;
                    v61 = *(&v60 + 1) + 2;
                    v63[1] = v59;
                  }
                }

                else
                {
                  v61 = *(&v60 + 1) + 1;
                  v62[*(&v60 + 1)] = v59;
                }

                *(&v146 + 1) = v61;
                ci_position_run_add_bytes(&v145, (v53 - v56), &v54[v56]);
                v48 = v142;
                v35 = a2;
              }
            }

            else
            {
              ci_position_run_add_bytes(&v145, v53, v54);
              v55 = v51;
            }

            v67 = &v54[v53];
            v68 = *(a1 + 256);
            v69 = (a1 + 268);
            v70 = atomic_load((a1 + 268));
            if (&v54[v53] >= v68 + 8 * v70)
            {
              v105 = __si_assert_copy_extra(0);
              atomic_load(v69);
              __message_assert("%s:%u: failed assertion '%s' %s base:%p ptr:%p value:%d info next:%d size:%d next:%d len:%d docId(%d):%d ", "CIPayloadData.c", 615, "posStart < (uint8_t*)(positions->info_store+positions->_info_next.infoptr)");
              goto LABEL_148;
            }

            v71 = *v67;
            v72 = atomic_load(v69);
            if (v71 >= v72)
            {
              v106 = __si_assert_copy_extra(0);
              v107 = v106;
              v108 = "";
              if (v106)
              {
                v108 = v106;
              }

              v109 = *(a1 + 256);
              v110 = *v67;
              v111 = atomic_load((a1 + 268));
              __message_assert("%s:%u: failed assertion '%s' %s base:%p ptr:%p value:%d info next:%d size:%d next:%d len:%d docId(%d):%d ", "CIPayloadData.c", 617, "*(PositionInfoRef*)posStart < positions->_info_next.infoptr", v108, v109, &v54[v53], v110, v111, *(a1 + 272), v49, v53, v48, v55);
              free(v107);
              if (__valid_fs(-1))
              {
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              MEMORY[0xC00] = -559038737;
              abort();
            }

            v49 = *v67;
            v73 = atomic_load((a1 + 268));
            if (v49 >= v73)
            {
LABEL_145:
              v105 = __si_assert_copy_extra(0);
              __message_assert("%s:%u: failed assertion '%s' %s ");
              goto LABEL_148;
            }

            ++v50;
            v51 = v55;
            if (!v49)
            {
              goto LABEL_98;
            }
          }
        }

        v49 = *(v44 + 4);
        v48 = v142;
        if (v49)
        {
          goto LABEL_47;
        }

LABEL_98:
        atomic_store(v137, (a1 + 268));
        v74 = *(&v146 + 1);
        v75 = *(&v146 + 1) + 21;
        v10 = v132;
        v76 = v132[1];
        if (*(&v146 + 1) + 21 <= (v76 - *v132) || v150)
        {
          v78 = *(&v149 + 1);
          v19 = v139 + 1;
          v8 = v131;
          v18 = v140;
          goto LABEL_118;
        }

        if (v139 && (PayloadWritePulseHeader(&v148, v132, v140 - v76, v141), v150))
        {
          v77 = 1;
        }

        else
        {
          v79 = growPayloadData(v46);
          v150 = v79;
          v77 = v79 != 0;
        }

        v8 = v131;
        v18 = v132[1];
        v80 = v18 - *v132;
        v81 = *(&v148 + 1);
        v78 = v80;
        if (v80 >= *(&v148 + 1))
        {
          v78 = *(&v148 + 1);
        }

        *&v149 = v78;
        *(&v149 + 1) = v78;
        v19 = 1;
        if (v75 > v80)
        {
          v76 = v18;
          if (v77)
          {
            goto LABEL_118;
          }

          do
          {
            v82 = growPayloadData(v46);
            v18 = v132[1];
            v78 = v18 - *v132;
          }

          while (v75 > v78 && v82 == 0);
          if (v78 >= v81)
          {
            v78 = v81;
          }

          else
          {
            v78 = v78;
          }

          *&v149 = v78;
          *(&v149 + 1) = v78;
          v150 = v82;
          v19 = 1;
        }

        v76 = v18;
LABEL_118:
        if (v78 < 2)
        {
          _PayloadWriteData(&v148, v132, &v144, 1);
          v84 = *(&v149 + 1);
        }

        else
        {
          v132[1] = v76 - 1;
          v84 = v78 - 1;
          *(&v149 + 1) = v84;
          *(v148 + v84) = v144;
        }

        v85 = v147;
        v86 = v84 <= v74;
        v87 = v84 - v74;
        if (v86)
        {
          _PayloadWriteData(&v148, v132, v147, v74);
        }

        else
        {
          v132[1] -= v74;
          *(&v149 + 1) = v87;
          memcpy((v148 + v87), v85, v74);
        }

        v88 = v132[1] + v138;
        a4 = v130;
        if (v88 >> 62)
        {
          v114 = __si_assert_copy_extra_2708(0);
          v105 = v114;
          v115 = "";
          if (v114)
          {
            v115 = v114;
          }

          __message_assert("%s:%u: failed assertion '%s' %s write invalid offset %llu", "TermIdStore.h", 97, "offset <= OFFSET_VALUE_MASK", v115, v88);
          goto LABEL_164;
        }

        bit_vector_set_2766(v132 + 558, v136 / *MEMORY[0x1E69E9AC8], 1u);
        *storageResolvePtr((v132 + 5), v136, 8, 1) = v88;
        v39 = v150 == 0;
        v20 = v135;
        if (v135 >= v8)
        {
LABEL_129:
          if (v19)
          {
            PayloadWritePulseHeader(&v148, v10, v18 - v10[1], v134);
          }

          goto LABEL_131;
        }

LABEL_124:
        if (!v39)
        {
          goto LABEL_129;
        }
      }

      *v147 = BYTE2(v40) | 0xC0;
      v41[1] = BYTE1(v40);
      v41[2] = v40;
      v42 = 3;
      v43 = 3;
      if (!v32)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

LABEL_131:
    free(v148);
    free(v147);
    v89 = *__error();
    v90 = _SILogForLogForCategory(10);
    v91 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v90, v91))
    {
      v92 = CFAbsoluteTimeGetCurrent() - Current;
      *buf = 134217984;
      *&buf[4] = v92;
      _os_log_impl(&dword_1C278D000, v90, v91, "flush positions %f", buf, 0xCu);
    }

    *__error() = v89;
    *buf = 0;
    v93 = _fd_acquire_fd(v10[561], buf);
    v94 = v10[1];
    v95 = MEMORY[0x1E69E9AB8];
    v96 = v133 - v94;
    if (v133 > v94)
    {
      goto LABEL_137;
    }

    v97 = *v10;
    if (*v10 != v129)
    {
      v98 = v129 & ~*MEMORY[0x1E69E9AB8];
      v99 = v97 - v98;
      v100 = mmap(0, v97 - v98, 1, 1025, v93, v98);
      sync_invalidate_mapping(v100, v99);
      munmap(v100, v99);
      v94 = v10[1];
    }

    v101 = v10[3];
    v96 = v101 - v94;
    if (v101 != v94)
    {
LABEL_137:
      v102 = v94 & ~*v95;
      v103 = v94 - v102;
      v104 = mmap(0, v94 - v102 + v96, 1, 1025, v93, v102);
      sync_invalidate_mapping(v104, v103 + v96);
      munmap(v104, v103 + v96);
    }

    fsync(v93);
    _fd_release_fd(v10[561], v93, 0, *buf);
    return v150;
  }

  return result;
}