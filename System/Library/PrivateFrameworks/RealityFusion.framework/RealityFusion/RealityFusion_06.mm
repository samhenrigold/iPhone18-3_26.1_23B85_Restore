void sub_26182403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  rf::Session::SessionState::~SessionState(va);
  _Unwind_Resume(a1);
}

void rf::Session::updateProviders(uint64_t a1)
{
  v2 = *(a1 + 4544);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2);
  v4 = *(a1 + 4480);
  if (v4)
  {
    v5 = v3;
    do
    {
      v6 = v4[3];
      v7 = v4[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 16))(v6, v5);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v4 = *v4;
    }

    while (v4);
  }

  std::mutex::lock((a1 + 4616));
  while (*(a1 + 4608))
  {
    rf::ARState::consume(a1, *(*(a1 + 4576) + ((*(a1 + 4600) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2128 * (*(a1 + 4600) & 0xFLL));
    std::deque<rf::data_flow::provider::InputData>::pop_front((a1 + 4568));
  }

  std::mutex::unlock((a1 + 4616));
}

void sub_26182416C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void rf::Session::consumeAndUpdateInternalConsumers(uint64_t a1, uint64_t *a2)
{
  *(a1 + 4105) = 1;
  rf::ARState::consumeChangesSinceLast(a1, a2);
  v4 = *(a1 + 4544);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  *(a1 + 4560) = (*(*v4 + 48))(v4);
  v8 = 0;
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v5 = *(a1 + 4696);
  v6 = *(a1 + 4704);
  while (v5 != v6)
  {
    v7 = *v5;
    v5 += 2;
    (*(*v7 + 16))(v7, &v8);
  }
}

uint64_t rf::Session::subscribeToRoomChange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::__value_func[abi:ne200100](v6, a3);
  rf::ARState::subscribeToRoomChange(a1, a2, v6);
  return std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](v6);
}

void sub_2618242E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::optional<rf::data_flow::RFUUID>,std::unordered_set<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t rf::Session::visitPinnedGroups(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::__value_func[abi:ne200100](v5, a2);
  for (i = *(a1 + 256); i; i = *i)
  {
    std::function<void ()(rf::data_flow::PinnedGroup const*)>::operator()(v5, (i + 6));
  }

  return std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](v5);
}

uint64_t std::__function::__value_func<void ()(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t rf::data_flow::DataGraph::evaluate<rf::UpdateRequest>@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  rf::data_flow::details::Context::Context(v8, (a1 + 64));
  rf::data_flow::details::Context::setValue<rf::UpdateRequest>(v8, a2, (a2 + 1));
  rf::data_flow::details::Context::markOutputReady(v8, a2);
  std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__hash_table(a3, v8);
  *(a3 + 40) = v9;
  v5 = v10;
  v6 = v11;
  v10 = 0;
  v9 = 0uLL;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  return std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table(v8);
}

void sub_2618244B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  rf::data_flow::details::Context::~Context(va);
  _Unwind_Resume(a1);
}

uint64_t (**rf::data_flow::details::Context::setValue<rf::UpdateRequest>(void *a1, void *a2, __int128 *a3))(void, void, void, void, void)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v5 = a2;
  v6 = std::__any_imp::_SmallHandler<rf::UpdateRequest>::__handle[abi:ne200100];
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v5);
  std::any::operator=[abi:ne200100](v3 + 3, &v6);
  return std::any::reset[abi:ne200100](&v6);
}

void sub_261824558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__any_imp::_SmallHandler<rf::UpdateRequest>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<rf::UpdateRequest>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<rf::UpdateRequest>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<rf::UpdateRequest>::__id;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

void sub_2618246B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  rf::data_flow::details::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_26182479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__any_imp::_LargeHandler<rf::ConsumerRequest>::__handle[abi:ne200100](int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      operator new();
    }

    operator delete(*(a2 + 8));
    result = 0;
    goto LABEL_9;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = *(a2 + 8);
    *a3 = std::__any_imp::_LargeHandler<rf::ConsumerRequest>::__handle[abi:ne200100];
    a3[1] = v8;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<rf::ConsumerRequest>::__id;
  }

  if (v6)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t std::deque<rf::data_flow::provider::InputData>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 2 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<rf::data_flow::provider::InputData>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2128 * (v7 & 0xF);
  }

  result = rf::data_flow::provider::InputData::InputData(v8, a2);
  ++a1[5];
  return result;
}

void std::deque<rf::data_flow::provider::InputData>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    std::allocator<rf::data_flow::provider::InputData *>::allocate_at_least[abi:ne200100](v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<rf::data_flow::provider::InputData *>::emplace_back<rf::data_flow::provider::InputData *&>(a1, &v9);
}

void sub_261824D6C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<rf::data_flow::provider::InputData *>::emplace_back<rf::data_flow::provider::InputData *&>(unint64_t *a1, void *a2)
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
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<rf::data_flow::provider::InputData *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::allocator<rf::data_flow::provider::InputData *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t rf::data_flow::provider::InputData::InputData(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
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
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 176) = 0;
  v4 = a1 + 176;
  *(v4 + 272) = 0;
  if (*(a2 + 448) == 1)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v4, a2 + 176);
    *(a1 + 448) = 1;
  }

  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 480) = 0;
  *(a2 + 464) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  v5 = *(a2 + 512);
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0u;
  *(a1 + 512) = v5;
  *(a1 + 520) = *(a2 + 520);
  *(a2 + 520) = 0;
  v6 = *(a2 + 528);
  *(a1 + 528) = v6;
  v7 = *(a2 + 536);
  *(a1 + 536) = v7;
  *(a1 + 544) = *(a2 + 544);
  if (v7)
  {
    v8 = *(v6 + 8);
    v9 = *(a1 + 520);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v5 + 8 * v8) = a1 + 528;
    *(a2 + 528) = 0;
    *(a2 + 536) = 0;
  }

  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = 0;
  *(a1 + 568) = 0uLL;
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 576) = 0;
  *(a2 + 560) = 0uLL;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0uLL;
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 600) = 0;
  *(a2 + 584) = 0uLL;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0uLL;
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a2 + 608) = 0uLL;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0uLL;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 648) = 0;
  *(a2 + 632) = 0uLL;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0uLL;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0uLL;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0uLL;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0uLL;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0uLL;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0uLL;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0uLL;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0uLL;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0uLL;
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 768) = 0;
  *(a2 + 752) = 0uLL;
  *(a1 + 792) = 0;
  *(a1 + 776) = 0uLL;
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a2 + 792) = 0;
  *(a2 + 776) = 0uLL;
  *(a1 + 816) = 0;
  *(a1 + 800) = 0uLL;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = 0;
  *(a2 + 800) = 0uLL;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0uLL;
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 840) = 0;
  *(a2 + 824) = 0uLL;
  *(a1 + 848) = 0;
  *(a1 + 1776) = 0;
  if (*(a2 + 1776) == 1)
  {
    *(a1 + 1760) = 0;
    if (*(a2 + 1760) == 1)
    {
      rf::data_flow::Room::Room(a1 + 848, a2 + 848);
      *(a1 + 1760) = 1;
    }

    *(a1 + 1776) = 1;
  }

  v10 = *(a2 + 1792);
  *(a1 + 1808) = *(a2 + 1808);
  *(a1 + 1792) = v10;
  *(a2 + 1808) = 0;
  *(a2 + 1800) = 0;
  *(a2 + 1792) = 0;
  v11 = *(a2 + 1816);
  *(a1 + 1832) = *(a2 + 1832);
  *(a1 + 1816) = v11;
  *(a2 + 1832) = 0;
  *(a2 + 1824) = 0;
  *(a2 + 1816) = 0;
  v12 = *(a2 + 1840);
  *(a1 + 1856) = *(a2 + 1856);
  *(a1 + 1840) = v12;
  *(a2 + 1856) = 0;
  *(a2 + 1848) = 0;
  *(a2 + 1840) = 0;
  v13 = *(a2 + 1872);
  v14 = *(a2 + 1888);
  v15 = *(a2 + 1904);
  *(a1 + 1920) = *(a2 + 1920);
  *(a1 + 1904) = v15;
  *(a1 + 1888) = v14;
  *(a1 + 1872) = v13;
  v16 = *(a2 + 1936);
  v17 = *(a2 + 1952);
  v18 = *(a2 + 1968);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 1968) = v18;
  *(a1 + 1952) = v17;
  *(a1 + 1936) = v16;
  v19 = *(a2 + 2000);
  v20 = *(a2 + 2016);
  v21 = *(a2 + 2032);
  *(a1 + 2048) = *(a2 + 2048);
  *(a1 + 2032) = v21;
  *(a1 + 2016) = v20;
  *(a1 + 2000) = v19;
  v22 = *(a2 + 2064);
  v23 = *(a2 + 2080);
  v24 = *(a2 + 2096);
  *(a1 + 2105) = *(a2 + 2105);
  *(a1 + 2096) = v24;
  *(a1 + 2080) = v23;
  *(a1 + 2064) = v22;
  return a1;
}

uint64_t rf::data_flow::Room::Room(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v8 = *(a2 + 112);
    *(a2 + 112) = 0;
    *(a1 + 112) = v8;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = 1;
  }

  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v9 = *(a2 + 144);
    *(a2 + 144) = 0;
    *(a1 + 144) = v9;
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = 1;
  }

  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v10 = *(a2 + 176);
    *(a2 + 176) = 0;
    *(a1 + 176) = v10;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = 1;
  }

  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    v11 = *(a2 + 208);
    *(a2 + 208) = 0;
    *(a1 + 208) = v11;
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = 1;
  }

  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    v12 = *(a2 + 240);
    *(a2 + 240) = 0;
    *(a1 + 240) = v12;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = 1;
  }

  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    v13 = *(a2 + 272);
    *(a2 + 272) = 0;
    *(a1 + 272) = v13;
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = 1;
  }

  std::optional<rf::data_flow::RoomMesh>::optional[abi:ne200100](a1 + 304, (a2 + 304));
  std::optional<rf::data_flow::RoomMesh>::optional[abi:ne200100](a1 + 504, (a2 + 504));
  std::optional<rf::data_flow::RoomMesh>::optional[abi:ne200100](a1 + 704, (a2 + 704));
  return a1;
}

uint64_t std::optional<rf::data_flow::RoomMesh>::optional[abi:ne200100](uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    *(result + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v2 = *a2;
      *a2 = 0;
      *result = v2;
      *(result + 8) = *(a2 + 1);
      *(result + 24) = 1;
    }

    *(result + 32) = 0;
    *(result + 56) = 0;
    if (*(a2 + 56) == 1)
    {
      v3 = a2[4];
      a2[4] = 0;
      *(result + 32) = v3;
      *(result + 40) = *(a2 + 5);
      *(result + 56) = 1;
    }

    *(result + 64) = 0;
    *(result + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      v4 = a2[8];
      a2[8] = 0;
      *(result + 64) = v4;
      *(result + 72) = *(a2 + 9);
      *(result + 88) = 1;
    }

    *(result + 96) = 0;
    *(result + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      v5 = a2[12];
      a2[12] = 0;
      *(result + 96) = v5;
      *(result + 104) = *(a2 + 13);
      *(result + 120) = 1;
    }

    *(result + 128) = 0;
    *(result + 152) = 0;
    if (*(a2 + 152) == 1)
    {
      v6 = a2[16];
      a2[16] = 0;
      *(result + 128) = v6;
      *(result + 136) = *(a2 + 17);
      *(result + 152) = 1;
    }

    *(result + 160) = 0;
    *(result + 184) = 0;
    if (*(a2 + 184) == 1)
    {
      v7 = a2[20];
      a2[20] = 0;
      *(result + 160) = v7;
      *(result + 168) = *(a2 + 21);
      *(result + 184) = 1;
    }

    *(result + 192) = 1;
  }

  return result;
}

__n128 std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_0 &,rf::UpdateRequest,unsigned long>(rf::Session::createSessionState(rf::Session&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<unsigned long> const&,rf::data_flow::NodeHandle<rf::UpdateRequest> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_0 &,rf::UpdateRequest,unsigned long>(rf::Session::createSessionState(rf::Session&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<unsigned long> const&,rf::data_flow::NodeHandle<rf::UpdateRequest> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_287409E80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_0 &,rf::UpdateRequest,unsigned long>(rf::Session::createSessionState(rf::Session&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<unsigned long> const&,rf::data_flow::NodeHandle<rf::UpdateRequest> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_0 &,rf::UpdateRequest,unsigned long>(rf::Session::createSessionState(rf::Session&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<unsigned long> const&,rf::data_flow::NodeHandle<rf::UpdateRequest> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::operator()(void *a1, rf::data_flow::details::Context *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(a2, a1 + 1);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[3];
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  rf::Session::updateProviders(a1[3]);
  v7 = a1[3];
  *(v7 + 4105) = 1;
  rf::ARState::consumeChangesSinceLast(v7, v6);
  v8 = a1[3];
  LODWORD(v17) = 0;
  v9 = *v6;
  v19 = *(v6 + 8);
  v18 = v9;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v10 = v8[587];
  v11 = v8[588];
  if (v10 != v11)
  {
    do
    {
      (*(**v10 + 16))(*v10, &v17);
      v10 += 2;
    }

    while (v10 != v11);
    v8 = a1[3];
  }

  v12 = v8[362];
  v13 = a1 + 2;
  v17 = std::__any_imp::_SmallHandler<unsigned long>::__handle[abi:ne200100];
  v18 = v12;
  v16 = v13;
  v14 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a2, v13, &std::piecewise_construct, &v16);
  std::any::operator=[abi:ne200100](v14 + 3, &v17);
  std::any::reset[abi:ne200100](&v17);
  return rf::data_flow::details::Context::markOutputReady(a2, v13);
}

void sub_2618258C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_0 &,rf::UpdateRequest,unsigned long>(rf::Session::createSessionState(rf::Session&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<unsigned long> const&,rf::data_flow::NodeHandle<rf::UpdateRequest> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_0 &,rf::UpdateRequest,unsigned long>(rf::Session::createSessionState(rf::Session&)::$_0 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<unsigned long> const&,rf::data_flow::NodeHandle<rf::UpdateRequest> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<unsigned long>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<unsigned long>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<unsigned long>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827D8];
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](a4, MEMORY[0x277D827D8]);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<unsigned long>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_1 &,rf::ConsumerRequest,void>(rf::Session::createSessionState(rf::Session&)::$_1 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::ConsumerRequest> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_1 &,rf::ConsumerRequest,void>(rf::Session::createSessionState(rf::Session&)::$_1 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::ConsumerRequest> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_287409F00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_1 &,rf::ConsumerRequest,void>(rf::Session::createSessionState(rf::Session&)::$_1 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::ConsumerRequest> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_1 &,rf::ConsumerRequest,void>(rf::Session::createSessionState(rf::Session&)::$_1 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::ConsumerRequest> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::operator()(unint64_t *a1, rf::data_flow::details::Context *a2)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::find<unsigned long>(a2, a1 + 1);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[3];
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  for (i = *(a1[3] + 4440); i; i = *i)
  {
    (*(*i[3] + 16))(i[3], v6);
  }

  return rf::data_flow::details::Context::markOutputReady(a2, a1 + 2);
}

uint64_t std::__function::__func<void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_1 &,rf::ConsumerRequest,void>(rf::Session::createSessionState(rf::Session&)::$_1 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::ConsumerRequest> const&)::{lambda(rf::data_flow::details::Context &)#1},std::allocator<char><void rf::data_flow::details::FunctionStore::addFunction<rf::Session::createSessionState(rf::Session&)::$_1 &,rf::ConsumerRequest,void>(rf::Session::createSessionState(rf::Session&)::$_1 &,std::optional<std::string> &&,rf::data_flow::NodeHandle<void> const&,rf::data_flow::NodeHandle<rf::ConsumerRequest> const&)::{lambda(rf::data_flow::details::Context &)#1}>,void ()(rf::data_flow::details::Context &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<rf::data_flow::consumer::AnchorListenerConsumer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287409F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<double (*)(void),std::allocator<double (*)(void)>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287409FD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<double (*)(void),std::allocator<double (*)(void)>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::deque<rf::data_flow::provider::InputData>::pop_front(int64x2_t *a1)
{
  rf::data_flow::provider::InputData::~InputData((*(a1->i64[1] + ((a1[2].i64[0] >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2128 * (a1[2].i64[0] & 0xF)));
  a1[2] = vaddq_s64(a1[2], xmmword_261864070);

  return std::deque<rf::data_flow::provider::InputData>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<rf::data_flow::provider::InputData>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x10)
  {
    a2 = 1;
  }

  if (v2 < 0x20)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }

  return v4 ^ 1u;
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t RFPredicatePositionCompareCreate(uint64_t a1, __n128 result)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        operator new();
      case 1:
        operator new();
      case 2:
        operator new();
    }
  }

  return a1;
}

uint64_t RFPredicatePositionRangeCreate(uint64_t a1, __n128 result, __n128 a3)
{
  if (a1 == 1)
  {
    operator new();
  }

  if (!a1)
  {
    operator new();
  }

  return a1;
}

uint64_t RFPredicateDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t csq::Predicate<csq::ValueBasedPredicate<re::Vector3<float>,std::less<re::Vector3<float>>>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = vcgtq_f32(a1[1], a2[1]);
  v2.i32[3] = v2.i32[2];
  return vminvq_u32(v2) >> 31;
}

uint64_t csq::Predicate<csq::ValueBasedPredicate<re::Vector3<float>,std::less_equal<re::Vector3<float>>>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = vcgeq_f32(a1[1], a2[1]);
  v2.i32[3] = v2.i32[2];
  return vminvq_u32(v2) >> 31;
}

uint64_t csq::Predicate<csq::ValueBasedPredicate<re::Vector3<float>,std::greater<re::Vector3<float>>>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = vcgtq_f32(a2[1], a1[1]);
  v2.i32[3] = v2.i32[2];
  return vminvq_u32(v2) >> 31;
}

uint64_t csq::Predicate<csq::ValueBasedPredicate<re::Vector3<float>,std::greater_equal<re::Vector3<float>>>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = vcgeq_f32(a2[1], a1[1]);
  v2.i32[3] = v2.i32[2];
  return vminvq_u32(v2) >> 31;
}

uint64_t csq::Predicate<csq::ValueBasedPredicate<re::Vector3<float>,std::equal_to<re::Vector3<float>>>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = vceqq_f32(a2[1], a1[1]);
  v2.i32[3] = v2.i32[2];
  return vminvq_u32(v2) >> 31;
}

uint64_t csq::Predicate<csq::ValueBasedPredicate<re::Vector3<float>,std::not_equal_to<re::Vector3<float>>>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = vmvnq_s8(vceqq_f32(a2[1], a1[1]));
  v2.i32[3] = v2.i32[2];
  return vmaxvq_u32(v2) >> 31;
}

uint64_t csq::Predicate<csq::RangeBasedPredicate<re::Vector3<float>,(csq::RangeType)0>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = a2[1];
  v3 = vcgeq_f32(v2, a1[1]);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = vcgeq_f32(a1[2], v2);
  v5.i32[3] = v5.i32[2];
  return vminvq_u32(v5) >> 31;
}

BOOL csq::Predicate<csq::RangeBasedPredicate<re::Vector3<float>,(csq::RangeType)1>,rf::query::PositionProperty,std::variant<csq::EntryWithProperties<rf::query::REEntityProperty,rf::query::PositionProperty>>>::evaluate(float32x4_t *a1, float32x4_t *a2)
{
  if (a2[2].i32[0] == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = a2[1];
  v3 = vcgeq_f32(v2, a1[1]);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    return 1;
  }

  v5 = vcgeq_f32(a1[2], v2);
  v5.i32[3] = v5.i32[2];
  return (vminvq_u32(v5) & 0x80000000) == 0;
}

void rf::data_flow::provider::InputFrameProvider::provideData(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v6 = *a2;
  v7 = v2;
  v3 = a2[3];
  v8 = a2[2];
  v9 = v3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  rf::data_flow::DataGraph::evaluate<rf::data_flow::provider::InputFrame>(v4, &v5);
}

void rf::data_flow::provider::InputFrameProvider::~InputFrameProvider(rf::data_flow::provider::InputFrameProvider *this)
{
  *this = &unk_28740A280;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_28740A280;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26670D060);
}

void *rf::AnchorMetadataComponent::instance(rf::AnchorMetadataComponent *this)
{
  {
    rf::AnchorMetadataComponent::AnchorMetadataComponent(&rf::AnchorMetadataComponent::instance(void)::instance);
  }

  return &rf::AnchorMetadataComponent::instance(void)::instance;
}

rf::AnchorMetadataComponent *rf::AnchorMetadataComponent::AnchorMetadataComponent(rf::AnchorMetadataComponent *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  rf::AnchorMetadataComponent::buildIntrospectionInfo(this);
  rf::AnchorMetadataComponent::registerAnchorMetadataComponent(this);
  return this;
}

void sub_2618265F0(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 104);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t rf::AnchorMetadataComponent::deinit(rf::AnchorMetadataComponent *this)
{
  *(this + 36) = 0;
  if (*this)
  {
    RECustomComponentTypeDestroy();
    *this = 0;
  }

  result = *(this + 17);
  if (result)
  {
    result = RECIntrospectionStructUnregister();
    *(this + 17) = 0;
  }

  return result;
}

uint64_t rf::AnchorMetadataComponent::buildIntrospectionInfo(uint64_t this)
{
  if (!*(this + 136))
  {
    v1 = this;
    this = REStructBuilderCreate();
    if (this)
    {
      v2 = this;
      if (REStructBuilderInit())
      {
        REStructBuilderAddMemberDataTypeWithTag();
        *(v1 + 136) = RECIntrospectionStructRegister();
      }

      return MEMORY[0x282154E00](v2);
    }
  }

  return this;
}

void *rf::AnchorMetadataComponent::registerAnchorMetadataComponent(void *this)
{
  if (!*this)
  {
    v1 = this;
    this = RECustomComponentTypeCreate();
    *v1 = this;
  }

  return this;
}

void *rf::AnchorMetadataComponent::retain(void *this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 <= 0)
  {
    rf::AnchorMetadataComponent::buildIntrospectionInfo(this);
    this = rf::AnchorMetadataComponent::registerAnchorMetadataComponent(v1);
    v2 = *(v1 + 36);
  }

  *(v1 + 36) = v2 + 1;
  return this;
}

void rf::AnchorMetadataComponent::registerAnchorMetadataComponent(void)::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x26670D060);
  }
}

