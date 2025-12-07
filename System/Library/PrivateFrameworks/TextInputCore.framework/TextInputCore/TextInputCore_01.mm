KB::Candidate *KB::Candidate::Candidate(KB::Candidate *this)
{
  *this = 0;
  *(this + 1) = this + 24;
  *(this + 2) = 3;
  *(this + 744) = xmmword_22CC88980;
  *(this + 95) = 0xFF8000003F800000;
  *(this + 105) = 0;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 848));
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 856));
  *(this + 110) = 0;
  *(this + 54) = 0u;
  *(this + 222) = 0x100000;
  *(this + 446) = 0;
  *(this + 894) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0;
  *(this + 115) = 0;
  *(this + 58) = 0u;
  *(this + 472) = 0;
  *(this + 240) = 0;
  *(this + 964) = 0;
  *(this + 61) = 0u;
  *(this + 248) = 0;
  return this;
}

void std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 160;
        std::allocator_traits<std::allocator<KB::LanguageModel::PredictionInfo>>::destroy[abi:nn200100]<KB::LanguageModel::PredictionInfo,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void convert_to_lm_completion_stem(uint64_t *a1, language_modeling::v1::CompletionStem **a2, int a3)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a1[1] != *a1)
  {
    v3 = a3;
    v4 = a2;
    for (i = 0; 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 3) > i; ++i)
    {
      language_modeling::v1::CompletionStem::CompletionStem(v40);
      v49 = 0x100000;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53[0] = 0;
      v7 = *a1;
      if (!*(*a1 + 1000 * i))
      {
        goto LABEL_45;
      }

      v8 = 0;
      v9 = -1;
      do
      {
        v10 = *(v7 + 1000 * i + 8) + v8;
        if ((*(v10 + 135) & 4) != 0)
        {
          goto LABEL_19;
        }

        v11 = *(v10 + 8);
        if (!v11)
        {
          v11 = (v10 + 16);
        }

        if (!*v11 || *v11 == 32 && !v11[1])
        {
LABEL_19:
          v14 = v52;
          if (!v52)
          {
            v14 = v53;
          }

          if (v49)
          {
            v15 = v14;
          }

          else
          {
            v15 = "";
          }

          std::string::basic_string[abi:nn200100]<0>(&__p, v15);
          if (v8)
          {
            v16 = *(*(*a1 + 1000 * i + 8) + v8 - 104);
          }

          else
          {
            v16 = 0;
          }

          v39 = v16;
          KB::LanguageModelContext::linguistic_token(&__p, &v39, &v45);
          if (v44 < 0)
          {
            operator delete(__p);
          }

          language_modeling::v1::CompletionStem::try_push_back();
          LODWORD(__p) = 0x100000;
          WORD2(__p) = 0;
          BYTE6(__p) = 0;
          v42 = 0;
          v43 = 0;
          KB::String::operator=(&v49, &__p);
          if (v42 && BYTE6(__p) == 1)
          {
            free(v42);
          }

          if (SHIBYTE(v47) < 0)
          {
            operator delete(v45);
          }
        }

        else
        {
          KB::Word::capitalized_string(&v45, v10);
          v12 = v46;
          if (!v46)
          {
            v12 = &v47;
          }

          if (v45)
          {
            v13 = v12;
          }

          else
          {
            v13 = "";
          }

          KB::String::append(&v49, v13, 0xFFFFuLL);
          if (v46 && BYTE6(v45) == 1)
          {
            free(v46);
          }
        }

        v7 = *a1;
        v17 = v9 + 1;
        v8 += 240;
        v18 = v9 + 2;
        ++v9;
      }

      while (*(*a1 + 1000 * i) > v18);
      if (!v49)
      {
        goto LABEL_45;
      }

      v19 = v17;
      if (v52)
      {
        v20 = v52;
      }

      else
      {
        v20 = v53;
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, v20);
      v21 = (*a1 + 1000 * i);
      if (*v21 <= v19)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v21[1] + 240 * v19 + 136);
      }

      v39 = v22;
      KB::LanguageModelContext::linguistic_token(&__p, &v39, &v45);
      if (v44 < 0)
      {
        operator delete(__p);
      }

      language_modeling::v1::CompletionStem::try_push_back();
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v45);
        if (v3)
        {
LABEL_46:
          std::string::basic_string[abi:nn200100]<0>(&v45, "");
          v48 = 0;
          language_modeling::v1::CompletionStem::try_push_back();
          if (SHIBYTE(v47) < 0)
          {
            operator delete(v45);
          }
        }
      }

      else
      {
LABEL_45:
        if (v3)
        {
          goto LABEL_46;
        }
      }

      language_modeling::v1::CompletionStem::set_unique_id(v40);
      language_modeling::v1::CompletionStem::set_score(v40, *(*a1 + 1000 * i + 748) / 2.30258509 / *(*a1 + 1000 * i + 760));
      v23 = v4[1];
      v24 = v4[2];
      if (v23 >= v24)
      {
        v26 = (v23 - *v4) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v27 = v24 - *v4;
        v28 = v27 >> 2;
        if (v27 >> 2 <= (v26 + 1))
        {
          v28 = v26 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v29);
        }

        v30 = 8 * v26;
        language_modeling::v1::CompletionStem::CompletionStem((8 * v26), v40);
        v33 = v4;
        v32 = *v4;
        v31 = v33[1];
        v34 = (v30 + v32 - v31);
        if (v31 != v32)
        {
          v35 = v32;
          do
          {
            language_modeling::v1::CompletionStem::CompletionStem();
            v35 = (v35 + 8);
          }

          while (v35 != v31);
          v3 = a3;
          do
          {
            language_modeling::v1::CompletionStem::~CompletionStem(v32);
            v32 = (v32 + 8);
          }

          while (v32 != v31);
        }

        v4 = a2;
        v36 = *a2;
        v25 = v30 + 8;
        *a2 = v34;
        a2[1] = (v30 + 8);
        a2[2] = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        v25 = language_modeling::v1::CompletionStem::CompletionStem(v23, v40) + 8;
      }

      v4[1] = v25;
      if (v52)
      {
        if (v51 == 1)
        {
          free(v52);
        }
      }

      language_modeling::v1::CompletionStem::~CompletionStem(v40);
    }
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](void ****a1)
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
        if (*(v4 - 8) == 1)
        {
          language_modeling::v1::InlineCompletion::~InlineCompletion((v4 - 2));
        }

        if (*(v4 - 33) < 0)
        {
          operator delete(*(v4 - 7));
        }

        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 10;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        language_modeling::v1::CompletionStem::~CompletionStem((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0,std::allocator<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0>,void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::operator()(uint64_t a1, __int128 **a2, uint64_t a3)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      KB::LanguageModel::PredictionInfo::PredictionInfo(v27, v4, *(a1 + 12));
      v6 = v25;
      if (v25 >= v26)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 5);
        v12 = v11 + 1;
        if (v11 + 1 > 0x199999999999999)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (0x999999999999999ALL * ((v26 - v24) >> 5) > v12)
        {
          v12 = 0x999999999999999ALL * ((v26 - v24) >> 5);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v26 - v24) >> 5) >= 0xCCCCCCCCCCCCCCLL)
        {
          v13 = 0x199999999999999;
        }

        else
        {
          v13 = v12;
        }

        v40[4] = &v24;
        if (v13)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(v13);
        }

        v14 = 32 * ((v25 - v24) >> 5);
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = *v27;
        *(v14 + 16) = v28;
        v27[0] = 0;
        v27[1] = 0;
        v28 = 0;
        v15 = v29;
        *(v14 + 40) = v30;
        *(v14 + 24) = v15;
        v16 = v31;
        *(v14 + 64) = v32;
        *(v14 + 48) = v16;
        v32 = 0;
        v31 = 0uLL;
        v17 = __p;
        *(v14 + 88) = v34;
        *(v14 + 72) = v17;
        v34 = 0;
        __p = 0uLL;
        *(v14 + 96) = 0;
        *(v14 + 104) = 0;
        *(v14 + 112) = 0;
        *(v14 + 96) = v35;
        *(v14 + 112) = v36;
        v35 = 0uLL;
        v36 = 0;
        *(v14 + 120) = 0;
        *(v14 + 128) = 0;
        *(v14 + 136) = 0;
        *(v14 + 120) = v37;
        *(v14 + 136) = v38;
        v37 = 0uLL;
        v38 = 0;
        *(v14 + 144) = v39;
        v10 = (160 * v11 + 160);
        v18 = 160 * v11 + v24 - v25;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>,KB::LanguageModel::PredictionInfo*>(v24, v25, v14 + v24 - v25);
        v19 = v24;
        v20 = v26;
        v24 = v18;
        v25 = v10;
        v26 = 0;
        v40[2] = v19;
        v40[3] = v20;
        v40[0] = v19;
        v40[1] = v19;
        std::__split_buffer<KB::LanguageModel::PredictionInfo>::~__split_buffer(v40);
      }

      else
      {
        *v25 = 0;
        v6[1] = 0;
        v6[2] = 0;
        *v6 = *v27;
        v6[2] = v28;
        v27[0] = 0;
        v27[1] = 0;
        v28 = 0;
        v7 = v30;
        *(v6 + 3) = v29;
        *(v6 + 10) = v7;
        v8 = v32;
        *(v6 + 3) = v31;
        v6[8] = v8;
        v31 = 0uLL;
        v9 = __p;
        v6[11] = v34;
        v6[12] = 0;
        *(v6 + 9) = v9;
        v34 = 0;
        v32 = 0;
        __p = 0uLL;
        v6[13] = 0;
        v6[14] = 0;
        *(v6 + 6) = v35;
        v35 = 0uLL;
        v6[14] = v36;
        v6[15] = 0;
        v36 = 0;
        v6[16] = 0;
        v6[17] = 0;
        *(v6 + 15) = v37;
        v6[17] = v38;
        v37 = 0uLL;
        v38 = 0;
        *(v6 + 9) = v39;
        v10 = v6 + 20;
      }

      v25 = v10;
      v40[0] = &v37;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v40);
      v40[0] = &v35;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v40);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31);
      }

      if (v27[0])
      {
        v27[1] = v27[0];
        operator delete(v27[0]);
      }

      v4 += 5;
    }

    while (v4 != v5);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(*v21 + 48))(v21, &v24, a1 + 48, a3);
    v27[0] = &v24;
    std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](v27);
  }

  else
  {
    v22 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0,std::allocator<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0>,void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::destroy_deallocate(v22);
  }
}

void std::__function::__func<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0,std::allocator<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0>,void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::destroy_deallocate(uint64_t a1)
{
  KB::Candidate::~Candidate((a1 + 48));
  std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0,std::allocator<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0>,void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::destroy(uint64_t a1)
{
  KB::Candidate::~Candidate((a1 + 48));

  return std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](a1 + 16);
}

KB::Candidate *std::__function::__func<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0,std::allocator<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0>,void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_283FD71E0;
  a2[1] = *(a1 + 8);
  std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100]((a2 + 2), a1 + 16);

  return KB::Candidate::Candidate((a2 + 6), (a1 + 48));
}

void std::__function::__func<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0,std::allocator<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0>,void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__func(void *a1)
{
  *a1 = &unk_283FD71E0;
  v1 = a1 + 2;
  KB::Candidate::~Candidate((a1 + 6));
  std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v1);

  JUMPOUT(0x2318BE270);
}

void *std::__function::__func<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0,std::allocator<KB::LanguageModelStr::inline_completions_with_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>)::$_0>,void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__func(void *a1)
{
  *a1 = &unk_283FD71E0;
  v2 = a1 + 2;
  KB::Candidate::~Candidate((a1 + 6));
  std::__function::__value_func<void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v2);
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(unint64_t a1)
{
  if (a1 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

__n128 std::allocator_traits<std::allocator<KB::LanguageModel::PredictionInfo>>::construct[abi:nn200100]<KB::LanguageModel::PredictionInfo,KB::LanguageModel::PredictionInfo,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v2;
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>,KB::LanguageModel::PredictionInfo*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      std::allocator_traits<std::allocator<KB::LanguageModel::PredictionInfo>>::construct[abi:nn200100]<KB::LanguageModel::PredictionInfo,KB::LanguageModel::PredictionInfo,void,0>(a3, v6);
      v6 += 160;
      a3 += 160;
    }

    while (v6 != a2);
    do
    {
      std::allocator_traits<std::allocator<KB::LanguageModel::PredictionInfo>>::destroy[abi:nn200100]<KB::LanguageModel::PredictionInfo,void,0>(v5);
      v5 += 160;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<KB::LanguageModel::PredictionInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    std::allocator_traits<std::allocator<KB::LanguageModel::PredictionInfo>>::destroy[abi:nn200100]<KB::LanguageModel::PredictionInfo,void,0>(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<KB::LanguageModel::PredictionInfo>>::destroy[abi:nn200100]<KB::LanguageModel::PredictionInfo,void,0>(uint64_t a1)
{
  v3 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void KB::LanguageModelStr::predictions_with_stems(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a1 + 16))(a1) && a2[1] != *a2)
  {
    kdebug_trace();
    log = kac_get_log();
    v8 = os_signpost_id_make_with_pointer(log, (a1 ^ 0xCC));
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, log, OS_SIGNPOST_INTERVAL_BEGIN, v9, "kbdManager.languageModel.toucanGenerateCompletionsAndPredictions", &unk_22CCA4FEF, buf, 2u);
      }
    }

    v10 = *(a1 + 184);
    if (v10)
    {
      atomic_store(1u, (v10 + 760));
    }

    std::mutex::lock(*(a1 + 136));
    v11 = *(a1 + 184);
    if (v11)
    {
      atomic_store(0, (v11 + 760));
    }

    language_modeling::v1::LanguageModelSession::enumeratePredictions();
    std::mutex::unlock(*(a1 + 136));
    kdebug_trace();
    v12 = kac_get_log();
    v13 = os_signpost_id_make_with_pointer(v12, (a1 ^ 0xCC));
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v12, OS_SIGNPOST_INTERVAL_END, v14, "kbdManager.languageModel.toucanGenerateCompletionsAndPredictions", &unk_22CCA4FEF, v15, 2u);
      }
    }
  }
}

uint64_t KB::LanguageModelStr::completions(uint64_t a1, const KB::Candidate **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = (*(*a1 + 144))(a1);
  if (a6 == 1 && v11)
  {
    if (a2[1] != *a2)
    {
      std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v26, a4);
      v12 = (*(*a1 + 512))(a1, a2, a3, v26, 0);
      std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v26);
      return v12 & 1;
    }

LABEL_6:
    v12 = 0;
    return v12 & 1;
  }

  if ((*(*a1 + 144))(a1))
  {
    goto LABEL_6;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(&v20, *a2, a2[1], 0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3));
  v13 = v20;
  v14 = v21;
  v15 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v21 - v20) >> 3));
  if (v21 == v20)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,false>(v20, v21, v16, 1);
  if (v14 == v13)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v17 = v13;
    do
    {
      KB::Candidate::Candidate(v25, v17);
      KB::Candidate::pop_last_word(v25);
      if (v25[0])
      {
        v24[0] = &unk_283FD70D0;
        v24[1] = v13;
        v24[2] = a4;
        v24[3] = v24;
        KB::Candidate::Candidate(v23, v25);
        memset(v19, 0, sizeof(v19));
        std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate const*,KB::Candidate const*>(v19, v23, v24);
      }

      KB::Candidate::~Candidate(v25);
      v17 = (v17 + 1000);
      v13 = (v13 + 1000);
    }

    while (v17 != v14);
  }

  v25[0] = &v20;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
  return v12 & 1;
}

uint64_t std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(uint64_t *result, const KB::Candidate *a2, const KB::Candidate *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<KB::Candidate>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,false>(KB::Candidate *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v33[123] = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a1;
  v9 = (a1 - 1000);
  --a3;
  while (1)
  {
    v10 = a2 - v8;
    v11 = 0x1CAC083126E978D5 * ((a2 - v8) >> 3);
    if (v11 <= 2)
    {
      break;
    }

    switch(v11)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(v8, (v8 + 1000), (a2 - 125));
        return;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(v8, (v8 + 1000), (v8 + 2000), (a2 - 125));
        return;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(v8, (v8 + 1000), (v8 + 2000), (v8 + 3000), (a2 - 125));
        return;
    }

LABEL_10:
    if (v10 <= 23999)
    {
      if (a4)
      {
        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(v8, a2);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(v8, a2);
      }

      return;
    }

    if (a3 == -1)
    {
      std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,KB::Candidate*>(v8, a2, a2);
      return;
    }

    v12 = v8 + 1000 * (v11 >> 1);
    v13 = (a2 - 125);
    if (v10 < 0x1F401)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(v12, v8, v13);
      if (a4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(v8, v12, v13);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>((v8 + 1000), (v12 - 1000), (a2 - 250));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>((v8 + 2000), (v12 + 1000), (a2 - 375));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>((v12 - 1000), v12, (v12 + 1000));
      KB::Candidate::Candidate(&v31, v8);
      KB::Candidate::operator=(v8, v12);
      KB::Candidate::operator=(v12, &v31);
      KB::Candidate::~Candidate(&v31);
      if (a4)
      {
        goto LABEL_29;
      }
    }

    KB::Candidate::capitalized_string(&v31, v9);
    KB::Candidate::capitalized_string(&v28, v8);
    v14 = v32;
    if (v32)
    {
      v15 = v32;
    }

    else
    {
      v15 = v33;
    }

    v16 = v29;
    if (v29)
    {
      v17 = v29;
    }

    else
    {
      v17 = v30;
    }

    v18 = strcmp(v15, v17);
    if (v16 && BYTE6(v28) == 1)
    {
      free(v16);
      v14 = v32;
    }

    if (v14 && BYTE6(v31) == 1)
    {
      free(v14);
    }

    if ((v18 & 0x80000000) == 0)
    {
      a1 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,KB::Candidate *,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &>(v8, a2);
      a4 = 0;
      goto LABEL_2;
    }

LABEL_29:
    v19 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,KB::Candidate *,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &>(v8, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_34;
    }

    v21 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(v8, v19);
    a1 = (v19 + 125);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>((v19 + 125), a2))
    {
      if (v21)
      {
        goto LABEL_2;
      }

LABEL_34:
      std::__introsort<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,false>(v8, v19, a3, a4 & 1);
      a4 = 0;
      a1 = (v19 + 125);
      goto LABEL_2;
    }

    --a3;
    a2 = v19;
    if (v21)
    {
      return;
    }
  }

  if (v11 < 2)
  {
    return;
  }

  if (v11 != 2)
  {
    goto LABEL_10;
  }

  v22 = (a2 - 125);
  KB::Candidate::capitalized_string(&v31, v22);
  KB::Candidate::capitalized_string(&v28, v8);
  v23 = v32;
  if (v32)
  {
    v24 = v32;
  }

  else
  {
    v24 = v33;
  }

  v25 = v29;
  if (v29)
  {
    v26 = v29;
  }

  else
  {
    v26 = v30;
  }

  v27 = strcmp(v24, v26);
  if (v25 && BYTE6(v28) == 1)
  {
    free(v25);
    v23 = v32;
  }

  if (v23 && BYTE6(v31) == 1)
  {
    free(v23);
  }

  if (v27 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, v22);
  }
}

void std::__function::__func<KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_1,std::allocator<KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_1>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, KB::LanguageModelContext *a4)
{
  v25[2] = *MEMORY[0x277D85DE8];
  KB::LanguageModelContext::LanguageModelContext(&v16, a4);
  v7 = *(a2 + 120);
  if (*(a2 + 128) != v7)
  {
    if (v7[23] < 0)
    {
      v7 = *v7;
    }

    KB::String::String(&v23, v7);
    v8 = *(*(a1 + 8) + 8) + 240 * **(a1 + 8);
    v9 = *(v8 - 240);
    if (v9 <= v23)
    {
      v10 = (v24 ? v24 : v25);
      v11 = *(v8 - 232);
      v12 = v8 - 224;
      v13 = (v11 ? v11 : v12);
      if (!strncasecmp(v10, v13, v9))
      {
        v14 = *(*(a1 + 16) + 24);
        if (!v14)
        {
          v15 = std::__throw_bad_function_call[abi:nn200100]();
          std::__function::__func<KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_1,std::allocator<KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_1>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy_deallocate(v15);
          return;
        }

        (*(*v14 + 48))(v14, a2, a3, &v16);
      }
    }

    if (v24 && BYTE6(v23) == 1)
    {
      free(v24);
    }
  }

  v23 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v23);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v21);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v20);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }
}

