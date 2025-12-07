uint64_t std::__split_buffer<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::allocator_traits<std::allocator<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>>::destroy[abi:nn200100]<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>,void,0>(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void TI::Favonius::BeamSearch::extend(void *a1, atomic_uint **a2)
{
  v6 = *a2;
  *a2 = 0;
  (*(*v6 + 56))(v6);
  atomic_fetch_add(v6 + 2, 1u);
  v9 = a1[25];
  if (v9 == a1[26])
  {
LABEL_11:
    v10 = a1[2];
    if (v10)
    {
      atomic_fetch_add((v10 + 8), 1u);
      for (i = *(v10 + 200); i != *(v10 + 208); i += 8)
      {
        if (TI::Favonius::BeamSearch::should_extend_for_hit_testing(v10, i, *(a1[3] + 12), v7, v8))
        {
          v12 = a1[5];
          if (v12)
          {
            atomic_fetch_add((v12 + 8), 1u);
          }

          if (v6)
          {
            atomic_fetch_add(v6 + 2, 1u);
          }

          operator new();
        }
      }

      v13 = atomic_load((v10 + 8));
      if (v13 == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        atomic_fetch_add((v10 + 8), 0xFFFFFFFF);
      }
    }

    if (v6)
    {
      v14 = atomic_load(v6 + 2);
      if (v14 == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
      }
    }

    operator new();
  }

  while (!TI::Favonius::BeamSearch::should_extend_for_hit_testing(a1, v9, *(a1[3] + 12), v7, v8))
  {
    v9 += 8;
    if (v9 == a1[26])
    {
      goto LABEL_11;
    }
  }

  if (a1[2] && (*(*v9 + 120) & 0x20) != 0)
  {
    if (!v6)
    {
LABEL_7:
      operator new();
    }
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  atomic_fetch_add(v6 + 2, 1u);
  goto LABEL_7;
}

uint64_t TI::Favonius::BeamSearch::should_extend_for_hit_testing(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*a2 + 120);
  should_extend_for_hit_testing = 1;
  if (!KB::String::equal((*a2 + 88), (a1[35] + 88), 1, a4, a5) && (v8 & 0xE) == 0)
  {
    v10 = *a2;
    if ((v8 & 0x20) == 0 || !a3 || (v11 = v10[4], (*(v11 + 120) & 0x4E) == 0) || !*(v11 + 56) || (*(v11 + 140) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      if (!(*(*v10 + 64))(v10) && (*(*a1 + 24))(a1) && *(*a2 + 32))
      {
        v13 = (*(*a1 + 24))(a1);
        v14 = *(*a2 + 32);
        v17 = v14;
        if (v14)
        {
          atomic_fetch_add((v14 + 8), 1u);
          v15 = v17;
          should_extend_for_hit_testing = TI::Favonius::BeamSearch::should_extend_for_hit_testing(v13, &v17, a3);
          if (v15)
          {
            v16 = atomic_load(v15 + 2);
            if (v16 == 1)
            {
              (*(*v15 + 8))(v15);
            }

            else
            {
              atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
            }
          }
        }

        else
        {
          return TI::Favonius::BeamSearch::should_extend_for_hit_testing(v13, &v17, a3);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return should_extend_for_hit_testing;
}

uint64_t TI::Favonius::SearchNodeSourceQueue::insert(TI::Favonius::SearchNodeSourceQueue *this, uint64_t *a2)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 >= v5)
  {
    v7 = *(this + 3);
    v8 = (v4 - v7) >> 3;
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

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v19[4] = this + 24;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v12);
    }

    *(8 * v8) = 0;
    v6 = 8 * v8 + 8;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v7, v4, 0);
    v13 = *(this + 3);
    *(this + 3) = 0;
    *(this + 4) = v6;
    v14 = *(this + 5);
    *(this + 5) = 0;
    v19[2] = v13;
    v19[3] = v14;
    v19[0] = v13;
    v19[1] = v13;
    std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(v19);
  }

  else
  {
    *v4 = 0;
    v6 = (v4 + 2);
  }

  *(this + 4) = v6;
  v15 = *(v6 - 8);
  v16 = *a2;
  *a2 = 0;
  *(v6 - 8) = v16;
  if (v15)
  {
    v17 = atomic_load(v15 + 2);
    if (v17 == 1)
    {
      (*(*v15 + 8))(v15);
    }

    else
    {
      atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
    }
  }

  return TI::Favonius::SearchNodeSourceQueue::push_heap(this, *(v6 - 8));
}

uint64_t TI::Favonius::BeamSearch::most_likely_geometry_hypothesis@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(**(this + 200) + 128);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

uint64_t TI::Favonius::BeamSearch::input_geometry_hypothesis@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 280) + 128);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

void TI::Favonius::BeamSearch::alignment_for_accepted_text(TI::Favonius::BeamSearch *this@<X0>, const KB::String *a2@<X1>, const KB::String *a3@<X2>, KB::String *a4@<X3>, uint64_t *a5@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = *(this + 35);
  v11 = v10;
  do
  {
    v12 = v11;
    v11 = *(v11 + 32);
  }

  while (v11);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v13 = *(v10 + 128);
  if (v13)
  {
    atomic_fetch_add(v13 + 2, 1u);
  }

  (*(*v13 + 88))(v13, &v48, &v47);
  v14 = atomic_load(v13 + 2);
  if (v14 == 1)
  {
    (*(*v13 + 8))(v13);
  }

  else
  {
    atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
  }

  KB::String::String(v55, a4);
  memset(&v46, 0, sizeof(v46));
  v15 = *(a4 + 2);
  if (!*(a4 + 2))
  {
    KB::String::compute_length(a4);
    v15 = *(a4 + 2);
  }

  __x[0] = -1;
  v16.__i_ = 0;
  std::vector<unsigned int>::insert(&v46, v16, v15, __x);
  (*(**(*(this + 35) + 56) + 200))(*(*(this + 35) + 56), v55, &v46, *(v12 + 56));
  memset(&__p, 0, sizeof(__p));
  *__x = &unk_283FDCF10;
  v54 = 1;
  if ((KB::InputSegmentFilter::string_preserves_surface_form_features(__x, a2, v55, 0, &__p) & 1) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_46;
  }

  if (*a4)
  {
    v17 = *(a3 + 2);
    if (!*(a3 + 2))
    {
      KB::String::compute_length(a3);
      v17 = *(a3 + 2);
    }

    v18 = *(a4 + 2);
    if (!*(a4 + 2))
    {
      KB::String::compute_length(a4);
      v18 = *(a4 + 2);
    }

    if (v17 <= v18)
    {
      v22 = *(a4 + 1);
      if (v22)
      {
        v23 = *(a4 + 1);
      }

      else
      {
        v23 = a4 + 16;
      }

      *&v41 = v23;
      v24 = *a4;
      DWORD2(v41) = 0;
      HIDWORD(v41) = v24;
      LODWORD(v42) = 0;
      KB::String::iterator::initialize(&v41);
      v25 = *(a3 + 2);
      if (!*(a3 + 2))
      {
        KB::String::compute_length(a3);
        v25 = *(a3 + 2);
        v24 = *a4;
        v22 = *(a4 + 1);
      }

      v43 = v41;
      v44 = v42;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v43, v25);
      if (v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = a4 + 16;
      }

      v37 = v26;
      v38 = v24;
      v39 = v24;
      v40 = 0;
      KB::String::iterator::initialize(&v37);
      KB::String::String(&v51, &v43, &v37);
      v27 = KB::String::String(__x, a2);
      KB::String::append(v27, &v51);
      KB::String::operator=(a4, __x);
      if (v54 && BYTE2(__x[1]) == 1)
      {
        free(v54);
      }

      v28 = *v52;
      if (!*v52)
      {
        goto LABEL_44;
      }

      v29 = BYTE6(v51);
    }

    else
    {
      begin = __p.__begin_;
      end = __p.__end_;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 0x40000000;
      v34 = ___ZNK2TI8Favonius10BeamSearch27alignment_for_accepted_textERKN2KB6StringES5_RS3__block_invoke;
      v35 = &__block_descriptor_tmp_32;
      v36 = a4;
      if (__p.__begin_ == __p.__end_)
      {
        v21 = __p.__begin_;
      }

      else
      {
        while (((v34)(v33, *begin) & 1) == 0)
        {
          if (++begin == end)
          {
            begin = end;
            break;
          }
        }

        v21 = begin;
        begin = __p.__begin_;
      }

      v30 = v21 - begin;
      if (*(a2 + 1))
      {
        v31 = *(a2 + 1);
      }

      else
      {
        v31 = a2 + 16;
      }

      v51 = v31;
      v32 = *a2;
      *v52 = 0;
      *&v52[4] = v32;
      KB::String::iterator::initialize(&v51);
      *&v41 = v31;
      DWORD2(v41) = 0;
      HIDWORD(v41) = v32;
      LODWORD(v42) = 0;
      KB::String::iterator::initialize(&v41);
      v43 = v41;
      v44 = v42;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v43, (v30 >> 2));
      KB::String::String(__x, &v51, &v43);
      KB::String::operator=(a4, __x);
      v28 = v54;
      if (!v54)
      {
        goto LABEL_44;
      }

      v29 = BYTE2(__x[1]);
    }

    if (v29 == 1)
    {
      free(v28);
    }
  }

LABEL_44:
  KB::Alignment::operator*(__x, &__p, &v46);
  KB::Alignment::operator*(a5, __x, &v48);
  if (*__x)
  {
    v54 = *__x;
    operator delete(*__x);
  }

LABEL_46:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v46.__begin_)
  {
    v46.__end_ = v46.__begin_;
    operator delete(v46.__begin_);
  }

  if (v57 && v56 == 1)
  {
    free(v57);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  if (__n)
  {
    v4 = __x;
    v7 = this;
    end = this->__end_;
    value = this->__end_cap_.__value_;
    if (__n <= value - end)
    {
      v14 = end - __position.__i_;
      v15 = this->__end_;
      v16 = __n;
      if (__n <= end - __position.__i_)
      {
        goto LABEL_21;
      }

      v17 = 0;
      v16 = v14 >> 2;
      v18 = __n - (v14 >> 2);
      v19 = *__x;
      v20 = (4 * __n - v14 - 4) >> 2;
      v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vdupq_n_s64(v20);
      v23 = (end + 2);
      do
      {
        v24 = vdupq_n_s64(v17);
        v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_22CC88AA0)));
        if (vuzp1_s16(v25, *v22.i8).u8[0])
        {
          *(v23 - 2) = v19;
        }

        if (vuzp1_s16(v25, *&v22).i8[2])
        {
          *(v23 - 1) = v19;
        }

        if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_22CC88A90)))).i32[1])
        {
          *v23 = v19;
          v23[1] = v19;
        }

        v17 += 4;
        v23 += 4;
      }

      while (v21 != v17);
      v15 = &end[v18];
      this->__end_ = v15;
      if (end != __position.__i_)
      {
LABEL_21:
        v26 = &__position.__i_[__n];
        v27 = &v15[-__n];
        v28 = v15;
        if (v27 < end)
        {
          v28 = v15;
          do
          {
            v29 = *v27++;
            *v28++ = v29;
          }

          while (v27 < end);
        }

        this->__end_ = v28;
        if (v15 != v26)
        {
          this = memmove(&__position.__i_[__n], __position.__i_, v15 - v26);
        }

        if (__position.__i_ <= v4)
        {
          if (v7->__end_ <= v4)
          {
            v30 = 0;
          }

          else
          {
            v30 = __n;
          }

          v4 += v30;
        }

        v31 = 0;
        v32 = *v4;
        v33 = vdupq_n_s64(v16 - 1);
        v34 = (__position.__i_ + 2);
        do
        {
          v35 = vdupq_n_s64(v31);
          v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_22CC88AA0)));
          if (vuzp1_s16(v36, *v33.i8).u8[0])
          {
            *(v34 - 2) = v32;
          }

          if (vuzp1_s16(v36, *&v33).i8[2])
          {
            *(v34 - 1) = v32;
          }

          if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_22CC88A90)))).i32[1])
          {
            *v34 = v32;
            v34[1] = v32;
          }

          v31 += 4;
          v34 += 4;
        }

        while (((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
      }
    }

    else
    {
      begin = this->__begin_;
      v11 = __n + end - this->__begin_;
      if (v11 >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v12 = value - begin;
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v13);
      }

      v37 = 0;
      v38 = 4 * (__position.__i_ - begin);
      v39 = *__x;
      v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v41 = vdupq_n_s64(v40);
      v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v43 = (v38 + 8);
      do
      {
        v44 = vdupq_n_s64(v37);
        v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_22CC88AA0)));
        if (vuzp1_s16(v45, *v41.i8).u8[0])
        {
          *(v43 - 2) = v39;
        }

        if (vuzp1_s16(v45, *&v41).i8[2])
        {
          *(v43 - 1) = v39;
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_22CC88A90)))).i32[1])
        {
          *v43 = v39;
          v43[1] = v39;
        }

        v37 += 4;
        v43 += 4;
      }

      while (v42 != v37);
      v46 = (v38 + 4 * __n);
      memcpy(v46, __position.__i_, v7->__end_ - __position.__i_);
      v47 = v7->__begin_;
      v48 = &v46[(v7->__end_ - __position.__i_)];
      v7->__end_ = __position.__i_;
      v49 = (__position.__i_ - v47);
      v50 = (v38 - (__position.__i_ - v47));
      memcpy(v50, v47, v49);
      this = v7->__begin_;
      v7->__begin_ = v50;
      v7->__end_ = v48;
      v7->__end_cap_.__value_ = 0;
      if (this)
      {

        operator delete(this);
      }
    }
  }

  return this;
}

BOOL ___ZNK2TI8Favonius10BeamSearch27alignment_for_accepted_textERKN2KB6StringES5_RS3__block_invoke(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 4);
  if (!*(v3 + 4))
  {
    KB::String::compute_length(*(a1 + 32));
    v4 = *(v3 + 4);
  }

  return v4 <= a2;
}

void TI::Favonius::BeamSearch::input_string(TI::Favonius::BeamSearch *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 35);
  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  TI::Favonius::SearchNode::input_string_recursive(v2, a2, 0);
}

void TI::Favonius::BeamSearch::~BeamSearch(TI::Favonius::BeamSearch *this)
{
  TI::Favonius::BeamSearch::~BeamSearch(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDB4C0;
  v2 = *(this + 35);
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

  v4 = *(this + 34);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v4);
  }

  v16 = (this + 248);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = (this + 224);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = (this + 200);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = (this + 176);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v16 = (this + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v16);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 120));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 112));
  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = atomic_load(v8 + 2);
    if (v9 == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
    }
  }

  v10 = *(this + 4);
  if (v10)
  {
    v11 = atomic_load(v10 + 2);
    if (v11 == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
    }
  }

  v12 = *(this + 3);
  if (v12)
  {
    v13 = atomic_load(v12 + 2);
    if (v13 == 1)
    {
      (*(*v12 + 16))(v12);
    }

    else
    {
      atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    }
  }

  v14 = *(this + 2);
  if (v14)
  {
    v15 = atomic_load(v14 + 2);
    if (v15 == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
    }
  }
}

void TI::Favonius::BeamSearchAlgorithm::create_search(uint64_t a1, KB::LanguageModelContext *a2, void x2_0, unsigned int **a3, atomic_uint **a4, uint64_t *a5)
{
  v7 = *a3;
  *a3 = 0;
  v8 = *a4;
  *a4 = 0;
  v9 = *a5;
  *a5 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  (**v7)(v7, &v19);
  v18[0] = &__block_literal_global_39;
  v10 = 126 - 2 * __clz(v19);
  if (v19)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,false>(v20, (v20 + 8 * v19), v18, v11, 1);
  v12 = v19;
  v13 = v20;
  v17 = a1;
  if (v19 >= 4)
  {
    v14 = (v20 + 8 * v19);
    WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((v20 + 24), v14);
    v16 = v19;
    v15 = v20;
    memmove(v13 + 3, &v13[v12], v20 + 8 * v19 - v14);
    v12 = v16 - v12 + 3;
    v19 = v12;
    v13 = v15;
  }

  memset(v18, 0, sizeof(v18));
  if (v12)
  {
    if (v9)
    {
      atomic_fetch_add((v9 + 8), 1u);
    }

    *v13 = 0;
    operator new();
  }

  if (v17)
  {
    atomic_fetch_add((v17 + 8), 1u);
  }

  if (v8)
  {
    atomic_fetch_add((v8 + 8), 1u);
  }

  if (v9)
  {
    atomic_fetch_add((v9 + 8), 1u);
  }

  operator new();
}

uint64_t TI::Favonius::BeamSearchAlgorithm::BeamSearchAlgorithm(uint64_t this, char a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *(this + 8) = 1;
  *this = &unk_283FDB618;
  *(this + 12) = a2;
  *(this + 16) = a5;
  *(this + 24) = a6;
  *(this + 32) = a3;
  *(this + 40) = a4;
  return this;
}

{
  *(this + 8) = 1;
  *this = &unk_283FDB618;
  *(this + 12) = a2;
  *(this + 16) = a5;
  *(this + 24) = a6;
  *(this + 32) = a3;
  *(this + 40) = a4;
  return this;
}

void TI::Favonius::FavoniusStrokeBuildManager::get_it_recognizer_state(uint64_t a1@<X0>, int a2@<W1>, CFMutableStringRef *a3@<X8>)
{
  v3 = *(a1 + 720);
  if (v3)
  {
    TI::TIInputRecognizer::state_for_typology_logging(v3, a2, a3);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::remove_shapes_older_than(TI::Favonius::FavoniusStrokeBuildManager *this, double a2)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 144))(a2);
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::continuous_path_usage_count(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 136))();
  }

  return result;
}

