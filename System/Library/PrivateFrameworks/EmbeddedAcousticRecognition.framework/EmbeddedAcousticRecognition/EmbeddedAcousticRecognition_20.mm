void sub_1B5172884(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AltSequenceComposeFilter(a1, a2, a3, a4, a5);
  *(a1 + 40) = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(*v6, *(a1 + 8));
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy(*a1, 0);
}

void sub_1B5172A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v19);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AltSequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadCheck(_BYTE *a1)
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

void sub_1B5172D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(uint64_t a1)
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

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MultiEpsMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  if (!a5)
  {
    operator new();
  }

  *a1 = a5;
  *(a1 + 8) = a4;
  *(a1 + 12) = a6;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 60) = v6;
  *(a1 + 64) = v7;
  *(a1 + 68) = 0xFFFFFFFF00000000;
  return a1;
}

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(uint64_t a1)
{
  if (*(a1 + 12) == 1)
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
  }

  std::__tree<int>::destroy(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D013A8;
  v2 = a1[17];
  if (v2)
  {
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 200);
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 120);
    fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2 + 48);
    v3 = fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40F6F5CAE4);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B517326C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void sub_1B51733B0(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void *fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::CompactHashBiTable(void *a1, uint64_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), *(a2 + 48), a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>*,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>*>(a1 + 10, *(a2 + 80), *(a2 + 88), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 88) - *(a2 + 80)) >> 2));
  for (i = *(a2 + 40); i; i = *i)
  {
    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, i + 4, i + 4);
  }

  return a1;
}

uint64_t *std::vector<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>*,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51736A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc::operator()(a1 + 4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, *(v12 + 4), *a2))
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc::operator()(uint64_t *a1, unsigned int a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  if (a2 == -1)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = (*(v2 + 80) + 20 * a2);
  }

  return *v3 + 7853 * v3[1] + 7867 * (v3[4] ^ __ROR8__((*(v3 + 1) >> 8) ^ __ROR8__(*(v3 + 1), 59), 59));
}

BOOL fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual::operator()(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  v3 = *a1;
  if (a2 == -1)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = *(v3 + 80) + 20 * a2;
  }

  if (a3 == -1)
  {
    v6 = *(v3 + 104);
  }

  else
  {
    v6 = *(v3 + 80) + 20 * a3;
  }

  return fst::operator==(v4, v6);
}

BOOL fst::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  return v2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9) && *(a1 + 16) == *(a2 + 16);
}

void fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v7 = *a4;
  *(a1 + 96) = *(a4 + 2);
  *(a1 + 88) = v7;
  LODWORD(v7) = *a4;
  *(a1 + 84) = *(a4 + 4);
  *(a1 + 80) = v7;
  fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(a1, a2, a3, a4);
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = 112;
    if (*(a1 + 40) == 1)
    {
      v8 = 104;
      v9 = a2;
    }

    else
    {
      v9 = v4;
    }

    *(a1 + 280) = (*(**(a1 + v8) + 40))(*(a1 + v8), v9);
    v10 = *(a1 + 96);
    std::__tree<int>::destroy(a1 + 136, *(a1 + 144));
    *(a1 + 136) = a1 + 144;
    *(a1 + 144) = 0u;
    v11 = *(a1 + 224);
    *(a1 + 160) = -1;
    std::__tree<int>::destroy(a1 + 216, v11);
    *(a1 + 216) = a1 + 224;
    *(a1 + 224) = 0u;
    *(a1 + 240) = -1;
    if (v10 != -1)
    {
      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 120, v10);

      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 200, v10);
    }
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(****(a1 + 144) + 104))(***(a1 + 144), a2);
  v8 = (*(****(a1 + 152) + 104))(***(a1 + 152), a3);
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

void sub_1B5173D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v8 = a8;
  v12 = a4;
  (*(***a7 + 56))(**a7, a4, a3);
  a7[18] = v12;
  LODWORD(v19) = v8 - 1;
  *(&v19 + 4) = (v8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, &v19, v8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v15 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v15 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, v15, v8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

LABEL_15:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5173F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddMultiEpsLabel(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = a1 + 16;

    fst::CompactSet<int,-1>::Insert(v2, a2);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v3 = fst::LogMessage::LogMessage(&v7, __p);
    v4 = fst::cerr(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "MultiEpsMatcher: Bad multi-eps label: 0", 39);
    fst::LogMessage::~LogMessage(&v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B5174060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 24) != __PAIR64__(a3, a2) || *a4 != *(a1 + 32))
  {
    *(a1 + 24) = a2;
    *(a1 + 28) = a3;
    *(a1 + 32) = *a4;
    v6 = (*(**(a1 + 16) + 40))(*(a1 + 16), a3);
    v7 = (*(**(a1 + 16) + 48))(*(a1 + 16), a3);
    v9 = (*(**(a1 + 16) + 32))(*(a1 + 16), a3) == INFINITY && v6 == v7;
    *(a1 + 33) = v9;
    *(a1 + 34) = v7 == 0;
  }
}

uint64_t *fst::CompactSet<int,-1>::Insert(uint64_t a1, int a2)
{
  v9 = a2;
  result = std::__tree<int>::__emplace_unique_key_args<int,int const&>(a1, &v9, &v9);
  v4 = *(a1 + 24);
  v5 = v9;
  if (v4 == -1 || v9 < v4)
  {
    *(a1 + 24) = v9;
  }

  v7 = *(a1 + 28);
  if (v7 == -1 || v7 < v5)
  {
    *(a1 + 28) = v5;
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, _BYTE *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(a3, *(a4 + v10));
  if (result && (a3[76] & 1) == 0)
  {
    do
    {
      v12 = (a3 + 60);
      if ((a3[56] & 1) == 0)
      {
        v12 = (*(***a3 + 80))(**a3);
      }

      v13 = *v12;
      v24 = *a4;
      v25 = v13;
      if (a5)
      {
        v14 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v24, &v25);
        v22 = v14;
        v23 = v15;
        if (v14 == 0xFF)
        {
          LODWORD(v27) = v14 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v15 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v24;
        v18 = &v25;
      }

      else
      {
        v19 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v25, &v24);
        v22 = v19;
        v23 = v20;
        if (v19 == 0xFF)
        {
          LODWORD(v27) = v19 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v20 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v25;
        v18 = &v24;
      }

      fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::AddArc(a1, a2, v17, v18, &v22);
LABEL_21:
      result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(a3);
    }

    while (a3[76] != 1);
  }

  return result;
}

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(_BYTE *a1, uint64_t a2)
{
  v3 = a1 + 24;
  *(a1 + 6) = a1 + 24;
  a1[56] = 0;
  if (a2 == -1)
  {
    if (a1[8])
    {
      v6 = *(a1 + 2);
      while (1)
      {
        *(a1 + 6) = v6;
        if (v6 == v3)
        {
          break;
        }

        v7 = (*(***a1 + 64))(**a1, *(v6 + 7));
        v8 = *(a1 + 6);
        if (v7)
        {
          if (v8 == v3)
          {
            break;
          }

          result = 1;
          goto LABEL_11;
        }

        v9 = v8[1];
        if (v9)
        {
          do
          {
            v6 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v6 = v8[2];
            v10 = *v6 == v8;
            v8 = v6;
          }

          while (!v10);
        }
      }
    }

    v4 = *(***a1 + 64);
    goto LABEL_10;
  }

  if (!a2)
  {
    v4 = *(***a1 + 64);
LABEL_10:
    result = v4();
    goto LABEL_11;
  }

  if ((a1[8] & 2) == 0 || v3 == fst::CompactSet<int,-1>::Find((a1 + 16), a2))
  {
    v4 = *(***a1 + 64);
    goto LABEL_10;
  }

  result = 1;
  a1[56] = 1;
LABEL_11:
  a1[76] = result ^ 1;
  return result;
}

unint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a3;
  v4 = a2;
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = *(a1 + 96);
    if (v8 == -1)
    {
      v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
      v12 = v6;
      v13 = BYTE4(v6);
      if (v6 == 0xFF)
      {
        LODWORD(v15) = v6 >> 8;
        v14 = 2139095040;
        if (v15 == INFINITY)
        {
          v7 = 0;
          v6 = 0x7F800000FFLL;
          return v7 | v6 & 0xFFFFFFFFFFLL;
        }
      }

      if (*(a1 + 76) != 1)
      {
        goto LABEL_3;
      }

      if (*(a1 + 40) == 1)
      {
        v9 = v4;
        v10 = v3;
      }

      else
      {
        v9 = v3;
        v10 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::PushLabelFilterArc(a1, v9, v10, &v12);
    }

    else
    {
      if (*(a1 + 40) != 1)
      {
        a2 = a3;
        a3 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::PushedLabelFilterArc(a1, a2, a3, v8);
    }

    v7 = v6 & 0xFFFFFF0000000000;
    return v7 | v6 & 0xFFFFFFFFFFLL;
  }

  v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
LABEL_3:
  v7 = 0;
  return v7 | v6 & 0xFFFFFFFFFFLL;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::AddArc(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2;
  v7 = *(a4 + 12);
  *&v17 = a3[3];
  DWORD1(v17) = v7;
  *(&v17 + 1) = *a5;
  v18 = *(a5 + 2);
  v8 = *a3;
  v9 = *(a4 + 4);
  v10 = a3[2];
  v11 = NAN;
  if (v10 != -INFINITY)
  {
    v12 = *(a4 + 8);
    if (v12 != -INFINITY)
    {
      if (v12 == INFINITY || v10 == INFINITY)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10 + v12;
      }
    }
  }

  Id = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(*(a1 + 176), &v17, 1);
  *&v16 = __PAIR64__(v9, LODWORD(v8));
  *(&v16 + 1) = __PAIR64__(Id, LODWORD(v11));
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), v5);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v16);
}

uint64_t fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    v2 = 1;
LABEL_19:
    *(v1 + 76) = v2;
  }

  else
  {
    (*(***result + 88))(**result);
    result = (*(***v1 + 72))(**v1);
    *(v1 + 76) = result;
    if (result)
    {
      v3 = v1 + 3;
      v4 = v1[6];
      if (v4 != v1 + 3)
      {
        v5 = v4[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        while (1)
        {
          v1[6] = v6;
          if (v6 == v3)
          {
            goto LABEL_18;
          }

          result = (*(***v1 + 64))(**v1, *(v6 + 7));
          v8 = v1[6];
          if (result)
          {
            break;
          }

          v9 = v8[1];
          if (v9)
          {
            do
            {
              v6 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v6 = v8[2];
              v7 = *v6 == v8;
              v8 = v6;
            }

            while (!v7);
          }
        }

        if (v8 == v3)
        {
LABEL_18:
          result = (*(***v1 + 64))(**v1, 0xFFFFFFFFLL);
          v2 = result ^ 1;
          goto LABEL_19;
        }

        *(v1 + 76) = 0;
      }
    }
  }

  return result;
}

uint64_t fst::CompactSet<int,-1>::Find(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = v2 != -1 && v2 <= a2;
  if (!v3 || *(a1 + 28) < a2)
  {
    return a1 + 8;
  }

  v7 = *(a1 + 8);
  v5 = a1 + 8;
  v6 = v7;
  if (!v7)
  {
    return v5;
  }

  v4 = v5;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v4 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v4 == v5 || *(v4 + 28) > a2)
  {
    return v5;
  }

  return v4;
}

unint64_t fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
  if (v5 == 0xFF)
  {
    v7 = 2139095040;
    goto LABEL_9;
  }

  v6 = v5;
  if ((*(a1 + 72) & 0x40) == 0)
  {
    v7 = 0;
    return v6 | (v7 << 8);
  }

  v8 = 0.0;
  if (*(a1 + 76) == 1)
  {
    v9 = *(a1 + 8 * (*(a1 + 64) != 1) + 48);
    if (fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadCheck(v9))
    {
      v8 = *(*v9 + 8);
    }
  }

  v10 = *(a1 + 81);
  v7 = 2139095040;
  if (v8 == INFINITY)
  {
LABEL_9:
    v6 = -1;
    return v6 | (v7 << 8);
  }

  v12 = *(a3 + 8);
  v13 = NAN;
  if (v12 != -INFINITY && v8 != -INFINITY)
  {
    v14 = v12 == INFINITY || v8 == INFINITY;
    v15 = v8 + v12;
    if (v14)
    {
      v15 = INFINITY;
    }

    v16 = (LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    v13 = NAN;
    if (v15 != -INFINITY)
    {
      v17 = v15 - v10;
      if (v15 == INFINITY)
      {
        v17 = INFINITY;
      }

      if (!v16)
      {
        v13 = v17;
      }
    }
  }

  *(a3 + 8) = v13;
  v18 = floorf((v8 * 1024.0) + 0.5) * 0.00097656;
  if ((LODWORD(v8) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v18 = v8;
  }

  v7 = LODWORD(v18);
  return v6 | (v7 << 8);
}

uint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::PushedLabelFilterArc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x7F800000FFLL;
  v5 = *(a1 + 40);
  v6 = v5 != 1;
  v7 = v5 == 1;
  if (*(a3 + 4 * v6) == -1)
  {
    v9 = 4 * v7;
    v10 = *(a2 + v9);
    if (v10 == a4)
    {
      v4 = 0;
      *(a2 + v9) = 0;
    }

    else if (!v10)
    {
      if (*(a1 + 280) == 1)
      {
        return *(a1 + 88);
      }

      v13 = a1 + 48;
      v14 = **(a1 + 48 + 8 * (*(a1 + 64) != 1));
      (*(*v14 + 56))(v14, *(a2 + 12));
      v15 = *(v13 + 8 * (*(a1 + 64) != 1));
      if (!fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadCheck(v15) || (*(**v15 + 120))(*v15, a4))
      {
        return *(a1 + 88);
      }
    }
  }

  return v4;
}

