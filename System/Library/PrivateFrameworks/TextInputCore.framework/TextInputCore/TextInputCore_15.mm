void std::vector<std::shared_ptr<TI::CP::SearchNode const>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void *TI::CP::Search::compute_keys_near_sample(void *this, unsigned int a2)
{
  v3 = this[47];
  v2 = this[48];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  if (v4 <= a2)
  {
    v6 = this;
    v7 = this[49];
    if (v2 >= v7)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
      if (2 * v9 <= v4 + 1)
      {
        v10 = v4 + 1;
      }

      else
      {
        v10 = 2 * v9;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      v29 = v6 + 47;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v11);
    }

    *v2 = 0;
    v2[1] = 0;
    v8 = v2 + 3;
    v2[2] = 0;
    this[48] = v2 + 3;
    v28 = *(this[7] + 48 * a2);
    v12 = this[1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v22 = ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke;
    v23 = &__block_descriptor_tmp_18831;
    v24 = this;
    v27 = a2;
    v25 = v28;
    v26 = v2;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    while (v13 != v14)
    {
      v22(v21, v13++);
    }

    v15 = *(v8 - 3);
    v16 = *(v8 - 2);
    v17 = 126 - 2 * __clz((v16 - v15) >> 3);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke_2;
    v19[3] = &__block_descriptor_tmp_2_18832;
    v19[4] = v6;
    v20 = a2;
    v30 = v19;
    if (v16 == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    return std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*,false>(v15, v16, &v30, v18, 1);
  }

  return this;
}

void TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_downheapify(uint64_t *a1, unsigned int a2)
{
  v2 = (2 * a2) | 1;
  v3 = *a1;
  v4 = (a1[1] - *a1) >> 4;
  if (v2 < v4)
  {
    v6 = 2 * a2;
    while (1)
    {
      v7 = (v6 + 2);
      v8 = a2;
      v9 = 16 * a2;
      v10 = (*(**(v3 + 16 * v2) + 56))(*(v3 + 16 * v2));
      v11 = (*(**(v3 + v9) + 56))(*(v3 + v9));
      v12 = v11;
      if (v7 >= v4)
      {
        if (v10 <= v11)
        {
          return;
        }

        v20 = (*a1 + 16 * v8);
        v17 = (*a1 + 16 * v2);
        v21 = *v20;
        *v20 = *v17;
        v19 = v20 + 1;
        *v17 = v21;
        goto LABEL_13;
      }

      v13 = *a1;
      v14 = *(*a1 + 16 * v7);
      v15 = (*(*v14 + 56))(v14);
      if (v10 <= v12)
      {
        break;
      }

      v22 = (*(**(v13 + 16 * v2) + 56))(*(v13 + 16 * v2));
      v23 = *a1;
      v24 = (*a1 + 16 * v8);
      v19 = v24 + 1;
      v25 = *v24;
      if (v15 > v22)
      {
        v17 = (v23 + 16 * v7);
        *v24 = *v17;
        *v17 = v25;
LABEL_12:
        v2 = v7;
        goto LABEL_13;
      }

      v17 = (v23 + 16 * v2);
      *v24 = *v17;
      *v17 = v25;
LABEL_13:
      a2 = v2;
      v26 = *v19;
      *v19 = v17[1];
      v17[1] = v26;
      v6 = 2 * v2;
      v2 = (2 * v2) | 1;
      v3 = *a1;
      v4 = (a1[1] - *a1) >> 4;
      if (v2 >= v4)
      {
        return;
      }
    }

    if (v15 <= (*(**(v13 + 16 * v8) + 56))(*(v13 + 16 * v8)))
    {
      return;
    }

    v16 = (*a1 + 16 * v8);
    v17 = (*a1 + 16 * v7);
    v18 = *v16;
    *v16 = *v17;
    v19 = v16 + 1;
    *v17 = v18;
    goto LABEL_12;
  }
}

void TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::push<std::shared_ptr<TI::CP::SearchNodeKeyMatch>>(void **a1, __int128 *a2, int a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *a2;
  *a2 = 0uLL;
  std::vector<std::shared_ptr<TI::CP::SearchNodeSource>>::push_back[abi:nn200100](a1, &v7);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
  }

  if (a3)
  {

    TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_upheapify(a1, (v5 - v6) >> 4);
  }
}

uint64_t TI::CP::SearchNode::has_extensions(TI::CP::SearchNode *this)
{
  if ((*(*this + 128))(this) & 1) != 0 || ((*(*this + 88))(this))
  {
    return 0;
  }

  if ((*(*this + 104))(this))
  {
    if ((*(*(this + 7) + 60) & 0x30) != 0 && (*(*(this + 7) + 60) & 8) == 0)
    {
      return 0;
    }
  }

  if ((*(*this + 72))(this))
  {
    return 1;
  }

  v4 = *(**(this + 8) + 160);

  return v4();
}

void std::vector<std::shared_ptr<TI::CP::SearchNodeSource>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0uLL;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = (16 * v6 - v13);
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 16;
    *a2 = 0uLL;
  }

  a1[1] = v5;
}

void TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_upheapify(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = v2 - 1;
      v5 = (v2 - 1) >> 1;
      v6 = *a1;
      v7 = *(*a1 + 16 * v2);
      v8 = (*(*v7 + 56))(v7);
      if (v8 <= (*(**(v6 + 16 * v5) + 56))(*(v6 + 16 * v5)))
      {
        break;
      }

      v9 = *a1;
      v10 = *(*a1 + 16 * v5);
      *(*a1 + 16 * v5) = *(*a1 + 16 * v2);
      *(v9 + 16 * v2) = v10;
      v2 = v4 >> 1;
    }

    while (v4 > 1);
  }
}

long double TI::CP::Search::key_substitution_cost(TI::CP::Search *this, unsigned int a2)
{
  v3 = *(this + 62);
  v4 = *(this + 58);
  if (a2)
  {
    if (TI::CP::Path::inflection_point_count((this + 56), a2, a2))
    {
      v5 = 488;
    }

    else
    {
      v5 = 472;
    }
  }

  else
  {
    v5 = 480;
  }

  return -(pow(v3, v4) * *(this + v5)) * *(this + 54);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<TI::CP::SearchNode const>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeLoop>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeKeyPredictionExtensions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDFA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeOvershoot>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDF68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeSkippedKey>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeForward>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDEF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeGeometryExtensions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDEC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeLanguageExtensions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDE88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::__split_buffer<std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke(uint64_t a1, atomic_uint **a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 30);
  if ((v2 & 0x20) == 0 && (v2 & 0x18) != 0x10)
  {
    v5 = *(a1 + 32);
    if ((((*a2)[15] & 0xB81) == 0 || ((*a2)[15] & 0x100) != 0 && !*(a1 + 64)) && hypot(*(*a2 + 12) - *(a1 + 40), *(*a2 + 13) - *(a1 + 48)) * *(v5 + 320) <= *(v5 + 496))
    {
      std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100](*(a1 + 56), a2);
      if (TI::Favonius::KeyboardLayout::is_indic_alphabetic(*(v5 + 8)))
      {
        KB::String::String(v15, (*a2 + 2));
        KB::String::String(v13, v15);
        TI::IndicUtils::convertVowel(v12, v13);
        if (v14 && v13[6] == 1)
        {
          free(v14);
        }

        for (i = 0; i != 96; i += 32)
        {
          if (!*&v12[i + 4])
          {
            KB::String::compute_length(&v12[i]);
            if (!*&v12[i + 4])
            {
              continue;
            }
          }

          if (!KB::String::equal(&v12[i], v15, 1, v6, v7))
          {
            if (*(*a2 + 20) >= 0xFuLL)
            {
              operator new[]();
            }

            operator new();
          }
        }

        for (j = 0; j != -96; j -= 32)
        {
          v10 = *&v12[j + 72];
          if (v10 && v12[j + 70] == 1)
          {
            free(v10);
          }
        }

        if (v16)
        {
          v11 = v15[6] == 1;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          free(v16);
        }
      }
    }
  }
}

BOOL ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke_2(uint64_t a1, CGRect **a2, CGRect **a3)
{
  v5 = *(a1 + 32);
  v6 = TI::CP::Search::key_deviation_cost(v5, *(a1 + 40), *a2);
  return v6 > TI::CP::Search::key_deviation_cost(v5, *(a1 + 40), *a3);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v121 = a2;
  v119 = a2 - 3;
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = v121;
    v12 = (v121 - v7) >> 3;
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3:
        v68 = (*(*a3 + 16))();
        result = (*(*a3 + 16))();
        if (v68)
        {
          v67 = *v7;
          if (result)
          {
LABEL_116:
            *v7 = *v8;
          }

          else
          {
            *v7 = *(v7 + 8);
            *(v7 + 8) = v67;
            result = (*(*a3 + 16))();
            if (!result)
            {
              return result;
            }

            v67 = *(v7 + 8);
            *(v7 + 8) = *v8;
          }

          *v8 = v67;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v114 = *(v7 + 8);
        *(v7 + 8) = *v8;
        *v8 = v114;
LABEL_189:
        result = (*(*a3 + 16))();
        if (result)
        {
          *v7 = vextq_s8(*v7, *v7, 8uLL);
        }

        return result;
      case 4:

        return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v7, (v7 + 8), (v7 + 16), v8, a3);
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v7, (v7 + 8), (v7 + 16), (v7 + 24), a3);
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        v66 = *(v7 + 24);
        *(v7 + 24) = *v8;
        *v8 = v66;
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        *(v7 + 16) = vextq_s8(*(v7 + 16), *(v7 + 16), 8uLL);
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        *(v7 + 8) = vextq_s8(*(v7 + 8), *(v7 + 8), 8uLL);
        goto LABEL_189;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v69 = (v7 + 8);
      v71 = v7 == v121 || v69 == v121;
      if (a5)
      {
        if (!v71)
        {
          v72 = 0;
          do
          {
            v73 = v69;
            result = (*(*a3 + 16))();
            if (result)
            {
              v74 = 0;
              v75 = *v73;
              *v73 = 0;
              v125 = v75;
              for (i = v72; ; i -= 8)
              {
                v77 = (v7 + i);
                v78 = *(v7 + i);
                *v77 = 0;
                v77[1] = v78;
                if (v74)
                {
                  WTF::RefCounted<TI::Favonius::Key>::deref(v74);
                }

                if (!i)
                {
                  break;
                }

                v79 = (v7 + i);
                if (((*(*a3 + 16))() & 1) == 0)
                {
                  goto LABEL_138;
                }

                v74 = *v77;
              }

              v79 = v7;
LABEL_138:
              result = *v79;
              *v79 = v125;
              if (result)
              {
                WTF::RefCounted<TI::Favonius::Key>::deref(result);
                result = 0;
              }
            }

            v69 = v73 + 1;
            v72 += 8;
          }

          while (v73 + 1 != v121);
        }
      }

      else if (!v71)
      {
        do
        {
          v115 = v69;
          result = (*(*a3 + 16))();
          if (result)
          {
            v116 = 0;
            v117 = *v115;
            *v115 = 0;
            v128 = v117;
            while (1)
            {
              v118 = *v7;
              *v7 = 0;
              *(v7 + 8) = v118;
              if (v116)
              {
                WTF::RefCounted<TI::Favonius::Key>::deref(v116);
              }

              if (((*(*a3 + 16))() & 1) == 0)
              {
                break;
              }

              v116 = *v7;
              v7 -= 8;
            }

            result = *v7;
            *v7 = v128;
            if (result)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(result);
              result = 0;
            }
          }

          v69 = v115 + 1;
          v7 = v115;
        }

        while (v115 + 1 != v121);
      }

      return result;
    }

    if (!a4)
    {
      if (v7 != v121)
      {
        v80 = v13 >> 1;
        v81 = v13 >> 1;
        do
        {
          v82 = v81;
          if (v80 >= v81)
          {
            v83 = (2 * v81) | 1;
            v84 = (v7 + 8 * v83);
            if (2 * v81 + 2 < v12 && (*(*a3 + 16))())
            {
              ++v84;
              v83 = 2 * v82 + 2;
            }

            v85 = (v7 + 8 * v82);
            if (((*(*a3 + 16))() & 1) == 0)
            {
              v86 = *v85;
              *v85 = 0;
              v126 = v86;
              do
              {
                v87 = v84;
                v88 = *v84;
                *v84 = 0;
                v89 = *v85;
                *v85 = v88;
                if (v89)
                {
                  WTF::RefCounted<TI::Favonius::Key>::deref(v89);
                }

                if (v80 < v83)
                {
                  break;
                }

                v90 = (2 * v83) | 1;
                v84 = (v7 + 8 * v90);
                v91 = 2 * v83 + 2;
                if (v91 < v12 && (*(*a3 + 16))())
                {
                  ++v84;
                  v90 = v91;
                }

                v85 = v87;
                v83 = v90;
              }

              while (!(*(*a3 + 16))());
              v92 = *v87;
              *v87 = v126;
              if (v92)
              {
                WTF::RefCounted<TI::Favonius::Key>::deref(v92);
              }

              v11 = v121;
            }
          }

          v81 = v82 - 1;
        }

        while (v82);
        do
        {
          v93 = v11;
          v94 = 0;
          v122 = *v7;
          *v7 = 0;
          v95 = v7;
          do
          {
            v96 = &v95[v94];
            v97 = v96 + 1;
            v98 = 2 * v94;
            v94 = (2 * v94) | 1;
            v99 = v98 + 2;
            if (v98 + 2 < v12)
            {
              v100 = v96 + 2;
              if ((*(*a3 + 16))())
              {
                v97 = v100;
                v94 = v99;
              }
            }

            v101 = *v97;
            *v97 = 0;
            v102 = *v95;
            *v95 = v101;
            if (v102)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(v102);
            }

            v95 = v97;
          }

          while (v94 <= (v12 - 2) / 2);
          v11 = v93 - 1;
          if (v97 == v93 - 1)
          {
            result = *v97;
            *v97 = v122;
            if (result)
            {
              result = WTF::RefCounted<TI::Favonius::Key>::deref(result);
            }
          }

          else
          {
            v103 = *v11;
            *v11 = 0;
            v104 = *v97;
            *v97 = v103;
            if (v104)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(v104);
            }

            result = *v11;
            *v11 = v122;
            if (result)
            {
              result = WTF::RefCounted<TI::Favonius::Key>::deref(result);
            }

            v105 = (v97 - v7 + 8) >> 3;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = (v7 + 8 * (v107 >> 1));
              result = (*(*a3 + 16))();
              if (result)
              {
                v110 = *v97;
                *v97 = 0;
                v127 = v110;
                do
                {
                  v111 = v109;
                  v112 = *v109;
                  *v109 = 0;
                  v113 = *v97;
                  *v97 = v112;
                  if (v113)
                  {
                    WTF::RefCounted<TI::Favonius::Key>::deref(v113);
                  }

                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = (v7 + 8 * v108);
                  v97 = v111;
                }

                while (((*(*a3 + 16))() & 1) != 0);
                result = *v111;
                *v111 = v127;
                if (result)
                {
                  WTF::RefCounted<TI::Favonius::Key>::deref(result);
                  result = 0;
                }
              }
            }
          }

          v106 = v12-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v14 = (v7 + 8 * (v12 >> 1));
    v15 = *(*a3 + 16);
    if (v12 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        v18 = *v7;
        if (v17)
        {
          *v7 = *v8;
          goto LABEL_27;
        }

        *v7 = *v14;
        *v14 = v18;
        if ((*(*a3 + 16))())
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_27:
          *v8 = v18;
        }
      }

      else if (v17)
      {
        v22 = *v14;
        *v14 = *v8;
        *v8 = v22;
        if ((*(*a3 + 16))())
        {
          v23 = *v7;
          *v7 = *v14;
          *v14 = v23;
        }
      }

      v26 = v14 - 1;
      v27 = (*(*a3 + 16))();
      v28 = (*(*a3 + 16))();
      if (v27)
      {
        v29 = *(v7 + 8);
        if (v28)
        {
          *(v7 + 8) = *v9;
          goto LABEL_39;
        }

        *(v7 + 8) = *v26;
        *v26 = v29;
        if ((*(*a3 + 16))())
        {
          v29 = *v26;
          *v26 = *v9;
LABEL_39:
          *v9 = v29;
        }
      }

      else if (v28)
      {
        v30 = *v26;
        *v26 = *v9;
        *v9 = v30;
        if ((*(*a3 + 16))())
        {
          v31 = *(v7 + 8);
          *(v7 + 8) = *v26;
          *v26 = v31;
        }
      }

      v32 = (*(*a3 + 16))();
      v33 = (*(*a3 + 16))();
      if (v32)
      {
        v34 = *(v7 + 16);
        if (v33)
        {
          v35 = v119;
          *(v7 + 16) = *v119;
          goto LABEL_48;
        }

        *(v7 + 16) = v14[1];
        v14[1] = v34;
        if ((*(*a3 + 16))())
        {
          v34 = v14[1];
          v35 = v119;
          v14[1] = *v119;
LABEL_48:
          *v35 = v34;
        }
      }

      else if (v33)
      {
        v36 = v14[1];
        v14[1] = *v119;
        *v119 = v36;
        if ((*(*a3 + 16))())
        {
          v37 = *(v7 + 16);
          *(v7 + 16) = v14[1];
          v14[1] = v37;
        }
      }

      v38 = (*(*a3 + 16))();
      v39 = (*(*a3 + 16))();
      if (v38)
      {
        v40 = *v26;
        if (v39)
        {
          v41 = *v14;
          *v26 = v14[1];
          v14[1] = v40;
LABEL_58:
          v11 = v121;
          v45 = *v7;
          *v7 = v41;
          *v14 = v45;
          goto LABEL_59;
        }

        *v26 = *v14;
        *v14 = v40;
        v44 = (*(*a3 + 16))();
        v41 = *v14;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v14[1];
        *v14 = v43;
        v14[1] = v41;
      }

      else
      {
        v41 = *v14;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v14 = v14[1];
        v14[1] = v41;
        v42 = (*(*a3 + 16))();
        v41 = *v14;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v26;
        *v26 = v41;
        *v14 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v19 = v15();
    v20 = (*(*a3 + 16))();
    if ((v19 & 1) == 0)
    {
      if (v20)
      {
        v24 = *v7;
        *v7 = *v8;
        *v8 = v24;
        if ((*(*a3 + 16))())
        {
          v25 = *v14;
          *v14 = *v7;
          *v7 = v25;
        }
      }

      goto LABEL_59;
    }

    v21 = *v14;
    if (v20)
    {
      *v14 = *v8;
LABEL_36:
      *v8 = v21;
      goto LABEL_59;
    }

    *v14 = *v7;
    *v7 = v21;
    if ((*(*a3 + 16))())
    {
      v21 = *v7;
      *v7 = *v8;
      goto LABEL_36;
    }

LABEL_59:
    --a4;
    if (a5)
    {
      v46 = *v7;
LABEL_62:
      *v7 = 0;
      v123 = v46;
      v48 = v7;
      do
      {
        v49 = v48++;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v50 = v11;
      if (v49 == v7)
      {
        v50 = v11;
        do
        {
          if (v48 >= v50)
          {
            break;
          }

          --v50;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        do
        {
          --v50;
        }

        while (!(*(*a3 + 16))());
      }

      if (v48 < v50)
      {
        v51 = v48;
        v52 = v50;
        do
        {
          v53 = *v51;
          *v51 = *v52;
          *v52 = v53;
          do
          {
            v49 = v51++;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          do
          {
            --v52;
          }

          while (!(*(*a3 + 16))());
        }

        while (v51 < v52);
      }

      if (v49 != v7)
      {
        v54 = *v49;
        *v49 = 0;
        v55 = *v7;
        *v7 = v54;
        if (v55)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v55);
        }
      }

      v56 = *v49;
      *v49 = v123;
      if (v56)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v56);
      }

      if (v48 < v50)
      {
        goto LABEL_84;
      }

      v57 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*>(v7, v49, a3);
      v10 = v49 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*>(v49 + 1, v121, a3);
      if (result)
      {
        a2 = v49;
        if (!v57)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v57)
      {
LABEL_84:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*,false>(v7, v49, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v49 + 1;
      }
    }

    else
    {
      v47 = (*(*a3 + 16))();
      v46 = *v7;
      if (v47)
      {
        goto LABEL_62;
      }

      *v7 = 0;
      v124 = v46;
      if ((*(*a3 + 16))())
      {
        v10 = v7;
        do
        {
          ++v10;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        v58 = (v7 + 8);
        do
        {
          v10 = v58;
          if (v58 >= v121)
          {
            break;
          }

          v59 = (*(*a3 + 16))();
          v58 = v10 + 1;
        }

        while (!v59);
      }

      v60 = v121;
      if (v10 < v121)
      {
        v60 = v121;
        do
        {
          --v60;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      while (v10 < v60)
      {
        v61 = *v10;
        *v10 = *v60;
        *v60 = v61;
        do
        {
          ++v10;
        }

        while (!(*(*a3 + 16))());
        do
        {
          --v60;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      v62 = v10 - 1;
      if (v10 - 1 != v7)
      {
        v63 = *v62;
        *v62 = 0;
        v64 = *v7;
        *v7 = v63;
        if (v64)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v64);
        }
      }

      v65 = *v62;
      *v62 = v124;
      if (v65)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v65);
      }

      result = 0;
      a5 = 0;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  result = (*(*a3 + 16))();
  if (result)
  {
    v67 = *v7;
    goto LABEL_116;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = a2 - 1;
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
        v9 = a2 - 1;
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
    v7 = a2 - 1;
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

  v19 = a1 + 3;
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
      v30 = v23;
      for (i = v20; ; i -= 8)
      {
        v25 = a1 + i;
        v26 = *(a1 + i + 16);
        *(v25 + 2) = 0;
        *(v25 + 3) = v26;
        if (v22)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v22);
        }

        if (i == -16)
        {
          v27 = a1;
          goto LABEL_43;
        }

        if (((*(*a3 + 16))() & 1) == 0)
        {
          break;
        }

        v22 = *(v25 + 2);
      }

      v27 = (a1 + i + 16);
LABEL_43:
      v28 = *v27;
      *v27 = v30;
      if (v28)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v28);
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

long double TI::CP::Search::key_deviation_cost(uint64_t a1, unsigned int a2, CGRect *a3)
{
  v6 = (a1 + 56);
  v7 = (*(a1 + 56) + 48 * a2);
  v8 = *v7;
  v9 = v7[1];
  x = a3[3].origin.x;
  y = a3[3].origin.y;
  if (CGRectGetWidth(a3[2]) > *(a1 + 312) * 3.0)
  {
    v12 = CGRectGetMinX(a3[2]) + *(a1 + 312);
    v13 = CGRectGetMaxX(a3[2]) - *(a1 + 312);
    if (v8 <= v13)
    {
      v13 = v8;
    }

    if (v8 >= v12)
    {
      x = v13;
    }

    else
    {
      x = v12;
    }
  }

  v14 = *(a1 + 320);
  v15 = *(a1 + 496);
  v16 = *(a1 + 464);
  if (a2)
  {
    if (TI::CP::Path::inflection_point_count(v6, a2, a2))
    {
      v17 = 488;
    }

    else
    {
      v17 = 472;
    }
  }

  else
  {
    v17 = 480;
  }

  v18 = v14 * hypot(x - v8, y - v9);
  if (v15 < v18)
  {
    v18 = v15;
  }

  return *(a1 + 432) * -(pow(v18, v16) * *(a1 + v17));
}

void std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TI::CP::SearchNode const>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double TI::CP::Search::path_length(TI::CP::Search *this)
{
  v1 = *(this + 14);
  if (*(this + 13) == v1)
  {
    return 0.0;
  }

  else
  {
    return *(v1 - 16);
  }
}

unsigned int *TI::CP::Search::set_typing_model(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 176);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 176) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      return (*(*result + 40))();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TI::CP::Search::reset_path(TI::CP::Search *this)
{
  *(this + 8) = *(this + 7);
  *(this + 11) = *(this + 10);
  *(this + 14) = *(this + 13);
  *(this + 17) = *(this + 16);
  *(this + 152) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v2 = *(this + 41);
  v3 = *(this + 42);
  while (v3 != v2)
  {
    v3 -= 3;
    v6 = v3;
    std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  *(this + 42) = v2;
  std::vector<std::shared_ptr<TI::CP::SearchNode const>>::clear[abi:nn200100](this + 44);
  v4 = *(this + 47);
  v5 = *(this + 48);
  while (v5 != v4)
  {
    v5 -= 3;
    v6 = v5;
    std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  *(this + 48) = v4;
  *(this + 42) = 7;
}

double TI::CP::Search::last_touch(TI::CP::Search *this)
{
  v1 = *(this + 14);
  if (*(this + 13) == v1)
  {
    v2 = MEMORY[0x277CBF348];
  }

  else
  {
    v2 = v1 - 48;
  }

  return *v2;
}

void TI::CP::Search::add_touch(TI::CP::Search *this, int a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  if (!a2 && *(this + 152) == 1)
  {
    (*(*this + 56))(this);
  }

  if (*(this + 41) == *(this + 42))
  {
    TI::CP::Search::initialize_search(this);
  }

  v31.x = a3;
  v31.y = a4;
  v12 = TI::CP::PathResampler::append_and_resample((this + 16), v31, a5, a6, 0.0);
  v29 = a2;
  if (a2 == 2)
  {
    v13 = TI::CP::PathResampler::finalize((this + 16));
    if (v13 < v12)
    {
      v12 = v13;
    }
  }

  v14 = v12 + 1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 42) - *(this + 41)) >> 3) > v14)
  {
    std::vector<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::resize(this + 41, v14);
    std::vector<std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>>::resize(this + 47, v12);
  }

  while (1)
  {
    v16 = *(this + 41);
    v15 = *(this + 42);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
    if (v17 >= 1 - 0x5555555555555555 * ((*(this + 8) - *(this + 7)) >> 4))
    {
      break;
    }

    v18 = *(this + 43);
    if (v15 >= v18)
    {
      v20 = v17 + 1;
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v16) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      v30[4] = this + 328;
      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v22);
      }

      v23 = 24 * v17;
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      v19 = 24 * v17 + 24;
      v24 = *(this + 41);
      v25 = *(this + 42) - v24;
      v26 = (24 * v17 - v25);
      memcpy(v26, v24, v25);
      v27 = *(this + 41);
      *(this + 41) = v26;
      *(this + 42) = v19;
      v28 = *(this + 43);
      *(this + 43) = 0;
      v30[2] = v27;
      v30[3] = v28;
      v30[0] = v27;
      v30[1] = v27;
      std::__split_buffer<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::~__split_buffer(v30);
    }

    else
    {
      *v15 = 0;
      v15[1] = 0;
      v19 = (v15 + 3);
      v15[2] = 0;
    }

    *(this + 42) = v19;
    TI::CP::Search::step_search(this, v17 - 1, 0, (v19 - 24));
  }

  *(this + 42) = v29;
}