__n128 std::__function::__func<KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_1,std::allocator<KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_1>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD70D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(uint64_t *a1, uint64_t *a2)
{
  v4[125] = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(v4, a1);
  KB::Candidate::operator=(a1, a2);
  KB::Candidate::operator=(a2, v4);
  KB::Candidate::~Candidate(v4);
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(KB::Candidate *a1, KB::Candidate *a2, KB::Candidate *a3)
{
  v39[2] = *MEMORY[0x277D85DE8];
  KB::Candidate::capitalized_string(&v37, a2);
  KB::Candidate::capitalized_string(&v34, a1);
  v6 = v38;
  if (v38)
  {
    v7 = v38;
  }

  else
  {
    v7 = v39;
  }

  v8 = v35;
  if (v35)
  {
    v9 = v35;
  }

  else
  {
    v9 = v36;
  }

  v10 = strcmp(v7, v9);
  if (v8)
  {
    v11 = BYTE6(v34) == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    free(v8);
    v6 = v38;
  }

  if (v6 && BYTE6(v37) == 1)
  {
    free(v6);
  }

  if (v10 < 0)
  {
    KB::Candidate::capitalized_string(&v37, a3);
    KB::Candidate::capitalized_string(&v34, a2);
    v24 = v38;
    if (v38)
    {
      v25 = v38;
    }

    else
    {
      v25 = v39;
    }

    v26 = v35;
    if (v35)
    {
      v27 = v35;
    }

    else
    {
      v27 = v36;
    }

    v28 = strcmp(v25, v27);
    if (v26 && BYTE6(v34) == 1)
    {
      free(v26);
      v24 = v38;
    }

    if (v24 && BYTE6(v37) == 1)
    {
      free(v24);
    }

    v22 = a1;
    if ((v28 & 0x80000000) == 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
      KB::Candidate::capitalized_string(&v37, a3);
      KB::Candidate::capitalized_string(&v34, a2);
      v29 = v38;
      if (v38)
      {
        v30 = v38;
      }

      else
      {
        v30 = v39;
      }

      v31 = v35;
      if (v35)
      {
        v32 = v35;
      }

      else
      {
        v32 = v36;
      }

      v33 = strcmp(v30, v32);
      if (v31 && BYTE6(v34) == 1)
      {
        free(v31);
        v29 = v38;
      }

      if (v29 && BYTE6(v37) == 1)
      {
        free(v29);
      }

      if ((v33 & 0x80000000) == 0)
      {
        return;
      }

      v22 = a2;
    }

    v23 = a3;
    goto LABEL_72;
  }

  KB::Candidate::capitalized_string(&v37, a3);
  KB::Candidate::capitalized_string(&v34, a2);
  v12 = v38;
  if (v38)
  {
    v13 = v38;
  }

  else
  {
    v13 = v39;
  }

  v14 = v35;
  if (v35)
  {
    v15 = v35;
  }

  else
  {
    v15 = v36;
  }

  v16 = strcmp(v13, v15);
  if (v14 && BYTE6(v34) == 1)
  {
    free(v14);
    v12 = v38;
  }

  if (v12 && BYTE6(v37) == 1)
  {
    free(v12);
  }

  if (v16 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
    KB::Candidate::capitalized_string(&v37, a2);
    KB::Candidate::capitalized_string(&v34, a1);
    v17 = v38;
    if (v38)
    {
      v18 = v38;
    }

    else
    {
      v18 = v39;
    }

    v19 = v35;
    if (v35)
    {
      v20 = v35;
    }

    else
    {
      v20 = v36;
    }

    v21 = strcmp(v18, v20);
    if (v19 && BYTE6(v34) == 1)
    {
      free(v19);
      v17 = v38;
    }

    if (v17)
    {
      if (BYTE6(v37) == 1)
      {
        free(v17);
      }
    }

    if (v21 < 0)
    {
      v22 = a1;
      v23 = a2;
LABEL_72:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v22, v23);
    }
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(KB::Candidate *a1, KB::Candidate *a2, KB::Candidate *a3, KB::Candidate *a4)
{
  v28[2] = *MEMORY[0x277D85DE8];
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(a1, a2, a3);
  KB::Candidate::capitalized_string(&v26, a4);
  KB::Candidate::capitalized_string(&v23, a3);
  v8 = v27;
  if (v27)
  {
    v9 = v27;
  }

  else
  {
    v9 = v28;
  }

  v10 = v24;
  if (v24)
  {
    v11 = v24;
  }

  else
  {
    v11 = v25;
  }

  v12 = strcmp(v9, v11);
  if (v10 && BYTE6(v23) == 1)
  {
    free(v10);
    v8 = v27;
  }

  if (v8 && BYTE6(v26) == 1)
  {
    free(v8);
  }

  if (v12 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
    KB::Candidate::capitalized_string(&v26, a3);
    KB::Candidate::capitalized_string(&v23, a2);
    v13 = v27;
    if (v27)
    {
      v14 = v27;
    }

    else
    {
      v14 = v28;
    }

    v15 = v24;
    if (v24)
    {
      v16 = v24;
    }

    else
    {
      v16 = v25;
    }

    v17 = strcmp(v14, v16);
    if (v15 && BYTE6(v23) == 1)
    {
      free(v15);
      v13 = v27;
    }

    if (v13 && BYTE6(v26) == 1)
    {
      free(v13);
    }

    if (v17 < 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      KB::Candidate::capitalized_string(&v26, a2);
      KB::Candidate::capitalized_string(&v23, a1);
      v18 = v27;
      if (v27)
      {
        v19 = v27;
      }

      else
      {
        v19 = v28;
      }

      v20 = v24;
      if (v24)
      {
        v21 = v24;
      }

      else
      {
        v21 = v25;
      }

      v22 = strcmp(v19, v21);
      if (v20 && BYTE6(v23) == 1)
      {
        free(v20);
        v18 = v27;
      }

      if (v18 && BYTE6(v26) == 1)
      {
        free(v18);
      }

      if (v22 < 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(KB::Candidate *a1, KB::Candidate *a2, KB::Candidate *a3, KB::Candidate *a4, KB::Candidate *a5)
{
  v35[2] = *MEMORY[0x277D85DE8];
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(a1, a2, a3, a4);
  KB::Candidate::capitalized_string(&v33, a5);
  KB::Candidate::capitalized_string(&v30, a4);
  v10 = v34;
  if (v34)
  {
    v11 = v34;
  }

  else
  {
    v11 = v35;
  }

  v12 = v31;
  if (v31)
  {
    v13 = v31;
  }

  else
  {
    v13 = v32;
  }

  v14 = strcmp(v11, v13);
  if (v12 && BYTE6(v30) == 1)
  {
    free(v12);
    v10 = v34;
  }

  if (v10 && BYTE6(v33) == 1)
  {
    free(v10);
  }

  if (v14 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a4, a5);
    KB::Candidate::capitalized_string(&v33, a4);
    KB::Candidate::capitalized_string(&v30, a3);
    v15 = v34;
    if (v34)
    {
      v16 = v34;
    }

    else
    {
      v16 = v35;
    }

    v17 = v31;
    if (v31)
    {
      v18 = v31;
    }

    else
    {
      v18 = v32;
    }

    v19 = strcmp(v16, v18);
    if (v17 && BYTE6(v30) == 1)
    {
      free(v17);
      v15 = v34;
    }

    if (v15 && BYTE6(v33) == 1)
    {
      free(v15);
    }

    if (v19 < 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
      KB::Candidate::capitalized_string(&v33, a3);
      KB::Candidate::capitalized_string(&v30, a2);
      v20 = v34;
      if (v34)
      {
        v21 = v34;
      }

      else
      {
        v21 = v35;
      }

      v22 = v31;
      if (v31)
      {
        v23 = v31;
      }

      else
      {
        v23 = v32;
      }

      v24 = strcmp(v21, v23);
      if (v22 && BYTE6(v30) == 1)
      {
        free(v22);
        v20 = v34;
      }

      if (v20 && BYTE6(v33) == 1)
      {
        free(v20);
      }

      if (v24 < 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
        KB::Candidate::capitalized_string(&v33, a2);
        KB::Candidate::capitalized_string(&v30, a1);
        v25 = v34;
        if (v34)
        {
          v26 = v34;
        }

        else
        {
          v26 = v35;
        }

        v27 = v31;
        if (v31)
        {
          v28 = v31;
        }

        else
        {
          v28 = v32;
        }

        v29 = strcmp(v26, v28);
        if (v27 && BYTE6(v30) == 1)
        {
          free(v27);
          v25 = v34;
        }

        if (v25 && BYTE6(v33) == 1)
        {
          free(v25);
        }

        if (v29 < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
        }
      }
    }
  }
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(uint64_t *a1, uint64_t *a2)
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v2 = a2;
    v4 = (a1 + 125);
    if (a1 + 125 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        KB::Candidate::capitalized_string(&v22, v4);
        KB::Candidate::capitalized_string(&v28, v7);
        v8 = v23;
        if (v23)
        {
          v9 = v23;
        }

        else
        {
          v9 = &v24;
        }

        v10 = v29;
        if (v29)
        {
          v11 = v29;
        }

        else
        {
          v11 = v30;
        }

        v12 = strcmp(v9, v11);
        if (v10)
        {
          v13 = BYTE6(v28) == 1;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          free(v10);
          v8 = v23;
        }

        if (v8 && BYTE6(v22) == 1)
        {
          free(v8);
        }

        if (v12 < 0)
        {
          KB::Candidate::Candidate(&v22, v6);
          v14 = v5;
          while (1)
          {
            KB::Candidate::operator=((a1 + v14 + 1000), (a1 + v14));
            if (!v14)
            {
              break;
            }

            KB::Candidate::capitalized_string(&v28, &v22);
            KB::Candidate::capitalized_string(&v25, (a1 + v14 - 1000));
            v15 = v29;
            if (v29)
            {
              v16 = v29;
            }

            else
            {
              v16 = v30;
            }

            v17 = v26;
            if (v26)
            {
              v18 = v26;
            }

            else
            {
              v18 = &v27;
            }

            v19 = strcmp(v16, v18);
            if (v17 && BYTE6(v25) == 1)
            {
              free(v17);
              v15 = v29;
            }

            if (v15)
            {
              if (BYTE6(v28) == 1)
              {
                free(v15);
              }
            }

            v14 -= 1000;
            if ((v19 & 0x80000000) == 0)
            {
              v20 = (a1 + v14 + 1000);
              goto LABEL_37;
            }
          }

          v20 = a1;
LABEL_37:
          KB::Candidate::operator=(v20, &v22);
          KB::Candidate::~Candidate(&v22);
          v2 = a2;
        }

        v4 = (v6 + 125);
        v5 += 1000;
      }

      while (v6 + 125 != v2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(uint64_t *a1, uint64_t *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v3 = a1;
    v4 = (a1 + 125);
    if (a1 + 125 != a2)
    {
      do
      {
        v5 = v4;
        KB::Candidate::capitalized_string(&v17, v4);
        KB::Candidate::capitalized_string(&v23, v3);
        v6 = v18;
        if (v18)
        {
          v7 = v18;
        }

        else
        {
          v7 = &v19;
        }

        v8 = v24;
        if (v24)
        {
          v9 = v24;
        }

        else
        {
          v9 = v25;
        }

        v10 = strcmp(v7, v9);
        if (v8)
        {
          v11 = BYTE6(v23) == 1;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          free(v8);
          v6 = v18;
        }

        if (v6 && BYTE6(v17) == 1)
        {
          free(v6);
        }

        if (v10 < 0)
        {
          KB::Candidate::Candidate(&v17, v5);
          do
          {
            KB::Candidate::operator=(v3 + 125, v3);
            v3 -= 125;
            KB::Candidate::capitalized_string(&v23, &v17);
            KB::Candidate::capitalized_string(&v20, v3);
            v12 = v24;
            if (v24)
            {
              v13 = v24;
            }

            else
            {
              v13 = v25;
            }

            v14 = v21;
            if (v21)
            {
              v15 = v21;
            }

            else
            {
              v15 = &v22;
            }

            v16 = strcmp(v13, v15);
            if (v14 && BYTE6(v20) == 1)
            {
              free(v14);
              v12 = v24;
            }

            if (v12)
            {
              if (BYTE6(v23) == 1)
              {
                free(v12);
              }
            }
          }

          while (v16 < 0);
          KB::Candidate::operator=(v3 + 125, &v17);
          KB::Candidate::~Candidate(&v17);
        }

        v4 = (v5 + 1000);
        v3 = v5;
      }

      while ((v5 + 1000) != a2);
    }
  }
}

void std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,KB::Candidate*>(KB::Candidate *a1, KB::Candidate *a2, KB::Candidate *a3)
{
  v62[2] = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v6 = a2 - a1;
    v7 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 1001)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = (a1 + 1000 * v8);
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(a1, v7, v10);
        v10 = (v10 - 1000);
        --v9;
      }

      while (v9);
    }

    v50 = a1;
    v11 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        KB::Candidate::capitalized_string(&v54, v12);
        KB::Candidate::capitalized_string(&v51, v50);
        v13 = v55;
        if (v55)
        {
          v14 = v55;
        }

        else
        {
          v14 = v56;
        }

        v15 = v52;
        if (v52)
        {
          v16 = v52;
        }

        else
        {
          v16 = &v53;
        }

        v17 = strcmp(v14, v16);
        if (v15)
        {
          v18 = BYTE6(v51) == 1;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          free(v15);
          v13 = v55;
        }

        if (v13 && BYTE6(v54) == 1)
        {
          free(v13);
        }

        if (v17 < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v12, v50);
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(v50, v7, v50);
        }

        v12 = (v12 + 1000);
      }

      while (v12 != a3);
    }

    v19 = v50;
    if (v6 >= 1001)
    {
      v20 = v11;
      v21 = 0x1CAC083126E978D5 * (v6 >> 3);
      do
      {
        v49 = v20;
        KB::Candidate::Candidate(&v51, v19);
        v22 = 0;
        v23 = v19;
        do
        {
          v24 = &v23[125 * v22];
          v25 = v24 + 125;
          v26 = (2 * v22) | 1;
          v27 = 2 * v22 + 2;
          if (v27 < v21)
          {
            v28 = (v24 + 250);
            KB::Candidate::capitalized_string(&v54, (v24 + 125));
            KB::Candidate::capitalized_string(&v60, v28);
            v29 = v55;
            if (v55)
            {
              v30 = v55;
            }

            else
            {
              v30 = v56;
            }

            v31 = v61;
            if (v61)
            {
              v32 = v61;
            }

            else
            {
              v32 = v62;
            }

            v33 = strcmp(v30, v32);
            if (v31 && BYTE6(v60) == 1)
            {
              free(v31);
              v29 = v55;
            }

            if (v29 && BYTE6(v54) == 1)
            {
              free(v29);
            }

            if (v33 < 0)
            {
              v25 = v28;
              v26 = v27;
            }
          }

          KB::Candidate::operator=(v23, v25);
          v23 = v25;
          v22 = v26;
        }

        while (v26 <= ((v21 - 2) >> 1));
        v20 = v49 - 125;
        if (v25 == v49 - 125)
        {
          KB::Candidate::operator=(v25, &v51);
          v19 = v50;
        }

        else
        {
          KB::Candidate::operator=(v25, v49 - 125);
          KB::Candidate::operator=(v20, &v51);
          v19 = v50;
          v34 = v25 - v50 + 1000;
          if (v34 >= 1001)
          {
            v35 = (0x1CAC083126E978D5 * (v34 >> 3) - 2) >> 1;
            v36 = (v50 + 1000 * v35);
            KB::Candidate::capitalized_string(&v54, v36);
            KB::Candidate::capitalized_string(&v60, v25);
            v37 = v55;
            if (v55)
            {
              v38 = v55;
            }

            else
            {
              v38 = v56;
            }

            v39 = v61;
            if (v61)
            {
              v40 = v61;
            }

            else
            {
              v40 = v62;
            }

            v41 = strcmp(v38, v40);
            if (v39 && BYTE6(v60) == 1)
            {
              free(v39);
              v37 = v55;
            }

            if (v37 && BYTE6(v54) == 1)
            {
              free(v37);
            }

            if (v41 < 0)
            {
              KB::Candidate::Candidate(&v54, v25);
              do
              {
                v42 = v36;
                KB::Candidate::operator=(v25, v36);
                if (!v35)
                {
                  break;
                }

                v35 = (v35 - 1) >> 1;
                v36 = (v50 + 1000 * v35);
                KB::Candidate::capitalized_string(&v60, v36);
                KB::Candidate::capitalized_string(&v57, &v54);
                v43 = v61;
                if (v61)
                {
                  v44 = v61;
                }

                else
                {
                  v44 = v62;
                }

                v45 = v58;
                if (v58)
                {
                  v46 = v58;
                }

                else
                {
                  v46 = &v59;
                }

                v47 = strcmp(v44, v46);
                if (v45 && BYTE6(v57) == 1)
                {
                  free(v45);
                  v43 = v61;
                }

                if (v43)
                {
                  if (BYTE6(v60) == 1)
                  {
                    free(v43);
                  }
                }

                v25 = v42;
              }

              while (v47 < 0);
              KB::Candidate::operator=(v42, &v54);
              KB::Candidate::~Candidate(&v54);
            }
          }
        }

        KB::Candidate::~Candidate(&v51);
      }

      while (v21-- > 2);
    }
  }
}