unint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::PushLabelFilterArc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a3 + 4 * (*(a1 + 40) == 1)))
  {
    return *a4 | (*(a4 + 4) << 32);
  }

  v9 = 4 * (*(a1 + 40) == 1);
  if (*(a2 + v9))
  {
    if ((*(a1 + 73) & 4) != 0)
    {
      return *a4 | (*(a4 + 4) << 32);
    }
  }

  v10 = *(a1 + 8 * (*(a1 + 64) != 1) + 48);
  if (!fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadCheck(v10))
  {
    return *a4 | (*(a4 + 4) << 32);
  }

  v11 = *v10;
  v12 = *(*v10 + 24);
  if (v12 == -1)
  {
    return *a4 | (*(a4 + 4) << 32);
  }

  v13 = *(v11 + 12);
  v14 = *(v11 + 16);
  v15 = *(v11 + 20);
  if (*(a1 + 40) == 1)
  {
    v16 = *(v11 + 12);
  }

  else
  {
    v16 = *(v11 + 16);
  }

  *(a2 + v9) = v16;
  *a3 = v13;
  *(a3 + 4) = v14;
  v17 = *(a3 + 8);
  v18 = NAN;
  if (v17 != -INFINITY && v15 != -INFINITY)
  {
    v18 = INFINITY;
    v19 = v17 == INFINITY || v15 == INFINITY;
    v20 = v15 + v17;
    if (!v19)
    {
      v18 = v20;
    }
  }

  *(a3 + 8) = v18;
  *(a3 + 12) = v12;
  return *a4 | (*(a4 + 4) << 32);
}

uint64_t fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(_BYTE *a1, _DWORD *a2, _DWORD *a3)
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

  return fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(a1, a2, a3, &v10);
}

uint64_t fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
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
  (*(*v9 + 56))(v9, *(a2 + 12));
  v10 = *(a1 + 64);
  v11 = v10 == 1;
  v12 = v10 != 1;
  v13 = v11;
  v14 = *(v8 + 8 * v12);
  v15 = **(v8 + 8 * v13);
  v16 = (*(*v15 + 32))(v15);
  v17 = *(a3 + 12);
  if (!fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadCheck(v14) || (*(**v14 + 128))(*v14, v16, v17))
  {
    return *a4;
  }

  return 255;
}

uint64_t fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(void *a1, __int128 *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 2;
  v12 = 0xCCCCCCCCCCCCCCCDLL * v11;
  v25 = -858993459 * v11;
  if (v9 >= v10)
  {
    if (v12 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v8) >> 2);
    v16 = 2 * v15;
    if (2 * v15 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    if (v15 >= 0x666666666666666)
    {
      v17 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>((a1 + 10), v17);
    }

    v18 = 4 * v11;
    v19 = *a2;
    *(v18 + 16) = *(a2 + 4);
    *v18 = v19;
    v14 = 4 * v11 + 20;
    v20 = a1[10];
    v21 = a1[11];
    v22 = 4 * v11 + v20 - v21;
    if (v20 != v21)
    {
      v23 = 4 * v11 + v20 - v21;
      do
      {
        v24 = *v20;
        *(v23 + 16) = *(v20 + 4);
        *v23 = v24;
        v23 += 20;
        v20 += 20;
      }

      while (v20 != v21);
      v20 = a1[10];
    }

    a1[10] = v22;
    a1[11] = v14;
    a1[12] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v13 = *a2;
    *(v9 + 16) = *(a2 + 4);
    *v9 = v13;
    v14 = v9 + 20;
  }

  a1[11] = v14;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v25, &v25);
  return v25;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::find<int>(void *a1, unsigned int *a2)
{
  v4 = fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashFunc::operator()(a1 + 4, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterFinal(uint64_t a1, float *a2)
{
  result = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterFinal(a1, a2);
  if ((*(a1 + 72) & 0x80) != 0 && *a2 != INFINITY && *(a1 + 96) != -1)
  {
    *a2 = INFINITY;
  }

  return result;
}

uint64_t fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterFinal(uint64_t result, float *a2)
{
  if ((*(result + 72) & 0x40) != 0)
  {
    v2 = *a2;
    if (*a2 != INFINITY)
    {
      v3 = NAN;
      if (v2 != -INFINITY && (*(result + 81) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v3 = INFINITY;
        if (v2 != INFINITY)
        {
          v3 = v2 - *(result + 81);
        }
      }

      *a2 = v3;
    }
  }

  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComposeFstImpl<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D01420;
  v8 = a4[5];
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *(v8 + 120);
  *(a1 + 144) = v8 + 120;
  *(a1 + 152) = v8 + 200;
  *(a1 + 160) = (*(**v9 + 32))();
  *(a1 + 168) = (*(****(a1 + 152) + 32))(***(a1 + 152));
  v10 = a4[6];
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(****(a1 + 144) + 40))(***(a1 + 144), v11);
  v14 = (*(****(a1 + 152) + 40))(***(a1 + 152), v12);
  v15 = fst::ComposeProperties(v13, v14);
  v16 = *(*(a1 + 136) + 40);
  v17 = v15 | 4;
  if (v16 != 3)
  {
    v17 = v15;
  }

  v18 = v16 == 1;
  v19 = 0x3FFCCC300004;
  if (v18)
  {
    v19 = 0x3FFC330C0004;
  }

  *(a1 + 8) = v17 & v19 | *(a1 + 8) & 0xFFFFC0000000FFFFLL;
  return a1;
}

void sub_1B517557C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    if ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(****(a1 + 144) + 40))(***(a1 + 144), 0) & 4) != 0 || (v4 = (*(****(a1 + 152) + 40))(***(a1 + 152), 0), *(*(a1 + 136) + 40) == 3) || (v4 & 4) != 0)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  return *(a1 + 8) & a2;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::Expand(void *a1, uint64_t a2)
{
  v4 = (*(a1[22] + 80) + 20 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v8 = *(v4 + 1);
  LODWORD(v4) = v4[4];
  v17 = v8;
  v18 = v4;
  fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(a1, v5, v6))
  {
    v10 = a1[20];
    v9 = a1[21];
    v11 = a1[19];
    v12 = a1;
    v13 = a2;
    v14 = v6;
    v15 = v5;
    v16 = 1;
  }

  else
  {
    v9 = a1[20];
    v10 = a1[21];
    v11 = a1[18];
    v12 = a1;
    v13 = a2;
    v14 = v5;
    v15 = v6;
    v16 = 0;
  }

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(v12, v13, v9, v14, v10, v15, v11, v16);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(****(a1 + 144) + 24))(***(a1 + 144), 0) == a3)
  {
    (*(****(a1 + 152) + 24))(***(a1 + 152), 0);
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    v4 = (*(*a1[21] + 24))(a1[21]);
    result = 0xFFFFFFFFLL;
    if (v4 != -1)
    {
      v5 = __PAIR64__(v4, v3);
      v6 = -1;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>,(fst::HSType)1>::FindId(a1[22], &v5, 1);
    }
  }

  return result;
}

float fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 20 * a2);
  v4 = *v3;
  result = (*(****(a1 + 144) + 96))(***(a1 + 144), v4);
  v13 = result;
  *&v10 = result;
  v14 = 2139095040;
  if (result != INFINITY)
  {
    v6 = v3[1];
    result = (*(****(a1 + 152) + 96))(***(a1 + 152), v6, result, result);
    v12 = result;
    *&v10 = result;
    v14 = 2139095040;
    if (result != INFINITY)
    {
      v7 = *(a1 + 136);
      v8 = v3[4];
      v10 = *(v3 + 1);
      v11 = v8;
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(v7, v4, v6, &v10);
      fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterFinal(*(a1 + 136), &v13);
      result = NAN;
      if (v13 != -INFINITY)
      {
        result = NAN;
        if (v12 != -INFINITY)
        {
          result = INFINITY;
          if (v12 != INFINITY && v13 != INFINITY)
          {
            return v13 + v12;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B5175C5C(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SequenceComposeFilter(a1, a2, a3, a4, a5);
  *(a1 + 40) = fst::LookAheadMatchType<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(*v6, *(a1 + 8));
  fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Copy(*a1, 0);
}

void sub_1B5175E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v19);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
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

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D01420;
  v2 = a1[17];
  if (v2)
  {
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 200);
    fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v2 + 120);
    fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2 + 48);
    v3 = fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40F6F5CAE4);
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

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void sub_1B51761B0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void sub_1B51762F4(_Unwind_Exception *a1)
{
  fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MultiEpsMatcher(v1 + 120);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1 + 48);
  fst::LookAheadSelector<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::~LookAheadSelector(v1);
  _Unwind_Resume(a1);
}

void fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::SetState(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v5 = a2;
  v7 = *a4;
  *(a1 + 96) = *(a4 + 2);
  *(a1 + 88) = v7;
  LODWORD(v7) = *a4;
  *(a1 + 84) = *(a4 + 4);
  *(a1 + 80) = v7;
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(a1, a2, a3, a4);
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = 112;
    if (*(a1 + 40) == 1)
    {
      v8 = 104;
      v9 = v5;
    }

    else
    {
      v9 = a3;
    }

    *(a1 + 280) = (*(**(a1 + v8) + 40))(*(a1 + v8), v9);
    v10 = *(a1 + 96);
    std::__tree<int>::destroy(a1 + 136, *(a1 + 144));
    *(a1 + 136) = a1 + 144;
    *(a1 + 144) = 0u;
    v11 = *(a1 + 224);
    *(a1 + 160) = -1;
    std::__tree<int>::destroy(a1 + 216, v11);
    *(a1 + 216) = a1 + 224;
    *(a1 + 224) = 0u;
    *(a1 + 240) = -1;
    if (v10 != -1)
    {
      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 120, v10);

      fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddMultiEpsLabel(a1 + 200, v10);
    }
  }
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = (*(****(a1 + 144) + 104))(***(a1 + 144), a2);
  v8 = (*(****(a1 + 152) + 104))(***(a1 + 152), a3);
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

void sub_1B5176768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v8 = a8;
  v12 = a4;
  (*(***a7 + 56))(**a7, a4, a3);
  a7[18] = v12;
  LODWORD(v19) = v8 - 1;
  *(&v19 + 4) = (v8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, &v19, v8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v15 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v15 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(a1, a2, a7, v15, v8);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

LABEL_15:
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B51769AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::MatchArc<fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t a1, uint64_t a2, _BYTE *a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Find(a3, *(a4 + v10));
  if (result && (a3[76] & 1) == 0)
  {
    do
    {
      v12 = (a3 + 60);
      if ((a3[56] & 1) == 0)
      {
        v12 = (*(***a3 + 80))(**a3);
      }

      v13 = *v12;
      v24 = *a4;
      v25 = v13;
      if (a5)
      {
        v14 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v24, &v25);
        v22 = v14;
        v23 = v15;
        if (v14 == 0xFF)
        {
          LODWORD(v27) = v14 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v15 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v24;
        v18 = &v25;
      }

      else
      {
        v19 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(*(a1 + 136), &v25, &v24);
        v22 = v19;
        v23 = v20;
        if (v19 == 0xFF)
        {
          LODWORD(v27) = v19 >> 8;
          v26 = 2139095040;
          if (v27 == INFINITY && v20 == -1)
          {
            goto LABEL_21;
          }
        }

        v17 = &v25;
        v18 = &v24;
      }

      fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>,fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::PairFilterState<fst::PairFilterState<fst::IntegerFilterState<signed char>,fst::WeightFilterState<fst::TropicalWeightTpl<float>>>,fst::IntegerFilterState<int>>>>>>>::AddArc(a1, a2, v17, v18, &v22);
LABEL_21:
      result = fst::MultiEpsMatcher<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Next(a3);
    }

    while (a3[76] != 1);
  }

  return result;
}