void (***TI::CP::Search::initialize_search(TI::CP::Search *this))(void, uint64_t *, char *)
{
  v3 = *(this + 42);
  v2 = *(this + 43);
  if (v3 >= v2)
  {
    v5 = *(this + 41);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20[4] = this + 328;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    v4 = 24 * v6 + 24;
    v11 = *(this + 41);
    v12 = *(this + 42) - v11;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), v11, v12);
    v14 = *(this + 41);
    *(this + 41) = v13;
    *(this + 42) = v4;
    v15 = *(this + 43);
    *(this + 43) = 0;
    v20[2] = v14;
    v20[3] = v15;
    v20[0] = v14;
    v20[1] = v14;
    std::__split_buffer<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::~__split_buffer(v20);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = (v3 + 3);
    v3[2] = 0;
  }

  *(this + 42) = v4;
  result = *(this + 22);
  if (result)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    (**result)(result, &v17, this + 400);
    if (v17)
    {
      if (*v18)
      {
        atomic_fetch_add((*v18 + 8), 1u);
      }

      operator new();
    }

    return WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(&v17);
  }

  return result;
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeRoot>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void TI::CP::Search::~Search(TI::CP::Search *this)
{
  TI::CP::Search::~Search(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDDCB8;
  v2 = *(this + 51);
  if (v2 && *(this + 406) == 1)
  {
    free(v2);
  }

  v3 = *(this + 47);
  if (v3)
  {
    v4 = *(this + 48);
    v5 = *(this + 47);
    if (v4 != v3)
    {
      do
      {
        v4 -= 3;
        v21 = v4;
        std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v21);
      }

      while (v4 != v3);
      v5 = *(this + 47);
    }

    *(this + 48) = v3;
    operator delete(v5);
  }

  v21 = (this + 352);
  std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](&v21);
  v6 = *(this + 41);
  if (v6)
  {
    v7 = *(this + 42);
    v8 = *(this + 41);
    if (v7 != v6)
    {
      do
      {
        v7 -= 3;
        v21 = v7;
        std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](&v21);
      }

      while (v7 != v6);
      v8 = *(this + 41);
    }

    *(this + 42) = v6;
    operator delete(v8);
  }

  v21 = (this + 288);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v21);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 280));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 272));
  v9 = *(this + 28);
  if (v9)
  {
    *(this + 29) = v9;
    operator delete(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 25);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 23);
  if (v12)
  {
    v13 = atomic_load(v12 + 2);
    if (v13 == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    }
  }

  v14 = *(this + 22);
  if (v14)
  {
    v15 = atomic_load(v14 + 2);
    if (v15 == 1)
    {
      (*(*v14 + 40))(v14);
    }

    else
    {
      atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
    }
  }

  v16 = *(this + 16);
  if (v16)
  {
    *(this + 17) = v16;
    operator delete(v16);
  }

  v17 = *(this + 13);
  if (v17)
  {
    *(this + 14) = v17;
    operator delete(v17);
  }

  v18 = *(this + 10);
  if (v18)
  {
    *(this + 11) = v18;
    operator delete(v18);
  }

  v19 = *(this + 7);
  if (v19)
  {
    *(this + 8) = v19;
    operator delete(v19);
  }

  *this = &unk_283FDDD68;
  v20 = *(this + 1);
  if (v20)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v20);
  }
}

uint64_t TI::CP::Search::Search(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  *a1 = &unk_283FDDCB8;
  *(a1 + 8) = 0;
  v8 = *a4;
  v9 = a4[1];
  *(a1 + 48) = *(a4 + 4);
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  std::vector<TI::CP::PathSample>::vector[abi:nn200100]((a1 + 56), a4 + 5);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 80), a4 + 8);
  std::vector<TI::CP::PathSample>::vector[abi:nn200100]((a1 + 104), a4 + 11);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 128), a4 + 14);
  v10 = *(a4 + 17);
  *(a1 + 160) = *(a4 + 36);
  *(a1 + 152) = v10;
  *(a1 + 168) = 7;
  v11 = *a2;
  *a2 = 0;
  v12 = *a3;
  *a3 = 0;
  *(a1 + 176) = v11;
  *(a1 + 184) = v12;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 272));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 280));
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 386) = 0u;
  *(a1 + 402) = 16;
  *(a1 + 406) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = xmmword_22CC88C00;
  *(a1 + 448) = xmmword_22CC88C10;
  *(a1 + 464) = xmmword_22CC88C20;
  *(a1 + 480) = xmmword_22CC88C30;
  *(a1 + 496) = xmmword_22CC88C40;
  *(a1 + 512) = xmmword_22CC88C50;
  *(a1 + 528) = xmmword_22CC88C60;
  *(a1 + 544) = xmmword_22CC88B70;
  *(a1 + 560) = 0x403E000000000000;
  *(a1 + 568) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 576) = _Q0;
  return a1;
}

uint64_t TI::CP::Search::extend_typing@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X2>, uint64_t a4@<X3>, unsigned int **a5@<X8>)
{
  v5 = a4;
  v8 = result;
  if (*(a2 + 82) == 1)
  {
    v10 = *(a2 + 88);
    v11 = *(a2 + 96);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 0x40000000;
    v36 = ___ZNK2TI2CP6Search13extend_typingEPKNS0_10SearchNodeERKN3WTF6RefPtrINS_8Favonius9LayoutKeyEEEj_block_invoke;
    v37 = &__block_descriptor_tmp_5_18847;
    v38 = a3;
    if (v10)
    {
      v12 = 8 * v10;
      v13 = &v11[v10];
      while (1)
      {
        result = (v36)(v35, v11);
        if (result)
        {
          break;
        }

        ++v11;
        v12 -= 8;
        if (!v12)
        {
          v11 = v13;
          break;
        }
      }

      v14 = v11;
      v11 = *(a2 + 96);
    }

    else
    {
      v14 = v11;
    }

    if (v14 == &v11[*(a2 + 88)])
    {
      if (*(*a3 + 20))
      {
        *a5 = 0;
        return result;
      }
    }

    else
    {
      v15 = *v14;
      *a5 = v15;
      if (v15)
      {
        atomic_fetch_add((v15 + 8), 1u);
        v16 = *a5;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(*a3 + 20);
      if (v17 == *(*(*(*v16 + 16))(v16) + 40))
      {
        result = (*(*v16 + 16))(v16);
        if (*result != *a3)
        {
          result = KB::String::equal((*result + 8), (*a3 + 2), 1, v18, v19);
          if ((result & 1) == 0)
          {
            v20 = *a3;
            v34 = v20;
            v21 = v16;
            if (v20)
            {
              atomic_fetch_add(v20, 1u);
              v21 = *a5;
            }

            (*(*v16 + 216))(&v31, v16, &v34);
            v22 = v31;
            v31 = 0;
            *a5 = v22;
            if (v21)
            {
              v23 = atomic_load(v21 + 2);
              if (v23 == 1)
              {
                (*(*v21 + 248))(v21);
              }

              else
              {
                atomic_fetch_add(v21 + 2, 0xFFFFFFFF);
              }

              if (v31)
              {
                v29 = atomic_load(v31 + 2);
                if (v29 == 1)
                {
                  (*(*v31 + 248))();
                }

                else
                {
                  atomic_fetch_add(v31 + 2, 0xFFFFFFFF);
                }
              }
            }

            result = v34;
            if (v34)
            {
              return WTF::RefCounted<TI::Favonius::Key>::deref(v34);
            }
          }
        }

        return result;
      }

      v24 = atomic_load(v16 + 2);
      if (v24 == 1)
      {
        (*(*v16 + 248))(v16);
      }

      else
      {
        atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
      }
    }
  }

  result = TI::CP::Search::find_clone_in_prev_beam(v8, *(a2 + 64), *a3, v5);
  if (result)
  {
    v25 = *(result + 64);
    *a5 = v25;
    if (v25)
    {
      atomic_fetch_add((v25 + 8), 1u);
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v26 = *(a2 + 64);
    v27 = *a3;
    v30 = v27;
    if (v27)
    {
      atomic_fetch_add(v27, 1u);
    }

    (*(*v26 + 40))(v26, &v31, &v30);
    if (v30)
    {
      WTF::RefCounted<TI::Favonius::Key>::deref(v30);
    }

    if ((*(**v32 + 160))())
    {
      v28 = *v32;
      *a5 = *v32;
      if (v28)
      {
        atomic_fetch_add(v28 + 2, 1u);
      }
    }

    else
    {
      *a5 = 0;
    }

    return WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(&v31);
  }

  return result;
}

BOOL ___ZNK2TI2CP6Search13extend_typingEPKNS0_10SearchNodeERKN3WTF6RefPtrINS_8Favonius9LayoutKeyEEEj_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 32);
  v3 = *(*(**a2 + 16))();

  return KB::ByteString::starts_with((v2 + 40), (v3 + 40));
}

uint64_t TI::CP::Search::find_clone_in_prev_beam(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a1 + 328) + 24 * a4;
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 == v6)
  {
    return 0;
  }

  while (1)
  {
    v9 = *(*v5 + 32);
    if (v9)
    {
      if (*(v9 + 64) == a2)
      {
        if ((*(**v5 + 104))(*v5))
        {
          result = *v5;
          if (*(*v5 + 56) == a3)
          {
            break;
          }
        }
      }
    }

    v5 += 2;
    if (v5 == v6)
    {
      return 0;
    }
  }

  return result;
}

double TI::CP::Search::top_score(TI::CP::Search *this)
{
  v1 = *(this + 42);
  if (*(this + 41) == v1)
  {
    return -INFINITY;
  }

  else
  {
    return *(**(v1 - 24) + 72);
  }
}

double TI::CP::Search::path_deviation_cost(TI::CP::Search *this, int a2, unsigned int a3, int a4)
{
  v8 = *(this + 7);
  v9 = (v8 + 48 * a2);
  v10 = (v8 + 48 * a3);
  v11 = v10[4] - v9[4];
  v12 = hypot(*v10 - *v9, v10[1] - v9[1]);
  v13 = pow((v11 - v12) * *(this + 40), *(this + 56));
  v14 = *(this + 57);
  return *(this + 54) * (-(*(this + 66) * TI::CP::Search::skipped_inflection_point_count(this, a2, a3, a4)) - v13 * v14);
}

unint64_t TI::CP::Search::skipped_inflection_point_count(TI::CP::Search *this, int a2, unsigned int a3, int a4)
{
  if (a2 + 2 > a3)
  {
    v7 = 0;
    if (!a4)
    {
      return v7;
    }

    return TI::CP::Path::inflection_point_count((this + 56), a3, a3) + v7;
  }

  v7 = TI::CP::Path::inflection_point_count((this + 56), a2 + 1, a3 - 1);
  if (a4)
  {
    return TI::CP::Path::inflection_point_count((this + 56), a3, a3) + v7;
  }

  return v7;
}

double TI::CP::Search::extended_path_deviation_cost(TI::CP::Search *this, int a2, unsigned int a3, CGPoint a4)
{
  y = a4.y;
  x = a4.x;
  v9 = *(this + 7);
  v10 = (v9 + 48 * a3);
  v11 = (v9 + 48 * a2);
  v12 = v10[4] - v11[4];
  v13 = v12 + hypot(a4.x - *v10, a4.y - v10[1]);
  v14 = hypot(x - *v11, y - v11[1]);
  v15 = pow((v13 - v14) * *(this + 40), *(this + 56));
  v16 = *(this + 57);
  return *(this + 54) * (-(*(this + 66) * TI::CP::Search::skipped_inflection_point_count(this, a2, a3, 1)) - v15 * v16);
}

double TI::CP::Search::key_deviation_weight(TI::CP::Search *this, unsigned int a2)
{
  if (a2)
  {
    v3 = TI::CP::Path::inflection_point_count((this + 56), a2, a2);
    v4 = 488;
    if (!v3)
    {
      v4 = 472;
    }
  }

  else
  {
    v4 = 480;
  }

  return *(this + v4);
}

double TI::CP::Search::skipped_key_cost(TI::CP::Search *this, unsigned int a2)
{
  v3 = *(this + 63);
  if (a2)
  {
    v4 = TI::CP::Path::inflection_point_count((this + 56), a2, a2);
    v5 = 488;
    if (!v4)
    {
      v5 = 472;
    }
  }

  else
  {
    v5 = 480;
  }

  return -(v3 * *(this + v5)) * *(this + 54);
}

double TI::CP::Search::overshoot_cost(TI::CP::Search *this, int a2, unsigned int a3)
{
  v6 = pow((*(*(this + 7) + 48 * a3 + 32) - *(*(this + 7) + 48 * a2 + 32)) * *(this + 40), *(this + 64));
  v7 = *(this + 65);
  return *(this + 54) * (-(*(this + 66) * TI::CP::Search::skipped_inflection_point_count(this, a2, a3, 1)) - v6 * v7);
}

void TI::CP::Search::loop_cost(TI::CP::Search *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 39);
  v4 = *(this + 67) * v3;
  v5 = *(this + 7);
  v6 = *(v5 + 48 * a3 + 32) - *(v5 + 48 * a2 + 32);
  v7 = v3 * *(this + 68);
  if (v6 >= v4 && v6 <= v7)
  {
    hypot(*(v5 + 48 * a3) - *(v5 + 48 * a2), *(v5 + 48 * a3 + 8) - *(v5 + 48 * a2 + 8));
  }
}

double TI::CP::Search::key_prediction_cost(TI::CP::Search *this, int a2)
{
  v2 = 584;
  if (!a2)
  {
    v2 = 576;
  }

  return -(*(this + v2) * *(this + 54));
}

void TI::CP::Search::append_debug_data_for_sample(uint64_t a1, __CFString *a2, uint64_t a3, TI::CP::SearchNode ***a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = (a1 + 56);
  v9 = *(a1 + 56);
  v11 = (v9 + 48 * a3);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2] - *(v9 + 16);
  v34.x = *v11;
  v34.y = v13;
  TI::Favonius::KeyboardLayout::find_nearest_key(*(a1 + 8), v34, &__p);
  v15 = __p;
  v16 = TI::CP::Path::inflection_point_count(v10, a3, a3);
  v17 = v12 - v15[12];
  v18 = v13 - v15[13];
  LODWORD(__p) = 0x100000;
  WORD2(__p) = 0;
  BYTE6(__p) = 0;
  v30 = 0;
  v31 = 0;
  TI::Favonius::Key::append_debug_data(v15, &__p);
  v20 = v30;
  if (!v30)
  {
    v20 = &v31;
  }

  if (__p)
  {
    v21 = v20;
  }

  else
  {
    v21 = "";
  }

  v22 = "true";
  if (v16)
  {
    v23 = "true";
  }

  else
  {
    v23 = "false";
  }

  if (!a5)
  {
    v22 = "false";
  }

  KB::append_format(a2, "search %u @ (%.2f, %.2f) = '%s' + (%.2f, %.2f), t = %.2f, inflection_point = %s, final = %s:\n", v19, a3, *&v12, *&v13, v21, *&v17, *&v18, *&v14, v23, v22);
  if (v30 && BYTE6(__p) == 1)
  {
    free(v30);
  }

  v24 = *a4;
  v25 = a4[1];
  if (*a4 == v25)
  {
    goto LABEL_22;
  }

  do
  {
    (*(**v24 + 64))(&__p);
    if (v32 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v27 = TI::CP::SearchNode::score_at_sample_index(*v24, a3);
    KB::append_format(a2, "    %s (s=%g here)\n", v28, p_p, *&v27);
    if (v32 < 0)
    {
      operator delete(__p);
    }

    v24 += 2;
  }

  while (v24 != v25);
  if (v15)
  {
LABEL_22:
    WTF::RefCounted<TI::Favonius::Key>::deref(v15);
  }
}

void TI::CP::Search::append_debug_data(TI::CP::Search *this, __CFString *a2, const char *a3)
{
  KB::append_format(a2, "CONTINUOUS PATH SEARCH STATE:\n", a3);
  v5 = *(this + 8) - *(this + 7);
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
    do
    {
      v8 = (v6 + 1);
      if (v7 <= v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(this + 152);
      }

      TI::CP::Search::append_debug_data_for_sample(this, a2, v6, (*(this + 41) + 24 * v8), v9 & 1);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 4);
      v6 = v8;
    }

    while (v7 > v8);
  }
}