uint64_t rf::AnchorMetadataComponent::registerAnchorMetadataComponent(void)::$_2::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 32))
  {
    v3 = result + 8;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t std::function<void ()(REComponent *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t rf::AnchorMetadataComponent::registerAnchorMetadataComponent(void)::$_3::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 64))
  {
    v3 = result + 40;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorMetadataComponent::registerAnchorMetadataComponent(void)::$_4::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 96))
  {
    v3 = result + 72;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

uint64_t rf::AnchorMetadataComponent::registerAnchorMetadataComponent(void)::$_5::__invoke(uint64_t a1)
{
  RECustomComponentGetType();
  result = RECustomComponentTypeGetContext();
  if (*(result + 128))
  {
    v3 = result + 104;

    return std::function<void ()(REComponent *)>::operator()(v3, a1);
  }

  return result;
}

void rf::detail::createGeomModelDescriptorFromInputMesh(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[3] == 1 && *(a2 + 136) == 1 && (*(a2 + 200) & 1) != 0)
  {
    v6 = *(a2 + 128);
    v7 = *(a2 + 192);
    v8 = v7 / 3;
    [*(a2 + 176) contents];
    LOBYTE(__p[0]) = 3;
    std::vector<unsigned char>::vector[abi:ne200100](v39, v7 / 3uLL, __p);
    v38 = REGeomModelDescriptorCreate();
    if ((*(a2 + 136) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v9 = [*(a2 + 112) contents];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v6);
    if (v6)
    {
      v11 = 0;
      v12 = (v9 + 8);
      do
      {
        *&v10 = *(v12 - 1);
        DWORD2(v10) = *v12;
        *(__p[0] + v11) = v10;
        v11 += 16;
        v12 += 3;
      }

      while (16 * v6 != v11);
    }

    MEMORY[0x26670C450](v38, "vertexPosition", 1, v6, __p[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(a2 + 168) == 1)
    {
      v13 = [*(a2 + 144) contents];
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v6);
      if (v6)
      {
        v15 = 0;
        v16 = (v13 + 8);
        do
        {
          *&v14 = *(v16 - 1);
          DWORD2(v14) = *v16;
          *(__p[0] + v15) = v14;
          v15 += 16;
          v16 += 3;
        }

        while (16 * v6 != v15);
      }

      MEMORY[0x26670C450](v38, "vertexNormal", 1, v6, __p[0]);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (*a3 == 1 && *(a2 + 232) == 1 && [*(a2 + 208) length])
    {
      if ((*(a2 + 232) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v17 = [*(a2 + 208) contents];
      std::vector<unsigned int>::vector[abi:ne200100](__dst, 3 * v8);
      if (v7 >= 3)
      {
        if (v8 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v8;
        }

        v19 = __dst[0] + 8;
        do
        {
          v20 = *v17++;
          *(v19 - 2) = v20;
          *(v19 - 1) = v20;
          *v19 = v20;
          v19 += 3;
          --v18;
        }

        while (v18);
      }

      memcpy(__p, &unk_261864C50, sizeof(__p));
      REGeomModelDescriptorAddIndexedAttributeUInt32();
      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
      }
    }

    if (a3[1] == 1 && *(a2 + 264) == 1 && [*(a2 + 240) length])
    {
      if ((*(a2 + 264) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v21 = [*(a2 + 240) contents];
      _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v6);
      if (v6)
      {
        v22 = 0;
        v23 = (v21 + 8);
        do
        {
          *&v24 = *(v23 - 1);
          DWORD2(v24) = *v23;
          HIDWORD(v24) = 1.0;
          *(__p[0] + v22) = v24;
          v22 += 16;
          v23 += 3;
        }

        while (16 * v6 != v22);
      }

      MEMORY[0x26670C460](v38, "vertexColor", 1, v6, __p[0]);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (a3[2] == 1 && *(a2 + 296) == 1 && [*(a2 + 272) length])
    {
      if ((*(a2 + 296) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v25 = [*(a2 + 272) contents];
      std::vector<unsigned int>::vector[abi:ne200100](v36, 3 * v8);
      if (v7 >= 3)
      {
        if (v8 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v8;
        }

        v27 = v36[0] + 8;
        v28 = v25;
        do
        {
          v29 = *v28++;
          *(v27 - 2) = v29;
          *(v27 - 1) = v29;
          *v27 = v29;
          v27 += 3;
          --v26;
        }

        while (v26);
      }

      memcpy(__p, &unk_261864C50, sizeof(__p));
      REGeomModelDescriptorAddIndexedAttributeUInt32();
      memcpy(__dst, &unk_261865050, 0x190uLL);
      std::vector<unsigned int>::vector[abi:ne200100](v34, 3 * v8);
      if (v7 >= 3)
      {
        if (v8 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v8;
        }

        v31 = (v34[0] + 8);
        do
        {
          v33 = *v25++;
          v32 = v33;
          if (v33 >= 0x18)
          {
            v32 = 24;
          }

          *(v31 - 2) = v32;
          *(v31 - 1) = v32;
          *v31 = v32;
          v31 += 3;
          --v30;
        }

        while (v30);
      }

      REGeomModelDescriptorAddIndexedAttributeVector3F();
      if (v34[0])
      {
        v34[1] = v34[0];
        operator delete(v34[0]);
      }

      if (v36[0])
      {
        v36[1] = v36[0];
        operator delete(v36[0]);
      }
    }

    *a1 = v38;
    v38 = 0;
    *(a1 + 8) = 1;
    RESharedPtr<REGeomModelDescriptor>::~RESharedPtr(&v38);
    if (v39[0])
    {
      v39[1] = v39[0];
      operator delete(v39[0]);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_261826EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a64)
  {
    operator delete(a64);
  }

  RESharedPtr<REGeomModelDescriptor>::~RESharedPtr((v64 - 112));
  v66 = *(v64 - 104);
  if (v66)
  {
    *(v64 - 96) = v66;
    operator delete(v66);
  }

  _Unwind_Resume(a1);
}

void rf::detail::removeMeshesFrom(rf *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, unint64_t a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = a1;
    do
    {
      v9 = rf::realityFusionLogObject(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(__p, v5);
        v10 = (SBYTE7(v19) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&dword_2617CB000, v9, OS_LOG_TYPE_DEFAULT, "ARState: Removing mesh %{public}s", buf, 0xCu);
        if (SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 1712), v5);
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 1752), v5);
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(*v8, v5))
      {
        goto LABEL_12;
      }

      v11 = rf::realityFusionLogObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        rf::data_flow::RFUUID::string(__p, v5);
        v14 = (SBYTE7(v19) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v14;
        _os_log_error_impl(&dword_2617CB000, v11, OS_LOG_TYPE_ERROR, "removeMeshesFrom(): Mesh %{public}s to be removed but doesn't exist in meshDictionary!", buf, 0xCu);
        if (SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((a3 & 1) == 0)
      {
LABEL_12:
        *buf = *v5;
        v17 = *(v5 + 16);
        v12 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(*v8, v5);
        if (!v12)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        *__p = *buf;
        v19 = v17;
        v13 = v12[7];
        v20 = v12[6];
        v21 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(a4, __p, __p);
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>(*v8, v5);
        a1 = re::internal::enableSignposts(0, 0);
        if (a1)
        {
          if (!*(v5 + 24))
          {
            if (*(v5 + 16))
            {
              v15 = *v5;
            }

            else
            {
              v15 = v5;
            }

            *(v5 + 24) = ((*v15 >> 2) + (*v15 << 6) + v15[1] + 2654435769) ^ *v15;
          }

          a1 = kdebug_trace();
        }
      }

      v5 += 32;
    }

    while (v5 != v6);
  }
}

void rf::detail::updateMeshAt(unint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, unint64_t a4@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v8 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(*a1, v4);
      if (v8)
      {
        v9 = v8[6];
        v10 = v9[4];
        rf::detail::createGeomModelDescriptorFromInputMesh(&v22, v4, a3);
        v11 = *(v4 + 16);
        v24 = *v4;
        v25 = v11;
        v26 = v10 + 1;
        v12 = *(v4 + 32);
        v13 = *(v4 + 48);
        v14 = *(v4 + 80);
        v29 = *(v4 + 64);
        v30 = v14;
        v27 = v12;
        v28 = v13;
        v31 = *(v4 + 96);
        v32 = *(v4 + 100);
        v33 = 0;
        LOBYTE(v34) = 0;
        v36 = 0;
        if (*(v4 + 136) == 1)
        {
          v15 = *(v4 + 112);
          *(v4 + 112) = 0;
          v34 = v15;
          v35 = *(v4 + 120);
          v36 = 1;
        }

        LOBYTE(v37) = 0;
        v39 = 0;
        if (*(v4 + 168) == 1)
        {
          v16 = *(v4 + 144);
          *(v4 + 144) = 0;
          v37 = v16;
          v38 = *(v4 + 152);
          v39 = 1;
        }

        LOBYTE(v40) = 0;
        v42 = 0;
        if (*(v4 + 200) == 1)
        {
          v17 = *(v4 + 176);
          *(v4 + 176) = 0;
          v40 = v17;
          v41 = *(v4 + 184);
          v42 = 1;
        }

        LOBYTE(v43) = 0;
        v45 = 0;
        if (*(v4 + 232) == 1)
        {
          v18 = *(v4 + 208);
          *(v4 + 208) = 0;
          v43 = v18;
          v44 = *(v4 + 216);
          v45 = 1;
        }

        LOBYTE(v46) = 0;
        v48 = 0;
        if (*(v4 + 264) == 1)
        {
          v19 = *(v4 + 240);
          *(v4 + 240) = 0;
          v46 = v19;
          v47 = *(v4 + 248);
          v48 = 1;
        }

        LOBYTE(v49) = 0;
        v51 = 0;
        if (*(v4 + 296) == 1)
        {
          v20 = *(v4 + 272);
          *(v4 + 272) = 0;
          v49 = v20;
          v50 = *(v4 + 280);
          v51 = 1;
        }

        v52 = 0;
        v53 = 0;
        LOBYTE(v54) = 0;
        v55 = 0;
        if (v23 == 1)
        {
          v54 = v22;
          v22 = 0;
          v55 = 1;
        }

        std::__optional_copy_base<RESharedPtr<REAsset>,false>::__optional_copy_base[abi:ne200100](v56, v9 + 46);
        std::__optional_copy_base<RESharedPtr<REAsset>,false>::__optional_copy_base[abi:ne200100](v57, v9 + 48);
        v57[16] = 0;
        v57[24] = 0;
        v21 = *(v4 + 336);
        *(v4 + 336) = 0;
        v58 = v21;
        std::allocate_shared[abi:ne200100]<rf::data_flow::consumer::Mesh,std::allocator<rf::data_flow::consumer::Mesh>,rf::data_flow::consumer::Mesh,0>();
      }

      v4 += 352;
    }

    while (v4 != v5);
  }
}

void sub_261827758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, std::__shared_weak_count *a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  rf::data_flow::consumer::Mesh::~Mesh(va1);
  if (v16 == 1)
  {
    RESharedPtr<REGeomModelDescriptor>::~RESharedPtr(va);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(a11);
  _Unwind_Resume(a1);
}

void rf::detail::insertMeshesInto(uint64_t *a2@<X1>, _BYTE *a3@<X2>, unint64_t a4@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v4 = *a2;
  if (*a2 != a2[1])
  {
    rf::detail::createGeomModelDescriptorFromInputMesh(&v19, v4, a3);
    v6 = *(v4 + 16);
    v25[0] = *v4;
    v25[1] = v6;
    v26 = 1;
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    v9 = *(v4 + 80);
    v29 = *(v4 + 64);
    v30 = v9;
    v27 = v7;
    v28 = v8;
    v31 = *(v4 + 96);
    v32 = *(v4 + 100);
    v33 = 0;
    LOBYTE(v34) = 0;
    v36 = 0;
    if (*(v4 + 136) == 1)
    {
      v10 = *(v4 + 112);
      *(v4 + 112) = 0;
      v34 = v10;
      v35 = *(v4 + 120);
      v36 = 1;
    }

    LOBYTE(v37) = 0;
    v39 = 0;
    if (*(v4 + 168) == 1)
    {
      v11 = *(v4 + 144);
      *(v4 + 144) = 0;
      v37 = v11;
      v38 = *(v4 + 152);
      v39 = 1;
    }

    LOBYTE(v40) = 0;
    v42 = 0;
    if (*(v4 + 200) == 1)
    {
      v12 = *(v4 + 176);
      *(v4 + 176) = 0;
      v40 = v12;
      v41 = *(v4 + 184);
      v42 = 1;
    }

    LOBYTE(v43) = 0;
    v45 = 0;
    if (*(v4 + 232) == 1)
    {
      v13 = *(v4 + 208);
      *(v4 + 208) = 0;
      v43 = v13;
      v44 = *(v4 + 216);
      v45 = 1;
    }

    LOBYTE(v46) = 0;
    v48 = 0;
    if (*(v4 + 264) == 1)
    {
      v14 = *(v4 + 240);
      *(v4 + 240) = 0;
      v46 = v14;
      v47 = *(v4 + 248);
      v48 = 1;
    }

    LOBYTE(v49) = 0;
    v51 = 0;
    if (*(v4 + 296) == 1)
    {
      v15 = *(v4 + 272);
      *(v4 + 272) = 0;
      v49 = v15;
      v50 = *(v4 + 280);
      v51 = 1;
    }

    v52 = 0;
    v53 = 0;
    LOBYTE(v54) = 0;
    v55 = 0;
    if (v20 == 1)
    {
      v54 = v19;
      v19 = 0;
      v55 = 1;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v16 = *(v4 + 336);
    *(v4 + 336) = 0;
    v62 = v16;
    v17 = rf::realityFusionLogObject(v5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      rf::data_flow::RFUUID::string(__p, v25);
      if (v22 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      buf = 136446210;
      *buf_4 = v18;
      _os_log_impl(&dword_2617CB000, v17, OS_LOG_TYPE_DEFAULT, "ARState: Adding mesh %{public}s", &buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::allocate_shared[abi:ne200100]<rf::data_flow::consumer::Mesh,std::allocator<rf::data_flow::consumer::Mesh>,rf::data_flow::consumer::Mesh,0>();
  }
}

void sub_261827D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  rf::data_flow::consumer::Mesh::~Mesh(va1);
  if (v14 == 1)
  {
    RESharedPtr<REGeomModelDescriptor>::~RESharedPtr(va);
  }

  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::~__hash_table(v9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_261827E10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    operator new();
  }

  return a1;
}

void sub_261827EA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_261827F1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__19allocatorIDv3_fE17allocate_at_leastB8ne200100Em(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

_BYTE *std::__optional_copy_base<RESharedPtr<REAsset>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[8] = 0;
  if (*(a2 + 8) == 1)
  {
    v3 = *a2;
    *a1 = *a2;
    if (v3)
    {
      RERetain();
    }

    a1[8] = 1;
  }

  return a1;
}

void sub_261827FC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    RESharedPtr<REAsset>::~RESharedPtr(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<rf::data_flow::consumer::Mesh>::__shared_ptr_emplace[abi:ne200100]<rf::data_flow::consumer::Mesh,std::allocator<rf::data_flow::consumer::Mesh>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28740A2B0;
  rf::data_flow::consumer::Mesh::Mesh((a1 + 4), a2);
  return a1;
}

void std::__shared_ptr_emplace<rf::data_flow::consumer::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28740A2B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t rf::data_flow::consumer::Mesh::Mesh(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(result + 32) = a2[2];
  *(result + 48) = v4;
  *result = v2;
  *(result + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(result + 96) = a2[6];
  *(result + 112) = v7;
  *(result + 64) = v5;
  *(result + 80) = v6;
  *(result + 128) = 0;
  *(result + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    v8 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 128) = v8;
    *(result + 136) = *(a2 + 136);
    *(result + 152) = 1;
  }

  *(result + 160) = 0;
  *(result + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    v9 = *(a2 + 20);
    *(a2 + 20) = 0;
    *(result + 160) = v9;
    *(result + 168) = *(a2 + 168);
    *(result + 184) = 1;
  }

  *(result + 192) = 0;
  *(result + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    v10 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(result + 192) = v10;
    *(result + 200) = *(a2 + 200);
    *(result + 216) = 1;
  }

  *(result + 224) = 0;
  *(result + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    v11 = *(a2 + 28);
    *(a2 + 28) = 0;
    *(result + 224) = v11;
    *(result + 232) = *(a2 + 232);
    *(result + 248) = 1;
  }

  *(result + 256) = 0;
  *(result + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    v12 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(result + 256) = v12;
    *(result + 264) = *(a2 + 264);
    *(result + 280) = 1;
  }

  *(result + 288) = 0;
  *(result + 312) = 0;
  if (*(a2 + 312) == 1)
  {
    v13 = *(a2 + 36);
    *(a2 + 36) = 0;
    *(result + 288) = v13;
    *(result + 296) = *(a2 + 296);
    *(result + 312) = 1;
  }

  *(result + 320) = 0;
  *(result + 344) = 0;
  if (*(a2 + 344) == 1)
  {
    v14 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(result + 320) = v14;
    *(result + 328) = *(a2 + 328);
    *(result + 344) = 1;
  }

  *(result + 352) = 0;
  *(result + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    *(result + 352) = *(a2 + 44);
    *(a2 + 44) = 0;
    *(result + 360) = 1;
  }

  *(result + 368) = 0;
  *(result + 376) = 0;
  if (*(a2 + 376) == 1)
  {
    *(result + 368) = *(a2 + 46);
    *(a2 + 46) = 0;
    *(result + 376) = 1;
  }

  *(result + 384) = 0;
  *(result + 392) = 0;
  if (*(a2 + 392) == 1)
  {
    *(result + 384) = *(a2 + 48);
    *(a2 + 48) = 0;
    *(result + 392) = 1;
  }

  *(result + 400) = 0;
  *(result + 408) = 0;
  if (*(a2 + 408) == 1)
  {
    v15 = *(a2 + 50);
    *(a2 + 50) = 0;
    *(result + 400) = v15;
    *(result + 408) = 1;
  }

  v16 = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 416) = v16;
  return result;
}

__n128 RFAnchorDefinitionComponentInit(uint64_t a1, __n128 *a2, unsigned __int32 a3)
{
  Object = RECustomComponentGetObject();
  result = *a2;
  *Object = *a2;
  Object[1].n128_u32[0] = a3;
  return result;
}

__n128 RFAnchorDefinitionComponentInitWithCustomAnchor(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  Object = RECustomComponentGetObject();
  v5 = 0;
  v6 = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  if (v5)
  {
    v2 = *uu;
  }

  else
  {
    v2 = uu;
  }

  result = *v2;
  *Object = *v2;
  *(Object + 16) = 0;
  return result;
}

__n128 RFAnchorDefinitionComponentInitWithPlane(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v13 = *MEMORY[0x277D85DE8];
  Object = RECustomComponentGetObject();
  v11 = 0;
  v12 = 0;
  uuid_clear(uu);
  uuid_generate_random(uu);
  if (v11)
  {
    v6 = *uu;
  }

  else
  {
    v6 = uu;
  }

  *Object = *v6;
  *(Object + 16) = 1;
  *(Object + 64) = a2;
  result = a4;
  *(Object + 32) = a3;
  *(Object + 48) = a4;
  return result;
}

__n128 RFAnchorDefinitionComponentGetIdentifier(uint64_t a1, __n128 *a2)
{
  Object = RECustomComponentGetObject();
  result = *Object;
  *a2 = *Object;
  return result;
}

__n128 RFAnchorDefinitionComponentSetCenter(uint64_t a1, __n128 a2)
{
  Object = RECustomComponentGetObject();
  result = a2;
  Object[2] = a2;
  return result;
}

__n128 RFAnchorDefinitionComponentSetExtent(uint64_t a1, __n128 a2)
{
  Object = RECustomComponentGetObject();
  result = a2;
  Object[3] = a2;
  return result;
}

uint64_t RFAnchorDefinitionComponentSetRemoteOnly(uint64_t a1, char a2)
{
  result = RECustomComponentGetObject();
  *(result + 20) = a2;
  return result;
}

uint64_t RFAnchorDefinitionComponentSetRedefinesExistingAnchor(uint64_t a1, char a2)
{
  result = RECustomComponentGetObject();
  *(result + 21) = a2;
  return result;
}

__n128 rf::helpers::createAnchorFromAnchorDefinitionComponent@<Q0>(uint64_t a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  Object = RECustomComponentGetObject();
  REComponentGetEntity();
  REEntityCalculateWorldMatrix4x4F();
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  if (*(Object + 16) == 1)
  {
    LOBYTE(v28) = 0;
    *(&v28 + 1) = 0;
    uuid_clear(uu);
    v29 = xmmword_26185DD00;
    v30 = xmmword_26185DD10;
    v31 = xmmword_26185DD20;
    *v32 = xmmword_26185E1B0;
    *&v32[16] = 16842752;
    *&v32[20] = 0;
    v32[24] = 0;
    v33 = 0;
    v41 = 0;
    v40 = 0uLL;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    LOBYTE(v26) = 0;
    *(&v26 + 1) = 0;
    uuid_clear(v25);
    *uu = *Object;
    v28 = v26;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    *v32 = v24;
    *&v32[16] = *(Object + 20);
    v32[18] = *(Object + 72);
    *v25 = *(Object + 32);
    rf::helpers::planeCenterAndRotationToCenterTransform(v25, &v34, *(Object + 52));
    v38 = *(Object + 48);
    DWORD1(v38) = 0;
    HIDWORD(v39) = *(Object + 64);
    v8 = *v32;
    *(a2 + 64) = v31;
    *(a2 + 80) = v8;
    *(a2 + 89) = *&v32[9];
    v9 = v28;
    *a2 = *uu;
    *(a2 + 16) = v9;
    v10 = v30;
    *(a2 + 32) = v29;
    *(a2 + 48) = v10;
    *(a2 + 112) = v33;
    v11 = v35;
    *(a2 + 128) = v34;
    *(a2 + 144) = v11;
    result = v36;
    v12 = v37;
    v13 = v38;
    *(a2 + 208) = v39;
    *(a2 + 176) = v12;
    *(a2 + 192) = v13;
    *(a2 + 160) = result;
    result.n128_u64[0] = v40;
    *(a2 + 216) = v40;
    *(a2 + 232) = v41;
    *(a2 + 256) = 1;
  }

  else
  {
    LOBYTE(v28) = 0;
    *(&v28 + 1) = 0;
    uuid_clear(uu);
    v29 = xmmword_26185DD00;
    v30 = xmmword_26185DD10;
    v31 = xmmword_26185DD20;
    *v32 = xmmword_26185E1B0;
    *&v32[16] = 16842752;
    *&v32[20] = 0;
    v32[24] = 0;
    v33 = 0;
    v34.n128_u8[0] = 0;
    BYTE8(v35) = 0;
    v36.n128_u64[0] = 0;
    uuid_clear(&v34.n128_u8[8]);
    v36.n128_u8[8] = 0;
    BYTE8(v38) = 0;
    LOBYTE(v26) = 0;
    *(&v26 + 1) = 0;
    uuid_clear(v25);
    v16 = v26;
    *uu = *Object;
    v15 = *uu;
    v28 = v26;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    *v32 = v24;
    *&v32[16] = *(Object + 20);
    v32[18] = *(Object + 72);
    *(a2 + 64) = v23;
    *(a2 + 80) = v24;
    *a2 = v15;
    *(a2 + 16) = v16;
    v17 = v30;
    *(a2 + 32) = v29;
    *(a2 + 48) = v17;
    *(a2 + 89) = *&v32[9];
    *(a2 + 112) = v33;
    result = v34;
    v18 = v35;
    v19 = v36;
    v20 = v38;
    *(a2 + 176) = v37;
    *(a2 + 192) = v20;
    *(a2 + 144) = v18;
    *(a2 + 160) = v19;
    *(a2 + 128) = result;
    *(a2 + 256) = 0;
  }

  return result;
}

void rf::helpers::printAnchorDefinitionComponentInfo(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  Object = RECustomComponentGetObject();
  Entity = REComponentGetEntity();
  REEntityCalculateWorldMatrix4x4F();
  v27 = v4;
  v28 = v3;
  v26 = v5;
  v29 = v6;
  v45 = 0;
  v46 = 0;
  uuid_clear(uu);
  *uu = *Object;
  if (Entity)
  {
    while (1)
    {
      RETransformComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        break;
      }

      REAnchorComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        break;
      }

      ComponentByClass = REEntityGetParent();
      if (!ComponentByClass)
      {
        goto LABEL_5;
      }
    }

    v8 = 1;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  v9 = rf::realityFusionLogObject(ComponentByClass);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    rf::data_flow::RFUUID::string(__p, uu);
    if (v31 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((*&v28 == 1.0 || fabsf(*&v28 + -1.0) < (((fabsf(*&v28) + 1.0) + 1.0) * 0.00001)) && (*(&v28 + 1) == 0.0 || (v11 = fabsf(*(&v28 + 1)), v11 < ((v11 + 1.0) * 0.00001))) && (*(&v28 + 2) == 0.0 || (v12 = fabsf(*(&v28 + 2)), v12 < ((v12 + 1.0) * 0.00001))) && (*(&v28 + 3) == 0.0 || (v13 = fabsf(*(&v28 + 3)), v13 < ((v13 + 1.0) * 0.00001))) && ((v14 = v27, *&v27 == 0.0) || (v15 = fabsf(*&v27), v14 = v27, v15 < ((v15 + 1.0) * 0.00001))) && (*(&v14 + 1) == 1.0 || fabsf(*(&v14 + 1) + -1.0) < (((fabsf(*(&v14 + 1)) + 1.0) + 1.0) * 0.00001)) && (*(&v14 + 2) == 0.0 || (v16 = fabsf(*(&v14 + 2)), v16 < ((v16 + 1.0) * 0.00001))) && (*(&v14 + 3) == 0.0 || (v17 = fabsf(*(&v14 + 3)), v17 < ((v17 + 1.0) * 0.00001))) && ((v18 = v26, *&v26 == 0.0) || (v19 = fabsf(*&v26), v18 = v26, v19 < ((v19 + 1.0) * 0.00001))) && (*(&v18 + 1) == 0.0 || (v20 = fabsf(*(&v18 + 1)), *(&v18 + 1) = *(&v26 + 1), v20 < ((v20 + 1.0) * 0.00001))) && (*(&v18 + 2) == 1.0 || fabsf(*(&v18 + 2) + -1.0) < (((fabsf(*(&v18 + 2)) + 1.0) + 1.0) * 0.00001)) && (*(&v18 + 3) == 0.0 || (v21 = fabsf(*(&v18 + 3)), v21 < ((v21 + 1.0) * 0.00001))) && (*&v29 == 0.0 || (v22 = fabsf(*&v29), v22 < ((v22 + 1.0) * 0.00001))) && (*(&v29 + 1) == 0.0 || (v23 = fabsf(*(&v29 + 1)), v23 < ((v23 + 1.0) * 0.00001))) && (*(&v29 + 2) == 0.0 || (v24 = fabsf(*(&v29 + 2)), v24 < ((v24 + 1.0) * 0.00001))))
    {
      v25 = *(&v29 + 3) == 1.0 || fabsf(*(&v29 + 3) + -1.0) < (((fabsf(*(&v29 + 3)) + 1.0) + 1.0) * 0.00001);
    }

    else
    {
      v25 = 0;
    }

    *buf = 136447490;
    v33 = v10;
    v34 = 2048;
    v35 = *&v29;
    v36 = 2048;
    v37 = *(&v29 + 1);
    v38 = 2048;
    v39 = *(&v29 + 2);
    v40 = 1024;
    v41 = v25;
    v42 = 1024;
    v43 = v8;
    _os_log_impl(&dword_2617CB000, v9, OS_LOG_TYPE_DEFAULT, "AnchorDefinitionDebug: AnchorDefinitionComponent id=%{public}s, translation=[%f, %f, %f] (isIdentity=%d) (hasTransformOrAnchor=%d)", buf, 0x36u);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void RFMeshReconstructionServiceCreate()
{
  v0 = 0;
  v1 = 1;
  v2 = 0;
  v3 = 0;
  v4 = 256;
  if (qword_2810C4AD0 != -1)
  {
    dispatch_once(&qword_2810C4AD0, &__block_literal_global_9);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

float *RFMeshReconstructionServiceSetPhysicsEnabled(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  rf::data_flow::consumer::MeshReconstructionConsumer::setCollisionEnabled((v3 + 8), a2);

  return rf::data_flow::consumer::MeshReconstructionConsumer::setRigidbodyEnabled((v3 + 8), a2);
}

void RFMeshReconstructionServiceExportAcousticMeshComponents(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v5 = 0;
  rf::data_flow::consumer::MeshReconstructionConsumer::exportAcousticMeshComponents((v3 + 8), a2, a3, v4);
}

void sub_261829048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(NSError *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RFMeshReconstructionServiceExportAcousticMeshComponentsWithCompletion(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v8 = 0;
  if (a4)
  {
    v7[0] = &unk_28740A320;
    v7[1] = MEMORY[0x26670D530](a4);
    v8 = v7;
  }

  rf::data_flow::consumer::MeshReconstructionConsumer::exportAcousticMeshComponents((v6 + 8), a2, a3, v7);
}

uint64_t RFMeshReconstructionServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 16);
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (ECSManagerNullable)
  {
    ECSManagerNullable = REECSManagerGetServiceLocator();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
  v10 = ECSManagerNullable;
  v11 = v7;
  v12 = a2;
  v13 = 1;
  v14 = 0;
  return (*(*(v5 + 8) + 16))(v5 + 8, &v9);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer26MeshReconstructionConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_20[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::MeshReconstructionConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4AD8 = 0u;
  xmmword_2810C4AE8 = 0u;
  xmmword_2810C4AF8 = 0u;
  unk_2810C4B08 = 0u;
  xmmword_2810C4B18 = 0u;
  unk_2810C4B28 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4AD8 + 1) = p_dst;
  *&xmmword_2810C4AE8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>>::initCallback;
  *&xmmword_2810C4AF8 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>>::finalizeCallback;
  qword_2810C4B10 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4B18 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_11 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2618293F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::MeshReconstructionConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *(v2 + 8) = &unk_28740AB90;

    RESharedPtr<REAsset>::~RESharedPtr((v2 + 120));
    std::__hash_table<std::__hash_value_type<unsigned long,std::any>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::any>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::any>>>::~__hash_table(v2 + 72);

    JUMPOUT(0x26670D060);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(NSError *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void({block_pointer} {__strong})(NSError *),std::allocator<void({block_pointer} {__strong})(NSError *)>,void ()(NSError *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(NSError *),std::allocator<void({block_pointer} {__strong})(NSError *)>,void ()(NSError *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A320;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(NSError *),std::allocator<void({block_pointer} {__strong})(NSError *)>,void ()(NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void RFCameraMetadataProviderCreate()
{
  if (qword_2810C4B40 != -1)
  {
    dispatch_once(&qword_2810C4B40, &__block_literal_global_10);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8provider22CameraMetadataProviderEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_21[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::provider::CameraMetadataProvider]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4B48 = 0u;
  xmmword_2810C4B58 = 0u;
  xmmword_2810C4B68 = 0u;
  unk_2810C4B78 = 0u;
  xmmword_2810C4B88 = 0u;
  unk_2810C4B98 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4B48 + 1) = p_dst;
  *&xmmword_2810C4B58 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::CameraMetadataProvider>>::initCallback;
  *&xmmword_2810C4B68 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::CameraMetadataProvider>>::finalizeCallback;
  qword_2810C4B80 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::CameraMetadataProvider>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4B88 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::CameraMetadataProvider>>::copyDebugDescriptionCallback;
  _MergedGlobals_12 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261829914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::provider::CameraMetadataProvider>>::finalizeCallback(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 16) = 0;
  if (result)
  {
    JUMPOUT(0x26670D060);
  }

  return result;
}

void rf::data_flow::consumer::AnchorListenerConsumer::consumeLatestUpdate(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  std::mutex::lock((a1 + 32));
  if (*(a1 + 120))
  {
    v13[0] = (v2 + 144);
    v13[1] = (a1 + 96);
    v13[2] = (v2 + 144);
    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    memset(v7, 0, sizeof(v7));
    std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4> &>(v9, v13);
    if (v10)
    {
      v3 = 0;
      do
      {
        std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4>::__iterator::operator++[abi:ne200100](v9);
        ++v3;
      }

      while (v10);
    }

    else
    {
      v3 = 0;
    }

    std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4> &>(__p, v13);
    *buf = v7;
    v12 = 0;
    if (v3)
    {
      if (v3 < 0x13B13B13B13B13CLL)
      {
        operator new();
      }

      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13[0] = v7;
    std::vector<rf::data_flow::CustomAnchor>::__destroy_vector::operator()[abi:ne200100](v13);
  }

  std::mutex::unlock((a1 + 32));
  std::mutex::lock((a1 + 136));
  if (*(a1 + 224))
  {
    v4 = *(a1 + 16);
    v5 = (v4 + 3544);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((v4 + 224), (v5 + 2));
      if (!v6)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::function<void ()(rf::data_flow::PinnedGroup const*)>::operator()(a1 + 200, (v6 + 6));
    }
  }

  std::mutex::unlock((a1 + 136));
}

void sub_261829EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::vector<rf::data_flow::CustomAnchor>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::mutex::unlock((v34 + 32));
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::AnchorListenerConsumer::listenToWorldAnchorPinnedGroupUpdate(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v8[5] = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 32));
  v6 = a2[1];
  v7[0] = *a2;
  v7[1] = v6;
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::__value_func[abi:ne200100](v8, a3);
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>((a1 + 96), v7, v7);
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v8);
  std::mutex::unlock((a1 + 32));
}

void sub_26182A048(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v2 + 32);
  std::mutex::unlock((v1 + 32));
  _Unwind_Resume(a1);
}

void rf::data_flow::consumer::AnchorListenerConsumer::listenToPinnedGroupUpdate(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 136));
  std::function<void ()(rf::data_flow::PinnedGroup const*)>::operator=((a1 + 200), a2);

  std::mutex::unlock((a1 + 136));
}

void *std::function<void ()(rf::data_flow::PinnedGroup const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void rf::data_flow::consumer::AnchorListenerConsumer::~AnchorListenerConsumer(rf::data_flow::consumer::AnchorListenerConsumer *this)
{
  *this = &unk_28740A3D0;
  v2 = this + 96;
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](this + 200);
  std::mutex::~mutex((this + 136));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>::~__hash_table(v2);
  std::mutex::~mutex((this + 32));
}

{
  *this = &unk_28740A3D0;
  v2 = this + 96;
  std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::~__value_func[abi:ne200100](this + 200);
  std::mutex::~mutex((this + 136));
  std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>::~__hash_table(v2);
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x26670D060);
}

uint64_t std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100]((v2 + 6));
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

__n128 std::ranges::__begin::__fn::operator()[abi:ne200100]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4> &>(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 112) & 1) == 0)
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      v4 = a2 + 8;
      if (*(a2 + 32) == 1)
      {
        i = *(a2 + 24);
      }

      else
      {
        for (i = *(*(a2 + 8) + 16); i; i = *i)
        {
          if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(*(a2 + 16), (i + 2)))
          {
            break;
          }
        }

        *(a2 + 24) = i;
        *(a2 + 32) = 1;
      }

      v18 = a2;
      *&v19 = i;
      *(&v19 + 1) = v4;
      v13 = a2;
      v14 = 0;
      v15 = a2 + 8;
      std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,std::identity>(&v10, &v18, &v13);
      *(a2 + 40) = v10;
      *(a2 + 56) = v11;
      *(a2 + 64) = 1;
    }

    v19 = *(a2 + 40);
    v6 = *(a2 + 56);
    v18 = a2;
    v20 = v6;
    v21 = a2;
    v13 = a2;
    v14 = a2;
    v15 = 0;
    v16 = a2 + 8;
    v17 = a2;
    std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4>,std::identity>(&v10, &v18, &v13);
    v7 = v11;
    *(a2 + 72) = v10;
    *(a2 + 88) = v7;
    *(a2 + 104) = v12;
    *(a2 + 112) = 1;
  }

  result = *(a2 + 72);
  v9 = *(a2 + 88);
  *a1 = result;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(a2 + 104);
  *(a1 + 40) = a2;
  return result;
}