unint64_t fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a3;
  v4 = a2;
  if ((*(a1 + 72) & 0x80) != 0)
  {
    v8 = *(a1 + 96);
    if (v8 == -1)
    {
      v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
      v12 = v6;
      v13 = BYTE4(v6);
      if (v6 == 0xFF)
      {
        LODWORD(v15) = v6 >> 8;
        v14 = 2139095040;
        if (v15 == INFINITY)
        {
          v7 = 0;
          v6 = 0x7F800000FFLL;
          return v7 | v6 & 0xFFFFFFFFFFLL;
        }
      }

      if (*(a1 + 76) != 1)
      {
        goto LABEL_3;
      }

      if (*(a1 + 40) == 1)
      {
        v9 = v4;
        v10 = v3;
      }

      else
      {
        v9 = v3;
        v10 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::PushLabelFilterArc(a1, v9, v10, &v12);
    }

    else
    {
      if (*(a1 + 40) != 1)
      {
        a2 = a3;
        a3 = v4;
      }

      v6 = fst::PushLabelsComposeFilter<fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::PushedLabelFilterArc(a1, a2, a3, v8);
    }

    v7 = v6 & 0xFFFFFF0000000000;
    return v7 | v6 & 0xFFFFFFFFFFLL;
  }

  v6 = fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
LABEL_3:
  v7 = 0;
  return v7 | v6 & 0xFFFFFFFFFFLL;
}

unint64_t fst::PushWeightsComposeFilter<fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(a1, a2, a3);
  if (v5 == 0xFF)
  {
    v7 = 2139095040;
    goto LABEL_9;
  }

  v6 = v5;
  if ((*(a1 + 72) & 0x40) == 0)
  {
    v7 = 0;
    return v6 | (v7 << 8);
  }

  v8 = 0.0;
  if (*(a1 + 76) == 1)
  {
    v9 = *(a1 + 8 * (*(a1 + 64) != 1) + 48);
    if (fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::LookAheadCheck(v9))
    {
      v8 = *(*v9 + 8);
    }
  }

  v10 = *(a1 + 81);
  v7 = 2139095040;
  if (v8 == INFINITY)
  {
LABEL_9:
    v6 = -1;
    return v6 | (v7 << 8);
  }

  v12 = *(a3 + 8);
  v13 = NAN;
  if (v12 != -INFINITY && v8 != -INFINITY)
  {
    v14 = v12 == INFINITY || v8 == INFINITY;
    v15 = v8 + v12;
    if (v14)
    {
      v15 = INFINITY;
    }

    v16 = (LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    v13 = NAN;
    if (v15 != -INFINITY)
    {
      v17 = v15 - v10;
      if (v15 == INFINITY)
      {
        v17 = INFINITY;
      }

      if (!v16)
      {
        v13 = v17;
      }
    }
  }

  *(a3 + 8) = v13;
  v18 = floorf((v8 * 1024.0) + 0.5) * 0.00097656;
  if ((LODWORD(v8) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v18 = v8;
  }

  v7 = LODWORD(v18);
  return v6 | (v7 << 8);
}

uint64_t fst::LookAheadComposeFilter<fst::SequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::FilterArc(uint64_t a1, _DWORD *a2, _DWORD *a3)
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

  return fst::LookAheadComposeFilter<fst::AltSequenceComposeFilter<fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::LookAheadMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,(fst::MatchType)2>::LookAheadFilterArc(a1, a2, a3, &v9);
}

void *fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D00FE0;
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
    fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

_DWORD *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
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

BOOL fst::CacheStateIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
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

uint64_t *fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(uint64_t result, int a2, void *a3)
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
  v10 = (*(v6 - 5) - v9) >> 4;
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

void fst::ShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, float **a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    if (v4 == 1 && (*(a4 + 35) & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      *v12 = 0;
      LODWORD(__p) = 0;
      if (fst::SingleShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a3, a4, &__p, &v10))
      {
        fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v10, __p);
      }

      else
      {
        (*(*a2 + 192))(a2, 4, 4);
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }
    }

    else
    {
      if ((*(a4 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a3, a4), v8 = *a3, a3[1] - *a3 != 4) || *v8 < -INFINITY || *v8 > -INFINITY)
      {
        fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::VectorFst(v14);
      }

      v9 = *(*a2 + 192);

      v9(a2, 4, 4);
    }
  }
}

void sub_1B5177678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(&a9);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst((v18 - 64));
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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
        fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, v6, 0);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B5177F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::NaturalLess<fst::TropicalWeightTpl<float>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v10 = *(a3 + 8) - *a3;
  if (v10)
  {
    v11 = v10 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    bzero(*a3, 4 * v11);
  }

  v29 = 0;
  (*(*a1 + 128))(a1, &v27);
  while (1)
  {
    result = v27;
    if (!v27)
    {
      if (v29 >= v28)
      {
        return result;
      }

LABEL_11:
      v14 = v29;
      goto LABEL_12;
    }

    v13 = (*(*v27 + 16))(v27);
    result = v27;
    if (v13)
    {
      break;
    }

    if (!v27)
    {
      goto LABEL_11;
    }

    v14 = (*(*v27 + 24))();
LABEL_12:
    v26 = 0;
    (*(*a1 + 136))(a1, v14, v24);
    while (1)
    {
      if (!v24[0])
      {
        if (v26 >= v24[2])
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      if ((*(*v24[0] + 24))(v24[0]))
      {
        break;
      }

      if (v24[0])
      {
        v15 = (*(*v24[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v15 = v24[1] + 16 * v26;
LABEL_19:
      v16 = *(*a2 + 4 * v14);
      if (v16 == *(*a2 + 4 * *(v15 + 12)))
      {
        v17 = *a3;
        if (!a4 || (v18 = (v15 + 8), v31 = 0.0, fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(a4, (v15 + 8), &v31)))
        {
          v19 = 1;
          goto LABEL_23;
        }

        if ((v17[v16] | 2) == 2)
        {
          v21 = *v18;
          v31 = *v18;
          v30 = 2139095040;
          if (v31 == INFINITY || (v31 = v21, v30 = 0, v21 == 0.0))
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
          }

LABEL_23:
          v17[v16] = v19;
        }

        *a5 = 0;
      }

      v20 = *(v15 + 8);
      v31 = v20;
      v30 = 2139095040;
      if (v20 != INFINITY)
      {
        v31 = v20;
        v30 = 0;
        if (v20 != 0.0)
        {
          *a6 = 0;
        }
      }

      if (v24[0])
      {
        (*(*v24[0] + 40))(v24[0]);
      }

      else
      {
        ++v26;
      }
    }

    if (v24[0])
    {
      (*(*v24[0] + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (v25)
    {
      --*v25;
    }

LABEL_40:
    if (v27)
    {
      (*(*v27 + 32))(v27);
    }

    else
    {
      ++v29;
    }
  }

  if (v27)
  {
    return (*(*v27 + 8))();
  }

  return result;
}

void sub_1B517844C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2)
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
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2, v2, 0);
}

void sub_1B5178624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
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

void sub_1B5178E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v15 = *(v13 - 112);
  if (v15)
  {
    *(v13 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      JUMPOUT(0x1B8C85350);
    }

    v5 = 0;
    v6 = **a1;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

BOOL fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = NAN;
  if (*a2 != -INFINITY)
  {
    v4 = NAN;
    if (*a3 != -INFINITY)
    {
      if (v3 >= *a3)
      {
        v4 = *a3;
      }

      else
      {
        v4 = *a2;
      }
    }
  }

  return v4 == v3 && v3 != *a3;
}

void *fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D01558;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);
  return a1;
}

void fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D01558;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::Insert(uint64_t a1, int *a2)
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

  return fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::Insert(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 64);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(a1 + 8, (**a1 + 4 * *(v6 + 4 * v8)), (**a1 + 4 * *a2)))
      {
        break;
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 16);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 64);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 40) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 40) + 4 * v8);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::Pop(uint64_t a1)
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
  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::Heapify(a1, 0);
  return v2;
}

BOOL fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::TropicalWeightTpl<float>>>,false>::Heapify(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 88) || !(result = fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(v3 + 8, (**v3 + 4 * *(*(v3 + 64) + 4 * v4)), (**v3 + 4 * *(*(v3 + 64) + 4 * a2)))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 88))
    {
      result = fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(v3 + 8, (**v3 + 4 * *(*(v3 + 64) + 4 * v5)), (**v3 + 4 * *(*(v3 + 64) + 4 * v4)));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 40);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 16);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 64);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

uint64_t fst::SingleShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  if ((*(*a1 + 24))(a1) == -1)
  {
    return 1;
  }

  memset(v57, 0, sizeof(v57));
  v9 = *a3;
  v10 = *(a3 + 3);
  v51 = *a3;
  if (v10 == -1)
  {
    v10 = (*(*a1 + 24))(a1);
    v9 = v51;
  }

  a2[1] = *a2;
  (*(**(v9 + 16) + 56))(*(v9 + 16));
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

    v43 = fst::LogMessage::LogMessage(&v52, &__p);
    v44 = fst::cerr(v43);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "SingleShortestPath: for nshortest > 1, use ShortestPath", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " instead", 8);
