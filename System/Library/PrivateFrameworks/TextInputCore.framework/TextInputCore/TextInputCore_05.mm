uint64_t std::__function::__func<KB::LanguageModelContainer::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0,std::allocator<KB::LanguageModelContainer::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0>,BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v15, a4);
  v9 = *(*(a1 + 8) + 24);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 32) - v9) >> 3)) <= *a5)
  {
    v13 = 0;
  }

  else
  {
    v10 = *(v9 + 56 * *a5);
    std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v18, v15);
    v11 = *(a1 + 16);
    v12 = *(v11 + 24);
    if (v12)
    {
      if (v12 == v11)
      {
        v17 = v16;
        (*(*v12 + 24))(v12, v16);
      }

      else
      {
        v17 = (*(*v12 + 16))(v12);
      }
    }

    else
    {
      v17 = 0;
    }

    v13 = (*(*v10 + 520))(v10, a2, a3, v18, v16, **(a1 + 24));
    std::__function::__value_func<BOOL ()(KB::Candidate const&)>::~__value_func[abi:nn200100](v16);
    std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v18);
  }

  std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v15);
  return v13;
}

uint64_t std::__function::__value_func<BOOL ()(KB::Candidate const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<KB::LanguageModelContainer::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0,std::allocator<KB::LanguageModelContainer::completions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,std::function<BOOL ()(KB::Candidate const&)>,KB::LookupType)::$_0>,BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD8F10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t KB::LanguageModelContainer::predictions(KB::LanguageModelContainer *a1, void ***a2, KB::LanguageModelContext *a3, uint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = a5;
  std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v12, a4);
  v11[0] = &unk_283FD8EC8;
  v11[1] = a1;
  v11[2] = &v10;
  v11[3] = v11;
  v8 = KB::LanguageModelContainer::unified_predictions(a1, a2, a3, v12, v11);
  std::__function::__value_func<BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::~__value_func[abi:nn200100](v11);
  std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v12);
  return v8;
}

uint64_t std::__function::__func<KB::LanguageModelContainer::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0,std::allocator<KB::LanguageModelContainer::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0>,BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v13, a4);
  v9 = *(*(a1 + 8) + 24);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 32) - v9) >> 3)) <= *a5)
  {
    v11 = 0;
  }

  else
  {
    v10 = *(v9 + 56 * *a5);
    std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v14, v13);
    v11 = (*(*v10 + 512))(v10, a2, a3, v14, **(a1 + 16));
    std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v14);
  }

  std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v13);
  return v11;
}

__n128 std::__function::__func<KB::LanguageModelContainer::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0,std::allocator<KB::LanguageModelContainer::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0>,BOOL ()(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD8EC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t KB::LanguageModelContainer::should_not_suggest_or_predict_text(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = ___ZNK2KB22LanguageModelContainer34should_not_suggest_or_predict_textERKNS_6StringERKN3WTF6RefPtrINS_19DictionaryContainerEEE_block_invoke;
  v10 = &__block_descriptor_48_e10_B16__0r_v8l;
  v11 = a2;
  v12 = a3;
  v5 = v8;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v6 = v9(v5, v3);
      if (v6)
      {
        break;
      }

      v3 += 7;
    }

    while (v3 != v4);
  }

  return v6;
}

uint64_t KB::LanguageModelContainer::is_text_blocklisted(KB::LanguageModelContainer *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == -1)
  {
    v7 = *(this + 3);
    v8 = *(this + 4);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v15 = ___ZNK2KB22LanguageModelContainer19is_text_blocklistedERKNS_6StringEjRKNS_20LanguageModelContextERKN3WTF6RefPtrINS_19DictionaryContainerEEE27TIBlocklistSensitivityLevel_block_invoke;
    v16 = &__block_descriptor_64_e10_B16__0r_v8l;
    v17 = a2;
    v18 = a4;
    v19 = a5;
    v20 = -1;
    v21 = a6;
    v9 = v14;
    if (v7 == v8)
    {
      v10 = 0;
    }

    else
    {
      do
      {
        v10 = v15(v9, v7);
        if (v10)
        {
          break;
        }

        v7 += 7;
      }

      while (v7 != v8);
    }

    return v10;
  }

  v11 = KB::LanguageModelContainer::index_for_lexicon_id(this, a3);
  if (v11 == -1)
  {
    return 1;
  }

  v12 = *(**(*(this + 3) + 56 * v11) + 496);

  return v12();
}

uint64_t KB::LanguageModelContainer::is_token_blocklisted(KB::LanguageModelContainer *a1, int a2, unint64_t a3)
{
  v5 = KB::LanguageModelContainer::index_for_lexicon_id(a1, a3);
  if (v5 == -1)
  {
    return a3 >> 34 > 0x7C;
  }

  v6 = v5;
  v7 = *(*(a1 + 3) + 56 * v5);
  if (!(*(*v7 + 16))(v7))
  {
    return 1;
  }

  v8 = *(**(*(a1 + 3) + 56 * v6) + 488);

  return v8();
}

KB::LanguageModelContainer::PredictionEnumeratorContainer *KB::LanguageModelContainer::PredictionEnumeratorContainer::PredictionEnumeratorContainer(KB::LanguageModelContainer::PredictionEnumeratorContainer *this, const KB::LanguageModelContainer *a2, const KB::LanguageModelContext *a3)
{
  *this = &unk_283FD8E18;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = a2;
  *(this + 8) = a3;
  *(this + 9) = -1;
  *(this + 80) = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    do
    {
      std::vector<std::shared_ptr<KB::LanguageModel>>::push_back[abi:nn200100](&v30, v5);
      v5 = (v5 + 56);
    }

    while (v5 != v6);
    v7 = (v31 - v30) >> 4;
  }

  v27 = &v30;
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v27);
  if (v7 > (*(this + 3) - *(this + 1)) >> 4)
  {
    if (!(v7 >> 60))
    {
      v34 = v4;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<KB::LanguageModel::PredictionEnumerator>>>(v7);
    }

LABEL_28:
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - *(this + 4)) >> 5) < v7)
  {
    if (v7 < 0x19999999999999ALL)
    {
      v34 = (this + 32);
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(v7);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v8 = *(this + 7);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  if (v9 != v10)
  {
    do
    {
      std::vector<std::shared_ptr<KB::LanguageModel>>::push_back[abi:nn200100](&v27, v9);
      v9 = (v9 + 56);
    }

    while (v9 != v10);
    v11 = v27;
    v12 = v28;
    if (v27 != v28)
    {
      do
      {
        (*(**v11 + 480))(&v26);
        v14 = *(this + 2);
        v13 = *(this + 3);
        if (v14 >= v13)
        {
          v15 = *v4;
          v16 = v14 - *v4;
          v17 = v16 >> 4;
          v18 = (v16 >> 4) + 1;
          if (v18 >> 60)
          {
            goto LABEL_28;
          }

          v19 = v13 - v15;
          if (v19 >> 3 > v18)
          {
            v18 = v19 >> 3;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          v34 = v4;
          if (v20)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<KB::LanguageModel::PredictionEnumerator>>>(v20);
          }

          *(16 * v17) = v26;
          v21 = 16 * v17 + 16;
          v26 = 0uLL;
          memcpy(0, v15, v16);
          v22 = *(this + 1);
          *(this + 1) = 0;
          *(this + 2) = v21;
          v23 = *(this + 3);
          *(this + 3) = 0;
          v32 = v22;
          v33 = v23;
          v30 = v22;
          v31 = v22;
          std::__split_buffer<std::shared_ptr<KB::LanguageModel::PredictionEnumerator>>::~__split_buffer(&v30);
          v24 = *(&v26 + 1);
          *(this + 2) = v21;
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v24);
          }
        }

        else
        {
          *v14 = v26;
          *(this + 2) = v14 + 16;
        }

        v11 += 2;
      }

      while (v11 != v12);
    }
  }

  v30 = &v27;
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v30);
  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<KB::LanguageModel::PredictionEnumerator>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<KB::LanguageModel::PredictionEnumerator>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL KB::LanguageModelContainer::PredictionEnumeratorContainer::advance(KB::LanguageModelContainer::PredictionEnumeratorContainer *this)
{
  if (*(this + 80))
  {
    v2 = *(*(this + 1) + 16 * *(this + 9));
    if ((*(*v2 + 24))(v2))
    {
      v3 = (*(this + 4) + 160 * *(this + 9));
      (*(*v2 + 16))(v53, v2);
      v4 = *v3;
      if (*v3)
      {
        v3[1] = v4;
        operator delete(v4);
      }

      *v3 = *v53;
      v3[2] = v54;
      v53[1] = 0;
      v54 = 0;
      v53[0] = 0;
      v5 = v55;
      *(v3 + 10) = v56;
      *(v3 + 3) = v5;
      if (*(v3 + 71) < 0)
      {
        operator delete(v3[6]);
      }

      v6 = *v57;
      v3[8] = v58[0];
      *(v3 + 3) = v6;
      HIBYTE(v58[0]) = 0;
      LOBYTE(v57[0]) = 0;
      if (*(v3 + 95) < 0)
      {
        operator delete(v3[9]);
      }

      v7 = *&v58[1];
      v3[11] = v58[3];
      *(v3 + 9) = v7;
      HIBYTE(v58[3]) = 0;
      LOBYTE(v58[1]) = 0;
      std::vector<std::string>::__vdeallocate(v3 + 4);
      *(v3 + 6) = v59[0];
      v3[14] = *&v59[1];
      memset(v59, 0, 24);
      std::vector<std::string>::__vdeallocate(v3 + 5);
      *(v3 + 15) = *(&v59[1] + 8);
      v3[17] = *(&v59[2] + 1);
      memset(&v59[1] + 8, 0, 24);
      *(v3 + 9) = v60;
      v61[0] = &v59[1] + 1;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v61);
      v61[0] = v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v61);
      if (SHIBYTE(v58[3]) < 0)
      {
        operator delete(v58[1]);
      }

      if (SHIBYTE(v58[0]) < 0)
      {
        operator delete(v57[0]);
      }

      if (v53[0])
      {
        v53[1] = v53[0];
        operator delete(v53[0]);
      }

      if (*v3 == v3[1])
      {
LABEL_68:
        result = 0;
        *(this + 9) = -1;
        return result;
      }

      *(v3 + 6) = (*(**(this + 7) + 456))(*(this + 7), **v3, *(this + 8)) * *(v3 + 6);
    }

    else
    {
      LODWORD(v55) = 0;
      *(&v55 + 1) = 0;
      v56 = 0;
      *(&v60 + 1) = 0;
      *v57 = 0u;
      memset(v58, 0, sizeof(v58));
      memset(v59, 0, sizeof(v59));
      v46 = *(this + 4) + 160 * *(this + 9);
      v47 = *v46;
      if (*v46)
      {
        *(v46 + 8) = v47;
        operator delete(v47);
      }

      *v46 = 0;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      v53[1] = 0;
      v54 = 0;
      v53[0] = 0;
      v48 = v55;
      *(v46 + 40) = v56;
      *(v46 + 24) = v48;
      if (*(v46 + 71) < 0)
      {
        operator delete(*(v46 + 48));
      }

      v49 = *v57;
      *(v46 + 64) = v58[0];
      *(v46 + 48) = v49;
      HIBYTE(v58[0]) = 0;
      LOBYTE(v57[0]) = 0;
      if (*(v46 + 95) < 0)
      {
        operator delete(*(v46 + 72));
      }

      v50 = *&v58[1];
      *(v46 + 88) = v58[3];
      *(v46 + 72) = v50;
      HIBYTE(v58[3]) = 0;
      LOBYTE(v58[1]) = 0;
      std::vector<std::string>::__vdeallocate((v46 + 96));
      *(v46 + 96) = 0;
      *(v46 + 104) = 0;
      *(v46 + 112) = 0;
      memset(v59, 0, 24);
      std::vector<std::string>::__vdeallocate((v46 + 120));
      *(v46 + 120) = 0;
      *(v46 + 128) = 0;
      *(v46 + 136) = 0;
      memset(&v59[1] + 8, 0, 24);
      *(v46 + 144) = v60;
      v61[0] = &v59[1] + 1;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v61);
      v61[0] = v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v61);
      if (SHIBYTE(v58[3]) < 0)
      {
        operator delete(v58[1]);
      }

      if (SHIBYTE(v58[0]) < 0)
      {
        operator delete(v57[0]);
      }

      if (v53[0])
      {
        v53[1] = v53[0];
        operator delete(v53[0]);
      }
    }
  }

  else
  {
    *(this + 80) = 1;
    v8 = *(this + 1);
    if (*(this + 2) != v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = (this + 32);
      do
      {
        v12 = *(v8 + v9);
        if ((*(*v12 + 24))(v12))
        {
          (*(*v12 + 16))(v53, v12);
          v13 = *(this + 5);
          v14 = *(this + 6);
          if (v13 >= v14)
          {
            v22 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *v11) >> 5);
            v23 = v22 + 1;
            if (v22 + 1 > 0x199999999999999)
            {
              goto LABEL_70;
            }

            v24 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v11) >> 5);
            if (2 * v24 > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0xCCCCCCCCCCCCCCLL)
            {
              v25 = 0x199999999999999;
            }

            else
            {
              v25 = v23;
            }

            v61[4] = (this + 32);
            if (v25)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(v25);
            }

            v30 = 160 * v22;
            *v30 = 0;
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *v30 = *v53;
            *(v30 + 16) = v54;
            v53[0] = 0;
            v53[1] = 0;
            v54 = 0;
            v31 = v55;
            *(v30 + 40) = v56;
            *(v30 + 24) = v31;
            v32 = *v57;
            *(v30 + 64) = v58[0];
            *(v30 + 48) = v32;
            v57[1] = 0;
            v58[0] = 0;
            v57[0] = 0;
            v33 = *&v58[1];
            *(v30 + 88) = v58[3];
            *(v30 + 72) = v33;
            memset(&v58[1], 0, 24);
            *(v30 + 96) = 0;
            *(v30 + 104) = 0;
            *(v30 + 112) = 0;
            *(v30 + 96) = v59[0];
            *(v30 + 112) = *&v59[1];
            memset(v59, 0, 24);
            *(v30 + 120) = 0;
            *(v30 + 128) = 0;
            *(v30 + 136) = 0;
            *(v30 + 120) = *(&v59[1] + 8);
            *(v30 + 136) = *(&v59[2] + 1);
            memset(&v59[1] + 8, 0, 24);
            *(v30 + 144) = v60;
            v18 = 160 * v22 + 160;
            v34 = *(this + 4);
            v35 = *(this + 5);
            v36 = 160 * v22 + v34 - v35;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>,KB::LanguageModel::PredictionInfo*>(v34, v35, v30 + v34 - v35);
            v37 = *(this + 4);
            *(this + 4) = v36;
            *(this + 5) = v18;
            v38 = *(this + 6);
            *(this + 6) = 0;
            v61[2] = v37;
            v61[3] = v38;
            v61[0] = v37;
            v61[1] = v37;
            std::__split_buffer<KB::LanguageModel::PredictionInfo>::~__split_buffer(v61);
          }

          else
          {
            *v13 = 0;
            *(v13 + 8) = 0;
            *(v13 + 16) = 0;
            *v13 = *v53;
            *(v13 + 16) = v54;
            v53[0] = 0;
            v53[1] = 0;
            v54 = 0;
            v15 = v56;
            *(v13 + 24) = v55;
            *(v13 + 40) = v15;
            v16 = v58[0];
            *(v13 + 48) = *v57;
            *(v13 + 64) = v16;
            v57[0] = 0;
            v57[1] = 0;
            v17 = *&v58[1];
            *(v13 + 88) = v58[3];
            *(v13 + 96) = 0;
            *(v13 + 72) = v17;
            memset(v58, 0, sizeof(v58));
            *(v13 + 104) = 0;
            *(v13 + 112) = 0;
            *(v13 + 96) = v59[0];
            v59[0] = 0uLL;
            *(v13 + 112) = *&v59[1];
            *(v13 + 120) = 0;
            *&v59[1] = 0;
            *(v13 + 128) = 0;
            *(v13 + 136) = 0;
            *(v13 + 120) = *(&v59[1] + 8);
            *(v13 + 136) = *(&v59[2] + 1);
            memset(&v59[1] + 8, 0, 24);
            *(v13 + 144) = v60;
            v18 = v13 + 160;
          }

          *(this + 5) = v18;
          v61[0] = &v59[1] + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v61);
          v61[0] = v59;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v61);
          if (SHIBYTE(v58[3]) < 0)
          {
            operator delete(v58[1]);
          }

          if (SHIBYTE(v58[0]) < 0)
          {
            operator delete(v57[0]);
          }

          if (v53[0])
          {
            v53[1] = v53[0];
            operator delete(v53[0]);
          }

          v39 = *(this + 5);
          if (*(v39 - 160) == *(v39 - 152))
          {
            goto LABEL_68;
          }

          *(v39 - 136) = (*(**(this + 7) + 456))(*(this + 7), *(v39 - 16), *(this + 8)) * *(v39 - 136);
        }

        else
        {
          v19 = *(this + 5);
          v20 = *(this + 6);
          if (v19 >= v20)
          {
            v26 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *v11) >> 5);
            v27 = v26 + 1;
            if (v26 + 1 > 0x199999999999999)
            {
LABEL_70:
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            v28 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v11) >> 5);
            if (2 * v28 > v27)
            {
              v27 = 2 * v28;
            }

            if (v28 >= 0xCCCCCCCCCCCCCCLL)
            {
              v29 = 0x199999999999999;
            }

            else
            {
              v29 = v27;
            }

            *(&v55 + 1) = this + 32;
            if (v29)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>>(v29);
            }

            v40 = 160 * v26;
            *(v40 + 8) = 0;
            *(v40 + 16) = 0;
            *v40 = 0;
            *(v40 + 24) = 0;
            *(v40 + 32) = 0;
            *(v40 + 40) = 0;
            *(v40 + 152) = 0;
            *(v40 + 48) = 0u;
            *(v40 + 64) = 0u;
            *(v40 + 80) = 0u;
            *(v40 + 96) = 0u;
            *(v40 + 112) = 0u;
            *(v40 + 128) = 0u;
            v21 = 160 * v26 + 160;
            v41 = *(this + 4);
            v42 = *(this + 5);
            v43 = 160 * v26 + v41 - v42;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LanguageModel::PredictionInfo>,KB::LanguageModel::PredictionInfo*>(v41, v42, v40 + v41 - v42);
            v44 = *(this + 4);
            *(this + 4) = v43;
            *(this + 5) = v21;
            v45 = *(this + 6);
            *(this + 6) = 0;
            v54 = v44;
            *&v55 = v45;
            v53[0] = v44;
            v53[1] = v44;
            std::__split_buffer<KB::LanguageModel::PredictionInfo>::~__split_buffer(v53);
          }

          else
          {
            *v19 = 0;
            *(v19 + 8) = 0;
            *(v19 + 16) = 0;
            *(v19 + 24) = 0;
            *(v19 + 32) = 0;
            *(v19 + 40) = 0;
            *(v19 + 152) = 0;
            *(v19 + 48) = 0u;
            *(v19 + 64) = 0u;
            *(v19 + 80) = 0u;
            *(v19 + 96) = 0u;
            v21 = v19 + 160;
            *(v19 + 112) = 0u;
            *(v19 + 128) = 0u;
          }

          *(this + 5) = v21;
        }

        ++v10;
        v8 = *(this + 1);
        v9 += 16;
      }

      while (v10 < (*(this + 2) - v8) >> 4);
    }
  }

  KB::LanguageModelContainer::PredictionEnumeratorContainer::update_next_prediction_index(this);
  v51 = *(this + 9);
  return v51 != -1 && *(*(this + 4) + 160 * v51 + 24) > 0.0;
}

void *KB::LanguageModelContainer::PredictionEnumeratorContainer::update_next_prediction_index(void *this)
{
  v2 = this[4];
  v1 = this[5];
  v3 = v1 - v2;
  if (v1 != v2)
  {
    v4 = 0;
    v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (v2 + 24);
    v7 = -1;
    v8 = 0.0;
    do
    {
      v9 = *v6;
      v6 += 40;
      v10 = v9;
      if (v9 > v8)
      {
        v7 = v4;
        v8 = v10;
      }

      ++v4;
    }

    while (v5 != v4);
    if (v7 != -1)
    {
      this[9] = v7;
    }
  }

  return this;
}

__n128 KB::LanguageModelContainer::PredictionEnumeratorContainer::get_prediction@<Q0>(KB::LanguageModelContainer::PredictionEnumeratorContainer *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 4) + 160 * *(this + 9);
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

void KB::LanguageModelContainer::PredictionEnumeratorContainer::~PredictionEnumeratorContainer(KB::LanguageModelContainer::PredictionEnumeratorContainer *this)
{
  *this = &unk_283FD8E18;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD8E18;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::__shared_ptr_emplace<KB::LanguageModelContainer::PredictionEnumeratorContainer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD8E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::LanguageModelContainer::predictions(KB::LanguageModelContainer *a1, const KB::LanguageModelContext *a2, uint64_t a3, uint64_t a4)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  KB::LanguageModelContext::LanguageModelContext(&v9, a2);
  KB::LanguageModelContainer::update_context_with_predominant_locale(a1, &v9);
  if (*(a1 + 3) != *(a1 + 4))
  {
    v19[4] = 0;
    operator new();
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,false>(0, 0, 0, 1);
  v6 = v16;
  v7 = v17;
  while (v6 != v7)
  {
    v8 = *(a4 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v8 + 48))(v8, v6);
    v6 += 160;
  }

  v19[0] = &v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v19);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v14);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v13);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v9 = &v16;
  std::vector<KB::LanguageModel::PredictionInfo>::__destroy_vector::operator()[abi:nn200100](&v9);
}

void std::__introsort<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,false>(unint64_t a1, float *a2, uint64_t a3, char a4)
{
LABEL_1:
  v200 = a2 - 74;
  v203 = a2 - 40;
  v198 = a2 - 114;
  v6 = a1;
  while (1)
  {
    a1 = v6;
    v7 = a2 - v6;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v6) >> 5);
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        if (*(a2 - 34) <= *(v6 + 24))
        {
          return;
        }

LABEL_146:
        v89 = v6;
LABEL_147:
        v90 = a2 - 40;
LABEL_148:
        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v89, v90);
        return;
      }

      goto LABEL_9;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,0>(v6, (v6 + 160), v6 + 320, v203);
      return;
    }

    if (v8 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,0>(v6, (v6 + 160), v6 + 320, v6 + 480);
      if (*(a2 - 34) <= *(v6 + 504))
      {
        return;
      }

      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>((v6 + 480), v203);
      if (*(v6 + 504) <= *(v6 + 344))
      {
        return;
      }

      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>((v6 + 320), v6 + 480);
      if (*(v6 + 344) <= *(v6 + 184))
      {
        return;
      }

      v85 = (v6 + 160);
      v86 = (v6 + 320);
      goto LABEL_279;
    }