uint64_t std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4>::__iterator::operator++[abi:ne200100](uint64_t a1)
{
  v2 = std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>::operator++[abi:ne200100](a1);
  v3 = *(v2 + 16);
  v10[0] = *v2;
  v10[1] = v3;
  v4 = *(v2 + 40);
  v11 = *(v2 + 32);
  v9[0] = v4;
  v9[1] = v4;
  v9[2] = 0;
  v9[3] = v4 + 8;
  v9[4] = v4;
  std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4>,std::identity>(v7, v10, v9);
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v8;
  return a1;
}

uint64_t std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>::operator++[abi:ne200100](uint64_t a1)
{
  std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>::operator++[abi:ne200100](a1 + 8);
  v7 = *(a1 + 8);
  v2 = *(a1 + 32);
  v8 = *(a1 + 24);
  v6[0] = v2;
  v6[1] = 0;
  v6[2] = v2 + 8;
  std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,std::identity>(&v4, &v7, v6);
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return a1;
}

__n128 std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_4>,std::identity>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a2 + 16); i != *(a3 + 16); i = *(a2 + 16))
  {
    v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(**(a2 + 8), i + 16);
    if (!v7)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v7 + 76))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (v7[31])
    {
      break;
    }

    std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_3>::__iterator<false>::operator++[abi:ne200100](a2);
  }

  result = *a2;
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>::operator++[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  *(a1 + 8) = *v2;
  if (v3)
  {
    v4 = *(a1 + 16);
    do
    {
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(*(v4 + 8), (v3 + 2)))
      {
        break;
      }

      v3 = *v3;
    }

    while (v3);
  }

  *(a1 + 8) = v3;
  return a1;
}