void KB::TypologyLogger::log_candidates(CFMutableStringRef *a1, uint64_t a2, unsigned int a3, uint64_t a4, KB::Candidate **a5, const __CFString *a6, KB::Candidate **a7, CFStringRef *a8)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0x100000;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v13 = *(a2 + 8);
  if (!v13)
  {
    v13 = (a2 + 16);
  }

  if (*a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = "";
  }

  if (a3 > 5)
  {
    v15 = "Unknown";
  }

  else
  {
    v15 = off_278732D10[a3];
  }

  v16 = *(a4 + 8);
  if (!v16)
  {
    v16 = (a4 + 16);
  }

  if (*a4)
  {
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  KB::String::append_format(&v28, "Typed String: %s  Lookup Type: %s  State Description: %s\n", v14, v15, v17);
  v18 = v31;
  if (!v31)
  {
    v18 = &v32;
  }

  if (v28)
  {
    v19 = v18;
  }

  else
  {
    v19 = "";
  }

  CFStringAppendCString(a1[1], v19, 0x8000100u);
  KB::TypologyLogger::build_debug_candidate(a1, a5, "Raw Candidates", 1);
  if (a6)
  {
    CFStringAppend(a1[1], @"\n");
    CFStringAppend(a1[1], a6);
  }

  KB::TypologyLogger::build_debug_candidate(a1, a7, "Candidates", 0);
  if (*a8)
  {
    CFStringAppend(a1[1], @"\n");
    CFStringAppend(a1[1], *a8);
  }

  v20 = *a5;
  v21 = a5[1];
  if (*a5 != v21)
  {
    do
    {
      if (*(v20 + 943) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *(v20 + 115), *(v20 + 116));
      }

      else
      {
        v27 = *(v20 + 920);
      }

      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      v23 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        CFStringAppend(a1[1], @"-------------------------------\n");
        CFStringAppend(a1[1], @"Raw candidate tracelogs from LM\n");
        CFStringAppend(a1[1], @"\n");
        v24 = a1[1];
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v27;
        }

        else
        {
          v25 = v27.__r_.__value_.__r.__words[0];
        }

        v26 = CFStringCreateWithCString(0, v25, 0x8000100u);
        CFStringAppend(v24, v26);
        CFStringAppend(a1[1], @"\n");
        CFStringAppend(a1[1], @"-------------------------------\n");
        v23 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      if (v23 < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      v20 = (v20 + 1000);
    }

    while (v20 != v21);
  }

  if (v31)
  {
    if (v30 == 1)
    {
      free(v31);
    }
  }
}

void KB::TypologyLogger::build_debug_candidate(CFMutableStringRef *this, KB::Candidate **a2, const char *a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    CFStringAppendFormat(this[1], 0, @"\n%s\n", a3);
    v7 = *a2;
    for (i = a2[1]; v7 != i; v7 = (v7 + 1000))
    {
      v9 = this[1];
      v11 = 0x100000;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      KB::Candidate::append_debug_data(v7, v9, a4, &v11);
      if (v14)
      {
        v10 = v13 == 1;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        free(v14);
      }
    }
  }
}

void KB::TypologyLogger::log_autocorrection_engine_state(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 256))(a2, *(a1 + 8));
  v3 = *(a1 + 8);

  CFStringAppend(v3, @"------------------------------\n");
}

void KB::TypologyLogger::~TypologyLogger(KB::TypologyLogger *this)
{
  *this = &unk_283FDE048;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE048;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;
}

void *__getSBSSetTypingActiveSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_19045)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke_19046;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278732D80;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_19045 = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary_19045;
    if (SpringBoardServicesLibraryCore_frameworkLibrary_19045)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary_19045;
LABEL_5:
  result = dlsym(v2, "SBSSetTypingActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSSetTypingActiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_19046(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_19045 = result;
  return result;
}

Class __getPSPointerClientControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PointerUIServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PointerUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278732D68;
    v6 = 0;
    PointerUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PointerUIServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSPointerClientController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "PSPointerClientController");
  }

  getPSPointerClientControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PointerUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PointerUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __TIGetKeyboardCompletionsShouldSharePrefixValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardCompletionsShouldSharePrefix" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

void __TIGetKeyboardMaxWordsPerPredictionValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardMaxWordsPerPrediction" domain:@"com.apple.keyboard" defaultValue:&unk_28400BEF8];
}

void __TIGetKeyboardWordNgramModelAdaptationValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardWordNgramModelAdaptation" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

void __TIGetKeyboardWordNgramModelValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardWordNgramModel" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

void __TIGetKeyboardRetrocorrectionDisabledValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardRetrocorrectionDisabled" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

uint64_t __Block_byref_object_copy__19501(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TILanguageModelScheduleMaintenance()
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    return +[TILanguageModelMaintainer sharedLanguageModelMaintainer];
  }

  return TIDispatchAsync();
}

void KB::CompositeCandidateFilter::filter_candidates(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); v4 != i; v4 += 2)
  {
    v9 = *v4;
    v10 = v4[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9 && (*a2 != a2[1] || a2[6] != a2[7] || a2[9] != a2[10]))
    {
      (*(*v9 + 24))(v9, a2, a3, a4);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}

void KB::CompositeCandidateFilter::~CompositeCandidateFilter(KB::CompositeCandidateFilter *this)
{
  *this = &unk_283FDE1D8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE1D8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

__n128 KB::CompositeCandidateFilter::CompositeCandidateFilter(void *a1, __n128 *a2)
{
  *a1 = &unk_283FDE1D8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_283FDE1D8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

id getSRKeyboardProbabilityMetricClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSRKeyboardProbabilityMetricClass_softClass;
  v7 = getSRKeyboardProbabilityMetricClass_softClass;
  if (!getSRKeyboardProbabilityMetricClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSRKeyboardProbabilityMetricClass_block_invoke;
    v3[3] = &unk_278733760;
    v3[4] = &v4;
    __getSRKeyboardProbabilityMetricClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

Class __getSRKeyboardProbabilityMetricClass_block_invoke(uint64_t a1)
{
  SensorKitLibrary_19737();
  result = objc_getClass("SRKeyboardProbabilityMetric");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSRKeyboardProbabilityMetricClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "SRKeyboardProbabilityMetric");
    return SensorKitLibrary_19737();
  }

  return result;
}

uint64_t SensorKitLibrary_19737()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SensorKitLibraryCore_frameworkLibrary_19740)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SensorKitLibraryCore_block_invoke_19741;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278732F20;
    v5 = 0;
    SensorKitLibraryCore_frameworkLibrary_19740 = _sl_dlopen();
    v1 = v3[0];
    v0 = SensorKitLibraryCore_frameworkLibrary_19740;
    if (SensorKitLibraryCore_frameworkLibrary_19740)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return SensorKitLibraryCore_frameworkLibrary_19740;
}

uint64_t __SensorKitLibraryCore_block_invoke_19741(uint64_t a1)
{
  result = _sl_dlopen();
  SensorKitLibraryCore_frameworkLibrary_19740 = result;
  return result;
}

void *__getSRKeyboardMetaInformationIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationVersionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationVersionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationVersionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationWidthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationWidthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationWidthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationHeightKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationHeightKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationHeightKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationInputModesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationInputModesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationInputModesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationSessionIdentifiersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSRKeyboardMetricsClass_block_invoke(uint64_t a1)
{
  SensorKitLibrary_19737();
  result = objc_getClass("SRKeyboardMetrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSRKeyboardMetricsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "SRKeyboardMetrics");
    return [(TISKSessionStats *)v3 _roundedSessionInterval];
  }

  return result;
}

KB::StaticDictionaryCursor *KB::StaticDictionaryCursor::StaticDictionaryCursor(KB::StaticDictionaryCursor *this, const KB::StaticDictionary *a2)
{
  *(this + 12) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  v3 = *(a2 + 1) - *a2;
  *(this + 5) = v3 >> 3;
  if (v3)
  {
    v5 = 0;
    do
    {
      RootCursor = LXLexiconCreateRootCursor();
      v7 = *(this + v5);
      if (v7)
      {
        CFRelease(v7);
      }

      *(this + v5) = RootCursor;
      *(this + v5 + 6) = *(*(a2 + 3) + 4 * v5);
      ++v5;
    }

    while (v5 < *(this + 5));
  }

  *(this + 12) = 0;
  return this;
}

float KB::StaticDictionaryCursor::conditional_probability(KB::StaticDictionaryCursor *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    if (*(this + v3))
    {
      LXCursorConditionalProbability();
      *&v5 = v5;
      v4 = v4 + (*(this + v3 + 6) * __exp10f(*&v5));
      v1 = *(this + 5);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

float KB::StaticDictionaryCursor::termination_probability(KB::StaticDictionaryCursor *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    if (*(this + v3))
    {
      LXCursorTerminationProbability();
      *&v5 = v5;
      v6 = __exp10f(*&v5);
      v4 = v4 + (KB::StaticDictionaryCursor::probability_of_lexicon(this, v3) * v6);
      v1 = *(this + 5);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

float KB::StaticDictionaryCursor::probability_of_lexicon(KB::StaticDictionaryCursor *this, uint64_t a2)
{
  v4 = this + 24;
  v5 = *(this + a2 + 6);
  if (!LXCursorIsRoot())
  {
    v6 = KB::StaticDictionaryCursor::conditional_probability(this);
    if (v6 > 0.0)
    {
      v7 = v6;
      LXCursorConditionalProbability();
      *&v8 = v8;
      return (*&v4[4 * a2] * __exp10f(*&v8)) / v7;
    }
  }

  return v5;
}

float KB::StaticDictionaryCursor::advance(KB::StaticDictionaryCursor *this, const KB::String *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v10 = 0;
    do
    {
      *&v8[4 * v10] = KB::StaticDictionaryCursor::probability_of_lexicon(this, v10);
      ++v10;
      v11 = *(this + 5);
    }

    while (v10 < v11);
    if (v11)
    {
      memcpy(this + 24, v8, 4 * v11);
      if (*(this + 5))
      {
        v12 = 0;
        do
        {
          if (*(this + v12))
          {
            v13 = LXCursorCreateByAdvancingWithUTF8();
            v14 = *(this + v12);
            if (v14)
            {
              CFRelease(v14);
            }
          }

          else
          {
            v13 = 0;
          }

          *(this + v12++) = v13;
        }

        while (v12 < *(this + 5));
      }
    }
  }

  *(this + 12) = KB::String::last(a2);

  return KB::StaticDictionaryCursor::conditional_probability(this);
}

float KB::StaticDictionaryCursor::advance(KB::StaticDictionaryCursor *this, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  KB::String::String(v9, a2);
  v6 = KB::StaticDictionaryCursor::advance(this, v9, v3, v4, v5);
  if (v10)
  {
    v7 = v9[6] == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    free(v10);
  }

  return v6;
}

__n128 __Block_byref_object_copy__20014(void *a1, uint64_t a2)
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

const void **___ZNK2KB22StaticDictionaryCursor8childrenEv_block_invoke(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  TraversedCharacter = LXCursorLastTraversedCharacter();
  v6 = *(*(a1 + 32) + 8);
  v7 = v6[5];
  v8 = v6[6];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 0x40000000;
  v56 = ___ZNK2KB22StaticDictionaryCursor8childrenEv_block_invoke_2;
  v57 = &__block_descriptor_tmp_20018;
  v58 = TraversedCharacter;
  if (v7 != v8)
  {
    while (((v56)(v55, v7) & 1) == 0)
    {
      v7 += 56;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v6 = *(*(a1 + 32) + 8);
    v8 = v6[6];
  }

  v9 = v6 + 5;
  if (v7 != v8)
  {
    if (TraversedCharacter >= *(v7 + 48))
    {
      return KB::retain_ptr<__CFDictionary const*>::operator=((v7 + 8 * *(a1 + 48)), a2);
    }

    v12 = v6[7];
    v11 = v6 + 7;
    v10 = v12;
    v51 = v11 - 1;
    v52 = v4 + 10;
    v53 = TraversedCharacter;
    if (v8 < v12)
    {
      v54 = a2;
      v64 = v9;
      v13 = v4[10];
      memset(v63, 0, 36);
      *&v63[40] = v13;
      *&v63[48] = 0;
      v14 = v8 - 56;
      v15 = v8;
      if (v8 >= 0x38)
      {
        v16 = v8 - 56;
        v15 = v8;
        do
        {
          for (i = 0; i != 24; i += 8)
          {
            v18 = *(v16 + i);
            *(v15 + i) = v18;
            if (v18)
            {
              CFRetain(v18);
              *(v15 + i) = v18;
            }
          }

          v19 = *(v16 + 24);
          *(v15 + 36) = *(v16 + 36);
          *(v15 + 24) = v19;
          v16 += 56;
          v15 += 56;
        }

        while (v16 < v8);
      }

      *v51 = v15;
      if (v14 != v7)
      {
        v20 = (v8 - 112);
        do
        {
          v21 = v14 - 56;
          v22 = -56;
          v23 = v20;
          do
          {
            v24 = *v23++;
            KB::retain_ptr<__CFDictionary const*>::operator=((v8 + v22), v24);
            v22 += 8;
          }

          while (v22 != -32);
          v25 = *(v14 - 32);
          *(v8 - 20) = *(v14 - 20);
          *(v8 - 32) = v25;
          v20 -= 7;
          v8 -= 56;
          v14 -= 56;
        }

        while (v21 != v7);
      }

      v26 = 0;
      v27 = v7;
      do
      {
        v28 = KB::retain_ptr<__CFDictionary const*>::operator=(v27, *&v63[8 * v26++]);
        v27 = v28 + 1;
      }

      while (v26 != 3);
      *(v7 + 24) = *&v63[24];
      *(v7 + 36) = *&v63[36];
      v29 = 16;
      a2 = v54;
      do
      {
        v30 = *&v63[v29];
        if (v30)
        {
          CFRelease(v30);
        }

        *&v63[v29] = 0;
        v29 -= 8;
      }

      while (v29 != -8);
      TraversedCharacter = v53;
      v31 = v4 + 10;
      goto LABEL_44;
    }

LABEL_31:
    v34 = *(v11 - 2);
    v35 = v7 - v34;
    v36 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v34) >> 3) + 1;
    if (v36 > 0x492492492492492)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v37 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v34) >> 3);
    if (2 * v37 > v36)
    {
      v36 = 2 * v37;
    }

    if (v37 >= 0x249249249249249)
    {
      v38 = 0x492492492492492;
    }

    else
    {
      v38 = v36;
    }

    v62 = v9;
    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>>(v38);
    }

    v39 = 8 * (v35 >> 3);
    v59 = 0;
    v60 = v39;
    v61 = v39;
    v40 = v39;
    if (!(0x6DB6DB6DB6DB6DB7 * (v35 >> 3)))
    {
      if (v35 < 1)
      {
        *&v63[32] = v9;
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>>(v7 == v34);
      }

      v39 -= 56 * ((0x6DB6DB6DB6DB6DB7 * (v35 >> 3) + 1) >> 1);
      v60 = v39;
      v40 = v39;
    }

    v41 = *v52;
    *(v40 + 32) = 0;
    *v40 = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 40) = v41;
    *(v40 + 48) = 0;
    *&v61 = v40 + 56;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>,KB::StaticDictionaryCursor*>(v7, *v51, v40 + 56);
    v42 = v60;
    v43 = v61 + *v51 - v7;
    *v51 = v7;
    v44 = v42 + *v9 - v7;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>,KB::StaticDictionaryCursor*>(*v9, v7, v44);
    v45 = *v9;
    *v9 = v44;
    *v51 = v43;
    v31 = v52;
    v46 = *v11;
    *v11 = *(&v61 + 1);
    *&v61 = v45;
    *(&v61 + 1) = v46;
    v59 = v45;
    v60 = v45;
    std::__split_buffer<KB::StaticDictionaryCursor>::~__split_buffer(&v59);
    v7 = v39;
    TraversedCharacter = v53;
    goto LABEL_44;
  }

  v31 = v4 + 10;
  v32 = v6[7];
  v11 = v6 + 7;
  v10 = v32;
  if (v8 >= v32)
  {
    v51 = v11 - 1;
    v52 = v4 + 10;
    v53 = TraversedCharacter;
    goto LABEL_31;
  }

  v33 = *v31;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 40) = v33;
  *(v8 + 48) = 0;
  *(v11 - 1) = v8 + 56;
LABEL_44:
  *(v7 + 48) = TraversedCharacter;
  if (*v31)
  {
    v47 = 0;
    v48 = 1;
    do
    {
      *(v7 + 24 + 4 * v47) = KB::StaticDictionaryCursor::probability_of_lexicon(v4, v47);
      v47 = v48;
    }

    while (*(v4 + 5) > v48++);
  }

  return KB::retain_ptr<__CFDictionary const*>::operator=((v7 + 8 * *(a1 + 48)), a2);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<KB::StaticDictionaryCursor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = 0;
    *(a1 + 16) = i - 56;
    v5 = i - 40;
    do
    {
      v6 = *(v5 + v4);
      if (v6)
      {
        CFRelease(v6);
      }

      *(v5 + v4) = 0;
      v4 -= 8;
    }

    while (v4 != -24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>,KB::StaticDictionaryCursor*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        v8 = *(v6 + i);
        *(a3 + i) = v8;
        if (v8)
        {
          CFRetain(v8);
          *(a3 + i) = v8;
        }
      }

      v9 = *(v6 + 24);
      *(a3 + 36) = *(v6 + 36);
      *(a3 + 24) = v9;
      v6 += 56;
      a3 += 56;
    }

    while (v6 != a2);
    do
    {
      for (j = 16; j != -8; j -= 8)
      {
        v11 = *(v5 + j);
        if (v11)
        {
          CFRelease(v11);
        }

        *(v5 + j) = 0;
      }

      v5 += 56;
    }

    while (v5 != a2);
  }
}

void KB::StaticDictionaryCursor::derive_words(KB::StaticDictionaryCursor *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 5))
  {
    v4 = 0;
    do
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x4002000000;
      v11 = __Block_byref_object_copy__5;
      v12 = __Block_byref_object_dispose__6;
      memset(v13, 0, sizeof(v13));
      v5 = KB::StaticDictionaryCursor::termination_probability(this);
      KB::StaticDictionaryCursor::probability_of_lexicon(this, v4);
      if (v5 > 0.0)
      {
        LXCursorTerminationProbability();
        *&v6 = v6;
        __exp10f(*&v6);
      }

      LXCursorEnumerateEntries();
      KB::StaticDictionary::merge_words(a2, v9 + 5);
      _Block_object_dispose(&v8, 8);
      v14 = v13;
      std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v14);
      ++v4;
    }

    while (v4 < *(this + 5));
  }
}

__n128 __Block_byref_object_copy__5(void *a1, uint64_t a2)
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

uint64_t ___ZNK2KB22StaticDictionaryCursor12derive_wordsERNSt3__16vectorINS_4WordENS1_9allocatorIS3_EEEERKNS_16StaticDictionaryE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = v3[6];
  v5 = v3[7];
  if (v4 >= v5)
  {
    v8 = v3[5];
    v9 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v8) >> 4);
    if (v9 + 1 > 0x111111111111111)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - v8) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x88888888888888)
    {
      v12 = 0x111111111111111;
    }

    else
    {
      v12 = v11;
    }

    v21[4] = v3 + 5;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v12);
    }

    v13 = 240 * v9;
    KB::Word::Word(v13, a2, *(a1 + 40));
    v7 = v13 + 240;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v13 + v14 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(v14, v15, v16);
    v17 = v3[5];
    v3[5] = v16;
    v3[6] = v13 + 240;
    v18 = v3[7];
    v3[7] = 0;
    v21[2] = v17;
    v21[3] = v18;
    v21[0] = v17;
    v21[1] = v17;
    result = std::__split_buffer<KB::Word>::~__split_buffer(v21);
  }

  else
  {
    result = KB::Word::Word(v4, a2, *(a1 + 40));
    v7 = result + 240;
  }

  v3[6] = v7;
  v19 = *(*(*(a1 + 32) + 8) + 48);
  *(v19 - 192) = *(v19 - 192) * *(a1 + 44);
  *(v19 - 136) |= 0x40000u;
  v20 = *(a1 + 40);
  if ((v20 + 1) >= 2 && v20 != *(a1 + 48))
  {
    *(v19 - 48) = 1;
  }

  return result;
}

void ___ZNK2KB22StaticDictionaryCursor15derive_word_idsERNSt3__16vectorI9TITokenIDNS1_9allocatorIS3_EEEERKNS_16StaticDictionaryE_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 48) + 4 * a1[6]);
  if (a2)
  {
    TokenID = LXEntryGetTokenID();
    if (TokenID)
    {
      v5 = TokenID;
    }

    else
    {
      v5 = 500;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v7 >= v6)
  {
    v9 = *v2;
    v10 = v7 - *v2;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v14);
    }

    v15 = (8 * v11);
    *v15 = v3;
    v15[1] = v5;
    v8 = 8 * v11 + 8;
    memcpy(0, v9, v10);
    v16 = *v2;
    *v2 = 0;
    *(v2 + 8) = v8;
    *(v2 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = v3;
    v7[1] = v5;
    v8 = (v7 + 2);
  }

  *(v2 + 8) = v8;
}