KB::Candidate *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,KB::Candidate *,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &>(uint64_t *a1, KB::Candidate *a2)
{
  v47[2] = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(v41, a1);
  KB::Candidate::capitalized_string(&v45, v41);
  KB::Candidate::capitalized_string(&v42, (a2 - 1000));
  v4 = v46;
  if (v46)
  {
    v5 = v46;
  }

  else
  {
    v5 = v47;
  }

  v6 = v43;
  if (v43)
  {
    v7 = v43;
  }

  else
  {
    v7 = v44;
  }

  v8 = strcmp(v5, v7);
  if (v6 && BYTE6(v42) == 1)
  {
    free(v6);
    v4 = v46;
  }

  if (v4 && BYTE6(v45) == 1)
  {
    free(v4);
  }

  if (v8 < 0)
  {
    v10 = a1;
    do
    {
      v10 = (v10 + 1000);
      KB::Candidate::capitalized_string(&v45, v41);
      KB::Candidate::capitalized_string(&v42, v10);
      v16 = v46;
      if (v46)
      {
        v17 = v46;
      }

      else
      {
        v17 = v47;
      }

      v18 = v43;
      if (v43)
      {
        v19 = v43;
      }

      else
      {
        v19 = v44;
      }

      v20 = strcmp(v17, v19);
      if (v18)
      {
        v21 = BYTE6(v42) == 1;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        free(v18);
        v16 = v46;
      }

      if (v16 && BYTE6(v45) == 1)
      {
        free(v16);
      }
    }

    while ((v20 & 0x80000000) == 0);
  }

  else
  {
    v9 = a1 + 125;
    do
    {
      v10 = v9;
      if (v9 >= a2)
      {
        break;
      }

      KB::Candidate::capitalized_string(&v45, v41);
      KB::Candidate::capitalized_string(&v42, v10);
      v11 = v46;
      if (v46)
      {
        v12 = v46;
      }

      else
      {
        v12 = v47;
      }

      v13 = v43;
      if (v43)
      {
        v14 = v43;
      }

      else
      {
        v14 = v44;
      }

      v15 = strcmp(v12, v14);
      if (v13 && BYTE6(v42) == 1)
      {
        free(v13);
        v11 = v46;
      }

      if (v11 && BYTE6(v45) == 1)
      {
        free(v11);
      }

      v9 = (v10 + 1000);
    }

    while ((v15 & 0x80000000) == 0);
  }

  if (v10 < a2)
  {
    do
    {
      a2 = (a2 - 1000);
      KB::Candidate::capitalized_string(&v45, v41);
      KB::Candidate::capitalized_string(&v42, a2);
      v22 = v46;
      if (v46)
      {
        v23 = v46;
      }

      else
      {
        v23 = v47;
      }

      v24 = v43;
      if (v43)
      {
        v25 = v43;
      }

      else
      {
        v25 = v44;
      }

      v26 = strcmp(v23, v25);
      if (v24)
      {
        v27 = BYTE6(v42) == 1;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        free(v24);
        v22 = v46;
      }

      if (v22 && BYTE6(v45) == 1)
      {
        free(v22);
      }
    }

    while (v26 < 0);
  }

  while (v10 < a2)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v10, a2);
    do
    {
      v10 = (v10 + 1000);
      KB::Candidate::capitalized_string(&v45, v41);
      KB::Candidate::capitalized_string(&v42, v10);
      v28 = v46;
      if (v46)
      {
        v29 = v46;
      }

      else
      {
        v29 = v47;
      }

      v30 = v43;
      if (v43)
      {
        v31 = v43;
      }

      else
      {
        v31 = v44;
      }

      v32 = strcmp(v29, v31);
      if (v30)
      {
        v33 = BYTE6(v42) == 1;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        free(v30);
        v28 = v46;
      }

      if (v28 && BYTE6(v45) == 1)
      {
        free(v28);
      }
    }

    while ((v32 & 0x80000000) == 0);
    do
    {
      a2 = (a2 - 1000);
      KB::Candidate::capitalized_string(&v45, v41);
      KB::Candidate::capitalized_string(&v42, a2);
      v34 = v46;
      if (v46)
      {
        v35 = v46;
      }

      else
      {
        v35 = v47;
      }

      v36 = v43;
      if (v43)
      {
        v37 = v43;
      }

      else
      {
        v37 = v44;
      }

      v38 = strcmp(v35, v37);
      if (v36)
      {
        v39 = BYTE6(v42) == 1;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        free(v36);
        v34 = v46;
      }

      if (v34 && BYTE6(v45) == 1)
      {
        free(v34);
      }
    }

    while (v38 < 0);
  }

  if ((v10 - 1000) != a1)
  {
    KB::Candidate::operator=(a1, v10 - 125);
  }

  KB::Candidate::operator=(v10 - 125, v41);
  KB::Candidate::~Candidate(v41);
  return v10;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,KB::Candidate *,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &>(KB::Candidate *a1, KB::Candidate *a2)
{
  v45[2] = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(v39, a1);
  v4 = a1;
  do
  {
    v4 = (v4 + 1000);
    KB::Candidate::capitalized_string(&v43, v4);
    KB::Candidate::capitalized_string(&v40, v39);
    v5 = v44;
    if (v44)
    {
      v6 = v44;
    }

    else
    {
      v6 = v45;
    }

    v7 = v41;
    if (v41)
    {
      v8 = v41;
    }

    else
    {
      v8 = v42;
    }

    v9 = strcmp(v6, v8);
    if (v7)
    {
      v10 = BYTE6(v40) == 1;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      free(v7);
      v5 = v44;
    }

    if (v5 && BYTE6(v43) == 1)
    {
      free(v5);
    }
  }

  while (v9 < 0);
  v11 = (v4 - 1000);
  v38 = a1;
  if ((v4 - 1000) == a1)
  {
    do
    {
      if (v4 >= a2)
      {
        break;
      }

      a2 = (a2 - 1000);
      KB::Candidate::capitalized_string(&v43, a2);
      KB::Candidate::capitalized_string(&v40, v39);
      v18 = v44;
      if (v44)
      {
        v19 = v44;
      }

      else
      {
        v19 = v45;
      }

      v20 = v41;
      if (v41)
      {
        v21 = v41;
      }

      else
      {
        v21 = v42;
      }

      v22 = strcmp(v19, v21);
      if (v20 && BYTE6(v40) == 1)
      {
        free(v20);
        v18 = v44;
      }

      if (v18 && BYTE6(v43) == 1)
      {
        free(v18);
      }
    }

    while ((v22 & 0x80000000) == 0);
  }

  else
  {
    do
    {
      a2 = (a2 - 1000);
      KB::Candidate::capitalized_string(&v43, a2);
      KB::Candidate::capitalized_string(&v40, v39);
      v12 = v44;
      if (v44)
      {
        v13 = v44;
      }

      else
      {
        v13 = v45;
      }

      v14 = v41;
      if (v41)
      {
        v15 = v41;
      }

      else
      {
        v15 = v42;
      }

      v16 = strcmp(v13, v15);
      if (v14)
      {
        v17 = BYTE6(v40) == 1;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        free(v14);
        v12 = v44;
      }

      if (v12 && BYTE6(v43) == 1)
      {
        free(v12);
      }
    }

    while ((v16 & 0x80000000) == 0);
  }

  if (v4 < a2)
  {
    v23 = v4;
    v24 = a2;
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v23, v24);
      do
      {
        v23 += 125;
        KB::Candidate::capitalized_string(&v43, v23);
        KB::Candidate::capitalized_string(&v40, v39);
        v25 = v44;
        if (v44)
        {
          v26 = v44;
        }

        else
        {
          v26 = v45;
        }

        v27 = v41;
        if (v41)
        {
          v28 = v41;
        }

        else
        {
          v28 = v42;
        }

        v29 = strcmp(v26, v28);
        if (v27)
        {
          v30 = BYTE6(v40) == 1;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          free(v27);
          v25 = v44;
        }

        if (v25 && BYTE6(v43) == 1)
        {
          free(v25);
        }
      }

      while (v29 < 0);
      v11 = v23 - 125;
      do
      {
        v24 -= 125;
        KB::Candidate::capitalized_string(&v43, v24);
        KB::Candidate::capitalized_string(&v40, v39);
        v31 = v44;
        if (v44)
        {
          v32 = v44;
        }

        else
        {
          v32 = v45;
        }

        v33 = v41;
        if (v41)
        {
          v34 = v41;
        }

        else
        {
          v34 = v42;
        }

        v35 = strcmp(v32, v34);
        if (v33)
        {
          v36 = BYTE6(v40) == 1;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          free(v33);
          v31 = v44;
        }

        if (v31 && BYTE6(v43) == 1)
        {
          free(v31);
        }
      }

      while ((v35 & 0x80000000) == 0);
    }

    while (v23 < v24);
  }

  if (v11 != v38)
  {
    KB::Candidate::operator=(v38, v11);
  }

  KB::Candidate::operator=(v11, v39);
  KB::Candidate::~Candidate(v39);
  return v11;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(uint64_t a1, KB::Candidate *a2)
{
  v2 = a2;
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(a1, (a1 + 1000), (a2 - 1000));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(a1, (a1 + 1000), (a1 + 2000), (a2 - 1000));
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(a1, (a1 + 1000), (a1 + 2000), (a1 + 3000), (a2 - 1000));
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
      KB::Candidate::capitalized_string(&v30, (a2 - 1000));
      KB::Candidate::capitalized_string(&v36, a1);
      v5 = v31;
      if (v31)
      {
        v6 = v31;
      }

      else
      {
        v6 = v32;
      }

      v7 = v37;
      if (v37)
      {
        v8 = v37;
      }

      else
      {
        v8 = v38;
      }

      v9 = strcmp(v6, v8);
      if (v7 && BYTE6(v36) == 1)
      {
        free(v7);
        v5 = v31;
      }

      if (v5 && BYTE6(v30) == 1)
      {
        free(v5);
      }

      if (v9 < 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v2 - 125);
      }

      return 1;
    }
  }

  v10 = (a1 + 2000);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*,0>(a1, (a1 + 1000), (a1 + 2000));
  v11 = (a1 + 3000);
  if ((a1 + 3000) != v2)
  {
    v12 = 0;
    v13 = 0;
    v29 = v2;
    do
    {
      KB::Candidate::capitalized_string(&v30, v11);
      KB::Candidate::capitalized_string(&v36, v10);
      v14 = v31;
      if (v31)
      {
        v15 = v31;
      }

      else
      {
        v15 = v32;
      }

      v16 = v37;
      if (v37)
      {
        v17 = v37;
      }

      else
      {
        v17 = v38;
      }

      v18 = strcmp(v15, v17);
      if (v16)
      {
        v19 = BYTE6(v36) == 1;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        free(v16);
        v14 = v31;
      }

      if (v14 && BYTE6(v30) == 1)
      {
        free(v14);
      }

      if (v18 < 0)
      {
        KB::Candidate::Candidate(&v30, v11);
        v20 = v12;
        while (1)
        {
          KB::Candidate::operator=((a1 + v20 + 3000), (a1 + v20 + 2000));
          if (v20 == -2000)
          {
            break;
          }

          KB::Candidate::capitalized_string(&v36, &v30);
          KB::Candidate::capitalized_string(&v33, (a1 + v20 + 1000));
          v21 = v37;
          if (v37)
          {
            v22 = v37;
          }

          else
          {
            v22 = v38;
          }

          v23 = v34;
          if (v34)
          {
            v24 = v34;
          }

          else
          {
            v24 = &v35;
          }

          v25 = strcmp(v22, v24);
          if (v23 && BYTE6(v33) == 1)
          {
            free(v23);
            v21 = v37;
          }

          if (v21 && BYTE6(v36) == 1)
          {
            free(v21);
          }

          v20 -= 1000;
          if ((v25 & 0x80000000) == 0)
          {
            v26 = (a1 + v20 + 3000);
            goto LABEL_58;
          }
        }

        v26 = a1;
LABEL_58:
        KB::Candidate::operator=(v26, &v30);
        ++v13;
        v2 = v29;
        if (v13 == 8)
        {
          v27 = (v11 + 1000) == v29;
          KB::Candidate::~Candidate(&v30);
          return v27;
        }

        KB::Candidate::~Candidate(&v30);
      }

      v10 = v11;
      v12 += 1000;
      v11 = (v11 + 1000);
    }

    while (v11 != v2);
  }

  return 1;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelStr::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0 &,KB::Candidate*>(uint64_t a1, uint64_t a2, KB::Candidate *a3)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v34 = v3 >> 1;
    if ((v3 >> 1) >= 0x1CAC083126E978D5 * ((a3 - a1) >> 3))
    {
      v6 = a2;
      v7 = (0x395810624DD2F1AALL * ((a3 - a1) >> 3)) | 1;
      v8 = a1 + 1000 * v7;
      v9 = 0x395810624DD2F1AALL * ((a3 - a1) >> 3) + 2;
      if (v9 < a2)
      {
        KB::Candidate::capitalized_string(&v35, (a1 + 1000 * v7));
        KB::Candidate::capitalized_string(&v41, (v8 + 1000));
        v10 = v36;
        if (v36)
        {
          v11 = v36;
        }

        else
        {
          v11 = v37;
        }

        v12 = v42;
        if (v42)
        {
          v13 = v42;
        }

        else
        {
          v13 = v43;
        }

        v14 = strcmp(v11, v13);
        if (v12 && BYTE6(v41) == 1)
        {
          free(v12);
          v10 = v36;
        }

        if (v10 && BYTE6(v35) == 1)
        {
          free(v10);
        }

        if (v14 < 0)
        {
          v8 += 1000;
          v7 = v9;
        }

        v6 = a2;
      }

      KB::Candidate::capitalized_string(&v35, v8);
      KB::Candidate::capitalized_string(&v41, v4);
      v15 = v36;
      if (v36)
      {
        v16 = v36;
      }

      else
      {
        v16 = v37;
      }

      v17 = v42;
      if (v42)
      {
        v18 = v42;
      }

      else
      {
        v18 = v43;
      }

      v19 = strcmp(v16, v18);
      if (v17 && BYTE6(v41) == 1)
      {
        free(v17);
        v15 = v36;
      }

      if (v15 && BYTE6(v35) == 1)
      {
        free(v15);
      }

      if ((v19 & 0x80000000) == 0)
      {
        v33 = a1;
        KB::Candidate::Candidate(&v35, v4);
        do
        {
          v20 = v8;
          KB::Candidate::operator=(v4, v8);
          if (v34 < v7)
          {
            break;
          }

          v21 = (2 * v7) | 1;
          v8 = v33 + 1000 * v21;
          v7 = 2 * v7 + 2;
          if (v7 >= v6)
          {
            v7 = v21;
          }

          else
          {
            KB::Candidate::capitalized_string(&v41, (v33 + 1000 * v21));
            KB::Candidate::capitalized_string(&v38, (v8 + 1000));
            v22 = v42;
            if (v42)
            {
              v23 = v42;
            }

            else
            {
              v23 = v43;
            }

            v24 = v39;
            if (v39)
            {
              v25 = v39;
            }

            else
            {
              v25 = v40;
            }

            v26 = strcmp(v23, v25);
            if (v24 && BYTE6(v38) == 1)
            {
              free(v24);
              v22 = v42;
            }

            if (v22 && BYTE6(v41) == 1)
            {
              free(v22);
            }

            if (v26 >= 0)
            {
              v7 = v21;
            }

            else
            {
              v8 += 1000;
            }

            v6 = a2;
          }

          KB::Candidate::capitalized_string(&v41, v8);
          KB::Candidate::capitalized_string(&v38, &v35);
          v27 = v42;
          if (v42)
          {
            v28 = v42;
          }

          else
          {
            v28 = v43;
          }

          v29 = v39;
          if (v39)
          {
            v30 = v39;
          }

          else
          {
            v30 = v40;
          }

          v31 = strcmp(v28, v30);
          if (v29 && BYTE6(v38) == 1)
          {
            free(v29);
            v27 = v42;
          }

          if (v27)
          {
            if (BYTE6(v41) == 1)
            {
              free(v27);
            }
          }

          v4 = v20;
        }

        while ((v31 & 0x80000000) == 0);
        KB::Candidate::operator=(v20, &v35);
        KB::Candidate::~Candidate(&v35);
      }
    }
  }
}

uint64_t KB::LanguageModelStr::predictions(void **a1, uint64_t *a2, const KB::LanguageModelContext *a3, uint64_t a4, int a5)
{
  v25[125] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v20[0] = a1;
  v20[1] = a3;
  if ((*(*a1 + 18))(a1))
  {
    if (a2[1] != *a2)
    {
      memset(v19, 0, sizeof(v19));
      convert_to_lm_completion_stem(a2, v19, a5);
      v22 = 0;
      operator new();
    }

    v16 = 0;
  }

  else
  {
    v8 = *a2;
    if (*a2 != a2[1])
    {
      KB::LanguageModelContext::LanguageModelContext(v19, a3);
      KB::Candidate::Candidate(v25, v8);
      KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)const::$_2::operator()(v20, v19, v25[0], v25[1], v9);
      KB::LanguageModelStr::cache_key_for_candidate(&v22, v8);
      v10 = a1[42];
      if (v10)
      {
        if (v23)
        {
          v11 = v23;
        }

        else
        {
          v11 = &v24;
        }

        v12 = a1 + 42;
        do
        {
          if (*(v10 + 5))
          {
            v13 = *(v10 + 5);
          }

          else
          {
            v13 = v10 + 48;
          }

          v14 = strcmp(v13, v11);
          if (v14 >= 0)
          {
            v12 = v10;
          }

          v10 = *&v10[(v14 >> 28) & 8];
        }

        while (v10);
        if (a1 + 42 != v12)
        {
          if (v12[5])
          {
            v15 = v12[5];
          }

          else
          {
            v15 = (v12 + 6);
          }

          strcmp(v11, v15);
        }
      }

      operator new();
    }

    v16 = v21;
  }

  return v16 & 1;
}

void KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)const::$_2::operator()(uint64_t *a1, KB::LanguageModelContext *a2, uint64_t a3, KB::String *this, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = this;
    v8 = *a1;
    v9 = 240 * a3;
    do
    {
      if ((*(v5 + 135) & 4) == 0)
      {
        goto LABEL_9;
      }

      WORD2(v14) = 0;
      BYTE6(v14) = 0;
      v15 = " ";
      LODWORD(v14) = 1048577;
      v16 = 0;
      if (v5 != &v14)
      {
        v10 = KB::String::equal(v5, &v14, 1, this, a5);
        if (v15 && BYTE6(v14) == 1)
        {
          free(v15);
        }

        if (!v10)
        {
LABEL_9:
          *(v5 + 24) = (*(*v8 + 456))(v8, *(v5 + 34), a1[1]);
          v11 = *(v5 + 17);
          KB::Word::capitalized_string(&v14, v5);
          v12 = v11;
          KB::LanguageModelContext::append(a2, v12, &v14, 0);
          if (v15)
          {
            v13 = BYTE6(v14) == 1;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            free(v15);
          }
        }
      }

      v5 = (v5 + 240);
      v9 -= 240;
    }

    while (v9);
  }
}

void KB::LanguageModelStr::cache_key_for_candidate(void *__return_ptr a1@<X8>, KB::LanguageModelStr *this@<X0>)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *a1 = 0x100000;
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  a1[1] = 0;
  *(a1 + 16) = 0;
  v4 = *(this + 103);
  if (-24 * ((*(this + 101) - (*(this + 100) + 8 * v4)) >> 3))
  {
    v5 = *(this + 109);
    v6 = v5 - 24 * ((*(this + 101) - (*(this + 100) + 8 * v4)) >> 3);
    do
    {
      v7 = v6;
      if (*(v6 + 23) < 0)
      {
        v7 = *v6;
      }

      KB::String::append_format(a1, "%s ", v7);
      v6 += 24;
    }

    while (v6 != v5);
  }

  KB::String::append(a1, "| ", 0xFFFFuLL);
  v8 = *this;
  if (*this)
  {
    v9 = *(this + 1);
    v10 = 240 * v8;
    do
    {
      if (*v9)
      {
        if ((*(v9 + 135) & 4) == 0)
        {
          goto LABEL_14;
        }

        v11 = *(v9 + 8);
        if (!v11)
        {
          v11 = (v9 + 16);
        }

        if (*v11 != 32 || v11[1])
        {
LABEL_14:
          KB::Word::capitalized_string(&v14, v9);
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

          KB::String::append_format(a1, "%s ", v13);
          if (v15)
          {
            if (BYTE6(v14) == 1)
            {
              free(v15);
            }
          }
        }
      }

      v9 += 240;
      v10 -= 240;
    }

    while (v10);
  }
}

uint64_t std::__function::__value_func<void ()(KB::LanguageModel::PredictionInfo const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_1,std::allocator<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_1>,void ()(KB::LanguageModel::PredictionInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  std::vector<KB::LanguageModel::PredictionInfo>::push_back[abi:nn200100](*(a1 + 8), a2);
  v4 = *(*(a1 + 24) + 24);
  if (v4)
  {
    result = (*(*v4 + 48))(v4, a2, *(a1 + 32), *(a1 + 40));
    **(a1 + 16) |= result;
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    return std::vector<KB::LanguageModel::PredictionInfo>::push_back[abi:nn200100](v6, v7);
  }

  return result;
}

uint64_t std::vector<KB::LanguageModel::PredictionInfo>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 5);
    if (v8 + 1 > 0x199999999999999)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 5);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0xCCCCCCCCCCCCCCLL)
    {
      v11 = 0x199999999999999;
    }

    else
    {
      v11 = v10;
    }

    v24[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(v11);
    }

    v16 = 160 * v8;
    std::vector<TITokenID>::vector[abi:nn200100](v16, a2);
    v17 = *(a2 + 24);
    *(v16 + 40) = *(a2 + 40);
    *(v16 + 24) = v17;
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((v16 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v18 = *(a2 + 48);
      *(v16 + 64) = *(a2 + 64);
      *(v16 + 48) = v18;
    }

    if (*(a2 + 95) < 0)
    {
      std::string::__init_copy_ctor_external((v16 + 72), *(a2 + 72), *(a2 + 80));
    }

    else
    {
      v19 = *(a2 + 72);
      *(v16 + 88) = *(a2 + 88);
      *(v16 + 72) = v19;
    }

    *(v16 + 104) = 0;
    *(v16 + 112) = 0;
    *(v16 + 96) = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((v16 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
    *(v16 + 120) = 0;
    *(v16 + 128) = 0;
    *(v16 + 136) = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((v16 + 120), *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
    *(v16 + 144) = *(a2 + 144);
    v15 = v16 + 160;
    v20 = a1[1];
    v21 = v16 + *a1 - v20;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>,KB::LanguageModel::PredictionInfo*>(*a1, v20, v21);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v16 + 160;
    v23 = a1[2];
    a1[2] = 0;
    v24[2] = v22;
    v24[3] = v23;
    v24[0] = v22;
    v24[1] = v22;
    result = std::__split_buffer<KB::LanguageModel::PredictionInfo>::~__split_buffer(v24);
  }

  else
  {
    std::vector<TITokenID>::vector[abi:nn200100](a1[1], a2);
    v6 = *(a2 + 24);
    *(v5 + 40) = *(a2 + 40);
    *(v5 + 24) = v6;
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v7 = *(a2 + 48);
      *(v5 + 64) = *(a2 + 64);
      *(v5 + 48) = v7;
    }

    if (*(a2 + 95) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 72), *(a2 + 72), *(a2 + 80));
    }

    else
    {
      v12 = *(a2 + 72);
      *(v5 + 88) = *(a2 + 88);
      *(v5 + 72) = v12;
    }

    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    *(v5 + 96) = 0;
    std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((v5 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
    *(v5 + 120) = 0;
    *(v5 + 128) = 0;
    v13 = v5 + 120;
    *(v13 + 16) = 0;
    result = std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v13, *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
    *(v13 + 24) = *(a2 + 144);
    v15 = v13 + 40;
  }

  a1[1] = v15;
  return result;
}

__n128 std::__function::__func<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_1,std::allocator<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_1>,void ()(KB::LanguageModel::PredictionInfo const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD7160;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,void *>>>::destroy[abi:nn200100]<std::pair<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    v5 = (v2 + 32);
    std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&v5);
    v3 = *(v2 + 8);
    if (v3 && *(v2 + 6) == 1)
    {
      free(v3);
    }

    MEMORY[0x2318BE270](v2, 0x1030C4086507075);
  }

  v4 = *(a1 + 8);
  if (v4 && *(a1 + 6) == 1)
  {

    free(v4);
  }
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