LABEL_9:
    if (v7 <= 3839)
    {
      if (a4)
      {
        if (v6 != a2)
        {
          v91 = v6 + 160;
          if ((v6 + 160) != a2)
          {
            v92 = 0;
            v93 = v6;
            do
            {
              v94 = v91;
              if (*(v93 + 184) > *(v93 + 24))
              {
                v227 = *v91;
                v228 = *(v93 + 176);
                *v91 = 0;
                *(v91 + 8) = 0;
                *(v91 + 16) = 0;
                v229 = *(v93 + 184);
                v230 = *(v93 + 200);
                v231 = *(v93 + 208);
                v232 = *(v93 + 224);
                *(v93 + 208) = 0;
                *(v93 + 216) = 0;
                __p = *(v93 + 232);
                v234 = *(v93 + 248);
                *(v93 + 224) = 0;
                *(v93 + 232) = 0;
                *(v93 + 240) = 0;
                *(v93 + 248) = 0;
                *v235 = *(v93 + 256);
                v95 = *(v93 + 272);
                *(v93 + 256) = 0;
                *(v93 + 264) = 0;
                *v236 = *(v93 + 280);
                v96 = *(v93 + 296);
                *&v235[16] = v95;
                *&v236[16] = v96;
                *(v93 + 272) = 0;
                *(v93 + 280) = 0;
                *(v93 + 288) = 0;
                *(v93 + 296) = 0;
                v97 = v92;
                v237 = *(v93 + 304);
                while (1)
                {
                  v98 = a1 + v97;
                  v99 = *(a1 + v97 + 160);
                  if (v99)
                  {
                    *(v98 + 168) = v99;
                    operator delete(v99);
                    *(v98 + 176) = 0;
                  }

                  *(v98 + 160) = *v98;
                  *(v98 + 176) = *(v98 + 16);
                  *(v98 + 8) = 0;
                  *(v98 + 16) = 0;
                  *v98 = 0;
                  *(v98 + 184) = *(v98 + 24);
                  *(v98 + 200) = *(v98 + 40);
                  if (*(v98 + 231) < 0)
                  {
                    operator delete(*(v98 + 208));
                  }

                  v100 = a1 + v97;
                  *(v98 + 208) = *(v98 + 48);
                  *(v98 + 224) = *(v98 + 64);
                  *(a1 + v97 + 71) = 0;
                  *(v98 + 48) = 0;
                  if (*(a1 + v97 + 255) < 0)
                  {
                    operator delete(*(v100 + 232));
                  }

                  *(v100 + 232) = *(v100 + 72);
                  *(v100 + 248) = *(v100 + 88);
                  *(v100 + 95) = 0;
                  *(v100 + 72) = 0;
                  std::vector<std::string>::__vdeallocate((v100 + 256));
                  *(v100 + 256) = *(v100 + 96);
                  *(v100 + 272) = *(v100 + 112);
                  *(v100 + 104) = 0;
                  *(v100 + 112) = 0;
                  *(v100 + 96) = 0;
                  std::vector<std::string>::__vdeallocate((v100 + 280));
                  *(v100 + 280) = *(v100 + 120);
                  *(v100 + 296) = *(v100 + 136);
                  *(v100 + 128) = 0;
                  *(v100 + 136) = 0;
                  *(v100 + 120) = 0;
                  *(v100 + 304) = *(v100 + 144);
                  if (!v97)
                  {
                    break;
                  }

                  v101 = a1 + v97;
                  v102 = *(a1 + v97 - 136);
                  v97 -= 160;
                  if (*&v229 <= v102)
                  {
                    v103 = v101 + 24;
                    v104 = v101 + 48;
                    v105 = v101 + 72;
                    v106 = (v101 + 96);
                    v107 = (v101 + 120);
                    v207 = (v101 + 144);
                    v108 = a1 + v97 + 160;
                    goto LABEL_166;
                  }
                }

                v103 = a1 + 24;
                v104 = a1 + 48;
                v105 = a1 + 72;
                v106 = (a1 + 96);
                v107 = (a1 + 120);
                v207 = (a1 + 144);
                v108 = a1;
LABEL_166:
                v109 = *v108;
                if (*v108)
                {
                  *(v108 + 8) = v109;
                  operator delete(v109);
                  *v108 = 0;
                  *(v108 + 8) = 0;
                  *(v108 + 16) = 0;
                }

                *v108 = v227;
                *(v108 + 16) = v228;
                v227 = 0uLL;
                v228 = 0;
                v110 = v229;
                *(v103 + 16) = v230;
                *v103 = v110;
                if (*(v108 + 71) < 0)
                {
                  operator delete(*v104);
                }

                v111 = v231;
                *(v104 + 16) = v232;
                *v104 = v111;
                HIBYTE(v232) = 0;
                LOBYTE(v231) = 0;
                if (*(v108 + 95) < 0)
                {
                  operator delete(*v105);
                }

                v112 = __p;
                *(v105 + 16) = v234;
                *v105 = v112;
                HIBYTE(v234) = 0;
                LOBYTE(__p) = 0;
                std::vector<std::string>::__vdeallocate(v106);
                v106->__begin_ = *v235;
                *(v108 + 104) = *&v235[8];
                memset(v235, 0, sizeof(v235));
                std::vector<std::string>::__vdeallocate(v107);
                v107->__begin_ = *v236;
                *(v108 + 128) = *&v236[8];
                memset(v236, 0, sizeof(v236));
                *v207 = v237;
                v212 = v236;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
                v212 = v235;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
                if (SHIBYTE(v234) < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v232) < 0)
                {
                  operator delete(v231);
                }

                if (v227)
                {
                  *(&v227 + 1) = v227;
                  operator delete(v227);
                }
              }

              v91 = v94 + 160;
              v92 += 160;
              v93 = v94;
            }

            while ((v94 + 160) != a2);
          }
        }
      }

      else if (v6 != a2)
      {
        v188 = v6 + 160;
        if ((v6 + 160) != a2)
        {
          do
          {
            v189 = v188;
            if (*(a1 + 184) > *(a1 + 24))
            {
              v227 = *v188;
              v228 = *(a1 + 176);
              *v188 = 0;
              *(v188 + 8) = 0;
              *(v188 + 16) = 0;
              v229 = *(a1 + 184);
              v230 = *(a1 + 200);
              v231 = *(a1 + 208);
              v232 = *(a1 + 224);
              *(a1 + 208) = 0;
              *(a1 + 216) = 0;
              __p = *(a1 + 232);
              v234 = *(a1 + 248);
              *(a1 + 224) = 0;
              *(a1 + 232) = 0;
              *(a1 + 240) = 0;
              *(a1 + 248) = 0;
              *v235 = *(a1 + 256);
              v190 = *(a1 + 272);
              *(a1 + 256) = 0;
              *(a1 + 264) = 0;
              *v236 = *(a1 + 280);
              v191 = *(a1 + 296);
              *&v235[16] = v190;
              *&v236[16] = v191;
              *(a1 + 272) = 0;
              *(a1 + 280) = 0;
              *(a1 + 288) = 0;
              *(a1 + 296) = 0;
              v237 = *(a1 + 304);
              do
              {
                v192 = a1;
                v193 = *(a1 + 160);
                if (v193)
                {
                  *(a1 + 168) = v193;
                  operator delete(v193);
                  *(a1 + 176) = 0;
                }

                *(a1 + 160) = *a1;
                *(a1 + 176) = *(a1 + 16);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                *(a1 + 184) = *(a1 + 24);
                *(a1 + 200) = *(a1 + 40);
                if (*(a1 + 231) < 0)
                {
                  operator delete(*(a1 + 208));
                }

                *(a1 + 208) = *(a1 + 48);
                *(a1 + 224) = *(a1 + 64);
                *(a1 + 71) = 0;
                *(a1 + 48) = 0;
                if (*(a1 + 255) < 0)
                {
                  operator delete(*(a1 + 232));
                }

                *(a1 + 232) = *(a1 + 72);
                *(a1 + 248) = *(a1 + 88);
                *(a1 + 95) = 0;
                *(a1 + 72) = 0;
                std::vector<std::string>::__vdeallocate((a1 + 256));
                *(a1 + 256) = *(a1 + 96);
                *(a1 + 272) = *(a1 + 112);
                *(a1 + 104) = 0;
                *(a1 + 112) = 0;
                *(a1 + 96) = 0;
                std::vector<std::string>::__vdeallocate((a1 + 280));
                *(a1 + 280) = *(a1 + 120);
                *(a1 + 296) = *(a1 + 136);
                *(a1 + 128) = 0;
                *(a1 + 136) = 0;
                *(a1 + 120) = 0;
                *(a1 + 304) = *(a1 + 144);
                a1 -= 160;
              }

              while (*&v229 > *(v192 - 136));
              v194 = *v192;
              if (*v192)
              {
                *(v192 + 8) = v194;
                operator delete(v194);
                *v192 = 0;
                *(v192 + 8) = 0;
                *(v192 + 16) = 0;
              }

              *v192 = v227;
              *(v192 + 16) = v228;
              v228 = 0;
              v227 = 0uLL;
              v195 = v229;
              *(v192 + 40) = v230;
              *(v192 + 24) = v195;
              if (*(v192 + 71) < 0)
              {
                operator delete(*(v192 + 48));
              }

              v196 = v231;
              *(v192 + 64) = v232;
              *(v192 + 48) = v196;
              HIBYTE(v232) = 0;
              LOBYTE(v231) = 0;
              if (*(v192 + 95) < 0)
              {
                operator delete(*(v192 + 72));
              }

              v197 = __p;
              *(v192 + 88) = v234;
              *(v192 + 72) = v197;
              HIBYTE(v234) = 0;
              LOBYTE(__p) = 0;
              std::vector<std::string>::__vdeallocate((v192 + 96));
              *(v192 + 96) = *v235;
              *(v192 + 112) = *&v235[16];
              memset(v235, 0, sizeof(v235));
              std::vector<std::string>::__vdeallocate((v192 + 120));
              *(v192 + 120) = *v236;
              *(v192 + 136) = *&v236[16];
              memset(v236, 0, sizeof(v236));
              *(v192 + 144) = v237;
              v212 = v236;
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
              v212 = v235;
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
              if (SHIBYTE(v234) < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v232) < 0)
              {
                operator delete(v231);
              }

              if (v227)
              {
                *(&v227 + 1) = v227;
                operator delete(v227);
              }
            }

            v188 = v189 + 160;
            a1 = v189;
          }

          while ((v189 + 160) != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (v6 != a2)
      {
        v113 = v9 >> 1;
        v114 = v9 >> 1;
        do
        {
          v115 = v114;
          if (v113 >= v114)
          {
            v116 = (2 * v114) | 1;
            v117 = a1 + 160 * v116;
            if (2 * v115 + 2 < v8 && *(v117 + 24) > *(v117 + 184))
            {
              v117 += 160;
              v116 = 2 * v115 + 2;
            }

            v118 = a1 + 160 * v115;
            if (*(v117 + 24) <= *(v118 + 24))
            {
              v208 = *v118;
              *&v227 = *v118;
              v201 = *(v118 + 8);
              *(&v227 + 1) = v201;
              v204 = *(v118 + 16);
              v228 = v204;
              *v118 = 0;
              *(v118 + 8) = 0;
              *(v118 + 16) = 0;
              v119 = *(v118 + 24);
              v230 = *(v118 + 40);
              v229 = v119;
              v120 = *(v118 + 48);
              v232 = *(v118 + 64);
              v231 = v120;
              *(v118 + 56) = 0;
              *(v118 + 64) = 0;
              *(v118 + 48) = 0;
              v121 = *(v118 + 72);
              v234 = *(v118 + 88);
              __p = v121;
              *(v118 + 80) = 0;
              *(v118 + 88) = 0;
              *(v118 + 72) = 0;
              *v235 = *(v118 + 96);
              *&v235[16] = *(v118 + 112);
              *(v118 + 96) = 0;
              *(v118 + 104) = 0;
              *(v118 + 112) = 0;
              *v236 = *(v118 + 120);
              *&v236[16] = *(v118 + 136);
              *(v118 + 128) = 0;
              *(v118 + 136) = 0;
              *(v118 + 120) = 0;
              v237 = *(v118 + 144);
              v122 = *&v229;
              do
              {
                v123 = v117;
                v124 = *v118;
                if (*v118)
                {
                  *(v118 + 8) = v124;
                  operator delete(v124);
                  *v118 = 0;
                  *(v118 + 8) = 0;
                  *(v118 + 16) = 0;
                }

                *v118 = *v123;
                *(v118 + 16) = *(v123 + 16);
                *(v123 + 8) = 0;
                *(v123 + 16) = 0;
                *v123 = 0;
                v125 = *(v123 + 24);
                *(v118 + 40) = *(v123 + 40);
                *(v118 + 24) = v125;
                if (*(v118 + 71) < 0)
                {
                  operator delete(*(v118 + 48));
                }

                v126 = *(v123 + 48);
                *(v118 + 64) = *(v123 + 64);
                *(v118 + 48) = v126;
                *(v123 + 71) = 0;
                *(v123 + 48) = 0;
                if (*(v118 + 95) < 0)
                {
                  operator delete(*(v118 + 72));
                }

                v127 = *(v123 + 72);
                *(v118 + 88) = *(v123 + 88);
                *(v118 + 72) = v127;
                *(v123 + 95) = 0;
                *(v123 + 72) = 0;
                std::vector<std::string>::__vdeallocate((v118 + 96));
                *(v118 + 96) = *(v123 + 96);
                *(v118 + 112) = *(v123 + 112);
                *(v123 + 96) = 0;
                *(v123 + 104) = 0;
                *(v123 + 112) = 0;
                std::vector<std::string>::__vdeallocate((v118 + 120));
                *(v118 + 120) = *(v123 + 120);
                *(v118 + 136) = *(v123 + 136);
                *(v123 + 120) = 0;
                *(v123 + 128) = 0;
                *(v123 + 136) = 0;
                *(v118 + 144) = *(v123 + 144);
                if (v113 < v116)
                {
                  break;
                }

                v128 = 2 * v116;
                v116 = (2 * v116) | 1;
                v117 = a1 + 160 * v116;
                v129 = v128 + 2;
                if (v129 < v8 && *(v117 + 24) > *(v117 + 184))
                {
                  v117 += 160;
                  v116 = v129;
                }

                v118 = v123;
              }

              while (*(v117 + 24) <= v122);
              v130 = *v123;
              v131 = v201;
              if (*v123)
              {
                *(v123 + 8) = v130;
                operator delete(v130);
                *v123 = 0;
                *(v123 + 8) = 0;
                *(v123 + 16) = 0;
                v131 = *(&v227 + 1);
              }

              *v123 = v208;
              *(v123 + 8) = v131;
              *(v123 + 16) = v204;
              v228 = 0;
              v227 = 0uLL;
              v132 = v229;
              *(v123 + 40) = v230;
              *(v123 + 24) = v132;
              if (*(v123 + 71) < 0)
              {
                operator delete(*(v123 + 48));
              }

              v133 = v231;
              *(v123 + 64) = v232;
              *(v123 + 48) = v133;
              HIBYTE(v232) = 0;
              LOBYTE(v231) = 0;
              if (*(v123 + 95) < 0)
              {
                operator delete(*(v123 + 72));
              }

              v134 = __p;
              *(v123 + 88) = v234;
              *(v123 + 72) = v134;
              HIBYTE(v234) = 0;
              LOBYTE(__p) = 0;
              std::vector<std::string>::__vdeallocate((v123 + 96));
              *(v123 + 96) = *v235;
              *(v123 + 112) = *&v235[16];
              memset(v235, 0, sizeof(v235));
              std::vector<std::string>::__vdeallocate((v123 + 120));
              *(v123 + 120) = *v236;
              *(v123 + 136) = *&v236[16];
              memset(v236, 0, sizeof(v236));
              *(v123 + 144) = v237;
              v212 = v236;
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
              v212 = v235;
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
              if (SHIBYTE(v234) < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v232) < 0)
              {
                operator delete(v231);
              }

              if (v227)
              {
                *(&v227 + 1) = v227;
                operator delete(v227);
              }
            }
          }

          v114 = v115 - 1;
        }

        while (v115);
        v135 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
        do
        {
          v136 = 0;
          v137 = a2;
          v138 = *(a1 + 8);
          v209 = *a1;
          v212 = *a1;
          v213 = v138;
          v202 = v138;
          v205 = *(a1 + 16);
          v214 = v205;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v139 = *(a1 + 24);
          v216 = *(a1 + 40);
          v215 = v139;
          v140 = *(a1 + 48);
          v218 = *(a1 + 64);
          v217 = v140;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          v141 = *(a1 + 72);
          v220 = *(a1 + 88);
          v219 = v141;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          v221 = *(a1 + 96);
          v222 = *(a1 + 112);
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          *(a1 + 112) = 0;
          v223 = *(a1 + 120);
          v224 = *(a1 + 136);
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          v142 = a1;
          v225 = *(a1 + 144);
          do
          {
            v143 = v142 + 160 * v136;
            v144 = v143 + 160;
            v145 = 2 * v136;
            v136 = (2 * v136) | 1;
            v146 = v145 + 2;
            if (v146 < v135 && *(v143 + 184) > *(v143 + 344))
            {
              v144 = v143 + 320;
              v136 = v146;
            }

            v147 = *v142;
            if (*v142)
            {
              *(v142 + 8) = v147;
              operator delete(v147);
              *v142 = 0;
              *(v142 + 8) = 0;
              *(v142 + 16) = 0;
            }

            *v142 = *v144;
            *(v142 + 16) = *(v144 + 16);
            *(v144 + 8) = 0;
            *(v144 + 16) = 0;
            *v144 = 0;
            v148 = *(v144 + 24);
            *(v142 + 40) = *(v144 + 40);
            *(v142 + 24) = v148;
            if (*(v142 + 71) < 0)
            {
              operator delete(*(v142 + 48));
            }

            v149 = *(v144 + 48);
            *(v142 + 64) = *(v144 + 64);
            *(v142 + 48) = v149;
            *(v144 + 71) = 0;
            *(v144 + 48) = 0;
            if (*(v142 + 95) < 0)
            {
              operator delete(*(v142 + 72));
            }

            v150 = *(v144 + 72);
            *(v142 + 88) = *(v144 + 88);
            *(v142 + 72) = v150;
            *(v144 + 95) = 0;
            *(v144 + 72) = 0;
            std::vector<std::string>::__vdeallocate((v142 + 96));
            *(v142 + 96) = *(v144 + 96);
            *(v142 + 112) = *(v144 + 112);
            *(v144 + 96) = 0;
            *(v144 + 104) = 0;
            *(v144 + 112) = 0;
            std::vector<std::string>::__vdeallocate((v142 + 120));
            *(v142 + 120) = *(v144 + 120);
            *(v142 + 136) = *(v144 + 136);
            *(v144 + 120) = 0;
            *(v144 + 128) = 0;
            *(v144 + 136) = 0;
            *(v142 + 144) = *(v144 + 144);
            v142 = v144;
          }

          while (v136 <= ((v135 - 2) >> 1));
          v151 = (v144 + 24);
          v152 = *v144;
          a2 -= 40;
          if (v144 == v137 - 40)
          {
            v183 = v202;
            if (v152)
            {
              *(v144 + 8) = v152;
              operator delete(v152);
              *v144 = 0;
              *(v144 + 8) = 0;
              *(v144 + 16) = 0;
              v183 = v213;
            }

            *v144 = v209;
            *(v144 + 8) = v183;
            *(v144 + 16) = v205;
            v213 = 0;
            v214 = 0;
            v212 = 0;
            v184 = v215;
            *(v144 + 40) = v216;
            *v151 = v184;
            if (*(v144 + 71) < 0)
            {
              operator delete(*(v144 + 48));
            }

            v185 = v217;
            *(v144 + 64) = v218;
            *(v144 + 48) = v185;
            HIBYTE(v218) = 0;
            LOBYTE(v217) = 0;
            if (*(v144 + 95) < 0)
            {
              operator delete(*(v144 + 72));
            }

            v186 = v219;
            *(v144 + 88) = v220;
            *(v144 + 72) = v186;
            HIBYTE(v220) = 0;
            LOBYTE(v219) = 0;
            std::vector<std::string>::__vdeallocate((v144 + 96));
            *(v144 + 96) = v221;
            *(v144 + 112) = v222;
            v221 = 0uLL;
            v222 = 0;
            std::vector<std::string>::__vdeallocate((v144 + 120));
            *(v144 + 120) = v223;
            *(v144 + 136) = v224;
            v223 = 0uLL;
            v224 = 0;
            *(v144 + 144) = v225;
          }

          else
          {
            if (v152)
            {
              *(v144 + 8) = v152;
              operator delete(v152);
              *v144 = 0;
              *(v144 + 8) = 0;
              *(v144 + 16) = 0;
            }

            *v144 = *(v137 - 10);
            *(v144 + 16) = *(v137 - 18);
            *(a2 + 1) = 0;
            *(a2 + 2) = 0;
            *a2 = 0;
            v153 = *(v137 - 34);
            *(v144 + 40) = *(v137 - 30);
            *v151 = v153;
            if (*(v144 + 71) < 0)
            {
              operator delete(*(v144 + 48));
            }

            v199 = (v144 + 24);
            v154 = (v137 - 28);
            v155 = *(v137 - 7);
            *(v144 + 64) = *(v137 - 12);
            *(v144 + 48) = v155;
            *(v137 - 89) = 0;
            *(v137 - 112) = 0;
            if (*(v144 + 95) < 0)
            {
              operator delete(*(v144 + 72));
            }

            v156 = *(v137 - 22);
            *(v144 + 88) = *(v137 - 9);
            *(v144 + 72) = v156;
            *(v137 - 65) = 0;
            *(v137 - 88) = 0;
            std::vector<std::string>::__vdeallocate((v144 + 96));
            *(v144 + 96) = *(v137 - 4);
            *(v144 + 112) = *(v137 - 6);
            *(v137 - 8) = 0;
            *(v137 - 7) = 0;
            *(v137 - 6) = 0;
            std::vector<std::string>::__vdeallocate((v144 + 120));
            v157 = v137 - 10;
            *(v144 + 120) = *(v137 - 10);
            *(v144 + 136) = *(v137 - 3);
            *v157 = 0;
            *(v157 + 1) = 0;
            *(v157 + 2) = 0;
            *(v144 + 144) = *(v137 - 1);
            v158 = *(v137 - 20);
            if (v158)
            {
              *(v137 - 19) = v158;
              operator delete(v158);
            }

            v159 = v137 - 34;
            *(v137 - 20) = v209;
            *(v137 - 19) = v202;
            *(v137 - 18) = v205;
            v213 = 0;
            v214 = 0;
            v212 = 0;
            v160 = v215;
            *(v159 + 4) = v216;
            *v159 = v160;
            if (*(v137 - 89) < 0)
            {
              operator delete(*v154);
            }

            v161 = (v137 - 22);
            v162 = v217;
            *(v137 - 12) = v218;
            *v154 = v162;
            HIBYTE(v218) = 0;
            LOBYTE(v217) = 0;
            if (*(v137 - 65) < 0)
            {
              operator delete(*v161);
            }

            v163 = v219;
            *(v137 - 9) = v220;
            *v161 = v163;
            HIBYTE(v220) = 0;
            LOBYTE(v219) = 0;
            std::vector<std::string>::__vdeallocate((v137 - 16));
            *(v137 - 4) = v221;
            *(v137 - 6) = v222;
            v221 = 0uLL;
            v222 = 0;
            std::vector<std::string>::__vdeallocate((v137 - 10));
            *(v137 - 10) = v223;
            *(v137 - 3) = v224;
            v223 = 0uLL;
            v224 = 0;
            *(v137 - 1) = v225;
            v164 = v144 + 160 - a1;
            if (v164 >= 161)
            {
              v165 = (-2 - 0x3333333333333333 * (v164 >> 5)) >> 1;
              v166 = a1 + 160 * v165;
              if (*(v166 + 24) > *v199)
              {
                v168 = *v144;
                v167 = *(v144 + 8);
                *&v227 = *v144;
                *(&v227 + 1) = v167;
                v210 = v167;
                v169 = *(v144 + 16);
                v228 = v169;
                *(v144 + 8) = 0;
                *(v144 + 16) = 0;
                *v144 = 0;
                v170 = *v199;
                v230 = *(v144 + 40);
                v229 = v170;
                v171 = *(v144 + 48);
                v232 = *(v144 + 64);
                v231 = v171;
                *(v144 + 48) = 0;
                *(v144 + 56) = 0;
                *(v144 + 64) = 0;
                v172 = *(v144 + 72);
                v234 = *(v144 + 88);
                __p = v172;
                *(v144 + 72) = 0;
                *(v144 + 80) = 0;
                *(v144 + 88) = 0;
                *v235 = *(v144 + 96);
                *&v235[16] = *(v144 + 112);
                *(v144 + 96) = 0;
                *(v144 + 104) = 0;
                *(v144 + 112) = 0;
                *v236 = *(v144 + 120);
                *&v236[16] = *(v144 + 136);
                *(v144 + 120) = 0;
                *(v144 + 128) = 0;
                *(v144 + 136) = 0;
                v237 = *(v144 + 144);
                v173 = *&v229;
                do
                {
                  v174 = v166;
                  v175 = *v144;
                  if (*v144)
                  {
                    *(v144 + 8) = v175;
                    operator delete(v175);
                    *v144 = 0;
                    *(v144 + 8) = 0;
                    *(v144 + 16) = 0;
                  }

                  *v144 = *v174;
                  *(v144 + 16) = *(v174 + 16);
                  *(v174 + 8) = 0;
                  *(v174 + 16) = 0;
                  *v174 = 0;
                  v176 = *(v174 + 24);
                  *(v144 + 40) = *(v174 + 40);
                  *(v144 + 24) = v176;
                  if (*(v144 + 71) < 0)
                  {
                    operator delete(*(v144 + 48));
                  }

                  v177 = *(v174 + 48);
                  *(v144 + 64) = *(v174 + 64);
                  *(v144 + 48) = v177;
                  *(v174 + 71) = 0;
                  *(v174 + 48) = 0;
                  if (*(v144 + 95) < 0)
                  {
                    operator delete(*(v144 + 72));
                  }

                  v178 = *(v174 + 72);
                  *(v144 + 88) = *(v174 + 88);
                  *(v144 + 72) = v178;
                  *(v174 + 95) = 0;
                  *(v174 + 72) = 0;
                  std::vector<std::string>::__vdeallocate((v144 + 96));
                  *(v144 + 96) = *(v174 + 96);
                  *(v144 + 112) = *(v174 + 112);
                  *(v174 + 96) = 0;
                  *(v174 + 104) = 0;
                  *(v174 + 112) = 0;
                  std::vector<std::string>::__vdeallocate((v144 + 120));
                  *(v144 + 120) = *(v174 + 120);
                  *(v144 + 136) = *(v174 + 136);
                  *(v174 + 120) = 0;
                  *(v174 + 128) = 0;
                  *(v174 + 136) = 0;
                  *(v144 + 144) = *(v174 + 144);
                  if (!v165)
                  {
                    break;
                  }

                  v165 = (v165 - 1) >> 1;
                  v166 = a1 + 160 * v165;
                  v144 = v174;
                }

                while (*(v166 + 24) > v173);
                v179 = *v174;
                if (*v174)
                {
                  *(v174 + 8) = v179;
                  operator delete(v179);
                }

                *v174 = v168;
                *(v174 + 8) = v210;
                *(v174 + 16) = v169;
                v228 = 0;
                v227 = 0uLL;
                v180 = v229;
                *(v174 + 40) = v230;
                *(v174 + 24) = v180;
                if (*(v174 + 71) < 0)
                {
                  operator delete(*(v174 + 48));
                }

                v181 = v231;
                *(v174 + 64) = v232;
                *(v174 + 48) = v181;
                HIBYTE(v232) = 0;
                LOBYTE(v231) = 0;
                if (*(v174 + 95) < 0)
                {
                  operator delete(*(v174 + 72));
                }

                v182 = __p;
                *(v174 + 88) = v234;
                *(v174 + 72) = v182;
                HIBYTE(v234) = 0;
                LOBYTE(__p) = 0;
                std::vector<std::string>::__vdeallocate((v174 + 96));
                *(v174 + 96) = *v235;
                *(v174 + 112) = *&v235[16];
                memset(v235, 0, sizeof(v235));
                std::vector<std::string>::__vdeallocate((v174 + 120));
                *(v174 + 120) = *v236;
                *(v174 + 136) = *&v236[16];
                memset(v236, 0, sizeof(v236));
                *(v174 + 144) = v237;
                v226 = v236;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v226);
                v226 = v235;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v226);
                if (SHIBYTE(v234) < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v232) < 0)
                {
                  operator delete(v231);
                }

                if (v227)
                {
                  *(&v227 + 1) = v227;
                  operator delete(v227);
                }
              }
            }
          }

          *&v227 = &v223;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v227);
          *&v227 = &v221;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v227);
          if (SHIBYTE(v220) < 0)
          {
            operator delete(v219);
          }

          if (SHIBYTE(v218) < 0)
          {
            operator delete(v217);
          }

          if (v212)
          {
            v213 = v212;
            operator delete(v212);
          }
        }

        while (v135-- > 2);
      }

      return;
    }

    v10 = v8 >> 1;
    v11 = v6 + 160 * (v8 >> 1);
    v12 = *(a2 - 34);
    if (v7 > 0x5000)
    {
      v13 = *(v11 + 24);
      if (v13 <= *(a1 + 24))
      {
        if (v12 > v13)
        {
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>((a1 + 160 * (v8 >> 1)), v203);
          if (*(v11 + 24) > *(a1 + 24))
          {
            v14 = a1;
            v15 = (a1 + 160 * (v8 >> 1));
            goto LABEL_25;
          }
        }
      }

      else
      {
        v14 = a1;
        if (v12 > v13)
        {
          goto LABEL_16;
        }

        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(a1, a1 + 160 * (v8 >> 1));
        if (*(a2 - 34) > *(v11 + 24))
        {
          v14 = (a1 + 160 * (v8 >> 1));
LABEL_16:
          v15 = a2 - 40;
LABEL_25:
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v14, v15);
        }
      }

      v19 = a1 + 160 * v10;
      v20 = v19 - 160;
      v21 = *(v19 - 136);
      v22 = *v200;
      if (v21 <= *(a1 + 184))
      {
        if (v22 > v21)
        {
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v20, (a2 - 80));
          if (*(v20 + 24) > *(a1 + 184))
          {
            v23 = (a1 + 160);
            v24 = v20;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v23 = (a1 + 160);
        if (v22 > v21)
        {
          goto LABEL_30;
        }

        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v23, v20);
        if (*v200 > *(v20 + 24))
        {
          v23 = v20;
LABEL_30:
          v24 = a2 - 80;
LABEL_37:
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v23, v24);
        }
      }

      v25 = a1 + 160 * v10;
      v26 = v25 + 160;
      v27 = *(v25 + 184);
      v28 = *v198;
      if (v27 <= *(a1 + 344))
      {
        if (v28 > v27)
        {
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v26, (a2 - 120));
          if (*(v26 + 24) > *(a1 + 344))
          {
            v29 = (a1 + 320);
            v30 = v26;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v29 = (a1 + 320);
        if (v28 > v27)
        {
          goto LABEL_42;
        }

        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v29, v26);
        if (*v198 > *(v26 + 24))
        {
          v29 = v26;
LABEL_42:
          v30 = a2 - 120;
LABEL_46:
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v29, v30);
        }
      }

      v31 = *(v11 + 24);
      v32 = *(v26 + 24);
      if (v31 <= *(v20 + 24))
      {
        if (v32 > v31)
        {
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v11, v26);
          if (*(v11 + 24) > *(v20 + 24))
          {
            v33 = v20;
            v34 = v11;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v33 = v20;
        if (v32 > v31)
        {
          goto LABEL_51;
        }

        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v20, v11);
        if (*(v26 + 24) > *(v11 + 24))
        {
          v33 = v11;
LABEL_51:
          v34 = v26;
LABEL_55:
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v33, v34);
        }
      }

      v17 = a1;
      v18 = v11;
      goto LABEL_57;
    }

    v16 = *(a1 + 24);
    if (v16 <= *(v11 + 24))
    {
      if (v12 <= v16)
      {
        goto LABEL_58;
      }

      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(a1, v203);
      if (*(a1 + 24) <= *(v11 + 24))
      {
        goto LABEL_58;
      }

      v17 = (a1 + 160 * (v8 >> 1));
      v18 = a1;
    }

    else
    {
      v17 = (a1 + 160 * (v8 >> 1));
      if (v12 <= v16)
      {
        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v17, a1);
        if (*(a2 - 34) <= *(a1 + 24))
        {
          goto LABEL_58;
        }

        v17 = a1;
      }

      v18 = a2 - 40;
    }