uint64_t KB::StaticDictionaryCursor::valid(KB::StaticDictionaryCursor *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  v2 = 8 * v1;
  while (1)
  {
    v3 = *this;
    if (*this)
    {
      break;
    }

    this = (this + 8);
    v2 -= 8;
    if (!v2)
    {
      return 0;
    }
  }

  CFRetain(*this);
  CFRelease(v3);
  return 1;
}

void TI::Favonius::SearchNodeTranspositionGeometryExtensions::branch_at_current_bound(TI::Favonius::SearchNodeTranspositionGeometryExtensions *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(this + 5);
  if (v3)
  {
    v5 = *(this + 6);
    v6 = *(v5 + 8 * v3 - 8);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
      v3 = *(this + 5);
      v5 = *(this + 6);
    }

    v7 = v3 - 1;
    v8 = *(v5 + 8 * (v3 - 1));
    if (v8)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v8);
    }

    *(this + 5) = v7;
    TI::Favonius::SearchNodeTranspositionGeometryExtensions::pop_nonletter_keys(this);
    v9 = *(this + 5);
    if (v9)
    {
      v10 = *(this + 18) + *(*(*(this + 6) + 8 * v9 - 8) + 32);
    }

    else
    {
      v10 = -INFINITY;
    }

    *(this + 6) = v10;
    v11 = *(this + 4);
    v12 = *(this + 11);
    if (v12)
    {
      v13 = *(this + 10);
      if (!v13 || (atomic_fetch_add((v13 + 8), 1u), (v12 = *(this + 11)) != 0))
      {
        atomic_fetch_add(v12, 1u);
      }

      v14 = *(this + 2);
      if (v14)
      {
        atomic_fetch_add((v14 + 8), 1u);
      }

      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        TI::Favonius::SearchNodeTransposition::create(&v17, v11, v13, v12, v14, v6, *(this + 16));
      }

      TI::Favonius::SearchNodeTransposition::create(&v17, v11, v13, v12, v14, 0, *(this + 16));
    }

    v15 = *(this + 10);
    if (v15)
    {
      atomic_fetch_add((v15 + 8), 1u);
    }

    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v16 = *(this + 2);
    if (v16)
    {
      atomic_fetch_add((v16 + 8), 1u);
    }

    operator new();
  }

  *a2 = 0;
}

uint64_t TI::Favonius::SearchNodeTranspositionGeometryExtensions::pop_nonletter_keys(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = this;
    v3 = v1 - 1;
    do
    {
      this = *(*(v2 + 48) + 8 * v3);
      v4 = *(*(this + 8) + 60);
      if (v4 & 2) != 0 || (v4 & 0x20) != 0 && (*(v2 + 68))
      {
        break;
      }

      this = WTF::RefCounted<TI::Favonius::KeyMatch>::deref(this);
      *(v2 + 40) = v3--;
    }

    while (v3 != -1);
  }

  return this;
}

void TI::Favonius::SearchNodeTranspositionGeometryExtensions::~SearchNodeTranspositionGeometryExtensions(TI::Favonius::SearchNodeTranspositionGeometryExtensions *this)
{
  TI::Favonius::SearchNodeTranspositionGeometryExtensions::~SearchNodeTranspositionGeometryExtensions(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE208;
  v2 = *(this + 11);
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    v4 = atomic_load(v3 + 2);
    if (v4 == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      atomic_fetch_add(v3 + 2, 0xFFFFFFFF);
    }
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(this + 5);
  v5 = *(this + 4);
  if (v5)
  {
    v6 = atomic_load(v5 + 2);
    if (v6 == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    }
  }

  TI::Favonius::SearchNodeSource::~SearchNodeSource(this);
}

void ___ZN2KB20UserDictionaryLoader14dispatch_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.textInput.userDictionaryLoader", attr);
  v2 = KB::UserDictionaryLoader::dispatch_queue(void)::queue;
  KB::UserDictionaryLoader::dispatch_queue(void)::queue = v1;
}

__n128 __Block_byref_object_copy__20073(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

void __Block_byref_object_dispose__20074(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_a8_40c17_ZTSKN2KB6StringE(uint64_t a1)
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

void __destroy_helper_block_a8_48c17_ZTSKN2KB6StringE(uint64_t a1)
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

void ___ZN2KB20UserDictionaryLoader15create_and_loadERKNS_6StringE_block_invoke_14(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = TIUserDictionaryOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Done loading UserDictionary trie installing on main thread.", "create_and_load_block_invoke"];;
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v4 = *(a1[4] + 8);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v4 + 48);
      if (v8)
      {
        v10 = a1[5];
        v9 = a1[6];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v8[1];
        *v8 = v10;
        v8[1] = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }
}

void __destroy_helper_block_a8_40c47_ZTSNSt3__110shared_ptrIN2KB14UserDictionaryEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_a8_40c47_ZTSNSt3__110shared_ptrIN2KB14UserDictionaryEEE(uint64_t result, uint64_t a2)
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

uint64_t std::__shared_ptr_pointer<KB::UserDictionary *,std::shared_ptr<KB::UserDictionary>::__shared_ptr_default_delete<KB::UserDictionary,KB::UserDictionary>,std::allocator<KB::UserDictionary>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::~__hash_table((v1 + 48));
    v2 = *(v1 + 24);
    while (v2)
    {
      v3 = v2;
      v2 = *v2;
      v6 = (v3 + 6);
      std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v6);
      v4 = v3[3];
      if (v4 && *(v3 + 22) == 1)
      {
        free(v4);
      }

      operator delete(v3);
    }

    v5 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<KB::UserDictionary *,std::shared_ptr<KB::UserDictionary>::__shared_ptr_default_delete<KB::UserDictionary,KB::UserDictionary>,std::allocator<KB::UserDictionary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::__shared_ptr_pointer<KB::UserDictionaryLoader *,std::shared_ptr<KB::UserDictionaryLoader>::__shared_ptr_default_delete<KB::UserDictionaryLoader,KB::UserDictionaryLoader>,std::allocator<KB::UserDictionaryLoader>>::__on_zero_shared(uint64_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(result + 24);
  if (v1)
  {
    v2 = TIUserDictionaryOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Destructing UserDictionaryLoader", "~UserDictionaryLoader"];
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(v4);
      if (WeakRetained)
      {
        v6 = +[TIUserDictionaryServer sharedInstance];
        [v6 removeObserver:WeakRetained];
      }
    }

    v7 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    std::unique_ptr<KB::WeakHolder>::reset[abi:nn200100]((v1 + 16), 0);
    v8 = *(v1 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<KB::UserDictionaryLoader *,std::shared_ptr<KB::UserDictionaryLoader>::__shared_ptr_default_delete<KB::UserDictionaryLoader,KB::UserDictionaryLoader>,std::allocator<KB::UserDictionaryLoader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

__n128 __Block_byref_object_copy__20156(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

BOOL KB::character_is_letter_modifier(UChar32 c)
{
  result = 1;
  if (c <= 729)
  {
    if ((c - 168) <= 0xC && ((1 << (c + 88)) & 0x1081) != 0)
    {
      return result;
    }

    return u_charType(c) == 4;
  }

  if (c != 730 && c != 732 && c != 901)
  {
    return u_charType(c) == 4;
  }

  return result;
}

void KB::MutableLexiconWrapper::~MutableLexiconWrapper(KB::MutableLexiconWrapper *this)
{
  KB::MutableLexiconWrapper::~MutableLexiconWrapper(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE3A8;
  v2 = *(this + 18);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 20);
  if (v3 && *(this + 158) == 1)
  {
    free(v3);
  }

  *this = &unk_283FDF030;
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](this + 112);
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](this + 80);
  v4 = *(this + 7);
  if (v4 && *(this + 54) == 1)
  {
    free(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 5) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    if (*(this + 14) == 1)
    {
      free(v6);
    }
  }
}

KB::MutableLexiconWrapper *KB::MutableLexiconWrapper::MutableLexiconWrapper(KB::MutableLexiconWrapper *this, const KB::String *a2, const KB::String *a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  *this = &unk_283FDF030;
  KB::String::String((this + 8), a2);
  *(this + 5) = 0;
  KB::String::String((this + 48), a2);
  *(this + 10) = &unk_283FDEFA0;
  *(this + 11) = 0;
  *(this + 13) = this + 80;
  *(this + 14) = &unk_283FDEFE8;
  *(this + 15) = 0;
  *(this + 17) = this + 112;
  *this = &unk_283FDE3A8;
  *(this + 18) = KB::MutableLexiconWrapper::create_mutable_lexicon(a2, a3, v6);
  KB::String::String((this + 152), a3);
  KB::CollatorWrapper::CollatorWrapper(&cf, *(this + 18), a2);
  v7 = *(this + 5);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = cf;
  cf = 0;
  *(this + 5) = v8;
  KB::String::operator=(this + 48, v11);
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::operator=[abi:nn200100](this + 80, v13);
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::operator=[abi:nn200100](this + 112, v14);
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](v14);
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v13);
  if (v12 && v11[6] == 1)
  {
    free(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return this;
}

uint64_t KB::MutableLexiconWrapper::create_mutable_lexicon(KB::MutableLexiconWrapper *this, const KB::String *a2, const KB::String *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*this)
  {
    v6 = *MEMORY[0x277D23168];
    KB::cf_string_impl<KB::String>(&value, this);
    v7 = value;
    CFDictionarySetValue(Mutable, v6, value);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (*a2)
  {
    v8 = *MEMORY[0x277D23148];
    KB::cf_string_impl<KB::String>(&value, a2);
    v9 = value;
    CFDictionarySetValue(Mutable, v8, value);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  KB::String::String(&value, "TextInput-Dynamic.");
  KB::String::append(&value, this);
  v10 = *MEMORY[0x277D23178];
  KB::cf_string_impl<KB::String>(&v20, &value);
  v11 = v20;
  CFDictionarySetValue(Mutable, v10, v20);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = LXLexiconCreateMutable();
  if (!v12)
  {
    LODWORD(v20) = 0x100000;
    WORD2(v20) = 0;
    BYTE6(v20) = 0;
    v21 = 0;
    v22 = 0;
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v13 = TIOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = &v22;
      if (v21)
      {
        v15 = v21;
      }

      if (!v20)
      {
        v15 = "";
      }

      *buf = 136315394;
      v17 = "create_mutable_lexicon";
      v18 = 2080;
      v19 = v15;
      _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%s Unable to create LXMutableLexicon: %s", buf, 0x16u);
    }

    if (v21 && BYTE6(v20) == 1)
    {
      free(v21);
    }
  }

  LXLexiconRepositoryAddOrUpdate();
  if (v24 && BYTE6(value) == 1)
  {
    free(v24);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

KB::String *KB::MutableLexiconWrapper::default_lexicon_name@<X0>(KB::MutableLexiconWrapper *this@<X0>, KB::String *a2@<X8>)
{
  v3 = KB::String::String(a2, "TextInput-Dynamic.");

  return KB::String::append(v3, this);
}

uint64_t KB::MutableLexiconWrapper::store(KB::MutableLexiconWrapper *this)
{
  if ((*(*this + 16))(this))
  {
    LXLexiconWrite();
  }

  return 1;
}

uint64_t KB::MutableLexiconWrapper::clear(KB::MutableLexiconWrapper *this)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    v3 = *(this + 18);

    return MEMORY[0x282181F68](v3);
  }

  return result;
}

void KB::MutableLexiconWrapper::increment_usage_count(KB::MutableLexiconWrapper *this, const KB::String *a2, uint64_t a3)
{
  if ((*(*this + 16))(this))
  {
    KB::cf_string_impl<KB::String>(&v5, a2);
    v4 = v5;
    LXLexiconIncrementUsageCount();
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

uint64_t KB::MutableLexiconWrapper::add_entry(KB::MutableLexiconWrapper *this, const KB::String *a2, uint64_t a3)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  KB::cf_string_impl<KB::String>(&v7, a2);
  v4 = v7;
  v5 = LXLexiconAdd();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t KB::MutableLexiconWrapper::add_entry_with_token_id(KB::MutableLexiconWrapper *this, const KB::String *a2, uint64_t a3, double a4, uint64_t a5)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  KB::cf_string_impl<KB::String>(&v10, a2);
  v6 = v10;
  Mutable = LXEntryCreateMutable();
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = LXLexiconAddEntryWithTokenID();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

void KB::MutableLexiconWrapper::write_debug_dump(KB::MutableLexiconWrapper *this, const KB::String *a2)
{
  if ((*(*this + 16))(this))
  {
    KB::cf_string_impl<KB::String>(&filePath, a2);
    v3 = filePath;
    v4 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
    if (v4)
    {
      v5 = v4;
      LXLexiconWriteDebugDump();
      CFRelease(v5);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void AddressBookTrieLoaderImpl::~AddressBookTrieLoaderImpl(AddressBookTrieLoaderImpl *this, uint64_t a2)
{
  AddressBookTrieLoaderImpl::~AddressBookTrieLoaderImpl(this, a2);

  JUMPOUT(0x2318BE270);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v3 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Removing contact observer", "~AddressBookTrieLoaderImpl"];
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v5 = +[TITransientLexiconManager sharedInstance];
  [v5 removeContactObserver:*(this + 6)];

  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 5) = 0;
  v7 = *(this + 4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 32))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v8 = *MEMORY[0x277D23168];
        KB::cf_string_impl<KB::String>(value, (a1 + 48));
        v9 = *value;
        CFDictionaryAddValue(Mutable, v8, *value);
        if (v9)
        {
          CFRelease(v9);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], @"TextInput-AddressBook");
        Transient = LXLexiconCreateTransient();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (Transient)
        {
          v10 = TIPersonalizationContactOSLogFacility();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Adding %ld contacts to lexicon", "register_as_contact_observer_block_invoke", objc_msgSend(v3, "count")];
            *value = 138412290;
            *&value[4] = v11;
            _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_INFO, "%@", value, 0xCu);
          }

          KB::StaticDictionary::create();
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void __destroy_helper_block_a8_32c50_ZTSNSt3__18weak_ptrI25AddressBookTrieLoaderImplEE48c17_ZTSKN2KB6StringE80c17_ZTSKN2KB6StringE112c17_ZTSKN2KB6StringE(uint64_t a1)
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

KB::String *__copy_helper_block_a8_32c50_ZTSNSt3__18weak_ptrI25AddressBookTrieLoaderImplEE48c17_ZTSKN2KB6StringE80c17_ZTSKN2KB6StringE112c17_ZTSKN2KB6StringE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  KB::String::String((a1 + 6), (a2 + 6));
  KB::String::String((a1 + 10), (a2 + 10));

  return KB::String::String((a1 + 14), (a2 + 14));
}

uint64_t __Block_byref_object_copy__20778(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL28background_load_address_bookN2KB10retain_ptrIP10_LXLexiconEERKNS_16StaticDictionaryEP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D6F380] sharedInputModeController];
  v2 = [v5 enabledInputModeIdentifiers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void addName(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, KB::StaticDictionary *a5, int a6, uint64_t a7, long double a8)
{
  v58 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = v12;
  if (v12 && [(__CFString *)v12 length]<= 0x100)
  {
    v39 = a6;
    v54 = 0;
    v55 = 0;
    v56 = " ,:;";
    v53 = 1048580;
    v57 = 0;
    KB::utf8_string(&v51, v13);
    KB::sbs_string_tokenize(&v42, &v51, &v53);
    v15 = v42;
    v14 = v43;
    if (v42 != v43)
    {
      v16 = (a7 + 8);
      if (a3)
      {
        v17 = (v43 - v42) > 0x20;
      }

      else
      {
        v17 = 1;
      }

      v18 = v17;
      v40 = v18;
      log10(a8);
      do
      {
        KB::String::String(&v49, v15);
        v46 = 0.0;
        KB::StaticDictionary::candidates_for_string(&v44, a5, &v49, &v46);
        v19 = v46;
        if ((KB::StaticDictionary::contains_surfaceform_insertion_with_candidates(&v44, 0, v46) & 1) == 0)
        {
          v21 = KB::count_letters_if_word(&v49, v20);
          if (v21 == 2)
          {
            v23 = v44;
            v24 = v45;
            if (v19 > 0.002 && v45 != v44)
            {
              goto LABEL_12;
            }
          }

          else
          {
            if (v21 < 2)
            {
              goto LABEL_12;
            }

            v23 = v44;
            v24 = v45;
          }

          v26 = v46;
          if (v24 == v23)
          {
            v33 = v46 > 0.0;
          }

          else
          {
            v27 = TILocaleIdentifierForLexiconID(v23[4].info);
            std::string::basic_string[abi:nn200100]<0>(__p, v27);
            v28 = *v16;
            v29 = 0.003;
            if (*v16)
            {
              v30 = v16;
              do
              {
                v31 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v28 + 4, __p);
                if ((v31 & 0x80u) == 0)
                {
                  v30 = v28;
                }

                v28 = *(v28 + ((v31 >> 4) & 8));
              }

              while (v28);
              v29 = 0.003;
              if (v30 != v16)
              {
                v29 = 0.003;
                if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v30 + 4) & 0x80) == 0)
                {
                  v29 = 0.003;
                  if (v30[14] != 0.0)
                  {
                    v29 = v30[14];
                  }
                }
              }
            }

            if (v48 < 0)
            {
              operator delete(__p[0]);
            }

            if (v26 > v29 && v45 != v44)
            {
              goto LABEL_12;
            }

            v33 = v26 > 0.0;
            if (v26 > 0.0 && v45 != v44)
            {
              v34 = WORD2(v49);
              if (!WORD2(v49))
              {
                KB::String::compute_length(&v49);
                v34 = WORD2(v49);
              }

              if (v34 < 3)
              {
                goto LABEL_12;
              }
            }
          }

          if (_unacceptable_confusable_characters(void)::once_token != -1)
          {
            dispatch_once(&_unacceptable_confusable_characters(void)::once_token, &__block_literal_global_20793);
          }

          if (!KB::any_of_string_characters_in_set(&v49, _unacceptable_confusable_characters(void)::excluded_set, v22))
          {
            goto LABEL_57;
          }

          v35 = !v33;
          if (v45 == v44)
          {
            v35 = 1;
          }

          if (v35)
          {
LABEL_57:
            __p[0] = &v44;
            std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](__p);
            KB::cf_string_impl<KB::String>(__p, &v49);
            v36 = __p[0];
            if (LXLexiconAdd())
            {
              LXLexiconIncrementUsageCount();
            }

            if ((v40 & 1) == 0)
            {
              KB::cf_string_impl<KB::String>(&v44, &v49);
              v37 = v44;
              v38 = LMVocabularyAddLemma();
              if (v37)
              {
                CFRelease(v37);
              }

              if (v38 && v39)
              {
                LMVocabularyEnumerateInflectionsOfLemma();
              }
            }

            if (v36)
            {
              CFRelease(v36);
            }

            goto LABEL_13;
          }
        }

LABEL_12:
        __p[0] = &v44;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](__p);
LABEL_13:
        if (v50 && BYTE6(v49) == 1)
        {
          free(v50);
        }

        v15 = (v15 + 32);
      }

      while (v15 != v14);
    }

    v49 = &v42;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v49);
    if (v52 && BYTE6(v51) == 1)
    {
      free(v52);
    }

    if (v56 && v55 == 1)
    {
      free(v56);
    }
  }
}

void ___ZL28background_load_address_bookN2KB10retain_ptrIP10_LXLexiconEERKNS_16StaticDictionaryEP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = a2;
  [v5 score];
  addName(v7, v4, 0, 0, v3, *(a1 + 80), a1 + 56, v6);
}

uint64_t std::map<std::string,float>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
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

void ___ZL28background_load_address_bookN2KB10retain_ptrIP10_LXLexiconEERKNS_16StaticDictionaryEP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke_41(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = a2;
  [v5 score];
  addName(v7, v4, 0, 0, v3, *(a1 + 80), a1 + 56, v6);
}

void ___ZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1__block_invoke_20(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        v6 = a1[6];
        if (v6)
        {
          CFRetain(v6);
          LXLexiconRepositoryAddOrUpdate();
          KB::retain_ptr<_LXLexicon *>::operator=((v5 + 40), v6);
          CFRelease(v6);
        }

        else
        {
          LXLexiconRepositoryAddOrUpdate();
          v7 = *(v5 + 40);
          if (v7)
          {
            CFRelease(v7);
            *(v5 + 40) = 0;
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void __destroy_helper_block_a8_32c93_ZTSKZZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_E3__0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_a8_32c93_ZTSKZZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_E3__0(void *result, void *a2)
{
  v2 = result;
  v3 = a2[5];
  result[4] = a2[4];
  result[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[6];
  result[6] = v4;
  if (v4)
  {
    result = CFRetain(v4);
    v2[6] = v4;
  }

  return result;
}

void __destroy_helper_block_a8_40c36_ZTSN2KB10retain_ptrIP10_LXLexiconEE56c114_ZTSNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEfNS_4lessIS6_EENS4_INS_4pairIKS6_fEEEEEE(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,sqlite3_stmt *>,std::__map_value_compare<std::string,std::__value_type<std::string,sqlite3_stmt *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sqlite3_stmt *>>>::destroy(*(a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

uint64_t __copy_helper_block_a8_40c36_ZTSN2KB10retain_ptrIP10_LXLexiconEE56c114_ZTSNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEfNS_4lessIS6_EENS4_INS_4pairIKS6_fEEEEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    CFRetain(v4);
    a1[5] = v4;
  }

  a1[8] = 0;
  a1[7] = a1 + 8;
  v5 = a1 + 7;
  v5[2] = 0;
  v6 = a2[7];

  return std::map<std::string,float>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(v5, v6, a2 + 8);
}

void ___ZL7addNameP8NSStringP10_LXLexiconPvjRKN2KB16StaticDictionaryEdbRKNSt3__13mapINS8_12basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEfNS8_4lessISF_EENSD_INS8_4pairIKSF_fEEEEEE_block_invoke(uint64_t a1, id a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  KB::String::String(v6, [a2 UTF8String]);
  KB::cf_string_impl<KB::String>(&v5, v6);
  v4 = v5;
  if (LXLexiconAdd())
  {
    LXLexiconIncrementUsageCount();
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v8)
  {
    if (v7 == 1)
    {
      free(v8);
    }
  }
}

uint64_t ___ZL35_unacceptable_confusable_charactersv_block_invoke(uint64_t a1, uint64_t a2)
{
  result = uset_openEmpty();
  _unacceptable_confusable_characters(void)::excluded_set = result;
  if (result)
  {
    MEMORY[0x2318BF270](result, 119808, 120831);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 688, 696);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 736, 739);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 7468, 7615);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 8305, 8348);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 11388, 11389);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 8448, 8527);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 127232, 127405);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 127462, 127487);

    JUMPOUT(0x2318BF2A0);
  }

  return result;
}