LABEL_103:
    fst::LogMessage::~LogMessage(&v52);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_105;
  }

  LODWORD(__p) = *(a3 + 9);
  LODWORD(v52) = 2139095040;
  if (*&__p != INFINITY || *(a3 + 10) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v45 = fst::LogMessage::LogMessage(&v52, &__p);
    v46 = fst::cerr(v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "SingleShortestPath: weight and state thresholds not applicable", 62);
    goto LABEL_103;
  }

  while (v10 > ((a2[1] - *a2) >> 2))
  {
    LODWORD(__p) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](a2, &__p);
    LOBYTE(__p) = 0;
    std::vector<BOOL>::push_back(v57, &__p);
    LODWORD(__p) = -1;
    *(&__p + 1) = -1;
    std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &__p);
  }

  LODWORD(__p) = 0;
  std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](a2, &__p);
  LODWORD(__p) = -1;
  *(&__p + 1) = -1;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &__p);
  (*(**(v51 + 16) + 24))(*(v51 + 16), v10);
  v49 = a4;
  LOBYTE(__p) = 1;
  std::vector<BOOL>::push_back(v57, &__p);
  v11 = INFINITY;
  while (1)
  {
    if ((*(**(v51 + 16) + 48))(*(v51 + 16)))
    {
      goto LABEL_93;
    }

    v12 = (*(**(v51 + 16) + 16))(*(v51 + 16));
    (*(**(v51 + 16) + 32))(*(v51 + 16));
    *(v57[0] + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v12);
    v13 = *(*a2 + 4 * v12);
    LODWORD(__p) = (*(*a1 + 32))(a1, v12);
    LODWORD(v52) = 2139095040;
    if (*&__p == INFINITY)
    {
      goto LABEL_36;
    }

    (*(*a1 + 32))(a1, v12);
    v15 = NAN;
    if (v13 != -INFINITY && v14 != -INFINITY)
    {
      v16 = v14 == INFINITY || v13 == INFINITY;
      v17 = v13 + v14;
      if (v16)
      {
        v15 = INFINITY;
      }

      else
      {
        v15 = v17;
      }
    }

    if (v11 == -INFINITY)
    {
      LODWORD(__p) = -8388608;
      LODWORD(v52) = 2143289344;
      if (NAN == -INFINITY)
      {
        goto LABEL_33;
      }

      v11 = NAN;
      goto LABEL_32;
    }

    if (v11 >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v11;
    }

    if (v15 == -INFINITY)
    {
      v19 = NAN;
    }

    else
    {
      v19 = v18;
    }

    *&__p = v11;
    *&v52 = v19;
    if (v11 != v19)
    {
      v11 = NAN;
      if (v15 != -INFINITY)
      {
        v11 = v18;
      }

LABEL_32:
      *v49 = v12;
    }

LABEL_33:
    v20 = 0;
    if (v11 == -INFINITY)
    {
      break;
    }

    if (*(a3 + 34))
    {
      v21 = 5;
      goto LABEL_91;
    }

LABEL_36:
    v56 = 0;
    (*(*a1 + 136))(a1, v12, &__p);
    while (1)
    {
      if (!__p)
      {
        if (v56 >= v54)
        {
          v21 = 0;
          goto LABEL_89;
        }

        goto LABEL_42;
      }

      v22 = (*(*__p + 24))(__p);
      v23 = __p;
      if (v22)
      {
        break;
      }

      if (__p)
      {
        v24 = (*(*__p + 32))();
        goto LABEL_43;
      }

LABEL_42:
      v24 = *(&__p + 1) + 16 * v56;
LABEL_43:
      while (1)
      {
        v25 = *a2;
        v26 = *(v24 + 12);
        if (v26 < (a2[1] - *a2) >> 2)
        {
          break;
        }

        LODWORD(v52) = 2139095040;
        std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](a2, &v52);
        LOBYTE(v52) = 0;
        std::vector<BOOL>::push_back(v57, &v52);
        LODWORD(v52) = -1;
        *(&v52 + 1) = -1;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v52);
      }

      v27 = NAN;
      if (v13 != -INFINITY)
      {
        v28 = *(v24 + 8);
        v27 = NAN;
        if (v28 != -INFINITY)
        {
          v29 = v28 == INFINITY || v13 == INFINITY;
          v27 = v13 + v28;
          if (v29)
          {
            v27 = INFINITY;
          }
        }
      }

      v30 = *(v25 + 4 * v26);
      if (v30 >= v27)
      {
        v31 = v27;
      }

      else
      {
        v31 = *(v25 + 4 * v26);
      }

      if (v27 == -INFINITY || v30 == -INFINITY)
      {
        v31 = NAN;
      }

      LODWORD(v52) = *(v25 + 4 * v26);
      v58 = v31;
      if (v30 != v31)
      {
        v34 = *(v25 + 4 * v26);
        if (v34 >= v27)
        {
          v35 = v27;
        }

        else
        {
          v35 = *(v25 + 4 * v26);
        }

        v37 = v27 == -INFINITY || v34 == -INFINITY;
        v38 = NAN;
        if (!v37)
        {
          v38 = v35;
        }

        *(v25 + 4 * v26) = v38;
        v21 = 1;
        v23 = __p;
        if (v38 == -INFINITY)
        {
          goto LABEL_86;
        }

        if (__p)
        {
          v39 = (*(*__p + 48))();
        }

        else
        {
          v39 = v56;
        }

        v40 = *(v24 + 12);
        v41 = *a5 + 16 * v40;
        *v41 = v12;
        *(v41 + 8) = v39;
        v42 = **(v51 + 16);
        if ((*(v57[0] + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v40))
        {
          (*(v42 + 40))();
        }

        else
        {
          (*(v42 + 24))();
          *(v57[0] + ((*(v24 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v24 + 12);
        }
      }

      if (__p)
      {
        (*(*__p + 40))(__p);
      }

      else
      {
        ++v56;
      }
    }

    v21 = 0;
LABEL_86:
    if (v23)
    {
      (*(*v23 + 8))(v23);
      goto LABEL_91;
    }

LABEL_89:
    if (v55)
    {
      --*v55;
    }

LABEL_91:
    if (v21)
    {
      if (v21 == 5)
      {
LABEL_93:
        v20 = 1;
        break;
      }

LABEL_105:
      v20 = 0;
      break;
    }
  }

  if (v57[0])
  {
    operator delete(v57[0]);
  }

  return v20;
}

void sub_1B5179CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 224))(a2);
  v8 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v8);
  v9 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = -1;
    v12 = a4;
    while (1)
    {
      v13 = (*(*a2 + 200))(a2);
      if (v11 != -1)
      {
        break;
      }

      (*(*a1 + 32))(a1, a4);
      (*(*a2 + 184))(a2, v13);
LABEL_15:
      v11 = v12;
      v10 = v13;
      v12 = *(*a3 + 16 * v12);
      if (v12 == -1)
      {
        goto LABEL_18;
      }
    }

    v25 = 0;
    (*(*a1 + 136))(a1, v12, v23);
    v14 = *(*a3 + 16 * v11 + 8);
    if (v23[0])
    {
      (*(*v23[0] + 64))(v23[0], v14);
      if (v23[0])
      {
        v15 = (*(*v23[0] + 32))(v23[0]);
        goto LABEL_11;
      }

      v14 = v25;
    }

    else
    {
      v25 = *(*a3 + 16 * v11 + 8);
    }

    v15 = v23[1] + 16 * v14;
LABEL_11:
    v16 = *(v15 + 8);
    v20 = *v15;
    v21 = v16;
    v22 = v10;
    (*(*a2 + 208))(a2, v13, &v20);
    if (v23[0])
    {
      (*(*v23[0] + 8))(v23[0]);
    }

    else if (v24)
    {
      --*v24;
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

  v17 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v18 = fst::ShortestPathProperties(v17, 0);
  return (*(*a2 + 192))(a2, v18, 0x3FFFFFFF0007);
}

void sub_1B517A23C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
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

void *fst::ShortestDistance<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, void *a2, uint64_t a3)
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
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ShortestDistance(v6, *(a3 + 12));
  if (BYTE12(v13[1]) == 1)
  {
    a2[1] = *a2;
    v5 = 2143289344;
    std::vector<fst::TropicalWeightTpl<float>>::resize(a2, 1uLL, &v5);
  }

  return fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(v6);
}

void sub_1B517A330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(va);
  _Unwind_Resume(a1);
}

uint64_t fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 224))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1);
    (*(*a2 + 248))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v52 = 0;
  v40 = v9;
  if (a3)
  {
LABEL_29:
    v10 = (*(*a2 + 200))(a2);
    v17 = 1;
    v18 = 1;
    goto LABEL_31;
  }

  LODWORD(v46) = 0;
  (*(*a1 + 128))(a1, &v44);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v44)
    {
      v11 = (*(*v44 + 16))(v44);
      v12 = v44;
      if (v11)
      {
        goto LABEL_24;
      }

      if (v44)
      {
        v13 = (*(*v44 + 24))();
        goto LABEL_11;
      }
    }

    else if (v46 >= v45)
    {
      goto LABEL_26;
    }

    v13 = v46;
LABEL_11:
    v14 = (*(*a1 + 32))(a1, v13);
    *&v41 = v14;
    LODWORD(v49) = 2139095040;
    v15 = 2 * (v10 != -1);
    if (v10 == -1)
    {
      v16 = v13;
    }

    else
    {
      v16 = -1;
    }

    if (*&v41 == INFINITY)
    {
      v15 = 4;
    }

    v10 = v14 == INFINITY ? v10 : v16;
    if ((v15 | 4) != 4)
    {
      break;
    }

    if (v44)
    {
      (*(*v44 + 32))(v44);
    }

    else
    {
      LODWORD(v46) = v46 + 1;
    }
  }

  v12 = v44;
LABEL_24:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_26:
  if (v10 == -1)
  {
    goto LABEL_29;
  }

  LODWORD(v44) = (*(*a1 + 32))(a1, v10);
  LODWORD(v41) = 0;
  if (*&v44 != 0.0)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v44 = &v49;
    v45 = 0;
    v46 = 0;
    v47 = &v52;
    fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, &v44, 0);
  }

  v17 = 0;
  v18 = 0;
LABEL_31:
  LODWORD(v43) = 0;
  (*(*a1 + 128))(a1, &v41);
  while (2)
  {
    if (!v41)
    {
      if (v43 >= v42)
      {
        goto LABEL_81;
      }

      goto LABEL_37;
    }

    if (!(*(*v41 + 16))(v41))
    {
      if (v41)
      {
        v19 = (*(*v41 + 24))();
LABEL_38:
        v20 = v19 + v18;
        while ((*(*a2 + 160))(a2) <= v20)
        {
          (*(*a2 + 200))(a2);
        }

        if (v19 == v40)
        {
          (*(*a2 + 184))(a2, (v19 + v18), 0.0);
        }

        v21.n128_f32[0] = (*(*a1 + 32))(a1, v19);
        LODWORD(v44) = v21.n128_u32[0];
        LODWORD(v49) = 2139095040;
        v22.n128_u32[0] = v21.n128_u32[0];
        v23 = v17 ^ 1;
        if (v21.n128_f32[0] == INFINITY)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          v44 = 0;
          LODWORD(v45) = v21.n128_u32[0];
          HIDWORD(v45) = v19 + v18;
          v21.n128_f64[0] = (*(*a2 + 208))(a2, 0, &v44);
        }

        v48 = 0;
        (*(*a1 + 136))(a1, v19, &v44, v21, v22);
LABEL_48:
        if (v44)
        {
          if ((*(*v44 + 24))(v44))
          {
            if (v44)
            {
              (*(*v44 + 8))();
              goto LABEL_76;
            }

LABEL_74:
            if (v47)
            {
              --*v47;
            }

LABEL_76:
            if (v41)
            {
              (*(*v41 + 32))(v41);
            }

            else
            {
              LODWORD(v43) = v43 + 1;
            }

            continue;
          }

          if (v44)
          {
            v24 = (*(*v44 + 32))();
LABEL_54:
            v25 = (*(v24 + 12) + v18);
            v26 = *(v24 + 8);
            if (v25 == v10)
            {
              v27 = v17;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              v28 = *(v24 + 8);
            }

            else
            {
              v29 = (*(*a1 + 32))(a1, v10);
              v28 = 2143289344;
              if (v29 != -INFINITY && v26 != -INFINITY)
              {
                v28 = 2139095040;
                v30 = v29 == INFINITY || v26 == INFINITY;
                v31 = v26 + v29;
                if (!v30)
                {
                  *&v28 = v31;
                }
              }
            }

            v49 = *v24;
            v50 = __PAIR64__(v20, v28);
            while (1)
            {
              v32 = (*(*a2 + 160))(a2);
              v33 = *a2;
              if (v32 > v25)
              {
                break;
              }

              (*(v33 + 200))(a2);
            }

            (*(v33 + 208))(a2, v25, &v49);
            if (v44)
            {
              (*(*v44 + 40))(v44);
            }

            else
            {
              ++v48;
            }

            goto LABEL_48;
          }
        }

        else if (v48 >= v46)
        {
          goto LABEL_74;
        }

        v24 = v45 + 16 * v48;
        goto LABEL_54;
      }

LABEL_37:
      v19 = v43;
      goto LABEL_38;
    }

    break;
  }

  if (v41)
  {
    (*(*v41 + 8))();
  }

LABEL_81:
  (*(*a2 + 176))(a2, v10);
  if (v10 == v40)
  {
    v34 = v17;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    (*(*a1 + 32))(a1, v40);
    (*(*a2 + 184))(a2, v40);
  }

  v35 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v36 = v52;
  v37 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v38 = fst::ReverseProperties(v36 | v35, v17);
  return (*(*a2 + 192))(a2, v37 | v38, 0x3FFFFFFF0007);
}