BOOL std::__function::__func<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0,std::allocator<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0>,BOOL ()(language_modeling::v1::Prediction const&)>::operator()(uint64_t a1, const language_modeling::v1::Prediction *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  language_modeling::v1::Prediction::Prediction();
  v3 = *(a1 + 40);
  v4 = *(a1 + 8);
  v5 = language_modeling::v1::Prediction::unique_id(v18);
  KB::Candidate::Candidate(&v33, (*v4 + 1000 * v5));
  for (i = v33; v33; i = v33)
  {
    v7 = v34 + 240 * i;
    if ((*(v7 - 105) & 4) != 0)
    {
      break;
    }

    v8 = *(v7 - 29);
    v9 = v7 - 224;
    if (v8)
    {
      v9 = v8;
    }

    if (*v9 == 32)
    {
      if (!v9[1])
      {
        break;
      }
    }

    else if (!*v9)
    {
      break;
    }

    KB::Candidate::pop_last_word(&v33);
  }

  KB::LanguageModelContext::LanguageModelContext(v25, *(a1 + 16));
  KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)const::$_2::operator()(*(a1 + 24), v25, v33, v34, v10);
  v11 = *(a1 + 32);
  v12 = (*(*v3 + 40))(v3);
  KB::LanguageModel::PredictionInfo::PredictionInfo(v19, v18, v12);
  v13 = *(v11 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v14 = (*(*v13 + 48))(v13, v19, &v33, v25);
  v32 = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
  v32 = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v32);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[6]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  **(a1 + 48) |= v14;
  v15 = *(a1 + 56);
  v16 = *v15;
  if (v14)
  {
    *v15 = ++v16;
  }

  v19[0] = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v19);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v30);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v29);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  KB::Candidate::~Candidate(&v33);
  language_modeling::v1::Prediction::~Prediction(v18);
  return v16 < 5;
}

__n128 std::__function::__func<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0,std::allocator<KB::LanguageModelStr::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0>,BOOL ()(language_modeling::v1::Prediction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD7118;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t KB::LanguageModelStr::is_text_blocklisted(KB::LanguageModel *a1, unsigned __int16 *a2, int a3, const KB::LanguageModelContext *a4, uint64_t a5, int a6)
{
  KB::LanguageModel::lexicon_id_active(a1, a3);
  if (!(*(*a1 + 16))(a1) || !*a5 || **(*a5 + 8) == *(*(*a5 + 8) + 8))
  {
    return 1;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x9002000000;
  v15[3] = __Block_byref_object_copy__814;
  v15[4] = __Block_byref_object_dispose__815;
  KB::LanguageModelContext::LanguageModelContext(&v16, a4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = ___ZNK2KB16LanguageModelStr19is_text_blocklistedERKNS_6StringEjRKNS_20LanguageModelContextERKN3WTF6RefPtrINS_19DictionaryContainerEEE27TIBlocklistSensitivityLevel_block_invoke;
  v13[3] = &unk_27872F120;
  v13[6] = a1;
  v13[7] = a5;
  v13[4] = &v23;
  v13[5] = v15;
  v14 = a6;
  KB::LanguageModelImplBase::tokenize_text(a1, a2, v13);
  v11 = *(v24 + 24);
  _Block_object_dispose(v15, 8);
  v27 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v27);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v21);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v20);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Block_object_dispose(&v23, 8);
  return v11;
}

void __Block_byref_object_dispose__815(uint64_t a1)
{
  v4 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 112));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 104));
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void ___ZNK2KB16LanguageModelStr19is_text_blocklistedERKNS_6StringEjRKNS_20LanguageModelContextERKN3WTF6RefPtrINS_19DictionaryContainerEEE27TIBlocklistSensitivityLevel_block_invoke(uint64_t a1, const KB::String *a2, TITokenID *a3)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0 && (*a3 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    *__p = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v19);
    language_modeling::v1::LinguisticContext::LinguisticContext((&v19 + 8));
    v20 = 0uLL;
    v21 = 0;
    KB::LanguageModelImplBase::static_words_for_string(v6, a2, v7, &v15, 1, 1, &v22);
    v24 = &v20;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v24);
    language_modeling::v1::LinguisticContext::~LinguisticContext((&v19 + 8));
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v19);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v15 + 1));
    }

    if (v22 == v23)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v8 = v22 + 240;
      do
      {
        v9 = *(v8 - 136);
        v10 = (v9 >> 1) & 1;
        if ((v9 & 2) == 0)
        {
          break;
        }

        v11 = v8 == v23;
        v8 += 240;
      }

      while (!v11);
    }

    *(*(*(a1 + 32) + 8) + 24) = v10;
    v12 = *(*(a1 + 32) + 8);
    if (*(v12 + 24))
    {
      v13 = 1;
    }

    else
    {
      v13 = (*(*v6 + 488))(v6, a2, *a3, *(*(a1 + 40) + 8) + 40, *(a1 + 64));
      v12 = *(*(a1 + 32) + 8);
    }

    *(v12 + 24) = v13;
    v14 = *a3;
    KB::LanguageModelContext::append((*(*(a1 + 40) + 8) + 40), v14, a2, 0);
    *&v15 = &v22;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v15);
  }
}

BOOL KB::LanguageModelStr::is_token_blocklisted(KB::LanguageModel *a1, KB::String *a2, int a3, uint64_t a4, int a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = KB::LanguageModel::lexicon_id_active(a1, a3);
  KB::String::space(v6);
  KB::String::trim(v13, a2, &KB::String::space(void)::space);
  if (v13[0])
  {
    if (v15)
    {
      v7 = v15;
    }

    else
    {
      v7 = v16;
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, v7);
    v12 = 0;
    v8 = language_modeling::v1::LanguageModel::blocklistStatus() != 0;
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v15 && v14 == 1)
  {
    free(v15);
  }

  return v8;
}

void KB::LanguageModelStr::get_predictions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((*(*a1 + 16))(a1))
  {
    v8 = *(a1 + 184);
    if (v8)
    {
      atomic_store(1u, (v8 + 760));
    }

    std::mutex::lock(*(a1 + 136));
    v9 = *(a1 + 184);
    if (v9)
    {
      atomic_store(0, (v9 + 760));
    }

    MEMORY[0x2318BDEA0](&v27, *(a1 + 200), a2 + 72, a3);
    std::mutex::unlock(*(a1 + 136));
    v10 = v27;
    v11 = v28;
    if (v27 != v28)
    {
      do
      {
        v12 = (*(*a1 + 40))(a1);
        v13 = a4[1];
        v14 = a4[2];
        if (v13 >= v14)
        {
          v16 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a4) >> 5);
          v17 = v16 + 1;
          if (v16 + 1 > 0x199999999999999)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v18 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *a4) >> 5);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0xCCCCCCCCCCCCCCLL)
          {
            v19 = 0x199999999999999;
          }

          else
          {
            v19 = v17;
          }

          v29[4] = a4;
          if (v19)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(v19);
          }

          v20 = (160 * v16);
          KB::LanguageModel::PredictionInfo::PredictionInfo(v20, v10, v12);
          v15 = v20 + 160;
          v21 = a4[1];
          v22 = v20 + *a4 - v21;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>,KB::LanguageModel::PredictionInfo*>(*a4, v21, v22);
          v23 = *a4;
          *a4 = v22;
          a4[1] = v20 + 160;
          v24 = a4[2];
          a4[2] = 0;
          v29[2] = v23;
          v29[3] = v24;
          v29[0] = v23;
          v29[1] = v23;
          std::__split_buffer<KB::LanguageModel::PredictionInfo>::~__split_buffer(v29);
        }

        else
        {
          v15 = KB::LanguageModel::PredictionInfo::PredictionInfo(v13, v10, v12) + 160;
        }

        a4[1] = v15;
        v10 = (v10 + 8);
      }

      while (v10 != v11);
      v10 = v27;
    }

    if (v10)
    {
      v25 = v28;
      v26 = v10;
      if (v28 != v10)
      {
        do
        {
          language_modeling::v1::Prediction::~Prediction((v25 - 8));
        }

        while (v25 != v10);
        v26 = v27;
      }

      v28 = v10;
      operator delete(v26);
    }
  }
}

BOOL KB::LanguageModelStr::PredictionEnumeratorStr::advance(KB::LanguageModelStr::PredictionEnumeratorStr *this)
{
  v1 = *(this + 4);
  *(this + 4) = v1 + 1;
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - *(this + 1)) >> 5);
  if (v1 + 1 >= v2)
  {
    *(this + 4) = v1;
  }

  return v1 + 1 < v2;
}

__n128 KB::LanguageModelStr::PredictionEnumeratorStr::get_prediction@<Q0>(KB::LanguageModelStr::PredictionEnumeratorStr *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1) + 160 * *(this + 4);
  std::vector<TITokenID>::vector[abi:nn200100](a2, v3);
  v4 = *(v3 + 24);
  *(a2 + 40) = *(v3 + 40);
  *(a2 + 24) = v4;
  if (*(v3 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 48), *(v3 + 48), *(v3 + 56));
  }

  else
  {
    v5 = *(v3 + 48);
    *(a2 + 64) = *(v3 + 64);
    *(a2 + 48) = v5;
  }

  if (*(v3 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 72), *(v3 + 72), *(v3 + 80));
  }

  else
  {
    v6 = *(v3 + 72);
    *(a2 + 88) = *(v3 + 88);
    *(a2 + 72) = v6;
  }

  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((a2 + 96), *(v3 + 96), *(v3 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 104) - *(v3 + 96)) >> 3));
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v7 = a2 + 120;
  *(v7 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(v7, *(v3 + 120), *(v3 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 128) - *(v3 + 120)) >> 3));
  result = *(v3 + 144);
  *(v7 + 24) = result;
  return result;
}

void KB::LanguageModelStr::PredictionEnumeratorStr::~PredictionEnumeratorStr(KB::LanguageModelStr::PredictionEnumeratorStr *this)
{
  *this = &unk_283FD6FB8;
  v1 = (this + 8);
  std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD6FB8;
  v1 = (this + 8);
  std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&v1);
}

void std::__shared_ptr_emplace<KB::LanguageModelStr::PredictionEnumeratorStr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD71A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::LanguageModelStr::predictions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a1 + 16))(a1))
  {
    kdebug_trace();
    log = kac_get_log();
    v9 = os_signpost_id_make_with_pointer(log, (a1 ^ 0xCB));
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(log))
      {
        LOWORD(v20) = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, log, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.languageModel.tokenIDGenerateCompletionsAndPredictions", &unk_22CCA4FEF, &v20, 2u);
      }
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    KB::LanguageModelStr::get_predictions(a1, a2, a3, &v20);
    v11 = v20;
    v12 = v21;
    while (v11 != v12)
    {
      v13 = *(a4 + 24);
      if (!v13)
      {
        v17 = std::__throw_bad_function_call[abi:nn200100]();
        KB::LanguageModel::probability_of_lexicon_given_context(v17, v18, v19);
        return;
      }

      (*(*v13 + 48))(v13, v11);
      v11 += 160;
    }

    kdebug_trace();
    v14 = kac_get_log();
    v15 = os_signpost_id_make_with_pointer(v14, (a1 ^ 0xCB));
    if (v15 - 1 < 0xFFFFFFFFFFFFFFFELL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v14, OS_SIGNPOST_INTERVAL_END, v16, "kbdManager.languageModel.tokenIDGenerateCompletionsAndPredictions", &unk_22CCA4FEF, buf, 2u);
      }
    }

    *buf = &v20;
    std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](buf);
  }
}

void KB::LanguageModelStr::conditional_likelihood_batched(unint64_t a1@<X0>, unsigned int **a2@<X1>, int a5@<W5>, const void **a6@<X8>)
{
  v9 = a6;
  v115 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 16))(a1) && (!a5 || (language_modeling::v1::LanguageModelSession::supportsNormalizedNameTokenProbability(*(a1 + 200))))
  {
    v93 = a5;
    kdebug_trace();
    log = kac_get_log();
    v94 = a1;
    v11 = os_signpost_id_make_with_pointer(log, (a1 ^ 0xCA));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, log, OS_SIGNPOST_INTERVAL_BEGIN, v12, "kbdManager.languageModel.conditionalLikelihoodBatched", &unk_22CCA4FEF, buf, 2u);
      }
    }

    v105 = 0;
    v106 = 0;
    v107 = 0;
    v13 = *a2;
    v95 = a2[1];
    if (*a2 != v95)
    {
      do
      {
        __p[1] = 0;
        v104 = 0;
        __p[0] = 0;
        v96 = v13;
        if (*v13)
        {
          v14 = *(v13 + 1);
          v15 = (v14 + 240 * *v13);
          do
          {
            KB::Word::capitalized_string(&v112, v14);
            v16 = *(&v112 + 1);
            if (!*(&v112 + 1))
            {
              v16 = &v113;
            }

            if (v112)
            {
              v17 = v16;
            }

            else
            {
              v17 = "";
            }

            std::string::basic_string[abi:nn200100]<0>(&v100, v17);
            v99 = *(v14 + 17);
            KB::LanguageModelContext::linguistic_token(&v100, &v99, buf);
            v18 = __p[1];
            if (__p[1] >= v104)
            {
              v20 = (__p[1] - __p[0]) >> 5;
              v21 = v20 + 1;
              if ((v20 + 1) >> 59)
              {
                std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
              }

              v22 = v104 - __p[0];
              if ((v104 - __p[0]) >> 4 > v21)
              {
                v21 = v22 >> 4;
              }

              if (v22 >= 0x7FFFFFFFFFFFFFE0)
              {
                v23 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v21;
              }

              if (v23)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::Token>>(v23);
              }

              v24 = 32 * v20;
              *(v24 + 16) = v109;
              *v24 = *buf;
              v109 = 0;
              memset(buf, 0, sizeof(buf));
              *(v24 + 24) = v110;
              v26 = __p[0];
              v25 = __p[1];
              v27 = (v24 + __p[0] - __p[1]);
              if (__p[0] != __p[1])
              {
                v28 = __p[0];
                v29 = v24 + __p[0] - __p[1];
                do
                {
                  v30 = *v28;
                  *(v29 + 16) = v28[2];
                  *v29 = v30;
                  v28[1] = 0;
                  v28[2] = 0;
                  *v28 = 0;
                  *(v29 + 24) = *(v28 + 6);
                  v28 += 4;
                  v29 += 32;
                }

                while (v28 != v25);
                do
                {
                  if (*(v26 + 23) < 0)
                  {
                    operator delete(*v26);
                  }

                  v26 += 4;
                }

                while (v26 != v25);
              }

              v31 = __p[0];
              v19 = (v24 + 32);
              __p[0] = v27;
              __p[1] = (v24 + 32);
              v104 = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *__p[1] = *buf;
              v18[2] = v109;
              *(v18 + 6) = v110;
              v19 = v18 + 4;
            }

            __p[1] = v19;
            if (SHIBYTE(v102) < 0)
            {
              operator delete(v100);
            }

            if (*(&v112 + 1) && BYTE6(v112) == 1)
            {
              free(*(&v112 + 1));
            }

            v14 = (v14 + 240);
          }

          while (v14 != v15);
        }

        v32 = v106;
        if (v106 >= v107)
        {
          v34 = 0xAAAAAAAAAAAAAAABLL * ((v106 - v105) >> 3);
          v35 = v34 + 1;
          if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          if (0x5555555555555556 * ((v107 - v105) >> 3) > v35)
          {
            v35 = 0x5555555555555556 * ((v107 - v105) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v107 - v105) >> 3) >= 0x555555555555555)
          {
            v36 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            if (v36 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v37 = (8 * ((v106 - v105) >> 3));
          *v37 = 0;
          v37[1] = 0;
          v37[2] = 0;
          std::vector<language_modeling::v1::Token>::__init_with_size[abi:nn200100]<language_modeling::v1::Token*,language_modeling::v1::Token*>((24 * v34), __p[0], __p[1], (__p[1] - __p[0]) >> 5);
          v33 = 24 * v34 + 24;
          v38 = v105;
          v39 = v37 - (v106 - v105);
          memcpy(v39, v105, v106 - v105);
          v105 = v39;
          v106 = v33;
          v107 = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v106 = 0;
          v32[1] = 0;
          v32[2] = 0;
          std::vector<language_modeling::v1::Token>::__init_with_size[abi:nn200100]<language_modeling::v1::Token*,language_modeling::v1::Token*>(v32, __p[0], __p[1], (__p[1] - __p[0]) >> 5);
          v33 = (v32 + 3);
        }

        v106 = v33;
        *buf = __p;
        std::vector<language_modeling::v1::Token>::__destroy_vector::operator()[abi:nn200100](buf);
        v13 = v96 + 250;
      }

      while (v96 + 250 != v95);
    }

    __p[0] = 0;
    __p[1] = 0;
    v104 = 0;
    v40 = *(v94 + 184);
    if (v40)
    {
      atomic_store(1u, v40 + 760);
    }

    std::mutex::lock(*(v94 + 136));
    v41 = *(v94 + 184);
    if (v41)
    {
      atomic_store(0, v41 + 760);
    }

    if (v93)
    {
      language_modeling::v1::LanguageModelSession::normalizedNameTokenConditionalProbability();
    }

    else
    {
      language_modeling::v1::LanguageModelSession::detailedConditionalProbability();
    }

    std::vector<std::vector<language_modeling::v1::Probability>>::__vdeallocate(__p);
    v97 = *buf;
    *__p = *buf;
    v104 = v109;
    v109 = 0;
    memset(buf, 0, sizeof(buf));
    *&v112 = buf;
    std::vector<std::vector<language_modeling::v1::Probability>>::__destroy_vector::operator()[abi:nn200100](&v112);
    v57 = v97;
    std::mutex::unlock(*(v94 + 136));
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    if (v97 != *(&v97 + 1))
    {
      do
      {
        v100 = 0;
        v101 = 0;
        v102 = 0;
        v58 = *v57;
        v59 = v57[1];
        while (v58 != v59)
        {
          language_modeling::v1::Probability::probability();
          *&v60 = v60;
          LODWORD(v112) = __exp10f(*&v60);
          language_modeling::v1::Probability::probability();
          *&v61 = v61;
          DWORD1(v112) = __exp10f(*&v61);
          BYTE8(v112) = language_modeling::v1::Probability::flags(v58) & 3;
          DWORD2(v112) = BYTE8(v112);
          language_modeling::v1::Probability::log(&v113, v58);
          v62 = v101;
          if (v101 >= v102)
          {
            v65 = 0xCCCCCCCCCCCCCCCDLL * ((v101 - v100) >> 3);
            v66 = v65 + 1;
            if (v65 + 1 > 0x666666666666666)
            {
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            if (0x999999999999999ALL * ((v102 - v100) >> 3) > v66)
            {
              v66 = 0x999999999999999ALL * ((v102 - v100) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v102 - v100) >> 3) >= 0x333333333333333)
            {
              v67 = 0x666666666666666;
            }

            else
            {
              v67 = v66;
            }

            v111 = &v100;
            if (v67)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LikelihoodInfo>>(v67);
            }

            v68 = 8 * ((v101 - v100) >> 3);
            v69 = v112;
            *(v68 + 8) = DWORD2(v112);
            *v68 = v69;
            v70 = v113;
            *(v68 + 32) = v114;
            *(v68 + 16) = v70;
            v114 = 0;
            v113 = 0uLL;
            v71 = (40 * v65 + v100 - v101);
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LikelihoodInfo>,KB::LikelihoodInfo*>(v100, v101, v71);
            v72 = v100;
            v73 = v102;
            v100 = v71;
            v101 = (40 * v65 + 40);
            v102 = 0;
            v109 = v72;
            v110 = v73;
            *buf = v72;
            *&buf[8] = v72;
            std::__split_buffer<KB::LikelihoodInfo>::~__split_buffer(buf);
            v101 = (40 * v65 + 40);
            if (SHIBYTE(v114) < 0)
            {
              operator delete(v113);
            }
          }

          else
          {
            v63 = v112;
            *(v101 + 2) = DWORD2(v112);
            *v62 = v63;
            v64 = v113;
            *(v62 + 4) = v114;
            *(v62 + 1) = v64;
            v101 = v62 + 40;
          }

          v58 = (v58 + 8);
        }

        v75 = a6[1];
        v74 = a6[2];
        if (v75 >= v74)
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * ((v75 - *a6) >> 3);
          v79 = v78 + 1;
          if (v78 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_113;
          }

          v80 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *a6) >> 3);
          if (2 * v80 > v79)
          {
            v79 = 2 * v80;
          }

          if (v80 >= 0x555555555555555)
          {
            v81 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v81 = v79;
          }

          v111 = a6;
          if (v81)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v81);
          }

          v82 = 24 * v78;
          *v82 = 0;
          *(v82 + 8) = 0;
          *(v82 + 16) = 0;
          std::vector<KB::LikelihoodInfo>::__init_with_size[abi:nn200100]<KB::LikelihoodInfo*,KB::LikelihoodInfo*>((24 * v78), v100, v101, 0xCCCCCCCCCCCCCCCDLL * ((v101 - v100) >> 3));
          v76 = (24 * v78 + 24);
          v83 = a6[1] - *a6;
          v84 = (v82 - v83);
          memcpy(v84, *a6, v83);
          v85 = *a6;
          *a6 = v84;
          a6[1] = v76;
          v77 = a6;
          v86 = a6[2];
          a6[2] = 0;
          v109 = v85;
          v110 = v86;
          *buf = v85;
          *&buf[8] = v85;
          std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(buf);
        }

        else
        {
          *v75 = 0;
          v75[1] = 0;
          v75[2] = 0;
          std::vector<KB::LikelihoodInfo>::__init_with_size[abi:nn200100]<KB::LikelihoodInfo*,KB::LikelihoodInfo*>(v75, v100, v101, 0xCCCCCCCCCCCCCCCDLL * ((v101 - v100) >> 3));
          v76 = v75 + 3;
          v77 = a6;
        }

        v77[1] = v76;
        *buf = &v100;
        std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](buf);
        v57 += 3;
      }

      while (v57 != *(&v97 + 1));
    }

    kdebug_trace();
    v87 = kac_get_log();
    v88 = os_signpost_id_make_with_pointer(v87, (v94 ^ 0xCA));
    if (v88 - 1 < 0xFFFFFFFFFFFFFFFELL)
    {
      v89 = v88;
      if (os_signpost_enabled(v87))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v87, OS_SIGNPOST_INTERVAL_END, v89, "kbdManager.languageModel.conditionalLikelihoodBatched", &unk_22CCA4FEF, buf, 2u);
      }
    }

    *buf = __p;
    std::vector<std::vector<language_modeling::v1::Probability>>::__destroy_vector::operator()[abi:nn200100](buf);
    v90 = v105;
    if (v105)
    {
      v91 = v106;
      v92 = v105;
      if (v106 != v105)
      {
        do
        {
          v91 -= 3;
          *buf = v91;
          std::vector<language_modeling::v1::Token>::__destroy_vector::operator()[abi:nn200100](buf);
        }

        while (v91 != v90);
        v92 = v105;
      }

      v106 = v90;
      operator delete(v92);
    }
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    v42 = *a2;
    v43 = a2[1];
    if (*a2 != v43)
    {
      do
      {
        std::vector<KB::LikelihoodInfo>::vector[abi:nn200100](&v112, *v42, &KB::k_invalid_likelihood_value);
        v44 = v9[1];
        v45 = v9[2];
        if (v44 >= v45)
        {
          v47 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *v9) >> 3);
          v48 = v47 + 1;
          if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_113:
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v49 = 0xAAAAAAAAAAAAAAABLL * ((v45 - *v9) >> 3);
          if (2 * v49 > v48)
          {
            v48 = 2 * v49;
          }

          if (v49 >= 0x555555555555555)
          {
            v50 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v50 = v48;
          }

          v111 = v9;
          if (v50)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v50);
          }

          v51 = 24 * v47;
          *v51 = 0;
          *(v51 + 8) = 0;
          *(v51 + 16) = 0;
          *v51 = v112;
          *(v51 + 16) = v113;
          v112 = 0uLL;
          *&v113 = 0;
          v46 = (24 * v47 + 24);
          v52 = *v9;
          v53 = v9[1] - *v9;
          v54 = (v51 - v53);
          memcpy((v51 - v53), v52, v53);
          v55 = *a6;
          *a6 = v54;
          v9 = a6;
          v56 = a6[2];
          a6[1] = v46;
          a6[2] = 0;
          v109 = v55;
          v110 = v56;
          *buf = v55;
          *&buf[8] = v55;
          std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(buf);
        }

        else
        {
          *v44 = 0;
          *(v44 + 1) = 0;
          *(v44 + 2) = 0;
          *v44 = v112;
          *(v44 + 2) = v113;
          v112 = 0uLL;
          *&v113 = 0;
          v46 = v44 + 24;
        }

        v9[1] = v46;
        *buf = &v112;
        std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](buf);
        v42 += 250;
      }

      while (v42 != v43);
    }
  }
}