void KB::AddressBookTrieLoader::create()
{
  operator new();
}

{
  v4 = *MEMORY[0x277D85DE8];
  operator new();
}

uint64_t std::__shared_ptr_pointer<AddressBookTrieLoaderStub *,std::shared_ptr<AddressBookTrieLoaderStub>::__shared_ptr_default_delete<AddressBookTrieLoaderStub,AddressBookTrieLoaderStub>,std::allocator<AddressBookTrieLoaderStub>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<AddressBookTrieLoaderStub *,std::shared_ptr<AddressBookTrieLoaderStub>::__shared_ptr_default_delete<AddressBookTrieLoaderStub,AddressBookTrieLoaderStub>,std::allocator<AddressBookTrieLoaderStub>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t AddressBookTrieLoaderStub::handle@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AddressBookTrieLoaderStub::~AddressBookTrieLoaderStub(AddressBookTrieLoaderStub *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x2318BE270);
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

AddressBookTrieLoaderImpl *std::__shared_ptr_pointer<AddressBookTrieLoaderImpl *,std::shared_ptr<AddressBookTrieLoaderImpl>::__shared_ptr_default_delete<AddressBookTrieLoaderImpl,AddressBookTrieLoaderImpl>,std::allocator<AddressBookTrieLoaderImpl>>::__on_zero_shared(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    AddressBookTrieLoaderImpl::~AddressBookTrieLoaderImpl(result, a2);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<AddressBookTrieLoaderImpl *,std::shared_ptr<AddressBookTrieLoaderImpl>::__shared_ptr_default_delete<AddressBookTrieLoaderImpl,AddressBookTrieLoaderImpl>,std::allocator<AddressBookTrieLoaderImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t UnicodeCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  *a4 = 2;
  if (a3 >= 0x10000)
  {
    LOWORD(a3) = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  return (*(*a2 + 24))(a2, a3);
}

uint64_t UnicodeCharset::nextInput(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v11 = 0;
  result = (*(*a2 + 40))(a2, &v11);
  if (result)
  {
    *a4 = 2;
    __key = v11;
    v8 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
    if (v8)
    {
      v9 = v8[1] | 0x10000;
    }

    else
    {
      v9 = v11;
    }

    *a3 = v9;
    return 1;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t wideCharCompare(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  if (v2 > v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t UnicodeCompCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (a3 < 0x10000)
  {
    *a4 = 2;
  }

  else
  {
    v6 = *(*(a1 + 3416) + 4 * (a3 - 0x10000));
    *a4 = 2;
    result = (*(*a2 + 24))(a2, v6);
    if (v6 < 0x10000)
    {
      return result;
    }

    a3 = HIWORD(v6);
    *a4 += 2;
  }

  v8 = *(*a2 + 24);

  return v8(a2, a3);
}

uint64_t UnicodeCompCharset::nextInput(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v11 = 0;
  result = (*(*a2 + 40))(a2, &v11);
  if (result)
  {
    __key = v11;
    *a4 = 2;
    v9 = bsearch(&__key, (a1 + 8), *(a1 + 3424), 8uLL, uniCompInfoCompare);
    if (v9)
    {
      *a3 = v9[1] + 0x10000;
      if ((*(*a2 + 48))(a2, &v11) && v11)
      {
        __key += v11 << 16;
        v10 = bsearch(&__key, (a1 + 8), *(a1 + 3424), 8uLL, uniCompInfoCompare);
        if (v10)
        {
          *a3 = v10[1] + 0x10000;
          *a4 += 2;
          (*(*a2 + 40))(a2, &v11);
        }
      }
    }

    else
    {
      *a3 = __key;
    }

    return 1;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t uniCompInfoCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t VnInternalCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v5 = HIWORD(a3);
  *a4 = 4;
  (*(*a2 + 24))(a2, a3);
  v6 = *(*a2 + 24);

  return v6(a2, v5);
}

BOOL VnInternalCharset::nextInput(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = (*(*a2 + 56))(a2, a3) != 0;
  *a4 = 4 * result;
  return result;
}

uint64_t UnicodeUTF8Charset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v4 = a3;
  if (HIWORD(a3))
  {
    v4 = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  if (v4 > 0x7Fu)
  {
    if (v4 > 0x7FFu)
    {
      *a4 = 3;
      (*(*a2 + 16))(a2, (v4 >> 12) | 0xE0u);
      (*(*a2 + 16))(a2, (v4 >> 6) & 0x3F | 0x80);
    }

    else
    {
      *a4 = 2;
      (*(*a2 + 16))(a2, (v4 >> 6) | 0xC0u);
    }

    LOBYTE(v4) = v4 & 0x3F | 0x80;
  }

  else
  {
    *a4 = 1;
  }

  v6 = *(*a2 + 16);

  return v6(a2, v4);
}

uint64_t UnicodeUTF8Charset::nextInput(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v14 = 0;
  v13 = 0;
  *a4 = 0;
  result = (*(*a2 + 16))(a2, &v14 + 1);
  if (result)
  {
    *a4 = 1;
    v9 = HIBYTE(v14);
    if ((v14 & 0x8000u) == 0)
    {
LABEL_3:
      v10 = v9;
      __key = v9;
      v11 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
      if (v11)
      {
        v10 = v11[1] | 0x10000;
      }

      *a3 = v10;
      return 1;
    }

    if ((HIBYTE(v14) & 0xE0) == 0xC0)
    {
      result = (*(*a2 + 24))(a2, &v14);
      if (!result)
      {
        return result;
      }

      if ((v14 & 0xC0) == 0x80)
      {
        (*(*a2 + 16))(a2, &v14);
        *a4 = 2;
        v9 = v14 & 0x3F | ((HIBYTE(v14) & 0x1F) << 6);
        goto LABEL_3;
      }
    }

    else if ((HIBYTE(v14) & 0xF0) == 0xE0)
    {
      result = (*(*a2 + 24))(a2, &v14);
      if (!result)
      {
        return result;
      }

      if ((v14 & 0xC0) == 0x80)
      {
        (*(*a2 + 16))(a2, &v14);
        *a4 = 2;
        result = (*(*a2 + 24))(a2, &v13);
        if (!result)
        {
          return result;
        }

        if ((v13 & 0xC0) == 0x80)
        {
          (*(*a2 + 16))(a2, &v13);
          *a4 = 3;
          v9 = (HIBYTE(v14) << 12) | ((v14 & 0x3F) << 6) | v13 & 0x3F;
          goto LABEL_3;
        }
      }
    }

    *a3 = -1;
    return 1;
  }

  return result;
}

uint64_t UnicodeRefCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v5 = a3;
  if (HIWORD(a3))
  {
    v5 = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  if (v5 > 0x7Fu)
  {
    *a4 = 2;
    (*(*a2 + 16))(a2, 38);
    (*(*a2 + 16))(a2, 35);
    v9 = 0;
    v10 = 10000;
    v11 = 5;
    do
    {
      v12 = v5 / v10;
      v9 |= v12;
      if (v9)
      {
        ++*a4;
        (*(*a2 + 16))(a2, (v12 + 48));
        v9 = 1;
      }

      v5 %= v10;
      v10 /= 10;
      --v11;
    }

    while (v11);
    result = (*(*a2 + 16))(a2, 59);
    ++*a4;
  }

  else
  {
    *a4 = 1;
    v7 = *(*a2 + 16);

    return v7(a2, v5);
  }

  return result;
}

uint64_t UnicodeRefCharset::nextInput(uint64_t a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v24 = 0;
  *a4 = 0;
  result = (*(*a2 + 16))(a2, &v24);
  if (!result)
  {
    return result;
  }

  *a4 = 1;
  v9 = v24;
  if (v24 != 38)
  {
LABEL_31:
    v11 = v9;
    goto LABEL_32;
  }

  v10 = (*(*a2 + 24))(a2, &v24);
  v11 = 38;
  if (v10 && v24 == 35)
  {
    (*(*a2 + 16))(a2, &v24);
    ++*a4;
    if ((*(*a2 + 80))(a2))
    {
      v11 = 38;
      goto LABEL_32;
    }

    (*(*a2 + 24))(a2, &v24);
    v12 = *a2;
    if ((v24 & 0xDF) == 0x58)
    {
      (*(v12 + 16))(a2, &v24);
      ++*a4;
      if ((*(*a2 + 24))(a2, &v24))
      {
        v13 = 0;
        v14 = 0;
        v15 = MEMORY[0x277D85DE0];
        do
        {
          if ((*(v15 + 4 * v24 + 60) & 0x10000) == 0 || v13 > 3)
          {
            break;
          }

          (*(*a2 + 16))(a2, &v24);
          ++*a4;
          v16 = v24 - 48;
          if (v16 >= 0xA)
          {
            LOWORD(v16) = 0;
          }

          if (v24 - 65 <= 5)
          {
            v17 = v24 - 55;
          }

          else
          {
            v17 = v16;
          }

          v18 = v24 - 87;
          if (v24 - 97 > 5)
          {
            v18 = v17;
          }

          v14 = v18 + 16 * v14;
          ++v13;
        }

        while ((*(*a2 + 24))(a2, &v24));
LABEL_28:
        if ((*(*a2 + 24))(a2, &v24))
        {
          v11 = v9;
          if (v24 == 59)
          {
            (*(*a2 + 16))(a2, &v24);
            ++*a4;
            v11 = v14;
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if ((*(v12 + 24))(a2, &v24))
    {
      v19 = 0;
      v14 = 0;
      v20 = MEMORY[0x277D85DE0];
      do
      {
        if ((*(v20 + 4 * v24 + 60) & 0x400) == 0)
        {
          break;
        }

        if (v19 > 4)
        {
          break;
        }

        (*(*a2 + 16))(a2, &v24);
        ++*a4;
        v14 = v24 + 10 * v14 - 48;
        ++v19;
      }

      while ((*(*a2 + 24))(a2, &v24));
      goto LABEL_28;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_32:
  v21 = v11;
  __key = v11;
  v22 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
  if (v22)
  {
    v21 = v22[1] | 0x10000;
  }

  *a3 = v21;
  return 1;
}

uint64_t UnicodeHexCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (HIWORD(a3))
  {
    LOWORD(a3) = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  v6 = a3;
  if (a3 > 0xFFu)
  {
    *a4 = 3;
    (*(*a2 + 16))(a2, 38);
    (*(*a2 + 16))(a2, 35);
    (*(*a2 + 16))(a2, 120);
    v9 = 0;
    for (i = 12; i != -4; i -= 4)
    {
      v11 = (v6 >> i) & 0xF;
      v9 |= v11;
      if (v9)
      {
        ++*a4;
        if (v11 >= 0xA)
        {
          v12 = v11 + 55;
        }

        else
        {
          v12 = v11 | 0x30;
        }

        (*(*a2 + 16))(a2, v12);
        v9 = 1;
      }
    }

    result = (*(*a2 + 16))(a2, 59);
    ++*a4;
  }

  else
  {
    *a4 = 1;
    v7 = *(*a2 + 16);

    return v7(a2, v6);
  }

  return result;
}

uint64_t UnicodeCStringCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (HIWORD(a3))
  {
    LOWORD(a3) = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  v7 = a3;
  if (a3 <= 0x7Fu && ((a3 & 0x5F) != 0x58 ? (v8 = (*(MEMORY[0x277D85DE0] + 4 * a3 + 60) & 0x10000) == 0) : (v8 = 0), v8))
  {
    *a4 = 1;
    v14 = *(*a2 + 16);

    return v14(a2, v7);
  }

  else
  {
    *a4 = 2;
    (*(*a2 + 16))(a2, 92);
    (*(*a2 + 16))(a2, 120);
    v9 = 0;
    for (i = 12; i != -4; i -= 4)
    {
      v11 = (v7 >> i) & 0xF;
      v9 |= v11;
      if (v9)
      {
        ++*a4;
        if (v11 >= 0xA)
        {
          v12 = v11 + 55;
        }

        else
        {
          v12 = v11 | 0x30;
        }

        (*(*a2 + 16))(a2, v12);
        v9 = 1;
      }
    }

    result = (*(*a2 + 40))(a2);
    *(a1 + 872) = 1;
  }

  return result;
}

uint64_t UnicodeCStringCharset::nextInput(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v18 = 0;
  *a4 = 0;
  result = (*(*a2 + 16))(a2, &v18);
  if (result)
  {
    *a4 = 1;
    v9 = v18;
    if (v18 == 92)
    {
      if ((*(*a2 + 24))(a2, &v18) && (v18 & 0xDF) == 0x58)
      {
        (*(*a2 + 16))(a2, &v18);
        ++*a4;
        if ((*(*a2 + 24))(a2, &v18))
        {
          v10 = 0;
          v9 = 0;
          v11 = MEMORY[0x277D85DE0];
          do
          {
            if ((*(v11 + 4 * v18 + 60) & 0x10000) == 0 || v10 > 3)
            {
              break;
            }

            (*(*a2 + 16))(a2, &v18);
            ++*a4;
            v12 = v18 - 48;
            if (v12 >= 0xA)
            {
              LOWORD(v12) = 0;
            }

            if (v18 - 65 <= 5)
            {
              v13 = v18 - 55;
            }

            else
            {
              v13 = v12;
            }

            v14 = v18 - 87;
            if (v18 - 97 > 5)
            {
              v14 = v13;
            }

            v9 = v14 + 16 * v9;
            ++v10;
          }

          while ((*(*a2 + 24))(a2, &v18));
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 92;
      }
    }

    v15 = v9;
    __key = v9;
    v16 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
    if (v16)
    {
      v15 = v16[1] | 0x10000;
    }

    *a3 = v15;
    return 1;
  }

  return result;
}

void _createGlobalVnCharsetIfNeeded(void)
{
  if (!VnCharsetLibObj)
  {
    operator new();
  }
}

void UnicodeCharset::UnicodeCharset(UnicodeCharset *this, const unsigned __int16 *a2)
{
  v2 = 0;
  *this = &unk_283FDE580;
  v3 = UnicodeTable;
  *(this + 108) = UnicodeTable;
  for (i = 8; i != 860; i += 4)
  {
    v5 = *v3++;
    *(this + i) = v2 + v5;
    v2 += 0x10000;
  }

  qsort(this + 8, 0xD5uLL, 4uLL, wideCharCompare);
}

uint64_t CVnCharsetLib::getVnCharset(CVnCharsetLib *this, int a2)
{
  _createGlobalVnCharsetIfNeeded();
  if (a2 > 3)
  {
    if (a2 <= 6)
    {
      if (a2 == 4)
      {
        v4 = *(this + 1);
        if (!v4)
        {
          operator new();
        }
      }

      else
      {
        if (a2 != 6)
        {
          goto LABEL_17;
        }

        v4 = *(this + 5);
        if (!v4)
        {
          operator new();
        }
      }

      return v4;
    }

    if (a2 == 7)
    {
      v4 = *(this + 6);
      if (!v4)
      {
        operator new();
      }

      return v4;
    }

    if (a2 != 12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v4 = *(this + 3);
        if (!v4)
        {
          operator new();
        }
      }

      else
      {
        v4 = *(this + 4);
        if (!v4)
        {
          operator new();
        }
      }

      return v4;
    }

    if (!a2)
    {
      v4 = *this;
      if (!*this)
      {
        operator new();
      }

      return v4;
    }

    if (a2 != 1)
    {
LABEL_17:
      operator new();
    }
  }

  v4 = *(this + 2);
  if (!v4)
  {
    goto LABEL_17;
  }

  return v4;
}

id createAutoshiftRegularExpression(NSString *a1, NSString *a2, NSString *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = character_set_pattern_from_string(&stru_283FEF4D8.isa);
  v9 = MEMORY[0x277CCACA8];
  v10 = character_set_pattern_from_string(v7);

  v11 = character_set_pattern_from_string(v6);

  v12 = [v9 stringWithFormat:@"\\A|\\n|(?:%@){3}|((?:\\b\\w++(?:\\.\\w++)*)?(?:%@))(?:%@)*(?:%@)", v8, v10, v11, v8];

  v13 = MEMORY[0x277CCACA8];
  v14 = character_set_pattern_from_string(v5);

  v15 = [v13 stringWithFormat:@"(?:%@)(?:%@)*(?:%@)*\\Z", v12, v8, v14];

  v21 = 0;
  v16 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v15 options:16 error:&v21];
  v17 = v21;
  if (!v16)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v18 = TIOSLogFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed: %@", "createAutoshiftRegularExpression", v17];
      *buf = 138412290;
      v23 = v20;
      _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  return v16;
}

id character_set_pattern_from_string(NSString *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCAC68] escapedPatternForString:a1];
  v3 = [v1 stringWithFormat:@"[%@]", v2];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];

  return v4;
}

uint64_t __Block_byref_object_copy__21237(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t *KB::NgramCandidateRefinery::clean_favonius_generated_candidates(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while ((*(**(a1 + 32) + 200))(*(a1 + 32), v3))
    {
      v3 += 125;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_11;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 125; i != v4; i += 125)
      {
        if ((*(**(a1 + 32) + 200))(*(a1 + 32), i))
        {
          KB::Candidate::operator=(v3, i);
          v3 += 125;
        }
      }
    }
  }

LABEL_11:
  v7 = a2[1];

  return std::vector<KB::Candidate>::erase(a2, v3, v7);
}

uint64_t KB::NgramCandidateRefinery::get_num_candidates@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2 == 5 && (v4 = result, (result = *(result + 32)) != 0) && (result = (*(*result + 16))(result), (result & 1) != 0))
  {
    v5 = *(**(v4 + 32) + 224);

    return v5();
  }

  else
  {
    *a3 = 0;
    a3[16] = 0;
  }

  return result;
}

void KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v7 = a1[2];
  if (v7)
  {
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      v11 = v10;
      v14[4] = v9;
      v15 = v10;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v16, a5);
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      v12[9] = v9;
      v13 = v15;
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v14, v16);
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v12, v14);
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:nn200100]();
}

void KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_1::operator()(uint64_t a1, const KB::LanguageModel::PredictionInfo **a2, const KB::Candidate *a3, const KB::LanguageModelContext *a4, KB::CandidateCollection *a5, char a6)
{
  v22[125] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 8);
  if (v11 && (v13 = std::__shared_weak_count::lock(v11)) != 0)
  {
    v14 = v13;
    v15 = *a1;
    if (*a1)
    {
      v16 = *a2;
      for (i = a2[1]; v16 != i; v16 = (v16 + 160))
      {
        KB::Candidate::Candidate(v22, a3);
        while (v22[0])
        {
          v18 = v22[1] + 240 * v22[0];
          if ((*(v18 - 105) & 4) != 0)
          {
            break;
          }

          v19 = *(v18 - 232);
          v20 = (v18 - 224);
          if (v19)
          {
            v20 = v19;
          }

          if (*v20 == 32)
          {
            if (!v20[1])
            {
              break;
            }
          }

          else if (!*v20)
          {
            break;
          }

          KB::Candidate::pop_last_word(v22);
        }

        KB::NgramCandidateRefinery::post_processing_predictions(v15, v16, v22, a4, a5);
        KB::Candidate::~Candidate(v22);
      }
    }

    std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(*(a1 + 40), a5, a3, a4, a6);
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  else
  {
    v21 = *(a1 + 40);

    std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(v21, a5, a3, a4, a6);
  }
}