CFIndex TI::Favonius::FavoniusStrokeBuildManager::set_continuous_path_ensemble_source_scales(CFIndex this, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = this;
    this = CFArrayGetCount(theArray);
    if (this >= 1)
    {
      v4 = this;
      v5 = 0;
      v6 = v3 + 376;
      do
      {
        this = applesauce::CF::details::at_as<__CFNumber const*>(theArray, v5);
        if (v7)
        {
          this = applesauce::CF::convert_as<double,0>(this);
          if (v8)
          {
            *(v6 + 8 * v5) = this;
          }
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }

  return this;
}

const void *applesauce::CF::details::at_as<__CFNumber const*>(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(a1, a2);
  }
}

unint64_t applesauce::CF::convert_as<double,0>(unint64_t result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          v3 = v1;
          v4 = kCFNumberSInt8Type;
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v16 = v1;
          v17 = kCFNumberSInt16Type;
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v14 = v1;
          v15 = kCFNumberSInt32Type;
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberSInt64Type;
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = v1;
          v9 = kCFNumberFloat32Type;
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0;
          v12 = v1;
          v13 = kCFNumberFloat64Type;
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          v3 = v1;
          v4 = kCFNumberCharType;
LABEL_25:
          v10 = CFNumberGetValue(v3, v4, &valuePtr) == 0;
          v18 = valuePtr;
          goto LABEL_30;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v16 = v1;
          v17 = kCFNumberShortType;
LABEL_20:
          v10 = CFNumberGetValue(v16, v17, &valuePtr) == 0;
          v18 = valuePtr;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v14 = v1;
          v15 = kCFNumberIntType;
LABEL_29:
          v10 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
          v18 = valuePtr;
LABEL_30:
          v11 = v18;
          goto LABEL_31;
        case kCFNumberLongType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberLongType;
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberLongLongType;
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = v1;
          v9 = kCFNumberFloatType;
LABEL_12:
          v10 = CFNumberGetValue(v8, v9, &valuePtr) == 0;
          v11 = *&valuePtr;
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0;
          v12 = v1;
          v13 = kCFNumberDoubleType;
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberCFIndexType;
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberNSIntegerType;
LABEL_27:
          v10 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
          v11 = valuePtr;
LABEL_31:
          v19 = v11;
          goto LABEL_32;
        case kCFNumberCGFloatType:
          valuePtr = 0;
          v12 = v1;
          v13 = kCFNumberCGFloatType;
LABEL_22:
          v10 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
          v19 = *&valuePtr;
LABEL_32:
          if (v10)
          {
            v19 = 0.0;
          }

          v20 = *&v19 & 0xFFFFFFFFFFFFFF00;
          break;
        default:
          v20 = 0;
          LOBYTE(v19) = 0;
          break;
      }

      return LOBYTE(v19) | v20;
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(v1))
      {
        *&result = CFBooleanGetValue(v1);
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::set_continuous_path_ensemble_source_weights(uint64_t this, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = this;
    this = CFArrayGetCount(theArray);
    if (this >= 1)
    {
      v4 = this;
      v5 = 0;
      v6 = v3 + 352;
      do
      {
        this = applesauce::CF::details::at_as<__CFNumber const*>(theArray, v5);
        if (v7)
        {
          this = applesauce::CF::convert_as<double,0>(this);
          if (v8)
          {
            *(v6 + 8 * v5) = this;
          }
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }

  return this;
}

double TI::Favonius::FavoniusStrokeBuildManager::set_continuous_path_language_weight(TI::Favonius::FavoniusStrokeBuildManager *this, double result)
{
  v2 = *(this + 88);
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      *(v3 + 432) = 0x3FD60DC768DFBD6ALL;
      v4 = result;
      *(v3 + 440) = v4;
      *(v3 + 448) = xmmword_22CC88B10;
      *(v3 + 464) = xmmword_22CC88B20;
      *(v3 + 480) = xmmword_22CC88B30;
      *(v3 + 496) = xmmword_22CC88B40;
      *(v3 + 512) = xmmword_22CC88B50;
      *(v3 + 528) = xmmword_22CC88B60;
      *(v3 + 544) = xmmword_22CC88B70;
      *(v3 + 560) = 0x401F404C05921038;
      *(v3 + 568) = 1;
      result = 54.3812;
      *(v3 + 576) = xmmword_22CC88B80;
    }
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::clear_continuous_path(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::is_hit_test_correction(TI::Favonius::FavoniusStrokeBuildManager *this, unsigned int a2)
{
  if (*(this + 209))
  {
    return 0;
  }

  v4 = *(this + 21);
  if (a2)
  {
    while (1)
    {
      v5 = a2;
      if (*(v4 + 4 * a2) != -1)
      {
        break;
      }

      --a2;
      if (v5 == 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  v6 = *(v4 + 4 * v5);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6 + 1;
  if (*(this + 9) <= (v6 + 1))
  {
    return 0;
  }

  v8 = *(*(*(this + 7) + 8 * v7) + 8);
  v9 = (*(*v8 + 64))(v8);
  v10 = *(*(this + 10) + 8 * v7);
  v13 = *((*(*v10 + 32))(v10) + 8);
  v14 = *(**(v9 + 8) + 8);
  return v13 != v14 && !KB::String::equal((v13 + 8), (v14 + 8), 1, v11, v12);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::set_skip_language_layout_check_cp_ml(uint64_t this, int a2)
{
  if (a2)
  {
    *(this + 440) = 0;
  }

  return this;
}

void TI::Favonius::FavoniusStrokeBuildManager::append_debug_data(TI::Favonius::FavoniusStrokeBuildManager *this, __CFString *a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3 && (*(*this + 288))(this) && (v6 = *(this + 88)) != 0)
  {
    v7 = *(v6 + 64);
    if (v7)
    {

      TI::CP::Search::append_debug_data(v7, a2, v5);
    }
  }

  else
  {
    v8 = *(this + 40);
    if (v8 && *(this + 9) > v8)
    {
      v26 = 0x100000;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v9 = *(*(*(this + 7) + 8 * v8) + 8);
      (*(*v9 + 104))(v9, &v26);
      v10 = v29;
      if (!v29)
      {
        v10 = &v30;
      }

      if (v26)
      {
        v11 = v10;
      }

      else
      {
        v11 = "";
      }

      CFStringAppendCString(a2, v11, 0x8000100u);
      v21 = 0x100000;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      KB::LanguageModelContext::description(this + 28, v17);
      v12 = v19;
      if (!v19)
      {
        v12 = &v20;
      }

      if (v17[0])
      {
        v13 = v12;
      }

      else
      {
        v13 = "";
      }

      KB::String::append_format(&v21, "CONTEXT: %s\n", v13);
      if (v19 && v18 == 1)
      {
        free(v19);
      }

      v14 = v24;
      if (!v24)
      {
        v14 = &v25;
      }

      if (v21)
      {
        v15 = v14;
      }

      else
      {
        v15 = "";
      }

      CFStringAppendCString(a2, v15, 0x8000100u);
      v16 = *(*(this + 10) + 8 * *(this + 40));
      (*(*v16 + 144))(v16, a2);
      if (v24 && v23 == 1)
      {
        free(v24);
      }

      if (v29 && v28 == 1)
      {
        free(v29);
      }
    }
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::initialize_search_if_necessary_from_last_touch(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(this + 209) == 1)
  {
    v2 = *(this + 40);
    if (v2)
    {
      *(this + 40) = v2 - 1;
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    *__p = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v8);
    language_modeling::v1::LinguisticContext::LinguisticContext((&v8 + 8));
    v9 = 0uLL;
    v10 = 0;
    LODWORD(v11) = 0x100000;
    WORD2(v11) = 0;
    BYTE6(v11) = 0;
    v12 = 0;
    v13 = 0;
    (*(*this + 144))(this, &v4, &v11, 0, 0);
    *(this + 40) = v3;
    if (v12 && BYTE6(v11) == 1)
    {
      free(v12);
    }

    v11 = &v9;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v11);
    language_modeling::v1::LinguisticContext::~LinguisticContext((&v8 + 8));
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v4 + 1));
    }
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::keys_for_input(TI::Favonius::FavoniusStrokeBuildManager *this, unsigned int a2)
{
  if (*(this + 209))
  {
    return 0;
  }

  v2 = *(this + 21);
  if (((*(this + 22) - v2) >> 2) <= a2)
  {
    return 0;
  }

  if (a2)
  {
    while (1)
    {
      v3 = a2;
      if (*(v2 + 4 * a2) != -1)
      {
        break;
      }

      --a2;
      if (v3 == 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  v4 = *(v2 + 4 * v3);
  if (v4 == -1)
  {
    return 0;
  }

  else
  {
    return (*(**(*(*(this + 7) + 8 * v4 + 8) + 8) + 64))();
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::touch_count(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if (*(this + 209))
  {
    return 0;
  }

  v2 = *(this + 6);
  if (v2)
  {
    return (v2 - 1);
  }

  else
  {
    return 0;
  }
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::set_search_algorithm(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 40);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 40) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      return (*(*result + 16))();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::search_algorithm@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 40);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

void TI::Favonius::FavoniusStrokeBuildManager::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::candidate_refinery@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::set_candidate_generator(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 16);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 16) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      result = (*(*result + 8))(result);
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  *(a1 + 210) = 1;
  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::candidate_generator@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::set_typing_model(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 8) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      result = (*(*result + 40))(result);
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  *(a1 + 210) = 1;
  return result;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::has_input_from_touch(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if (*(this + 209))
  {
    return 0;
  }

  v2 = *(this + 21);
  v3 = *(this + 48);
  if (v3)
  {
    v4 = *(this + 21);
    while (*v4 == -1)
    {
      if (++v4 == (v2 + 4 * v3))
      {
        v4 = (v2 + 4 * v3);
        return v3 > ((v4 - v2) >> 2);
      }
    }
  }

  else
  {
    v4 = *(this + 21);
  }

  return v3 > ((v4 - v2) >> 2);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::language_model_uses_input_context(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::sync_with_input_from_UI(std::vector<unsigned int> *this, const KB::LanguageModelContext *a2, const KB::String *a3, unsigned int a4, unsigned int a5)
{
  v55[2] = *MEMORY[0x277D85DE8];
  if (BYTE1(this[8].__end_cap_.__value_) == 1)
  {
    __n = 0;
    v54 = 0;
    v55[0] = 0;
    TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(this, this[6].__end_cap_.__value_, &__n);
    begin = this[2].__begin_;
    end = this[2].__end_;
    v12 = this + 2;
    v13 = &end[2 * begin];
    v14 = *end;
    *end = *(v13 - 1);
    *(v13 - 1) = v14;
    if (begin)
    {
      if (begin != 1)
      {
        v15 = (this[2].__end_ + 2);
        v16 = 8 * begin - 8;
        do
        {
          if (*v15)
          {
            WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v15);
          }

          ++v15;
          v16 -= 8;
        }

        while (v16);
      }
    }

    else
    {
      if (!this[2].__end_cap_.__value_)
      {
        WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(&this[2].__begin_, 1uLL);
      }

      v20 = this[2].__end_;
      if (v20)
      {
        bzero(&v20[2 * v12->__begin_], 8 - 8 * v12->__begin_);
      }
    }

    this[2].__begin_ = 1;
    WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::shrinkCapacity(&this[3].__begin_);
    v21 = this[7].__begin_;
    LOBYTE(this[8].__end_cap_.__value_) = 0;
    this[7].__end_ = v21;
    LODWORD(this[8].__begin_) = 0;
    KB::String::operator=(&this[5].__end_, a3);
    __x[0] = -1;
    v22.__i_ = &this[7].__begin_[LODWORD(this[8].__begin_)];
    std::vector<unsigned int>::insert(this + 7, v22, a5, __x);
    LODWORD(this[8].__begin_) = a4;
    KB::LanguageModelContext::operator=(&this[9].__end_, a2);
    if (a4 > 0x7F)
    {
      goto LABEL_59;
    }

    v23 = this->__end_;
    if (!v23)
    {
      goto LABEL_59;
    }

    value = this[1].__end_cap_.__value_;
    if (!value)
    {
      goto LABEL_59;
    }

    v51 = this->__end_;
    atomic_fetch_add(v23 + 2, 1u);
    v25 = this->__end_cap_.__value_;
    v50 = v25;
    if (v25)
    {
      atomic_fetch_add(v25 + 2, 1u);
    }

    v26 = *(*&this[2].__end_[2 * this[2].__begin_ - 2] + 8);
    v49 = v26;
    if (v26)
    {
      atomic_fetch_add((v26 + 8), 1u);
    }

    (**value)(__x);
    v27 = this[3].__begin_;
    if (v27 == this[3].__end_cap_.__value_)
    {
      v28 = v27 + (v27 >> 1);
      if (v27 < 0x100)
      {
        v28 = 2 * v27;
      }

      if (v28 <= v27 + 1)
      {
        v29 = v27 + 1;
      }

      else
      {
        v29 = v28;
      }

      WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(&this[3].__begin_, v29);
      v30 = this[3].__end_;
      if (!v30)
      {
        if (*__x)
        {
          v47 = atomic_load((*__x + 8));
          if (v47 == 1)
          {
            (*(**__x + 8))();
          }

          else
          {
            atomic_fetch_add((*__x + 8), 0xFFFFFFFF);
          }
        }

        goto LABEL_47;
      }

      v27 = this[3].__begin_;
    }

    else
    {
      v30 = this[3].__end_;
    }

    v38 = *__x;
    *__x = 0;
    *&v30[2 * v27] = v38;
    this[3].__begin_ = (v27 + 1);
LABEL_47:
    if (v49)
    {
      v39 = atomic_load(v49 + 2);
      if (v39 == 1)
      {
        (*(*v49 + 8))();
      }

      else
      {
        atomic_fetch_add(v49 + 2, 0xFFFFFFFF);
      }
    }

    if (v50)
    {
      v40 = atomic_load(v50 + 2);
      if (v40 == 1)
      {
        (*(*v50 + 8))();
      }

      else
      {
        atomic_fetch_add(v50 + 2, 0xFFFFFFFF);
      }
    }

    if (v51)
    {
      v41 = atomic_load(v51 + 2);
      if (v41 == 1)
      {
        (*(*v51 + 40))();
      }

      else
      {
        atomic_fetch_add(v51 + 2, 0xFFFFFFFF);
      }
    }

LABEL_59:
    LODWORD(this[6].__end_cap_.__value_) = 0;
    TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(this, &__n);
    if (this[2].__begin_ >= 2)
    {
      v43 = 2;
      do
      {
        TI::Favonius::FavoniusStrokeBuildManager::perform_search(&v48, this, v43 - 1);
        if (v48)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v48);
        }
      }

      while (v12->__begin_ > v43++);
    }

    v45 = this[30].__begin_;
    if (v45)
    {
      TI::TIInputRecognizer::sync_with_input_from_UI(v45, v42, a2);
    }

    v46 = this[29].__end_;
    if (v46)
    {
      (*(*v46 + 120))(v46, a2);
    }

    std::__optional_destruct_base<std::pair<KB::String,KB::String>,false>::reset[abi:nn200100](&this[38].__end_);
    WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(&__n);
    goto LABEL_69;
  }

  if (a4 && TI::Favonius::FavoniusStrokeBuildManager::last_touch_committed_and_hit_return_key(this))
  {
    KB::String::String(&__n, "\n");
    v17 = *a3;
    if (__n <= v17)
    {
      v31 = v17 - __n;
      v32 = *(a3 + 1);
      if (!v32)
      {
        v32 = a3 + 16;
      }

      v19 = v54;
      if (v54)
      {
        v33 = v54;
      }

      else
      {
        v33 = v55;
      }

      v18 = strncmp(&v32[v31], v33, __n) == 0;
    }

    else
    {
      v18 = 0;
      v19 = v54;
    }

    if (v19 && BYTE6(__n) == 1)
    {
      free(v19);
    }

    if (!v18)
    {
      --LODWORD(this[6].__end_cap_.__value_);
      v34 = this[3].__begin_;
      v35 = (v34 - 1);
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct(&this[3].__end_[2 * (v34 - 1)], &this[3].__end_[2 * v34]);
      this[3].__begin_ = v35;
      v36 = (this[2].__begin_ - 1);
      v37 = *&this[2].__end_[2 * v36];
      if (v37)
      {
        WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v37);
      }

      this[2].__begin_ = v36;
    }
  }

LABEL_69:
  BYTE1(this[8].__end_cap_.__value_) = 0;
}

void TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(uint64_t a1, int a2, unint64_t *a3)
{
  v4 = (a2 + 1);
  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a3, *a3 - v4 + *(a1 + 48));
  v5 = *(a1 + 48);
  if (v5 > v4)
  {
    v6 = *(*(*(a1 + 56) + 8 * v5 - 8) + 8);
    v7 = (*(*v6 + 56))(v6);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }

    operator new();
  }
}

uint64_t WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    v2 = *(result + 8);
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

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::shrinkCapacity(void *a1)
{
  if (a1[2])
  {
    if (*a1)
    {
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct(a1[1], (a1[1] + 8 * *a1));
      *a1 = 0;
    }

    v2 = a1[1];
    a1[1] = 0;
    a1[2] = 0;

    free(v2);
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *(*(result + 56) + 8 * *(result + 48) - 8);
    v3 = *(a2[1] + 8 * *a2 - 8);
    v4 = *(v3 + 8);
    v5 = v4;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
      v3 = *(a2[1] + 8 * *a2 - 8);
    }

    TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(&v6, *(v2 + 8), &v5, *(v3 + 16));
  }

  return result;
}

uint64_t *TI::Favonius::FavoniusStrokeBuildManager::perform_search@<X0>(atomic_uint **__return_ptr a1@<X8>, TI::Favonius::FavoniusStrokeBuildManager *this@<X0>, unsigned int a3@<W1>)
{
  v6 = a3;
  v7 = *(*(this + 7) + 8 * a3);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *(v7 + 16);
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add(v9 + 2, 1u);
    if (v8 < 0xFFFFFFFE)
    {
      v40 = v9;
      atomic_fetch_add(v9 + 2, 1u);
      v10 = v9;
      goto LABEL_6;
    }
  }

  else if (v8 < 0xFFFFFFFE)
  {
    v10 = 0;
    v40 = 0;
LABEL_6:
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 0x40000000;
    v38[2] = ___ZN2TI8Favonius26FavoniusStrokeBuildManager14perform_searchEj_block_invoke;
    v38[3] = &__block_descriptor_tmp_16;
    v39 = v8;
    TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test(&v40, v38, &v41);
    v11 = v41;
    v41 = 0;
    if (v10)
    {
      v12 = atomic_load(v10 + 2);
      if (v12 == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
      }
    }

    if (TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(this, a3))
    {
      v13 = (*(this + 10) + 8 * v6);
      v14 = *v13;
      goto LABEL_18;
    }

    v15 = (this + 72);
    v16 = *(this + 9);
    if (v16 < v6)
    {
      goto LABEL_61;
    }

    goto LABEL_27;
  }

  if (TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(this, a3))
  {
    v11 = 0;
    v13 = (*(this + 10) + 8 * v6);
    v14 = *v13;
    if (v8 == -2)
    {
LABEL_76:
      v33 = (*(*v14 + 32))(v14);
      v34 = v33;
      if (v33)
      {
        atomic_fetch_add(v33, 1u);
      }

      if (v11)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
      }

      v11 = v34;
      goto LABEL_81;
    }

LABEL_18:
    if (v9)
    {
      atomic_fetch_add(v9 + 2, 1u);
    }

    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }

    (*(*v14 + 88))(&v41);
    v17 = *v13;
    v18 = v41;
    v41 = 0;
    *v13 = v18;
    if (v17)
    {
      v19 = atomic_load(v17 + 2);
      if (v19 == 1)
      {
        (*(*v17 + 8))(v17);
      }

      else
      {
        atomic_fetch_add(v17 + 2, 0xFFFFFFFF);
      }

      if (v41)
      {
        v20 = atomic_load(v41 + 2);
        if (v20 == 1)
        {
          (*(*v41 + 8))();
        }

        else
        {
          atomic_fetch_add(v41 + 2, 0xFFFFFFFF);
        }
      }
    }

    if (v11)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
    }

    if (v9)
    {
      v21 = atomic_load(v9 + 2);
      if (v21 == 1)
      {
        (*(*v9 + 8))();
      }

      else
      {
        atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
      }
    }

    v14 = *v13;
    goto LABEL_76;
  }

  v15 = (this + 72);
  v16 = *(this + 9);
  if (v16 >= v6)
  {
    v11 = 0;
LABEL_27:
    if (v16 == v6)
    {
      v16 = a3 + 1;
      if (a3 == -1)
      {
        WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(this + 10) + 8 * v16), (*(this + 10) + 8 * v6));
      }

      else
      {
        v22 = *(this + 11);
        if (v22 < v16)
        {
          if (v22 >= 0x100)
          {
            v23 = v22 + (v22 >> 1);
          }

          else
          {
            v23 = 2 * v22;
          }

          if (v23 <= v16)
          {
            v24 = a3 + 1;
          }

          else
          {
            v24 = v23;
          }

          WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(v15, v24);
        }

        v25 = *(this + 10);
        if (v25)
        {
          bzero((v25 + 8 * *v15), 8 * (v16 - *v15));
        }
      }

      *v15 = v16;
    }

    if (v16 > v6)
    {
      v26 = *(*(this + 10) + 8 * (a3 - 1));
      if (v9)
      {
        atomic_fetch_add(v9 + 2, 1u);
      }

      if (v11)
      {
        atomic_fetch_add(v11, 1u);
      }

      (*(*v26 + 72))(&v41);
      v27 = *(this + 10);
      v28 = *(v27 + 8 * v6);
      v29 = v41;
      v41 = 0;
      *(v27 + 8 * v6) = v29;
      if (v28)
      {
        v30 = atomic_load(v28 + 2);
        if (v30 == 1)
        {
          (*(*v28 + 8))(v28);
        }

        else
        {
          atomic_fetch_add(v28 + 2, 0xFFFFFFFF);
        }

        if (v41)
        {
          v31 = atomic_load(v41 + 2);
          if (v31 == 1)
          {
            (*(*v41 + 8))();
          }

          else
          {
            atomic_fetch_add(v41 + 2, 0xFFFFFFFF);
          }
        }
      }

      if (v11)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
      }

      if (v9)
      {
        v32 = atomic_load(v9 + 2);
        if (v32 == 1)
        {
          (*(*v9 + 8))();
        }

        else
        {
          atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
        }
      }

      v14 = *(*(this + 10) + 8 * v6);
      goto LABEL_76;
    }

LABEL_61:
    if (v11)
    {
      goto LABEL_81;
    }
  }

  v11 = **((*(*v9 + 64))(v9) + 8);
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

LABEL_81:
  v35 = *(v11 + 1);
  *a1 = v35;
  if (v35)
  {
    atomic_fetch_add(v35, 1u);
  }

  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
  if (v9)
  {
    v36 = atomic_load(v9 + 2);
    if (v36 == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
    }
  }

  return WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v7);
}

void std::__optional_destruct_base<std::pair<KB::String,KB::String>,false>::reset[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 && *(a1 + 38) == 1)
    {
      free(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      if (*(a1 + 6) == 1)
      {
        free(v3);
      }
    }

    *(a1 + 64) = 0;
  }
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    v3 = 8 * *a1;
    do
    {
      if (*v2)
      {
        WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>::deref(*v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    *a1 = 0;
  }

  v4 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v4);
  return a1;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::last_touch_committed_and_hit_return_key(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v1 = *(this + 6);
  if (v1 != *(this + 40) + 1)
  {
    return 0;
  }

  if (*(this + 9) != v1)
  {
    return 0;
  }

  v2 = *(*(this + 10) + 8 * v1 - 8);
  v3 = (*(*v2 + 32))(v2);
  if (!v3)
  {
    return 0;
  }

  atomic_fetch_add(v3, 1u);
  v4 = *(*(v3 + 8) + 56) == 10;
  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v3);
  return v4;
}

unsigned int *WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct(unsigned int *result, unsigned int **a2)
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
          result = (*(*result + 8))(result);
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

uint64_t WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>::deref(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    v2 = *(result + 8);
    if (v2)
    {
      WTF::RefCounted<TI::Favonius::Touch>::deref(v2);
    }

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void *TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, atomic_uint **a3@<X8>)
{
  result = (*(**a1 + 64))();
  if (*result)
  {
    v6 = result;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = (v6[1] + 8 * v7);
      result = (*(a2 + 16))(a2, v9);
      if (result)
      {
        break;
      }

      v7 = v8;
      if (*v6 <= v8++)
      {
        goto LABEL_5;
      }
    }

    v11 = *v9;
    *a3 = *v9;
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
  }

  return result;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(TI::Favonius::FavoniusStrokeBuildManager *this, unsigned int a2)
{
  if (*(this + 9) <= a2)
  {
    return 0;
  }

  v4 = *(*(this + 10) + 8 * a2);
  v5 = (*(*v4 + 24))(v4);
  v6 = (*(*v5 + 16))(v5);
  v7 = v6;
  if (v6)
  {
    atomic_fetch_add((v6 + 8), 1u);
  }

  v8 = *(*(this + 10) + 8 * (a2 - 1));
  v9 = (*(*v8 + 16))(v8);
  v10 = v9;
  if (v9)
  {
    atomic_fetch_add(v9 + 2, 1u);
    v11 = atomic_load(v9 + 2);
    if (v11 == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
    }
  }

  if (v7)
  {
    v12 = atomic_load(v7 + 2);
    if (v12 == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }

  if (v7 != v10)
  {
    return 0;
  }

  v15 = *(*(this + 10) + 8 * a2);
  v16 = (*(*v15 + 16))(v15);
  v17 = *((*(*v16 + 56))(v16) + 56);
  if (v17)
  {
    atomic_fetch_add(v17, 1u);
  }

  v18 = *(*(*(this + 7) + 8 * a2) + 8);
  v19 = *((*(*v18 + 56))(v18) + 56);
  if (v19)
  {
    atomic_fetch_add(v19, 1u);
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v19);
  }

  v13 = v17 == v19;
  if (v17)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v17);
  }

  return v13;
}

void TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  *a3 = 0;
  v5 = v4;
  (*(*a2 + 80))(&v6, a2, &v5);
  operator new();
}