__n128 std::ranges::__find_if_impl[abi:ne200100]<std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>,std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>,std::reference_wrapper<rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_2>,std::identity>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a2 + 8); i != *(a3 + 8); i = *(a2 + 8))
  {
    v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(**a2, i + 16);
    if (!v7)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (!*(v7 + 76))
    {
      break;
    }

    std::ranges::transform_view[abi:llvm18_nua]<std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<std::unordered_map<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_0>,rf::data_flow::consumer::AnchorListenerConsumer::trackWorldAnchorPinnedGroupChange(rf::ConsumerRequest const&)::$_1>::__iterator<false>::operator++[abi:ne200100](a2);
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

void std::vector<rf::data_flow::CustomAnchor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 26;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>::~__value_func[abi:ne200100](v2 + 48);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (!v5)
  {
    if (*(a2 + 16))
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v5 = ((*v14 >> 2) + (*v14 << 6) + v14[1] + 2654435769) ^ *v14;
    *(a2 + 24) = v5;
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (!rf::data_flow::RFUUID::Equality::operator()(a1, (v11 + 2), a2))
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_26182AC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::function<void ()(rf::data_flow::RFUUID const&,rf::data_flow::RFUUID const&)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__value_func<void ()(rf::data_flow::PinnedGroup const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_26182AED4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

id rf::realityFusionLogObject(rf *this)
{
  if (rf::realityFusionLogObject(void)::once != -1)
  {
    dispatch_once(&rf::realityFusionLogObject(void)::once, &__block_literal_global_11);
  }

  v2 = rf::realityFusionLogObject(void)::_realityFusionLogObject;

  return v2;
}

uint64_t ___ZN2rf22realityFusionLogObjectEv_block_invoke()
{
  rf::realityFusionLogObject(void)::_realityFusionLogObject = os_log_create("com.apple.re", "RealityFusion");

  return MEMORY[0x2821F96F8]();
}

void ___ZN2rf36isRealityFusionVerboseLoggingEnabledEv_block_invoke()
{
  std::string::basic_string[abi:ne200100]<0>(v3, "");
  rf::UserDefaults::UserDefaults(&v5, v3);
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.rf.verboseLogging");
  v0 = rf::UserDefaults::BOOLValue(&v5, __p);
  rf::isRealityFusionVerboseLoggingEnabled(void)::_realityFusionVerboseLoggingEnabled = v0 & ((v0 & 0x100) >> 8);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  rf::UserDefaults::~UserDefaults(&v5);
  if (v4 < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_26182B00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  rf::UserDefaults::~UserDefaults((v21 - 24));
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t convert(uint64_t result)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    rf::getMessage("Service should not be null!", __p);
    rf::internal::logAssert(__p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v1);
    v6 = 0;
    memset(v11, 0, sizeof(v11));
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    convert(RFSceneUnderstandingService *)::$_0::operator()(&v5);
    if (v2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v5;
    }

    else
    {
      v4 = v5.__r_.__value_.__r.__words[0];
    }

    v9 = 136315138;
    v10 = v4;
    _os_log_send_and_compose_impl(v3, &v6, v11, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v9);
    std::string::~string(&v5);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void sub_26182B188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RFGetSceneUnderstandingServiceFromRE()
{
  v12 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x26670CB80]();
  if (!result)
  {
    rf::getMessage("Service should not be null!", __p);
    rf::internal::logAssert(__p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    rf::internal::debugBreakHandler(v1);
    v6 = 0;
    memset(v11, 0, sizeof(v11));
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    convert(RFSceneUnderstandingService *)::$_0::operator()(&v5);
    if (v2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v5;
    }

    else
    {
      v4 = v5.__r_.__value_.__r.__words[0];
    }

    v9 = 136315138;
    v10 = v4;
    _os_log_send_and_compose_impl(v3, &v6, v11, 80, &dword_2617CB000, MEMORY[0x277D86220], 16, "RealityFusion Assert Fatal: %s", &v9);
    std::string::~string(&v5);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void sub_26182B2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RFSceneUnderstandingServiceSetDepthFeatheringEnabled(uint64_t a1, uint64_t a2)
{
  v3 = convert(a1);

  return MEMORY[0x282154C58](v3, a2);
}

uint64_t RFSceneUnderstandingServiceIsDepthFeatheringEnabled(uint64_t a1)
{
  v1 = convert(a1);

  return MEMORY[0x282154C50](v1);
}

void *rf::synthetic::SyntheticUsdKitParser::SyntheticUsdKitParser(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_28740A458;
  a1[1] = v3;
  a1[3] = 0;
  v4 = MEMORY[0x277D778A8];
  v5 = v3;
  v6 = objc_alloc_init(v4);
  v7 = a1[3];
  a1[3] = v6;

  return a1;
}

void *rf::synthetic::SyntheticUsdKitParser::SyntheticUsdKitParser(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a2;
  *a1 = &unk_28740A458;
  v8 = v7;
  a1[1] = v8;
  a1[2] = a3;
  a1[3] = 0;
  rf::synthetic::SyntheticUsdKitParser::open(a1, a4);

  return a1;
}

void rf::synthetic::SyntheticUsdKitParser::open(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:4];
  v5 = objc_alloc(MEMORY[0x277D778A8]);
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v10 = 0;
  v7 = [v5 initSceneFromURL:v6 error:&v10];
  v8 = v10;
  v9 = *(a1 + 24);
  *(a1 + 24) = v7;
}

void rf::synthetic::SyntheticUsdKitParser::setMetersPerUnitScale(rf::synthetic::SyntheticUsdKitParser *this, float a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = v2;
    v5 = objc_alloc(MEMORY[0x277D77878]);
    *&v6 = a2;
    v7 = [v5 initWithFloat:v6];
    std::string::basic_string[abi:ne200100]<0>(__p, "metersPerUnit");
    v8 = MEMORY[0x277CCACA8];
    v9 = v15;
    v10 = __p[0];
    v11 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v9 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = v10;
    }

    v13 = [v8 stringWithCString:v12 encoding:v11];
    [v4 setMetadataWithKey:v13 value:v7];

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_26182B668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::synthetic::SyntheticUsdKitParser::save(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:4];
  v5 = *(a1 + 24);
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v7 = [v5 exportToURL:v6];

  return v7;
}

void rf::synthetic::SyntheticUsdKitParser::getInputMeshes(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    v7 = [v5 nodeIterator];
    v8 = [v7 nextObject];
    if (v8)
    {
      v9 = 0;
      v10 = *MEMORY[0x277D77968];
      do
      {
        v11 = [v8 type];
        {

          if (v12)
          {
            v16 = 0;
            v17 = 0;
            uuid_clear(uu);
            *uu = v9;
            rf::synthetic::SyntheticUsdKitParser::createInputMeshFromMeshNode(a1, v8, uu, &v14);
            if (v14)
            {
              std::vector<std::shared_ptr<rf::data_flow::provider::InputMesh>>::push_back[abi:ne200100](a3, &v14);
            }

            if (*(&v14 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
            }

            ++v9;
          }
        }

        else
        {
        }

        v13 = [v7 nextObject];

        v8 = v13;
      }

      while (v13);
    }
  }
}

void sub_26182B8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL anonymous namespace::isSceneUnderstandingType(void *a1)
{
  v1 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "preliminary:sceneUnderstanding:type");
  v2 = MEMORY[0x277CCACA8];
  v3 = v11;
  v4 = __p[0];
  v5 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v3 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = v4;
  }

  v7 = [v2 stringWithCString:v6 encoding:v5];
  v8 = [v1 property:v7];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8 != 0;
}

void sub_26182B9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::getSceneUnderstandingTypeProperty(void *a1)
{
  v1 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "preliminary:sceneUnderstanding:type");
  v2 = MEMORY[0x277CCACA8];
  v3 = v16;
  v4 = __p[0];
  v5 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v3 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = v4;
  }

  v7 = [v2 stringWithCString:v6 encoding:v5];
  v8 = [v1 property:v7];

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = [v8 tokenValue];
  v10 = [v9 stringValue];
  std::string::basic_string[abi:ne200100]<0>(v13, [v10 UTF8String]);

  SceneUnderstandingTypeFromString = rf::synthetic::getSceneUnderstandingTypeFromString(v13);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return SceneUnderstandingTypeFromString;
}

void sub_26182BB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::createInputMeshFromMeshNode(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v114 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (*(a1 + 8))
  {
    v9 = a3[1];
    v80 = *a3;
    v81 = v9;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 1;
    v87 = 0;
    v88 = 0;
    LOBYTE(v89) = 0;
    v92 = 0;
    LOBYTE(v93) = 0;
    v96 = 0;
    LOBYTE(v97) = 0;
    v100 = 0;
    LOBYTE(v101) = 0;
    v104 = 0;
    LOBYTE(v105) = 0;
    v106 = 0;
    LOBYTE(v107) = 0;
    v110 = 0;
    LOBYTE(v111) = 0;
    v112 = 0;
    v113 = 0;
    [v7 property:@"points"];
    v66 = [objc_claimAutoreleasedReturnValue() data];
    v10 = [v66 arraySize];
    v11 = [v66 dataNoCopy];
    v12 = [v11 copy];

    v13 = v10;
    v14 = 12 * v10;
    v15 = [*(a1 + 8) newBufferWithBytes:objc_msgSend(v12 length:"bytes") options:{v14, 0}];
    v92 = 1;
    v89 = v15;
    v90 = 30;
    v91 = v13;
    [v8 property:@"faceVertexIndices"];
    v65 = [objc_claimAutoreleasedReturnValue() data];
    v16 = [v65 arraySize];
    v17 = [v65 dataNoCopy];
    v18 = [v17 copy];

    v19 = [*(a1 + 8) newBufferWithBytes:objc_msgSend(v18 length:"bytes") options:{4 * v16, 0}];
    if (v100 == 1)
    {
    }

    else
    {
      v100 = 1;
    }

    v97 = v19;
    v98 = 36;
    v99 = v16;
    [v8 property:@"normals"];
    v20 = [objc_claimAutoreleasedReturnValue() data];
    if (v20)
    {
      v21 = [v20 dataNoCopy];
      v22 = [v21 copy];

      v23 = [*(a1 + 8) newBufferWithBytes:objc_msgSend(v22 length:"bytes") options:{v14, 0}];
      if (v96 == 1)
      {
      }

      else
      {
        v96 = 1;
      }

      v93 = v23;
      v94 = 30;
      v95 = v13;
    }

    v24 = [v8 property:@"classifications"];
    v25 = v16 / 3;
    if (v24)
    {
      std::vector<int>::vector[abi:ne200100](v76, v25);
      [v24 intArray:v76[0] maxCount:v25];
      std::vector<unsigned char>::vector[abi:ne200100](__p, v25);
      if (v16 >= 3)
      {
        v26 = 0;
        if (v25 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v25;
        }

        do
        {
          *(__p[0] + v26) = *(v76[0] + v26);
          ++v26;
        }

        while (v27 != v26);
      }

      v28 = [*(a1 + 8) newBufferWithBytes:__p[0] length:v25 options:0];
      if (v104 == 1)
      {
        v29 = v101;
        v101 = v28;
      }

      else
      {
        v101 = v28;
        v104 = 1;
      }

      v102 = 45;
      v103 = v25;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v76[0])
      {
        v76[1] = v76[0];
        operator delete(v76[0]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v70, "preliminary:sceneUnderstanding:classification");
    v30 = MEMORY[0x277CCACA8];
    v31 = v71;
    v32 = v70[0];
    v33 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v31 >= 0)
    {
      v34 = v70;
    }

    else
    {
      v34 = v32;
    }

    v35 = [v30 stringWithCString:v34 encoding:v33];
    v36 = [v8 property:v35];

    if (v71 < 0)
    {
      operator delete(v70[0]);
      if (!v36)
      {
        goto LABEL_40;
      }
    }

    else if (!v36)
    {
      goto LABEL_40;
    }

    v37 = [v36 tokenValue];
    v38 = [v37 stringValue];
    v39 = v38;
    std::string::basic_string[abi:ne200100]<0>(v76, [v38 UTF8String]);

    LOBYTE(v67[0]) = rf::synthetic::getClassificationFromString(v76);
    std::vector<unsigned char>::vector[abi:ne200100](__p, v25, v67);
    v40 = [*(a1 + 8) newBufferWithBytes:__p[0] length:v25 options:0];
    if (v104 == 1)
    {
      v41 = v101;
      v101 = v40;
    }

    else
    {
      v101 = v40;
      v104 = 1;
    }

    v102 = 45;
    v103 = v25;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SBYTE7(v77) < 0)
    {
      operator delete(v76[0]);
    }

LABEL_40:
    v42 = [v8 property:@"materials"];
    if (v42)
    {
      std::vector<int>::vector[abi:ne200100](v76, v25);
      [v42 intArray:v76[0] maxCount:v25];
      std::vector<unsigned char>::vector[abi:ne200100](__p, v25);
      if (v16 >= 3)
      {
        v43 = 0;
        if (v25 <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v25;
        }

        do
        {
          *(__p[0] + v43) = *(v76[0] + v43);
          ++v43;
        }

        while (v44 != v43);
      }

      v45 = [*(a1 + 8) newBufferWithBytes:__p[0] length:v25 options:0];
      if (v110 == 1)
      {
        v46 = v107;
        v107 = v45;
      }

      else
      {
        v107 = v45;
        v110 = 1;
      }

      v108 = 45;
      v109 = v25;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v76[0])
      {
        v76[1] = v76[0];
        operator delete(v76[0]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v68, "preliminary:sceneUnderstanding:material");
    v47 = MEMORY[0x277CCACA8];
    v48 = v69;
    v49 = v68[0];
    v50 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v48 >= 0)
    {
      v51 = v68;
    }

    else
    {
      v51 = v49;
    }

    v52 = [v47 stringWithCString:v51 encoding:v50];
    v53 = [v8 property:v52];

    if (v69 < 0)
    {
      operator delete(v68[0]);
      if (!v53)
      {
        goto LABEL_68;
      }
    }

    else if (!v53)
    {
      goto LABEL_68;
    }

    v54 = [v53 tokenValue];
    v55 = [v54 stringValue];
    v56 = v55;
    std::string::basic_string[abi:ne200100]<0>(v76, [v55 UTF8String]);

    LOBYTE(v67[0]) = rf::synthetic::getMaterialFromString(v76);
    std::vector<unsigned char>::vector[abi:ne200100](__p, v25, v67);
    v57 = [*(a1 + 8) newBufferWithBytes:__p[0] length:v25 options:0];
    if (v110 == 1)
    {
      v58 = v107;
      v107 = v57;
    }

    else
    {
      v107 = v57;
      v110 = 1;
    }

    v108 = 45;
    v109 = v25;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SBYTE7(v77) < 0)
    {
      operator delete(v76[0]);
    }

LABEL_68:
    v61 = v60;
    v62 = 0;
    v64.i64[0] = 0;
    v63.i32[0] = 0;
    v63.i64[1] = 0;
    v63.i32[1] = HIDWORD(SceneUnitScale);
    v64.i64[1] = v61;
    *__p = v67[0];
    v73 = v67[1];
    v74 = v67[2];
    v75 = v67[3];
    do
    {
      *&v76[v62] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(SceneUnitScale, COERCE_FLOAT(*&__p[v62])), v63, __p[v62], 1), v64, *&__p[v62], 2), xmmword_26185E1B0, *&__p[v62], 3);
      v62 += 2;
    }

    while (v62 != 8);
    v82 = *v76;
    v83 = v77;
    v84 = v78;
    v85 = v79;
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_26182C628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  rf::data_flow::provider::InputMesh::~InputMesh(&a58);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<rf::data_flow::provider::InputMesh>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void rf::synthetic::SyntheticUsdKitParser::getInputAnchors(rf::synthetic::SyntheticUsdKitParser *this@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = [v3 nodeIterator];
    v5 = [v4 nextObject];
    if (v5)
    {
      v6 = *MEMORY[0x277D77968];
      do
      {
        v7 = [v5 type];
        v8 = v7;
        if (v7 == v6)
        {

          if (isSceneUnderstandingType)
          {
            if (rf::synthetic::isSceneUnderstandingAnchor(SceneUnderstandingTypeProperty))
            {
              v13 = 0;
              v14 = 0;
              uuid_clear(uu);
              *uu = 0;
              rf::synthetic::SyntheticUsdKitParser::createInputAnchorFromAnchorNode(this, v5, uu);
            }
          }
        }

        else
        {
        }

        v11 = [v4 nextObject];

        v5 = v11;
      }

      while (v11);
    }
  }
}

void sub_26182CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::createInputAnchorFromAnchorNode(uint64_t a1, void *a2, __int128 *a3)
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  *uu = 0u;
  uuid_clear(uu);
  v114 = xmmword_26185DD00;
  v115 = xmmword_26185DD10;
  v116 = xmmword_26185DD20;
  v117 = xmmword_26185E1B0;
  *&v118 = 16842752;
  BYTE8(v118) = 0;
  *&v119 = 0;
  LOBYTE(v120) = 0;
  BYTE8(v121) = 0;
  *&v122 = 0;
  uuid_clear(&v120 + 8);
  BYTE8(v122) = 0;
  BYTE8(v124) = 0;
  v125 = 0;
  v82 = v88;
  LODWORD(v9) = 0;
  HIDWORD(v9) = HIDWORD(SceneUnitScale);
  v10.i64[0] = 0;
  v10.i64[1] = v11;
  v12 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(SceneUnitScale, v82.f32[0]), v9, *v82.f32, 1), v10, v82, 2), 0);
  v12.i32[3] = v82.i32[3];
  v88 = v12;
  v13 = vmulq_f32(v85, v85);
  v10.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  v14 = vrsqrte_f32(v10.u32[0]);
  v15 = vmul_f32(v14, vrsqrts_f32(v10.u32[0], vmul_f32(v14, v14)));
  v16 = vmulq_n_f32(v85, vmul_f32(v15, vrsqrts_f32(v10.u32[0], vmul_f32(v15, v15))).f32[0]);
  v17 = vmulq_f32(v86, v86);
  v15.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
  *v17.f32 = vrsqrte_f32(v15.u32[0]);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v17.f32, *v17.f32)));
  v18 = vmulq_n_f32(v86, vmul_f32(*v17.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v17.f32, *v17.f32))).f32[0]);
  v19 = vmulq_f32(v87, v87);
  v13.f32[0] = v19.f32[2] + vaddv_f32(*v19.f32);
  *v19.f32 = vrsqrte_f32(v13.u32[0]);
  *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v19.f32, *v19.f32)));
  v85.i32[2] = v16.i32[2];
  v86.i32[2] = v18.i32[2];
  v85.i64[0] = v16.i64[0];
  v86.i64[0] = v18.i64[0];
  v20 = vmulq_n_f32(v87, vmul_f32(*v19.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]);
  v87.i64[0] = v20.i64[0];
  v87.i32[2] = v20.i32[2];
  if (SceneUnderstandingTypeProperty == 2)
  {
    v42 = a3[1];
    v93 = *a3;
    v94 = v42;
    v95 = v85;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v99 = 16842752;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v109.i8[0] = 0;
    v109.i64[1] = 0;
    uuid_clear(v108);
    *v110 = 0u;
    v111 = 0u;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<3ul,rf::data_flow::ObjectAnchor,rf::data_flow::ObjectAnchor>(uu, uu, &v93);
    if (v107 < 0)
    {
      operator delete(__p);
    }

    if (v104 < 0)
    {
      operator delete(v103[0]);
    }

    goto LABEL_20;
  }

  if (SceneUnderstandingTypeProperty != 1)
  {
    if (SceneUnderstandingTypeProperty)
    {
      goto LABEL_61;
    }

    v22 = a3[1];
    v93 = *a3;
    v94 = v22;
    v95 = v85;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v99 = 16842752;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v23 = v6;
    std::string::basic_string[abi:ne200100]<0>(v91, "center");
    v24 = MEMORY[0x277CCACA8];
    v25 = v92;
    v26 = v91[0];
    v27 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v25 >= 0)
    {
      v28 = v91;
    }

    else
    {
      v28 = v26;
    }

    v29 = [v24 stringWithCString:v28 encoding:{v27, 16842752}];
    v30 = [v23 property:v29];

    if (v92 < 0)
    {
      operator delete(v91[0]);
      if (v30)
      {
        goto LABEL_9;
      }
    }

    else if (v30)
    {
LABEL_9:
      [v30 float3Value];
      v83 = v31;
      goto LABEL_31;
    }

    v83 = 0u;
LABEL_31:

    v52.i64[1] = v53;
    v84 = vmulq_f32(v83, v52);
    rf::helpers::planeCenterAndRotationToCenterTransform(&v84, v103, v21);
    v56 = v55;
    v58.i64[0] = PlaneExtentProperty;
    v58.i64[1] = v56;
    v59.i64[0] = v57;
    v59.i64[1] = v60;
    v109 = vmulq_f32(v58, v59);
    v61 = v23;
    std::string::basic_string[abi:ne200100]<0>(v91, "preliminary:sceneUnderstanding:plane:alignment");
    v62 = MEMORY[0x277CCACA8];
    LODWORD(PlaneExtentProperty) = v92;
    v63 = v91[0];
    v64 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if ((PlaneExtentProperty & 0x80000000) == 0)
    {
      v65 = v91;
    }

    else
    {
      v65 = v63;
    }

    v66 = [v62 stringWithCString:v65 encoding:v64];
    v67 = [v61 property:v66];

    if (v92 < 0)
    {
      operator delete(v91[0]);
      if (v67)
      {
        goto LABEL_36;
      }
    }

    else if (v67)
    {
LABEL_36:
      v68 = [v67 stringValue];
      v69 = v68;
      std::string::basic_string[abi:ne200100]<0>(v89, [v68 UTF8String]);
      AlignmentFromString = rf::synthetic::getAlignmentFromString(v89);
      if (v90 < 0)
      {
        operator delete(v89[0]);
      }

LABEL_48:
      LODWORD(v110[0]) = AlignmentFromString;
      v71 = v61;
      std::string::basic_string[abi:ne200100]<0>(v91, "preliminary:sceneUnderstanding:planeClassification");
      v72 = MEMORY[0x277CCACA8];
      v73 = v92;
      v74 = v91[0];
      v75 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
      if (v73 >= 0)
      {
        v76 = v91;
      }

      else
      {
        v76 = v74;
      }

      v77 = [v72 stringWithCString:v76 encoding:v75];
      v78 = [v71 property:v77];

      if (v92 < 0)
      {
        operator delete(v91[0]);
        if (v78)
        {
          goto LABEL_53;
        }
      }

      else if (v78)
      {
LABEL_53:
        v79 = [v78 stringValue];
        v80 = v79;
        std::string::basic_string[abi:ne200100]<0>(v89, [v79 UTF8String]);
        PlaneClassificationFromString = rf::synthetic::getPlaneClassificationFromString(v89);
        if (v90 < 0)
        {
          operator delete(v89[0]);
        }

        goto LABEL_58;
      }

      PlaneClassificationFromString = 0;
LABEL_58:

      HIDWORD(v110[0]) = PlaneClassificationFromString;
      v111 = 0uLL;
      v110[1] = 0;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<1ul,rf::data_flow::PlaneAnchor,rf::data_flow::PlaneAnchor>(uu, uu, &v93);
      if (v110[1])
      {
        *&v111 = v110[1];
        operator delete(v110[1]);
      }

LABEL_61:
      operator new();
    }

    AlignmentFromString = 0;
    goto LABEL_48;
  }

  v32 = a3[1];
  v93 = *a3;
  v94 = v32;
  v95 = v85;
  v96 = v86;
  v97 = v87;
  v98 = v88;
  LOWORD(v99) = 0;
  BYTE2(v99) = 1;
  v33 = v6;
  std::string::basic_string[abi:ne200100]<0>(v91, "isTracked");
  v34 = MEMORY[0x277CCACA8];
  v35 = v92;
  v36 = v91[0];
  v37 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v35 >= 0)
  {
    v38 = v91;
  }

  else
  {
    v38 = v36;
  }

  v39 = [v34 stringWithCString:v38 encoding:{v37, 16842752}];
  v40 = [v33 property:v39];

  if (v92 < 0)
  {
    operator delete(v91[0]);
    if (v40)
    {
      goto LABEL_15;
    }
  }

  else if (v40)
  {
LABEL_15:
    v41 = [v40 BOOLValue];
    goto LABEL_23;
  }

  v41 = 1;
LABEL_23:

  HIBYTE(v99) = v41;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v43 = v33;
  std::string::basic_string[abi:ne200100]<0>(v91, "isDetectionOnly");
  v44 = MEMORY[0x277CCACA8];
  v45 = v92;
  v46 = v91[0];
  v47 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v45 >= 0)
  {
    v48 = v91;
  }

  else
  {
    v48 = v46;
  }

  v49 = [v44 stringWithCString:v48 encoding:v47];
  v50 = [v43 property:v49];

  if (v92 < 0)
  {
    operator delete(v91[0]);
    if (v50)
    {
      goto LABEL_28;
    }
  }

  else if (v50)
  {
LABEL_28:
    v51 = [v50 BOOLValue];
LABEL_41:

    LOBYTE(v103[0]) = v51;
    std::string::basic_string[abi:ne200100]<0>(&v106, "");
    v109 = 0u;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__assign_alt[abi:ne200100]<2ul,rf::data_flow::ImageAnchor,rf::data_flow::ImageAnchor>(uu, uu, &v93);
    if (v108[7] < 0)
    {
      operator delete(v106);
    }

    if (SHIBYTE(__p) < 0)
    {
      operator delete(v103[1]);
    }

LABEL_20:

    goto LABEL_61;
  }

  v51 = 1;
  goto LABEL_41;
}