uint64_t KB::NgramCandidateRefinery::post_processing_predictions(KB::NgramCandidateRefinery *this, const KB::LanguageModel::PredictionInfo *a2, const KB::Candidate *a3, const KB::LanguageModelContext *a4, KB::CandidateCollection *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(&v61, a3);
  KB::LanguageModelContext::LanguageModelContext(v41, a4);
  if (*(a2 + 148) == 1)
  {
    v63 = 1;
  }

  if (*(a2 + 13) != *(a2 + 12))
  {
    v8 = 0;
    for (i = 0; 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3) > i; ++i)
    {
      v10 = (*(*this + 120))(this);
      v11 = (*(a2 + 12) + v8);
      if (v11[23] < 0)
      {
        v11 = *v11;
      }

      KB::String::String(&v51, v11);
      if (*(a2 + 148))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a2 + 36);
      }

      KB::DictionaryContainer::word_with_string_exhaustive(v10, &v51, v12, v55);
      if (v52)
      {
        v13 = BYTE6(v51) == 1;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        free(v52);
      }

      if (v60.lexicon_id == -2)
      {
        v60.lexicon_id = *(a2 + 36);
      }

      if (!LOWORD(v55[0]) && *(a2 + 150) != 1)
      {
        KB::Word::~Word(v55);
LABEL_69:
        v33 = 0;
        goto LABEL_72;
      }

      if (*(a2 + 149) == 1)
      {
        v58 = v58 & 0xFFFBFE7B | 0x100;
      }

      if (*(a2 + 150) == 1)
      {
        v58 |= 0x200u;
      }

      v14 = (*(a2 + 15) + v8);
      if (v14[23] < 0)
      {
        v14 = *v14;
      }

      KB::String::String(&v51, v14);
      KB::String::operator=(v55, &v51);
      if (v52 && BYTE6(v51) == 1)
      {
        free(v52);
      }

      v58 = v58 & 0xFAFFFFFF | ((*(a2 + 10) & 1) << 24) & 0xFBFFFFFF | (((*(a2 + 10) >> 1) & 1) << 26);
      if (*(a2 + 95) >= 0)
      {
        v15 = a2 + 72;
      }

      else
      {
        v15 = *(a2 + 9);
      }

      KB::String::String(&v51, v15);
      KB::String::operator=(v57, &v51);
      if (v52 && BYTE6(v51) == 1)
      {
        free(v52);
      }

      v57[8] = (*(**(this + 4) + 456))(*(this + 4), v60.lexicon_id, v41);
      v16 = *(this + 4);
      KB::Word::capitalized_string(&v51, v55);
      v17 = (*(*v16 + 496))(v16, &v51, 0xFFFFFFFFLL, v41, this + 24, 1);
      if (v52 && BYTE6(v51) == 1)
      {
        free(v52);
      }

      if (v17)
      {
        v58 |= 0x40000000u;
      }

      v18 = (*(*this + 120))(this);
      WORD2(v51) = 0;
      BYTE6(v51) = 0;
      v52 = ".,;:!?";
      LODWORD(v51) = 1048582;
      v53 = 0;
      if (v61)
      {
        v19 = v62 + 240 * v61;
        if ((*(v19 - 105) & 4) != 0)
        {
          if ((v59 & 0x4000000) != 0)
          {
            goto LABEL_53;
          }

          v20 = *(v19 - 232);
          if (!v20)
          {
            v20 = v19 - 224;
          }

          v48 = v20;
          v21 = *(v19 - 240);
          LODWORD(v49) = 0;
          HIDWORD(v49) = v21;
          v50 = 0;
          KB::String::iterator::initialize(&v48);
          if (!KB::String::contains(&v51, v50))
          {
            goto LABEL_53;
          }

LABEL_49:
          WORD2(v48) = 0;
          BYTE6(v48) = 0;
          v49 = " ";
          LODWORD(v48) = 1048577;
          BYTE1(v50) = 0;
          KB::Word::Word(&v51, &v48, &kTITokenIDUNK, 0);
          if (v49 && BYTE6(v48) == 1)
          {
            free(v49);
          }

          v54 |= 0x4000000u;
          KB::Candidate::append(&v61, &v51);
          KB::Word::~Word(&v51);
          goto LABEL_53;
        }

        if ((v59 & 0x4000000) == 0 && (*(v18 + 64) & 1) == 0)
        {
          goto LABEL_49;
        }
      }

LABEL_53:
      v56 = 1065353216;
      KB::Candidate::append(&v61, v55);
      v22 = v60;
      KB::Word::capitalized_string(&v51, v55);
      v23 = v22;
      KB::LanguageModelContext::append(v41, v23, &v51, (v58 >> 1) & 1);
      if (v52 && BYTE6(v51) == 1)
      {
        free(v52);
      }

      KB::Word::~Word(v55);
      v8 += 24;
    }
  }

  if (!v61)
  {
    goto LABEL_69;
  }

  v24 = v62 + 240 * v61;
  v25 = *(a2 + 6);
  *(v24 - 188) = v25;
  *(v24 - 184) = v25;
  v26 = *(a5 + 1);
  v27 = *(a5 + 2);
  if (v26 >= v27)
  {
    v29 = 0x1CAC083126E978D5 * ((v26 - *a5) >> 3);
    if ((v29 + 1) > 0x4189374BC6A7EFLL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v30 = 0x1CAC083126E978D5 * ((v27 - *a5) >> 3);
    v31 = 2 * v30;
    if (2 * v30 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x20C49BA5E353F7)
    {
      v32 = 0x4189374BC6A7EFLL;
    }

    else
    {
      v32 = v31;
    }

    v55[4] = a5;
    if (v32)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v32);
    }

    v34 = 1000 * v29;
    KB::Candidate::Candidate(1000 * v29, &v61);
    v28 = 1000 * v29 + 1000;
    v35 = *(a5 + 1);
    v36 = v34 + *a5 - v35;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a5, v35, v36);
    v37 = *a5;
    *a5 = v36;
    *(a5 + 1) = v28;
    v38 = *(a5 + 2);
    *(a5 + 2) = 0;
    v55[2] = v37;
    v55[3] = v38;
    v55[0] = v37;
    v55[1] = v37;
    std::__split_buffer<KB::Candidate>::~__split_buffer(v55);
  }

  else
  {
    v28 = KB::Candidate::Candidate(v26, &v61) + 1000;
  }

  *(a5 + 1) = v28;
  v33 = 1;
LABEL_72:
  v55[0] = &v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v55);
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

  KB::Candidate::~Candidate(&v61);
  return v33;
}

void std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::operator()(uint64_t a1, const KB::LanguageModel::PredictionInfo **a2, const KB::Candidate *a3, const KB::LanguageModelContext *a4)
{
  v6 = 0;
  memset(v4, 0, sizeof(v4));
  memset(v5, 0, sizeof(v5));
  KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_1::operator()(a1 + 8, a2, a3, a4, v4, 1);
  v7 = &v5[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = v5;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = &v4[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = v4;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
}

void std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy[abi:nn200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy[abi:nn200100](uint64_t a1)
{
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_283FDE910;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100]((a2 + 3), a1 + 24);
}

void std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__func(void *a1)
{
  *a1 = &unk_283FDE910;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2318BE270);
}

void *std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__func(void *a1)
{
  *a1 = &unk_283FDE910;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void KB::NgramCandidateRefinery::predictions_for_prediction_stems(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if ((*(*a1 + 16))(a1))
  {
    if (a2[1] != *a2)
    {
      KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(a1, a2, a3, a4);
    }

    v10 = *a4;
    v11 = a4[1];
    if (*a4 != v11)
    {
      do
      {
        if (*v10)
        {
          v12 = 240 * *v10;
          v13 = (v10[1] + 52);
          v14 = 1.0;
          do
          {
            v15 = *v13;
            v13 += 60;
            v14 = v14 * v15;
            v12 -= 240;
          }

          while (v12);
        }

        else
        {
          v14 = 1.0;
        }

        std::function<void ()(KB::Candidate &,float)>::operator()(*(a5 + 24), v10, v14);
        v10 += 125;
      }

      while (v10 != v11);
      v10 = *a4;
      v11 = a4[1];
    }

    v16 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v11 - v10) >> 3));
    if (v11 == v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v10, v11, v17, 1);
  }
}

uint64_t KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v6[0] = &unk_283FDE958;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  (*(*v4 + 512))(v4, a2, a3, v6, 1);
  return std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v6);
}

uint64_t std::function<void ()(KB::Candidate &,float)>::operator()(uint64_t a1, uint64_t a2, float a3)
{
  v8 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, &v8);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0,std::allocator<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::operator()(v4, v5, v6, v7);
}

__n128 std::__function::__func<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0,std::allocator<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDE958;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void KB::NgramCandidateRefinery::completions_for_completion_stems(KB::NgramCandidateRefinery *a1, const KB::Candidate **a2, uint64_t a3, uint64_t *a4, uint64_t a5, float a6)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(&v21, *a2, a2[1], 0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3));
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    KB::NgramCandidateRefinery::add_context_weights_batched(a1, &v21);
  }

  v11 = *a4;
  v12 = a4[1];
  v13 = v12 - *a4;
  if (v22 != v21)
  {
    KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(a1, &v21, a3, a4, a5, a6);
    v11 = *a4;
    v12 = a4[1];
  }

  v14 = (v13 + v11);
  v15 = v12 - v14;
  if (v12 != v14)
  {
    v16 = 0;
    v17 = vdupq_n_s64((v15 - 1000) / 0x3E8uLL);
    v18 = ((v15 - 1000) / 0x3E8uLL + 4) & 0xFFFFFFFFFFFFFCLL;
    do
    {
      v19 = vdupq_n_s64(v16);
      v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_22CC88AA0)));
      if (vuzp1_s16(v20, *v17.i8).u8[0])
      {
        v14[248] = 7;
      }

      if (vuzp1_s16(v20, *&v17).i8[2])
      {
        v14[498] = 7;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_22CC88A90)))).i32[1])
      {
        v14[748] = 7;
        v14[998] = 7;
      }

      v16 += 4;
      v14 += 1000;
    }

    while (v18 != v16);
  }

  v24 = &v21;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v24);
}

void KB::NgramCandidateRefinery::add_context_weights_batched(KB::NgramCandidateRefinery *a1, unsigned int **a2)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v27 = a2[1];
  if (*a2 == v27)
  {
    return;
  }

  v3 = a1;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  do
  {
    if (*v2)
    {
      v4 = *(v2 + 1);
      if (v2[248] == 7)
      {
        v2[248] = 1;
      }

      else if ((KB::NgramCandidateRefinery::should_not_score_token(v3, v4) & 1) == 0)
      {
        v5 = *(v3 + 4);
        KB::Word::capitalized_string(&v35, v4);
        v33 = *(v4 + 17);
        (*(*v5 + 408))(v5, &v35, &v33);
        if (v36)
        {
          if (BYTE6(v35) == 1)
          {
            free(v36);
          }
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(1);
    }

    v6 = v31;
    if (v31 >= v32)
    {
      v8 = v30;
      v9 = v31 - v30;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) + 1;
      if (v10 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * ((v32 - v30) >> 3) > v10)
      {
        v10 = 0x5555555555555556 * ((v32 - v30) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3) >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v11);
      }

      v12 = (8 * (v9 >> 3));
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v7 = v12 + 3;
      memcpy(v12 - v9, v8, v9);
      v30 = v12 - v9;
      v31 = v12 + 3;
      v32 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      v3 = a1;
    }

    else
    {
      *v31 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v7 = v6 + 3;
    }

    v31 = v7;
    v2 += 250;
  }

  while (v2 != v27);
  if (a2[1] == *a2)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  KB::LanguageModelContext::LanguageModelContext(&v35, (*a2 + 196));
  if (s_trace_logging_enabled)
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  KB::NgramCandidateRefinery::context_probability_of_batched_word(v3, a2, v29);
  v15 = *a2;
  v14 = a2[1];
  if (v14 == *a2)
  {
    goto LABEL_51;
  }

  v16 = 0;
  do
  {
    v17 = &v15[250 * v16];
    if (!*v17)
    {
      goto LABEL_50;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      if (*(*&v30[24 * v16] + v19) != 1)
      {
        goto LABEL_48;
      }

      v22 = *(v17 + 1);
      v23 = *(v29[0] + 24 * v16) + v20;
      *(v22 + v18 + 52) = *v23;
      v24 = (v23 + 16);
      if (*(v23 + 39) < 0)
      {
        v24 = *v24;
      }

      KB::String::String(&v33, v24);
      KB::String::operator=((v22 + v18 + 64), &v33);
      if (v34 && BYTE6(v33) == 1)
      {
        free(v34);
      }

      v25 = *(*(v29[0] + 24 * v16) + v20 + 8);
      if (v25)
      {
        *(v22 + v18 + 104) |= 0x1000000u;
        if ((v25 & 2) == 0)
        {
LABEL_41:
          if (!Mutable)
          {
            goto LABEL_48;
          }

          goto LABEL_45;
        }
      }

      else if ((v25 & 2) == 0)
      {
        goto LABEL_41;
      }

      *(v22 + v18 + 104) |= 0x4000000u;
      if (!Mutable)
      {
        goto LABEL_48;
      }

LABEL_45:
      KB::utf8_string(&v33, Mutable);
      KB::String::operator=((v22 + v18 + 160), &v33);
      if (v34 && BYTE6(v33) == 1)
      {
        free(v34);
      }

LABEL_48:
      ++v21;
      v20 += 40;
      v18 += 240;
      v19 += 2;
    }

    while (v21 < *v17);
    v15 = *a2;
    v14 = a2[1];
LABEL_50:
    ++v16;
  }

  while (v16 < 0x1CAC083126E978D5 * ((v14 - v15) >> 3));
LABEL_51:
  v33 = v29;
  std::vector<std::vector<KB::LikelihoodInfo>>::__destroy_vector::operator()[abi:nn200100](&v33);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v33 = v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v33);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v40);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v39);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  v35 = &v30;
  std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__destroy_vector::operator()[abi:nn200100](&v35);
}

uint64_t KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, float a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10 = a6;
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    v9 = 0x1CAC083126E978D5 * ((a4[1] - *a4) >> 3);
    (*(*a1 + 120))(a1);
    v11[0] = &unk_283FDE9A0;
    v11[1] = a1;
    v11[2] = a4;
    v11[3] = v11;
    operator new();
  }

  return result;
}

float std::__function::__func<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0,std::allocator<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0>,BOOL ()(KB::Candidate const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v44 = *a2;
  v4 = *(a1 + 8);
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    (*(*v5 + 48))(&v42);
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = v6[1];
    v9 = (*v6 + 1000 * **(a1 + 24));
    v38 = a2;
    v39 = v7;
    v40 = &v42;
    v41 = &v44;
    while (1)
    {
      if (v9 == v8)
      {
        v9 = v8;
        goto LABEL_9;
      }

      KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(&v38, v9);
      if (v10)
      {
        break;
      }

      v9 = (v9 + 1000);
    }

    if (v9 != v8)
    {
      for (i = (v9 + 1000); i != v8; i = (i + 1000))
      {
        KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(&v38, i);
        if ((v35 & 1) == 0)
        {
          KB::Candidate::operator=(v9, i);
          v9 = (v9 + 1000);
        }
      }
    }

LABEL_9:
    std::vector<KB::Candidate>::erase(v6, v9, *(*(a1 + 16) + 8));
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = *v12;
    v15 = v12[1];
    v16 = *v13;
    v17 = *v13 + 10;
    if (0x1CAC083126E978D5 * ((v15 - *v12) >> 3) > v17)
    {
      std::vector<KB::Candidate>::resize(v12, v17);
      v18 = *(a1 + 16);
      v13 = *(a1 + 24);
      v16 = *v13;
      v14 = *v18;
      v15 = v18[1];
    }

    if (v15 != v14 + 1000 * v16)
    {
      v15 = v14 + 1000 * v16;
      while (1)
      {
        if (!*(v15 + 888))
        {
          KB::Candidate::compute_string(v15);
        }

        v19 = *(v15 + 892);
        if (!*(v15 + 892))
        {
          KB::String::compute_length((v15 + 888));
          v19 = *(v15 + 892);
        }

        if (!*(a2 + 888))
        {
          KB::Candidate::compute_string(a2);
        }

        v20 = *(a2 + 892);
        if (!*(a2 + 892))
        {
          KB::String::compute_length((a2 + 888));
          v20 = *(a2 + 892);
        }

        v21 = v19 - v20;
        *(*(v15 + 8) + 240 * *v15 - 96) = v21;
        *(v15 + 960) = 1;
        v22 = *(a2 + 748);
        v23 = *(a2 + 756);
        v24 = *(a2 + 760);
        v38 = *(a2 + 764);
        LODWORD(v39) = *(a2 + 772);
        if (*(a2 + 888))
        {
          if (!v20)
          {
            goto LABEL_29;
          }
        }

        else
        {
          KB::Candidate::compute_string(a2);
          v20 = *(a2 + 892);
          if (!*(a2 + 892))
          {
LABEL_29:
            KB::String::compute_length((a2 + 888));
            v20 = *(a2 + 892);
          }
        }

        v25 = **(a1 + 40);
        if (v21 < 1)
        {
          v26 = 0.0;
        }

        else
        {
          if (v20 >= 5)
          {
            v20 = 5;
          }

          v26 = logf(TI::Favonius::SearchParameters::k_prediction_costs[v20]) + 0.0;
          if (v21 != 1)
          {
            v26 = v26 + ((v21 - 1) * -0.22314);
          }
        }

        v27 = 1.0;
        if (*v15)
        {
          v28 = 240 * *v15;
          v29 = (*(v15 + 8) + 52);
          do
          {
            v30 = *v29;
            v29 += 60;
            v27 = v27 * v30;
            v28 -= 240;
          }

          while (v28);
        }

        v31 = v22 + ((1.0 - v25) * (v26 * v24));
        v32 = logf(v27);
        *(v15 + 748) = v31;
        *(v15 + 752) = v32;
        *(v15 + 756) = v23;
        *(v15 + 760) = v24;
        *(v15 + 772) = v39;
        *(v15 + 764) = v38;
        result = v31 + (v24 * (v23 + v32));
        *(v15 + 744) = result;
        v15 += 1000;
        v33 = *(a1 + 16);
        if (v15 == v33[1])
        {
          v13 = *(a1 + 24);
          v14 = *v33;
          break;
        }
      }
    }

    *v13 = 0x1CAC083126E978D5 * ((v15 - v14) >> 3);
    if (v42 >= 0xFu && v43)
    {
      MEMORY[0x2318BE250](v43, 0x1000C8077774924);
    }
  }

  else
  {
    v36 = std::__throw_bad_function_call[abi:nn200100]();
    return KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(v36, v37);
  }

  return result;
}

float KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(uint64_t a1, KB::Candidate *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a2 + 444) || (KB::Candidate::compute_string(a2), *(a2 + 444)))
  {
    KB::Candidate::capitalized_string(&v16, a2);
    KB::Candidate::capitalized_string(&v14, v4);
    v7 = KB::string_preserves_surface_form_features_of_prefix(&v16, &v14, v5, v3);
    if (v15 && BYTE6(v14) == 1)
    {
      free(v15);
    }

    if (v17 && BYTE6(v16) == 1)
    {
      free(v17);
    }

    if (v7)
    {
      KB::Candidate::capitalized_string(&v16, a2);
      v8 = *(v3 + 24);
      if (v8)
      {
        (*(*v8 + 48))(&v14);
        if (v17 && BYTE6(v16) == 1)
        {
          free(v17);
        }

        if (v14 >= 0xFu)
        {
          if (v15)
          {
            MEMORY[0x2318BE250](v15, 0x1000C8077774924);
          }
        }
      }

      else
      {
        v9 = std::__throw_bad_function_call[abi:nn200100]();
        return KB::NgramCandidateRefinery::long_prediction_geometric_log_likelihood(v9, v10, v11, v12, v13);
      }
    }
  }

  return result;
}

float KB::NgramCandidateRefinery::long_prediction_geometric_log_likelihood(KB::NgramCandidateRefinery *this, unsigned int a2, int a3, float a4, float a5)
{
  if (a3 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    if (a2 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = a2;
    }

    v9 = logf(TI::Favonius::SearchParameters::k_prediction_costs[v8]) + 0.0;
    if (a3 != 1)
    {
      v9 = v9 + ((a3 - 1) * -0.22314);
    }
  }

  return (1.0 - a5) * (v9 * a4);
}

__n128 std::__function::__func<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0,std::allocator<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0>,BOOL ()(KB::Candidate const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDE9E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_1,std::allocator<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_1>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDE9A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t KB::NgramCandidateRefinery::should_not_score_token(KB::NgramCandidateRefinery *this, const KB::Word *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  result = (*(*this + 16))(this);
  if (result)
  {
    v5 = *(this + 4);
    KB::Word::capitalized_string(&v11, a2);
    v10 = *(a2 + 17);
    v6 = (*(*v5 + 408))(v5, &v11, &v10);
    if (v12 && BYTE6(v11) == 1)
    {
      free(v12);
    }

    v7 = *(a2 + 26);
    if (v6)
    {
      if ((v7 & 0x80022100) != 0x2000 || *(a2 + 28) != 0)
      {
        return 0;
      }

      return *(a2 + 31) == 0;
    }

    else
    {
      return (v7 & 0x2040000) == 0x2000000;
    }
  }

  return result;
}

void KB::NgramCandidateRefinery::context_probability_of_batched_word(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    v8 = 0;
    do
    {
      v9 = &v7[250 * v8];
      if (*v9)
      {
        v10 = 0;
        do
        {
          (*(**(a1 + 32) + 24))(*(a1 + 32));
          ++v10;
        }

        while (v10 < *v9);
        v7 = *a2;
        v6 = a2[1];
      }

      ++v8;
    }

    while (v8 < 0x1CAC083126E978D5 * ((v6 - v7) >> 3));
  }

  if ((*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    v11 = *(**(a1 + 32) + 432);

    v11();
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      do
      {
        std::vector<KB::LikelihoodInfo>::vector[abi:nn200100](&v26, *v12, &KB::k_invalid_likelihood_value);
        v14 = *(a3 + 8);
        v15 = *(a3 + 16);
        if (v14 >= v15)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
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

          v28[4] = a3;
          if (v20)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v20);
          }

          v21 = 24 * v17;
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v26;
          *(v21 + 16) = v27;
          v26 = 0uLL;
          v27 = 0;
          v16 = 24 * v17 + 24;
          v22 = *(a3 + 8) - *a3;
          v23 = 24 * v17 - v22;
          memcpy((v21 - v22), *a3, v22);
          v24 = *a3;
          *a3 = v23;
          *(a3 + 8) = v16;
          v25 = *(a3 + 16);
          *(a3 + 16) = 0;
          v28[2] = v24;
          v28[3] = v25;
          v28[0] = v24;
          v28[1] = v24;
          std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(v28);
        }

        else
        {
          *v14 = 0;
          v14[1] = 0;
          v14[2] = 0;
          *v14 = v26;
          v14[2] = v27;
          v26 = 0uLL;
          v27 = 0;
          v16 = (v14 + 3);
        }

        *(a3 + 8) = v16;
        v28[0] = &v26;
        std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](v28);
        v12 += 250;
      }

      while (v12 != v13);
    }
  }
}

