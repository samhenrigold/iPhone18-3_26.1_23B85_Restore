_WORD *udif::details::block_attributes::block_attributes(_WORD *this, int a2)
{
  v2 = 0;
  v8 = *MEMORY[0x277D85DE8];
  *this = a2;
  v5 = 0x10000800040002;
  v6 = 4194336;
  v7 = 128;
  do
  {
    a2 &= *(&v5 + v2) ^ 0xFFFF;
    v2 += 2;
  }

  while (v2 != 14);
  if (a2)
  {
    v3 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "block_attributes";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &unk_285BEC1B8;
    *(exception + 16) = v3;
  }

  return this;
}

void smart_enums::validators::validator_exception<unsigned short>::~validator_exception(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x24C1ED730);
}

void smart_enums::validators::validator_exception<unsigned short>::reason(smart_enums::validators::validator_exception_base *a1@<X0>, void *a2@<X8>)
{
  v3 = smart_enums::validators::validator_exception_base::what(a1);
  std::string::basic_string[abi:ne200100]<0>(v16, v3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  if ((v17 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v16[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " [", 2);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = MEMORY[0x24C1ED3D0]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "]", 1);
  std::stringbuf::str[abi:ne200100](&v12, a2);
  v10[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v9;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](&v15);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void ExecutionSchedulerSortedConsecutiveIt<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,locks::Std,boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>::~ExecutionSchedulerSortedConsecutiveIt(uint64_t a1)
{
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(a1 + 72, *(a1 + 80));

  std::mutex::~mutex(a1);
}

void std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(a1, a2[1]);
    v4 = a2[12];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 184;
      v6 = (v4 - 168);
      std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(v4 - 96, *(v4 - 88));
      std::mutex::~mutex(v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__emplace_back_slow_path<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  std::allocator_traits<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>>::construct[abi:ne200100]<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>,void,0>(a1, 184 * v2, a2);
  v15 = 184 * v2 + 184;
  v7 = a1[1];
  v8 = 184 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::~__split_buffer(&v13);
  return v12;
}

void sub_248EBC988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>>::construct[abi:ne200100]<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  *(a2 + 88) = *(a3 + 88);
  v3 = (a3 + 96);
  v4 = *(a3 + 96);
  *(a2 + 96) = v4;
  v5 = a2 + 96;
  *(a2 + 16) = 850045863;
  *(a2 + 80) = *(a3 + 80);
  v6 = *(a3 + 104);
  *(a2 + 104) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a3 + 88) = v3;
    *v3 = 0;
    *(a3 + 104) = 0;
  }

  else
  {
    *(a2 + 88) = v5;
  }

  *(a2 + 112) = *(a3 + 112);
  *(a2 + 128) = *(a3 + 128);
  result = *(a3 + 144);
  *(a2 + 144) = result;
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 168) = 0;
  *(a2 + 176) = *(a3 + 176);
  return result;
}

void std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>>::construct[abi:ne200100]<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>,void,0>(a1, a4, v7);
      v7 += 184;
      a4 = v12 + 184;
      v12 += 184;
    }

    while (v7 != a3);
  }

  v10 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 88;
    do
    {
      std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(v4, *(v4 + 8));
      std::mutex::~mutex((v4 - 72));
      v5 = v4 + 96;
      v4 += 184;
    }

    while (v5 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,std::reverse_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>,std::reverse_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>,std::reverse_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>,std::reverse_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    do
    {
      v6 = a3 - 184;
      v7 = (a3 - 168);
      std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(a3 - 96, *(a3 - 88));
      std::mutex::~mutex(v7);
      a3 = v6;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    v5 = (i - 168);
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(i - 96, *(i - 88));
    std::mutex::~mutex(v5);
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<339ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<339ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<339ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<339ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<339ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEC3A0;
  di_log::logger_buf<di_log::log_printer<339ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<339ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<339ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248EBD244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<339ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<339ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 339;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 339;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

const void **CFAutoRelease<__CFArray const*>::~CFAutoRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t udif::master_checksum_add<checksum::Any<locks::None,checksum::None,checksum::CRC32>>(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  udif::details::checksum::checksum(&v15, a2);
  v4 = v15;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = v19;
  udif::details::serialize_field(&v4, v13);
  v4 = &v14;
  *&v5 = HIDWORD(v15) >> 3;
  checksum::Any<locks::None,checksum::None,checksum::CRC32>::add(a1, &v4);
  return a1;
}

uint64_t checksum::Any<locks::None,checksum::None,checksum::CRC32>::add(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 12);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v5;
  (off_285BEC410[v2])(&v6, a1 + 4);
  return a1;
}

uLong _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZN8checksum3AnyIN5locks4NoneEJNS8_4NoneENS8_5CRC32EEE3addERK18checksum_algo_dataEUlRT_E_EEJRNS0_6__baseILNS0_6_TraitE0EJNSC_ISB_EENSD_ISB_EEEEEEEEDcSI_DpT0_(const Bytef ****a1, _DWORD *a2)
{
  result = crc32(*a2, ***a1, *(**a1 + 2));
  *a2 = result;
  return result;
}

uint64_t ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::ChecksumScheduler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = *a2;
  if ((*(a3 + 16) & 2) != 0)
  {
    v3 = *a3;
  }

  else
  {
    v3 = *a3 + 1;
  }

  v5 = (a2 + 144);
  v4 = *(a2 + 144);
  v6 = *(a2 + 128);
  if (v6 != v4)
  {
    while (1)
    {
      v7 = v6[4];
      if ((v6[6] & 2) == 0)
      {
        ++v7;
      }

      if (v7 >= v3)
      {
        break;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
      if (v9 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = v6;
LABEL_16:
  if (v9 == v4)
  {
    v16 = *(a2 + 80);
    *(result + 96) = 0;
    *(result + 16) = 850045863;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = v16;
    *(result + 104) = 0;
    *(result + 88) = result + 96;
    *(result + 112) = *v5;
    *(result + 128) = *v5;
    *(result + 144) = *v5;
    *(result + 168) = 0;
    v9 = *(result + 112);
    if (v9 == *(result + 144))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v11 = *(a2 + 136);
  v12 = v9;
  while (1)
  {
    v13 = v12[4];
    if ((v12[6] & 2) == 0)
    {
      ++v13;
    }

    if (v13 > (*(a3 + 16) & 1) + *(a3 + 8) - 1)
    {
      break;
    }

    v14 = v12[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v12[2];
        v10 = *v15 == v12;
        v12 = v15;
      }

      while (!v10);
    }

    v12 = v15;
    if (v15 == v4)
    {
      goto LABEL_31;
    }
  }

  v15 = v12;
LABEL_31:
  v17 = *(a2 + 80);
  *(result + 96) = 0;
  *(result + 16) = 850045863;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0;
  *(result + 80) = v17;
  *(result + 88) = result + 96;
  *(result + 104) = 0;
  *(result + 112) = v9;
  *(result + 120) = v11;
  *(result + 128) = v9;
  *(result + 136) = v11;
  *(result + 144) = v15;
  *(result + 152) = v11;
  *(result + 168) = 0;
  if (v9 != v15)
  {
LABEL_32:
    v18 = *(v9 + 48);
    v19 = v9[4];
    if ((v18 & 2) == 0)
    {
      ++v19;
    }

    *(result + 160) = v19;
  }

LABEL_35:
  *(result + 176) = 0;
  return result;
}

uint64_t ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::ContextAllocator(uint64_t a1, unsigned int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 850045863;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1018212795;
  *a1 = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  if (a2)
  {
    std::vector<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>>::reserve((a1 + 8), a2);
  }

  return a1;
}

void sub_248EBD89C(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, a2);
    }

    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::~ContextAllocator(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = v4[2];
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        MEMORY[0x24C1ED730](v4, 0x20C40960023A9);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 8);
  }

  *(a1 + 16) = v2;
  std::condition_variable::~condition_variable((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  v7 = *(a1 + 8);
  if (v7)
  {
    *(a1 + 16) = v7;
    operator delete(v7);
  }

  return a1;
}

void *std::__shared_ptr_emplace<BackendSG>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<Backend> const&,unsigned long &,int,BOOL,std::allocator<BackendSG>,0>(void *a1, void *a2, uint64_t *a3, int *a4, char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285BEC430;
  BackendSG::BackendSG((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<BackendSG>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285BEC430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void ExecutionSchedulerSortedConsecutiveIt<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,locks::Std,boost::iterators::transform_iterator<interval_map2set_it::$_0,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__tree_node<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,void *> *,long>>,boost::use_default,boost::use_default>>::abort(uint64_t a1)
{
  std::mutex::lock(a1);
  *(a1 + 152) = 1;
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::destroy(a1 + 72, *(a1 + 80));
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;

  std::mutex::unlock(a1);
}

void sub_248EBDCC4(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_begin_catch(a1);
  ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(locks::Std)#1}::operator()<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>(va, v3);
  __cxa_rethrow();
}

void ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(locks::Std)#1}::operator()<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  std::mutex::lock((*a1 + 32));
  std::vector<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>>::emplace_back<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> * const&>(v2 + 8, &v3);
  std::mutex::unlock((v2 + 32));
  std::condition_variable::notify_one((v2 + 96));
}

void sub_248EBDD40(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 32));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *)#1},std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

void std::__shared_ptr_pointer<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *)#1},std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 32));
  std::vector<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>>::emplace_back<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> * const&>(v1 + 8, &v2);
  std::mutex::unlock((v1 + 32));
  std::condition_variable::notify_one((v1 + 96));
}

void sub_248EBDDE4(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 32));
  __clang_call_terminate(a1);
}

uint64_t std::__shared_ptr_pointer<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,ContextAllocator<locks::Std,std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>::allocate(void)::{lambda(std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *)#1},std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN16ContextAllocatorIN5locks3StdEJNSt3__110unique_ptrIN17DiskImageUDIFReadI10UDIFReaderINS0_4NoneEE13DiskImageUDIFE11ContextUDIFENS2_14default_deleteISA_EEEENS2_10shared_ptrI9BackendSGEEEE8allocateEvEUlT_E_))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *std::vector<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *,std::allocator<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> *>>::emplace_back<std::tuple<std::unique_ptr<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF,std::default_delete<DiskImageUDIFRead<UDIFReader<locks::None>,DiskImageUDIF>::ContextUDIF>>,std::shared_ptr<BackendSG>> * const&>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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
  return (v6 - 8);
}

uint64_t di_log::logger_buf<di_log::log_printer<339ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEC3A0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248EBDFD0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>(a3, (v4 + 4)))
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

      if (!boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>((v7 + 4), a3))
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

BOOL boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v3 < v4)
      {
LABEL_4:
        v6 = *a2;
        v5 = *(a2 + 8);
        v7 = *a2 >= v5 || *a2 + 1 >= v5;
        v8 = v6 >= v5;
        v9 = v5 < v6;
        if (*(a2 + 16) != 3)
        {
          v9 = v8;
        }

        if (*(a2 + 16))
        {
          v10 = v9;
        }

        else
        {
          v10 = v7;
        }

        return !v10;
      }
    }

    else if (v4 >= v3)
    {
      goto LABEL_4;
    }
  }

  else if (v4 >= v3 || v4 + 1 >= v3)
  {
    goto LABEL_4;
  }

  if ((v2 & 2) != 0)
  {
    v13 = *a1;
  }

  else
  {
    v13 = v4 + 1;
  }

  v14 = *a2;
  if ((*(a2 + 16) & 2) == 0)
  {
    ++v14;
  }

  if (v13 < v14)
  {
    return 1;
  }

  if (v14 == v13)
  {
    return (v2 & 1) + v3 - 1 < (*(a2 + 16) & 1) + *(a2 + 8) - 1;
  }

  return 0;
}

void boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,boost::move_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>>(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,boost::move_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>>(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_248EBE2C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,boost::move_iterator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    result = *(a2 + 32);
    *(a5 + 32) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  if (a6)
  {
    v9 = a6;
    v10 = a5;
    do
    {
      *v10 = *a7;
      v11 = *(a7 + 8);
      *(v10 + 24) = *(a7 + 24);
      *(v10 + 8) = v11;
      result = *(a7 + 32);
      *(v10 + 32) = result;
      *(a7 + 32) = 0;
      *(a7 + 40) = 0;
      *(v10 + 48) = *(a7 + 48);
      a7 += 56;
      v10 += 56;
      --v9;
    }

    while (v9);
  }

  if (a3 != a4)
  {
    v12 = a5 + 56 * a6;
    do
    {
      *v12 = *a3;
      v13 = *(a3 + 8);
      *(v12 + 24) = *(a3 + 24);
      *(v12 + 8) = v13;
      result = *(a3 + 32);
      *(v12 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v12 + 48) = *(a3 + 48);
      a3 += 56;
      v12 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

void boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(void **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >= 0x24924924924924ALL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(56 * v11);
  boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

const char *boost::container::vector_alloc_holder<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0x249249249249249;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x249249249249249 - v4 < &a2[v3 - v4])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v3];
  if (v8 < 0x249249249249249)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(a1, *a1, a4, *a1 + 56 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        if (*v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v12);
        }

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v13;
  a1[2] = a3;
}

void sub_248EBE5A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper*,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    v7 = *(a2 + 8);
    *(a5 + 24) = *(a2 + 24);
    *(a5 + 8) = v7;
    *(a5 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a5 + 48) = *(a2 + 48);
    a2 += 56;
    a5 += 56;
  }

  *a5 = *a7;
  v8 = *(a7 + 8);
  *(a5 + 24) = *(a7 + 24);
  *(a5 + 8) = v8;
  result = *(a7 + 32);
  *(a5 + 32) = result;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a5 + 48) = *(a7 + 48);
  if (a3 != a4)
  {
    v10 = a5 + 56 * a6;
    do
    {
      *v10 = *a3;
      v11 = *(a3 + 8);
      *(v10 + 24) = *(a3 + 24);
      *(v10 + 8) = v11;
      result = *(a3 + 32);
      *(v10 + 32) = result;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(v10 + 48) = *(a3 + 48);
      a3 += 56;
      v10 += 56;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(a1, a2);
  v4 = a2[12];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

void **boost::container::vector<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::small_vector_allocator<ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper,boost::container::new_allocator<void>,void>,void>::~vector(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 40);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t di_asif::details::dir_base::calc_num_real_elements(di_asif::details::dir_base *this)
{
  v1 = *(this + 5);
  v2 = v1 % (*(this + 7) + 1);
  result = v1 - v2;
  if (v1 == v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Invalid chunk size", 0xFFFFFFEA);
  }

  return result;
}

unint64_t di_asif::details::unmap_iterator_t::make_val(di_asif::details::unmap_iterator_t *this)
{
  v1 = *(this + 2);
  v2 = *(this + 7);
  v3 = v2 * *v1;
  v4 = *(this + 5);
  v5 = v3 + v4;
  v6 = v1[1] * v2;
  if (v4 < v6)
  {
    return v5 / v2;
  }

  *(this + 5) = 0;
  v7 = *this;
  v8 = *(this + 1);
  if (v8 <= (v1 - *this) >> 4)
  {
    return v5 / v2;
  }

  *(this + 2) = v1 + 2;
  if (v8 != (v1 - v7 + 16) >> 4)
  {
    v9 = v1[2] * v2;
    if (v9 < *(this + 9))
    {
      v5 = v1[2] * v2;
      return v5 / v2;
    }
  }

  return 0;
}

di_asif::details::unmap_iterator_t *di_asif::details::unmap_iterator_t::unmap_iterator_t(di_asif::details::unmap_iterator_t *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 5) = 0;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  v9 = (a2 + 16 * a8);
  *(this + 9) = a7;
  if (a8 == a3)
  {
LABEL_6:
    *(this + 2) = v9;
  }

  else
  {
    v10 = 16 * a3 - 16 * a8;
    while (1)
    {
      v11 = *v9;
      if ((v9[1] + *v9) * a5 >= a6)
      {
        break;
      }

      v9 += 2;
      v10 -= 16;
      if (!v10)
      {
        v9 = (a2 + 16 * a3);
        goto LABEL_6;
      }
    }

    *(this + 2) = v9;
    v13 = v11 * a5;
    if (v11 * a5 < a7)
    {
      v14 = a6 >= v13;
      v15 = a6 - v13;
      if (v15 != 0 && v14)
      {
        *(this + 5) = v15;
      }

      *(this + 3) = di_asif::details::unmap_iterator_t::make_val(this);
      *(this + 4) = v16;
    }
  }

  return this;
}

uint64_t di_asif::details::table::get_map_entry_for_offset(di_asif::details::table *this, unint64_t a2)
{
  v2 = *(this + 1);
  di_asif::details::table_entry_map::table_entry_map(&v4, this, *(v2 + 56) + (*(v2 + 56) + 1) * ((a2 / *(v2 + 26) - *(this + 44) / *(v2 + 26)) / (*(v2 + 56) * (*(v2 + 28) / *(v2 + 26)))));
  return v4;
}

uint64_t di_asif::details::map_entry_iterator_t::operator++(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 1);
  v4 = *(a1 + 8) + *(v3 + 26) * (*(v3 + 28) / *(v3 + 26)) * *(v3 + 56);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 44) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    map_entry_for_offset = di_asif::details::table::get_map_entry_for_offset(v2, v4);
    v6 = map_entry_for_offset & 0xFFFFFFFFFFFFFF00;
    v7 = map_entry_for_offset;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t di_asif::details::map_entry_iterator_t::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return di_asif::details::map_entry_iterator_t::operator++(a1);
}

uint64_t di_asif::details::table::get_data_entry_for_offset(di_asif::details::table *this, unint64_t a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 26);
  di_asif::details::table_entry_data::table_entry_data(&v5, this, ((a2 / v3 - *(this + 44) / v3) / (*(v2 + 28) / v3) + (a2 / v3 - *(this + 44) / v3) / (*(v2 + 28) / v3) * *(v2 + 56)) / *(v2 + 56));
  return v5;
}

uint64_t di_asif::details::data_entry_iterator_t::operator++(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 1);
  v4 = *(a1 + 8) + *(v3 + 28);
  *(a1 + 8) = v4;
  if (v4 >= *(v2 + 44) + *(v3 + 88))
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
  }

  else
  {
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(v2, v4);
    v6 = data_entry_for_offset & 0xFFFFFFFFFFFFFF00;
    v7 = data_entry_for_offset;
    v8 = 1;
  }

  if (*(a1 + 32) == v8)
  {
    if (*(a1 + 32))
    {
      *(a1 + 24) = v4;
    }
  }

  else if (*(a1 + 32))
  {
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6 | v7;
    *(a1 + 24) = v4;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t di_asif::details::data_entry_iterator_t::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return di_asif::details::data_entry_iterator_t::operator++(a1);
}

void di_asif::details::table::table(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  di_utils::fixed_vector_t<di_asif::details::table_entry>::fixed_vector_t((a1 + 16), *(a2 + 64), a6);
  std::vector<ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>>::vector[abi:ne200100]((a1 + 72), *(a2 + 72));
  *(a1 + 104) = 850045863;
  *(a1 + 96) = 0;
  *(a1 + 101) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 850045863;
  *(a1 + 160) = 0;
  *(a1 + 280) = 850045863;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = a4;
  *(a1 + 352) = a5;
  if (a4)
  {
    if (a4 % *(a2 + 28))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v11 = std::generic_category();
      exception[1] = 4294967274;
      exception[2] = v11;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "ASIF: table is not aligned to chunk size";
    }
  }

  operator new[]();
}

void sub_248EBED54(_Unwind_Exception *a1)
{
  MEMORY[0x24C1ED710](v5, v6);
  std::mutex::~mutex(v4);
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&v2[2].__m_.__sig);
  std::mutex::~mutex(v3);
  std::mutex::~mutex(v2);
  v8 = v1[9];
  if (v8)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  std::unique_ptr<di_asif::details::table_entry,std::function<void ()(di_asif::details::table_entry*)>>::reset[abi:ne200100](v1 + 2, 0);
  std::__function::__value_func<void ()(di_asif::details::table_entry *)>::~__value_func[abi:ne200100]((v1 + 3));
  _Unwind_Resume(a1);
}