LABEL_57:
    std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v17, v18);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 136) > *(a1 + 24))
    {
      v227 = *a1;
      v228 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v35 = *(a1 + 24);
      v230 = *(a1 + 40);
      v229 = v35;
      v36 = *(a1 + 48);
      v232 = *(a1 + 64);
      v231 = v36;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v37 = *(a1 + 72);
      v234 = *(a1 + 88);
      __p = v37;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *v235 = *(a1 + 96);
      *&v235[16] = *(a1 + 112);
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *v236 = *(a1 + 120);
      *&v236[16] = *(a1 + 136);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      v237 = *(a1 + 144);
      v38 = a1;
      v39 = *&v229;
      do
      {
        v40 = v38;
        v38 += 160;
      }

      while (*(v40 + 184) > *&v229);
      v41 = a2;
      if (v40 == a1)
      {
        v44 = a2;
        while (v38 < v44)
        {
          v42 = v44 - 40;
          v45 = *(v44 - 34);
          v44 -= 40;
          if (v45 > *&v229)
          {
            goto LABEL_70;
          }
        }

        v42 = v44;
      }

      else
      {
        do
        {
          v42 = v41 - 40;
          v43 = *(v41 - 34);
          v41 -= 40;
        }

        while (v43 <= *&v229);
      }

LABEL_70:
      v6 = v38;
      if (v38 < v42)
      {
        v46 = v42;
        do
        {
          std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v6, v46);
          do
          {
            v47 = *(v6 + 184);
            v6 += 160;
          }

          while (v47 > v39);
          do
          {
            v48 = *(v46 - 136);
            v46 -= 160;
          }

          while (v48 <= v39);
        }

        while (v6 < v46);
      }

      v49 = (v6 - 160);
      if (v6 - 160 != a1)
      {
        v50 = *a1;
        if (*a1)
        {
          *(a1 + 8) = v50;
          operator delete(v50);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        *a1 = *(v6 - 160);
        *(a1 + 16) = *(v6 - 144);
        *(v6 - 152) = 0;
        *(v6 - 144) = 0;
        *v49 = 0;
        v51 = *(v6 - 136);
        *(a1 + 40) = *(v6 - 120);
        *(a1 + 24) = v51;
        if (*(a1 + 71) < 0)
        {
          operator delete(*(a1 + 48));
        }

        v52 = *(v6 - 112);
        *(a1 + 64) = *(v6 - 96);
        *(a1 + 48) = v52;
        *(v6 - 89) = 0;
        *(v6 - 112) = 0;
        if (*(a1 + 95) < 0)
        {
          operator delete(*(a1 + 72));
        }

        v53 = *(v6 - 88);
        *(a1 + 88) = *(v6 - 72);
        *(a1 + 72) = v53;
        *(v6 - 65) = 0;
        *(v6 - 88) = 0;
        std::vector<std::string>::__vdeallocate((a1 + 96));
        *(a1 + 96) = *(v6 - 64);
        *(a1 + 112) = *(v6 - 48);
        *(v6 - 64) = 0;
        *(v6 - 56) = 0;
        *(v6 - 48) = 0;
        std::vector<std::string>::__vdeallocate((a1 + 120));
        *(a1 + 120) = *(v6 - 40);
        *(a1 + 136) = *(v6 - 24);
        *(v6 - 40) = 0;
        *(v6 - 32) = 0;
        *(v6 - 24) = 0;
        *(a1 + 144) = *(v6 - 16);
      }

      v54 = *v49;
      if (*v49)
      {
        *(v6 - 152) = v54;
        operator delete(v54);
        *v49 = 0;
        *(v6 - 152) = 0;
        *(v6 - 144) = 0;
      }

      *(v6 - 160) = v227;
      *(v6 - 144) = v228;
      v228 = 0;
      v227 = 0uLL;
      v55 = v229;
      *(v6 - 120) = v230;
      *(v6 - 136) = v55;
      v56 = (v6 - 112);
      if (*(v6 - 89) < 0)
      {
        operator delete(*v56);
      }

      v57 = v231;
      *(v6 - 96) = v232;
      *v56 = v57;
      HIBYTE(v232) = 0;
      LOBYTE(v231) = 0;
      v58 = (v6 - 88);
      if (*(v6 - 65) < 0)
      {
        operator delete(*v58);
      }

      v59 = __p;
      *(v6 - 72) = v234;
      *v58 = v59;
      HIBYTE(v234) = 0;
      LOBYTE(__p) = 0;
      std::vector<std::string>::__vdeallocate((v6 - 64));
      *(v6 - 64) = *v235;
      *(v6 - 48) = *&v235[16];
      memset(v235, 0, sizeof(v235));
      std::vector<std::string>::__vdeallocate((v6 - 40));
      *(v6 - 40) = *v236;
      *(v6 - 24) = *&v236[16];
      memset(v236, 0, sizeof(v236));
      *(v6 - 16) = v237;
      v212 = v236;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
      v212 = v235;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
      if (SHIBYTE(v234) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v232) < 0)
      {
        operator delete(v231);
      }

      if (v227)
      {
        *(&v227 + 1) = v227;
        operator delete(v227);
      }

      if (v38 < v42)
      {
        goto LABEL_99;
      }

      v60 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*>(a1, (v6 - 160));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*>(v6, a2))
      {
        a2 = (v6 - 160);
        if (!v60)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v60)
      {
LABEL_99:
        std::__introsort<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,false>(a1, (v6 - 160), a3, a4 & 1);
        goto LABEL_100;
      }
    }

    else
    {
      v227 = *a1;
      v228 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v61 = *(a1 + 24);
      v230 = *(a1 + 40);
      v229 = v61;
      v62 = *(a1 + 48);
      v232 = *(a1 + 64);
      v231 = v62;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v63 = *(a1 + 72);
      v234 = *(a1 + 88);
      __p = v63;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *v235 = *(a1 + 96);
      *&v235[16] = *(a1 + 112);
      *(a1 + 96) = 0;
      v64 = *(a1 + 120);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *v236 = v64;
      *&v236[16] = *(a1 + 136);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      v237 = *(a1 + 144);
      v65 = *&v229;
      if (*&v229 <= *(a2 - 34))
      {
        v68 = a1 + 160;
        do
        {
          v6 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 160;
        }

        while (*&v229 <= *(v6 + 24));
      }

      else
      {
        v66 = a1;
        do
        {
          v6 = v66 + 160;
          v67 = *(v66 + 184);
          v66 += 160;
        }

        while (*&v229 <= v67);
      }

      v69 = a2;
      if (v6 < a2)
      {
        v70 = a2;
        do
        {
          v69 = v70 - 40;
          v71 = *(v70 - 34);
          v70 -= 40;
        }

        while (*&v229 > v71);
      }

      while (v6 < v69)
      {
        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v6, v69);
        do
        {
          v72 = *(v6 + 184);
          v6 += 160;
        }

        while (v65 <= v72);
        do
        {
          v73 = *(v69 - 34);
          v69 -= 40;
        }

        while (v65 > v73);
      }

      v74 = (v6 - 160);
      if (v6 - 160 != a1)
      {
        v75 = *a1;
        if (*a1)
        {
          *(a1 + 8) = v75;
          operator delete(v75);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        *a1 = *(v6 - 160);
        *(a1 + 16) = *(v6 - 144);
        *(v6 - 152) = 0;
        *(v6 - 144) = 0;
        *v74 = 0;
        v76 = *(v6 - 136);
        *(a1 + 40) = *(v6 - 120);
        *(a1 + 24) = v76;
        if (*(a1 + 71) < 0)
        {
          operator delete(*(a1 + 48));
        }

        v77 = *(v6 - 112);
        *(a1 + 64) = *(v6 - 96);
        *(a1 + 48) = v77;
        *(v6 - 89) = 0;
        *(v6 - 112) = 0;
        if (*(a1 + 95) < 0)
        {
          operator delete(*(a1 + 72));
        }

        v78 = *(v6 - 88);
        *(a1 + 88) = *(v6 - 72);
        *(a1 + 72) = v78;
        *(v6 - 65) = 0;
        *(v6 - 88) = 0;
        std::vector<std::string>::__vdeallocate((a1 + 96));
        *(a1 + 96) = *(v6 - 64);
        *(a1 + 112) = *(v6 - 48);
        *(v6 - 64) = 0;
        *(v6 - 56) = 0;
        *(v6 - 48) = 0;
        std::vector<std::string>::__vdeallocate((a1 + 120));
        *(a1 + 120) = *(v6 - 40);
        *(a1 + 136) = *(v6 - 24);
        *(v6 - 40) = 0;
        *(v6 - 32) = 0;
        *(v6 - 24) = 0;
        *(a1 + 144) = *(v6 - 16);
      }

      v79 = *v74;
      if (*v74)
      {
        *(v6 - 152) = v79;
        operator delete(v79);
        *v74 = 0;
        *(v6 - 152) = 0;
        *(v6 - 144) = 0;
      }

      *(v6 - 160) = v227;
      *(v6 - 144) = v228;
      v228 = 0;
      v227 = 0uLL;
      v80 = v229;
      *(v6 - 120) = v230;
      *(v6 - 136) = v80;
      v81 = (v6 - 112);
      if (*(v6 - 89) < 0)
      {
        operator delete(*v81);
      }

      v82 = v231;
      *(v6 - 96) = v232;
      *v81 = v82;
      HIBYTE(v232) = 0;
      LOBYTE(v231) = 0;
      v83 = (v6 - 88);
      if (*(v6 - 65) < 0)
      {
        operator delete(*v83);
      }

      v84 = __p;
      *(v6 - 72) = v234;
      *v83 = v84;
      HIBYTE(v234) = 0;
      LOBYTE(__p) = 0;
      std::vector<std::string>::__vdeallocate((v6 - 64));
      *(v6 - 64) = *v235;
      *(v6 - 48) = *&v235[16];
      memset(v235, 0, sizeof(v235));
      std::vector<std::string>::__vdeallocate((v6 - 40));
      *(v6 - 40) = *v236;
      *(v6 - 24) = *&v236[16];
      memset(v236, 0, sizeof(v236));
      *(v6 - 16) = v237;
      v212 = v236;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
      v212 = v235;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v212);
      if (SHIBYTE(v234) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v232) < 0)
      {
        operator delete(v231);
      }

      if (v227)
      {
        *(&v227 + 1) = v227;
        operator delete(v227);
      }

LABEL_100:
      a4 = 0;
    }
  }

  v87 = *(v6 + 184);
  v88 = *(a2 - 34);
  if (v87 > *(v6 + 24))
  {
    if (v88 > v87)
    {
      goto LABEL_146;
    }

    std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v6, v6 + 160);
    if (*(a2 - 34) > *(v6 + 184))
    {
      v89 = (v6 + 160);
      goto LABEL_147;
    }

    return;
  }

  if (v88 <= v87)
  {
    return;
  }

  v85 = (v6 + 160);
  v86 = a2 - 40;
LABEL_279:
  std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v85, v86);
  if (*(v6 + 184) > *(v6 + 24))
  {
    v90 = (v6 + 160);
    v89 = v6;
    goto LABEL_148;
  }
}

float std::__function::__func<KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_0,std::allocator<KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_0>,void ()(KB::LanguageModel::PredictionInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::vector<KB::LanguageModel::PredictionInfo>::push_back[abi:nn200100](*(a1 + 8), a2);
  v5 = (*(*v4 + 456))(v4, *(a2 + 144), *(a1 + 24));
  v6 = *(*(a1 + 8) + 8);
  result = v5 * *(v6 - 136);
  *(v6 - 136) = result;
  return result;
}

__n128 std::__function::__func<KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_0,std::allocator<KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_0>,void ()(KB::LanguageModel::PredictionInfo const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD8E80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(std::vector<std::string> *this, uint64_t a2)
{
  v14 = *&this->__begin_;
  value = this->__end_cap_.__value_;
  this->__end_ = 0;
  this->__end_cap_.__value_ = 0;
  this->__begin_ = 0;
  v17 = *&this[1].__begin_;
  v18 = this[1].__end_cap_.__value_;
  v19 = this[2];
  this[2].__begin_ = 0;
  this[2].__end_ = 0;
  __p = this[3];
  this[2].__end_cap_.__value_ = 0;
  this[3].__begin_ = 0;
  v5 = this + 4;
  v6 = *&this[4].__begin_;
  this[3].__end_ = 0;
  this[3].__end_cap_.__value_ = 0;
  v16 = v6;
  v21 = v6;
  v7 = this[4].__end_cap_.__value_;
  v22 = v7;
  this[4].__begin_ = 0;
  this[4].__end_ = 0;
  this[4].__end_cap_.__value_ = 0;
  v8 = this + 5;
  v15 = *&this[5].__begin_;
  v23 = v15;
  v9 = this[5].__end_cap_.__value_;
  v24 = v9;
  this[5].__begin_ = 0;
  this[5].__end_ = 0;
  this[5].__end_cap_.__value_ = 0;
  v25 = *&this[6].__begin_;
  *this = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  LODWORD(this[1].__end_cap_.__value_) = *(a2 + 40);
  *&this[1].__begin_ = v10;
  if (SHIBYTE(this[2].__end_cap_.__value_) < 0)
  {
    operator delete(this[2].__begin_);
  }

  v11 = *(a2 + 48);
  this[2].__end_cap_.__value_ = *(a2 + 64);
  *&this[2].__begin_ = v11;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (SHIBYTE(this[3].__end_cap_.__value_) < 0)
  {
    operator delete(this[3].__begin_);
  }

  v12 = *(a2 + 72);
  this[3].__end_cap_.__value_ = *(a2 + 88);
  *&this[3].__begin_ = v12;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  std::vector<std::string>::__vdeallocate(v5);
  *&this[4].__begin_ = *(a2 + 96);
  this[4].__end_cap_.__value_ = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  std::vector<std::string>::__vdeallocate(v8);
  *&this[5].__begin_ = *(a2 + 120);
  this[5].__end_cap_.__value_ = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *&this[6].__begin_ = *(a2 + 144);
  v13 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v13;
    operator delete(v13);
  }

  *a2 = v14;
  *(a2 + 16) = value;
  *(a2 + 24) = v17;
  *(a2 + 40) = v18;
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v19;
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = __p;
  std::vector<std::string>::__vdeallocate((a2 + 96));
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v22 = 0;
  v21 = 0uLL;
  std::vector<std::string>::__vdeallocate((a2 + 120));
  *(a2 + 120) = v15;
  *(a2 + 136) = v9;
  v24 = 0;
  v23 = 0uLL;
  *(a2 + 144) = v25;
  v26 = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v26);
  v26 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v26);
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,0>(std::vector<std::string> *this, std::vector<std::string> *a2, uint64_t a3, uint64_t a4)
{
  v7 = this;
  v8 = *&a2[1].__begin_;
  v9 = *(a3 + 24);
  if (v8 <= *&this[1].__begin_)
  {
    if (v9 > v8)
    {
      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(a2, a3);
      if (*&a2[1].__begin_ > *&v7[1].__begin_)
      {
        this = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(this, v10);
      goto LABEL_10;
    }

    std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(this, a2);
    if (*(a3 + 24) > *&a2[1].__begin_)
    {
      this = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 24) > *(a3 + 24))
  {
    std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(a3, a4);
    if (*(a3 + 24) > *&a2[1].__begin_)
    {
      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(a2, a3);
      if (*&a2[1].__begin_ > *&v7[1].__begin_)
      {

        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*>(std::vector<std::string> *this, std::vector<std::string> *a2)
{
  v2 = a2;
  v3 = this;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - this) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *&this[7].__end_cap_.__value_;
        v9 = *&a2[-6].__end_;
        if (v8 > *&this[1].__begin_)
        {
          if (v9 <= v8)
          {
            std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(this, &this[6].__end_cap_);
            if (*&v2[-6].__end_ <= *&v3[7].__end_cap_.__value_)
            {
              return 1;
            }

            this = (v3 + 160);
          }

          p_end = &v2[-7].__end_;
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (this + 160);
        v7 = &a2[-7].__end_;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,0>(this, (this + 160), &this[13].__end_, &a2[-7].__end_);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::LanguageModelContainer::predictions(KB::LanguageModelContext const&,unsigned long,std::function<void ()(KB::LanguageModel::PredictionInfo const&)>)::$_1 &,KB::LanguageModel::PredictionInfo*,0>(this, (this + 160), &this[13].__end_, &this[20]);
        if (*&v2[-6].__end_ <= *&v3[21].__begin_)
        {
          return 1;
        }

        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v3 + 20, &v2[-7].__end_);
        if (*&v3[21].__begin_ <= *&v3[14].__end_)
        {
          return 1;
        }

        std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>((v3 + 320), &v3[20]);
        if (*&v3[14].__end_ <= *&v3[7].__end_cap_.__value_)
        {
          return 1;
        }

        v6 = (v3 + 160);
        v7 = &v3[13].__end_;
        break;
      default:
        goto LABEL_16;
    }

    std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(v6, v7);
    if (*&v3[7].__end_cap_.__value_ > *&v3[1].__begin_)
    {
      p_end = &v3[6].__end_cap_;
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*&a2[-6].__end_ > *&this[1].__begin_)
    {
      p_end = &a2[-7].__end_;
LABEL_24:
      this = v3;
LABEL_31:
      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(this, p_end);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = &this[13].__end_;
  v11 = *&this[7].__end_cap_.__value_;
  v12 = *&this[14].__end_;
  if (v11 > *&this[1].__begin_)
  {
    if (v12 <= v11)
    {
      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(this, &this[6].__end_cap_);
      if (*&v3[14].__end_ <= *&v3[7].__end_cap_.__value_)
      {
        goto LABEL_36;
      }

      this = (v3 + 160);
    }

    p_end_cap = &v3[13].__end_;
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>((this + 160), &this[13].__end_);
    if (*&v3[7].__end_cap_.__value_ > *&v3[1].__begin_)
    {
      p_end_cap = &v3[6].__end_cap_;
      this = v3;
LABEL_35:
      std::swap[abi:nn200100]<KB::LanguageModel::PredictionInfo>(this, p_end_cap);
    }
  }

LABEL_36:
  v14 = v3 + 20;
  if (&v3[20] == v2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v33 = v2;
  while (1)
  {
    if (*&v14[1].__begin_ > v10[6])
    {
      v35 = v16;
      *v36 = *&v14->__begin_;
      value = v14->__end_cap_.__value_;
      v14->__end_ = 0;
      v14->__end_cap_.__value_ = 0;
      v14->__begin_ = 0;
      v38 = *&v14[1].__begin_;
      v39 = v14[1].__end_cap_.__value_;
      v40 = *&v14[2].__begin_;
      v41 = v14[2].__end_cap_.__value_;
      v14[2].__begin_ = 0;
      v14[2].__end_ = 0;
      v43 = v14[3].__end_cap_.__value_;
      __p = *&v14[3].__begin_;
      v14[2].__end_cap_.__value_ = 0;
      v14[3].__begin_ = 0;
      v14[3].__end_ = 0;
      v14[3].__end_cap_.__value_ = 0;
      *v44 = *&v14[4].__begin_;
      *&v44[16] = v14[4].__end_cap_.__value_;
      v14[4].__begin_ = 0;
      v14[4].__end_ = 0;
      *v45 = *&v14[5].__begin_;
      *&v45[16] = v14[5].__end_cap_.__value_;
      v14[4].__end_cap_.__value_ = 0;
      v14[5].__begin_ = 0;
      v14[5].__end_ = 0;
      v14[5].__end_cap_.__value_ = 0;
      v17 = v15;
      v46 = *&v14[6].__begin_;
      while (1)
      {
        v18 = v3 + v17;
        v19 = *(&v3[20].__begin_ + v17);
        if (v19)
        {
          *(v18 + 61) = v19;
          operator delete(v19);
          *(v18 + 62) = 0;
        }

        *(v18 + 30) = *(v18 + 20);
        *(v18 + 62) = *(v18 + 42);
        *(v18 + 40) = 0;
        *(v18 + 41) = 0;
        *(v18 + 42) = 0;
        *(v18 + 130) = *(v18 + 90);
        *(v18 + 504) = *(v18 + 344);
        v20 = (v18 + 528);
        if (v18[551] < 0)
        {
          operator delete(*v20);
        }

        v21 = v3 + v17;
        *v20 = *(v18 + 23);
        *(v18 + 68) = *(v18 + 48);
        *(&v3[16].__begin_ + v17 + 7) = 0;
        v18[368] = 0;
        v22 = (&v3[23].__begin_ + v17);
        if (*(&v3[23].__end_cap_.__value_ + v17 + 7) < 0)
        {
          operator delete(*v22);
        }

        *(&v3[23].__end_cap_.__value_ + v17) = *(v21 + 51);
        *v22 = *(v21 + 392);
        v21[415] = 0;
        v21[392] = 0;
        std::vector<std::string>::__vdeallocate(v21 + 24);
        *(v21 + 36) = *(v21 + 26);
        *(v21 + 74) = *(v21 + 54);
        *(v21 + 53) = 0;
        *(v21 + 54) = 0;
        *(v21 + 52) = 0;
        std::vector<std::string>::__vdeallocate(v21 + 25);
        *(v21 + 600) = *(v21 + 440);
        *(v21 + 77) = *(v21 + 57);
        *(v21 + 56) = 0;
        *(v21 + 57) = 0;
        *(v21 + 55) = 0;
        *(v21 + 39) = *(v21 + 29);
        if (v17 == -320)
        {
          break;
        }

        v23 = v3 + v17;
        v24 = *(&v3[7].__end_cap_.__value_ + v17);
        v17 -= 160;
        if (*&v38 <= v24)
        {
          v25 = (v23 + 344);
          v26 = (v23 + 368);
          v27 = &v3[20] + v17;
          v34 = (v23 + 464);
          v28 = (v23 + 392);
          v29 = (v23 + 440);
          v30 = (v23 + 416);
          goto LABEL_50;
        }
      }

      v25 = v3 + 1;
      v26 = v3 + 2;
      v34 = v3 + 6;
      v28 = v3 + 3;
      v29 = v3 + 5;
      v30 = v3 + 4;
      v27 = v3;
LABEL_50:
      v31 = *v27;
      if (*v27)
      {
        *(v27 + 8) = v31;
        operator delete(v31);
        *v27 = 0;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0;
      }

      *v27 = *v36;
      *(v27 + 16) = value;
      *&v25->__begin_ = v38;
      LODWORD(v25->__end_cap_.__value_) = v39;
      if (*(v27 + 71) < 0)
      {
        operator delete(v26->__begin_);
      }

      v26->__end_cap_.__value_ = v41;
      *&v26->__begin_ = v40;
      if (*(v27 + 95) < 0)
      {
        operator delete(v28->__begin_);
      }

      *&v28->__begin_ = __p;
      v28->__end_cap_.__value_ = v43;
      std::vector<std::string>::__vdeallocate(v30);
      v30->__begin_ = *v44;
      *(v27 + 104) = *&v44[8];
      memset(v44, 0, sizeof(v44));
      std::vector<std::string>::__vdeallocate(v29);
      v29->__begin_ = *v45;
      *(v27 + 128) = *&v45[8];
      memset(v45, 0, sizeof(v45));
      *&v34->__begin_ = v46;
      v47[0] = v45;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v47);
      v47[0] = v44;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v47);
      v2 = v33;
      v16 = v35 + 1;
      if (v35 == 7)
      {
        return &v14[6].__end_cap_ == v33;
      }
    }

    v10 = v14;
    v15 += 160;
    v14 = (v14 + 160);
    if (v14 == v2)
    {
      return 1;
    }
  }
}

float KB::LanguageModelContainer::probability_of_lexicon_given_context(KB::LanguageModelContainer *this, unsigned int a2, const KB::LanguageModelContext *a3)
{
  v6 = *(this + 3);
  if (*(this + 4) - v6 != 56 || (v7 = 1.0, *(v6 + 40) != 1))
  {
    v8 = KB::LanguageModelContainer::index_for_lexicon_id(this, a2);
    if (v8 == -1)
    {
      if (a2)
      {
        return 0.0;
      }

      else
      {
        return 0.04;
      }
    }

    else
    {
      v9 = v8;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = ___ZNK2KB22LanguageModelContainer36probability_of_lexicon_given_contextEjRKNS_20LanguageModelContextE_block_invoke;
      v22[3] = &unk_27872FFC8;
      v22[4] = &v25;
      v22[5] = &v33;
      v23 = 1059648963;
      v24 = a2;
      v22[6] = &v29;
      v22[7] = this;
      v22[8] = v8;
      v22[9] = 4;
      v10 = v22;
      if ((enumerate_context_backwards(a3, v10) & 1) == 0)
      {
        v11 = *a3;
        v12 = *(a3 + 1);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          v13 = *v11;
          v14 = v11[1];
          while (v13 != v14 && (enumerate_context_backwards(v13, v10) & 1) == 0)
          {
            v13 += 104;
          }
        }

        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }
      }

      v15 = v26 + 3;
      if (v26[3])
      {
        v16 = v30[6];
      }

      else
      {
        do
        {
          *v15 = 1;
          v34[6] = v34[6] + 1.0;
          v17 = KB::LanguageModelLexiconGroup::lexicon_weight((*(this + 3) + 56 * v9), a2);
          v16 = v17 + v30[6];
          v30[6] = v16;
          v15 = v26 + 3;
        }

        while (!v26[3]);
      }

      v18 = v34[6];
      if (v18 <= 0.0)
      {
        v18 = 1.0;
      }

      v19 = v16 / v18;
      v20 = (KB::LanguageModelContainer::lexicon_stationary_probability(this, a2) * (v16 / v18)) + 0.0;
      v7 = v20 + ((KB::LanguageModelLexiconGroup::lexicon_weight((*(this + 3) + 56 * v9), a2) * 0.04) * (1.0 - v19));
      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
    }
  }

  return v7;
}

void ___ZNK2KB22LanguageModelContainer36probability_of_lexicon_given_contextEjRKNS_20LanguageModelContextE_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if ((a2 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL)
  {
    v6 = *(result + 56);
    v7 = *(result + 80);
    v8 = *(*(result + 32) + 8);
    v9 = *(v8 + 24);
    *(v8 + 24) = v9 + 1;
    v10 = powf(v7, v9);
    *(*(*(result + 40) + 8) + 24) = v10 + *(*(*(result + 40) + 8) + 24);
    v11 = v6[3];
    v12 = (0x6DB6DB6DB6DB6DB7 * ((v6[4] - v11) >> 3)) <= 1 && *(v11 + 40) < 2;
    v13 = *(result + 84);
    v14 = (*(*v6 + 328))(v6, a2) ^ 1 | v12;
    if (v13 == a2)
    {
      v15 = *(*(result + 48) + 8);
      v16 = *(v15 + 24);
      if (v14)
      {
        v17 = v10 + v16;
      }

      else
      {
        v17 = v16 + (v10 * 0.6);
      }

      *(v15 + 24) = v17;
    }

    else if ((v14 & 1) == 0)
    {
      KB::LanguageModelLexiconGroup::lexicon_weight((v6[3] + 56 * *(result + 64)), *(result + 84));
    }
  }

  if (*(*(*(result + 32) + 8) + 24) >= *(result + 72))
  {
    *a3 = 1;
  }
}

uint64_t enumerate_context_backwards(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = -8; ; i -= 8)
  {
    (*(a2 + 16))(a2, *(v2 + v3 + i), &v9);
    result = v9;
    if (v9 == 1)
    {
      break;
    }

    v2 = *(a1 + 16);
    v3 = *(a1 + 24) - v2;
    if (++v6 >= (v3 >> 3))
    {
      return 0;
    }
  }

  return result;
}