void KB::NgramCandidateRefinery::set_text_blocklisted_flag(void *a1, uint64_t a2, uint64_t a3)
{
  v38[3] = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    if (*a2 != v7)
    {
      do
      {
        if (*v6)
        {
          v8 = v6[1];
          v9 = 240 * *v6;
          do
          {
            if ((*(v8 + 135) & 4) == 0)
            {
              goto LABEL_14;
            }

            v10 = v8[2];
            if (!v8[2])
            {
              KB::String::compute_length(v8);
              v10 = v8[2];
            }

            if (v10 != 1)
            {
              goto LABEL_14;
            }

            v11 = *(v8 + 1);
            if (!v11)
            {
              v11 = v8 + 8;
            }

            if (*v11 != 32 || v11[1])
            {
              v12 = a1[4];
              v32 = v11;
              LODWORD(v33) = 0;
              HIDWORD(v33) = *v8;
              LODWORD(__p) = 0;
              KB::String::iterator::initialize(&v32);
              *(v8 + 17) = (*(*v12 + 304))(v12, __p);
            }

            else
            {
LABEL_14:
              v13 = *(v8 + 26);
              if ((v13 & 0x40000) == 0 && (*(v8 + 135) & 4) == 0 && (v13 & 0x800000) == 0 && *v8 && ((*(*a1[4] + 24))(a1[4]) & 1) == 0)
              {
                v14 = a1[4];
                KB::Word::capitalized_string(&v32, v8);
                v15 = KB::LanguageModel::id_for_dynamic_engine_word(v14, &v32, (a1 + 3));
                if (v33 && BYTE6(v32) == 1)
                {
                  free(v33);
                }

                *(v8 + 17) = v15;
                if (!HIDWORD(v15))
                {
                  v16 = *(v8 + 26);
                  if ((v16 & 0x80020100) == 0 && !*(v8 + 28))
                  {
                    *(v8 + 26) = v16 | 4;
                  }
                }
              }
            }

            v8 += 120;
            v9 -= 240;
          }

          while (v9);
        }

        KB::LanguageModelContext::LanguageModelContext(&v32, (v6 + 98));
        if (*v6)
        {
          v17 = 0;
          v18 = -240;
          do
          {
            if (v18 != -240)
            {
              v19 = v6[1];
              v20 = (v19 + v18);
              v21 = (*(*a1[4] + 144))(a1[4]);
              if (v21)
              {
                if ((*(v20 + 135) & 4) == 0)
                {
                  v22 = (v19 + v18 + 16);
                  if (*(v19 + v18 + 8))
                  {
                    v22 = *(v19 + v18 + 8);
                  }

                  if (*v22 && (*v22 != 32 || v22[1]))
                  {
                    v23 = v19 + v18;
                    v24 = *(v19 + v18 + 136);
                    KB::Word::capitalized_string(&v30, v20);
                    v25 = v24;
                    KB::LanguageModelContext::append(&v32, v25, &v30, (*(v23 + 104) >> 1) & 1);
                    if (v31)
                    {
                      if (BYTE6(v30) == 1)
                      {
                        free(v31);
                      }
                    }
                  }
                }
              }

              else
              {
                KB::NgramCandidateRefinery::update_context(v21, &v32, (v19 + v18));
              }
            }

            v26 = v6[1];
            v27 = a1[4];
            KB::Word::capitalized_string(&v30, (v26 + v18 + 240));
            v28 = (*(*v27 + 488))(v27, &v30, *(v26 + v18 + 376), &v32, a3);
            if (v31)
            {
              v29 = BYTE6(v30) == 1;
            }

            else
            {
              v29 = 0;
            }

            if (v29)
            {
              free(v31);
            }

            if (v28)
            {
              *(v26 + v18 + 344) |= 0x40000000u;
            }

            ++v17;
            v18 += 240;
          }

          while (v17 < *v6);
        }

        v30 = v38;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v30);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v37);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v36);
        if (__p)
        {
          v35 = __p;
          operator delete(__p);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v33);
        }

        v6 += 125;
      }

      while (v6 != v7);
    }
  }
}

void KB::NgramCandidateRefinery::update_context(KB::NgramCandidateRefinery *this, KB::LanguageModelContext *a2, const KB::Word *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 135) & 4) == 0)
  {
    v4 = *(a3 + 1);
    if (!v4)
    {
      v4 = a3 + 16;
    }

    if (*v4 && (*v4 != 32 || v4[1]))
    {
      v6 = *(a3 + 17);
      KB::Word::capitalized_string(&v8, a3);
      v7 = v6;
      KB::LanguageModelContext::append(a2, v7, &v8, (*(a3 + 26) >> 1) & 1);
      if (v9)
      {
        if (BYTE6(v8) == 1)
        {
          free(v9);
        }
      }
    }
  }
}

void KB::NgramCandidateRefinery::refine_candidates(KB::NgramCandidateRefinery *a1, unsigned int **a2, uint64_t a3)
{
  KB::NgramCandidateRefinery::add_context_weights_batched(a1, a2);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      if (*v5)
      {
        v7 = 240 * *v5;
        v8 = (*(v5 + 1) + 52);
        v9 = 1.0;
        do
        {
          v10 = *v8;
          v8 += 60;
          v9 = v9 * v10;
          v7 -= 240;
        }

        while (v7);
      }

      else
      {
        v9 = 1.0;
      }

      std::function<void ()(KB::Candidate &,float)>::operator()(*(a3 + 24), v5, v9);
      v5 += 250;
    }

    while (v5 != v6);
    v5 = *a2;
    v6 = a2[1];
  }

  v11 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v6 - v5) >> 3));
  if (v6 == v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v5, v6, v12, 1);
}

uint64_t KB::NgramCandidateRefinery::does_language_model_support_completions(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 144);

  return v3();
}

uint64_t KB::NgramCandidateRefinery::does_language_model_support_fragment_conditional_prob(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 192);

  return v3();
}

uint64_t KB::NgramCandidateRefinery::does_language_model_support_multilingual(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 184);

  return v3();
}

uint64_t KB::NgramCandidateRefinery::does_language_model_provide_inline_completions(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 160);

  return v3();
}

void KB::NgramCandidateRefinery::~NgramCandidateRefinery(KB::NgramCandidateRefinery *this)
{
  KB::NgramCandidateRefinery::~NgramCandidateRefinery(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE798;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void KB::UnigramCandidateRefinery::lexicon_id_vector(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void KB::UnigramCandidateRefinery::predictions_for_prediction_stems(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a4[1];
  v5 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v4 - *a4) >> 3));
  if (v4 == *a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a4, v4, v6, 1);
}

void KB::UnigramCandidateRefinery::completions_for_completion_stems(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a4[1];
  v5 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v4 - *a4) >> 3));
  if (v4 == *a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a4, v4, v6, 1);
}

void KB::UnigramCandidateRefinery::refine_candidates(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v2, v3, v5, 1);
}

void KB::UnigramCandidateRefinery::~UnigramCandidateRefinery(KB::UnigramCandidateRefinery *this)
{
  *this = &unk_283FDE838;
  v1 = *(this + 1);
  if (v1)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v1);
  }

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE838;
  v1 = *(this + 1);
  if (v1)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v1);
  }
}

uint64_t KB::NgramCandidateRefinery::NgramCandidateRefinery(uint64_t a1, atomic_uint **a2, void *a3, int a4, int a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283FDE798;
  v6 = *a2;
  *(a1 + 24) = *a2;
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  v7 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = a4;
  if (a5)
  {
    (*(**(a1 + 32) + 96))(*(a1 + 32));
  }

  return a1;
}

void std::__shared_ptr_emplace<KB::NgramCandidateRefinery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDE8D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::NgramCandidateRefinery::context_probability_of_word(KB::NgramCandidateRefinery *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  (*(**(this + 4) + 24))(*(this + 4));
  if ((*(**(this + 4) + 16))(*(this + 4)))
  {
    v7 = *(**(this + 4) + 424);
    v6.n128_f32[0] = a2;

    v7(v6);
  }

  else
  {
    *a3 = KB::k_invalid_likelihood_value;
    *(a3 + 8) = dword_27D9EBB28;
    if (byte_27D9EBB47 < 0)
    {
      v8 = *aInvalidLikelih_2;
      v9 = *&aInvalidLikelih_2[8];

      std::string::__init_copy_ctor_external((a3 + 16), v8, v9);
    }

    else
    {
      *(a3 + 16) = *aInvalidLikelih_2;
      *(a3 + 32) = *&aInvalidLikelih_2[16];
    }
  }
}