void sub_248EBF0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  MEMORY[0x24C1ED710](v21, v20, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t analytics_collector_t::table_counter_add(uint64_t this, unint64_t a2)
{
  v2 = *(this + 80);
  v3 = v2;
  atomic_compare_exchange_strong_explicit((this + 80), &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit((this + 80), &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  atomic_fetch_add_explicit((this + 152), a2, memory_order_relaxed);
  v6 = *(this + 80);
  v7 = v6;
  atomic_compare_exchange_strong_explicit((this + 80), &v7, (v6 & 0xFFFFFFFF00000000 | (v6 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v7 != v6)
  {
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong_explicit((this + 80), &v8, (v7 & 0xFFFFFFFF00000000 | (v7 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v8 == v7;
      v7 = v8;
    }

    while (!v5);
  }

  return this;
}

void di_asif::details::table::return_chunk(di_asif::details::table *this, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    std::mutex::lock((this + 280));
    std::deque<unsigned long long>::emplace_back<unsigned long long &>(this + 29, &v3);
    atomic_store(1u, this + 24);
    std::mutex::unlock((this + 280));
  }
}

uint64_t std::deque<unsigned long long>::emplace_back<unsigned long long &>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = v8 + v7;
  if (v6 == v8 + v7)
  {
    std::deque<unsigned long long>::__add_back_capacity(a1);
    v7 = a1[4];
    v8 = a1[5];
    v5 = a1[1];
    v9 = v7 + v8;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v10 = v8 + 1;
  a1[5] = v10;
  v11 = v7 + v10;
  v12 = (v5 + 8 * (v11 >> 9));
  v13 = v11 & 0x1FF;
  if (v13)
  {
    v14 = *v12 + 8 * v13;
  }

  else
  {
    v14 = *(v12 - 1) + 4096;
  }

  return v14 - 8;
}

uint64_t *di_asif::details::table::make_map_entry_iterators@<X0>(uint64_t *__return_ptr a1@<X8>, di_asif::details::table *this@<X0>, uint64_t a3@<X1>)
{
  v5 = *(this + 44);
  v6 = *(*(this + 1) + 88) + v5;
  if (v5 >= v6)
  {
    v8 = 0;
    result = 0;
  }

  else
  {
    result = di_asif::details::table::get_map_entry_for_offset(this, *(this + 44));
    v6 = *(*(this + 1) + 88) + *(this + 44);
    v8 = 1;
  }

  *a1 = this;
  a1[1] = v5;
  a1[2] = result;
  a1[3] = a3;
  *(a1 + 32) = v8;
  a1[5] = this;
  a1[6] = v6;
  a1[7] = 0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t di_asif::details::table::update_entry_if_bits_in_same_state(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_data *a3)
{
  v3 = atomic_load((*(*a3 + 56) + 16 * *(a3 + 1) + 8));
  if (v3 >> 62 != 3)
  {
    return 0;
  }

  ref::ref_cnt::take_exclusive(v50, (*(*a3 + 56) + 16 * *(a3 + 1)), 0);
  if ((v51 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v48 = std::generic_category();
    exception[1] = 4294967291;
    exception[2] = v48;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't take exclusive lock on entry";
  }

  v7 = atomic_load((*(*a3 + 56) + 16 * *(a3 + 1) + 8));
  if (v7 >> 62 != 3)
  {
    v9 = 0;
    v10 = 0;
    v12 = 1;
    v11 = 1;
    goto LABEL_54;
  }

  v8 = *(*a3 + 8);
  di_asif::details::table::get_bitmap(&v49, this, a2, (*(*a3 + 352) + (*(v8 + 56) + *(v8 + 56) * *(a3 + 1)) / (*(v8 + 56) + 1) * *(v8 + 28)) / *(v8 + 26), 0);
  if (!v49 || (v49[344] & 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = 1;
    goto LABEL_53;
  }

  if (v49[224])
  {
    v14 = (v49 + 40);
  }

  else
  {
    v14 = 0;
  }

  bitmap_range = di_asif::details::table_entry_data::get_bitmap_range(a3);
  block_bits = di_asif::details::map_element::get_block_bits(v14, bitmap_range);
  v10 = block_bits;
  v17 = *(*a3 + 8);
  v18 = *(v17 + 56);
  v19 = *(v17 + 28);
  v20 = *(*a3 + 352) + (v18 + v18 * *(a3 + 1)) / (v18 + 1) * v19;
  v21 = v20 + v19;
  v22 = *(*(*(this + 1) + 32) + 216);
  if (v22 != 1 || block_bits == 1)
  {
    if (v49)
    {
      if (v49[224])
      {
        v24 = v49 + 40;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = di_asif::details::map_element::search_for_pattern_match(v24, this, v10, v20, v21);
  }

  else
  {
    if (v49)
    {
      if (v49[224])
      {
        v23 = v49 + 40;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = di_asif::details::map_element::search_for_pattern_mismatch(v23, this, 1u, v20, v21);
  }

  v26 = v25 == v21;
  if (v25 == v21)
  {
    v27 = *(a3 + 1);
    v28 = *(*a3 + 56);
    v29 = *(v28 + 16 * v27 + 8);
    v30 = *(*(*a3 + 8) + 28);
    v12 = (v10 & 0xFFFFFFFD) != 0;
    v31 = *(this + 1);
    v32 = *(v31 + 16);
    if (*(v32 + 160) == 1)
    {
      analytics_collector_t::bitmapped_entry_to_other_type(v32, v10, *(v31 + 48));
      v27 = *(a3 + 1);
      v28 = *(*a3 + 56);
    }

    v9 = (v29 & 0x7FFFFFFFFFFFFFLL) * v30;
    v33 = (v28 + 16 * v27 + 8);
    v34 = *v33;
    v35 = *v33;
    atomic_compare_exchange_strong(v33, &v35, (v10 << 62) | *v33 & 0x3FFFFFFFFFFFFFFFLL);
    if (v35 != v34)
    {
      v36 = v35;
      do
      {
        atomic_compare_exchange_strong(v33, &v36, v35 & 0x3FFFFFFFFFFFFFFFLL | (v10 << 62));
        v37 = v36 == v35;
        v35 = v36;
      }

      while (!v37);
    }

    if (v10 == 1)
    {
      goto LABEL_52;
    }

    v38 = (*(*a3 + 56) + 16 * *(a3 + 1) + 8);
    if (!*(*(*a3 + 8) + 28))
    {
      v39 = *v38;
      v40 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v40, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v40 != v39)
      {
        v41 = v40;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v41, v40 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v41 == v40;
          v40 = v41;
        }

        while (!v37);
      }

      v10 = 1;
      goto LABEL_52;
    }

LABEL_51:
    atomic_fetch_and_explicit(v38, 0xFF80000000000000, memory_order_relaxed);
    v10 = v26;
LABEL_52:
    v11 = 0;
    atomic_store(1u, this + 24);
    goto LABEL_53;
  }

  v9 = 0;
  v11 = 0;
  v12 = 1;
  if (v10 == 1)
  {
    v10 = 0;
    goto LABEL_53;
  }

  v10 = 0;
  if ((v22 & 1) == 0)
  {
    if (v49)
    {
      if (v49[224])
      {
        v42 = v49 + 40;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }

    if (di_asif::details::map_element::search_for_pattern_mismatch(v42, this, 1u, *(*a3 + 352) + (*(*(*a3 + 8) + 56) + *(*(*a3 + 8) + 56) * *(a3 + 1)) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 28), v21) != v21)
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_53;
    }

    v38 = (*(*a3 + 56) + 16 * *(a3 + 1) + 8);
    v43 = *(*(*a3 + 8) + 28);
    v9 = (*v38 & 0x7FFFFFFFFFFFFFLL) * v43;
    if (!v43)
    {
      v44 = *v38;
      v45 = *v38;
      atomic_compare_exchange_strong_explicit(v38, &v45, *v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v45 != v44)
      {
        v46 = v45;
        do
        {
          atomic_compare_exchange_strong_explicit(v38, &v46, v45 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v37 = v46 == v45;
          v45 = v46;
        }

        while (!v37);
      }

      v12 = 0;
      v10 = 0;
      goto LABEL_52;
    }

    v12 = 0;
    goto LABEL_51;
  }

LABEL_53:
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v49);
LABEL_54:
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v50);
  result = v10 & (v11 ^ 1);
  if ((v11 & 1) == 0 && !v12)
  {
    di_asif::details::table::return_chunk(this, v9);
    return v10;
  }

  return result;
}

void sub_248EBF810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(va1);
  _Unwind_Resume(a1);
}

void di_asif::details::table::get_bitmap(unint64_t *__return_ptr a1@<X8>, di_asif::details::table *this@<X0>, di_asif::details::ContextASIF *a3@<X1>, uint64_t a4@<X2>, char a5@<W3>)
{
  v10 = (a4 - *(this + 44) / *(*(this + 1) + 26)) / (*(*(this + 1) + 56) * (*(*(this + 1) + 28) / *(*(this + 1) + 26)));
  v11 = di_asif::details::table::bitmap_idx_to_tag(this, v10);
  ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag((*(this + 9) + 8 * v10), v11, a1);
  if (!*a1 || (*(*a1 + 344) & 1) != 0)
  {
    v12 = *(this + 1);
    v26 = *(v12 + 56) + (*(v12 + 56) + 1) * ((a4 - *(this + 44) / *(v12 + 26)) / (*(v12 + 56) * (*(v12 + 28) / *(v12 + 26))));
    di_asif::details::table_entry_map::table_entry_map(&v23, this, v26);
    v13 = v23;
    v14 = v24;
    if (a5)
    {
      LOBYTE(v23) = 0;
      v25 = 0;
    }

    else
    {
      v15 = (*(v23 + 56) + 16 * v24);
      v16 = ref::ref_cnt::get(v15);
      v21[0] = &unk_285BF4C50;
      v21[1] = v15;
      v22 = v16;
      ref::details::ref_cnt_handle::ref_cnt_handle(&v23, v21);
      v25 = 1;
      ref::details::ref_cnt_handle::~ref_cnt_handle(v21);
    }

    (*(**(this + 1) + 32))(v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(a1, v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v21);
    if (*a1)
    {
      if ((*(*a1 + 344) & 1) == 0)
      {
        if (!*a1 || (v17 = atomic_load((*a1 + 24)), v17 != 2))
        {
          v18 = atomic_load(a1);
          v21[0] = v18;
          atomic_store(atomic_exchange(v21, 0), (*(this + 9) + 8 * v10));
          v21[0] = (*(*(v13 + 56) + 16 * v14 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v13 + 8) + 28);
          if (v21[0])
          {
            ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::make_value<di_asif::details::ContextASIF &,di_asif::details::table &,unsigned long &,unsigned long long &>(a1, a3, this, &v26, v21);
          }

          else
          {
            space = di_asif::details::dir_base::allocate_space(*(this + 1), a3, 1);
            v19 = 1;
            ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::make_value<di_asif::details::ContextASIF &,di_asif::details::table &,unsigned long &,unsigned long long &,BOOL>(a1, a3, this, &v26, &space, &v19);
          }
        }
      }
    }

    if (v25 == 1)
    {
      ref::details::ref_cnt_handle::~ref_cnt_handle(&v23);
    }
  }
}

void sub_248EBFADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    ref::details::ref_cnt_handle::~ref_cnt_handle(&a14);
  }

  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v17);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::map_element::get_block_bits(di_asif::details::map_element *this, unint64_t a2)
{
  bit = lock_free::bitmap_t::get_bit((this + 32), a2);
  if (lock_free::bitmap_t::get_bit((this + 32), a2 + 1))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  result = v5 | bit;
  if (result == 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "bitmap flag value invalid", 0xFFFFFFEA);
  }

  return result;
}

unint64_t di_asif::details::table_entry_data::get_bitmap_range(di_asif::details::table_entry_data *this)
{
  v1 = *(*this + 352);
  v2 = *(*this + 8);
  v3 = *(v2 + 56);
  v4 = *(v2 + 28);
  v5 = (v3 + v3 * *(this + 1)) / (v3 + 1) * v4;
  v6 = *(v2 + 26);
  return ((2 * (((v5 - ((v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) & 0x7FFFFFFF)) | (((v4 - v6 + v5 - ((v4 - v6 + v5 + v1) / v6 - v1 / v6) / (v3 * (v4 / v6)) * v3 * v4) / v6) << 33)) + 0x200000000;
}

unint64_t di_asif::details::map_element::search_for_pattern_mismatch(void *a1, di_asif::details::table *this, unsigned int a3, unint64_t a4, uint64_t a5)
{
  range_bits = di_asif::details::table::make_range_bits(this, a4, a5 - a4);
  mismatch_bits = HIDWORD(range_bits);
  if (range_bits != HIDWORD(range_bits))
  {
    v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
    mismatch_bits = lock_free::bitmap_t::find_mismatch_bits((a1 + 4), range_bits, mismatch_bits, &v11);
  }

  return *(this + 44) + *a1 / (*(*(this + 1) + 56) + 1) * *(*(this + 1) + 56) * *(*(this + 1) + 28) + ((mismatch_bits * *(*(this + 1) + 26)) >> 1);
}

unint64_t di_asif::details::map_element::search_for_pattern_match(void *a1, di_asif::details::table *this, unsigned int a3, unint64_t a4, uint64_t a5)
{
  if (a5 != a4)
  {
    range_bits = di_asif::details::table::make_range_bits(this, a4, a5 - a4);
    match_bits = HIDWORD(range_bits);
    if (range_bits != HIDWORD(range_bits))
    {
      v11 = a3 & 1 | (((a3 >> 1) & 1) << 8);
      match_bits = lock_free::bitmap_t::find_match_bits((a1 + 4), range_bits, match_bits, &v11);
    }

    return *(this + 44) + *a1 / (*(*(this + 1) + 56) + 1) * *(*(this + 1) + 56) * *(*(this + 1) + 28) + ((match_bits * *(*(this + 1) + 26)) >> 1);
  }

  return a4;
}

atomic_ullong *analytics_collector_t::bitmapped_entry_to_other_type(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = analytics_collector_t::handle_flag_change(a1, 3, a2);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (v4 != 2)
  {
    v8 = a1 + 18;
  }

  if (v4)
  {
    v7 = a1 + 16;
  }

  if (v4 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, -a3, memory_order_relaxed);
  return result;
}

void *di_asif::details::table_entry_obj::set_offset(void *this, unint64_t a2)
{
  v2 = *(*(*this + 8) + 28);
  v3 = (*(*this + 56) + 16 * this[1] + 8);
  if (v2 <= a2)
  {
    v4 = a2 / v2;
    v5 = *v3;
    v6 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v6, *v3 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
    if (v6 != v5)
    {
      v7 = v6;
      do
      {
        atomic_compare_exchange_strong_explicit(v3, &v7, v6 & 0xFF80000000000000 | v4, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v6;
        v6 = v7;
      }

      while (!v8);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v3, 0xFF80000000000000, memory_order_relaxed);
  }

  return this;
}

uint64_t di_asif::details::table::bitmap_idx_to_tag(di_asif::details::table *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 72);
  if ((v3 & (v3 - 1)) != 0)
  {
    v4 = 0;
    v5 = 2 * v3;
    do
    {
      v5 >>= 1;
      ++v4;
    }

    while (v5 != 1);
    v3 = 1 << v4;
  }

  v6 = *(v2 + 88);
  if (v3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v3 >>= 1;
      ++v7;
    }

    while (v3 != 1);
  }

  return ((*(this + 44) / v6) << v7) | a2;
}

unint64_t *ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(&v8, v6, 1);
    if (v8 && (*(v8 + 344) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

atomic_ullong *ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_248EC0040(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t di_asif::details::dir_base::allocate_space(atomic_ullong *this, di_asif::details::ContextASIF *a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 1, 1uLL);
  v6 = (*(*this + 16))(this);
  if (a3)
  {
    v7 = *(this + 7);
    v10[0] = &unk_285BEC918;
    v10[1] = a2;
    v10[2] = v7;
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v8 = space_allocators::FixedSize::allocate(v6, v10);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v10);
  return v8;
}

void sub_248EC0164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_248EC01A4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 288))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v2 + 264, v2);
    }
  }

  __cxa_rethrow();
}

uint64_t di_asif::details::table::allocate_backend_space_for_entry(uint64_t a1, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 + 56) + 16 * a4 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(a3 + 8) + 28))
  {
    return 0;
  }

  space = di_asif::details::dir_base::allocate_space(*(a1 + 8), a2, 0);
  if (space)
  {
    v9 = *(a3 + 56) + 16 * a4;
    v10 = *(v9 + 8);
    if ((v10 & 0x7FFFFFFFFFFFFFLL) != 0)
    {
LABEL_7:
      di_asif::details::dir_base::insert_space(*(a1 + 8), space, a2);
    }

    else
    {
      v11 = (v9 + 8);
      v12 = v10;
      v13 = space / *(*(a3 + 8) + 28);
      while (1)
      {
        atomic_compare_exchange_strong_explicit(v11, &v12, v10 & 0xFF80000000000000 | v13, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v10)
        {
          break;
        }

        v10 = v12;
        if ((v12 & 0x7FFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_7;
        }
      }
    }

    return 0;
  }

  return 4294967268;
}

uint64_t di_asif::details::dir_base::insert_space(atomic_ullong *this, unint64_t a2, di_asif::details::ContextASIF *a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 16))(this);
  v8[0] = &unk_285BEC9A8;
  v8[1] = a3;
  v8[3] = v8;
  space_allocators::FixedSize::insert(v6, a2, v8);
  result = std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v8);
  atomic_fetch_add(this + 1, 0xFFFFFFFFFFFFFFFFLL);
  return result;
}

void sub_248EC0374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void di_asif::details::table::set_entry_bitmap_range(uint64_t a1, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_data *a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v11 = *(*a3 + 8);
  di_asif::details::table::get_bitmap(&v35, a1, a2, (*(*a3 + 352) + (*(v11 + 56) + *(v11 + 56) * *(a3 + 1)) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26), 0);
  if (!v35 || (*(v35 + 344) & 1) != 0)
  {
    *&v38 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
    *(&v38 + 1) = 47;
    v39 = 16;
    di_log::logger<di_log::log_printer<497ul>>::logger(&v40, &v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Can't load bitmap while setting range", 37);
    di_log::logger<di_log::log_printer<497ul>>::~logger(&v40);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &unk_285BF4E60;
    v32 = std::generic_category();
    exception[1] = 5;
    exception[2] = v32;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't load bitmap while setting range";
  }

  v12 = (a4[1] - *a4) >> 1;
  if ((a6 & 0x100000000) != 0)
  {
    if (a6 == 3)
    {
      v13 = *(a1 + 8);
      v14 = *(v13 + 16);
      if ((*(v14 + 160) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(v35 + 224))
      {
        v15 = (v35 + 40);
      }

      else
      {
        v15 = 0;
      }

      v19 = *(v13 + 56);
      di_asif::details::map_element::get_bitmap_counts(&v40, v15, a1, *(a1 + 352) + v19 * *(v13 + 28) * (*(v35 + 40) / (v19 + 1)) + ((*(v13 + 26) * *a4) >> 1), *(a1 + 352) + v19 * *(v13 + 28) * (*(v35 + 40) / (v19 + 1)) + ((a4[1] * *(v13 + 26)) >> 1));
      analytics_collector_t::operator-=(v14, &v40);
      goto LABEL_20;
    }

    bitmap_range = di_asif::details::table_entry_data::get_bitmap_range(a3);
    v40 = bitmap_range;
    v17 = *(*(a1 + 8) + 16);
    if (*(v17 + 160) == 1)
    {
      analytics_collector_t::update_bitmapped_data_entry(v17, a6, ((HIDWORD(bitmap_range) - bitmap_range) >> 1) - v12);
    }

    if (v35)
    {
      if (*(v35 + 224))
      {
        v18 = v35 + 40;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    di_asif::details::map_element::set_range(v18, a1, &v40, a6);
  }

  v14 = *(*(a1 + 8) + 16);
  if (*(v14 + 160))
  {
LABEL_20:
    LODWORD(v40) = v7;
    v41 = v12;
    analytics_collector_t::operator+=(v14, &v40);
  }

LABEL_21:
  if (v35)
  {
    if (*(v35 + 224))
    {
      v20 = v35 + 40;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  di_asif::details::map_element::set_range(v20, a1, a4, v7);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v35);
  if ((a6 & 0x100000000) != 0 && a6 != 3)
  {
    v21 = *(*a3 + 8);
    v22 = *(a1 + 8);
    v23 = *(v22 + 56);
    di_asif::details::table_entry_map::table_entry_map(&v40, a1, v23 + (v23 + 1) * (((*(*a3 + 352) + (*(v21 + 56) + *(v21 + 56) * *(a3 + 1)) / (*(v21 + 56) + 1) * *(v21 + 28)) / *(v21 + 26) - *(a1 + 352) / *(v22 + 26)) / (v23 * (*(v22 + 28) / *(v22 + 26)))));
    v37[0] = v40;
    v37[1] = v41;
    v24 = (*(v40 + 56) + 16 * v41);
    v25 = ref::ref_cnt::get(v24);
    *&v38 = &unk_285BF4C50;
    *(&v38 + 1) = v24;
    LOBYTE(v39) = v25;
    if ((v25 & 1) == 0)
    {
      *&v35 = "di_asif::details::table::set_entry_bitmap_range(ContextASIF &, data_entry_t &, const bits_range_t &, data_entry_t::flags, std::optional<data_entry_t::flags>)";
      *(&v35 + 1) = 47;
      v36 = 16;
      di_log::logger<di_log::log_printer<528ul>>::logger(&v40, &v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Couldn't lock entry ", 20);
      di_asif::details::operator<<(v42, v37);
      di_log::logger<di_log::log_printer<528ul>>::~logger(&v40);
      v33 = __cxa_allocate_exception(0x40uLL);
      *v33 = &unk_285BF4E60;
      v34 = std::generic_category();
      v33[1] = 4294967282;
      v33[2] = v34;
      *(v33 + 24) = 0;
      *(v33 + 48) = 0;
      v33[7] = "Couldn't lock entry";
    }

    v26 = (*(*a3 + 56) + 16 * *(a3 + 1) + 8);
    v27 = *v26;
    v28 = *v26;
    atomic_compare_exchange_strong(v26, &v28, *v26 | 0xC000000000000000);
    if (v28 != v27)
    {
      v29 = v28;
      do
      {
        atomic_compare_exchange_strong(v26, &v29, v28 | 0xC000000000000000);
        v30 = v29 == v28;
        v28 = v29;
      }

      while (!v30);
    }

    atomic_store(1u, (a1 + 96));
    ref::details::ref_cnt_handle::~ref_cnt_handle(&v38);
  }
}

void sub_248EC0814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ref::details::ref_cnt_handle::~ref_cnt_handle(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<497ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<497ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BECA30;
  a1[45] = &unk_285BECB30;
  a1[46] = &unk_285BECB58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BECA30;
  a1[45] = &unk_285BECAB8;
  a1[46] = &unk_285BECAE0;
  return a1;
}

void sub_248EC0980(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<497ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

atomic_ullong *analytics_collector_t::update_bitmapped_data_entry(atomic_ullong *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  result = analytics_collector_t::handle_flag_change(a1, a2, 3);
  v7 = a1 + 15;
  v8 = a1 + 17;
  if (v4 != 2)
  {
    v8 = a1 + 18;
  }

  if (v4)
  {
    v7 = a1 + 16;
  }

  if (v4 > 1)
  {
    v7 = v8;
  }

  atomic_fetch_add_explicit(v7, a3, memory_order_relaxed);
  return result;
}

uint64_t di_asif::details::map_element::set_range(uint64_t a1, di_asif::details::table *a2, unsigned int *a3, unsigned int a4)
{
  v6 = *a3;
  v7 = a3[1];
  LOWORD(v9[0]) = a4 & 1 | (((a4 >> 1) & 1) << 8);
  result = lock_free::bitmap_t::update_pair_bits(a1 + 32, v6, v7, v9);
  if (result)
  {
    *(a1 + 113) = 1;
    result = di_asif::details::table_entry_map::table_entry_map(v9, a2, *a1);
    atomic_fetch_or((*(v9[0] + 56) + 16 * v9[1] + 8), 0x8000000000000000);
  }

  return result;
}

di_asif::details::map_element *di_asif::details::map_element::get_bitmap_counts@<X0>(uint64_t *__return_ptr a1@<X8>, di_asif::details::map_element *this@<X0>, di_asif::details::table *a3@<X3>, unint64_t a4@<X1>, unint64_t a5@<X2>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (a4 < a5)
  {
    v7 = a4;
    v8 = this;
    v10 = a1 + 3;
    v11 = a1 + 2;
    v12 = a1 + 1;
    v13 = *(a3 + 1);
    v14 = *(v13 + 26);
    do
    {
      block_bits = di_asif::details::map_element::get_block_bits(v8, 2 * ((v7 - (*(a3 + 44) + *(v13 + 56) * *(v13 + 28) * ((v7 / v14 - *(a3 + 44) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
      this = di_asif::details::map_element::search_for_pattern_match(v8, a3, block_bits, v7, a5);
      if (block_bits > 1)
      {
        v16 = v11;
        if (block_bits != 2)
        {
          v16 = v10;
        }
      }

      else
      {
        v16 = a1;
        if (block_bits)
        {
          v16 = v12;
        }
      }

      v13 = *(a3 + 1);
      v14 = *(v13 + 26);
      *v16 += (this - v7) / v14;
      v7 = this;
    }

    while (this < a5);
  }

  return this;
}

atomic_ullong *analytics_collector_t::operator-=(atomic_ullong *result, void *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, -*a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, -v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, -v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, -v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

atomic_ullong *analytics_collector_t::operator+=(atomic_ullong *result, uint64_t a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = *a2;
  v7 = result + 15;
  v8 = result + 17;
  if (*a2 != 2)
  {
    v8 = result + 18;
  }

  if (v6)
  {
    v7 = result + 16;
  }

  if (v6 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  atomic_fetch_add_explicit(v9, *(a2 + 8), memory_order_relaxed);
  v10 = result[10];
  v11 = v10;
  atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v11 != v10)
  {
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v12, (v11 & 0xFFFFFFFF00000000 | (v11 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v12 == v11;
      v11 = v12;
    }

    while (!v5);
  }

  return result;
}

{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = *a2;
  v7 = result + 11;
  v8 = result + 13;
  if (*a2 != 2)
  {
    v8 = result + 14;
  }

  if (v6)
  {
    v7 = result + 12;
  }

  if (v6 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  atomic_fetch_add_explicit(v9, *(a2 + 8), memory_order_relaxed);
  v10 = result[10];
  v11 = v10;
  atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v11 != v10)
  {
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v12, (v11 & 0xFFFFFFFF00000000 | (v11 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v12 == v11;
      v11 = v12;
    }

    while (!v5);
  }

  return result;
}

void *di_log::logger<di_log::log_printer<528ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<528ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BECC50;
  a1[45] = &unk_285BECD50;
  a1[46] = &unk_285BECD78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BECC50;
  a1[45] = &unk_285BECCD8;
  a1[46] = &unk_285BECD00;
  return a1;
}

void sub_248EC0EB8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<528ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_asif::details::table::update_map_entry(di_asif::details::table *this, uint64_t a2, unint64_t a3)
{
  result = di_asif::details::table_entry_map::table_entry_map(v13, this, a2);
  v6 = *(*(v13[0] + 8) + 28);
  v7 = (*(v13[0] + 56) + 16 * v13[1] + 8);
  if (v6 <= a3)
  {
    v8 = a3 / v6;
    v9 = *v7;
    v10 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v10, *v7 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v9)
    {
      v11 = v10;
      do
      {
        atomic_compare_exchange_strong_explicit(v7, &v11, v10 & 0xFF80000000000000 | v8, memory_order_relaxed, memory_order_relaxed);
        v12 = v11 == v10;
        v10 = v11;
      }

      while (!v12);
    }
  }

  else
  {
    atomic_fetch_and_explicit(v7, 0xFF80000000000000, memory_order_relaxed);
  }

  atomic_store(1u, this + 24);
  return result;
}

__n128 di_asif::details::table::make_unmap_iterators@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  di_asif::details::unmap_iterator_t::unmap_iterator_t(v15, a1, a2, a3, a4, a5, a6, 0);
  di_asif::details::unmap_iterator_t::unmap_iterator_t((a7 + 80), a1, a2, a3, a4, a6, a6, 0);
  v13 = v15[3];
  *(a7 + 32) = v15[2];
  *(a7 + 48) = v13;
  *(a7 + 64) = v15[4];
  result = v15[1];
  *a7 = v15[0];
  *(a7 + 16) = result;
  return result;
}

void di_asif::details::dir::defrag(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v22[0] = &unk_285BE5728;
  v22[1] = v3;
  (*(**(v3 + 16) + 80))(&v23);
  if (*(a1 + 24))
  {
    goto LABEL_46;
  }

  do
  {
    __lk.__m_ = (a1 + 3688);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 3688));
    if ((*(a1 + 24) & 1) == 0)
    {
      do
      {
        if (*(a1 + 3680))
        {
          break;
        }

        std::condition_variable::wait((a1 + 3632), &__lk);
      }

      while (*(a1 + 24) != 1);
    }

    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 2000000000;
    while ((*(a1 + 24) & 1) == 0 && v4.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v5.__d_.__rep_ = v4.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v5.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v6.__d_.__rep_)
        {
          if (v6.__d_.__rep_ < 1)
          {
            if (v6.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_16;
            }

            v7 = 0x8000000000000000;
          }

          else
          {
            if (v6.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v7 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_17;
            }

LABEL_16:
            v7 = 1000 * v6.__d_.__rep_;
LABEL_17:
            if (v7 > (v5.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
              std::condition_variable::__do_timed_wait((a1 + 3632), &__lk, v8);
              std::chrono::steady_clock::now();
              goto LABEL_21;
            }
          }
        }

        else
        {
          v7 = 0;
        }

        v8.__d_.__rep_ = v7 + v5.__d_.__rep_;
        goto LABEL_20;
      }

LABEL_21:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v4.__d_.__rep_)
      {
        break;
      }
    }

    *(a1 + 3680) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*(a1 + 168) != *(a1 + 160))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (*(a1 + 24) == 1)
        {
          break;
        }

        if (!di_asif::details::dir::defrag_table(a1, v22, v9))
        {
          ++v10;
        }

        di_asif::details::dir::get_table(&__lk, a1, v22, v9, 0, 1);
        if (__lk.__m_ && (__lk.__m_[8].__m_.__opaque[0] & 1) == 0)
        {
          if (__lk.__m_[6].__m_.__opaque[8])
          {
            v11 = &__lk.__m_->__m_.__opaque[32];
          }

          else
          {
            v11 = 0;
          }

          v10 += di_asif::details::table::defrag(v11, v22);
        }

        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&__lk);
        ++v9;
      }

      while (v9 < (*(a1 + 168) - *(a1 + 160)) >> 3);
      if (v10)
      {
        v12 = (*(*v23 + 16))(v23, 0);
        if (v12)
        {
          *&v17 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v17 + 1) = 48;
          v18 = 16;
          di_log::logger<di_log::log_printer<644ul>>::logger(&__lk, &v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Barrier failed after defrag, error ", 35);
          MEMORY[0x24C1ED390](&v20, v12);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(&__lk);
          MEMORY[0x24C1ED6A0](v21);
          DiskImage::Context::terminate_di(v22);
        }

        if (*(*(a1 + 16) + 160) == 1)
        {
          v13 = *(a1 + 32);
          if (*(v13 + 496) == 1)
          {
            DiskImageASIF::telemetry_t::send_defrag_count_event((v13 + 400), v10);
          }
        }

        v14 = *(a2 + 24);
        if (!v14)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v15 = (*(*v14 + 48))(v14, v22);
        if (v15)
        {
          *&v17 = "di_asif::details::dir::defrag(std::function<int (ContextASIF &)>)";
          *(&v17 + 1) = 48;
          v18 = 16;
          di_log::logger<di_log::log_printer<656ul>>::logger(&__lk, &v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Flush failed after defrag, ignoring. Error ", 43);
          MEMORY[0x24C1ED390](&v20, v15);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(&__lk);
          MEMORY[0x24C1ED6A0](v21);
        }
      }
    }
  }

  while (*(a1 + 24) != 1);
LABEL_46:
  v22[0] = &unk_285BE5728;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_248EC1510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  di_log::logger<di_log::log_printer<637ul>>::~logger(va);
  __cxa_end_catch();
  JUMPOUT(0x248EC1568);
}

void sub_248EC1540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  di_log::logger<di_log::log_printer<644ul>>::~logger(va);
  JUMPOUT(0x248EC1568);
}

void sub_248EC1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  di_log::logger<di_log::log_printer<656ul>>::~logger(va);
  JUMPOUT(0x248EC1568);
}

void sub_248EC1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 - 120) = a12;
  v14 = *(v12 - 96);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *di_asif::details::dir_base::create_context@<X0>(uint64_t *__return_ptr a1@<X8>, di_asif::details::dir_base *this@<X0>)
{
  v2 = *(this + 4);
  *a1 = &unk_285BE5728;
  a1[1] = v2;
  return (*(**(v2 + 16) + 80))(*(v2 + 16));
}

uint64_t di_asif::details::dir::defrag_table(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, uint64_t a3)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this + 1);
  v4 = *(this + 7);
  v5 = *(*(this + 20) + 8 * a3) * v4;
  v23 = v5;
  if (!v5 || 3 * v5 <= 4 * v3 * v4)
  {
    return 4294967274;
  }

  v9 = (*(this + 17) + 8 * a3);
  ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag(v9, a3, &v22);
  if (v22 && (*(v22 + 520) & 1) == 0)
  {
    if (*(v22 + 464))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v22 + 440, v22);
    }

    ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag(v9, a3, &v24);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v22, &v24);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v24);
    if (v22)
    {
      if ((*(v22 + 520) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  ref::Allocator<di_asif::details::table,unsigned long long>::allocate(this + 288, a3, &v24, 1);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v22, &v24);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v24);
  if (v22)
  {
    if ((*(v22 + 520) & 1) == 0)
    {
      v10 = atomic_load((v22 + 24));
      if (v10 != 2)
      {
        v13 = *(this + 7);
        if (v13)
        {
          v14 = malloc_type_valloc(v13, 0x8B7C732DuLL);
          if (!v14)
          {
            exception = __cxa_allocate_exception(8uLL);
            v16 = std::bad_alloc::bad_alloc(exception);
            __cxa_throw(v16, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
          }
        }

        else
        {
          v14 = 0;
        }

        v26[0] = &unk_285BED4C8;
        v26[3] = v26;
        v24 = v14;
        std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v25, v26);
        std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v26);
        v17 = *(this + 7);
        v18 = (*(**(a2 + 2) + 40))(*(a2 + 2));
        if (v18 - v23 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18 - v23;
        }

        v11 = di_asif::details::dir_base::move_realloc_chunk(this, a2, v24, v19, v23);
        v21 = v20;
        if (v22 && *(v22 + 464))
        {
          std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v22 + 440, v22);
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          (*(*this + 40))(this, *(this + 11) * a3, v21);
          std::mutex::lock((this + 3800));
          std::deque<unsigned long long>::emplace_back<unsigned long long &>(this + 469, &v23);
          atomic_store(1u, this + 900);
          std::mutex::unlock((this + 3800));
          v11 = 0;
        }

        std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v24, 0);
        std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v25);
        goto LABEL_16;
      }
    }
  }

  if (v22 && (*(v22 + 520) & 1) == 0)
  {
LABEL_14:
    (*(*this + 24))(this);
  }

  v11 = 4294967248;