float KB::LanguageModelLexiconGroup::lexicon_weight(KB::LanguageModelLexiconGroup *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_17;
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

  v5 = *(*(this + 2) + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_17:
    abort();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

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
      goto LABEL_17;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  return *(v6 + 5);
}

float KB::LanguageModelContainer::lexicon_stationary_probability(KB::LanguageModelContainer *this, int a2)
{
  v2 = *(this + 3);
  if (*(this + 4) == v2)
  {
    return 1.0;
  }

  v5 = 0;
  v6 = 1.0;
  do
  {
    v7 = *(v2 + 56 * v5);
    if (v7)
    {
      (*(*v7 + 48))(&v11);
      v8 = v11;
      v9 = v12;
      if (v11 != v12)
      {
        do
        {
          if (*v8 != a2)
          {
            v6 = v6 + (KB::LanguageModelLexiconGroup::lexicon_weight((*(this + 3) + 56 * v5), *v8) * -0.04);
          }

          ++v8;
        }

        while (v8 != v9);
        v8 = v11;
      }

      if (v8)
      {
        v12 = v8;
        operator delete(v8);
      }
    }

    ++v5;
    v2 = *(this + 3);
  }

  while (v5 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 4) - v2) >> 3));
  return v6;
}

uint64_t KB::LanguageModelContainer::most_probable_lexicon_for_context(KB::LanguageModelContainer *this, const KB::LanguageModelContext *a2, float *a3)
{
  v4 = *(this + 3);
  if (*(this + 4) == v4)
  {
    v8 = 0;
    v9 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = -3.4028e38;
    do
    {
      v10 = *(v4 + 56 * v7);
      if (v10)
      {
        (*(*v10 + 48))(&v15);
        v11 = v15;
        v12 = v16;
        if (v15 != v16)
        {
          do
          {
            v13 = (*(*this + 456))(this, *v11, a2);
            if (v13 > v9)
            {
              v8 = *v11;
              v9 = v13;
            }

            ++v11;
          }

          while (v11 != v12);
          v11 = v15;
        }

        if (v11)
        {
          v16 = v11;
          operator delete(v11);
        }
      }

      ++v7;
      v4 = *(this + 3);
    }

    while (v7 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 4) - v4) >> 3));
  }

  *a3 = v9;
  return v8;
}

void KB::LanguageModelContainer::conditional_likelihood_batched(KB::LanguageModelContainer *a1@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v90 = a5;
  v89 = a6;
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  if ((0x6DB6DB6DB6DB6DB7 * (v9 - v8)) <= 1)
  {
    if (v8 == v9)
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v10 = *v8;
      v11 = v8[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    (*(*v10 + 432))(v10, a2, a3, a4);
    if (v11)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    return;
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    do
    {
      std::vector<KB::LikelihoodInfo>::vector[abi:nn200100](&v87, *v12, &KB::k_invalid_likelihood_value);
      v14 = *(a7 + 8);
      v15 = *(a7 + 16);
      if (v14 >= v15)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a7) >> 3);
        v18 = v17 + 1;
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a7) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v18;
        }

        *&v92.__m_.__opaque[24] = a7;
        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v20);
        }

        v21 = 24 * v17;
        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v87;
        *(v21 + 16) = v88;
        v87 = 0uLL;
        v88 = 0;
        v16 = 24 * v17 + 24;
        v22 = *(a7 + 8) - *a7;
        v23 = v21 - v22;
        memcpy((v21 - v22), *a7, v22);
        v24 = *a7;
        *a7 = v23;
        *(a7 + 8) = v16;
        v25 = *(a7 + 16);
        *(a7 + 16) = 0;
        *&v92.__m_.__opaque[8] = v24;
        *&v92.__m_.__opaque[16] = v25;
        v92.__m_.__sig = v24;
        *v92.__m_.__opaque = v24;
        std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(&v92);
      }

      else
      {
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
        *v14 = v87;
        v14[2] = v88;
        v87 = 0uLL;
        v88 = 0;
        v16 = (v14 + 3);
      }

      *(a7 + 8) = v16;
      v92.__m_.__sig = &v87;
      std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](&v92);
      v12 += 250;
    }

    while (v12 != v13);
  }

  v86 = (*(*a1 + 440))(a1, a4);
  v87 = 0uLL;
  v88 = 0;
  v26 = *(a1 + 3);
  v67 = *(a1 + 4);
  v68 = a7;
  if (v26 == v67)
  {
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v28 = a2;
    v52 = a1;
    goto LABEL_63;
  }

  v27 = 0;
  v28 = a2;
  do
  {
    v70 = v27;
    memset(&v92, 0, 24);
    std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__init_with_size[abi:nn200100]<std::vector<language_modeling::v1::TokenMetadata>*,std::vector<language_modeling::v1::TokenMetadata>*>(&v92.__m_.__sig, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    v30 = *v28;
    v29 = v28[1];
    if (v29 == *v28)
    {
      goto LABEL_41;
    }

    v31 = 0;
    do
    {
      v32 = &v30[250 * v31];
      if (!*v32)
      {
        goto LABEL_40;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = v89;
      do
      {
        v37 = *(v92.__m_.__sig + 24 * v31);
        v38 = *(v32 + 1);
        if ((v36 & 1) != 0 && (*(v38 + v34 + 106) & 2) != 0)
        {
          v41 = v86;
          v40 = v26;
          goto LABEL_33;
        }

        v39 = *(v38 + v34 + 136);
        if (KB::LanguageModelContainer::index_for_lexicon_id(a1, v39) != -1)
        {
          v40 = v26;
          v41 = v39;
LABEL_33:
          *(v37 + v33) = KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v40, v41);
          goto LABEL_34;
        }

        if (*(*(v32 + 1) + v34 + 136) >> 34 > 0x7CuLL)
        {
          *(v37 + v33) = 0;
        }

        else
        {
          v42 = *(a1 + 3);
          if (v42 == *(a1 + 4))
          {
            v43 = 0;
            v44 = 0;
          }

          else
          {
            v43 = *v42;
            v44 = v42[1];
            if (v44)
            {
              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          v45 = (*(*v43 + 40))(v43);
          *(v37 + v33) = KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v26, v45);
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
          }
        }

LABEL_34:
        ++v35;
        v34 += 240;
        v33 += 2;
      }

      while (v35 < *v32);
      v28 = a2;
      v30 = *a2;
      v29 = a2[1];
LABEL_40:
      ++v31;
    }

    while (v31 < 0x1CAC083126E978D5 * ((v29 - v30) >> 3));
LABEL_41:
    v46 = v70;
    if (v70 >= v88)
    {
      v47 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v87) >> 3);
      v48 = v47 + 1;
      if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * ((v88 - v87) >> 3) > v48)
      {
        v48 = 0x5555555555555556 * ((v88 - v87) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v88 - v87) >> 3) >= 0x555555555555555)
      {
        v49 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v49 = v48;
      }

      if (v49)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v49);
      }

      v46 = (8 * ((v70 - v87) >> 3));
      *v46 = 0;
      v46[1] = 0;
      v46[2] = 0;
      std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__init_with_size[abi:nn200100]<std::vector<language_modeling::v1::TokenMetadata>*,std::vector<language_modeling::v1::TokenMetadata>*>((24 * v47), v92.__m_.__sig, *v92.__m_.__opaque, 0xAAAAAAAAAAAAAAABLL * ((*v92.__m_.__opaque - v92.__m_.__sig) >> 3));
      v50 = v87;
      v51 = (24 * v47 - (*(&v87 + 1) - v87));
      memcpy(v51, v87, *(&v87 + 1) - v87);
      *&v87 = v51;
      v88 = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v70 = 0;
      v70[1] = 0;
      v70[2] = 0;
      std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__init_with_size[abi:nn200100]<std::vector<language_modeling::v1::TokenMetadata>*,std::vector<language_modeling::v1::TokenMetadata>*>(v70, v92.__m_.__sig, *v92.__m_.__opaque, 0xAAAAAAAAAAAAAAABLL * ((*v92.__m_.__opaque - v92.__m_.__sig) >> 3));
    }

    v27 = v46 + 3;
    *(&v87 + 1) = v27;
    v83 = &v92;
    std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__destroy_vector::operator()[abi:nn200100](&v83);
    v26 = (v26 + 56);
  }

  while (v26 != v67);
  v52 = a1;
  v54 = *(a1 + 3);
  v53 = *(a1 + 4);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v55 = v53 - v54;
  if (v55)
  {
    v56 = 0x6DB6DB6DB6DB6DB7 * (v55 >> 3);
    if (v56 < 0x276276276276277)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModelContext>>(v56);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

LABEL_63:
  memset(v92.__m_.__opaque, 0, sizeof(v92.__m_.__opaque));
  v92.__m_.__sig = 850045863;
  v57 = dispatch_group_create();
  v58 = *(v52 + 2);
  if (v58)
  {
    v59 = std::__shared_weak_count::lock(v58);
    v60 = v59;
    if (v59)
    {
      v61 = a1;
      atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v59);
      goto LABEL_68;
    }
  }

  else
  {
    v60 = 0;
  }

  v61 = a1;
LABEL_68:
  if (*&v61[4] != *&v61[3])
  {
    v62 = 0;
    v63 = 0;
    do
    {
      dispatch_group_enter(v57);
      KB::LanguageModelLexiconGroup::lexicon_group_identifier(&__p, (*&v61[3] + v62));
      v64 = KB::LanguageModelContainer::get_autocorrection_queue(v61, &__p);
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      memset(v74, 0, sizeof(v74));
      std::vector<KB::LanguageModelContext>::__init_with_size[abi:nn200100]<KB::LanguageModelContext*,KB::LanguageModelContext*>(v74, v83, 0, 0x4EC4EC4EC4EC4EC5 * (-v83 >> 3));
      memset(v75, 0, sizeof(v75));
      std::vector<std::vector<std::vector<language_modeling::v1::TokenMetadata>>>::__init_with_size[abi:nn200100]<std::vector<std::vector<language_modeling::v1::TokenMetadata>>*,std::vector<std::vector<language_modeling::v1::TokenMetadata>>*>(v75, v87, *(&v87 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v87 + 1) - v87) >> 3));
      v76 = v28;
      v77 = &v89;
      v78 = v68;
      v79 = &v92;
      v80 = a1;
      v81 = &v90;
      v73 = v57;
      TIDispatchAsync();

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v91 = v75;
      std::vector<std::vector<std::vector<language_modeling::v1::TokenMetadata>>>::__destroy_vector::operator()[abi:nn200100](&v91);
      v91 = v74;
      std::vector<KB::LanguageModelContext>::__destroy_vector::operator()[abi:nn200100](&v91);
      if (v60)
      {
        std::__shared_weak_count::__release_weak(v60);
      }

      ++v63;
      v61 = a1;
      v62 += 56;
    }

    while (v63 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - *(a1 + 3)) >> 3));
  }

  dispatch_group_wait(v57, 0xFFFFFFFFFFFFFFFFLL);
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  std::mutex::~mutex(&v92);
  v92.__m_.__sig = &v83;
  std::vector<KB::LanguageModelContext>::__destroy_vector::operator()[abi:nn200100](v65);
  v92.__m_.__sig = &v87;
  std::vector<std::vector<std::vector<language_modeling::v1::TokenMetadata>>>::__destroy_vector::operator()[abi:nn200100](&v92);
}

void std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__init_with_size[abi:nn200100]<std::vector<language_modeling::v1::TokenMetadata>*,std::vector<language_modeling::v1::TokenMetadata>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<KB::LanguageModelContext>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<KB::LanguageModelContext>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::vector<language_modeling::v1::TokenMetadata>>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
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
        std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void KB::LanguageModelLexiconGroup::lexicon_group_identifier(std::string *__return_ptr a1@<X8>, KB::LanguageModelLexiconGroup *this@<X0>)
{
  v3 = *this;
  if (v3)
  {
    (*(*v3 + 48))(&v10);
    v4 = v10;
    v5 = v11;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1->__r_.__value_.__r.__words[0] = 0;
    if (v4 != v5)
    {
      do
      {
        size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) != 0)
        {
          size = a1->__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::string::append(a1, "+", 1uLL);
        }

        std::to_string(&__p, *v4);
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
          v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v8 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, p_p, v8);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v4;
      }

      while (v4 != v5);
      v4 = v10;
    }

    if (v4)
    {
      v11 = v4;
      operator delete(v4);
    }
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = 0uLL;
    a1->__r_.__value_.__r.__words[2] = 0;
  }
}

uint64_t *KB::LanguageModelContainer::get_autocorrection_queue(int8x8_t *a1, uint64_t a2)
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
  v8 = a1[7];
  if (v8)
  {
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

    v13 = *(*&a1[6] + 8 * v12);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (std::equal_to<std::string>::operator()[abi:nn200100](i + 2, a2))
          {
            v22 = i[5];
            goto LABEL_28;
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
            break;
          }
        }
      }
    }
  }

  std::operator+<char>();
  v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  if (v24 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v18 = dispatch_queue_create(p_p, v16);
  v25 = a2;
  v19 = std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[6], a2, &v25);
  v20 = v19[5];
  v19[5] = v18;

  v25 = a2;
  v22 = std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[6], a2, &v25)[5];

  if (v24 < 0)
  {
    operator delete(__p);
  }

LABEL_28:

  return v22;
}

void ___ZNK2KB22LanguageModelContainer30conditional_likelihood_batchedERKNSt3__16vectorINS_9CandidateENS1_9allocatorIS3_EEEERKNS2_INS2_IN17language_modeling2v113TokenMetadataENS4_ISB_EEEENS4_ISD_EEEERKNS_20LanguageModelContextEP10__CFStringb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && (v3 = *(a1 + 40), (v4 = std::__shared_weak_count::lock(v2)) != 0))
  {
    v5 = v4;
    if (*(a1 + 48))
    {
      v6 = (*(v3 + 24) + 56 * *(a1 + 96));
      v31 = v4;
      if (**(a1 + 72) == 1)
      {
        KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v6, **(a1 + 64));
      }

      (*(**v6 + 432))(&v35);
      v8 = *(v3 + 24);
      v10 = *(a1 + 96);
      v9 = *(a1 + 104);
      v11 = *(a1 + 128);
      v12 = *(a1 + 184);
      v34 = a1;
      v30 = *(a1 + 176);
      std::mutex::lock(v30);
      if (v36 != v35)
      {
        v13 = 0;
        v32 = (v9 + 104 * v10);
        v33 = (v8 + 56 * v10);
        v14 = (v11 + 24 * v10);
        do
        {
          KB::LanguageModelContext::LanguageModelContext(&v40, v32);
          if (*(v35 + 24 * v13 + 8) != *(v35 + 24 * v13))
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = **(v34 + 152) + 1000 * v13;
            v19 = 39;
            do
            {
              v20 = *(*v14 + 24 * v13);
              if (*(v20 + v15) == 1)
              {
                v21 = *(v18 + 8) + v16;
                v22 = *(v21 + 136);
                if (!KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v33, *(v21 + 136)) && (**(v34 + 160) != 1 || (*(*(v18 + 8) + v16 + 106) & 2) == 0))
                {
                  v22 = 0;
                }

                v23 = (*(*v12 + 456))(v12, v22, &v40);
                v24 = (*(v35 + 24 * v13) + v19);
                v37 = vmul_n_f32(*(v24 - 39), v23);
                v38 = *(v24 - 31);
                v25 = (v24 - 23);
                if (*v24 < 0)
                {
                  std::string::__init_copy_ctor_external(&v39, *v25, *(v24 - 15));
                }

                else
                {
                  *&v39.__r_.__value_.__l.__data_ = *v25;
                  v39.__r_.__value_.__r.__words[2] = *(v24 - 7);
                }

                v26 = (*(**(v34 + 168) + 24 * v13) + v19);
                *(v26 - 39) = v37;
                *(v26 - 31) = v38;
                v27 = (v26 - 23);
                if (*v26 < 0)
                {
                  operator delete(*v27);
                }

                *v27 = v39;
                v20 = *(*v14 + 24 * v13);
              }

              if ((*(v20 + v15 + 1) & 1) == 0)
              {
                v28 = (*(v18 + 8) + v16);
                v29 = v28[17];
                KB::LanguageModelContext::append(&v40, v29, v28, 0);
              }

              ++v17;
              v16 += 240;
              v15 += 2;
              v19 += 40;
            }

            while (v17 < 0xCCCCCCCCCCCCCCCDLL * ((*(v35 + 24 * v13 + 8) - *(v35 + 24 * v13)) >> 3));
          }

          v37 = &v46;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v37);
          language_modeling::v1::LinguisticContext::~LinguisticContext(&v45);
          language_modeling::v1::LinguisticContext::~LinguisticContext(&v44);
          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }

          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v41);
          }

          ++v13;
        }

        while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3));
      }

      std::mutex::unlock(v30);
      v40 = &v35;
      std::vector<std::vector<KB::LikelihoodInfo>>::__destroy_vector::operator()[abi:nn200100](&v40);
      dispatch_group_leave(*(v34 + 32));
      v5 = v31;
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  else
  {
    v7 = *(a1 + 32);

    dispatch_group_leave(v7);
  }
}