void KB::NgramCandidateRefinery::add_context_weight(KB::NgramCandidateRefinery *this, KB::Word *a2, const KB::LanguageModelContext *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (KB::NgramCandidateRefinery::should_not_score_token(this, a2))
  {
    *(a2 + 12) = 0;
    return;
  }

  v6 = *(this + 4);
  KB::Word::capitalized_string(&v16, a2);
  v14 = *(a2 + 17);
  v7 = (*(*v6 + 408))(v6, &v16, &v14);
  if (v17)
  {
    v8 = BYTE6(v16) == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    free(v17);
  }

  if (v7)
  {
    if (s_trace_logging_enabled == 1)
    {
      Mutable = CFStringCreateMutable(0, 0);
    }

    else
    {
      Mutable = 0;
    }

    KB::Word::capitalized_string(&v14, a2);
    KB::NgramCandidateRefinery::context_probability_of_word(this, *(a2 + 13), &v16);
    if (v15 && BYTE6(v14) == 1)
    {
      free(v15);
    }

    *(a2 + 52) = v16;
    v10 = (*(**(this + 4) + 16))(*(this + 4));
    v11 = 1.0;
    if (v10)
    {
      v11 = (*(**(this + 4) + 456))(*(this + 4), *(a2 + 34), a3, 1.0);
    }

    *(a2 + 24) = v11;
    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    KB::String::String(&v14, p_p);
    KB::String::operator=((a2 + 64), &v14);
    if (v15 && BYTE6(v14) == 1)
    {
      free(v15);
    }

    v13 = v17;
    if (v17)
    {
      *(a2 + 26) |= 0x1000000u;
      if ((v13 & 2) == 0)
      {
LABEL_26:
        if (!Mutable)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_26;
    }

    *(a2 + 26) |= 0x4000000u;
    if (!Mutable)
    {
LABEL_33:
      if (v19 < 0)
      {
        operator delete(__p);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return;
    }

LABEL_30:
    KB::utf8_string(&v14, Mutable);
    KB::String::operator=((a2 + 160), &v14);
    if (v15 && BYTE6(v14) == 1)
    {
      free(v15);
    }

    goto LABEL_33;
  }
}

void KB::ChooseTopQualityAutocorrection::filter_candidates(KB::ChooseTopQualityAutocorrection *this, const KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  if (*a2 != a2[1])
  {
    v25[2] = v7;
    v25[3] = v6;
    v25[14] = v4;
    v25[15] = v5;
    KB::CandidateCollection::CandidateCollection(v21, a2);
    v12 = expf(*(*a2 + 186));
    KB::ChooseTopQualityAutocorrection::filter_candidates_subset(this, a2, a3, a4, v12);
    if (*a2 != a2[1])
    {
      v13 = 0;
      v14 = 125;
      while (1)
      {
        v15 = v13;
        KB::CandidateCollection::CandidateCollection(&v16, v21);
        std::vector<KB::Candidate>::erase(&v16, v16, &v16[v14]);
        if (v16 == v17)
        {
          break;
        }

        KB::ChooseTopQualityAutocorrection::filter_candidates_subset(this, &v16, a3, a4, v12);
        if (v16 == v17)
        {
          break;
        }

        std::vector<KB::Candidate>::push_back[abi:nn200100](a2 + 3, v16);
        v25[0] = v20;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v25[0] = v19;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v25[0] = v18;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v25[0] = &v16;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v13 = 1;
        v14 = 250;
        if (v15)
        {
          goto LABEL_9;
        }
      }

      v25[0] = v20;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = v19;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = v18;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = &v16;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
    }

LABEL_9:
    v16 = &v24;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
    v16 = &v23;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
    v16 = &v22;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
    v16 = v21;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
  }
}

void KB::ChooseTopQualityAutocorrection::filter_candidates_subset(KB::ChooseTopQualityAutocorrection *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4, float a5)
{
  v202[2] = *MEMORY[0x277D85DE8];
  if (*a2 == *(a2 + 1))
  {
    return;
  }

  KB::Candidate::capitalized_string(&v191, *a2);
  KB::Candidate::capitalized_string(v189, a3);
  v12 = KB::String::equal(v189, &v191, 1, v10, v11);
  if (v189[1] && BYTE6(v189[0]) == 1)
  {
    free(v189[1]);
  }

  KB::Candidate::capitalized_string(v189, (a3 + 2168));
  v15 = KB::String::equal(v189, &v191, 1, v13, v14);
  if (v189[1] && BYTE6(v189[0]) == 1)
  {
    free(v189[1]);
  }

  v178 = 0;
  memset(v176, 0, sizeof(v176));
  memset(v177, 0, sizeof(v177));
  std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(v177, 0, *(a2 + 6), *(a2 + 7), 0x1CAC083126E978D5 * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(&v176[1] + 1, 0, *(a2 + 3), *(a2 + 4), 0x1CAC083126E978D5 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  KB::Candidate::capitalized_string(v189, a3);
  v19 = KB::String::equal(v189, &v191, 0, v16, v17);
  if (v189[1] && BYTE6(v189[0]) == 1)
  {
    free(v189[1]);
  }

  if ((*(a2 + 100) & 1) == 0 || v19)
  {
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v178 |= 1u;
    if (!v19)
    {
LABEL_13:
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_23:
      v169 = v15;
      v172 = this;
      v23 = *a2;
      KB::Candidate::capitalized_string(&v200, a3);
      KB::Candidate::capitalized_string(&v197, v23);
      v24 = WORD2(v200);
      if (!WORD2(v200))
      {
        KB::String::compute_length(&v200);
        v24 = WORD2(v200);
      }

      v25 = WORD2(v197);
      if (!WORD2(v197))
      {
        KB::String::compute_length(&v197);
        v25 = WORD2(v197);
      }

      if (v25 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      v27 = v201;
      if (!v201)
      {
        v27 = v202;
      }

      v189[0] = v27;
      LODWORD(v189[1]) = 0;
      HIDWORD(v189[1]) = v200;
      LODWORD(v190[0]) = 0;
      KB::String::iterator::initialize(v189);
      v181 = *v189;
      v182 = v190[0];
      v28 = v198;
      if (!v198)
      {
        v28 = v199;
      }

      *&v183 = v28;
      DWORD2(v183) = 0;
      HIDWORD(v183) = v197;
      LODWORD(v184) = 0;
      KB::String::iterator::initialize(&v183);
      v189[0] = 0;
      v189[1] = v189;
      v190[0] = 0x3002000000;
      v190[1] = __Block_byref_object_copy__21274;
      v29 = *(a3 + 251);
      v190[2] = __Block_byref_object_dispose__21275;
      v190[3] = v29;
      *&v187[0].lexicon_id = v181;
      v188[0] = v182;
      std::__advance[abi:nn200100]<KB::String::iterator>(v187, v26);
      v30 = 0;
      lexicon_id = v187[1].lexicon_id;
      v194 = v181;
      v195 = v182;
      v196 = 0;
      v185 = v183;
      v186 = v184;
      v187[0] = MEMORY[0x277D85DD0];
      v187[1] = 0x40000000;
      v188[0] = ___ZN2KB30ChooseTopQualityAutocorrection38case_sens_position_of_first_differenceERKNS_6StringERKNSt3__16vectorIjNS4_9allocatorIjEEEES3__block_invoke;
      v188[1] = &unk_278733168;
      v188[2] = v189;
      v188[3] = a3 + 2008;
      if (DWORD2(v181) != lexicon_id)
      {
        do
        {
          v179 = v186;
          v180 = v195;
          if (!(v188[0])(v187, &v180, &v179))
          {
            break;
          }

          ++v196;
          KB::String::iterator::operator++(&v194);
          KB::String::iterator::operator++(&v185);
        }

        while (DWORD2(v194) != lexicon_id);
        v30 = v196;
      }

      _Block_object_dispose(v189, 8);
      v32 = KB::Candidate::length(a3);
      v33 = KB::Candidate::index_of_word_containing_position(a3, v30);
      if (KB::Candidate::does_word_begin_at_position(a3, v30))
      {
        v33 -= !KB::Candidate::does_word_begin_at_position(v23, v30);
      }

      v167 = KB::Candidate::length_to_word(a3, v33);
      v171 = KB::Candidate::length(v23);
      v170 = KB::Candidate::length(a3);
      if (v198)
      {
        v34 = v198;
      }

      else
      {
        v34 = v199;
      }

      v187[0] = v34;
      v35 = v197;
      v187[1].lexicon_id = 0;
      v187[1].word_id = v197;
      LODWORD(v188[0]) = 0;
      KB::String::iterator::initialize(v187);
      *v189 = *&v187[0].lexicon_id;
      v190[0] = v188[0];
      std::__advance[abi:nn200100]<KB::String::iterator>(v189, v30);
      *&v185 = v34;
      DWORD2(v185) = v35;
      HIDWORD(v185) = v35;
      LODWORD(v186) = 0;
      KB::String::iterator::initialize(&v185);
      v36 = KB::String::String(&v194, v189, &v185);
      v175 = v30;
      v168 = v32;
      if (KB::string_has_precomposed_diacritic_letters(v36, v37) || KB::string_has_separated_diacritics(&v194, v38))
      {
        v39 = 1;
      }

      else
      {
        v40 = *(a4 + 5);
        v41 = &v195;
        if (v40)
        {
          if (*(&v194 + 1))
          {
            v42 = *(&v194 + 1);
          }

          else
          {
            v42 = &v195;
          }

          v189[0] = v42;
          v43 = v194;
          LODWORD(v189[1]) = 0;
          HIDWORD(v189[1]) = v194;
          LODWORD(v190[0]) = 0;
          KB::String::iterator::initialize(v189);
          v187[0] = v42;
          v187[1].lexicon_id = v43;
          v187[1].word_id = v43;
          LODWORD(v188[0]) = 0;
          KB::String::iterator::initialize(v187);
          v44 = v189[1];
          v45 = v187[1].lexicon_id;
          if (LODWORD(v189[1]) != v187[1].lexicon_id)
          {
            while (!(*(v40 + 16))(v40, LODWORD(v190[0])))
            {
              KB::String::iterator::operator++(v189);
              if (LODWORD(v189[1]) == v45)
              {
                v44 = v45;
                goto LABEL_66;
              }
            }

            v44 = v189[1];
          }

LABEL_66:
          v49 = *(&v194 + 1);
          if (!*(&v194 + 1))
          {
            v49 = &v195;
          }

          v189[0] = v49;
          LODWORD(v189[1]) = v194;
          HIDWORD(v189[1]) = v194;
        }

        else
        {
          if (*(&v194 + 1))
          {
            v41 = *(&v194 + 1);
          }

          v189[0] = v41;
          v46 = v194;
          LODWORD(v189[1]) = 0;
          HIDWORD(v189[1]) = v194;
          LODWORD(v190[0]) = 0;
          KB::String::iterator::initialize(v189);
          v187[0] = v41;
          v187[1].lexicon_id = v46;
          v187[1].word_id = v46;
          LODWORD(v188[0]) = 0;
          KB::String::iterator::initialize(v187);
          v44 = v189[1];
          v47 = v187[1].lexicon_id;
          if (LODWORD(v189[1]) != v187[1].lexicon_id)
          {
            while ((LODWORD(v190[0]) - 38) >= 2)
            {
              if ((LODWORD(v190[0]) - 1523) < 2 || LODWORD(v190[0]) == 8217)
              {
                break;
              }

              KB::String::iterator::operator++(v189);
              v44 = v189[1];
              if (LODWORD(v189[1]) == v47)
              {
                v44 = v47;
                break;
              }
            }
          }

          v189[0] = v41;
          LODWORD(v189[1]) = v46;
          HIDWORD(v189[1]) = v46;
        }

        LODWORD(v190[0]) = 0;
        KB::String::iterator::initialize(v189);
        v39 = v44 != LODWORD(v189[1]);
      }

      v173 = v39;
      v50 = KB::Candidate::length(v23);
      v52 = KB::Candidate::length(a3);
      if (*v23)
      {
        v53 = 0;
        v54 = *(v23 + 1);
        v55 = 240 * *v23;
        do
        {
          if ((*(v54 + 135) & 4) == 0)
          {
            v56 = *(v54 + 4);
            if (!*(v54 + 4))
            {
              KB::String::compute_length(v54);
              v56 = *(v54 + 4);
            }

            if (v56 == 1)
            {
              ++v53;
            }
          }

          v54 += 240;
          v55 -= 240;
        }

        while (v55);
      }

      else
      {
        v53 = 0;
      }

      if (*a3)
      {
        v57 = *(a3 + 1);
        v58 = 240 * *a3;
        do
        {
          if ((*(v57 + 135) & 4) == 0)
          {
            v59 = *(v57 + 4);
            if (!*(v57 + 4))
            {
              KB::String::compute_length(v57);
              v59 = *(v57 + 4);
            }

            v53 -= v59 == 1;
          }

          v57 += 240;
          v58 -= 240;
        }

        while (v58);
      }

      if (v50 > v52 && v53 < 0 && (*(a3 + 3175) & 1) == 0)
      {
        v83 = *(a4 + 7);
        if (v83)
        {
          KB::Candidate::capitalized_string(v189, *a2);
          v85 = v189[1];
          if (!v189[1])
          {
            v85 = v190;
          }

          if (LOWORD(v189[0]))
          {
            v86 = v85;
          }

          else
          {
            v86 = "";
          }

          KB::append_format(v83, "[%s] prediction skipped for single-character input\n", v84, v86);
          goto LABEL_226;
        }

        goto LABEL_229;
      }

      v60 = *(v172 + 2);
      KB::Candidate::capitalized_string(v189, a3);
      LOWORD(v187[0].word_id) = 0;
      BYTE2(v187[0].word_id) = 0;
      v187[1] = " \t\n";
      v187[0].lexicon_id = 1048579;
      BYTE1(v188[0]) = 0;
      KB::string_split_after(v189, v187, &v185);
      if (*&v187[1] && BYTE2(v187[0].word_id) == 1)
      {
        free(*&v187[1]);
      }

      if (v189[1] && BYTE6(v189[0]) == 1)
      {
        free(v189[1]);
      }

      KB::Candidate::capitalized_string(v189, v23);
      LOWORD(v187[0].word_id) = 0;
      BYTE2(v187[0].word_id) = 0;
      v187[1] = " \t\n";
      v187[0].lexicon_id = 1048579;
      BYTE1(v188[0]) = 0;
      KB::string_split_after(v189, v187, &v183);
      if (*&v187[1] && BYTE2(v187[0].word_id) == 1)
      {
        free(*&v187[1]);
      }

      if (v189[1] && BYTE6(v189[0]) == 1)
      {
        free(v189[1]);
      }

      v61 = *(a4 + 2);
      if (v61)
      {
        atomic_fetch_add(v61, 1u);
      }

      v174 = a4;
      v62 = *(v61 + 8);
      WTF::RefCounted<KB::DictionaryContainer>::deref(v61);
      LOBYTE(v189[0]) = 0;
      std::vector<BOOL>::vector(&v181, (*(&v185 + 1) - v185) >> 5, v189);
      v65 = *(&v185 + 1);
      v66 = v185;
      if (*(&v185 + 1) == v185)
      {
        v66 = *(&v185 + 1);
      }

      else
      {
        v67 = 0;
        v68 = 0;
        do
        {
          v69 = v183;
          if (v68 >= (*(&v183 + 1) - v183) >> 5)
          {
            break;
          }

          if (v66 == v183 || KB::String::equal((v66 + v67), (v183 + v67), 1, v63, v64))
          {
            goto LABEL_112;
          }

          v70 = *(v62 + 168);
          if (!v70)
          {
            v165 = std::__throw_bad_function_call[abi:nn200100]();
            __Block_byref_object_copy__21274(v165, v166);
            return;
          }

          if ((*(*v70 + 48))(v70, v69 + v67, v66 + v67))
          {
            v189[0] = &unk_283FDCF10;
            v189[1] = 1;
            if (KB::InputSegmentFilter::string_preserves_surface_form_features(v189, (v69 + v67), (v66 + v67), 0, 0))
            {
LABEL_112:
              *(v181 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
            }
          }

          ++v68;
          v65 = *(&v185 + 1);
          v66 = v185;
          v67 += 32;
        }

        while (v68 < (*(&v185 + 1) - v185) >> 5);
      }

      v72 = *(&v181 + 1);
      v71 = v181;
      if (*(&v181 + 1) < 0x40uLL)
      {
        v73 = 0;
        v74 = v181;
        v75 = v175;
        if (*(&v181 + 1))
        {
LABEL_120:
          v78 = vcnt_s8((*v74 & (0xFFFFFFFFFFFFFFFFLL >> -v72)));
          v78.i16[0] = vaddlv_u8(v78);
          v73 += v78.u32[0];
        }
      }

      else
      {
        v73 = 0;
        v74 = v181;
        v75 = v175;
        do
        {
          v76 = *v74++;
          v77 = vcnt_s8(v76);
          v77.i16[0] = vaddlv_u8(v77);
          v73 += v77.u32[0];
          v72 -= 64;
        }

        while (v72 > 0x3F);
        if (v72)
        {
          goto LABEL_120;
        }
      }

      a4 = v174;
      v79 = v65 - v66;
      if (v73 == v79 >> 5)
      {
LABEL_122:
        v80 = 0;
        goto LABEL_144;
      }

      if (v73 + 1 == v79 >> 5)
      {
        if (v79 >= *(&v183 + 1) - v183)
        {
          goto LABEL_122;
        }

        v81 = KB::Candidate::length(a3);
        v187[0].lexicon_id = 0x100000;
        LOWORD(v187[0].word_id) = 0;
        BYTE2(v187[0].word_id) = 0;
        v187[1] = 0;
        LOBYTE(v188[0]) = 0;
        KB::string_join(v189, v183, (*(&v185 + 1) + v183 - v185), v187);
        if (*&v187[1] && BYTE2(v187[0].word_id) == 1)
        {
          free(*&v187[1]);
        }

        v82 = WORD2(v189[0]);
        if (!WORD2(v189[0]))
        {
          KB::String::compute_length(v189);
          v82 = WORD2(v189[0]);
        }

        v80 = v81 >= v82;
        if (v189[1] && BYTE6(v189[0]) == 1)
        {
          free(v189[1]);
        }

        v71 = v181;
        v75 = v175;
      }

      else
      {
        v80 = 1;
      }

LABEL_144:
      if (v71)
      {
        operator delete(v71);
      }

      v189[0] = &v183;
      std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](v189);
      v189[0] = &v185;
      std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](v189);
      if (!v80)
      {
        goto LABEL_161;
      }

      v89 = *(v174 + 2);
      if (!v89)
      {
        goto LABEL_161;
      }

      atomic_fetch_add(v89, 1u);
      WTF::RefCounted<KB::DictionaryContainer>::deref(v89);
      if (*v23 < 2uLL)
      {
        goto LABEL_161;
      }

      v90 = *(v174 + 2);
      if (v90)
      {
        atomic_fetch_add(v90, 1u);
      }

      v91 = *(v90 + 8);
      WTF::RefCounted<KB::DictionaryContainer>::deref(v90);
      v94 = KB::Candidate::num_words_preserving_input(v23, a3, v91 + 144, v92, v93);
      if (*v23 > v94)
      {
        v95 = v94;
        v96 = 240 * v94;
        do
        {
          v97 = *(v23 + 1);
          v98 = (v97 + v96);
          if ((*(v97 + v96 + 135) & 4) == 0 && (*(v98 + 106) & 4) != 0)
          {
            v99 = *(v174 + 2);
            if (v99)
            {
              atomic_fetch_add(v99, 1u);
            }

            KB::Word::capitalized_string(v189, v98);
            v187[0] = *(v97 + v96 + 136);
            KB::DictionaryContainer::_probability_of_word_with_string_and_id(v99, v189, v187, 0);
          }

          ++v95;
          v96 += 240;
        }

        while (v95 < *v23);
        v75 = v175;
        if (1.0 <= 0.0)
        {
          goto LABEL_161;
        }
      }

      if ((1.0 / 1.0) < v60)
      {
        v128 = *(v174 + 7);
        if (v128)
        {
          KB::Candidate::capitalized_string(v189, v23);
          v130 = v189[1];
          if (!v189[1])
          {
            v130 = v190;
          }

          if (LOWORD(v189[0]))
          {
            v131 = v130;
          }

          else
          {
            v131 = "";
          }

          KB::append_format(v128, "[%s] skipped complex candidate with insufficient linguistic support\n", v129, v131);
          goto LABEL_226;
        }
      }

      else
      {
LABEL_161:
        v51 = v200;
        if (v200 <= v197)
        {
          if (v198)
          {
            v101 = v198;
          }

          else
          {
            v101 = v199;
          }

          if (v201)
          {
            v102 = v201;
          }

          else
          {
            v102 = v202;
          }

          v100 = strncasecmp(v101, v102, v200) == 0;
        }

        else
        {
          v100 = 0;
        }

        v103 = WORD2(v200);
        if (!WORD2(v200))
        {
          KB::String::compute_length(&v200);
          v103 = WORD2(v200);
        }

        v104 = v171 - v170;
        v105 = v75 != v103;
        if (v173)
        {
          goto LABEL_187;
        }

        if (*v23)
        {
          v106 = 240 * *v23 - 240;
          v107 = (*(v23 + 1) + 224);
          do
          {
            v109 = *v107;
            v107 += 30;
            v108 = v109;
            if (v109)
            {
              v110 = 1;
            }

            else
            {
              v110 = v106 == 0;
            }

            v106 -= 240;
          }

          while (!v110);
          if (v108)
          {
            v111 = 0;
          }

          else
          {
            v111 = v75 == v103;
          }

          v105 = !v111;
        }

        if (v105 || v169)
        {
LABEL_187:
          v112 = 0;
        }

        else
        {
          v113 = 24;
          if (v104 == 2)
          {
            v113 = 20;
          }

          if (v104 < 2)
          {
            v113 = 16;
          }

          v112 = (v168 - v167) < *(v172 + v113);
        }

        v114 = *a2;
        v115 = *(a2 + 1) - *a2;
        v116 = 0x1CAC083126E978D5 * (v115 >> 3);
        v117 = 0.0;
        if (v116 >= 2)
        {
          v117 = expf(v114[436]);
        }

        if (v115 == 1000 && !v112 || !v100 || v175 != v103 && (v104 < 1 || v173))
        {
          a4 = v174;
          v118 = *(v174 + 7);
          if (v118)
          {
            KB::Candidate::capitalized_string(v189, v114);
            v120 = v189[1];
            if (!v189[1])
            {
              v120 = v190;
            }

            if (LOWORD(v189[0]))
            {
              v121 = v120;
            }

            else
            {
              v121 = "";
            }

            KB::append_format(v118, "[%s] dominant due to mismatch with typed string\n", v119, v121);
LABEL_205:
            if (v189[1] && BYTE6(v189[0]) == 1)
            {
              free(v189[1]);
            }
          }

LABEL_208:
          v122 = 1;
          goto LABEL_230;
        }

        a4 = v174;
        if (v116 >= 2 && !v112)
        {
          if (*(v114 + 444))
          {
            v127 = v114;
          }

          else
          {
            KB::Candidate::compute_string(v114);
            v127 = *a2;
          }

          if (!*(v127 + 944))
          {
            KB::Candidate::compute_string((v127 + 250));
          }

          if (KB::String::equal((v114 + 222), (v127 + 472), 0, v87, v88))
          {
            v135 = *(v174 + 7);
            if (!v135)
            {
              goto LABEL_208;
            }

            KB::Candidate::capitalized_string(v189, *a2);
            v136 = v189[1];
            if (!v189[1])
            {
              v136 = v190;
            }

            if (LOWORD(v189[0]))
            {
              v137 = v136;
            }

            else
            {
              v137 = "";
            }

            KB::Candidate::capitalized_string(v187, (*a2 + 1000));
            v139 = v187[1];
            if (!*&v187[1])
            {
              v139 = v188;
            }

            if (LOWORD(v187[0].lexicon_id))
            {
              v140 = v139;
            }

            else
            {
              v140 = "";
            }

            KB::append_format(v135, "[%s] candidate is dominant as second candidate [%s] is a duplicate as well\n", v138, v137, v140);
          }

          else
          {
            v141 = *a2;
            v142 = *a2;
            if (!*(*a2 + 1888))
            {
              KB::Candidate::compute_string((v141 + 1000));
              v142 = *a2;
            }

            v143 = *(v142 + 888);
            if (!*(v142 + 888))
            {
              KB::Candidate::compute_string(v142);
              v143 = *(v142 + 888);
            }

            if (v143 > *(v141 + 1888) || (*(v141 + 1896) ? (v144 = *(v141 + 1896)) : (v144 = (v141 + 1904)), *(v142 + 896) ? (v145 = *(v142 + 896)) : (v145 = (v142 + 904)), strncasecmp(v144, v145, v143)))
            {
              if (v173 && *(a3 + 3172) == 1 && (v146 = *(*a2 + 1000)) != 0)
              {
                v147 = 240 * v146 - 240;
                v148 = (*(*a2 + 1008) + 120);
                do
                {
                  v149 = *v148;
                  v148 += 60;
                  v150 = v149 != 0;
                  if (v149)
                  {
                    v151 = 1;
                  }

                  else
                  {
                    v151 = v147 == 0;
                  }

                  v147 -= 240;
                }

                while (!v151);
              }

              else
              {
                v150 = 0;
              }

              v152 = v117 * *(v172 + 3);
              v153 = *(v174 + 7);
              if (v153)
              {
                KB::Candidate::capitalized_string(v189, *a2);
                v155 = v189[1];
                if (!v189[1])
                {
                  v155 = v190;
                }

                if (LOWORD(v189[0]))
                {
                  v156 = v155;
                }

                else
                {
                  v156 = "";
                }

                v157 = "false";
                if (v152 >= a5)
                {
                  v158 = "false";
                }

                else
                {
                  v158 = "true";
                }

                if (v150)
                {
                  v157 = "true";
                }

                KB::append_format(v153, "[%s] dominant=%s (p0=%g,p1=%g) (competing_variants=%s)\n", v154, v156, v158, a5, v117, v157);
                if (v189[1] && BYTE6(v189[0]) == 1)
                {
                  free(v189[1]);
                }
              }

              v122 = v152 < a5 && !v150;
              goto LABEL_230;
            }

            v159 = *(v174 + 7);
            if (!v159)
            {
              goto LABEL_208;
            }

            KB::Candidate::capitalized_string(v189, *a2);
            v160 = v189[1];
            if (!v189[1])
            {
              v160 = v190;
            }

            if (LOWORD(v189[0]))
            {
              v161 = v160;
            }

            else
            {
              v161 = "";
            }

            KB::Candidate::capitalized_string(v187, (*a2 + 1000));
            v163 = v187[1];
            if (!*&v187[1])
            {
              v163 = v188;
            }

            if (LOWORD(v187[0].lexicon_id))
            {
              v164 = v163;
            }

            else
            {
              v164 = "";
            }

            KB::append_format(v159, "[%s] candidate is dominant as it is a subset (prefix) of the second candidate [%s]\n", v162, v161, v164);
          }

          if (*&v187[1] && BYTE2(v187[0].word_id) == 1)
          {
            free(*&v187[1]);
          }

          goto LABEL_205;
        }

        v123 = *(v174 + 7);
        if (v123)
        {
          KB::Candidate::capitalized_string(v189, v114);
          v125 = v189[1];
          if (!v189[1])
          {
            v125 = v190;
          }

          if (LOWORD(v189[0]))
          {
            v126 = v125;
          }

          else
          {
            v126 = "";
          }

          KB::append_format(v123, "[%s] skipped as length gain from autocorrection does not produce a viable candidate\n", v124, v126);
LABEL_226:
          if (v189[1] && BYTE6(v189[0]) == 1)
          {
            free(v189[1]);
          }
        }
      }

LABEL_229:
      v122 = 0;
LABEL_230:
      if (*(&v194 + 1) && BYTE6(v194) == 1)
      {
        free(*(&v194 + 1));
      }

      if (v198 && BYTE6(v197) == 1)
      {
        free(v198);
      }

      if (v201 && BYTE6(v200) == 1)
      {
        free(v201);
      }

      if (v122)
      {
        KB::Candidate::Candidate(v189, *a2);
        operator new();
      }

      v132 = *(a4 + 7);
      if (v132)
      {
        v133 = v192;
        if (!v192)
        {
          v133 = v193;
        }

        if (v191)
        {
          v134 = v133;
        }

        else
        {
          v134 = "";
        }

        KB::append_format(v132, "[%s] not significantly better than input - rejecting\n", v51, v134);
      }

      goto LABEL_248;
    }
  }

  std::vector<KB::Candidate>::push_back[abi:nn200100](&v177[1] + 1, *a2);
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_14:
  v20 = *(a4 + 7);
  if (v20)
  {
    v21 = v192;
    if (!v192)
    {
      v21 = v193;
    }

    if (v191)
    {
      v22 = v21;
    }

    else
    {
      v22 = "";
    }

    KB::append_format(v20, "[%s] matches the input string - ignoring\n", v18, v22);
  }

LABEL_248:
  KB::CandidateCollection::operator=(a2, v176);
  v189[0] = &v177[1] + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v189);
  v189[0] = v177;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v189);
  v189[0] = &v176[1] + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v189);
  v189[0] = v176;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v189);
  if (v192)
  {
    if (BYTE6(v191) == 1)
    {
      free(v192);
    }
  }
}

BOOL ___ZN2KB30ChooseTopQualityAutocorrection38case_sens_position_of_first_differenceERKNS_6StringERKNSt3__16vectorIjNS4_9allocatorIjEEEES3__block_invoke(uint64_t a1, UChar32 *a2, UChar32 *a3)
{
  if (*a2 != *a3)
  {
    v7 = MEMORY[0x2318BF180]();
    if (v7 != MEMORY[0x2318BF180](*a2) || u_isupper(*a3) && u_islower(*a2))
    {
      result = 0;
      goto LABEL_7;
    }

    if (u_islower(*a3))
    {
      if (u_isupper(*a2))
      {
        v8 = *(*(*(a1 + 32) + 8) + 40);
        if (v8 < *(*(a1 + 40) + 8))
        {
          result = (*v8 & 0x10) == 0;
          goto LABEL_7;
        }
      }
    }
  }

  result = 1;
LABEL_7:
  *(*(*(a1 + 32) + 8) + 40) += 4;
  return result;
}

void __alignmentConfidence_block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_28400C198;
  v2[1] = &unk_28400C1B0;
  v3[0] = @"none";
  v3[1] = @"low";
  v2[2] = &unk_28400C1C8;
  v2[3] = &unk_28400C1E0;
  v3[2] = @"mid";
  v3[3] = @"high";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = alignmentConfidence_map;
  alignmentConfidence_map = v0;
}

id payloadForText(void *a1, void *a2, void *a3)
{
  v51[5] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v49 = [@"length" stringByAppendingString:v7];
  v50[0] = v49;
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 length];
  if (v9 >= 9)
  {
    v10 = 9;
  }

  else
  {
    v10 = 7;
  }

  if (v9 >= 7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 5;
  }

  if (v9 < 5)
  {
    v11 = v9;
  }

  if (v9 >= 3)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v9 >= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v48 = [v8 numberWithInt:v13];
  v51[0] = v48;
  v47 = [@"capitalization" stringByAppendingString:v7];
  v50[1] = v47;
  v14 = v5;
  v15 = v6;
  v16 = [v14 capitalizedStringWithLocale:v15];
  isEqualToString = objc_msgSend_isEqualToString_(v16);

  if (isEqualToString)
  {
    v18 = @"initial";
  }

  else
  {
    v19 = [v14 uppercaseStringWithLocale:v15];
    v20 = objc_msgSend_isEqualToString_(v19);

    if (v20)
    {
      v18 = @"upper";
    }

    else
    {
      v21 = [v14 lowercaseStringWithLocale:v15];
      v22 = objc_msgSend_isEqualToString_(v21);

      if (v22)
      {
        v18 = @"lower";
      }

      else
      {
        v18 = @"other";
      }
    }
  }

  v46 = v18;
  v51[1] = v46;
  v23 = [@"diacritics" stringByAppendingString:v7];
  v50[2] = v23;
  v24 = MEMORY[0x277CCABB0];
  v25 = v14;
  v26 = [v25 stringByFoldingWithOptions:128 locale:v15];
  v27 = objc_msgSend_isEqualToString_(v26);

  v28 = [v24 numberWithBool:v27 ^ 1u];
  v51[2] = v28;
  v29 = [@"punctuation" stringByAppendingString:v7];
  v50[3] = v29;
  v30 = MEMORY[0x277CCABB0];
  v31 = v25;
  if ([v31 length] >= 3)
  {
    v33 = [v31 substringWithRange:{1, objc_msgSend(v31, "length") - 2}];
    v34 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v35 = [v33 rangeOfCharacterFromSet:v34];

    v32 = v35 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v32 = 0;
  }

  v36 = [v30 numberWithBool:v32];
  v51[3] = v36;
  v37 = [@"multiword" stringByAppendingString:v7];

  v50[4] = v37;
  v38 = MEMORY[0x277CCABB0];
  v39 = MEMORY[0x277CCA900];
  v40 = v31;
  v41 = [v39 whitespaceCharacterSet];
  v42 = [v40 rangeOfCharacterFromSet:v41];

  v43 = [v38 numberWithBool:v42 != 0x7FFFFFFFFFFFFFFFLL];
  v51[4] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:5];

  return v44;
}

id mergeDicts(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
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

        [v2 addEntriesFromDictionary:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [v2 copy];

  return v8;
}