uint64_t *std::vector<KB::LikelihoodInfo>::vector[abi:nn200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<KB::LikelihoodInfo>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

uint64_t std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<language_modeling::v1::Token>::__init_with_size[abi:nn200100]<language_modeling::v1::Token*,language_modeling::v1::Token*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::Token>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<language_modeling::v1::Token>::__destroy_vector::operator()[abi:nn200100](void ****a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::Token>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::vector<language_modeling::v1::Probability>>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<language_modeling::v1::Probability>::__destroy_vector::operator()[abi:nn200100](&v5);
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

void std::vector<std::vector<language_modeling::v1::Probability>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
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
        std::vector<language_modeling::v1::Probability>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<KB::LikelihoodInfo>::__init_with_size[abi:nn200100]<KB::LikelihoodInfo*,KB::LikelihoodInfo*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<KB::LikelihoodInfo>::__vallocate[abi:nn200100](a1, a4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LikelihoodInfo>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LikelihoodInfo>,KB::LikelihoodInfo*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 8) = *(v5 + 2);
      *a3 = v6;
      v7 = *(v5 + 1);
      *(a3 + 32) = v5[4];
      *(a3 + 16) = v7;
      v5[3] = 0;
      v5[4] = 0;
      v5[2] = 0;
      v5 += 5;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      v4 += 5;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<KB::LikelihoodInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
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

void std::vector<KB::LikelihoodInfo>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LikelihoodInfo>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::vector<language_modeling::v1::Probability>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        language_modeling::v1::Probability::~Probability((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void KB::LanguageModelStr::conditional_likelihood(unint64_t this@<X0>, const KB::String *a2@<X1>, const TITokenID *a3@<X2>, float a5@<S0>, uint64_t a7@<X8>)
{
  if ((*(*this + 16))(this, a5))
  {
    kdebug_trace();
    log = kac_get_log();
    v12 = os_signpost_id_make_with_pointer(log, (this ^ 0xC9));
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v12;
      if (os_signpost_enabled(log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, log, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.languageModel.conditionalLikelihood", &unk_22CCA4FEF, buf, 2u);
      }
    }

    v14 = *(a2 + 1);
    if (!v14)
    {
      v14 = a2 + 16;
    }

    if (*a2)
    {
      v15 = v14;
    }

    else
    {
      v15 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(__p, v15);
    KB::LanguageModelContext::linguistic_token(__p, a3, buf);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    *(a7 + 32) = 0;
    v16 = *(this + 184);
    if (v16)
    {
      atomic_store(1u, (v16 + 760));
    }

    std::mutex::lock(*(this + 136));
    v17 = *(this + 184);
    if (v17)
    {
      atomic_store(0, (v17 + 760));
    }

    language_modeling::v1::LanguageModelSession::detailedConditionalProbability();
    language_modeling::v1::Probability::probability();
    *&v18 = v18;
    *a7 = __exp10f(*&v18);
    language_modeling::v1::Probability::probability();
    *&v19 = v19;
    *(a7 + 4) = __exp10f(*&v19);
    *(a7 + 8) = language_modeling::v1::Probability::flags(__p) & 3;
    language_modeling::v1::Probability::log((a7 + 16), __p);
    std::mutex::unlock(*(this + 136));
    kdebug_trace();
    v20 = kac_get_log();
    v21 = os_signpost_id_make_with_pointer(v20, (this ^ 0xC9));
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v21;
      if (os_signpost_enabled(v20))
      {
        *v25 = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v20, OS_SIGNPOST_INTERVAL_END, v22, "kbdManager.languageModel.conditionalLikelihood", &unk_22CCA4FEF, v25, 2u);
      }
    }

    language_modeling::v1::Probability::~Probability(__p);
    if (v29 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    *a7 = KB::k_invalid_likelihood_value;
    *(a7 + 8) = dword_27D9E9FB0;
    if (byte_27D9E9FCF < 0)
    {
      v23 = *aInvalidLikelih;
      v24 = *&aInvalidLikelih[8];

      std::string::__init_copy_ctor_external((a7 + 16), v23, v24);
    }

    else
    {
      *(a7 + 16) = *aInvalidLikelih;
      *(a7 + 32) = *&aInvalidLikelih[16];
    }
  }
}

float KB::LanguageModelStr::marginal_likelihood(std::mutex **this, const KB::String *a2, const TITokenID *a3)
{
  v6 = 0.0;
  if ((*&(*this)->__m_.__opaque[8])(this))
  {
    v7 = KB::LanguageModel::lexicon_id_active(this, a3->lexicon_id);
    if (*a3 >> 34 < 0x7D || v7)
    {
      v9 = *(a2 + 1);
      if (!v9)
      {
        v9 = a2 + 16;
      }

      if (*a2)
      {
        v10 = v9;
      }

      else
      {
        v10 = "";
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v10);
      KB::LanguageModelContext::linguistic_token(__p, a3, &v17);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = this[23];
      if (v11)
      {
        atomic_store(1u, &v11[11].__m_.__opaque[48]);
      }

      std::mutex::lock(this[17]);
      v12 = this[23];
      if (v12)
      {
        atomic_store(0, &v12[11].__m_.__opaque[48]);
      }

      language_modeling::v1::LinguisticContext::LinguisticContext(__p);
      v13 = COERCE_DOUBLE(language_modeling::v1::LanguageModelSession::conditionalProbability());
      language_modeling::v1::LinguisticContext::~LinguisticContext(__p);
      std::mutex::unlock(this[17]);
      if (v18 < 0)
      {
        operator delete(v17);
      }

      return v13;
    }
  }

  return v6;
}

uint64_t KB::LanguageModelStr::can_reason_about(KB::LanguageModelStr *this, const KB::String *a2, const TITokenID *a3)
{
  if (!(*(*this + 16))(this, a2, a3))
  {
    return 0;
  }

  v5 = *(a2 + 1);
  if (!v5)
  {
    v5 = a2 + 16;
  }

  if (*a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v6);
  v7 = *(this + 23);
  if (v7)
  {
    atomic_store(1u, (v7 + 760));
  }

  std::mutex::lock(*(this + 17));
  v8 = *(this + 23);
  if (v8)
  {
    atomic_store(0, (v8 + 760));
  }

  canReasonAbout = language_modeling::v1::LanguageModelSession::canReasonAbout();
  std::mutex::unlock(*(this + 17));
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return canReasonAbout;
}

BOOL KB::LanguageModelStr::is_swear_word_policy_enabled(unsigned int (***this)(language_modeling::v1::LanguageModel **))
{
  if (!(*this)[2](this))
  {
    return 0;
  }

  v2 = language_modeling::v1::LanguageModel::parameters(this[21]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = MEMORY[0x277D23108];
  if (CFDictionaryContainsKey(v2, *MEMORY[0x277D23108]))
  {
    Value = CFDictionaryGetValue(v3, *v4);
    v6 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

void KB::LanguageModelStr::adapt_to_paragraph(uint64_t a1, uint64_t a2, double a3, uint64_t a4, const __CFString *a5, int a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1, a2, a4))
  {
    v11 = *(a2 + 8);
    if (!v11)
    {
      v11 = (a2 + 16);
    }

    if (*a2)
    {
      v12 = v11;
    }

    else
    {
      v12 = "";
    }

    v13 = std::string::basic_string[abi:nn200100]<0>(&__p, v12);
    language_modeling::v1::convertAbsoluteTime(v13, a3);
    if (a6 == 2)
    {
      if (!a5)
      {
        v18 = TILanguageModelLogFacility();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v22 = "adapt_to_paragraph";
          _os_log_fault_impl(&dword_22CA55000, v18, OS_LOG_TYPE_FAULT, "%s Received an adapt to paragraph with NULL Sender Identifier", buf, 0xCu);
        }

        goto LABEL_23;
      }

      v16 = *(a1 + 184);
      if (v16)
      {
        atomic_store(1u, (v16 + 760));
      }

      std::mutex::lock(*(a1 + 136));
      v17 = *(a1 + 184);
      if (v17)
      {
        atomic_store(0, (v17 + 760));
      }

      CFStringCompare(a5, *MEMORY[0x277D22F08], 1uLL);
      language_modeling::v1::LanguageModelSession::addPriorText();
    }

    else
    {
      if (a6 != 1)
      {
        goto LABEL_23;
      }

      if (!*(a1 + 64))
      {
        *(a1 + 64) = 1;
        (*(*a1 + 288))(a1, 1);
      }

      *(a1 + 224) = CFAbsoluteTimeGetCurrent();
      v14 = *(a1 + 184);
      if (v14)
      {
        atomic_store(1u, (v14 + 760));
      }

      std::mutex::lock(*(a1 + 136));
      v15 = *(a1 + 184);
      if (v15)
      {
        atomic_store(0, (v15 + 760));
      }

      language_modeling::v1::LanguageModelSession::adaptToText();
    }

    std::mutex::unlock(*(a1 + 136));
LABEL_23:
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }
}

void KB::LanguageModelStr::record_usage_with_differential_privacy(KB::LanguageModel *a1, const __CFString *a2, int a3, char a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 && (*(*a1 + 16))(a1))
  {
    if (KB::LanguageModel::lexicon_id_active(a1, a3))
    {
      v8 = *(a1 + 23);
      if (v8)
      {
        atomic_store(1u, (v8 + 760));
      }

      std::mutex::lock(*(a1 + 17));
      v9 = *(a1 + 23);
      if (v9)
      {
        atomic_store(0, (v9 + 760));
      }

      if ((a4 & 2) != 0)
      {
        KB::utf8_string(buf, a2);
        v10 = *&v17[4];
        if (!*&v17[4])
        {
          v10 = &v17[12];
        }

        if (*buf)
        {
          v11 = v10;
        }

        else
        {
          v11 = "";
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, v11);
        language_modeling::v1::LanguageModelSession::recordWordRevision();
        if (v15 < 0)
        {
          operator delete(__p);
        }

        if (*&v17[4])
        {
          if (v17[2] == 1)
          {
            free(*&v17[4]);
          }
        }
      }

      std::mutex::unlock(*(a1 + 17));
    }

    else
    {
      v12 = TILanguageModelLogFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = (*(*a1 + 40))(a1);
        *buf = 136315650;
        *v17 = "record_usage_with_differential_privacy";
        *&v17[8] = 1024;
        *&v17[10] = a3;
        v18 = 1024;
        v19 = v13;
        _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "%s mismatched lexicon_id=%d for language model with lexicon_id=%d", buf, 0x18u);
      }
    }
  }
}

void KB::LanguageModelStr::register_negative_evidence(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    v4 = *(a2 + 8);
    if (!v4)
    {
      v4 = (a2 + 16);
    }

    if (*a2)
    {
      v5 = v4;
    }

    else
    {
      v5 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, v5);
    v6 = *(a1 + 184);
    if (v6)
    {
      atomic_store(1u, (v6 + 760));
    }

    std::mutex::lock(*(a1 + 136));
    v7 = *(a1 + 184);
    if (v7)
    {
      atomic_store(0, (v7 + 760));
    }

    language_modeling::v1::LanguageModelSession::registerNegativeEvidence();
    std::mutex::unlock(*(a1 + 136));
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void KB::LanguageModelStr::decrement_usage_count(KB::LanguageModelStr *this, const KB::String *a2, const TITokenID *a3, const KB::LanguageModelContext *a4)
{
  if ((*(*this + 16))(this))
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

    std::string::basic_string[abi:nn200100]<0>(__p, v8);
    KB::LanguageModelContext::linguistic_token(__p, a3, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(this + 23);
    if (v9)
    {
      atomic_store(1u, (v9 + 760));
    }

    std::mutex::lock(*(this + 17));
    v10 = *(this + 23);
    if (v10)
    {
      atomic_store(0, (v10 + 760));
    }

    language_modeling::v1::LanguageModelSession::unAdaptToToken();
    std::mutex::unlock(*(this + 17));
    if (v14 < 0)
    {
      operator delete(v13);
    }
  }
}

void KB::LanguageModelStr::increment_usage_count(KB::LanguageModelStr *this, const KB::String *a2, const TITokenID *a3, const KB::LanguageModelContext *a4)
{
  if ((*(*this + 16))(this))
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

    std::string::basic_string[abi:nn200100]<0>(__p, v8);
    KB::LanguageModelContext::linguistic_token(__p, a3, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(this + 23);
    if (v9)
    {
      atomic_store(1u, (v9 + 760));
    }

    std::mutex::lock(*(this + 17));
    v10 = *(this + 23);
    if (v10)
    {
      atomic_store(0, (v10 + 760));
    }

    language_modeling::v1::LanguageModelSession::adaptToToken();
    std::mutex::unlock(*(this + 17));
    if (v14 < 0)
    {
      operator delete(v13);
    }
  }
}

uint64_t KB::LanguageModelStr::start_session_with_context(KB::LanguageModelStr *this, const __CFString *a2, const __CFDictionary *a3)
{
  (*(*this + 272))(this, a2);
  (*(*this + 280))(this, a3);
  v5 = *(this + 16);
  v6 = *(*this + 288);

  return v6(this, v5);
}

void std::__shared_ptr_pointer<language_modeling::v1::LanguageModelSession  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::LanguageModelStr::set_inline_completion_personalization(KB::LanguageModelStr *this, const KB::String *a2)
{
  v2 = *(this + 23);
  if (v2)
  {
    TIInlineCompletionGeneratorImpl::setInlineCompletionPersonalization(v2, a2);
  }
}

void std::vector<KB::String>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void KB::LanguageModelStr::copyLinguisticDataFiles(unsigned int (***this)(language_modeling::v1::LanguageModel **)@<X0>, CFDictionaryRef *a3@<X8>)
{
  if ((*this)[2](this))
  {
    *a3 = language_modeling::v1::LanguageModel::copyLinguisticDataFileInfo(this[21]);
  }

  else
  {
    v5 = *MEMORY[0x277CBECE8];
    values = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    *a3 = CFDictionaryCreate(v5, MEMORY[0x277D23128], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (values)
    {
      CFRelease(values);
    }
  }
}

uint64_t KB::LanguageModelStr::get_num_candidates@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 5 && (v4 = result, result = (*(*result + 16))(result), result) && *(v4 + 272) && (result = language_modeling::v1::LanguageModelSession::supportsFragmentsBasedConditionalProbability(*(v4 + 200)), (result & 1) != 0) && (result = CFDictionaryContainsKey(*(v4 + 272), @"NumQuickPathCandidates"), result) && (result = CFDictionaryContainsKey(*(v4 + 272), @"NumQuickPathRetrocorrectionCandidates"), result))
  {
    v8 = 0;
    valuePtr = 0;
    Value = CFDictionaryGetValue(*(v4 + 272), @"NumQuickPathCandidates");
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v6 = CFDictionaryGetValue(*(v4 + 272), @"NumQuickPathRetrocorrectionCandidates");
    result = CFNumberGetValue(v6, kCFNumberIntType, &v8);
    v7 = v8;
    *a3 = valuePtr;
    *(a3 + 8) = v7;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t KB::LanguageModelStr::unwire_memory(uint64_t (***this)(language_modeling::v1::LanguageModel **))
{
  v5 = *MEMORY[0x277D85DE8];
  result = (*this)[2](this);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "unwire_memory";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Unwiring memory", &v3, 0xCu);
    }

    return language_modeling::v1::LanguageModel::unwireMemory(this[21]);
  }

  return result;
}

uint64_t KB::LanguageModelStr::should_score_completion_candidate(KB::LanguageModelStr *this, const Candidate *a2)
{
  if ((*(*this + 16))(this, a2))
  {
    return (*(*this + 144))(this) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t KB::LanguageModelStr::supports_fragment_based_conditional_prob(uint64_t (***this)(language_modeling::v1::LanguageModelSession **))
{
  result = (*this)[2](this);
  if (result)
  {
    v3 = this[25];

    return language_modeling::v1::LanguageModelSession::supportsFragmentsBasedConditionalProbability(v3);
  }

  return result;
}

uint64_t KB::LanguageModelStr::does_provide_inline_completions_for_locale(CFArrayRef *this, const KB::String *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ((*(*this + 2))(this) && (v4 = this[2]) != 0 && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(this[2], v7);
      KB::kb_string_from_locale(v17, ValueAtIndex, v9);
      v10 = v18;
      if (v18)
      {
        v11 = v18;
      }

      else
      {
        v11 = v19;
      }

      if (*(a2 + 1))
      {
        v12 = *(a2 + 1);
      }

      else
      {
        v12 = a2 + 16;
      }

      v13 = strcmp(v11, v12);
      if (v10)
      {
        v14 = v17[6] == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v10);
      }

      if (!v13)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_19;
      }
    }

    v15 = this[23];
    if (v15)
    {
      LOBYTE(v15) = atomic_load(v15 + 16);
    }
  }

  else
  {
LABEL_19:
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

uint64_t KB::LanguageModelStr::does_provide_inline_completions(KB::LanguageModelStr *this)
{
  if ((*(*this + 16))(this))
  {
    v2 = *(this + 23);
    if (v2)
    {
      LOBYTE(v2) = atomic_load((v2 + 16));
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t KB::LanguageModelStr::does_provide_completions(KB::LanguageModelStr *this)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    v3 = *(this + 25);

    return MEMORY[0x282181C18](v3);
  }

  return result;
}

void KB::LanguageModelStr::reset_state_cache(uint64_t a1, unsigned int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 16))(a1))
  {
    return;
  }

  v4 = TILanguageModelLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v5 = "cache-strategy: unknown";
    }

    else
    {
      v5 = off_2787328D8[a2];
    }

    v15 = 136315394;
    v16 = "reset_state_cache";
    v17 = 2080;
    v18 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEFAULT, "%s Handling %s reset request", &v15, 0x16u);
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v11 = TILanguageModelLogFacility();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v15 = 136315138;
      v16 = "reset_state_cache";
      v9 = "%s Not resetting the cache";
      v10 = v11;
      goto LABEL_15;
    }

    if (a2)
    {
      return;
    }

    v6 = (*(*a1 + 144))(a1);
    v7 = TILanguageModelLogFacility();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        return;
      }

      v15 = 136315138;
      v16 = "reset_state_cache";
      v9 = "%s Model provides completions, not resetting the cache";
      v10 = v7;