uint64_t WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::~Vector(uint64_t a1)
{
  if (*a1)
  {
    WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct(*(a1 + 8), (*(a1 + 8) + 8 * *a1));
    *a1 = 0;
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  free(v2);
  return a1;
}

uint64_t ___ZN2TI8Favonius26FavoniusStrokeBuildManager24input_disruption_from_UIEv_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::~Vector(result);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::drop_input_prefix(TI::Favonius::FavoniusStrokeBuildManager *this, const KB::LanguageModelContext *a2, uint64_t a3, const KB::String *a4)
{
  v4 = a3;
  v100 = *MEMORY[0x277D85DE8];
  v7 = (this + 48);
  v8 = *(this + 6) - 1;
  LOBYTE(v98) = 0;
  std::vector<BOOL>::vector(__p, v8, &v98);
  TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::drop_input_prefix((v7 + 15), v4, __p);
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v9 = *v7;
  if (*v7 <= 1)
  {
    v10 = 0;
    v24 = (*(this + 7) + 8 * v9 - 8);
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 2;
  v12 = 1;
  do
  {
    v13 = v11 - 2;
    if (((*(__p[0] + ((v13 >> 3) & 0x1FFFFFF8)) >> (v11 - 2)) & 1) == 0)
    {
      goto LABEL_22;
    }

    v14 = v94;
    if (!v94)
    {
      v15 = (*(this + 7) + 8 * v13);
      if (v96)
      {
        v14 = 0;
        v16 = v95;
      }

      else
      {
        v17 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(&v94, 1uLL, v15);
        v14 = v94;
        v16 = v95;
        if (!v95)
        {
          goto LABEL_12;
        }

        v15 = v17;
      }

      v18 = *v15;
      v16[v14] = *v15;
      if (v18)
      {
        atomic_fetch_add(v18, 1u);
        v14 = v94;
      }

      v94 = ++v14;
    }

LABEL_12:
    v19 = (*(this + 7) + 8 * v12);
    if (v14 != v96)
    {
      v21 = v95;
      goto LABEL_16;
    }

    v20 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(&v94, v14 + 1, v19);
    v21 = v95;
    if (v95)
    {
      v19 = v20;
      v14 = v94;
LABEL_16:
      v22 = *v19;
      v21[v14] = *v19;
      if (v22)
      {
        atomic_fetch_add(v22, 1u);
        v14 = v94;
      }

      v94 = v14 + 1;
    }

    if (v13 < *(this + 40))
    {
      ++v10;
    }

    v9 = *(this + 6);
LABEL_22:
    v12 = v11;
  }

  while (v9 > v11++);
  if (!v94)
  {
    v24 = (*(this + 7) + 8 * v9 - 8);
    if (v96)
    {
      v25 = 0;
      v26 = v95;
      goto LABEL_29;
    }

LABEL_27:
    v27 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(&v94, 1uLL, v24);
    v26 = v95;
    if (v95)
    {
      v24 = v27;
      v25 = v94;
LABEL_29:
      v28 = *v24;
      v26[v25] = *v24;
      if (v28)
      {
        atomic_fetch_add(v28, 1u);
        v25 = v94;
      }

      v94 = v25 + 1;
    }
  }

  v29 = *(this + 66);
  if (!*(this + 66))
  {
    KB::String::compute_length(this + 64);
    v29 = *(this + 66);
  }

  if (v29 <= v4)
  {
    KB::String::clear((this + 128));
  }

  else
  {
    v30 = this + 144;
    if (*(this + 17))
    {
      v31 = *(this + 17);
    }

    else
    {
      v31 = this + 144;
    }

    *&v90 = v31;
    v32 = *(this + 64);
    DWORD2(v90) = 0;
    HIDWORD(v90) = v32;
    LODWORD(v91) = 0;
    KB::String::iterator::initialize(&v90);
    v92 = v90;
    v93 = v91;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v92, v4);
    *&v88 = v31;
    DWORD2(v88) = v32;
    HIDWORD(v88) = v32;
    LODWORD(v89) = 0;
    KB::String::iterator::initialize(&v88);
    KB::String::String(&v98, &v92, &v88);
    KB::String::operator=(this + 128, &v98);
    if (v99 && BYTE6(v98) == 1)
    {
      free(v99);
    }

    v33 = *(this + 21);
    v34 = *(this + 48);
    if (v34)
    {
      v35 = (v33 + 4 * v34);
      v36 = *(this + 21);
      while (*v36 == -1)
      {
        if (++v36 == v35)
        {
          v36 = v35;
          break;
        }
      }
    }

    else
    {
      v36 = *(this + 21);
    }

    v37 = v36 - v33;
    if (*(this + 17))
    {
      v30 = *(this + 17);
    }

    *&v92 = v30;
    v38 = *(this + 64);
    DWORD2(v92) = 0;
    HIDWORD(v92) = v38;
    LODWORD(v93) = 0;
    KB::String::iterator::initialize(&v92);
    *&v88 = v30;
    DWORD2(v88) = 0;
    HIDWORD(v88) = v38;
    LODWORD(v89) = 0;
    KB::String::iterator::initialize(&v88);
    v90 = v88;
    v91 = v89;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v90, (v37 >> 2));
    KB::String::String(&v98, &v92, &v90);
    KB::String::operator=(this + 128, &v98);
    if (v99 && BYTE6(v98) == 1)
    {
      free(v99);
    }
  }

  if (&v94 != v7)
  {
    v39 = *v7;
    v40 = v94;
    if (*v7 <= v94)
    {
      v43 = *(this + 8);
      if (v94 <= v43)
      {
        v40 = *v7;
        goto LABEL_72;
      }

      if (v43)
      {
        if (v39)
        {
          v44 = *(this + 7);
          v45 = 8 * v39;
          do
          {
            if (*v44)
            {
              WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v44);
            }

            ++v44;
            v45 -= 8;
          }

          while (v45);
          *v7 = 0;
        }

        v46 = *(this + 7);
        *(this + 7) = 0;
        *(this + 8) = 0;
        free(v46);
        v40 = v94;
      }

      WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(v7, v40);
      if (*(this + 7))
      {
        v40 = *v7;
        goto LABEL_72;
      }
    }

    else
    {
      v41 = (*(this + 7) + 8 * v94);
      v42 = 8 * v39 - 8 * v94;
      do
      {
        if (*v41)
        {
          WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v41);
        }

        ++v41;
        v42 -= 8;
      }

      while (v42);
      *v7 = v40;
LABEL_72:
      v47 = v95;
      if (v40)
      {
        v48 = *(this + 7);
        v49 = 8 * v40;
        do
        {
          v50 = *v47;
          if (*v47)
          {
            atomic_fetch_add(v50, 1u);
          }

          v51 = *v48;
          *v48 = v50;
          if (v51)
          {
            WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v51);
          }

          ++v47;
          ++v48;
          v49 -= 8;
        }

        while (v49);
        v47 = v95;
        v52 = *v7;
      }

      else
      {
        v52 = 0;
      }

      if (v52 != v94)
      {
        v53 = (*(this + 7) + 8 * v52);
        v54 = &v47[v52];
        v55 = 8 * v94 - 8 * v52;
        do
        {
          v56 = *v54;
          *v53 = *v54;
          if (v56)
          {
            atomic_fetch_add(v56, 1u);
          }

          ++v53;
          ++v54;
          v55 -= 8;
        }

        while (v55);
        v52 = v94;
      }

      *v7 = v52;
    }
  }

  *(this + 40) = v10;
  KB::LanguageModelContext::operator=(this + 224, a2);
  v57 = *(this + 90);
  if (v57)
  {
    TI::TIInputRecognizer::drop_input_prefix(v57, (this + 224));
  }

  v58 = *(this + 88);
  if (v58)
  {
    (*(*v58 + 120))(v58, this + 224);
  }

  v59 = *(this + 66);
  if (!*(this + 66))
  {
    KB::String::compute_length(this + 64);
    v59 = *(this + 66);
  }

  if (v59 <= 0x7F)
  {
    v60 = *(this + 1);
    if (v60)
    {
      if (*(this + 5))
      {
        v98 = 0;
        v62 = (this + 72);
        v61 = *(this + 9);
        if (!v61)
        {
          goto LABEL_140;
        }

        v63 = *(*(this + 10) + 8 * v61 - 8);
        v87 = v60;
        atomic_fetch_add((v60 + 8), 1u);
        v64 = *(this + 2);
        v86 = v64;
        if (v64)
        {
          atomic_fetch_add((v64 + 8), 1u);
        }

        (*(*v63 + 112))(&v92);
        v65 = v98;
        v66 = v92;
        *&v92 = 0;
        v98 = v66;
        if (v65)
        {
          v67 = atomic_load(v65 + 2);
          if (v67 == 1)
          {
            (*(*v65 + 8))(v65);
          }

          else
          {
            atomic_fetch_add(v65 + 2, 0xFFFFFFFF);
          }

          if (v92)
          {
            v68 = atomic_load((v92 + 8));
            if (v68 == 1)
            {
              (*(*v92 + 8))();
            }

            else
            {
              atomic_fetch_add((v92 + 8), 0xFFFFFFFF);
            }
          }
        }

        if (v86)
        {
          v69 = atomic_load(v86 + 2);
          if (v69 == 1)
          {
            (*(*v86 + 8))();
          }

          else
          {
            atomic_fetch_add(v86 + 2, 0xFFFFFFFF);
          }
        }

        v70 = atomic_load(v87 + 2);
        if (v70 == 1)
        {
          (*(*v87 + 40))();
        }

        else
        {
          atomic_fetch_add(v87 + 2, 0xFFFFFFFF);
        }

        v71 = v98;
        if (!v98)
        {
LABEL_140:
          (*(*this + 136))(this);
          goto LABEL_141;
        }

        WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::shrinkCapacity(this + 9);
        while (1)
        {
          v72 = *(this + 9);
          if (v72 != *(this + 11))
          {
            break;
          }

          v73 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(this + 9, v72 + 1, &v98);
          v74 = *(this + 10);
          if (v74)
          {
            v75 = *v62;
            v71 = *v73;
            *(v74 + 8 * *v62) = *v73;
            if (!v71)
            {
              goto LABEL_123;
            }

            goto LABEL_122;
          }

LABEL_124:
          v76 = (*(*v98 + 24))(v98);
          v71 = v76;
          if (v76)
          {
            atomic_fetch_add((v76 + 8), 1u);
          }

          v77 = v98;
          v98 = v71;
          if (v77)
          {
            v78 = atomic_load(v77 + 2);
            if (v78 == 1)
            {
              (*(*v77 + 8))(v77);
            }

            else
            {
              atomic_fetch_add(v77 + 2, 0xFFFFFFFF);
            }

            v71 = v98;
          }

          if (!v71)
          {
            v79 = *(this + 9);
            if (v79)
            {
              v80 = *(this + 10);
              v81 = (v80 + 8 * v79 - 8);
              if (v81 > v80)
              {
                v82 = v80 + 8;
                do
                {
                  v83 = *(v82 - 8);
                  *(v82 - 8) = *v81;
                  *v81-- = v83;
                  v84 = v82 >= v81;
                  v82 += 8;
                }

                while (!v84);
                if (v98)
                {
                  v85 = atomic_load(v98 + 2);
                  if (v85 == 1)
                  {
                    (*(*v98 + 8))();
                  }

                  else
                  {
                    atomic_fetch_add(v98 + 2, 0xFFFFFFFF);
                  }
                }
              }
            }

            goto LABEL_141;
          }
        }

        *(*(this + 10) + 8 * v72) = v71;
LABEL_122:
        atomic_fetch_add(v71 + 2, 1u);
        v75 = *v62;
LABEL_123:
        *v62 = v75 + 1;
        goto LABEL_124;
      }
    }
  }

LABEL_141:
  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>,0ul>::~Vector(&v94);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::drop_input_prefix(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = &v3[-*a1] >> 2;
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == v4)
  {
    return;
  }

  v9 = *(a3 + 8);
  if (v9 >= 1)
  {
    v43.__begin_ = *a3;
    LODWORD(v43.__end_) = 0;
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&v43, v9);
    v4 = *a1;
    v3 = *(a1 + 8);
    v5 = &v3[-*a1] >> 2;
  }

  v10 = &v4[4 * v6];
  if (v5 <= v6)
  {
    goto LABEL_27;
  }

  v11 = v10 + 4;
  v12 = v10 == v3 || v11 == v3;
  v13 = &v4[4 * v6];
  if (!v12)
  {
    v14 = *v10;
    v13 = &v4[4 * v6];
    v15 = (v10 + 4);
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v17 < v14)
      {
        v14 = v16;
        v13 = v11;
      }

      v11 = v15;
    }

    while (v15 != v3);
  }

  v18 = *v13;
  if (v18 == -1)
  {
LABEL_27:
    if (v4 == v10)
    {
      goto LABEL_31;
    }

    v19 = 0xFFFFFFFFLL;
    v20 = v4;
    do
    {
      v22 = *v20++;
      v21 = v22;
      if (v19 <= v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v19 == 0xFFFFFFFF)
      {
        v23 = v21;
      }

      if (v21 != -1)
      {
        v19 = v23;
      }
    }

    while (v20 != v10);
    if (v19 == 0xFFFFFFFF)
    {
      goto LABEL_31;
    }

    v18 = v19 + 1;
  }

  if (v18 >= 1)
  {
    v43.__begin_ = *a3;
    LODWORD(v43.__end_) = 0;
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v43, v18);
    v4 = *a1;
    v3 = *(a1 + 8);
    v5 = &v3[-*a1] >> 2;
  }

LABEL_31:
  if (v3 != v4)
  {
    v24 = 0;
    v25 = *a3;
    do
    {
      v26 = *&v4[4 * v24];
      if (v26 != -1)
      {
        if (*(a3 + 8) <= v26)
        {
          *&v4[4 * v24] = -1;
        }

        else
        {
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (v24 >= v6)
          {
            v29 = *&v25[2 * v27] | v28;
          }

          else
          {
            v29 = *&v25[2 * v27] & ~v28;
          }

          *&v25[2 * v27] = v29;
        }
      }

      ++v24;
    }

    while (v5 > v24);
  }

  if (v6)
  {
    v30 = &v4[4 * v6];
    v31 = v3 - v30;
    if (v3 != v30)
    {
      memmove(v4, v30, v3 - v30);
    }

    *(a1 + 8) = &v4[v31];
  }

  *(a1 + 24) -= v6;
  memset(&v43, 0, sizeof(v43));
  std::vector<unsigned int>::reserve(&v43, *(a3 + 8));
  if (*(a3 + 8))
  {
    v32 = 0;
    v33 = 0;
    v34 = 1;
    do
    {
      if ((*(*a3 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32))
      {
        v42 = v33;
        std::vector<unsigned int>::push_back[abi:nn200100](&v43, &v42);
        ++v33;
      }

      else
      {
        v42 = -1;
        std::vector<unsigned int>::push_back[abi:nn200100](&v43, &v42);
      }

      v32 = v34;
      v35 = *(a3 + 8) > v34++;
    }

    while (v35);
  }

  v36 = *a1;
  begin = v43.__begin_;
  v38 = *(a1 + 8) - *a1;
  if (v38)
  {
    v39 = v38 >> 2;
    v40 = 1;
    do
    {
      v41 = *v36;
      if (v41 != -1)
      {
        *v36 = begin[v41];
      }

      v36 += 4;
      v35 = v39 > v40++;
    }

    while (v35);
  }

  if (begin)
  {
    operator delete(begin);
  }
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>,0ul>::~Vector(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    v3 = 8 * *a1;
    do
    {
      if (*v2)
      {
        WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    *a1 = 0;
  }

  v4 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v4);
  return a1;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::keyboard_did_suspend(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::remove_text_usage(TI::Favonius::FavoniusStrokeBuildManager *this, const KB::String *a2)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 96))(result, a2);
  }

  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::text_accepted_from_UI(TI::Favonius::FavoniusStrokeBuildManager *this@<X0>, const KB::String *a2@<X1>, const KB::String *a3@<X2>, const KB::String *a4@<X3>, const KB::String *a5@<X5>, uint64_t a6@<X4>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v82[3] = *MEMORY[0x277D85DE8];
  if (*(this + 88))
  {
    v13 = a7 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (*a3)
    {
      v16 = *a5 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      std::__optional_destruct_base<std::pair<KB::String,KB::String>,false>::reset[abi:nn200100](this + 920);
    }

    else
    {
      KB::String::String(__p, a3);
      KB::String::String(&v76, a5);
      if (*(this + 984) == 1)
      {
        KB::String::operator=(this + 920, __p);
        KB::String::operator=(this + 952, &v76);
      }

      else
      {
        *(this + 230) = 0x100000;
        *(this + 462) = 0;
        *(this + 926) = 0;
        *(this + 116) = 0;
        KB::String::operator=(this + 920, __p);
        *(this + 238) = 0x100000;
        *(this + 478) = 0;
        *(this + 958) = 0;
        *(this + 120) = 0;
        KB::String::operator=(this + 952, &v76);
        *(this + 984) = 1;
      }

      if (*(&v76 + 1) && BYTE6(v76) == 1)
      {
        free(*(&v76 + 1));
      }

      if (__p[1] && BYTE6(__p[0]) == 1)
      {
        free(__p[1]);
      }
    }

    v34 = *(this + 90);
    if (v34)
    {
      v35 = *(v34 + 40);
      if (v35)
      {
        v36 = (*(*v35 + 48))(v35);
        TI::TIInputRecognizer::load_lexicons_if_needed(v34, *(*v36 + 24));
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v75 = 0;
    v37 = *(this + 9);
    if (v37)
    {
      v38 = *(*(this + 10) + 8 * v37 - 8);
      if (v38)
      {
        atomic_fetch_add(v38 + 2, 1u);
      }

      if (a2 != a4 && !KB::String::equal(a2, a4, 1, v17, v18))
      {
        (*(*v38 + 104))(&v81, v38, a2, a6);
        v39 = v81;
        *&v81 = 0;
        v40 = atomic_load(v38 + 2);
        if (v40 == 1)
        {
          (*(*v38 + 8))(v38);
        }

        else
        {
          atomic_fetch_add(v38 + 2, 0xFFFFFFFF);
        }

        if (v81)
        {
          v41 = atomic_load((v81 + 8));
          if (v41 == 1)
          {
            (*(*v81 + 8))();
          }

          else
          {
            atomic_fetch_add((v81 + 8), 0xFFFFFFFF);
          }
        }

        v38 = v39;
      }

      if (v38)
      {
        v42 = *(this + 9);
        if (v42 >= 1)
        {
          v43 = *(this + 9) & 0x7FFFFFFFLL;
          do
          {
            v44 = *(this + 10) + 8 * v43;
            atomic_fetch_add(v38 + 2, 1u);
            v45 = *(v44 - 8);
            *(v44 - 8) = v38;
            if (v45)
            {
              v46 = atomic_load(v45 + 2);
              if (v46 == 1)
              {
                (*(*v45 + 8))(v45);
              }

              else
              {
                atomic_fetch_add(v45 + 2, 0xFFFFFFFF);
              }
            }

            v47 = (*(*v38 + 24))(v38);
            v48 = v47;
            if (v47)
            {
              atomic_fetch_add((v47 + 8), 1u);
            }

            v49 = atomic_load(v38 + 2);
            if (v49 == 1)
            {
              (*(*v38 + 8))(v38);
            }

            else
            {
              atomic_fetch_add(v38 + 2, 0xFFFFFFFF);
            }

            if (v48)
            {
              v50 = v43 > 1;
            }

            else
            {
              v50 = 0;
            }

            --v43;
            v38 = v48;
          }

          while (v50);
          v42 = *(this + 9);
          v38 = v48;
        }

        (*(**(*(this + 10) + 8 * v42 - 8) + 48))(&v81);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        *__p = v81;
        *&v75 = v82[0];
        (*(**(*(this + 10) + 8 * *(this + 9) - 8) + 56))(&v81);
      }

      else
      {
        (*(**(*(this + 10) + 8 * *(this + 9) - 8) + 64))(&v81);
      }

      v67 = v81;
      (*(**(*(*(this + 7) + 8 * *(this + 6) - 8) + 8) + 88))(&v81);
      v51 = *(*(this + 7) + 8 * *(this + 6) - 8);
      v52 = *(v51 + 8);
      v53 = v81;
      *&v81 = 0;
      *(v51 + 8) = v53;
      if (v52)
      {
        v54 = atomic_load(v52 + 2);
        if (v54 == 1)
        {
          (*(*v52 + 8))(v52);
        }

        else
        {
          atomic_fetch_add(v52 + 2, 0xFFFFFFFF);
        }

        if (v81)
        {
          v55 = atomic_load((v81 + 8));
          if (v55 == 1)
          {
            (*(*v81 + 8))();
          }

          else
          {
            atomic_fetch_add((v81 + 8), 0xFFFFFFFF);
          }
        }
      }

      if (v67)
      {
        v56 = atomic_load(v67 + 2);
        if (v56 == 1)
        {
          (*(*v67 + 8))();
        }

        else
        {
          atomic_fetch_add(v67 + 2, 0xFFFFFFFF);
        }
      }

      if (v38)
      {
        v57 = atomic_load(v38 + 2);
        if (v57 == 1)
        {
          (*(*v38 + 8))(v38);
        }

        else
        {
          atomic_fetch_add(v38 + 2, 0xFFFFFFFF);
        }
      }
    }

    if (*a2 && __p[0] == __p[1])
    {
      goto LABEL_98;
    }

    v58 = *(a4 + 2);
    if (!*(a4 + 2))
    {
      KB::String::compute_length(a4);
      v58 = *(a4 + 2);
    }

    v59 = (*(this + 22) - *(this + 21)) >> 2;
    if (v59 < v58)
    {
LABEL_98:
      v60 = this + 209;
    }

    else
    {
      v60 = this + 209;
      if (*(this + 48) <= v59)
      {
        if ((*v60 & 1) == 0)
        {
          TI::Favonius::FavoniusStrokeBuildManager::align_candidate_to_input(this, a2, a4, __p, a8);
LABEL_102:
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          return;
        }

LABEL_101:
        *a8 = 0;
        a8[1] = 0;
        a8[2] = 0;
        goto LABEL_102;
      }
    }

    *v60 = 1;
    goto LABEL_101;
  }

  if ((*(*this + 384))(this, a2, a3, a4, a6, a5, a7))
  {
    if (*a2)
    {
      KB::word_ranges(&v72, a2, 0);
      v20 = v72;
      v21 = v73;
      if (v72 != v73)
      {
        v22 = *(a2 + 1);
        if (!v22)
        {
          v22 = a2 + 16;
        }

        __p[0] = v22;
        v23 = *a2;
        LODWORD(__p[1]) = 0;
        HIDWORD(__p[1]) = v23;
        LODWORD(v75) = 0;
        KB::String::iterator::initialize(__p);
        v24 = *(v21 - 2);
        v70 = *__p;
        v71 = v75;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v70, v24);
        v25 = *(v21 - 1);
        v68 = v70;
        v69 = v71;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v68, v25);
        KB::String::String(__p, &v70, &v68);
        KB::lower_string(&v81, __p, 0, v26, v27, v28);
        v29 = *(this + 98);
        if (!v29)
        {
LABEL_107:
          operator new();
        }

        if (*(&v81 + 1))
        {
          v30 = *(&v81 + 1);
        }

        else
        {
          v30 = v82;
        }

        while (1)
        {
          while (1)
          {
            v31 = v29;
            v32 = *(v29 + 5);
            v33 = v32 ? v32 : (v31 + 6);
            if ((strcmp(v30, v33) & 0x80000000) == 0)
            {
              break;
            }

            v29 = *v31;
            if (!*v31)
            {
              goto LABEL_107;
            }
          }

          if ((strcmp(v33, v30) & 0x80000000) == 0)
          {
            break;
          }

          v29 = v31[1];
          if (!v29)
          {
            goto LABEL_107;
          }
        }

        std::vector<KB::Candidate>::__vdeallocate(v31 + 8);
        *(v31 + 4) = *(this + 50);
        v31[10] = *(this + 102);
        *(this + 100) = 0;
        *(this + 101) = 0;
        *(this + 102) = 0;
        if (*(&v81 + 1) && BYTE6(v81) == 1)
        {
          free(*(&v81 + 1));
        }

        if (__p[1] && BYTE6(__p[0]) == 1)
        {
          free(__p[1]);
        }

        v20 = v72;
      }

      v80 = 0;
      *__p = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      KB::CandidateCollection::operator=(this + 800, __p);
      *&v81 = &v78 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      *&v81 = &v77;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      *&v81 = &v75 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      *&v81 = __p;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      v80 = 0;
      *__p = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      KB::CandidateCollection::operator=(this + 800, __p);
      *&v81 = &v78 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      *&v81 = &v77;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      *&v81 = &v75 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      *&v81 = __p;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v81);
      std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
      *(this + 97) = this + 784;
      *(this + 49) = 0u;
    }
  }

  v61 = *(this + 90);
  if (v61)
  {
    v62 = *(v61 + 40);
    if (v62)
    {
      v63 = (*(*v62 + 48))(v62);
      TI::TIInputRecognizer::load_lexicons_if_needed(v61, *(*v63 + 24));
    }
  }

  v64 = *(this + 88);
  if (v64)
  {
    (*(*v64 + 88))(v64, a2, a3, a6, 0);
  }

  v65 = 0;
  *(this + 209) = 1;
  a8[1] = 0;
  a8[2] = 0;
  *a8 = 0;
  while (1)
  {
    v66 = *(a2 + 2);
    if (!*(a2 + 2))
    {
      KB::String::compute_length(a2);
      v66 = *(a2 + 2);
    }

    if (v65 >= v66)
    {
      break;
    }

    LODWORD(__p[0]) = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a8, __p);
    ++v65;
  }
}