KB::LanguageModelContext *std::vector<KB::LanguageModelContext>::__init_with_size[abi:nn200100]<KB::LanguageModelContext*,KB::LanguageModelContext*>(KB::LanguageModelContext *result, const KB::LanguageModelContext *a2, const KB::LanguageModelContext *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<KB::LanguageModelContext>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::vector<std::vector<language_modeling::v1::TokenMetadata>>>::__init_with_size[abi:nn200100]<std::vector<std::vector<language_modeling::v1::TokenMetadata>>*,std::vector<std::vector<language_modeling::v1::TokenMetadata>>*>(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<KB::LanguageModelContext>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModelContext>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModelContext>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void __destroy_helper_block_a8_48c53_ZTSNSt3__18weak_ptrIKN2KB22LanguageModelContainerEEE104c67_ZTSNSt3__16vectorIN2KB20LanguageModelContextENS_9allocatorIS2_EEEE128c113_ZTSNSt3__16vectorINS0_INS0_IN17language_modeling2v113TokenMetadataENS_9allocatorIS3_EEEENS4_IS6_EEEENS4_IS8_EEEE(uint64_t a1)
{
  v2 = (a1 + 104);
  v4 = (a1 + 128);
  std::vector<std::vector<std::vector<language_modeling::v1::TokenMetadata>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = v2;
  std::vector<KB::LanguageModelContext>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void __copy_helper_block_a8_48c53_ZTSNSt3__18weak_ptrIKN2KB22LanguageModelContainerEEE104c67_ZTSNSt3__16vectorIN2KB20LanguageModelContextENS_9allocatorIS2_EEEE128c113_ZTSNSt3__16vectorINS0_INS0_IN17language_modeling2v113TokenMetadataENS_9allocatorIS3_EEEENS4_IS6_EEEENS4_IS8_EEEE(void *a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  std::vector<KB::LanguageModelContext>::__init_with_size[abi:nn200100]<KB::LanguageModelContext*,KB::LanguageModelContext*>((a1 + 13), *(a2 + 104), *(a2 + 112), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  a1[16] = 0;
  a1[17] = 0;
  v5 = a1 + 16;
  v5[2] = 0;
  v6 = *(a2 + 128);
  v7 = *(a2 + 136);

  std::vector<std::vector<std::vector<language_modeling::v1::TokenMetadata>>>::__init_with_size[abi:nn200100]<std::vector<std::vector<language_modeling::v1::TokenMetadata>>*,std::vector<std::vector<language_modeling::v1::TokenMetadata>>*>(v5, v6, v7, 0xAAAAAAAAAAAAAAABLL * (v7 - v6));
}

void *std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto17OS_dispatch_queue}* {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t a2, __int128 **a3)
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
  v10 = *(a1 + 2);
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

  return v15;
}

void KB::LanguageModelContainer::conditional_likelihood(KB::LanguageModelContainer *this@<X0>, const TITokenID *a2@<X2>, const KB::LanguageModelContext *a3@<X3>, float a4@<S0>, uint64_t a5@<X8>)
{
  v24 = KB::k_invalid_likelihood_value;
  v25 = dword_27D9EA848;
  if (byte_27D9EA850[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *byte_27D9EA850, *&byte_27D9EA850[8]);
  }

  else
  {
    __p = *byte_27D9EA850;
  }

  lexicon_id = a2->lexicon_id;
  v11 = KB::LanguageModelContainer::index_for_lexicon_id(this, a2->lexicon_id);
  if (v11 == -1)
  {
    v14 = 0.0;
    if (*a2 >> 34 > 0x7C || *(this + 3) == *(this + 4))
    {
      goto LABEL_14;
    }

    v15 = (*(*this + 456))(this, 0, a3);
    v16 = *(this + 3);
    v20 = *&v15;
    if (v16 == *(this + 4))
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v17 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    (*(*v17 + 424))(&v21, a4);
    v24 = v21;
    v25 = v22;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v23;
    *(&v23.__r_.__value_.__s + 23) = 0;
    v23.__r_.__value_.__s.__data_[0] = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }
  }

  else
  {
    v12 = v11;
    v13 = (*(*this + 456))(this, lexicon_id, a3);
    v20 = *&v13;
    (*(**(*(this + 3) + 56 * v12) + 424))(&v21, a4);
    v24 = v21;
    v25 = v22;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v23;
  }

  v14 = v20;
LABEL_14:
  *a5 = vmul_n_f32(v24, v14);
  *(a5 + 8) = v25;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v19 = __p.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external((a5 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    operator delete(v19);
  }

  else
  {
    *(a5 + 16) = __p;
  }
}

void KB::LanguageModelContainer::marginal_likelihood(KB::LanguageModelContainer *this, const KB::String *a2, const TITokenID *a3)
{
  lexicon_id = a3->lexicon_id;
  v7 = KB::LanguageModelContainer::index_for_lexicon_id(this, a3->lexicon_id);
  if (v7 != -1)
  {
    v8 = 56 * v7;
    KB::LanguageModelLexiconGroup::lexicon_weight((*(this + 3) + 56 * v7), lexicon_id);
    v9 = (*(this + 3) + v8);
LABEL_3:
    (*(**v9 + 416))(*v9, a2, a3);
    return;
  }

  if (*a3 >> 34 <= 0x7C)
  {
    v9 = *(this + 3);
    if (v9 != *(this + 4))
    {
      goto LABEL_3;
    }
  }
}

uint64_t KB::LanguageModelContainer::can_reason_about(KB::LanguageModelContainer *this, const KB::String *a2, const TITokenID *a3)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  v5 = KB::LanguageModelContainer::index_for_lexicon_id(this, a3->lexicon_id);
  if (v5 != -1)
  {
    v6 = *(this + 3) + 56 * v5;
    goto LABEL_4;
  }

  if (*a3 >> 34 > 0x7C)
  {
    return 0;
  }

  v6 = *(this + 3);
  if (v6 == *(this + 4))
  {
    return 0;
  }

LABEL_4:
  v7 = *(**v6 + 408);

  return v7();
}

uint64_t KB::LanguageModelContainer::is_swear_word_policy_enabled(KB::LanguageModelContainer *this, int a2)
{
  v3 = KB::LanguageModelContainer::index_for_lexicon_id(this, a2);
  if (v3 == -1)
  {
    return 1;
  }

  v4 = *(**(*(this + 3) + 56 * v3) + 400);

  return v4();
}

void KB::LanguageModelContainer::adapt_to_paragraph(uint64_t a1, KB *this, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  KB::cf_string_no_copy(&cf, this);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = cf;
  while (v12 != v13)
  {
    if (a5 == 2 || (*(**v12 + 384))(*v12, v14))
    {
      (*(**v12 + 392))(*v12, this, a3, a4, a5, a6);
    }

    v12 += 7;
  }

  if (v14)
  {

    CFRelease(v14);
  }
}

uint64_t KB::LanguageModelContainer::should_adapt_to_paragraph(KB::LanguageModelContainer *this, const __CFString *a2)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = *(this + 4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = ___ZNK2KB22LanguageModelContainer25should_adapt_to_paragraphEPK10__CFString_block_invoke;
  v11 = &__block_descriptor_40_e10_B16__0r_v8l;
  v12 = a2;
  v6 = v9;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    do
    {
      v7 = v10(v6, v4);
      if (v7)
      {
        break;
      }

      v4 += 7;
    }

    while (v4 != v5);
  }

  return v7;
}

double KB::LanguageModelContainer::last_offline_adaptation_time(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  v3 = 0.0;
  while (v1 != v2)
  {
    v4 = *v1;
    v1 += 7;
    v5 = (*(*v4 + 376))(v4);
    if (v5 < v3)
    {
      v3 = v5;
    }
  }

  return v3;
}

unint64_t KB::LanguageModelContainer::record_usage_with_differential_privacy(KB::LanguageModelContainer *a1, int a2, int a3)
{
  result = KB::LanguageModelContainer::index_for_lexicon_id(a1, a3);
  v6 = *(a1 + 3);
  if (result < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 4) - v6) >> 3))
  {
    v7 = (v6 + 56 * result);
    KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v7, a3);
    v8 = *(**v7 + 368);

    return v8();
  }

  return result;
}

uint64_t KB::LanguageModelContainer::register_negative_evidence(KB::LanguageModelContainer *a1, uint64_t a2, TITokenID *a3, const KB::LanguageModelContext *a4)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    result = (*(*a1 + 408))(a1, a2, a3);
    if (!result)
    {
      return result;
    }

    v9 = *a3;
  }

  else
  {
    v9 = *a3;
    if (*a3 >> 34 < 0x7D)
    {
      return result;
    }
  }

  v10 = KB::LanguageModelContainer::lexicon_id_for_token(a1, v9, a4);
  result = KB::LanguageModelContainer::index_for_lexicon_id(a1, v10);
  if (result != -1)
  {
    v11 = *(**(*(a1 + 3) + 56 * result) + 360);

    return v11();
  }

  return result;
}

uint64_t KB::LanguageModelContainer::lexicon_id_for_token(KB::LanguageModelContainer *this, TITokenID a2, const KB::LanguageModelContext *a3)
{
  v3 = a2;
  if (a2.lexicon_id && a2.lexicon_id != -2)
  {
    return v3;
  }

  v4 = *(this + 3);
  if (*(this + 4) - v4 == 56 && v4[10] == 1)
  {
    (*(**v4 + 48))(__p);
    v3 = *__p[0];
    __p[1] = __p[0];
    operator delete(__p[0]);
    return v3;
  }

  v6 = *(*this + 440);

  return v6();
}

void KB::LanguageModelContainer::decrement_usage_count(KB::LanguageModelContainer *this, const KB::String *a2, const TITokenID *a3, const KB::LanguageModelContext *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (HIDWORD(*a3) != 1)
  {
    v5 = *a3;
    v9 = KB::LanguageModelContainer::lexicon_id_for_token(this, v5, a4);
    v10 = KB::LanguageModelContainer::index_for_lexicon_id(this, v9);
    if (v10 != -1)
    {
      v11 = (*(this + 3) + 56 * v10);
      (*(**v11 + 352))(*v11, a2, a3, a4);
      v12 = language_modeling::v1::LinguisticContext::tokenSpan((a4 + 64));
      if (v13)
      {
        if (*(v12 + 32 * v13 - 8) == 1)
        {
          v14 = *v11;
          v15 = 0x100000;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          (*(*v14 + 352))(v14, &v15, &kTITokenIDBeginningOfSentence, a4);
          if (v18)
          {
            if (v17 == 1)
            {
              free(v18);
            }
          }
        }
      }
    }
  }
}

uint64_t KB::LanguageModelContainer::increment_usage_count(uint64_t this, const KB::String *a2, const TITokenID *a3, const KB::LanguageModelContext *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (HIDWORD(*a3) != 1)
  {
    v8 = this;
    v5 = *a3;
    v9 = KB::LanguageModelContainer::lexicon_id_for_token(this, v5, a4);
    this = KB::LanguageModelContainer::index_for_lexicon_id(v8, v9);
    if (this != -1)
    {
      v10 = (*(v8 + 3) + 56 * this);
      v11 = language_modeling::v1::LinguisticContext::tokenSpan((a4 + 64));
      if (v12)
      {
        if (*(v11 + 32 * v12 - 8) == 1)
        {
          v13 = *v10;
          v14 = 0x100000;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          (*(*v13 + 344))(v13, &v14, &kTITokenIDBeginningOfSentence, a4);
          if (v17)
          {
            if (v16 == 1)
            {
              free(v17);
            }
          }
        }
      }

      return (*(**v10 + 344))(*v10, a2, a3, a4);
    }
  }

  return this;
}

unint64_t KB::LanguageModelContainer::add_dynamic_word(KB::LanguageModelContainer *this, const __CFString *a2, uint64_t a3)
{
  v6 = KB::LanguageModelContainer::index_for_lexicon_id(this, a3);
  v7 = *(this + 3);
  if (v6 >= 0x6DB6DB6DB6DB6DB7 * ((*(this + 4) - v7) >> 3))
  {
    return 0;
  }

  v8 = (v7 + 56 * v6);
  KB::LanguageModelLexiconGroup::model_contains_lexicon_id(v8, a3);
  result = (*(**v8 + 336))(*v8, a2, a3);
  if (!HIDWORD(result))
  {
    return 0;
  }

  return result;
}

uint64_t KB::LanguageModelContainer::is_dynamic_word_id(KB::LanguageModelContainer *this, TITokenID a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = ___ZNK2KB22LanguageModelContainer18is_dynamic_word_idE9TITokenID_block_invoke;
  v9 = &__block_descriptor_40_e10_B16__0r_v8l;
  v10 = a2;
  v4 = v7;
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    do
    {
      v5 = v8(v4, v2);
      if (v5)
      {
        break;
      }

      v2 += 7;
    }

    while (v2 != v3);
  }

  return v5;
}

void KB::LanguageModelContainer::static_words_for_string(uint64_t a1@<X0>, KB::Word *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v3 = *(a1 + 24);
  if (*(a1 + 32) != v3)
  {
    v5 = 0;
    do
    {
      (*(**(v3 + 56 * v5) + 312))(&v8);
      v6 = v8;
      v7 = v9;
      if (v8 != v9)
      {
        do
        {
          *(v6 + 12) = KB::LanguageModelLexiconGroup::lexicon_weight((*(a1 + 24) + 56 * v5), *(v6 + 34)) * *(v6 + 12);
          v6 += 30;
        }

        while (v6 != v7);
        v6 = v8;
        v7 = v9;
      }

      std::vector<KB::Word>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Word*>,std::__wrap_iter<KB::Word*>>(a2, *(a2 + 1), v6, v7, 0xEEEEEEEEEEEEEEEFLL * ((v7 - v6) >> 4));
      v10 = &v8;
      std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v10);
      ++v5;
      v3 = *(a1 + 24);
    }

    while (v5 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v3) >> 3));
  }
}

KB::Word *std::vector<KB::Word>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Word*>,std::__wrap_iter<KB::Word*>>(KB::Word *result, KB::Word *a2, size_t *a3, size_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return result;
  }

  v6 = a3;
  v8 = result;
  v10 = *(result + 1);
  v9 = *(result + 2);
  if ((0xEEEEEEEEEEEEEEEFLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *result;
    v12 = a5 - 0x1111111111111111 * ((v10 - *result) >> 4);
    if (v12 > 0x111111111111111)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v13 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x88888888888888)
    {
      v14 = 0x111111111111111;
    }

    else
    {
      v14 = v12;
    }

    v31[4] = v8;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v14);
    }

    v22 = 16 * ((a2 - v11) >> 4);
    v23 = 240 * a5;
    v24 = v22 + 240 * a5;
    v25 = v22;
    do
    {
      v25 = (KB::Word::Word(v25, v6) + 240);
      v6 += 30;
      v23 -= 240;
    }

    while (v23);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(a2, *(v8 + 1), v24);
    v26 = *v8;
    v27 = v24 + *(v8 + 1) - a2;
    *(v8 + 1) = a2;
    v28 = v22 + v26 - a2;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(v26, a2, v28);
    v29 = *v8;
    *v8 = v28;
    *(v8 + 1) = v27;
    v30 = *(v8 + 2);
    *(v8 + 2) = 0;
    v31[2] = v29;
    v31[3] = v30;
    v31[0] = v29;
    v31[1] = v29;
    return std::__split_buffer<KB::Word>::~__split_buffer(v31);
  }

  v15 = v10 - a2;
  if ((0xEEEEEEEEEEEEEEEFLL * ((v10 - a2) >> 4)) >= a5)
  {
    v21 = 30 * a5;
    std::vector<KB::Word>::__move_range(result, a2, *(result + 1), a2 + 240 * a5);
    v20 = &v6[v21];
    v19 = v6;
    goto LABEL_18;
  }

  result = *(result + 1);
  if ((a3 + v15) != a4)
  {
    v17 = (a3 + v15);
    result = v10;
    do
    {
      v18 = KB::Word::Word(result, v17);
      v17 += 30;
      result = (v18 + 240);
    }

    while (v17 != a4);
  }

  *(v8 + 1) = result;
  if (v15 >= 1)
  {
    std::vector<KB::Word>::__move_range(v8, a2, v10, a2 + 240 * a5);
    v19 = v6;
    v20 = v6 + v15;
LABEL_18:

    return std::__copy_impl::operator()[abi:nn200100]<KB::Word *,KB::Word *,KB::Word *>(v19, v20, a2);
  }

  return result;
}

void std::vector<KB::Word>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(a1 + 8);
    do
    {
      v11 = KB::Word::Word(v10, v9);
      v9 += 240;
      v10 = v11 + 240;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v10;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      v14 = v6 + v12;
      KB::String::operator=(v6 + v12 - 240, (v7 + v12 - 240));
      KB::ByteString::operator=((v6 + v12 - 208), (v7 + v12 - 208));
      v15 = *(v7 + v12 - 192);
      *(v14 - 184) = *(v7 + v12 - 184);
      *(v14 - 192) = v15;
      KB::String::operator=(v6 + v12 - 176, (v7 + v12 - 176));
      v16 = *(v7 + v12 - 144);
      v17 = *(v7 + v12 - 128);
      v18 = *(v7 + v12 - 96);
      *(v14 - 112) = *(v7 + v12 - 112);
      *(v14 - 96) = v18;
      *(v14 - 144) = v16;
      *(v14 - 128) = v17;
      KB::String::operator=(v6 + v12 - 80, (v7 + v12 - 80));
      *(v14 - 48) = *(v7 + v12 - 48);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v6 + v12 - 40, (v7 + v12 - 40));
      v12 -= 240;
    }

    while (v13 != v12);
  }
}

uint64_t KB::LanguageModelContainer::id_for_separator(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  if (v1 == *(this + 4))
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = (*(*v2 + 304))(v2);
    if (!v3)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = 0;
  if (v3)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v4;
}

uint64_t KB::LanguageModelContainer::start_session(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; result = (*(*v5 + 288))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return result;
}

uint64_t KB::LanguageModelContainer::set_recipient_context(uint64_t this, const __CFDictionary *a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 280))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return this;
}

uint64_t KB::LanguageModelContainer::set_app_context(uint64_t this, const __CFString *a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 272))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return this;
}

uint64_t KB::LanguageModelContainer::set_inline_completion_personalization(uint64_t this, const KB::String *a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 264))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return this;
}

void KB::LanguageModelContainer::copyLinguisticDataFiles(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  if (v1 == *(this + 4))
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

  (*(*v2 + 232))(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void KB::LanguageModelContainer::get_num_candidates(uint64_t a1)
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

  (*(*v2 + 224))(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t KB::LanguageModelContainer::unwire_memory(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    this = (*(**v1 + 16))();
    if (this)
    {
      this = (*(**v1 + 216))();
    }

    v1 += 56;
  }

  return this;
}

uint64_t KB::LanguageModelContainer::wire_memory(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    this = (*(**v1 + 16))();
    if (this)
    {
      this = (*(**v1 + 208))();
    }

    v1 += 56;
  }

  return this;
}

uint64_t KB::LanguageModelContainer::should_score_completion_candidate(KB::LanguageModelContainer *this, const Candidate *a2)
{
  v3 = KB::LanguageModelContainer::index_for_lexicon_id(this, *(*(a2 + 1) + 240 * *a2 - 104));
  if (v3 == -1)
  {
    return 1;
  }

  v4 = *(*(this + 3) + 56 * v3);
  return (*(*v4 + 144))(v4) ^ 1;
}

uint64_t KB::LanguageModelContainer::supports_fragment_based_conditional_prob(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1 + 56;
  do
  {
    result = (*(**(v3 - 56) + 192))(*(v3 - 56));
    if (result)
    {
      v5 = v3 == v2;
    }

    else
    {
      v5 = 1;
    }

    v3 += 56;
  }

  while (!v5);
  return result;
}

void KB::LanguageModelContainer::model_locales(KB::LanguageModelContainer *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      (*(**v2 + 176))(&__p);
      v6 = __p;
      v7 = v23 - __p;
      v8 = (v23 - __p) >> 3;
      if (v8 >= 1)
      {
        if (-v5 >= v7)
        {
          if (__p != v23)
          {
            memmove(v5, __p, v23 - __p);
          }

          v5 += v7;
        }

        else
        {
          v9 = *a2;
          v10 = v5 - *a2;
          v11 = v8 + (v10 >> 3);
          if (v11 >> 61)
          {
            a2[1] = v5;
            a2[2] = 0;
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v12 = -v9;
          v13 = -v9 >> 2;
          if (v13 > v11)
          {
            v11 = v13;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v11;
          }

          if (v14)
          {
            if (!(v14 >> 61))
            {
              operator new();
            }

            a2[1] = v5;
            a2[2] = 0;
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v15 = 8 * (v10 >> 3);
          v16 = v15 + v7;
          v17 = v15;
          do
          {
            v18 = *v6++;
            *v17++ = v18;
            v7 -= 8;
          }

          while (v7);
          v19 = *a2;
          v20 = v5 - *a2;
          v21 = v15 - v20;
          memcpy((v15 - v20), *a2, v20);
          *a2 = v21;
          if (v19)
          {
            operator delete(v19);
          }

          v5 = v16;
        }
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v2 += 56;
    }

    while (v2 != v3);
    a2[1] = v5;
    a2[2] = 0;
  }
}

uint64_t KB::LanguageModelContainer::does_provide_inline_completions_for_locale(KB::LanguageModelContainer *this, const KB::String *a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v2 + 56;
  do
  {
    result = (*(**(v5 - 56) + 168))(*(v5 - 56), a2);
    if (result)
    {
      break;
    }

    v7 = v5 == v3;
    v5 += 56;
  }

  while (!v7);
  return result;
}

uint64_t KB::LanguageModelContainer::does_provide_inline_completions(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 56;
  do
  {
    result = (*(**(v3 - 56) + 160))(*(v3 - 56));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 56;
  }

  while (!v5);
  return result;
}

uint64_t KB::LanguageModelContainer::advanced_models_loaded(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1;
    v1 += 7;
    v3 += (*(*v4 + 160))(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t KB::LanguageModelContainer::does_provide_completions(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1 + 56;
  do
  {
    result = (*(**(v3 - 56) + 144))(*(v3 - 56));
    if (result)
    {
      v5 = v3 == v2;
    }

    else
    {
      v5 = 1;
    }

    v3 += 56;
  }

  while (!v5);
  return result;
}

void KB::LanguageModelContainer::reset_state_cache(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a2 || a2 == 2)
  {
    v15 = *(a1 + 24);
    v14 = *(a1 + 32);
    while (v15 != v14)
    {
      v16 = *v15;
      v15 += 7;
      (*(*v16 + 136))(v16, a2);
    }
  }

  else if (a2 == 1)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v4 != v5)
    {
      v6 = MEMORY[0x277D86220];
      while (1)
      {
        KB::LanguageModelLexiconGroup::lexicon_group_identifier(&__p, v4);
        v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v8 = *(a1 + 24);
        if (v8 == *(a1 + 32))
        {
          break;
        }

        v10 = *v8;
        v9 = v8[1];
        if (!v9)
        {
          goto LABEL_13;
        }

        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v4 == v10;
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
LABEL_14:
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = off_2787328D8[v12];
          *buf = 136315650;
          v19 = "reset_state_cache";
          v20 = 2080;
          v21 = v7;
          v22 = 2080;
          v23 = v13;
          _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEFAULT, "%s  Resetting state cache for %s model with %s", buf, 0x20u);
        }

        (*(**v4 + 136))(*v4, v12);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v4 = (v4 + 56);
        if (v4 == v5)
        {
          return;
        }
      }

      v10 = 0;
LABEL_13:
      v11 = *v4 == v10;
      goto LABEL_14;
    }
  }
}

uint64_t KB::LanguageModelContainer::clear_recent_text_cache(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 7;
    this = (*(*v3 + 128))(v3);
  }

  return this;
}

uint64_t KB::LanguageModelContainer::clear_dynamic_learning_cache(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 7;
    this = (*(*v3 + 120))(v3);
  }

  return this;
}

uint64_t KB::LanguageModelContainer::attach_to_dynamic_resource_directory(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; result = (*(*v5 + 112))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return result;
}

uint64_t KB::LanguageModelContainer::detach_from_dynamic_resource_directory(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 7;
    this = (*(*v3 + 104))(v3);
  }

  return this;
}

uint64_t KB::LanguageModelContainer::synchronized_load(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 7;
    this = (*(*v3 + 96))(v3);
  }

  return this;
}

uint64_t KB::LanguageModelContainer::reload_with_locales(uint64_t this, const __CFArray *a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 80))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return this;
}

uint64_t KB::LanguageModelContainer::load(uint64_t this, uint64_t a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; this = (*(*v5 + 72))(v5, a2))
  {
    v5 = *v2;
    v2 += 7;
  }

  return this;
}

uint64_t KB::LanguageModelContainer::does_support_english(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 56;
  do
  {
    result = (*(**(v3 - 56) + 64))(*(v3 - 56));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 56;
  }

  while (!v5);
  return result;
}

void KB::LanguageModelContainer::active_locale_identifiers_vector(KB::LanguageModelContainer *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 3);
  v14 = *(this + 4);
  if (v3 != v14)
  {
    v4 = 0;
    do
    {
      (*(**v3 + 56))(&v15);
      v5 = v15;
      v6 = v16;
      if (v15 != v16)
      {
        do
        {
          v7 = a2[2];
          if (v4 >= v7)
          {
            v8 = *a2;
            v9 = v4 - *a2;
            v10 = (v9 >> 3) + 1;
            if (v10 >> 61)
            {
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            v11 = v7 - v8;
            if (v11 >> 2 > v10)
            {
              v10 = v11 >> 2;
            }

            if (v11 >= 0x7FFFFFFFFFFFFFF8)
            {
              v12 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v10;
            }

            if (v12)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(v12);
            }

            v13 = (8 * (v9 >> 3));
            *v13 = *v5;
            v4 = (v13 + 1);
            memcpy(0, v8, v9);
            *a2 = 0;
            a2[2] = 0;
            if (v8)
            {
              operator delete(v8);
            }
          }

          else
          {
            *v4 = *v5;
            v4 += 8;
          }

          a2[1] = v4;
          ++v5;
        }

        while (v5 != v6);
        v5 = v15;
      }

      if (v5)
      {
        v16 = v5;
        operator delete(v5);
      }

      v3 += 56;
    }

    while (v3 != v14);
  }
}