LABEL_15:
      _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, 0xCu);
      return;
    }

    if (!v8)
    {
      goto LABEL_21;
    }

    v15 = 136315138;
    v16 = "reset_state_cache";
    v12 = "%s Resetting the state cache in Language Model";
    goto LABEL_20;
  }

  v7 = TILanguageModelLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "reset_state_cache";
    v12 = "%s Resetting the cache";
LABEL_20:
    _os_log_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xCu);
  }

LABEL_21:
  v13 = *(a1 + 184);
  if (v13)
  {
    atomic_store(1u, (v13 + 760));
  }

  std::mutex::lock(*(a1 + 136));
  v14 = *(a1 + 184);
  if (v14)
  {
    atomic_store(0, (v14 + 760));
  }

  language_modeling::v1::LanguageModel::deallocateInternalBuffers(*(a1 + 168));
  std::mutex::unlock(*(a1 + 136));
}

void KB::LanguageModelStr::clear_recent_text_cache(KB::LanguageModelStr *this)
{
  if ((*(*this + 16))(this))
  {
    v2 = *(this + 23);
    if (v2)
    {
      atomic_store(1u, (v2 + 760));
    }

    std::mutex::lock(*(this + 17));
    v3 = *(this + 23);
    if (v3)
    {
      atomic_store(0, (v3 + 760));
    }

    language_modeling::v1::LanguageModelSession::clearPriorText(*(this + 25));
    v4 = *(this + 17);

    std::mutex::unlock(v4);
  }
}

void KB::LanguageModelStr::clear_dynamic_learning_cache(KB::LanguageModelStr *this)
{
  if ((*(*this + 16))(this))
  {
    v2 = *(this + 23);
    if (v2)
    {
      atomic_store(1u, (v2 + 760));
    }

    std::mutex::lock(*(this + 17));
    v3 = *(this + 23);
    if (v3)
    {
      atomic_store(0, (v3 + 760));
    }

    language_modeling::v1::LanguageModelSession::clearDynamicLearningCache(*(this + 25));
    v4 = *(this + 17);

    std::mutex::unlock(v4);
  }
}

uint64_t KB::LanguageModelStr::attach_to_dynamic_resource_directory(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return MEMORY[0x282181C20]();
  }

  return result;
}

uint64_t KB::LanguageModelStr::detach_from_dynamic_resource_directory(KB::LanguageModelStr *this)
{
  result = *(this + 25);
  if (result)
  {
    return MEMORY[0x282181C28]();
  }

  return result;
}

void KB::LanguageModelStr::reload_with_locales(KB::LanguageModelStr *this, const __CFArray *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*this + 16))(this))
  {
    v4 = atomic_load(this + 217);
    if ((v4 & 1) == 0)
    {
      v5 = *(this + 23);
      if (v5)
      {
        atomic_store(1u, (v5 + 760));
      }

      std::mutex::lock(*(this + 17));
      v6 = *(this + 23);
      if (v6)
      {
        atomic_store(0, (v6 + 760));
      }

      atomic_store(0, this + 216);
      atomic_store(1u, this + 217);
      language_modeling::v1::LanguageModel::reloadWithLocales(v12, *(this + 21), a2);
      v7 = v12[0];
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        if (v9)
        {
          *buf = 136315138;
          v15 = "reload_with_locales";
          _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%s Language model reload FAILED", buf, 0xCu);
        }

        v11[0] = 0;
        v11[1] = 0;
        v10 = v11;
        std::map<std::string,std::variant<BOOL,std::string>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *> *,long>>>(&v10, *(this + 35), this + 36);
        KB::LanguageModelStr::draft_radar_for_model_creation_failure(this, &v10, 1, v12);
        std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v11[0]);
      }

      else if (v9)
      {
        *buf = 136315138;
        v15 = "reload_with_locales";
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%s Language model reload SUCCEEDED", buf, 0xCu);
      }

      atomic_store(1u, this + 216);
      atomic_store(0, this + 217);
      std::mutex::unlock(*(this + 17));
      if (v13 < 0)
      {
        operator delete(v12[1]);
      }
    }
  }
}

uint64_t std::map<std::string,std::variant<BOOL,std::string>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v17[9] = v3;
    v17[10] = v4;
    v6 = a2;
    v7 = result;
    v8 = (result + 8);
    do
    {
      v9 = v7[1];
      v10 = v8;
      if (*v7 == v8)
      {
        goto LABEL_10;
      }

      v11 = v7[1];
      v12 = v8;
      if (v9)
      {
        do
        {
          v10 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v10 = v12[2];
          v13 = *v10 == v12;
          v12 = v10;
        }

        while (v13);
      }

      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 4, v6 + 4);
      if ((result & 0x80) != 0)
      {
LABEL_10:
        if (!v9)
        {
          v17[0] = v8;
LABEL_15:
          operator new();
        }

        v17[0] = v10;
        v14 = v10 + 1;
      }

      else
      {
        result = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(v7, v17, v6 + 4);
        v14 = result;
      }

      if (!*v14)
      {
        goto LABEL_15;
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v13 = *v16 == v6;
          v6 = v16;
        }

        while (!v13);
      }

      v6 = v16;
    }

    while (v16 != a3);
  }

  return result;
}

void KB::LanguageModelStr::draft_radar_for_model_creation_failure(uint64_t a1, const __CFLocale *a2, int a3, uint64_t a4)
{
  v52[3] = *MEMORY[0x277D85DE8];
  v7 = (a1 + 8);
  KB::string_from_locale(__p, *(a1 + 8), a2);
  if (v48 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (a3)
  {
    v9 = CFStringCreateWithFormat(0, 0, @"could not reload resources for locale %s", v8);
  }

  else
  {
    v9 = CFStringCreateWithFormat(0, 0, @"could not load resources for locale %s", v8);
  }

  v10 = v9;
  Mutable = CFStringCreateMutable(0, 0);
  v12 = Mutable;
  v15 = *(a4 + 8);
  v14 = a4 + 8;
  v13 = v15;
  if (*(v14 + 23) >= 0)
  {
    v13 = v14;
  }

  CFStringAppendFormat(Mutable, 0, @"Error message: %s\n\n", v13);
  if (v48 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  CFStringAppendFormat(v12, 0, @"Locale: %s\n\n", v16);
  CFStringAppend(v12, @"Options: \n");
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  std::map<std::string,std::variant<BOOL,std::string>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *> *,long>>>(&v44, *a2, a2 + 1);
  v50.__r_.__value_.__r.__words[2] = 0;
  *&v50.__r_.__value_.__l.__data_ = &v50.__r_.__value_.__l.__size_;
  v17 = v44;
  if (v44 != v45)
  {
    do
    {
      if (*(v17 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, v17[4], v17[5]);
      }

      else
      {
        v40 = *(v17 + 4);
      }

      v18 = *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(&v44, &v49, &v40);
      if (!v18)
      {
        abort();
      }

      v19 = *(v18 + 80);
      if (v19)
      {
        if (v19 == 1)
        {
          v49 = &v40;
          v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v50, &v40, &v49);
          std::string::operator=((v20 + 7), (v18 + 56));
        }
      }

      else
      {
        v49 = &v40;
        v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v50, &v40, &v49);
        if (*(v21 + 79) < 0)
        {
          v21[8] = 4;
          v22 = v21[7];
        }

        else
        {
          v22 = (v21 + 7);
          *(v21 + 79) = 4;
        }

        strcpy(v22, "true");
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      v23 = v17[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v17[2];
          v25 = *v24 == v17;
          v17 = v24;
        }

        while (!v25);
      }

      v17 = v24;
    }

    while (v24 != v45);
  }

  debugStringFromMap(&appendedString, &v50);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v50.__r_.__value_.__l.__size_);
  std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v45[0]);
  v26 = appendedString;
  CFStringAppend(v12, appendedString);
  CFStringAppend(v12, @"\nTrial Parameters: \n");
  KB::LanguageModelConfig::trial_parameters(&v40, v7, v27);
  if (v43 == 1)
  {
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      v50 = v40;
    }

    v52[0] = 0;
    v52[1] = 0;
    v51 = v52;
    v28 = v41;
    if (v41 != v42)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v51, v52, v28 + 4);
        v29 = v28[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v28[2];
            v25 = *v30 == v28;
            v28 = v30;
          }

          while (!v25);
        }

        v28 = v30;
      }

      while (v30 != v42);
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v50;
    }

    else
    {
      v31 = v50.__r_.__value_.__r.__words[0];
    }

    CFStringAppendFormat(v12, 0, @"languageModelBundlePath: %s\n", v31);
    debugStringFromMap(&v49, &v51);
    v32 = v49;
    CFStringAppend(v12, v49);
    if (v32)
    {
      CFRelease(v32);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v52[0]);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    CFStringAppend(v12, @"<no trial parameters>\n");
  }

  getTapToRadarServiceClass();
  if (objc_opt_class())
  {
    v33 = objc_alloc_init(getRadarDraftClass());
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"TextInput fault: %@", v10];
    [v33 setTitle:v34];

    v35 = [objc_alloc(getRadarComponentClass()) initWithName:@"TextInput" version:@"All" identifier:1139080];
    [v33 setComponent:v35];

    [v33 setClassification:2];
    [v33 setReproducibility:5];
    if (v12)
    {
      [v33 setProblemDescription:v12];
    }

    v36 = [(objc_class *)getTapToRadarServiceClass() shared];
    v49 = 0;
    [v36 createDraft:v33 forProcessNamed:@"Keyboard" withDisplayReason:v10 error:&v49];
    v37 = v49;

    if (v37)
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Tap-to-Radar Error: %@", v37];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v39 = [v38 cStringUsingEncoding:4];
        LODWORD(v50.__r_.__value_.__l.__data_) = 136315394;
        *(v50.__r_.__value_.__r.__words + 4) = "createTapToRadarDraft";
        WORD2(v50.__r_.__value_.__r.__words[1]) = 2080;
        *(&v50.__r_.__value_.__r.__words[1] + 6) = v39;
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Tap-to-radar error %s", &v50, 0x16u);
      }
    }
  }

  CFRelease(v10);
  CFRelease(v12);
  if (v43 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v42[0]);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v48 < 0)
  {
    operator delete(__p[0]);
  }
}

void std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    (off_283FD6FD8[v2])(&v3, a1 + 24);
  }

  *(a1 + 48) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJbSD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2, __int128 **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void debugStringFromMap(CFStringRef *a1, void *a2)
{
  memset(&v25, 0, sizeof(v25));
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
    v20 = &v25;
  }

  else
  {
    do
    {
      if (*(v4 + 55) >= 0)
      {
        v5 = *(v4 + 55);
      }

      else
      {
        v5 = v4[5];
      }

      std::string::basic_string[abi:nn200100](&v21, v5 + 4);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v21;
      }

      else
      {
        v6 = v21.__r_.__value_.__r.__words[0];
      }

      if (v5)
      {
        if (*(v4 + 55) >= 0)
        {
          v7 = v4 + 4;
        }

        else
        {
          v7 = v4[4];
        }

        memmove(v6, v7, v5);
      }

      strcpy(v6 + v5, ":\n\t ");
      v8 = *(v4 + 79);
      if (v8 >= 0)
      {
        v9 = (v4 + 7);
      }

      else
      {
        v9 = v4[7];
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 79);
      }

      else
      {
        v10 = v4[8];
      }

      v11 = std::string::append(&v21, v9, v10);
      v12 = v11->__r_.__value_.__r.__words[2];
      *&v22.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
      v22.__r_.__value_.__r.__words[2] = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v22, "\n", 1uLL);
      v14 = v13->__r_.__value_.__r.__words[2];
      *__p = *&v13->__r_.__value_.__l.__data_;
      v24 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if (v24 >= 0)
      {
        v16 = HIBYTE(v24);
      }

      else
      {
        v16 = __p[1];
      }

      std::string::append(&v25, v15, v16);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      v17 = v4[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v4[2];
          v19 = *v18 == v4;
          v4 = v18;
        }

        while (!v19);
      }

      v4 = v18;
    }

    while (v18 != v3);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }
  }

  *a1 = CFStringCreateWithCString(0, v20, 0x8000100u);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  v6 = (result + 8);
  if ((result + 8) != a2)
  {
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2 + 4);
    if ((result & 0x80) == 0)
    {
      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 4, a3);
      if ((result & 0x80) == 0)
      {
        v16 = a2;
        v17 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }

        return result;
      }

      v10 = a2[1];
      if (v10)
      {
        v11 = a2[1];
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v15 = a2;
        do
        {
          v12 = v15[2];
          v14 = *v12 == v15;
          v15 = v12;
        }

        while (!v14);
      }

      if (v12 == v6 || (result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v12 + 4), (result & 0x80) != 0))
      {
        if (v10)
        {
          v17 = v12;
        }

        else
        {
          v17 = a2;
          v12 = a2 + 1;
        }

        goto LABEL_22;
      }

LABEL_19:
      result = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(v5, &v17, a3);
      v12 = result;
      goto LABEL_22;
    }
  }

  v7 = *a2;
  if (*v5 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = a2;
      do
      {
        v9 = v13[2];
        v14 = *v9 == v13;
        v13 = v9;
      }

      while (v14);
    }

    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, a3);
    if ((result & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v7)
  {
    v17 = a2;
    goto LABEL_25;
  }

  v17 = v9;
  v12 = v9 + 1;
LABEL_22:
  if (!*v12)
  {
LABEL_25:
    operator new();
  }

  return result;
}

std::string *std::pair<std::string const,std::string>::pair[abi:nn200100](std::string *this, __int128 *a2)
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

  return this;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

std::string *std::pair<std::string const,std::variant<BOOL,std::string>>::pair[abi:nn200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__s.__data_[0] = 0;
  LODWORD(this[2].__r_.__value_.__l.__data_) = -1;
  v5 = *(a2 + 12);
  if (v5 != -1)
  {
    v7 = this + 1;
    (off_283FD7068[v5])(&v7, a2 + 24);
    LODWORD(this[2].__r_.__value_.__l.__data_) = v5;
  }

  return this;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJbSD_EEEEEEDcSN_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void KB::LanguageModelStr::load(KB::LanguageModelStr *this, int a2)
{
  i = this;
  v166[2] = *MEMORY[0x277D85DE8];
  if ((*(*this + 16))(this))
  {
    return;
  }

  atomic_store(0, i + 216);
  atomic_store(0, i + 217);
  v154[0] = 0;
  v154[1] = 0;
  v153 = v154;
  KB::string_from_locale(&__p, *(i + 1), v4);
  std::string::basic_string[abi:nn200100]<0>(&v165, *MEMORY[0x277D22E30]);
  v162.n128_u64[0] = &v165;
  v5 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &v165, &v162);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,std::string>((v5 + 56), v5 + 56, &__p);
  if (SHIBYTE(v166[0]) < 0)
  {
    operator delete(v165.n128_u64[0]);
  }

  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  v6 = *(i + 80);
  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E68]);
  v165.n128_u64[0] = &__p;
  v7 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  v8 = v7;
  v9 = *(v7 + 80);
  if (v9 != -1)
  {
    if (!v9)
    {
      *(v7 + 56) = v6;
      goto LABEL_11;
    }

    (off_283FD6FD8[v9])(&v165, v7 + 56);
  }

  *(v8 + 56) = v6;
  *(v8 + 80) = 0;
LABEL_11:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E98]);
  v165.n128_u64[0] = &__p;
  v10 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  v11 = v10;
  v12 = *(v10 + 80);
  if (v12 != -1)
  {
    if (!v12)
    {
      *(v10 + 56) = 1;
      goto LABEL_18;
    }

    (off_283FD6FD8[v12])(&v165, v10 + 56);
  }

  *(v11 + 56) = 1;
  *(v11 + 80) = 0;
LABEL_18:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22DB8]);
  v165.n128_u64[0] = &__p;
  v13 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  v14 = v13;
  v15 = *(v13 + 80);
  if (v15 != -1)
  {
    if (!v15)
    {
      *(v13 + 56) = 1;
      goto LABEL_25;
    }

    (off_283FD6FD8[v15])(&v165, v13 + 56);
  }

  *(v14 + 56) = 1;
  *(v14 + 80) = 0;
LABEL_25:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22EC8]);
  v165.n128_u64[0] = &__p;
  v16 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,char const*&>(v16 + 56, (v16 + 56), MEMORY[0x277D22ED0]);
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  v17 = MEMORY[0x277D22EE8];
  v18 = MEMORY[0x277D22EF0];
  v19 = *(i + 24);
  if (v19 != 80)
  {
    v18 = MEMORY[0x277D22EF8];
  }

  if (v19 != 70)
  {
    v17 = v18;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *v17);
  std::string::basic_string[abi:nn200100]<0>(&v165, *MEMORY[0x277D22F00]);
  v162.n128_u64[0] = &v165;
  v20 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &v165, &v162);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,std::string>((v20 + 56), v20 + 56, &__p);
  if (SHIBYTE(v166[0]) < 0)
  {
    operator delete(v165.n128_u64[0]);
  }

  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  v21 = *(i + 81);
  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22DC0]);
  v165.n128_u64[0] = &__p;
  v22 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  v23 = v22;
  v24 = *(v22 + 80);
  if (v24 != -1)
  {
    if (!v24)
    {
      *(v22 + 56) = v21;
      goto LABEL_42;
    }

    (off_283FD6FD8[v24])(&v165, v22 + 56);
  }

  *(v23 + 56) = v21;
  *(v23 + 80) = 0;
LABEL_42:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
    if (a2)
    {
      goto LABEL_53;
    }
  }

  else if (a2)
  {
    goto LABEL_53;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22DD0]);
  v165.n128_u64[0] = &__p;
  v25 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  v26 = v25;
  v27 = *(v25 + 80);
  if (v27 != -1)
  {
    if (!v27)
    {
      *(v25 + 56) = 1;
      goto LABEL_51;
    }

    (off_283FD6FD8[v27])(&v165, v25 + 56);
  }

  *(v26 + 56) = 1;
  *(v26 + 80) = 0;
LABEL_51:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