LABEL_16:
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v22);
  return v11;
}

void sub_248EC1908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11)
{
  std::mutex::unlock((v11 + 3800));
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&a11, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v12 + 8);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&a9);
  _Unwind_Resume(a1);
}

uint64_t *di_asif::details::dir::get_table@<X0>(unint64_t *__return_ptr a1@<X8>, di_asif::details::dir *this@<X0>, di_asif::details::ContextASIF *a3@<X1>, uint64_t a4@<X2>, int a5@<W3>, uint64_t a6@<X4>)
{
  result = ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag((*(this + 17) + 8 * a4), a4, a1);
  if (!*a1 || (*(*a1 + 520) & 1) != 0)
  {
    di_asif::details::dir::load_create_table(&v14, this, a3, a4, *(*(this + 20) + 8 * a4) * *(this + 7), a5, a6);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(a1, &v14);
    result = ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v14);
    if (*a1)
    {
      if ((*(*a1 + 520) & 1) == 0)
      {
        v13 = atomic_load(a1);
        v14 = v13;
        atomic_store(atomic_exchange(&v14, 0), (*(this + 17) + 8 * a4));
      }
    }
  }

  return result;
}

uint64_t di_asif::details::table::defrag(di_asif::details::table *this, di_asif::details::ContextASIF *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = atomic_load((*(this + 1) + 8));
  v5 = *(this + 1);
  v6 = *(v5 + 28);
  if (v6)
  {
    v7 = malloc_type_valloc(*(v5 + 28), 0x8B7C732DuLL);
    if (!v7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v9, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v7 = 0;
  }

  v17[0] = &unk_285BED4C8;
  v18[1] = v17;
  v19 = v7;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v20, v17);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v17);
  di_asif::details::table::make_map_entry_iterators(v17, this, v10);
  v11 = 0;
  v12 = v4 * v6;
  while ((v17[0] != v18[3] || v17[1] != v18[4]) && (*(*(this + 1) + 24) & 1) == 0)
  {
    v13 = di_asif::details::table::defrag_map_entry(this, a2, v18, v12, v19);
    di_asif::details::table::make_data_entry_iterators_for_map(v15, this, v18);
    while (1)
    {
      if (!v13)
      {
        ++v11;
      }

      if (v15[0] == v16[3] && v15[1] == v16[4] || (*(*(this + 1) + 24) & 1) != 0)
      {
        break;
      }

      v13 = di_asif::details::table::defrag_entry(this, a2, v16, v12, v19);
      di_asif::details::data_entry_iterator_t::operator++(v15);
    }

    di_asif::details::map_entry_iterator_t::operator++(v17);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v19, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v20);
  return v11;
}

void sub_248EC1C80(_Unwind_Exception *a1)
{
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v2 - 128), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<637ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<637ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BECE70;
  a1[45] = &unk_285BECF70;
  a1[46] = &unk_285BECF98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BECE70;
  a1[45] = &unk_285BECEF8;
  a1[46] = &unk_285BECF20;
  return a1;
}

void sub_248EC1DB8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<637ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<644ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<644ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED090;
  a1[45] = &unk_285BED190;
  a1[46] = &unk_285BED1B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED090;
  a1[45] = &unk_285BED118;
  a1[46] = &unk_285BED140;
  return a1;
}

void sub_248EC1F24(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<644ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t DiskImage::Context::terminate_di(DiskImage::Context *this)
{
  v1 = *(this + 1);
  *&v4 = "DiskImage::terminate()";
  *(&v4 + 1) = 20;
  v5 = 16;
  di_log::logger<di_log::log_printer<246ul>>::logger(v6, &v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Encountered an inrecoverable I/O error, all future I/Os will be invalidated", 75);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<246ul>>::~logger_buf(v6);
  MEMORY[0x24C1ED6A0](&v8);
  atomic_store(1u, v1 + 8);
  v2 = (*(*v1 + 200))(v1);
  return process_terminator::terminate(v2);
}

void sub_248EC2050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<246ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<656ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<656ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED2B0;
  a1[45] = &unk_285BED3B0;
  a1[46] = &unk_285BED3D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED2B0;
  a1[45] = &unk_285BED338;
  a1[46] = &unk_285BED360;
  return a1;
}

void sub_248EC2168(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<656ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::dir::async_defrag(di_asif::details::dir *this)
{
  if (*(this + 453))
  {
    std::mutex::lock((this + 3688));
    *(this + 3680) = 1;
    std::condition_variable::notify_one((this + 3632));

    std::mutex::unlock((this + 3688));
  }
}

uint64_t di_asif::details::table::defrag_entry(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_obj *a3, uint64_t a4, char *a5)
{
  v5 = (*(*a3 + 56) + 16 * *(a3 + 1));
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v11 = 0;
    atomic_compare_exchange_strong(v5, &v11, 0xFFFFFFFFFFFFFFFFLL);
    v8 = v11 == 0;
  }

  v13[1] = v5;
  v14 = v8;
  v13[0] = &unk_285BF4C70;
  v15 = 0;
  if (v8)
  {
    v12 = (*(*(*a3 + 56) + 16 * *(a3 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
    v9 = di_asif::details::table::defrag_entry_locked(this, a2, a3, v12, a5);
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v13);
    if ((v9 & 0x80000000) == 0)
    {
      atomic_store(1u, this + 24);
      di_asif::details::table::return_chunk(this, v12);
    }
  }

  else
  {
    (*(**(this + 1) + 24))(*(this + 1), a2);
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v13);
    return 4294967282;
  }

  return v9;
}

uint64_t di_asif::details::table::defrag_entry_locked(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_obj *a3, uint64_t a4, char *a5)
{
  if (!a4)
  {
    return 0;
  }

  v10 = *(*(this + 1) + 28);
  v11 = (*(**(a2 + 2) + 40))(*(a2 + 2));
  if (v11 - a4 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11 - a4;
  }

  result = di_asif::details::dir_base::move_realloc_chunk(*(this + 1), a2, a5, v12, a4);
  if ((result & 0x8000000000000000) == 0)
  {
    di_asif::details::table_entry_obj::set_offset(a3, v14);
    return 0;
  }

  return result;
}

uint64_t di_asif::details::dir_base::move_realloc_chunk(atomic_ullong *this, di_asif::details::ContextASIF *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(details::get_dummy_shared_ptr() + 1);
  v28 = a3;
  v29 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = a4;
  v31 = a5;
  v32 = a4;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v11 = (*(**(a2 + 2) + 128))(*(a2 + 2), &v28);
  if (v11 != a4)
  {
    *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
    *(&v17 + 1) = 46;
    v18 = 16;
    di_log::logger<di_log::log_printer<2353ul>>::logger(&v19, &v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Can't read for defrag", 21);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(&v19);
    MEMORY[0x24C1ED6A0](v27);
    if (v11 < 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = -5;
    }

    goto LABEL_16;
  }

  space = di_asif::details::dir_base::allocate_space(this, a2, 0);
  if (space)
  {
    v13 = *(details::get_dummy_shared_ptr() + 1);
    *&v19 = a3;
    *(&v19 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = a4;
    v21 = space;
    v22 = a4;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sg_entry::operator=(&v28, &v19);
    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
    }

    v14 = (*(**(a2 + 2) + 120))(*(a2 + 2), &v28);
    if (v14 != a4)
    {
      *&v17 = "di_asif::details::dir_base::move_realloc_chunk(ContextASIF &, char *, size_t, uint64_t)";
      *(&v17 + 1) = 46;
      v18 = 16;
      di_log::logger<di_log::log_printer<2363ul>>::logger(&v19, &v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Can't write table for defrag", 28);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(&v19);
      MEMORY[0x24C1ED6A0](v27);
      di_asif::details::dir_base::insert_space(this, space, a2);
      if (v14 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = -5;
      }

LABEL_16:
      a4 = --v15;
    }
  }

  else
  {
    a4 = -28;
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  return a4;
}

void sub_248EC26A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<2363ul>>::~logger(va);
  v9 = *(v7 - 152);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table::defrag_map_entry(di_asif::details::table *this, di_asif::details::ContextASIF *a2, di_asif::details::table_entry_map *a3, uint64_t a4, char *a5)
{
  v5 = (*(*a3 + 56) + 16 * *(a3 + 1));
  v6 = (v5[1] & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
  if (!v6 || 3 * v6 <= (4 * a4))
  {
    return 4294967274;
  }

  if (*v5)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = 0;
    atomic_compare_exchange_strong(v5, &v12, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v12 == 0;
  }

  v23[1] = v5;
  v24 = v11;
  v23[0] = &unk_285BF4C70;
  v25 = 0;
  if (!v11)
  {
    (*(**(this + 1) + 24))(*(this + 1));
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v23);
    return 4294967274;
  }

  v13 = *(this + 1);
  v14 = *(v13 + 26);
  v15 = ((*(*a3 + 352) + *(a3 + 1) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / v14 - *(this + 44) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14));
  v16 = di_asif::details::table::bitmap_idx_to_tag(this, v15);
  ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag((*(this + 9) + 8 * v15), v16, &v22);
  if (!v22 || (*(v22 + 344) & 1) != 0)
  {
    goto LABEL_13;
  }

  if (*(v22 + 288))
  {
    std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v22 + 264, v22);
  }

  ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>::lock_if_tag((*(this + 9) + 8 * v15), v16, &v21);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v22, &v21);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v21);
  if (v22 && (*(v22 + 344) & 1) == 0)
  {
    (*(**(this + 1) + 24))(*(this + 1));
    v20 = 0;
    v18 = 4294967274;
  }

  else
  {
LABEL_13:
    (*(**(this + 1) + 32))(&v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v22, &v21);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v21);
    if (!v22 || (*(v22 + 344) & 1) != 0 || (v17 = atomic_load((v22 + 24)), v17 == 2))
    {
      if (v22 && (*(v22 + 344) & 1) == 0)
      {
        (*(**(this + 1) + 24))(*(this + 1));
        v18 = 4294967248;
      }

      else
      {
        v18 = 4294967274;
      }
    }

    else
    {
      v6 = (*(*(*a3 + 56) + 16 * *(a3 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28);
      v18 = di_asif::details::table::defrag_entry_locked(this, a2, a3, v6, a5);
    }

    if (v22 && (*(v22 + 344) & 1) == 0 && *(v22 + 288))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v22 + 264, v22);
    }

    v20 = 1;
  }

  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v22);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v23);
  if (!v20)
  {
    return 4294967248;
  }

  if (!v18)
  {
    atomic_store(1u, this + 24);
    di_asif::details::table::return_chunk(this, v6);
  }

  return v18;
}

void sub_248EC2A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(va1);
  _Unwind_Resume(a1);
}

uint64_t *di_asif::details::table::make_data_entry_iterators_for_map@<X0>(uint64_t *__return_ptr a1@<X8>, di_asif::details::table *this@<X0>, const di_asif::details::table_entry_map *a3@<X1>)
{
  v6 = *(*a3 + 352) + *(a3 + 1) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28);
  v7 = *(this + 1);
  v8 = *(this + 44) + *(v7 + 88);
  if (v6 >= v8)
  {
    v12 = 0;
    v11 = 0;
    v17 = 0;
    v16 = *(*a3 + 352) + *(a3 + 1) / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28);
  }

  else
  {
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(this, v6);
    v3 = a3;
    v11 = data_entry_for_offset & 0xFFFFFFFFFFFFFF00;
    v12 = data_entry_for_offset;
    v13 = *(*a3 + 8);
    v14 = *(v13 + 56);
    v15 = *(v13 + 28);
    v7 = *(this + 1);
    v16 = *(*a3 + 352) + *(a3 + 1) / (v14 + 1) * v14 * v15;
    v8 = *(this + 44) + *(v7 + 88);
    v17 = 1;
  }

  v18 = *(v7 + 26);
  v19 = *(v7 + 28) / v18;
  v20 = *(v7 + 56);
  v21 = v16 + v18 * v19 * v20;
  if (v21 >= v8)
  {
    v23 = 0;
    result = 0;
  }

  else
  {
    result = di_asif::details::table::get_data_entry_for_offset(this, v16 + v18 * v19 * v20);
    v23 = 1;
  }

  *a1 = this;
  a1[1] = v6;
  a1[2] = v11 | v12;
  a1[3] = v3;
  *(a1 + 32) = v17;
  a1[5] = this;
  a1[6] = v21;
  a1[7] = result;
  a1[8] = a3;
  *(a1 + 72) = v23;
  return result;
}

void di_asif::details::dir::~dir(di_asif::details::dir *this)
{
  *this = &unk_285BEC4E0;
  v2 = *(this + 4);
  if (*(v2 + 496) == 1)
  {
    DiskImageASIF::telemetry_t::~telemetry_t((v2 + 400));
    *(v2 + 496) = 0;
  }

  if (*(this + 453))
  {
    std::mutex::lock((this + 3688));
    *(this + 24) = 1;
    std::condition_variable::notify_one((this + 3632));
    std::mutex::unlock((this + 3688));
    std::thread::join(this + 453);
  }

  std::mutex::~mutex((this + 3800));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](this + 469);
  std::mutex::~mutex((this + 3688));
  std::condition_variable::~condition_variable((this + 3632));
  std::thread::~thread(this + 453);
  std::mutex::~mutex((this + 3536));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::~Allocator(this + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::~Allocator(this + 288);
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(this + 256, *(this + 33));
  std::mutex::~mutex(this + 3);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](this + 96);
}

{
  di_asif::details::dir::~dir(this);

  JUMPOUT(0x24C1ED730);
}

__n128 di_asif::details::dir::make_unmap_iterators@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  di_asif::details::unmap_iterator_t::unmap_iterator_t(v10, a2, a3, *(a1 + 88), *(a1 + 26), 0, *(a1 + 128), 0);
  di_asif::details::unmap_iterator_t::unmap_iterator_t((a4 + 80), a2, a3, *(a1 + 88), *(a1 + 26), *(a1 + 128), *(a1 + 128), 0);
  v8 = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = v8;
  *(a4 + 64) = v10[4];
  result = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = result;
  return result;
}