void std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*a1);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(a1 + 1));
    v3 = (a1 + 136);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (a1 + 112);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (a1 + 88);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (a1 + 64);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v2 = *(a1 + 5);
    if (v2 && a1[38] == 1)
    {
      free(v2);
    }

    operator delete(a1);
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::align_candidate_to_input(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, unsigned __int16 *a3@<X2>, char **a4@<X3>, uint64_t *a5@<X8>)
{
  std::vector<unsigned int>::vector[abi:nn200100](&__p, (a1 + 168));
  v10 = *(a1 + 192);
  v11 = v48;
  v12 = (v48 - __p) >> 2;
  if (v10 > v12)
  {
    v13 = v10 - v12;
    if (v10 - v12 > (v49 - v48) >> 2)
    {
      v14 = v49 - __p;
      if ((v49 - __p) >> 1 > v10)
      {
        v10 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v10;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
    }

    bzero(v48, 4 * v13);
    v16 = &v11[4 * v13];
    goto LABEL_12;
  }

  if (v10 < v12)
  {
    v16 = __p + 4 * v10;
LABEL_12:
    v48 = v16;
  }

  v17 = *(a1 + 48) - 1;
  memset(&v50, 0, sizeof(v50));
  __x[0] = -1;
  v18.__i_ = 0;
  std::vector<unsigned int>::insert(&v50, v18, v17, __x);
  v19 = __p;
  begin = v50.__begin_;
  if (v48 == __p)
  {
LABEL_20:
    *__x = begin;
    v46 = *&v50.__end_;
    if (begin == v50.__end_)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 0;
  v23 = (v48 - __p) >> 2;
  while (1)
  {
    v24 = v19[v21];
    if (v24 != -1)
    {
      break;
    }

LABEL_19:
    v21 = ++v22;
    if (v23 <= v22)
    {
      goto LABEL_20;
    }
  }

  if (v17 > v24)
  {
    if (begin[v24] == -1)
    {
      begin[v24] = v22;
    }

    goto LABEL_19;
  }

  *__x = 0;
  v46 = 0uLL;
  if (begin)
  {
    operator delete(begin);
  }

  begin = 0;
LABEL_25:
  if (*(a1 + 48) >= 2uLL)
  {
    *(a1 + 209) = 1;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    if (!begin)
    {
      goto LABEL_61;
    }

LABEL_60:
    operator delete(begin);
    goto LABEL_61;
  }

LABEL_28:
  KB::Alignment::operator*(a5, a4, __x);
  v27 = a5;
  v25 = *a5;
  v26 = v27[1];
  v28 = a2[2];
  if (!a2[2])
  {
    KB::String::compute_length(a2);
    v28 = a2[2];
  }

  v29 = (v26 - v25) >> 2;
  v30 = a3[2];
  if (!a3[2])
  {
    KB::String::compute_length(a3);
    v30 = a3[2];
  }

  if (v30 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v30;
  }

  if (v29 >= v31)
  {
    LODWORD(v32) = v31;
  }

  else
  {
    v32 = (v26 - v25) >> 2;
  }

  if (v26 != v25)
  {
    v33 = 0;
    do
    {
      v34 = *(v25 + 4 * v33);
      if (v33 >= v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = v33;
      }

      if (v34 < v35)
      {
        v35 = *(v25 + 4 * v33);
      }

      if (v34 != -1)
      {
        LODWORD(v32) = v35;
      }

      ++v33;
    }

    while (v29 > v33);
  }

  if (v32)
  {
    v36 = 0;
    v37 = v32;
    v38 = (v32 + 3) & 0xFFFFFFFC;
    v39 = vdupq_n_s64(v37 - 1);
    v40 = xmmword_22CC88A90;
    v41 = xmmword_22CC88AA0;
    v42 = (v25 + 8);
    v43 = vdupq_n_s64(4uLL);
    do
    {
      v44 = vmovn_s64(vcgeq_u64(v39, v41));
      if (vuzp1_s16(v44, *v39.i8).u8[0])
      {
        *(v42 - 2) = v36;
      }

      if (vuzp1_s16(v44, *&v39).i8[2])
      {
        *(v42 - 1) = v36 + 1;
      }

      if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v40))).i32[1])
      {
        *v42 = v36 + 2;
        v42[1] = v36 + 3;
      }

      v36 += 4;
      v40 = vaddq_s64(v40, v43);
      v41 = vaddq_s64(v41, v43);
      v42 += 4;
    }

    while (v38 != v36);
  }

  if (!v30)
  {
    KB::String::compute_length(a3);
    v30 = a3[2];
  }

  TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::replace_alignment(a1 + 168, 0, v30, a4);
  if (begin)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::replace_alignment(uint64_t a1, unsigned int a2, unsigned int a3, char **a4)
{
  v8 = *a1;
  if (a3)
  {
    v9 = &v8[4 * a2];
    v10 = &v9[4 * a3];
    v11 = *(a1 + 8);
    v12 = v11 - v10;
    if (v11 != v10)
    {
      memmove(&v8[4 * a2], v10, v11 - v10);
      v8 = *a1;
    }

    *(a1 + 8) = &v9[v12];
  }

  v14 = *a4;
  v13 = a4[1];
  v15 = v13 - *a4;
  v16 = v15 >> 2;
  if (v15 >> 2 >= 1)
  {
    v17 = &v8[4 * a2];
    v19 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v18 - v19 < v15)
    {
      v20 = v16 + ((v19 - v8) >> 2);
      if (v20 >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v21 = v18 - v8;
      if (v21 >> 1 > v20)
      {
        v20 = v21 >> 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
      }

      v38 = 4 * a2;
      v39 = (v38 + v15);
      v40 = v38;
      do
      {
        v41 = *v14;
        v14 += 4;
        *v40++ = v41;
        v15 -= 4;
      }

      while (v15);
      memcpy(v39, v17, *(a1 + 8) - v17);
      v42 = *a1;
      v43 = &v39[*(a1 + 8) - v17];
      *(a1 + 8) = v17;
      v44 = v17 - v42;
      v45 = (v38 - (v17 - v42));
      memcpy(v45, v42, v44);
      v46 = *a1;
      *a1 = v45;
      *(a1 + 8) = v43;
      *(a1 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }

      goto LABEL_38;
    }

    v23 = (v19 - v17) >> 2;
    if (v23 >= v16)
    {
      v27 = &v17[v15];
      v28 = (v19 - v15);
      v29 = *(a1 + 8);
      while (v28 < v19)
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      *(a1 + 8) = v29;
      if (v19 != v27)
      {
        memmove(&v17[v15], v17, v19 - v27);
      }

      v35 = v17;
      v36 = v14;
      v37 = v15;
      goto LABEL_37;
    }

    v24 = &v14[v19 - v17];
    v25 = *(a1 + 8);
    while (v24 != v13)
    {
      v26 = *v24++;
      *v25++ = v26;
    }

    *(a1 + 8) = v25;
    if (v23 >= 1)
    {
      v31 = &v17[v15];
      v32 = (v25 - v15);
      v33 = v25;
      while (v32 < v19)
      {
        v34 = *v32++;
        *v33++ = v34;
      }

      *(a1 + 8) = v33;
      if (v25 != v31)
      {
        memmove(&v17[v15], v17, v25 - v31);
      }

      if (v19 != v17)
      {
        v35 = v17;
        v36 = v14;
        v37 = v19 - v17;
LABEL_37:
        memmove(v35, v36, v37);
      }
    }
  }

LABEL_38:
  *(a1 + 24) = *(a1 + 24) - a3 + ((a4[1] - *a4) >> 2);
}

void *TI::Favonius::FavoniusStrokeBuildManager::delete_from_stroke_history_for_UI(uint64_t a1, atomic_uint **a2)
{
  v3 = *(a1 + 160);
  memset(v6, 0, 24);
  TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v3, v6);
  TI::Favonius::KeyboardLayout::key_for_char(&v5, *a2, 8u);
  if (v5)
  {
    operator new();
  }

  return WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v6);
}

void TI::Favonius::FavoniusStrokeBuildManager::lookup_inline_completions_for_UI(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 24) + 24))(*(a1 + 24)))
  {
    WORD2(v34) = 0;
    BYTE6(v34) = 0;
    v35 = " \t\n";
    LODWORD(v34) = 1048579;
    v36 = 0;
    KB::sbs_string_tokenize(v19, a2, &v34);
    v10 = v35;
    if (v35 && BYTE6(v34) == 1)
    {
      free(v35);
    }

    v12 = *v19;
    v11 = v20;
    if ((v20 - *v19) == 32 && **v19 < *a2)
    {
      KB::String::space(v10);
      KB::String::String(&v34, v12);
      KB::String::append(&v34, &KB::String::space(void)::space);
      KB::String::operator=(*v19, &v34);
      if (v35 && BYTE6(v34) == 1)
      {
        free(v35);
      }

      v12 = *v19;
      v11 = v20;
    }

    if (v11 == v12)
    {
      KB::String::String(v21, "");
    }

    else
    {
      KB::String::String(v21, (v11 - 32));
    }

    KB::Word::Word(&v28, v21, &kTITokenIDUNK, 0);
    KB::Candidate::Candidate(&v34, &v28);
    KB::Word::~Word(&v28);
    if (v21[1] && BYTE6(v21[0]) == 1)
    {
      free(v21[1]);
    }

    if ((*(*a1 + 152))(a1))
    {
      v16 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
      if (*(a1 + 336) == 1)
      {
        v17 = *(a1 + 332);
        if (v17 <= 1.0 && v17 >= 0.0)
        {
          v16 = (a1 + 332);
        }
      }
    }

    else
    {
      v16 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
    }

    v38 = *v16;
    v39 = -8388608;
    v37 = 0u;
    KB::Candidate::Candidate(&v28, &v34);
    v21[0] = 0;
    v21[1] = 0;
    __p[0] = 0;
    std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate const*,KB::Candidate const*>(v21, &v28, &v33);
  }

  HIDWORD(v32) = 0;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  bzero(&v34, 0x3E8uLL);
  KB::Candidate::Candidate(&v34);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  *__p = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v25);
  language_modeling::v1::LinguisticContext::LinguisticContext((&v25 + 8));
  v26 = 0uLL;
  v27 = 0;
  std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(*(a5 + 24), &v28, &v34, v21, 0);
  *v19 = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v19);
  language_modeling::v1::LinguisticContext::~LinguisticContext((&v25 + 8));
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v25);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v21[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21[1]);
  }

  KB::Candidate::~Candidate(&v34);
  *a6 = v28;
  v13 = v29[3];
  *(a6 + 16) = v29[0];
  v28 = 0uLL;
  *(a6 + 24) = *&v29[1];
  *(a6 + 40) = v13;
  memset(v29, 0, sizeof(v29));
  *(a6 + 48) = v30;
  v14 = v31[3];
  v15 = v32;
  *(a6 + 64) = v31[0];
  v30 = 0uLL;
  *(a6 + 72) = *&v31[1];
  memset(v31, 0, sizeof(v31));
  *(a6 + 88) = v14;
  *(a6 + 96) = v15;
  *(a6 + 104) = 1;
  v34 = &v31[1];
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = &v30;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = &v29[1];
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
  v34 = &v28;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v34);
}

uint64_t std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(uint64_t a1@<X0>, const KB::LanguageModelContext *a2@<X1>, const KB::String **a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55[5] = *MEMORY[0x277D85DE8];
  KB::LanguageModelContext::LanguageModelContext(v26, a2);
  v11 = *a4;
  v12 = a4[1];
  if (*a4 == v12)
  {
LABEL_13:
    std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v34, a6);
    operator new();
  }

  while (1)
  {
    v13 = (*(**(a1 + 24) + 120))(*(a1 + 24));
    KB::DictionaryContainer::word_with_string(v47, v13, v11, 0);
    if (!LOWORD(v47[0]))
    {
      KB::string_to_lowercase(v42, v11, 0);
      v14 = (*(**(a1 + 24) + 120))(*(a1 + 24));
      KB::DictionaryContainer::word_with_string(v35, v14, v42, 0);
      KB::String::operator=(v47, v35);
      if (v48 >= 0xFu && *(&v48 + 1))
      {
        MEMORY[0x2318BE250](*(&v48 + 1), 0x1000C8077774924);
      }

      v48 = v36;
      if (v36 >= 0xFu)
      {
        LOWORD(v36) = 0;
      }

      v49 = v37;
      v50 = v38;
      KB::String::operator=(v51, v39);
      v51[2] = v39[2];
      v51[3] = v39[3];
      v52 = v39[4];
      v53 = v39[5];
      KB::String::operator=(v54, v40);
      v54[32] = v40[32];
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v55, v41);
      KB::Word::~Word(v35);
      if (v42[1] && BYTE6(v42[0]) == 1)
      {
        free(v42[1]);
      }

      if (!LOWORD(v47[0]))
      {
        break;
      }
    }

    v15 = *(&v52 + 1);
    KB::LanguageModelContext::append(v26, v15, v11, 0);
    KB::Word::~Word(v47);
    v11 = (v11 + 32);
    if (v11 == v12)
    {
      goto LABEL_13;
    }
  }

  HIDWORD(v46) = 0;
  *v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  bzero(v35, 0x3E8uLL);
  KB::Candidate::Candidate(v35);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  *v20 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v23);
  language_modeling::v1::LinguisticContext::LinguisticContext((&v23 + 8));
  v24 = 0uLL;
  v25 = 0;
  std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(*(a6 + 24), v42, v35, &v19, 0);
  v33 = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v33);
  language_modeling::v1::LinguisticContext::~LinguisticContext((&v23 + 8));
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v23);
  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19 + 1));
  }

  KB::Candidate::~Candidate(v35);
  *a7 = *v42;
  v16 = *(&v43[1] + 1);
  *(a7 + 16) = *&v43[0];
  v42[0] = 0;
  v42[1] = 0;
  *(a7 + 24) = *(v43 + 8);
  *(a7 + 40) = v16;
  memset(v43, 0, sizeof(v43));
  *(a7 + 48) = v44;
  v17 = *(&v45[1] + 1);
  *(a7 + 64) = *&v45[0];
  v44 = 0uLL;
  *(a7 + 72) = *(v45 + 8);
  memset(v45, 0, sizeof(v45));
  v18 = v46;
  *(a7 + 88) = v17;
  *(a7 + 96) = v18;
  *(a7 + 104) = 1;
  v35[0] = v45 + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  v35[0] = &v44;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  v35[0] = v43 + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  v35[0] = v42;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  KB::Word::~Word(v47);
  v35[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v35);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v31);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v30);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }
}

uint64_t std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = a5;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, a3, a4, &v11);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(v6, v7, v8, v9, v10);
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = *a5;
  v10 = *a2;
  v11 = a2[1];
  while (v10 != v11)
  {
    v18[0] = *(v10 + 748);
    *(v18 + 12) = *(v10 + 760);
    if (*v10)
    {
      v12 = 240 * *v10;
      v13 = (*(v10 + 8) + 52);
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

    update_lookup_suggestions_omega_factors(v10, v18, 0, v14);
    v10 += 1000;
  }

  v16 = *(a1 + 32);

  return std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(v16, a2, a3, a4, v9);
}

void update_lookup_suggestions_omega_factors(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v9 = logf(a4);
  v10 = v6 + (v8 * (v9 + v7));
  if (a3)
  {
    if (*a1)
    {
      v11 = 240 * *a1;
      v12 = (*(a1 + 8) + 100);
      v13 = 1.0;
      do
      {
        v14 = *v12;
        v12 += 60;
        v13 = v13 * v14;
        v11 -= 240;
      }

      while (v11);
    }

    else
    {
      v13 = 1.0;
    }

    v10 = v10 + (v8 * logf(v13));
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 888))
    {
      v16 = *(a1 + 896);
      if (!v16)
      {
        v16 = (a1 + 904);
      }
    }

    else
    {
      KB::Candidate::compute_string(a1);
      v15 = *(a1 + 896);
      if (!v15)
      {
        v15 = (a1 + 904);
      }

      if (*(a1 + 888))
      {
        v16 = v15;
      }

      else
      {
        v16 = "";
      }
    }

    *buf = 136316162;
    v20 = "update_lookup_suggestions_omega_factors";
    v21 = 2080;
    v22 = v16;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  LM_SPI_changes candidate = %s, omega_factors.geometry = %f, omega_factors.word = %f recalculated log_omega = %f", buf, 0x34u);
  }

  *(a1 + 744) = v10;
  *(a1 + 748) = v6;
  *(a1 + 752) = v9;
  *(a1 + 756) = v7;
  *(a1 + 760) = v8;
  *(a1 + 772) = v18;
  *(a1 + 764) = v17;
  *(a1 + 992) = 1;
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_283FDBA00;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x2318BE270);
}

void *std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_283FDBA00;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String *a1@<X1>, KB::String *this@<X4>, uint64_t a3@<X0>, const KB::LanguageModelContext *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v10 = a5;
  v75 = *MEMORY[0x277D85DE8];
  v61 = a6;
  if (a6 == 5)
  {
    KB::String::String(v73, a1);
    v14 = *(a7 + 24);
    if (v14)
    {
      if (v14 == a7)
      {
        v72 = v71;
        (*(*v14 + 24))(v14, v71);
      }

      else
      {
        v72 = (*(*v14 + 16))(v14);
      }
    }

    else
    {
      v72 = 0;
    }

    TI::Favonius::FavoniusStrokeBuildManager::latham_conversions(a3, v10, v73, a9, a4);
    std::__function::__value_func<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::~__value_func[abi:nn200100](v71);
    if (v74)
    {
      if (v73[6] == 1)
      {
        free(v74);
      }
    }
  }

  else
  {
    v16 = a6;
    KB::String::operator=(this, (a3 + 128));
    *(a9 + 100) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *(a9 + 48) = 0u;
    *(a9 + 64) = 0u;
    *(a9 + 80) = 0u;
    v18 = *(a3 + 160);
    if (*(a3 + 72) > v18 && (*(a3 + 209) & 1) == 0)
    {
      v48 = a8;
      v49 = *(a3 + 80);
      v66 = 0x100000;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v19 = (*(*a3 + 432))(a3);
      v60 = v19;
      if (v16 < 2 || v16 == 4)
      {
        v25 = *(v49 + 8 * v18);
        if ((v16 & 0xFFFFFFFD) == 1)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        if ((*(*a3 + 152))(a3))
        {
          v27 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
          if (*(a3 + 336) == 1)
          {
            v28 = *(a3 + 332);
            if (v28 <= 1.0 && v28 >= 0.0)
            {
              v27 = (a3 + 332);
            }
          }
        }

        else
        {
          v27 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
        }

        v47 = v10;
        (*(*v25 + 128))(&v56, v25, v10, &v66, v16, 1, *v27);
        v31 = v56;
        v30 = v57;
        if (v56 != v57)
        {
          while (*v31)
          {
            v32 = v31[1] + 240 * *v31;
            v33 = *(v32 - 232);
            v34 = (v32 - 224);
            if (v33)
            {
              v34 = v33;
            }

            if (*v34 == 32 && !v34[1])
            {
              break;
            }

            v31 += 125;
            if (v31 == v57)
            {
              v31 = v57;
              goto LABEL_55;
            }
          }

          if (v31 != v57)
          {
            v46 = a4;
            v35 = v31 + 125;
            if (v31 + 125 != v57)
            {
              do
              {
                if (*v35)
                {
                  v36 = v35[1] + 240 * *v35;
                  v37 = *(v36 - 232);
                  v38 = (v36 - 224);
                  if (v37)
                  {
                    v38 = v37;
                  }

                  if (*v38 != 32 || v38[1])
                  {
                    KB::Candidate::operator=(v31, v35);
                    v31 += 125;
                  }
                }

                v35 += 125;
              }

              while (v35 != v30);
              v30 = v57;
              v16 = v61;
            }

            a4 = v46;
          }
        }

LABEL_55:
        std::vector<KB::Candidate>::erase(&v56, v31, v30);
        if (v16 == 1 && ((*(**(a3 + 24) + 48))(*(a3 + 24)) & 1) != 0)
        {
          goto LABEL_70;
        }

        v39 = a4;
        v40 = *(v49 + 8 * v18);
        if ((*(*a3 + 152))(a3))
        {
          v41 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
          v42 = v48;
          if (*(a3 + 336) == 1)
          {
            v43 = *(a3 + 332);
            if (v43 <= 1.0 && v43 >= 0.0)
            {
              v41 = (a3 + 332);
            }
          }
        }

        else
        {
          v41 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
          v42 = v48;
        }

        (*(*v40 + 120))(v52, v40, v47, &v66, v16, *v41);
        KB::CandidateCollection::operator=(a9, v52);
        v62 = &v55;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v62);
        v62 = &v54;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v62);
        v62 = &v53;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v62);
        v62 = v52;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v62);
        if ((v42 & 1) == 0 && (0x1CAC083126E978D5 * ((*(a9 + 8) - *a9) >> 3)) >= 0x1F)
        {
          std::vector<KB::Candidate>::resize(a9, 0x1EuLL);
        }

        a4 = v39;
        if (v16 == 1)
        {
LABEL_70:
          (*(**(a3 + 24) + 136))(*(a3 + 24), a9);
        }

        (*(**(a3 + 24) + 64))(*(a3 + 24), a9, 1);
        KB::String::append(this, &v66);
        (*(**(a3 + 24) + 72))(*(a3 + 24), &v56, a4, a9, v16, v26);
        v52[0] = 0;
        std::vector<KB::FilterFlagType>::vector[abi:nn200100](&v50, v52, 1uLL);
        KB::CandidateFilterFlags::CandidateFilterFlags(&__p, &v50);
      }

      if (v16 == 3)
      {
        v20 = v19;
        v21 = *(v49 + 8 * v18);
        if ((*(*a3 + 152))(a3))
        {
          v22 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
          if (*(a3 + 336) == 1)
          {
            v23 = *(a3 + 332);
            if (v23 <= 1.0 && v23 >= 0.0)
            {
              v22 = (a3 + 332);
            }
          }
        }

        else
        {
          v22 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
        }

        (*(*v21 + 136))(v52, v21, v10, &v66, 3, *v22);
        KB::String::append(this, &v66);
        v45 = *(a3 + 24);
        v63 = &unk_283FDB970;
        v64 = v20;
        v65 = &v63;
        (*(*v45 + 80))(v45, v52, a4, a9, &v63);
        std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](&v63);
        memset(v58, 0, sizeof(v58));
        KB::CandidateFilterFlags::CandidateFilterFlags(&v59, v58);
      }
    }
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::latham_conversions(uint64_t a1@<X0>, unsigned int a2@<W1>, KB *a3@<X2>, uint64_t a5@<X8>, uint64_t *x3_0@<X3>)
{
  *(a5 + 100) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  v7 = *(a1 + 704);
  if (v7)
  {
    (*(*v7 + 80))(v7, a5, 0);
    v12 = *(a1 + 8);
    if (v12 && *(*(*v12 + 48))(v12) && (*(*(*(**(a1 + 8) + 48))(*(a1 + 8)) + 65) & 1) == 0)
    {
      v29 = 0;
      memset(v27, 0, sizeof(v27));
      memset(v28, 0, sizeof(v28));
      v13 = *a5;
      v14 = *(a5 + 8);
      if (*a5 != v14)
      {
        do
        {
          v15 = *v13;
          if (*v13)
          {
            v16 = 240 * v15;
            v17 = *(v13 + 1);
            while ((*(v17 + 192) & 1) == 0)
            {
              v17 += 240;
              v16 -= 240;
              if (!v16)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            v17 = *(v13 + 1);
          }

          if (v17 == *(v13 + 1) + 240 * v15)
          {
LABEL_13:
            std::vector<KB::Candidate>::push_back[abi:nn200100](v27, v13);
          }

          v13 = (v13 + 1000);
        }

        while (v13 != v14);
      }

      KB::CandidateCollection::operator=(a5, v27);
      v25[0] = &v28[1] + 1;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = v28;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = &v27[3];
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = v27;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
    }

    v18 = a2;
    v19 = *(a1 + 904);
    (*(**(a1 + 24) + 112))(v25);
    if (v26)
    {
      v19 = v25[1];
      v20 = v25[0];
    }

    else
    {
      v20 = v18;
    }

    if (0x1CAC083126E978D5 * ((*(a5 + 8) - *a5) >> 3) > v20)
    {
      std::vector<KB::Candidate>::resize(a5, v20);
    }

    if (a1 + 800 != a5)
    {
      std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 800, *a5, *(a5 + 8), 0x1CAC083126E978D5 * ((*(a5 + 8) - *a5) >> 3));
    }

    if ((*(*a1 + 384))(a1))
    {
      TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(v27, a3, a1, a5, x3_0, a1 + 776, v19);
      LODWORD(v30) = 0;
      std::vector<KB::FilterFlagType>::vector[abi:nn200100](&v23, &v30, 1uLL);
      KB::CandidateFilterFlags::CandidateFilterFlags(&__p, &v23);
    }

    LODWORD(v27[0]) = 0;
    std::vector<KB::FilterFlagType>::vector[abi:nn200100](&v21, v27, 1uLL);
    KB::CandidateFilterFlags::CandidateFilterFlags(&v22, &v21);
  }
}

