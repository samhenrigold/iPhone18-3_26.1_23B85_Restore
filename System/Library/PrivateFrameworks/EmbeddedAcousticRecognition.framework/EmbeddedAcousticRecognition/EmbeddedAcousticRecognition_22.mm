void sub_1B519F240(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = *(MutableState + 24);
  v6 = *(MutableState + 32) - v5;
  if (v6)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 2);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 16);
    do
    {
      v11 = *v9;
      v9 += 5;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(a1, a2);
  *(MutableState + 48) |= 0xAu;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a2);
  if (*(a1 + 104) == 1 && (*(a2 + 48) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 112);
    *(a1 + 112) = v4;
    if (v4 > *(a1 + 96))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

void *fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(void *result)
{
  v1 = result[3];
  v2 = result[4] - v1;
  if (v2)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 2);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 4);
    do
    {
      if (!*(v4 - 1))
      {
        ++result[1];
      }

      if (!*v4)
      {
        ++result[2];
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::NumInputEpsilons(uint64_t a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Expand(a1, a2, v4);
  }

  v5 = *(a1 + 120);
  if (*(v5 + 76) == a2)
  {
    v6 = v5 + 80;
  }

  else
  {
    v6 = *(v5 + 8) + 8 * a2 + 8;
  }

  return *(*v6 + 8);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::NumOutputEpsilons(uint64_t a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Expand(a1, a2, v4);
  }

  v5 = *(a1 + 120);
  if (*(v5 + 76) == a2)
  {
    v6 = v5 + 80;
  }

  else
  {
    v6 = *(v5 + 8) + 8 * a2 + 8;
  }

  return *(*v6 + 16);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ImplToFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D02488;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  a1[1] = v3;
  ++*(v3 + 56);
  return a1;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2CFC7C8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D02450;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B519F7AC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::CopyStates(a1, a2);
    *(a1 + 56) = *(a1 + 40);
    *(a1 + 72) = *(a2 + 72);
    v4 = *(a2 + 76);
    *(a1 + 76) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      if (*(v4 + 8 * v5))
      {
        operator new();
      }

      v7 = a1[2];
      v6 = a1[3];
      if (v7 >= v6)
      {
        v9 = a1[1];
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v9;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 1), v13);
        }

        v14 = (8 * v10);
        *v14 = 0;
        v8 = 8 * v10 + 8;
        v15 = a1[1];
        v16 = a1[2] - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = a1[1];
        a1[1] = v17;
        a1[2] = v8;
        a1[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 0;
        v8 = (v7 + 1);
      }

      a1[2] = v8;
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

uint64_t fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> const*>>((a1 + 24), v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 2));
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t *std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> const*>,std::__wrap_iter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int> const*>>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B519FAD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D02538;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B519FBD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

float fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::CheckSuperfinal(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 156) == 1 && (*(a1 + 44) & 1) == 0)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if ((*(*v3 + 16))(v3))
      {
        return result;
      }

      v1 = *(a1 + 8);
    }

    else if (*(a1 + 32) >= *(a1 + 24))
    {
      return result;
    }

    (*(**(v1 + 136) + 32))(*(v1 + 136), *(a1 + 40));
    return INFINITY;
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D02538;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D02538;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    if (*(a1 + 32) >= *(a1 + 24))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (((*(*v2 + 16))(v2) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(a1 + 44) ^ 1;
  return v3 & 1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (((*(*v2 + 16))(v2) & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::CheckSuperfinal(a1);
        return;
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }
}

float fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Expand(a1, a2, v6);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 120);
  if (*(v3 + 76) == a2)
  {
    v4 = (v3 + 80);
  }

  else
  {
    v4 = (*(v3 + 8) + 8 * a2 + 8);
  }

  v5 = *v4;
  v8 = *(v5 + 52);
  v6 = (v5 + 52);
  v7 = v8;
  v9 = *(v6 - 7);
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(v6 - 5) - v9) >> 2);
  if (*(v6 - 5) == v9)
  {
    v9 = 0;
  }

  *a3 = 0;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v6;
  *v6 = v7 + 1;
  return result;
}

void std::__shared_ptr_pointer<fst::SymbolTable *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,fst::SymbolTable>,std::allocator<fst::SymbolTable>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::SymbolTable *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,fst::SymbolTable>,std::allocator<fst::SymbolTable>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::SymbolTable *,std::shared_ptr<fst::SymbolTable>::__shared_ptr_default_delete<fst::SymbolTable,fst::SymbolTable>,std::allocator<fst::SymbolTable>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<fst::ArcScaleMapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D02618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcScaleMapper&,std::allocator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D02668;
  fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::ArcMapFst(a1 + 3, a2, a3);
}

void std::__shared_ptr_emplace<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D02668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

unint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v2);
  v3 = (*(**(a1 + 136) + 120))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v3);
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    result = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    *(a1 + 8) = *(a1 + 8) & 4 | result;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B51A0834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D012D8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

void sub_1B51A0A40(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorCacheStore(void *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a1 + 4;
  a1[5] = a1 + 4;
  a1[6] = 0;
  a1[7] = 0;
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  a1[7] = a1[5];
  return a1;
}

void sub_1B51A0AD8(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__list_imp<char *>::clear(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D02798;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0x1000C4052888210);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D02800;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

float fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Final(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2))
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 156);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (*(a1 + 160) == a2)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = INFINITY;
      }

      goto LABEL_17;
    }

    v7 = *(a1 + 136);
    v8 = *(a1 + 144);
    v6 = *(a1 + 160);
LABEL_10:
    v10 = v6 != -1 && v6 <= a2;
    v5 = *v8 * (*(*v7 + 32))(v7, (a2 - v10));
    goto LABEL_17;
  }

  v6 = *(a1 + 160);
  v5 = 0.0;
  if (v6 != a2)
  {
    v7 = *(a1 + 136);
    v8 = *(a1 + 144);
    goto LABEL_10;
  }

LABEL_17:
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  *MutableState = v5;
  *(MutableState + 48) |= 9u;
LABEL_18:
  v12 = *(a1 + 120);
  if (*(v12 + 76) == a2)
  {
    v13 = v12 + 80;
  }

  else
  {
    v13 = *(v12 + 8) + 8 * a2 + 8;
  }

  return **v13;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::NumArcs(uint64_t a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Expand(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
    return;
  }

  v5 = *(a1 + 136);
  v7 = v4 != -1 && v4 <= a2;
  v29 = 0;
  (*(*v5 + 136))(v5, (a2 - v7), &v26);
  while (1)
  {
    if (!v26)
    {
      if (v29 >= v27)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    if ((*(*v26 + 24))(v26))
    {
      break;
    }

    if (v26)
    {
      v8 = (*(*v26 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v8 = *(&v26 + 1) + 16 * v29;
LABEL_18:
    v9 = *v8;
    v10 = *(v8 + 8);
    LODWORD(v11) = *(v8 + 12);
    v12 = *(a1 + 160);
    if (v12 != -1 && v12 <= v11)
    {
      v11 = (v11 + 1);
    }

    else
    {
      v11 = v11;
    }

    if (v11 >= *(a1 + 164))
    {
      *(a1 + 164) = v11 + 1;
    }

    *&v14 = v10 * **(a1 + 144);
    *&v25 = v9;
    *(&v25 + 1) = v14 | (v11 << 32);
    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::PushArc(a1, a2, &v25);
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    else
    {
      ++v29;
    }
  }

  if (v26)
  {
    (*(*v26 + 8))();
    goto LABEL_33;
  }

LABEL_31:
  if (v28)
  {
    --*v28;
  }

LABEL_33:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0 || (LODWORD(v26) = fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Final(a1, a2), LODWORD(v25) = 2139095040, *&v26 == INFINITY))
  {
    v15 = *(a1 + 156);
    if (v15 == 2)
    {
      v20 = *(a1 + 160);
      v22 = v20 != -1 && v20 <= a2;
      v19 = *(a1 + 144);
      v23 = *v19 * (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v22));
      *&v26 = v23;
      LODWORD(v25) = 2139095040;
      if (v23 != INFINITY)
      {
        v24 = *(a1 + 160);
        *&v26 = 0;
        *(&v26 + 1) = __PAIR64__(v24, LODWORD(v23));
        fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::PushArc(a1, a2, &v26);
      }
    }

    else if (v15 == 1)
    {
      v16 = *(a1 + 160);
      v18 = v16 != -1 && v16 <= a2;
      (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v18));
    }
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B51A1190(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::PushArc(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  v5 = MutableState;
  v7 = MutableState[4];
  v6 = MutableState[5];
  if (v7 >= v6)
  {
    v9 = MutableState[3];
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((MutableState + 3), v13);
    }

    v14 = (16 * v10);
    *v14 = *a3;
    v8 = 16 * v10 + 16;
    v15 = MutableState[3];
    v16 = MutableState[4] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[3];
    v5[3] = v17;
    v5[4] = v8;
    v5[5] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *a3;
    v8 = (v7 + 1);
  }

  v5[4] = v8;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::NumInputEpsilons(uint64_t a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::NumOutputEpsilons(uint64_t a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ImplToFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D02800;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  a1[1] = v3;
  ++*(v3 + 56);
  return a1;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D028B0;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B51A15A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::CheckSuperfinal(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 156) == 1)
  {
    v2 = result;
    if ((*(result + 44) & 1) == 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = (*(*result + 16))(result);
        if (result)
        {
          return result;
        }

        v1 = *(v2 + 8);
      }

      else if (*(v2 + 32) >= *(v2 + 24))
      {
        return result;
      }

      v3 = *(**(v1 + 136) + 32);

      return v3();
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D028B0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D028B0;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::CheckSuperfinal(a1);
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void std::__shared_ptr_emplace<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::__shared_ptr_emplace[abi:ne200100]<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper> &,fst::StdToLatticeMapper<float>&,fst::ArcMapFstOptions &,std::allocator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D022A0;
  fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::ArcMapFst(a1 + 3, a2, a3, a4);
}

void std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 2;
      v7 = v4 - 2;
      v8 = v4 - 2;
      do
      {
        v9 = *v8;
        v8 -= 2;
        (*v9)(v7);
        v6 -= 2;
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

uint64_t *std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B51A1B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 16 * a2;
      if (v3 != v6)
      {
        v7 = v3 - 16;
        v8 = (v3 - 16);
        v9 = (v3 - 16);
        do
        {
          v10 = *v9;
          v9 -= 2;
          result = (*v10)(v8);
          v7 -= 16;
          v11 = v8 == v6;
          v8 = v9;
        }

        while (!v11);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::__append(result, v5);
  }

  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 8);
    v7 = a2;
    do
    {
      v8 = v7[1];
      *v6 = v8;
      ++*(v8 + 14);
      *(v6 - 1) = &unk_1F2CFC590;
      v7 += 2;
      a4 += 16;
      v6 += 2;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 2;
        (*v11)(v5);
        v9 += 2;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (a2 > (v2 - v3) >> 4)
  {
    v4 = v3 - *result;
    v5 = a2 + (v4 >> 4);
    if (!(v5 >> 60))
    {
      v6 = v2 - *result;
      if (v6 >> 3 > v5)
      {
        v5 = v6 >> 3;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF0)
      {
        v7 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v5;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>(result, v7);
      }

      fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst((16 * (v4 >> 4)));
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst(v3);
  }

  result[1] = v3;
  return result;
}

void sub_1B51A1ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::StateMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0xCCCCCCCCCCCCCCCDLL * ((a2[3] - v9) >> 2))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 20 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0x3FFFFFFF0007);
  }

  return result;
}

void fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetState(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v14 = 0;
  (*(*v6 + 136))(v6, a2, v12);
  while (1)
  {
    if (!v12[0])
    {
      if (v14 >= v12[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v7 = v12[1] + 20 * v14;
      goto LABEL_8;
    }

    if ((*(*v12[0] + 24))(v12[0]))
    {
      break;
    }

    if (!v12[0])
    {
      goto LABEL_7;
    }

    v7 = (*(*v12[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v7);
    if (v12[0])
    {
      (*(*v12[0] + 40))(v12[0]);
    }

    else
    {
      ++v14;
    }
  }

  if (v12[0])
  {
    (*(*v12[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v13)
  {
    --*v13;
  }

LABEL_15:
  v8 = a1[2];
  v9 = a1[3];
  v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 2));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(v8, v9, v12, v11, 1);
}

void sub_1B51A2398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = result;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    result = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 4) < *(v9 + 1))
        {
          v25 = *v9;
          v26 = *(v9 + 4);
          *v9 = *(a2 - 20);
          v27 = *(a2 - 12);
          *(v9 + 4) = *(a2 - 1);
          v28 = v9[1];
          v9[1] = v27;
          *(a2 - 20) = v25;
          *(a2 - 12) = v28;
          *(a2 - 1) = v26;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20), v9 + 5);
      if (*(a2 - 4) < *(v9 + 11))
      {
        v29 = v9[5];
        v30 = *(v9 + 14);
        v9[5] = *(a2 - 20);
        v31 = *(a2 - 12);
        *(v9 + 14) = *(a2 - 1);
        v32 = v9[6];
        v9[6] = v31;
        *(a2 - 20) = v29;
        *(a2 - 12) = v32;
        *(a2 - 1) = v30;
        if (*(v9 + 11) < *(v9 + 6))
        {
          v33 = *(v9 + 20);
          v34 = *(v9 + 9);
          v35 = v9[5];
          *(v9 + 20) = v35;
          v36 = *(v9 + 12);
          v37 = *(v9 + 13);
          v38 = *(v9 + 14);
          *(v9 + 9) = v38;
          v9[5] = v33;
          v39 = *(v9 + 28);
          *(v9 + 7) = v36;
          *(v9 + 8) = v37;
          v9[6] = v39;
          *(v9 + 14) = v34;
          if (*(v9 + 1) > SHIDWORD(v35))
          {
            v40 = *v9;
            v41 = *(v9 + 4);
            *v9 = v35;
            *(v9 + 4) = v38;
            *(v9 + 20) = v40;
            v42 = v9[1];
            *(v9 + 2) = v36;
            *(v9 + 3) = v37;
            *(v9 + 28) = v42;
            *(v9 + 9) = v41;
          }
        }
      }

      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, v9 + 20, (v9 + 5), (v9 + 60), (a2 - 20));
      return;
    }

LABEL_10:
    if (v12 <= 479)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 20 * (v13 >> 1));
    if (v12 < 0xA01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((v9 + 20 * v14), v9, (a2 - 20));
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20 * v14), (a2 - 20));
      v16 = 5 * v14;
      v17 = (v9 + 20 * v14 - 20);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>((v9 + 20), v17, a2 - 5);
      v18 = (v9 + 4 * v16 + 20);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(result + 5, v18, (a2 - 60));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v17, v15, v18);
      v19 = *result;
      v20 = *(result + 4);
      *result = *v15;
      *(result + 4) = *(v15 + 4);
      *v15 = v19;
      v21 = result[1];
      result[1] = v15[1];
      v15[1] = v21;
      *(v15 + 4) = v20;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (*(result - 4) >= *(result + 1))
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(result, a2);
      goto LABEL_22;
    }