void di_asif::details::table::check_if_map_element_needed(di_asif::details::table *this, di_asif::details::ContextASIF *a2, uint64_t a3)
{
  di_asif::details::table_entry_map::table_entry_map(&v29, this, a3);
  v33 = v29;
  if ((*(*(v29 + 56) + 16 * *(&v29 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v29 + 8) + 28))
  {
    di_asif::details::table::make_data_entry_iterators_for_map(&v29, this, &v33);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    while (v26 != v32)
    {
      v5 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
      if (v5 >> 62 == 3)
      {
        return;
      }

      di_asif::details::data_entry_iterator_t::operator++(&v26);
    }

    if ((*(*(v33 + 56) + 16 * *(&v33 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
    {
      v26 = v29;
      if (v28 == v31)
      {
        if (v28)
        {
          *(&v27 + 1) = *(&v30 + 1);
        }
      }

      else if (v28)
      {
        LOBYTE(v28) = 0;
      }

      else
      {
        v27 = v30;
        LOBYTE(v28) = 1;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (v26 != v32)
      {
        ref::ref_cnt::take_exclusive(v22, (*(v27 + 56) + 16 * *(&v27 + 1)), 0);
        v6 = v24;
        if (v24 >= v25)
        {
          v7 = std::vector<ref::details::ref_cnt_set_handle>::__emplace_back_slow_path<ref::details::ref_cnt_set_handle>(&v23, v22);
        }

        else
        {
          ref::details::ref_cnt_handle::ref_cnt_handle(v24, v22);
          *v6 = &unk_285BF4C70;
          *(v6 + 24) = v22[3];
          v7 = v6 + 32;
        }

        v24 = v7;
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v22);
        v8 = atomic_load((*(v27 + 56) + 16 * *(&v27 + 1) + 8));
        if (v8 >> 62 == 3)
        {
          goto LABEL_34;
        }

        di_asif::details::data_entry_iterator_t::operator++(&v26);
      }

      v9 = v33;
      v10 = (*(v33 + 56) + 16 * *(&v33 + 1));
      if ((v10[1] & 0x7FFFFFFFFFFFFFLL) * *(*(v33 + 8) + 28))
      {
        ref::ref_cnt::take_exclusive(v22, v10, 0);
        v11 = *(v9 + 8);
        v12 = *(v11 + 28);
        if ((*(*(v9 + 56) + 16 * *(&v9 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v12)
        {
          di_asif::details::table::get_bitmap(&v21, this, a2, (*(v9 + 352) + *(v11 + 56) * v12 * (*(&v9 + 1) / (*(v11 + 56) + 1))) / *(*(this + 1) + 26), 1);
          if (v21 && (*(v21 + 344) & 1) == 0)
          {
            atomic_fetch_and((*(v9 + 56) + 16 * *(&v9 + 1) + 8), 0xBFFFFFFFFFFFFFFFLL);
            if (*(v21 + 224))
            {
              v13 = v21 + 40;
            }

            else
            {
              v13 = 0;
            }

            v14 = *(v13 + 16);
            *(v13 + 16) = 0;
            *(v13 + 24) = v14;
            *(v13 + 112) = 0;
            if (v21 && *(v21 + 288))
            {
              std::function<void ()(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long> *,ref::tagged_ptr<di_asif::details::map_element,unsigned long long> &)>::operator()(v21 + 264, v21);
            }

            v15 = *(this + 1);
            v16 = ((*(v33 + 352) + *(&v33 + 1) / (*(*(v33 + 8) + 56) + 1) * *(*(v33 + 8) + 56) * *(*(v33 + 8) + 28)) / *(v15 + 26) - *(this + 44) / *(v15 + 26)) / (*(v15 + 56) * (*(v15 + 28) / *(v15 + 26)));
            v20 = 0;
            atomic_store(atomic_exchange(&v20, 0), (*(this + 9) + 8 * v16));
            v17 = *(this + 1);
            v18 = *(v17 + 16);
            if (*(v18 + 160) == 1)
            {
              v19 = *(v30 + 8);
              lock_free::bitmap_t::set_bit(v18, ((*(v30 + 352) + (*(v19 + 56) + *(v19 + 56) * *(&v30 + 1)) / (*(v19 + 56) + 1) * *(v19 + 28)) / *(v19 + 26) - *(this + 44) / *(v17 + 26)) / (*(v17 + 56) * (*(v17 + 28) / *(v17 + 26))) + *(v17 + 72) * (*(this + 44) / *(v17 + 88)), 0);
            }
          }

          ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v21);
        }

        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v22);
      }

LABEL_34:
      v22[0] = &v23;
      std::vector<ref::details::ref_cnt_set_handle>::__destroy_vector::operator()[abi:ne200100](v22);
    }
  }
}

void sub_248EC320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_ullong a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&a11);
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(&a12);
  a12 = &a16;
  std::vector<ref::details::ref_cnt_set_handle>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *di_asif::details::operator<<(void *a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "table entry data@", 17);
  v4 = MEMORY[0x24C1ED3E0](v3, *(*a2 + 352) + (*(*(*a2 + 8) + 56) + *(*(*a2 + 8) + 56) * a2[1]) / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 28));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " = offset = ", 12);
  v6 = MEMORY[0x24C1ED3E0](v5, (*(*(*a2 + 56) + 16 * a2[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", flags = ", 10);
  v8 = atomic_load((*(*a2 + 56) + 16 * a2[1] + 8));
  v10 = v8 >> 62;
  return di_asif::details::operator<<(v7, &v10);
}

void di_asif::details::operator<<(void *a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "table entry map@", 16);
  v4 = MEMORY[0x24C1ED3E0](v3, *(*a2 + 352) + a2[1] / (*(*(*a2 + 8) + 56) + 1) * *(*(*a2 + 8) + 56) * *(*(*a2 + 8) + 28));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " = offset = ", 12);

  JUMPOUT(0x24C1ED3E0);
}

__n128 di_asif::details::table::unmap@<Q0>(uint64_t a1@<X0>, di_asif::details::ContextASIF *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  std::mutex::lock((a1 + 104));
  di_asif::details::table::make_unmap_iterators(a3, a4, *(*(a1 + 8) + 28), *(*(a1 + 8) + 26), *(a1 + 352), *(*(a1 + 8) + 88) + *(a1 + 352), v79);
  v9 = 0;
  LOBYTE(v77) = 0;
  v78 = 0;
  v69 = *(*(*(a1 + 8) + 32) + 216);
  while (*v79 != v82 || *&v79[8] != v83 || *&v79[16] != *v79 + 16 * *&v79[8] && (*&v80[8] != v84 || *&v80[24] != v85))
  {
    v10 = *&v79[24];
    v11 = *v80;
    *&v80[8] += *&v80[24] * *v80;
    *&v79[24] = di_asif::details::unmap_iterator_t::make_val(v79);
    *v80 = v12;
    v13 = v10 * *(*(a1 + 8) + 26);
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(a1, v13);
    v16 = data_entry_for_offset;
    v17 = v15;
    *&v76 = data_entry_for_offset;
    *(&v76 + 1) = v15;
    if (v78 == 1)
    {
      v18 = v77;
      v19 = *(data_entry_for_offset + 352) == *(v77 + 352) && v15 == *(&v77 + 1);
      if (!v19)
      {
        v9 |= di_asif::details::table::update_entry_if_bits_in_same_state(a1, a2, &v77);
        v20 = *(v18 + 8);
        v21 = (*(v18 + 352) + (*(v20 + 56) + *(v20 + 56) * *(&v18 + 1)) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26);
        v22 = *(a1 + 8);
        v23 = *(v22 + 56);
        v24 = *(v22 + 28);
        v25 = *(v22 + 26);
        v26 = v23 * (v24 / v25);
        v27 = *(a1 + 352) / v25;
        ++v23;
        v28 = v23 + v23 * ((v21 - v27) / v26);
        v29 = v16[1];
        if (v28 != v23 + v23 * (((v16[44] + (*(v29 + 56) + *(v29 + 56) * v17) / (*(v29 + 56) + 1) * *(v29 + 28)) / *(v29 + 26) - v27) / v26) && (v9 & 1) != 0)
        {
          di_asif::details::table::check_if_map_element_needed(a1, a2, v28 - 1);
          v9 = 0;
        }
      }

      *(&v77 + 1) = v17;
    }

    else
    {
      v77 = v76;
      v78 = 1;
    }

    v30 = atomic_load((v16[7] + 16 * v17 + 8));
    v31 = v30 >> 62;
    if (v30 >> 62 != 2)
    {
      v32 = v76;
      v33 = *(v76 + 8);
      v34 = *(v33 + 56);
      v35 = *(v33 + 28);
      if (*(v76 + 352) + (v34 + v34 * *(&v76 + 1)) / (v34 + 1) * v35 == v13 && v11 * *(*(a1 + 8) + 26) == v35)
      {
        ref::ref_cnt::take_exclusive(v74, (*(v76 + 56) + 16 * *(&v76 + 1)), 0);
        if (v75 != 1)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          di_log::logger<di_log::log_printer<973ul>>::logger(v72, &v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Couldn't lock entry ", 20);
          di_asif::details::operator<<(v73, &v76);
          di_log::logger<di_log::log_printer<973ul>>::~logger(v72);
          exception = __cxa_allocate_exception(0x40uLL);
          *exception = &unk_285BF4E60;
          v65 = std::generic_category();
          exception[1] = 4294967282;
          exception[2] = v65;
          *(exception + 24) = 0;
          *(exception + 48) = 0;
          exception[7] = "Couldn't lock entry";
        }

        v36 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v37 = v36 & 0xC000000000000000;
        if (v31 != 1 && v37 == 0x4000000000000000)
        {
          goto LABEL_32;
        }

        v39 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v40 = *v39;
        v41 = *v39 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        for (i = *v39; ; v41 = i & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000)
        {
          atomic_compare_exchange_strong(v39, &i, v41);
          if (i == v40)
          {
            break;
          }

          v40 = i;
        }

        v48 = v40 >> 62;
        di_asif::details::table::update_analytics_counters_data_entry(a1, a2, v40 >> 62, 2, &v76);
        v9 |= v48 == 3;
        v49 = (*(v76 + 56) + 16 * *(&v76 + 1) + 8);
        v50 = *v49;
        v51 = *(*(v76 + 8) + 28);
        if (v51)
        {
          atomic_fetch_and_explicit(v49, 0xFF80000000000000, memory_order_relaxed);
          goto LABEL_41;
        }

        v52 = *v49;
        v53 = *v49;
        atomic_compare_exchange_strong_explicit(v49, &v53, *v49 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
        if (v53 == v52)
        {
          atomic_store(1u, (a1 + 96));
          goto LABEL_32;
        }

        do
        {
          v54 = v53;
          atomic_compare_exchange_strong_explicit(v49, &v54, v53 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
          v19 = v54 == v53;
          v53 = v54;
        }

        while (!v19);
LABEL_41:
        v55 = (v50 & 0x7FFFFFFFFFFFFFLL) * v51;
        atomic_store(1u, (a1 + 96));
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v74);
        if (v55)
        {
          di_asif::details::table::return_chunk(a1, v55);
        }
      }

      else if ((v30 & 0x4000000000000000) != 0)
      {
        v45 = (*(v76 + 56) + 16 * *(&v76 + 1));
        v46 = ref::ref_cnt::get(v45);
        v74[0] = &unk_285BF4C50;
        v74[1] = v45;
        v75 = v46;
        if ((v46 & 1) == 0)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          di_log::logger<di_log::log_printer<998ul>>::logger(v72, &v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Couldn't lock entry ", 20);
          di_asif::details::operator<<(v73, &v76);
          di_log::logger<di_log::log_printer<998ul>>::~logger(v72);
          v62 = __cxa_allocate_exception(0x40uLL);
          *v62 = &unk_285BF4E60;
          v63 = std::generic_category();
          v62[1] = 4294967282;
          v62[2] = v63;
          *(v62 + 24) = 0;
          *(v62 + 48) = 0;
          v62[7] = "Couldn't lock entry";
        }

        v47 = *(*(a1 + 8) + 26);
        *v72 = di_asif::details::table::make_range_bits(a1, v10 * v47, v11 * v47);
        di_asif::details::table::set_entry_bitmap_range(a1, a2, &v76, v72, 2, v31 | 0x100000000);
        ref::details::ref_cnt_handle::~ref_cnt_handle(v74);
      }

      else if ((v69 & 1) == 0)
      {
        ref::ref_cnt::take_exclusive(v74, (*(v76 + 56) + 16 * *(&v76 + 1)), 0);
        if ((v75 & 1) == 0)
        {
          *&v70 = "di_asif::details::table::unmap(ContextASIF &, const unmap_extent_t *, size_t)";
          *(&v70 + 1) = 30;
          v71 = 16;
          di_log::logger<di_log::log_printer<1010ul>>::logger(v72, &v70);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Couldn't exclusively lock entry ", 32);
          di_asif::details::operator<<(v73, &v76);
          di_log::logger<di_log::log_printer<1010ul>>::~logger(v72);
          v66 = __cxa_allocate_exception(0x40uLL);
          *v66 = &unk_285BF4E60;
          v67 = std::generic_category();
          v66[1] = 4294967282;
          v66[2] = v67;
          *(v66 + 24) = 0;
          *(v66 + 48) = 0;
          v66[7] = "Couldn't lock entry";
        }

        v43 = atomic_load((*(v32 + 56) + 16 * *(&v32 + 1) + 8));
        v44 = *(*(a1 + 8) + 26);
        *v72 = di_asif::details::table::make_range_bits(a1, v10 * v44, v11 * v44);
        di_asif::details::table::set_entry_bitmap_range(a1, a2, &v76, v72, 2, (v43 >> 62) | 0x100000000);
LABEL_32:
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v74);
      }
    }
  }

  if (v78 == 1 && ((di_asif::details::table::update_entry_if_bits_in_same_state(a1, a2, &v77) | v9) & 1) != 0)
  {
    v56 = *(v77 + 8);
    v57 = *(a1 + 8);
    v58 = *(v57 + 56);
    di_asif::details::table::check_if_map_element_needed(a1, a2, v58 + (v58 + 1) * (((*(v77 + 352) + (*(v56 + 56) + *(v56 + 56) * *(&v77 + 1)) / (*(v56 + 56) + 1) * *(v56 + 28)) / *(v56 + 26) - *(a1 + 352) / *(v57 + 26)) / (v58 * (*(v57 + 28) / *(v57 + 26)))));
  }

  v59 = *&v80[16];
  a5[2] = *v80;
  a5[3] = v59;
  a5[4] = v81;
  v60 = *&v79[16];
  *a5 = *v79;
  a5[1] = v60;
  std::mutex::unlock((a1 + 104));
  return result;
}

atomic_ullong *di_asif::details::table::update_analytics_counters_data_entry(atomic_ullong *result, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(result[1] + 16);
  if (*(v5 + 160) == 1)
  {
    v7 = a3;
    v9 = result;
    analytics_collector_t::handle_flag_change(*(result[1] + 16), a3, a4);
    v10 = *(*a5 + 8);
    v11 = v9[1];
    result = lock_free::bitmap_t::get_bit(v5, ((*(*a5 + 352) + (*(v10 + 56) + *(v10 + 56) * a5[1]) / (*(v10 + 56) + 1) * *(v10 + 28)) / *(v10 + 26) - v9[44] / *(v11 + 26)) / (*(v11 + 56) * (*(v11 + 28) / *(v11 + 26))) + *(v11 + 72) * (v9[44] / *(v11 + 88)));
    if (v7 == 3)
    {
      if (result)
      {
        v12 = *(*a5 + 8);
        di_asif::details::table::get_bitmap(&v19, v9, a2, (*(*a5 + 352) + (*(v12 + 56) + *(v12 + 56) * a5[1]) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0);
        v13 = *(*a5 + 8);
        range_bits = di_asif::details::table::make_range_bits(v9, *(*a5 + 352) + (*(v13 + 56) + *(v13 + 56) * a5[1]) / (*(v13 + 56) + 1) * *(v13 + 28), *(v13 + 28));
        if (v19)
        {
          v15 = (v19 + 40);
          if (!*(v19 + 224))
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v9[1];
        v17 = *(v16 + 56);
        di_asif::details::map_element::get_bitmap_counts(v18, v15, v9, v9[44] + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1)) + ((range_bits * *(v16 + 26)) >> 1), v9[44] + ((HIDWORD(range_bits) * *(v16 + 26)) >> 1) + v17 * *(v16 + 28) * (*(v19 + 40) / (v17 + 1)));
        analytics_collector_t::operator-=(v5, v18);
        return ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v19);
      }
    }
  }

  return result;
}

void sub_248EC3E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<973ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<973ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED550;
  a1[45] = &unk_285BED650;
  a1[46] = &unk_285BED678;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED550;
  a1[45] = &unk_285BED5D8;
  a1[46] = &unk_285BED600;
  return a1;
}

void sub_248EC3F68(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<973ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<998ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<998ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED770;
  a1[45] = &unk_285BED870;
  a1[46] = &unk_285BED898;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED770;
  a1[45] = &unk_285BED7F8;
  a1[46] = &unk_285BED820;
  return a1;
}

void sub_248EC40D4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<998ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

atomic_ullong *analytics_collector_t::handle_flag_change(atomic_ullong *result, int a2, int a3)
{
  v3 = result[10];
  v4 = v3;
  atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v4 != v3)
  {
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v5, (v4 & 0xFFFFFFFF00000000 | (v4 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  v7 = result + 11;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = result + 13;
    }

    else
    {
      v8 = result + 14;
    }
  }

  else
  {
    v8 = result + 11;
    if (a2)
    {
      v8 = result + 12;
    }
  }

  atomic_fetch_add_explicit(v8, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = result + 13;
    }

    else
    {
      v7 = result + 14;
    }
  }

  else if (a3)
  {
    v7 = result + 12;
  }

  atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v6 = v11 == v10;
      v10 = v11;
    }

    while (!v6);
  }

  return result;
}

unint64_t di_asif::details::table::make_range_bits(di_asif::details::table *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  v4 = *(v3 + 26);
  if (v4 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(v3 + 26);
  }

  if (!a3)
  {
    v5 = 0;
  }

  v6 = *(v3 + 28);
  v7 = *(v3 + 56);
  return ((2 * (((a2 - (*(this + 44) + v7 * v6 * ((a2 / v4 - *(this + 44) / v4) / (v7 * (v6 / v4))))) / v4) & 0x7FFFFFFF)) | (((v5 + a2 - v4 - (*(this + 44) + ((v5 + a2 - v4) / v4 - *(this + 44) / v4) / (v7 * (v6 / v4)) * v7 * v6)) / v4) << 33)) + 0x200000000;
}

uint64_t di_asif::details::table::flush_mapped_entry(di_asif::details::table *this, di_asif::details::ContextASIF *a2, void *a3, char a4)
{
  if ((atomic_fetch_and((*(*a3 + 56) + 16 * a3[1] + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if ((a4 & 2) != 0)
  {
    v9 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
    if (v9)
    {
      v13 = v9;
      DiskImage::Context::terminate_di(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      if (v13 < 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = -v13;
      }

      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Can't flush asif on table flush, backend barrier failed", v15);
    }
  }

  di_asif::details::table::get_bitmap(&v22, this, a2, (*(*a3 + 352) + a3[1] / (*(*(*a3 + 8) + 56) + 1) * *(*(*a3 + 8) + 56) * *(*(*a3 + 8) + 28)) / *(*(this + 1) + 26), a4 & 1);
  if (v22 && (v22[344] & 1) == 0)
  {
    if (v22[224])
    {
      v10 = (v22 + 40);
    }

    else
    {
      v10 = 0;
    }

    v11 = di_asif::details::map_element::flush(v10, a2, this);
    if (v11)
    {
      DiskImage::Context::terminate_di(a2);
      v17 = __cxa_allocate_exception(0x40uLL);
      std::ostringstream::basic_ostringstream[abi:ne200100](v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Can't flush asif table, bitmap flush failed ", 44);
      if (a4)
      {
        v18 = "(locked)";
      }

      else
      {
        v18 = "(unlocked)";
      }

      if (a4)
      {
        v19 = 8;
      }

      else
      {
        v19 = 10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v18, v19);
      if (v11 < 0)
      {
        v20 = v11;
      }

      else
      {
        v20 = -v11;
      }

      DiskImagesRuntimeException::DiskImagesRuntimeException(v17, v21, v20);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v22);
  return v4;
}

void sub_248EC4588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset((v9 - 56));
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::map_element::flush(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3)
{
  std::mutex::lock((this + 120));
  v6 = di_asif::details::map_element::flush_locked(this, a2, a3, *(*(a3 + 1) + 28));
  std::mutex::unlock((this + 120));
  return v6;
}

uint64_t di_asif::details::table::flush(di_asif::details::table *this, di_asif::details::ContextASIF *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v29 = atomic_exchange(this + 24, 0);
  std::mutex::lock((this + 280));
  v4 = *(this + 248);
  v5 = *(this + 264);
  v49 = *(this + 232);
  v50 = v4;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  v6 = v51;
  v51 = v5;
  *(this + 264) = v6;
  std::mutex::unlock((this + 280));
  v7 = *(this + 1);
  v8 = *(v7 + 26);
  v9 = *(v7 + 56);
  v10 = v8 + 8 * *(v7 + 64) - 1;
  v11 = v10 / v8 * v8;
  if (v10 == v10 % v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v11, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v28 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v28, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  v54 = &unk_285BED4C8;
  v55 = &v54;
  v52 = v12;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v53, &v54);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v54);
  v13 = v52;
  std::mutex::lock((this + 168));
  di_asif::details::table::make_map_entry_iterators(v44, this, v14);
  v15 = 0;
  *&v39 = a2;
  *(&v39 + 1) = &v43;
  *&v40 = v13;
  *(&v40 + 1) = v41;
  v36 = v39;
  v43 = *(this + 43);
  v41[0] = a2;
  v41[1] = &v42;
  v33 = a2;
  v34 = &v43;
  v37 = v40;
  v35 = v13;
  v38 = v41;
  v16 = v13;
  v42 = 0;
  while (v44[0] != v47 || v44[1] != v48)
  {
    v42 = di_asif::details::table::flush_mapped_entry(this, a2, &v45, 0);
    ref::ref_cnt::take_exclusive(v32, (*(v45 + 56) + 16 * v46), 0);
    v17 = di_asif::details::table::flush_mapped_entry(this, a2, &v45, 1);
    v42 |= v17;
    ++v15;
    if (v29)
    {
      if ((atomic_fetch_and((*(v45 + 56) + 16 * v46 + 8), 0xBFFFFFFFFFFFFFFFLL) & 0x4000000000000000) != 0 && v11 < 8 * v9 + 8)
      {
        di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0::operator()(&v39, v13);
        v16 = v13;
      }

      di_asif::details::table::make_data_entry_iterators_for_map(v30, this, &v45);
      if (v30[0] == v31[3] && v30[1] == v31[4])
      {
        v19 = atomic_load((*(v45 + 56) + 16 * v46 + 8));
        *v16 = bswap64(v19 & 0x3FFFFFFFFFFFFFFFLL);
        v55 = 0;
        operator new();
      }

      di_asif::details::table_entry_data::validate(v31);
      v18 = atomic_load((*(v31[0] + 56) + 16 * v31[1] + 8));
      *v16 = bswap64(v18);
      v55 = 0;
      operator new();
    }

    v43 = *(this + 43) + 8 * (v15 + v15 * *(*(this + 1) + 56));
    ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v32);
    di_asif::details::map_entry_iterator_t::operator++(v44);
  }

  std::mutex::unlock((this + 168));
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v52, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v53);
  v20 = *(&v51 + 1);
  v21 = (*(&v49 + 1) + 8 * (v51 >> 9));
  if (v50 == *(&v49 + 1))
  {
    v22 = 0;
    v24 = 0;
    v23 = (*(&v49 + 1) + 8 * ((v51 + *(&v51 + 1)) >> 9));
  }

  else
  {
    v22 = &(*v21)[8 * (v51 & 0x1FF)];
    v23 = (*(&v49 + 1) + 8 * ((v51 + *(&v51 + 1)) >> 9));
    v24 = (*v23 + 8 * ((v51 + *(&v51 + 1)) & 0x1FF));
  }

  di_asif::details::dir_base::insert_space<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(*(this + 1), v21, v22, v23, v24, a2);
  if (v20)
  {
    (*(**(this + 1) + 24))(*(this + 1));
  }

  v25 = *(this + 100);
  if (v25 == 1)
  {
    (*(**(this + 1) + 40))(*(this + 1), *(this + 44), *(this + 43));
    *(this + 100) = 0;
  }

  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&v49);
  return v25;
}

void sub_248EC4DCC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64x2_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62, uint64_t a63)
{
  std::mutex::unlock((v63 + 168));
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v64 - 256), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v64 - 248);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::mutex::lock((v63 + 280));
    v67 = *(v63 + 264) + *(v63 + 272);
    v68 = *(v63 + 240);
    v69 = (v68 + 8 * (v67 >> 9));
    if (*(v63 + 248) == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = *v69 + 8 * (v67 & 0x1FF);
    }

    v71 = (a59 + 8 * (a62 >> 9));
    if (a60 == a59)
    {
      v72 = 0;
      v73 = 0;
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
    }

    else
    {
      v72 = *v71 + 8 * (a62 & 0x1FF);
      v74 = (a59 + 8 * ((a63 + a62) >> 9));
      v73 = *v74 + 8 * ((a63 + a62) & 0x1FF);
    }

    std::deque<unsigned long long>::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(a10, v69, v70, v71, v72, v74, v73);
    std::mutex::unlock((v63 + 280));
    atomic_fetch_or((v63 + 96), a16 != 0);
    __cxa_rethrow();
  }

  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&a58);
  _Unwind_Resume(a1);
}