void std::vector<KB::Candidate>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0x1CAC083126E978D5 * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v11 = (v4 + 1000 * a2);
      while (v3 != v11)
      {
        v3 = (v3 - 1000);
        KB::Candidate::~Candidate(v3);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v8 = a1[2];
    if (0x1CAC083126E978D5 * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x4189374BC6A7EFLL)
      {
        v9 = 0x395810624DD2F1AALL * ((v8 - v4) >> 3);
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if ((0x1CAC083126E978D5 * ((v8 - v4) >> 3)) >= 0x20C49BA5E353F7)
        {
          v10 = 0x4189374BC6A7EFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v10);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = v3 + 1000 * v7;
    v13 = 1000 * a2 - 8 * (v5 >> 3);
    do
    {
      bzero(v3, 0x3E8uLL);
      KB::Candidate::Candidate(v3);
      v3 = (v3 + 1000);
      v13 -= 1000;
    }

    while (v13);
    a1[1] = v12;
  }
}

void *std::vector<KB::FilterFlagType>::vector[abi:nn200100](void *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

void TI::Favonius::FavoniusStrokeBuildManager::update_autocorrection_candidates_with_ensemble(TI::Favonius::FavoniusStrokeBuildManager *this, KB::Candidate **a2, const KB::String *a3, const KB::LanguageModelContext *a4)
{
  if (!TI::Favonius::FavoniusStrokeBuildManager::shouldSkipEnsembleForFavoniusCandidates(this, a2, a3, a4))
  {
    TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_ml_tap_typing(this, a2, a3, a4);

    TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(this, a2, a3, a4);
  }
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::shouldSkipEnsembleForFavoniusCandidates(TI::Favonius::FavoniusStrokeBuildManager *this, const KB::CandidateCollection *a2, const KB::String *a3, const KB::String *a4)
{
  v4 = *a2;
  if (*a2 == *(a2 + 1))
  {
    return 0;
  }

  if (!*(v4 + 888))
  {
    KB::Candidate::compute_string(*a2);
  }

  v7 = *(*(this + 2) + 16);
  v8 = 1;
  atomic_fetch_add(v7, 1u);
  v9 = KB::CollatorWrapper::sortkey_compare_strings((*(v7 + 8) + 72), (v4 + 888), a3, a4);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
  if (v9)
  {
    v10 = *(v4 + 8);
    v11 = v10 + 240 * *v4;
    if (*v4)
    {
      v12 = 240 * *v4;
      while ((*(v10 + 106) & 1) == 0)
      {
        v10 += 240;
        v12 -= 240;
        if (!v12)
        {
          v10 = v11;
          return v10 != v11;
        }
      }
    }

    return v10 != v11;
  }

  return v8;
}

void TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_ml_tap_typing(TI::Favonius::FavoniusStrokeBuildManager *this, KB::Candidate **a2, const KB::String *a3, const KB::LanguageModelContext *a4)
{
  if (TI::Favonius::FavoniusStrokeBuildManager::is_ml_tap_typing_enabled(this))
  {
    TI::Favonius::FavoniusStrokeBuildManager::ml_tap_typing_autocorrection_candidates(v15, this, a3, 1u, a4);
    v10 = v15[0];
    if (v15[0] != v15[1])
    {
      v11 = *a2;
      if (*a2 == a2[1])
      {
        std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v15[0]);
      }

      else
      {
        if (!*(v11 + 444))
        {
          KB::Candidate::compute_string(*a2);
        }

        if (!*(v10 + 444))
        {
          KB::Candidate::compute_string(v10);
        }

        if (v11 != v10 && !KB::String::equal((v11 + 888), (v10 + 222), 1, v8, v9) && *(v11 + 188) < v10[188])
        {
          std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v10);
          v12 = a2[1];
          v13 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v12 - *a2) >> 3));
          if (v12 == *a2)
          {
            v14 = 0;
          }

          else
          {
            v14 = v13;
          }

          std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a2, v12, v14, 1);
        }
      }
    }

    v19 = &v18;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v19);
    v19 = &v17;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v19);
    v19 = &v16;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v19);
    v19 = v15;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v19);
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(TI::Favonius::FavoniusStrokeBuildManager *this, KB::CandidateCollection *a2, const KB::String *a3, const KB::LanguageModelContext *a4)
{
  v28[27] = *MEMORY[0x277D85DE8];
  if (((TI::Favonius::FavoniusStrokeBuildManager::is_ml_tap_typing_enabled(this) & 1) != 0 || (*(**(this + 3) + 40))(*(this + 3)) && *(this + 212) == 1) && *a2 != *(a2 + 1) && *a3 != 0)
  {
    (*(**(this + 3) + 128))(&__p);
    v9 = __p;
    if (__p != v21)
    {
      v10 = *a2;
      KB::Candidate::Candidate(v27, a3, 0);
      KB::LanguageModelContext::operator=(v28, a4);
      v19 = 0;
      memset(v17, 0, sizeof(v17));
      memset(v18, 0, sizeof(v18));
      v11 = __p;
      v12 = v21;
      while (v11 != v12)
      {
        KB::Candidate::Candidate(v24, v27);
        if (*&v24[0])
        {
          v13 = 240 * *&v24[0];
          v14 = (*(&v24[0] + 1) + 136);
          do
          {
            *v14 = *v11;
            v14 += 60;
            v13 -= 240;
          }

          while (v13);
        }

        std::vector<KB::Candidate>::push_back[abi:nn200100](v17, v24);
        KB::Candidate::~Candidate(v24);
        ++v11;
      }

      v16 = 0.0;
      v15 = *(this + 3);
      v23[0] = &unk_283FDB928;
      v23[1] = &v16;
      v23[3] = v23;
      (*(*v15 + 56))(v15, v17, v23);
      std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](v23);
      if (logf(v16) >= *(v10 + 752))
      {
        v26 = 0;
        memset(v24, 0, sizeof(v24));
        memset(v25, 0, sizeof(v25));
        KB::CandidateCollection::operator=(a2, v24);
        v22 = &v25[1] + 1;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v22);
        v22 = v25;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v22);
        v22 = &v24[1] + 1;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v22);
        v22 = v24;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v22);
      }

      *&v24[0] = &v18[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
      *&v24[0] = v18;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
      *&v24[0] = &v17[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
      *&v24[0] = v17;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
      KB::Candidate::~Candidate(v27);
      v9 = __p;
    }

    if (v9)
    {
      v21 = v9;
      operator delete(v9);
    }
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::is_ml_tap_typing_enabled(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = (*(**(this + 3) + 40))(*(this + 3));
  if (result)
  {
    if (((*(**(this + 3) + 32))(*(this + 3)) & 1) == 0)
    {
      v3 = *(this + 90);
      if (v3)
      {
        v4 = *(v3 + 64);
        if (v4)
        {
          CFRetain(*(v3 + 64));
          CFRelease(v4);
          v5 = *(this + 9);
          if (!v5)
          {
            return 1;
          }

          v6 = *(this + 10);
          v7 = 8 * v5;
          while (1)
          {
            v8 = (*(**v6 + 32))();
            if (v8)
            {
              if ((*(*(v8 + 8) + 60) & 0x80) != 0)
              {
                break;
              }
            }

            v6 += 8;
            v7 -= 8;
            if (!v7)
            {
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0>,void ()(KB::Candidate &,float)>::operator()(uint64_t result, uint64_t a2, float *a3)
{
  v3 = *(result + 8);
  if (*v3 < *a3)
  {
    *v3 = *a3;
  }

  return result;
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0>,void ()(KB::Candidate &,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDB928;
  a2[1] = v2;
  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::ml_tap_typing_autocorrection_candidates(uint64_t *__return_ptr a1@<X8>, TI::Favonius::FavoniusStrokeBuildManager *this@<X0>, const KB::String *a3@<X2>, unsigned int a4@<W1>, uint64_t *a5@<X3>)
{
  v46[3] = *MEMORY[0x277D85DE8];
  TI::TIInputRecognizer::generate_mltt_autocorrection_candidates(*(this + 90), a3, this + 920, &__p);
  v10 = __p;
  v11 = v39;
  if (__p != v39)
  {
    v12 = __p;
    while (*(v12 + 4) != *(v12 + 5))
    {
      v12 += 136;
      if (v12 == v39)
      {
        goto LABEL_14;
      }
    }

    if (v12 != v39)
    {
      v13 = (v12 + 136);
      if (v12 + 136 != v39)
      {
        do
        {
          if (*(v13 + 4) != *(v13 + 5))
          {
            KB::String::operator=(v12, v13);
            KB::CandidateCollection::operator=((v12 + 32), v13 + 32);
            v12 += 136;
          }

          v13 = (v13 + 136);
        }

        while (v13 != v11);
        v10 = __p;
        v11 = v39;
      }
    }

    if (v12 != v11)
    {
      std::vector<TI::MLTTAutocorrectionCandidateInfo>::__base_destruct_at_end[abi:nn200100](&__p, v12);
      v10 = __p;
      v11 = v39;
    }
  }

LABEL_14:
  *(a1 + 25) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  if (v10 != v11)
  {
    do
    {
      v46[0] = 0;
      v46[1] = 0;
      v45 = v46;
      TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(&v40, v10, this, v10 + 4, a5, &v45, *(this + 113));
      std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(v46[0]);
      KB::CandidateCollection::add(a1, &v40);
      v45 = &v44;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v45);
      v45 = &v43;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v45);
      v45 = &v42;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v45);
      v45 = &v40;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v45);
      v10 += 17;
    }

    while (v10 != v11);
    v17 = *a1;
    v18 = a1[1];
    if (*a1 != v18)
    {
      v19 = (v17 + 888);
      while (1)
      {
        if (!*v19)
        {
          KB::Candidate::compute_string((v19 - 888));
        }

        KB::lower_string(&v40, v19, 0, v14, v15, v16);
        KB::lower_string(&v45, a3, 0, v20, v21, v22);
        v25 = KB::String::equal(&v40, &v45, 1, v23, v24);
        if (v46[0] && BYTE6(v45) == 1)
        {
          free(v46[0]);
        }

        if (v41 && BYTE6(v40) == 1)
        {
          free(v41);
        }

        if (v25)
        {
          break;
        }

        v26 = v19 + 112;
        v19 = (v19 + 1000);
        if (v26 == v18)
        {
          goto LABEL_31;
        }
      }

      v18 = v19 - 888;
LABEL_31:
      v17 = v18;
      v18 = a1[1];
    }

    if (v17 != v18)
    {
      KB::Candidate::Candidate(&v40, v17);
      v27 = *a1;
      if (a1[2] == *a1)
      {
        std::vector<KB::Candidate>::__vdeallocate(a1);
        v32 = 0x395810624DD2F1AALL * ((a1[2] - *a1) >> 3);
        if (v32 <= 1)
        {
          v32 = 1;
        }

        if ((0x1CAC083126E978D5 * ((a1[2] - *a1) >> 3)) >= 0x20C49BA5E353F7)
        {
          v33 = 0x4189374BC6A7EFLL;
        }

        else
        {
          v33 = v32;
        }

        std::vector<KB::Candidate>::__vallocate[abi:nn200100](a1, v33);
      }

      v28 = a1[1];
      v29 = v28 - v27;
      if (v28 == v27)
      {
        KB::Candidate::Candidate(a1[1], &v40);
        v30 = v29 + v28 + 1000;
      }

      else
      {
        v30 = (v27 + 125);
        KB::Candidate::operator=(v27, &v40);
          ;
        }
      }

      a1[1] = v30;
      KB::Candidate::~Candidate(&v40);
    }
  }

  TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(this, a1, 0);
  KB::CandidateCollection::normalize_scores(a1);
  v35 = a1[1];
  v36 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v35 - *a1) >> 3));
  if (v35 == *a1)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,false>(*a1, v35, v37, 1, v34);
  if (0x1CAC083126E978D5 * ((a1[1] - *a1) >> 3) > a4)
  {
    std::vector<KB::Candidate>::resize(a1, a4);
  }

  if (__p)
  {
    std::vector<TI::MLTTAutocorrectionCandidateInfo>::__base_destruct_at_end[abi:nn200100](&__p, __p);
    operator delete(__p);
  }
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions@<X0>(unint64_t **__return_ptr a1@<X8>, KB *this@<X2>, uint64_t a3@<X0>, unint64_t **a4@<X1>, uint64_t *a5@<X3>, uint64_t a6@<X4>, unint64_t a7@<X5>)
{
  v187 = *MEMORY[0x277D85DE8];
  *(a1 + 25) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  v10 = *(*(a3 + 16) + 16);
  atomic_fetch_add(v10, 1u);
  v95 = v10;
  v96 = *(v10 + 8);
  KB::word_ranges(&__p, this, 1);
  LODWORD(v165[0]) = 0x100000;
  WORD2(v165[0]) = 0;
  BYTE6(v165[0]) = 0;
  v165[1] = 0;
  v166 = 0;
  v167[0] = 0;
  v168 = 0x3F80000000000000;
  v169 = 1065353216;
  v170 = 0x100000;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  __asm { FMOV            V9.2S, #1.0 }

  *&v175 = _D9;
  *(&v178 + 1) = 0;
  v176 = 0u;
  v177 = 0u;
  DWORD2(v175) = 0;
  LODWORD(v178) = 0;
  v179 = 0x100000;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  memset(v185, 0, sizeof(v185));
  v186 = 1065353216;
  v16 = __p;
  v17 = v111;
  if (__p == v111)
  {
    v19 = *this;
    if (*(this + 1))
    {
      v18 = *(this + 1);
    }

    else
    {
      v18 = this + 16;
    }

    *&v108 = v18;
    DWORD2(v108) = v19;
    HIDWORD(v108) = v19;
    LODWORD(v109) = 0;
    KB::String::iterator::initialize(&v108);
  }

  else
  {
    if (*(this + 1))
    {
      v18 = *(this + 1);
    }

    else
    {
      v18 = this + 16;
    }

    *&v125 = v18;
    v19 = *this;
    DWORD2(v125) = 0;
    HIDWORD(v125) = v19;
    LODWORD(v126) = 0;
    KB::String::iterator::initialize(&v125);
    v20 = *(v17 - 2);
    v108 = v125;
    v109 = v126;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v108, v20);
  }

  *&v125 = v18;
  DWORD2(v125) = 0;
  HIDWORD(v125) = v19;
  LODWORD(v126) = 0;
  KB::String::iterator::initialize(&v125);
  if (DWORD2(v125) != DWORD2(v108))
  {
    *&v125 = v18;
    DWORD2(v125) = 0;
    HIDWORD(v125) = v19;
    LODWORD(v126) = 0;
    KB::String::iterator::initialize(&v125);
    KB::String::String(&v120, &v125, &v108);
    v21 = KB::Word::Word(&v125, &v120, &kTITokenIDUNK, 0);
    KB::String::space(v21);
    if (KB::String::equal(&v120, &KB::String::space(void)::space, 1, v22, v23))
    {
      DWORD1(v133) |= 0x4000000u;
    }

    DWORD2(v131) |= 0x800000u;
    KB::String::operator=(v165, &v125);
    KB::ByteString::operator=(v167, v127);
    v168 = v128;
    v169 = v129;
    KB::String::operator=(&v170, v130);
    v175 = v131;
    v176 = v132;
    v177 = v133;
    v178 = v134;
    KB::String::operator=(&v179, v135);
    v184 = v136;
    v186 = v138;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v185, v137);
    KB::Word::~Word(&v125);
    if (*(&v120 + 1) && BYTE6(v120) == 1)
    {
      free(*(&v120 + 1));
    }
  }

  LODWORD(v143[0]) = 0x100000;
  WORD2(v143[0]) = 0;
  BYTE6(v143[0]) = 0;
  v143[1] = 0;
  v144 = 0;
  v145[0] = 0;
  v146 = 0x3F80000000000000;
  v147 = 1065353216;
  v148 = 0x100000;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  *&v153 = _D9;
  *(&v156 + 1) = 0;
  v154 = 0u;
  v155 = 0u;
  DWORD2(v153) = 0;
  LODWORD(v156) = 0;
  v157 = 0x100000;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  memset(v163, 0, sizeof(v163));
  v164 = 1065353216;
  v24 = a6;
  if (v16 == v17)
  {
    v106 = v108;
    v107 = v109;
    v27 = *this;
    v25 = *(this + 1);
  }

  else
  {
    v25 = *(this + 1);
    if (v25)
    {
      v26 = *(this + 1);
    }

    else
    {
      v26 = this + 16;
    }

    *&v120 = v26;
    v27 = *this;
    DWORD2(v120) = 0;
    HIDWORD(v120) = v27;
    LODWORD(v121) = 0;
    KB::String::iterator::initialize(&v120);
    v28 = *(v17 - 2);
    v125 = v120;
    v126 = v121;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v125, v28);
    v29 = *(v17 - 1);
    v106 = v125;
    v107 = v126;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v106, v29);
  }

  if (v25)
  {
    v30 = v25;
  }

  else
  {
    v30 = this + 16;
  }

  *&v125 = v30;
  DWORD2(v125) = v27;
  HIDWORD(v125) = v27;
  LODWORD(v126) = 0;
  KB::String::iterator::initialize(&v125);
  if (DWORD2(v106) != DWORD2(v125))
  {
    *&v125 = v30;
    DWORD2(v125) = v27;
    HIDWORD(v125) = v27;
    LODWORD(v126) = 0;
    KB::String::iterator::initialize(&v125);
    KB::String::String(&v120, &v106, &v125);
    v31 = KB::Word::Word(&v125, &v120, &kTITokenIDUNK, 0);
    KB::String::space(v31);
    if (KB::String::equal(&v120, &KB::String::space(void)::space, 1, v32, v33))
    {
      DWORD1(v133) |= 0x4000000u;
    }

    else
    {
      DWORD2(v131) |= 0x800000u;
    }

    KB::String::operator=(v143, &v125);
    KB::ByteString::operator=(v145, v127);
    v146 = v128;
    v147 = v129;
    KB::String::operator=(&v148, v130);
    v153 = v131;
    v154 = v132;
    v155 = v133;
    v156 = v134;
    KB::String::operator=(&v157, v135);
    v162 = v136;
    v164 = v138;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v163, v137);
    KB::Word::~Word(&v125);
    if (*(&v120 + 1))
    {
      if (BYTE6(v120) == 1)
      {
        free(*(&v120 + 1));
      }
    }
  }

  v105 = a5;
  if (v16 == v17)
  {
    if (LOWORD(v165[0]) | LOWORD(v143[0]))
    {
      KB::Candidate::Candidate(&v125);
      v139 = 0u;
      v140 = 0xFF8000003F800000;
      v59 = *a4;
      v58 = a4[1];
      if (*a4 != v58)
      {
        do
        {
          KB::Candidate::Candidate(&v120, v59);
          TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(KB::CandidateCollection const&,KB::String const&,KB::LanguageModelContext const&,std::map<KB::String,KB::CandidateCollection> const&,unsigned long)const::$_0::operator()(v117, &v105, v165, &v125, v143, &v120);
          v60 = a1[1];
          v61 = a1[2];
          if (v60 >= v61)
          {
            v63 = 0x1CAC083126E978D5 * ((v60 - *a1) >> 3);
            v64 = v63 + 1;
            if ((v63 + 1) > 0x4189374BC6A7EFLL)
            {
              goto LABEL_125;
            }

            v65 = 0x1CAC083126E978D5 * ((v61 - *a1) >> 3);
            if (2 * v65 > v64)
            {
              v64 = 2 * v65;
            }

            if (v65 >= 0x20C49BA5E353F7)
            {
              v66 = 0x4189374BC6A7EFLL;
            }

            else
            {
              v66 = v64;
            }

            v116 = a1;
            if (v66)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v66);
            }

            v67 = 1000 * v63;
            KB::Candidate::Candidate(v67, v117);
            v62 = v67 + 1000;
            v68 = a1[1];
            v69 = v67 + *a1 - v68;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a1, v68, v69);
            v70 = *a1;
            *a1 = v69;
            a1[1] = v62;
            v71 = a1[2];
            a1[2] = 0;
            v114 = v70;
            v115 = v71;
            v112 = v70;
            v113 = v70;
            std::__split_buffer<KB::Candidate>::~__split_buffer(&v112);
          }

          else
          {
            v62 = KB::Candidate::Candidate(v60, v117) + 1000;
          }

          a1[1] = v62;
          KB::Candidate::~Candidate(v117);
          KB::Candidate::~Candidate(&v120);
          v59 += 125;
        }

        while (v59 != v58);
      }

      KB::Candidate::~Candidate(&v125);
    }

    else if (a1 != a4)
    {
      std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1, *a4, a4[1], 0x1CAC083126E978D5 * (a4[1] - *a4));
    }
  }

  else
  {
    v34 = *(this + 1);
    if (!v34)
    {
      v34 = this + 16;
    }

    *&v125 = v34;
    v35 = *this;
    DWORD2(v125) = 0;
    HIDWORD(v125) = v35;
    LODWORD(v126) = 0;
    KB::String::iterator::initialize(&v125);
    v36 = *(v17 - 2);
    v103 = v125;
    v104 = v126;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v103, v36);
    v37 = *(v17 - 1);
    v101 = v103;
    v102 = v104;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v101, v37);
    KB::String::String(v141, &v103, &v101);
    v119 = 0;
    memset(v117, 0, sizeof(v117));
    memset(v118, 0, sizeof(v118));
    KB::lower_string(&v125, v141, 0, v38, v39, v40);
    v41 = v24 + 8;
    v42 = *(v24 + 8);
    v43 = *(&v125 + 1);
    if (!v42)
    {
      goto LABEL_51;
    }

    v44 = *(&v125 + 1) ? *(&v125 + 1) : &v126;
    v45 = v24 + 8;
    do
    {
      if (*(v42 + 40))
      {
        v46 = *(v42 + 40);
      }

      else
      {
        v46 = (v42 + 48);
      }

      v47 = strcmp(v46, v44);
      if (v47 >= 0)
      {
        v45 = v42;
      }

      v42 = *(v42 + ((v47 >> 28) & 8));
    }

    while (v42);
    if (v41 == v45 || (*(v45 + 40) ? (v48 = *(v45 + 40)) : (v48 = (v45 + 48)), strcmp(v44, v48) < 0))
    {
LABEL_51:
      v45 = v24 + 8;
    }

    if (v43 && BYTE6(v125) == 1)
    {
      free(v43);
    }

    if (v41 == v45 || (KB::CandidateCollection::operator=(v117, v45 + 64), v52 = *(&v117[0] + 1), v51 = *&v117[0], *&v117[0] == *(&v117[0] + 1)))
    {
      KB::Word::Word(&v120, v141, &kTITokenIDUNK, 0);
      v124 |= 0x800000u;
      KB::Candidate::Candidate(&v125, &v120);
      v139 = 0u;
      v140 = 0xFF8000003F800000;
      v53 = a4;
      if (*(&v117[0] + 1) >= *&v117[1])
      {
        v55 = 0x1CAC083126E978D5 * ((*(&v117[0] + 1) - *&v117[0]) >> 3);
        v56 = v55 + 1;
        if ((v55 + 1) > 0x4189374BC6A7EFLL)
        {
LABEL_125:
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (0x395810624DD2F1AALL * ((*&v117[1] - *&v117[0]) >> 3) > v56)
        {
          v56 = 0x395810624DD2F1AALL * ((*&v117[1] - *&v117[0]) >> 3);
        }

        if ((0x1CAC083126E978D5 * ((*&v117[1] - *&v117[0]) >> 3)) >= 0x20C49BA5E353F7)
        {
          v57 = 0x4189374BC6A7EFLL;
        }

        else
        {
          v57 = v56;
        }

        v116 = v117;
        if (v57)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v57);
        }

        v72 = 8 * ((*(&v117[0] + 1) - *&v117[0]) >> 3);
        KB::Candidate::Candidate(v72, &v125);
        v54 = 1000 * v55 + 1000;
        v73 = v72 + *&v117[0] - *(&v117[0] + 1);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*&v117[0], *(&v117[0] + 1), v73);
        v74 = *&v117[0];
        v75 = *&v117[1];
        *&v117[0] = v73;
        *(&v117[0] + 1) = v54;
        *&v117[1] = 0;
        v114 = v74;
        v115 = v75;
        v112 = v74;
        v113 = v74;
        std::__split_buffer<KB::Candidate>::~__split_buffer(&v112);
      }

      else
      {
        v54 = KB::Candidate::Candidate(*(&v117[0] + 1), &v125) + 1000;
      }

      *(&v117[0] + 1) = v54;
      KB::Candidate::~Candidate(&v125);
      KB::Word::~Word(&v120);
      v52 = *(&v117[0] + 1);
      v51 = *&v117[0];
    }

    else
    {
      v53 = a4;
    }

    v76 = 0x1CAC083126E978D5 * ((v52 - v51) >> 3);
    if (v76 >= a7)
    {
      v76 = a7;
    }

    v99 = v76;
    if (v52 != v51)
    {
      v77 = 0;
      do
      {
        v78 = v51 + 1000 * v77;
        if (v77 < v99)
        {
          goto LABEL_102;
        }

        if (!*(v78 + 888))
        {
          KB::Candidate::compute_string(v78);
        }

        if (!KB::CollatorWrapper::sortkey_compare_strings((v96 + 72), (v78 + 888), v141, v49))
        {
LABEL_102:
          if ((0x1CAC083126E978D5 * (v53[1] - *v53)) >= *(a3 + 912))
          {
            v79 = *(a3 + 912);
          }

          else
          {
            v79 = 0x1CAC083126E978D5 * (v53[1] - *v53);
          }

          if (!*(v78 + 888))
          {
            KB::Candidate::compute_string(v78);
          }

          if (KB::String::equal(v141, (v78 + 888), 0, v49, v50))
          {
            v79 = 0x1CAC083126E978D5 * (v53[1] - *v53);
          }

          if (v79)
          {
            v80 = 0;
            do
            {
              TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(KB::CandidateCollection const&,KB::String const&,KB::LanguageModelContext const&,std::map<KB::String,KB::CandidateCollection> const&,unsigned long)const::$_0::operator()(&v125, &v105, v165, v78, v143, &(*v53)[v80]);
              v81 = a1[1];
              v82 = a1[2];
              if (v81 >= v82)
              {
                v84 = 0x1CAC083126E978D5 * ((v81 - *a1) >> 3);
                v85 = v84 + 1;
                if ((v84 + 1) > 0x4189374BC6A7EFLL)
                {
                  goto LABEL_125;
                }

                v86 = 0x1CAC083126E978D5 * ((v82 - *a1) >> 3);
                if (2 * v86 > v85)
                {
                  v85 = 2 * v86;
                }

                if (v86 >= 0x20C49BA5E353F7)
                {
                  v87 = 0x4189374BC6A7EFLL;
                }

                else
                {
                  v87 = v85;
                }

                v123 = a1;
                if (v87)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v87);
                }

                v88 = 1000 * v84;
                KB::Candidate::Candidate(v88, &v125);
                v83 = v88 + 1000;
                v89 = a1[1];
                v90 = v88 + *a1 - v89;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a1, v89, v90);
                v91 = *a1;
                *a1 = v90;
                a1[1] = v83;
                v92 = a1[2];
                a1[2] = 0;
                v121 = v91;
                v122 = v92;
                *(&v120 + 1) = v91;
                *&v120 = v91;
                std::__split_buffer<KB::Candidate>::~__split_buffer(&v120);
                v53 = a4;
              }

              else
              {
                v83 = KB::Candidate::Candidate(v81, &v125) + 1000;
              }

              a1[1] = v83;
              KB::Candidate::~Candidate(&v125);
              v80 += 125;
              --v79;
            }

            while (v79);
          }
        }

        ++v77;
        v51 = *&v117[0];
      }

      while (v77 < 0x1CAC083126E978D5 * ((*(&v117[0] + 1) - *&v117[0]) >> 3));
    }

    *&v125 = &v118[1] + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v125);
    *&v125 = v118;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v125);
    *&v125 = &v117[1] + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v125);
    *&v125 = v117;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v125);
    if (v142 && v141[6] == 1)
    {
      free(v142);
    }
  }

  KB::Word::~Word(v143);
  KB::Word::~Word(v165);
  if (__p)
  {
    operator delete(__p);
  }

  result = v95;
  if (v95)
  {
    return WTF::RefCounted<KB::DictionaryContainer>::deref(v95);
  }

  return result;
}