LABEL_17:
    v22 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(result, a2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

    v24 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(result, v22);
    v9 = (v22 + 20);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(v22 + 20, a2))
    {
      a4 = -v11;
      a2 = v22;
      if (v24)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v24)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,false>(result, v22, a3, -v11, a5 & 1);
      v9 = (v22 + 20);
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(v9, (v9 + 20), (a2 - 20));
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 1);
  v4 = *(a3 + 1);
  if (v3 < *(a1 + 1))
  {
    v5 = *a1;
    v7 = *(a1 + 2);
    v6 = *(a1 + 3);
    v8 = *(a1 + 4);
    if (v4 >= v3)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 4) = *(a2 + 4);
      *a2 = v5;
      *(a2 + 2) = v7;
      *(a2 + 3) = v6;
      *(a2 + 4) = v8;
      if (*(a3 + 1) >= SHIDWORD(v5))
      {
        return 1;
      }

      *a2 = *a3;
      a2[1] = a3[1];
      *(a2 + 4) = *(a3 + 4);
    }

    else
    {
      *a1 = *a3;
      a1[1] = a3[1];
      *(a1 + 4) = *(a3 + 4);
    }

    *a3 = v5;
    *(a3 + 2) = v7;
    *(a3 + 3) = v6;
    *(a3 + 4) = v8;
    return 1;
  }

  if (v4 < v3)
  {
    v9 = *a2;
    v10 = *(a2 + 4);
    *a2 = *a3;
    v11 = a3[1];
    *(a2 + 4) = *(a3 + 4);
    v12 = a2[1];
    a2[1] = v11;
    *a3 = v9;
    a3[1] = v12;
    *(a3 + 4) = v10;
    if (*(a2 + 1) < *(a1 + 1))
    {
      v13 = *a1;
      v14 = *(a1 + 4);
      *a1 = *a2;
      v15 = a2[1];
      *(a1 + 4) = *(a2 + 4);
      v16 = a1[1];
      a1[1] = v15;
      *a2 = v13;
      a2[1] = v16;
      *(a2 + 4) = v14;
    }

    return 1;
  }

  return 0;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, a2, a3);
  if (*(a4 + 1) < *(a3 + 4))
  {
    v11 = *a3;
    v12 = *(a3 + 16);
    *a3 = *a4;
    result = a4[1];
    *(a3 + 16) = *(a4 + 4);
    v13 = *(a3 + 8);
    *(a3 + 8) = result;
    *a4 = v11;
    *(a4 + 1) = v13;
    *(a4 + 4) = v12;
    if (*(a3 + 4) < *(a2 + 4))
    {
      v14 = *a2;
      v15 = *(a2 + 16);
      *a2 = *a3;
      result = *(a3 + 8);
      *(a2 + 16) = *(a3 + 16);
      v16 = *(a2 + 8);
      *(a2 + 8) = result;
      *a3 = v14;
      *(a3 + 8) = v16;
      *(a3 + 16) = v15;
      if (*(a2 + 4) < *(a1 + 4))
      {
        v17 = *a1;
        v18 = *(a1 + 16);
        *a1 = *a2;
        result = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        v19 = *(a1 + 8);
        *(a1 + 8) = result;
        *a2 = v17;
        *(a2 + 8) = v19;
        *(a2 + 16) = v18;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v20 = *a4;
    v21 = *(a4 + 4);
    *a4 = *a5;
    result = a5[1];
    *(a4 + 4) = *(a5 + 4);
    v22 = *(a4 + 1);
    a4[1] = result;
    *a5 = v20;
    *(a5 + 1) = v22;
    *(a5 + 4) = v21;
    if (*(a4 + 1) < *(a3 + 4))
    {
      v23 = *a3;
      v24 = *(a3 + 16);
      *a3 = *a4;
      result = a4[1];
      *(a3 + 16) = *(a4 + 4);
      v25 = *(a3 + 8);
      *(a3 + 8) = result;
      *a4 = v23;
      *(a4 + 1) = v25;
      *(a4 + 4) = v24;
      if (*(a3 + 4) < *(a2 + 4))
      {
        v26 = *a2;
        v27 = *(a2 + 16);
        *a2 = *a3;
        result = *(a3 + 8);
        *(a2 + 16) = *(a3 + 16);
        v28 = *(a2 + 8);
        *(a2 + 8) = result;
        *a3 = v26;
        *(a3 + 8) = v28;
        *(a3 + 16) = v27;
        if (*(a2 + 4) < *(a1 + 4))
        {
          v29 = *a1;
          v30 = *(a1 + 16);
          *a1 = *a2;
          result = *(a2 + 8);
          *(a1 + 16) = *(a2 + 16);
          v31 = *(a1 + 8);
          *(a1 + 8) = result;
          *a2 = v29;
          *(a2 + 8) = v31;
          *(a2 + 16) = v30;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 20);
    if ((result + 20) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        if (*(v4 + 6) < *(v4 + 1))
        {
          v6 = *v2;
          v7 = *(v4 + 28);
          v8 = *(v4 + 9);
          v9 = HIDWORD(*v5);
          v10 = v3;
          while (1)
          {
            v11 = result + v10;
            *(v11 + 20) = *(result + v10);
            *(v11 + 28) = *(result + v10 + 8);
            *(v11 + 9) = *(result + v10 + 16);
            if (!v10)
            {
              break;
            }

            v10 -= 20;
            if (*(v11 - 4) <= v9)
            {
              v12 = (result + v10 + 20);
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v6;
          v12[1] = v7;
          *(v12 + 4) = v8;
        }

        v2 = (v5 + 20);
        v3 += 20;
        v4 = v5;
      }

      while ((v5 + 20) != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 20);
    if ((result + 20) != a2)
    {
      v3 = result + 36;
      do
      {
        v4 = v2;
        if (*(result + 6) < *(result + 1))
        {
          v5 = *v2;
          v6 = *(result + 28);
          v7 = *(result + 9);
          v8 = HIDWORD(*v4);
          v9 = v3;
          do
          {
            v10 = v9;
            *(v9 - 2) = *(v9 - 9);
            *(v9 - 1) = *(v9 - 7);
            v11 = *(v9 - 5);
            v9 -= 5;
            *v10 = v11;
          }

          while (*(v10 - 13) > v8);
          *(v9 - 2) = v5;
          *(v9 - 1) = v6;
          *v9 = v7;
        }

        v2 = (v4 + 20);
        v3 += 20;
        result = v4;
      }

      while ((v4 + 20) != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  if (*(a2 - 16) <= v3)
  {
    v7 = a1 + 20;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7 + 1);
      v7 += 20;
    }

    while (v8 <= v3);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4 + 20;
      v6 = *(v4 + 6);
      v4 = (v4 + 20);
    }

    while (v6 <= v3);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 20;
      v10 = *(a2 - 16);
      a2 -= 20;
    }

    while (v10 > v3);
  }

  v11 = a1[1];
  v12 = *(a1 + 4);
  while (v5 < v9)
  {
    v13 = *v5;
    v14 = *(v5 + 16);
    *v5 = *v9;
    v15 = *(v9 + 8);
    *(v5 + 16) = *(v9 + 16);
    v16 = *(v5 + 8);
    *(v5 + 8) = v15;
    *v9 = v13;
    *(v9 + 8) = v16;
    *(v9 + 16) = v14;
    do
    {
      v17 = *(v5 + 24);
      v5 += 20;
    }

    while (v17 <= v3);
    do
    {
      v18 = *(v9 - 16);
      v9 -= 20;
    }

    while (v18 > v3);
  }

  if ((v5 - 20) != a1)
  {
    *a1 = *(v5 - 20);
    a1[1] = *(v5 - 12);
    *(a1 + 4) = *(v5 - 4);
  }

  *(v5 - 20) = v2;
  *(v5 - 12) = v11;
  *(v5 - 4) = v12;
  return v5;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::LatticeWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &>(char *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 4);
  v6 = HIDWORD(*a1);
  do
  {
    v7 = *&a1[v2 + 24];
    v2 += 20;
  }

  while (v7 < v6);
  v8 = &a1[v2];
  if (v2 == 20)
  {
    while (v8 < a2)
    {
      v9 = a2 - 20;
      v11 = *(a2 - 16);
      a2 -= 20;
      if (v11 < v6)
      {
        goto LABEL_9;
      }
    }

    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 20;
      v10 = *(a2 - 16);
      a2 -= 20;
    }

    while (v10 >= v6);
  }

LABEL_9:
  v12 = v8;
  if (v8 < v9)
  {
    v13 = v9;
    do
    {
      v14 = *v12;
      v15 = *(v12 + 4);
      *v12 = *v13;
      v16 = *(v13 + 8);
      *(v12 + 4) = *(v13 + 16);
      v17 = *(v12 + 1);
      *(v12 + 1) = v16;
      *v13 = v14;
      *(v13 + 8) = v17;
      *(v13 + 16) = v15;
      do
      {
        v18 = *(v12 + 6);
        v12 += 20;
      }

      while (v18 < v6);
      do
      {
        v19 = *(v13 - 16);
        v13 -= 20;
      }

      while (v19 >= v6);
    }

    while (v12 < v13);
  }

  if (v12 - 20 != a1)
  {
    *a1 = *(v12 - 20);
    *(a1 + 1) = *(v12 - 12);
    *(a1 + 4) = *(v12 - 1);
  }

  *(v12 - 20) = v3;
  *(v12 - 12) = v4;
  *(v12 - 1) = v5;
  return v12 - 20;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t a1, uint64_t *a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a2 - 20));
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a1 + 40));
        if (*(a2 - 4) < *(a1 + 44))
        {
          v20 = *(a1 + 40);
          v21 = *(a1 + 56);
          *(a1 + 40) = *(a2 - 20);
          v22 = *(a2 - 12);
          *(a1 + 56) = *(a2 - 1);
          v23 = *(a1 + 48);
          *(a1 + 48) = v22;
          *(a2 - 20) = v20;
          *(a2 - 12) = v23;
          *(a2 - 1) = v21;
          if (*(a1 + 44) < *(a1 + 24))
          {
            v24 = *(a1 + 20);
            v25 = *(a1 + 36);
            v26 = *(a1 + 40);
            *(a1 + 20) = v26;
            v27 = *(a1 + 48);
            v28 = *(a1 + 52);
            v29 = *(a1 + 56);
            *(a1 + 36) = v29;
            *(a1 + 40) = v24;
            v30 = *(a1 + 28);
            *(a1 + 28) = v27;
            *(a1 + 32) = v28;
            *(a1 + 48) = v30;
            *(a1 + 56) = v25;
            if (*(a1 + 4) > SHIDWORD(v26))
            {
              v31 = *a1;
              v32 = *(a1 + 16);
              *a1 = v26;
              *(a1 + 16) = v29;
              *(a1 + 20) = v31;
              v33 = *(a1 + 8);
              *(a1 + 8) = v27;
              *(a1 + 12) = v28;
              *(a1 + 28) = v33;
              *(a1 + 36) = v32;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, a1 + 20, a1 + 40, (a1 + 60), (a2 - 20));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 4) < *(a1 + 4))
    {
      v5 = *a1;
      v6 = *(a1 + 16);
      *a1 = *(a2 - 20);
      v7 = *(a2 - 12);
      *(a1 + 16) = *(a2 - 1);
      v8 = *(a1 + 8);
      *(a1 + 8) = v7;
      *(a2 - 20) = v5;
      *(a2 - 12) = v8;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_11:
  v9 = (a1 + 40);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,0>(a1, (a1 + 20), (a1 + 40));
  v10 = (a1 + 60);
  if ((a1 + 60) == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (*(v10 + 1) < *(v9 + 1))
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = *(v10 + 4);
      v16 = HIDWORD(*v10);
      v17 = v11;
      while (1)
      {
        v18 = a1 + v17;
        *(v18 + 60) = *(a1 + v17 + 40);
        *(v18 + 68) = *(a1 + v17 + 48);
        *(v18 + 76) = *(a1 + v17 + 56);
        if (v17 == -40)
        {
          break;
        }

        v17 -= 20;
        if (*(v18 + 24) <= v16)
        {
          v19 = a1 + v17 + 60;
          goto LABEL_19;
        }
      }

      v19 = a1;
LABEL_19:
      *v19 = v13;
      *(v19 + 8) = v14;
      *(v19 + 16) = v15;
      if (++v12 == 8)
      {
        return (v10 + 20) == a2;
      }
    }

    v9 = v10;
    v11 += 20;
    v10 = (v10 + 20);
    if (v10 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
    if (a2 - a1 >= 21)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[20 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v9, v12);
        v12 = (v12 - 20);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (*(v13 + 1) < *(a1 + 1))
        {
          v14 = *v13;
          v15 = *(v13 + 4);
          *v13 = *a1;
          v16 = *(a1 + 1);
          *(v13 + 4) = *(a1 + 4);
          v17 = *(v13 + 1);
          *(v13 + 1) = v16;
          *a1 = v14;
          *(a1 + 1) = v17;
          *(a1 + 4) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v9, a1);
        }

        v13 += 20;
      }

      while (v13 != a3);
    }

    if (v8 >= 21)
    {
      v18 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2);
      v19 = a2 - 20;
      do
      {
        v20 = *a1;
        v22 = *(a1 + 2);
        v21 = *(a1 + 3);
        v23 = *(a1 + 4);
        v24 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, a4, v18);
        if (v19 == v24)
        {
          *v24 = v20;
          *(v24 + 8) = v22;
          *(v24 + 12) = v21;
          *(v24 + 16) = v23;
        }

        else
        {
          *v24 = *v19;
          *(v24 + 8) = *(v19 + 1);
          *(v24 + 16) = *(v19 + 4);
          *v19 = v20;
          *(v19 + 2) = v22;
          *(v19 + 3) = v21;
          *(v19 + 4) = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(a1, v24 + 20, a4, 0xCCCCCCCCCCCCCCCDLL * ((v24 + 20 - a1) >> 2));
        }

        v19 -= 20;
      }

      while (v18-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 2)))
    {
      v5 = (0x999999999999999ALL * ((a4 - result) >> 2)) | 1;
      v6 = result + 20 * v5;
      if ((0x999999999999999ALL * ((a4 - result) >> 2) + 2) < a3)
      {
        v7 = *(v6 + 4) < *(v6 + 24);
        v8 = 20;
        if (*(v6 + 4) >= *(v6 + 24))
        {
          v8 = 0;
        }

        v6 += v8;
        if (v7)
        {
          v5 = 0x999999999999999ALL * ((a4 - result) >> 2) + 2;
        }
      }

      if (*(v6 + 4) >= *(a4 + 1))
      {
        v9 = *a4;
        v10 = a4[1];
        v11 = *(a4 + 4);
        v12 = HIDWORD(*a4);
        do
        {
          v13 = a4;
          a4 = v6;
          *v13 = *v6;
          v13[1] = *(v6 + 8);
          *(v13 + 4) = *(v6 + 16);
          if (v4 < v5)
          {
            break;
          }

          v14 = (2 * v5) | 1;
          v6 = result + 20 * v14;
          v15 = 2 * v5 + 2;
          if (v15 < a3)
          {
            v16 = *(v6 + 4);
            v17 = *(v6 + 24);
            v18 = v16 < v17;
            if (v16 >= v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = 20;
            }

            v6 += v19;
            if (v18)
            {
              v14 = v15;
            }
          }

          v5 = v14;
        }

        while (*(v6 + 4) >= v12);
        *a4 = v9;
        a4[1] = v10;
        *(a4 + 4) = v11;
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 20 * v3;
    v5 = v4 + 20;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = *(v4 + 24);
      v8 = *(v4 + 44);
      v9 = v4 + 40;
      if (v7 >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v9;
      }
    }

    *a1 = *v5;
    *(a1 + 8) = *(v5 + 8);
    *(a1 + 16) = *(v5 + 16);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> &,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 20 * v4;
    if (*(v5 + 4) < *(a2 - 16))
    {
      v8 = *(a2 - 20);
      v6 = a2 - 20;
      v7 = v8;
      v9 = *(v6 + 8);
      v10 = *(v6 + 16);
      v11 = HIDWORD(v8);
      do
      {
        v12 = v6;
        v6 = v5;
        *v12 = *v5;
        *(v12 + 8) = *(v5 + 8);
        *(v12 + 16) = *(v5 + 16);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 20 * v4;
      }

      while (*(v5 + 4) < v11);
      *v6 = v7;
      *(v6 + 8) = v9;
      *(v6 + 16) = v10;
    }
  }

  return result;
}

void fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = fst::LookAheadMatchType<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, a2);
  v7 = *(a3 + 8);
  if (v6)
  {
    if (v6 == 1)
    {
      v8[0] = *a3;
      v9 = v7;
      v10 = 0u;
      memset(v11, 0, sizeof(v11));
      fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase2<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>(a1, a2, v8);
    }

    v8[0] = *a3;
    v9 = v7;
    v10 = 0u;
    memset(v11, 0, sizeof(v11));
    fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase2<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>(a1, a2, v8);
  }

  v8[0] = *a3;
  v9 = v7;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase2<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>(a1, a2, v8);
}

void fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ComposeFst(void *a1)
{
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::LookAheadMatchType<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t a2)
{
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::LookAheadMatcher(v6, a1, 1);
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::LookAheadMatcher(v5, a2, 0);
  v3 = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(v6, v5);
  if (v5[0])
  {
    (*(*v5[0] + 8))(v5[0]);
  }

  if (v6[0])
  {
    (*(*v6[0] + 8))(v6[0]);
  }

  return v3;
}

void sub_1B51A3860(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a9)
  {
    fst::LookAheadMatchType<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>();
  }

  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(void *a1, void *a2)
{
  v4 = (*(**a1 + 24))(*a1, 0);
  v5 = (*(**a2 + 24))(*a2, 0);
  if (v4 == 1 && ((*(**a1 + 48))() & 0x20) != 0)
  {
    return 1;
  }

  if (!v5 && ((*(**a2 + 48))() & 0x10) != 0)
  {
    return 0;
  }

  if (((*(**a1 + 48))() & 0x20) == 0 || (v6 = *a1, v7 = *(**a1 + 24), v8 = 1, v7(v6, 1) != 1))
  {
    if (((*(**a2 + 48))() & 0x10) == 0 || (*(**a2 + 24))(*a2, 1))
    {
      return 3;
    }

    return 0;
  }

  return v8;
}

uint64_t fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::LookAheadMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 144))(a2, a3);
  *a1 = v4;
  if (!v4)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SortedMatcher(int32x2_t *a1, uint64_t a2, __int32 a3, __int32 a4)
{
  *a1 = &unk_1F2D029D0;
  a1[1] = (*(*a2 + 88))(a2, 0);
  a1[2].i32[0] = -1;
  a1[3] = 0;
  a1[4].i32[0] = a3;
  a1[4].i32[1] = a4;
  a1[5].i32[0] = -1;
  a1[6] = 0;
  a1[7] = 0xFFFFFFFFLL;
  a1[8] = 0;
  a1[9].i32[0] = -1;
  a1[9].i8[6] = 0;
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MemoryPool(&a1[10], 1);
}

void sub_1B51A3CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 78))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::Final_(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 32);

  return v1();
}

void fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D02A78;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 8));
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D02A78;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 8));

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D02AB8;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B51A40D4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Link>::~MemoryArena(quasar::Bitmap *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D02AB8;
  v2 = (a1 + 24);
  v3 = *(a1 + 4);
  if (v3 != (a1 + 24))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D029D0;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v3 = v2[3];
      if (v3)
      {
        --*v3;
      }
    }

    v2[5] = a1[17];
    a1[17] = v2;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[10] = &unk_1F2D02A78;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 11));
  quasar::Bitmap::~Bitmap((a1 + 10));
  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D029D0;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 78) = *(a2 + 78);
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MemoryPool((a1 + 80), 1);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    v3 = result;
    *(result + 16) = a2;
    if (*(result + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v11, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 78) = 1;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Reinit(v6, *(v3 + 8), a2);
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 136);
      if (v7)
      {
        *(v3 + 136) = v7[5];
      }

      else
      {
        v7 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::Allocate((v3 + 88), 1);
        v7[5] = 0;
      }

      v8 = *(v3 + 8);
      v7[4] = 0;
      (*(*v8 + 136))(v8, a2, v7);
      *(v3 + 24) = v7;
    }

    if (*v7)
    {
      (*(**v7 + 80))(*v7, 16, 16);
    }

    result = (*(**(v3 + 8) + 40))(*(v3 + 8), a2);
    *(v3 + 48) = result;
    *(v3 + 72) = a2;
  }

  return result;
}

void sub_1B51A4590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Reinit(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_5;
  }

  result = (*(*v6 + 16))(v6, a3);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  else
  {
LABEL_5:
    v8 = a1[3];
    if (v8)
    {
      --*v8;
    }
  }

  a1[4] = 0;
  v9 = *(*a2 + 136);

  return v9(a2, a3, a1);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 77) = 1;
  if (*(a1 + 78) == 1)
  {
    v3 = 0;
    *(a1 + 76) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 76) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 76);
    }
  }

  return v3 & 1;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Search(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    (*(*v2 + 80))(v2, v3, 15);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v4 = *(a1 + 24);
    if (*v4)
    {
      (*(**v4 + 56))(*v4);
    }

    else
    {
      v4[4] = 0;
    }

    while (1)
    {
      v14 = *(a1 + 24);
      if (*v14)
      {
        if ((*(**v14 + 24))(*v14))
        {
          return 0;
        }
      }

      else if (v14[4] >= v14[2])
      {
        return 0;
      }

      v15 = *(a1 + 24);
      v16 = *v15;
      if (*(a1 + 32))
      {
        v17 = v16 ? (*(*v16 + 32))(v16) : v15[1] + 20 * v15[4];
        v18 = (v17 + 4);
      }

      else
      {
        v18 = (v16 ? (*(*v16 + 32))(v16) : v15[1] + 20 * v15[4]);
      }

      v19 = *(a1 + 40);
      v20 = *v18 <= v19 ? 0 : 7;
      if (*v18 == v19)
      {
        v20 = 1;
      }

      if (v20)
      {
        break;
      }

      v21 = *(a1 + 24);
      if (*v21)
      {
        (*(**v21 + 40))(*v21);
      }

      else
      {
        ++v21[4];
      }
    }

    return v20 == 1;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
LABEL_53:
    v23 = *(a1 + 24);
    result = *v23;
    if (!*v23)
    {
      v23[4] = v6;
      return result;
    }

    (*(*result + 64))(result, v6);
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + v5) >> 1;
    v8 = *(a1 + 24);
    if (*v8)
    {
      (*(**v8 + 64))(*v8, (v6 + v5) >> 1);
    }

    else
    {
      v8[4] = v7;
    }

    v9 = *(a1 + 24);
    v10 = *v9;
    if (*(a1 + 32))
    {
      v11 = v10 ? (*(*v10 + 32))(v10) : v9[1] + 20 * v9[4];
      v12 = (v11 + 4);
    }

    else
    {
      v12 = (v10 ? (*(*v10 + 32))(v10) : v9[1] + 20 * v9[4]);
    }

    v13 = *(a1 + 40);
    if (*v12 <= v13)
    {
      break;
    }

    v5 = (v6 + v5) >> 1;
LABEL_25:
    if (v6 >= v5)
    {
      goto LABEL_53;
    }
  }

  if (*v12 < v13)
  {
    v6 = v7 + 1;
    goto LABEL_25;
  }

  while (v7 > v6)
  {
    v24 = *(a1 + 24);
    --v7;
    if (*v24)
    {
      (*(**v24 + 64))(*v24, v7);
    }

    else
    {
      v24[4] = v7;
    }

    v25 = *(a1 + 24);
    v26 = *v25;
    if (*(a1 + 32))
    {
      if (v26)
      {
        v27 = (*(*v26 + 32))(v26);
      }

      else
      {
        v27 = v25[1] + 20 * v25[4];
      }

      v28 = (v27 + 4);
    }

    else if (v26)
    {
      v28 = (*(*v26 + 32))(v26);
    }

    else
    {
      v28 = (v25[1] + 20 * v25[4]);
    }

    if (*v28 != *(a1 + 40))
    {
      v29 = *(a1 + 24);
      v30 = v7 + 1;
      if (*v29)
      {
        (*(**v29 + 64))(*v29, v30);
      }

      else
      {
        v29[4] = v30;
      }

      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Done(uint64_t a1)
{
  if (*(a1 + 76))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*v3)
  {
    if ((*(**v3 + 24))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 77) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = **(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    (*(*v5 + 80))(v5, v6, 15);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 24);
  v8 = *v7;
  if (v4)
  {
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8);
    }

    else
    {
      v9 = v7[1] + 20 * v7[4];
    }

    v10 = (v9 + 4);
  }

  else if (v8)
  {
    v10 = (*(*v8 + 32))(v8);
  }

  else
  {
    v10 = (v7[1] + 20 * v7[4]);
  }

  return *v10 != *(a1 + 40);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Value(uint64_t a1)
{
  if (*(a1 + 76) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 20 * v3[4];
  }

  (*(**v3 + 80))(*v3, 15, 15);
  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 20 * v3[4];
  }

  v4 = *(**v3 + 32);

  return v4();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Next(uint64_t result)
{
  if (*(result + 76) == 1)
  {
    *(result + 76) = 0;
  }

  else
  {
    v1 = *(result + 24);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D02AF8;
  v8 = a4[5];
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = a4[6];
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B51A5120(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFstImplBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CacheBaseImpl(a1, a4);
  *v7 = &unk_1F2D02B88;
  fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitBase(v7, a2, a3);
  return a1;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(***(a1 + 144) + 48))(**(a1 + 144)) & 1) != 0 && (*(***(a1 + 144) + 24))(**(a1 + 144), 1) != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v18, __p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ComposeFst: 1st argument requires matching but cannot.", 54);
  }

  else if (((*(***(a1 + 152) + 48))(**(a1 + 152)) & 1) != 0 && (*(***(a1 + 152) + 24))(**(a1 + 152), 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v18, __p);
    v3 = fst::cerr(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ComposeFst: 2nd argument requires matching but cannot.", 54);
  }

  else
  {
    v4 = (*(***(a1 + 144) + 24))(**(a1 + 144), 0);
    v5 = (*(***(a1 + 152) + 24))(**(a1 + 152), 0);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 1;
    }

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v4 == 1;
    if (v4 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8 || v5 == 0)
    {
      goto LABEL_36;
    }

    v9 = 1;
    if ((*(***(a1 + 144) + 24))(**(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(***(a1 + 152) + 24))(**(a1 + 152), 1))
    {
      v9 = 0;
      goto LABEL_36;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v18, __p);
    v12 = fst::cerr(v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: 1st argument cannot match on output labels ", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  fst::LogMessage::~LogMessage(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 3;
LABEL_36:
  *(a1 + 184) = v9;
}

void sub_1B51A555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, uint64_t a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v16 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v16);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == v3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void *fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, float32x2_t *a3@<X8>)
{
  v5 = (*(*(a1 + 176) + 80) + 12 * a2);
  v6 = *v5;
  result = (*(***(a1 + 144) + 96))(&v13);
  v17 = v13.f32[1];
  v12.i32[0] = v13.i32[0];
  v16 = INFINITY;
  v15 = INFINITY;
  if (v13.f32[0] == INFINITY && v17 == v15)
  {
    *a3 = v13;
  }

  else
  {
    v8 = v5[1];
    result = (*(***(a1 + 152) + 96))(&v12);
    v10 = v12;
    LODWORD(v16) = HIDWORD(*&v10);
    v9.i32[0] = v10;
    v17 = v12.f32[0];
    v15 = INFINITY;
    v14 = INFINITY;
    if (v12.f32[0] == INFINITY && v16 == v14)
    {
      v9.i32[1] = v12.i32[1];
    }

    else
    {
      v11 = *(a1 + 136);
      LOBYTE(v17) = *(v5 + 8);
      result = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v11, v6, v8, &v17);
      v9 = vadd_f32(v13, v12);
    }

    *a3 = v9;
  }

  return result;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFC7C8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D02450;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 112) = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  return a1;
}