void KB::LanguageModelContainer::lexicon_id_vector(KB::LanguageModelContainer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 3);
  v9 = *(this + 4);
  if (v2 != v9)
  {
    v3 = 0;
    do
    {
      if (*v2)
      {
        (*(**v2 + 48))(&v10);
        v5 = v10;
        v4 = v11;
        if (v10 != v11)
        {
          do
          {
            v6 = v3;
            v7 = v3 >> 2;
            if (((v3 >> 2) + 1) >> 62)
            {
              a2[1] = v3;
              a2[2] = 0;
              *a2 = 0;
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            if (v3 >> 2 != -1)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v3 >> 2) + 1);
            }

            *(4 * v7) = *v5;
            v3 = 4 * v7 + 4;
            memcpy(0, 0, v6);
            ++v5;
          }

          while (v5 != v4);
          a2[1] = v3;
          a2[2] = 0;
          *a2 = 0;
          v5 = v10;
        }

        if (v5)
        {
          v11 = v5;
          operator delete(v5);
        }
      }

      v2 += 56;
    }

    while (v2 != v9);
  }
}

uint64_t KB::LanguageModelContainer::is_string_based_lm_model(KB::LanguageModelContainer *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 56;
  do
  {
    result = (*(**(v3 - 56) + 24))(*(v3 - 56));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 56;
  }

  while (!v5);
  return result;
}

void KB::LanguageModelContainer::~LanguageModelContainer(KB::LanguageModelContainer *this)
{
  KB::LanguageModelContainer::~LanguageModelContainer(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD8B78;
  v2 = *(this + 8);
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

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v6 = (this + 24);
  std::vector<KB::LanguageModelLexiconGroup>::__destroy_vector::operator()[abi:nn200100](&v6);
  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t *KB::LanguageModelLexiconGroup::set_lexicon_weight(KB::LanguageModelLexiconGroup *this, unsigned int a2, float a3)
{
  v5 = a2;
  v6 = &v5;
  result = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 2, a2, &v6);
  *(result + 5) = a3;
  return result;
}

uint64_t KB::LanguageModelLexiconGroup::lexicon_id_vector@<X0>(KB::LanguageModelLexiconGroup *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return (*(*result + 48))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

double KB::LanguageModelLexiconGroup::any_lexicon_weight(KB::LanguageModelLexiconGroup *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0.0;
  }

  LODWORD(result) = *(v1 + 20);
  return result;
}

uint64_t KB::LanguageModelContainer::LanguageModelContainer(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283FD8B78;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 3);
    if (v3 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModelLexiconGroup>>(v3);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  return a1;
}

double KB::LanguageModelContainer::lexicon_prior_probability(KB::LanguageModelContainer *this, unsigned int a2)
{
  v4 = KB::LanguageModelContainer::index_for_lexicon_id(this, a2);
  if (v4 == -1)
  {
    return 0.0;
  }

  v5 = (*(this + 3) + 56 * v4);

  *&result = KB::LanguageModelLexiconGroup::lexicon_weight(v5, a2);
  return result;
}

uint64_t KB::LanguageModelContainer::set_lexicon_prior_probability(KB::LanguageModelContainer *this, unsigned int a2, float a3)
{
  result = KB::LanguageModelContainer::index_for_lexicon_id(this, a2);
  if (result != -1)
  {
    v7 = *(this + 3);
    v8 = a2;
    v9 = &v8;
    result = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 56 * result + 16), a2, &v9);
    *(result + 20) = a3;
  }

  return result;
}

uint64_t KB::LanguageModelContainer::language_model@<X0>(KB::LanguageModelContainer *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = KB::LanguageModelContainer::index_for_lexicon_id(this, a2);
  if (result == -1)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = (*(this + 3) + 56 * result);
    v8 = *v6;
    v7 = v6[1];
    *a3 = v8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void KB::LanguageModelContainer::language_models(KB::LanguageModelContainer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 3);
  for (i = *(this + 4); v2 != i; v2 = (v2 + 56))
  {
    std::vector<std::shared_ptr<KB::LanguageModel>>::push_back[abi:nn200100](a2, v2);
  }
}

void KB::LanguageModelContainer::prior_lexicon_probabilities(KB::LanguageModelContainer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 3);
  v10 = *(this + 4);
  if (v2 != v10)
  {
    v3 = 0;
    do
    {
      if (*v2)
      {
        (*(**v2 + 48))(&v11);
        v5 = v11;
        v4 = v12;
        if (v11 != v12)
        {
          do
          {
            v6 = KB::LanguageModelLexiconGroup::lexicon_weight(v2, *v5);
            v7 = v3;
            v8 = v3 >> 2;
            if (((v3 >> 2) + 1) >> 62)
            {
              a2[1] = v3;
              a2[2] = 0;
              *a2 = 0;
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            if (v3 >> 2 != -1)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v3 >> 2) + 1);
            }

            *(4 * v8) = v6;
            v3 = 4 * v8 + 4;
            memcpy(0, 0, v7);
            ++v5;
          }

          while (v5 != v4);
          a2[1] = v3;
          a2[2] = 0;
          *a2 = 0;
          v5 = v11;
        }

        if (v5)
        {
          v12 = v5;
          operator delete(v5);
        }
      }

      v2 = (v2 + 56);
    }

    while (v2 != v10);
  }
}

uint64_t KB::LanguageModelContainer::primary_language_model@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  if (v2 == *(this + 32))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v4 = *v2;
    v3 = v2[1];
    *a2 = v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void TI::IndicUtils::convertLetterToSign(uint64_t a1, unsigned __int16 *a2, const KB::String *a3)
{
  v4 = a2;
  v52 = *MEMORY[0x277D85DE8];
  if (!a2[2])
  {
    KB::String::compute_length(a2);
    if (!v4[2])
    {
      *a1 = 0x100000;
      *(a1 + 4) = 0;
      *(a1 + 6) = 0;
      *(a1 + 8) = 0;

      KB::String::operator=(a1, v4);
      return;
    }
  }

  KB::String::String(a1, v4);
  KB::String::String(&v49, "ॲ");
  if (&v49 == v4)
  {
    if (v50 && BYTE6(v49) == 1)
    {
      free(v50);
    }
  }

  else
  {
    v8 = KB::String::equal(v4, &v49, 1, v6, v7);
    if (v50 && BYTE6(v49) == 1)
    {
      free(v50);
    }

    if (!v8)
    {
      KB::String::String(&v49, "ഔ");
      if (&v49 == v4)
      {
        if (v50 && BYTE6(v49) == 1)
        {
          free(v50);
        }
      }

      else
      {
        v11 = KB::String::equal(v4, &v49, 1, v9, v10);
        if (v50 && BYTE6(v49) == 1)
        {
          free(v50);
        }

        if (!v11)
        {
          v12 = 0;
          v13 = v4 + 8;
          v14 = v4[2];
          v28 = v4;
          while (1)
          {
            v15 = TI::IndicUtils::kVowelLettersA[v12];
            if (!v14)
            {
              KB::String::compute_length(v4);
              v14 = v4[2];
            }

            v16 = *(v4 + 1);
            v17 = *v4;
            if (v14 > 1)
            {
              v18 = a1;
              v19 = a3;
              if (v16)
              {
                v20 = v16;
              }

              else
              {
                v20 = v13;
              }

              v49 = v20;
              LODWORD(v50) = 0;
              HIDWORD(v50) = v17;
              v51 = 0;
              KB::String::iterator::initialize(&v49);
              if (v51 == v15)
              {
                *&v33 = v20;
                DWORD2(v33) = 0;
                HIDWORD(v33) = v17;
                LODWORD(v34) = 0;
                KB::String::iterator::initialize(&v33);
                v47 = v33;
                v48 = v34;
                KB::String::iterator::operator++(&v47);
                v29 = v20;
                v30 = v17;
                v31 = v17;
                v32 = 0;
                KB::String::iterator::initialize(&v29);
                KB::String::String(&v49, &v47, &v29);
                if (v15 == 2437 || v15 == 2821)
                {
                  KB::String::String(v41, &v49);
                  a3 = v19;
                  KB::String::String(v39, v19);
                  v24 = !shouldConvertToSign_beng_orya(v41, v39, v25, v26, v27);
                }

                else
                {
                  v24 = 0;
                  a3 = v19;
                  if (v15 == 2565)
                  {
                    KB::String::String(v45, &v49);
                    KB::String::String(v43, v19);
                    convertTippiToBindiIfNeeded(&v47, v45, v43);
                    KB::String::operator=(&v49, &v47);
                    a1 = v18;
                    if (*(&v47 + 1) && BYTE6(v47) == 1)
                    {
                      free(*(&v47 + 1));
                    }

                    v4 = v28;
                    if (v44 && v43[6] == 1)
                    {
                      free(v44);
                    }

                    if (v46 && v45[6] == 1)
                    {
                      free(v46);
                    }

                    goto LABEL_81;
                  }
                }

                a1 = v18;
                v4 = v28;
                if (v15 == 2821 || v15 == 2437)
                {
                  if (v40 && v39[6] == 1)
                  {
                    free(v40);
                  }

                  if (v42 && v41[6] == 1)
                  {
                    free(v42);
                  }

                  if (!v24)
                  {
LABEL_81:
                    KB::String::operator=(a1, &v49);
                    goto LABEL_43;
                  }
                }

                else if (!v24)
                {
                  goto LABEL_81;
                }

                KB::String::operator=(&v49, v28);
                goto LABEL_81;
              }

              a3 = v19;
              a1 = v18;
              v4 = v28;
            }

            if (!v16)
            {
              v16 = v13;
            }

            v49 = v16;
            LODWORD(v50) = 0;
            HIDWORD(v50) = v17;
            v51 = 0;
            KB::String::iterator::initialize(&v49);
            if (v51 > v15 && v15 + 16 > v51)
            {
              v49 = v16;
              LODWORD(v50) = 0;
              HIDWORD(v50) = v17;
              v51 = 0;
              KB::String::iterator::initialize(&v49);
              KB::String::String(&v49, v51 + 56);
              goto LABEL_42;
            }

            if (++v12 == 9)
            {
              goto LABEL_46;
            }
          }
        }
      }

      v22 = "ൗ";
      goto LABEL_41;
    }
  }

  v22 = "ॅ";
LABEL_41:
  KB::String::String(&v49, v22);
LABEL_42:
  KB::String::operator=(a1, &v49);
LABEL_43:
  if (v50 && BYTE6(v49) == 1)
  {
    free(v50);
  }

LABEL_46:
  KB::String::String(v37, a1);
  KB::String::String(v35, a3);
  v23 = shouldAddSignToContext(v37, v35);
  if (v36 && v35[6] == 1)
  {
    free(v36);
  }

  if (v38 && v37[6] == 1)
  {
    free(v38);
  }

  if ((v23 & 1) == 0)
  {
    KB::String::operator=(a1, v4);
  }
}

uint64_t convertTippiToBindiIfNeeded(uint64_t a1, const KB::String *a2, KB::String *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (KB::String::last(a2) == 2672)
  {
    if ((v6 = KB::String::last(a3), (v6 - 2566) <= 0x3A) && ((1 << (v6 - 6)) & 0x50000000000661DLL) != 0 || (v6 - 2631) <= 5 && ((1 << (v6 - 71)) & 0x33) != 0)
    {
      KB::String::String(v8, a2);
      convertTippiToBindi(v10, v8);
      KB::String::operator=(a2, v10);
      if (v11 && v10[6] == 1)
      {
        free(v11);
      }

      if (v9 && v8[6] == 1)
      {
        free(v9);
      }
    }
  }

  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  return KB::String::operator=(a1, a2);
}

unint64_t shouldAddSignToContext(KB::String *a1, KB::String *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  KB::String::String(v24, "ँ");
  if (v24 == a1)
  {
    if (v26)
    {
      v17 = v25 == 1;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      free(v26);
    }

LABEL_31:
    v18 = KB::String::last(a2);
    if ((v18 - 2312) <= 0x3D && ((1 << (v18 - 8)) & 0x2180000000001B01) != 0)
    {
      goto LABEL_35;
    }

    LOBYTE(v19) = 1;
    if ((v18 - 2375) <= 0x2B && ((1 << (v18 - 71)) & 0x80000000037) != 0)
    {
      goto LABEL_35;
    }

    return v19 & 1;
  }

  v6 = KB::String::equal(a1, v24, 1, v4, v5);
  if (v26)
  {
    v7 = v25 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v26);
  }

  if (v6)
  {
    goto LABEL_31;
  }

  KB::String::String(v24, "ં");
  if (v24 == a1)
  {
    if (v26 && v25 == 1)
    {
      free(v26);
    }
  }

  else
  {
    v10 = KB::String::equal(a1, v24, 1, v8, v9);
    if (v26 && v25 == 1)
    {
      free(v26);
    }

    if (!v10)
    {
      KB::String::String(v24, "ઁ");
      if (v24 == a1)
      {
        if (v26 && v25 == 1)
        {
          free(v26);
        }
      }

      else
      {
        v13 = KB::String::equal(a1, v24, 1, v11, v12);
        if (v26 && v25 == 1)
        {
          free(v26);
        }

        if (!v13)
        {
          KB::String::String(v24, "ੱ");
          if (v24 == a1)
          {
            if (v26 && v25 == 1)
            {
              free(v26);
            }

LABEL_52:
            v23 = KB::String::last(a2);
            if ((v23 - 2566) > 0x3C || ((1 << (v23 - 6)) & 0x1500000000006615) == 0)
            {
              LOBYTE(v19) = 1;
              if ((v23 - 2631) > 5 || ((1 << (v23 - 71)) & 0x33) == 0)
              {
                return v19 & 1;
              }
            }

LABEL_35:
            LOBYTE(v19) = 0;
            return v19 & 1;
          }

          v16 = KB::String::equal(a1, v24, 1, v14, v15);
          if (v26 && v25 == 1)
          {
            free(v26);
          }

          if (v16)
          {
            goto LABEL_52;
          }

LABEL_48:
          LOBYTE(v19) = 1;
          return v19 & 1;
        }
      }

      v22 = KB::String::last(a2);
      if ((v22 - 2701) <= 0x3F && ((1 << (v22 + 115)) & 0xDD0C0000000000DDLL) != 0 || (v22 - 2695) < 4)
      {
        goto LABEL_35;
      }

      goto LABEL_48;
    }
  }

  v20 = KB::String::last(a2);
  v19 = 0xEFFFFFFFFFFFFEEuLL >> (v20 + 115);
  if ((v20 - 2701) >= 0x3D)
  {
    LOBYTE(v19) = 1;
  }

  return v19 & 1;
}

uint64_t KB::String::last(KB::String *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    v2 = this + 16;
  }

  *&v4 = v2;
  DWORD2(v4) = v1;
  HIDWORD(v4) = v1;
  LODWORD(v5) = 0;
  KB::String::iterator::initialize(&v4);
  v6 = v4;
  v7 = v5;
  KB::String::iterator::operator--(&v6);
  return v7;
}

uint64_t convertTippiToBindi(uint64_t a1, KB::String *a2)
{
  if (KB::String::last(a2) == 2672)
  {
    KB::String::pop_last(a2);
    KB::String::append(a2, 0xA02u);
  }

  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;

  return KB::String::operator=(a1, a2);
}

void TI::IndicUtils::convertVowel(uint64_t a1, const KB::String *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  KB::String::String(v48, a2);
  v43 = 0x100000;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  TI::IndicUtils::convertLetterToSign(v51, v48, &v43);
  if (v46)
  {
    v6 = v45 == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v46);
  }

  if (v50 && v49 == 1)
  {
    free(v50);
  }

  if (v51 == a2 || KB::String::equal(v51, a2, 1, v4, v5))
  {
    KB::String::String(v34, a2);
    if (v35 || (KB::String::compute_length(v34), v35))
    {
      KB::String::String(&v53, "ॅ");
      v11 = KB::String::equal(v34, &v53, 1, v7, v8);
      if (v54 && BYTE6(v53) == 1)
      {
        free(v54);
      }

      if (v11)
      {
        v12 = "ॲ";
LABEL_19:
        KB::String::String(&v39, v12);
        goto LABEL_43;
      }

      if (KB::String::equal(v34, &kVowelSignYAPHALAA_beng, 1, v9, v10))
      {
        v15 = &kVowelLetterYAPHALAA_beng;
      }

      else
      {
        if (!KB::String::equal(v34, &kVowelSignYAPHALAA_orya, 1, v13, v14))
        {
          KB::String::String(&v53, "ൗ");
          v18 = KB::String::equal(v34, &v53, 1, v16, v17);
          if (v54 && BYTE6(v53) == 1)
          {
            free(v54);
          }

          if (!v18)
          {
            v19 = 0;
            if (v37)
            {
              v20 = v37;
            }

            else
            {
              v20 = &v38;
            }

            v21 = v34[0];
            while (1)
            {
              v22 = TI::IndicUtils::kVowelLettersA[v19];
              v53 = v20;
              LODWORD(v54) = 0;
              HIDWORD(v54) = v21;
              v55 = 0;
              KB::String::iterator::initialize(&v53);
              if (v22 - 4 <= v55 && v22 - 1 > v55)
              {
                break;
              }

              if ((v55 & 0xFFFFFFFE) == 0xA70)
              {
                break;
              }

              v53 = v20;
              LODWORD(v54) = 0;
              HIDWORD(v54) = v21;
              v55 = 0;
              KB::String::iterator::initialize(&v53);
              v23 = v55 - 56;
              if (v55 - 56 > v22 && v22 + 16 > v23)
              {
                KB::String::String(&v39, v23);
                goto LABEL_43;
              }

              if (++v19 == 9)
              {
                goto LABEL_42;
              }
            }

            KB::String::String(&v53, v22);
            v29 = KB::String::first(v34);
            KB::String::String(&v39, &v53);
            KB::String::append(&v39, v29);
            if (v54 && BYTE6(v53) == 1)
            {
              free(v54);
            }

            goto LABEL_43;
          }

          v12 = "ഔ";
          goto LABEL_19;
        }

        v15 = &kVowelLetterYAPHALAA_orya;
      }

      KB::String::String(&v39, v15);
    }

    else
    {
LABEL_42:
      v39 = 0x100000;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      KB::String::operator=(&v39, v34);
    }

LABEL_43:
    KB::String::operator=(v51, &v39);
    if (v42 && v41 == 1)
    {
      free(v42);
    }

    if (v37 && v36 == 1)
    {
      free(v37);
    }
  }

  v25 = KB::String::last(v51);
  if (v25 > 2673)
  {
    if (v25 == 2674)
    {
      KB::String::String(a1, "ਇ");
      KB::String::String((a1 + 32), "ਈ");
      v28 = "ਏ";
    }

    else
    {
      if (v25 != 2675)
      {
        goto LABEL_57;
      }

      KB::String::String(a1, "ਉ");
      KB::String::String((a1 + 32), "ਊ");
      v28 = "ਓ";
    }

    KB::String::String((a1 + 64), v28);
    goto LABEL_66;
  }

  if (v25 != 2562)
  {
    if (v25 == 2672)
    {
      KB::String::String(a1, v51);
      KB::String::String(v32, v51);
      convertTippiToBindi(a1 + 32, v32);
      *(a1 + 64) = 0x100000;
      *(a1 + 68) = 0;
      *(a1 + 70) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      v26 = v33;
      if (!v33)
      {
        goto LABEL_66;
      }

      v27 = v32[6];
      goto LABEL_62;
    }

LABEL_57:
    KB::String::String(a1, v51);
    *(a1 + 32) = 0x100000;
    *(a1 + 36) = 0;
    *(a1 + 38) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 64) = 0x100000;
    *(a1 + 68) = 0;
    *(a1 + 70) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    goto LABEL_66;
  }

  KB::String::String(a1, v51);
  KB::String::String(v30, v51);
  if (KB::String::last(v30) == 2562)
  {
    KB::String::pop_last(v30);
    KB::String::append(v30, 0xA70u);
  }

  *(a1 + 32) = 0x100000;
  *(a1 + 36) = 0;
  *(a1 + 38) = 0;
  *(a1 + 40) = 0;
  KB::String::operator=(a1 + 32, v30);
  *(a1 + 64) = 0x100000;
  *(a1 + 68) = 0;
  *(a1 + 70) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v26 = v31;
  if (v31)
  {
    v27 = v30[6];
LABEL_62:
    if (v27 == 1)
    {
      free(v26);
    }
  }

LABEL_66:
  if (v52)
  {
    if (v51[6] == 1)
    {
      free(v52);
    }
  }
}

uint64_t KB::String::first(KB::String *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v1 = this + 16;
  }

  v4 = v1;
  v2 = *this;
  v5 = 0;
  v6 = v2;
  v7 = 0;
  KB::String::iterator::initialize(&v4);
  return v7;
}

uint64_t TI::IndicUtils::initialVowelLetterForScript(int a1)
{
  if (a1 <= 20)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        return 2693;
      }

      if (a1 == 16)
      {
        return 2565;
      }
    }

    else
    {
      if (a1 == 4)
      {
        return 2437;
      }

      if (a1 == 10)
      {
        return 2309;
      }
    }
  }

  else if (a1 <= 30)
  {
    if (a1 == 21)
    {
      return 3205;
    }

    if (a1 == 26)
    {
      return 3333;
    }
  }

  else
  {
    switch(a1)
    {
      case 31:
        return 2821;
      case 35:
        return 2949;
      case 36:
        return 3077;
    }
  }

  return 0;
}

BOOL TI::IndicUtils::isAlphabeticLayout(KB::String *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  KB::String::String(v43, "Bengali-Alphabetic");
  v2 = 1;
  if (!KB::String::equal(a1, v43, 1, v3, v4))
  {
    KB::String::String(v41, "Gujarati-Alphabetic");
    if (!KB::String::equal(a1, v41, 1, v5, v6))
    {
      KB::String::String(v39, "Hindi-Alphabetic");
      if (!KB::String::equal(a1, v39, 1, v7, v8))
      {
        KB::String::String(v37, "Kannada-Alphabetic");
        if (!KB::String::equal(a1, v37, 1, v9, v10))
        {
          KB::String::String(v35, "Malayalam-Alphabetic");
          if (!KB::String::equal(a1, v35, 1, v11, v12))
          {
            KB::String::String(v33, "Marathi-Alphabetic");
            if (!KB::String::equal(a1, v33, 1, v13, v14))
            {
              KB::String::String(v31, "Oriya-Alphabetic");
              if (!KB::String::equal(a1, v31, 1, v15, v16))
              {
                KB::String::String(v29, "Punjabi-Alphabetic");
                if (!KB::String::equal(a1, v29, 1, v17, v18))
                {
                  KB::String::String(v27, "Tamil-Alphabetic");
                  if (!KB::String::equal(a1, v27, 1, v19, v20))
                  {
                    KB::String::String(v25, "Telugu-Alphabetic");
                    v2 = KB::String::equal(a1, v25, 1, v21, v22);
                    if (v26)
                    {
                      if (v25[6] == 1)
                      {
                        free(v26);
                      }
                    }
                  }

                  if (v28 && v27[6] == 1)
                  {
                    free(v28);
                  }
                }

                if (v30 && v29[6] == 1)
                {
                  free(v30);
                }
              }

              if (v32 && v31[6] == 1)
              {
                free(v32);
              }
            }

            if (v34 && v33[6] == 1)
            {
              free(v34);
            }
          }

          if (v36 && v35[6] == 1)
          {
            free(v36);
          }
        }

        if (v38 && v37[6] == 1)
        {
          free(v38);
        }
      }

      if (v40 && v39[6] == 1)
      {
        free(v40);
      }
    }

    if (v42 && v41[6] == 1)
    {
      free(v42);
    }
  }

  if (v44)
  {
    v23 = v43[6] == 1;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    free(v44);
  }

  return v2;
}

void KB::InputManagerSpecialization::create_input_segment_filter(void *a1@<X8>)
{
  {
    __cxa_atexit(WTF::RefPtr<KB::InputSegmentFilter>::~RefPtr, &KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::filter, &dword_22CA55000);
  }

  if (KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once != -1)
  {
    dispatch_once(&KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once, &__block_literal_global_5085);
  }

  v2 = KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::filter;
  *a1 = KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::filter;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }
}

unsigned int **WTF::RefPtr<KB::InputSegmentFilter>::~RefPtr(unsigned int **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  return a1;
}

void KB::InputManagerSpecialization::~InputManagerSpecialization(KB::InputManagerSpecialization *this)
{
  *this = &unk_283FD8FA0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD8FA0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_283FD8FA0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;
}

KB::InputManagerSpecialization *KB::InputManagerSpecialization::InputManagerSpecialization(KB::InputManagerSpecialization *this, CFTypeRef cf)
{
  *this = &unk_283FD8FA0;
  *(this + 1) = cf;
  if (cf)
  {
    CFRetain(cf);
    *(this + 1) = cf;
  }

  return this;
}

{
  *this = &unk_283FD8FA0;
  *(this + 1) = cf;
  if (cf)
  {
    CFRetain(cf);
    *(this + 1) = cf;
  }

  return this;
}

void std::__shared_ptr_emplace<KB::CandidateFilter_Indic>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FD9028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void TIInputManager_translit::~TIInputManager_translit(TIInputManager_translit *this)
{
  TIInputManager::~TIInputManager(this);

  JUMPOUT(0x2318BE270);
}