void sub_248EC4FB0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x248EC4FA8);
}

void di_asif::details::table::flush(di_asif::details::ContextASIF &)::$_0::operator()(DiskImage::Context **a1, di_asif::details::ContextASIF *a2)
{
  v4 = a1[3];
  if (**(v4 + 1) == 1)
  {
    di_asif::details::do_barrier_or_throw(*v4, a2);
    **(v4 + 1) = 0;
  }

  v5 = a1[2];
  v6 = (a2 - v5);
  v7 = *a1[1];
  v8 = *(details::get_dummy_shared_ptr() + 1);
  v16 = v5;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v6;
  v19 = v7;
  v20 = v6;
  v22 = 0;
  v23 = 0;
  v21 = 1;
  sg_entry::sg_entry(v24, &v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v9 = (*(**(*a1 + 2) + 120))(*(*a1 + 2), v24);
  *a1[1] += v6;
  if (v6 != v9)
  {
    v10 = *a1;
    v11 = v9;
    DiskImage::Context::terminate_di(v10);
    LODWORD(v12) = v11;
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = exception;
    if (v12 < 0)
    {
      v12 = v12;
    }

    else
    {
      v12 = -v12;
    }

    *exception = &unk_285BF4E60;
    v15 = std::generic_category();
    v14[1] = v12;
    v14[2] = v15;
    *(v14 + 24) = 0;
    *(v14 + 48) = 0;
    v14[7] = "Can't flush asif table, backend write failed";
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_248EC5150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL di_asif::details::table_entry_data::validate(di_asif::details::table_entry_data *this)
{
  atomic_load((*(*this + 56) + 16 * *(this + 1) + 8));
  v1 = atomic_load((*(*this + 56) + 16 * *(this + 1) + 8));
  if ((v1 & 0x3F80000000000000) != 0)
  {
    *&v3 = "di_asif::details::table_entry_data::validate() const";
    *(&v3 + 1) = 44;
    v4 = 16;
    di_log::logger<di_log::log_printer<265ul>>::logger(v5, &v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Diskimages2 - ASIF - bad reserved bits ", 39);
    *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v6, v1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(v5);
    MEMORY[0x24C1ED6A0](&v7);
  }

  return (v1 & 0x3F80000000000000) == 0;
}

void sub_248EC5278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<265ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *std::deque<unsigned long long>::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(int64x2_t *a1, char *a2, uint64_t a3, void **a4, char *a5, void **a6, char *a7)
{
  if (a7 == a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((a7 - *a6) >> 3) + ((a6 - a4) << 6) - ((a5 - *a4) >> 3);
  }

  return std::deque<unsigned long long>::__insert_bidirectional[abi:ne200100]<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t di_asif::details::dir_base::insert_space<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(atomic_ullong *a1, char **a2, char *a3, char *a4, char *a5, uint64_t a6)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 16))(a1);
  v15[0] = &unk_285BEC9A8;
  v15[1] = a6;
  v15[3] = v15;
  space_allocators::FixedSize::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(v12, a2, a3, a4, a5, v15);
  result = std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v15);
  if (a5 == a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((a2 - a4) << 6) - (&a5[-*a4] >> 3) + ((a3 - *a2) >> 3);
  }

  atomic_fetch_add(a1 + 1, v14);
  return result;
}

void sub_248EC53D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t di_asif::details::table::write(di_asif::details::table *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  *v84 = 0;
  v86 = 0;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v80, a3);
  v54 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(v80, a4))
  {
    data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(this, v82);
    v79 = v7;
    v8 = data_entry_for_offset[1];
    v9 = *(v8 + 56);
    v10 = *(v8 + 28);
    v68[0] = data_entry_for_offset[44] + (v9 + v9 * v7) / (v9 + 1) * v10;
    v68[1] = v68[0] + v10;
    v69 = 2;
    sg_vec_ns::details::sg_vec_iterator::subvec(&v72, v80, v68, a4);
    if (!sg_vec_ns::details::sg_vec_iterator::operator==(&v72, &v75))
    {
      *&v64 = &v84[1];
      *(&v64 + 1) = &data_entry_for_offset;
      v65 = v84;
      v66 = this;
      v67 = a2;
      v13 = (data_entry_for_offset[7] + 16 * v79);
      v14 = ref::ref_cnt::get(v13);
      v62[0] = &unk_285BF4C50;
      v62[1] = v13;
      v63 = v14;
      if ((v14 & 1) == 0)
      {
        *&v59 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v59 + 1) = 30;
        LODWORD(v60) = 16;
        di_log::logger<di_log::log_printer<1282ul>>::logger(v68, &v59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, "Couldn't lock entry ", 20);
        di_asif::details::operator<<(&v70, &data_entry_for_offset);
        di_log::logger<di_log::log_printer<1282ul>>::~logger(v68);
        exception = __cxa_allocate_exception(0x40uLL);
        *exception = &unk_285BF4E60;
        v49 = std::generic_category();
        exception[1] = 4294967282;
        exception[2] = v49;
        *(exception + 24) = 0;
        *(exception + 48) = 0;
        exception[7] = "Couldn't lock entry";
      }

      v15 = v79;
      v16 = data_entry_for_offset[7];
      v17 = (*(v16 + 16 * v79 + 8) & 0x7FFFFFFFFFFFFFLL) * *(data_entry_for_offset[1] + 28);
      if (!v17)
      {
        backend_space_for_entry = di_asif::details::table::allocate_backend_space_for_entry(this, a2, data_entry_for_offset, v79);
        if (!backend_space_for_entry)
        {
          v15 = v79;
          v16 = data_entry_for_offset[7];
          goto LABEL_7;
        }

        *&v59 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
        *(&v59 + 1) = 30;
        LODWORD(v60) = 16;
        di_log::logger<di_log::log_printer<1291ul>>::logger(v68, &v59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, "couldn't allocate space for entry ", 34);
        di_asif::details::operator<<(&v70, &data_entry_for_offset);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, " ret: ", 6);
        MEMORY[0x24C1ED390](&v70, backend_space_for_entry);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v68);
        MEMORY[0x24C1ED6A0](v71);
        backend_space_for_entry = backend_space_for_entry;
        goto LABEL_43;
      }

LABEL_7:
      v18 = atomic_load((v16 + 16 * v15 + 8));
      v19 = di_asif::details::table_entry_data::write(&data_entry_for_offset, a2, &v72, &v75);
      backend_space_for_entry = v19;
      v21 = v20;
      if ((v19 & 0x8000000000000000) != 0 && v19)
      {
        if (v17)
        {
          goto LABEL_42;
        }

        ref::details::ref_cnt_handle::upgrade_to_exclusive(v68, v62, 0);
        if (v69 == 1)
        {
          v22 = atomic_load((data_entry_for_offset[7] + 16 * v79 + 8));
          if ((v22 & 0x4000000000000000) == 0)
          {
            v23 = (data_entry_for_offset[7] + 16 * v79 + 8);
            v24 = *v23;
            v25 = *(data_entry_for_offset[1] + 28);
            if (v25)
            {
              atomic_fetch_and_explicit(v23, 0xFF80000000000000, memory_order_relaxed);
LABEL_58:
              v41 = (v24 & 0x7FFFFFFFFFFFFFLL) * v25;
              ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v68);
              if (v41)
              {
                di_asif::details::dir_base::insert_space(*(this + 1), v41, a2);
              }

LABEL_42:
              *&v59 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v59 + 1) = 30;
              LODWORD(v60) = 16;
              di_log::logger<di_log::log_printer<1313ul>>::logger(v68, &v59);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, "Failed during data entry write in table write, error ", 53);
              MEMORY[0x24C1ED390](&v70, backend_space_for_entry);
              std::ostream::~ostream();
              di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v68);
              MEMORY[0x24C1ED6A0](v71);
LABEL_43:
              v11 = 1;
LABEL_44:
              ref::details::ref_cnt_handle::~ref_cnt_handle(v62);
              finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(&v64);
              goto LABEL_45;
            }

            v37 = *v23;
            v38 = *v23;
            atomic_compare_exchange_strong_explicit(v23, &v38, *v23 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
            if (v38 != v37)
            {
              v39 = v38;
              do
              {
                atomic_compare_exchange_strong_explicit(v23, &v39, v38 & 0xFF80000000000000, memory_order_relaxed, memory_order_relaxed);
                v40 = v39 == v38;
                v38 = v39;
              }

              while (!v40);
              goto LABEL_58;
            }
          }
        }

        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v68);
        goto LABEL_42;
      }

      v26 = v18 >> 62;
      *&v59 = v80;
      *(&v59 + 1) = a4;
      v60 = v19;
      v61 = v20;
      if (v26 == 1)
      {
LABEL_15:
        v11 = 2;
      }

      else
      {
        v27 = data_entry_for_offset[1];
        v28 = *(v27 + 28);
        if (v19 == v28 && data_entry_for_offset[44] + (*(v27 + 56) + *(v27 + 56) * v79) / (*(v27 + 56) + 1) * v28 == v20)
        {
          ref::details::ref_cnt_handle::upgrade_to_exclusive(v57, v62, 0);
          if ((v58 & 1) == 0)
          {
            *&v55 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
            *(&v55 + 1) = 30;
            v56 = 16;
            di_log::logger<di_log::log_printer<1337ul>>::logger(v68, &v55);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, "Couldn't upgrade lock entry ", 28);
            di_asif::details::operator<<(&v70, &data_entry_for_offset);
            di_log::logger<di_log::log_printer<1337ul>>::~logger(v68);
            v50 = __cxa_allocate_exception(0x40uLL);
            *v50 = &unk_285BF4E60;
            v51 = std::generic_category();
            v50[1] = 4294967282;
            v50[2] = v51;
            *(v50 + 24) = 0;
            *(v50 + 48) = 0;
            v50[7] = "Couldn't upgrade lock entry";
          }

          v29 = atomic_load((data_entry_for_offset[7] + 16 * v79 + 8));
          if (v26 == 2 || (v29 & 0xC000000000000000) != 0x8000000000000000)
          {
            v30 = (data_entry_for_offset[7] + 16 * v79 + 8);
            v31 = *v30;
            v32 = *v30 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
            for (i = *v30; ; v32 = i & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000)
            {
              atomic_compare_exchange_strong(v30, &i, v32);
              if (i == v31)
              {
                break;
              }

              v31 = i;
            }

            v36 = v31 >> 62;
            di_asif::details::table::update_analytics_counters_data_entry(this, a2, v31 >> 62, 1, &data_entry_for_offset);
            v84[0] |= v36 == 3;
            atomic_store(1u, this + 24);
          }

          ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v57);
          v11 = 2;
        }

        else
        {
          if (v26 == 3)
          {
            v68[0] = di_asif::details::table::make_range_bits(this, v20, v19);
            di_asif::details::table::set_entry_bitmap_range(this, a2, &data_entry_for_offset, v68, 1, 0x100000003);
          }

          else
          {
            ref::details::ref_cnt_handle::upgrade_to_exclusive(v57, v62, 0);
            if ((v58 & 1) == 0)
            {
              *&v55 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
              *(&v55 + 1) = 30;
              v56 = 16;
              di_log::logger<di_log::log_printer<1375ul>>::logger(v68, &v55);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, "Couldn't upgrade lock entry ", 28);
              di_asif::details::operator<<(&v70, &data_entry_for_offset);
              di_log::logger<di_log::log_printer<1375ul>>::~logger(v68);
              v52 = __cxa_allocate_exception(0x40uLL);
              *v52 = &unk_285BF4E60;
              v53 = std::generic_category();
              v52[1] = 4294967282;
              v52[2] = v53;
              *(v52 + 24) = 0;
              *(v52 + 48) = 0;
              v52[7] = "Couldn't upgrade lock entry";
            }

            v34 = atomic_load((data_entry_for_offset[7] + 16 * v79 + 8));
            if (!((*(data_entry_for_offset[7] + 16 * v79 + 8) & 0x7FFFFFFFFFFFFFLL) * *(data_entry_for_offset[1] + 28)) || (v35 = v34 >> 62, v34 >> 62 == 1))
            {
              ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v57);
              goto LABEL_15;
            }

            v68[0] = di_asif::details::table::make_range_bits(this, v21, backend_space_for_entry);
            di_asif::details::table::set_entry_bitmap_range(this, a2, &data_entry_for_offset, v68, 1, v35 | 0x100000000);
            ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v57);
          }

          if (v17)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            atomic_store(1u, this + 24);
          }
        }
      }

      v54 += backend_space_for_entry;
      finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_1>::~finally(&v59);
      goto LABEL_44;
    }

    *&v64 = "di_asif::details::table::write(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v64 + 1) = 30;
    LODWORD(v65) = 16;
    di_log::logger<di_log::log_printer<1260ul>>::logger(v68, &v64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v70, "Couldn't trim entry in write ", 29);
    operator<<(&v70, v80);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v68);
    MEMORY[0x24C1ED6A0](v71);
    v11 = 1;
    backend_space_for_entry = -34;
LABEL_45:
    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    if ((v11 | 2) != 2)
    {
      goto LABEL_64;
    }
  }

  if (v86 == 1)
  {
    updated = di_asif::details::table::update_entry_if_bits_in_same_state(this, a2, &v84[1]);
    backend_space_for_entry = v54;
    v43 = updated | v84[0];
    v84[0] = (updated | v84[0]) & 1;
    if (v43)
    {
      v44 = *(*&v84[1] + 8);
      v45 = *(this + 1);
      v46 = *(v45 + 56);
      di_asif::details::table::check_if_map_element_needed(this, a2, v46 + (v46 + 1) * (((*(*&v84[1] + 352) + (*(v44 + 56) + *(v44 + 56) * v85) / (*(v44 + 56) + 1) * *(v44 + 28)) / *(v44 + 26) - *(this + 44) / *(v45 + 26)) / (v46 * (*(v45 + 28) / *(v45 + 26)))));
    }
  }

  else
  {
    backend_space_for_entry = v54;
  }

LABEL_64:
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  return backend_space_for_entry;
}

void sub_248EC5D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(&a15);
  finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_1>::~finally(&a19);
  ref::details::ref_cnt_handle::~ref_cnt_handle(&a23);
  finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(&a26);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&STACK[0x2B8]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x488]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<1260ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1260ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEDBB0;
  a1[45] = &unk_285BEDCB0;
  a1[46] = &unk_285BEDCD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEDBB0;
  a1[45] = &unk_285BEDC38;
  a1[46] = &unk_285BEDC60;
  return a1;
}

void sub_248EC5F94(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1260ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1282ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1282ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEDDD0;
  a1[45] = &unk_285BEDED0;
  a1[46] = &unk_285BEDEF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEDDD0;
  a1[45] = &unk_285BEDE58;
  a1[46] = &unk_285BEDE80;
  return a1;
}

void sub_248EC6100(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1282ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1291ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1291ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEDFF0;
  a1[45] = &unk_285BEE0F0;
  a1[46] = &unk_285BEE118;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEDFF0;
  a1[45] = &unk_285BEE078;
  a1[46] = &unk_285BEE0A0;
  return a1;
}

void sub_248EC626C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1291ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::table_entry_data::write(di_asif::details::table_entry_data *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, std::__shared_weak_count **a4)
{
  v126[48] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v5 = *(*this + 8);
  v6 = *(v5 + 28);
  if (!((*(*(*this + 56) + 16 * v4 + 8) & 0x7FFFFFFFFFFFFFLL) * v6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "ASIF: No data offset found (write)", 0xFFFFFFEA);
  }

  *&v108 = *(*this + 352) + (*(v5 + 56) + *(v5 + 56) * v4) / (*(v5 + 56) + 1) * v6;
  *(&v108 + 1) = v108 + v6;
  LOBYTE(v109) = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(&v70, a3, &v108, a4);
  if (sg_vec_ns::details::sg_vec_iterator::operator==(&v70, &v73))
  {
    v11 = -34;
  }

  else
  {
    __p = v126;
    v125 = xmmword_248F9D670;
    v12 = *(a3 + 136);
    v108 = *(a3 + 120);
    v109 = v12;
    v110 = *(a3 + 152);
    v111 = *(a3 + 168);
    v13 = *(a3 + 23);
    v112 = *(a3 + 22);
    v113 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v114 = *(a3 + 12);
    v14 = a4[15];
    v15 = a4[16];
    v16 = a4[17];
    v17 = a4[23];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = 0;
    for (i = 0; ; ++i)
    {
      v20 = v108 == v14 && *(&v108 + 1) == v15;
      if (v20 && v109 == v16)
      {
        break;
      }

      v18 += 24;
      sg_vec_ns::details::buffer_iterator::operator++(&v108);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v113)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
    }

    if (*(&v125 + 1) < i)
    {
      if (i >= 0x555555555555556)
      {
        boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v10);
      }

      v22 = operator new(v18);
      boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_range_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,boost::move_iterator<lw_future<int>*>,lw_future<int>*>>(&__p, v22, i, __p + 24 * v125, 0, 0);
    }

    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v59, a3);
    sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v48, a4);
    sg_entry::sg_entry(v87, v59);
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v92 = v64;
    v93 = v65;
    v23 = v66;
    v66 = 0uLL;
    v94 = v23;
    v95 = v67;
    v97 = v69;
    v96 = v68;
    sg_entry::sg_entry(v76, v48);
    v24 = 0;
    v25 = 0;
    v78 = v50;
    v79 = v51;
    v80 = v52;
    v81 = v53;
    v82 = v54;
    v26 = v55;
    v55 = 0uLL;
    v83 = v26;
    v84 = v56;
    v27 = v57;
    v86 = v58;
    v85 = v57;
    LOBYTE(v108) = 0;
    v120 = 0;
    while (!sg_vec_ns::details::sg_vec_iterator::operator==(v87, v76))
    {
      if (v96 >= v27 || v25 == -1)
      {
        break;
      }

      if (DIDebugLogsEnabled())
      {
        *&v104 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1990:32)]";
        *(&v104 + 1) = 104;
        LODWORD(v105) = 2;
        di_log::logger<di_log::log_printer<624ul>>::logger(&v99, &v104);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "sg: ", 4);
        operator<<(&v102, v87);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(&v99);
        MEMORY[0x24C1ED6A0](&v103);
      }

      v99 = 0;
      v100 = v27;
      v101 = 2;
      trim_sg_to_interval(v87, &v99, &v104);
      v29 = *(*(*this + 8) + 28);
      sg_entry::sg_entry<sg_entry const&,void>(&v99, &v104, v105, 0, v106 % v29 + (*(*(*this + 56) + 16 * *(this + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v29, v107);
      (*(**(a2 + 2) + 144))(v121);
      v30 = __p + 24 * v125;
      if (v125 == *(&v125 + 1))
      {
        boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(&__p, v30, 1, v121, &v123);
      }

      else
      {
        *v30 = 0;
        v30[4] = 0;
        *(v30 + 1) = 0;
        if (BYTE4(v121[0]) == 1)
        {
          *v30 = v121[0];
          v30[4] = 1;
        }

        *(v30 + 2) = v122;
        v122 = 0;
        v31 = *(v30 + 2);
        if (v31)
        {
          *v31 = v30;
        }

        *&v125 = v125 + 1;
      }

      v32 = v106;
      v33 = v105;
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v100);
      }

      v34 = v33 >= 0 || v33 == 0;
      v35 = v34;
      if (v34)
      {
        if ((v24 & 1) == 0)
        {
          v24 = 1;
        }

        if (sg_vec_ns::should_create_new_sg_vec_ref(v87, v76, v32, v33))
        {
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v98, v87);
          sg_vec_ns::generate_vec_ref(v98, v76, v32, v33, 0xFFFFFFFFFFFFFFFFLL, &v99);
          std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(&v108, &v99);
          sg_vec_ref::~sg_vec_ref(&v99);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v98);
          sg_vec_ref::begin(&v108, &v99);
          sg_vec_ns::details::sg_vec_iterator::operator=(v87, &v99);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v99);
          sg_vec_ref::end(&v108, &v99);
          sg_vec_ns::details::sg_vec_iterator::operator=(v76, &v99);
          sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v99);
        }

        sg_vec_ns::details::sg_vec_iterator::operator+=(v87, v33);
        v25 += v33;
      }

      else
      {
        if (v33 >= 0)
        {
          v36 = v33;
        }

        else
        {
          v36 = -v33;
        }

        v46 = -v36;
      }

      if (*(&v104 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v104 + 1));
      }

      if ((v35 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v46 = v25;
LABEL_63:
    v11 = v46;
    if (v120 == 1)
    {
      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

      if (v118)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v118);
      }

      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

      if (v116)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v116);
      }

      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }

      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v114);
      }
    }

    if (*(&v83 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v83 + 1));
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v77);
    }

    if (*(&v94 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v94 + 1));
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (*(&v55 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v55 + 1));
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (*(&v66 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v66 + 1));
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    if ((v46 & 0x8000000000000000) == 0 || !v46)
    {
      (*(**(a2 + 2) + 152))(*(a2 + 2));
      if (v125)
      {
        v38 = 0;
        v39 = __p;
        v40 = 24 * v125;
        do
        {
          v41 = lw_future<int>::get(v39, v37);
          if (v41 < 0)
          {
            break;
          }

          v38 += v41;
          v39 = (v39 + 24);
          v41 = v38;
          v40 -= 24;
        }

        while (v40);
      }

      else
      {
        v41 = 0;
      }

      if (v46 != v41)
      {
        if (v41 < 0)
        {
          v42 = v41;
        }

        else
        {
          v42 = -5;
        }

        v11 = --v42;
      }
    }

    if (*(&v125 + 1) && v126 != __p)
    {
      operator delete(__p);
    }
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  return v11;
}

void sub_248EC6A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x640]);
  if (STACK[0x918])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x918]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x980]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x3A0]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x480]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a13);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a41);
  if (STACK[0xC90])
  {
    if (a10 != STACK[0xC80])
    {
      operator delete(STACK[0xC80]);
    }
  }

  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&a65);
  _Unwind_Resume(a1);
}