void sub_1B51A5C60(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "compose");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v6 = (*(*a3 + 112))(a3);
  v7 = (*(*a2 + 120))(a2);
  if ((fst::CompatSymbols(v6, v7, 1) & 1) == 0)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "ERROR");
    }

    v8 = fst::LogMessage::LogMessage(&v14, &__str);
    v9 = fst::cerr(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ComposeFst: output symbol table of 1st argument ", 48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "does not match input symbol table of 2nd argument", 49);
    fst::LogMessage::~LogMessage(&v14);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v11);
  v12 = (*(*a3 + 120))(a3);
  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v12);
}

void sub_1B51A5E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(**a4 + 32))(*a4, a2, a3);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t *fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Matcher(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 144))(a2, a3);
  *a1 = v4;
  if (!v4)
  {
    operator new();
  }

  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D02AF8;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40AD892F49);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

uint64_t fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~SequenceComposeFilter(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_1B51A62F4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void *fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(void *result, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = result;
  if (result[3] != __PAIR64__(a3, a2) || *a4 != *(result + 32))
  {
    *(result + 6) = a2;
    *(result + 7) = a3;
    *(result + 32) = *a4;
    v6 = (*(*result[2] + 40))(result[2], a2);
    v7 = (*(*v5[2] + 56))(v5[2], a2);
    result = (*(*v5[2] + 32))(&v9);
    v12 = *(&v9 + 1);
    v13 = v9;
    v11 = 2139095040;
    v10 = INFINITY;
    v8 = *&v9 == INFINITY && v12 == v10;
    *(v5 + 33) = v6 == v7 && v8;
    *(v5 + 34) = v7 == 0;
  }

  return result;
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144), a2);
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B51A67D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  (*(**a7 + 56))(*a7, a4, a3);
  v18[0] = v8 - 1;
  v18[1] = v8 << 31 >> 31;
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v18, v8);
  v17 = 0;
  (*(*a5 + 136))(a5, a6, v15);
  while (1)
  {
    if (!v15[0])
    {
      if (v17 >= v15[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = v15[1] + 20 * v17;
      goto LABEL_8;
    }

    if ((*(*v15[0] + 24))(v15[0]))
    {
      break;
    }

    if (!v15[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v15[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v14, v8);
    if (v15[0])
    {
      (*(*v15[0] + 40))(v15[0]);
    }

    else
    {
      ++v17;
    }
  }

  if (v15[0])
  {
    (*(*v15[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v16)
  {
    --*v16;
  }

LABEL_15:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B51A6A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = (*(**a3 + 80))();
        v13 = *v12;
        v30[0] = *v12;
        v30[1] = *(v12 + 8);
        v31 = *(v12 + 16);
        v14 = *a4;
        v28[0] = *a4;
        v28[1] = *(a4 + 8);
        v29 = *(a4 + 16);
        if (a5)
        {
          v15 = *(a1 + 136);
          if (v14 < 0xFFFFFFFF00000000)
          {
            if (v13 == -1)
            {
              v17 = v15[32];
              if (v15[32])
              {
                v18 = -1;
              }

              else
              {
                v18 = 0;
              }

              v27 = v18;
              if (v17)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v21 = HIDWORD(v14);
              if (HIDWORD(v14))
              {
                v22 = 0;
              }

              else
              {
                v22 = -1;
              }

              v27 = v22;
              if (!v21)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_28;
          }

          if ((v15[33] & 1) == 0)
          {
            v27 = v15[34] ^ 1;
LABEL_28:
            v23 = v28;
            v24 = v30;
            goto LABEL_34;
          }
        }

        else
        {
          v16 = *(a1 + 136);
          if (v13 < 0xFFFFFFFF00000000)
          {
            if (v14 == -1)
            {
              v19 = v16[32];
              if (v16[32])
              {
                v20 = -1;
              }

              else
              {
                v20 = 0;
              }

              v27 = v20;
              if (v19)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v25 = HIDWORD(v13);
              if (v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = -1;
              }

              v27 = v26;
              if (!v25)
              {
                goto LABEL_35;
              }
            }

LABEL_33:
            v23 = v30;
            v24 = v28;
LABEL_34:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v23, v24, &v27);
            goto LABEL_35;
          }

          if ((v16[33] & 1) == 0)
          {
            v27 = v16[34] ^ 1;
            goto LABEL_33;
          }
        }

LABEL_35:
        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, char *a5)
{
  v5 = a2;
  v7 = a4[2].i32[0];
  LODWORD(v17) = a3[2].i32[0];
  HIDWORD(v17) = v7;
  v18 = *a5;
  v8 = a3->i32[0];
  v9 = a4->i32[1];
  v10 = vadd_f32(a3[1], a4[1]);
  Id = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(a1 + 176), &v17, 1);
  v14[0] = v8;
  v14[1] = v9;
  v15 = v10;
  v16 = Id;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), v5);
  return std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100]((MutableState + 24), v14);
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D02BE8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*(a3 + 144), 0);
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 92))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 68) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(float32x2_t *a1, uint64_t a2)
{
  a1[6].i8[0] = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 4;
  if (a1[3].i32[1])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a1[3].i32[1])
  {
    v2 = 5;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, *&a1[v2], *&a1[v3]);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

float32x2_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(float32x2_t *result)
{
  if (result[6].i8[0] == 1)
  {
    result[6].i8[0] = 0;
  }

  else
  {
    if (result[3].i32[1])
    {
      v2 = result[4];
      v1 = result[5];
    }

    else
    {
      v1 = result[4];
      v2 = result[5];
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D02BE8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D02BE8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*(a2 + 32), a3);
}

void sub_1B51A750C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3, void *a4)
{
  result = (*(**a3 + 64))(*a3, a2);
  if (result)
  {
    v8 = a1[3].i32[1] == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = a1[3].i32[1] == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = a1[3].u32[0];
      v11 = a1[3].i32[1];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = v8;
      }

      v18[0] = *v13;
      v18[1] = v13[1];
      v19 = v13[2].i32[0];
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16[0] = *v14;
      v16[1] = v14[1];
      v17 = v14[2].i32[0];
      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, v18, v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a1[2];
  v5 = *(*&v4 + 136);
  v6 = a3->i32[1];
  if (v6 == -1)
  {
    if ((v5[33] & 1) == 0)
    {
      LOBYTE(v5) = (v5[34] & 1) == 0;
      goto LABEL_9;
    }
  }

  else if (a4->i32[0] == -1)
  {
    LODWORD(v5) = v5[32];
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else if (v6)
  {
    LOBYTE(v5) = 0;
LABEL_9:
    v8 = a4[2].i32[0];
    LODWORD(v11) = a3[2].i32[0];
    HIDWORD(v11) = v8;
    v12 = v5;
    v9 = a4->i32[1];
    a1[9].i32[0] = a3->i32[0];
    a1[9].i32[1] = v9;
    a1[10] = vadd_f32(a3[1], a4[1]);
    v7 = 1;
    a1[11].i32[0] = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*&v4 + 176), &v11, 1);
    return v7;
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D02C80;
  v8 = a4[5];
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = a4[6];
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  v15 = fst::ComposeProperties(v13, v14);
  if (*(*(a1 + 136) + 40) == 3)
  {
    v16 = v15 | 4;
  }

  else
  {
    v16 = v15;
  }

  *(a1 + 8) = v16 & 0x3FFFFFFF0004 | *(a1 + 8) & 0xFFFFC0000000FFFFLL;
  return a1;
}

void sub_1B51A7CCC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((v4 = (*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4, *(*(a1 + 136) + 40) != 3) ? (v5 = v4 == 0) : (v5 = 0), !v5))
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, uint64_t a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v16 = *(v4 + 8);
  fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v16);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == v3 && *(*(a1 + 136) + 40) != 3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void *fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, float32x2_t *a3@<X8>)
{
  v5 = *(*(a1 + 176) + 80) + 12 * a2;
  v6 = *v5;
  result = (*(***(a1 + 144) + 96))(&v13);
  v17 = v13.f32[1];
  v12.i32[0] = v13.i32[0];
  v16 = INFINITY;
  v15 = INFINITY;
  if (v13.f32[0] == INFINITY && v17 == v15)
  {
    *a3 = v13;
  }

  else
  {
    v8 = *(v5 + 4);
    result = (*(***(a1 + 152) + 96))(&v12);
    v10 = v12;
    LODWORD(v16) = HIDWORD(*&v10);
    v9.i32[0] = v10;
    v17 = v12.f32[0];
    v15 = INFINITY;
    v14 = INFINITY;
    if (v12.f32[0] == INFINITY && v16 == v14)
    {
      v9.i32[1] = v12.i32[1];
    }

    else
    {
      v11 = *(a1 + 136);
      LOBYTE(v17) = *(v5 + 8);
      result = fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v11, v6, v8, &v17);
      v9 = vadd_f32(v13, v12);
    }

    *a3 = v9;
  }

  return result;
}

void fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AltSequenceComposeFilter(a1, a2, a3, a4, a5);
  *(a1 + 40) = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(*v6, *(a1 + 8));
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*a1, 0);
}

void sub_1B51A84CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v19);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AltSequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(**a5 + 32))(*a5, a2, a3);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::LookAheadCheck(_BYTE *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v2 = (*(**a1 + 48))() & 0x30;
    a1[8] = v2 != 0;
    if (!v2)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v3 = fst::LogMessage::LogMessage(&v8, __p);
      v4 = fst::cerr(v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "LookAheadMatcher: No look-ahead matcher defined", 47);
      fst::LogMessage::~LogMessage(&v8);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1[8];
}

void sub_1B51A87BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x1020C405F07FB98);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x1020C405F07FB98);
  }

  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D02C80;
  v2 = a1[17];
  if (v2)
  {
    fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2 + 48);
    v3 = fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40FF020D0FLL);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B51A8A78(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144), a2);
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B51A8DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  (*(**a7 + 56))(*a7, a4, a3);
  v18[0] = v8 - 1;
  v18[1] = v8 << 31 >> 31;
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v18, v8);
  v17 = 0;
  (*(*a5 + 136))(a5, a6, v15);
  while (1)
  {
    if (!v15[0])
    {
      if (v17 >= v15[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = v15[1] + 20 * v17;
      goto LABEL_8;
    }

    if ((*(*v15[0] + 24))(v15[0]))
    {
      break;
    }

    if (!v15[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v15[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v14, v8);
    if (v15[0])
    {
      (*(*v15[0] + 40))(v15[0]);
    }

    else
    {
      ++v17;
    }
  }

  if (v15[0])
  {
    (*(*v15[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v16)
  {
    --*v16;
  }

LABEL_15:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B51A8FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a9);
  }

  _Unwind_Resume(a1);
}

void *fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(void *result, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v5 = result;
  if (result[3] != __PAIR64__(a3, a2) || *a4 != *(result + 32))
  {
    *(result + 6) = a2;
    *(result + 7) = a3;
    *(result + 32) = *a4;
    v6 = (*(*result[2] + 40))(result[2], a3);
    v7 = (*(*v5[2] + 48))(v5[2], a3);
    result = (*(*v5[2] + 32))(&v9);
    v12 = *(&v9 + 1);
    v13 = v9;
    v11 = 2139095040;
    v10 = INFINITY;
    v8 = *&v9 == INFINITY && v12 == v10;
    *(v5 + 33) = v6 == v7 && v8;
    *(v5 + 34) = v7 == 0;
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = (*(**a3 + 80))();
        v18[0] = *v12;
        v18[1] = *(v12 + 8);
        v19 = *(v12 + 16);
        v16[0] = *a4;
        v16[1] = *(a4 + 8);
        v17 = *(a4 + 16);
        if (a5)
        {
          v15 = fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), v16, v18);
          if (v15 != -1)
          {
            v13 = v16;
            v14 = v18;
LABEL_10:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v13, v14, &v15);
          }
        }

        else
        {
          v15 = fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), v18, v16);
          if (v15 != -1)
          {
            v13 = v18;
            v14 = v16;
            goto LABEL_10;
          }
        }

        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(_BYTE *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2;
  a1[76] = 0;
  if (*a3 == -1)
  {
    if ((a1[33] & 1) == 0)
    {
      v5 = (a1[34] & 1) == 0;
      goto LABEL_7;
    }

    return 255;
  }

  v4 = a2[1];
  if (v4 == -1)
  {
    v6 = a1[32];
    v7 = v6 == 1;
    if (v6 == 1)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;
    if (!v7)
    {
      goto LABEL_14;
    }

    return 255;
  }

  if (!v4)
  {
    return 255;
  }

  v5 = 0;
LABEL_7:
  v10 = v5;
LABEL_14:
  if (*(a1 + 10) != 1)
  {
    a2 = a3;
    a3 = v3;
  }

  return fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(a1, a2, a3, &v10);
}

uint64_t fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = *(a1 + 72);
  if (*(a2 + 4 * (*(a1 + 40) == 1)))
  {
    if ((v7 & 0x100) == 0)
    {
      return *a4;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    return *a4;
  }

  *(a1 + 76) = 1;
  v8 = a1 + 48;
  v9 = **(a1 + 48 + 8 * (*(a1 + 64) != 1));
  (*(*v9 + 56))(v9, *(a2 + 16));
  v10 = *(a1 + 64);
  v11 = v10 == 1;
  v12 = v10 != 1;
  v13 = v11;
  v14 = *(v8 + 8 * v12);
  v15 = **(v8 + 8 * v13);
  v16 = (*(*v15 + 32))(v15);
  v17 = *(a3 + 16);
  if (!fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::LookAheadCheck(v14) || (*(**v14 + 128))(*v14, v16, v17))
  {
    return *a4;
  }

  return 255;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D02CF8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*(a3 + 144), 0);
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 92))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 68) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(float32x2_t *a1, uint64_t a2)
{
  a1[6].i8[0] = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 4;
  if (a1[3].i32[1])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a1[3].i32[1])
  {
    v2 = 5;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, *&a1[v2], *&a1[v3]);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

float32x2_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(float32x2_t *result)
{
  if (result[6].i8[0] == 1)
  {
    result[6].i8[0] = 0;
  }

  else
  {
    if (result[3].i32[1])
    {
      v2 = result[4];
      v1 = result[5];
    }

    else
    {
      v1 = result[4];
      v2 = result[5];
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D02CF8;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x1020C405F07FB98);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x1020C405F07FB98);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D02CF8;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*(a2 + 32), a3);
}