void sub_1B517AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 136);
  if (v22)
  {
    *(v20 - 128) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<fst::TropicalWeightTpl<float>>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<fst::TropicalWeightTpl<float>>::emplace_back<fst::TropicalWeightTpl<float> const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1B517B1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::NShortestPath<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, int a5, int a6, float a7, float a8)
{
  v86 = *MEMORY[0x1E69E9840];
  v77 = a8;
  if (!a4)
  {
    return;
  }

  if ((a6 & 1) != 0 && (*(*a1 + 64))(a1, 0x400000000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v81, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v81, "ERROR");
    }

    v16 = fst::LogMessage::LogMessage(v78, &v81);
    v17 = fst::cerr(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "NShortestPath: FST has a cycle and include_final_ties was set to true. This is not currently supported.", 103);
    fst::LogMessage::~LogMessage(v78);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(v81);
    }

    (*(*a2 + 192))(a2, 4, 4);
    return;
  }

  (*(*a2 + 224))(a2);
  v18 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v18);
  v19 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v19);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  __p = 0;
  v69 = 0;
  v70 = 0;
  if ((*(*a1 + 24))(a1) != -1)
  {
    v22 = *a3;
    v21 = a3[1];
    if ((*(*a1 + 24))(a1) < ((v21 - v22) >> 2))
    {
      LODWORD(v81) = *(*a3 + 4 * (*(*a1 + 24))(a1));
      LODWORD(v78[0]) = 2139095040;
      v20.n128_u32[0] = v81;
      if (*&v81 != INFINITY)
      {
        LODWORD(v62) = 0;
        if (!fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v67, &v77, &v62))
        {
          if (a5)
          {
            v23 = (*(*a2 + 200))(a2);
            (*(*a2 + 176))(a2, v23);
            v66 = (*(*a2 + 200))(a2);
            (*(*a2 + 184))(a2, 0.0);
            while (v66 >= ((v75 - v74) >> 3))
            {
              v81 = 0x7F800000FFFFFFFFLL;
              std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v74, &v81);
            }

            v24 = (*(*a1 + 24))(a1);
            v25 = v74 + 8 * v66;
            *v25 = v24;
            v25[1] = 0;
            std::vector<int>::push_back[abi:ne200100](&v71, &v66);
            v59 = a6;
            v26 = *(*a3 + 4 * (*(*a1 + 24))(a1));
            v27 = NAN;
            if (v26 != -INFINITY)
            {
              v27 = NAN;
              if (v77 != -INFINITY)
              {
                v27 = INFINITY;
                v28 = v77 == INFINITY || v26 == INFINITY;
                v29 = v26 + v77;
                if (!v28)
                {
                  v27 = v29;
                }
              }
            }

            v65 = v27;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v31 = v71;
            v30 = v72;
            if (v71 == v72)
            {
LABEL_116:
              fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
            }

            v58 = 0;
            while (1)
            {
              v81 = &v74;
              v82 = a3;
              LODWORD(v83) = -1;
              *(&v83 + 1) = a7;
              v32 = (v30 - v31) >> 2;
              if (v32 >= 2)
              {
                v33 = *v31;
                v34 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v31, &v81, v32);
                v35 = (v30 - 4);
                if (v30 - 4 == v34)
                {
                  *v34 = v33;
                }

                else
                {
                  *v34 = *v35;
                  *v35 = v33;
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v31, (v34 + 1), &v81, v34 + 1 - v31);
                }
              }

              v36 = *(v72 - 1);
              v37 = (v74 + 8 * v36);
              v38 = v37[1];
              v39 = *v37;
              --v72;
              if (v39 == -1)
              {
                v40 = 0.0;
              }

              else if (v39 >= (a3[1] - *a3) >> 2)
              {
                v40 = INFINITY;
              }

              else
              {
                v40 = *(*a3 + 4 * v39);
                v41 = NAN;
                if (v40 == -INFINITY)
                {
                  goto LABEL_35;
                }
              }

              v41 = NAN;
              if (v38 != -INFINITY)
              {
                v41 = INFINITY;
                v42 = v40 == INFINITY || v38 == INFINITY;
                v43 = v40 + v38;
                if (!v42)
                {
                  v41 = v43;
                }
              }

LABEL_35:
              *&v81 = v41;
              if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()(&v67, &v65, &v81) || a5 != -1 && (*(*a2 + 160))(a2) >= a5)
              {
                goto LABEL_41;
              }

              v44 = v39 + 1;
              while (v44 >= (v69 - __p) >> 2)
              {
                LODWORD(v81) = 0;
                std::vector<int>::push_back[abi:ne200100](&__p, &v81);
              }

              if (v59)
              {
                if (v44 >= (v63 - v62) >> 2)
                {
                  do
                  {
                    LODWORD(v81) = 2139095040;
                    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](&v62, &v81);
                  }

                  while (v44 >= (v63 - v62) >> 2);
                  v45 = *(__p + v44) + 1;
                  *(__p + v44) = v45;
                  if (v39 != -1)
                  {
LABEL_50:
                    if (v45 == a4)
                    {
                      *(v62 + v44) = v38;
                    }

                    else if (v45 > a4)
                    {
                      v49 = *(v62 + v44);
                      if (v49 > (v38 + 0.00097656) || (v49 + 0.00097656) < v38)
                      {
                        goto LABEL_41;
                      }
                    }

LABEL_71:
                    v85 = 0;
                    (*(*a1 + 136))(a1, v39, &v81);
                    while (2)
                    {
                      if (v81)
                      {
                        if ((*(*v81 + 24))(v81))
                        {
                          if (v81)
                          {
                            (*(*v81 + 8))();
                          }

                          else
                          {
LABEL_91:
                            if (v84)
                            {
                              --*v84;
                            }
                          }

                          v55 = (*(*a1 + 32))(a1, v39);
                          *&v81 = v55;
                          LODWORD(v78[0]) = 2139095040;
                          if (v55 != INFINITY)
                          {
                            v56 = NAN;
                            if (v38 != -INFINITY && v55 != -INFINITY)
                            {
                              if (v55 == INFINITY || v38 == INFINITY)
                              {
                                v56 = INFINITY;
                              }

                              else
                              {
                                v56 = v55 + v38;
                              }
                            }

                            LODWORD(v78[0]) = (*(*a2 + 200))(a2);
                            LODWORD(v81) = -1;
                            *(&v81 + 1) = v56;
                            std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v74, &v81);
                            v81 = 0;
                            v82 = __PAIR64__(v36, LODWORD(v55));
                            (*(*a2 + 208))(a2, LODWORD(v78[0]), &v81);
                            std::vector<int>::push_back[abi:ne200100](&v71, v78);
                            v81 = &v74;
                            v82 = a3;
                            LODWORD(v83) = -1;
                            *(&v83 + 1) = a7;
                            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v71, v72, &v81, (v72 - v71) >> 2);
                          }

                          goto LABEL_41;
                        }

                        if (v81)
                        {
                          v51 = (*(*v81 + 32))();
                          goto LABEL_78;
                        }
                      }

                      else if (v85 >= v83)
                      {
                        goto LABEL_91;
                      }

                      v51 = &v82[2 * v85];
LABEL_78:
                      v52 = *v51;
                      v61 = *v51;
                      v53 = NAN;
                      if (v38 != -INFINITY && *(&v52 + 2) != -INFINITY)
                      {
                        if (*(&v52 + 2) == INFINITY || v38 == INFINITY)
                        {
                          v53 = INFINITY;
                        }

                        else
                        {
                          v53 = *(&v52 + 2) + v38;
                        }
                      }

                      v60 = (*(*a2 + 200))(a2);
                      v78[0] = __PAIR64__(LODWORD(v53), HIDWORD(v61));
                      std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v74, v78);
                      HIDWORD(v61) = v36;
                      (*(*a2 + 208))(a2, v60, &v61);
                      std::vector<int>::push_back[abi:ne200100](&v71, &v60);
                      v78[0] = &v74;
                      v78[1] = a3;
                      v79 = -1;
                      v80 = a7;
                      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(v71, v72, v78, (v72 - v71) >> 2);
                      if (v81)
                      {
                        (*(*v81 + 40))(v81);
                      }

                      else
                      {
                        ++v85;
                      }

                      continue;
                    }
                  }
                }

                else
                {
                  v45 = *(__p + v44) + 1;
                  *(__p + v44) = v45;
                  if (v39 != -1)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else
              {
                v46 = *(__p + v44) + 1;
                *(__p + v44) = v46;
                if (v39 != -1)
                {
                  if (v46 > a4)
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_71;
                }
              }

              if (v58 && ((v8 + 0.00097656) < v38 || v8 > (v38 + 0.00097656)))
              {
                goto LABEL_116;
              }

              v48 = (*(*a2 + 24))(a2);
              v81 = 0;
              LODWORD(v82) = 0;
              HIDWORD(v82) = v36;
              (*(*a2 + 208))(a2, v48, &v81);
              if (v58)
              {
                v58 = 1;
                goto LABEL_41;
              }

              v58 = *(__p + v44) == a4;
              if (*(__p + v44) == a4)
              {
                v8 = v38;
                if ((v59 & 1) == 0)
                {
                  goto LABEL_116;
                }
              }

LABEL_41:
              v31 = v71;
              v30 = v72;
              if (v71 == v72)
              {
                goto LABEL_116;
              }
            }
          }
        }
      }
    }
  }

  if ((*(*a1 + 64))(a1, 4, 0, v20))
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_1B517BF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    result = (*(**a1 + 64))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v7 = a1 + 116;
LABEL_88:
    *v7 = 1;
    return result;
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

  v4 = a1[1];
  for (i = *v4; a2 >= ((v4[1] - *v4) >> 2); i = *v4)
  {
    LODWORD(v38[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v4, v38);
    LODWORD(v38[0]) = 2139095040;
    std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), v38);
    LOBYTE(v38[0]) = 0;
    std::vector<BOOL>::push_back((a1 + 8), v38);
    v4 = a1[1];
  }

  if (*(a1 + 33) == 1)
  {
    v6 = a1[11];
    if (a2 >= ((a1[12] - v6) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        v6 = a1[11];
      }

      while (a2 >= ((a1[12] - v6) >> 2));
      i = *a1[1];
    }

    *(v6 + 4 * a2) = *(a1 + 28);
  }

  *(i + 4 * a2) = 0;
  *(a1[5] + 4 * a2) = 0;
  *(a1[8] + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), a2);
  v7 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_87;
    }

    v8 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v9 = a1[1];
      if (v8 < ((v9[1] - *v9) >> 2))
      {
        break;
      }

      LODWORD(v38[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v9, v38);
      LODWORD(v38[0]) = 2139095040;
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), v38);
      LOBYTE(v38[0]) = 0;
      std::vector<BOOL>::push_back((a1 + 8), v38);
    }

    if (*(a1 + 32) == 1)
    {
      LODWORD(v38[0]) = (*(**a1 + 32))(*a1, v8);
      v41 = 2139095040;
      if (*v38 != INFINITY)
      {
LABEL_87:
        ++*(a1 + 28);
        result = (*(**a1 + 64))(*a1, 4, 0);
        if (!result)
        {
          return result;
        }

        goto LABEL_88;
      }
    }

    *(a1[8] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
    v10 = a1[5];
    v11 = *(v10 + 4 * v8);
    *(v10 + 4 * v8) = 2139095040;
    v12 = *a1;
    v40 = 0;
    (*(*v12 + 136))(v12, v8, v38);
    while (1)
    {
      if (v38[0])
      {
        if ((*(*v38[0] + 24))(v38[0]))
        {
          goto LABEL_77;
        }

        if (v38[0])
        {
          v13 = (*(*v38[0] + 32))(v38[0]);
          goto LABEL_27;
        }
      }

      else if (v40 >= v38[2])
      {
LABEL_77:
        v36 = 1;
        goto LABEL_79;
      }

      v13 = v38[1] + 16 * v40;
LABEL_27:
      v14 = a1[1];
      for (j = *(v13 + 12); j >= (v14[1] - *v14) >> 2; j = *(v13 + 12))
      {
        v41 = 2139095040;
        std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v14, &v41);
        v41 = 2139095040;
        std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100]((a1 + 5), &v41);
        LOBYTE(v41) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v41);
        v14 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v16 = a1[11];
          LODWORD(j) = *(v13 + 12);
          if (j < ((a1[12] - v16) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        v14 = a1[1];
        if (*(v16 + 4 * j) != *(a1 + 28))
        {
          *(*v14 + 4 * j) = 2139095040;
          *(a1[5] + 4 * *(v13 + 12)) = 2139095040;
          v17 = *(v13 + 12);
          *(a1[8] + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v17);
          *(a1[11] + 4 * v17) = *(a1 + 28);
          v14 = a1[1];
          LODWORD(j) = *(v13 + 12);
        }
      }

      v18 = *v14;
      v19 = a1[5];
      v20 = NAN;
      if (v11 != -INFINITY)
      {
        v21 = *(v13 + 8);
        v20 = NAN;
        if (v21 != -INFINITY)
        {
          v20 = INFINITY;
          v22 = v21 == INFINITY || v11 == INFINITY;
          v23 = v11 + v21;
          if (!v22)
          {
            v20 = v23;
          }
        }
      }

      v24 = *(v18 + 4 * j);
      if (v24 >= v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = *(v18 + 4 * j);
      }

      if (v20 == -INFINITY || v24 == -INFINITY)
      {
        v25 = NAN;
      }

      v28 = *(a1 + 7);
      if (v25 > (v24 + v28) || v24 > (v28 + v25))
      {
        break;
      }

LABEL_74:
      if (v38[0])
      {
        (*(*v38[0] + 40))(v38[0]);
      }

      else
      {
        ++v40;
      }
    }

    *(v18 + 4 * j) = v25;
    v30 = *(v19 + 4 * j);
    if (v30 >= v20)
    {
      v31 = v20;
    }

    else
    {
      v31 = *(v19 + 4 * j);
    }

    v33 = v20 == -INFINITY || v30 == -INFINITY;
    v34 = NAN;
    if (!v33)
    {
      v34 = v31;
    }

    *(v19 + 4 * j) = v34;
    if (*(v18 + 4 * j) != -INFINITY && (v34 < -INFINITY || v34 > -INFINITY))
    {
      v35 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v13 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v13 + 12)))
      {
        (*(v35 + 40))();
      }

      else
      {
        (*(v35 + 24))();
        *(a1[8] + ((*(v13 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v13 + 12);
      }

      goto LABEL_74;
    }

    v36 = 0;
    *v7 = 1;
LABEL_79:
    result = v38[0];
    if (v38[0])
    {
      result = (*(*v38[0] + 8))(v38[0]);
    }

    else if (v39)
    {
      --*v39;
    }
  }

  while ((v36 & 1) != 0);
  return result;
}