void sub_26182D3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, void *a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a62);
  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::getInputObjects(rf::synthetic::SyntheticUsdKitParser *this@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = [v3 nodeIterator];
    v5 = [v4 nextObject];
    if (v5)
    {
      while (1)
      {
        v6 = [v5 metadataWithKey:@"typeName"];
        v7 = [v6 stringValue];
        v8 = v7;
        std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);

        if (v14 < 0)
        {
          break;
        }

        if (v14 == 14)
        {
          v9 = __p;
          goto LABEL_7;
        }

LABEL_15:
        v11 = [v4 nextObject];

        v5 = v11;
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v9 = __p[0];
      if (__p[1] == 14)
      {
LABEL_7:
        if (*v9 == 0x656E6563535F5241 && *(v9 + 6) == 0x7463656A624F656ELL)
        {
          v16 = 0;
          v17 = 0;
          uuid_clear(uu);
          *uu = 0;
          rf::synthetic::SyntheticUsdKitParser::createInputObjectFromObjectNode(&v12, this, v5, uu);
        }

        if ((v14 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        v9 = __p[0];
      }

      operator delete(v9);
      goto LABEL_15;
    }

LABEL_16:
  }
}

void sub_26182D934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  __p = a10;
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::createInputObjectFromObjectNode(void *a1, uint64_t a2, void *a3, __int128 *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = 0;
  uuid_clear(uu);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v7 = [v6 metadataWithKey:@"typeName"];
  v8 = [v7 stringValue];
  v9 = v8;
  std::string::basic_string[abi:ne200100]<0>(v47, [v8 UTF8String]);

  if (v48 < 0)
  {
    if (v47[1] != 14)
    {
      goto LABEL_19;
    }

    v10 = v47[0];
  }

  else
  {
    if (v48 != 14)
    {
      goto LABEL_19;
    }

    v10 = v47;
  }

  v11 = *v10;
  v12 = *(v10 + 6);
  if (v11 == 0x656E6563535F5241 && v12 == 0x7463656A624F656ELL)
  {
    v14 = a4[1];
    v54 = *a4;
    v55 = v14;
    v17 = v16;
    v18 = 0;
    v20.i64[0] = 0;
    v19.i32[0] = 0;
    v19.i64[1] = 0;
    v19.i32[1] = HIDWORD(SceneUnitScale);
    v20.i64[1] = v17;
    v49[0] = v46[0];
    v49[1] = v46[1];
    v49[2] = v46[2];
    v49[3] = v46[3];
    do
    {
      *&__p[v18 / 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(SceneUnitScale, COERCE_FLOAT(v49[v18 / 0x10])), v19, *&v49[v18 / 0x10], 1), v20, v49[v18 / 0x10], 2), xmmword_26185E1B0, v49[v18 / 0x10], 3);
      v18 += 16;
    }

    while (v18 != 64);
    v42 = v51;
    v44 = *__p;
    v38 = v53;
    v40 = v52;
    v23 = v22;
    v26 = v25;
    v27 = v6;
    std::string::basic_string[abi:ne200100]<0>(__p, "classification");
    v28 = MEMORY[0x277CCACA8];
    v29 = SBYTE7(v51);
    v30 = __p[0];
    v31 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v29 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = v30;
    }

    v33 = [v28 stringWithCString:v32 encoding:{v31, v38, v40, v42, v44}];
    v34 = [v27 property:v33];

    if (SBYTE7(v51) < 0)
    {
      operator delete(__p[0]);
    }

    v35 = [v34 intValue];

    v36.i64[0] = PlaneExtentProperty;
    v37.i64[0] = v24;
    v36.i64[1] = v23;
    v37.i64[1] = v26;
    *uu = v54;
    v57 = v55;
    v58 = v45;
    v59 = v43;
    v60 = v41;
    v61 = v39;
    v62 = vmulq_f32(v36, v37);
    *&v63 = v35;
  }

LABEL_19:
  operator new();
}

void sub_26182DD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::getEnvironmentProbes(rf::synthetic::SyntheticUsdKitParser *this@<X0>, void *a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = [v3 nodeIterator];
    v5 = [v4 nextObject];
    if (v5)
    {
      v6 = 0;
      do
      {
        v7 = [v5 metadataWithKey:@"typeName"];
        v8 = [v7 stringValue];
        v9 = v8;
        std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);

        if (v16 < 0)
        {
          v10 = __p[0];
          if (__p[1] != 9)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v16 != 9)
          {
            goto LABEL_21;
          }

          v10 = __p;
        }

        if (*v10 == 0x6867694C656D6F44 && *(v10 + 8) == 116)
        {
          v18 = 0;
          v19 = 0;
          uuid_clear(uu);
          *uu = v6;
          rf::synthetic::SyntheticUsdKitParser::createEnvironmentProbeFromDomeLightNode(&v13, this, v5, uu);
          if (v13)
          {
            operator new();
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          ++v6;
          if ((v16 & 0x80) == 0)
          {
            goto LABEL_21;
          }

LABEL_19:
          v10 = __p[0];
LABEL_20:
          operator delete(v10);
          goto LABEL_21;
        }

        if (v16 < 0)
        {
          goto LABEL_19;
        }

LABEL_21:
        v12 = [v4 nextObject];

        v5 = v12;
      }

      while (v12);
    }
  }
}

void sub_26182E084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = a10;
  std::vector<std::shared_ptr<rf::data_flow::EnvironmentProbe>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::createEnvironmentProbeFromDomeLightNode(void *a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!*(a2 + 16))
  {
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_17;
  }

  LOBYTE(v64) = 0;
  *(&v64 + 1) = 0;
  uuid_clear(uu);
  v71 = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  LOBYTE(v70) = 0;
  v72 = 1065353216;
  v8 = [v7 metadataWithKey:@"typeName"];
  v9 = [v8 stringValue];
  v10 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);

  if (v53 < 0)
  {
    if (__p[1] != 9)
    {
      goto LABEL_12;
    }

    v11 = __p[0];
  }

  else
  {
    if (v53 != 9)
    {
      goto LABEL_12;
    }

    v11 = __p;
  }

  v12 = *v11;
  v13 = *(v11 + 8);
  if (v12 != 0x6867694C656D6F44 || v13 != 116)
  {
LABEL_12:
    operator new();
  }

  v15 = [v7 property:@"inputs:texture:file"];
  v16 = [v15 resourcePath];
  v49 = [MEMORY[0x277D77898] resourceWithResourcePath:v16];
  v50 = [v49 dataNoCopy];
  RETextureImportOperationCreateWithData();
  RETextureImportOperationSetMipmapMode();
  v51 = RETextureImportOperationCopyTextureDescriptor();
  [v51 setStorageMode:0];
  [v51 setCompressionType:0];
  v17 = [v51 pixelFormat];
  if (v17 != 115)
  {
    v22 = rf::realityFusionLogObject(v17);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v23 = "SyntheticIO: Failed to create cube map texture. Expected a texture in RGBA16Float format.";
    v24 = v22;
    v25 = 2;
LABEL_48:
    _os_log_error_impl(&dword_2617CB000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    goto LABEL_26;
  }

  v18 = [v51 width];
  if (v18 != 256)
  {
    v22 = rf::realityFusionLogObject(v18);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v40 = [v51 width];
    v41 = [v51 height];
    *buf = 134218240;
    *&buf[4] = v40;
    *&buf[12] = 2048;
    *&buf[14] = v41;
    v23 = "SyntheticIO: Failed to create cube map texture. Expected a texture with width 256. Loaded texture is %lux%lu.";
    v24 = v22;
    v25 = 22;
    goto LABEL_48;
  }

  if ([v51 textureType] == 5)
  {
    v19 = [v16 path];
    v20 = [v19 hasSuffix:@"_envProbeMap.ktx"];

    if (v20)
    {
      v21 = 0;
      goto LABEL_30;
    }
  }

  v26 = [v51 textureType];
  if (v26 == 2)
  {
    v27 = [v51 width];
    v26 = [v51 height];
    if (v27 == v26 / 6)
    {
      v21 = 1;
LABEL_30:
      Asset = RETextureImportOperationCreateAsset();
      if (Asset)
      {
        MEMORY[0x26670CB70](*(a2 + 16));
        v44 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:objc_msgSend(v51 size:"pixelFormat") mipmapped:objc_msgSend(v51, "width"), 1];
        [v44 setStorageMode:0];
        v48 = [*(a2 + 8) newTextureWithDescriptor:v44];
        if (v21)
        {
          v42 = v16;
          v43 = v15;
          v47 = [*(a2 + 8) newTextureWithDescriptor:v51];
          RETextureAssetCopyToDestination();
          v28 = [v47 width];
          v29 = 8 * v28;
          v46 = 8 * v28 * v28;
          v30 = malloc_type_malloc(v46, 0xC1E6AA31uLL);
          v31 = 0;
          for (i = 0; i != 6; ++i)
          {
            *buf = 0;
            *&buf[8] = v31;
            *&buf[16] = 0;
            *&buf[24] = v28;
            *&v55 = v28;
            *(&v55 + 1) = 1;
            [v47 getBytes:v30 bytesPerRow:v29 fromRegion:buf mipmapLevel:0];
            memset(buf, 0, 24);
            *&buf[24] = v28;
            *&v55 = v28;
            *(&v55 + 1) = 1;
            [v48 replaceRegion:buf mipmapLevel:0 slice:i withBytes:v30 bytesPerRow:v29 bytesPerImage:v46];
            v31 += v28;
          }

          free(v30);

          v16 = v42;
          v15 = v43;
        }

        else
        {
          RETextureAssetCopyToDestination();
        }

        RERelease();
        RERelease();
        v34 = [*(a2 + 8) newCommandQueue];
        v35 = [v34 commandBuffer];
        v36 = [v35 blitCommandEncoder];
        [v36 generateMipmapsForTexture:v48];
        [v36 endEncoding];
        [v35 commit];
        [v35 waitUntilCompleted];
        v37 = a4[1];
        *buf = *a4;
        *&buf[16] = v37;
        v55 = xmmword_26185DD00;
        v56 = xmmword_26185DD10;
        v57 = xmmword_26185DD20;
        v58 = xmmword_26185E1B0;
        v38.i64[0] = 0x7F0000007FLL;
        v38.i64[1] = 0x7F0000007FLL;
        v59 = vnegq_f32(v38);
        v39 = v48;
        v60 = v39;
        v61 = 1;
        v62 = 1065353216;
        v67 = v57;
        v68 = v58;
        v69 = v59;
        *uu = *buf;
        v64 = *&buf[16];
        v65 = v55;
        v66 = v56;
        std::__optional_storage_base<objc_object  {objcproto10MTLTexture}* {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<objc_object  {objcproto10MTLTexture}*,false>>(&v70, &v60);
        v72 = v62;
        if (v61 == 1)
        {
        }
      }

      else
      {
        v33 = rf::realityFusionLogObject(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2617CB000, v33, OS_LOG_TYPE_ERROR, "SyntheticIO: Failed to import environment probe texture", buf, 2u);
        }

        RERelease();
        *a1 = 0;
        a1[1] = 0;
      }

      if (Asset)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v22 = rf::realityFusionLogObject(v26);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2617CB000, v22, OS_LOG_TYPE_ERROR, "SyntheticIO: Failed to create cube map texture. Provided texture asset must be one of the following types: 1. A 2D texture with a 1x6 layout(height=6*width). 2. A cube map texture in .ktx format with '_envProbeMap.ktx' suffix.", buf, 2u);
  }

LABEL_26:

  RERelease();
  *a1 = 0;
  a1[1] = 0;

LABEL_13:
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  if (v71 == 1)
  {
  }

LABEL_17:
}

void sub_26182E8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 136) == 1)
  {
  }

  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::addMeshFromUpdateMesh(uint64_t a1, _OWORD **a2, float32x4_t *a3, unsigned __int8 *a4)
{
  v64[3] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    goto LABEL_2;
  }

  rf::getMessage("Mesh should not be null.", v61);
  rf::internal::logAssert(v61);
  if (SBYTE7(v62) < 0)
  {
    operator delete(v61[0]);
  }

  rf::internal::debugBreakHandler(v52);
  if (*a2)
  {
LABEL_2:
    v8 = objc_alloc(MEMORY[0x277D77888]);
    v9 = MEMORY[0x277CCACA8];
    v10 = (*a2)[1];
    *v61 = **a2;
    v62 = v10;
    rf::synthetic::getMeshPathFromIdentifier(v61);
    if ((SBYTE7(v58) & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [v9 stringWithUTF8String:v11];
    v13 = [v8 initWithString:v12];

    if (SBYTE7(v58) < 0)
    {
      operator delete(__p[0]);
    }

    v14 = [*(a1 + 24) newNodeAtPath:v13 type:*MEMORY[0x277D77968]];
    if (*a4 == 4)
    {
      std::string::basic_string[abi:ne200100]<0>(v55, "guide");
      if (v56 < 0)
      {
        operator delete(v55[0]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v53, "none");
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    v15 = *a2;
    if (*(*a2 + 152) == 1)
    {
      v16 = *(v15 + 18);
      v17 = [*(v15 + 16) contents];
      std::vector<re::Vector3<float>>::vector[abi:ne200100](v61, v16);
      if (v16)
      {
        v19 = 0;
        v20 = (v17 + 8);
        do
        {
          *&v18 = *(v20 - 1);
          DWORD2(v18) = *v20;
          *(v61[0] + v19++) = v18;
          v20 += 3;
        }

        while (v16 != v19);
      }

      v21 = [v14 newPropertyWithName:@"points" type:*MEMORY[0x277D77908] role:0];
      [v21 setFloat3Array:v61[0] count:v16];

      if (v61[0])
      {
        v61[1] = v61[0];
        operator delete(v61[0]);
      }

      v15 = *a2;
    }

    else
    {
      v16 = 0;
    }

    if (*(v15 + 216) == 1)
    {
      v22 = [*(v15 + 24) contents];
      if ((*(*a2 + 216) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v23 = v22;
      v24 = *(*a2 + 26);
      v25 = [v14 newPropertyWithName:@"faceVertexIndices" type:*MEMORY[0x277D77918] role:0];
      [v25 setIntArray:v23 count:v24];
      v26 = v24 / 3;
      LODWORD(__p[0]) = 3;
      std::vector<int>::vector[abi:ne200100](v61, v24 / 3, __p);
      v27 = [v14 newPropertyWithName:@"faceVertexCounts" type:*MEMORY[0x277D77920] role:0];
      [v27 setIntArray:v61[0] count:v26];

      if (v61[0])
      {
        v61[1] = v61[0];
        operator delete(v61[0]);
      }

      v15 = *a2;
    }

    else
    {
      v26 = 0;
    }

    if (*(v15 + 184) == 1)
    {
      v28 = [*(v15 + 20) length];
      v15 = *a2;
      if (v28)
      {
        if ((*(v15 + 184) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v29 = [*(v15 + 20) contents];
        std::vector<re::Vector3<float>>::vector[abi:ne200100](v61, v16);
        if (v16)
        {
          v31 = 0;
          v32 = (v29 + 8);
          do
          {
            *&v30 = *(v32 - 1);
            DWORD2(v30) = *v32;
            *(v61[0] + v31++) = v30;
            v32 += 3;
          }

          while (v16 != v31);
        }

        v33 = [v14 newPropertyWithName:@"normals" type:*MEMORY[0x277D77908] role:*MEMORY[0x277D77998]];
        [v33 setFloat3Array:v61[0] count:v16];

        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        v15 = *a2;
      }
    }

    if (*(v15 + 248) == 1)
    {
      v34 = [*(v15 + 28) length];
      v15 = *a2;
      if (v34)
      {
        if ((*(v15 + 248) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v35 = [*(v15 + 28) contents];
        std::vector<int>::vector[abi:ne200100](v61, v26);
        if (v26)
        {
          v36 = 0;
          v37 = v61[0];
          do
          {
            v37[v36] = *(v35 + v36);
            ++v36;
          }

          while (v26 > v36);
        }

        v38 = [v14 newPropertyWithName:@"classifications" type:*MEMORY[0x277D77920] role:0];
        [v38 setIntArray:v61[0] count:v26];

        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        v15 = *a2;
      }
    }

    if (*(v15 + 312) == 1)
    {
      v39 = [*(v15 + 36) length];
      v15 = *a2;
      if (v39)
      {
        if ((*(v15 + 312) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v40 = [*(v15 + 36) contents];
        std::vector<int>::vector[abi:ne200100](v61, v26);
        if (v26)
        {
          v41 = 0;
          v42 = v61[0];
          do
          {
            v42[v41] = *(v40 + v41);
            ++v41;
          }

          while (v26 > v41);
        }

        v43 = [v14 newPropertyWithName:@"materials" type:*MEMORY[0x277D77920] role:0];
        [v43 setIntArray:v61[0] count:v26];

        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        v15 = *a2;
      }
    }

    v44 = 0;
    v45 = *a3;
    v46 = a3[1];
    v47 = a3[2];
    v48 = a3[3];
    v49 = v15[4];
    v50 = v15[5];
    v51 = v15[6];
    *__p = v15[3];
    v58 = v49;
    v59 = v50;
    v60 = v51;
    do
    {
      *&v61[v44] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*&__p[v44])), v46, __p[v44], 1), v47, *&__p[v44], 2), v48, *&__p[v44], 3);
      v44 += 2;
    }

    while (v44 != 8);
    [MEMORY[0x277D778B8] setLocalTransformWithNode:v14 transform:*v61 time:{*&v62, *&v63, v64[0], 0.0}];
  }
}

void sub_26182F028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::createSceneUnderstandingTypeProperty(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "preliminary:sceneUnderstanding:type");
  v4 = MEMORY[0x277CCACA8];
  v5 = v19;
  v6 = __p[0];
  v7 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v5 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v4 stringWithCString:v8 encoding:v7];
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [v3 newPropertyWithName:v9 type:*MEMORY[0x277D77940] role:0];
  rf::synthetic::getSceneUnderstandingTypeString(*a2, &v17);
  v11 = MEMORY[0x277CCACA8];
  v12 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  v13 = v17.__r_.__value_.__r.__words[0];
  v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v12 >= 0)
  {
    v15 = &v17;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v11 stringWithCString:v15 encoding:v14];
  [v10 setStringValue:v16];

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_26182F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v18 = v17;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26182F2D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x26182F2CCLL);
}

void anonymous namespace::createPurposeProperty(void *a1, uint64_t a2)
{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "purpose");
  v4 = MEMORY[0x277CCACA8];
  v5 = v19;
  v6 = __p[0];
  v7 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v5 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v4 stringWithCString:v8 encoding:v7];
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [v3 newPropertyWithName:v9 type:*MEMORY[0x277D77940] role:0];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  v13 = v17.__r_.__value_.__r.__words[0];
  v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v12 >= 0)
  {
    v15 = &v17;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v11 stringWithCString:v15 encoding:v14];
  [v10 setStringValue:v16];

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_26182F480(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x26182F474);
}

void anonymous namespace::createSubdivisionSchemeProperty(void *a1, uint64_t a2)
{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "subdivisionScheme");
  v4 = MEMORY[0x277CCACA8];
  v5 = v19;
  v6 = __p[0];
  v7 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v5 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v4 stringWithCString:v8 encoding:v7];
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [v3 newPropertyWithName:v9 type:*MEMORY[0x277D77940] role:0];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  v13 = v17.__r_.__value_.__r.__words[0];
  v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v12 >= 0)
  {
    v15 = &v17;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v11 stringWithCString:v15 encoding:v14];
  [v10 setStringValue:v16];

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_26182F628(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x26182F61CLL);
}

uint64_t rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  *&v56[24] = a3[1];
  v4 = a3[1];
  *&v56[8] = *a3;
  v5 = a3[3];
  *&v56[40] = a3[2];
  *&v56[56] = v5;
  v14 = a1;
  v16 = *&v56[16];
  v17 = *&v56[32];
  v18 = *&v56[48];
  v15 = *v56;
  v6 = a3[3];
  *&v55[40] = a3[2];
  *&v55[56] = v6;
  v7 = a3[1];
  *&v55[8] = *a3;
  *&v55[24] = v7;
  v19 = *&v56[64];
  v20 = a1;
  v21 = *v55;
  v24 = *&v55[48];
  v23 = *&v55[32];
  v22 = *&v55[16];
  *&v54[56] = a3[3];
  *&v54[8] = *a3;
  v8 = a3[1];
  *&v54[40] = a3[2];
  *&v54[24] = v8;
  v25 = *&v55[64];
  v26 = a1;
  v27 = *v54;
  v30 = *&v54[48];
  v29 = *&v54[32];
  v28 = *&v54[16];
  *&v53[56] = a3[3];
  *&v53[8] = *a3;
  v9 = a3[1];
  *&v53[40] = a3[2];
  *&v53[24] = v9;
  v31 = *&v54[64];
  v32 = a1;
  v35 = *&v53[32];
  v36 = *&v53[48];
  v34 = *&v53[16];
  v33 = *v53;
  v10 = a3[3];
  *&v52[40] = a3[2];
  *&v52[56] = v10;
  v11 = a3[1];
  *&v52[8] = *a3;
  *&v52[24] = v11;
  v37 = *&v53[64];
  v38 = a1;
  v41 = *&v52[32];
  v42 = *&v52[48];
  v39 = *v52;
  v40 = *&v52[16];
  *&v51[56] = a3[3];
  *&v51[8] = v3;
  *&v51[40] = *&v55[40];
  *&v51[24] = v4;
  v43 = *&v52[64];
  v44 = a1;
  v47 = *&v51[32];
  v48 = *&v51[48];
  v45 = *v51;
  v46 = *&v51[16];
  v49 = *&v51[64];
  v12 = *(a2 + 256);
  if (v12 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v50 = &v14;
  return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIN2rf10overloadedIJZNS6_9synthetic21SyntheticUsdKitParser24addAnchorFromInputAnchorERKNS_7variantIJNS6_9data_flow12CustomAnchorENSB_11PlaneAnchorENSB_11ImageAnchorENSB_12ObjectAnchorENSB_10FaceAnchorENSB_10BodyAnchorEEEERKN2re9Matrix4x4IfEEE3__0ZNS9_24addAnchorFromInputAnchorESK_SP_E3__1ZNS9_24addAnchorFromInputAnchorESK_SP_E3__2ZNS9_24addAnchorFromInputAnchorESK_SP_E3__3ZNS9_24addAnchorFromInputAnchorESK_SP_E3__4ZNS9_24addAnchorFromInputAnchorESK_SP_E3__5EEEEEJRKNS0_6__implIJSC_SD_SE_SF_SG_SH_EEEEEEDcOT_DpOT0____fmatrix[v12])(&v50);
}