void sub_1B51A9D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3, void *a4)
{
  result = (*(**a3 + 64))(*a3, a2);
  if (result)
  {
    v8 = a1[3].i32[1] == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = a1[3].i32[1] == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = a1[3].u32[0];
      v11 = a1[3].i32[1];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = v8;
      }

      v18[0] = *v13;
      v18[1] = v13[1];
      v19 = v13[2].i32[0];
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16[0] = *v14;
      v16[1] = v14[1];
      v17 = v14[2].i32[0];
      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, v18, v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v7 = fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(*&a1[2] + 136), a3, a4);
  v8 = v7;
  if (v7 != -1)
  {
    v9 = a4[2].i32[0];
    LODWORD(v12) = a3[2].i32[0];
    HIDWORD(v12) = v9;
    v13 = v7;
    v10 = a4->i32[1];
    a1[9].i32[0] = a3->i32[0];
    a1[9].i32[1] = v10;
    a1[10] = vadd_f32(a3[1], a4[1]);
    a1[11].i32[0] = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*&a1[2] + 176), &v12, 1);
  }

  return ~v8 != 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D02D90;
  v8 = a4[5];
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v10 = a4[6];
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(***(a1 + 144) + 40))(**(a1 + 144), v11);
  v14 = (*(***(a1 + 152) + 40))(**(a1 + 152), v12);
  v15 = fst::ComposeProperties(v13, v14);
  if (*(*(a1 + 136) + 40) == 3)
  {
    v16 = v15 | 4;
  }

  else
  {
    v16 = v15;
  }

  *(a1 + 8) = v16 & 0x3FFFFFFF0004 | *(a1 + 8) & 0xFFFFC0000000FFFFLL;
  return a1;
}

void sub_1B51AA4BC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(***(a1 + 144) + 40))(**(a1 + 144), 0) & 4) != 0 || ((v4 = (*(***(a1 + 152) + 40))(**(a1 + 152), 0) & 4, *(*(a1 + 136) + 40) != 3) ? (v5 = v4 == 0) : (v5 = 0), !v5))
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, uint64_t a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v16 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v16);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 0) == a3 && (*(***(a1 + 152) + 24))(**(a1 + 152), 0) == v3 && *(*(a1 + 136) + 40) != 3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void *fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal@<X0>(uint64_t a1@<X0>, int a2@<W1>, float32x2_t *a3@<X8>)
{
  v5 = (*(*(a1 + 176) + 80) + 12 * a2);
  v6 = *v5;
  result = (*(***(a1 + 144) + 96))(&v13);
  v17 = v13.f32[1];
  v12.i32[0] = v13.i32[0];
  v16 = INFINITY;
  v15 = INFINITY;
  if (v13.f32[0] == INFINITY && v17 == v15)
  {
    *a3 = v13;
  }

  else
  {
    v8 = v5[1];
    result = (*(***(a1 + 152) + 96))(&v12);
    v10 = v12;
    LODWORD(v16) = HIDWORD(*&v10);
    v9.i32[0] = v10;
    v17 = v12.f32[0];
    v15 = INFINITY;
    v14 = INFINITY;
    if (v12.f32[0] == INFINITY && v16 == v14)
    {
      v9.i32[1] = v12.i32[1];
    }

    else
    {
      v11 = *(a1 + 136);
      LOBYTE(v17) = *(v5 + 8);
      result = fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetState(v11, v6, v8, &v17);
      v9 = vadd_f32(v13, v12);
    }

    *a3 = v9;
  }

  return result;
}

void fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SequenceComposeFilter(a1, a2, a3, a4, a5);
  *(a1 + 40) = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(*v6, *(a1 + 8));
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*a1, 0);
}

void sub_1B51AACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v19);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(**a4 + 32))(*a4, a2, a3);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D02D90;
  v2 = a1[17];
  if (v2)
  {
    fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2 + 48);
    v3 = fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40FF020D0FLL);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B51AAFF0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(***(a1 + 144) + 104))(**(a1 + 144), a2);
  v8 = (*(***(a1 + 152) + 104))(**(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B51AB340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  (*(**a7 + 56))(*a7, a4, a3);
  v18[0] = v8 - 1;
  v18[1] = v8 << 31 >> 31;
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v18, v8);
  v17 = 0;
  (*(*a5 + 136))(a5, a6, v15);
  while (1)
  {
    if (!v15[0])
    {
      if (v17 >= v15[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = v15[1] + 20 * v17;
      goto LABEL_8;
    }

    if ((*(*v15[0] + 24))(v15[0]))
    {
      break;
    }

    if (!v15[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v15[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, a7, v14, v8);
    if (v15[0])
    {
      (*(*v15[0] + 40))(v15[0]);
    }

    else
    {
      ++v17;
    }
  }

  if (v15[0])
  {
    (*(*v15[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v16)
  {
    --*v16;
  }

LABEL_15:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B51AB578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::GetLinearSymbolSequence<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a9);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = (*(**a3 + 64))(*a3, *(a4 + v10));
  if (result)
  {
    result = (*(**a3 + 72))();
    if ((result & 1) == 0)
    {
      do
      {
        v12 = (*(**a3 + 80))();
        v18[0] = *v12;
        v18[1] = *(v12 + 8);
        v19 = *(v12 + 16);
        v16[0] = *a4;
        v16[1] = *(a4 + 8);
        v17 = *(a4 + 16);
        if (a5)
        {
          v15 = fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), v16, v18);
          if (v15 != -1)
          {
            v13 = v16;
            v14 = v18;
LABEL_10:
            fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v13, v14, &v15);
          }
        }

        else
        {
          v15 = fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), v18, v16);
          if (v15 != -1)
          {
            v13 = v18;
            v14 = v16;
            goto LABEL_10;
          }
        }

        (*(**a3 + 88))();
        result = (*(**a3 + 72))();
      }

      while (!result);
    }
  }

  return result;
}

uint64_t fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2;
  *(a1 + 76) = 0;
  v4 = a2[1];
  if (v4 == -1)
  {
    if (*(a1 + 33))
    {
      return 255;
    }

    v9 = *(a1 + 34) ^ 1;
  }

  else if (*a3 == -1)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 32))
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;
    if (v6)
    {
      return 255;
    }
  }

  else
  {
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    v9 = v5;
    if (!v4)
    {
      return 255;
    }
  }

  if (*(a1 + 40) != 1)
  {
    a2 = a3;
    a3 = v3;
  }

  return fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(a1, a2, a3, &v9);
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D02E08;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*(a3 + 144), 0);
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(***(a1 + 32) + 24))(**(a1 + 32));
  if (result != 3)
  {
    result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != 4 || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
      {
        if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) == 4 && (*(***(a1 + 40) + 24))(**(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28) || (result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2), result != 4))
        {
          if ((*(***(a1 + 32) + 24))(**(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(***(a1 + 40) + 24))(**(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 92))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = result;
    *(result + 24) = a2;
    v3 = (*(*(*(result + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    (*(***(result + 32) + 56))(**(result + 32), *v3);
    result = (*(***(v2 + 40) + 56))(**(v2 + 40), v4);
    *(v2 + 68) = *(v2 + 24);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(float32x2_t *a1, uint64_t a2)
{
  a1[6].i8[0] = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 4;
  if (a1[3].i32[1])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a1[3].i32[1])
  {
    v2 = 5;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a2, *&a1[v2], *&a1[v3]);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || !(*(***(a1 + 32) + 72))(**(a1 + 32)))
  {
    return 0;
  }

  v2 = *(***(a1 + 40) + 72);

  return v2();
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 72;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

float32x2_t *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(float32x2_t *result)
{
  if (result[6].i8[0] == 1)
  {
    result[6].i8[0] = 0;
  }

  else
  {
    if (result[3].i32[1])
    {
      v2 = result[4];
      v1 = result[5];
    }

    else
    {
      v1 = result[4];
      v2 = result[5];
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D02E08;
  v2 = a1[4];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x1020C405F07FB98);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    MEMORY[0x1B8C85350](v3, 0x1020C405F07FB98);
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D02E08;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Copy(*(a2 + 32), a3);
}

void sub_1B51AC00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3, void *a4)
{
  result = (*(**a3 + 64))(*a3, a2);
  if (result)
  {
    v8 = a1[3].i32[1] == 0;
    v9 = (*(**a3 + 80))();
    (*(**a4 + 64))(*a4, *(v9 + 4 * v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(float32x2_t *a1, uint64_t a2, void *a3)
{
  while (!(*(**a2 + 72))() || ((*(**a3 + 72))() & 1) == 0)
  {
    if ((*(**a3 + 72))())
    {
      (*(**a2 + 88))();
      if (((*(**a2 + 72))() & 1) == 0)
      {
        do
        {
          v6 = a1[3].i32[1] == 0;
          v7 = (*(**a2 + 80))();
          if ((*(**a3 + 64))(*a3, *(v7 + 4 * v6)))
          {
            break;
          }

          (*(**a2 + 88))();
        }

        while (!(*(**a2 + 72))());
      }
    }

    while (((*(**a3 + 72))() & 1) == 0)
    {
      v8 = (*(**a2 + 80))();
      v9 = (*(**a3 + 80))();
      (*(**a3 + 88))();
      v10 = a1[3].u32[0];
      v11 = a1[3].i32[1];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = v9;
      }

      else
      {
        v13 = v8;
      }

      v18[0] = *v13;
      v18[1] = v13[1];
      v19 = v13[2].i32[0];
      if (v12)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      v16[0] = *v14;
      v16[1] = v14[1];
      v17 = v14[2].i32[0];
      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, v10, v18, v16))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v7 = fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(*&a1[2] + 136), a3, a4);
  v8 = v7;
  if (v7 != -1)
  {
    v9 = a4[2].i32[0];
    LODWORD(v12) = a3[2].i32[0];
    HIDWORD(v12) = v9;
    v13 = v7;
    v10 = a4->i32[1];
    a1[9].i32[0] = a3->i32[0];
    a1[9].i32[1] = v10;
    a1[10] = vadd_f32(a3[1], a4[1]);
    a1[11].i32[0] = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(*(*&a1[2] + 176), &v12, 1);
  }

  return ~v8 != 0;
}

void *fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ComposeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D02908;
  a1[1] = 0;
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = a1[1];
    if (v6)
    {
      v7 = v6[14] - 1;
      v6[14] = v7;
      if (!v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    a1[1] = v5;
  }

  else
  {
    fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

_DWORD *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    ++*(a2 + 56);
  }

  result = *(a1 + 8);
  if (result)
  {
    v6 = result[14] - 1;
    result[14] = v6;
    if (!v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) = a2;
  return result;
}

BOOL fst::CacheStateIterator<fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(v19 + 32) - v7) >> 2);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 20 * v20 + 16);
      do
      {
        v14 = *v12;
        v12 += 5;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 52);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void fst::ShortestPath<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    if (v4 == 1 && (*(a4 + 35) & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      *v11 = 0;
      LODWORD(__p) = 0;
      if (fst::SingleShortestPath<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a3, a4, &__p, &v9))
      {
        fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, a2, &v9, __p);
      }

      else
      {
        (*(*a2 + 192))(a2, 4, 4);
      }

      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }
    }

    else
    {
      if ((*(a4 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a3, a4), *(a3 + 8) - *a3 != 8) || fst::LatticeWeightTpl<float>::Member(*a3))
      {
        fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::VectorFst(&v13);
      }

      v8 = *(*a2 + 192);

      v8(a2, 4, 4);
    }
  }
}

void sub_1B51ACC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~ImplToFst(&a11);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~ImplToFst((v20 - 64));
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v4 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v5 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v5 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v5 & 0x800000000) == 0)
    {
      if ((v5 & 0x200000000) == 0)
      {
        v7 = 0;
        v6[0] = v4;
        v6[1] = 0;
        v6[2] = 0;
        v6[3] = &v7;
        fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a2, v6, 0);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B51AD4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::NaturalLess<fst::LatticeWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v12 = *(a3 + 8) - *a3;
  if (v12)
  {
    v13 = v12 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(*a3, 4 * v13);
  }

  v30 = 0;
  (*(*a1 + 128))(a1, &v28);
  while (1)
  {
    result = v28;
    if (!v28)
    {
      if (v30 >= v29)
      {
        return result;
      }

LABEL_11:
      v16 = v30;
      goto LABEL_12;
    }

    v15 = (*(*v28 + 16))(v28);
    result = v28;
    if (v15)
    {
      break;
    }

    if (!v28)
    {
      goto LABEL_11;
    }

    v16 = (*(*v28 + 24))();
LABEL_12:
    v27 = 0;
    (*(*a1 + 136))(a1, v16, v25);
    while (1)
    {
      if (!v25[0])
      {
        if (v27 >= v25[2])
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if ((*(*v25[0] + 24))(v25[0]))
      {
        break;
      }

      if (v25[0])
      {
        v18 = (*(*v25[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v18 = v25[1] + 20 * v27;
LABEL_19:
      v19 = *(*a2 + 4 * v16);
      if (v19 == *(*a2 + 4 * *(v18 + 16)))
      {
        v20 = *a3;
        if (!a4 || (v21 = *(v18 + 8), v22 = *(v18 + 12), (v21 + v22) < 0.0) || v21 < 0.0 && (v21 + v22) <= 0.0)
        {
          v23 = 1;
          goto LABEL_25;
        }

        if ((v20[v19] | 2) == 2)
        {
          v34 = *(v18 + 8);
          v33 = v22;
          v32 = 2139095040;
          v31 = INFINITY;
          if (v21 == INFINITY && v33 == v31 || (v34 = v21, v33 = v22, v32 = 0, v31 = 0.0, v21 == 0.0) && v33 == v31)
          {
            v23 = 2;
          }

          else
          {
            v23 = 3;
          }

LABEL_25:
          v20[v19] = v23;
        }

        *a5 = 0;
      }

      v17.n128_u32[0] = *(v18 + 8);
      v24 = *(v18 + 12);
      v34 = v17.n128_f32[0];
      v33 = v24;
      v32 = 2139095040;
      v31 = INFINITY;
      if (v17.n128_f32[0] != INFINITY || v33 != v31)
      {
        v34 = v17.n128_f32[0];
        v33 = v24;
        v32 = 0;
        v31 = 0.0;
        if (v17.n128_f32[0] != 0.0 || (v17.n128_f32[0] = v33, v33 != v31))
        {
          *a6 = 0;
        }
      }

      if (v25[0])
      {
        (*(*v25[0] + 40))(v25[0], v17);
      }

      else
      {
        ++v27;
      }
    }

    if (v25[0])
    {
      (*(*v25[0] + 8))();
      goto LABEL_46;
    }

LABEL_44:
    if (v26)
    {
      --*v26;
    }

LABEL_46:
    if (v28)
    {
      (*(*v28 + 32))(v28);
    }

    else
    {
      ++v30;
    }
  }

  if (v28)
  {
    return (*(*v28 + 8))();
  }

  return result;
}

void sub_1B51ADA40(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v2[0] = a1 + 24;
  v2[1] = &v3;
  fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a2, v2, 0);
}

void sub_1B51ADC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void *fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D02F50;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);
  return a1;
}

void fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D02F50;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  v5 = (a1 + 88);
  v8 = *(a1 + 64);
  v6 = (a1 + 64);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 16), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
    LODWORD(v9) = *(a1 + 88);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 88);
    *(*(a1 + 16) + 4 * *(*(a1 + 40) + 4 * v9)) = v9;
  }

  *(a1 + 88) = v9 + 1;

  return fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::Insert(uint64_t **a1, int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a1[8];
    v4 = **a1;
    while (1)
    {
      v5 = a3 - 1;
      v6 = (a3 - 1) >> 1;
      v7 = (v4 + 8 * *(v3 + v6));
      v8 = (v4 + 8 * *a2);
      v9 = *v7 + v7[1];
      v10 = *v8 + v8[1];
      if (v9 < v10)
      {
        break;
      }

      if (*v7 < *v8 && v9 <= v10)
      {
        break;
      }

      v12 = a1[5];
      v13 = *(v12 + a3);
      v14 = *(v12 + v6);
      *(v12 + a3) = v14;
      v15 = a1[2];
      *(v15 + v14) = a3;
      *(v12 + v6) = v13;
      *(v15 + v13) = v6;
      LODWORD(v12) = *(v3 + a3);
      *(v3 + a3) = *(v3 + v6);
      *(v3 + v6) = v12;
      a3 = v5 >> 1;
      if (v5 <= 1)
      {
        return *(a1[5] + v6);
      }
    }
  }

  v6 = a3;
  return *(a1[5] + v6);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::Pop(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *v1;
  v3 = *(a1 + 88) - 1;
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 16);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 88);
  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::Heapify(a1, 0);
  return v2;
}