void sub_248EC6B9C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  if (STACK[0x9C0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x9C0]);
  }

  JUMPOUT(0x248EC6B70);
}

void *di_log::logger<di_log::log_printer<1313ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1313ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE210;
  a1[45] = &unk_285BEE310;
  a1[46] = &unk_285BEE338;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE210;
  a1[45] = &unk_285BEE298;
  a1[46] = &unk_285BEE2C0;
  return a1;
}

void sub_248EC6CC0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1313ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1337ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1337ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE430;
  a1[45] = &unk_285BEE530;
  a1[46] = &unk_285BEE558;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE430;
  a1[45] = &unk_285BEE4B8;
  a1[46] = &unk_285BEE4E0;
  return a1;
}

void sub_248EC6E2C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1337ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<1375ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1375ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE650;
  a1[45] = &unk_285BEE750;
  a1[46] = &unk_285BEE778;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE650;
  a1[45] = &unk_285BEE6D8;
  a1[46] = &unk_285BEE700;
  return a1;
}

void sub_248EC6F98(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1375ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_1>::~finally(void *a1)
{
  v2 = a1[2];
  if ((v2 & 0x8000000000000000) == 0 || !v2)
  {
    sg_vec_ns::details::sg_vec_iterator::operator+=(*a1, v2);
  }

  return a1;
}

di_asif::details::table_entry_data **finally<di_asif::details::table::write(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(di_asif::details::table_entry_data **a1)
{
  v2 = *a1;
  if (*(*a1 + 16) == 1)
  {
    v3 = a1[3];
    v4 = a1[1];
    if (*(*v4 + 352) != *(*v2 + 352) || *(v4 + 1) != *(v2 + 1))
    {
      updated = di_asif::details::table::update_entry_if_bits_in_same_state(a1[3], a1[4], v2);
      v6 = a1[2];
      v7 = (updated & 1) != 0 ? 1 : *v6;
      *v6 = v7 & 1;
      v2 = *a1;
      v8 = a1[1];
      v9 = **a1;
      v10 = *(v9 + 352);
      v11 = *(v9 + 8);
      v12 = (v10 + (*(v11 + 56) + *(v11 + 56) * *(*a1 + 1)) / (*(v11 + 56) + 1) * *(v11 + 28)) / *(v11 + 26);
      v13 = *(v3 + 1);
      v14 = *(v13 + 56);
      v15 = *(v13 + 28);
      v16 = *(v13 + 26);
      v17 = v14 * (v15 / v16);
      v18 = *(v3 + 44) / v16;
      ++v14;
      v19 = v14 + v14 * ((v12 - v18) / v17);
      v20 = *(*v8 + 8);
      if (v19 != v14 + v14 * (((*(*v8 + 352) + (*(v20 + 56) + *(v20 + 56) * *(v8 + 1)) / (*(v20 + 56) + 1) * *(v20 + 28)) / *(v20 + 26) - v18) / v17) && (v7 & 1) != 0)
      {
        di_asif::details::table::check_if_map_element_needed(v3, a1[4], v19 - 1);
        *a1[2] = 0;
        v2 = *a1;
      }
    }
  }

  v21 = a1[1];
  if (*(v2 + 16) == 1)
  {
    *(v2 + 1) = *(v21 + 1);
  }

  else
  {
    *v2 = *v21;
    *(v2 + 16) = 1;
  }

  return a1;
}

uint64_t di_asif::details::table::read(di_asif::details::table *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v6 = v5;
  v35 = v7;
  v8 = v4;
  v88[896] = *MEMORY[0x277D85DE8];
  v10 = *(v9 + 3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v50, v9);
  *&v54 = -78;
  LOBYTE(v58[0]) = 0;
  v62 = 0;
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v63, &v50);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v64, &v50);
  v36 = 0;
  v65 = v35;
  v66[0] = &v67;
  v66[1] = 0;
  v66[2] = 16;
  LOBYTE(v68) = 0;
  v69 = 0;
  v70 = &v73;
  v71 = 0;
  v72 = 16;
  v74 = 0;
  v49[0] = v58;
  v49[1] = &v54;
  v49[2] = v35;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(&v50, v6))
  {
    *&v48 = di_asif::details::table::get_data_entry_for_offset(v8, v52);
    *(&v48 + 1) = v11;
    v12 = *(v48 + 8);
    v13 = *(v12 + 56);
    v14 = *(v12 + 28);
    *&v75 = *(v48 + 352) + (v13 + v13 * v11) / (v13 + 1) * v14;
    *(&v75 + 1) = v75 + v14;
    LOBYTE(v76) = 2;
    sg_vec_ns::details::sg_vec_iterator::subvec(&v42, &v50, &v75, v6);
    if (!sg_vec_ns::details::sg_vec_iterator::operator==(&v42, &v45))
    {
      if (v69 == 1 && !di_asif::details::table_entry_obj::is_physically_contiguous(&v48, &v68) && (v22 = di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize_ios(v58), v22 < 0) && v22)
      {
        *&v37 = v22;
        *(&v37 + 1) = v23;
        v38 = v58;
        v39 = 0;
        v40[0] = 0;
        v41 = 0;
      }

      else
      {
        v68 = v48;
        v69 = 1;
        v16 = (*(v48 + 56) + 16 * *(&v48 + 1));
        v17 = ref::ref_cnt::get(v16);
        *&v85 = &unk_285BF4C50;
        *(&v85 + 1) = v16;
        LOBYTE(v86) = v17;
        if (v17)
        {
          v18 = 0;
        }

        else
        {
          *&v55 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)::data_entries_vectorizer_t::add_data_entry(const data_entry_t &)";
          *(&v55 + 1) = 139;
          v56 = 16;
          di_log::logger<di_log::log_printer<1594ul>>::logger(&v75, &v55);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "Couldn't lock entry ", 20);
          di_asif::details::operator<<(&v81, &v48);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(&v75);
          MEMORY[0x24C1ED6A0](v82);
          v18 = -5;
        }

        v19 = atomic_load((*(v68 + 56) + 16 * *(&v68 + 1) + 8));
        *&v37 = v18;
        v38 = v58;
        v39 = v19 >> 62;
        ref::details::ref_cnt_handle::ref_cnt_handle(v40, &v85);
        v41 = 1;
        ref::details::ref_cnt_handle::~ref_cnt_handle(&v85);
      }

      v54 = v37;
      zeros = v37;
      v21 = v37;
      if ((v37 & 0x8000000000000000) != 0 && v37)
      {
        v15 = 0;
LABEL_64:
        di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::io_result_inserter_t::~io_result_inserter_t(&v37);
        goto LABEL_65;
      }

      if (v39 <= 1)
      {
        if (v39)
        {
          if (v39 == 1)
          {
LABEL_57:
            di_asif::details::table_entry_data::future_read(&v75, &v42, &v48, v35, v66, &v45);
            v54 = v75;
            zeros = v75;
            v21 = v75;
            if ((v75 & 0x8000000000000000) == 0 || !v54)
            {
              v74 += v76;
            }
          }

LABEL_60:
          if ((zeros & 0x8000000000000000) != 0 && v21)
          {
            v15 = 0;
            v74 = 0;
          }

          else
          {
            sg_vec_ns::details::sg_vec_iterator::operator+=(&v50, zeros);
            sg_vec_ns::details::sg_vec_iterator::operator=(v64, &v50);
            v36 += zeros;
            v15 = 1;
          }

          goto LABEL_64;
        }

LABEL_26:
        zeros = di_asif::details::table_entry_data::get_zeros(&v48, &v42, &v45);
        *&v54 = zeros;
        *(&v54 + 1) = v26;
        v21 = zeros;
        goto LABEL_60;
      }

      if (v39 == 2)
      {
        goto LABEL_26;
      }

      if (v39 != 3)
      {
        goto LABEL_60;
      }

      v24 = *(v48 + 8);
      v25 = (*(v48 + 352) + (*(v24 + 56) + *(v24 + 56) * *(&v48 + 1)) / (*(v24 + 56) + 1) * *(v24 + 28)) / *(v24 + 26);
      if (v62 == 1)
      {
        if (*(v58[0] + 40) == (v25 - *(v8 + 44) / *(*(v8 + 1) + 26)) / (*(*(v8 + 1) + 56) * (*(*(v8 + 1) + 28) / *(*(v8 + 1) + 26))))
        {
          zeros = 0;
          goto LABEL_45;
        }

        v29 = di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize(v58);
        v34 = v30;
        zeros = v29;
        if (v29 < 0 && v29)
        {
          v31 = v30;
          goto LABEL_55;
        }

        if (v62)
        {
LABEL_45:
          std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<true,0>(&v75, &v42, &v45);
          if (v60 == *(&v60 + 1))
          {
            boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>>(&v59, &v59[56 * v60], 1, &v75, &v85);
            v31 = v34;
          }

          else
          {
            std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100](&v59[56 * v60], &v75);
            v31 = v34;
            *&v60 = v60 + 1;
          }

          if (v83)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }

          if (v80)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }

          if (v79)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v79);
          }

          if (*(&v75 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v75 + 1));
          }

          goto LABEL_55;
        }
      }

      else
      {
        zeros = 0;
      }

      *&v85 = 0;
      *(&v85 + 1) = v8;
      v86 = v88;
      v87 = xmmword_248F9D670;
      di_asif::details::table::get_bitmap(&v55, v8, v65, v25, 0);
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::operator=(&v85, &v55);
      ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&v55);
      if (v85 && (*(v85 + 344) & 1) == 0)
      {
        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(&v75, &v85);
        *(&v75 + 1) = *(&v85 + 1);
        v76 = &v78;
        v77 = xmmword_248F9D670;
        *&v55 = v86;
        v57 = &v86[56 * v87];
        boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::assign<boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>>(&v76, &v55, &v57);
        v28 = 1;
      }

      else
      {
        v27 = std::generic_category();
        v28 = 0;
        *&v75 = 5;
        *(&v75 + 1) = v27;
      }

      v31 = 7208;
      v84 = v28;
      di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(&v85);
      if (v84)
      {
        if (v62 == 1)
        {
          di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(v58);
          v62 = 0;
        }

        ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(v58, &v75);
        v58[1] = *(&v75 + 1);
        v59 = &v61;
        v60 = xmmword_248F9D670;
        *&v85 = v76;
        *&v55 = &v76[56 * v77];
        boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::assign<boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>>(&v59, &v85, &v55);
        v62 = 1;
        if (v84)
        {
          di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(&v75);
        }

        goto LABEL_45;
      }

      if (v75 >= 0)
      {
        v32 = v75;
      }

      else
      {
        v32 = -v75;
      }

      zeros = -v32;
LABEL_55:
      *&v54 = zeros;
      *(&v54 + 1) = v31;
      if ((zeros & 0x8000000000000000) == 0)
      {
        goto LABEL_57;
      }

      v21 = zeros;
      if (!zeros)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    }

    *&v85 = "di_asif::details::table::read(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v85 + 1) = 29;
    LODWORD(v86) = 16;
    di_log::logger<di_log::log_printer<1626ul>>::logger(&v75, &v85);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "Couldn't trim entry in read ", 28);
    operator<<(&v81, &v50);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(&v75);
    MEMORY[0x24C1ED6A0](v82);
    v15 = 0;
    *&v54 = -34;
LABEL_65:
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if ((v15 & 1) == 0)
    {
      break;
    }
  }

  if ((v54 & 0x8000000000000000) == 0 || !v54)
  {
    *&v54 = v36;
    *(&v54 + 1) = v10;
  }

  finally<di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(v49);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::~data_entries_vectorizer_t(v58);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  return v54;
}

void sub_248EC7A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::~vector(v28 + 16);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(&STACK[0x24E0]);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(&STACK[0x4110]);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::io_result_inserter_t::~io_result_inserter_t(&a20);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&a28);
  finally<di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(&STACK[0x268]);
  di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::~data_entries_vectorizer_t(&STACK[0x390]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<1626ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1626ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEE870;
  a1[45] = &unk_285BEE970;
  a1[46] = &unk_285BEE998;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEE870;
  a1[45] = &unk_285BEE8F8;
  a1[46] = &unk_285BEE920;
  return a1;
}

void sub_248EC7D1C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1626ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::table_entry_data::future_read(uint64_t *__return_ptr a1@<X8>, sg_vec_ns::details::sg_vec_iterator *a2@<X2>, void *a3@<X0>, uint64_t a4@<X1>, uint64_t *a5@<X4>, const sg_vec_ns::details::sg_vec_iterator *a6@<X3>)
{
  v10 = *(*a3 + 8);
  v11 = *(v10 + 56);
  v12 = *(v10 + 28);
  v97[0] = *(*a3 + 352) + (v11 + v11 * a3[1]) / (v11 + 1) * v12;
  v97[1] = v97[0] + v12;
  v98 = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(&v57, a2, v97, a6);
  if (sg_vec_ns::details::sg_vec_iterator::operator==(&v57, &v61))
  {
    *a1 = -34;
LABEL_83:
    a1[2] = 0;
    goto LABEL_84;
  }

  if (!((*(*(*a3 + 56) + 16 * a3[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a3 + 8) + 28)))
  {
    v30 = fill_zeros(&v57, &v61);
    v31 = v59;
    *a1 = v30;
    a1[1] = v31;
    goto LABEL_83;
  }

  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v46, &v57);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v35, &v61);
  sg_entry::sg_entry(v75, v46);
  v33 = a1;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v13 = v53;
  v53 = 0uLL;
  v82 = v13;
  v83 = v54;
  v85 = v56;
  v84 = v55;
  sg_entry::sg_entry(v64, v35);
  v34 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  v70 = v41;
  v17 = v42;
  v42 = 0uLL;
  v71 = v17;
  v72 = v43;
  v18 = v44;
  v74 = v45;
  v73 = v44;
  LOBYTE(v97[0]) = 0;
  v105 = 0;
  while (!sg_vec_ns::details::sg_vec_iterator::operator==(v75, v64))
  {
    if (v84 >= v18 || v16 == -1)
    {
      break;
    }

    if (DIDebugLogsEnabled())
    {
      *&v108 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/asif.cpp:1954:32)]";
      *(&v108 + 1) = 104;
      LODWORD(v109) = 2;
      di_log::logger<di_log::log_printer<624ul>>::logger(&v87, &v108);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v90, "sg: ", 4);
      operator<<(&v90, v75);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<624ul>>::~logger_buf(&v87);
      MEMORY[0x24C1ED6A0](&v91);
    }

    v87 = 0;
    v88 = v18;
    v89 = 2;
    trim_sg_to_interval(v75, &v87, &v92);
    v20 = *(*(*a3 + 8) + 28);
    sg_entry::sg_entry<sg_entry const&,void>(&v87, &v92, v94, 0, v95 % v20 + (*(*(*a3 + 56) + 16 * a3[1] + 8) & 0x7FFFFFFFFFFFFFLL) * v20, v96);
    v21 = (*(**(a4 + 16) + 40))(*(a4 + 16));
    v106[0] = 0;
    v106[1] = v21;
    LOBYTE(v107) = 2;
    trim_sg_to_interval(&v87, v106, &v108);
    if (v109)
    {
      (*(**(a4 + 16) + 136))(v106);
      v22 = a5[1];
      v23 = *a5 + 24 * v22;
      if (v22 == a5[2])
      {
        boost::container::vector<lw_future<int>,boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,lw_future<int>*,lw_future<int>>>(a5, v23, 1, v106, &v110);
      }

      else
      {
        *v23 = 0;
        *(v23 + 4) = 0;
        *(v23 + 8) = 0;
        if (BYTE4(v106[0]) == 1)
        {
          *v23 = v106[0];
          *(v23 + 4) = 1;
        }

        *(v23 + 16) = v107;
        v107 = 0;
        v24 = *(v23 + 16);
        if (v24)
        {
          *v24 = v23;
        }

        ++a5[1];
      }

      v34 += v109;
    }

    v25 = v95;
    v26 = v94;
    if (*(&v108 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v108 + 1));
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    v27 = v26 >= 0 || v26 == 0;
    v28 = v27;
    if (v27)
    {
      if ((v15 & 1) == 0)
      {
        v14 = v25;
        v15 = 1;
      }

      if (sg_vec_ns::should_create_new_sg_vec_ref(v75, v64, v25, v26))
      {
        sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v86, v75);
        sg_vec_ns::generate_vec_ref(v86, v64, v25, v26, 0xFFFFFFFFFFFFFFFFLL, &v87);
        std::optional<sg_vec_ref>::operator=[abi:ne200100]<sg_vec_ref,void>(v97, &v87);
        sg_vec_ref::~sg_vec_ref(&v87);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(v86);
        sg_vec_ref::begin(v97, &v87);
        sg_vec_ns::details::sg_vec_iterator::operator=(v75, &v87);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v87);
        sg_vec_ref::end(v97, &v87);
        sg_vec_ns::details::sg_vec_iterator::operator=(v64, &v87);
        sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&v87);
      }

      sg_vec_ns::details::sg_vec_iterator::operator+=(v75, v26);
      v16 += v26;
    }

    else
    {
      if (v26 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = -v26;
      }

      v32 = -v29;
    }

    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v93);
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if (v15)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0;
  }

  v32 = v16;
LABEL_50:
  if (v105 == 1)
  {
    if (v104)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v104);
    }

    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    if (v102)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v102);
    }

    if (v101)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v101);
    }

    if (v100)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
    }

    if (v99)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }
  }

  if (*(&v71 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  if (*(&v82 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v82 + 1));
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (*(&v42 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(&v53 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  *v33 = v32;
  v33[1] = v26;
  if (v32 < 0 && v32)
  {
    v33[2] = 0;
  }

  else
  {
    v33[2] = v34;
  }

LABEL_84:
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }
}

void sub_248EC8398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x640]);
  if (STACK[0x918])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x918]);
  }

  std::optional<sg_vec_ref>::~optional(&STACK[0x980]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x3A0]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x480]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a13);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a41);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&a65);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table_entry_data::get_zeros(di_asif::details::table_entry_data *this, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  v3 = *(*this + 8);
  v4 = *(v3 + 56);
  v5 = *(v3 + 28);
  v8[0] = *(*this + 352) + (v4 + v4 * *(this + 1)) / (v4 + 1) * v5;
  v8[1] = v8[0] + v5;
  v9 = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(&v10, a2, v8, a3);
  if (sg_vec_ns::details::sg_vec_iterator::operator==(&v10, &v14))
  {
    v6 = -34;
  }

  else
  {
    fill_zeros(&v10, &v14);
    v6 = (v17 - v13) & ~((v17 - v13) >> 63);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v6;
}

void sub_248EC857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(va);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::io_result_inserter_t::~io_result_inserter_t(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (*(v2 + 8104) == 1 && (*(a1 + 24) | 2) != 2)
    {
      v3 = *(v2 + 8120);
      if (v3 == *(v2 + 8128))
      {
        boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>((v2 + 8112), *(v2 + 8112) + 24 * v3, 1, a1 + 32, &v5);
      }

      else
      {
        ref::details::ref_cnt_handle::ref_cnt_handle(*(v2 + 8112) + 24 * v3, a1 + 32);
        ++*(v2 + 8120);
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    ref::details::ref_cnt_handle::~ref_cnt_handle((a1 + 32));
  }

  return a1;
}

uint64_t *finally<di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::$_0>::~finally(uint64_t *a1)
{
  v2 = di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize(*a1);
  if (v2 < 0)
  {
    if (v2)
    {
      v4 = a1[1];
      if ((*v4 & 0x8000000000000000) == 0 || !*v4)
      {
        *v4 = v2;
        v4[1] = v3;
      }
    }
  }

  return a1;
}

uint64_t di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::~data_entries_vectorizer_t(uint64_t a1)
{
  boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::~vector(a1 + 8112);
  if (*(a1 + 7696))
  {
    v2 = *(a1 + 7680);
    if ((a1 + 7704) != v2)
    {
      operator delete(v2);
    }
  }

  v3 = *(a1 + 7624);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 7448);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 7400);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 7224);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(a1 + 7208) == 1)
  {
    di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(a1);
  }

  return a1;
}

uint64_t di_asif::details::table::close(di_asif::details::table *this)
{
  v2 = *(*(this + 1) + 32);
  v20 = &unk_285BE5728;
  v21 = v2;
  (*(**(v2 + 16) + 80))(&v22);
  if (*(v21 + 8))
  {
    v4 = 4294967290;
  }

  else
  {
    if (atomic_load(this + 24))
    {
      LODWORD(v6) = (*(*v22 + 16))(v22, 0);
      if (v6)
      {
        DiskImage::Context::terminate_di(&v20);
        exception = __cxa_allocate_exception(0x40uLL);
        v15 = exception;
        if (v6 < 0)
        {
          v6 = v6;
        }

        else
        {
          v6 = -v6;
        }

        *exception = &unk_285BF4E60;
        v16 = std::generic_category();
        v15[1] = v6;
        v15[2] = v16;
        *(v15 + 24) = 0;
        *(v15 + 48) = 0;
        v15[7] = "Can't flush asif on table close, backend barrier failed";
      }

      di_asif::details::table::flush(this, &v20);
    }

    else
    {
      di_asif::details::table::make_map_entry_iterators(v18, this, v3);
      v8 = 1;
      while (v18[0] != v19[3] || v18[1] != v19[4])
      {
        if (v8)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = di_asif::details::table::flush_mapped_entry(this, &v20, v19, v9);
        ref::ref_cnt::take_exclusive(v17, (*(v19[0] + 56) + 16 * v19[1]), 0);
        v11 = v10 | v8 ^ 1;
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = 3;
        }

        v13 = di_asif::details::table::flush_mapped_entry(this, &v20, v19, v12);
        ref::details::ref_cnt_set_handle::~ref_cnt_set_handle(v17);
        di_asif::details::map_entry_iterator_t::operator++(v18);
        v8 = (v13 | v11) ^ 1;
      }
    }

    v4 = 0;
  }

  v20 = &unk_285BE5728;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return v4;
}

void sub_248EC897C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, char a14)
{
  *(v15 - 96) = v14;
  v17 = *(v15 - 72);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<1698ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1698ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEECB0;
  a1[45] = &unk_285BEEDB0;
  a1[46] = &unk_285BEEDD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEECB0;
  a1[45] = &unk_285BEED38;
  a1[46] = &unk_285BEED60;
  return a1;
}