void rf::synthetic::SyntheticUsdKitParser::addObjectFromInputObject(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D77888]);
  v6 = MEMORY[0x277CCACA8];
  v7 = *(a2 + 16);
  *v21 = *a2;
  v22 = v7;
  rf::synthetic::getObjectPathFromIdentifier(v21);
  if (v20 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [v6 stringWithUTF8String:v8];
  v10 = [v5 initWithString:v9];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "AR_SceneObject");
  v11 = MEMORY[0x277CCACA8];
  v12 = v18;
  v13 = v17[0];
  v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v12 >= 0)
  {
    v15 = v17;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v11 stringWithCString:v15 encoding:v14];
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void anonymous namespace::createPlaneExtentProperty(void *a1, __n128 a2)
{
  v2 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "extent");
  v3 = MEMORY[0x277CCACA8];
  v4 = v11;
  v5 = __p[0];
  v6 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v4 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = v5;
  }

  v8 = [v3 stringWithCString:v7 encoding:v6];
  [v2 property:v8];
  objc_claimAutoreleasedReturnValue();

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_26182FC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v20 = v19;
  operator delete(v20);

  _Unwind_Resume(a1);
}

void rf::synthetic::SyntheticUsdKitParser::getInputMeshAtPath(uint64_t a1@<X0>, uint64_t **a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    goto LABEL_13;
  }

  v8 = objc_alloc(MEMORY[0x277D77888]);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v15 = [v8 initWithString:v9];

  v10 = [*(a1 + 24) nodeAtPath:v15];
  v11 = v10;
  {

LABEL_13:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v14 = a3[1];
  v16[0] = *a3;
  v16[1] = v14;
  rf::synthetic::SyntheticUsdKitParser::createInputMeshFromMeshNode(a1, v11, v16, a4);
}

void rf::synthetic::SyntheticUsdKitParser::getInputAnchorAtPath(uint64_t a1@<X0>, uint64_t **a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v8 = objc_alloc(MEMORY[0x277D77888]);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v17 = [v8 initWithString:v9];

    v10 = [*(a1 + 24) nodeAtPath:v17];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 type];
      v13 = v12;
      if (v12 == *MEMORY[0x277D77968])
      {

        if (isSceneUnderstandingType)
        {
          if (rf::synthetic::isSceneUnderstandingAnchor(SceneUnderstandingTypeProperty))
          {
            v16 = a3[1];
            v18[0] = *a3;
            v18[1] = v16;
            rf::synthetic::SyntheticUsdKitParser::createInputAnchorFromAnchorNode(a1, v11, v18);
          }
        }
      }

      else
      {
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

void rf::synthetic::SyntheticUsdKitParser::getInputObjectAtPath(uint64_t a1@<X0>, uint64_t **a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v8 = objc_alloc(MEMORY[0x277D77888]);
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v12 = [v8 initWithString:v9];

    v10 = [*(a1 + 24) nodeAtPath:v12];
    if (v10)
    {
      v11 = a3[1];
      v13[0] = *a3;
      v13[1] = v11;
      rf::synthetic::SyntheticUsdKitParser::createInputObjectFromObjectNode(a4, a1, v10, v13);
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

void rf::synthetic::SyntheticUsdKitParser::getEnvironmentProbeAtPath(uint64_t a1@<X0>, uint64_t **a2@<X1>, _OWORD *a3@<X2>, void *a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    goto LABEL_9;
  }

  v8 = objc_alloc(MEMORY[0x277D77888]);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v12 = [v8 initWithString:v9];

  v10 = [*(a1 + 24) nodeAtPath:v12];
  if (!v10)
  {

LABEL_9:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v11 = a3[1];
  v13[0] = *a3;
  v13[1] = v11;
  rf::synthetic::SyntheticUsdKitParser::createEnvironmentProbeFromDomeLightNode(a4, a1, v10, v13);
}

void anonymous namespace::getNodeWorldTransform(_OWORD *a1, void *a2)
{
  v14 = a2;
  [MEMORY[0x277D778B8] localTransformWithNode:0.0 time:?];
  v15 = v3;
  v16 = v4;
  *a1 = v3;
  a1[1] = v4;
  v17 = v5;
  v18 = v6;
  a1[2] = v5;
  a1[3] = v6;
  v7 = [v14 parent];
  if (v7)
  {
    do
    {
      [MEMORY[0x277D778B8] localTransformWithNode:v7 time:0.0];
      v12 = 0;
      v19[0] = v15;
      v19[1] = v16;
      v19[2] = v17;
      v19[3] = v18;
      do
      {
        v20[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(v19[v12])), v9, *&v19[v12], 1), v10, v19[v12], 2), v11, v19[v12], 3);
        ++v12;
      }

      while (v12 != 4);
      v15 = v20[0];
      v16 = v20[1];
      v17 = v20[2];
      v18 = v20[3];
      v13 = [v7 parent];

      v7 = v13;
    }

    while (v13);
  }

  *a1 = v15;
  a1[1] = v16;
  a1[2] = v17;
  a1[3] = v18;
}

unint64_t anonymous namespace::getPlaneExtentProperty(void *a1)
{
  v1 = a1;
  v17 = v29;
  v19 = v28;
  v2 = vmulq_f32(v27, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL))), vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vextq_s8(vextq_s8(v28, v28, 0xCuLL), v28, 8uLL)));
  v3 = vaddv_f32(*v2.f32);
  v4 = -1.0;
  if ((v2.f32[2] + v3) > 0.0)
  {
    v4 = 1.0;
  }

  v21 = v27;
  v22 = v4;
  std::string::basic_string[abi:ne200100]<0>(v25, "extent");
  v5 = MEMORY[0x277CCACA8];
  v6 = v26;
  v7 = v25[0];
  v8 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v6 >= 0)
  {
    v9 = v25;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v5 stringWithCString:v9 encoding:{v8, *&v17, *&v19}];
  v11 = [v1 property:v10];

  if (v26 < 0)
  {
    operator delete(v25[0]);
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  std::vector<re::Vector3<float>>::vector[abi:ne200100](__p, 1uLL);
  [v11 float3Array:__p[0] maxCount:1];
  v12 = vmulq_f32(v21, v21);
  v13 = vmulq_f32(v20, v20);
  v14 = vmulq_f32(v18, v18);
  *v12.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vadd_f32(vzip1_s32(*v12.f32, *v13.i8), vzip2_s32(*v12.f32, *v13.i8))));
  v12.i32[2] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  v23 = vmulq_f32(vmulq_n_f32(v12, v22), *__p[0]).u64[0];
  __p[1] = __p[0];
  operator delete(__p[0]);
  v15 = v23;
LABEL_11:

  return v15;
}

void sub_26183061C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t anonymous namespace::getSceneUnitScale(void *a1)
{
  v1 = a1;
  if (v1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "metersPerUnit");
    v2 = MEMORY[0x277CCACA8];
    v3 = v13;
    v4 = __p[0];
    v5 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v3 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = v4;
    }

    v7 = [v2 stringWithCString:v6 encoding:v5];
    v8 = [v1 metadataWithKey:v7];

    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else if (v8)
    {
LABEL_7:
      [v8 floatValue];
      v10 = vdupq_lane_s32(v9, 0).u64[0];
LABEL_11:

      goto LABEL_12;
    }

    v10 = 0x3F8000003F800000;
    goto LABEL_11;
  }

  v10 = 0x3F8000003F800000;
LABEL_12:

  return v10;
}

void anonymous namespace::getSceneUnderstandingNameProperty(void *a1, void *a2)
{
  v3 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "preliminary:sceneUnderstanding:name");
  v4 = MEMORY[0x277CCACA8];
  v5 = v13;
  v6 = __p[0];
  v7 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v5 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v4 stringWithCString:v8 encoding:v7];
  v10 = [v3 property:v9];

  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(a1, "");
    goto LABEL_9;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = [v10 stringValue];
  std::string::basic_string[abi:ne200100]<0>(a1, [v11 UTF8String]);

LABEL_9:
}

uint64_t *std::vector<re::Vector3<float>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<re::Vector3<float>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_26183094C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<re::Vector3<float>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_261830A18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::overloaded<rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_0,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_1,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_2,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_3,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_4,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(float32x4_t **a1, __int128 *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = (*a1)[5].i64[0];
  v4 = objc_alloc(MEMORY[0x277D77888]);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2[1];
  v45 = *a2;
  v46 = v6;
  rf::synthetic::getAnchorPathFromIdentifier(&v45);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = [v5 stringWithUTF8String:p_p];
  v43 = [v4 initWithString:v8];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = [*(v3 + 24) newNodeAtPath:v43 type:*MEMORY[0x277D77968]];
  LOBYTE(v45) = 0;
  v10 = *(a2 + 52);
  v11 = v9;
  std::string::basic_string[abi:ne200100]<0>(&v45, "preliminary:sceneUnderstanding:plane:alignment");
  v12 = MEMORY[0x277CCACA8];
  v13 = SBYTE7(v46);
  v14 = v45;
  v15 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v13 >= 0)
  {
    v16 = &v45;
  }

  else
  {
    v16 = v14;
  }

  v17 = [v12 stringWithCString:v16 encoding:v15];
  if (SBYTE7(v46) < 0)
  {
    operator delete(v45);
  }

  v18 = *MEMORY[0x277D77940];
  v19 = [v11 newPropertyWithName:v17 type:*MEMORY[0x277D77940] role:0];
  rf::synthetic::getAlignmentString(v10, &__p);
  v20 = MEMORY[0x277CCACA8];
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v22 = __p.__r_.__value_.__r.__words[0];
  v23 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v21 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = v22;
  }

  v25 = [v20 stringWithCString:v24 encoding:v23];
  [v19 setStringValue:v25];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v26 = *(a2 + 53);
  v27 = v11;
  std::string::basic_string[abi:ne200100]<0>(&v45, "preliminary:sceneUnderstanding:planeClassification");
  v28 = MEMORY[0x277CCACA8];
  v29 = SBYTE7(v46);
  v30 = v45;
  v31 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v29 >= 0)
  {
    v32 = &v45;
  }

  else
  {
    v32 = v30;
  }

  v33 = [v28 stringWithCString:v32 encoding:v31];
  if (SBYTE7(v46) < 0)
  {
    operator delete(v45);
  }

  v34 = [v27 newPropertyWithName:v33 type:v18 role:0];
  rf::synthetic::getPlaneClassificationString(v26, &__p);
  v35 = MEMORY[0x277CCACA8];
  v36 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v37 = __p.__r_.__value_.__r.__words[0];
  v38 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v36 >= 0)
  {
    v39 = &__p;
  }

  else
  {
    v39 = v37;
  }

  v40 = [v35 stringWithCString:v39 encoding:v38];
  [v34 setStringValue:v40];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v42 = a2[12];
  v45 = 0u;
  v41 = v42;
  v41.n128_u32[1] = DWORD1(v45);
}

void sub_261830EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::overloaded<rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_0,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_1,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_2,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_3,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_4,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(float32x4_t **a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[10].i64[0];
  v5 = objc_alloc(MEMORY[0x277D77888]);
  v6 = MEMORY[0x277CCACA8];
  v7 = *(a2 + 16);
  *v47 = *a2;
  *&v47[16] = v7;
  rf::synthetic::getAnchorPathFromIdentifier(v47);
  if ((SBYTE7(v44) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [v6 stringWithUTF8String:v8];
  v10 = [v5 initWithString:v9];

  if (SBYTE7(v44) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = [*(v4 + 24) newNodeAtPath:v10 type:*MEMORY[0x277D77968]];
  v47[0] = 1;
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(v47, *(a2 + 136), *(a2 + 144));
  }

  else
  {
    *v47 = *(a2 + 136);
    *&v47[16] = *(a2 + 152);
  }

  if ((v47[23] & 0x80000000) != 0)
  {
    operator delete(*v47);
  }

  v12 = *(a2 + 99);
  v13 = v11;
  std::string::basic_string[abi:ne200100]<0>(v47, "isTracked");
  v14 = MEMORY[0x277CCACA8];
  v15 = v47[23];
  v16 = *v47;
  v17 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v15 >= 0)
  {
    v18 = v47;
  }

  else
  {
    v18 = v16;
  }

  v19 = [v14 stringWithCString:v18 encoding:v17];
  if ((v47[23] & 0x80000000) != 0)
  {
    operator delete(*v47);
  }

  v20 = *MEMORY[0x277D778C8];
  v21 = [v13 newPropertyWithName:v19 type:*MEMORY[0x277D778C8] role:0];
  [v21 setBoolValue:v12];

  v22 = *(a2 + 128);
  v23 = v13;
  std::string::basic_string[abi:ne200100]<0>(v47, "isDetectionOnly");
  v24 = MEMORY[0x277CCACA8];
  v25 = v47[23];
  v26 = *v47;
  v27 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v25 >= 0)
  {
    v28 = v47;
  }

  else
  {
    v28 = v26;
  }

  v29 = [v24 stringWithCString:v28 encoding:v27];
  if ((v47[23] & 0x80000000) != 0)
  {
    operator delete(*v47);
  }

  v30 = [v23 newPropertyWithName:v29 type:v20 role:0];
  [v30 setBoolValue:v22];

  std::string::basic_string[abi:ne200100]<0>(v41, "guide");
  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v39, "none");
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v31 = 0;
  v32 = v3[11];
  v33 = v3[12];
  v34 = v3[13];
  v35 = v3[14];
  v36 = *(a2 + 48);
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  *__p = *(a2 + 32);
  v44 = v36;
  v45 = v37;
  v46 = v38;
  do
  {
    *&v47[v31 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&__p[v31])), v33, __p[v31], 1), v34, *&__p[v31], 2), v35, *&__p[v31], 3);
    v31 += 2;
  }

  while (v31 != 8);
  [MEMORY[0x277D778B8] setLocalTransformWithNode:v23 transform:*v47 time:{*&v47[16], *&v48, *&v49, 0.0}];
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::overloaded<rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_0,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_1,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_2,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_3,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_4,rf::synthetic::SyntheticUsdKitParser::addAnchorFromInputAnchor(std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&,re::Matrix4x4<float> const&)::$_5>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(float32x4_t **a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = (*a1)[15].i64[0];
  v5 = objc_alloc(MEMORY[0x277D77888]);
  v6 = MEMORY[0x277CCACA8];
  v7 = *(a2 + 16);
  *v28 = *a2;
  *&v28[16] = v7;
  rf::synthetic::getAnchorPathFromIdentifier(v28);
  if ((SBYTE7(v25) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [v6 stringWithUTF8String:v8];
  v10 = [v5 initWithString:v9];

  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = [*(v4 + 24) newNodeAtPath:v10 type:*MEMORY[0x277D77968]];
  v28[0] = 2;
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(v28, *(a2 + 128), *(a2 + 136));
  }

  else
  {
    *v28 = *(a2 + 128);
    *&v28[16] = *(a2 + 144);
  }

  if ((v28[23] & 0x80000000) != 0)
  {
    operator delete(*v28);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "guide");
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "none");
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v12 = 0;
  v13 = v3[16];
  v14 = v3[17];
  v15 = v3[18];
  v16 = v3[19];
  v17 = *(a2 + 48);
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  *__p = *(a2 + 32);
  v25 = v17;
  v26 = v18;
  v27 = v19;
  do
  {
    *&v28[v12 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&__p[v12])), v14, __p[v12], 1), v15, *&__p[v12], 2), v16, *&__p[v12], 3);
    v12 += 2;
  }

  while (v12 != 8);
  [MEMORY[0x277D778B8] setLocalTransformWithNode:v11 transform:*v28 time:{*&v28[16], *&v29, v30[0], 0.0}];
}

void anonymous namespace::createSceneUnderstandingNameProperty(void *a1, uint64_t a2)
{
  v3 = a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "preliminary:sceneUnderstanding:name");
  v4 = MEMORY[0x277CCACA8];
  v5 = v19;
  v6 = __p[0];
  v7 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v5 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v4 stringWithCString:v8 encoding:v7];
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [v3 newPropertyWithName:v9 type:*MEMORY[0x277D77938] role:0];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  v13 = v17.__r_.__value_.__r.__words[0];
  v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v12 >= 0)
  {
    v15 = &v17;
  }

  else
  {
    v15 = v13;
  }

  v16 = [v11 stringWithCString:v15 encoding:v14];
  [v10 setStringValue:v16];

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_2618318CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2618318C0);
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_26183193C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<rf::data_flow::provider::InputMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28740A530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

void std::__shared_ptr_emplace<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28740A580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

void std::__shared_ptr_emplace<rf::data_flow::SceneObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28740A5D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

void std::__shared_ptr_emplace<rf::data_flow::EnvironmentProbe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28740A620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

void std::__shared_ptr_emplace<rf::data_flow::EnvironmentProbe>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
  }
}

BOOL rf::detail::AnchorUpdateQualifier::isBasePropertiesUpdated(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vsubq_f32(a1[2], a2[2]);
  v3 = vmulq_f32(v2, v2);
  if (fabsf(vaddv_f32(vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))) < 1.0e-10 && (v4 = vsubq_f32(a1[3], a2[3]), v5 = vmulq_f32(v4, v4), fabsf(vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))) < 1.0e-10) && (v6 = vsubq_f32(a1[4], a2[4]), v7 = vmulq_f32(v6, v6), fabsf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))) < 1.0e-10) && (v8 = vsubq_f32(a1[5], a2[5]), v9 = vmulq_f32(v8, v8), fabsf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))) < 1.0e-10) && a1[6].u8[0] == a2[6].u8[0] && a1[6].u8[1] == a2[6].u8[1] && a1[6].u8[2] == a2[6].u8[2])
  {
    return a1[6].u8[3] != a2[6].u8[3];
  }

  else
  {
    return 1;
  }
}

uint64_t rf::detail::removeAnchorsFrom@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = result;
    do
    {
      v10[0] = v8;
      v10[1] = a3;
      v10[2] = a4;
      v9 = *(v5 + 256);
      if (v9 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v10;
      result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100INS1_9__variant15__value_visitorIZN2rf6detail17removeAnchorsFromERNS6_17LockedARStateDataEONS_6vectorINS_7variantIJNS6_9data_flow12CustomAnchorENSC_11PlaneAnchorENSC_11ImageAnchorENSC_12ObjectAnchorENSC_10FaceAnchorENSC_10BodyAnchorEEEENS_9allocatorISJ_EEEERKNS_8functionIFvvEEEE3__0EEJRKNS0_6__implIJSD_SE_SF_SG_SH_SI_EEEEEEDcOT_DpOT0____fmatrix[v9])(&v11, v5);
      v5 += 272;
    }

    while (v5 != v6);
  }

  return result;
}

void rf::detail::updateAnchorsAt(uint64_t *a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      rf::helpers::getRFUUIDFromAnchor(v4, &v28);
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*a1 + 80), &v28))
      {
        v7 = *a1;
        v30[0] = &v28;
        v8 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v7 + 80), &v28, &std::piecewise_construct, v30);
        v9 = *(v4 + 256);
        if (v9 == *(v8 + 76))
        {
          rf::helpers::getBaseAnchorProperties(v4);
          if (v31)
          {
            v26 = v8 + 6;
            v10 = *(v4 + 256);
            if (v10 == -1)
            {
              std::__throw_bad_variant_access[abi:ne200100]();
            }

            v27 = &v26;
            v11 = (off_28740A660[v10])(&v27, v4);
          }

          else
          {
            v11 = v32;
          }

          if ((v11 & 1) == 0)
          {
            goto LABEL_23;
          }

          v9 = *(v4 + 256);
        }

        if (v9 == 0xFFFFFFFFLL)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v30[0] = &v27;
        (off_28740A6C0[v9])(v30, v4);
        v12 = a3[1];
        v13 = a3[2];
        if (v12 >= v13)
        {
          v16 = *a3;
          v17 = v12 - *a3;
          v18 = v17 >> 5;
          v19 = (v17 >> 5) + 1;
          if (v19 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v20 = v13 - v16;
          if (v20 >> 4 > v19)
          {
            v19 = v20 >> 4;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFE0)
          {
            v19 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v19);
          }

          v21 = (32 * v18);
          v22 = v29;
          *v21 = v28;
          v21[1] = v22;
          v15 = (32 * v18 + 32);
          memcpy(0, v16, v17);
          v23 = *a3;
          *a3 = 0;
          a3[1] = v15;
          a3[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          v14 = v29;
          *v12 = v28;
          *(v12 + 1) = v14;
          v15 = v12 + 32;
        }

        a3[1] = v15;
        v24 = *a1;
        v30[0] = &v28;
        v25 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v24 + 80), &v28, &std::piecewise_construct, v30);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>((v25 + 6), v4);
      }

LABEL_23:
      v4 += 272;
    }

    while (v4 != v5);
  }
}

void sub_261831FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  v31 = *v29;
  if (*v29)
  {
    *(v29 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

unsigned int *rf::detail::updateExternalAnchorsAt(unsigned int *result, uint64_t *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = result;
    do
    {
      rf::helpers::getRFUUIDFromAnchor(v4, v17);
      result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v7 + 80), v17);
      v8 = result;
      if (result)
      {
        v9 = result[76];
        if (v9 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        __p[0] = buf;
        (off_28740A6F0[v9])(__p, result + 12);
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>((*v7 + 120), (v8 + 4), v8 + 1);
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove((*v7 + 80), v8, __p);
        v10 = std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](__p);
        v11 = rf::realityFusionLogObject(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, v17);
          v12 = __p;
          if (v14 < 0)
          {
            v12 = __p[0];
          }

          *buf = 136446210;
          v16 = v12;
          _os_log_impl(&dword_2617CB000, v11, OS_LOG_TYPE_DEFAULT, "ARState: Externalizing anchor %{public}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        result = *(a3 + 24);
        if (result)
        {
          result = (*(*result + 48))(result, v17);
        }
      }

      v4 += 272;
    }

    while (v4 != v5);
    v4 = *a2;
    v5 = a2[1];
  }

  while (v5 != v4)
  {
    v5 -= 272;
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  }

  a2[1] = v4;
  return result;
}