uint64_t TIInputManager::create_custom_candidate_filter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 584);
  if (result)
  {
    return (*(*result + 80))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void TIInputManager::create_quality_filter(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  v143 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  if (*(a1 + 739))
  {
    operator new();
  }

  v8 = KB::SetOnlySearchSupplementalLexiconForScope::s_shouldOnlySearchSupplementalLexicon;
  std::vector<KB::FilterFlag>::vector[abi:nn200100](__p, a3);
  TIInputManager::candidate_filter_cache_key(a2, v8, __p, v136);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  TIInputManager::candidate_filter_for_key(&v116, a1, v136);
  v9 = v116;
  v10 = v117[0];
  *a4 = v116;
  a4[1] = v10;
  if (!v9)
  {
    v11 = (*(**(a1 + 224) + 16))(*(a1 + 224));
    KB::String::String(v114, (a1 + 104));
    v12.i32[0] = 0;
    v13.i32[0] = *(a1 + 624);
    v92 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v13, v12), 0), xmmword_22CC88A60, xmmword_22CC88A50);
    if (*(a1 + 136))
    {
      v14 = MEMORY[0x2318BC170]();
      v15 = v14;
      if (v14)
      {
        if (CFStringHasPrefix(v14, @"fr"))
        {
          LOBYTE(v15) = 0;
          v16 = v92;
          v16.i32[1] = 1066611507;
LABEL_13:
          v92 = v16;
          goto LABEL_14;
        }

        if (CFStringHasPrefix(v15, @"it"))
        {
          LOBYTE(v15) = 0;
          v16 = v92;
          v16.i32[3] = 1071225242;
          goto LABEL_13;
        }

        if (CFStringHasPrefix(v15, @"ar"))
        {
          LOBYTE(v15) = 0;
          v30 = v92;
          v30.i32[1] = 1108082688;
          v92 = v30;
        }

        else
        {
          LOBYTE(v15) = CFStringHasPrefix(v15, @"de") != 0;
        }
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }

LABEL_14:
    LODWORD(v17) = 0x80000000;
    HIDWORD(v17) = v11;
    v90 = v17;
    v18 = *(a1 + 624);
    std::vector<KB::FilterFlag>::vector[abi:nn200100](&v100, a3);
    v116 = __PAIR64__(v11, a2);
    LODWORD(v117[0]) = 0x100000;
    WORD2(v117[0]) = 0;
    BYTE6(v117[0]) = 0;
    v117[1] = 0;
    KB::String::operator=(v117, v114);
    v118 = v92;
    v119 = 0x3DCCCCCD3F3DBAFDLL;
    v120 = 0;
    v121 = 2;
    v122 = 0x600000008;
    v123 = 4;
    v124 = xmmword_22CC88A70;
    v125 = 0x3F8CCCCD00000003;
    v126 = v15;
    v128 = v90;
    v127 = 1047904911;
    v129 = v18;
    *v130 = v100;
    v19 = v101;
    v100 = 0uLL;
    v101 = 0;
    v133 = 0;
    v131 = v19;
    v132 = 0;
    v134 = 0x10000;
    v135 = 0;
    if (v115 && v114[6] == 1)
    {
      free(v115);
    }

    LOBYTE(v134) = *(a1 + 732);
    BYTE2(v134) = *(a1 + 737);
    BYTE1(v134) = v8;
    (*(*a1 + 56))(&v98, a1, a2);
    v21 = v98;
    v20 = v99;
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v133;
    v132 = v21;
    v133 = v20;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v99);
    }

    v135 = (*(*a1 + 88))(a1);
    if ((a2 - 3) < 4 || a2 == 1)
    {
      v23 = *(a1 + 584);
      if (v23)
      {
        if ((*(*v23 + 40))(v23))
        {
          HIBYTE(v134) = 1;
        }
      }
    }

    v24 = *(a1 + 744);
    if (!v24)
    {
      memset(&__s1, 0, sizeof(__s1));
      KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(buf, &__s1);
      KB::CandidateFilterFactory::create_standard_filter_definition(&v116, buf);
      KB::CandidateFilterFactory::FilterStackDefinition::convert_filter_stack_definition_to_filters(&v140, buf, &v116);
    }

    CFRetain(*(a1 + 744));
    v25 = CFGetTypeID(v24);
    if (v25 != CFDictionaryGetTypeID())
    {
      CFRelease(v24);
      v27 = filter_factory_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22CA55000, v27, OS_LOG_TYPE_INFO, "Specification root object is null or not a dictionary.", buf, 2u);
      }

      v95 = 0;
      v96 = 0;
      v97 = 0;
      goto LABEL_41;
    }

    applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&__s1, v24, @"PayloadType");
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __s1.__r_.__value_.__l.__size_ != 37 || memcmp(__s1.__r_.__value_.__l.__data_, "TextInputCandidateFilterSpecification", 0x25uLL))
    {
      v26 = filter_factory_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        p_s1 = &__s1;
        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_s1 = __s1.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = p_s1;
        *&buf[12] = 2080;
        *&buf[14] = "TextInputCandidateFilterSpecification";
        _os_log_error_impl(&dword_22CA55000, v26, OS_LOG_TYPE_ERROR, "Payload type '%s' is not '%s'", buf, 0x16u);
      }

      v95 = 0;
      v96 = 0;
      v97 = 0;
      goto LABEL_35;
    }

    applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&v140, v24, @"PayloadVersion");
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v140.__r_.__value_.__l.__size_ != 1)
      {
        goto LABEL_261;
      }

      v29 = v140.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_261;
      }

      v29 = &v140;
    }

    if (v29->__r_.__value_.__s.__data_[0] == 49)
    {
      *buf = 0;
      applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v24, @"Payload", buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      v31 = theArray;
      if (theArray)
      {
        v32 = 0;
        v95 = 0;
        v96 = 0;
        v97 = 0;
        while (1)
        {
          if (v32 >= CFArrayGetCount(v31))
          {
            if (theArray)
            {
              CFRelease(theArray);
            }

LABEL_263:
            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

LABEL_35:
            if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s1.__r_.__value_.__l.__data_);
            }

            CFRelease(v24);
LABEL_41:
            memset(v94, 0, sizeof(v94));
            v28 = v96 - v95;
            if (v96 != v95)
            {
              if (!((v28 >> 3) >> 61))
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(v28 >> 3);
              }

              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            KB::CandidateFilterFactory::FilterStackDefinition::FilterStackDefinition(buf, v94);
            KB::CandidateFilterFactory::create_standard_filter_definition(&v116, buf);
            KB::CandidateFilterFactory::FilterStackDefinition::convert_filter_stack_definition_to_filters(&__s1, buf, &v116);
          }

          v110 = 0;
          v33 = filter_factory_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = "UNKNOWN";
            if (v116 <= 6)
            {
              v34 = off_27872FF68[v116];
            }

            *buf = 134218242;
            *&buf[4] = v32;
            *&buf[12] = 2080;
            *&buf[14] = v34;
            _os_log_impl(&dword_22CA55000, v33, OS_LOG_TYPE_INFO, "Try to match rule %ld for lookup type %s", buf, 0x16u);
          }

          *buf = 0;
          applesauce::CF::at_or<applesauce::CF::DictionaryRef>(&v109, v31, v32, buf);
          if (*buf)
          {
            CFRelease(*buf);
          }

          if (!v109)
          {
            v37 = filter_factory_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22CA55000, v37, OS_LOG_TYPE_ERROR, "Filter specification rule is not a dictionary.", buf, 2u);
            }

            goto LABEL_80;
          }

          *buf = 0;
          applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(&theDict, v109, @"MatchCriteria", buf);
          if (*buf)
          {
            CFRelease(*buf);
          }

          v35 = theDict;
          if (!theDict)
          {
            v37 = filter_factory_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              KB::utf8_string(buf, @"MatchCriteria");
              v70 = *&buf[8];
              if (!*&buf[8])
              {
                v70 = &buf[16];
              }

              v71 = "";
              if (*buf)
              {
                v71 = v70;
              }

              LODWORD(v139.__r_.__value_.__l.__data_) = 136315138;
              *(v139.__r_.__value_.__r.__words + 4) = v71;
              _os_log_error_impl(&dword_22CA55000, v37, OS_LOG_TYPE_ERROR, "Filter specification rule is missing key '%s', or key value is not a dictionary.", &v139, 0xCu);
              if (*&buf[8] && buf[6] == 1)
              {
                free(*&buf[8]);
              }
            }

LABEL_80:

            v38 = 0;
            goto LABEL_230;
          }

          memset(&v107, 0, sizeof(v107));
          Value = CFDictionaryGetValue(theDict, @"LookupTypes");
          v91 = v35;
          if (!Value)
          {
            break;
          }

          applesauce::CF::convert_as<std::vector<std::string>,0>(buf, Value);
          if ((v142 & 1) == 0)
          {
            goto LABEL_82;
          }

          memset(&v139, 0, sizeof(v139));
          std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v139, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          if (v142)
          {
            cf[0].n128_u64[0] = buf;
            std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](cf);
          }

LABEL_83:
          *buf = &v107;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
          if (v139.__r_.__value_.__r.__words[0] == v139.__r_.__value_.__l.__size_)
          {
            goto LABEL_106;
          }

          std::string::basic_string[abi:nn200100]<0>(buf, "*");
          v39 = vector_contains_string(v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          if (v39)
          {
            goto LABEL_106;
          }

          if (v116 > 3)
          {
            switch(v116)
            {
              case 4:
                v41 = "Replacement";
                break;
              case 5:
                v41 = "ContinuousPath";
                break;
              case 6:
                v41 = "ContinuousPathAlternates";
                break;
              default:
                goto LABEL_150;
            }
          }

          else if (v116)
          {
            if (v116 != 1)
            {
              if (v116 != 3)
              {
                goto LABEL_150;
              }

              std::string::basic_string[abi:nn200100]<0>(buf, "Predictions");
              v40 = vector_contains_string(v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_, buf);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (!v40)
              {
                goto LABEL_150;
              }

              goto LABEL_106;
            }

            v41 = "Completions";
          }

          else
          {
            v41 = "Autocorrection";
          }

          std::string::basic_string[abi:nn200100]<0>(buf, v41);
          v42 = vector_contains_string(v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          if (!v42)
          {
LABEL_150:
            *buf = &v139;
            std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
            v38 = 0;
            v43 = v91;
            goto LABEL_229;
          }

LABEL_106:
          v43 = v91;
          applesauce::CF::at_or<char const(&)[1],__CFString const* const&>(&v107, v91, @"FilterClass");
          v44 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!v107.__r_.__value_.__l.__size_)
            {
              goto LABEL_114;
            }

            if (v107.__r_.__value_.__l.__size_ != 1)
            {
              goto LABEL_143;
            }

            v45 = v107.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&v107.__r_.__value_.__s + 23))
            {
              goto LABEL_114;
            }

            if (HIBYTE(v107.__r_.__value_.__r.__words[2]) != 1)
            {
              goto LABEL_143;
            }

            v45 = &v107;
          }

          if (v45->__r_.__value_.__s.__data_[0] != 42)
          {
LABEL_143:
            if (v129 == 1)
            {
              v38 = 0;
              if ((*(&v107.__r_.__value_.__s + 23) & 0x80) == 0 || v107.__r_.__value_.__l.__size_ != 25)
              {
                goto LABEL_225;
              }

              v57 = v107.__r_.__value_.__r.__words[0];
              v58 = *v107.__r_.__value_.__l.__data_ == 0x7375696E6F766146 && *(v107.__r_.__value_.__r.__words[0] + 8) == 0x6C617551646E6143;
              if (!v58 || *(v107.__r_.__value_.__r.__words[0] + 16) != 0x65746C6946797469 || *(v107.__r_.__value_.__r.__words[0] + 24) != 114)
              {
LABEL_177:
                v38 = 0;
                goto LABEL_227;
              }
            }

            else
            {
              if (v129)
              {
                goto LABEL_176;
              }

              if ((*(&v107.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                v57 = v107.__r_.__value_.__r.__words[0];
                if (v107.__r_.__value_.__l.__size_ != 17)
                {
                  goto LABEL_177;
                }
              }

              else
              {
                if (HIBYTE(v107.__r_.__value_.__r.__words[2]) != 17)
                {
                  *buf = &v139;
                  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
                  v38 = 0;
                  goto LABEL_229;
                }

                v57 = &v107;
              }

              if (v57->__r_.__value_.__r.__words[0] != 0x6C617551646E6143 || v57->__r_.__value_.__l.__size_ != 0x65746C6946797469 || v57->__r_.__value_.__s.__data_[16] != 114)
              {
LABEL_176:
                v38 = 0;
                goto LABEL_225;
              }
            }
          }

LABEL_114:
          v88 = v31;
          *buf = 0;
          applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(&v106, v91, @"Flags", buf);
          if (*buf)
          {
            CFRelease(*buf);
          }

          v46 = v130[0];
          v47 = v130[1];
          v89 = KB::CandidateFilterFlags::candidate_filter_flag_type(v130[0], v130[1]);
          v49 = v106;
          v93 = v106;
          if (!v106)
          {
            memset(buf, 0, sizeof(buf));
            if (v47 != v46)
            {
              std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](buf, (v47 - v46) >> 3);
            }

LABEL_179:
            v63 = KB::ns_string(v117, v48);
            Language = TIInputModeGetLanguage();
            KB::std_string(buf, Language);
            cf[0].n128_u64[0] = 0;
            applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const* const&>(&v105, v91, @"Languages", cf);
            if (cf[0].n128_u64[0])
            {
              CFRelease(cf[0].n128_u64[0]);
            }

            v65 = v105;
            if (v105)
            {
              v103 = 0uLL;
              v104 = 0;
              applesauce::CF::convert_or<std::vector<std::string>,0>(cf, v105, &v103);
              v112 = &v103;
              std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v112);
              if (cf[0].n128_u64[0] == cf[0].n128_u64[1] || vector_contains_string(cf[0].n128_i64[0], cf[0].n128_i64[1], buf))
              {
                v103.n128_u64[0] = cf;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v103);
                v66 = 1;
              }

              else
              {
                std::string::basic_string[abi:nn200100]<0>(&v103, "*");
                v66 = vector_contains_string(cf[0].n128_i64[0], cf[0].n128_i64[1], &v103);
                if (SHIBYTE(v104) < 0)
                {
                  operator delete(v103.n128_u64[0]);
                }

                v103.n128_u64[0] = cf;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v103);
              }

              CFRelease(v65);
            }

            else
            {
              v66 = 1;
            }

            v43 = v91;
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            if (v66)
            {
              Region = TIInputModeGetRegion();
              KB::std_string(buf, Region);
              cf[0].n128_u64[0] = 0;
              applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const* const&>(&v105, v91, @"Regions", cf);
              if (cf[0].n128_u64[0])
              {
                CFRelease(cf[0].n128_u64[0]);
              }

              v68 = v105;
              if (v105)
              {
                v103 = 0uLL;
                v104 = 0;
                applesauce::CF::convert_or<std::vector<std::string>,0>(cf, v105, &v103);
                v112 = &v103;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v112);
                if (cf[0].n128_u64[0] == cf[0].n128_u64[1] || vector_contains_string(cf[0].n128_i64[0], cf[0].n128_i64[1], buf))
                {
                  v103.n128_u64[0] = cf;
                  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v103);
                  v69 = 1;
                }

                else
                {
                  std::string::basic_string[abi:nn200100]<0>(&v103, "*");
                  v69 = vector_contains_string(cf[0].n128_i64[0], cf[0].n128_i64[1], &v103);
                  if (SHIBYTE(v104) < 0)
                  {
                    operator delete(v103.n128_u64[0]);
                  }

                  v103.n128_u64[0] = cf;
                  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v103);
                }

                CFRelease(v68);
              }

              else
              {
                v69 = 1;
              }

              v43 = v91;
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v69)
              {
                Variant = TIInputModeGetVariant();
                KB::std_string(buf, Variant);
                cf[0].n128_u64[0] = 0;
                applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const* const&>(&v105, v91, @"Variants", cf);
                if (cf[0].n128_u64[0])
                {
                  CFRelease(cf[0].n128_u64[0]);
                }

                if (v105)
                {
                  applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(&v103, &v105);
                  v73 = v103.n128_u64[0];
                  v103 = 0uLL;
                  v104 = 0;
                  applesauce::CF::convert_or<std::vector<std::string>,0>(cf, *v73, &v103);
                  v112 = &v103;
                  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v112);
                  if (cf[0].n128_u64[0] == cf[0].n128_u64[1] || vector_contains_string(cf[0].n128_i64[0], cf[0].n128_i64[1], buf))
                  {
                    v103.n128_u64[0] = cf;
                    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v103);
                    v74 = 1;
                  }

                  else
                  {
                    std::string::basic_string[abi:nn200100]<0>(&v103, "*");
                    v74 = vector_contains_string(cf[0].n128_i64[0], cf[0].n128_i64[1], &v103);
                    if (SHIBYTE(v104) < 0)
                    {
                      operator delete(v103.n128_u64[0]);
                    }

                    v103.n128_u64[0] = cf;
                    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v103);
                  }

                  if (v105)
                  {
                    CFRelease(v105);
                  }
                }

                else
                {
                  v74 = 1;
                }

                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                if (v74)
                {
                  v75 = filter_factory_log();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22CA55000, v75, OS_LOG_TYPE_INFO, "Found matching rule!", buf, 2u);
                  }

                  v76 = applesauce::CF::DictionaryRef::operator->(&v109);
                  cf[0].n128_u64[0] = 0;
                  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const* const&>(buf, *v76, @"FilterStack", cf);
                  v38 = *buf;
                  v110 = *buf;
                  if (cf[0].n128_u64[0])
                  {
                    CFRelease(cf[0].n128_u64[0]);
                  }

                  v43 = v91;
                  if (v38)
                  {
                    std::vector<applesauce::CF::ArrayRef>::emplace_back<applesauce::CF::ArrayRef const&>(&v95, &v110);
                    goto LABEL_221;
                  }

                  v77 = filter_factory_log();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    KB::utf8_string(buf, @"FilterStack");
                    v78 = *&buf[8];
                    if (!*&buf[8])
                    {
                      v78 = &buf[16];
                    }

                    v79 = "";
                    if (*buf)
                    {
                      v79 = v78;
                    }

                    cf[0].n128_u32[0] = 136315138;
                    *(cf[0].n128_u64 + 4) = v79;
                    _os_log_error_impl(&dword_22CA55000, v77, OS_LOG_TYPE_ERROR, "Filter specification rule is missing key '%s', or key value is not an array.", cf, 0xCu);
                    if (*&buf[8] && buf[6] == 1)
                    {
                      free(*&buf[8]);
                    }
                  }
                }

                v38 = 0;
                v43 = v91;
                goto LABEL_221;
              }
            }

            v38 = 0;
LABEL_221:

            v49 = v93;
            goto LABEL_222;
          }

          if (v46 == v47)
          {
            goto LABEL_179;
          }

          v50 = 1;
          do
          {
            if (*v46 == 1)
            {
              cf[0].n128_u64[0] = 0;
              applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(buf, v49, @"PostLMProcessing", cf);
              v51 = *buf;
              if (cf[0].n128_u64[0])
              {
                CFRelease(cf[0].n128_u64[0]);
              }

              if (v51)
              {
                v54 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v51);
                v55 = (v54 > 0xFFu) & v54;
                if (v50)
                {
LABEL_129:
                  v58 = *(v46 + 4) == v55;
                  v56 = (v89 == 2) & v55;
                  if (v58)
                  {
                    v50 = 1;
                  }

                  else
                  {
                    v50 = v56;
                  }

                  if (!v51)
                  {
                    goto LABEL_137;
                  }

LABEL_136:
                  CFRelease(v51);
                  goto LABEL_137;
                }
              }

              else
              {
                v55 = 0;
                if (v50)
                {
                  goto LABEL_129;
                }
              }

              v50 = 0;
              if (!v51)
              {
                goto LABEL_137;
              }

              goto LABEL_136;
            }

            if (*v46)
            {
              goto LABEL_138;
            }

            cf[0].n128_u64[0] = 0;
            applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(buf, v49, @"PreLMProcessing", cf);
            v51 = *buf;
            if (cf[0].n128_u64[0])
            {
              CFRelease(cf[0].n128_u64[0]);
            }

            if (v51)
            {
              v52 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const* const&>(v51);
              v53 = (v52 > 0xFFu) & v52;
            }

            else
            {
              v53 = 0;
            }

            v50 &= v53 == *(v46 + 4);
            if (v51)
            {
              goto LABEL_136;
            }

LABEL_137:
            v49 = v93;
LABEL_138:
            v46 = (v46 + 8);
          }

          while (v46 != v47);
          if (v50)
          {
            goto LABEL_179;
          }

          v38 = 0;
          v43 = v91;
LABEL_222:
          v31 = v88;
          if (v49)
          {
            CFRelease(v49);
          }

          v44 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
LABEL_225:
          if (v44 < 0)
          {
            v57 = v107.__r_.__value_.__r.__words[0];
LABEL_227:
            operator delete(v57);
          }

          *buf = &v139;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](buf);
          if (v43)
          {
LABEL_229:
            CFRelease(v43);
          }

LABEL_230:
          if (v109)
          {
            CFRelease(v109);
          }

          if (v38)
          {
            CFRelease(v38);
            v31 = theArray;
          }

          ++v32;
          if (!v31)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(exception);
          }
        }

        buf[0] = 0;
        v142 = 0;
LABEL_82:
        v139 = v107;
        memset(&v107, 0, sizeof(v107));
        goto LABEL_83;
      }

      v80 = filter_factory_log();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v82 = "Specification is missing the payload";
        v83 = v80;
        v84 = 2;
LABEL_278:
        _os_log_error_impl(&dword_22CA55000, v83, OS_LOG_TYPE_ERROR, v82, buf, v84);
        goto LABEL_262;
      }

      goto LABEL_262;
    }

LABEL_261:
    v80 = filter_factory_log();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v85 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v85 = v140.__r_.__value_.__r.__words[0];
      }

      v86 = &__s1;
      if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v86 = __s1.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v85;
      *&buf[12] = 2080;
      *&buf[14] = v86;
      v82 = "Unrecognized payload version '%s' for payload type '%s'.";
      v83 = v80;
      v84 = 22;
      goto LABEL_278;
    }

LABEL_262:

    v95 = 0;
    v96 = 0;
    v97 = 0;
    goto LABEL_263;
  }

  if (v137 && v136[6] == 1)
  {
    free(v137);
  }
}

void TIInputManager::candidate_filter_cache_key(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0x100000;
  *(a4 + 4) = 0;
  *(a4 + 6) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  memset(&v11, 0, sizeof(v11));
  v7 = *a3;
  v8 = a3[1];
  if (*a3 == v8)
  {
    v10 = &v11;
  }

  else
  {
    do
    {
      if (*(v7 + 4))
      {
        v9 = "1";
      }

      else
      {
        v9 = "0";
      }

      std::string::append(&v11, v9, 1uLL);
      v7 += 8;
    }

    while (v7 != v8);
    v10 = &v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v11.__r_.__value_.__r.__words[0];
    }
  }

  KB::String::append_format(a4, "lut:%d osl:%d cff:%s", a1, a2, v10);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

uint64_t *TIInputManager::candidate_filter_for_key@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const KB::String *a3@<X1>)
{
  v4 = this[89];
  if (v4)
  {
    v6 = this;
    v7 = this + 89;
    if (*(a3 + 1))
    {
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = a3 + 16;
    }

    v9 = this + 89;
    do
    {
      if (*(v4 + 40))
      {
        v10 = *(v4 + 40);
      }

      else
      {
        v10 = (v4 + 48);
      }

      this = strcmp(v10, v8);
      if (this >= 0)
      {
        v9 = v4;
      }

      v4 = *(v4 + ((this >> 28) & 8));
    }

    while (v4);
    if (v7 != v9)
    {
      if (v9[5])
      {
        v11 = v9[5];
      }

      else
      {
        v11 = (v9 + 6);
      }

      this = strcmp(v8, v11);
      if ((this & 0x80000000) == 0)
      {
        KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::operator[]((v6 + 85), a3);
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return this;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,void *>>>::destroy[abi:nn200100]<std::pair<KB::String const,std::unique_ptr<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node,std::default_delete<KB::LRUCache<KB::String,std::shared_ptr<KB::CandidateFilter>>::Node>>>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4 && *(v2 + 6) == 1)
    {
      free(v4);
    }

    MEMORY[0x2318BE270](v2, 0x1030C4086F4D270);
  }

  v5 = *(a1 + 8);
  if (v5 && *(a1 + 6) == 1)
  {

    free(v5);
  }
}

BOOL TIInputManager::should_accept_candidate_for_mixed_case_input(uint64_t a1, void *a2, _LXLexicon *a3, const char *a4, unsigned int **a5, int a6)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v11 = *a5;
  v12 = a5[1];
  v13 = v12 - *a5;
  if (v12 == *a5)
  {
    v19 = 1;
  }

  else
  {
    v14 = 0;
    v15 = v13 >> 2;
    v16 = 1;
    do
    {
      v17 = *v11;
      v11 += 4;
      v14 += v17 & ~(v17 >> 1) & 1;
    }

    while (v15 > v16++);
    v19 = v14 < 2;
  }

  if (*(a4 + 1))
  {
    v20 = *(a4 + 1);
  }

  else
  {
    v20 = a4 + 16;
  }

  *&v40 = v20;
  v21 = *a4;
  DWORD2(v40) = 0;
  HIDWORD(v40) = v21;
  LODWORD(v41) = 0;
  KB::String::iterator::initialize(&v40);
  v36 = v20;
  v37 = v21;
  v38 = v21;
  v39 = 0;
  KB::String::iterator::initialize(&v36);
  *v42 = v40;
  v43[0] = v41;
  v23 = v37;
  if (DWORD2(v40) != v37)
  {
    v24 = MEMORY[0x277D85DE0];
    do
    {
      if ((v43[0] & 0x80) != 0)
      {
        if (!__maskrune(SLOBYTE(v43[0]), 0x100uLL))
        {
          goto LABEL_18;
        }
      }

      else if ((*(v24 + 4 * SLOBYTE(v43[0]) + 60) & 0x100) == 0)
      {
        goto LABEL_18;
      }

      KB::String::iterator::operator++(v42);
    }

    while (LODWORD(v42[1]) != v23);
  }

  if (v19 & a6)
  {
    return 1;
  }

LABEL_18:
  if (*a2)
  {
    v26 = 240 * *a2 - 240;
    v27 = (a2[1] + 224);
    do
    {
      v29 = *v27;
      v27 += 30;
      v28 = v29;
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = v26 == 0;
      }

      v26 -= 240;
    }

    while (!v30);
    if (v28)
    {
      return KB::CollatorWrapper::sortkey_compare_strings((*(*(a1 + 264) + 8) + 72), a3, a4, v22) == 0;
    }
  }

  KB::Word::capitalized_string(v42, a3);
  v31 = *a4;
  v32 = v42[1];
  if (v31 > LOWORD(v42[0]))
  {
    v25 = 0;
    if (!v42[1])
    {
      return v25;
    }

    goto LABEL_37;
  }

  if (v42[1])
  {
    v33 = v42[1];
  }

  else
  {
    v33 = v43;
  }

  if (*(a4 + 1))
  {
    v34 = *(a4 + 1);
  }

  else
  {
    v34 = a4 + 16;
  }

  v25 = strncmp(v33, v34, v31) == 0;
  if (v32)
  {
LABEL_37:
    if (BYTE6(v42[0]) == 1)
    {
      free(v32);
    }
  }

  return v25;
}