void sub_1B517C940(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a12)
  {
    --*a12;
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::TropicalWeightTpl<float>>::resize(void *result, unint64_t a2, _DWORD *a3)
{
  v3 = (result[1] - *result) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<fst::TropicalWeightTpl<float>>::__append(result, a2 - v3, a3);
  }
}

void std::vector<fst::TropicalWeightTpl<float>>::__append(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 2)
  {
    if (a2)
    {
      v12 = 4 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 4;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = v6 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v11);
    }

    v14 = 4 * v9;
    v15 = 4 * v9 + 4 * a2;
    v16 = 4 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 4;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void *fst::ShortestDistanceState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ShortestDistanceState(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  return a1;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

unint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    operator new();
  }

  return a1;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetFinal(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a2;
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::SetFinal(v6, v4, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddArc(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = a2;
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::AddArc(v6, v4, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(v4, a2);
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D01850;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D017A0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B517D648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_1F2D01818;
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

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~FstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D01850;
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

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Write(uint64_t a1)
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

void sub_1B517D948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B517DA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::operator=(uint64_t a1)
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

void sub_1B517DB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D01850;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2D017A0;
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
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a2);
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
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddState(a1);
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

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1)
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

void sub_1B517E348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>();
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddArc(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    ++*(a1 + 8);
  }

  if (!*(a2 + 4))
  {
    ++*(a1 + 16);
  }

  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](a1 + 24, a2);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a2, a3, 1);
  }
}

void sub_1B517E4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = -1431699456;
  v9 = 1431633920;
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = v10;
  if (!a4 || (v12 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7, (a2 & ~v12) != 0))
  {
    v11 = v10 & 7;
    v48 = v11;
    v13 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v13)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &v43, 0);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v14 = a2 & 0xC0000;
      v15 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v15 = 0x10425A850000;
      }

      v16 = v11 | v15;
      v17 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v16 |= 0x100000uLL;
      }

      v48 = v16;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*a1 + 128))(a1, &v38);
      v18 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v19 = (*(*v38 + 24))();
LABEL_18:
            v20 = (*(*a1 + 40))(a1, v19);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v14)
            {
              std::vector<int>::reserve(&v42, v20);
            }

            if (v17)
            {
              std::vector<int>::reserve(&v41, v20);
            }

            v47 = 0;
            (*(*a1 + 136))(a1, v19, &v43);
            v21 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_62;
                  }

LABEL_60:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_62:
                  if (v14 && (std::__sort<std::__less<int,int> &,int *>(), v29 = v42.__end_ - v42.__begin_, v29 >= 2))
                  {
                    v30 = v29 - 1;
                    v31 = v42.__begin_ + 1;
                    while (*v31 != *(v31 - 1))
                    {
                      ++v31;
                      if (!--v30)
                      {
                        goto LABEL_67;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v17)
                    {
LABEL_76:
                      if (v18 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      v35 = (*(*a1 + 32))(a1, v19);
                      *&v43 = v35;
                      v50 = 2139095040;
                      if (v35 == INFINITY)
                      {
                        if ((*(*a1 + 40))(a1, v19, INFINITY, v35) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        *&v43 = v35;
                        v50 = 0;
                        if (v35 != 0.0)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v18;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_67:
                    if (!v17)
                    {
                      goto LABEL_76;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v32 = v41.__end_ - v41.__begin_;
                  if (v32 >= 2)
                  {
                    v33 = v32 - 1;
                    v34 = v41.__begin_ + 1;
                    while (*v34 != *(v34 - 1))
                    {
                      ++v34;
                      if (!--v33)
                      {
                        goto LABEL_76;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_76;
                }

                if (v43)
                {
                  v22 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_60;
              }

              v22 = v44 + 16 * v47;
LABEL_29:
              v23 = *v22;
              v24 = (v22 + 4);
              v25 = *v22;
              if (*v22 != *(v22 + 4))
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v25 = *v24;
              }

              if (v23 | v25)
              {
                if (v23)
                {
                  if (!v25)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_35;
                }

                v26 = v48;
              }

              else
              {
                v26 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v26 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v25)
              {
LABEL_39:
                v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_35:
              if (v21)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v23 < v9)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v25 < v8)
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v27 = *(v22 + 8);
              v50 = LODWORD(v27);
              v49 = 0;
              if (v27 != 0.0)
              {
                v50 = LODWORD(v27);
                v49 = 2139095040;
                if (v27 != INFINITY)
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v28 = *(v22 + 12);
              if (v28 <= v19)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v28 != v19 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v9 = *v22;
              v8 = *(v22 + 4);
              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v22);
              }

              if (v17)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v24);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43);
                v21 = 0;
              }

              else
              {
                v21 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v19 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*a1 + 24))(a1) != -1 && (*(*a1 + 24))(a1))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v11 = v48;
    }

    v12 = v11 & 0x3FFFFFFF0000 | (2 * v11) & 0x2AAAAAAA0000 | (v11 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v12;
  return v11;
}

void sub_1B517ECB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B517F528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v15 = *(v13 - 112);
  if (v15)
  {
    *(v13 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D019C8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 8));
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D019C8;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena((a1 + 8));

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D01A08;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B517FA7C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena(quasar::Bitmap *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D01A08;
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

void std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v9);
}