_OWORD *rf::detail::relocalizeExternalAnchors(_OWORD *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = result;
  v24 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      rf::helpers::getRFUUIDFromAnchor(v7, v23);
      result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v6 + 120), v23);
      v9 = result;
      if (result)
      {
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>((*v6 + 80), (result + 1), result + 1);
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove((*v6 + 120), v9, __p);
        v10 = std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](__p);
        v11 = rf::realityFusionLogObject(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, v23);
          v12 = v20 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v22 = v12;
          _os_log_impl(&dword_2617CB000, v11, OS_LOG_TYPE_DEFAULT, "ARState: Relocalizing updated anchor %{public}s", buf, 0xCu);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        result = *(a4 + 24);
        if (result)
        {
          result = (*(*result + 48))(result, v23);
        }
      }

      v7 += 272;
    }

    while (v7 != v8);
  }

  v13 = *a3;
  v14 = a3[1];
  if (*a3 != v14)
  {
    do
    {
      rf::helpers::getRFUUIDFromAnchor(v13, v23);
      result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v6 + 120), v23);
      v15 = result;
      if (result)
      {
        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>((*v6 + 80), (result + 1), result + 1);
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove((*v6 + 120), v15, __p);
        v16 = std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](__p);
        v17 = rf::realityFusionLogObject(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, v23);
          if (v20 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446210;
          v22 = v18;
          _os_log_impl(&dword_2617CB000, v17, OS_LOG_TYPE_DEFAULT, "ARState: Relocalizing added anchor %{public}s", buf, 0xCu);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        result = *(a4 + 24);
        if (result)
        {
          result = (*(*result + 48))(result, v23);
        }
      }

      v13 += 272;
    }

    while (v13 != v14);
  }

  return result;
}

uint64_t rf::detail::insertAnchorsInto@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = result;
    do
    {
      rf::helpers::getRFUUIDFromAnchor(v4, &v34);
      if (!std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*v6 + 80), &v34))
      {
        goto LABEL_7;
      }

      v7 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v6 + 80), &v34);
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      SourceFromAnchor = rf::helpers::getSourceFromAnchor((v7 + 6));
      result = rf::helpers::getSourceFromAnchor(v4);
      if (!SourceFromAnchor || result)
      {
LABEL_7:
        rf::helpers::getBaseAnchorProperties(v4);
        v9 = v32;

        if (!std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*v6 + 80), &v34))
        {
          v10 = rf::realityFusionLogObject(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            rf::data_flow::RFUUID::string(__p, &v34);
            v11 = __p;
            if (v31 < 0)
            {
              v11 = __p[0];
            }

            *buf = 136446466;
            v27 = v11;
            v28 = 1024;
            v29 = v9;
            _os_log_impl(&dword_2617CB000, v10, OS_LOG_TYPE_DEFAULT, "ARState: Adding anchor: %{public}s (tracked=%d)", buf, 0x12u);
            if (v31 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v12 = a3[1];
        v13 = a3[2];
        if (v12 >= v13)
        {
          v16 = *a3;
          v17 = v12 - *a3;
          v18 = v17 >> 5;
          v19 = (v17 >> 5) + 1;
          if (v19 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v20 = v13 - v16;
          if (v20 >> 4 > v19)
          {
            v19 = v20 >> 4;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFE0)
          {
            v19 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            std::allocator<rf::data_flow::RFUUID>::allocate_at_least[abi:ne200100](a3, v19);
          }

          v21 = (32 * v18);
          v22 = v35;
          *v21 = v34;
          v21[1] = v22;
          v15 = (32 * v18 + 32);
          memcpy(0, v16, v17);
          v23 = *a3;
          *a3 = 0;
          a3[1] = v15;
          a3[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          v14 = v35;
          *v12 = v34;
          *(v12 + 1) = v14;
          v15 = v12 + 32;
        }

        a3[1] = v15;
        v24 = *v6;
        __p[0] = &v34;
        if (v9)
        {
          v25 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v24 + 80), &v34, &std::piecewise_construct, __p);
        }

        else
        {
          v25 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::piecewise_construct_t const&,std::tuple<rf::data_flow::RFUUID const&>,std::tuple<>>((v24 + 120), &v34, &std::piecewise_construct, __p);
        }

        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>>((v25 + 6), v4);
      }

      v4 += 272;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_2618327F0(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t rf::detail::requestFloorPlaneForPlacementIfNeeded(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *(a4 + 24);
  if (result)
  {
    v7 = *a1;
    v6 = a1[1];
    while (v7 != v6)
    {
      if (*(v7 + 256) == 1 && *(v7 + 212) == 2)
      {
        return (*(*result + 48))();
      }

      v7 += 272;
    }

    for (i = *a2; i != a2[1]; i += 272)
    {
      if (*(i + 256) == 1 && *(i + 212) == 2)
      {
        return (*(*result + 48))();
      }
    }

    for (j = *a3; j != a3[1]; j += 272)
    {
      if (*(j + 256) == 1 && *(j + 212) == 2)
      {
        return (*(*result + 48))();
      }
    }
  }

  return result;
}

void rf::detail::updatePinnedGroups(int8x8_t **a1, uint64_t *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v53 = a2[1];
  if (*a2 == v53)
  {
    return;
  }

  do
  {
    if ((atomic_load_explicit(&_MergedGlobals_13, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_13))
    {
      byte_2810C4BC0 = 0;
      qword_2810C4BC8 = 0;
      uuid_clear(&qword_2810C4BB0);
      __cxa_guard_release(&_MergedGlobals_13);
    }

    v3 = (v2 + 8);
    if (*(v2 + 24) == 1)
    {
      v3 = *(v2 + 8);
    }

    if (byte_2810C4BC0)
    {
      v4 = qword_2810C4BB0;
    }

    else
    {
      v4 = &qword_2810C4BB0;
    }

    if (uuid_compare(v3, v4))
    {
      v5 = *(v2 + 8);
      v69[0] = *(v2 + 9);
      *(v69 + 15) = *(v2 + 24);
    }

    else
    {
      AnchorFromAllAnchors = rf::helpers::tryGetAnchorFromAllAnchors(*a1, v2 + 40);
      if ((v14 & 1) == 0 || (v15 = AnchorFromAllAnchors, *(AnchorFromAllAnchors + 64)) || (v16 = *(AnchorFromAllAnchors + 14), v5 = *(v15 + 168), v69[0] = *(v15 + 169), *(v69 + 15) = *(v15 + 184), v17 = *(v15 + 200), v16, (v17 & 1) == 0))
      {
        v18 = rf::realityFusionLogObject(AnchorFromAllAnchors);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_96;
        }

        rf::data_flow::RFUUID::string(v60, (v2 + 8));
        v22 = SBYTE7(v61);
        v23 = v60[0];
        rf::data_flow::RFUUID::string(__p, (v2 + 40));
        if (v22 >= 0)
        {
          v24 = v60;
        }

        else
        {
          v24 = v23;
        }

        v25 = __p;
        if (SBYTE7(v56) < 0)
        {
          v25 = __p[0];
        }

        *buf = 136446466;
        *&buf[4] = v24;
        *&buf[12] = 2082;
        *&buf[14] = v25;
        _os_log_error_impl(&dword_2617CB000, v18, OS_LOG_TYPE_ERROR, "ARState: Got an operation with a pinned group or pinned anchor that wasn't in the state. The pinned group is %{public}s and the pinned anchor is %{public}s", buf, 0x16u);
        if (SBYTE7(v56) < 0)
        {
          operator delete(__p[0]);
        }

        if ((SBYTE7(v61) & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

LABEL_95:
        operator delete(v60[0]);
LABEL_96:

        goto LABEL_97;
      }
    }

    buf[0] = v5;
    *&buf[1] = v69[0];
    *&buf[16] = *(v69 + 15);
    if (!*v2 && !std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>(&(*a1)[20], buf))
    {
      if (buf[16])
      {
        v6 = *buf;
      }

      else
      {
        v6 = buf;
      }

      uu[16] = 0;
      *&uu[24] = 0;
      uuid_clear(uu);
      *uu = *v6;
      v7 = *a1;
      *__p = *uu;
      v56 = *&uu[16];
      v58 = 1065353216;
      v59 = 0;
      *v60 = *uu;
      v61 = *&uu[16];
      v62 = *uu;
      v63 = *&uu[16];
      memset(v64, 0, sizeof(v64));
      memset(v57, 0, sizeof(v57));
      v65 = 1065353216;
      v66 = 0;
      v8 = *&uu[24];
      if (!*&uu[24])
      {
        if (v61)
        {
          v52 = v60[0];
        }

        else
        {
          v52 = v60;
        }

        v8 = (v52[1] + 64 * *v52 + (*v52 >> 2) + 2654435769u) ^ *v52;
        *(&v61 + 1) = v8;
      }

      v9 = *(v7 + 168);
      if (!*&v9)
      {
        goto LABEL_37;
      }

      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.u32[0];
      if (v10.u32[0] > 1uLL)
      {
        v12 = v8;
        if (v8 >= *&v9)
        {
          v12 = v8 % *&v9;
        }
      }

      else
      {
        v12 = (*&v9 - 1) & v8;
      }

      v19 = *(*(v7 + 160) + 8 * v12);
      if (!v19 || (v20 = *v19) == 0)
      {
LABEL_37:
        operator new();
      }

      while (1)
      {
        v21 = v20[1];
        if (v21 == v8)
        {
          if (rf::data_flow::RFUUID::Equality::operator()(v7 + 160, (v20 + 2), v60))
          {
            std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v64);
            v26 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v57);
            v27 = rf::realityFusionLogObject(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              rf::data_flow::RFUUID::string(v60, uu);
              v29 = (SBYTE7(v61) & 0x80u) == 0 ? v60 : v60[0];
              LODWORD(__p[0]) = 136446210;
              *(__p + 4) = v29;
              _os_log_impl(&dword_2617CB000, v27, OS_LOG_TYPE_DEFAULT, "ARState: Loaded new pinned group %{public}s", __p, 0xCu);
              if (SBYTE7(v61) < 0)
              {
                operator delete(v60[0]);
              }
            }

            break;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v21 >= *&v9)
            {
              v21 %= *&v9;
            }
          }

          else
          {
            v21 &= *&v9 - 1;
          }

          if (v21 != v12)
          {
            goto LABEL_37;
          }
        }

        v20 = *v20;
        if (!v20)
        {
          goto LABEL_37;
        }
      }
    }

    v30 = *&buf[24];
    if (!*&buf[24])
    {
      v51 = buf;
      if (buf[16])
      {
        v51 = *buf;
      }

      v30 = ((*v51 >> 2) + (*v51 << 6) + v51[1] + 2654435769) ^ *v51;
      *&buf[24] = v30;
    }

    v31 = *a1 + 20;
    v32 = (*a1)[21];
    if (!*&v32)
    {
      goto LABEL_71;
    }

    v33 = vcnt_s8(v32);
    v33.i16[0] = vaddlv_u8(v33);
    v34 = v33.u32[0];
    if (v33.u32[0] > 1uLL)
    {
      v35 = v30;
      if (v30 >= *&v32)
      {
        v35 = v30 % *&v32;
      }
    }

    else
    {
      v35 = (*&v32 - 1) & v30;
    }

    v36 = *(*v31 + 8 * v35);
    if (!v36 || (v37 = *v36) == 0)
    {
LABEL_71:
      operator new();
    }

    while (1)
    {
      v38 = v37[1];
      if (v38 == v30)
      {
        break;
      }

      if (v34 > 1)
      {
        if (v38 >= *&v32)
        {
          v38 %= *&v32;
        }
      }

      else
      {
        v38 &= *&v32 - 1;
      }

      if (v38 != v35)
      {
        goto LABEL_71;
      }

LABEL_70:
      v37 = *v37;
      if (!v37)
      {
        goto LABEL_71;
      }
    }

    if (!rf::data_flow::RFUUID::Equality::operator()(v31, (v37 + 2), buf))
    {
      goto LABEL_70;
    }

    if (*v2 == 1)
    {
      v46 = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>(v37 + 10, v2 + 40);
      v18 = rf::realityFusionLogObject(v46);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      rf::data_flow::RFUUID::string(v60, (v2 + 40));
      v47 = SBYTE7(v61);
      v48 = v60[0];
      rf::data_flow::RFUUID::string(__p, buf);
      if (v47 >= 0)
      {
        v49 = v60;
      }

      else
      {
        v49 = v48;
      }

      v50 = __p;
      if (SBYTE7(v56) < 0)
      {
        v50 = __p[0];
      }

      *uu = 136446466;
      *&uu[4] = v49;
      *&uu[12] = 2082;
      *&uu[14] = v50;
      _os_log_impl(&dword_2617CB000, v18, OS_LOG_TYPE_DEFAULT, "ARState: Removing anchor %{public}s from pinned group %{public}s", uu, 0x16u);
      if (SBYTE7(v56) < 0)
      {
        operator delete(__p[0]);
      }

      if ((SBYTE7(v61) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    if (!*v2)
    {
      v39 = std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(v37 + 10, v2 + 40, (v2 + 40));
      v40 = rf::realityFusionLogObject(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(v60, (v2 + 40));
        v41 = SBYTE7(v61);
        v42 = v60[0];
        rf::data_flow::RFUUID::string(__p, buf);
        if (v41 >= 0)
        {
          v43 = v60;
        }

        else
        {
          v43 = v42;
        }

        v44 = __p;
        if (SBYTE7(v56) < 0)
        {
          v44 = __p[0];
        }

        *uu = 136446466;
        *&uu[4] = v43;
        *&uu[12] = 2082;
        *&uu[14] = v44;
        _os_log_impl(&dword_2617CB000, v40, OS_LOG_TYPE_DEFAULT, "ARState: Inserting anchor %{public}s to pinned group %{public}s", uu, 0x16u);
        if (SBYTE7(v56) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v61) < 0)
        {
          operator delete(v60[0]);
        }
      }

      v45 = *(v2 + 72);
      if (*(v37 + 30) != v45)
      {
        *(v37 + 30) = v45;
        std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__emplace_unique_key_args<rf::data_flow::RFUUID,rf::data_flow::RFUUID const&>(&(*a1)[284], buf, buf);
      }
    }

LABEL_97:
    v2 += 80;
  }

  while (v2 != v53);
}

BOOL std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::AnchorUpdateQualifier> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,std::__variant_detail::_Trait::PlaneAnchor,std::__variant_detail::_Trait::ImageAnchor,std::__variant_detail::_Trait::ObjectAnchor,std::__variant_detail::_Trait::FaceAnchor,std::__variant_detail::_Trait::BodyAnchor> const&>(float32x4_t ***a1, float32x4_t *a2)
{
  v3 = **a1;
  if (v3[16].i32[0])
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return rf::detail::AnchorUpdateQualifier::isBasePropertiesUpdated(v3, a2);
}

BOOL std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::AnchorUpdateQualifier> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,std::__variant_detail::_Trait::PlaneAnchor,std::__variant_detail::_Trait::ImageAnchor,std::__variant_detail::_Trait::ObjectAnchor,std::__variant_detail::_Trait::FaceAnchor,std::__variant_detail::_Trait::BodyAnchor> const&>(float32x4_t ***a1, float32x4_t *a2)
{
  v2 = **a1;
  if (v2[16].i32[0] != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (rf::detail::AnchorUpdateQualifier::isBasePropertiesUpdated(**a1, a2))
  {
    return 1;
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v2[9], a2[9]), vceqq_f32(v2[8], a2[8])), vandq_s8(vceqq_f32(v2[10], a2[10]), vceqq_f32(v2[11], a2[11])))) & 0x80000000) == 0)
  {
    return 1;
  }

  v5 = vmvnq_s8(vceqq_f32(v2[12], a2[12]));
  v5.i32[3] = v5.i32[2];
  return (vmaxvq_u32(v5) & 0x80000000) != 0 || v2[13].i32[0] != a2[13].i32[0] || v2[13].i32[1] != a2[13].i32[1];
}

BOOL std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::AnchorUpdateQualifier> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,std::__variant_detail::_Trait::PlaneAnchor,std::__variant_detail::_Trait::ImageAnchor,std::__variant_detail::_Trait::ObjectAnchor,std::__variant_detail::_Trait::FaceAnchor,std::__variant_detail::_Trait::BodyAnchor> const&>(float32x4_t ***a1, float32x4_t *a2)
{
  v2 = **a1;
  if (v2[16].i32[0] != 2)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (rf::detail::AnchorUpdateQualifier::isBasePropertiesUpdated(**a1, a2))
  {
    return 1;
  }

  v4 = vmvnq_s8(vceqq_f32(v2[12], a2[12]));
  v4.i32[3] = v4.i32[2];
  if ((vmaxvq_u32(v4) & 0x80000000) != 0 || v2[8].u8[0] != a2[8].u8[0])
  {
    return 1;
  }

  v5 = v2[9].i8[15];
  if (v5 >= 0)
  {
    v6 = v2[9].u8[15];
  }

  else
  {
    v6 = v2[9].u64[0];
  }

  v7 = a2[9].u8[15];
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[9].i64[0];
  }

  if (v6 != v7)
  {
    return 1;
  }

  v9 = v5 >= 0 ? &v2[8].u32[2] : v2[8].i64[1];
  v10 = v8 >= 0 ? &a2[8].u32[2] : a2[8].i64[1];
  if (memcmp(v9, v10, v6))
  {
    return 1;
  }

  v11 = v2[11].i8[7];
  if (v11 >= 0)
  {
    v12 = v2[11].u8[7];
  }

  else
  {
    v12 = v2[10].u64[1];
  }

  v13 = a2[11].u8[7];
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = a2[10].i64[1];
  }

  if (v12 != v13)
  {
    return 1;
  }

  v17 = v2[10].i64[0];
  v16 = v2 + 10;
  v15 = v17;
  if (v11 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v21 = a2[10].i64[0];
  v20 = a2 + 10;
  v19 = v21;
  if (v14 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  return memcmp(v18, v22, v12) != 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::AnchorUpdateQualifier> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,std::__variant_detail::_Trait::PlaneAnchor,std::__variant_detail::_Trait::ImageAnchor,std::__variant_detail::_Trait::ObjectAnchor,std::__variant_detail::_Trait::FaceAnchor,std::__variant_detail::_Trait::BodyAnchor> const&>(float32x4_t ***a1, float32x4_t *a2)
{
  v2 = **a1;
  if (v2[16].i32[0] != 3)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (rf::detail::AnchorUpdateQualifier::isBasePropertiesUpdated(**a1, a2))
  {
    return 1;
  }

  v4 = v2[9].i8[7];
  if (v4 >= 0)
  {
    v5 = v2[9].u8[7];
  }

  else
  {
    v5 = v2[8].u64[1];
  }

  v6 = a2[9].u8[7];
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[8].i64[1];
  }

  if (v5 != v6)
  {
    return 1;
  }

  v8 = v4 >= 0 ? &v2[8] : v2[8].i64[0];
  v9 = v7 >= 0 ? &a2[8] : a2[8].i64[0];
  if (memcmp(v8, v9, v5))
  {
    return 1;
  }

  v10 = v2[10].i8[15];
  if (v10 >= 0)
  {
    v11 = v2[10].u8[15];
  }

  else
  {
    v11 = v2[10].u64[0];
  }

  v12 = a2[10].u8[15];
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = a2[10].i64[0];
  }

  if (v11 != v12)
  {
    return 1;
  }

  v14 = v10 >= 0 ? &v2[9].u32[2] : v2[9].i64[1];
  v15 = v13 >= 0 ? &a2[9].u32[2] : a2[9].i64[1];
  if (memcmp(v14, v15, v11))
  {
    return 1;
  }

  v17 = vmvnq_s8(vceqq_f32(v2[13], a2[13]));
  v17.i32[3] = v17.i32[2];
  if ((vmaxvq_u32(v17) & 0x80000000) != 0)
  {
    return 1;
  }

  v18 = vmvnq_s8(vceqq_f32(v2[14], a2[14]));
  v18.i32[3] = v18.i32[2];
  return vmaxvq_u32(v18) >> 31;
}