void *TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(void *this, KB::CandidateCollection *a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (this[3])
  {
    v5 = this;
    v6 = (*(*this + 432))(this);
    (*(*v5[3] + 64))(v5[3], a2, a3 ^ 1u);
    v7 = v5[3];
    v8 = &unk_283FDBA48;
    v9 = v6;
    v10 = &v8;
    (*(*v7 + 56))(v7, a2, &v8);
    return std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](&v8);
  }

  return this;
}

void std::vector<TI::MLTTAutocorrectionCandidateInfo>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 130;
    do
    {
      v8 = (v5 + 98);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v8 = (v5 + 74);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v8 = (v5 + 50);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v8 = (v5 + 26);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v6 = *(v5 + 2);
      if (v6 && *v5 == 1)
      {
        free(v6);
      }

      v7 = v5 - 6;
      v5 -= 136;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0>,void ()(KB::Candidate &,float)>::operator()(uint64_t a1, float *a2, float *a3)
{
  v5 = *a3;
  v6 = a2[187];
  v7 = a2[189];
  v8 = a2[190];
  v10 = *a2;
  v9 = *(a2 + 1);
  if (*a2)
  {
    v11 = 240 * v10;
    v12 = *(a2 + 1);
    while ((*(v12 + 105) & 1) == 0)
    {
      v12 += 240;
      v11 -= 240;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v12 = *(a2 + 1);
  }

  if (v12 != v9 + 240 * v10)
  {
LABEL_16:
    v5 = v5 * 0.8;
    goto LABEL_17;
  }

LABEL_8:
  if (!v10)
  {
    v18 = logf(v5);
    v19 = v6 + (v8 * (v7 + v18));
    v22 = 1.0;
    if ((*(a1 + 8) & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v13 = 240 * v10 - 240;
  v14 = (v9 + 224);
  do
  {
    v16 = *v14;
    v14 += 30;
    v15 = v16;
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = v13 == 0;
    }

    v13 -= 240;
  }

  while (!v17);
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_17:
  v18 = logf(v5);
  v19 = v6 + (v8 * (v7 + v18));
  if (*(a1 + 8))
  {
    if (v10)
    {
      v20 = 240 * v10;
      v21 = (v9 + 100);
      v22 = 1.0;
      do
      {
        v23 = *v21;
        v21 += 60;
        v22 = v22 * v23;
        v20 -= 240;
      }

      while (v20);
    }

    else
    {
      v22 = 1.0;
    }

LABEL_25:
    v19 = v19 + (v8 * logf(v22));
  }

LABEL_26:
  a2[186] = v19;
  a2[187] = v6;
  a2[188] = v18;
  a2[189] = v7;
  a2[190] = v8;
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0>,void ()(KB::Candidate &,float)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_283FDBA48;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(KB::CandidateCollection const&,KB::String const&,KB::LanguageModelContext const&,std::map<KB::String,KB::CandidateCollection> const&,unsigned long)const::$_0::operator()(uint64_t a1, uint64_t **a2, size_t *a3, uint64_t a4, size_t *a5, uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = KB::Candidate::Candidate(a1);
  KB::LanguageModelContext::operator=(v12 + 784, *a2);
  KB::Candidate::append(a1, a3);
  KB::Candidate::append(a1, a4);
  *(a1 + 744) = *(a4 + 744);
  v13 = (a1 + 748);
  *(a1 + 748) = *(a4 + 748);
  *(a1 + 760) = *(a4 + 760);
  v14 = KB::Candidate::append(a1, a5);
  if (*a1 && (*(*(a1 + 8) + 240 * *a1 - 105) & 4) == 0)
  {
    KB::String::space(v14);
    KB::Word::Word(v20, &KB::String::space(void)::space, &kTITokenIDUNK, 0);
    v21 |= 0x4000000u;
    KB::Candidate::append(a1, v20);
    KB::Word::~Word(v20);
  }

  KB::Candidate::append(a1, a6);
  v15 = *(a1 + 756) + *(a6 + 756);
  v16 = vadd_f32(*v13, *(a6 + 748));
  *(a1 + 744) = v16.f32[0] + (*(a1 + 760) * (v16.f32[1] + v15));
  *v13 = v16;
  *(a1 + 756) = v15;
  *(a1 + 960) = *(a6 + 960);
  *(a1 + 992) = *(a6 + 992);
  v17 = *(a4 + 780);
  v18 = *(a6 + 780);
  result = KB::Candidate::length(a4);
  *(a1 + 780) = (v18 << (result + 1)) | v17;
  return result;
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2>,void ()(KB::Candidate &,float)>::operator()(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = *a3;
  v4[0] = *(a2 + 748);
  *(v4 + 12) = *(a2 + 760);
  update_lookup_suggestions_omega_factors(a2, v4, **(a1 + 8), v3);
}

__n128 std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2>,void ()(KB::Candidate &,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDB9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0>,void ()(KB::Candidate &,float)>::operator()(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = *a3;
  v4[0] = *(a2 + 748);
  *(v4 + 12) = *(a2 + 760);
  update_lookup_suggestions_omega_factors(a2, v4, *(a1 + 8), v3);
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0>,void ()(KB::Candidate &,float)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_283FDB970;
  *(a2 + 8) = *(result + 8);
  return result;
}

double TI::Favonius::FavoniusStrokeBuildManager::set_input_index(TI::Favonius::FavoniusStrokeBuildManager *this, int a2)
{
  if ((*(this + 209) & 1) == 0)
  {
    *(this + 48) = a2;
    v6 = 0;
    memset(v4, 0, sizeof(v4));
    memset(v5, 0, sizeof(v5));
    KB::CandidateCollection::operator=(this + 800, v4);
    v7 = &v5[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    v7 = v5;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    v7 = &v4[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    v7 = v4;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
    *(this + 97) = this + 784;
    result = 0.0;
    *(this + 49) = 0u;
  }

  return result;
}

double TI::Favonius::FavoniusStrokeBuildManager::delete_from_input(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if ((*(this + 209) & 1) == 0)
  {
    v3 = *(this + 21);
    v2 = *(this + 22);
    if (v3 != v2)
    {
      v4 = *(this + 48);
      if (v4)
      {
        v5 = v4 - 1;
        *(this + 48) = v5;
        v6 = v3 + 4 * v5;
        v7 = v2 - (v6 + 4);
        if (v2 != v6 + 4)
        {
          memmove((v3 + 4 * v5), (v6 + 4), v2 - (v6 + 4));
        }

        *(this + 22) = v6 + v7;
      }
    }

    *(this + 208) = 1;
    v11 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v10, 0, sizeof(v10));
    KB::CandidateCollection::operator=(this + 800, v9);
    v12 = &v10[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v10;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = &v9[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v9;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
    *(this + 97) = this + 784;
    result = 0.0;
    *(this + 49) = 0u;
  }

  return result;
}

double TI::Favonius::FavoniusStrokeBuildManager::add_input(TI::Favonius::FavoniusStrokeBuildManager *this, std::vector<unsigned int>::size_type __n, char a3)
{
  if ((*(this + 209) & 1) == 0)
  {
    v3 = __n;
    v5 = *(this + 40);
    if (!v5 || (a3 & 1) != 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = v5 - 1;
    }

    LODWORD(v9[0]) = v6;
    v7.__i_ = (*(this + 21) + 4 * *(this + 48));
    std::vector<unsigned int>::insert(this + 7, v7, v3, v9);
    *(this + 48) += v3;
    v11 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v10, 0, sizeof(v10));
    KB::CandidateCollection::operator=(this + 800, v9);
    v12 = &v10[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v10;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = &v9[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v9;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
    *(this + 97) = this + 784;
    result = 0.0;
    *(this + 49) = 0u;
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::add_touch_cancel(TI::Favonius::FavoniusStrokeBuildManager *this, int a2)
{
  v4 = *(this + 88);
  if (v4 && v4[20] == a2)
  {
    (*(*v4 + 56))(v4);
  }

  v5 = TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(this, a2);
  v6 = *(this + 9);
  v7 = v5;
  if (v6 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 + ~v5;
  }

  memset(v17, 0, sizeof(v17));
  v9 = v5 + 1;
  if (*(this + 6) > v9)
  {
    TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(this, v5, v17);
    v10 = *(this + 9);
    if (v10 > v9)
    {
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(this + 10) + 8 * v9), (*(this + 10) + 8 * v10));
      *(this + 9) = v9;
    }
  }

  for (i = *(this + 6); i > v7; *(this + 6) = i)
  {
    v12 = *(this + 9);
    if (v12)
    {
      v13 = v12 - 1;
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(this + 10) + 8 * (v12 - 1)), (*(this + 10) + 8 * v12));
      *(this + 9) = v13;
      i = *(this + 6);
    }

    --i;
    v14 = *(*(this + 7) + 8 * i);
    if (v14)
    {
      WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v14);
    }
  }

  if (v17[0])
  {
    TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(this, v17);
    if (v8 + i > i)
    {
      do
      {
        TI::Favonius::FavoniusStrokeBuildManager::perform_search(&v16, this, i);
        if (v16)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v16);
        }

        LODWORD(i) = i + 1;
        --v8;
      }

      while (v8);
    }
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v17);
  return 0;
}

unint64_t TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(TI::Favonius::FavoniusStrokeBuildManager *this, int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 40);
  v4 = (v3 + 1);
  if (v2 > v4)
  {
    v7 = v3 + 2;
    do
    {
      v8 = *(*(*(this + 7) + 8 * v4) + 8);
      if (*((*(*v8 + 56))(v8) + 48) == a2)
      {
        v2 = v7 - 1;
      }

      else
      {
        v2 = v2;
      }

      v4 = v7;
    }

    while (*(this + 6) > v7++);
  }

  return v2;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::add_touch_up(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(a1, *(v5 + 48));
  v7 = v6;
  v8 = v6;
  if (*(a1 + 48) == v6)
  {
    *(a1 + 200) = *(v5 + 32);
    v9 = *(*(a1 + 56) + 8 * v6 - 8);
    v40 = v5;
    atomic_fetch_add(v5, 1u);
    TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(v39, *(v9 + 8), &v40, a3);
  }

  if (*(a1 + 72) <= v6 || TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(a1, v6))
  {
    if (v7 - 1 <= *(a1 + 160))
    {
      goto LABEL_25;
    }

    memset(v39, 0, sizeof(v39));
    if (*(a1 + 48) > (v7 + 1))
    {
      TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v7, v39);
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v7 - 1, &v36);
    memset(v35, 0, sizeof(v35));
    v10 = *(a1 + 160);
    if (*(a1 + 48) > (v10 + 1))
    {
      TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v10, v35);
    }

    v11 = v39[0];
    if (v39[0])
    {
      v12 = v39;
    }

    else
    {
      v11 = v35[0];
      if (!v35[0])
      {
LABEL_17:
        v13 = *(a1 + 72);
        v14 = (*(a1 + 160) + 1);
        if (v13 > v14)
        {
          WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(a1 + 80) + 8 * v14), (*(a1 + 80) + 8 * v13));
          *(a1 + 72) = v14;
        }

        TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, &v36);
        TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, v35);
        TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, v39);
        v15 = *(a1 + 160) + 1;
        if (v15 <= v7)
        {
          do
          {
            TI::Favonius::FavoniusStrokeBuildManager::perform_search(&v34, a1, v15);
            if (v34)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(v34);
            }

            ++v15;
          }

          while (v15 <= v7);
          v15 = *(a1 + 160) + 1;
        }

        WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v35);
        WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(&v36);
        WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v39);
        v8 = v15;
        v7 = v15;
        goto LABEL_25;
      }

      v12 = v35;
    }

    *(*(*(v37 + 8 * v36 - 8) + 8) + 32) = *(*(*(v12[1] + 8 * v11 - 8) + 8) + 32);
    goto LABEL_17;
  }

  TI::Favonius::FavoniusStrokeBuildManager::perform_search(&v33, a1, v7);
  if (v33)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v33);
  }

LABEL_25:
  if (*(a1 + 72) <= v8)
  {
    v24 = 0;
  }

  else
  {
    TI::Favonius::FavoniusStrokeBuildManager::forced_hit_key(v39, a1, *(v5 + 56), v7, a3);
    v16 = v39[0];
    v17 = *(a1 + 80);
    v18 = *(v17 + 8 * v8);
    v19 = *(v17 + 8 * (v7 - 1));
    v32 = v19;
    if (v19)
    {
      atomic_fetch_add((v19 + 8), 1u);
    }

    if (v16)
    {
      atomic_fetch_add(v16, 1u);
    }

    (*(*v18 + 96))(v39);
    v20 = *(a1 + 80);
    v21 = *(v20 + 8 * v8);
    v22 = v39[0];
    v39[0] = 0;
    *(v20 + 8 * v8) = v22;
    if (v21)
    {
      v23 = atomic_load(v21 + 2);
      if (v23 == 1)
      {
        (*(*v21 + 8))(v21);
      }

      else
      {
        atomic_fetch_add(v21 + 2, 0xFFFFFFFF);
      }

      if (v39[0])
      {
        v25 = atomic_load(v39[0] + 2);
        if (v25 == 1)
        {
          (*(*v39[0] + 8))();
        }

        else
        {
          atomic_fetch_add(v39[0] + 2, 0xFFFFFFFF);
        }
      }
    }

    if (v16)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v16);
    }

    if (v32)
    {
      v26 = atomic_load(v32 + 2);
      if (v26 == 1)
      {
        (*(*v32 + 8))();
      }

      else
      {
        atomic_fetch_add(v32 + 2, 0xFFFFFFFF);
      }
    }

    v27 = *(*(a1 + 80) + 8 * v8);
    v24 = *((*(*v27 + 32))(v27) + 8);
    if (v24)
    {
      atomic_fetch_add(v24, 1u);
    }

    v28 = *(*(a1 + 80) + 8 * v8);
    a3 = *(*((*(*v28 + 32))(v28) + 8) + 62);
    if (v16)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v16);
    }
  }

  if (*(a1 + 160) < v7)
  {
    *(a1 + 160) = v7;
  }

  v29 = *(a1 + 704);
  if (v29)
  {
    (*(*v29 + 32))(v29, 2, *(v5 + 48), *(v5 + 8), *(v5 + 16), *(v5 + 32), 0.0);
  }

  v30 = *(a1 + 720);
  if (v30)
  {
    TI::TIInputRecognizer::add_touch(v30, 2, *(v5 + 8), *(v5 + 16), *(v5 + 32), 0.0);
  }

  if (v24)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v24);
  }

  if (v5)
  {
    WTF::RefCounted<TI::Favonius::Touch>::deref(v5);
  }

  return a3;
}