uint64_t **fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightTpl<float>>>,false>::Heapify(uint64_t **result, uint64_t a2)
{
  while (1)
  {
    v2 = (2 * a2) | 1;
    v3 = *(result + 22);
    v4 = a2;
    if (v2 < v3)
    {
      v5 = result[8];
      v6 = **result;
      v7 = (v6 + 8 * *(v5 + v2));
      v8 = (v6 + 8 * *(v5 + a2));
      v9 = *v7 + v7[1];
      v10 = *v8 + v8[1];
      if (v9 < v10 || (*v7 < *v8 ? (v11 = v9 <= v10) : (v11 = 0), v4 = a2, v11))
      {
        v4 = (2 * a2) | 1u;
      }
    }

    v12 = (2 * a2 + 2);
    if (v12 >= v3 || (v13 = result[8], v14 = **result, v15 = (v14 + 8 * *(v13 + v12)), v16 = (v14 + 8 * *(v13 + v4)), v17 = *v15 + v15[1], v18 = *v16 + v16[1], v17 >= v18) && (v17 > v18 || *v15 >= *v16))
    {
      v12 = v4;
    }

    if (v12 == a2)
    {
      break;
    }

    v19 = result[5];
    v20 = *(v19 + a2);
    v21 = *(v19 + v12);
    *(v19 + a2) = v21;
    v22 = result[2];
    *(v22 + v21) = a2;
    *(v19 + v12) = v20;
    *(v22 + v20) = v12;
    v23 = result[8];
    LODWORD(v20) = *(v23 + a2);
    *(v23 + a2) = *(v23 + v12);
    *(v23 + v12) = v20;
    a2 = v12;
  }

  return result;
}

uint64_t fst::SingleShortestPath<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t **a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  if ((*(*a1 + 24))(a1) == -1)
  {
    return 1;
  }

  memset(v70, 0, sizeof(v70));
  v10 = *a3;
  v11 = *(a3 + 3);
  if (v11 == -1)
  {
    v11 = (*(*a1 + 24))(a1);
  }

  a2[1] = *a2;
  (*(**(v10 + 16) + 56))(*(v10 + 16));
  if (a3[3] != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(&v65, &__p);
    v17 = fst::cerr(v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "SingleShortestPath: for nshortest > 1, use ShortestPath", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " instead", 8);
LABEL_15:
    fst::LogMessage::~LogMessage(&v65);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_17;
  }

  v12 = *(a3 + 10);
  LODWORD(__p) = *(a3 + 9);
  LODWORD(v65) = v12;
  v73 = INFINITY;
  v72 = INFINITY;
  if (*&__p != INFINITY || *&v65 != v72 || *(a3 + 11) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v65, &__p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "SingleShortestPath: weight and state thresholds not applicable", 62);
    goto LABEL_15;
  }

  v20 = a2[1];
  if (v11 > (v20 - *a2))
  {
    v21 = vneg_f32(0x7F0000007FLL);
    do
    {
      *&__p = v21;
      if (v20 >= a2[2])
      {
        v22 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(a2, &__p);
      }

      else
      {
        *v20 = v21;
        v22 = v20 + 1;
      }

      a2[1] = v22;
      LOBYTE(__p) = 0;
      std::vector<BOOL>::push_back(v70, &__p);
      LODWORD(__p) = -1;
      *(&__p + 1) = -1;
      std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &__p);
      v20 = a2[1];
    }

    while (v11 > (v20 - *a2));
  }

  *&__p = 0;
  if (v20 >= a2[2])
  {
    v23 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(a2, &__p);
  }

  else
  {
    *v20 = 0;
    v23 = v20 + 1;
  }

  a2[1] = v23;
  LODWORD(__p) = -1;
  *(&__p + 1) = -1;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &__p);
  (*(**(v10 + 16) + 24))(*(v10 + 16), v11);
  LOBYTE(__p) = 1;
  std::vector<BOOL>::push_back(v70, &__p);
  v24 = vneg_f32(0x7F0000007FLL);
  v25 = INFINITY;
  v26 = INFINITY;
  do
  {
    if ((*(**(v10 + 16) + 48))(*(v10 + 16)))
    {
      goto LABEL_113;
    }

    v27 = (*(**(v10 + 16) + 16))(*(v10 + 16));
    (*(**(v10 + 16) + 32))(*(v10 + 16));
    *(v70[0] + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v27);
    v28 = &(*a2)[v27];
    v29 = *v28;
    v30 = v28[1];
    (*(*a1 + 32))(&__p, a1, v27);
    v73 = *(&__p + 1);
    LODWORD(v65) = __p;
    v72 = INFINITY;
    v71 = INFINITY;
    v31.n128_u32[0] = __p;
    if (*&__p != INFINITY || (v31.n128_f32[0] = v73, v73 != v71))
    {
      (*(*a1 + 32))(&__p, a1, v27, v31);
      v32 = v29 + *&__p;
      v33 = v25 + v26;
      v34 = (v29 + *&__p) + (v30 + *(&__p + 1));
      v35 = v26;
      v36 = v25;
      if ((v25 + v26) >= v34)
      {
        if ((v25 + v26) > v34 || (v25 >= v32 ? (v37 = v25 <= v32) : (v37 = 1), v35 = v26, v36 = v25, !v37))
        {
          v35 = v30 + *(&__p + 1);
          v36 = v29 + *&__p;
        }
      }

      *&__p = v25;
      *&v65 = v26;
      v73 = v36;
      v72 = v35;
      if (v25 != v36 || *&v65 != v72)
      {
        if (v33 >= v34)
        {
          if (v33 > v34 || (v25 >= v32 ? (v38 = v25 <= v32) : (v38 = 1), !v38))
          {
            v26 = v30 + *(&__p + 1);
            v25 = v32;
          }
        }

        *a4 = v27;
      }

      v15 = 0;
      if (v26 == -INFINITY || v25 == -INFINITY)
      {
        goto LABEL_18;
      }

      if (v25 == INFINITY || v26 == INFINITY)
      {
        v15 = 0;
        if (v25 != INFINITY || v26 != INFINITY)
        {
          goto LABEL_18;
        }
      }

      if (*(a3 + 34))
      {
        v39 = 5;
        continue;
      }
    }

    v69 = 0;
    (*(*a1 + 136))(a1, v27, &__p);
    while (1)
    {
      if (!__p)
      {
        if (v69 >= v67)
        {
          v39 = 0;
          goto LABEL_109;
        }

        goto LABEL_69;
      }

      v40 = (*(*__p + 24))(__p);
      v41 = __p;
      if (v40)
      {
        break;
      }

      if (__p)
      {
        v42 = (*(*__p + 32))();
        goto LABEL_70;
      }

LABEL_69:
      v42 = *(&__p + 1) + 20 * v69;
LABEL_70:
      while (1)
      {
        v43 = a2[1];
        v44 = *(v42 + 16);
        if (v44 < v43 - *a2)
        {
          break;
        }

        *&v65 = v24;
        if (v43 >= a2[2])
        {
          v45 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(a2, &v65);
        }

        else
        {
          *v43 = v24;
          v45 = v43 + 1;
        }

        a2[1] = v45;
        LOBYTE(v65) = 0;
        std::vector<BOOL>::push_back(v70, &v65);
        LODWORD(v65) = -1;
        *(&v65 + 1) = -1;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v65);
      }

      v46 = &(*a2)[v44];
      v47 = v29 + *(v42 + 8);
      v48 = v30 + *(v42 + 12);
      v50 = *v46;
      v49 = v46[1];
      v51 = *v46 + v49;
      v52 = v47 + v48;
      if (v51 >= (v47 + v48))
      {
        if (v51 > (v47 + v48) || (v50 >= v47 ? (v54 = v50 <= v47) : (v54 = 1), v53 = *v46, !v54))
        {
          v49 = v30 + *(v42 + 12);
          v53 = v29 + *(v42 + 8);
        }
      }

      else
      {
        v53 = *v46;
      }

      *&v65 = *v46;
      v73 = v46[1];
      v72 = v53;
      v71 = v49;
      if (v50 != v53 || v73 != v71)
      {
        v56 = *v46;
        v55 = v46[1];
        v57 = *v46 + v55;
        if (v57 >= v52)
        {
          if (v57 > v52 || (v56 >= v47 ? (v58 = v56 <= v47) : (v58 = 1), !v58))
          {
            v55 = v48;
            v56 = v47;
          }
        }

        *v46 = v56;
        v46[1] = v55;
        v59 = fst::LatticeWeightTpl<float>::Member(v46);
        v41 = __p;
        if (!v59)
        {
          v39 = 1;
          if (!__p)
          {
            goto LABEL_109;
          }

LABEL_107:
          (*(*v41 + 8))(v41);
          goto LABEL_111;
        }

        if (__p)
        {
          v60 = (*(*__p + 48))(__p);
        }

        else
        {
          v60 = v69;
        }

        v61 = *(v42 + 16);
        v62 = *a5 + 16 * v61;
        *v62 = v27;
        *(v62 + 8) = v60;
        v63 = *(v10 + 16);
        v64 = *v63;
        if ((*(v70[0] + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v61))
        {
          (*(v64 + 40))(v63);
        }

        else
        {
          (*(v64 + 24))(v63);
          *(v70[0] + ((*(v42 + 16) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v42 + 16);
        }
      }

      if (__p)
      {
        (*(*__p + 40))(__p);
      }

      else
      {
        ++v69;
      }
    }

    v39 = 0;
    if (__p)
    {
      goto LABEL_107;
    }

LABEL_109:
    if (v68)
    {
      --*v68;
    }

LABEL_111:
    ;
  }

  while (!v39);
  if (v39 == 5)
  {
LABEL_113:
    v15 = 1;
    goto LABEL_18;
  }

LABEL_17:
  v15 = 0;
LABEL_18:
  if (v70[0])
  {
    operator delete(v70[0]);
  }

  return v15;
}

void sub_1B51AE9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 224))(a2);
  v8 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v8);
  v9 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = a4;
    v12 = -1;
    while (1)
    {
      v13 = (*(*a2 + 200))(a2);
      if (v10 != -1)
      {
        break;
      }

      (*(*a1 + 32))(v21, a1, a4);
      (*(*a2 + 184))(a2, v13, v21);
LABEL_15:
      v10 = v11;
      v11 = *(*a3 + 16 * v11);
      v12 = v13;
      if (v11 == -1)
      {
        goto LABEL_18;
      }
    }

    v23 = 0;
    (*(*a1 + 136))(a1, v11, v21);
    v14 = *(*a3 + 16 * v10 + 8);
    if (v21[0])
    {
      (*(*v21[0] + 64))(v21[0], v14);
      if (v21[0])
      {
        v15 = (*(*v21[0] + 32))(v21[0]);
        goto LABEL_11;
      }

      v14 = v23;
    }

    else
    {
      v23 = *(*a3 + 16 * v10 + 8);
    }

    v15 = (v21[1] + 20 * v14);
LABEL_11:
    v19[0] = *v15;
    v19[1] = v15[1];
    v20 = v12;
    (*(*a2 + 208))(a2, v13, v19);
    if (v21[0])
    {
      (*(*v21[0] + 8))(v21[0]);
    }

    else if (v22)
    {
      --*v22;
    }

    goto LABEL_15;
  }

  v13 = 0xFFFFFFFFLL;
LABEL_18:
  (*(*a2 + 176))(a2, v13);
  if ((*(*a1 + 64))(a1, 4, 0))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = fst::ShortestPathProperties(v16, 0);
  return (*(*a2 + 192))(a2, v17, 0x3FFFFFFF0007);
}

void sub_1B51AEF18(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

void *fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 20);
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, 29);
  a2[1] = *a2;
  fst::ShortestDistanceState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ShortestDistance(v6, *(a3 + 12));
  if (BYTE12(v13[1]) == 1)
  {
    a2[1] = *a2;
    v5 = vneg_f32(0x3F0000003FLL);
    std::vector<fst::LatticeWeightTpl<float>>::resize(a2, 1uLL, &v5);
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(v6);
}