LABEL_53:
  v151 = 0uLL;
  v152 = 0;
  v28 = *(i + 2);
  v146 = i;
  v144 = (i + 8);
  v143 = a2;
  if (v28 && (Count = CFArrayGetCount(v28), Count >= 1))
  {
    v30 = Count;
    v31 = 0;
    v32 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(i + 2), v31);
      KB::string_from_locale(&v165, ValueAtIndex, v34);
      v35 = *(&v151 + 1);
      if (*(&v151 + 1) >= v152)
      {
        v37 = v32;
        v38 = 0xAAAAAAAAAAAAAAABLL * ((*(&v151 + 1) - v151) >> 3) + 1;
        if (v38 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v152 - v151) >> 3) > v38)
        {
          v38 = 0x5555555555555556 * ((v152 - v151) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v152 - v151) >> 3) >= 0x555555555555555)
        {
          v39 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v39 = v38;
        }

        __p.__end_cap_.__value_ = &v151;
        if (v39)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v39);
        }

        v41 = (8 * ((*(&v151 + 1) - v151) >> 3));
        if (SHIBYTE(v166[0]) < 0)
        {
          std::string::__init_copy_ctor_external(v41, v165.n128_u64[0], v165.n128_u64[1]);
        }

        else
        {
          v42 = v165;
          *(8 * ((*(&v151 + 1) - v151) >> 3) + 0x10) = v166[0];
          *&v41->__r_.__value_.__l.__data_ = v42;
        }

        v40 = v41 + 1;
        v43 = v41 - (*(&v151 + 1) - v151);
        memcpy(v43, v151, *(&v151 + 1) - v151);
        v44 = v151;
        v45 = v152;
        *&v151 = v43;
        *(&v151 + 1) = v40;
        v152 = 0;
        __p.__end_ = v44;
        __p.__end_cap_.__value_ = v45;
        __p.__first_ = v44;
        __p.__begin_ = v44;
        std::__split_buffer<std::string>::~__split_buffer(&__p);
        i = v146;
        v32 = v37;
      }

      else
      {
        if (SHIBYTE(v166[0]) < 0)
        {
          std::string::__init_copy_ctor_external(*(&v151 + 1), v165.n128_u64[0], v165.n128_u64[1]);
        }

        else
        {
          v36 = v165;
          *(*(&v151 + 1) + 16) = v166[0];
          *v35 = v36;
        }

        v40 = &v35[1].n128_i8[8];
      }

      *(&v151 + 1) = v40;
      if (_os_feature_enabled_impl())
      {
        v32 = 1;
      }

      if (SHIBYTE(v166[0]) < 0)
      {
        operator delete(v165.n128_u64[0]);
      }

      ++v31;
    }

    while (v30 != v31);
  }

  else
  {
    LOBYTE(v32) = 0;
  }

  v145 = v32;
  std::string::basic_string[abi:nn200100]<0>(&__str, "");
  v46 = *(&v151 + 1);
  if (*(&v151 + 1) == v151)
  {
    goto LABEL_89;
  }

  v47 = v151 + 24;
  if (*(v151 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, *v151, *(v151 + 8));
  }

  else
  {
    v48 = *v151;
    v149.__r_.__value_.__r.__words[2] = *(v151 + 16);
    *&v149.__r_.__value_.__l.__data_ = v48;
  }

  if (v47 != v46)
  {
    size = HIBYTE(v149.__r_.__value_.__r.__words[2]);
    v56 = v149.__r_.__value_.__r.__words[0];
    while (1)
    {
      v57 = size;
      if ((size & 0x80u) != 0)
      {
        size = v149.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__p, size + 1);
      if (SHIBYTE(__p.__end_) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__first_;
      }

      if (size)
      {
        if (v57 >= 0)
        {
          v59 = &v149;
        }

        else
        {
          v59 = v56;
        }

        memmove(p_p, v59, size);
      }

      *(&p_p->__r_.__value_.__l.__data_ + size) = 44;
      v60 = *(v47 + 23);
      if (v60 >= 0)
      {
        v61 = v47;
      }

      else
      {
        v61 = *v47;
      }

      if (v60 >= 0)
      {
        v62 = *(v47 + 23);
      }

      else
      {
        v62 = *(v47 + 8);
      }

      v63 = std::string::append(&__p, v61, v62);
      v49 = v63->__r_.__value_.__r.__words[0];
      v165.n128_u64[0] = v63->__r_.__value_.__l.__size_;
      *(v165.n128_u64 + 7) = *(&v63->__r_.__value_.__r.__words[1] + 7);
      size = HIBYTE(v63->__r_.__value_.__r.__words[2]);
      v63->__r_.__value_.__r.__words[0] = 0;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__end_) < 0)
      {
        operator delete(__p.__first_);
        if (v57 < 0)
        {
LABEL_115:
          operator delete(v56);
        }
      }

      else if (v57 < 0)
      {
        goto LABEL_115;
      }

      v149.__r_.__value_.__r.__words[0] = v49;
      v149.__r_.__value_.__l.__size_ = v165.n128_u64[0];
      *(&v149.__r_.__value_.__r.__words[1] + 7) = *(v165.n128_u64 + 7);
      *(&v149.__r_.__value_.__s + 23) = size;
      v47 += 24;
      v56 = v49;
      if (v47 == v46)
      {
        goto LABEL_86;
      }
    }
  }

  v49 = v149.__r_.__value_.__r.__words[0];
  LOBYTE(size) = *(&v149.__r_.__value_.__s + 23);
LABEL_86:
  __p.__first_ = v149.__r_.__value_.__l.__size_;
  *(&__p.__first_ + 7) = *(&v149.__r_.__value_.__r.__words[1] + 7);
  memset(&v149, 0, sizeof(v149));
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v49;
  __str.__r_.__value_.__l.__size_ = __p.__first_;
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&__p.__first_ + 7);
  *(&__str.__r_.__value_.__s + 23) = size;
  i = v146;
LABEL_89:
  std::string::basic_string[abi:nn200100]<0>(&v165, *MEMORY[0x277D22E00]);
  __p.__first_ = &v165;
  v51 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &v165, &__p);
  v52 = v51;
  v53 = *(v51 + 80);
  if (v53 == 1)
  {
    std::string::operator=((v51 + 56), &__str);
    v54 = v144;
    v55 = v143;
  }

  else
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      v53 = *(v52 + 80);
    }

    else
    {
      *&__p.__first_ = *&__str.__r_.__value_.__l.__data_;
      __p.__end_ = __str.__r_.__value_.__r.__words[2];
    }

    v54 = v144;
    v55 = v143;
    if (v53 != -1)
    {
      (off_283FD6FD8[v53])(&v162, v52 + 56);
    }

    *(v52 + 56) = *&__p.__first_;
    *(v52 + 72) = __p.__end_;
    *(v52 + 80) = 1;
  }

  if (SHIBYTE(v166[0]) < 0)
  {
    operator delete(v165.n128_u64[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E90]);
  v165.n128_u64[0] = &__p;
  v64 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  v65 = v64;
  v66 = *(v64 + 80);
  if (v66 != -1)
  {
    if (!v66)
    {
      *(v64 + 56) = v145;
      goto LABEL_127;
    }

    (off_283FD6FD8[v66])(&v165, v64 + 56);
  }

  *(v65 + 56) = v145;
  *(v65 + 80) = 0;
LABEL_127:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22EE0]);
  v165.n128_u64[0] = &__p;
  v67 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
  v68 = v67;
  v69 = *(v67 + 80);
  if (v69 != -1)
  {
    if (!v69)
    {
      *(v67 + 56) = v145;
      goto LABEL_134;
    }

    (off_283FD6FD8[v69])(&v165, v67 + 56);
  }

  *(v68 + 56) = v145;
  *(v68 + 80) = 0;
LABEL_134:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  v70 = *(i + 4);
  if (v70 && CFArrayGetCount(*(i + 4)) >= 1)
  {
    v71 = CFStringCreateByCombiningStrings(*MEMORY[0x277CBECE8], v70, @",");
    KB::utf8_string(&__p, v71);
    begin = __p.__begin_;
    if (!__p.__begin_)
    {
      begin = &__p.__end_;
    }

    if (LOWORD(__p.__first_))
    {
      v73 = begin;
    }

    else
    {
      v73 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&v165, v73);
    std::string::basic_string[abi:nn200100]<0>(&v162, *MEMORY[0x277D22EA0]);
    *buf = &v162;
    v74 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &v162, buf);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,std::string>((v74 + 56), v74 + 56, &v165);
    if (v163 < 0)
    {
      operator delete(v162.n128_u64[0]);
    }

    if (SHIBYTE(v166[0]) < 0)
    {
      operator delete(v165.n128_u64[0]);
    }

    if (__p.__begin_ && BYTE6(__p.__first_) == 1)
    {
      free(__p.__begin_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E48]);
    v165.n128_u64[0] = &__p;
    v75 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v165);
    v76 = v75;
    v77 = *(v75 + 80);
    if (v77 != -1)
    {
      if (!v77)
      {
        *(v75 + 56) = 1;
LABEL_155:
        if (SHIBYTE(__p.__end_) < 0)
        {
          operator delete(__p.__first_);
        }

        if (v71)
        {
          CFRelease(v71);
        }

        goto LABEL_159;
      }

      (off_283FD6FD8[v77])(&v165, v75 + 56);
    }

    *(v76 + 56) = 1;
    *(v76 + 80) = 0;
    goto LABEL_155;
  }

LABEL_159:
  v78 = CFArrayGetValueAtIndex(*(i + 2), 0);
  v79 = MEMORY[0x2318BC170](v78);
  KB::utf8_string(&__p, v79);
  if (*(i + 81))
  {
    v80 = "Siri-TextInput-Dynamic.";
  }

  else
  {
    v80 = "TextInput-Dynamic.";
  }

  v81 = KB::String::String(&v165, v80);
  KB::String::append(v81, &__p);
  if (__p.__begin_ && BYTE6(__p.__first_) == 1)
  {
    free(__p.__begin_);
  }

  v82 = v165.n128_u64[1];
  if (!v165.n128_u64[1])
  {
    v82 = v166;
  }

  if (v165.n128_u16[0])
  {
    v83 = v82;
  }

  else
  {
    v83 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v83);
  std::string::basic_string[abi:nn200100]<0>(&v162, *MEMORY[0x277D22E58]);
  *buf = &v162;
  v84 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &v162, buf);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,std::string>((v84 + 56), v84 + 56, &__p);
  if (v163 < 0)
  {
    operator delete(v162.n128_u64[0]);
  }

  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  if (v145)
  {
    KB::String::String(&v162, "mul");
    if (*(i + 81))
    {
      v85 = "Siri-TextInput-Dynamic.";
    }

    else
    {
      v85 = "TextInput-Dynamic.";
    }

    KB::String::String(&__p, v85);
    KB::String::append(&__p, &v162);
    if (v162.n128_u64[1] && v162.n128_u8[6] == 1)
    {
      free(v162.n128_u64[1]);
    }

    p_end = __p.__begin_;
    if (!__p.__begin_)
    {
      p_end = &__p.__end_;
    }

    if (LOWORD(__p.__first_))
    {
      v87 = p_end;
    }

    else
    {
      v87 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&v162, v87);
    std::string::basic_string[abi:nn200100]<0>(buf, *MEMORY[0x277D22EA8]);
    v155 = buf;
    v88 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, buf, &v155);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,std::string>((v88 + 56), v88 + 56, &v162);
    if (v161 < 0)
    {
      operator delete(*buf);
    }

    if (v163 < 0)
    {
      operator delete(v162.n128_u64[0]);
    }

    if (__p.__begin_ && BYTE6(__p.__first_) == 1)
    {
      free(__p.__begin_);
    }
  }

  v89 = *(i + 5);
  if (v89)
  {
    KB::utf8_string(&__p, v89);
    v90 = __p.__begin_;
    if (!__p.__begin_)
    {
      v90 = &__p.__end_;
    }

    if (LOWORD(__p.__first_))
    {
      v91 = v90;
    }

    else
    {
      v91 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&v162, v91);
    std::string::basic_string[abi:nn200100]<0>(buf, *MEMORY[0x277D22EB8]);
    v155 = buf;
    v92 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, buf, &v155);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,std::string>((v92 + 56), v92 + 56, &v162);
    if (v161 < 0)
    {
      operator delete(*buf);
    }

    if (v163 < 0)
    {
      operator delete(v162.n128_u64[0]);
    }

    if (__p.__begin_ && BYTE6(__p.__first_) == 1)
    {
      free(__p.__begin_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E20]);
    v162.n128_u64[0] = &__p;
    v93 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v162);
    v95 = v93;
    v96 = *(v93 + 80);
    if (v96 != -1)
    {
      if (!v96)
      {
        *(v93 + 56) = 1;
        goto LABEL_217;
      }

      (off_283FD6FD8[v96])(&v162, v93 + 56);
    }

    *(v95 + 56) = 1;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E20]);
    v162.n128_u64[0] = &__p;
    v97 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v162);
    v95 = v97;
    v98 = *(v97 + 80);
    if (v98 != -1)
    {
      if (!v98)
      {
        *(v97 + 56) = 0;
        goto LABEL_217;
      }

      (off_283FD6FD8[v98])(&v162, v97 + 56);
    }

    *(v95 + 56) = 0;
  }

  *(v95 + 80) = 0;
LABEL_217:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
    if (!v55)
    {
      goto LABEL_245;
    }
  }

  else if (!v55)
  {
    goto LABEL_245;
  }

  if (*(i + 92) == 1)
  {
    v99 = s_use_lm_transformer;
    if (s_use_lm_transformer)
    {
      if (*(i + 17) == 1 || !*(i + 18))
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22EC0]);
        v162.n128_u64[0] = &__p;
        v100 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v162);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,char const*&>(v100 + 56, (v100 + 56), MEMORY[0x277D22DE8]);
        if (SHIBYTE(__p.__end_) < 0)
        {
          operator delete(__p.__first_);
        }

        v99 = s_use_lm_transformer;
      }

      if ((v99 == 2 || v99 == -1) && (*(i + 17) == 1 || !*(i + 18)))
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22EB0]);
        v162.n128_u64[0] = &__p;
        v101 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v162);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,char const*&>(v101 + 56, (v101 + 56), MEMORY[0x277D22DE8]);
        if (SHIBYTE(__p.__end_) < 0)
        {
          operator delete(__p.__first_);
        }
      }
    }

    v102 = *(i + 19);
    if (v102 != 2)
    {
      if (v102)
      {
        v103 = "ToucanLanguageModelDisabled";
      }

      else
      {
        v103 = *MEMORY[0x277D22DE8];
      }

      std::string::basic_string[abi:nn200100]<0>(&v162, *MEMORY[0x277D22ED8]);
      __p.__first_ = &v162;
      v104 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &v162, &__p);
      v105 = v104;
      if (*(v104 + 80) == 1)
      {
        std::string::__assign_external((v104 + 56), v103);
      }

      else
      {
        std::string::basic_string[abi:nn200100]<0>(&__p, v103);
        v106 = *(v105 + 80);
        if (v106 != -1)
        {
          (off_283FD6FD8[v106])(buf, v105 + 56);
        }

        *(v105 + 56) = *&__p.__first_;
        *(v105 + 72) = __p.__end_;
        *(v105 + 80) = 1;
      }

      if (v163 < 0)
      {
        operator delete(v162.n128_u64[0]);
      }
    }
  }

LABEL_245:
  if (*(i + 82) != 1)
  {
    goto LABEL_253;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, *MEMORY[0x277D22E78]);
  v162.n128_u64[0] = &__p;
  v107 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v153, &__p, &v162);
  v108 = v107;
  v109 = *(v107 + 80);
  if (v109 != -1)
  {
    if (!v109)
    {
      *(v107 + 56) = 1;
      goto LABEL_251;
    }

    (off_283FD6FD8[v109])(&v162, v107 + 56);
  }

  *(v108 + 56) = 1;
  *(v108 + 80) = 0;
LABEL_251:
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

LABEL_253:
  v110 = (i + 280);
  if ((i + 280) != &v153)
  {
    v111 = v153;
    if (!*(i + 37))
    {
      goto LABEL_285;
    }

    v112 = *(i + 35);
    v113 = *(i + 36);
    *(i + 35) = i + 288;
    *(v113 + 16) = 0;
    *(i + 36) = 0;
    *(i + 37) = 0;
    if (*(v112 + 8))
    {
      v114 = *(v112 + 8);
    }

    else
    {
      v114 = v112;
    }

    if (v114)
    {
      v115 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::_DetachedTreeCache::__detach_next(v114);
      if (v111 != v154)
      {
        v116 = v111;
        while (1)
        {
          v117 = v115;
          std::string::operator=((v114 + 32), (v116 + 4));
          v118 = *(v114 + 80);
          v119 = *(v116 + 20);
          if (v118 == -1)
          {
            if (v119 != -1)
            {
LABEL_265:
              __p.__first_ = (v114 + 56);
              (*(&off_283FD7078 + v119))(&__p, v114 + 56, v116 + 7);
            }
          }

          else
          {
            if (v119 != -1)
            {
              goto LABEL_265;
            }

            (off_283FD6FD8[v118])(&__p, v114 + 56);
            *(v114 + 80) = -1;
          }

          leaf_high = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_leaf_high(v110, &__p, (v114 + 32));
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(v110, __p.__first_, leaf_high, v114);
          if (v115)
          {
            v115 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::_DetachedTreeCache::__detach_next(v115);
          }

          else
          {
            v115 = 0;
          }

          v121 = v116[1];
          if (v121)
          {
            do
            {
              v111 = v121;
              v121 = *v121;
            }

            while (v121);
          }

          else
          {
            do
            {
              v111 = v116[2];
              v122 = *v111 == v116;
              v116 = v111;
            }

            while (!v122);
          }

          if (v117)
          {
            v114 = v117;
            v116 = v111;
            if (v111 != v154)
            {
              continue;
            }
          }

          goto LABEL_279;
        }
      }

      v117 = v114;
LABEL_279:
      std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v117);
      if (!v115)
      {
        i = v146;
LABEL_285:
        if (v111 != v154)
        {
          operator new();
        }

        goto LABEL_287;
      }

      v124 = v115[2];
      for (i = v146; v124; v124 = v124[2])
      {
        v115 = v124;
      }

      v123 = v115;
    }

    else
    {
      v123 = 0;
    }

    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v123);
    goto LABEL_285;
  }

LABEL_287:
  KB::LanguageModelConfig::trial_parameters(&__p, v54, v94);
  language_modeling::v1::LanguageModel::init();
  if (v157 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__p.__end_cap_.__value_);
    if (SHIBYTE(__p.__end_) < 0)
    {
      operator delete(__p.__first_);
    }
  }

  if (v162.n128_u32[0])
  {
    v148[0] = 0;
    v148[1] = 0;
    v147 = v148;
    std::map<std::string,std::variant<BOOL,std::string>>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *> *,long>>>(&v147, v153, v154);
    KB::LanguageModelStr::draft_radar_for_model_creation_failure(i, &v147, 0, &v162);
    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v148[0]);
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v125 = TIOSLogFacility();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      KB::string_from_locale(&__p, *v54, v126);
      v127 = SHIBYTE(__p.__end_) >= 0 ? &__p : __p.__first_;
      *buf = 136315394;
      *&buf[4] = "load";
      v159 = 2080;
      v160 = v127;
      _os_log_debug_impl(&dword_22CA55000, v125, OS_LOG_TYPE_DEBUG, "%s Language model load for locale %s FAILED", buf, 0x16u);
      if (SHIBYTE(__p.__end_) < 0)
      {
        operator delete(__p.__first_);
      }
    }
  }

  else
  {
    KB::LanguageModelStr::__start_session(i, *(i + 16));
    v128 = *(i + 21);
    SharedVocabulary = LMVocabularyGetSharedVocabulary();
    language_modeling::v1::LanguageModel::addVocabulary(v128, SharedVocabulary);
    language_modeling::v1::LanguageModel::wireMemory(*(i + 21));
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v130 = TIOSLogFacility();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
    {
      KB::string_from_locale(&__p, *v54, v131);
      v141 = SHIBYTE(__p.__end_) >= 0 ? &__p : __p.__first_;
      *buf = 136315394;
      *&buf[4] = "load";
      v159 = 2080;
      v160 = v141;
      _os_log_debug_impl(&dword_22CA55000, v130, OS_LOG_TYPE_DEBUG, "%s Language model load for locale %s SUCCEEDED", buf, 0x16u);
      if (SHIBYTE(__p.__end_) < 0)
      {
        operator delete(__p.__first_);
      }
    }

    v132 = language_modeling::v1::LanguageModel::copyLinguisticDataFileInfo(*(i + 21));
    v133 = v132;
    if (v132)
    {
      CFRetain(v132);
      v134 = v133;
      v135 = [v134 objectForKeyedSubscript:*MEMORY[0x277D23128]];
      v136 = v135;
      if (v135 && [v135 count])
      {
        v137 = [v136 objectAtIndexedSubscript:0];
        v138 = v137;
        if (v137)
        {
          v139 = [v137 objectForKeyedSubscript:@"URL"];
          if (v139)
          {
            v140 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v139];
          }

          else
          {
            v140 = 0;
          }
        }

        else
        {
          v140 = 0;
        }
      }

      else
      {
        v140 = 0;
      }
    }

    else
    {
      v140 = 0;
      v134 = 0;
    }

    v142 = *(i + 34);
    if (v142)
    {
      CFRelease(v142);
    }

    *(i + 34) = v140;
    if (v133)
    {
      CFRelease(v133);
      atomic_store(1u, i + 216);
      CFRelease(v133);
    }

    else
    {
      atomic_store(1u, i + 216);
    }
  }

  if (v164 < 0)
  {
    operator delete(v162.n128_u64[1]);
  }

  if (v165.n128_u64[1] && v165.n128_u8[6] == 1)
  {
    free(v165.n128_u64[1]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __p.__first_ = &v151;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__p);
  std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v154[0]);
}