BOOL std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::AnchorUpdateQualifier> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,std::__variant_detail::_Trait::PlaneAnchor,std::__variant_detail::_Trait::ImageAnchor,std::__variant_detail::_Trait::ObjectAnchor,std::__variant_detail::_Trait::FaceAnchor,std::__variant_detail::_Trait::BodyAnchor> const&>(float32x4_t ***a1, float32x4_t *a2)
{
  v2 = **a1;
  if (v2[16].i32[0] != 4)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return rf::detail::AnchorUpdateQualifier::isBasePropertiesUpdated(**a1, a2) || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v2[9], a2[9]), vceqq_f32(v2[8], a2[8])), vandq_s8(vceqq_f32(v2[10], a2[10]), vceqq_f32(v2[11], a2[11])))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v2[13], a2[13]), vceqq_f32(v2[12], a2[12])), vandq_s8(vceqq_f32(v2[14], a2[14]), vceqq_f32(v2[15], a2[15])))) & 0x80000000) == 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::AnchorUpdateQualifier> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,std::__variant_detail::_Trait::PlaneAnchor,std::__variant_detail::_Trait::ImageAnchor,std::__variant_detail::_Trait::ObjectAnchor,std::__variant_detail::_Trait::FaceAnchor,std::__variant_detail::_Trait::BodyAnchor> const&>(float32x4_t ***a1, float32x4_t *a2)
{
  v2 = **a1;
  if (*(v2 + 256) != 5)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  LODWORD(result) = rf::detail::AnchorUpdateQualifier::isBasePropertiesUpdated(**a1, a2);
  if (*(v2 + 128) == a2[8].f32[0])
  {
    return result;
  }

  else
  {
    return 1;
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::removeAnchorsFrom(rf::LockedARStateData &,std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> &&,std::function<void ()(void)> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(rf ***a1, rf::data_flow::RFUUID *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = ***a1;
  if (*(v4 + 1632) == 1)
  {
    rf::helpers::getRFUUIDFromAnchor(v4 + 1360, __p);
    v5 = (v15 ? __p[0] : __p);
    v6 = *(a2 + 16) ? *a2 : a2;
    v7 = uuid_compare(v5, v6);
    if (!v7)
    {
      if (*(v3[1] + 3))
      {
        v8 = rf::realityFusionLogObject(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, a2);
          v9 = v16 >= 0 ? __p : __p[0];
          v12 = 136446210;
          v13 = v9;
          _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Floor anchor %{public}s is removed. Dispatch a new request to ARKit for new floor", &v12, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v10 = *(v3[1] + 3);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10);
      }
    }
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::removeAnchorsFrom(rf::LockedARStateData &,std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> &&,std::function<void ()(void)> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(rf ***a1, rf::data_flow::RFUUID *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = ***a1;
  if (*(v4 + 1632) == 1)
  {
    rf::helpers::getRFUUIDFromAnchor(v4 + 1360, __p);
    v5 = (v15 ? __p[0] : __p);
    v6 = *(a2 + 16) ? *a2 : a2;
    v7 = uuid_compare(v5, v6);
    if (!v7)
    {
      if (*(v3[1] + 3))
      {
        v8 = rf::realityFusionLogObject(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, a2);
          v9 = v16 >= 0 ? __p : __p[0];
          v12 = 136446210;
          v13 = v9;
          _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Floor anchor %{public}s is removed. Dispatch a new request to ARKit for new floor", &v12, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v10 = *(v3[1] + 3);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10);
      }
    }
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::removeAnchorsFrom(rf::LockedARStateData &,std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> &&,std::function<void ()(void)> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(rf ***a1, rf::data_flow::RFUUID *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = ***a1;
  if (*(v4 + 1632) == 1)
  {
    rf::helpers::getRFUUIDFromAnchor(v4 + 1360, __p);
    v5 = (v15 ? __p[0] : __p);
    v6 = *(a2 + 16) ? *a2 : a2;
    v7 = uuid_compare(v5, v6);
    if (!v7)
    {
      if (*(v3[1] + 3))
      {
        v8 = rf::realityFusionLogObject(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, a2);
          v9 = v16 >= 0 ? __p : __p[0];
          v12 = 136446210;
          v13 = v9;
          _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Floor anchor %{public}s is removed. Dispatch a new request to ARKit for new floor", &v12, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v10 = *(v3[1] + 3);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10);
      }
    }
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::removeAnchorsFrom(rf::LockedARStateData &,std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> &&,std::function<void ()(void)> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(rf ***a1, rf::data_flow::RFUUID *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = ***a1;
  if (*(v4 + 1632) == 1)
  {
    rf::helpers::getRFUUIDFromAnchor(v4 + 1360, __p);
    v5 = (v15 ? __p[0] : __p);
    v6 = *(a2 + 16) ? *a2 : a2;
    v7 = uuid_compare(v5, v6);
    if (!v7)
    {
      if (*(v3[1] + 3))
      {
        v8 = rf::realityFusionLogObject(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, a2);
          v9 = v16 >= 0 ? __p : __p[0];
          v12 = 136446210;
          v13 = v9;
          _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Floor anchor %{public}s is removed. Dispatch a new request to ARKit for new floor", &v12, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v10 = *(v3[1] + 3);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10);
      }
    }
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::removeAnchorsFrom(rf::LockedARStateData &,std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> &&,std::function<void ()(void)> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(rf ***a1, rf::data_flow::RFUUID *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = ***a1;
  if (*(v4 + 1632) == 1)
  {
    rf::helpers::getRFUUIDFromAnchor(v4 + 1360, __p);
    v5 = (v15 ? __p[0] : __p);
    v6 = *(a2 + 16) ? *a2 : a2;
    v7 = uuid_compare(v5, v6);
    if (!v7)
    {
      if (*(v3[1] + 3))
      {
        v8 = rf::realityFusionLogObject(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, a2);
          v9 = v16 >= 0 ? __p : __p[0];
          v12 = 136446210;
          v13 = v9;
          _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Floor anchor %{public}s is removed. Dispatch a new request to ARKit for new floor", &v12, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v10 = *(v3[1] + 3);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10);
      }
    }
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<rf::detail::removeAnchorsFrom(rf::LockedARStateData &,std::vector<std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>> &&,std::function<void ()(void)> const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor> const&>(rf ***a1, rf::data_flow::RFUUID *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = ***a1;
  if (*(v4 + 1632) == 1)
  {
    rf::helpers::getRFUUIDFromAnchor(v4 + 1360, __p);
    v5 = (v15 ? __p[0] : __p);
    v6 = *(a2 + 16) ? *a2 : a2;
    v7 = uuid_compare(v5, v6);
    if (!v7)
    {
      if (*(v3[1] + 3))
      {
        v8 = rf::realityFusionLogObject(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          rf::data_flow::RFUUID::string(__p, a2);
          v9 = v16 >= 0 ? __p : __p[0];
          v12 = 136446210;
          v13 = v9;
          _os_log_impl(&dword_2617CB000, v8, OS_LOG_TYPE_DEFAULT, "ARState: Floor anchor %{public}s is removed. Dispatch a new request to ARKit for new floor", &v12, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v10 = *(v3[1] + 3);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10);
      }
    }
  }
}

void *anonymous namespace::removeAnchor(rf *a1, rf::data_flow::RFUUID *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = rf::realityFusionLogObject(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    rf::data_flow::RFUUID::string(__p, a2);
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v17 = v7;
    _os_log_impl(&dword_2617CB000, v6, OS_LOG_TYPE_DEFAULT, "ARState: Removing anchor %{public}s", buf, 0xCu);
    if (SBYTE7(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*a1 + 2072), a2);
  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::__erase_unique<rf::data_flow::RFUUID>((*a1 + 2112), a2);
  v8 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*a1 + 80), a2);
  if (v8)
  {
    v9 = *(a2 + 1);
    *__p = *a2;
    v14 = v9;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v15, (v8 + 6));
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(a3, __p, __p);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
    v10 = (*a1 + 80);
  }

  else
  {
    result = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*a1 + 120), a2);
    v8 = result;
    if (!result)
    {
      return result;
    }

    v12 = *(a2 + 1);
    *__p = *a2;
    v14 = v12;
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v15, (result + 6));
    std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>>(a3, __p, __p);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
    v10 = (*a1 + 120);
  }

  std::__hash_table<rf::data_flow::RFUUID,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,std::allocator<rf::data_flow::RFUUID>>::remove(v10, v8, __p);
  return std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,std::variant<rf::data_flow::CustomAnchor,rf::data_flow::PlaneAnchor,rf::data_flow::ImageAnchor,rf::data_flow::ObjectAnchor,rf::data_flow::FaceAnchor,rf::data_flow::BodyAnchor>>,void *>>>>::~unique_ptr[abi:ne200100](__p);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::PinnedGroup>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::WorldTrackingResultCode>>>::~__hash_table(v2 + 80);
    }

    operator delete(v2);
  }

  return a1;
}

void RFLoggingServiceCreate()
{
  if (qword_2810C4BD8 != -1)
  {
    dispatch_once(&qword_2810C4BD8, &__block_literal_global_12);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void RFLoggingServiceSaveFullSnapshotToFile(uint64_t a1, const __CFURL *a2, __int128 *a3, void *a4)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
  applesauce::CF::details::CFString_get_value<true>(v8, v16);
  CFRelease(v8);
  if (v17 >= 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = v16[0];
  }

  if (a3)
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = a3[2];
    v15 = a3[3];
  }

  else
  {
    v15 = xmmword_26185E1B0;
    v14 = xmmword_26185DD20;
    v13 = xmmword_26185DD10;
    v12 = xmmword_26185DD00;
  }

  v10 = *(a1 + 16);
  v11 = MEMORY[0x26670D530](v7);
  v25[0] = &unk_28740A750;
  v25[1] = v11;
  v25[3] = v25;
  std::string::basic_string[abi:ne200100]<0>(&__p, v9);
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v23, v25);
  v23[8] = 65793;
  v24 = 256;
  rf::data_flow::consumer::LoggingConsumer::requestSaveFullSnapshot((v10 + 16), &__p);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v25);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_261834708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest::~SaveSnapshotRequest(&a24);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v30 - 88);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void RFLoggingServiceStartSavingSnapshotsToFiles(uint64_t a1, const __CFURL *a2, __int128 *a3, void *a4, unsigned int a5)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
  applesauce::CF::details::CFString_get_value<true>(v10, v19);
  CFRelease(v10);
  if (v20 >= 0)
  {
    v11 = v19;
  }

  else
  {
    v11 = v19[0];
  }

  if (a3)
  {
    v15 = *a3;
    v16 = a3[1];
    v17 = a3[2];
    v18 = a3[3];
  }

  else
  {
    v18 = xmmword_26185E1B0;
    v17 = xmmword_26185DD20;
    v16 = xmmword_26185DD10;
    v15 = xmmword_26185DD00;
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x26670D530](v9);
  v29[0] = &unk_28740A7E0;
  v29[1] = v13;
  v29[3] = v29;
  std::string::basic_string[abi:ne200100]<0>(&__p, v11);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v26, v29);
  v14 = *&vshl_u16((*&vdup_n_s16(a5) & 0xFF00FF00FF00FFLL), 0xFFFDFFFBFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  v26[8] = vuzp1_s8(v14, v14).u32[0];
  v27 = (a5 & 0x10) != 0;
  v28 = (a5 & 0x40) != 0;
  rf::data_flow::consumer::LoggingConsumer::startSavingSnapshots((v12 + 16), &__p);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v29);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_261834934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  rf::data_flow::consumer::LoggingConsumer::SaveSnapshotRequest::~SaveSnapshotRequest(&a24);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v30 - 88);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RFLoggingServiceUpdateByDeltaTime(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 16);
  ECSManagerNullable = RESceneGetECSManagerNullable();
  if (ECSManagerNullable)
  {
    ECSManagerNullable = REECSManagerGetServiceLocator();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
  v10 = ECSManagerNullable;
  v11 = v7;
  v12 = a2;
  v13 = 1;
  v14 = 0;
  return (*(*(v5 + 16) + 16))(v5 + 16, &v9);
}

void RFLoggingObserverCreate()
{
  if (qword_2810C4BE8 != -1)
  {
    dispatch_once(&qword_2810C4BE8, &__block_literal_global_11);
  }

  _CFRuntimeCreateInstance();
  operator new();
}

void RFLoggingServiceRegisterObserver(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(&v4, a2);
  }

  v3 = 0uLL;
  std::vector<std::shared_ptr<rf::data_flow::consumer::LoggingCallbacks>>::push_back[abi:ne200100](v2 + 384, &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_261834BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void RFLoggingServiceRemoveObserver(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(&v5, a2);
  }

  v3 = 0;
  v4 = 0;
  rf::data_flow::consumer::LoggingConsumer::removeCallbacks(v2 + 16, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_261834C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void RFLoggingObserverSetDidSaveFullSnapshotCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  std::function<void ()(unsigned long)>::operator=<void({block_pointer} {__strong}&)(unsigned long),void>((*(a1 + 16) + 40), v3);
}

void *std::function<void ()(unsigned long)>::operator=<void({block_pointer} {__strong}&)(unsigned long),void>(void *a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7 = 0;
  if (a2)
  {
    v3 = v6;
    v6[0] = &unk_28740A8E0;
    v6[1] = MEMORY[0x26670D530](a2);
    v7 = v6;
  }

  else
  {
    v3 = 0;
  }

  if (v6 != a1)
  {
    v4 = a1[3];
    if (v3 == v6)
    {
      if (v4 == a1)
      {
        (*(*v3 + 24))(v3, v8);
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(*a1[3] + 24))(a1[3], v6);
        (*(*a1[3] + 32))(a1[3]);
        a1[3] = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v3 + 24))(v3, a1);
        (*(*v7 + 32))(v7);
        v7 = a1[3];
      }

      a1[3] = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(v4, v6);
      (*(*a1[3] + 32))(a1[3]);
      a1[3] = v7;
      v7 = v6;
    }

    else
    {
      v7 = a1[3];
      a1[3] = v3;
    }
  }

  std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](v6);
  return a1;
}

void sub_261834FA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void RFLoggingObserverSetDidSaveSnapshotCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  std::function<void ()(unsigned long)>::operator=<void({block_pointer} {__strong}&)(unsigned long),void>((*(a1 + 16) + 8), v3);
}

uint64_t RFLoggingObserverSetDidUpdateMeshAssetsCallback(uint64_t a1, uint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v8 = &unk_28740A970;
  v9 = MEMORY[0x26670D530](a2);
  v12 = v11;
  v10 = &v8;
  v11[0] = &unk_28740A970;
  v4 = v2 + 72;
  v11[1] = MEMORY[0x26670D530](v9, v3);
  if (v11 != (v2 + 72))
  {
    v5 = v12;
    v6 = *(v2 + 96);
    if (v12 == v11)
    {
      if (v6 == v4)
      {
        (*(*v12 + 24))();
        (*(*v12 + 32))(v12);
        v12 = 0;
        (*(**(v2 + 96) + 24))(*(v2 + 96), v11);
        (*(**(v2 + 96) + 32))(*(v2 + 96));
        *(v2 + 96) = 0;
        v12 = v11;
        (*(v13[0] + 24))(v13, v2 + 72);
        (*(v13[0] + 32))(v13);
      }

      else
      {
        (*(*v12 + 24))();
        (*(*v12 + 32))(v12);
        v12 = *(v2 + 96);
      }

      *(v2 + 96) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(v2 + 96), v11);
      (*(**(v2 + 96) + 32))(*(v2 + 96));
      *(v2 + 96) = v12;
      v12 = v11;
    }

    else
    {
      v12 = *(v2 + 96);
      *(v2 + 96) = v5;
    }
  }

  std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](v11);
  return std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](&v8);
}

void sub_2618352F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer15LoggingConsumerEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_22[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::LoggingConsumer]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4BF0 = 0u;
  xmmword_2810C4C00 = 0u;
  xmmword_2810C4C10 = 0u;
  unk_2810C4C20 = 0u;
  xmmword_2810C4C30 = 0u;
  unk_2810C4C40 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4BF0 + 1) = p_dst;
  *&xmmword_2810C4C00 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::initCallback;
  *&xmmword_2810C4C10 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::finalizeCallback;
  qword_2810C4C28 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4C30 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>>::copyDebugDescriptionCallback;
  _MergedGlobals_14 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261835490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::LoggingConsumer>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    rf::data_flow::consumer::LoggingConsumer::~LoggingConsumer((v2 + 16));

    JUMPOUT(0x26670D060);
  }

  return result;
}

void std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A750;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(a2 + 23) >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = *a2;
    }

    v4 = strlen(v3);
    v5 = CFURLCreateWithBytes(0, v3, v4, 0, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    (*(v2 + 16))(v2, v5);
    CFRelease(cf);
  }
}

void sub_26183575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RFLoggingServiceSaveFullSnapshotToFile::$_0,std::allocator<RFLoggingServiceSaveFullSnapshotToFile::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A7E0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(a2 + 23) >= 0)
    {
      v3 = a2;
    }

    else
    {
      v3 = *a2;
    }

    v4 = strlen(v3);
    v5 = CFURLCreateWithBytes(0, v3, v4, 0, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    (*(v2 + 16))(v2, v5);
    CFRelease(cf);
  }
}

void sub_261835A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RFLoggingServiceStartSavingSnapshotsToFiles::$_0,std::allocator<RFLoggingServiceStartSavingSnapshotsToFiles::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZN2rf17ClassRegistrationINS_14CustomCFObjectINS_9data_flow8consumer16LoggingCallbacksEEEE13registerClassEv_block_invoke()
{
  v0 = 0;
  v1 = 1;
  for (i = 114; i != 91; i = aStdStringViewR_23[v0++ + 51])
  {
    if (i == 93)
    {
      v3 = -1;
      goto LABEL_8;
    }

    if (!i)
    {
      v0 = 0;
      v6 = 0;
      goto LABEL_16;
    }

LABEL_9:
    ;
  }

  v3 = 1;
LABEL_8:
  v1 += v3;
  if (v1)
  {
    goto LABEL_9;
  }

  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v0 >= 0x17)
  {
    operator new();
  }

  v6 = v0;
  if (v0)
  {
    memcpy(&__dst, "rf::data_flow::consumer::LoggingCallbacks]", v0);
  }

LABEL_16:
  *(&__dst + v0) = 0;
  xmmword_2810C4C50 = 0u;
  xmmword_2810C4C60 = 0u;
  xmmword_2810C4C70 = 0u;
  unk_2810C4C80 = 0u;
  xmmword_2810C4C90 = 0u;
  unk_2810C4CA0 = 0u;
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  *(&xmmword_2810C4C50 + 1) = p_dst;
  *&xmmword_2810C4C60 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::initCallback;
  *&xmmword_2810C4C70 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::finalizeCallback;
  qword_2810C4C88 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::copyFormattingDescriptionCallback;
  *&xmmword_2810C4C90 = rf::ClassRegistration<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>>::copyDebugDescriptionCallback;
  qword_2810C4BE0 = _CFRuntimeRegisterClass();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_261835C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::BridgableObject,std::default_delete<rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::BridgableObject>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](v2 + 72);
    std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](v2 + 40);
    std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](v2 + 8);

    JUMPOUT(0x26670D060);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(void *a1, CFTypeRef cf)
{
  CFRetain(cf);
  *a1 = *(cf + 2) + 8;
  operator new();
}

void sub_261835E34(void *a1)
{
  __cxa_begin_catch(a1);
  CFRelease(*v1);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<rf::data_flow::consumer::LoggingCallbacks *,rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::LoggingCallbacks *)#1},std::allocator<rf::data_flow::consumer::LoggingCallbacks>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26670D060);
}

uint64_t std::__shared_ptr_pointer<rf::data_flow::consumer::LoggingCallbacks *,rf::CustomCFObject<rf::data_flow::consumer::LoggingCallbacks>::makeSharedPtr(void)::{lambda(rf::data_flow::consumer::LoggingCallbacks *)#1},std::allocator<rf::data_flow::consumer::LoggingCallbacks>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void({block_pointer} {__strong})(unsigned long),std::allocator<void({block_pointer} {__strong})(unsigned long)>,void ()(unsigned long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(unsigned long),std::allocator<void({block_pointer} {__strong})(unsigned long)>,void ()(unsigned long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A8E0;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(unsigned long),std::allocator<void({block_pointer} {__strong})(unsigned long)>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x26670D060);
}

uint64_t std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28740A970;
  result = MEMORY[0x26670D530](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 8))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v6 = *a3;
    v7 = a3[1];
    while (v6 != v7)
    {
      v8 = v6;
      if (*(v6 + 23) < 0)
      {
        v8 = *v6;
      }

      v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
      v6 += 24;
    }

    (*(*(a1 + 8) + 16))();

    CFRelease(Mutable);
  }
}

uint64_t std::__function::__func<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0,std::allocator<RFLoggingObserverSetDidUpdateMeshAssetsCallback::$_0>,void ()(unsigned long,std::vector<std::string> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long,std::vector<std::string> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void rf::detail::removePRRMeshesFrom(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, unint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = a1;
    do
    {
      v9 = rf::realityFusionLogObject(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        rf::data_flow::RFUUID::string(__p, v5);
        v10 = (SBYTE7(v20) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&dword_2617CB000, v9, OS_LOG_TYPE_DEFAULT, "ARState: Removing prr mesh %{public}s", buf, 0xCu);
        if (SBYTE7(v20) < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 1952), v5);
      std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 1992), v5);
      if (std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::reference_wrapper<rf::data_flow::Room const>>>>::find<rf::data_flow::RFUUID>((*v8 + 40), v5))
      {
        goto LABEL_12;
      }

      v11 = rf::realityFusionLogObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        rf::data_flow::RFUUID::string(__p, v5);
        v16 = (SBYTE7(v20) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_2617CB000, v11, OS_LOG_TYPE_ERROR, "removePRRMeshesFrom(): Mesh %{public}s to be removed but doesn't exist in prrMeshDictionary!", buf, 0xCu);
        if (SBYTE7(v20) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((a3 & 1) == 0)
      {
LABEL_12:
        *buf = *v5;
        v18 = *(v5 + 16);
        v12 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>((*v8 + 40), v5);
        if (!v12)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        *__p = *buf;
        v20 = v18;
        v13 = v12[7];
        v21 = v12[6];
        v22 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::Mesh>>>>::__emplace_unique_key_args<rf::data_flow::RFUUID,std::pair<rf::data_flow::RFUUID const,std::shared_ptr<rf::data_flow::consumer::Mesh>>>(a4, __p, __p);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v14 = *(v5 + 32);
        v15 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,rf::data_flow::EnvironmentProbe>>>::find<rf::data_flow::RFUUID>(a4, v5);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        *(v15[6] + 120) = v14;
        a1 = std::__hash_table<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,std::__unordered_map_hasher<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Hash,rf::data_flow::RFUUID::Equality,true>,std::__unordered_map_equal<rf::data_flow::RFUUID,std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>,rf::data_flow::RFUUID::Equality,rf::data_flow::RFUUID::Hash,true>,std::allocator<std::__hash_value_type<rf::data_flow::RFUUID,std::shared_ptr<rf::data_flow::consumer::MeshVisualizer::DebugVisMesh>>>>::__erase_unique<rf::data_flow::RFUUID>((*v8 + 40), v5);
      }

      v5 += 40;
    }

    while (v5 != v6);
  }
}