void sub_1B51AF010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v43 = 0;
  if (a3)
  {
    goto LABEL_35;
  }

  LODWORD(v37) = 0;
  (*(*a1 + 128))(a1, &p_p);
  for (i = 0xFFFFFFFFLL; ; i = v11)
  {
    if (p_p)
    {
      if ((*(*p_p + 2))(p_p))
      {
        goto LABEL_25;
      }

      if (p_p)
      {
        v11 = (*(*p_p + 3))(p_p);
        goto LABEL_11;
      }
    }

    else if (v37 >= v36)
    {
LABEL_25:
      v11 = i;
      goto LABEL_27;
    }

    v11 = v37;
LABEL_11:
    (*(*a1 + 32))(&v32, a1, v11);
    LODWORD(v31) = HIDWORD(v32);
    LODWORD(__p) = v32;
    v45 = INFINITY;
    v44 = INFINITY;
    if (*&v32 != INFINITY)
    {
      break;
    }

    if (i == -1)
    {
      v12 = v11;
    }

    else
    {
      v12 = -1;
    }

    v13 = 2 * (i != -1);
    if (*&v31 == v44)
    {
      v13 = 4;
      v11 = i;
    }

    else
    {
      v11 = v12;
    }

    if ((v13 | 4) != 4)
    {
      goto LABEL_27;
    }

LABEL_21:
    if (p_p)
    {
      (*(*p_p + 4))(p_p);
    }

    else
    {
      LODWORD(v37) = v37 + 1;
    }
  }

  if (i == -1)
  {
    goto LABEL_21;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_27:
  if (p_p)
  {
    (*(*p_p + 1))(p_p);
  }

  if (v11 == -1)
  {
LABEL_35:
    v11 = (*(*a2 + 200))(a2);
    v15 = 1;
    goto LABEL_36;
  }

  (*(*a1 + 32))(&p_p, a1, v11);
  LODWORD(__p) = HIDWORD(p_p);
  LODWORD(v32) = p_p;
  LODWORD(v31) = 0;
  v45 = 0.0;
  if (*&p_p != 0.0 || (v14.n128_u32[0] = __p, *&__p != v45))
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
    p_p = &__p;
    v36 = 0;
    v37 = 0;
    v38 = &v43;
    fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, &p_p, 0);
  }

  v15 = 0;
LABEL_36:
  LODWORD(v34) = 0;
  (*(*a1 + 128))(a1, &v32, v14);
  while (2)
  {
    if (!v32)
    {
      if (v34 >= v33)
      {
        goto LABEL_80;
      }

      goto LABEL_42;
    }

    if (!(*(*v32 + 2))(v32))
    {
      if (v32)
      {
        v16 = (*(*v32 + 3))();
LABEL_43:
        v17 = v16 + v15;
        while ((*(*a2 + 160))(a2) <= v17)
        {
          (*(*a2 + 200))(a2);
        }

        if (v16 == v9)
        {
          p_p = 0;
          (*(*a2 + 184))(a2, (v16 + v15), &p_p);
        }

        (*(*a1 + 32))(&v31, a1, v16);
        LODWORD(__p) = HIDWORD(v31);
        LODWORD(p_p) = v31;
        v45 = INFINITY;
        v44 = INFINITY;
        v18 = *&v31 != INFINITY || *&__p != v44;
        if ((v15 & v18) == 1)
        {
          p_p = 0;
          v36 = v31;
          LODWORD(v37) = v16 + v15;
          (*(*a2 + 208))(a2, 0, &p_p);
        }

        v39 = 0;
        (*(*a1 + 136))(a1, v16, &p_p);
LABEL_54:
        if (p_p)
        {
          if ((*(*p_p + 3))(p_p))
          {
            if (p_p)
            {
              (*(*p_p + 1))();
              goto LABEL_75;
            }

LABEL_73:
            if (v38)
            {
              --*v38;
            }

LABEL_75:
            if (v32)
            {
              (*(*v32 + 4))(v32);
            }

            else
            {
              LODWORD(v34) = v34 + 1;
            }

            continue;
          }

          if (p_p)
          {
            v19 = (*(*p_p + 4))();
LABEL_60:
            v20 = (*(v19 + 16) + v15);
            v21 = *(v19 + 8);
            if (v20 == v11)
            {
              v22 = v15;
            }

            else
            {
              v22 = 1;
            }

            if ((v22 & 1) == 0)
            {
              (*(*a1 + 32))(&__p, a1, v11);
              v21 = vadd_f32(v21, __p);
            }

            __p = *v19;
            v41 = v21;
            LODWORD(v42) = v17;
            while (1)
            {
              v23 = (*(*a2 + 160))(a2);
              v24 = *a2;
              if (v23 > v20)
              {
                break;
              }

              (*(v24 + 200))(a2);
            }

            (*(v24 + 208))(a2, v20, &__p);
            if (p_p)
            {
              (*(*p_p + 5))(p_p);
            }

            else
            {
              ++v39;
            }

            goto LABEL_54;
          }
        }

        else if (v39 >= v37)
        {
          goto LABEL_73;
        }

        v19 = v36 + 20 * v39;
        goto LABEL_60;
      }

LABEL_42:
      v16 = v34;
      goto LABEL_43;
    }

    break;
  }

  if (v32)
  {
    (*(*v32 + 1))();
  }

LABEL_80:
  (*(*a2 + 176))(a2, v11);
  if (v11 == v9)
  {
    v25 = v15;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    (*(*a1 + 32))(&v32, a1, v9);
    p_p = v32;
    (*(*a2 + 184))(a2, v9, &p_p);
  }

  v26 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v27 = v43;
  v28 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v29 = fst::ReverseProperties(v27 | v26, v15);
  return (*(*a2 + 192))(a2, v28 | v29, 0x3FFFFFFF0007);
}

void sub_1B51AFC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<fst::LatticeWeightTpl<float>>::insert(char **a1, char *a2, double *a3)
{
  v3 = a2;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v5 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v26 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    __p = 0;
    v23 = 8 * v15;
    v24 = 8 * v15;
    v25 = 0;
    std::__split_buffer<fst::LatticeWeightTpl<float>>::emplace_back<fst::LatticeWeightTpl<float> const&>(&__p, a3);
    v3 = std::vector<fst::LatticeWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p, v3);
    if (v24 != v23)
    {
      v24 += (v23 - v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = (a2 - v6);
    if (a2 == v6)
    {
      *v6 = *a3;
      a1[1] = v6 + 8;
    }

    else
    {
      v8 = v6 - 8;
      if (v6 < 8)
      {
        v9 = a1[1];
      }

      else
      {
        *v6 = *v8;
        v9 = (v6 + 8);
      }

      a1[1] = v9;
      if (v6 != a2 + 8)
      {
        v16 = v6 - 16;
        v17 = v7 + 8;
        do
        {
          v18 = *v16;
          v16 -= 8;
          *v8 = v18;
          v8 -= 8;
          v17 += 8;
        }

        while (v17);
      }

      v19 = v9 <= a3 || a2 > a3;
      v20 = 1;
      if (v19)
      {
        v20 = 0;
      }

      *a2 = a3[v20];
    }
  }

  return v3;
}

void sub_1B51AFEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::NShortestPath<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, float *a5, int a6, int a7, float a8)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if ((a7 & 1) != 0 && (*(*a1 + 64))(a1, 0x400000000, 1))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v100, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v100, "ERROR");
      }

      v17 = fst::LogMessage::LogMessage(&v96, &v100);
      v18 = fst::cerr(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "NShortestPath: FST has a cycle and include_final_ties was set to true. This is not currently supported.", 103);
      fst::LogMessage::~LogMessage(&v96);
      if (SHIBYTE(v101) < 0)
      {
        operator delete(v100);
      }

      (*(*a2 + 192))(a2, 4, 4);
    }

    else
    {
      (*(*a2 + 224))(a2);
      v19 = (*(*a1 + 112))(a1);
      (*(*a2 + 280))(a2, v19);
      v20 = (*(*a1 + 120))(a1);
      (*(*a2 + 288))(a2, v20);
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      __p = 0;
      v87 = 0;
      v88 = 0;
      if ((*(*a1 + 24))(a1) != -1)
      {
        v23 = *a3;
        v22 = a3[1];
        if ((*(*a1 + 24))(a1) < ((v22 - v23) >> 3))
        {
          v24 = (*a3 + 8 * (*(*a1 + 24))(a1));
          LODWORD(v100) = *v24;
          LODWORD(v96) = v24[1];
          LODWORD(v82) = 2139095040;
          LODWORD(v78) = 2139095040;
          if (*&v100 != INFINITY || (v21.n128_u32[0] = v96, *&v96 != *&v78))
          {
            v21.n128_f32[0] = *a5;
            v25 = *a5 + a5[1];
            if (v25 >= 0.0)
            {
              v26 = v25 <= 0.0 && v21.n128_f32[0] < 0.0;
              v27 = v26;
              if (a6 && !v27)
              {
                v28 = (*(*a2 + 200))(a2);
                (*(*a2 + 176))(a2, v28);
                v85 = (*(*a2 + 200))(a2);
                *&v100 = 0;
                (*(*a2 + 184))(a2);
                v30 = v92;
                v29 = v93;
                if (0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 2) <= v85)
                {
                  v31 = vneg_f32(0x7F0000007FLL);
                  do
                  {
                    LODWORD(v100) = -1;
                    *(&v100 + 4) = v31;
                    if (v29 >= v94)
                    {
                      v29 = std::vector<std::pair<int,fst::LatticeWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::LatticeWeightTpl<float>>>(&v92, &v100);
                      v30 = v92;
                    }

                    else
                    {
                      *v29 = -1;
                      *(v29 + 4) = v31;
                      v29 += 12;
                    }

                    v93 = v29;
                  }

                  while (0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 2) <= v85);
                }

                v32 = (*(*a1 + 24))(a1);
                v33 = v92 + 12 * v85;
                v33[1] = 0;
                v33[2] = 0;
                *v33 = v32;
                std::vector<int>::push_back[abi:ne200100](&v89, &v85);
                v34 = *a3 + 8 * (*(*a1 + 24))(a1);
                v36 = *v34;
                v35.n128_u32[0] = *(v34 + 4);
                v38 = *a5;
                v37 = a5[1];
                v82 = 0;
                v83 = 0;
                v84 = 0;
                v40 = v89;
                v39 = v90;
                if (v89 == v90)
                {
LABEL_112:
                  fst::Connect<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
                }

                v76 = 0;
                v41 = v36 + v38;
                v42 = (v36 + v38) + (v35.n128_f32[0] + v37);
                v43 = vneg_f32(0x7F0000007FLL);
                while (1)
                {
                  *&v100 = &v92;
                  *(&v100 + 1) = a3;
                  LODWORD(v101) = -1;
                  *(&v101 + 1) = a8;
                  v44 = (v39 - v40) >> 2;
                  if (v44 >= 2)
                  {
                    v45 = *v40;
                    v46 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightTpl<float>> &,std::__wrap_iter<int *>>(v40, &v100, v44);
                    v47 = (v39 - 4);
                    if (v39 - 4 == v46)
                    {
                      *v46 = v45;
                    }

                    else
                    {
                      *v46 = *v47;
                      *v47 = v45;
                      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightTpl<float>> &,std::__wrap_iter<int *>>(v40, (v46 + 1), &v100, v46 + 1 - v40);
                    }
                  }

                  v48 = *(v90 - 1);
                  v49 = (v92 + 12 * v48);
                  v50 = *v49;
                  v35.n128_u64[0] = *(v49 + 1);
                  v77 = v35;
                  v90 -= 4;
                  if (v50 == -1)
                  {
                    v51 = 0;
                  }

                  else
                  {
                    v51 = v43;
                    if (v50 < (a3[1] - *a3) >> 3)
                    {
                      v51 = *(*a3 + 8 * v50);
                    }
                  }

                  v52 = vadd_f32(v77.n128_u64[0], v51);
                  v53 = vaddv_f32(v52);
                  v55 = v42 <= v53 && v41 < v52.f32[0];
                  if (v42 < v53 || v55 || a6 != -1 && (*(*a2 + 160))(a2) >= a6)
                  {
                    goto LABEL_111;
                  }

                  v56 = v50 + 1;
                  while (v56 >= (v87 - __p) >> 2)
                  {
                    LODWORD(v100) = 0;
                    std::vector<int>::push_back[abi:ne200100](&__p, &v100);
                  }

                  if (a7)
                  {
                    v58 = v82;
                    v57 = v83;
                    if (v56 >= (v83 - v82) >> 3)
                    {
                      do
                      {
                        *&v100 = v43;
                        if (v57 >= v84)
                        {
                          v57 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(&v82, &v100);
                          v58 = v82;
                        }

                        else
                        {
                          *v57++ = v43;
                        }

                        v83 = v57;
                      }

                      while (v56 >= (v57 - v58) >> 3);
                      v59 = *(__p + v56) + 1;
                      *(__p + v56) = v59;
                      if (v50 != -1)
                      {
LABEL_65:
                        if (v59 == a4)
                        {
                          *(v82 + v56) = v77.n128_u64[0];
                        }

                        else if (v59 > a4)
                        {
                          v63 = (v82 + 8 * v56);
                          v64 = v63[1];
                          v65 = v77.n128_f32[0] == *v63 && v77.n128_f32[1] == v64;
                          v66 = vabds_f32(v77.n128_f32[0] + v77.n128_f32[1], *v63 + v64);
                          if (!v65 && v66 > 0.00097656)
                          {
                            goto LABEL_111;
                          }
                        }

LABEL_91:
                        v103 = 0;
                        (*(*a1 + 136))(a1, v50, &v100);
                        while (2)
                        {
                          if (v100)
                          {
                            if ((*(*v100 + 24))(v100))
                            {
                              if (v100)
                              {
                                (*(*v100 + 8))();
                              }

                              else
                              {
LABEL_106:
                                if (v102)
                                {
                                  --*v102;
                                }
                              }

                              (*(*a1 + 32))(&v100, a1, v50);
                              v74 = v100;
                              LODWORD(v96) = DWORD1(v100);
                              LODWORD(v78) = 2139095040;
                              v95 = INFINITY;
                              v35.n128_u32[0] = v100;
                              if (*&v100 != INFINITY || (v35.n128_u32[0] = v96, *&v96 != v95))
                              {
                                LODWORD(v96) = (*(*a2 + 200))(a2, v35);
                                LODWORD(v100) = -1;
                                *(&v100 + 1) = v77.n128_f32[0] + *&v74;
                                *(&v100 + 2) = v77.n128_f32[1] + *(&v74 + 1);
                                std::vector<std::pair<int,fst::LatticeWeightTpl<float>>>::emplace_back<std::pair<int,fst::LatticeWeightTpl<float>>>(&v92, &v100);
                                *&v100 = 0;
                                *(&v100 + 1) = v74;
                                LODWORD(v101) = v48;
                                (*(*a2 + 208))(a2, v96, &v100);
                                std::vector<int>::push_back[abi:ne200100](&v89, &v96);
                                *&v100 = &v92;
                                *(&v100 + 1) = a3;
                                LODWORD(v101) = -1;
                                *(&v101 + 1) = a8;
                                std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightTpl<float>> &,std::__wrap_iter<int *>>(v89, v90, &v100, (v90 - v89) >> 2);
                              }

                              goto LABEL_111;
                            }

                            if (v100)
                            {
                              v68 = (*(*v100 + 32))();
LABEL_98:
                              v70 = *(v68 + 8);
                              v69 = *(v68 + 12);
                              v71 = *(v68 + 16);
                              v78 = *v68;
                              v79 = v70;
                              v80 = v69;
                              v81 = v71;
                              LODWORD(v95) = (*(*a2 + 200))(a2);
                              LODWORD(v96) = v81;
                              *(&v96 + 1) = v77.n128_f32[0] + v70;
                              *&v97 = v77.n128_f32[1] + v69;
                              v72 = v93;
                              if (v93 >= v94)
                              {
                                v73 = std::vector<std::pair<int,fst::LatticeWeightTpl<float>>>::__emplace_back_slow_path<std::pair<int,fst::LatticeWeightTpl<float>>>(&v92, &v96);
                              }

                              else
                              {
                                *v93 = v81;
                                v73 = (v72 + 12);
                                *(v72 + 1) = v77.n128_f32[0] + v70;
                                *(v72 + 2) = v77.n128_f32[1] + v69;
                              }

                              v93 = v73;
                              v81 = v48;
                              (*(*a2 + 208))(a2, LODWORD(v95), &v78);
                              std::vector<int>::push_back[abi:ne200100](&v89, &v95);
                              v96 = &v92;
                              v97 = a3;
                              v98 = -1;
                              v99 = a8;
                              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::LatticeWeightTpl<float>> &,std::__wrap_iter<int *>>(v89, v90, &v96, (v90 - v89) >> 2);
                              if (v100)
                              {
                                (*(*v100 + 40))(v100);
                              }

                              else
                              {
                                ++v103;
                              }

                              continue;
                            }
                          }

                          else if (v103 >= v101)
                          {
                            goto LABEL_106;
                          }

                          break;
                        }

                        v68 = *(&v100 + 1) + 20 * v103;
                        goto LABEL_98;
                      }
                    }

                    else
                    {
                      v59 = *(__p + v56) + 1;
                      *(__p + v56) = v59;
                      if (v50 != -1)
                      {
                        goto LABEL_65;
                      }
                    }
                  }

                  else
                  {
                    v60 = *(__p + v56) + 1;
                    *(__p + v56) = v60;
                    if (v50 != -1)
                    {
                      if (v60 > a4)
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_91;
                    }
                  }

                  if (v76 && (v8 != v77.n128_f32[0] || v75 != v77.n128_f32[1]) && vabds_f32(v8 + v75, v77.n128_f32[0] + v77.n128_f32[1]) > 0.00097656)
                  {
                    goto LABEL_112;
                  }

                  v61 = (*(*a2 + 24))(a2);
                  v100 = 0uLL;
                  LODWORD(v101) = v48;
                  (*(*a2 + 208))(a2, v61, &v100);
                  if (v76)
                  {
                    v76 = 1;
                    goto LABEL_111;
                  }

                  v76 = *(__p + v56) == a4;
                  v35.n128_u64[1] = v77.n128_u64[1];
                  if (*(__p + v56) == a4)
                  {
                    v8 = v77.n128_f32[0];
                  }

                  v62 = v75;
                  if (*(__p + v56) == a4)
                  {
                    v62 = v77.n128_f32[1];
                  }

                  v75 = v62;
                  if (*(__p + v56) == a4 && (a7 & 1) == 0)
                  {
                    goto LABEL_112;
                  }

LABEL_111:
                  v40 = v89;
                  v39 = v90;
                  if (v89 == v90)
                  {
                    goto LABEL_112;
                  }
                }
              }
            }
          }
        }
      }

      if ((*(*a1 + 64))(a1, 4, 0, v21))
      {
        (*(*a2 + 192))(a2, 4, 4);
      }
    }
  }
}