void sub_248EC8B5C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1698ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t *ref::ref_cnt::take_exclusive@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v4 = this;
  while (1)
  {
    if (!*v4)
    {
      v6 = 0;
      atomic_compare_exchange_strong(v4, &v6, 0xFFFFFFFFFFFFFFFFLL);
      if (!v6)
      {
        break;
      }
    }

    this = ref::ref_cnt::wait_fn(v4, 1);
    if ((this & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = 1;
LABEL_7:
  *(a1 + 16) = v7;
  *a1 = &unk_285BF4C70;
  a1[1] = v4;
  a1[3] = a3;
  return this;
}

BOOL di_asif::details::table_entry_obj::is_physically_contiguous(di_asif::details::table_entry_obj *this, const di_asif::details::table_entry_obj *a2)
{
  v2 = *(*(*this + 8) + 28);
  v3 = (*(*(*this + 56) + 16 * *(this + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * v2;
  v4 = (*(*(*a2 + 56) + 16 * *(a2 + 1) + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(*a2 + 8) + 28);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5 || v3 == v4 + v2;
}

uint64_t Backend::get_returned_io_size(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = *a1;
  v5 = 24 * v2;
  while (1)
  {
    v6 = lw_future<int>::get(v4, a2);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v3 = (v6 + v3);
    v4 = (v4 + 24);
    v5 -= 24;
    if (!v5)
    {
      return v3;
    }
  }

  return v6;
}

uint64_t di_asif::details::map_element::flush_locked(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, uint64_t a4)
{
  if (*(this + 113) != 1)
  {
    goto LABEL_14;
  }

  *(this + 113) = 0;
  v6 = *(this + 2);
  if (!v6)
  {
    goto LABEL_14;
  }

  v9 = *(this + 5);
  v10 = *(details::get_dummy_shared_ptr() + 1);
  v17 = v9;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a4;
  v20 = v6;
  v21 = a4;
  v23 = 0;
  v24 = 0;
  v22 = 1;
  sg_entry::sg_entry(v27, &v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v11 = (*(**(a2 + 2) + 120))(*(a2 + 2), v27);
  v12 = v29;
  if (v29 != v11)
  {
    *&v15 = "di_asif::details::map_element::flush_locked(ContextASIF &, table *, size_t)";
    *(&v15 + 1) = 43;
    v16 = 16;
    di_log::logger<di_log::log_printer<2098ul>>::logger(&v17, &v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "backend write failed during locked flush of map element, error ", 63);
    MEMORY[0x24C1ED390](&v25, v11);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(&v17);
    MEMORY[0x24C1ED6A0](&v26);
    *(this + 113) = 1;
    DiskImage::Context::terminate_di(a2);
    if (v11 < 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = -v11;
    }
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v12 == v11)
  {
LABEL_14:
    v6 = 0;
    if (a3 && (*(this + 112) & 1) != 0)
    {
      *(this + 112) = 0;
      di_asif::details::table::update_map_entry(a3, *this, *(this + 2));
      if (!*(this + 2))
      {
        v13 = *(this + 3);
        if (v13)
        {
          di_asif::details::table::return_chunk(a3, v13);
        }
      }

      return 0;
    }
  }

  return v6;
}

void sub_248EC8EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 168);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<2098ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2098ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEEED0;
  a1[45] = &unk_285BEEFD0;
  a1[46] = &unk_285BEEFF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEEED0;
  a1[45] = &unk_285BEEF58;
  a1[46] = &unk_285BEEF80;
  return a1;
}

void sub_248EC9034(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2098ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::map_element::zero_range_in_sg(di_asif::details::map_element *this, const di_asif::details::table *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v7 = *(this + 1) + *(*(a2 + 1) + 56) * *(*(a2 + 1) + 28);
  v30[0] = *(this + 1);
  v30[1] = v7;
  v31 = 2;
  sg_vec_ns::details::sg_vec_iterator::subvec(&v45, a3, v30, a4);
  if (!sg_vec_ns::details::sg_vec_iterator::operator==(&v45, &v50))
  {
    v8 = *(*(a2 + 1) + 26);
    v9 = v47 / v8 * v8;
    v19 = (v53 - v49) & ~((v53 - v49) >> 63);
    v10 = v19 + v47;
    v11 = (v8 + v19 + v47 - 1) / v8 * v8;
    if (v9 < v11)
    {
      v12 = v47 % v8;
      do
      {
        v13 = di_asif::details::map_element::search_for_pattern_mismatch(this, a2, 1u, v9, v11);
        v14 = v13;
        if (v10 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v10;
        }

        v16 = v9 + v12;
        if (v15 > v9 + v12)
        {
          if (v19 - ((v49 - *(a3 + 26)) & ~((v49 - *(a3 + 26)) >> 63)) >= v15 - (v9 + v12))
          {
            v17 = v15 - (v9 + v12);
          }

          else
          {
            v17 = v19 - ((v49 - *(a3 + 26)) & ~((v49 - *(a3 + 26)) >> 63));
          }

          sg_vec_ns::details::sg_vec_iterator::subvec(&v38, &v45, a4, v17 + v47, 0);
          sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(v27, &v38);
          sg_vec_ns::generate_vec_ref(v27, &v42, v40, v17, 0xFFFFFFFFFFFFFFFFLL, v30);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          sg_vec_ref::begin(v30, v24);
          sg_vec_ref::end(v30, v21);
          fill_written_zeros(v24, v21);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          }

          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }

          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }
        }

        v18 = di_asif::details::map_element::search_for_pattern_match(this, a2, 1u, v14, v11);
        v9 = v18;
        if (v18 >= v15 + v12)
        {
          sg_vec_ns::details::sg_vec_iterator::operator+=(&v45, v18 - v16);
          v12 = 0;
        }
      }

      while (v9 < v10);
    }
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void di_asif::details::map_element::load(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3)
{
  v6 = *(this + 5);
  v7 = *(*(a3 + 1) + 28);
  v8 = *(this + 2);
  v9 = *(details::get_dummy_shared_ptr() + 1);
  v15 = v6;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v7;
  v18 = v8;
  v19 = v7;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v10 = (*(**(a2 + 2) + 128))(*(a2 + 2), &v15);
  if (v17 != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = exception;
    if (v10 < 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = -v10;
    }

    *exception = &unk_285BF4E60;
    v14 = std::generic_category();
    v12[1] = v13;
    v12[2] = v14;
    *(v12 + 24) = 0;
    *(v12 + 48) = 0;
    v12[7] = "Can't load bitmap from backend";
  }

  di_asif::details::map_element::validate_bitmap(this, a3);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_248EC9520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t di_asif::details::map_element::validate_bitmap(di_asif::details::map_element *this, di_asif::details::table *a2)
{
  di_asif::details::table_entry_map::table_entry_map(v23, a2, *this);
  v20 = v23[0];
  result = di_asif::details::table::make_data_entry_iterators_for_map(v23, a2, &v20);
  v5 = *(a2 + 1);
  v6 = *(v5 + 16);
  if (*(v6 + 160) != 1 || (v7 = (*(this + 1) / *(v5 + 26) - *(a2 + 44) / *(v5 + 26)) / (*(v5 + 56) * (*(v5 + 28) / *(v5 + 26))) + *(v5 + 72) * (*(a2 + 44) / *(v5 + 88)), result = lock_free::bitmap_t::get_bit(v6, v7), (result & 1) != 0) || v7 >= *(v6 + 16))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    result = lock_free::bitmap_t::set_bit(v6, v7, 1);
  }

  v22 = v24;
  v20 = v23[0];
  v21 = v23[1];
  v9 = *(a2 + 1);
  v10 = *(v9 + 26);
  v11 = *(v9 + 28);
  v18 = 0u;
  v19 = 0u;
  if (2 * v11 / v10 * *(v9 + 56))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!((v13 >> 1) * v10 % v11))
      {
        if (v13)
        {
          di_asif::details::data_entry_iterator_t::operator++(&v20);
          v12 = 0;
        }

        v15 = atomic_load((*(v21 + 56) + 16 * *(&v21 + 1) + 8));
        v12 |= v15 >> 62 == 3;
        v14 += 2 * (v11 / v10);
      }

      block_bits = di_asif::details::map_element::get_block_bits(this, v13);
      result = v13;
      if (v13 != v14)
      {
        v25[0] = block_bits & 1 | (((block_bits >> 1) & 1) << 8);
        result = lock_free::bitmap_t::find_match_bits(this + 32, v13, v14, v25);
      }

      if ((v8 & v12) == 1)
      {
        if (block_bits > 1)
        {
          v17 = &v19;
          if (block_bits != 2)
          {
            v17 = &v19 + 8;
          }
        }

        else if (block_bits)
        {
          v17 = &v18 + 8;
        }

        else
        {
          v17 = &v18;
        }

        *v17 += (result - v13) >> 1;
      }

      v13 = result;
    }

    while (result < 2 * (*(*(a2 + 1) + 28) / *(*(a2 + 1) + 26)) * *(*(a2 + 1) + 56));
  }

  if (v8)
  {
    return analytics_collector_t::operator+=(v6, &v18);
  }

  return result;
}

atomic_ullong *analytics_collector_t::operator+=(atomic_ullong *result, unint64_t *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 15, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 16, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 17, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 18, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, (v2 & 0xFFFFFFFF00000000 | (v2 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, (v3 & 0xFFFFFFFF00000000 | (v3 + 1)) + 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 11, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 12, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 13, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 14, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

di_asif::details::map_element *di_asif::details::map_element::map_element(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, unint64_t a4, uint64_t a5, char a6)
{
  *this = a4;
  v9 = *(a3 + 1);
  v10 = *(v9 + 56);
  v11 = *(v9 + 28);
  *(this + 1) = *(a3 + 44) + a4 / (v10 + 1) * v10 * v11;
  *(this + 2) = a5;
  *(this + 3) = 0;
  v12 = a6 ^ 1;
  lock_free::bitmap_dynamically_allocated_t::bitmap_dynamically_allocated_t(this + 4, 2 * v10 * (v11 / *(v9 + 26)), a6 ^ 1);
  *(this + 15) = 850045863;
  *(this + 56) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  if (v12)
  {
    di_asif::details::map_element::load(this, a2, a3);
  }

  else
  {
    *(this + 56) = 257;
    di_asif::details::table_entry_map::table_entry_map(&v16, a3, *this);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x8000000000000000);
    di_asif::details::table_entry_map::table_entry_map(&v16, a3, *this);
    atomic_fetch_or((*(v16 + 56) + 16 * v17 + 8), 0x4000000000000000uLL);
    v13 = *(a3 + 1);
    v14 = *(v13 + 16);
    if (*(v14 + 160) == 1)
    {
      lock_free::bitmap_t::set_bit(v14, (*(this + 1) / *(v13 + 26) - *(a3 + 44) / *(v13 + 26)) / (*(v13 + 56) * (*(v13 + 28) / *(v13 + 26))) + *(v13 + 72) * (*(a3 + 44) / *(v13 + 88)), 1);
    }
  }

  return this;
}

void sub_248EC99F8(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  lock_free::bitmap_dynamically_allocated_t::~bitmap_dynamically_allocated_t((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::map_element::close(di_asif::details::map_element *this, di_asif::details::ContextASIF *a2, di_asif::details::table *a3, uint64_t a4)
{
  if ((*(*(a2 + 1) + 8) & 1) == 0)
  {
    std::mutex::lock((this + 120));
    if (a3 && (di_asif::details::table_entry_map::table_entry_map(&v17, a3, *this), (atomic_fetch_and((*(v17 + 56) + 16 * v18 + 8), 0x7FFFFFFFFFFFFFFFuLL) & 0x8000000000000000) != 0))
    {
      v9 = 1;
    }

    else
    {
      if ((*(this + 113) & 1) == 0)
      {
        v4 = 0;
        if (*(this + 112) != 1)
        {
LABEL_16:
          std::mutex::unlock((this + 120));
          return v4;
        }
      }

      v9 = 0;
    }

    v10 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
    if (v10)
    {
      DiskImage::Context::terminate_di(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = exception;
      if (v10 < 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = -v10;
      }

      *exception = &unk_285BF4E60;
      v16 = std::generic_category();
      v14[1] = v15;
      v14[2] = v16;
      *(v14 + 24) = 0;
      *(v14 + 48) = 0;
      v14[7] = "Can't flush asif on map element close, backend barrier failed";
    }

    v4 = di_asif::details::map_element::flush_locked(this, a2, a3, a4);
    if (v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (a3 && v11)
    {
      di_asif::details::table_entry_map::table_entry_map(&v17, a3, *this);
      atomic_fetch_or((*(v17 + 56) + 16 * v18 + 8), 0x8000000000000000);
    }

    goto LABEL_16;
  }

  return 4294967290;
}

uint64_t *di_asif::details::dir::load_create_table@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, di_asif::details::ContextASIF *a3@<X1>, std::unique_lock<std::mutex>::mutex_type *a4@<X2>, uint64_t a5@<X3>, int a6@<W4>, uint64_t a7@<X5>)
{
  v7 = a7;
  v10 = this;
  v19 = a5;
  *a1 = 0;
  if (a5 || a6)
  {
    ref::Allocator<di_asif::details::table,unsigned long long>::allocate((this + 36), a4, &v18, a7);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(a1, &v18);
    this = ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v18);
    v12 = *a1;
    if (*a1)
    {
      LOBYTE(v12) = *(v12 + 520) ^ 1;
    }

    if (v12 & 1) != 0 || (v7)
    {
      if (!*a1 || (v13 = atomic_load((*a1 + 24)), v13 != 2))
      {
        if (!*a1 || (*(*a1 + 520) & 1) == 0)
        {
          if (v19 | (*(v10[20] + 8 * a4) * *(v10 + 7)))
          {
            if (v19)
            {
              v14 = v19;
            }

            else
            {
              v14 = *(v10[20] + 8 * a4) * *(v10 + 7);
            }

            v18 = v10[11] * a4;
            v19 = v14;
            ref::tagged_ptr<di_asif::details::table,unsigned long long>::make_value<di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long>(a1, v10, a3 + 2, &v19, &v18);
          }

          space = di_asif::details::dir_base::allocate_space(v10, a3, 1);
          v17 = v10[11] * a4;
          v18 = space;
          v16 = 1;
          ref::tagged_ptr<di_asif::details::table,unsigned long long>::make_value<di_asif::details::dir &,std::shared_ptr<Backend> &,unsigned long long &,unsigned long long,BOOL>(a1, v10, a3 + 2, &v18, &v17, &v16);
        }
      }
    }
  }

  return this;
}

atomic_ullong *ref::Allocator<di_asif::details::table,unsigned long long>::allocate@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, unint64_t *a3@<X8>, char a4@<W2>)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = a2;
  ref::Allocator<di_asif::details::table,unsigned long long>::add_tag(a1, a2, a4, &v18);
  if (v18 && (*(v18 + 520) & 1) == 0 || v18 && (*(v18 + 520) & 1) != 0)
  {
LABEL_5:
    *a3 = 0;
    v7 = atomic_exchange(&v18, 0);
  }

  else
  {
    v8 = *(a1 + 912);
    if ((v8 & 1) == 0 || v19 == (a1 + 936))
    {
      *a3 = 0;
      return ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v18);
    }

    while ((v8 & 2) == 0)
    {
      ref::Allocator<di_asif::details::table,unsigned long long>::allocate_from_empty_pool(a1, &v16, a2);
      v20 = v16;
      ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v18, &v17);
      ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v17);
      if (v18 && (*(v18 + 520) & 1) == 0)
      {
        goto LABEL_23;
      }

      min = ref::Allocator<di_asif::details::table,unsigned long long>::extract_min(a1);
      if (min)
      {
        v20 = min;
        ref::Allocator<di_asif::details::table,unsigned long long>::insert_elem(a1, min, a2, &v16);
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(&v18, &v16);
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v16);
LABEL_23:
        std::mutex::lock((a1 + 952));
        v13 = std::__tree<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *>>>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&,ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *&>((a1 + 928), v19, &v21, &v21, &v20);
        if ((v14 & 1) == 0)
        {
          v13[5] = v20;
        }

        std::condition_variable::notify_all((a1 + 1016));
        std::mutex::unlock((a1 + 952));
        v22[0] = 0;
        v23 = 0;
        ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, 0, v22);
        if (v23 == 1)
        {
          std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v22);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 912);
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = (a1 + 104);
    *a3 = 0;
    v11 = atomic_load((a1 + 104));
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        atomic_compare_exchange_strong(v7, &v12, v11 + 1);
        if (v12 == v11)
        {
          break;
        }

        v11 = v12;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v15 = *(a1 + 608);
      if (v15)
      {
        *(a1 + 616) = atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a3);
  return ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v18);
}

void sub_248EC9F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

atomic_ullong *ref::tagged_ptr<di_asif::details::table,unsigned long long>::operator=(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a2 != a1)
  {
    v3 = atomic_exchange(a2, 0);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(a1);
    atomic_store(v3, a1);
  }

  return a1;
}

void sub_248ECA064(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

void sub_248ECA0C8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (*v1)
  {
    if (*(v2 + 464))
    {
      std::function<void ()(ref::details::ctrl_blk<di_asif::details::table,unsigned long long> *,ref::tagged_ptr<di_asif::details::table,unsigned long long> &)>::operator()(v2 + 440, v2);
    }
  }

  __cxa_rethrow();
}

unint64_t *ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = atomic_load(result);
  if (v4 && *(v4 + 32) == a2)
  {
    v6 = atomic_load(result);
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::tagged_ptr(&v8, v6, 1);
    if (v8 && (*(v8 + 520) & 1) == 0)
    {
      v7 = *(v8 + 32);
      *a3 = 0;
      if (v7 == a2)
      {
        atomic_store(atomic_exchange(&v8, 0), a3);
      }
    }

    else
    {
      *a3 = 0;
    }

    return ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *di_log::logger<di_log::log_printer<2353ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2353ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF180;
  a1[45] = &unk_285BEF280;
  a1[46] = &unk_285BEF2A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF180;
  a1[45] = &unk_285BEF208;
  a1[46] = &unk_285BEF230;
  return a1;
}

void sub_248ECA2A4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2353ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2363ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2363ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF3A0;
  a1[45] = &unk_285BEF4A0;
  a1[46] = &unk_285BEF4C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF3A0;
  a1[45] = &unk_285BEF428;
  a1[46] = &unk_285BEF450;
  return a1;
}

void sub_248ECA410(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2363ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::handle_all_failures(di_asif::details::dir *this, di_asif::details::ContextASIF *a2)
{
  v4 = ref::Allocator<di_asif::details::map_element,unsigned long long>::handle_failures(this + 2088);
  if (v4 == -1)
  {
    return 4294967282;
  }

  if (v4 != 1 || ((v5 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0), v5 < 0) ? (v6 = v5) : (v6 = -v5), !v5))
  {
    v7 = ref::Allocator<di_asif::details::table,unsigned long long>::handle_failures(this + 288);
    if (v7 != -1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      v8 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
      v6 = v8 < 0 ? v8 : -v8;
      if (!v8)
      {
        return 0;
      }

      *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
      *(&v10 + 1) = 42;
      v11 = 16;
      di_log::logger<di_log::log_printer<2440ul>>::logger(v12, &v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Backend barrier failed during allocator failures handling, error ", 65);
      MEMORY[0x24C1ED390](&v13, v6);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<2440ul>>::~logger_buf(v12);
      goto LABEL_15;
    }

    return 4294967282;
  }

  *&v10 = "di_asif::details::dir::handle_all_failures(ContextASIF &)";
  *(&v10 + 1) = 42;
  v11 = 16;
  di_log::logger<di_log::log_printer<2429ul>>::logger(v12, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Backend barrier failed during bitmap allocator failures handling, error ", 72);
  MEMORY[0x24C1ED390](&v13, v6);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v12);
LABEL_15:
  MEMORY[0x24C1ED6A0](&v14);
  return v6;
}

void sub_248ECA634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<2440ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t ref::Allocator<di_asif::details::map_element,unsigned long long>::handle_failures(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v4 = 0;
  v1 = ref::Allocator<di_asif::details::map_element,unsigned long long>::run_failed_dtors_list(a1, 0, v3);
  if (v4 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v3);
  }

  return v1;
}

void sub_248ECA6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::map_element,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<2429ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2429ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF5C0;
  a1[45] = &unk_285BEF6C0;
  a1[46] = &unk_285BEF6E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF5C0;
  a1[45] = &unk_285BEF648;
  a1[46] = &unk_285BEF670;
  return a1;
}

void sub_248ECA7FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2429ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t ref::Allocator<di_asif::details::table,unsigned long long>::handle_failures(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v4 = 0;
  v1 = ref::Allocator<di_asif::details::table,unsigned long long>::run_failed_dtors_list(a1, 0, v3);
  if (v4 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](v3);
  }

  return v1;
}

void sub_248ECA8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    std::__function::__value_func<BOOL ()(ref::details::tagged_allocated_type<di_asif::details::table,unsigned long long> *,unsigned long long)>::~__value_func[abi:ne200100](&a9);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<2440ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2440ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEF7E0;
  a1[45] = &unk_285BEF8E0;
  a1[46] = &unk_285BEF908;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEF7E0;
  a1[45] = &unk_285BEF868;
  a1[46] = &unk_285BEF890;
  return a1;
}

void sub_248ECAA08(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2440ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2440ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2440ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::flush_dir(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, __int128 *a3)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  std::mutex::lock((this + 3800));
  v6 = *(this + 3768);
  v54 = *(this + 3752);
  v55 = v6;
  *(this + 3752) = 0u;
  *(this + 3768) = 0u;
  v7 = v56;
  v56 = *(this + 3784);
  *(this + 3784) = v7;
  std::mutex::unlock((this + 3800));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::wait_for_idle(this + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::wait_for_idle(this + 288);
  v8 = di_asif::details::dir::handle_all_failures(this, a2);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = *(this + 13);
  v10 = *(this + 21) - *(this + 20) + v9 + 7;
  v11 = v10 / v9 * v9;
  if (v10 == v10 % v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_valloc(v10 / v9 * v9, 0x8B7C732DuLL);
    if (!v12)
    {
      exception = __cxa_allocate_exception(8uLL);
      v43 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v43, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  *&v57 = &unk_285BED4C8;
  v59 = &v57;
  v67 = v12;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v68, &v57);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v57);
  v13 = v67;
  *v67 = bswap64(*(this + 452) - 2);
  v14 = v13 + 1;
  v15 = *(this + 20);
  v16 = *(this + 21);
  while (v15 != v16)
  {
    v17 = *v15++;
    *v14++ = bswap64(v17);
  }

  bzero(v14, v67 + v11 - v14);
  v18 = *(this + 13);
  if (*(this + 13))
  {
    v18 = malloc_type_valloc(v18, 0x8B7C732DuLL);
    if (!v18)
    {
      v40 = __cxa_allocate_exception(8uLL);
      v41 = std::bad_alloc::bad_alloc(v40);
      __cxa_throw(v41, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  *&v57 = &unk_285BED4C8;
  v59 = &v57;
  v65 = v18;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v66, &v57);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v57);
  memcpy(v65, v67, *(this + 13));
  v19 = v67;
  v20 = *(details::get_dummy_shared_ptr() + 1);
  v46 = v19;
  v47 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = v11;
  v49 = a3;
  v50 = v11;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v21 = (*(**(a2 + 2) + 120))(*(a2 + 2), &v46);
  if (v11 != v21)
  {
    v33 = v21;
    *&v44 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v44 + 1) = 32;
    v45 = 16;
    di_log::logger<di_log::log_printer<2488ul>>::logger(&v57, &v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Full dir write failed with ", 27);
    MEMORY[0x24C1ED390](v64, v33);
    di_log::logger<di_log::log_printer<2488ul>>::~logger(&v57);
    v34 = __cxa_allocate_exception(0x40uLL);
    if (v33 >= 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = v33;
    }

    v35 = "Failed writing full dir";
LABEL_31:
    *v34 = &unk_285BF4E60;
    v36 = std::generic_category();
    v34[1] = v22;
    v34[2] = v36;
    *(v34 + 24) = 0;
    *(v34 + 48) = 0;
    v34[7] = v35;
  }

  v22 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
  if (v22)
  {
    v34 = __cxa_allocate_exception(0x40uLL);
    v35 = "Failed barrier after writing full dir";
    goto LABEL_31;
  }

  v23 = *(this + 452);
  *(this + 452) = v23 + 1;
  *v65 = bswap64(v23);
  v24 = v65;
  v25 = *(this + 13);
  v26 = *(details::get_dummy_shared_ptr() + 1);
  *&v57 = v24;
  *(&v57 + 1) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v58 = v25;
  v59 = a3;
  v60 = v25;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  sg_entry::operator=(&v46, &v57);
  if (*(&v57 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57 + 1));
  }

  v27 = (*(**(a2 + 2) + 120))(*(a2 + 2), &v46);
  if (v27 != *(this + 13))
  {
    *&v44 = "di_asif::details::dir::flush_dir(ContextASIF &, uint64_t)";
    *(&v44 + 1) = 32;
    v45 = 16;
    di_log::logger<di_log::log_printer<2501ul>>::logger(&v57, &v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "First block of dir write failed with ", 37);
    MEMORY[0x24C1ED390](v64, v27);
    di_log::logger<di_log::log_printer<2501ul>>::~logger(&v57);
    v37 = __cxa_allocate_exception(0x40uLL);
    v38 = v37;
    if (v27 >= 0)
    {
      v27 = 4294967291;
    }

    else
    {
      v27 = v27;
    }

    *v37 = &unk_285BF4E60;
    v39 = std::generic_category();
    v38[1] = v27;
    v38[2] = v39;
    *(v38 + 24) = 0;
    *(v38 + 48) = 0;
    v38[7] = "Failed writing first block of dir";
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v28 = (*(&v54 + 1) + 8 * (v56 >> 9));
  if (v55 == *(&v54 + 1))
  {
    v29 = 0;
    v31 = 0;
    v30 = (*(&v54 + 1) + 8 * ((*(&v56 + 1) + v56) >> 9));
  }

  else
  {
    v29 = &(*v28)[8 * (v56 & 0x1FF)];
    v30 = (*(&v54 + 1) + 8 * ((*(&v56 + 1) + v56) >> 9));
    v31 = (*v30 + 8 * ((*(&v56 + 1) + v56) & 0x1FF));
  }

  di_asif::details::dir_base::insert_space<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>>(this, v28, v29, v30, v31, a2);
  v8 = 1;
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v65, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v66);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v67, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v68);
LABEL_25:
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&v54);
  return v8;
}