void sub_1B517FD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v24);
  if (v24 || (a4 & 1) != 0)
  {
    v11 = (*(*a2 + 40))(a2, a3);
    v12 = a5;
    if (!a4)
    {
      v12 = 0;
    }

    v13 = v11 + v12;
    if (*(a1 + 8) < (v11 + v12))
    {
      if (*a1)
      {
        free(*a1);
      }

      v23 = 0x4000;
      if (v13 > 0x4000)
      {
        v23 = v13;
      }

      *(a1 + 8) = v23;
      v15 = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
      *a1 = v15;
      *(a1 + 16) = v15;
      v14 = v15;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
    }

    *(a1 + 24) = &v14[v13];
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    if (v27)
    {
      ++*v27;
    }

    v20 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = (*(*v16 + 24))(v16);
      v22 = *v16;
      if (v21)
      {
        break;
      }

      *v15 = *(*(v22 + 32))(v16);
      (*(*v16 + 40))(v16);
      while (1)
      {
        ++v15;
        if (v16)
        {
          break;
        }

LABEL_15:
        if (v20 >= v19)
        {
          if (v18)
          {
            --*v18;
          }

          return;
        }

        *v15 = *(v17 + 16 * v20++);
      }
    }

    (*(v22 + 8))(v16);
  }

  else
  {
    v10 = v25 + 16 * v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>(void *a1, void *a2, uint64_t **a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  v6 = -1;
  v35 = 0;
  v36 = 0;
  v34 = -1;
  v34 = (*(*a1 + 24))(a1);
  v35 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v35 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v38;
    if (v38 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v28, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = a3[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_27:
    fst::LogMessage::~LogMessage(&v28);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v35 == v12)
    {
      updated = 1;
      goto LABEL_30;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v28, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v35 = v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(v30[0]);
  }

  return updated;
}

void sub_1B518054C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7, a2);
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t **a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  MEMORY[0x1B8C84B80](v32);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    __p = 0u;
    v35 = 0u;
    v42 = a8;
    (*(*v17 + 40))(v33);
    if (v33[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B8C84B90](v32);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v33, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = a3[1];
    }
  }

  else
  {
    fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v33, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = a3[1];
      }
    }

    else
    {
      MEMORY[0x1B8C84B80](v33, a2);
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v42 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x1B8C84B90](v33);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v33, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = a3[1];
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v33);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::WriteFile(fst *a1, uint64_t a2)
{
  v2 = a2;
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      a2 = *a2;
LABEL_6:
      std::ofstream::basic_ofstream(&v20, a2, 20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
        v7 = *(v2 + 23);
        if (v7 >= 0)
        {
          v8 = v2;
        }

        else
        {
          v8 = *v2;
        }

        if (v7 >= 0)
        {
          v9 = *(v2 + 23);
        }

        else
        {
          v9 = *(v2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (*(v2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
        }

        else
        {
          __p = *v2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v20.__r_.__value_.__r.__words + *(v20.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](&v20.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v25);
      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_6;
  }

  v11 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1B5180FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ofstream::~ofstream(&a21, MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C85200](&a65);
  _Unwind_Resume(a1);
}

unint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::SetFinal(void *a1, int a2, float a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *v5;
  *v5 = a3;
  v7 = (*(*a1 + 24))(a1);
  result = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v7, v6, a3);
  a1[1] = a1[1] & 4 | result;
  return result;
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AddArc(v9, a3);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  v5 = (*(a1 + 72) - *(a1 + 64)) >> 3;
  v35 = 0;
  std::vector<int>::vector[abi:ne200100](__p, v5, &v35);
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = v7 >> 2;
    v9 = __p[0];
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      v9[v10] = -1;
      --v8;
    }

    while (v8);
  }

  v11 = *(a1 + 64);
  if (*(a1 + 72) == v11)
  {
    v14 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (*(__p[0] + v12) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Destroy(*(v11 + 8 * v12));
      }

      else
      {
        *(__p[0] + v12) = v13;
        if (v12 != v13)
        {
          *(v11 + 8 * v13) = *(v11 + 8 * v12);
        }

        ++v13;
      }

      ++v12;
      v11 = *(a1 + 64);
    }

    while (v12 < (*(a1 + 72) - v11) >> 3);
    v14 = v13;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v14);
  v15 = *(a1 + 64);
  if (*(a1 + 72) != v15)
  {
    v16 = 0;
    do
    {
      v17 = *(v15 + 8 * v16);
      v19 = *(v17 + 24);
      v18 = *(v17 + 32);
      v20 = *(v17 + 8);
      v21 = v18 - v19;
      if (v18 == v19)
      {
        v27 = 0;
        v28 = v21 >> 4;
        v29 = *(v17 + 16);
        v30 = *(v17 + 8);
      }

      else
      {
        v22 = 0;
        v27 = 0;
        v23 = *(v17 + 24);
        do
        {
          v24 = *(__p[0] + *(v23 + 12));
          if (v24 == -1)
          {
            v25.i64[0] = *v23;
            v25.i64[1] = HIDWORD(*v23);
            v20 = vaddq_s64(v20, vceqzq_s64(v25));
          }

          else
          {
            *(v23 + 12) = v24;
            if (v22 != v27)
            {
              *(v19 + 16 * v27) = *v23;
              v15 = *v4;
            }

            ++v27;
          }

          v17 = *(v15 + 8 * v16);
          ++v22;
          v26 = *(v17 + 32) - *(v17 + 24);
          v23 += 16;
        }

        while (v22 < v26 >> 4);
        v28 = v26 >> 4;
        v29 = v20.i64[1];
        v30 = v20.i64[0];
      }

      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(v17, v28 - v27);
      v15 = *(a1 + 64);
      v31 = *(a1 + 72);
      v32 = *(v15 + 8 * v16);
      *(v32 + 8) = v30;
      *(v32 + 16) = v29;
      ++v16;
    }

    while (v16 < (v31 - v15) >> 3);
  }

  v33 = *(a1 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(a1 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_1B5181378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -16 * a2;
    v4 = (v2 - 16);
    v5 = (v2 - 16);
    do
    {
      v6 = *v5;
      v5 -= 4;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

void fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::SetValue(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = v4[3] + 16 * v5;
  v7 = *v6;
  v8 = *(v6 + 4);
  if (*v6 != v8)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v7)
  {
    if (!v8)
    {
      v9 = *(a1 + 16);
      v10 = *v9;
LABEL_8:
      *v9 = v10 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v11 = *v9;
    *v9 &= ~0x1000000uLL;
    if (!v8)
    {
      v10 = v11 & 0xFFFFFFFFFEBFFFFFLL;
      *v9 = v10;
      goto LABEL_8;
    }
  }

  if (*(v6 + 8) != INFINITY && *(v6 + 8) != 0.0)
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  v12 = 0x30FC30007;
  v13 = a2->n128_u32[0] == v7 && a2->n128_u32[1] == v8;
  if (v13 && a2->n128_u32[3] == *(v6 + 12))
  {
    v12 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetArc(v4, a2, v5);
  v14 = a2->n128_u32[0];
  v15 = a2->n128_u32[1];
  if (a2->n128_u32[0] != v15)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v14)
  {
    if (!v15)
    {
      v16 = *(a1 + 16);
      v17 = *v16;
LABEL_26:
      *v16 = v17 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v16 = *(a1 + 16);
    v18 = *v16 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v16 = v18;
    if (!v15)
    {
      v17 = v18 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v16 = v17;
      goto LABEL_26;
    }
  }

  if (a2->n128_f32[2] != INFINITY && a2->n128_f32[2] != 0.0)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  **(a1 + 16) &= v12;
}

__n128 fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetArc(void *a1, __n128 *a2, uint64_t a3)
{
  v3 = (a1[3] + 16 * a3);
  if (!v3->n128_u32[0])
  {
    --a1[1];
  }

  if (!v3->n128_u32[1])
  {
    --a1[2];
  }

  if (!a2->n128_u32[0])
  {
    ++a1[1];
  }

  if (!a2->n128_u32[1])
  {
    ++a1[2];
  }

  result = *a2;
  *v3 = *a2;
  return result;
}

void std::__split_buffer<fst::TropicalWeightTpl<float>>::emplace_back<fst::TropicalWeightTpl<float> const&>(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 4;
}

void fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, v1, 0);
}

void sub_1B5181918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v12 - 80);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(int *a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>> &,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a3, *v8, *(a2 - 4));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t fst::ShortestPathCompare<int,fst::TropicalWeightTpl<float>>::operator()(uint64_t **a1, int a2, int a3)
{
  v4 = **a1;
  v5 = (v4 + 8 * a2);
  v6 = (v4 + 8 * a3);
  v7 = *v5;
  v8 = *(a1 + 4);
  v9 = 0.0;
  v10 = 0.0;
  if (v7 != v8)
  {
    v11 = *a1[1];
    if (v7 >= (a1[1][1] - v11) >> 2)
    {
      v10 = INFINITY;
    }

    else
    {
      v10 = *(v11 + 4 * v7);
    }
  }

  v12 = *v6;
  if (v12 != v8)
  {
    v13 = *a1[1];
    if (v12 >= (a1[1][1] - v13) >> 2)
    {
      v9 = INFINITY;
    }

    else
    {
      v9 = *(v13 + 4 * v12);
    }
  }

  v14 = NAN;
  if (v10 != -INFINITY)
  {
    v15 = v5[1];
    v14 = NAN;
    if (v15 != -INFINITY)
    {
      v14 = INFINITY;
      v16 = v15 == INFINITY || v10 == INFINITY;
      v17 = v10 + v15;
      if (!v16)
      {
        v14 = v17;
      }
    }
  }

  v33 = v14;
  v18 = NAN;
  if (v9 != -INFINITY)
  {
    v19 = v6[1];
    v18 = NAN;
    if (v19 != -INFINITY)
    {
      v18 = INFINITY;
      v20 = v19 == INFINITY || v9 == INFINITY;
      v21 = v9 + v19;
      if (!v20)
      {
        v18 = v21;
      }
    }
  }

  v32 = v18;
  if (v7 != v8 || v12 == v8)
  {
    v24 = v7 == v8 || v12 != v8;
    v25 = fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()((a1 + 3), &v32, &v33);
    v26 = v24 && v25;
    if (!v24 && v25)
    {
      v27 = *(a1 + 5);
      v26 = v32 > (v27 + v33);
      if (v33 > (v27 + v32))
      {
        v26 = 1;
      }
    }
  }

  else if (fst::NaturalLess<fst::TropicalWeightTpl<float>>::operator()((a1 + 3), &v32, &v33))
  {
    v26 = 1;
  }

  else
  {
    v28 = *(a1 + 5);
    v30 = v33 > (v28 + v32);
    v29 = v28 + v33;
    v30 = v30 || v32 > v29;
    v26 = !v30;
  }

  return v26 & 1;
}

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeterminizeFst<fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F2D01AF8;
  a1[1] = 0;
  if (!(*(*a2 + 64))(a2, 0x10000, 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DeterminizeFst:", 15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " distance to final states computed for acceptors only", 53);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1[1] + 8) |= 4uLL;
  }

  operator new();
}

void sub_1B5181E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(v18);
  _Unwind_Resume(a1);
}

_DWORD *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetImpl(uint64_t a1, uint64_t a2, char a3)
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

void *fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D01BD8;
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

void fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~DeterminizeFst(void *a1)
{
  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

unint64_t fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void sub_1B5182440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~DeterminizeFstImplBase(void *a1)
{
  *a1 = &unk_1F2D01D40;
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~CacheBaseImpl(a1);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::Expand(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(a1, a2, v4 + 5);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  std::__tree<int>::destroy(&v8, v9[0]);
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeStart(uint64_t a1)
{
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  if (result != -1)
  {
    operator new();
  }

  return result;
}

float fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeFinal(uint64_t a1, int a2)
{
  v2 = **(*(*(a1 + 184) + 88) + 8 * a2);
  if (!v2)
  {
    return INFINITY;
  }

  v4 = INFINITY;
  do
  {
    (*(**(a1 + 136) + 32))(*(a1 + 136), *(v2 + 2));
    v6 = v2[3];
    v7 = NAN;
    if (v6 != -INFINITY && v5 != -INFINITY)
    {
      v8 = v5 == INFINITY || v6 == INFINITY;
      v9 = v6 + v5;
      if (v8)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v9;
      }
    }

    if (v4 >= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }

    if (v7 == -INFINITY || v4 == -INFINITY)
    {
      v4 = NAN;
    }

    else
    {
      v4 = v10;
    }

    if (v4 >= -INFINITY && v4 <= -INFINITY)
    {
      *(a1 + 8) |= 4uLL;
    }

    v2 = *v2;
  }

  while (v2);
  return v4;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D01850;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D01D98;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

void sub_1B5182C24(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::VectorCacheStore(void *a1, _BYTE *a2)
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

void sub_1B5182CF8(_Unwind_Exception *a1)
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D01D98;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~FstImpl(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~VectorCacheStore(void *a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Clear(a1);
  std::__list_imp<char *>::clear(a1 + 4);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::CompactHashBiTable(void *a1, size_t a2)
{
  a1[1] = a1;
  a1[2] = a1;
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set((a1 + 3), a2, a1 + 1, a1 + 2);
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (a2)
  {
    std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(a1 + 10, a2);
  }

  return a1;
}

void sub_1B5182E40(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::~DeterminizeFsaImpl(void *a1)
{
  *a1 = &unk_1F2D01C88;
  v2 = a1[22];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x20C4093837F09);
  }

  v3 = a1[23];
  if (v3)
  {
    v4 = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(v3);
    MEMORY[0x1B8C85350](v4, 0x10E0C400200E20DLL);
  }

  return fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~DeterminizeFstImplBase(a1);
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::~DefaultDeterminizeStateTable(uint64_t a1)
{
  v4 = a1 + 88;
  v2 = *(a1 + 88);
  v3 = *(v4 + 8);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *v6;
        if (*v6)
        {
          do
          {
            v8 = *v7;
            operator delete(v7);
            v7 = v8;
          }

          while (v8);
        }

        *v6 = 0;
        MEMORY[0x1B8C85350](v6, 0x1020C405F07FB98);
        v2 = *(a1 + 88);
        v3 = *(a1 + 96);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 32);
  return a1;
}

void sub_1B51831BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~DeterminizeFstImplBase(v18);
  _Unwind_Resume(a1);
}

void sub_1B518334C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D01850;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D01D98;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void sub_1B5183508(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 80) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::CopyStates(void *a1, uint64_t a2)
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

uint64_t fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CacheState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>((a1 + 24), v4, v5, v5 - v4);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t *std::vector<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>,std::__wrap_iter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5183810(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::GetLabelMap(void *result, int a2, void *a3)
{
  v5 = **(*(result[23] + 88) + 8 * a2);
  if (v5)
  {
    while (1)
    {
      v6 = *(v5 + 2);
      v7 = result[17];
      v22 = 0;
      (*(*v7 + 136))(v7, v6, v20);
      if (!v20[0])
      {
        break;
      }

      if (!(*(*v20[0] + 24))(v20[0]))
      {
        if (v20[0])
        {
          v8 = (*(*v20[0] + 32))();
        }

        else
        {
LABEL_7:
          v8 = v20[1] + 16 * v22;
        }

        v9 = v5[3];
        v10 = NAN;
        if (v9 != -INFINITY)
        {
          v11 = *(v8 + 8);
          v10 = NAN;
          if (v11 != -INFINITY)
          {
            v10 = INFINITY;
            v12 = v11 == INFINITY || v9 == INFINITY;
            v13 = v9 + v11;
            if (!v12)
            {
              v10 = v13;
            }
          }
        }

        LODWORD(v19) = *(v8 + 12);
        *(&v19 + 1) = v10;
        fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FilterArc(result[22], v8, (v5 + 2), &v19, a3);
      }

      if (!v20[0])
      {
        goto LABEL_18;
      }

      (*(*v20[0] + 8))();
LABEL_20:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    if (v22 < v20[2])
    {
      goto LABEL_7;
    }

LABEL_18:
    if (v21)
    {
      --*v21;
    }

    goto LABEL_20;
  }

LABEL_21:
  v16 = *a3;
  v14 = a3 + 1;
  v15 = v16;
  if (v16 != v14)
  {
    do
    {
      fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(result, (v15 + 5));
      v17 = v15[1];
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
          v18 = v15[2];
          v12 = *v18 == v15;
          v15 = v18;
        }

        while (!v12);
      }

      v15 = v18;
    }

    while (v18 != v14);
  }
}

void sub_1B5183A80(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
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

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::AddArc(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  LODWORD(v7) = *a3;
  *(&v7 + 4) = v5;
  HIDWORD(v7) = fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::FindState(a1, a3[1]);
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], v3);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v7);
}

void fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::FilterArc(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (*(std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, a2, &std::piecewise_construct, &v5) + 10) != -1)
  {
    operator new();
  }

  operator new();
}

void fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::NormArc(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  std::forward_list<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::sort[abi:ne200100](v4);
  v5 = *v4;
  if (*v4)
  {
    v6 = *v4;
    do
    {
      v7 = *(a2 + 4);
      v8 = 2143289344;
      if (v7 != -INFINITY)
      {
        v9 = *(v6 + 3);
        v8 = 2143289344;
        if (v9 != -INFINITY)
        {
          if (v7 >= v9)
          {
            v8 = *(v6 + 3);
          }

          else
          {
            v8 = *(a2 + 4);
          }
        }
      }

      *(a2 + 4) = v8;
      if (v5 == v6 || *(v6 + 2) != *(v5 + 2))
      {
        v12 = *v6;
        v5 = v6;
      }

      else
      {
        v10 = *(v5 + 3);
        if (v10 == -INFINITY || (v11 = *(v6 + 3), v11 >= -INFINITY) && v11 <= -INFINITY)
        {
          *(v5 + 3) = 2143289344;
          *(a1 + 8) |= 4uLL;
        }

        else
        {
          if (v10 >= v11)
          {
            v10 = *(v6 + 3);
          }

          *(v5 + 3) = v10;
        }

        v12 = *v6;
        v13 = *v5;
        *v5 = **v5;
        operator delete(v13);
      }

      v6 = v12;
    }

    while (v12);
    for (i = *v4; i; i = *i)
    {
      v15 = *(i + 3);
      v16 = NAN;
      if (v15 != -INFINITY)
      {
        if ((*(a2 + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v16 = INFINITY;
          if (v15 != INFINITY)
          {
            v16 = v15 - *(a2 + 4);
          }
        }

        else
        {
          v16 = NAN;
        }
      }

      *(i + 3) = v16;
      if ((LODWORD(v16) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v16 = *(a1 + 144) * floorf((v16 / *(a1 + 144)) + 0.5);
      }

      *(i + 3) = v16;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::FindState(void *a1, float **a2)
{
  State = fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::FindState(a1[23], a2);
  v5 = State;
  if (a1[19])
  {
    v6 = a1[20];
    if (State >= ((v6[1] - *v6) >> 2))
    {
      v8 = fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(a1, a2);
      std::vector<fst::TropicalWeightTpl<float>>::push_back[abi:ne200100](v6, &v8);
    }
  }

  return v5;
}

uint64_t fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::FindState(void *a1, void **a2)
{
  v8 = a2;
  v2 = (a1[12] - a1[11]) >> 3;
  Id = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(a1 + 1, &v8, 1);
  if (Id != v2)
  {
    v4 = v8;
    if (v8)
    {
      v5 = *v8;
      if (*v8)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *v4 = 0;
      MEMORY[0x1B8C85350](v4, 0x1020C405F07FB98);
    }
  }

  return Id;
}

float fst::DeterminizeFsaImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DefaultCommonDivisor<fst::TropicalWeightTpl<float>>,fst::DefaultDeterminizeFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>>::ComputeDistance(uint64_t a1, float **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return INFINITY;
  }

  v3 = **(a1 + 152);
  result = INFINITY;
  do
  {
    v5 = *(v2 + 2);
    if ((*(*(a1 + 152) + 8) - v3) >> 2 <= v5)
    {
      v6 = INFINITY;
    }

    else
    {
      v6 = *(v3 + 4 * v5);
    }

    v7 = v2[3];
    v8 = NAN;
    if (v7 != -INFINITY && v6 != -INFINITY)
    {
      v9 = v7 == INFINITY || v6 == INFINITY;
      v10 = v6 + v7;
      if (v9)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v10;
      }
    }

    if (result >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = result;
    }

    if (v8 == -INFINITY || result == -INFINITY)
    {
      result = NAN;
    }

    else
    {
      result = v11;
    }

    v2 = *v2;
  }

  while (v2);
  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::FindId(void *a1, void *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 3;
  v20 = v11;
  if (v9 >= v10)
  {
    if ((v11 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v10 - v8;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((a1 + 10), v15);
    }

    *(8 * v11) = *a2;
    v12 = 8 * v11 + 8;
    v16 = a1[10];
    v17 = a1[11] - v16;
    v18 = (8 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = a1[10];
    a1[10] = v18;
    a1[11] = v12;
    a1[12] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = *a2;
    v12 = (v9 + 1);
  }

  a1[11] = v12;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v20, &v20);
  return v20;
}

uint64_t **std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::find<int>(void *a1, unsigned int *a2)
{
  v4 = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(a1 + 4, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(uint64_t *a1, unsigned int a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  if (a2 == -1)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = (*(v2 + 80) + 8 * a2);
  }

  v5 = *v3;
  for (result = *(v5 + 8); ; result ^= (2 * result) ^ (32 * *(v5 + 2)) ^ (*(v5 + 2) >> 59) ^ *(v5 + 3))
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }
  }

  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  v3 = *a1;
  if (a2 == -1)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = (*(v3 + 80) + 8 * a2);
  }

  v6 = *v4;
  if (a3 == -1)
  {
    v7 = *(v3 + 104);
  }

  else
  {
    v7 = (*(v3 + 80) + 8 * a3);
  }

  if (*(*v7 + 8) == *(v6 + 8))
  {
    return std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(*v7, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t std::operator==[abi:ne200100]<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::allocator<fst::DeterminizeElement<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>(uint64_t *a1, uint64_t *a2)
{
  while (1)
  {
    a1 = *a1;
    a2 = *a2;
    if (!a1 || a2 == 0)
    {
      break;
    }

    if (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
    {
      return 0;
    }
  }

  return (a1 == 0) ^ (a2 != 0);
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc::operator()(a1 + 4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if ((fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual::operator()(a1 + 6, *(v12 + 4), *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 56))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

float fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v4 = (*(*a1 + 64))(a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v4;
    *(MutableState + 12) |= 9u;
  }

  v6 = a1[15];
  if (*(v6 + 76) == a2)
  {
    v7 = v6 + 80;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return **v7;
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
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

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
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

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
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

void *fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeterminizeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D01AF8;
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
    fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

BOOL fst::CacheStateIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
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

uint64_t *fst::ArcIterator<fst::DeterminizeFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ArcIterator(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D01888;
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

void TGrammar::TGrammar(TGrammar *this, const TLocaleInfo *a2)
{
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  TAllocator::TAllocator((this + 72), 2048);
  *(this + 120) = 0u;
  *(this + 8) = 0;
  *this = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  operator new();
}

void sub_1B5184DE0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v4, 0x60C40CE5A77A8);
  v9 = *(v3 + 144);
  if (v9)
  {
    *(v3 + 152) = v9;
    operator delete(v9);
  }

  if (*v7)
  {
    operator delete(*v7);
  }

  TAllocator::clear((v1 + 56));
  std::__tree<int>::destroy(v2, *v6);
  std::__tree<int>::destroy(v1, *v5);
  _Unwind_Resume(a1);
}

void *TGrammar::addNonTerminal(uint64_t a1, __int32 *a2, int a3)
{
  v14 = a2;
  v5 = std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::find<wchar_t const*>(a1 + 40, &v14);
  if (a1 + 48 == v5)
  {
    v7 = wcslen(v14);
    if ((v7 + 1) >> 62)
    {
      v8 = -1;
    }

    else
    {
      v8 = 4 * (v7 + 1);
    }

    v9 = TAllocator::allocate((a1 + 72), v8);
    v13 = v9;
    wcscpy(v9, v14);
    v6 = TAllocator::allocate((a1 + 72), 40);
    v10 = *(a1 + 64);
    *(a1 + 64) = v10 + 1;
    v6[2] = v9;
    v6[3] = v10;
    *v6 = 0;
    v6[1] = 0;
    v6[4] = 0;
    v15 = &v13;
    std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const* const&>,std::tuple<>>((a1 + 40), &v13, &std::piecewise_construct, &v15)[5] = v6;
  }

  else
  {
    v6 = *(v5 + 40);
  }

  v11 = 1;
  if (!a3)
  {
    v11 = 2;
  }

  v6[1] |= v11;
  return v6;
}

void TGrammar::~TGrammar(TGrammar *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    TRegExp::~TRegExp(v2);
    MEMORY[0x1B8C85350]();
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    operator delete(v4);
  }

  TAllocator::clear((this + 72));
  std::__tree<int>::destroy(this + 40, *(this + 6));
  std::__tree<int>::destroy(this + 16, *(this + 3));
}

uint64_t TGrammar::computeDerivationForSymbol(uint64_t result, void *a2, void *a3)
{
  v3 = a2[3];
  v4 = v3 >> 6;
  v5 = 1 << v3;
  v6 = *(*a3 + 8 * v4);
  if ((v5 & v6) == 0)
  {
    v7 = result;
    *(*a3 + 8 * v4) = v6 | v5;
    v8 = a2[3];
    v9 = *(result + 64) * v8;
    *(*(result + 120) + (((v9 + v8) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v9 + v8);
    v10 = *a2;
    if (*a2)
    {
      do
      {
        v12 = *(v10[2] + 8 * v10[1] - 8);
        *(*(v7 + 120) + (((v12[3] + v9) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (*(v12 + 24) + v9);
        result = TGrammar::computeDerivationForSymbol(v7, v12, a3);
        v13 = *(v7 + 64);
        if (v13)
        {
          v14 = 0;
          v15 = v13 * v12[3];
          v16 = *(v7 + 120);
          do
          {
            if ((*(v16 + (((v15 + v14) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + v14)))
            {
              *(v16 + (((v9 + v14) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v9 + v14);
              v13 = *(v7 + 64);
            }

            ++v14;
          }

          while (v14 < v13);
        }

        v10 = v10[4];
      }

      while (v10);
    }
  }

  return result;
}

void TGrammar::finalize(TGrammar *this)
{
  std::vector<BOOL>::resize(this + 120, *(this + 8) * *(this + 8), 0);
  std::vector<BOOL>::vector(__p, *(this + 8));
  v2 = *(this + 5);
  if (v2 != (this + 48))
  {
    do
    {
      TGrammar::computeDerivationForSymbol(this, *(v2 + 5), __p);
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 48));
  }

  std::__tree<int>::destroy(this + 16, *(this + 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = this + 24;
  TRegExp::doneAdding(*(this + 14));
  *this = 1;
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_1B51851F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(&v18, v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = (*a1 + 8 * (v4 >> 6));
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_1B5185358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TGrammar::addTerminal(uint64_t a1, __int32 *a2)
{
  v23 = a2;
  v3 = std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::find<wchar_t const*>(a1 + 16, &v23);
  if (a1 + 24 != v3)
  {
    return *(v3 + 40);
  }

  v5 = (a1 + 144);
  TRegExp::add(*(a1 + 112), v23, (*(a1 + 152) - *(a1 + 144)) >> 3);
  v6 = wcslen(v23);
  if ((v6 + 1) >> 62)
  {
    v7 = -1;
  }

  else
  {
    v7 = 4 * (v6 + 1);
  }

  v22 = TAllocator::allocate((a1 + 72), v7);
  wcscpy(v22, v23);
  v4 = TAllocator::allocate((a1 + 72), 40);
  v8 = (*(a1 + 152) - *(a1 + 144)) >> 3;
  v4[2] = v22;
  v4[3] = v8;
  *v4 = xmmword_1B5AE3640;
  v4[4] = 0;
  v24 = &v22;
  std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const* const&>,std::tuple<>>((a1 + 16), &v22, &std::piecewise_construct, &v24)[5] = v4;
  v10 = *(a1 + 152);
  v9 = *(a1 + 160);
  if (v10 >= v9)
  {
    v12 = (v10 - *v5) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - *v5;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1 + 144, v15);
    }

    v16 = (8 * v12);
    *v16 = v4;
    v11 = 8 * v12 + 8;
    v17 = *(a1 + 144);
    v18 = *(a1 + 152) - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = *(a1 + 144);
    *(a1 + 144) = v19;
    *(a1 + 152) = v11;
    *(a1 + 160) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = v4;
    v11 = (v10 + 1);
  }

  *(a1 + 152) = v11;
  return v4;
}

void *TGrammar::addRule(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, size_t a6)
{
  v12 = a6 + 1;
  v13 = TAllocator::allocate((a1 + 72), a6 + 1);
  v14 = v13;
  if (a6)
  {
    memmove(v13, a5, a6);
  }

  v14[a6] = 0;
  if (v12 >> 61)
  {
    v15 = -1;
  }

  else
  {
    v15 = 8 * v12;
  }

  v16 = TAllocator::allocate((a1 + 72), v15);
  v17 = v16;
  if (a6)
  {
    memmove(v16, a4, 8 * a6);
  }

  v17[a6] = a3;
  result = TAllocator::allocate((a1 + 72), 48);
  result[2] = v17;
  result[3] = v14;
  *result = a2;
  result[1] = v12;
  v19 = (v17 - 1);
  result[4] = 0;
  result[5] = 0;
  do
  {
    v20 = *v14++;
    ++v19;
  }

  while ((v20 & 1) != 0);
  v21 = *v19;
  result[4] = *v21;
  *v21 = result;
  return result;
}

uint64_t TGrammar::getTerminals(uint64_t a1, __darwin_ct_rune_t *a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<TRegExpMatch>::resize(&v22, 0);
  v21 = TRegExp::match(*(a1 + 112), a2, 3, &v22);
  v6 = v22;
  if (v23 != v22)
  {
    v7 = 0;
    v8 = *(a3 + 8);
    v9 = 16;
    do
    {
      v10 = *(*(a1 + 144) + 8 * *&v6[v9]);
      v11 = *(a3 + 16);
      if (v8 >= v11)
      {
        v12 = (v8 - *a3) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = v11 - *a3;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a3, v15);
        }

        v16 = (8 * v12);
        *v16 = v10;
        v8 = (8 * v12 + 8);
        v17 = *(a3 + 8) - *a3;
        v18 = v16 - v17;
        memcpy(v16 - v17, *a3, v17);
        v19 = *a3;
        *a3 = v18;
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8++ = v10;
      }

      *(a3 + 8) = v8;
      ++v7;
      v6 = v22;
      v9 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
  }

  if (v6)
  {
    v23 = v6;
    operator delete(v6);
  }

  return v21;
}

void sub_1B5185784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TRegExpMatch>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<TRegExpMatch>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

uint64_t std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::find<wchar_t const*>(uint64_t a1, const __int32 **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = a1 + 8;
  do
  {
    v6 = wcscmp(*(v3 + 32), v4);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || wcscmp(v4, *(v5 + 32)) < 0)
  {
    return v2;
  }

  return v5;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t **__return_ptr a1@<X8>, unint64_t *__src@<X0>, unsigned int a3@<W1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X4>)
{
  v8 = a5 - a3 + 8 * (a4 - __src);
  if (v8 <= 0)
  {
    v16 = *a6;
  }

  else
  {
    v9 = __src;
    __src = *a6;
    if (a3)
    {
      if (v8 >= (64 - a3))
      {
        v10 = 64 - a3;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3);
      v12 = v10 + *(a6 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a6 = __src;
      *(a6 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a6;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a6 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a6 + 8) = v15;
    }
  }

  *a1 = v16;
  *(a1 + 2) = *(a6 + 8);
  return __src;
}

void *std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const* const&>,std::tuple<>>(uint64_t **a1, const __int32 **a2, uint64_t a3, void **a4)
{
  v4 = *std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__find_equal<wchar_t const*>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__find_equal<wchar_t const*>(uint64_t a1, void *a2, const __int32 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 32);
        if ((wcscmp(v6, v8) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if ((wcscmp(v8, v6) & 0x80000000) == 0)
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

LABEL_10:
  *a2 = v7;
  return v5;
}

void std::vector<TRegExpMatch>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TRegExpMatch>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}