uint64_t std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,std::string>(__n128 *a1, uint64_t a2, __n128 *a3)
{
  v5 = a1[1].n128_u32[2];
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_283FD6FD8[v5])(&v8, a1);
LABEL_7:
    a1[1].n128_u32[2] = -1;
    result = *a3;
    a1[1].n128_u64[0] = a3[1].n128_u64[0];
    *a1 = result;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    a1[1].n128_u32[2] = 1;
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:nn200100]<1ul,std::string,char const*&>(uint64_t a1, std::string *this, const std::string::value_type **a3)
{
  if (*(a1 + 24) == 1)
  {
    v6 = *a3;

    std::string::__assign_external(this, v6);
  }

  else
  {
    *&v12[17] = v3;
    v13 = v4;
    std::string::basic_string[abi:nn200100]<0>(&v10, *a3);
    v9 = *(a1 + 24);
    if (v9 != -1)
    {
      (off_283FD6FD8[v9])(v12, a1);
    }

    result = *&v10;
    *a1 = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = 1;
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

void *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJbSD_EEERKSU_EEEDcSM_DpT0_(uint64_t *a1, std::string *this, std::string *__str)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == 1)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
      v4 = *(v3 + 24);
    }

    else
    {
      v6 = *__str;
    }

    if (v4 != -1)
    {
      (off_283FD6FD8[v4])(&v7, v3);
    }

    result = *&v6.__r_.__value_.__l.__data_;
    *v3 = v6;
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJbSD_EEERKSU_EEEDcSM_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  v5 = *(*result + 24);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    result = (off_283FD6FD8[v5])(&v6, v4);
  }

  *v4 = *a3;
  *(v4 + 24) = 0;
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

uint64_t *std::vector<unsigned int>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void KB::LanguageModelStr::~LanguageModelStr(KB::LanguageModelStr *this)
{
  KB::LanguageModelStr::~LanguageModelStr(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD6D40;
  v2 = atomic_load(this + 216);
  if (v2)
  {
    v3 = atomic_load(this + 217);
    if ((v3 & 1) == 0)
    {
      language_modeling::v1::LanguageModel::unwireMemory(*(this + 21));
    }
  }

  atomic_store(0, this + 216);
  atomic_store(0, this + 217);
  std::__tree<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::__map_value_compare<KB::String const,std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>,std::less<KB::String const>,true>,std::allocator<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node,std::default_delete<KB::LRUCache<KB::String,std::vector<KB::LanguageModel::PredictionInfo>>::Node>>>>>::destroy(*(this + 42));
  std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(*(this + 36));
  v4 = *(this + 34);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 34) = 0;
  v5 = *(this + 26);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 22);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_283FDC9A8;
  v9 = *(this + 18);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    _Block_release(v10);
  }

  *(this + 16) = 0;
  v11 = *(this + 13);
  if (v11)
  {
    *(this + 14) = v11;
    operator delete(v11);
  }

  KB::LanguageModelConfig::~LanguageModelConfig((this + 8));
}

void KB::LanguageModelConfig::~LanguageModelConfig(KB::LanguageModelConfig *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 6) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 5) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 4) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 3) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 2) = 0;
  v7 = *(this + 1);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 1) = 0;
  if (*this)
  {
    CFRelease(*this);
  }

  *this = 0;
}

void std::__shared_ptr_emplace<TIInlineCompletionGeneratorImpl>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 384))
  {
    uset_close();
  }

  v2 = *(a1 + 776);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::~__optional_storage_base(a1 + 432);
  v3 = *(a1 + 424);
  if (v3)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v3);
  }

  if (*(a1 + 416) == 1)
  {
    v10 = (a1 + 392);
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v10);
  }

  if (*(a1 + 376) == 1)
  {
    v10 = (a1 + 352);
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v10);
  }

  std::unique_ptr<TI::RejectionsDatabase>::reset[abi:nn200100]((a1 + 336), 0);
  v4 = *(a1 + 328);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (*(a1 + 312) == 1)
  {
    std::pair<KB::LanguageModelContext,TIInlineCompletion>::~pair(a1 + 128);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 88) = 0;
  v6 = *(a1 + 80);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 80) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 72) = 0;
  v8 = *(a1 + 64);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {

    std::__shared_weak_count::__release_weak(v9);
  }
}

void std::__shared_ptr_emplace<TIInlineCompletionGeneratorImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD7040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<language_modeling::v1::LanguageModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD7008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::LanguageModelStr::lock_language_model(KB::LanguageModelStr *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    atomic_store(1u, (v2 + 760));
  }

  std::mutex::lock(*(this + 17));
  v3 = *(this + 23);
  if (v3)
  {
    atomic_store(0, (v3 + 760));
  }
}

KB::LanguageModelStr::PredictionEnumeratorStr *KB::LanguageModelStr::PredictionEnumeratorStr::PredictionEnumeratorStr(KB::LanguageModelStr::PredictionEnumeratorStr *this, const KB::LanguageModelStr *a2, const KB::LanguageModelContext *a3, unsigned int a4)
{
  *this = &unk_283FD6FB8;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  KB::LanguageModelStr::get_predictions(a2, a3, a4, this + 1);
  return this;
}

{
  *this = &unk_283FD6FB8;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  KB::LanguageModelStr::get_predictions(a2, a3, a4, this + 1);
  return this;
}

id TICreateNameReadingPairsFromContactCollection(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{6 * objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
        TICreateNameReadingPairFromContactAndAppendToArray(v8, 0, 0, v2);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void TICreateNameReadingPairFromContactAndAppendToArray(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v26 = a1;
  v7 = a3;
  v8 = a4;
  v9 = [v26 firstName];
  v10 = [v26 lastName];
  if (v6 == 2)
  {
    v11 = [v7 contactNameWubiCodePairsForFirstName:v9 lastName:v10];
    [v8 addObjectsFromArray:v11];
  }

  else
  {
    v12 = [v26 nickname];
    v11 = v12;
    if (v9 || v10 || v12)
    {
      v13 = [v26 phoneticFirstName];
      v14 = [v13 lowercaseString];

      v15 = [v26 phoneticLastName];
      v16 = [v15 lowercaseString];

      v17 = TIGenerateReading(v14, v9, v6, v7);

      v18 = TIGenerateReading(v16, v10, v6, v7);

      v19 = TIGenerateReading(0, v11, v6, v7);
      if (v9 && v10 && (([v9 _containsIdeographicCharacters] & 1) != 0 || (objc_msgSend(v9, "_containsHiraganaOrKatakana") & 1) != 0 || objc_msgSend(v9, "_containsKorean")) && ((objc_msgSend(v10, "_containsIdeographicCharacters") & 1) != 0 || (objc_msgSend(v10, "_containsHiraganaOrKatakana") & 1) != 0 || objc_msgSend(v10, "_containsKorean")))
      {
        v20 = [v10 stringByAppendingString:v9];
        if ([v17 length] && objc_msgSend(v18, "length"))
        {
          v21 = [v18 stringByAppendingString:v17];
        }

        else
        {
          v21 = [MEMORY[0x277CBEB68] null];
        }

        v22 = v21;
        [v8 addObject:v20];
        [v8 addObject:v22];
      }

      if ([v10 length])
      {
        [v8 addObject:v10];
        if ([v18 length])
        {
          [v8 addObject:v18];
        }

        else
        {
          v23 = [MEMORY[0x277CBEB68] null];
          [v8 addObject:v23];
        }
      }

      if ([v9 length])
      {
        [v8 addObject:v9];
        if ([v17 length])
        {
          [v8 addObject:v17];
        }

        else
        {
          v24 = [MEMORY[0x277CBEB68] null];
          [v8 addObject:v24];
        }
      }

      if ([v11 length])
      {
        [v8 addObject:v11];
        if ([v19 length])
        {
          [v8 addObject:v19];
        }

        else
        {
          v25 = [MEMORY[0x277CBEB68] null];
          [v8 addObject:v25];
        }
      }
    }
  }
}

id TIGenerateReading(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (a3 == 3)
  {
    if ([v7 length] && (objc_msgSend(v7, "_containsBopomofoOnly") & 1) != 0 || !objc_msgSend(v8, "_containsIdeographicCharacters"))
    {
      goto LABEL_17;
    }

    v12 = [v8 _stringByTransliteratingToZhuyin];
LABEL_14:
    v11 = v7;
    goto LABEL_15;
  }

  if (a3 == 2)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    v12 = [v9 readingForWubiWord:v8];
    goto LABEL_14;
  }

  if (a3 == 1 && ![v7 length])
  {
    if (![v8 _containsIdeographicCharacters])
    {
      v11 = [v8 stringByFoldingWithOptions:129 locale:0];
      v14 = [MEMORY[0x277CCA900] pinyinInputCharacterSet];
      v15 = [v14 invertedSet];

      if ([v11 rangeOfCharacterFromSet:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v11;

        v7 = v16;
      }

      goto LABEL_16;
    }

    v11 = [v8 _stringByTransliteratingToPinyin];

    if ([v11 length])
    {
      v12 = [v11 stringByFoldingWithOptions:129 locale:0];
LABEL_15:
      v7 = v12;
LABEL_16:

      goto LABEL_17;
    }

    v7 = v11;
  }

LABEL_17:

  return v7;
}

void __TIGetKeyboardForceSpaceCorrectionsValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardForceSpaceCorrections" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

void __TIGetKeyboardDisableSpaceCorrectionsValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardDisableSpaceCorrections" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

void KB::FilterLearnedTypo::filter_candidates(KB::FilterLearnedTypo *this, unint64_t **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if ((0x1CAC083126E978D5 * (a2[1] - *a2)) >= 2)
  {
    v5 = v4[1] + 240 * *v4;
    if ((*(v5 - 136) & 0x2040000) == 0x2000000 && *(v5 - 116) <= 1u)
    {
      v6 = v4[125];
      if (*v4 < v6)
      {
        v48[0] = &unk_283FD7288;
        v49 = v48;
        if (*(v5 - 232))
        {
          v9 = *(v5 - 232);
        }

        else
        {
          v9 = v5 - 224;
        }

        v38 = v9;
        v10 = *(v5 - 240);
        v39 = 0;
        v40 = v10;
        v41 = 0;
        KB::String::iterator::initialize(&v38);
        v34 = v9;
        v35 = v10;
        v36 = v10;
        v37 = 0;
        KB::String::iterator::initialize(&v34);
        v11 = v39;
        v12 = (v6 - 1);
        if (v12 >= 0)
        {
          while (v11 < v35)
          {
            v13 = (v4[126] + 240 * v12);
            if ((*(v13 + 135) & 4) != 0)
            {
              KB::String::iterator::operator--(&v34);
              v17 = *(v13 + 1);
              if (!v17)
              {
                v17 = (v13 + 8);
              }

              v45 = v17;
              LODWORD(v46) = 0;
              HIDWORD(v46) = *v13;
              v47 = 0;
              KB::String::iterator::initialize(&v45);
              LODWORD(v45) = v47;
              LODWORD(v42) = v37;
              if (!v49)
              {
                v32 = std::__throw_bad_function_call[abi:nn200100]();
                std::vector<KB::Candidate>::erase[abi:nn200100](v32, v33);
                return;
              }

              if (((*(*v49 + 48))(v49, &v45, &v42) & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (*(v13 + 1))
              {
                v14 = *(v13 + 1);
              }

              else
              {
                v14 = (v13 + 8);
              }

              v45 = v14;
              LODWORD(v46) = 0;
              v15 = *v13;
              HIDWORD(v46) = v15;
              v47 = 0;
              KB::String::iterator::initialize(&v45);
              v42 = v14;
              LODWORD(v43) = v15;
              HIDWORD(v43) = v15;
              v44 = 0;
              KB::String::iterator::initialize(&v42);
              v16 = v46;
              while (v16 < v43)
              {
                KB::String::iterator::operator--(&v34);
                KB::String::iterator::operator--(&v42);
                if (v35 < v11 || v44 != v37)
                {
                  goto LABEL_50;
                }
              }
            }

            if (v12-- <= 0)
            {
              LODWORD(v12) = -1;
              break;
            }
          }
        }

        if (v11 >= v35 && *v4 - 2 == v12)
        {
          if ((v12 & 0x80000000) != 0)
          {
LABEL_32:
            v26 = *(a4 + 7);
            if (v26)
            {
              KB::Candidate::capitalized_string(&v45, v4);
              v27 = v46;
              if (!v46)
              {
                v27 = &v47;
              }

              if (v45)
              {
                v28 = v27;
              }

              else
              {
                v28 = "";
              }

              KB::Candidate::capitalized_string(&v42, (v4 + 125));
              v30 = v43;
              if (!v43)
              {
                v30 = &v44;
              }

              if (v42)
              {
                v31 = v30;
              }

              else
              {
                v31 = "";
              }

              KB::append_format(v26, "Removing top candidate [%s] who appears to be a typo of a second candidate [%s]\n", v29, v28, v31);
              if (v43 && BYTE6(v42) == 1)
              {
                free(v43);
              }

              if (v46 && BYTE6(v45) == 1)
              {
                free(v46);
              }
            }

            std::vector<KB::Candidate>::erase[abi:nn200100](a2, *a2);
          }

          else
          {
            v19 = 240 * v12 + 136;
            v20 = (v4[126] + v19);
            v21 = (v4[1] + v19);
            v22 = v12 + 1;
            while (1)
            {
              v24 = *v21;
              v21 -= 30;
              v23 = v24;
              v25 = *v20;
              v20 -= 30;
              if (v23 != v25)
              {
                break;
              }

              if (--v22 < 1)
              {
                goto LABEL_32;
              }
            }
          }
        }

LABEL_50:
        std::__function::__value_func<BOOL ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v48);
      }
    }
  }
}

uint64_t *std::vector<KB::Candidate>::erase[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = a2;
  if (a2 + 125 != v4)
  {
    do
    {
      v6 = v5;
      v5 += 125;
    }

    while (KB::Candidate::operator=(v6, v5) + 250 != v4);
    v4 = *(a1 + 8);
  }

  while (v4 != v5)
  {
    v4 -= 125;
    KB::Candidate::~Candidate(v4);
  }

  *(a1 + 8) = v5;
  return a2;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<KB::FilterLearnedTypo::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0,std::allocator<KB::FilterLearnedTypo::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)::$_0>,BOOL ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 32)
  {
    v3 = *a3 - 98;
    v4 = v3 > 0x16;
    v5 = 0x501003u >> v3;
    if (v4)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t *KB::FilterTopDynamicWordsWithStaticVariant::filter_candidates(uint64_t *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v49 = this;
  v62 = *MEMORY[0x277D85DE8];
  if ((0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3)) >= 2)
  {
    v4 = a4;
    v6 = a2;
    v7 = *(a4 + 2);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }

    v8 = *(v7 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
    v11 = &v57;
    v12 = *v6;
    while (1)
    {
      v13 = KB::Candidate::num_words_preserving_input(v12, a3, v8 + 144, v9, v10);
      v14 = *v12;
      v15 = *v12 == v13 && *a3 == v13;
      if (v15 || v14 == v13)
      {
        return std::vector<KB::Candidate>::erase(v6, *v6, v12);
      }

      v16 = (v12[1] + 240 * v13 + 104);
      v17 = 240 * v14 - 240 * v13;
      while (1)
      {
        v18 = *(v16 - 52) && (v16[7] & 0x4000000 | *v16 & 0x70000) == 0;
        if (v18 || (*v16 & 0x80000000) != 0)
        {
          break;
        }

        v16 += 60;
        v17 -= 240;
        if (!v17)
        {
          return std::vector<KB::Candidate>::erase(v6, *v6, v12);
        }
      }

      v46 = v11;
      v19 = *(v6 + 1);
      v20 = v12 + 125;
      v21 = 0x1CAC083126E978D5 * (v19 - (v12 + 125));
      if (v21 >= 0xA)
      {
        v21 = 10;
      }

      if (v19 == v20)
      {
        return std::vector<KB::Candidate>::erase(v6, *v6, v12);
      }

      v45 = v4;
      v47 = v6;
      v22 = &v20[125 * v21];
      v48 = v22;
      while (1)
      {
        if (*v12 != *v20)
        {
          goto LABEL_66;
        }

        if (!*(v12 + 444))
        {
          KB::Candidate::compute_string(v12);
        }

        if (!*(v20 + 444))
        {
          KB::Candidate::compute_string(v20);
        }

        v23 = *(v8 + 168);
        if (!v23)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        if (!(*(*v23 + 48))(v23, v12 + 111, v20 + 111))
        {
          goto LABEL_66;
        }

        if (*v12 != KB::Candidate::num_words_matching_input(v12, v20, v8 + 144, v24, v25))
        {
          goto LABEL_66;
        }

        v28 = KB::Candidate::num_words_matching_input(v20, v12, v8 + 144, v26, v27);
        if (*v20 != v28 || !*v12 || !v28)
        {
          goto LABEL_66;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 1;
        do
        {
          KB::Word::Word(&v55, (v12[1] + v29));
          KB::Word::Word(v50, (v20[1] + v29));
          v35 = *a3;
          if (v32 - 1 >= *a3)
          {
            v36 = 0;
          }

          else
          {
            v36 = KB::Word::preserves_input(&v55, (*(a3 + 1) + v29), v8 + 144, v33, v34);
            v35 = *a3;
          }

          if (v32 - 1 >= v35)
          {
            v37 = 0;
          }

          else
          {
            v37 = KB::Word::preserves_input(v50, (*(a3 + 1) + v29), v8 + 144, v33, v34);
          }

          if ((v61 & 4) != 0 || !v55 || (v58 & 0x70000) != 0)
          {
            v38 = v51;
            if ((v58 >= 0) | v36 & 1)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v38 = v51;
            if (v36)
            {
              goto LABEL_48;
            }
          }

          if ((v38 & 0x40002) == 0x40000)
          {
            ++v30;
            v31 -= (v59 - v60) < *(v49 + 8);
          }

LABEL_48:
          if ((v54 & 4) != 0 || !v50[0] || (v38 & 0x70000) != 0)
          {
            if ((v38 >= 0) | v37 & 1)
            {
              goto LABEL_57;
            }
          }

          else if (v37)
          {
            goto LABEL_57;
          }

          if ((v58 & 0x40002) == 0x40000)
          {
            --v30;
            if ((v52 - v53) < *(v49 + 8))
            {
              ++v31;
            }
          }

LABEL_57:
          KB::Word::~Word(v50);
          KB::Word::~Word(&v55);
          if (v32 >= *v12)
          {
            break;
          }

          v29 += 240;
        }

        while (v32++ < *v20);
        if (v31 < 0 || v30 < 1)
        {
          v22 = v48;
          if (v31 < 0)
          {
            break;
          }

          goto LABEL_66;
        }

        v40 = expf(*(v12 + 186));
        v22 = v48;
        if (v40 == 0.0 || (v40 / expf(*(v20 + 186))) < *(v49 + 12))
        {
          break;
        }

LABEL_66:
        v20 += 125;
        if (v20 == v22)
        {
          v6 = v47;
          return std::vector<KB::Candidate>::erase(v6, *v6, v12);
        }
      }

      v4 = v45;
      v41 = v45[7];
      v6 = v47;
      if (v41)
      {
        KB::Candidate::capitalized_string(&v55, v12);
        v43 = v56;
        if (!v56)
        {
          v43 = v46;
        }

        v44 = "";
        if (v55)
        {
          v44 = v43;
        }

        KB::append_format(v41, "Candidate '%s' has dynamic case variants while there exists a suitable lower-ranked candidate with static case-variants\n", v42, v44);
        if (v56)
        {
          if (BYTE6(v55) == 1)
          {
            free(v56);
          }
        }
      }

      v12 += 125;
      v11 = v46;
      if (v12 == v47[1])
      {
        return std::vector<KB::Candidate>::erase(v6, *v6, v12);
      }
    }
  }

  return this;
}