void sub_248ECB06C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  di_log::logger<di_log::log_printer<2501ul>>::~logger(va);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *(v32 + 3616) = v36;
    std::mutex::lock((v32 + 3800));
    v40 = *(v32 + 3784) + *(v32 + 3792);
    v41 = *(v32 + 3760);
    v42 = (v41 + 8 * (v40 >> 9));
    if (*(v32 + 3768) == v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v42 + 8 * (v40 & 0x1FF);
    }

    v44 = (a28 + 8 * (a31 >> 9));
    if (a29 == a28)
    {
      v45 = 0;
      v47 = 0;
      v46 = (a28 + 8 * ((a32 + a31) >> 9));
    }

    else
    {
      v45 = *v44 + 8 * (a31 & 0x1FF);
      v46 = (a28 + 8 * ((a32 + a31) >> 9));
      v47 = *v46 + 8 * ((a32 + a31) & 0x1FF);
    }

    std::deque<unsigned long long>::insert<std::__deque_iterator<unsigned long long,unsigned long long *,unsigned long long &,unsigned long long **,long,512l>,0>(v33, v42, v43, v44, v45, v46, v47);
    std::mutex::unlock((v32 + 3800));
    __cxa_end_catch();
    JUMPOUT(0x248ECADFCLL);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v37 - 168), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v35 + 8);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v37 - 128), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v34 + 8);
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void ref::Allocator<di_asif::details::map_element,unsigned long long>::wait_for_idle(uint64_t a1)
{
  v1 = (a1 + 608);
  if (atomic_load((a1 + 608)))
  {
    v4 = (a1 + 616);
    atomic_fetch_add((a1 + 616), 1uLL);
    v7.__m_ = (a1 + 624);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 624));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 688), &v7);
      }

      while (atomic_load((a1 + 608)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void ref::Allocator<di_asif::details::table,unsigned long long>::wait_for_idle(uint64_t a1)
{
  v1 = (a1 + 784);
  if (atomic_load((a1 + 784)))
  {
    v4 = (a1 + 792);
    atomic_fetch_add((a1 + 792), 1uLL);
    v7.__m_ = (a1 + 800);
    v7.__owns_ = 1;
    std::mutex::lock((a1 + 800));
    if (atomic_load(v1))
    {
      do
      {
        std::condition_variable::wait((a1 + 864), &v7);
      }

      while (atomic_load((a1 + 784)));
    }

    atomic_fetch_add(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (v7.__owns_)
    {
      std::mutex::unlock(v7.__m_);
    }
  }
}

void *di_log::logger<di_log::log_printer<2488ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2488ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEFA00;
  a1[45] = &unk_285BEFB00;
  a1[46] = &unk_285BEFB28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEFA00;
  a1[45] = &unk_285BEFA88;
  a1[46] = &unk_285BEFAB0;
  return a1;
}

void sub_248ECB45C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2488ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2488ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2488ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2501ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2501ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEFC20;
  a1[45] = &unk_285BEFD20;
  a1[46] = &unk_285BEFD48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEFC20;
  a1[45] = &unk_285BEFCA8;
  a1[46] = &unk_285BEFCD0;
  return a1;
}

void sub_248ECB5C8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2501ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2501ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2501ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::do_io(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4, int a5)
{
  v10 = *(a4 + 26) - *(a3 + 26);
  v11 = v10 & ~(v10 >> 63);
  v12 = *(a3 + 3);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(&v39, a3);
  v13 = 0;
  if (a5)
  {
    v14 = "read";
  }

  else
  {
    v14 = "write";
  }

  v15 = 4;
  if (!a5)
  {
    v15 = 5;
  }

  v23 = v15;
  v24 = v14;
  while (1)
  {
    v16 = v12 / *(this + 11);
    di_asif::details::dir::get_table(&v38, this, a2, v16, a5 ^ 1, 1);
    if (v38 && (v38[520] & 1) != 0)
    {
      if ((a5 & 1) == 0)
      {
        DiskImage::Context::terminate_di(a2);
      }

      v17 = 0;
      v5 = -5;
      goto LABEL_24;
    }

    sg_vec_ns::details::sg_vec_iterator::subvec(&v30, &v39, a4, *(this + 11) + *(this + 11) * v16, 0);
    if (v38 && (v38[520] & 1) == 0)
    {
      if (a5)
      {
        if (v38[400])
        {
          v19 = (v38 + 40);
        }

        else
        {
          v19 = 0;
        }

        v21 = di_asif::details::table::read(v19, a2, &v30, &v34);
      }

      else
      {
        if (v38[400])
        {
          v20 = (v38 + 40);
        }

        else
        {
          v20 = 0;
        }

        v21 = di_asif::details::table::write(v20, a2, &v30, &v34);
      }

      v5 = v21;
      if ((v21 & 0x8000000000000000) != 0 && v21)
      {
        *&v25 = "di_asif::details::dir::do_io(ContextASIF &, const sg_vec::iterator &, const sg_vec::iterator &, BOOL)";
        *(&v25 + 1) = 28;
        v26 = 16;
        di_log::logger<di_log::log_printer<2547ul>>::logger(v27, &v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "Failed during table ", 20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v24, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, " in dir I/O, error ", 19);
        MEMORY[0x24C1ED390](&v28, v5);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<2547ul>>::~logger_buf(v27);
        MEMORY[0x24C1ED6A0](&v29);
        if ((a5 & 1) == 0)
        {
          DiskImage::Context::terminate_di(a2);
        }

        v17 = 0;
        goto LABEL_16;
      }

      v18 = v21;
    }

    else
    {
      fill_zeros(&v30, &v34);
      v18 = (v37 - v33) & ~((v37 - v33) >> 63);
      sg_vec_ns::details::sg_vec_iterator::operator+=(&v30, v18);
    }

    sg_vec_ns::details::sg_vec_iterator::operator+=(&v39, v18);
    v12 += v18;
    v13 += v18;
    v17 = 1;
LABEL_16:
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

LABEL_24:
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v38);
    if (!v17)
    {
      break;
    }

    if (v13 == v11)
    {
      goto LABEL_43;
    }
  }

  v11 = v5;
LABEL_43:
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  return v11;
}

void sub_248ECB924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  di_log::logger<di_log::log_printer<2547ul>>::~logger(va);
  container_it<sg_vec_ns::details::sg_vec_iterator>::~container_it(&STACK[0x240]);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&STACK[0x400]);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&STACK[0x408]);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<2547ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2547ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEFE40;
  a1[45] = &unk_285BEFF40;
  a1[46] = &unk_285BEFF68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEFE40;
  a1[45] = &unk_285BEFEC8;
  a1[46] = &unk_285BEFEF0;
  return a1;
}

void sub_248ECBA84(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2547ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2547ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2547ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

double di_asif::details::asif_extents_iterator_interface::_make_val@<D0>(di_asif::details::dir **this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[3] + (this[4] & 1);
  v10[0] = this[5];
  v10[1] = v3;
  v11 = 2;
  *&v8 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  *(&v8 + 1) = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  LOBYTE(v9) = 2;
  next_extent = di_asif::details::dir::get_next_extent(this[8], this[7], v10, &v8);
  if (next_extent >= 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Can't convert ASIF flag.", 5u);
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = next_extent;
  return result;
}

uint64_t di_asif::details::dir::get_next_extent(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, void *a3, uint64_t a4)
{
  v7 = 0;
  *&v29 = *a3;
  *(&v29 + 1) = v29;
  v26 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  v27 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  v30 = 2;
  v28 = 2;
  v24 = *a3;
  v25 = a3[2];
  do
  {
    v8 = *(&v24 + 1);
    if (v25)
    {
      if (v25 == 3)
      {
        if (*(&v24 + 1) < v24)
        {
          goto LABEL_5;
        }
      }

      else if (v24 >= *(&v24 + 1))
      {
        goto LABEL_5;
      }
    }

    else if (v24 >= *(&v24 + 1) || (v24 + 1) >= *(&v24 + 1))
    {
LABEL_5:
      if (!boost::icl::identity_element<unsigned long long>::value(void)::_value)
      {
        break;
      }

      goto LABEL_12;
    }

    if (!(*(&v24 + 1) + (v25 & 1) - v24 + ((v25 >> 1) & 1) - 1))
    {
      break;
    }

LABEL_12:
    if ((v25 & 2) != 0)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }

    v11 = v10 * *(this + 13);
    di_asif::details::dir::get_table(&v23, this, a2, v11 / *(this + 11), 0, 1);
    if (v23 && (v23[520] & 1) != 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v18 = std::generic_category();
      exception[1] = 4294967291;
      exception[2] = v18;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't load table to get extents";
    }

    if (v23 && (v23[520] & 1) == 0)
    {
      if (v23[400])
      {
        v14 = (v23 + 40);
      }

      else
      {
        v14 = 0;
      }

      next_extent = di_asif::details::table::get_next_extent(v14, a2, &v24, &v26);
    }

    else
    {
      next_extent = 0;
      v13 = (*(this + 11) + *(this + 11) * (v11 / *(this + 11)) + 1) / *(this + 13);
      if (v13 >= v8)
      {
        v13 = v8;
      }

      v26 = v10;
      v27 = v13;
      v28 = 2;
    }

    if (next_extent == v7)
    {
LABEL_36:
      *(&v29 + 1) = v27;
      v30 = 2;
      v19 = v24;
      v20 = v25;
      boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v19, &v29, &v21);
      v24 = v21;
      LOBYTE(v25) = v22;
      v15 = 1;
      v7 = next_extent;
      goto LABEL_40;
    }

    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_35;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_35;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_35:
      if (!(*(&v29 + 1) + (v30 & 1) - v29 + ((v30 >> 1) & 1) - 1))
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    if (!boost::icl::identity_element<unsigned long long>::value(void)::_value)
    {
      goto LABEL_36;
    }

LABEL_39:
    v15 = 0;
LABEL_40:
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v23);
  }

  while ((v15 & 1) != 0);
  *a4 = v29;
  *(a4 + 16) = v30;
  return v7;
}

void sub_248ECBE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::table::get_next_extent(di_asif::details::table *a1, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v61[0] = *(a3 + 17);
  *(v61 + 3) = *(a3 + 20);
  if ((v7 & 2) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
  }

  data_entry_for_offset = di_asif::details::table::get_data_entry_for_offset(a1, v8 * *(*(a1 + 1) + 26));
  v11 = atomic_load((data_entry_for_offset[7] + 16 * v10 + 8));
  *v48 = v11 >> 62;
  if (v11 >> 62 == 3)
  {
    v12 = data_entry_for_offset[1];
    di_asif::details::table::get_bitmap(v54, a1, a2, (data_entry_for_offset[44] + (*(v12 + 56) + *(v12 + 56) * v10) / (*(v12 + 56) + 1) * *(v12 + 28)) / *(v12 + 26), 0);
    v13 = *(a1 + 1);
    if (v54[0])
    {
      if (*(v54[0] + 224))
      {
        v15 = (v54[0] + 40);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v14 = *(v13 + 26);
    *v48 = di_asif::details::map_element::get_block_bits(v15, 2 * ((v8 * v14 - (*(a1 + 44) + *(v13 + 56) * *(v13 + 28) * ((v8 * v14 / v14 - *(a1 + 44) / v14) / (*(v13 + 56) * (*(v13 + 28) / v14))))) / v14));
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v54);
  }

  v16 = 0;
  while (1)
  {
    if (v7)
    {
      if (v7 == 3)
      {
        if (v6 >= v5)
        {
          goto LABEL_18;
        }
      }

      else if (v6 > v5)
      {
        goto LABEL_18;
      }
    }

    else if (v6 > v5 && v5 + 1 < v6)
    {
LABEL_18:
      if (!(v6 - v5 + (v7 & 1) + (((v7 >> 1) & 1) - 1)))
      {
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (!boost::icl::identity_element<unsigned long long>::value(void)::_value)
    {
      goto LABEL_42;
    }

LABEL_22:
    if ((v7 & 2) != 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 + 1;
    }

    v18 = *(a1 + 1);
    v19 = v17 * *(v18 + 26);
    if (v19 >= *(v18 + 88) + *(a1 + 44))
    {
      goto LABEL_42;
    }

    v20 = di_asif::details::table::get_data_entry_for_offset(a1, v19);
    v22 = v20;
    v23 = v21;
    v59 = v20;
    v60 = v21;
    v24 = v7;
    v49 = v6;
    v25 = *(*(a1 + 1) + 26);
    v26 = v20[1];
    v27 = (*(v26 + 56) + *(v26 + 56) * v21) / (*(v26 + 56) + 1);
    v28 = *(v26 + 28);
    if (v20[44] + v28 + v27 * v28 >= v25 + v25 * (v6 + ((v7 & 1) - 1)))
    {
      v29 = v25 + v25 * (v6 + ((v7 & 1) - 1));
    }

    else
    {
      v29 = v20[44] + v28 + v27 * v28;
    }

    v30 = (v20[7] + 16 * v21);
    v31 = ref::ref_cnt::get(v30);
    v57[0] = &unk_285BF4C50;
    v57[1] = v30;
    v58 = v31;
    if ((v31 & 1) == 0)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      di_log::logger<di_log::log_printer<2631ul>>::logger(v54, &v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Couldn't lock entry ", 20);
      di_asif::details::operator<<(v56, &v59);
      di_log::logger<di_log::log_printer<2631ul>>::~logger(v54);
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v42 = std::generic_category();
      exception[1] = 5;
      exception[2] = v42;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Can't lock entry";
    }

    v32 = atomic_load((v22[7] + 16 * v23 + 8));
    v33 = v32 >> 62;
    if (v48[0] == v33)
    {
      v34 = v29 / *(*(a1 + 1) + 26);
      v16 = v34;
      goto LABEL_40;
    }

    if (v33 != 3)
    {
      break;
    }

    v35 = v59[1];
    di_asif::details::table::get_bitmap(v50, a1, a2, (v59[44] + (*(v35 + 56) + *(v35 + 56) * v60) / (*(v35 + 56) + 1) * *(v35 + 28)) / *(v35 + 26), 0);
    if (!v50[0] || (*(v50[0] + 344) & 1) != 0)
    {
      *&v52 = "di_asif::details::table::get_next_extent(ContextASIF &, const interval_sectors &, interval_sectors &)";
      *(&v52 + 1) = 40;
      LODWORD(v53) = 16;
      di_log::logger<di_log::log_printer<2641ul>>::logger(v54, &v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "Can't read bitmap", 17);
      di_log::logger<di_log::log_printer<2641ul>>::~logger(v54);
      v43 = __cxa_allocate_exception(0x40uLL);
      *v43 = &unk_285BF4E60;
      v44 = std::generic_category();
      v43[1] = 5;
      v43[2] = v44;
      *(v43 + 24) = 0;
      *(v43 + 48) = 0;
      v43[7] = "Can't read bitmap";
    }

    v36 = *(v50[0] + 224) ? (v50[0] + 40) : 0;
    v37 = di_asif::details::map_element::search_for_pattern_match(v36, a1, v48[0], v19, v29);
    v38 = *(*(a1 + 1) + 26);
    ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(v50);
    v16 = v37 / v38;
    if (v37 < v29)
    {
      break;
    }

    v34 = v29 / *(*(a1 + 1) + 26);
LABEL_40:
    *&v52 = v5;
    *(&v52 + 1) = v49;
    LOBYTE(v53) = v24;
    *(&v53 + 1) = v61[0];
    HIDWORD(v53) = *(v61 + 3);
    v50[0] = v17;
    v50[1] = v34;
    v51 = 2;
    boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v52, v50, v54);
    v5 = v54[0];
    v6 = v54[1];
    v7 = v55;
    ref::details::ref_cnt_handle::~ref_cnt_handle(v57);
  }

  ref::details::ref_cnt_handle::~ref_cnt_handle(v57);
LABEL_42:
  v39 = *a3;
  if ((*(a3 + 16) & 2) == 0)
  {
    ++v39;
  }

  *a4 = v39;
  *(a4 + 8) = v16;
  *(a4 + 16) = 2;
  return *v48;
}

void sub_248ECC408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<2631ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2631ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0060;
  a1[45] = &unk_285BF0160;
  a1[46] = &unk_285BF0188;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0060;
  a1[45] = &unk_285BF00E8;
  a1[46] = &unk_285BF0110;
  return a1;
}

void sub_248ECC580(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2631ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2631ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2631ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2641ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2641ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0280;
  a1[45] = &unk_285BF0380;
  a1[46] = &unk_285BF03A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0280;
  a1[45] = &unk_285BF0308;
  a1[46] = &unk_285BF0330;
  return a1;
}

void sub_248ECC6EC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2641ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2641ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_asif::details::dir::unmap(uint64_t a1, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4)
{
  di_asif::details::dir::make_unmap_iterators(a1, a3, a4, &v33);
  v9 = *(*(a1 + 32) + 216);
  while (1)
  {
    v10 = v33;
    if (v33 == v41 && v34 == v42 && v35 == v43 && (v35 == v33 + 16 * v34 || v38 == v44 && v39 == v45 && v40 == v46))
    {
      return 0;
    }

    v11 = val * *(a1 + 26);
    di_asif::details::dir::get_table(&v32, a1, a2, v11 / *(a1 + 88), v9 ^ 1, 1);
    if (v32 && (*(v32 + 520) & 1) == 0)
    {
      if (*(v32 + 400))
      {
        v14 = v32 + 40;
      }

      else
      {
        v14 = 0;
      }

      di_asif::details::table::unmap(v14, a2, a3, a4, &v19);
      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        val = di_asif::details::unmap_iterator_t::make_val(&v33);
        v37 = v17;
      }

      v13 = 0;
      goto LABEL_38;
    }

    if (v32)
    {
      if (*(v32 + 520))
      {
        v12 = 4294967291;
      }

      else
      {
        v12 = 0;
      }

      v13 = 1;
      if (*(v32 + 520) & 1) != 0 || (v9)
      {
        goto LABEL_39;
      }

LABEL_23:
      di_asif::details::table::make_unmap_iterators(a3, a4, *(a1 + 28), *(a1 + 26), v11 / *(a1 + 88) * *(a1 + 88), *(a1 + 88) + v11 / *(a1 + 88) * *(a1 + 88), &v19);
      while (v19 != v26 || *(&v19 + 1) != v27 || v20 != v28 || v20 != v19 + 16 * *(&v19 + 1) && (v23 != v29 || v24 != v30 || v25 != v31))
      {
        v23 += v25 * v22;
        v21 = di_asif::details::unmap_iterator_t::make_val(&v19);
        v22 = v15;
      }

      v35 = v20;
      v38 = v23;
      if (v34 != (v20 - v10) >> 4)
      {
        val = di_asif::details::unmap_iterator_t::make_val(&v33);
        v37 = v16;
      }

      v13 = 2;
LABEL_38:
      v12 = v4;
      goto LABEL_39;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_23;
    }

    v12 = 0;
    v13 = 1;
LABEL_39:
    ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v32);
    v4 = v12;
    if ((v13 | 2) != 2)
    {
      return v12;
    }
  }
}

uint64_t di_asif::details::dir::flush(di_asif::details::dir *this, di_asif::details::ContextASIF *a2, __int128 *a3, int a4)
{
  std::mutex::lock((this + 3536));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::wait_for_idle(this + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::wait_for_idle(this + 288);
  v8 = atomic_exchange(this + 900, 0);
  v9 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
  if (!v9)
  {
    v9 = di_asif::details::dir::handle_all_failures(this, a2);
    if (v9)
    {
      v11 = v8;
      goto LABEL_9;
    }

    v12 = *(this + 17);
    v13 = *(this + 18);
    if (v12 == v13)
    {
      v9 = 0;
      if (v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      v9 = 0;
      do
      {
        ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>::lock_if_tag(v12, v14 / *(this + 11), &v18);
        if (v18 && (v18[520] & 1) == 0)
        {
          if (v18[400])
          {
            v15 = (v18 + 40);
          }

          else
          {
            v15 = 0;
          }

          v16 = di_asif::details::table::flush(v15, a2);
          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = v16;
          }
        }

        v14 += *(this + 11);
        ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v18);
        ++v12;
      }

      while (v12 != v13);
      if (v8)
      {
LABEL_23:
        v17 = (*(**(a2 + 2) + 16))(*(a2 + 2), 0);
        if (v17)
        {
          *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
          *(&v19 + 1) = 28;
          v20 = 16;
          di_log::logger<di_log::log_printer<2767ul>>::logger(v21, &v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Backend barrier failed during dir flush, error ", 47);
          MEMORY[0x24C1ED390](&v22, v17);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v21);
          MEMORY[0x24C1ED6A0](v23);
          if (v17 < 0)
          {
            v9 = v17;
          }

          else
          {
            v9 = -v17;
          }

          goto LABEL_5;
        }

        goto LABEL_29;
      }
    }

    if (!a4)
    {
      v11 = 0;
LABEL_32:
      if ((v9 & 0x80000000) == 0)
      {
        v9 = 0;
        goto LABEL_6;
      }

LABEL_9:
      v8 = v11;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_29:
    v9 = di_asif::details::dir::flush_dir(this, a2, a3);
    v11 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  *&v19 = "di_asif::details::dir::flush(ContextASIF &, uint64_t, BOOL)";
  *(&v19 + 1) = 28;
  v20 = 16;
  di_log::logger<di_log::log_printer<2734ul>>::logger(v21, &v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Failed barrier at start of dir flush, error", 43);
  MEMORY[0x24C1ED390](&v22, v9);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v21);
  MEMORY[0x24C1ED6A0](v23);
  if (v9 < 0)
  {
    v9 = v9;
  }

  else
  {
    v9 = -v9;
  }

LABEL_5:
  atomic_fetch_or(this + 900, v8);
LABEL_6:
  std::mutex::unlock((this + 3536));
  return v9;
}