void sub_1B51B0CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(uint64_t **a1, void *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  std::vector<fst::LatticeWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1B51B0ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::vector<fst::LatticeWeightTpl<float>>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t fst::ShortestDistanceState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    result = (*(**a1 + 64))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v16 = a1 + 116;
    goto LABEL_91;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v4 = a2;
  v5 = a1[1];
  v7 = (v5 + 8);
  v6 = *(v5 + 8);
  v8 = *v5;
  if (v4 >= (v6 - *v5) >> 3)
  {
    v9 = vneg_f32(0x7F0000007FLL);
    do
    {
      v52[0] = v9;
      if (v6 >= *(v5 + 16))
      {
        v10 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(v5, v52);
      }

      else
      {
        *v6 = v9;
        v10 = &v6[1];
      }

      *v7 = v10;
      v52[0] = v9;
      v11 = a1[6];
      if (v11 >= a1[7])
      {
        v12 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(a1 + 5, v52);
      }

      else
      {
        *v11 = v9;
        v12 = &v11[1];
      }

      a1[6] = v12;
      LOBYTE(v52[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), v52);
      v5 = a1[1];
      v7 = (v5 + 8);
      v6 = *(v5 + 8);
      v8 = *v5;
    }

    while (v4 >= (v6 - *v5) >> 3);
  }

  if (*(a1 + 33) == 1)
  {
    v13 = a1[11];
    if (v4 >= (a1[12] - v13) >> 2)
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v13 = a1[11];
      }

      while (v4 >= (a1[12] - v13) >> 2);
      v8 = *a1[1];
    }

    *(v13 + 4 * v4) = *(a1 + 28);
  }

  v8[v4] = 0;
  v14 = a1 + 5;
  *(a1[5] + 8 * v4) = 0;
  v15 = a1 + 8;
  *(a1[8] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v4);
  v16 = a1 + 116;
  v17 = vneg_f32(0x7F0000007FLL);
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_87;
    }

    v19 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v20 = a1[1];
      v22 = (v20 + 8);
      v21 = *(v20 + 8);
      if (v19 < ((v21 - *v20) >> 3))
      {
        break;
      }

      v52[0] = v17;
      if (v21 >= *(v20 + 16))
      {
        v23 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(v20, v52);
      }

      else
      {
        *v21 = v17;
        v23 = &v21[1];
      }

      *v22 = v23;
      v52[0] = v17;
      v24 = a1[6];
      if (v24 >= a1[7])
      {
        v25 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(a1 + 5, v52);
      }

      else
      {
        *v24 = v17;
        v25 = &v24[1];
      }

      a1[6] = v25;
      LOBYTE(v52[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), v52);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(v52);
      v57 = *(v52 + 1);
      v51.i32[0] = v52[0];
      v56 = 2139095040;
      v55 = INFINITY;
      v18.n128_u32[0] = v52[0];
      if (*v52 != INFINITY || (v18.n128_f32[0] = v57, v57 != v55))
      {
LABEL_87:
        ++*(a1 + 28);
        result = (*(**a1 + 64))(*a1, 4, 0, v18);
        if (!result)
        {
          return result;
        }

LABEL_91:
        *v16 = 1;
        return result;
      }
    }

    *(a1[8] + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v19);
    v26 = a1[5];
    v27 = *(v26 + 8 * v19);
    *(v26 + 8 * v19) = v17;
    v28 = *a1;
    v54 = 0;
    (*(*v28 + 136))(v28, v19, v52);
    while (1)
    {
      if (v52[0])
      {
        if ((*(*v52[0] + 24))(v52[0]))
        {
          goto LABEL_79;
        }

        if (v52[0])
        {
          v29 = (*(*v52[0] + 32))(v52[0]);
          goto LABEL_41;
        }
      }

      else if (v54 >= v52[2])
      {
LABEL_79:
        v49 = 1;
        goto LABEL_81;
      }

      v29 = (v52[1] + 20 * v54);
LABEL_41:
      while (1)
      {
        v30 = a1[1];
        v32 = (v30 + 8);
        v31 = *(v30 + 8);
        v33 = *v30;
        if (v29[2].i32[0] < ((v31 - *v30) >> 3))
        {
          break;
        }

        v51 = v17;
        if (v31 >= *(v30 + 16))
        {
          v34 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(v30, &v51);
        }

        else
        {
          *v31 = v17;
          v34 = &v31[1];
        }

        *v32 = v34;
        v51 = v17;
        v35 = a1[6];
        if (v35 >= a1[7])
        {
          v36 = std::vector<fst::LatticeWeightTpl<float>>::__emplace_back_slow_path<fst::LatticeWeightTpl<float>>(a1 + 5, &v51);
        }

        else
        {
          *v35 = v17;
          v36 = &v35[1];
        }

        a1[6] = v36;
        v51.i8[0] = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v51);
      }

      v37 = v29[2].i32[0];
      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v38 = a1[11];
          v37 = v29[2].i32[0];
          if (v37 < ((a1[12] - v38) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v39 = *(a1 + 28);
        v33 = *a1[1];
        if (*(v38 + 4 * v37) != v39)
        {
          v33[v37] = v17;
          *(*v14 + 8 * v37) = v17;
          *(*v15 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v37);
          *(v38 + 4 * v37) = v39;
          v37 = v29[2].i32[0];
        }
      }

      v40 = &v33[v37];
      v41 = vadd_f32(v27, v29[1]);
      v42 = *v40;
      v43 = vadd_f32(vzip1_s32(*v40, v41), vzip2_s32(*v40, v41));
      v44 = *v40;
      if (v43.f32[0] >= v43.f32[1])
      {
        if (v43.f32[0] > v43.f32[1] || (v44 = *v40, (vcgt_f32(v41, v42).u32[0] & 1) == 0) && (v44 = *v40, (vcgt_f32(v42, v41).u32[0] & 1) != 0))
        {
          v44 = v41;
        }
      }

      v45 = vceq_f32(v42, v44);
      if ((vand_s8(vdup_lane_s32(v45, 1), v45).u32[0] & 1) == 0 && fabsf(vsub_f32(v43, vadd_f32(vdup_lane_s32(v44, 1), v44)).f32[0]) > *(a1 + 7))
      {
        break;
      }

LABEL_76:
      if (v52[0])
      {
        (*(*v52[0] + 40))(v52[0]);
      }

      else
      {
        ++v54;
      }
    }

    if (v43.f32[0] >= v43.f32[1] && (v43.f32[0] > v43.f32[1] || (vcgt_f32(v41, v42).u8[0] & 1) == 0 && (vcgt_f32(v42, v41).u8[0] & 1) != 0))
    {
      v42 = v41;
    }

    v46 = (*v14 + 8 * v37);
    *v40 = v42;
    v47 = *v46;
    v43.f32[0] = vaddv_f32(*v46);
    if (v43.f32[0] >= v43.f32[1] && (v43.f32[0] > v43.f32[1] || (vcgt_f32(v41, v47).u8[0] & 1) == 0 && (vcgt_f32(v47, v41).u8[0] & 1) != 0))
    {
      v47 = v41;
    }

    *v46 = v47;
    if (fst::LatticeWeightTpl<float>::Member(v40) && fst::LatticeWeightTpl<float>::Member(v46))
    {
      v48 = **(a1[2] + 16);
      if ((*(a1[8] + ((v29[2].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29[2].i32[0]))
      {
        (*(v48 + 40))();
      }

      else
      {
        (*(v48 + 24))();
        *(*v15 + ((v29[2].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29[2].i32[0];
      }

      goto LABEL_76;
    }

    v49 = 0;
    *v16 = 1;
LABEL_81:
    result = v52[0];
    if (v52[0])
    {
      result = (*(*v52[0] + 8))(v52[0]);
    }

    else if (v53)
    {
      --*v53;
    }
  }

  while ((v49 & 1) != 0);
  return result;
}

void sub_1B51B1814(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a13)
  {
    --*a13;
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::LatticeWeightTpl<float>>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<fst::LatticeWeightTpl<float>>::__append(result, a2 - v3, a3);
  }
}

void std::vector<fst::LatticeWeightTpl<float>>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 3)
  {
    if (a2)
    {
      v11 = *a3;
      v12 = 8 * a2;
      v13 = &v4[a2];
      do
      {
        *v4++ = v11;
        v12 -= 8;
      }

      while (v12);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v5 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v14 = (8 * v8);
    __p = 0;
    v18 = 8 * v8;
    v20 = 0;
    v15 = 8 * a2;
    v16 = *a3;
    do
    {
      *v14++ = v16;
      v15 -= 8;
    }

    while (v15);
    v19 = 8 * v8 + 8 * a2;
    std::vector<fst::LatticeWeightTpl<float>>::__swap_out_circular_buffer(a1, &__p);
    if (v19 != v18)
    {
      v19 += (v18 - v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1B51B19D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

double fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Final@<D0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

unint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 2);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    operator new();
  }

  return a1;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetFinal(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::SetFinal(v6, v4, &v8);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AddArc(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = a2;
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::AddArc(v6, v4, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D03248;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D03198;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B51B252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D03210;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D03248;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B51B282C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51B2928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::operator=(uint64_t a1)
{
  if (FLAGS_fst_error_fatal == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  }

  v2 = fst::LogMessage::LogMessage(&v7, __p);
  v3 = fst::cerr(v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ImplToFst: Assignment operator disallowed", 41);
  fst::LogMessage::~LogMessage(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1B51B2A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D03248;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D03198;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a2);
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AddState(a1);
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 160);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1B51B3240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>();
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::reserve(uint64_t *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1B51B332C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::push_back[abi:ne200100](a1 + 3, a2);
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::__emplace_back_slow_path<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, v6);
  }

  v7 = 20 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v12 = 20 * v2 + 20;
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 20) % 0x14uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1B51B3538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, a2, a3, 1);
  }
}