uint64_t *TI::Favonius::FavoniusStrokeBuildManager::forced_hit_key@<X0>(atomic_uint **__return_ptr a1@<X8>, uint64_t *this@<X0>, const TI::Favonius::KeyboardLayout *a3@<X2>, unsigned int a4@<W1>, int a5@<W3>)
{
  if (a5 == -1)
  {
    v15 = 0;
  }

  else
  {
    v9 = this[7];
    v10 = *(*(v9 + 8 * a4) + 8);
    if (*((*(*v10 + 56))(v10) + 56) == a3)
    {
      v17 = *(*(v9 + 8 * a4) + 8);
      v36 = v17;
      if (v17)
      {
        atomic_fetch_add((v17 + 8), 1u);
        v18 = v36;
      }

      else
      {
        v18 = 0;
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 0x40000000;
      v34[2] = ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke;
      v34[3] = &__block_descriptor_tmp_11_12449;
      v35 = a5;
      this = TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test(&v36, v34, &v28);
      v15 = v28;
      v28 = 0;
      if (v18)
      {
        v19 = atomic_load(v18 + 2);
        if (v19 == 1)
        {
          this = (*(*v18 + 8))(v18);
        }

        else
        {
          atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
        }
      }
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3002000000;
      v31 = __Block_byref_object_copy__12450;
      v32 = __Block_byref_object_dispose__12451;
      v33 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 0x40000000;
      v24 = ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_12;
      v25 = &unk_278731BF8;
      v27 = a5;
      v26 = &v28;
      v11 = *(a3 + 1);
      v12 = *(a3 + 2);
      if (v11 == v12)
      {
        goto LABEL_12;
      }

      do
      {
        v24(v23, v11++);
      }

      while (v11 != v12);
      if (!v29[5])
      {
LABEL_12:
        v15 = 0;
      }

      else
      {
        v13 = *(*(v9 + 8 * a4) + 8);
        v21 = v13;
        if (v13)
        {
          atomic_fetch_add((v13 + 8), 1u);
          v14 = v21;
        }

        else
        {
          v14 = 0;
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 0x40000000;
        v20[2] = ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_2;
        v20[3] = &unk_278731C20;
        v20[4] = &v28;
        TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test(&v21, v20, &v22);
        v15 = v22;
        v22 = 0;
        if (v14)
        {
          v16 = atomic_load(v14 + 2);
          if (v16 == 1)
          {
            (*(*v14 + 8))(v14);
          }

          else
          {
            atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
          }
        }
      }

      _Block_object_dispose(&v28, 8);
      this = v33;
      if (v33)
      {
        this = WTF::RefCounted<TI::Favonius::Key>::deref(v33);
      }
    }
  }

  *a1 = v15;
  return this;
}

uint64_t __Block_byref_object_copy__12450(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__12451(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return WTF::RefCounted<TI::Favonius::Key>::deref(result);
  }

  return result;
}

uint64_t ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_12(uint64_t result, atomic_uint **a2)
{
  v2 = *a2;
  if (*(result + 40) == *(*a2 + 31))
  {
    v3 = *(*(result + 32) + 8);
    atomic_fetch_add(v2, 1u);
    result = *(v3 + 40);
    *(v3 + 40) = v2;
    if (result)
    {
      return WTF::RefCounted<TI::Favonius::Key>::deref(result);
    }
  }

  return result;
}

BOOL ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*a2 + 8);
  v6 = *(*(*(a1 + 32) + 8) + 40);
  return v5 == v6 || KB::String::equal((v5 + 8), (v6 + 8), 1, a4, a5);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::add_touch_down_or_drag(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  *(a1 + 200) = *(*a2 + 32);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 56);
  *(a1 + 216) = TI::Favonius::KeyboardLayout::median_key_half_width(v11);
  v12 = *(v8 + 48);
  v13 = *(v8 + 40);
  v33 = v11;
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

  v14 = TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(a1, v12);
  v15 = v14;
  if (*(a1 + 48) == v14)
  {
    v16 = *(*(a1 + 56) + 8 * v14 - 8);
    v17 = *a2;
    *a2 = 0;
    v32 = v17;
    TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(&v43, *(v16 + 8), &v32, a3);
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v14 - 1, &v43);
  v18 = v44[v43 - 1];
  v19 = *(v18 + 8);
  v20 = *a2;
  *a2 = 0;
  *(v18 + 8) = v20;
  if (v19)
  {
    WTF::RefCounted<TI::Favonius::Touch>::deref(v19);
  }

  TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, &v43);
  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(&v43);
  *(*(*(a1 + 56) + 8 * v15) + 16) = a3;
  if ((a4 & 1) != 0 || v13 != 1)
  {
    TI::Favonius::FavoniusStrokeBuildManager::perform_search(&v43, a1, v15);
    v21 = v43;
    a3 = *(v43 + 31);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a1 + 704);
  if (v22)
  {
    if (v33)
    {
      atomic_fetch_add(v33, 1u);
      TI::CP::TIPathRecognizerInterface::set_key_layout(v22, v33);
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v33);
      if (v13)
      {
LABEL_15:
        (*(**(a1 + 704) + 32))(*(a1 + 704), v13, v12, v9, v10, *(a1 + 200), 0.0);
        if (v33)
        {
          v23 = atomic_load((*(a1 + 704) + 633));
          if ((v23 & 1) == 0)
          {
            v24 = *(a1 + 704);
            v25 = *(a1 + 712);
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            KB::String::String(&v43, (v33 + 52));
            if (*(a1 + 471) < 0)
            {
              std::string::__init_copy_ctor_external(&v31, *(a1 + 448), *(a1 + 456));
            }

            else
            {
              v31 = *(a1 + 448);
            }

            if (TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken != -1)
            {
              dispatch_once(&TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken, &__block_literal_global_19_12454);
            }

            v34 = MEMORY[0x277D85DD0];
            v35 = 1174405120;
            v36 = ___ZN2TI8Favonius26FavoniusStrokeBuildManager22add_touch_down_or_dragEN3WTF10PassRefPtrINS0_5TouchEEEib_block_invoke;
            v37 = &__block_descriptor_tmp_3_12455;
            v38 = v24;
            v39 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v26 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v31;
            }

            KB::String::String(v41, &v43);
            TIDispatchAsync();
            if (v42 && v41[6] == 1)
            {
              free(v42);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v39)
            {
              std::__shared_weak_count::__release_weak(v39);
            }

            if (v26 < 0)
            {
              operator delete(v31.__r_.__value_.__l.__data_);
            }

            if (v44 && BYTE6(v43) == 1)
            {
              free(v44);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_weak(v25);
            }
          }
        }

        goto LABEL_43;
      }
    }

    else
    {
      TI::CP::TIPathRecognizerInterface::set_key_layout(v22, 0);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    (*(**(a1 + 704) + 120))(*(a1 + 704), a1 + 224);
    goto LABEL_15;
  }

LABEL_43:
  v27 = *(a1 + 720);
  if (v27)
  {
    KB::LanguageModelContext::operator=(v27 + 104, (a1 + 224));
    v28 = *(a1 + 720);
    v29 = v33;
    if (v33)
    {
      atomic_fetch_add(v33, 1u);
      TI::CP::TIPathRecognizerInterface::set_key_layout(v28, v29);
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v29);
    }

    else
    {
      TI::CP::TIPathRecognizerInterface::set_key_layout(v28, 0);
    }

    TI::TIInputRecognizer::add_touch(*(a1 + 720), v13, v9, v10, *(a1 + 200), 0.0);
  }

  if (v21)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v21);
  }

  if (v33)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v33);
  }

  return a3;
}

void TI::Favonius::FavoniusStrokeBuildManager::initialize_it_recognizer(uint64_t a1, atomic_uint **a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 330) == 1 && !*(a1 + 720))
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(*(*v4 + 48))(v4);
      if (v5)
      {
        atomic_fetch_add(v5, 1u);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = (a1 + 448);
    if (*(a1 + 471) < 0)
    {
      v6 = *(a1 + 448);
    }

    KB::String::String(&buf, v6);
    v7 = *a2;
    v10 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
      v8 = v10;
      v9 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(&buf, v7 + 208, &v10, a1 + 736);
      if (v8)
      {
        WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
      }
    }

    else
    {
      v9 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(&buf, v7 + 208, &v10, a1 + 736);
    }

    if (*&buf_4[4] && buf_4[2] == 1)
    {
      free(*&buf_4[4]);
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 136315138;
        *buf_4 = "initialize_it_recognizer";
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Creating ml tap typing recognizer", &buf, 0xCu);
      }

      operator new();
    }

    if (v5)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v5);
    }
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::initialize_ensemble_path_recognizer(uint64_t this)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(this + 328) == 1)
  {
    v1 = this;
    if (*(this + 210) == 1)
    {
      v2 = *(this + 712);
      *(v1 + 704) = 0u;
      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v2);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "initialize_ensemble_path_recognizer";
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Loading/reloading ensemble path recognizer", buf, 0xCu);
      }

      v3 = *(v1 + 728);
      if (v3)
      {
        Value = CFDictionaryGetValue(v3, @"CPSearch");
        if (Value)
        {
          CFDictionaryApplyFunction(Value, TI::CP::SearchParameters::set_values_from_dictionary(__CFDictionary const*)::$_0::__invoke, (v1 + 544));
        }
      }

      operator new();
    }
  }

  return this;
}

atomic_uint *TI::CP::TIPathRecognizerInterface::set_key_layout(void *a1, atomic_uint *a2)
{
  result = a1[1];
  if (result != a2)
  {
    if (a2)
    {
      atomic_fetch_add(a2, 1u);
      result = a1[1];
    }

    a1[1] = a2;
    if (result)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(result);
    }

    v4 = *(*a1 + 152);

    return v4(a1);
  }

  return result;
}

void ___ZN2TI8Favonius26FavoniusStrokeBuildManager22add_touch_down_or_dragEN3WTF10PassRefPtrINS0_5TouchEEEib_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = a1[4];
  if (v5)
  {
    v6 = v5 + 632;
    if (v5[216] != 1)
    {
LABEL_8:
      atomic_store(1u, v6);
      goto LABEL_9;
    }

    v7 = atomic_load(v6);
    if ((v7 & 1) == 0)
    {
      v8 = v5 + 633;
      v9 = atomic_load(v5 + 633);
      if ((v9 & 1) == 0)
      {
        atomic_store(TI::TIInputRecognizer::is_language_and_layout_supported((a1 + 6), (a1 + 9)), v6);
        v6 = v8;
        goto LABEL_8;
      }
    }
  }

LABEL_9:

  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
}

void __destroy_helper_block_8_32c58_ZTSKNSt3__18weak_ptrIN2TI2CP24TIPathRecognizerEnsembleEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && *(a1 + 78) == 1)
  {
    free(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

KB::String *__copy_helper_block_8_32c58_ZTSKNSt3__18weak_ptrIN2TI2CP24TIPathRecognizerEnsembleEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c17_ZTSKN2KB6StringE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  return KB::String::String(&a1[3], (a2 + 72));
}

dispatch_queue_t ___ZN2TI8Favonius26FavoniusStrokeBuildManager21background_task_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  result = dispatch_queue_create("com.apple.TextInput.FSBM.backgroundTasks", v0);
  TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::__queue = result;
  return result;
}

void std::__shared_ptr_emplace<TI::CP::TIPathRecognizerEnsemble>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDB8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::engineType(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*(this + 90))
  {
    return 1;
  }

  v2 = this + 448;
  if (*(this + 471) < 0)
  {
    v2 = *v2;
  }

  KB::String::String(v10, v2);
  KB::String::String(v8, (*(*(this + 90) + 8) + 208));
  v3 = *(this + 1);
  if (v3 && (v4 = *(*(*v3 + 48))(v3)) != 0)
  {
    atomic_fetch_add(v4, 1u);
    v7 = v4;
    atomic_fetch_add(v4, 1u);
    v5 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(v10, v8, &v7, this + 736);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v4);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v4);
  }

  else
  {
    v7 = 0;
    v5 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(v10, v8, &v7, this + 736);
  }

  if (v9 && v8[6] == 1)
  {
    free(v9);
  }

  if (v12)
  {
    if (v11 == 1)
    {
      free(v12);
    }
  }

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::~FavoniusStrokeBuildManager(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  TI::Favonius::FavoniusStrokeBuildManager::~FavoniusStrokeBuildManager(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDB660;
  if (*(this + 984) == 1)
  {
    v2 = *(this + 120);
    if (v2 && *(this + 958) == 1)
    {
      free(v2);
    }

    v3 = *(this + 116);
    if (v3 && *(this + 926) == 1)
    {
      free(v3);
    }
  }

  v20 = (this + 872);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  v20 = (this + 848);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  v20 = (this + 824);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  v20 = (this + 800);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
  if (*(this + 760) == 1 && *(this + 759) < 0)
  {
    operator delete(*(this + 92));
  }

  v4 = *(this + 91);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 90);
  *(this + 45) = 0u;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 89);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 64);
  if (v7 && *(this + 510) == 1)
  {
    free(v7);
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  v20 = (this + 304);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v20);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 296));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 288));
  v8 = *(this + 30);
  if (v8)
  {
    *(this + 31) = v8;
    operator delete(v8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 21);
  if (v10)
  {
    *(this + 22) = v10;
    operator delete(v10);
  }

  v11 = *(this + 17);
  if (v11 && *(this + 134) == 1)
  {
    free(v11);
  }

  v12 = *(this + 13);
  if (v12 && *(this + 102) == 1)
  {
    free(v12);
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::~Vector(this + 72);
  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>,0ul>::~Vector(this + 6);
  v13 = *(this + 5);
  if (v13)
  {
    v14 = atomic_load(v13 + 2);
    if (v14 == 1)
    {
      (*(*v13 + 16))(v13);
    }

    else
    {
      atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
    }
  }

  v15 = *(this + 4);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    v17 = atomic_load(v16 + 2);
    if (v17 == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
    }
  }

  v18 = *(this + 1);
  if (v18)
  {
    v19 = atomic_load(v18 + 2);
    if (v19 == 1)
    {
      (*(*v18 + 40))(v18);
    }

    else
    {
      atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
    }
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::InputTouchAlignment(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::touch_index_for_input_index(TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment *this, unsigned int a2)
{
  v2 = *this;
  if (a2)
  {
    while (1)
    {
      v3 = a2;
      if (*(v2 + 4 * a2) != -1)
      {
        break;
      }

      --a2;
      if (v3 == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v3 = 0;
  }

  return *(v2 + 4 * v3);
}

std::__wrap_iter<unsigned int *>::iterator_type TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::add_input(std::vector<unsigned int> *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::size_type __n)
{
  v3 = __n;
  __x = a2;
  v5.__i_ = &this->__begin_[LODWORD(this[1].__begin_)];
  result = std::vector<unsigned int>::insert(this, v5, __n, &__x).__i_;
  LODWORD(this[1].__begin_) += v3;
  return result;
}

std::__wrap_iter<unsigned int *>::iterator_type TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::add_unmapped_inputs(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  v2 = __n;
  __x = -1;
  v4.__i_ = &this->__begin_[LODWORD(this[1].__begin_)];
  result = std::vector<unsigned int>::insert(this, v4, v2, &__x).__i_;
  LODWORD(this[1].__begin_) += v2;
  return result;
}

void *TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::delete_from_input(void *this)
{
  v2 = *this;
  v1 = this[1];
  if (*this != v1)
  {
    v3 = this;
    v4 = *(this + 6);
    if (v4)
    {
      v5 = v4 - 1;
      *(this + 6) = v5;
      v6 = v2 + 4 * v5;
      v7 = v1 - (v6 + 4);
      if (v1 != v6 + 4)
      {
        this = memmove((v2 + 4 * v5), (v6 + 4), v1 - (v6 + 4));
      }

      v3[1] = v6 + v7;
    }
  }

  return this;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::clear(uint64_t this)
{
  *(this + 8) = *this;
  *(this + 24) = 0;
  return this;
}

unint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::index_of_first_input_from_touch(char **this)
{
  v1 = *this;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = &v1[4 * v2];
    v4 = *this;
    while (*v4 == -1)
    {
      v4 += 4;
      if (v4 == v3)
      {
        v4 = v3;
        return (v4 - v1) >> 2;
      }
    }
  }

  else
  {
    v4 = *this;
  }

  return (v4 - v1) >> 2;
}

void TI::Favonius::FavoniusStrokeBuildManager::FavoniusStrokeBuildManager(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  *this = &unk_283FDB660;
  *(this + 8) = 0u;
  v1 = 0;
  std::allocate_shared[abi:nn200100]<KB::UnigramCandidateRefinery,std::allocator<KB::UnigramCandidateRefinery>,WTF::RefPtr<KB::DictionaryContainer> const&,0>(&v2, &v1);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if (TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken != -1)
  {
    dispatch_once(&TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken, &__block_literal_global_19_12454);
  }

  return TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::__queue;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::is_exact_typed_string_lm_ranking_enabled(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if ((*(**(this + 3) + 40))(*(this + 3)))
  {
    v2 = *(this + 212);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::areStringsSortKeyEquivalent(TI::Favonius::FavoniusStrokeBuildManager *this, _LXLexicon *a2, const KB::String *a3, const KB::String *a4)
{
  v4 = *(*(this + 2) + 16);
  atomic_fetch_add(v4, 1u);
  v5 = KB::CollatorWrapper::sortkey_compare_strings((*(v4 + 8) + 72), a2, a3, a4) == 0;
  WTF::RefCounted<KB::DictionaryContainer>::deref(v4);
  return v5;
}

float TI::Favonius::FavoniusStrokeBuildManager::language_power_for_lookup(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if ((*(*this + 152))(this))
  {
    v2 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
    if (*(this + 336) == 1)
    {
      v3 = *(this + 83);
      if (v3 <= 1.0 && v3 >= 0.0)
      {
        v2 = (this + 332);
      }
    }
  }

  else
  {
    v2 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
  }

  return *v2;
}

float TI::Favonius::FavoniusStrokeBuildManager::favonius_language_weight(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v1 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
  if (*(this + 336) == 1)
  {
    v2 = *(this + 83);
    if (v2 <= 1.0 && v2 >= 0.0)
    {
      v1 = (this + 332);
    }
  }

  return *v1;
}

void TI::CP::TIPathRecognizerEnsemble::key_layout_did_update(TI::Favonius::KeyboardLayout **this)
{
  v2 = TI::Favonius::KeyboardLayout::median_key_half_width(this[1]);
  *(this + 13) = v2;
  *(this + 14) = v2 * 6.0;
  for (i = this[4]; i; i = *i)
  {
    v4 = *(i + 4);
    if (!v4 || v4 == 1 && *(this + 20) == -1)
    {
      v5 = *(i + 3);
      v6 = this[1];
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        TI::CP::TIPathRecognizerInterface::set_key_layout(v5, v6);
        WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v6);
      }

      else
      {
        TI::CP::TIPathRecognizerInterface::set_key_layout(v5, 0);
      }
    }
  }
}

uint64_t TI::CP::TIPathRecognizerEnsemble::remove_shapes_older_than(TI::CP::TIPathRecognizerEnsemble *this, double a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 1;
  }

  LODWORD(v4) = 1;
  do
  {
    v4 = v4 & (*(*v2[3] + 144))(v2[3], a2);
    v2 = *v2;
  }

  while (v2);
  return v4;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::set_input_stem(uint64_t this, const KB::String *a2)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 128))(i[3], a2);
  }

  return this;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::set_context(uint64_t this, const KB::LanguageModelContext *a2)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 120))(i[3], a2);
  }

  return this;
}

void TI::CP::TIPathRecognizerEnsemble::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  for (i = *(a1 + 32); i; i = *i)
  {
    v4 = i[3];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 112))(v4, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }
}

uint64_t TI::CP::TIPathRecognizerEnsemble::store_shapes(uint64_t this)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 104))(i[3]);
  }

  return this;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::remove_text_usage(uint64_t this, const KB::String *a2)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 96))(i[3], a2);
  }

  return this;
}

void TI::CP::TIPathRecognizerEnsemble::text_accepted_from_UI(TI::CP::TIPathRecognizerEnsemble *this, const KB::String *a2, const KB::String *a3, uint64_t a4, uint64_t a5)
{
  for (i = *(this + 4); i; i = *i)
  {
    (*(*i[3] + 88))(i[3], a2, a3, a4, a5);
  }

  v11 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    KB::String::compute_length(a2);
    v11 = *(a2 + 2);
  }

  if (v11 > 2 || (v12 = *(this + 8)) != 0 && (*(*v12 + 72))(v12, a2, a3, a4, a5) > *(this + 14))
  {
    ++*(this + 150);
  }

  TI::CP::TIPathRecognizerEnsemble::load_ml_source_if_needed(this);
}

void TI::CP::TIPathRecognizerEnsemble::load_ml_source_if_needed(TI::CP::TIPathRecognizerEnsemble *this)
{
  if (std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 1))
  {
    return;
  }

  if ((*(this + 55) & 2) == 0)
  {
    return;
  }

  v2 = *(this + 55) & 5;
  if (v2)
  {
    if (*(this + 150) < *(this + 53))
    {
      return;
    }
  }

  if (*(this + 216) == 1)
  {
    if (v2 && *(this + 5))
    {
      goto LABEL_14;
    }

    v3 = *(this + 1);
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = atomic_load(this + 632);
    if (v4)
    {
      goto LABEL_14;
    }

    v5 = this + 633;
    v6 = atomic_load(this + 633);
    if (v6)
    {
      goto LABEL_14;
    }

    atomic_store(TI::TIInputRecognizer::is_language_and_layout_supported(this + 224, (v3 + 208)), this + 632);
  }

  else
  {
    v5 = this + 632;
  }

  atomic_store(1u, v5);
LABEL_14:
  v7 = atomic_load(this + 632);
  if ((v7 & 1) != 0 || (keyExistsAndHasValidFormat[0] = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"kbForceCPMLLan", @"com.apple.keyboard", keyExistsAndHasValidFormat), keyExistsAndHasValidFormat[0]) && AppBooleanValue)
  {
    operator new();
  }
}

void TI::CP::TIPathRecognizerEnsemble::add_recognizer(void *a1, void *a2)
{
  v4 = (*(**a2 + 16))();
  v5 = a1[3];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v5 <= v4)
    {
      v7 = v4 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v4;
  }

  v8 = *(a1[2] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= v5)
      {
        v10 %= v5;
      }
    }

    else
    {
      v10 &= v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v9[4];
  v9[3] = v12;
  v9[4] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = a1[1];
  if (v14)
  {
    v15 = *a2;
    atomic_fetch_add(v14, 1u);
    TI::CP::TIPathRecognizerInterface::set_key_layout(v15, v14);

    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v14);
  }
}

uint64_t *TI::CP::TIPathRecognizerEnsemble::normalize_weights(TI::CP::TIPathRecognizerEnsemble *this)
{
  if (std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 0))
  {
    v2 = *(this + 16) + 0.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 1))
  {
    v2 = v2 + *(this + 17);
  }

  result = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 2);
  if (result)
  {
    v2 = v2 + *(this + 18);
  }

  if (v2 > 0.0)
  {
    for (i = 0; i != 24; i += 8)
    {
      *(this + i + 128) = *(this + i + 128) / v2;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<TI::TIInputRecognizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDBC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void TI::CP::TIPathRecognizerEnsemble::generate_candidates(uint64_t a1, KB::Candidate **a2, uint64_t a3)
{
  if (!TI::CP::TIPathRecognizerInterface::should_generate_candidates(a1))
  {
    return;
  }

  v39 = 0u;
  *__p = 0u;
  v40 = 1065353216;
  v6 = *(a1 + 120);
  if ((v6 & 0x10) != 0)
  {
    v9 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>((a1 + 16), *(a1 + 204));
    if (v9)
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = (*(*v9[3] + 80))(v9[3], &v31, a3);
      v11 = TI::ConfidenceModel::compute_confidence1(v10, &v31, 2);
      v12 = *(a1 + 204);
      if (!__p[1])
      {
        goto LABEL_36;
      }

      v13 = vcnt_s8(__p[1]);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = *(a1 + 204);
        if (__p[1] <= v12)
        {
          v14 = v12 % __p[1];
        }
      }

      else
      {
        v14 = (__p[1] - 1) & v12;
      }

      v22 = *(__p[0] + v14);
      if (!v22 || (v23 = *v22) == 0)
      {
LABEL_36:
        operator new();
      }

      while (1)
      {
        v24 = v23[1];
        if (v24 == v12)
        {
          if (*(v23 + 4) == v12)
          {
            KB::CandidateCollection::operator=((v23 + 3), &v31);
            v41[0] = &v35 + 2;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            v41[0] = &v34;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            v41[0] = &v32 + 2;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            v41[0] = &v31;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            goto LABEL_37;
          }
        }

        else
        {
          if (v13.u32[0] > 1uLL)
          {
            if (v24 >= __p[1])
            {
              v24 %= __p[1];
            }
          }

          else
          {
            v24 &= __p[1] - 1;
          }

          if (v24 != v14)
          {
            goto LABEL_36;
          }
        }

        v23 = *v23;
        if (!v23)
        {
          goto LABEL_36;
        }
      }
    }

    v11 = -1.0;
LABEL_37:
    if (v11 >= *(a1 + 200))
    {
      goto LABEL_45;
    }

    v37 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    for (i = *(a1 + 32); i; i = *i)
    {
      if ((*(*i[3] + 16))(i[3]) != *(a1 + 204) && (*(i + 4) != 2 || *(a1 + 56) == 1))
      {
        (*(*i[3] + 80))(i[3], &v31, a3);
        v30 = (*(*i[3] + 16))(i[3]);
        v41[0] = &v30;
        v26 = std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType&&>,std::tuple<>>(__p, v30, v41);
        KB::CandidateCollection::operator=((v26 + 3), &v31);
      }
    }

    TI::CP::TIPathRecognizerEnsemble::combine_candidates_from_sources(a1, __p, a2, *(a1 + 120), 0);
    v41[0] = &v35 + 2;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v34;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v32 + 2;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v31;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    goto LABEL_47;
  }

  if ((v6 & 0x20) != 0 && TI::CP::TIPathRecognizerEnsemble::can_use_preferred_source(a1))
  {
    v7 = *(a1 + 208);
    *&v31 = a1 + 208;
    v8 = std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType const&>,std::tuple<>>((a1 + 16), v7, &v31);
    (*(*v8[3] + 80))(v8[3], a2, a3);
    KB::CandidateCollection::normalize_scores(a2);
    goto LABEL_47;
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    goto LABEL_45;
  }

  do
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = *(v15 + 4);
    if (v16 == 1)
    {
      v17 = atomic_load((a1 + 632));
      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v16 == 2 && (*(a1 + 56) & 1) == 0)
    {
      goto LABEL_18;
    }

    (*(*v15[3] + 80))(v15[3], &v31, a3);
    if (*(&v31 + 1) != v31)
    {
      v30 = (*(*v15[3] + 16))(v15[3]);
      v41[0] = &v30;
      v18 = std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType&&>,std::tuple<>>(__p, v30, v41);
      KB::CandidateCollection::operator=((v18 + 3), &v31);
    }

LABEL_18:
    v41[0] = &v35 + 2;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v34;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v32 + 2;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v31;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v15 = *v15;
  }

  while (v15);
  if (*(&v39 + 1) > 1uLL)
  {
    v19 = *(a1 + 120);
    v20 = a1;
    v21 = a2;
    goto LABEL_46;
  }