void TIInputManager::inline_completion_candidates(void *aBlock@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, const KB::String *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = _Block_copy(aBlock);
  v28[0] = v11;
  v28[1] = a2;
  if (*(a2 + 728) == 1)
  {
    v19 = 0;
    memset(v17, 0, sizeof(v17));
    memset(v18, 0, sizeof(v18));
    bzero(&v30, 0x3E8uLL);
    KB::Candidate::Candidate(&v30);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    *__p = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v25);
    language_modeling::v1::LinguisticContext::LinguisticContext((&v25 + 8));
    v26 = 0uLL;
    v27 = 0;
    TIInputManager::inline_completion_candidates(KB::LanguageModelContext const&,KB::String const&,BOOL,void({block_pointer})(KB::CandidateCollection const&,KB::String const&,BOOL))const::$_0::operator()(v28, v17, &v30, &v21, 0);
  }

  v12 = *(a2 + 224);
  v29[0] = &unk_283FD9100;
  v29[1] = v11;
  v29[2] = a2;
  v29[3] = v29;
  (*(*v12 + 80))(v17, v12, a4, a3, a5, v29);
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100](v29);
  if (v20)
  {
    KB::CandidateCollection::CandidateCollection(&v30, v17);
    KB::String::String(v39, a4);
    *a6 = v30;
    v13 = v33;
    *(a6 + 16) = v31;
    v30 = 0uLL;
    *(a6 + 24) = v32;
    *(a6 + 40) = v13;
    v31 = 0;
    v32 = 0uLL;
    v33 = 0;
    *(a6 + 48) = v34;
    v14 = v37;
    *(a6 + 64) = v35;
    v34 = 0uLL;
    *(a6 + 72) = v36;
    *(a6 + 88) = v14;
    v35 = 0;
    v36 = 0uLL;
    v37 = 0;
    v15 = v38;
    *(a6 + 104) = 0x100000;
    v16 = a6 + 104;
    *(v16 - 8) = v15;
    *(v16 + 4) = 0;
    *(v16 + 6) = 0;
    *(v16 + 8) = 0;
    KB::String::operator=(v16, v39);
    *(v16 + 32) = 1;
    if (v40 && v39[6] == 1)
    {
      free(v40);
    }

    *&v21 = &v36;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v21);
    *&v21 = &v34;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v21);
    *&v21 = &v32;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v21);
    *&v21 = &v30;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v21);
    if (v20)
    {
      *&v30 = &v18[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v30);
      *&v30 = v18;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v30);
      *&v30 = &v17[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v30);
      *&v30 = v17;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v30);
    }
  }

  else
  {
    *a6 = 0;
    *(a6 + 136) = 0;
  }
}

void TIInputManager::inline_completion_candidates(KB::LanguageModelContext const&,KB::String const&,BOOL,void({block_pointer})(KB::CandidateCollection const&,KB::String const&,BOOL))const::$_0::operator()(uint64_t a1, const KB::Candidate **a2, uint64_t a3, const KB::LanguageModelContext *a4, int a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  if (*(v8 + 76))
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  KB::CandidateCollection::CandidateCollection(v10, a2);
  if (!*(a3 + 888))
  {
    KB::Candidate::compute_string(a3);
  }

  TIInputManager::apply_policy_decisions_inline_completions(v8, a2, (a3 + 888), a4, Mutable);
}

uint64_t std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

KB::CandidateCollection *KB::CandidateCollection::CandidateCollection(KB::CandidateCollection *this, const KB::Candidate **a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(this, *a2, a2[1], 0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(this + 3, a2[3], a2[4], 0x1CAC083126E978D5 * ((a2[4] - a2[3]) >> 3));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(this + 6, a2[6], a2[7], 0x1CAC083126E978D5 * ((a2[7] - a2[6]) >> 3));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(this + 9, a2[9], a2[10], 0x1CAC083126E978D5 * ((a2[10] - a2[9]) >> 3));
  *(this + 12) = a2[12];
  return this;
}

__n128 std::__function::__func<TIInputManager::inline_completion_candidates(KB::LanguageModelContext const&,KB::String const&,BOOL,void({block_pointer})(KB::CandidateCollection const&,KB::String const&,BOOL))::$_0,std::allocator<TIInputManager::inline_completion_candidates(KB::LanguageModelContext const&,KB::String const&,BOOL,void({block_pointer})(KB::CandidateCollection const&,KB::String const&,BOOL))::$_0>,void ()(KB::CandidateCollection&,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FD9100;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void TIInputManager::apply_policy_decisions_inline_completions(TIInputManager *this, KB::CandidateCollection *a2, const KB::String *a3, const KB::LanguageModelContext *a4, __CFString *a5)
{
  MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  __p[1179] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  KB::CandidateFilterFlags::CandidateFilterFlags(__p, v5);
}

void KB::CandidateFilterLookupContext::~CandidateFilterLookupContext(KB::CandidateFilterLookupContext *this)
{
  KB::Candidate::~Candidate((this + 2168));
  v2 = *(this + 268);
  if (v2 && *(this + 2142) == 1)
  {
    free(v2);
  }

  v6 = (this + 2112);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v6);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 2104));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 2096));
  v3 = *(this + 256);
  if (v3)
  {
    *(this + 257) = v3;
    operator delete(v3);
  }

  v4 = *(this + 255);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 251);
  if (v5)
  {
    *(this + 252) = v5;
    operator delete(v5);
  }

  if (*(this + 2000) == 1)
  {
    KB::Candidate::~Candidate((this + 1000));
  }

  KB::Candidate::~Candidate(this);
}

void TIInputManager::lookup(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (a2 != 5)
  {
    if (*(a1 + 68) || (KB::String::compute_length((a1 + 64)), *(a1 + 68)))
    {
      TIInputManager::legacy_input_stem(&v16, a1);
      if (WORD2(v16) || (KB::String::compute_length(&v16), WORD2(v16)))
      {
        if (v16 <= *(a1 + 64))
        {
          v10 = *(a1 + 72) ? *(a1 + 72) : (a1 + 80);
          v11 = (v17 ? v17 : v18);
          if (!strncasecmp(v10, v11, v16))
          {
            v12 = *(a1 + 96);
            if (*(a1 + 216) > v12)
            {
              v12 = *(a1 + 216);
            }

            *(a1 + 216) = v12;
          }
        }
      }

      if (v17 && BYTE6(v16) == 1)
      {
        free(v17);
      }
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = ___ZN14TIInputManager6lookupEN2KB10LookupTypeEj14TIShiftContext_block_invoke;
  v13[3] = &__block_descriptor_tmp_7_5139;
  v13[4] = a1;
  v14 = a2;
  v15 = a4;
  TIInputManager::perform_lookup(a1, a2, a3, v13, a5);
}

KB::String *TIInputManager::legacy_input_stem@<X0>(uint64_t *__return_ptr a1@<X8>, TIInputManager *this@<X0>)
{
  v2 = *(this + 24);
  v3 = v2 + 1;
  v4 = 40 * v2 - 8;
  do
  {
    if (!--v3)
    {
      break;
    }

    v5 = *(*(this + 1) + v4);
    v4 -= 40;
  }

  while ((v5 & 0x40) == 0);
  return TIInputManager::input_substring((this + 8), v3, v2 - v3, a1);
}

void ___ZN14TIInputManager6lookupEN2KB10LookupTypeEj14TIShiftContext_block_invoke(uint64_t a1, KB::CandidateCollection *a2, __CFString *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v7 - v6) >> 3));
  v9 = *(a1 + 32);
  if (v7 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(v6, v7, v10, 1);
  TIInputManager::inject_supplemental_candidate(v9, *(a1 + 40), a2);
  if (v11)
  {
    v12 = *(a2 + 1);
    v13 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v12 - *a2) >> 3));
    if (v12 == *a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(*a2, v12, v14, 1);
  }

  TIInputManager::apply_case_insensitive_constraints(v9, a2, *(a1 + 40), a3);
  TIInputManager::apply_case_changes(v9, a2, (v9 + 8), *(v9 + 96), *(a1 + 44), a3);
  v15 = TIInputManager::input_substring((v9 + 8), 0, *(v9 + 96), v19);
  TIInputManager::apply_apostrophe_changes(v15, a2, v19, a3);
  if (v21 && v20 == 1)
  {
    free(v21);
  }

  TIInputManager::input_substring((v9 + 8), 0, *(v9 + 96), v19);
  TIInputManager::apply_shortcut_conversions(v9, a2, v16, a3, v17);
  if (v21 && v20 == 1)
  {
    free(v21);
  }

  v18 = *(v9 + 584);
  if (v18)
  {
    v18 = (*(*v18 + 64))(v18, a2);
  }

  if (*(a1 + 40) == 5)
  {
    TIInputManager::remove_text_replacement_from_top(v18, a2);
  }
}

void TIInputManager::perform_lookup(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v36 = *MEMORY[0x277D85DE8];
  HIDWORD(v19) = 0;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), &v34);
  (*(*a1 + 64))(&v32, a1, &v34);
  v27 = 0x100000;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v22 = 0x100000;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a2 == 3 || a2 == 5 || TIInputManager::should_generate_candidates(a1, (a1 + 440), &v32, a2 | 0x100000000))
  {
    if (KB::SetOnlySearchSupplementalLexiconForScope::s_shouldOnlySearchSupplementalLexicon == 1)
    {
      TIInputManager::input_substring((a1 + 8), 0, -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3), &v20);
      KB::String::operator=(&v27, &v20);
      if (v21 && BYTE6(v20) == 1)
      {
        free(v21);
      }

      (*(*a1 + 64))(&v20, a1, &v27);
      KB::String::operator=(&v22, &v20);
      if (v21 && BYTE6(v20) == 1)
      {
        free(v21);
      }

      if (!a2 && (*(a1 + 728) & 1) == 0 && !*(a1 + 32))
      {
        if (v32)
        {
          TIInputManager::lookup_revision_candidates(a1, &v15, 0, a4, v6, &v32);
        }
      }

      (*(**(a1 + 224) + 144))(*(a1 + 224), a1 + 472, &v22, *(a1 + 96), -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
      TIInputManager::lookup_static_dynamic_candidates(a1, &v15, a2, &v22, a4, v6);
    }

    KB::String::operator=(&v22, &v32);
    KB::String::operator=(&v27, &v34);
    if (*(a1 + 734) != 1 || !TIInputManager::lookup_spellcheck_candidates(a1, &v15, a2, &v32, a4))
    {
      if (!a2 || a2 == 5)
      {
        goto LABEL_18;
      }

      if (*(a1 + 728))
      {
        if (!v22)
        {
          goto LABEL_18;
        }

LABEL_47:
        TIInputManager::lookup_revision_candidates(a1, &v15, a2, a4, v6, &v22);
      }

      if (!*(a1 + 32))
      {
        goto LABEL_18;
      }

      TIInputManager::input_substring((a1 + 8), 0, -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3), &v20);
      if ((a1 + 32) == &v20 || KB::String::equal((a1 + 32), &v20, 1, v12, v13))
      {
        v14 = v22;
        if (v21 && BYTE6(v20) == 1)
        {
          free(v21);
        }

        if (v14)
        {
          goto LABEL_47;
        }
      }

      else if (v21 && BYTE6(v20) == 1)
      {
        free(v21);
      }

LABEL_18:
      (*(**(a1 + 224) + 144))(*(a1 + 224), a1 + 472, &v22, *(a1 + 96), -858993459 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
      TIInputManager::lookup_static_dynamic_candidates(a1, &v15, a2, &v22, a4, v6);
    }
  }

  if (a2 == 5)
  {
    TI::ConfidenceModel::update_confidence_for_candidates((a1 + 144), &v15);
  }

  *a5 = v15;
  *(a5 + 16) = *&v16[0];
  v15 = 0uLL;
  *(a5 + 24) = *(v16 + 8);
  *(a5 + 40) = *(&v16[1] + 1);
  memset(v16, 0, sizeof(v16));
  *(a5 + 48) = v17;
  *(a5 + 64) = *&v18[0];
  v17 = 0uLL;
  *(a5 + 72) = *(v18 + 8);
  v10 = v19;
  *(a5 + 88) = *(&v18[1] + 1);
  memset(v18, 0, sizeof(v18));
  *(a5 + 104) = 0x100000;
  v11 = a5 + 104;
  *(v11 - 8) = v10;
  *(v11 + 4) = 0;
  *(v11 + 6) = 0;
  *(v11 + 8) = 0;
  KB::String::operator=(v11, &v27);
  if (v25 && v24 == 1)
  {
    free(v25);
  }

  if (v30 && v29 == 1)
  {
    free(v30);
  }

  if (v33 && BYTE6(v32) == 1)
  {
    free(v33);
  }

  if (v35 && BYTE6(v34) == 1)
  {
    free(v35);
  }

  v34 = v18 + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = &v17;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = v16 + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = &v15;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
}

BOOL TIInputManager::should_generate_candidates(uint64_t a1, KB::String *a2, KB::String *this, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (**(*(a1 + 264) + 8) == *(*(*(a1 + 264) + 8) + 8) && !TITransientLexiconManagerGetActiveSupplementalLexiconWords())
  {
    return 0;
  }

  if (!*(a1 + 576))
  {
    v14 = KB::String::String(&v39, a2);
    KB::String::append(v14, this);
    v35 = 0;
    v36 = 0;
    v37 = "!@#$%^*_[]/\\|.?+=<>";
    v34 = 1048595;
    BYTE1(v38) = 0;
    KB::String::find_last_of(&v32, &v39, &v34);
    v15 = v39;
    v16 = v42;
    v17 = v43;
    if (v42)
    {
      v18 = v42;
    }

    else
    {
      v18 = v43;
    }

    *&v30 = v18;
    DWORD2(v30) = v39;
    HIDWORD(v30) = v39;
    c[0] = 0;
    KB::String::iterator::initialize(&v30);
    if (DWORD2(v32) == DWORD2(v30))
    {
      goto LABEL_23;
    }

    v30 = v32;
    *c = v33;
    KB::String::iterator::operator++(&v30);
    *&v28 = v18;
    DWORD2(v28) = v15;
    HIDWORD(v28) = v15;
    LODWORD(v29) = 0;
    KB::String::iterator::initialize(&v28);
    v23 = DWORD2(v30);
    v24 = DWORD2(v28);
    if (DWORD2(v30) != DWORD2(v28))
    {
      while (!u_isspace(c[0]))
      {
        KB::String::iterator::operator++(&v30);
        if (DWORD2(v30) == v24)
        {
          v23 = v24;
          goto LABEL_52;
        }
      }

      v23 = DWORD2(v30);
    }

LABEL_52:
    v25 = v39;
    v16 = v42;
    if (v42)
    {
      v17 = v42;
    }

    *&v30 = v17;
    DWORD2(v30) = v39;
    HIDWORD(v30) = v39;
    c[0] = 0;
    KB::String::iterator::initialize(&v30);
    if (v23 == DWORD2(v30))
    {
      v26 = DWORD2(v32);
    }

    else
    {
      v26 = DWORD2(v32);
      if (v23 >= SDWORD2(v32))
      {
LABEL_23:
        if (v37 && v36 == 1)
        {
          free(v37);
          v16 = v42;
        }

        if (v16 && v41 == 1)
        {
          free(v16);
        }

        goto LABEL_4;
      }
    }

    *&v30 = v17;
    DWORD2(v30) = 0;
    HIDWORD(v30) = v25;
    c[0] = 0;
    KB::String::iterator::initialize(&v30);
    if (v26 == DWORD2(v30) || v33 != 46 && (v28 = v32, v29 = v33, KB::String::iterator::operator--(&v28), v29 != 46))
    {
      if (v37 && v36 == 1)
      {
        free(v37);
        v16 = v42;
      }

      if (!v16 || v41 != 1)
      {
        return 0;
      }

      v13 = v16;
LABEL_64:
      free(v13);
      return 0;
    }

    goto LABEL_23;
  }

LABEL_4:
  if (*this)
  {
    v40 = 0;
    v41 = 0;
    v42 = ".,ªº-";
    v39 = 1048583;
    v43[1] = 0;
    v8 = KB::String::last(this);
    KB::String::String(&v34, v8);
    if ((a4 & 0x1FFFFFFFFLL) != 0x100000001)
    {
      goto LABEL_72;
    }

    v9 = v37;
    v10 = &v38;
    if (v37)
    {
      v10 = v37;
    }

    if (*v10 != 45)
    {
      goto LABEL_72;
    }

    v11 = &v38 + 1;
    if (v37)
    {
      v11 = v37 + 1;
    }

    if (*v11)
    {
LABEL_72:
      v12 = KB::String::contains(&v39, &v34);
      v9 = v37;
      if (v12)
      {
        if (v37 && v36 == 1)
        {
          free(v37);
        }

        v13 = v42;
        if (!v42 || v41 != 1)
        {
          return 0;
        }

        goto LABEL_64;
      }
    }

    if (v9 && v36 == 1)
    {
      free(v9);
    }

    if (v42 && v41 == 1)
    {
      free(v42);
    }
  }

  if (*(a1 + 104))
  {
    if (*(a1 + 112))
    {
      v19 = *(a1 + 112);
    }

    else
    {
      v19 = (a1 + 120);
    }
  }

  else
  {
    v19 = "";
  }

  KB::string_to_lowercase(&v39, this, v19);
  v20 = repeating_character_threshold(*(a1 + 136));
  v22 = (KB::string_contains_run(&v39, v20) & 1) == 0 && (v21 = repeating_character_threshold(*(a1 + 136)), (KB::string_contains_pair_run(&v39, v21) & 1) == 0) && !KB::string_contains_terminal_run(&v39, 3);
  if (v42 && v41 == 1)
  {
    free(v42);
  }

  return v22;
}

void TIInputManager::lookup_revision_candidates(const KB::String **a1, uint64_t *a2, unsigned int a3, uint64_t a4, unsigned int a5, const KB::String *a6)
{
  v9 = *a2;
    ;
  }

  a2[1] = v9;
  TIInputManager::create_autocorrection_engine_with_synthetic_typing(a1);
}

void TIInputManager::lookup_static_dynamic_candidates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v24 = a5;
  v28 = 0x100000;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v23 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(a1 + 272);
  if (!v7 || !(*(*v7 + 16))(v7))
  {
LABEL_22:
    TIInputManager::input_substring((a1 + 8), 0, *(a1 + 96), v26);
    operator new();
  }

  (*(**(a1 + 272) + 176))(&v15);
  v8 = v15;
  v9 = v16;
  if (v15 == v16)
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v10 = MEMORY[0x2318BC170](*v8);
    KB::std_string(v26, v10);
    if (v27 < 0)
    {
      if (v26[1] == 6)
      {
        v11 = v26[0];
LABEL_9:
        v12 = *v11;
        v13 = *(v11 + 2);
        if (v12 == 1600943469 && v13 == 20041)
        {
          goto LABEL_14;
        }
      }
    }

    else if (v27 == 6)
    {
      v11 = v26;
      goto LABEL_9;
    }

    std::string::starts_with[abi:nn200100](v26, "vi_", 3uLL);
LABEL_14:
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (++v8 == v9)
    {
      v8 = v15;
      if (!v15)
      {
        goto LABEL_22;
      }

LABEL_21:
      v16 = v8;
      operator delete(v8);
      goto LABEL_22;
    }
  }
}

BOOL TIInputManager::lookup_spellcheck_candidates(uint64_t a1, const KB::Candidate **a2, uint64_t a3, const KB::String *a4, uint64_t a5)
{
  v38[125] = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    v8 = a3;
    KB::Candidate::Candidate(v38, a4, 0);
    if (!v38[0])
    {
      v5 = 0;
LABEL_22:
      KB::Candidate::~Candidate(v38);
      return v5;
    }

    KB::String::String(v36, (v38[1] + 240 * v38[0] - 240));
    if ((*(a1 + 733) & 1) != 0 || *(a1 + 729) == 1 && (*(**(*(a1 + 264) + 24) + 64))(*(*(a1 + 264) + 24), v36, 0xFFFFFFFFLL) > 2 || !TIInputManager::does_need_spell_check(a1, v36))
    {
      v5 = 0;
LABEL_18:
      if (v37 && v36[6] == 1)
      {
        free(v37);
      }

      goto LABEL_22;
    }

    if (!TIInputManager::is_autoshift(a1))
    {
      goto LABEL_16;
    }

    TIInputManager::input_flags_vector(a1, &v30);
    if (v30.__end_ == v30.__begin_)
    {
      if (v30.__end_)
      {
        operator delete(v30.__begin_);
      }
    }

    else
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = v30.__begin_[v14] & 0x13;
        v14 = v15++;
      }

      while (v16 != 1 && v30.__end_ - v30.__begin_ > v14);
      operator delete(v30.__begin_);
      if (v16 == 1)
      {
LABEL_16:
        KB::spellcheck_candidates(&v30, a4, (a1 + 104));
        KB::CandidateCollection::operator=(a2, &v30);
        v34 = v33;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
        v34 = v32;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
        v34 = v31;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
        v34 = &v30;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
LABEL_29:
        KB::CandidateCollection::CandidateCollection(&v30, a2);
        if (*(a1 + 608))
        {
          Mutable = CFStringCreateMutable(0, 0);
          CFStringAppend(Mutable, @"Skipped candidate quality filters for spellchecking candidates.\n");
        }

        else
        {
          Mutable = 0;
        }

        TIInputManager::filter_spellcheck_candidates(a1, a2, a4);
        (*(a5 + 16))(a5, a2, Mutable);
        if (*(a1 + 608))
        {
          (*(**(a1 + 224) + 488))(&cf);
          memset(v27, 0, sizeof(v27));
          KB::CandidateFilterFlags::CandidateFilterFlags(&__p, v27);
        }

        v22 = *a2;
        v23 = a2[1];
        v5 = *a2 != v23;
        if (!v8 && *a2 != v23)
        {
          v24 = (v22 + 888);
          if (!*(v22 + 444))
          {
            KB::Candidate::compute_string(v22);
          }

          if (v24 == a4 || KB::String::equal(v24, a4, 1, v20, v21))
          {
            v26 = *a2;
              ;
            }

            a2[1] = v26;
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v34 = v33;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
        v34 = v32;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
        v34 = v31;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
        v34 = &v30;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
        goto LABEL_18;
      }
    }

    KB::lower_string(&v34, a4, *(a1 + 136), v11, v12, v13);
    KB::spellcheck_candidates(&v30, &v34, (a1 + 104));
    KB::CandidateCollection::operator=(a2, &v30);
    __p = v33;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&__p);
    __p = v32;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&__p);
    __p = v31;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&__p);
    __p = &v30;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&__p);
    if (v35 && BYTE6(v34) == 1)
    {
      free(v35);
    }

    goto LABEL_29;
  }

  return 0;
}

uint64_t TIInputManager::does_need_spell_check(KB::DictionaryContainer **this, const KB::String *a2)
{
  v4 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    KB::String::compute_length(a2);
    v4 = *(a2 + 2);
  }

  if (v4 < 3)
  {
    return 0;
  }

  KB::DictionaryContainer::lookup(&v9, this[33], a2);
  v6 = this[73];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v9 == v10;
  }

  v5 = v7;
  if (v6 && v9 == v10)
  {
    v5 = (*(*v6 + 24))(v6, a2);
  }

  v11 = &v9;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v11);
  return v5;
}