LABEL_45:
  v20 = a1;
  v21 = a2;
  v19 = 0;
LABEL_46:
  TI::CP::TIPathRecognizerEnsemble::combine_candidates_from_sources(v20, __p, v21, v19, 0);
LABEL_47:
  v27 = v39;
  if (v39)
  {
    do
    {
      v28 = *v27;
      *&v31 = v27 + 12;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      *&v31 = v27 + 9;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      *&v31 = v27 + 6;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      *&v31 = v27 + 3;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = __p[0];
  __p[0] = 0;
  if (v29)
  {
    operator delete(v29);
  }
}

void TI::CP::TIPathRecognizerEnsemble::combine_candidates_from_sources(uint64_t a1, uint64_t a2, KB::Candidate **a3, int a4, int a5)
{
  v174 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if ((a4 & 2) == 0)
    {
      if ((a4 & 8) == 0)
      {
        v163 = 0uLL;
        v164 = 0uLL;
        v165 = 1065353216;
        *v160 = 0uLL;
        *v161 = 0uLL;
        v162 = 1065353216;
        v7 = *(a2 + 16);
        if (v7)
        {
          v152 = 0;
          v8 = a1 + 152;
          do
          {
            v9 = v7[3];
            v10 = v7[4];
            v11 = &v7[3];
            v12 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v10 - v9) >> 3));
            if (v10 == v9)
            {
              v13 = 0;
            }

            else
            {
              v13 = v12;
            }

            std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v9, v10, v13, 1);
            v14 = *v11;
            v15 = v7[4];
            if (*v11 != *&v15)
            {
              v16 = *(v8 + 8 * v7[2].u32[0]);
              do
              {
                *(v14 + 744) = vmulq_n_f32(*(v14 + 744), v16);
                v14 += 1000;
              }

              while (v14 != *&v15);
            }

            KB::CandidateCollection::normalize_scores(&v7[3]);
            LODWORD(v171) = 0x7FFFFFFF;
            if (KB::CandidateCollection::contains_secondary_language_candidates(&v7[3], &v171, 6))
            {
              TI::ConfidenceModel::update_confidence_for_candidates((a1 + 604), &v7[3]);
              v152 |= v171 < 4;
            }

            v7 = *v7;
          }

          while (v7);
          v17 = *(a2 + 16);
          if (v17)
          {
            v151 = *(a2 + 24);
            v154 = 1;
            do
            {
              v18 = *(v17 + 4);
              v19 = *(a1 + 128 + 8 * v18);
              v20 = *(a1 + 480);
              if (v20)
              {
                v21 = *(a1 + 176 + 8 * v18);
                if (*(*(*v20 + 48))(v20))
                {
                  if (*(*(*(**(a1 + 480) + 48))(*(a1 + 480)) + 65) & v152)
                  {
                    v19 = v21;
                  }
                }
              }

              v171 = 0u;
              v172 = 0u;
              v173 = 1065353216;
              v22 = v17[3];
              if (v17[4] != v22)
              {
                if (v151 == 1)
                {
                  v23 = 1.0;
                }

                else
                {
                  v23 = v19;
                }

                v24 = v23;
                v25 = logf(v24);
                v26 = 0;
                v27 = 0;
                while (1)
                {
                  v28 = &v22[125 * v26];
                  TI::CP::TIPathRecognizerEnsemble::dictionary_key_for_candidate(&v168, v28);
                  if (!std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(v171, *(&v171 + 1), &v168))
                  {
                    goto LABEL_34;
                  }

                  v29 = *v28;
                  if (!*v28)
                  {
                    break;
                  }

                  v30 = 240 * v29;
                  v31 = *(v28 + 1);
                  do
                  {
                    if (*(v31 + 106))
                    {
                      goto LABEL_33;
                    }

                    v31 += 240;
                    v30 -= 240;
                  }

                  while (v30);
LABEL_110:
                  if (v169)
                  {
                    v73 = BYTE6(v168) == 1;
                  }

                  else
                  {
                    v73 = 0;
                  }

                  if (v73)
                  {
                    free(v169);
                  }

                  v22 = v17[3];
                  v26 = ++v27;
                  if (0x1CAC083126E978D5 * (v17[4] - v22) <= v27)
                  {
                    goto LABEL_117;
                  }
                }

                v31 = *(v28 + 1);
LABEL_33:
                if (v31 == *(v28 + 1) + 240 * v29)
                {
                  goto LABEL_110;
                }

LABEL_34:
                if ((v154 & 1) == 0)
                {
                  v32 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(v163, *(&v163 + 1), &v168);
                  if (v32)
                  {
                    v33 = v32[198];
                    v34 = v32[199];
                    if (*(v28 + 123))
                    {
                      Count = CFDictionaryGetCount(*(v28 + 123));
                      if (Count >= 1)
                      {
                        if (!(Count >> 61))
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(Count);
                        }

                        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
                      }
                    }

                    v36 = v25 + v28[186];
                    if (v33 != -INFINITY)
                    {
                      if (v36 == -INFINITY)
                      {
                        v36 = v33;
                      }

                      else
                      {
                        if (v33 >= v36)
                        {
                          v51 = v33;
                        }

                        else
                        {
                          v51 = v25 + v28[186];
                        }

                        if (v33 >= v36)
                        {
                          v52 = v25 + v28[186];
                        }

                        else
                        {
                          v52 = v33;
                        }

                        v53 = expf(v52 - v51);
                        v36 = v51 + log1pf(v53);
                      }
                    }

                    v49 = v28 + 186;
                    v50 = v25 + v28[187];
                    if (v34 != -INFINITY)
                    {
                      if (v50 == -INFINITY)
                      {
                        v50 = v34;
                      }

                      else
                      {
                        if (v34 >= v50)
                        {
                          v54 = v34;
                        }

                        else
                        {
                          v54 = v25 + v28[187];
                        }

                        if (v34 >= v50)
                        {
                          v55 = v25 + v28[187];
                        }

                        else
                        {
                          v55 = v34;
                        }

                        v56 = expf(v55 - v54);
                        v50 = v54 + log1pf(v56);
                      }
                    }

LABEL_82:
                    valuePtr = COERCE_DOUBLE(&v168);
                    v57 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(&v163, &v168, &valuePtr);
                    *(v57 + 198) = v36;
                    v58 = v57[100];
                    v59 = *(v57 + 202);
                    v158 = *(v57 + 812);
                    v159 = *(v57 + 205);
                    if (v23 == 1.0)
                    {
                      v59 = *(v28 + 190);
                    }

                    v60 = *v28;
                    if (*v28)
                    {
                      v61 = 240 * v60;
                      v62 = *(v28 + 1);
                      while ((*(v62 + 106) & 1) == 0)
                      {
                        v62 += 240;
                        v61 -= 240;
                        if (!v61)
                        {
                          goto LABEL_92;
                        }
                      }
                    }

                    else
                    {
                      v62 = *(v28 + 1);
                    }

                    if (v62 != *(v28 + 1) + 240 * v60)
                    {
                      *(v57[7] + 104) |= 0x10000u;
                    }

LABEL_92:
                    *(v57 + 199) = v50;
                    v57[100] = v58;
                    *(v57 + 202) = v59;
                    *(v57 + 812) = v158;
                    *(v57 + 205) = v159;
                    valuePtr = COERCE_DOUBLE(&v168);
                    v63 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(&v171, &v168, &valuePtr);
                    KB::Candidate::operator=(v63 + 6, v28);
                    if (a5 < 1)
                    {
                      goto LABEL_110;
                    }

                    v64 = expf(*v49);
                    valuePtr = COERCE_DOUBLE(&v168);
                    v65 = std::__hash_table<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(v160, &v168, &valuePtr);
                    v66 = *(v17 + 4);
                    v67 = v65[7];
                    if (!*&v67)
                    {
                      goto LABEL_109;
                    }

                    v68 = vcnt_s8(v67);
                    v68.i16[0] = vaddlv_u8(v68);
                    if (v68.u32[0] > 1uLL)
                    {
                      v69 = *(v17 + 4);
                      if (*&v67 <= v66)
                      {
                        v69 = v66 % *&v67;
                      }
                    }

                    else
                    {
                      v69 = (*&v67 - 1) & v66;
                    }

                    v70 = *(v65[6] + 8 * v69);
                    if (!v70 || (v71 = *v70) == 0)
                    {
LABEL_109:
                      operator new();
                    }

                    while (1)
                    {
                      v72 = v71[1];
                      if (v72 == v66)
                      {
                        if (*(v71 + 4) == v66)
                        {
                          *(v71 + 5) = v27;
                          *(v71 + 6) = v64;
                          goto LABEL_110;
                        }
                      }

                      else
                      {
                        if (v68.u32[0] > 1uLL)
                        {
                          if (v72 >= *&v67)
                          {
                            v72 %= *&v67;
                          }
                        }

                        else
                        {
                          v72 &= *&v67 - 1;
                        }

                        if (v72 != v69)
                        {
                          goto LABEL_109;
                        }
                      }

                      v71 = *v71;
                      if (!v71)
                      {
                        goto LABEL_109;
                      }
                    }
                  }
                }

                if (v169)
                {
                  v37 = v169;
                }

                else
                {
                  v37 = v170;
                }

                v38 = KB::String::hash(v37, v168);
                v41 = v38;
                v42 = *(&v163 + 1);
                if (!*(&v163 + 1))
                {
                  goto LABEL_63;
                }

                v43 = vcnt_s8(*(&v163 + 8));
                v43.i16[0] = vaddlv_u8(v43);
                v44 = v43.u32[0];
                if (v43.u32[0] > 1uLL)
                {
                  v45 = v38;
                  if (*(&v163 + 1) <= v38)
                  {
                    v45 = v38 % DWORD2(v163);
                  }
                }

                else
                {
                  v45 = (DWORD2(v163) - 1) & v38;
                }

                v46 = *(v163 + 8 * v45);
                if (!v46 || (v47 = *v46) == 0)
                {
LABEL_63:
                  operator new();
                }

                while (1)
                {
                  v48 = v47[1];
                  if (v48 == v41)
                  {
                    if (v47 + 2 == &v168 || KB::String::equal((v47 + 2), &v168, 1, v39, v40))
                    {
                      v49 = v28 + 186;
                      v36 = v25 + v28[186];
                      v50 = v25 + v28[187];
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    if (v44 > 1)
                    {
                      if (v48 >= v42)
                      {
                        v48 %= v42;
                      }
                    }

                    else
                    {
                      v48 &= v42 - 1;
                    }

                    if (v48 != v45)
                    {
                      goto LABEL_63;
                    }
                  }

                  v47 = *v47;
                  if (!v47)
                  {
                    goto LABEL_63;
                  }
                }
              }

LABEL_117:
              std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::~__hash_table(&v171);
              v154 = 0;
              v17 = *v17;
            }

            while (v17);
            v74 = v164;
            if (v164)
            {
              v75 = *MEMORY[0x277CBECE8];
              v76 = MEMORY[0x277CBF150];
              while (1)
              {
                TI::CP::TIPathRecognizerEnsemble::dictionary_key_for_candidate(&v168, (v74 + 12));
                v77 = v74[199];
                v78 = fabsf(v77) == INFINITY ? v74[200] : (v74[198] - v77) / v74[202];
                v74[200] = v78;
                v74[201] = 0.0;
                if (a5 >= 1)
                {
                  v79 = (v169 ? v169 : v170);
                  v80 = KB::String::hash(v79, v168);
                  v83 = v160[1];
                  if (v160[1])
                  {
                    v84 = v80;
                    v85 = vcnt_s8(v160[1]);
                    v85.i16[0] = vaddlv_u8(v85);
                    v86 = v85.u32[0];
                    if (v85.u32[0] > 1uLL)
                    {
                      v87 = v80;
                      if (v160[1] <= v80)
                      {
                        v87 = v80 % LODWORD(v160[1]);
                      }
                    }

                    else
                    {
                      v87 = (LODWORD(v160[1]) - 1) & v80;
                    }

                    v88 = *(v160[0] + v87);
                    if (v88)
                    {
                      v89 = *v88;
                      if (*v88)
                      {
                        break;
                      }
                    }
                  }
                }

LABEL_188:
                std::vector<KB::Candidate>::push_back[abi:nn200100](a3, (v74 + 12));
                if (v169 && BYTE6(v168) == 1)
                {
                  free(v169);
                }

                v74 = *v74;
                if (!v74)
                {
                  goto LABEL_192;
                }
              }

              v90 = v160[1] - 1;
              while (1)
              {
                v91 = v89[1];
                if (v91 == v84)
                {
                  if (v89 + 2 == &v168 || KB::String::equal((v89 + 2), &v168, 1, v81, v82))
                  {
                    valuePtr = COERCE_DOUBLE(&v168);
                    v92 = std::__hash_table<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(v160, &v168, &valuePtr);
                    v171 = 0u;
                    v172 = 0u;
                    v173 = *(v92 + 20);
                    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(&v171, v92[7]);
                    v93 = v92[8];
                    if (!v93)
                    {
                      goto LABEL_165;
                    }

                    while (1)
                    {
                      v94 = *(v93 + 4);
                      if (!*(&v171 + 1))
                      {
                        goto LABEL_163;
                      }

                      v95 = vcnt_s8(*(&v171 + 8));
                      v95.i16[0] = vaddlv_u8(v95);
                      if (v95.u32[0] > 1uLL)
                      {
                        v96 = *(v93 + 4);
                        if (*(&v171 + 1) <= v94)
                        {
                          v96 = v94 % *(&v171 + 1);
                        }
                      }

                      else
                      {
                        v96 = (*(&v171 + 1) - 1) & v94;
                      }

                      v97 = *(v171 + 8 * v96);
                      if (!v97 || (v98 = *v97) == 0)
                      {
LABEL_163:
                        operator new();
                      }

                      while (1)
                      {
                        v99 = v98[1];
                        if (v99 == v94)
                        {
                          break;
                        }

                        if (v95.u32[0] > 1uLL)
                        {
                          if (v99 >= *(&v171 + 1))
                          {
                            v99 %= *(&v171 + 1);
                          }
                        }

                        else
                        {
                          v99 &= *(&v171 + 1) - 1;
                        }

                        if (v99 != v96)
                        {
                          goto LABEL_163;
                        }

LABEL_162:
                        v98 = *v98;
                        if (!v98)
                        {
                          goto LABEL_163;
                        }
                      }

                      if (*(v98 + 4) != v94)
                      {
                        goto LABEL_162;
                      }

                      v93 = *v93;
                      if (!v93)
                      {
LABEL_165:
                        Mutable = CFDictionaryCreateMutable(v75, 0, MEMORY[0x277CBF138], v76);
                        for (i = v172; i; i = *i)
                        {
                          v102 = CFDictionaryCreateMutable(v75, 0, MEMORY[0x277CBF138], v76);
                          LODWORD(v103) = *(i + 5);
                          valuePtr = v103;
                          v104 = CFNumberCreate(v75, kCFNumberDoubleType, &valuePtr);
                          CFDictionarySetValue(v102, @"cand_index", v104);
                          if (v104)
                          {
                            CFRelease(v104);
                          }

                          valuePtr = *(i + 6);
                          v105 = CFNumberCreate(v75, kCFNumberDoubleType, &valuePtr);
                          CFDictionarySetValue(v102, @"cand_omega", v105);
                          if (v105)
                          {
                            CFRelease(v105);
                          }

                          std::string::basic_string[abi:nn200100]<0>(__p, off_278731CE0[*(i + 4)]);
                          if (v157 >= 0)
                          {
                            v106 = __p;
                          }

                          else
                          {
                            v106 = __p[0];
                          }

                          KB::String::String(&valuePtr, v106);
                          if (v157 < 0)
                          {
                            operator delete(__p[0]);
                          }

                          KB::cf_string_impl<KB::String>(__p, &valuePtr);
                          v107 = __p[0];
                          CFDictionarySetValue(Mutable, __p[0], v102);
                          if (v107)
                          {
                            CFRelease(v107);
                          }

                          if (v167 && BYTE6(valuePtr) == 1)
                          {
                            free(v167);
                          }

                          if (v102)
                          {
                            CFRelease(v102);
                          }
                        }

                        valuePtr = expf(v74[198]);
                        v108 = CFNumberCreate(v75, kCFNumberDoubleType, &valuePtr);
                        CFDictionarySetValue(Mutable, @"ensemble_omega", v108);
                        if (v108)
                        {
                          CFRelease(v108);
                        }

                        KB::Candidate::add_sources_info((v74 + 12), @"ensemble", Mutable);
                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v171);
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  if (v86 > 1)
                  {
                    if (v91 >= v83)
                    {
                      v91 %= v83;
                    }
                  }

                  else
                  {
                    v91 &= v90;
                  }

                  if (v91 != v87)
                  {
                    goto LABEL_188;
                  }
                }

                v89 = *v89;
                if (!v89)
                {
                  goto LABEL_188;
                }
              }
            }
          }
        }

LABEL_192:
        v109 = v161[0];
        if (v161[0])
        {
          do
          {
            v110 = v109;
            v109 = *v109;
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v110 + 6));
            v111 = v110[3];
            if (v111 && *(v110 + 22) == 1)
            {
              free(v111);
            }

            operator delete(v110);
          }

          while (v109);
        }

        goto LABEL_260;
      }

      v163 = 0uLL;
      v164 = 0uLL;
      v165 = 1065353216;
      *v160 = 0uLL;
      *v161 = 0uLL;
      v162 = 1065353216;
      v122 = *(a2 + 16);
      if (!v122)
      {
        goto LABEL_255;
      }

      do
      {
        v123 = v122[3];
        if (v122[4] != v123)
        {
          v124 = 0;
          v125 = 1;
          do
          {
            v126 = (v123 + 1000 * v124);
            KB::Candidate::capitalized_string(&v171, v126);
            v127 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(v163, *(&v163 + 1), &v171);
            if (*(&v171 + 1))
            {
              v128 = BYTE6(v171) == 1;
            }

            else
            {
              v128 = 0;
            }

            if (v128)
            {
              free(*(&v171 + 1));
            }

            if (v127)
            {
              KB::Candidate::capitalized_string(&v171, v126);
              v168 = &v171;
              v129 = std::__hash_table<std::__hash_value_type<KB::String,unsigned int>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned int>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v160, &v171, &v168);
              ++*(v129 + 12);
            }

            else
            {
              KB::Candidate::capitalized_string(&v171, v126);
              v168 = &v171;
              *(std::__hash_table<std::__hash_value_type<KB::String,unsigned int>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned int>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v160, &v171, &v168) + 12) = 1;
              if (*(&v171 + 1) && BYTE6(v171) == 1)
              {
                free(*(&v171 + 1));
              }

              KB::Candidate::capitalized_string(&v171, v126);
              v168 = &v171;
              v130 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(&v163, &v171, &v168);
              KB::Candidate::operator=(v130 + 6, v126);
            }

            if (*(&v171 + 1) && BYTE6(v171) == 1)
            {
              free(*(&v171 + 1));
            }

            v124 = v125;
            v123 = v122[3];
            v116 = 0x1CAC083126E978D5 * ((v122[4] - v123) >> 3) > v125++;
          }

          while (v116);
        }

        v122 = *v122;
      }

      while (v122);
      v131 = v164;
      if (!v164)
      {
LABEL_255:
        v144 = v161[0];
        if (v161[0])
        {
          do
          {
            v145 = v144;
            v144 = *v144;
            v146 = v145[3];
            if (v146 && *(v145 + 22) == 1)
            {
              free(v146);
            }

            operator delete(v145);
          }

          while (v144);
        }

LABEL_260:
        v147 = v160[0];
        v160[0] = 0;
        if (v147)
        {
          operator delete(v147);
        }

        std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::~__hash_table(&v163);
        goto LABEL_263;
      }

LABEL_231:
      if (*(v131 + 3))
      {
        v132 = *(v131 + 3);
      }

      else
      {
        v132 = (v131 + 8);
      }

      v133 = KB::String::hash(v132, *(v131 + 8));
      v136 = v133;
      v137 = v160[1];
      if (!v160[1])
      {
        goto LABEL_251;
      }

      v138 = vcnt_s8(v160[1]);
      v138.i16[0] = vaddlv_u8(v138);
      v139 = v138.u32[0];
      if (v138.u32[0] > 1uLL)
      {
        v140 = v133;
        if (v160[1] <= v133)
        {
          v140 = v133 % LODWORD(v160[1]);
        }
      }

      else
      {
        v140 = (LODWORD(v160[1]) - 1) & v133;
      }

      v141 = *(v160[0] + v140);
      if (!v141 || (v142 = *v141) == 0)
      {
LABEL_251:
        operator new();
      }

      while (1)
      {
        v143 = *(v142 + 1);
        if (v143 == v136)
        {
          if (v142 == v131 || KB::String::equal((v142 + 4), (v131 + 4), 1, v134, v135))
          {
            v131[198] = logf(v142[12]);
            std::vector<KB::Candidate>::push_back[abi:nn200100](a3, (v131 + 12));
            v131 = *v131;
            if (!v131)
            {
              goto LABEL_255;
            }

            goto LABEL_231;
          }
        }

        else
        {
          if (v139 > 1)
          {
            if (v143 >= v137)
            {
              v143 %= v137;
            }
          }

          else
          {
            v143 &= v137 - 1;
          }

          if (v143 != v140)
          {
            goto LABEL_251;
          }
        }

        v142 = *v142;
        if (!v142)
        {
          goto LABEL_251;
        }
      }
    }

    for (j = *(a2 + 16); j; j = *j)
    {
      v118 = j[3];
      if (j[4] != v118)
      {
        v119 = 0;
        v120 = 1;
        do
        {
          v121 = (v118 + 1000 * v119);
          *(v121 + 186) = 0;
          std::vector<KB::Candidate>::push_back[abi:nn200100](a3, v121);
          v119 = v120;
          v118 = j[3];
          v116 = 0x1CAC083126E978D5 * ((j[4] - v118) >> 3) > v120++;
        }

        while (v116);
      }
    }
  }

  else
  {
    for (k = *(a2 + 16); k; k = *k)
    {
      v113 = k[3];
      if (k[4] != v113)
      {
        v114 = 0;
        v115 = 1;
        do
        {
          std::vector<KB::Candidate>::push_back[abi:nn200100](a3, (v113 + 1000 * v114));
          v114 = v115;
          v113 = k[3];
          v116 = 0x1CAC083126E978D5 * ((k[4] - v113) >> 3) > v115++;
        }

        while (v116);
      }
    }
  }

LABEL_263:
  v148 = a3[1];
  v149 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v148 - *a3) >> 3));
  if (v148 == *a3)
  {
    v150 = 0;
  }

  else
  {
    v150 = v149;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a3, v148, v150, 1);
}