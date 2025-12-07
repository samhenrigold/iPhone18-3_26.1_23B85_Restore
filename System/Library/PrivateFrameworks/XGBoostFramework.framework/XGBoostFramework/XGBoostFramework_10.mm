uint64_t xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::Reset(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v2, (a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  (*(*a1 + 48))(a1);
  std::mutex::unlock(v2);
}

void std::future<std::shared_ptr<xgboost::CSCPage>>::get(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  __lk.__m_ = (v3 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((v3 + 24));
  std::__assoc_sub_state::__sub_wait(v3, &__lk);
  v4 = *(v3 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v7, (v3 + 16));
    v6.__ptr_ = &v7;
    std::rethrow_exception(v6);
    __break(1u);
  }

  else
  {
    *a1 = *(v3 + 144);
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = *(*v3 + 16);

      v5(v3);
    }
  }
}

void sub_274D66C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a10);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (v12)
  {
    if (!atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v12 + 16))(v12);
    }
  }

  _Unwind_Resume(a1);
}

void std::__async_assoc_state<std::shared_ptr<xgboost::CSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::ReadCache(void)::{lambda(void)#1}>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__async_assoc_state<std::shared_ptr<xgboost::CSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::ReadCache(void)::{lambda(void)#1}>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<xgboost::CSCPage>>::__on_zero_shared(a1);
}

void sub_274D66E54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x274D66E44);
}

void sub_274D66E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::__assoc_state<std::shared_ptr<xgboost::CSCPage>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

void std::__assoc_state<std::shared_ptr<xgboost::CSCPage>>::set_value<std::shared_ptr<xgboost::CSCPage>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::ReadCache(void)::{lambda(void)#1}::operator()(void *a1, void *a2)
{
  std::chrono::steady_clock::now();
  std::chrono::steady_clock::now();
  std::string::basic_string[abi:ne200100]<0>(__p, "raw");
  xgboost::data::CreatePageFormat<xgboost::CSCPage>(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::data::Cache::ShardName(*(a2[1] + 112), v10);
  v3 = *(*(a2[1] + 112) + 56);
  if (*a2 < ((*(*(a2[1] + 112) + 64) - v3) >> 3))
  {
    v9 = *(v3 + 8 * *a2);
    if (v11 >= 0)
    {
      v4 = v10;
    }

    else
    {
      v4 = v10[0];
    }

    v5 = dmlc::SeekStream::CreateForRead(v4, 0);
    (*(*v5 + 32))(v5, v9);
    v6 = (*(*v5 + 40))(v5);
    if (v6 != v9)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v9);
    }

    operator new();
  }

  std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
}

void sub_274D6733C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  (*(*v22 + 24))(v22);
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_274D6744C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D67458);
}

uint64_t xgboost::data::CreatePageFormat<xgboost::CSCPage>(uint64_t a1)
{
  dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::CSCPage>>::Get();
  v2 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::CSCPage>>::Get();
  v3 = v2 + 7;
  v4 = *(v2 + 7);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v2 + 7;
  do
  {
    v6 = std::less<std::string>::operator()[abi:ne200100]((v3 - 1), v4 + 4, a1);
    v7 = v6;
    if (!v6)
    {
      v5 = v4;
    }

    v4 = v4[v7];
  }

  while (v4);
  if (v5 == v3 || std::less<std::string>::operator()[abi:ne200100]((v3 - 1), a1, v5 + 4) || (v8 = v5[7]) == 0)
  {
LABEL_16:
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_writer.h", 60);
    v13 = dmlc::LogMessageFatal::GetEntry(&v18);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown format type ", 20);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
    return 0;
  }

  else
  {
    v9 = v8[12];
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v10 = *(*v9 + 48);

    return v10();
  }
}

void std::__shared_ptr_emplace<xgboost::CSCPage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E2E70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::CSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::CSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::ReadCache(void)::{lambda(void)#1}>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_274D67724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<xgboost::CSCPage>::shared_ptr[abi:ne200100]<xgboost::CSCPage,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_274D677B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<xgboost::CSCPage>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<xgboost::CSCPage>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    xgboost::HostDeviceVector<xgboost::Entry>::~HostDeviceVector();
  }

  return a1;
}

void std::__shared_ptr_pointer<xgboost::CSCPage *,std::shared_ptr<xgboost::CSCPage>::__shared_ptr_default_delete<xgboost::CSCPage,xgboost::CSCPage>,std::allocator<xgboost::CSCPage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::CSCPage *,std::shared_ptr<xgboost::CSCPage>::__shared_ptr_default_delete<xgboost::CSCPage,xgboost::CSCPage>,std::allocator<xgboost::CSCPage>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<xgboost::CSCPage>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    xgboost::HostDeviceVector<xgboost::Entry>::~HostDeviceVector();
  }
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::CSCPage>::~SparsePageSourceImpl(uint64_t a1)
{
  *a1 = &unk_2883E2DC0;
  v2 = *(a1 + 136);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    *(a1 + 136) = 0;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v3)
    {
      std::future<std::shared_ptr<xgboost::CSCPage>>::get(&v9, v3);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    ++v3;
  }

  while (v3 != v4);
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
LABEL_9:
      MEMORY[0x277C69180](v2, 0x20C40960023A9);
      goto LABEL_10;
    }

LABEL_8:
    std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](v2, v3);
    operator delete(*v2);
    goto LABEL_9;
  }

LABEL_10:
  v5 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void std::__shared_ptr_emplace<xgboost::data::SortedCSCPageSource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E2F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

void xgboost::data::SortedCSCPageSource::Fetch(xgboost::data::SortedCSCPageSource *this)
{
  if (*(this + 88) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 107);
    v25 = dmlc::LogMessageFatal::GetEntry(__p);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: !at_end_", 22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  if (**(this + 14) != 1)
  {
    (*(**(this + 18) + 40))(&v27);
    operator new();
  }

  v2 = *(this + 16);
  if (v2)
  {
    *(this + 16) = 0;
    (*(*v2 + 24))(v2);
    v3 = *(this + 17);
    v4 = *(this + 27);
    v5 = *v3;
    v6 = v3[1];
    v7 = (v6 - *v3) >> 3;
    if (v4 <= v7)
    {
      if (v4 < v7)
      {
        std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](*(this + 17), v5 + 8 * v4);
      }
    }

    else
    {
      v8 = v4 - v7;
      v9 = v3[2];
      if (v8 > (v9 - v6) >> 3)
      {
        v10 = v9 - v5;
        if (v10 >> 2 > v4)
        {
          v4 = v10 >> 2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v4;
        }

        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(v3[1], 8 * v8);
      v3[1] = v6 + 8 * v8;
    }
  }

  v12 = *(this + 27);
  if (v12 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v31[0] = v13;
  LODWORD(v29[0]) = 0;
  if (!v12)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v31, v29);
  }

  v14 = *(this + 26);
  v28 = v14;
  if (v31[0])
  {
    v15 = 0;
    do
    {
      v16 = v14 % *(this + 27);
      v28 = v16;
      v17 = **(this + 17);
      if (v16 >= (*(*(this + 17) + 8) - v17) >> 3)
      {
        std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
      }

      if (!*(v17 + 8 * v16))
      {
        v29[0] = ((*(*(this + 14) + 64) - *(*(this + 14) + 56)) >> 3);
        if (v16 >= v29[0])
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v28, v29);
        }

        operator new();
      }

      ++v15;
      v14 = v16 + 1;
      v28 = v14;
    }

    while (v15 < v31[0]);
  }

  v18 = *(this + 17);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      if (*v19++)
      {
        ++v21;
      }
    }

    while (v19 != v20);
  }

  v29[0] = v21;
  if (v21 != v31[0])
  {
    dmlc::LogCheckFormat<long,unsigned long>(v29, v31);
  }

  std::future<std::shared_ptr<xgboost::SortedCSCPage>>::get(__p, (**(this + 17) + 8 * *(this + 26)));
  v23 = *(this + 10);
  *(this + 72) = *__p;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_274D688E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D688ECLL);
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::SortedCSCPage>::~PageSourceIncMixIn(void *a1)
{
  *a1 = &unk_2883E3030;
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::~SparsePageSourceImpl(a1);
}

void xgboost::data::SortedCSCPageSource::~SortedCSCPageSource(xgboost::data::SortedCSCPageSource *this)
{
  *this = &unk_2883E3030;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::~SparsePageSourceImpl(this);
}

{
  *this = &unk_2883E3030;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::~SparsePageSourceImpl(this);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::operator*(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_source.h", 190);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: page_", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(a1 + 72);
  }

  return result;
}

uint64_t xgboost::data::PageSourceIncMixIn<xgboost::SortedCSCPage>::operator++(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v11, (a1 + 8));
  if (*(a1 + 160) == 1)
  {
    xgboost::data::SparsePageSource::operator++(*(a1 + 144));
  }

  v2 = *(a1 + 104) + 1;
  *(a1 + 104) = v2;
  v7 = v2 == *(a1 + 108);
  *(a1 + 88) = v7;
  if (v7)
  {
    v3 = *(a1 + 112);
    if ((*v3 & 1) == 0)
    {
      v5 = *(v3 + 56);
      v4 = *(v3 + 64);
      v6 = v5 + 1;
      v7 = v5 == v4 || v6 == v4;
      if (!v7)
      {
        v8 = *v5;
        do
        {
          v8 += *v6;
          *v6++ = v8;
        }

        while (v6 != v4);
      }

      *v3 = 1;
    }

    v10 = 1;
    if (!v2)
    {
      dmlc::LogCheckFormat<unsigned int,int>((a1 + 104), &v10);
    }
  }

  else
  {
    (*(*a1 + 48))(a1);
  }

  if (*(a1 + 160) == 1)
  {
    v10 = *(*(a1 + 144) + 104);
    if (v10 != *(a1 + 104))
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>(&v10, (a1 + 104));
    }
  }

  std::mutex::unlock(v11);
  return a1;
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::Page@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::Reset(uint64_t a1)
{
  xgboost::data::TryLockGuard::TryLockGuard(&v2, (a1 + 8));
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  (*(*a1 + 48))(a1);
  std::mutex::unlock(v2);
}

void std::future<std::shared_ptr<xgboost::SortedCSCPage>>::get(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  __lk.__m_ = (v3 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((v3 + 24));
  std::__assoc_sub_state::__sub_wait(v3, &__lk);
  v4 = *(v3 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v7, (v3 + 16));
    v6.__ptr_ = &v7;
    std::rethrow_exception(v6);
    __break(1u);
  }

  else
  {
    *a1 = *(v3 + 144);
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = *(*v3 + 16);

      v5(v3);
    }
  }
}

void sub_274D68F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a10);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (v12)
  {
    if (!atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v12 + 16))(v12);
    }
  }

  _Unwind_Resume(a1);
}

void std::__async_assoc_state<std::shared_ptr<xgboost::SortedCSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::ReadCache(void)::{lambda(void)#1}>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__async_assoc_state<std::shared_ptr<xgboost::SortedCSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::ReadCache(void)::{lambda(void)#1}>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<xgboost::CSCPage>>::__on_zero_shared(a1);
}

void sub_274D6917C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x274D6916CLL);
}

void sub_274D691C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__assoc_state<std::shared_ptr<xgboost::SortedCSCPage>>::set_value<std::shared_ptr<xgboost::SortedCSCPage>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::ReadCache(void)::{lambda(void)#1}::operator()(void *a1, void *a2)
{
  std::chrono::steady_clock::now();
  std::chrono::steady_clock::now();
  std::string::basic_string[abi:ne200100]<0>(__p, "raw");
  xgboost::data::CreatePageFormat<xgboost::SortedCSCPage>(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::data::Cache::ShardName(*(a2[1] + 112), v10);
  v3 = *(*(a2[1] + 112) + 56);
  if (*a2 < ((*(*(a2[1] + 112) + 64) - v3) >> 3))
  {
    v9 = *(v3 + 8 * *a2);
    if (v11 >= 0)
    {
      v4 = v10;
    }

    else
    {
      v4 = v10[0];
    }

    v5 = dmlc::SeekStream::CreateForRead(v4, 0);
    (*(*v5 + 32))(v5, v9);
    v6 = (*(*v5 + 40))(v5);
    if (v6 != v9)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v9);
    }

    operator new();
  }

  std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
}

void sub_274D695FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  (*(*v22 + 24))(v22);
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_274D6970C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D69718);
}

uint64_t xgboost::data::CreatePageFormat<xgboost::SortedCSCPage>(uint64_t a1)
{
  dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage>>::Get();
  v2 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage>>::Get();
  v3 = v2 + 7;
  v4 = *(v2 + 7);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v2 + 7;
  do
  {
    v6 = std::less<std::string>::operator()[abi:ne200100]((v3 - 1), v4 + 4, a1);
    v7 = v6;
    if (!v6)
    {
      v5 = v4;
    }

    v4 = v4[v7];
  }

  while (v4);
  if (v5 == v3 || std::less<std::string>::operator()[abi:ne200100]((v3 - 1), a1, v5 + 4) || (v8 = v5[7]) == 0)
  {
LABEL_16:
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/./sparse_page_writer.h", 60);
    v13 = dmlc::LogMessageFatal::GetEntry(&v18);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown format type ", 20);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
    return 0;
  }

  else
  {
    v9 = v8[12];
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v10 = *(*v9 + 48);

    return v10();
  }
}

void std::__shared_ptr_emplace<xgboost::SortedCSCPage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E3130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SortedCSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SortedCSCPage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::ReadCache(void)::{lambda(void)#1}>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_274D699E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<xgboost::SortedCSCPage>::shared_ptr[abi:ne200100]<xgboost::SortedCSCPage,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_274D69A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<xgboost::CSCPage>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<xgboost::SortedCSCPage *,std::shared_ptr<xgboost::SortedCSCPage>::__shared_ptr_default_delete<xgboost::SortedCSCPage,xgboost::SortedCSCPage>,std::allocator<xgboost::SortedCSCPage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::SortedCSCPage *,std::shared_ptr<xgboost::SortedCSCPage>::__shared_ptr_default_delete<xgboost::SortedCSCPage,xgboost::SortedCSCPage>,std::allocator<xgboost::SortedCSCPage>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t xgboost::data::SparsePageSourceImpl<xgboost::SortedCSCPage>::~SparsePageSourceImpl(uint64_t a1)
{
  *a1 = &unk_2883E3080;
  v2 = *(a1 + 136);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    *(a1 + 136) = 0;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v3)
    {
      std::future<std::shared_ptr<xgboost::SortedCSCPage>>::get(&v9, v3);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    ++v3;
  }

  while (v3 != v4);
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v2)
  {
    v3 = *v2;
    if (!*v2)
    {
LABEL_9:
      MEMORY[0x277C69180](v2, 0x20C40960023A9);
      goto LABEL_10;
    }

LABEL_8:
    std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](v2, v3);
    operator delete(*v2);
    goto LABEL_9;
  }

LABEL_10:
  v5 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void std::__shared_ptr_pointer<xgboost::data::GradientIndexPageSource *,std::shared_ptr<xgboost::data::GradientIndexPageSource>::__shared_ptr_default_delete<xgboost::data::GradientIndexPageSource,xgboost::data::GradientIndexPageSource>,std::allocator<xgboost::data::GradientIndexPageSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::data::GradientIndexPageSource *,std::shared_ptr<xgboost::data::GradientIndexPageSource>::__shared_ptr_default_delete<xgboost::data::GradientIndexPageSource,xgboost::data::GradientIndexPageSource>,std::allocator<xgboost::data::GradientIndexPageSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::data::GradientIndexPageSource *,std::shared_ptr<xgboost::data::GradientIndexPageSource>::__shared_ptr_default_delete<xgboost::data::GradientIndexPageSource,xgboost::data::GradientIndexPageSource>,std::allocator<xgboost::data::GradientIndexPageSource>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void xgboost::GHistIndexMatrix::GHistIndexMatrix(xgboost::GHistIndexMatrix *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 18) = 1;
  *(this + 10) = xgboost::common::Index::GetValueFromUint8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  xgboost::common::HistogramCuts::HistogramCuts((this + 112));
}

void xgboost::common::Index::~Index(xgboost::common::Index *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void xgboost::GHistIndexMatrix::GHistIndexMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = xgboost::common::Index::GetValueFromUint8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  xgboost::common::HistogramCuts::HistogramCuts((a1 + 112));
}

void sub_274D69EF0(_Unwind_Exception *a1)
{
  v2 = v1[21];
  if (v2)
  {
    v1[22] = v2;
    operator delete(v2);
  }

  std::unique_ptr<xgboost::common::ColumnMatrix>::reset[abi:ne200100](v1 + 20, 0);
  xgboost::common::HistogramCuts::~HistogramCuts((v1 + 14));
}

void sub_274D6A3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void xgboost::GHistIndexMatrix::~GHistIndexMatrix(xgboost::GHistIndexMatrix *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  std::unique_ptr<xgboost::common::ColumnMatrix>::reset[abi:ne200100](this + 20, 0);
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void xgboost::GHistIndexMatrix::PushBatch(uint64_t a1, uint64_t **a2, unint64_t *a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v202 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v13 = **a2;
  v12 = (*a2)[1];
  v14 = ((v12 - v13) >> 3) - 1;
  if (v12 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = ((v12 - v13) >> 3) - 1;
  }

  if (v15 >= a7)
  {
    v16 = a7;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = *a2[1];
  v192 = v17;
  if (v16 > 0x80)
  {
    v19 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
    v191 = v19;
    if (!v19)
    {
      exception = __cxa_allocate_exception(8uLL);
      v163 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v163, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v11 = *a2;
    v20 = **a2;
    v12 = (*a2)[1];
    v14 = ((v12 - v20) >> 3) - 1;
  }

  else
  {
    v19 = v193;
    v191 = v193;
    v20 = v13;
  }

  v21 = 0;
  v22 = 0;
  if (v12 == v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = v14;
  }

  v24 = v23 / v17;
  v198.__ptr_ = 0;
  v199.__m_.__sig = 850045863;
  memset(v199.__m_.__opaque, 0, sizeof(v199.__m_.__opaque));
  v25 = v17 - 1;
  v26 = 8 * a4;
  v27 = 8 * a4 + 8;
  v28 = 8 * v24;
  v29 = (v13 + 8);
  do
  {
    if (v22 == v25)
    {
      v30 = v11[1] - *v11;
      if (!v30)
      {
        goto LABEL_27;
      }

      v31 = (v30 >> 3) - 1;
    }

    else
    {
      v31 = v24 + v24 * v22;
    }

    if (v22 * v24 < v31)
    {
      v32 = 0;
      v33 = v31 + v21;
      v34 = v29;
      v35 = v27;
      do
      {
        v37 = *(v34 - 1);
        v36 = *v34;
        if (!v18 && v36 != v37)
        {
          goto LABEL_157;
        }

        ++v34;
        v32 += v36 - v37;
        *(*a1 + v35) = v32;
        v35 += 8;
        --v33;
      }

      while (v33);
    }

LABEL_27:
    ++v22;
    v21 -= v24;
    v27 += v28;
    v29 = (v29 + v28);
  }

  while (v22 != v17);
  *v19 = a5;
  v38 = v16 - 1;
  if (v16 > 1)
  {
    v39 = v19 + 1;
    v40 = *v19;
    v41 = (*a1 + v26 + 8 * v24);
    do
    {
      v40 += *v41;
      *v39++ = v40;
      v41 = (v41 + v28);
      --v38;
    }

    while (v38);
  }

  v42 = 0;
  v43 = 0;
  v44 = v26 + 8;
  while (2)
  {
    if (v43 != v25)
    {
      v46 = v24 + v24 * v43;
      goto LABEL_36;
    }

    v45 = v11[1] - *v11;
    if (v45)
    {
      v46 = (v45 >> 3) - 1;
LABEL_36:
      if (v43 * v24 < v46)
      {
        v47 = v46 + v42;
        v48 = (*a1 + v44);
        do
        {
          *v48++ += v19[v43];
          --v47;
        }

        while (v47);
      }
    }

    ++v43;
    v42 -= v24;
    v44 += v28;
    if (v43 != v17)
    {
      continue;
    }

    break;
  }

  dmlc::OMPException::Rethrow(&v198);
  v49 = **a2;
  v50 = (*a2)[1];
  if (v50 == v49)
  {
    v51 = 0;
  }

  else
  {
    v51 = ((v50 - v49) >> 3) - 1;
  }

  v52 = *(*a1 + 8 * v51 + 8 * a4);
  xgboost::GHistIndexMatrix::ResizeIndex(a1, v52, *(a1 + 192));
  v53 = **(a1 + 120);
  v54 = *(*(a1 + 120) + 8);
  LODWORD(v196) = 0;
  v55 = v54 - v53;
  v197.__ptr_ = (v55 >> 2);
  if (!v55)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v197, &v196);
  }

  if (*(a1 + 192) != 1)
  {
    v56 = (a1 + 24);
    goto LABEL_75;
  }

  v56 = (a1 + 24);
  xgboost::common::Index::SetBinOffset((a1 + 24), *(a1 + 128));
  if ((*(a1 + 192) & 1) == 0)
  {
LABEL_75:
    v170 = *v56;
    if (v52)
    {
      v84 = *v56 == 0;
    }

    else
    {
      v84 = 0;
    }

    if (v84)
    {
      goto LABEL_157;
    }

    v85 = *a3;
    v187 = a3[1];
    v182 = *a2[1];
    v174 = *a2;
    v87 = **a2;
    v86 = (*a2)[1];
    v88 = (v86 - v87) >> 3;
    v89 = v86 - v87;
    if (v89)
    {
      v90 = v88 - 1;
    }

    else
    {
      v90 = 0;
    }

    v194 = v90;
    v197.__ptr_ = v88;
    if (v90 >= v89 >> 3)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v194, &v197);
    }

    v92 = *(a1 + 120);
    v91 = *(a1 + 128);
    v178 = v194;
    LODWORD(v197.__ptr_) = v17;
    LODWORD(v196) = 1;
    if (v17 < 1)
    {
      dmlc::LogCheckFormat<int,int>(&v197, &v196);
    }

    v200.__ptr_ = 0;
    v201.__m_.__sig = 850045863;
    memset(v201.__m_.__opaque, 0, sizeof(v201.__m_.__opaque));
    if (!v194)
    {
      goto LABEL_158;
    }

    v93 = 0;
    while (1)
    {
      v94 = (*a1 + 8 * a4 + 8 * v93);
      v96 = *v94;
      v95 = v94[1];
      v197.__ptr_ = v95;
      v97 = (*v174 + 8 * v93);
      v99 = *v97;
      v98 = v97[1];
      if (!v182 && v98 != v99)
      {
        goto LABEL_157;
      }

      v100 = v98 - v99;
      v195 = (v98 - v99 + v96);
      if (v195 != v95)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v195, &v197);
      }

      if (v98 != v99)
      {
        v101 = v96;
        v102 = 0;
        v103 = v182 + 8 * v99;
        v104 = 1;
        v105 = v170 + 4 * v101;
        do
        {
          v106 = (v103 + 8 * v102);
          v107 = *v106;
          if (!v85)
          {
            goto LABEL_97;
          }

          if (v85 <= v107)
          {
            goto LABEL_157;
          }

          if (*(v187 + v107) == 1)
          {
            v108 = xgboost::common::HistogramCuts::SearchCatBin(*(a1 + 120), **(a1 + 128), *(*(a1 + 128) + 8), *v106, v106[1]);
          }

          else
          {
LABEL_97:
            v108 = xgboost::common::HistogramCuts::SearchBin(v107, *v91, *v92, *(&v107 + 1));
          }

          *(v105 + 4 * v102) = v108;
          ++*(*(a1 + 168) + 8 * v108);
          v102 = v104;
          v83 = v100 > v104++;
        }

        while (v83);
      }

      if (++v93 == v178)
      {
        goto LABEL_158;
      }
    }
  }

  v57 = a3;
  v58 = *(a1 + 48);
  v59 = *(a1 + 72);
  v190 = v59;
  if (v59 == 2)
  {
    v165 = *v56;
    if (v52)
    {
      v109 = *v56 == 0;
    }

    else
    {
      v109 = 0;
    }

    if (v109)
    {
      goto LABEL_157;
    }

    v110 = *v57;
    v179 = *a2[1];
    v183 = v57[1];
    v171 = *a2;
    v112 = **a2;
    v111 = (*a2)[1];
    v113 = (v111 - v112) >> 3;
    v114 = v111 - v112;
    if (v114)
    {
      v115 = v113 - 1;
    }

    else
    {
      v115 = 0;
    }

    v194 = v115;
    v197.__ptr_ = v113;
    if (v115 >= v114 >> 3)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v194, &v197);
    }

    v116 = *(a1 + 120);
    v188 = *(a1 + 128);
    v175 = v194;
    LODWORD(v197.__ptr_) = v17;
    LODWORD(v196) = 1;
    if (v17 < 1)
    {
      dmlc::LogCheckFormat<int,int>(&v197, &v196);
    }

    v200.__ptr_ = 0;
    v201.__m_.__sig = 850045863;
    memset(v201.__m_.__opaque, 0, sizeof(v201.__m_.__opaque));
    if (!v194)
    {
      goto LABEL_158;
    }

    v117 = 0;
    while (1)
    {
      v118 = (*a1 + 8 * a4 + 8 * v117);
      v120 = *v118;
      v119 = v118[1];
      v197.__ptr_ = v119;
      v121 = (*v171 + 8 * v117);
      v123 = *v121;
      v122 = v121[1];
      if (!v179 && v122 != v123)
      {
        goto LABEL_157;
      }

      v124 = v122 - v123;
      v195 = (v122 - v123 + v120);
      if (v195 != v119)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v195, &v197);
      }

      if (v122 != v123)
      {
        v125 = v120;
        v126 = 0;
        v127 = v179 + 8 * v123;
        v128 = 1;
        v129 = v165 + 2 * v125;
        do
        {
          v130 = (v127 + 8 * v126);
          v131 = *v130;
          if (!v110)
          {
            goto LABEL_125;
          }

          if (v110 <= v131)
          {
            goto LABEL_157;
          }

          if (*(v183 + v131) == 1)
          {
            v132 = xgboost::common::HistogramCuts::SearchCatBin(*(a1 + 120), **(a1 + 128), *(*(a1 + 128) + 8), *v130, v130[1]);
          }

          else
          {
LABEL_125:
            v132 = xgboost::common::HistogramCuts::SearchBin(v131, *v188, *v116, *(&v131 + 1));
          }

          *(v129 + 2 * v126) = v132 - *(v58 + 4 * v126);
          ++*(*(a1 + 168) + 8 * v132);
          v126 = v128;
          v83 = v124 > v128++;
        }

        while (v83);
      }

      if (++v117 == v175)
      {
        goto LABEL_158;
      }
    }
  }

  if (v59 != 1)
  {
    LODWORD(v197.__ptr_) = 4;
    if (v59 != 4)
    {
      dmlc::LogCheckFormat<xgboost::common::BinTypeSize,xgboost::common::BinTypeSize>(&v200, &v190, &v197);
    }

    v166 = *v56;
    if (v52)
    {
      v133 = *v56 == 0;
    }

    else
    {
      v133 = 0;
    }

    if (v133)
    {
      goto LABEL_157;
    }

    v134 = *v57;
    v180 = *a2[1];
    v184 = v57[1];
    v172 = *a2;
    v136 = **a2;
    v135 = (*a2)[1];
    v137 = (v135 - v136) >> 3;
    v138 = v135 - v136;
    if (v138)
    {
      v139 = v137 - 1;
    }

    else
    {
      v139 = 0;
    }

    v194 = v139;
    v197.__ptr_ = v137;
    if (v139 >= v138 >> 3)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v194, &v197);
    }

    v140 = *(a1 + 120);
    v189 = *(a1 + 128);
    v176 = v194;
    LODWORD(v197.__ptr_) = v17;
    LODWORD(v196) = 1;
    if (v17 < 1)
    {
      dmlc::LogCheckFormat<int,int>(&v197, &v196);
    }

    v200.__ptr_ = 0;
    v201.__m_.__sig = 850045863;
    memset(v201.__m_.__opaque, 0, sizeof(v201.__m_.__opaque));
    if (!v194)
    {
      goto LABEL_158;
    }

    v141 = 0;
    while (1)
    {
      v142 = (*a1 + 8 * a4 + 8 * v141);
      v144 = *v142;
      v143 = v142[1];
      v197.__ptr_ = v143;
      v145 = (*v172 + 8 * v141);
      v147 = *v145;
      v146 = v145[1];
      if (!v180 && v146 != v147)
      {
        break;
      }

      v148 = v146 - v147;
      v195 = (v146 - v147 + v144);
      if (v195 != v143)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v195, &v197);
      }

      if (v146 != v147)
      {
        v149 = v144;
        v150 = 0;
        v151 = v180 + 8 * v147;
        v152 = 1;
        v153 = v166 + 4 * v149;
        do
        {
          v154 = (v151 + 8 * v150);
          v155 = *v154;
          if (!v134)
          {
            goto LABEL_153;
          }

          if (v134 <= v155)
          {
            goto LABEL_157;
          }

          if (*(v184 + v155) == 1)
          {
            v156 = xgboost::common::HistogramCuts::SearchCatBin(*(a1 + 120), **(a1 + 128), *(*(a1 + 128) + 8), *v154, v154[1]);
          }

          else
          {
LABEL_153:
            v156 = xgboost::common::HistogramCuts::SearchBin(v155, *v189, *v140, *(&v155 + 1));
          }

          *(v153 + 4 * v150) = v156 - *(v58 + 4 * v150);
          ++*(*(a1 + 168) + 8 * v156);
          v150 = v152;
          v83 = v148 > v152++;
        }

        while (v83);
      }

      if (++v141 == v176)
      {
        goto LABEL_158;
      }
    }

LABEL_157:
    std::terminate();
  }

  v164 = *v56;
  if (v52)
  {
    v60 = *v56 == 0;
  }

  else
  {
    v60 = 0;
  }

  if (v60)
  {
    goto LABEL_157;
  }

  v61 = *v57;
  v177 = *a2[1];
  v181 = v57[1];
  v169 = *a2;
  v63 = **a2;
  v62 = (*a2)[1];
  v64 = (v62 - v63) >> 3;
  v65 = v62 - v63;
  if (v65)
  {
    v66 = v64 - 1;
  }

  else
  {
    v66 = 0;
  }

  v194 = v66;
  v197.__ptr_ = v64;
  if (v66 >= v65 >> 3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v194, &v197);
  }

  v67 = *(a1 + 120);
  v186 = *(a1 + 128);
  v173 = v194;
  LODWORD(v197.__ptr_) = v17;
  LODWORD(v196) = 1;
  if (v17 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v197, &v196);
  }

  v200.__ptr_ = 0;
  v201.__m_.__sig = 850045863;
  memset(v201.__m_.__opaque, 0, sizeof(v201.__m_.__opaque));
  if (v194)
  {
    v68 = 0;
    do
    {
      v69 = (*a1 + 8 * a4 + 8 * v68);
      v71 = *v69;
      v70 = v69[1];
      v197.__ptr_ = v70;
      v72 = (*v169 + 8 * v68);
      v74 = *v72;
      v73 = v72[1];
      if (!v177 && v73 != v74)
      {
        goto LABEL_157;
      }

      v75 = v73 - v74;
      v195 = (v73 - v74 + v71);
      if (v195 != v70)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v195, &v197);
      }

      if (v73 != v74)
      {
        v76 = 0;
        v77 = v164 + v71;
        v78 = 1;
        v79 = v177 + 8 * v74;
        do
        {
          v80 = (v79 + 8 * v76);
          v81 = *v80;
          if (!v61)
          {
            goto LABEL_70;
          }

          if (v61 <= v81)
          {
            goto LABEL_157;
          }

          if (*(v181 + v81) == 1)
          {
            v82 = xgboost::common::HistogramCuts::SearchCatBin(*(a1 + 120), **(a1 + 128), *(*(a1 + 128) + 8), *v80, v80[1]);
          }

          else
          {
LABEL_70:
            v82 = xgboost::common::HistogramCuts::SearchBin(v81, *v186, *v67, *(&v81 + 1));
          }

          *(v77 + v76) = v82 - *(v58 + 4 * v76);
          ++*(*(a1 + 168) + 8 * v82);
          v76 = v78;
          v83 = v75 > v78++;
        }

        while (v83);
      }
    }

    while (++v68 != v173);
  }

LABEL_158:
  dmlc::OMPException::Rethrow(&v200);
  std::mutex::~mutex(&v201);
  std::exception_ptr::~exception_ptr(&v200);
  LODWORD(v197.__ptr_) = a7;
  LODWORD(v196) = 1;
  if (a7 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v197, &v196);
  }

  v200.__ptr_ = 0;
  v201.__m_.__sig = 850045863;
  memset(v201.__m_.__opaque, 0, sizeof(v201.__m_.__opaque));
  if (a6)
  {
    v157 = 0;
    do
    {
      v158 = *(a1 + 168);
      v159 = *(a1 + 88);
      v160 = v157;
      v161 = a7;
      do
      {
        *(v159 + 8 * v157) += *(v158 + 8 * v160);
        *(v158 + 8 * v160) = 0;
        v160 += a6;
        --v161;
      }

      while (v161);
      ++v157;
    }

    while (v157 != a6);
  }

  dmlc::OMPException::Rethrow(&v200);
  std::mutex::~mutex(&v201);
  std::exception_ptr::~exception_ptr(&v200);
  std::mutex::~mutex(&v199);
  std::exception_ptr::~exception_ptr(&v198);
  if (v192 >= 0x81)
  {
    free(v191);
  }
}

void sub_274D6BE70(_Unwind_Exception *a1)
{
  v3 = STACK[0x4C8];
  STACK[0x4C8] = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v1 - 168, v3);
  }

  std::mutex::~mutex((v1 - 232));
  std::exception_ptr::~exception_ptr((v1 - 240));
  if (v5 >= 0x81)
  {
    free(v4);
  }

  _Unwind_Resume(a1);
}

void sub_274D6BEFC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274D6BF38);
}

void xgboost::GHistIndexMatrix::ResizeIndex(std::vector<char> *this, unint64_t a2, int a3)
{
  begin = this[6].__begin_;
  if ((begin - 1) <= 0xFF && a3 != 0)
  {
    v6 = this[1].__begin_;
    LODWORD(this[3].__begin_) = 1;
    this[3].__end_ = xgboost::common::Index::GetValueFromUint8;
    v7 = (this[1].__end_ - v6);
    v8 = a2 >= v7;
    v9 = a2 - v7;
    if (v9 == 0 || !v8)
    {
      if (v8)
      {
        return;
      }

      v15 = &v6[a2];
      goto LABEL_22;
    }

    v10 = this + 1;
    v11 = v9;
LABEL_15:
    std::vector<char>::__append(v10, v11);
    return;
  }

  if ((begin - 257) >> 8 > 0xFE || a3 == 0)
  {
    LODWORD(this[3].__begin_) = 4;
    this[3].__end_ = xgboost::common::Index::GetValueFromUint32;
    v12 = 4 * a2;
  }

  else
  {
    LODWORD(this[3].__begin_) = 2;
    this[3].__end_ = xgboost::common::Index::GetValueFromUint16;
    v12 = 2 * a2;
  }

  v13 = this[1].__begin_;
  v14 = (this[1].__end_ - v13);
  v11 = v12 - v14;
  if (v12 > v14)
  {
    v10 = this + 1;
    goto LABEL_15;
  }

  if (v12 >= v14)
  {
    return;
  }

  v15 = &v13[v12];
LABEL_22:
  this[1].__end_ = v15;
}

std::vector<unsigned int>::pointer xgboost::common::Index::SetBinOffset(std::vector<unsigned int> *a1, const void **a2)
{
  std::vector<float>::resize(a1 + 1, ((a2[1] - *a2) >> 2) - 1);
  result = a1[1].__begin_;
  end = a1[1].__end_;
  if (end != result)
  {
    v6 = *a2;

    return memmove(result, v6, end - result);
  }

  return result;
}

void xgboost::common::ColumnMatrix::Init(std::vector<char> *this, const xgboost::SparsePage *a2, const xgboost::GHistIndexMatrix *a3, double a4, int a5)
{
  v184 = *MEMORY[0x277D85DE8];
  v9 = *(*(a3 + 16) + 8) - **(a3 + 16);
  v10 = (v9 >> 2) - 1;
  v11 = *(a3 + 1) - *a3;
  std::vector<unsigned long>::resize(&this[1].__begin_, v10);
  begin = this[2].__begin_;
  v13 = this + 2;
  v14 = (this[2].__end_ - begin);
  v169 = a2;
  v168 = a5;
  if (v10 <= v14)
  {
    if (v10 < v14)
    {
      this[2].__end_ = &begin[v10];
    }
  }

  else
  {
    std::vector<char>::__append(this + 2, v10 - v14);
  }

  v15 = v11 >> 3;
  v16 = this[1].__begin_;
  v17 = &this[1].__end_[-v16];
  if (v17 >= 1)
  {
    bzero(this[1].__begin_, v17);
  }

  v18 = v15 - 1;
  v174 = -1;
  if (v10)
  {
    v19 = 0;
    do
    {
      LODWORD(v175) = *(**(a3 + 16) + v19 + 4) - *(**(a3 + 16) + v19);
      if (v175 > v174)
      {
        dmlc::LogCheckFormat<unsigned int,unsigned int>(&v175, &v174);
      }

      v19 += 4;
    }

    while (4 * v10 != v19);
    v20 = *(a3 + 192);
    xgboost::GHistIndexMatrix::GetFeatureCounts(*(a3 + 11), **(a3 + 16), *(*(a3 + 16) + 8), this[1].__begin_);
    v21 = this[1].__begin_;
    v22 = v18 * a4;
    v23 = v13->__begin_;
    v24 = (v9 >> 2) - 1;
    do
    {
      v25 = *v21;
      v21 += 8;
      v20 &= v22 <= v25;
      *v23++ = v22 > v25;
      --v24;
    }

    while (v24);
  }

  else
  {
    v20 = *(a3 + 192);
    xgboost::GHistIndexMatrix::GetFeatureCounts(*(a3 + 11), **(a3 + 16), *(*(a3 + 16) + 8), v16);
  }

  std::vector<unsigned long>::resize(&this[4].__begin_, (v9 >> 2));
  v26 = this[4].__begin_;
  *v26 = 0;
  if ((v9 >> 2) >= 2)
  {
    v27 = 0;
    v28 = 0;
    v29 = v13->__begin_;
    do
    {
      v30 = v15 - 1;
      if (v29[v27])
      {
        v30 = *&this[1].__begin_[8 * v27];
      }

      v28 += v30;
      *&v26[8 * v27++ + 8] = v28;
    }

    while ((v9 >> 2) - 1 != v27);
  }

  v31 = *(a3 + 18) - 1;
  if (v31 <= 0xFF)
  {
    v32 = 1;
  }

  else if (v31 >> 16)
  {
    v32 = 4;
  }

  else
  {
    v32 = 2;
  }

  LODWORD(this[6].__end_) = v32;
  v33 = *&v26[8 * v10] * v32;
  LOBYTE(__p) = 0;
  v34 = this->__end_ - this->__begin_;
  if (v33 <= v34)
  {
    if (v33 < v34)
    {
      this->__end_ = &this->__begin_[v33];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&this->__begin_, v33 - v34, &__p);
    v26 = this[4].__begin_;
  }

  if ((v20 & 1) == 0)
  {
    std::vector<unsigned long>::resize(&this[3].__begin_, *&v26[8 * v10]);
    v26 = this[4].__begin_;
  }

  this[5].__begin_ = **(a3 + 16);
  v35 = *(*a3 + 8 * v18);
  v36 = v18 * v10;
  v37 = v18 * v10 != v35;
  BYTE4(this[6].__end_) = v37;
  this[5].__end_cap_.__value_ = 0;
  std::vector<BOOL>::resize(&this[5].__end_, *&v26[8 * v10], v37);
  if (v20)
  {
    v38 = *(a3 + 18);
    LODWORD(v178) = v38;
    if (v38 == 2)
    {
      v75 = *(a3 + 3);
      v76 = this->__begin_;
      if (v36 == v35)
      {
        LODWORD(v175) = v168;
        LODWORD(v181) = 1;
        if (v168 < 1)
        {
          dmlc::LogCheckFormat<int,int>(&v175, &v181);
        }

        __p = 0;
        v183.__m_.__sig = 850045863;
        memset(v183.__m_.__opaque, 0, sizeof(v183.__m_.__opaque));
        if (v15 != 1)
        {
          v152 = 0;
          do
          {
            v153 = v152 + 1;
            if (v152 * v10 < (v152 + 1) * v10)
            {
              v154 = this[4].__begin_;
              v155 = &v76[2 * v152];
              v156 = v75;
              v157 = (v9 >> 2) - 1;
              do
              {
                v159 = *v154;
                v154 += 8;
                v158 = v159;
                LOWORD(v159) = *v156++;
                *&v155[2 * v158] = v159;
                --v157;
              }

              while (v157);
            }

            v75 += v10;
            v152 = v153;
          }

          while (v153 != v18);
        }

        goto LABEL_190;
      }

      v175 = 0;
      std::vector<unsigned long>::vector[abi:ne200100](&__p, v10, &v175);
      v77 = *v169;
      v78 = **(v169 + 1);
      v79 = *(a3 + 1);
      if (v79 == *a3)
      {
        v80 = 0;
      }

      else
      {
        v80 = (((v79 - *a3) >> 3) - 1);
      }

      v175 = v80;
      v180 = (v77[1] - *v77) >> 3;
      if (v80 >= v180)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v175, &v180);
      }

      if (!v175)
      {
        goto LABEL_136;
      }

      v81 = 0;
      while (1)
      {
        v82 = *(*a3 + 8 * v81);
        v83 = v81 + 1;
        v84 = *(*a3 + 8 * (v81 + 1));
        v181 = v84;
        v85 = *(*v77 + 8 * (v81 + 1));
        v86 = *(*v77 + 8 * v81);
        if (!v78 && v85 != v86)
        {
          goto LABEL_166;
        }

        v87 = v85 - v86;
        v179 = v85 - v86 + v82;
        if (v179 != v84)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v179, &v181);
        }

        if (v82 < v181)
        {
          break;
        }

LABEL_93:
        ++v81;
        if (v83 >= v175)
        {
          goto LABEL_136;
        }
      }

      v88 = (v78 + 8 * v86);
      while (v87)
      {
        v89 = *v88;
        v88 += 2;
        v90 = *&this[4].__begin_[8 * v89] + v81;
        *&v76[2 * v90] = v75[v82];
        *&this[5].__end_[(v90 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v90);
        ++v82;
        --v87;
        if (v82 >= v181)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      if (v38 == 1)
      {
        v39 = *(a3 + 3);
        v40 = this->__begin_;
        if (v36 != v35)
        {
          v175 = 0;
          std::vector<unsigned long>::vector[abi:ne200100](&__p, v10, &v175);
          v41 = *v169;
          v42 = **(v169 + 1);
          v43 = *(a3 + 1);
          if (v43 == *a3)
          {
            v44 = 0;
          }

          else
          {
            v44 = (((v43 - *a3) >> 3) - 1);
          }

          v175 = v44;
          v180 = (v41[1] - *v41) >> 3;
          if (v44 >= v180)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v175, &v180);
          }

          if (v175)
          {
            v45 = 0;
            while (1)
            {
              v46 = *(*a3 + 8 * v45);
              v47 = v45 + 1;
              v48 = *(*a3 + 8 * (v45 + 1));
              v181 = v48;
              v49 = *(*v41 + 8 * (v45 + 1));
              v50 = *(*v41 + 8 * v45);
              if (!v42 && v49 != v50)
              {
                goto LABEL_166;
              }

              v51 = v49 - v50;
              v179 = v49 - v50 + v46;
              if (v179 != v48)
              {
                dmlc::LogCheckFormat<unsigned long,unsigned long>(&v179, &v181);
              }

              if (v46 < v181)
              {
                break;
              }

LABEL_51:
              ++v45;
              if (v47 >= v175)
              {
                goto LABEL_136;
              }
            }

            v52 = (v42 + 8 * v50);
            while (v51)
            {
              v53 = *v52;
              v52 += 2;
              v54 = *&this[4].__begin_[8 * v53] + v45;
              v40[v54] = *(v39 + v46);
              *&this[5].__end_[(v54 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v54);
              ++v46;
              --v51;
              if (v46 >= v181)
              {
                goto LABEL_51;
              }
            }

            goto LABEL_166;
          }

LABEL_136:
          v127 = __p;
          if (__p)
          {
            v183.__m_.__sig = __p;
LABEL_165:
            operator delete(v127);
            return;
          }

          return;
        }

        LODWORD(v175) = v168;
        LODWORD(v181) = 1;
        if (v168 < 1)
        {
          dmlc::LogCheckFormat<int,int>(&v175, &v181);
        }

        __p = 0;
        v183.__m_.__sig = 850045863;
        memset(v183.__m_.__opaque, 0, sizeof(v183.__m_.__opaque));
        if (v15 != 1)
        {
          v148 = 0;
          do
          {
            v149 = v148 + 1;
            if (v148 * v10 < (v148 + 1) * v10)
            {
              v150 = 0;
              v151 = &v40[v148];
              do
              {
                v151[*&this[4].__begin_[8 * v150]] = *(v39 + v150);
                ++v150;
              }

              while (v10 != v150);
            }

            v39 += v10;
            v148 = v149;
          }

          while (v149 != v18);
        }

LABEL_190:
        dmlc::OMPException::Rethrow(&__p);
        std::mutex::~mutex(&v183);
        std::exception_ptr::~exception_ptr(&__p);
        return;
      }

      LODWORD(v175) = 4;
      if (v38 != 4)
      {
        dmlc::LogCheckFormat<xgboost::common::BinTypeSize,xgboost::common::BinTypeSize>(&__p, &v178, &v175);
      }

      v111 = *(a3 + 3);
      v112 = this->__begin_;
      if (v36 == v35)
      {
        LODWORD(v175) = v168;
        LODWORD(v181) = 1;
        if (v168 < 1)
        {
          dmlc::LogCheckFormat<int,int>(&v175, &v181);
        }

        __p = 0;
        v183.__m_.__sig = 850045863;
        memset(v183.__m_.__opaque, 0, sizeof(v183.__m_.__opaque));
        if (v15 != 1)
        {
          v160 = 0;
          do
          {
            v161 = v160 + 1;
            if (v160 * v10 < (v160 + 1) * v10)
            {
              v162 = this[4].__begin_;
              v163 = &v112[4 * v160];
              v164 = v111;
              v165 = (v9 >> 2) - 1;
              do
              {
                v167 = *v162;
                v162 += 8;
                v166 = v167;
                LODWORD(v167) = *v164++;
                *&v163[4 * v166] = v167;
                --v165;
              }

              while (v165);
            }

            v111 += v10;
            v160 = v161;
          }

          while (v161 != v18);
        }

        goto LABEL_190;
      }

      v175 = 0;
      std::vector<unsigned long>::vector[abi:ne200100](&__p, v10, &v175);
      v113 = *v169;
      v114 = **(v169 + 1);
      v115 = *(a3 + 1);
      if (v115 == *a3)
      {
        v116 = 0;
      }

      else
      {
        v116 = (((v115 - *a3) >> 3) - 1);
      }

      v175 = v116;
      v180 = (v113[1] - *v113) >> 3;
      if (v116 >= v180)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v175, &v180);
      }

      if (!v175)
      {
        goto LABEL_136;
      }

      v117 = 0;
      while (1)
      {
        v118 = *(*a3 + 8 * v117);
        v119 = v117 + 1;
        v120 = *(*a3 + 8 * (v117 + 1));
        v181 = v120;
        v121 = *(*v113 + 8 * (v117 + 1));
        v122 = *(*v113 + 8 * v117);
        if (!v114 && v121 != v122)
        {
          goto LABEL_166;
        }

        v123 = v121 - v122;
        v179 = v121 - v122 + v118;
        if (v179 != v120)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v179, &v181);
        }

        if (v118 < v181)
        {
          break;
        }

LABEL_135:
        ++v117;
        if (v119 >= v175)
        {
          goto LABEL_136;
        }
      }

      v124 = (v114 + 8 * v122);
      while (v123)
      {
        v125 = *v124;
        v124 += 2;
        v126 = *&this[4].__begin_[8 * v125] + v117;
        *&v112[4 * v126] = v111[v118];
        *&this[5].__end_[(v126 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v126);
        ++v118;
        --v123;
        if (v118 >= v181)
        {
          goto LABEL_135;
        }
      }
    }

LABEL_166:
    std::terminate();
  }

  end = this[6].__end_;
  if (end == 2)
  {
    v91 = *(a3 + 3);
    v92 = this->__begin_;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    std::vector<unsigned long>::resize(&v175, v10);
    if (v176 - v175 >= 1)
    {
      bzero(v175, v176 - v175);
    }

    v181 = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&__p, v10, &v181);
    v93 = *v169;
    v94 = **(v169 + 1);
    v95 = *(a3 + 1);
    if (v95 == *a3)
    {
      v96 = 0;
    }

    else
    {
      v96 = ((v95 - *a3) >> 3) - 1;
    }

    v181 = v96;
    v171 = v93;
    v179 = (v93[1] - *v93) >> 3;
    if (v96 >= v179)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v181, &v179);
    }

    if (v181)
    {
      v97 = 0;
      while (1)
      {
        v98 = *(*a3 + 8 * v97);
        v99 = v97 + 1;
        v100 = *(*a3 + 8 * (v97 + 1));
        v180 = v100;
        v101 = *(*v171 + 8 * (v97 + 1));
        v102 = *(*v171 + 8 * v97);
        if (!v94 && v101 != v102)
        {
          goto LABEL_166;
        }

        v103 = v101 - v102;
        v178 = v101 - v102 + v98;
        if (v178 != v100)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v178, &v180);
        }

        if (v98 < v180)
        {
          break;
        }

LABEL_115:
        ++v97;
        if (v99 >= v181)
        {
          goto LABEL_161;
        }
      }

      v104 = (v94 + 8 * v102);
      v105 = v175;
      while (v103)
      {
        v106 = *v104;
        v107 = *&this[4].__begin_[8 * v106];
        v108 = &v92[2 * v107];
        v109 = *(v91 + 4 * v98) - *&this[5].__begin_[4 * v106];
        if (this[2].__begin_[v106])
        {
          v110 = v105[v106];
          *&v108[2 * v110] = v109;
          *&this[3].__begin_[8 * v107 + 8 * v110] = v97;
          ++v105[v106];
        }

        else
        {
          *&v108[2 * v97] = v109;
          *&this[5].__end_[((v107 + v97) >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << (v107 + v97));
        }

        ++v98;
        v104 += 2;
        --v103;
        if (v98 >= v180)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_166;
    }
  }

  else if (end == 1)
  {
    v56 = *(a3 + 3);
    v57 = this->__begin_;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    std::vector<unsigned long>::resize(&v175, v10);
    if (v176 - v175 >= 1)
    {
      bzero(v175, v176 - v175);
    }

    v181 = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&__p, v10, &v181);
    v58 = *v169;
    v59 = **(v169 + 1);
    v60 = *(a3 + 1);
    if (v60 == *a3)
    {
      v61 = 0;
    }

    else
    {
      v61 = ((v60 - *a3) >> 3) - 1;
    }

    v181 = v61;
    v170 = v58;
    v179 = (v58[1] - *v58) >> 3;
    if (v61 >= v179)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v181, &v179);
    }

    if (v181)
    {
      v62 = 0;
      while (1)
      {
        v63 = *(*a3 + 8 * v62);
        v64 = v62 + 1;
        v65 = *(*a3 + 8 * (v62 + 1));
        v180 = v65;
        v66 = *(*v170 + 8 * (v62 + 1));
        v67 = *(*v170 + 8 * v62);
        if (!v59 && v66 != v67)
        {
          goto LABEL_166;
        }

        v68 = v66 - v67;
        v178 = v66 - v67 + v63;
        if (v178 != v65)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v178, &v180);
        }

        if (v63 < v180)
        {
          break;
        }

LABEL_75:
        ++v62;
        if (v64 >= v181)
        {
          goto LABEL_161;
        }
      }

      v69 = (v59 + 8 * v67);
      while (v68)
      {
        v70 = *v69;
        v71 = &v57[*&this[4].__begin_[8 * v70]];
        v72 = *(v56 + 4 * v63) - *&this[5].__begin_[4 * v70];
        if (this[2].__begin_[v70])
        {
          v71[*(v175 + v70)] = v72;
          v73 = v175;
          *&this[3].__begin_[8 * *&this[4].__begin_[8 * v70] + 8 * *(v175 + v70)] = v62;
          ++v73[v70];
        }

        else
        {
          v71[v62] = v72;
          v74 = *&this[4].__begin_[8 * v70] + v62;
          *&this[5].__end_[(v74 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v74);
        }

        ++v63;
        v69 += 2;
        --v68;
        if (v63 >= v180)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_166;
    }
  }

  else
  {
    LODWORD(v175) = 4;
    if (end != 4)
    {
      dmlc::LogCheckFormat<xgboost::common::BinTypeSize,xgboost::common::BinTypeSize>(&__p, &this[6].__end_, &v175);
    }

    v128 = *(a3 + 3);
    v129 = this->__begin_;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    std::vector<unsigned long>::resize(&v175, v10);
    if (v176 - v175 >= 1)
    {
      bzero(v175, v176 - v175);
    }

    v181 = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&__p, v10, &v181);
    v130 = *v169;
    v131 = **(v169 + 1);
    v132 = *(a3 + 1);
    if (v132 == *a3)
    {
      v133 = 0;
    }

    else
    {
      v133 = ((v132 - *a3) >> 3) - 1;
    }

    v181 = v133;
    v172 = v130;
    v179 = (v130[1] - *v130) >> 3;
    if (v133 >= v179)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v181, &v179);
    }

    if (v181)
    {
      v134 = 0;
      while (1)
      {
        v135 = *(*a3 + 8 * v134);
        v136 = v134 + 1;
        v137 = *(*a3 + 8 * (v134 + 1));
        v180 = v137;
        v138 = *(*v172 + 8 * (v134 + 1));
        v139 = *(*v172 + 8 * v134);
        if (!v131 && v138 != v139)
        {
          goto LABEL_166;
        }

        v140 = v138 - v139;
        v178 = v138 - v139 + v135;
        if (v178 != v137)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v178, &v180);
        }

        if (v135 < v180)
        {
          break;
        }

LABEL_160:
        ++v134;
        if (v136 >= v181)
        {
          goto LABEL_161;
        }
      }

      v141 = (v131 + 8 * v139);
      v142 = v175;
      while (v140)
      {
        v143 = *v141;
        v144 = *&this[4].__begin_[8 * v143];
        v145 = &v129[4 * v144];
        v146 = *(v128 + 4 * v135) - *&this[5].__begin_[4 * v143];
        if (this[2].__begin_[v143])
        {
          v147 = v142[v143];
          *&v145[4 * v147] = v146;
          *&this[3].__begin_[8 * v144 + 8 * v147] = v134;
          ++v142[v143];
        }

        else
        {
          *&v145[4 * v134] = v146;
          *&this[5].__end_[((v144 + v134) >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << (v144 + v134));
        }

        ++v135;
        v141 += 2;
        --v140;
        if (v135 >= v180)
        {
          goto LABEL_160;
        }
      }

      goto LABEL_166;
    }
  }

LABEL_161:
  if (__p)
  {
    v183.__m_.__sig = __p;
    operator delete(__p);
  }

  v127 = v175;
  if (v175)
  {
    v176 = v175;
    goto LABEL_165;
  }
}

void sub_274D6D9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::GHistIndexMatrix::Init(uint64_t a1, uint64_t **a2, unint64_t *a3, xgboost::common::HistogramCuts *a4, int a5, char a6, int a7, int16x4_t a8)
{
  LODWORD(v8) = a7;
  v9 = 1;
  if (a7 >= 1)
  {
    *(a1 + 152) = a2[2];
    *(a1 + 192) = a6;
    xgboost::common::HistogramCuts::Copy((a1 + 112), a4, a8);
  }

  dmlc::LogCheckFormat<int,int>(&v8, &v9);
}

void sub_274D6DF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::GHistIndexMatrix::Transpose(xgboost::GHistIndexMatrix *this)
{
  result = *(this + 20);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/gradient_index.cc", 223);
    v4 = dmlc::LogMessageFatal::GetEntry(&v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: columns_", 22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v6);
    return *(this + 20);
  }

  return result;
}

uint64_t xgboost::common::ColumnMatrix::Read(std::vector<char> *a1, uint64_t (***a2)(void, unint64_t *, uint64_t), char *a3)
{
  v19 = 0;
  if ((**a2)(a2, &v19, 8) == 8)
  {
    v6 = v19;
    v7 = a1->__end_ - a1->__begin_;
    v8 = v19 >= v7;
    if (v19 <= v7)
    {
      v9 = v19;
      if (!v8)
      {
        a1->__end_ = &a1->__begin_[v19];
        v9 = v6;
      }
    }

    else
    {
      std::vector<char>::__append(a1, v19 - v7);
      v9 = v19;
    }

    if (v9)
    {
      (**a2)(a2, a1->__begin_, v6);
    }
  }

  v19 = 0;
  if ((**a2)(a2, &v19, 8) == 8)
  {
    v10 = v19;
    std::vector<unsigned long>::resize(&a1[1].__begin_, v19);
    if (v19)
    {
      (**a2)(a2, a1[1].__begin_, 8 * v10);
    }
  }

  v19 = 0;
  if ((**a2)(a2, &v19, 8) == 8)
  {
    v11 = v19;
    begin = a1[2].__begin_;
    v13 = (a1[2].__end_ - begin);
    v14 = v19 >= v13;
    if (v19 <= v13)
    {
      v15 = v19;
      if (!v14)
      {
        a1[2].__end_ = &begin[v19];
        v15 = v11;
      }
    }

    else
    {
      std::vector<char>::__append(a1 + 2, v19 - v13);
      v15 = v19;
    }

    if (v15)
    {
      (**a2)(a2, a1[2].__begin_, v11);
    }
  }

  v19 = 0;
  if ((**a2)(a2, &v19, 8) == 8)
  {
    v16 = v19;
    std::vector<unsigned long>::resize(&a1[3].__begin_, v19);
    if (v19)
    {
      (**a2)(a2, a1[3].__begin_, 8 * v16);
    }
  }

  v19 = 0;
  if ((**a2)(a2, &v19, 8) == 8)
  {
    v17 = v19;
    std::vector<unsigned long>::resize(&a1[4].__begin_, v19);
    if (v19)
    {
      (**a2)(a2, a1[4].__begin_, 8 * v17);
    }
  }

  a1[5].__begin_ = a3;
  (**a2)(a2, &a1[6].__end_, 4);
  (**a2)(a2, (&a1[6].__end_ + 4), 1);
  return 1;
}

uint64_t xgboost::common::ColumnMatrix::Write(char *a1, uint64_t a2)
{
  v15 = *(a1 + 1) - *a1;
  (*(*a2 + 8))(a2, &v15, 8);
  if (v15)
  {
    (*(*a2 + 8))(a2, *a1, *(a1 + 1) - *a1);
  }

  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = (*(a1 + 4) - *(a1 + 3)) >> 3;
  (*(*a2 + 8))(a2, &v15, 8);
  if (v15)
  {
    (*(*a2 + 8))(a2, *(a1 + 3), *(a1 + 4) - *(a1 + 3));
  }

  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  v15 = *(a1 + 7) - *(a1 + 6);
  (*(*a2 + 8))(a2, &v15, 8);
  if (v15)
  {
    (*(*a2 + 8))(a2, *(a1 + 6), *(a1 + 7) - *(a1 + 6));
  }

  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v15 = (*(a1 + 10) - *(a1 + 9)) >> 3;
  (*(*a2 + 8))(a2, &v15, 8);
  if (v15)
  {
    (*(*a2 + 8))(a2, *(a1 + 9), *(a1 + 10) - *(a1 + 9));
  }

  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v15 = (*(a1 + 13) - *(a1 + 12)) >> 3;
  (*(*a2 + 8))(a2, &v15, 8);
  if (v15)
  {
    (*(*a2 + 8))(a2, *(a1 + 12), *(a1 + 13) - *(a1 + 12));
  }

  v11 = *(a1 + 12);
  v10 = *(a1 + 13);
  (*(*a2 + 8))(a2, a1 + 19, 4);
  (*(*a2 + 8))(a2, a1 + 156, 1);
  return v14 + v4 + v7 + v9 + v10 - (v13 + v5 + v6 + v8 + v11) + 45;
}

uint64_t xgboost::GHistIndexMatrix::GetFeatureCounts(uint64_t this, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 - a2) >> 2 != 1)
  {
    v4 = 0;
    do
    {
      v5 = *(a2 + v4);
      v6 = v4 + 1;
      v7 = *(a2 + (v4 + 1));
      if (v5 < v7)
      {
        v8 = *(a4 + 8 * v4);
        v9 = v7 - v5;
        v10 = (this + 8 * v5);
        do
        {
          v11 = *v10++;
          v8 += v11;
          *(a4 + 8 * v4) = v8;
          --v9;
        }

        while (v9);
      }

      ++v4;
    }

    while (((a3 - a2) >> 2) - 1 > v6);
  }

  return this;
}

void std::vector<BOOL>::resize(uint64_t *result, unint64_t a2, int a3)
{
  v4 = result[1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    result[1] = a2;
    return;
  }

  v7 = result[2];
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
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
    v12 = *result;
    v13 = result[1];
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(&v18, v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *result;
    *result = v20;
    v20 = v16;
    v17 = *(result + 1);
    *(result + 1) = v21;
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

  v14 = (*result + 8 * (v4 >> 6));
  v15 = result[1] & 0x3F;
  result[1] = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_274D6E90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_274D6EB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (v6)
  {
    v8 = v7 - 1;
    if (((v7 - 1) ^ (v6 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v7 - 1;
  }

  v9 = v8 >> 6;
  if (v7 >= 0x41)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(*a1 + 8 * v10) = 0;
LABEL_9:
  v22 = v4;
  v23 = v5;
  v11 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  v14 = *a1 + 8 * (v6 >> 6);
  v20 = *a2;
  v21 = v11;
  v18 = v12;
  v19 = v13;
  v16 = v14;
  v17 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v20, &v18, &v16, v15);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
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

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void xgboost::common::HistogramCuts::Copy(xgboost::common::HistogramCuts *this, const xgboost::common::HistogramCuts *a2, int16x4_t a3)
{
  v5 = (*(*(a2 + 1) + 8) - **(a2 + 1)) >> 2;
  v9 = 0;
  std::vector<float>::resize(*(this + 1), v5, &v9, a3);
  v6 = (*(*(a2 + 2) + 8) - **(a2 + 2)) >> 2;
  __x = 0;
  std::vector<unsigned int>::resize(*(this + 2), v6, &__x);
  v7 = (*(*(a2 + 3) + 8) - **(a2 + 3)) >> 2;
  v11 = 0;
  std::vector<float>::resize(*(this + 3), v7, &v11, v8);
  xgboost::HostDeviceVector<float>::Copy();
}

void dmlc::LogCheckFormat<xgboost::common::BinTypeSize,xgboost::common::BinTypeSize>(void *a1, unsigned int *a2, unsigned int *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E30](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E30](v7, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274D6F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<xgboost::common::ColumnMatrix>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      operator delete(v3);
    }

    v4 = *(v2 + 96);
    if (v4)
    {
      *(v2 + 104) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 72);
    if (v5)
    {
      *(v2 + 80) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 48);
    if (v6)
    {
      *(v2 + 56) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 24);
    if (v7)
    {
      *(v2 + 32) = v7;
      operator delete(v7);
    }

    v8 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v8;
      operator delete(v8);
    }

    JUMPOUT(0x277C69180);
  }

  return result;
}

uint64_t xgboost::common::HistogramCuts::SearchCatBin(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, float a5)
{
  v5 = a4 + 1;
  if (v5 >= (a3 - a2) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = *(a2 + 4 * v5);
  v7 = *a1;
  v8 = *(a2 + 4 * a4);
  if (4 * v6 == 4 * v8)
  {
    v9 = (v7 + 4 * v6);
  }

  else
  {
    v10 = 4 * v8;
    v11 = a5;
    v9 = (4 * v8 + v7);
    v12 = (4 * v6 - v10) >> 2;
    do
    {
      v13 = v12 >> 1;
      v14 = &v9[v12 >> 1];
      v16 = *v14;
      v15 = v14 + 1;
      v12 += ~(v12 >> 1);
      if (v16 < v11)
      {
        v9 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
  }

  return ((v9 - v7) >> 2) - ((v9 - v7) >> 2 == v6);
}

uint64_t xgboost::common::HistogramCuts::SearchBin(unsigned int a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(a2 + 4 * (a1 + 1));
  v5 = *(a2 + 4 * a1);
  if (4 * v4 == 4 * v5)
  {
    v6 = (a3 + 4 * v4);
  }

  else
  {
    v7 = 4 * v5;
    v6 = (4 * v5 + a3);
    v8 = (4 * v4 - v7) >> 2;
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v8 += ~(v8 >> 1);
      if (v12 > a4)
      {
        v8 = v9;
      }

      else
      {
        v6 = v11;
      }
    }

    while (v8);
  }

  return ((v6 - a3) >> 2) - (v4 == ((v6 - a3) >> 2));
}

double xgboost::metric::BinaryROCAUC(unint64_t *a1, uint64_t *a2, float *a3)
{
  xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(&__p, a1);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = a2[2];
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a3;
  v13 = *(a3 + 1);
  v14 = a3[4];
  v36 = v11;
  LODWORD(v35) = 0;
  if (!v11)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v36, &v35);
  }

  v35 = v7;
  v36 = v11;
  if (v11 != v7)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v36, &v35);
  }

  v15 = *__p;
  v16 = *__p * v8;
  if (v16 >= v9)
  {
    goto LABEL_24;
  }

  v17 = *(v10 + 4 * v16);
  v18 = v14;
  if (v12)
  {
    if (v12 <= v15)
    {
LABEL_25:
      std::terminate();
    }

    v18 = *(v13 + 4 * v15);
  }

  v19 = (1.0 - v17) * v18;
  v20 = (v17 * v18);
  if ((v34 - __p) >= 9)
  {
    v21 = (v34 - __p) >> 3;
    if (v21 <= 2)
    {
      v21 = 2;
    }

    v22 = v21 - 1;
    v23 = (__p + 8);
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    while (1)
    {
      v27 = *v23;
      v28 = v26 + (v25 + v20) * vabdd_f64(v24, v19) * 0.5;
      if (*(v6 + 4 * *v23) != *(v6 + 4 * *(v23 - 1)))
      {
        v26 = v28;
        v25 = v20;
        v24 = v19;
      }

      if (v27 * v8 >= v9)
      {
        break;
      }

      v29 = *(v10 + 4 * v27 * v8);
      v30 = v14;
      if (v12)
      {
        if (v12 <= v27)
        {
          goto LABEL_25;
        }

        v30 = *(v13 + 4 * v27);
      }

      ++v23;
      v19 = v19 + ((1.0 - v29) * v30);
      v20 = v20 + (v29 * v30);
      if (!--v22)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
  }

LABEL_19:
  if (fmin(v19, v20) > 0.0)
  {
    v31 = v19;
  }

  else
  {
    v31 = 0.0;
  }

  v34 = __p;
  operator delete(__p);
  return v31;
}

void sub_274D6F820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(uint64_t *a1, unint64_t *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = std::vector<unsigned long>::vector[abi:ne200100](a1, *a2);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    v6 = 0;
    v7 = (v5 - v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v10 = xmmword_274E1F3B0;
    v11 = vdupq_n_s64(2uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v8, v10));
      if (v12.i8[0])
      {
        v4[v6] = v6;
      }

      if (v12.i8[4])
      {
        v4[v6 + 1] = v6 + 1;
      }

      v6 += 2;
      v10 = vaddq_s64(v10, v11);
    }

    while (v9 != v6);
  }

  v19[0] = a2;
  if (v5 - v4 < 129)
  {
    v18 = 0;
    v14 = 0;
  }

  else
  {
    v13 = MEMORY[0x277D826F0];
    v14 = v5 - v4;
    while (1)
    {
      v15 = operator new(8 * v14, v13);
      if (v15)
      {
        break;
      }

      v16 = v14 >> 1;
      v17 = v14 > 1;
      v14 >>= 1;
      if (!v17)
      {
        v18 = 0;
        v14 = v16;
        goto LABEL_15;
      }
    }

    v18 = v15;
  }

LABEL_15:
  std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(v4, v5, v19, v5 - v4, v18, v14);
  if (v18)
  {
    operator delete(v18);
  }
}

void sub_274D6F9EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double xgboost::metric::GroupRankingROC(unint64_t *a1, uint64_t a2, float a3)
{
  xgboost::common::Span<float,18446744073709551615ul>::subspan((a2 + 16), 0, *(a2 + 40), v27);
  xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(v26, v27);
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = 0;
    v8 = v6 - 1;
    v9 = (v26[0] + 8);
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v13 = *(v26[0] + v7);
        if (*a1 > v13)
        {
          v14 = v9;
          v15 = v8;
          while (1)
          {
            v17 = *v14++;
            v16 = v17;
            if (*a1 <= v17)
            {
              break;
            }

            v18 = *(a1[1] + 4 * v13) - *(a1[1] + 4 * v16);
            v19 = v18 <= 0.0;
            if (v18 == 0.0)
            {
              v20 = 0.5;
            }

            else
            {
              v20 = 0.0;
            }

            if (!v19)
            {
              v20 = 1.0;
            }

            v11 = v11 + ((a3 * a3) * v20);
            v10 = v10 + (a3 * a3);
            if (!--v15)
            {
              goto LABEL_13;
            }
          }
        }

        std::terminate();
      }

LABEL_13:
      --v8;
      ++v9;
      v7 = v12;
    }

    while (v12 != v6);
    if (v10 == 0.0)
    {
      v21 = v11;
    }

    else
    {
      v21 = v11 / v10;
    }

    if (v21 > 1.0)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, " (", 2);
      v23 = MEMORY[0x277C68E00](v22, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " vs. ", 5);
      v24 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ") ", 2);
      operator new();
    }
  }

  else
  {
    v21 = 0.0;
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  return v21;
}

void sub_274D6FD60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x277C69180](v15, 0x1012C40EC159624, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double xgboost::metric::BinaryPRAUC(unint64_t *a1, uint64_t *a2, float *a3)
{
  xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(&__p, a1);
  v6 = a2[5];
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = 0;
  v8 = 0;
  v9 = *a3;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = a3 + 4;
    if (v9)
    {
      if (v9 <= v8)
      {
        goto LABEL_40;
      }

      v12 = (*(a3 + 1) + v7);
    }

    v13 = *a2;
    v14 = *a2 * v8;
    v15 = a2[2];
    if (v14 >= v15)
    {
      __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
    }

    v16 = a2[4];
    v17 = *(v16 + 4 * v14);
    v10 = v10 + (*v12 * v17);
    v11 = v11 + (*v12 * (1.0 - v17));
    ++v8;
    v7 += 4;
  }

  while (v6 != v8);
  if (v10 > 0.0 && v11 > 0.0)
  {
    v18 = *a1;
    v19 = a1[1];
    v20 = *(a3 + 1);
    v21 = a3[4];
    v59 = v18;
    v60 = v6;
    if (v6 != v18)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v60, &v59);
    }

    v22 = __p;
    v23 = *__p;
    v24 = *__p * v13;
    if (v24 >= v15)
    {
      goto LABEL_41;
    }

    v25 = *(v16 + 4 * v24);
    v26 = v21;
    if (v9)
    {
      if (v9 <= v23)
      {
LABEL_40:
        std::terminate();
      }

      v26 = *(v20 + 4 * v23);
    }

    v27 = (1.0 - v25) * v26;
    v28 = (v25 * v26);
    v29 = (v58 - __p) >> 3;
    v30 = 0.0;
    if (v29 >= 2)
    {
      v31 = v29 - 1;
      v32 = (__p + 8);
      v33 = 0.0;
      v34 = 1.0;
      v35 = 0.0;
      v55 = v21;
      while (1)
      {
        v36 = *v32;
        if (*(v19 + 4 * *v32) != *(v19 + 4 * *(v32 - 1)))
        {
          v37 = v35 / v10;
          v38 = 1.0;
          v39 = v28 / v10;
          if (v28 == v35 || (v41 = (v27 - v33) / (v28 - v35), v38 = v41 + 1.0, v42 = (v33 - v41 * v35) / v10, v42 == 0.0))
          {
            v40 = v39 - v37;
          }

          else
          {
            v56 = v39 - v37;
            v43 = v30;
            v44 = log(v42 + v38 * v39);
            v45 = log(v42 + v38 * v37);
            v34 = 1.0;
            v30 = v43;
            v46 = v44 - v45;
            v21 = v55;
            v40 = v56 + -v42 / v38 * v46;
          }

          v30 = v30 + v40 / v38;
          v35 = v28;
          v33 = v27;
        }

        if (v36 * v13 >= v15)
        {
          break;
        }

        v47 = *(v16 + 4 * v36 * v13);
        v48 = v21;
        if (v9)
        {
          if (v9 <= v36)
          {
            goto LABEL_40;
          }

          v48 = *(v20 + 4 * v36);
        }

        ++v32;
        v27 = v27 + ((v34 - v47) * v48);
        v28 = v28 + (v47 * v48);
        if (!--v31)
        {
          goto LABEL_33;
        }
      }

LABEL_41:
      __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
    }

    v35 = 0.0;
    v33 = 0.0;
LABEL_33:
    v49 = v35 / v10;
    v50 = v28 / v10;
    if (v28 != v35)
    {
      v51 = (v27 - v33) / (v28 - v35);
      v52 = (v33 - v51 * v35) / v10;
      if (v52 != 0.0)
      {
        v53 = v51 + 1.0;
        log(v52 + (v51 + 1.0) * v50);
        log(v52 + v53 * v49);
      }
    }
  }

  else
  {
LABEL_30:
    v22 = __p;
    if (!__p)
    {
      return 1.0;
    }
  }

  v58 = v22;
  operator delete(v22);
  return 1.0;
}

void sub_274D70238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  v19 = a18;
  a18 = 0;
  if (v19)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a18, v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double xgboost::metric::GPUBinaryROCAUC()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0.0;
}

double xgboost::metric::GPUMultiClassROCAUC()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0.0;
}

uint64_t xgboost::metric::GPURankingAUC()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

double xgboost::metric::GPUBinaryPRAUC()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0.0;
}

double xgboost::metric::GPUMultiClassPRAUC()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0.0;
}

uint64_t xgboost::metric::GPURankingPRAUC()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

unint64_t *std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(unint64_t *result, unint64_t *a2, unint64_t **a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a2 - 1);
    v10 = **a3;
    if (v10 > v9)
    {
      v11 = *result;
      if (v10 > *result)
      {
        if (*((*a3)[1] + 4 * v9) > *((*a3)[1] + 4 * v11))
        {
          *result = v9;
          *(a2 - 1) = v11;
        }

        return result;
      }
    }

    goto LABEL_43;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v13 = result + 1;
    if (result + 1 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *a3;
    v16 = result;
    while (1)
    {
      v17 = v13;
      v18 = *v13;
      if (*v15 <= v18)
      {
        break;
      }

      v19 = *v16;
      if (*v15 <= *v16)
      {
        break;
      }

      v20 = v15[1];
      v21 = *(v20 + 4 * v18);
      if (v21 > *(v20 + 4 * v19))
      {
        v22 = v14;
        while (1)
        {
          *(result + v22 + 8) = v19;
          if (!v22)
          {
            break;
          }

          if (*v15 <= v18)
          {
            goto LABEL_43;
          }

          v19 = *(result + v22 - 8);
          if (*v15 <= v19)
          {
            goto LABEL_43;
          }

          v22 -= 8;
          if (v21 <= *(v20 + 4 * v19))
          {
            v23 = (result + v22 + 8);
            goto LABEL_22;
          }
        }

        v23 = result;
LABEL_22:
        *v23 = v18;
      }

      v13 = v17 + 1;
      v14 += 8;
      v16 = v17;
      if (v17 + 1 == a2)
      {
        return result;
      }
    }

LABEL_43:
    std::terminate();
  }

  v25 = a5;
  v26 = a4 >> 1;
  v27 = &result[a4 >> 1];
  v28 = a4 >> 1;
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v27, a3, v28, a5);
    v29 = &v25[v26];
    result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v29);
    v30 = &v25[a4];
    v31 = *a3;
    v32 = v29;
    while (v32 != v30)
    {
      v33 = *v32;
      if (*v31 <= *v32 || *v31 <= *v25)
      {
        goto LABEL_43;
      }

      v34 = v31[1];
      v35 = *(v34 + 4 * v33);
      v36 = *(v34 + 4 * *v25);
      if (v35 <= v36)
      {
        v33 = *v25;
      }

      v25 += v35 <= v36;
      v32 += v35 > v36;
      *v8 = v33;
      v8 += 8;
      if (v25 == v29)
      {
        while (v32 != v30)
        {
          v38 = *v32++;
          *v8 = v38;
          v8 += 8;
        }

        return result;
      }
    }

    while (v25 != v29)
    {
      v37 = *v25++;
      *v8 = v37;
      v8 += 8;
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v27, a3, v28, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v25, a6);

    return std::__inplace_merge<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(v8, &v8[8 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v25, a6);
  }

  return result;
}

unint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(unint64_t *result, unint64_t *a2, unint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_10:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      if (v11 > v10 && v11 > *result)
      {
        v12 = (*a3)[1];
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * *result);
        if (v13 <= v14)
        {
          v10 = *result;
        }

        *a5 = v10;
        v5 = a5 + 1;
        if (v13 <= v14)
        {
          v7 = a2 - 1;
        }

        goto LABEL_10;
      }

LABEL_45:
      std::terminate();
    }

    if (a4 > 8)
    {
      v26 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v26, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v27 = *a3;
      v28 = &v7[a4 >> 1];
      while (v28 != a2)
      {
        v29 = *v28;
        if (*v27 <= *v28 || *v27 <= *v7)
        {
          goto LABEL_45;
        }

        v30 = v27[1];
        v31 = *(v30 + 4 * v29);
        v32 = *(v30 + 4 * *v7);
        if (v31 <= v32)
        {
          v29 = *v7;
        }

        v28 += v31 > v32;
        v7 += v31 <= v32;
        *v5++ = v29;
        if (v7 == v26)
        {
          while (v28 != a2)
          {
            v34 = *v28++;
            *v5++ = v34;
          }

          return result;
        }
      }

      while (v7 != v26)
      {
        v33 = *v7++;
        *v5++ = v33;
      }
    }

    else if (result != a2)
    {
      v15 = *a3;
      v16 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v17 = 0;
        v18 = a5;
        while (1)
        {
          v19 = *v16;
          if (*v15 <= *v16)
          {
            goto LABEL_45;
          }

          v20 = *v18;
          if (*v15 <= *v18)
          {
            goto LABEL_45;
          }

          v21 = v18 + 1;
          v22 = v15[1];
          if (*(v22 + 4 * v19) <= *(v22 + 4 * v20))
          {
            *v21 = v19;
          }

          else
          {
            v18[1] = v20;
            v23 = a5;
            if (v18 != a5)
            {
              v24 = v17;
              while (1)
              {
                if (*v15 <= *v16)
                {
                  goto LABEL_45;
                }

                v25 = *(a5 + v24 - 8);
                if (*v15 <= v25)
                {
                  goto LABEL_45;
                }

                if (*(v22 + 4 * *v16) <= *(v22 + 4 * v25))
                {
                  break;
                }

                *(a5 + v24) = v25;
                v24 -= 8;
                if (!v24)
                {
                  v23 = a5;
                  goto LABEL_28;
                }
              }

              v23 = (a5 + v24);
            }

LABEL_28:
            *v23 = *v16;
          }

          ++v16;
          v17 += 8;
          v18 = v21;
          if (v16 == a2)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, char *a3, unint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    v12 = result;
    while (a5 > a8 && v10 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = *a2;
      v14 = **a4;
      if (v14 <= *a2)
      {
        goto LABEL_62;
      }

      v15 = 0;
      v16 = -a5;
      while (1)
      {
        v17 = *&v15[v12];
        if (v14 <= v17)
        {
          goto LABEL_62;
        }

        v18 = (*a4)[1];
        if (*(v18 + 4 * v13) > *(v18 + 4 * v17))
        {
          break;
        }

        v15 += 8;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v20 = -v16;
      v63 = a3;
      v64 = a7;
      v65 = a4;
      v61 = &v15[v12];
      v62 = a8;
      if (-v16 >= v10)
      {
        if (v16 == -1)
        {
          *&v15[v12] = v13;
          *a2 = v17;
          return result;
        }

        v29 = v20 / 2;
        v30 = &v12[8 * (v20 / 2)];
        v22 = a2;
        if (a2 != a3)
        {
          v31 = *&v15[v30];
          v32 = (a3 - a2) >> 3;
          v22 = a2;
          while (1)
          {
            v33 = v32 >> 1;
            v34 = &v22[8 * (v32 >> 1)];
            if (v14 <= *v34 || v14 <= v31)
            {
              break;
            }

            v35 = *(v18 + 4 * *v34);
            v36 = v34 + 8;
            v32 += ~v33;
            if (v35 > *(v18 + 4 * v31))
            {
              v22 = v36;
            }

            else
            {
              v32 = v33;
            }

            if (!v32)
            {
              goto LABEL_32;
            }
          }

LABEL_62:
          std::terminate();
        }

LABEL_32:
        v21 = (v22 - a2) >> 3;
        v23 = &v15[v30];
      }

      else
      {
        v21 = v10 / 2;
        v22 = &a2[8 * (v10 / 2)];
        v23 = a2;
        if ((a2 - v12) != v15)
        {
          if (v14 > *v22)
          {
            v24 = (a2 - v12 - v15) >> 3;
            v23 = &v15[v12];
            while (1)
            {
              v25 = v24 >> 1;
              v26 = &v23[8 * (v24 >> 1)];
              if (v14 <= *v26)
              {
                break;
              }

              v27 = *(v18 + 4 * *v26);
              v28 = v26 + 8;
              v24 += ~v25;
              if (*(v18 + 4 * *v22) > v27)
              {
                v24 = v25;
              }

              else
              {
                v23 = v28;
              }

              if (!v24)
              {
                goto LABEL_22;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_22:
        v29 = (v23 - v12 - v15) >> 3;
      }

      a5 = -v16 - v29;
      v37 = v10 - v21;
      v38 = v29;
      v39 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v23, a2, v22);
      v40 = v38;
      v41 = v39;
      if (v40 + v21 >= v10 - (v40 + v21) - v16)
      {
        v44 = v40;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(v39, v22, v63, v65, a5, v37, v64, v62);
        v22 = v23;
        a7 = v64;
        v37 = v21;
        a8 = v62;
        a5 = v44;
        a3 = v41;
        v12 = v61;
      }

      else
      {
        v42 = v23;
        a7 = v64;
        v43 = v21;
        a8 = v62;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v15[v12], v42, v39, v65, v40, v43, v64, v62);
        v12 = v41;
        a3 = v63;
      }

      v10 = v37;
      a2 = v22;
      a4 = v65;
      if (!v37)
      {
        return result;
      }
    }

    if (a5 <= v10)
    {
      if (a2 != v12)
      {
        v50 = -a7;
        v51 = a7;
        v52 = v12;
        do
        {
          v53 = *v52;
          v52 += 8;
          *v51++ = v53;
          v50 -= 8;
        }

        while (v52 != a2);
        v54 = *a4;
        while (a2 != a3)
        {
          v55 = *a2;
          if (*v54 <= *a2 || *v54 <= *a7)
          {
            goto LABEL_62;
          }

          v56 = v54[1];
          v57 = *(v56 + 4 * v55);
          v58 = *(v56 + 4 * *a7);
          if (v57 <= v58)
          {
            v55 = *a7;
          }

          a2 += 8 * (v57 > v58);
          a7 += 8 * (v57 <= v58);
          *v12 = v55;
          v12 += 8;
          if (v51 == a7)
          {
            return result;
          }
        }

        return memmove(v12, a7, -(a7 + v50));
      }
    }

    else if (a2 != a3)
    {
      v45 = 0;
      do
      {
        *(a7 + v45) = *&a2[v45];
        v45 += 8;
      }

      while (&a2[v45] != a3);
      v46 = *a4;
      v47 = a7 + v45;
      while (a2 != v12)
      {
        v48 = *(v47 - 8);
        if (*v46 <= v48)
        {
          goto LABEL_62;
        }

        v49 = *(a2 - 1);
        if (*v46 <= v49)
        {
          goto LABEL_62;
        }

        if (*(v46[1] + 4 * v48) <= *(v46[1] + 4 * v49))
        {
          v47 -= 8;
        }

        else
        {
          v48 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v48;
        a3 -= 8;
        if (v47 == a7)
        {
          return result;
        }
      }

      if (v47 != a7)
      {
        v59 = -8;
        do
        {
          v60 = *(v47 - 8);
          v47 -= 8;
          *&a3[v59] = v60;
          v59 -= 8;
        }

        while (v47 != a7);
      }
    }
  }

  return result;
}

void xgboost::metric::EvalROCAUC::~EvalROCAUC(xgboost::metric::EvalROCAUC *this)
{
  *this = &unk_2883E32E0;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2883E32E0;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::metric::EvalAUC<xgboost::metric::EvalROCAUC>::Eval(rabit::engine *a1, uint64_t **a2, uint64_t a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v57 = 0.0;
  v55 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v56 = ((*a2)[1] - **a2) >> 2;
  Engine = rabit::engine::GetEngine(a1, a2, a3);
  (*(*Engine + 8))(Engine, &v55, 8, 2, rabit::op::Reducer<rabit::op::Max,unsigned long>, 0, 0);
  if (v55)
  {
    v12 = *(a3 + 48);
    v11 = *(a3 + 56);
    if (v12 == v11)
    {
      if (v55 == v56 || v56 % v55)
      {
        v19 = **a2;
        v20 = 0.0;
        v21 = (*a2)[1] - v19;
        if (v21)
        {
          v22 = **(a3 + 24);
          v23 = 0.0;
          v24 = 0.0;
          v25 = *(*(a3 + 24) + 8) - v22;
          if (v25)
          {
            if (*(*(a1 + 1) + 24) == -1)
            {
              *&v77 = v21 >> 2;
              *(&v77 + 1) = v19;
              if (!v22)
              {
LABEL_72:
                std::terminate();
              }

              v49 = *(a3 + 32);
              v83 = vextq_s8(v49, v49, 8uLL);
              *&v84 = v25 >> 2;
              *(&v84 + 1) = v22;
              *&v85 = v22;
              *(&v85 + 1) = v49.i64[0];
              LODWORD(v86) = -1;
              v50 = **(a3 + 72);
              v61 = ((*(*(a3 + 72) + 8) - v50) >> 2);
              v62 = v50;
              LODWORD(v63) = 1065353216;
              v23 = xgboost::metric::BinaryROCAUC(&v77, v83.i64, &v61);
            }

            else
            {
              xgboost::metric::GPUBinaryROCAUC();
              v23 = 0.0;
              v24 = 0.0;
              v20 = 0.0;
            }

            v57 = v20;
          }
        }

        else
        {
          v23 = 0.0;
          v24 = 0.0;
        }

        *&v61 = v23 * v24;
        *v83.i64 = v20;
        *&v83.i64[1] = v23 * v24;
        v51 = rabit::engine::GetEngine(v11, v7, v8);
        (*(*v51 + 8))(v51, &v83, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
        v45.n128_u64[0] = v83.u64[1];
        v61 = v83.i64[1];
        v57 = *v83.i64;
        if (*&v83.i64[1] <= 0.0)
        {
          v46 = NAN;
        }

        else
        {
          if (*v83.i64 > *&v83.i64[1])
          {
            dmlc::LogCheckFormat<double,double>(&v57, &v61);
          }

          v45.n128_u64[0] = v61;
          v46 = v57 / *&v61;
        }
      }

      else
      {
        *&v77 = v56 / v55;
        LODWORD(v61) = 0;
        if (v55 > v56)
        {
          dmlc::LogCheckFormat<unsigned long,int>(&v77, &v61);
        }

        v61 = *&v77;
        LODWORD(v71) = 0;
        if (!v77)
        {
          dmlc::LogCheckFormat<unsigned long,int>(&v61, &v71);
        }

        if (*(*(a1 + 1) + 24) == -1)
        {
          v54 = **a2;
          v83.i64[0] = ((*a2)[1] - v54) >> 2;
          v83.i64[1] = v54;
          v46 = xgboost::metric::MultiClassOVR<std::tuple<double,double,double> (&)(xgboost::common::Span<float const,18446744073709551615ul>,xgboost::linalg::TensorView<float const,1>,xgboost::common::OptionalWeights)>(v83.i64, a3, v61, 1, xgboost::metric::BinaryROCAUC);
        }

        else
        {
          xgboost::metric::GPUMultiClassROCAUC();
          v46 = 0.0;
        }
      }

      v57 = v46;
    }

    else
    {
      v13 = *(*(a3 + 72) + 8) - **(a3 + 72);
      if (v13)
      {
        v61 = (v13 >> 2);
        *&v77 = ((v11 - v12) >> 2) - 1;
        if (v13 >> 2 != v77)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v61, &v77);
        }

        v11 = *(a3 + 56);
      }

      v14 = *(*(a3 + 24) + 8) - **(a3 + 24);
      if (v14)
      {
        v16 = *(v11 - 1);
        v15 = (v11 - 4);
        v61 = (v14 >> 2);
        if (v14 >> 2 != v16)
        {
          dmlc::LogCheckFormat<unsigned int,unsigned long>(v15, &v61);
        }

        if (*(*(a1 + 1) + 24) == -1)
        {
          v26 = *a2;
          v61 = ((*(a3 + 56) - *(a3 + 48)) >> 2);
          LODWORD(v77) = 2;
          if (v61 < 2)
          {
            dmlc::LogCheckFormat<unsigned long,int>(&v61, &v77);
          }

          v27 = *v26;
          v70[0] = (v26[1] - *v26) >> 2;
          v70[1] = v27;
          v28 = *(a3 + 32);
          v29 = **(a3 + 24);
          v30 = *(*(a3 + 24) + 8) == v29;
          v65 = (*(*(a3 + 24) + 8) - v29) >> 2;
          v66 = v29;
          v69 = -1;
          v31 = *(a3 + 48);
          v32 = *(a3 + 56);
          v33 = *(a3 + 40);
          v63 = v28;
          v64 = v33;
          v61 = v33;
          v62 = 1;
          v34 = v33 * v28;
          if (v30)
          {
            v34 = 0;
          }

          v67 = v29;
          v68 = v34;
          v35 = *(a3 + 72);
          v37 = *v35;
          v36 = v35[1];
          v60 = 0;
          v83.i64[0] = 0;
          std::vector<double>::vector[abi:ne200100](&__p, 1uLL, v83.i64);
          v38 = (v32 - v31) >> 2;
          v83.i64[0] = 0;
          v83.i64[1] = 850045863;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0;
          v39 = (v38 - 1);
          if (v38 != 1)
          {
            v40 = 0;
            do
            {
              if (v36 == v37)
              {
                v41 = 1.0;
              }

              else
              {
                if ((v36 - v37) >> 2 <= v40)
                {
                  goto LABEL_72;
                }

                v41 = *(v37 + 4 * v40);
              }

              xgboost::common::Span<float,18446744073709551615ul>::subspan(v70, *(*(a3 + 48) + 4 * v40), (*(*(a3 + 48) + 4 * v40 + 4) - *(*(a3 + 48) + 4 * v40)), v82);
              xgboost::linalg::TensorView<float const,2>::Slice<xgboost::linalg::detail::RangeTag<unsigned int>>(&v77, &v61, *(*(a3 + 48) + 4 * v40), *(*(a3 + 48) + 4 * v40 + 4));
              if (*(&v80 + 1) >= 3uLL)
              {
                v76[0] = v82[0];
                v76[1] = v82[1];
                v71 = v77;
                v72 = v78;
                v73 = v79;
                v74 = v80;
                v75 = v81;
                v42 = xgboost::metric::GroupRankingROC(v76, &v71, v41);
              }

              else
              {
                atomic_fetch_add(&v60, 1u);
                v42 = 0.0;
              }

              *__p = v42 + *__p;
              ++v40;
            }

            while (v39 != v40);
          }

          dmlc::OMPException::Rethrow(&v83);
          std::mutex::~mutex(&v83.u64[1]);
          std::exception_ptr::~exception_ptr(&v83);
          v43 = __p;
          if (__p == v59)
          {
            v17 = 0.0;
          }

          else
          {
            v9 = 0.0;
            do
            {
              v44 = *v43++;
              v10.n128_f64[0] = v44;
              v9 = v9 + v44;
            }

            while (v43 != v59);
            v17 = v9;
          }

          v47 = atomic_load(&v60);
          if (__p)
          {
            v59 = __p;
            operator delete(__p);
          }

          v18 = v39 - v47;
        }

        else
        {
          xgboost::metric::GPURankingAUC();
          v17 = 0.0;
          v18 = 0;
        }

        v57 = v17;
        v11 = *(a3 + 56);
      }

      else
      {
        v18 = 0;
      }

      if (((v11 - *(a3 + 48)) >> 2) - 1 != v18)
      {
        xgboost::metric::InvalidGroupAUC(v11, *&v9, v10);
      }

      *v83.i64 = v57;
      *&v83.i64[1] = v18;
      v48 = rabit::engine::GetEngine(v11, v7, v8);
      (*(*v48 + 8))(v48, &v83, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
      if (*&v83.i64[1])
      {
        v57 = *v83.i64 / *&v83.i64[1];
        LODWORD(__p) = 1;
        v45.n128_u64[0] = 1.0;
        if (v57 > 1.0)
        {
          dmlc::LogCheckFormat<double,int>(&v61, &v57, &__p);
        }

        LODWORD(v46) = LODWORD(v57);
      }

      else
      {
        v57 = NAN;
        LODWORD(v46) = 0;
      }
    }

    dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(*&v46, v45);
  }

  else
  {
    v57 = NAN;
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(*&v9, v10) + 4) > 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v61, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/auc.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&v83, &v61, 330, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v83, "Dataset is empty, or contains only positive or negative samples.", 64);
      xgboost::ConsoleLogger::~ConsoleLogger(&v83, v52, v53);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v61);
      }
    }
  }
}

void sub_274D71C44()
{
  std::mutex::~mutex(&v3);
  std::exception_ptr::~exception_ptr(&v2);
  if (!v1)
  {
    _Unwind_Resume(v0);
  }

  JUMPOUT(0x274D71D60);
}

void sub_274D71CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a17);
  v47 = a47;
  a47 = 0;
  if (v47)
  {
    JUMPOUT(0x274D71D84);
  }

  JUMPOUT(0x274D71DA0);
}

void sub_274D71CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D71CE8);
}

void sub_274D71CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    JUMPOUT(0x274D71D84);
  }

  _Unwind_Resume(v17);
}

void sub_274D71D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a17);
  v47 = a47;
  a47 = 0;
  if (v47)
  {
    JUMPOUT(0x274D71D84);
  }

  JUMPOUT(0x274D71DA0);
}

void sub_274D71D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D71D2CLL);
}

void sub_274D71D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float s0_0, __n128 q1_0, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::locale a50)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a50, s0_0, q1_0);
  if (a22 < 0)
  {
    JUMPOUT(0x274D71D60);
  }

  _Unwind_Resume(v52);
}

void sub_274D71D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D71D74);
}

void sub_274D71D8C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(v2);
}

void xgboost::metric::InvalidGroupAUC(xgboost::metric *this, float a2, __n128 a3)
{
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a2, a3) + 4) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/auc.h");
    xgboost::ConsoleLogger::ConsoleLogger(v14, __p, 103, 2);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Invalid group with less than 3 samples is found on worker ", 58);
    Engine = rabit::engine::GetEngine(v3, v4, v5);
    v7 = (*(*Engine + 64))(Engine);
    v8 = MEMORY[0x277C68E20](v3, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ".  Calculating AUC value requires at ", 37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "least 2 pairs of samples.", 25);
    xgboost::ConsoleLogger::~ConsoleLogger(v14, v10, v11);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_274D71E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::linalg::TensorView<float const,2>::Slice<xgboost::linalg::detail::RangeTag<unsigned int>>(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a2[2] < a4)
  {
    __assert_rtn("MakeSliceDim", "linalg.h", 274, "static_cast<decltype(shape_[old_dim])>(range.end) <= shape_[old_dim]");
  }

  v6 = a4 - a3;
  v7 = *a2;
  v8 = a2 + 4;
  if (a2[4])
  {
    v9 = *a2 * a3;
  }

  else
  {
    v9 = 0;
  }

  result = xgboost::common::Span<float,18446744073709551615ul>::subspan(v8, v9, 0xFFFFFFFFFFFFFFFFLL, v15);
  v11 = *(a2 + 16);
  v12 = v15[0];
  v13 = v15[1];
  if (v15[0])
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v6;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v11;
  return result;
}

void dmlc::LogCheckFormat<double,int>(void *a1, double *a2, unsigned int *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E00](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E20](v7, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274D72128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

double xgboost::metric::MultiClassOVR<std::tuple<double,double,double> (&)(xgboost::common::Span<float const,18446744073709551615ul>,xgboost::linalg::TensorView<float const,1>,xgboost::common::OptionalWeights)>(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, void (*a5)(uint64_t *, void *, void *))
{
  v79 = *MEMORY[0x277D85DE8];
  v60 = a3;
  LODWORD(v56[0]) = 0;
  if (!a3)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v60, v56);
  }

  v8 = a2[3];
  v10 = *v8;
  v9 = v8[1];
  v11 = a2[5];
  if (a2[4])
  {
    v56[0] = a2[5];
    LODWORD(v63[0]) = 1;
    if (v11 != 1)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v56, v63);
    }
  }

  v77.__ptr_ = 0;
  v12 = std::vector<double>::vector[abi:ne200100](&__p, 3 * v60, &v77);
  v15 = __p;
  v55 = v60;
  if (v59 != __p && !__p || (v16 = (v59 - __p) >> 3, v17 = v59 != __p, v51 = v16 - v17, v16 < v17) || !__p && v16 != v17 || v16 < 2 * (v59 != __p) || (v18 = 2 * (v59 != __p), !__p) && v16 != v18)
  {
LABEL_59:
    std::terminate();
  }

  v19 = __p + 8 * v17;
  v50 = v16 - v18;
  v20 = __p + 16 * (v59 != __p);
  v21 = a1;
  v22 = *(a2[9] + 8);
  v54 = *a2[9];
  v23 = *v21;
  v24 = v21[1];
  v57 = -1;
  v25 = *a2;
  v56[4] = v23;
  v56[5] = v24;
  v56[2] = v25;
  v56[3] = v60;
  v56[0] = v60;
  v56[1] = 1;
  v26 = v25 * v60;
  if (!v23)
  {
    v26 = 0;
  }

  v56[6] = v24;
  v56[7] = v26;
  if (*(a2[3] + 8) != *a2[3])
  {
    LODWORD(v63[0]) = a4;
    LODWORD(v74) = 1;
    if (a4 < 1)
    {
      dmlc::LogCheckFormat<int,int>(v63, &v74);
    }

    v77.__ptr_ = 0;
    v78.__m_.__sig = 850045863;
    memset(v78.__m_.__opaque, 0, sizeof(v78.__m_.__opaque));
    if (v60)
    {
      v27 = 0;
      v28 = (v9 - v10) >> 2;
      v52 = (v22 - v54) >> 2;
      if (v51 >= v50)
      {
        v29 = v50;
      }

      else
      {
        v29 = v51;
      }

      do
      {
        v76 = v27;
        std::vector<float>::vector[abi:ne200100](&v74, (*(a2[3] + 8) - *a2[3]) >> 2);
        std::vector<float>::vector[abi:ne200100](&v72, (*(a2[3] + 8) - *a2[3]) >> 2);
        v71 = 0;
        if (v75 == v74)
        {
          v69 = 0;
          v70 = v74;
          ptr = v72.__ptr_;
          v35 = v73;
          if (!v72.__ptr_ && v73)
          {
            goto LABEL_59;
          }
        }

        else
        {
          do
          {
            v30 = xgboost::linalg::TensorView<float const,2>::operator()<unsigned long &,unsigned long &>(v56, &v71, &v76);
            v31 = v71;
            v32 = v74;
            v74[v71] = *v30;
            if (v31 * v11 >= v28)
            {
              __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
            }

            if (*(v10 + 4 * v31 * v11) == v76)
            {
              v33 = 1.0;
            }

            else
            {
              v33 = 0.0;
            }

            ptr = v72.__ptr_;
            *(v72.__ptr_ + v31) = v33;
            v71 = v31 + 1;
          }

          while (v31 + 1 < ((v75 - v32) >> 2));
          v69 = (v75 - v32) >> 2;
          v70 = v32;
          v35 = v73;
        }

        v64 = (v35 - ptr) >> 2;
        v65 = ptr;
        v66 = ptr;
        v67 = v64;
        v68 = -1;
        v63[0] = 1;
        v63[1] = v64;
        v61[0] = v52;
        v61[1] = v54;
        v62 = 1065353216;
        a5(&v69, v63, v61);
        v39 = 3 * v76;
        if (3 * v76 >= v29)
        {
          __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
        }

        *&v19[24 * v76] = v37;
        *&v20[8 * v39] = v38;
        if (v39 >= v16)
        {
          __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
        }

        v15[v39] = v36 * *&v19[8 * v39];
        if (v72.__ptr_)
        {
          v73 = v72.__ptr_;
          operator delete(v72.__ptr_);
        }

        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        ++v27;
      }

      while (v27 != v55);
    }

    dmlc::OMPException::Rethrow(&v77);
    std::mutex::~mutex(&v78);
    std::exception_ptr::~exception_ptr(&v77);
  }

  Engine = rabit::engine::GetEngine(v12, v13, v14);
  (*(*Engine + 8))(Engine, v15, 8, v16, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  v41 = v60;
  if (v60)
  {
    v42 = 0;
    v43 = v51;
    if (v50 < v51)
    {
      v43 = v50;
    }

    v44 = 0.0;
    v45 = 0.0;
    do
    {
      if (v42 >= v16)
      {
        goto LABEL_58;
      }

      v46 = v15[v42];
      if (v46 == 0.0)
      {
        goto LABEL_52;
      }

      if (v42 >= v43)
      {
LABEL_58:
        __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
      }

      v47 = *&v19[8 * v42];
      v45 = v45 + *&v20[8 * v42] / v46 * v47;
      v44 = v44 + v47;
      v42 += 3;
      --v41;
    }

    while (v41);
    v48 = NAN;
    if (v44 != 0.0)
    {
      v48 = v45 / v44;
    }
  }

  else
  {
LABEL_52:
    v48 = NAN;
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  return v48;
}

void sub_274D72914()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 176));
  std::exception_ptr::~exception_ptr((v0 - 184));
  JUMPOUT(0x274D729F0);
}

void sub_274D72920()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 176));
  std::exception_ptr::~exception_ptr((v0 - 184));
  JUMPOUT(0x274D729F0);
}

void sub_274D7292C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  sub_274D729DC();
}

void sub_274D72974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D72980);
}

void sub_274D72998(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  sub_274D729DC();
}

void sub_274D729A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  v17 = *(v16 - 184);
  *(v16 - 184) = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v16 - 184, v17);
  }

  JUMPOUT(0x274D72A00);
}

void sub_274D729B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D729C0);
}

void sub_274D729D8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  sub_274D729DC();
}

void dmlc::LogCheckFormat<double,double>(double *a1, double *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E00](v5, *a1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E00](v7, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274D72BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::metric::EvalPRAUC::~EvalPRAUC(xgboost::metric::EvalPRAUC *this)
{
  *this = &unk_2883E33D8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2883E33D8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::metric::EvalAUC<xgboost::metric::EvalPRAUC>::Eval(rabit::engine *a1, void ***a2, uint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v63 = 0.0;
  v61 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  v62 = ((*a2)[1] - **a2) >> 2;
  Engine = rabit::engine::GetEngine(a1, a2, a3);
  (*(*Engine + 8))(Engine, &v61, 8, 2, rabit::op::Reducer<rabit::op::Max,unsigned long>, 0, 0);
  if (v61)
  {
    v12 = *(a3 + 48);
    v11 = *(a3 + 56);
    if (v12 == v11)
    {
      if (v61 == v62 || v62 % v61)
      {
        v19 = **a2;
        v20 = 0.0;
        v21 = (*a2)[1] - v19;
        if (v21)
        {
          v22 = **(a3 + 24);
          v23 = 0.0;
          v24 = 0.0;
          v25 = *(*(a3 + 24) + 8) - v22;
          if (v25)
          {
            if (*(*(a1 + 1) + 24) == -1)
            {
              *&v85 = v21 >> 2;
              *(&v85 + 1) = v19;
              if (!v22)
              {
LABEL_77:
                std::terminate();
              }

              v55 = *(a3 + 32);
              *&v91[0].__ptr_ = vextq_s8(v55, v55, 8uLL);
              *&v92 = v25 >> 2;
              *(&v92 + 1) = v22;
              *&v93 = v22;
              *(&v93 + 1) = v55.i64[0];
              LODWORD(v94) = -1;
              v56 = **(a3 + 72);
              ptr = ((*(*(a3 + 72) + 8) - v56) >> 2);
              v68 = v56;
              LODWORD(v69) = 1065353216;
              v23 = xgboost::metric::BinaryPRAUC(&v85, v91, &ptr);
            }

            else
            {
              xgboost::metric::GPUBinaryPRAUC();
              v23 = 0.0;
              v24 = 0.0;
              v20 = 0.0;
            }

            v63 = v20;
          }
        }

        else
        {
          v23 = 0.0;
          v24 = 0.0;
        }

        *&ptr = v23 * v24;
        v91[0] = *&v20;
        *&v91[1].__ptr_ = v23 * v24;
        v57 = rabit::engine::GetEngine(v11, v7, v8);
        (*(*v57 + 8))(v57, v91, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
        v30.n128_u64[0] = v91[1];
        v63 = *&v91[0].__ptr_;
        ptr = v91[1].__ptr_;
        if (*&v91[1].__ptr_ <= 0.0)
        {
          v31 = NAN;
        }

        else
        {
          if (*&v91[0].__ptr_ > *&v91[1].__ptr_)
          {
            dmlc::LogCheckFormat<double,double>(&v63, &ptr);
          }

          v30.n128_u64[0] = ptr;
          v31 = v63 / *&ptr;
        }
      }

      else
      {
        ptr = (v62 / v61);
        LODWORD(v85) = 0;
        if (v61 > v62)
        {
          dmlc::LogCheckFormat<unsigned long,int>(&ptr, &v85);
        }

        if (*(*(a1 + 1) + 24) == -1)
        {
          v60 = **a2;
          v91[0].__ptr_ = (((*a2)[1] - v60) >> 2);
          v91[1].__ptr_ = v60;
          v31 = xgboost::metric::MultiClassOVR<std::tuple<double,double,double> (&)(xgboost::common::Span<float const,18446744073709551615ul>,xgboost::linalg::TensorView<float const,1>,xgboost::common::OptionalWeights)>(v91, a3, ptr, 1, xgboost::metric::BinaryPRAUC);
        }

        else
        {
          xgboost::metric::GPUMultiClassPRAUC();
          v31 = 0.0;
        }
      }

      v63 = v31;
    }

    else
    {
      v13 = *(*(a3 + 72) + 8) - **(a3 + 72);
      if (v13)
      {
        ptr = (v13 >> 2);
        *&v85 = ((v11 - v12) >> 2) - 1;
        if (v13 >> 2 != v85)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&ptr, &v85);
        }

        v11 = *(a3 + 56);
      }

      v14 = *(*(a3 + 24) + 8) - **(a3 + 24);
      if (v14)
      {
        v16 = *(v11 - 1);
        v15 = (v11 - 4);
        ptr = (v14 >> 2);
        if (v14 >> 2 != v16)
        {
          dmlc::LogCheckFormat<unsigned int,unsigned long>(v15, &ptr);
        }

        if (*(*(a1 + 1) + 24) == -1)
        {
          v26 = **(a3 + 24);
          v27 = *(*(a3 + 24) + 8) - v26;
          if (v27)
          {
            v28 = v27 >> 2;
            while (1)
            {
              if (!v28)
              {
                goto LABEL_77;
              }

              if (*v26 < 0.0 || *v26 > 1.0)
              {
                break;
              }

              ++v26;
              if (!--v28)
              {
                goto LABEL_36;
              }
            }

            Entry = dmlc::LogMessageFatal::GetEntry(v91);
            dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/auc.h", 113);
            v33 = dmlc::LogMessageFatal::GetEntry(v91);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "PR-AUC supports only binary relevance for learning to rank.", 59);
            dmlc::LogMessageFatal::~LogMessageFatal(v91);
          }

LABEL_36:
          v34 = *a2;
          ptr = ((*(a3 + 56) - *(a3 + 48)) >> 2);
          LODWORD(v85) = 2;
          if (ptr < 2)
          {
            dmlc::LogCheckFormat<unsigned long,int>(&ptr, &v85);
          }

          v35 = *v34;
          v76[0] = (v34[1] - *v34) >> 2;
          v76[1] = v35;
          v36 = *(a3 + 32);
          v37 = **(a3 + 24);
          v38 = *(*(a3 + 24) + 8) == v37;
          v71 = (*(*(a3 + 24) + 8) - v37) >> 2;
          v72 = v37;
          v75 = -1;
          v39 = *(a3 + 48);
          v40 = *(a3 + 56);
          v41 = *(a3 + 40);
          v69 = v36;
          v70 = v41;
          ptr = v41;
          v68 = 1;
          v42 = v41 * v36;
          if (v38)
          {
            v42 = 0;
          }

          v73 = v37;
          v74 = v42;
          v43 = *(a3 + 72);
          v45 = *v43;
          v44 = v43[1];
          v66 = 0;
          v91[0].__ptr_ = 0;
          std::vector<double>::vector[abi:ne200100](&__p, 1uLL, v91);
          v46 = (v40 - v39) >> 2;
          v91[0].__ptr_ = 0;
          v91[1].__ptr_ = 850045863;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0;
          v47 = (v46 - 1);
          if (v46 != 1)
          {
            v48 = 0;
            do
            {
              if (v44 == v45)
              {
                v49 = 1.0;
              }

              else
              {
                if ((v44 - v45) >> 2 <= v48)
                {
                  goto LABEL_77;
                }

                v49 = *(v45 + 4 * v48);
              }

              xgboost::common::Span<float,18446744073709551615ul>::subspan(v76, *(*(a3 + 48) + 4 * v48), (*(*(a3 + 48) + 4 * v48 + 4) - *(*(a3 + 48) + 4 * v48)), v90);
              xgboost::linalg::TensorView<float const,2>::Slice<xgboost::linalg::detail::RangeTag<unsigned int>>(&v85, &ptr, *(*(a3 + 48) + 4 * v48), *(*(a3 + 48) + 4 * v48 + 4));
              v84[0] = v90[0];
              v84[1] = v90[1];
              v79 = v85;
              v80 = v86;
              v81 = v87;
              v82 = v88;
              v83 = v89;
              v77[0] = 0;
              v77[1] = 0;
              v78 = v49;
              xgboost::metric::BinaryPRAUC(v84, &v79, v77);
              *__p = v50 + *__p;
              ++v48;
            }

            while (v47 != v48);
          }

          dmlc::OMPException::Rethrow(v91);
          std::mutex::~mutex(&v91[1]);
          std::exception_ptr::~exception_ptr(v91);
          v51 = __p;
          if (__p == v65)
          {
            v17 = 0.0;
          }

          else
          {
            v9 = 0.0;
            do
            {
              v52 = *v51++;
              v10.n128_f64[0] = v52;
              v9 = v9 + v52;
            }

            while (v51 != v65);
            v17 = v9;
          }

          v53 = atomic_load(&v66);
          if (__p)
          {
            v65 = __p;
            operator delete(__p);
          }

          v18 = v47 - v53;
        }

        else
        {
          xgboost::metric::GPURankingPRAUC();
          v17 = 0.0;
          v18 = 0;
        }

        v63 = v17;
        v11 = *(a3 + 56);
      }

      else
      {
        v18 = 0;
      }

      if (((v11 - *(a3 + 48)) >> 2) - 1 != v18)
      {
        xgboost::metric::InvalidGroupAUC(v11, *&v9, v10);
      }

      v91[0] = *&v63;
      *&v91[1].__ptr_ = v18;
      v54 = rabit::engine::GetEngine(v11, v7, v8);
      (*(*v54 + 8))(v54, v91, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
      if (*&v91[1].__ptr_)
      {
        v63 = *&v91[0].__ptr_ / *&v91[1].__ptr_;
        LODWORD(__p) = 1;
        v30.n128_u64[0] = 1.0;
        if (v63 > 1.0)
        {
          dmlc::LogCheckFormat<double,int>(&ptr, &v63, &__p);
        }

        LODWORD(v31) = LODWORD(v63);
      }

      else
      {
        v63 = NAN;
        LODWORD(v31) = 0;
      }
    }

    dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(*&v31, v30);
  }

  else
  {
    v63 = NAN;
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(*&v9, v10) + 4) > 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&ptr, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/auc.cc");
      xgboost::ConsoleLogger::ConsoleLogger(v91, &ptr, 330, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Dataset is empty, or contains only positive or negative samples.", 64);
      xgboost::ConsoleLogger::~ConsoleLogger(v91, v58, v59);
      if (SHIBYTE(v69) < 0)
      {
        operator delete(ptr);
      }
    }
  }
}

void sub_274D73964()
{
  std::mutex::~mutex((v0 + 8));
  std::exception_ptr::~exception_ptr(&v3);
  if (!v2)
  {
    _Unwind_Resume(v1);
  }

  JUMPOUT(0x274D73A78);
}

void sub_274D739E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a18);
  v51 = a51;
  a51 = 0;
  if (v51)
  {
    JUMPOUT(0x274D73A9CLL);
  }

  JUMPOUT(0x274D73AB8);
}

void sub_274D739F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D73A00);
}

void sub_274D73A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    JUMPOUT(0x274D73A9CLL);
  }

  _Unwind_Resume(v18);
}

void sub_274D73A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a18);
  v51 = a51;
  a51 = 0;
  if (v51)
  {
    JUMPOUT(0x274D73A9CLL);
  }

  JUMPOUT(0x274D73AB8);
}

void sub_274D73A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D73A44);
}

void sub_274D73A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float s0_0, __n128 q1_0, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::locale a54)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a54, s0_0, q1_0);
  if (a23 < 0)
  {
    JUMPOUT(0x274D73A78);
  }

  _Unwind_Resume(v56);
}

void sub_274D73A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D73A8CLL);
}

void sub_274D73AA4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(v2);
}

uint64_t dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get()
{
  v1 = &dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get(void)::inst;
  if ((*v0 & 1) == 0)
  {
    *dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get(void)::inst) = 5489;
    do
    {
      v5 = v4(v3);
      *(v5 + 4 * v7) = v6;
    }

    while (v7 != 623);
    *(v4(v3) + 2496) = 0;
    *v9(v8) = 1;
  }

  return (*v1)(v1);
}

void xgboost::FeatureInteractionConstraintHost::Configure(std::string *this, const xgboost::tree::TrainParam *a2, int a3)
{
  if (*(a2 + 127) < 0)
  {
    if (*(a2 + 14))
    {
      goto LABEL_3;
    }

LABEL_7:
    this[4].__r_.__value_.__s.__data_[4] = 0;
    return;
  }

  if (!*(a2 + 127))
  {
    goto LABEL_7;
  }

LABEL_3:
  this[4].__r_.__value_.__s.__data_[4] = 1;
  std::string::operator=(this + 3, (a2 + 104));
  LODWORD(this[4].__r_.__value_.__l.__data_) = a3;

  xgboost::FeatureInteractionConstraintHost::Reset(this);
}

void xgboost::FeatureInteractionConstraintHost::Reset(uint64_t **this)
{
  if (*(this + 100) == 1)
  {
    memset(v1, 0, 24);
    xgboost::ParseInteractionConstraint(this + 9, v1);
  }
}

void sub_274D73E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, ...)
{
  va_start(va, a12);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  a12 = &a9;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unordered_set<unsigned int>>::resize(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
    if (a2 < v7)
    {
      v14 = v4 + 40 * a2;
      while (v5 != v14)
      {
        v5 -= 40;
        result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v5);
      }

      v3[1] = v14;
    }
  }

  else
  {
    v10 = result[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v5) >> 3) < v8)
    {
      if (a2 <= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v4) >> 3);
        v12 = 2 * v11;
        if (2 * v11 <= a2)
        {
          v12 = a2;
        }

        if (v11 >= 0x333333333333333)
        {
          v13 = 0x666666666666666;
        }

        else
        {
          v13 = v12;
        }

        v17 = result;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<unsigned int>>>(result, v13);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v5 + 40 * v8;
    v16 = 40 * a2 - 8 * (v6 >> 3);
    do
    {
      result = std::unordered_set<unsigned int>::unordered_set(v5, a3);
      v5 += 40;
      v16 -= 40;
    }

    while (v16);
    v3[1] = v15;
  }

  return result;
}

void sub_274D7416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::unordered_set<unsigned int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::FeatureInteractionConstraintHost::SplitImpl(xgboost::FeatureInteractionConstraintHost *this, int a2, unsigned int a3, int a4, int a5)
{
  v34 = a3;
  if (a4 <= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = a4;
  }

  v9 = (this + 48);
  std::unordered_set<unsigned int>::unordered_set(v31, *(this + 6) + 40 * a2);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v31, &v34, &v34);
  v10 = v8 + 1;
  v12 = *(this + 6);
  v11 = *(this + 7);
  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 3);
  v14 = v8 + 1 - v13;
  if (v8 + 1 <= v13)
  {
    if (v10 < v13)
    {
      v19 = v12 + 40 * (v8 + 1);
      while (v11 != v19)
      {
        v11 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v11 - 40);
      }

      *(this + 7) = v19;
    }
  }

  else
  {
    v15 = *(this + 8);
    if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v11) >> 3) < v14)
    {
      if (v8 > -2)
      {
        v16 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v12) >> 3);
        v17 = 2 * v16;
        if (2 * v16 <= v10)
        {
          v17 = v10;
        }

        if (v16 >= 0x333333333333333)
        {
          v18 = 0x666666666666666;
        }

        else
        {
          v18 = v17;
        }

        v38 = v9;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<unsigned int>>>(v9, v18);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v20 = v11 + 40 * v14;
    do
    {
      *v11 = 0uLL;
      *(v11 + 16) = 0uLL;
      *(v11 + 32) = 1065353216;
      v11 += 40;
    }

    while (v11 != v20);
    *(this + 7) = v20;
  }

  v21 = *v9;
  v22 = *v9 + 40 * a4;
  if (v22 != v31)
  {
    *(v22 + 32) = v33;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(v22, v32);
    v21 = *v9;
  }

  v23 = v21 + 40 * a5;
  if (v23 != v31)
  {
    *(v23 + 32) = v33;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(v23, v32);
  }

  v35 = 0;
  v36 = v8 + 1;
  if (v8 == -1)
  {
    dmlc::LogCheckFormat<int,int>(&v36, &v35);
  }

  memset(v37, 0, sizeof(v37));
  LODWORD(v38) = 1065353216;
  std::vector<std::unordered_set<unsigned int>>::resize(this + 3, v10, v37);
  v24 = a5;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v37);
  for (i = v32; i; i = *i)
  {
    LODWORD(v37[0]) = *(i + 4);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((*(this + 3) + 40 * a4), v37, v37);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((*(this + 3) + 40 * v24), v37, v37);
  }

  v26 = *this;
  v27 = *(this + 1);
  if (*this != v27)
  {
    do
    {
      v28 = v32;
      if (v32)
      {
        while (1)
        {
          LODWORD(v37[0]) = *(v28 + 4);
          if (!std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v26, v37))
          {
            break;
          }

          v28 = *v28;
          if (!v28)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
LABEL_32:
        for (j = v26[2]; j; j = *j)
        {
          LODWORD(v37[0]) = *(j + 4);
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((*(this + 3) + 40 * a4), v37, v37);
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((*(this + 3) + 40 * v24), v37, v37);
        }
      }

      v26 += 5;
    }

    while (v26 != v27);
  }

  return std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v31);
}

void sub_274D7455C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

unint64_t std::unordered_set<unsigned int>::unordered_set<std::__wrap_iter<unsigned int const*>>(unint64_t a1, unsigned int *a2, unsigned int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, v5, v5);
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::unordered_set<unsigned int>>,std::unordered_set<unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = 0;
    do
    {
      v5 = a3 + v4;
      v6 = *(result + v4);
      *(result + v4) = 0;
      *v5 = v6;
      v7 = *(result + v4 + 16);
      *(v5 + 8) = *(result + v4 + 8);
      *(result + v4 + 8) = 0;
      *(a3 + v4 + 16) = v7;
      v8 = *(result + v4 + 24);
      *(v5 + 24) = v8;
      *(v5 + 32) = *(result + v4 + 32);
      if (v8)
      {
        v9 = *(v7 + 8);
        v10 = *(v5 + 8);
        if ((v10 & (v10 - 1)) != 0)
        {
          if (v9 >= v10)
          {
            v9 %= v10;
          }
        }

        else
        {
          v9 &= v10 - 1;
        }

        *(v6 + 8 * v9) = a3 + v4 + 16;
        *(result + v4 + 16) = 0;
        *(result + v4 + 24) = 0;
      }

      v4 += 40;
    }

    while (result + v4 != a2);
    do
    {
      result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(result) + 40;
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unordered_set<unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(void *a1, uint64_t ***a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = *(a2 + 4);
      *(v6 + 4) = v7;
      v8 = *v6;
      v6[1] = v7;
      inserted = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_prepare(a1, v7, v6 + 4);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_perform(a1, v6, inserted);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_274D74850(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = *(v18 + 8);
    if (v16.u32[0] > 1uLL)
    {
      v22 = *(v18 + 8);
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 16) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

float xgboost::predictor::PredValue(unint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = a4;
  v12 = *a1;
  if (*a1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *a1;
    while (v15 < v16)
    {
      v17 = a1[1];
      v18 = *(v17 + v13);
      if (v18 < (*(a5 + 8) - *a5) >> 2)
      {
        *(*a5 + 4 * v18) = *(v17 + v13 + 4);
        ++v14;
        v16 = *a1;
      }

      if (v15 == v16)
      {
        break;
      }

      ++v15;
      v13 += 8;
      if (v12 == v15)
      {
        goto LABEL_10;
      }
    }

LABEL_27:
    std::terminate();
  }

  v16 = 0;
  v14 = 0;
LABEL_10:
  *(a5 + 24) = v14 != (*(a5 + 8) - *a5) >> 2;
  v19 = 0.0;
  if (a6 < a7)
  {
    v20 = a7;
    v21 = a6;
    do
    {
      if (*(*a3 + 4 * v21) == v8)
      {
        v22 = *(*a2 + 8 * v21);
        v23 = v22[32];
        v24 = v22[33];
        v25 = v22[29];
        v35[0] = v22[30] - v25;
        v35[1] = v25;
        v26 = v22[35];
        v35[4] = (v22[36] - v26) >> 4;
        v35[5] = v26;
        v27 = v24 - v23;
        v35[2] = v27 >> 2;
        v35[3] = v23;
        if (v27)
        {
          Leaf = xgboost::predictor::GetLeafIndex<true,true>(v22, a5, v35);
          v29 = *(*(*a2 + 8 * v21) + 160);
        }

        else
        {
          v29 = v22[20];
          Leaf = xgboost::predictor::GetLeafIndex<true,false>(v29, *a5);
        }

        v19 = v19 + *(v29 + 20 * Leaf + 16);
      }

      ++v21;
    }

    while (v20 != v21);
    v16 = *a1;
  }

  if (v16)
  {
    v30 = 0;
    v31 = 0;
    v32 = v16;
    while (v31 < v32)
    {
      v33 = *(a1[1] + v30);
      if (v33 < (*(a5 + 8) - *a5) >> 2)
      {
        *(*a5 + 4 * v33) = -1;
        v32 = *a1;
      }

      if (v31 == v32)
      {
        break;
      }

      ++v31;
      v30 += 8;
      if (v16 == v31)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a5 + 24) = 1;
  return v19;
}

uint64_t xgboost::predictor::GetLeafIndex<true,true>(uint64_t a1, uint64_t Next, void *a3)
{
  v4 = *(a1 + 160);
  if (*(v4 + 4) == -1)
  {
    return 0;
  }

  v6 = Next;
  LODWORD(Next) = 0;
  do
  {
    v7 = *(*v6 + 4 * (*(v4 + 12) & 0x7FFFFFFF));
    Next = xgboost::predictor::GetNextNode<true,true>(v4, Next, LODWORD(v7) == -1, a3, v7);
    v4 = *(a1 + 160) + 20 * Next;
  }

  while (*(v4 + 4) != -1);
  return Next;
}

uint64_t xgboost::predictor::GetLeafIndex<true,false>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = a1;
  do
  {
    v4 = *(v3 + 12);
    v5 = *(a2 + 4 * (v4 & 0x7FFFFFFF));
    if (v5 == NAN)
    {
      if (v4 >= 0)
      {
        v7 = 8;
      }

      else
      {
        v7 = 4;
      }

      v6 = *(v3 + v7);
    }

    else if (*(v3 + 16) > v5)
    {
      v6 = v2;
    }

    else
    {
      v6 = v2 + 1;
    }

    v3 = a1 + 20 * v6;
    v2 = *(v3 + 4);
  }

  while (v2 != -1);
  return v6;
}

uint64_t xgboost::predictor::PredictByAllTrees(uint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v38 = result;
  if (a2 < a3)
  {
    do
    {
      v11 = *(*(v38 + 224) + 4 * a2);
      v39 = a2;
      v12 = *(*(v38 + 176) + 8 * a2);
      v13 = v12[29];
      v43 = v12[30] - v13;
      v44 = v13;
      v15 = v12[32];
      v14 = v12[33];
      v16 = v12[35];
      v46 = (v12[36] - v16) >> 4;
      v47 = v16;
      v17 = v14 - v15;
      v45[0] = v17 >> 2;
      v45[1] = v15;
      if (v17)
      {
        if (a9)
        {
          v18 = 0;
          while (1)
          {
            v19 = *a7 + 32 * v18 + 32 * a8;
            if (*(v19 + 24) != 1)
            {
              break;
            }

            result = xgboost::predictor::GetLeafIndex<true,true>(v12, *a7 + 32 * v18 + 32 * a8, &v43);
            v20 = v12[20];
LABEL_34:
            v28 = *a4 + 4 * (v18 + a5) * a6;
            *(v28 + 4 * v11) = *(v20 + 20 * result + 16) + *(v28 + 4 * v11);
            if (++v18 == a9)
            {
              goto LABEL_49;
            }
          }

          v20 = v12[20];
          v21 = *(v20 + 4);
          if (v21 == -1)
          {
            result = 0;
            goto LABEL_34;
          }

          LODWORD(result) = 0;
          v22 = v12[20];
          while (2)
          {
            v23 = *(*v19 + 4 * (*(v22 + 12) & 0x7FFFFFFF));
            if (!v43)
            {
              goto LABEL_25;
            }

            if (v43 <= result)
            {
              goto LABEL_51;
            }

            if (*(v44 + result) == 1)
            {
              if (v46 <= result)
              {
                goto LABEL_51;
              }

              xgboost::common::Span<float,18446744073709551615ul>::subspan(v45, *(v47 + 16 * result), *(v47 + 16 * result + 8), v48);
              if (v23 >= 0.0 && v23 < 16777000.0 && v23 < (32 * v48[0]))
              {
                if (v48[0] > v23 >> 5)
                {
                  v26 = v23 >> 5;
                  if (v26 >= v48[0])
                  {
LABEL_51:
                    std::terminate();
                  }

                  if ((*(v48[1] + 4 * v26) >> ~v23))
                  {
                    goto LABEL_24;
                  }
                }

LABEL_29:
                v27 = 4;
              }

              else
              {
                if ((*(v22 + 12) & 0x80000000) != 0)
                {
                  goto LABEL_29;
                }

LABEL_24:
                v27 = 8;
              }

              result = *(v22 + v27);
              v20 = v12[20];
            }

            else
            {
LABEL_25:
              if (*(v22 + 16) > v23)
              {
                result = v21;
              }

              else
              {
                result = v21 + 1;
              }
            }

            v22 = v20 + 20 * result;
            v21 = *(v22 + 4);
            if (v21 == -1)
            {
              goto LABEL_34;
            }

            continue;
          }
        }
      }

      else if (a9)
      {
        v29 = 0;
        v30 = *a7 + 32 * a8;
        v31 = *a4 + 4 * v11;
        do
        {
          v32 = v30 + 32 * v29;
          v33 = *v32;
          v34 = v12[20];
          if (*(v32 + 24) == 1)
          {
            result = xgboost::predictor::GetLeafIndex<true,false>(v12[20], v33);
          }

          else
          {
            v35 = *(v34 + 4);
            if (v35 == -1)
            {
              result = 0;
            }

            else
            {
              v36 = v12[20];
              do
              {
                if (*(v36 + 16) > *(v33 + 4 * (*(v36 + 12) & 0x7FFFFFFF)))
                {
                  result = v35;
                }

                else
                {
                  result = v35 + 1;
                }

                v36 = v34 + 20 * result;
                v35 = *(v36 + 4);
              }

              while (v35 != -1);
            }
          }

          *(v31 + 4 * (v29 + a5) * a6) = *(v34 + 20 * result + 16) + *(v31 + 4 * (v29 + a5) * a6);
          ++v29;
        }

        while (v29 != a9);
      }

LABEL_49:
      a2 = v39 + 1;
    }

    while (v39 + 1 != a3);
  }

  return result;
}

void xgboost::predictor::FillNodeMeanValues(uint64_t a1, int a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 160) + 20 * a2;
  v6 = *(v5 + 4);
  if (v6 == -1)
  {
    v11 = *(v5 + 16);
  }

  else
  {
    xgboost::predictor::FillNodeMeanValues(a1, v6, a3);
    v9 = v8 * *(*(a1 + 208) + 16 * *(v5 + 4) + 4);
    xgboost::predictor::FillNodeMeanValues(a1, *(v5 + 8), a3);
    v11 = (v9 + (v10 * *(*(a1 + 208) + 16 * *(v5 + 8) + 4))) / *(*(a1 + 208) + 16 * v4 + 4);
  }

  *(*a3 + 4 * v4) = v11;
}

void xgboost::predictor::FillNodeMeanValues(uint64_t a1, std::vector<unsigned int> *this)
{
  v3 = *(a1 + 12);
  if (v3 != this->__end_ - this->__begin_)
  {
    std::vector<float>::resize(this, v3);

    xgboost::predictor::FillNodeMeanValues(a1, 0, this);
  }
}

uint64_t xgboost::predictor::GetNextNode<true,true>(uint64_t a1, int a2, int a3, void *a4, float a5)
{
  if (a3)
  {
    v6 = 8;
    if (*(a1 + 12) < 0)
    {
      v6 = 4;
    }

    return *(a1 + v6);
  }

  if (*a4)
  {
    if (*a4 <= a2)
    {
      goto LABEL_19;
    }

    if (*(a4[1] + a2) == 1)
    {
      if (a4[4] > a2)
      {
        v9 = (a4[5] + 16 * a2);
        xgboost::common::Span<float,18446744073709551615ul>::subspan(a4 + 2, *v9, v9[1], v12);
        if (a5 < 0.0 || a5 >= 16777000.0 || (32 * v12[0]) <= a5)
        {
          if ((*(a1 + 12) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }

        if (v12[0] <= a5 >> 5)
        {
          goto LABEL_21;
        }

        v10 = a5 >> 5;
        if (v10 < v12[0])
        {
          if ((*(v12[1] + 4 * v10) >> ~a5))
          {
LABEL_15:
            v6 = 8;
            return *(a1 + v6);
          }

LABEL_21:
          v6 = 4;
          return *(a1 + v6);
        }
      }

LABEL_19:
      std::terminate();
    }
  }

  v11 = *(a1 + 4);
  if (*(a1 + 16) > a5)
  {
    return v11;
  }

  else
  {
    return v11 + 1;
  }
}

uint64_t std::__function::__func<xgboost::predictor::$_0,std::allocator<xgboost::predictor::$_0>,xgboost::Predictor * ()(xgboost::GenericParameter const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::predictor::CPUPredictor::PredictBatch(xgboost::predictor::CPUPredictor *this, xgboost::DMatrix *a2, xgboost::PredictionCacheEntry *a3, const xgboost::gbm::GBTreeModel *a4, int a5, int a6)
{
  v15[13] = *MEMORY[0x277D85DE8];
  v7 = *(**a2)(a2);
  v8 = (**a2)(a2);
  if ((*(v8 + 8) * v7) <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v8 + 8) * v7;
  }

  v10 = *((**a2)(a2) + 16) / v9;
  memset(v15, 0, 24);
  if (v10 <= 0.5)
  {
    v11 = 1;
  }

  else
  {
    v11 = 64;
  }

  xgboost::predictor::CPUPredictor::InitThreadTemp(v11, v15);
  (*(*a2 + 72))(&v13, a2);
  v12[2] = v13;
  v12[3] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(v12, 0);
}

void sub_274D75E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char *a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, char a28, uint64_t a29, uint64_t a30, char a31, std::exception_ptr a32)
{
  std::mutex::~mutex((v32 + 8));
  std::exception_ptr::~exception_ptr(&a32);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  a24 = &a28;
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

BOOL xgboost::predictor::CPUPredictor::InplacePredict(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t **a5, int a6, int a7, float a8)
{
  v213 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v15 = *(*a2 + 16);
  }

  else
  {
    v15 = MEMORY[0x277D827F0];
  }

  {
    v17 = *a3;
    v16 = *(a3 + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *a2;
    v185 = v16;
    if (!*a2)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v211);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/any.h", 319);
      v20 = dmlc::LogMessageFatal::GetEntry(&v211);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Check failed: type_ != nullptr", 30);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "The any container is empty", 26);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " requested=", 11);
      v25 = strlen((0x8000000274E2467FLL & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, 0x8000000274E2467FLL & 0x7FFFFFFFFFFFFFFFLL, v25);
      dmlc::LogMessageFatal::~LogMessageFatal(&v211);
      v18 = *a2;
    }

    {
      v26 = dmlc::LogMessageFatal::GetEntry(&v211);
      dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/any.h", 322);
      v27 = dmlc::LogMessageFatal::GetEntry(&v211);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: *(type_->ptype_info) == typeid(T)", 47);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "The stored type mismatch", 24);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " stored=", 8);
      v32 = *(*(*a2 + 16) + 8);
      v33 = strlen((v32 & 0x7FFFFFFFFFFFFFFFLL));
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32 & 0x7FFFFFFFFFFFFFFFLL, v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " requested=", 11);
      v36 = strlen((0x8000000274E2467FLL & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, 0x8000000274E2467FLL & 0x7FFFFFFFFFFFFFFFLL, v36);
      dmlc::LogMessageFatal::~LogMessageFatal(&v211);
    }

    v37 = a2[1];
    v38 = a2[2];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v197 = *(v37 + 48);
    v39 = *(a4 + 8);
    v41 = *(v39 + 4);
    v40 = (v39 + 4);
    v184 = v38;
    if (v197 != v41)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v197, v40);
    }

    if (!v17)
    {
      xgboost::MetaInfo::MetaInfo(&v211);
    }

    v42 = *(v37 + 40);
    *(**v17)(v17, v40) = v42;
    v43 = (**v17)(v17);
    xgboost::Predictor::InitOutPredictions(a1, v43, a5, a4, v44);
    std::vector<xgboost::Entry>::vector[abi:ne200100](&v205, 8 * *(v37 + 48));
    v191 = *a5;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    xgboost::predictor::CPUPredictor::InitThreadTemp(64, &v202);
    v197 = v37;
    v198 = a8;
    v199 = (v206 - v205) >> 3;
    v200 = v205;
    v211.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](__p, 1uLL, &v211);
    v189 = *(*(a4 + 8) + 8);
    LODWORD(v209) = *(a4 + 44);
    LODWORD(v207) = 0;
    if (v209)
    {
      dmlc::LogCheckFormat<int,int>(&v209, &v207);
    }

    v77 = *(v197 + 40);
    v78 = *(*(a4 + 8) + 4);
    LODWORD(v76) = vcvtpd_u64_f64(vcvtd_n_f64_u32(v77, 6uLL));
    v211.__ptr_ = 0;
    v212[0].__m_.__sig = 850045863;
    *v212[0].__m_.__opaque = 0u;
    *&v212[0].__m_.__opaque[16] = 0u;
    *&v212[0].__m_.__opaque[32] = 0u;
    *&v212[0].__m_.__opaque[48] = 0;
    v194 = v76;
    if (v76)
    {
      v79 = 0;
      v80 = v77;
      v187 = a6;
      v81 = a7;
      do
      {
        if ((v80 - (v79 << 6)) >= 0x40)
        {
          v82 = 64;
        }

        else
        {
          v82 = v80 - (v79 << 6);
        }

        v83 = v79 << 6;
        if (v80 != v79 << 6)
        {
          v84 = 0;
          do
          {
            v85 = &v202[4 * v84];
            if (v85[1] == *v85)
            {
              std::vector<xgboost::RegTree::FVec::Entry>::resize(&v202[4 * v84], v78);
              v86 = v85[1] - *v85;
              if (v86 >= 1)
              {
                memset(*v85, 255, v86);
              }

              *(v85 + 24) = 1;
            }

            xgboost::predictor::AdapterView<xgboost::data::DenseAdapter,8ul>::operator[](&v207, &v197, v84 + v83);
            v87 = v207;
            if (v207)
            {
              v88 = 0;
              v89 = (v208 + 4);
              do
              {
                v90 = *(v89 - 1);
                if (v90 < (v85[1] - *v85) >> 2)
                {
                  *(*v85 + 4 * v90) = *v89;
                  ++v88;
                }

                v89 += 2;
                --v87;
              }

              while (v87);
            }

            else
            {
              v88 = 0;
            }

            *(v85 + 24) = v88 != (v85[1] - *v85) >> 2;
            ++v84;
          }

          while (v84 != v82);
        }

        xgboost::predictor::PredictByAllTrees(a4, v187, v81, v191, v79 << 6, v189, &v202, 0, v82);
        if (v80 != v83)
        {
          v91 = 0;
          do
          {
            v92 = v202;
            xgboost::predictor::AdapterView<xgboost::data::DenseAdapter,8ul>::operator[](&v209, &v197, v91 + v83);
            v93 = &v92[4 * v91];
            v94 = v209;
            if (v209)
            {
              v95 = v210;
              do
              {
                v97 = *v95;
                v95 += 2;
                v96 = v97;
                if (v97 < ((v93[1] - *v93) >> 2))
                {
                  *(*v93 + 4 * v96) = -1;
                }

                --v94;
              }

              while (v94);
            }

            *(v93 + 24) = 1;
            ++v91;
          }

          while (v91 != v82);
        }

        ++v79;
      }

      while (v79 != v194);
    }

    goto LABEL_145;
  }

  if (*a2)
  {
    v45 = *(*a2 + 16);
  }

  else
  {
    v45 = MEMORY[0x277D827F0];
  }

  {
    v47 = *a3;
    v46 = *(a3 + 8);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = *a2;
    v186 = v46;
    if (!*a2)
    {
      v49 = dmlc::LogMessageFatal::GetEntry(&v211);
      dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/any.h", 319);
      v50 = dmlc::LogMessageFatal::GetEntry(&v211);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: type_ != nullptr", 30);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "The any container is empty", 26);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " requested=", 11);
      v55 = strlen((0x8000000274E246B3 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, 0x8000000274E246B3 & 0x7FFFFFFFFFFFFFFFLL, v55);
      dmlc::LogMessageFatal::~LogMessageFatal(&v211);
      v48 = *a2;
    }

    {
      v56 = dmlc::LogMessageFatal::GetEntry(&v211);
      dmlc::LogMessageFatal::Entry::Init(v56, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/any.h", 322);
      v57 = dmlc::LogMessageFatal::GetEntry(&v211);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Check failed: *(type_->ptype_info) == typeid(T)", 47);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ": ", 2);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "The stored type mismatch", 24);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " stored=", 8);
      v62 = *(*(*a2 + 16) + 8);
      v63 = strlen((v62 & 0x7FFFFFFFFFFFFFFFLL));
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v62 & 0x7FFFFFFFFFFFFFFFLL, v63);
      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " requested=", 11);
      v66 = strlen((0x8000000274E246B3 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, 0x8000000274E246B3 & 0x7FFFFFFFFFFFFFFFLL, v66);
      dmlc::LogMessageFatal::~LogMessageFatal(&v211);
    }

    v67 = a2[1];
    v68 = a2[2];
    if (v68)
    {
      atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
    }

    v197 = *(v67 + 56);
    v69 = *(a4 + 8);
    v71 = *(v69 + 4);
    v70 = (v69 + 4);
    v193 = v68;
    if (v197 != v71)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v197, v70);
    }

    if (!v47)
    {
      xgboost::MetaInfo::MetaInfo(&v211);
    }

    v72 = *(v67 + 48);
    *(**v47)(v47, v70) = v72;
    v73 = (**v47)(v47);
    xgboost::Predictor::InitOutPredictions(a1, v73, a5, a4, v74);
    std::vector<xgboost::Entry>::vector[abi:ne200100](&v205, 8 * *(v67 + 56));
    v109 = *a5;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    xgboost::predictor::CPUPredictor::InitThreadTemp(1, &v202);
    v197 = v67;
    v198 = a8;
    v199 = (v206 - v205) >> 3;
    v200 = v205;
    v211.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](__p, 1uLL, &v211);
    v110 = *(*(a4 + 8) + 8);
    LODWORD(v209) = *(a4 + 44);
    LODWORD(v207) = 0;
    if (v209)
    {
      dmlc::LogCheckFormat<int,int>(&v209, &v207);
    }

    v111 = *(v197 + 48);
    v112 = *(*(a4 + 8) + 4);
    v211.__ptr_ = 0;
    v212[0].__m_.__sig = 850045863;
    *v212[0].__m_.__opaque = 0u;
    *&v212[0].__m_.__opaque[16] = 0u;
    *&v212[0].__m_.__opaque[32] = 0u;
    *&v212[0].__m_.__opaque[48] = 0;
    if (v111)
    {
      v113 = 0;
      v114 = a7;
      do
      {
        v115 = v202;
        if (v202[1] == *v202)
        {
          std::vector<xgboost::RegTree::FVec::Entry>::resize(v202, v112);
          v116 = v115[1] - *v115;
          if (v116 >= 1)
          {
            memset(*v115, 255, v116);
          }

          *(v115 + 24) = 1;
        }

        xgboost::predictor::AdapterView<xgboost::data::CSRAdapter,8ul>::operator[](&v207, &v197, v113);
        v117 = v207;
        if (v207)
        {
          v118 = 0;
          v119 = (v208 + 4);
          do
          {
            v120 = *(v119 - 1);
            if (v120 < (v115[1] - *v115) >> 2)
            {
              *(*v115 + 4 * v120) = *v119;
              ++v118;
            }

            v119 += 2;
            --v117;
          }

          while (v117);
        }

        else
        {
          v118 = 0;
        }

        *(v115 + 24) = v118 != (v115[1] - *v115) >> 2;
        xgboost::predictor::PredictByAllTrees(a4, a6, v114, v109, v113, v110, &v202, 0, 1);
        v121 = v202;
        xgboost::predictor::AdapterView<xgboost::data::CSRAdapter,8ul>::operator[](&v209, &v197, v113);
        v122 = v209;
        if (v209)
        {
          v123 = v210;
          do
          {
            v125 = *v123;
            v123 += 2;
            v124 = v125;
            if (v125 < ((v121[1] - *v121) >> 2))
            {
              *(*v121 + 4 * v124) = -1;
            }

            --v122;
          }

          while (v122);
        }

        *(v121 + 24) = 1;
        ++v113;
      }

      while (v113 != v111);
    }

    goto LABEL_179;
  }

  if (*a2)
  {
    v75 = *(*a2 + 16);
  }

  else
  {
    v75 = MEMORY[0x277D827F0];
  }

  {
    if (*a2)
    {
      v108 = *(*a2 + 16);
    }

    else
    {
      v108 = MEMORY[0x277D827F0];
    }

    if (!result)
    {
      return result;
    }

    v128 = *a3;
    v127 = *(a3 + 8);
    if (v127)
    {
      atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v186 = v127;
    dmlc::any::check_type<std::shared_ptr<xgboost::data::CSRArrayAdapter>>(a2);
    v129 = a2[1];
    v130 = a2[2];
    if (v130)
    {
      atomic_fetch_add_explicit((v130 + 8), 1uLL, memory_order_relaxed);
    }

    v197 = *(v129 + 360);
    v131 = *(a4 + 8);
    v133 = *(v131 + 4);
    v132 = (v131 + 4);
    v193 = v130;
    if (v197 != v133)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v197, v132);
    }

    if (!v128)
    {
      xgboost::MetaInfo::MetaInfo(&v211);
    }

    v134 = *(v129 + 216);
    v135 = (**v128)(v128, v132);
    v136 = v134 - 1;
    if (!v134)
    {
      v136 = 0;
    }

    *v135 = v136;
    v137 = (**v128)(v128);
    xgboost::Predictor::InitOutPredictions(a1, v137, a5, a4, v138);
    std::vector<xgboost::Entry>::vector[abi:ne200100](&v205, 8 * *(v129 + 360));
    v164 = *a5;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    xgboost::predictor::CPUPredictor::InitThreadTemp(1, &v202);
    v197 = v129;
    v198 = a8;
    v199 = (v206 - v205) >> 3;
    v200 = v205;
    v211.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](__p, 1uLL, &v211);
    v165 = *(*(a4 + 8) + 8);
    LODWORD(v209) = *(a4 + 44);
    LODWORD(v207) = 0;
    if (v209)
    {
      dmlc::LogCheckFormat<int,int>(&v209, &v207);
    }

    v166 = *(v197 + 216);
    v167 = v166 != 0;
    v168 = v166 - 1;
    if (!v167)
    {
      v168 = 0;
    }

    v169 = *(*(a4 + 8) + 4);
    v211.__ptr_ = 0;
    v212[0].__m_.__sig = 850045863;
    *v212[0].__m_.__opaque = 0u;
    *&v212[0].__m_.__opaque[16] = 0u;
    *&v212[0].__m_.__opaque[32] = 0u;
    *&v212[0].__m_.__opaque[48] = 0;
    v170 = v168;
    if (v168)
    {
      v171 = 0;
      v172 = a7;
      do
      {
        v173 = v202;
        if (v202[1] == *v202)
        {
          std::vector<xgboost::RegTree::FVec::Entry>::resize(v202, v169);
          v174 = v173[1] - *v173;
          if (v174 >= 1)
          {
            memset(*v173, 255, v174);
          }

          *(v173 + 24) = 1;
        }

        xgboost::predictor::AdapterView<xgboost::data::CSRArrayAdapter,8ul>::operator[](&v207, &v197, v171);
        v175 = v207;
        if (v207)
        {
          v176 = 0;
          v177 = (v208 + 4);
          do
          {
            v178 = *(v177 - 1);
            if (v178 < (v173[1] - *v173) >> 2)
            {
              *(*v173 + 4 * v178) = *v177;
              ++v176;
            }

            v177 += 2;
            --v175;
          }

          while (v175);
        }

        else
        {
          v176 = 0;
        }

        *(v173 + 24) = v176 != (v173[1] - *v173) >> 2;
        xgboost::predictor::PredictByAllTrees(a4, a6, v172, v164, v171, v165, &v202, 0, 1);
        v179 = v202;
        xgboost::predictor::AdapterView<xgboost::data::CSRArrayAdapter,8ul>::operator[](&v209, &v197, v171);
        v180 = v209;
        if (v209)
        {
          v181 = v210;
          do
          {
            v183 = *v181;
            v181 += 2;
            v182 = v183;
            if (v183 < ((v179[1] - *v179) >> 2))
            {
              *(*v179 + 4 * v182) = -1;
            }

            --v180;
          }

          while (v180);
        }

        *(v179 + 24) = 1;
        ++v171;
      }

      while (v171 != v170);
    }

LABEL_179:
    dmlc::OMPException::Rethrow(&v211);
    std::mutex::~mutex(v212);
    std::exception_ptr::~exception_ptr(&v211);
    v161 = __p[0];
    v162 = v186;
    v163 = v193;
    if (!__p[0])
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  v99 = *a3;
  v98 = *(a3 + 8);
  if (v98)
  {
    atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v185 = v98;
  dmlc::any::check_type<std::shared_ptr<xgboost::data::ArrayAdapter>>(a2);
  v100 = a2[1];
  v101 = a2[2];
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v197 = *(v100 + 128);
  v102 = *(a4 + 8);
  v104 = *(v102 + 4);
  v103 = (v102 + 4);
  v184 = v101;
  if (v197 != v104)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v197, v103);
  }

  if (!v99)
  {
    xgboost::MetaInfo::MetaInfo(&v211);
  }

  v105 = *(v100 + 120);
  *(**v99)(v99, v103) = v105;
  v106 = (**v99)(v99);
  xgboost::Predictor::InitOutPredictions(a1, v106, a5, a4, v107);
  std::vector<xgboost::Entry>::vector[abi:ne200100](&v205, 8 * *(v100 + 128));
  v192 = *a5;
  v202 = 0;
  v203 = 0;
  v204 = 0;
  xgboost::predictor::CPUPredictor::InitThreadTemp(64, &v202);
  v197 = v100;
  v198 = a8;
  v199 = (v206 - v205) >> 3;
  v200 = v205;
  v211.__ptr_ = 0;
  std::vector<unsigned long>::vector[abi:ne200100](__p, 1uLL, &v211);
  v190 = *(*(a4 + 8) + 8);
  LODWORD(v209) = *(a4 + 44);
  LODWORD(v207) = 0;
  if (v209)
  {
    dmlc::LogCheckFormat<int,int>(&v209, &v207);
  }

  v140 = *(v197 + 120);
  v141 = *(*(a4 + 8) + 4);
  LODWORD(v139) = vcvtpd_u64_f64(vcvtd_n_f64_u32(v140, 6uLL));
  v211.__ptr_ = 0;
  v212[0].__m_.__sig = 850045863;
  *v212[0].__m_.__opaque = 0u;
  *&v212[0].__m_.__opaque[16] = 0u;
  *&v212[0].__m_.__opaque[32] = 0u;
  *&v212[0].__m_.__opaque[48] = 0;
  v195 = v139;
  if (v139)
  {
    v142 = 0;
    v143 = v140;
    v188 = a6;
    v144 = a7;
    do
    {
      if ((v143 - (v142 << 6)) >= 0x40)
      {
        v145 = 64;
      }

      else
      {
        v145 = v143 - (v142 << 6);
      }

      v146 = v142 << 6;
      if (v143 != v142 << 6)
      {
        v147 = 0;
        do
        {
          v148 = &v202[4 * v147];
          if (v148[1] == *v148)
          {
            std::vector<xgboost::RegTree::FVec::Entry>::resize(&v202[4 * v147], v141);
            v149 = v148[1] - *v148;
            if (v149 >= 1)
            {
              memset(*v148, 255, v149);
            }

            *(v148 + 24) = 1;
          }

          xgboost::predictor::AdapterView<xgboost::data::ArrayAdapter,8ul>::operator[](&v207, &v197, v147 + v146);
          v150 = v207;
          if (v207)
          {
            v151 = 0;
            v152 = (v208 + 4);
            do
            {
              v153 = *(v152 - 1);
              if (v153 < (v148[1] - *v148) >> 2)
              {
                *(*v148 + 4 * v153) = *v152;
                ++v151;
              }

              v152 += 2;
              --v150;
            }

            while (v150);
          }

          else
          {
            v151 = 0;
          }

          *(v148 + 24) = v151 != (v148[1] - *v148) >> 2;
          ++v147;
        }

        while (v147 != v145);
      }

      xgboost::predictor::PredictByAllTrees(a4, v188, v144, v192, v142 << 6, v190, &v202, 0, v145);
      if (v143 != v146)
      {
        v154 = 0;
        do
        {
          v155 = v202;
          xgboost::predictor::AdapterView<xgboost::data::ArrayAdapter,8ul>::operator[](&v209, &v197, v154 + v146);
          v156 = &v155[4 * v154];
          v157 = v209;
          if (v209)
          {
            v158 = v210;
            do
            {
              v160 = *v158;
              v158 += 2;
              v159 = v160;
              if (v160 < ((v156[1] - *v156) >> 2))
              {
                *(*v156 + 4 * v159) = -1;
              }

              --v157;
            }

            while (v157);
          }

          *(v156 + 24) = 1;
          ++v154;
        }

        while (v154 != v145);
      }

      ++v142;
    }

    while (v142 != v195);
  }

LABEL_145:
  dmlc::OMPException::Rethrow(&v211);
  std::mutex::~mutex(v212);
  std::exception_ptr::~exception_ptr(&v211);
  v161 = __p[0];
  v163 = v184;
  v162 = v185;
  if (__p[0])
  {
LABEL_146:
    __p[1] = v161;
    operator delete(v161);
  }

LABEL_147:
  v211.__ptr_ = &v202;
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v211);
  if (v205)
  {
    v206 = v205;
    operator delete(v205);
  }

  if (v163)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v163);
  }

  if (v162)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v162);
  }

  return 1;
}

void sub_274D7779C()
{
  std::mutex::~mutex(&v7);
  std::exception_ptr::~exception_ptr(&v6);
  if (v1)
  {
    operator delete(v1);
  }

  v5 = &v2;
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x274D77AFCLL);
}

void sub_274D7792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a33);
  v35 = a35;
  a35 = 0;
  if (v35)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a35, v35);
  }

  if (v37)
  {
    operator delete(v37);
  }

  v41 = &v38;
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v41);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  JUMPOUT(0x274D77AFCLL);
}

void sub_274D77948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D77954);
}

void sub_274D779AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  JUMPOUT(0x274D77B18);
}

void sub_274D779BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D779C8);
}

void sub_274D77A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D77A38);
}

void sub_274D77A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  JUMPOUT(0x274D77B18);
}

void sub_274D77A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  JUMPOUT(0x274D77B18);
}

void sub_274D77A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D77A8CLL);
}

void sub_274D77AE8()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x274D77B18);
}

void sub_274D77AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D77AFCLL);
}

void sub_274D77B10(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D77B18);
  }

  __clang_call_terminate(a1);
}

void xgboost::predictor::CPUPredictor::PredictInstance(uint64_t a1, unint64_t *a2, std::vector<unsigned int> *a3, uint64_t a4, int a5)
{
  memset(v19, 0, sizeof(v19));
  *__p = 0u;
  v18 = 0u;
  std::vector<xgboost::RegTree::FVec>::resize(v19, 1uLL, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v9 = v19[0];
  std::vector<xgboost::RegTree::FVec::Entry>::resize(v19[0], *(*(a4 + 8) + 4));
  v10 = *(v9 + 8) - *v9;
  if (v10 >= 1)
  {
    memset(*v9, 255, v10);
  }

  *(v9 + 24) = 1;
  v11 = *(*(a4 + 8) + 8);
  v12 = (v11 * a5);
  if (!v12)
  {
    v13 = *(a4 + 184) - *(a4 + 176);
    goto LABEL_9;
  }

  v13 = *(a4 + 184) - *(a4 + 176);
  if (v12 > v13 >> 3)
  {
LABEL_9:
    v12 = v13 >> 3;
  }

  std::vector<float>::resize(a3, (v11 + v11 * *(a4 + 44)));
  if (*(*(a4 + 8) + 8))
  {
    v14 = 0;
    do
    {
      v15 = xgboost::predictor::PredValue(a2, (a4 + 176), (a4 + 224), v14, v19[0], 0, v12);
      v16 = *(a4 + 8);
      *&a3->__begin_[v14++] = v15 + *v16;
    }

    while (v14 < *(v16 + 8));
  }

  __p[0] = v19;
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_274D77C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void xgboost::predictor::CPUPredictor::PredictLeaf(uint64_t a1, uint64_t a2, std::vector<unsigned int> **a3, void *a4, unsigned int a5)
{
  v15[19] = *MEMORY[0x277D85DE8];
  memset(v15, 0, 24);
  xgboost::predictor::CPUPredictor::InitThreadTemp(1, v15);
  v9 = (**a2)(a2);
  if (a5)
  {
    v10 = a5;
    v11 = a4[23] - a4[22];
    if (a5 <= (v11 >> 3))
    {
LABEL_6:
      std::vector<float>::resize(*a3, *v9 * v10);
      (*(*a2 + 72))(&v13, a2);
      v12[2] = v13;
      v12[3] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(v12, 0);
    }
  }

  else
  {
    v11 = a4[23] - a4[22];
  }

  v10 = (v11 >> 3);
  goto LABEL_6;
}

void sub_274D7810C()
{
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  JUMPOUT(0x274D78178);
}

void xgboost::predictor::CPUPredictor::PredictContribution(uint64_t a1, uint64_t a2, std::vector<unsigned int> **a3, void *a4, int a5, void *a6, char a7)
{
  LODWORD(v7) = a5;
  v26 = *MEMORY[0x277D85DE8];
  v15 = *(a4[1] + 4);
  memset(v22, 0, sizeof(v22));
  xgboost::predictor::CPUPredictor::InitThreadTemp(1, v22);
  v11 = (**a2)(a2);
  if (v7)
  {
    v12 = a4[23] - a4[22];
    if (v7 <= (v12 >> 3))
    {
LABEL_6:
      v21 = *(a4[1] + 8);
      LODWORD(v23.__ptr_) = v21;
      LODWORD(v19[0]) = 0;
      if (v21)
      {
        LODWORD(v23.__ptr_) = 0;
        v20 = v15 + 1;
        if (v15 != -1)
        {
          v13 = *a3;
          std::vector<float>::resize(v13, v20 * *v11 * *(a4[1] + 8));
          v14 = v13->__end_ - v13->__begin_;
          if (v14 >= 1)
          {
            bzero(v13->__begin_, v14);
          }

          memset(v19, 0, sizeof(v19));
          v24.__ptr_ = v19;
          LOBYTE(v25.__m_.__sig) = 0;
          if (v7)
          {
            operator new();
          }

          v24.__ptr_ = 0;
          v25.__m_.__sig = 850045863;
          memset(v25.__m_.__opaque, 0, sizeof(v25.__m_.__opaque));
          dmlc::OMPException::Rethrow(&v24);
          std::mutex::~mutex(&v25);
          std::exception_ptr::~exception_ptr(&v24);
          (*(*a2 + 72))(&v17, a2);
          v16[2] = v17;
          v16[3] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(v16, 0);
        }

        dmlc::LogCheckFormat<unsigned long,int>(&v20, &v23);
      }

      dmlc::LogCheckFormat<int,int>(&v23, v19);
    }
  }

  else
  {
    v12 = a4[23] - a4[22];
  }

  v7 = v12 >> 3;
  goto LABEL_6;
}

void sub_274D78C64()
{
  std::mutex::~mutex(v0);
  std::exception_ptr::~exception_ptr((v1 - 168));
  JUMPOUT(0x274D78D88);
}

void sub_274D78CFC()
{
  dmlc::LogMessageFatal::~LogMessageFatal((v0 - 192));
  v1 = *(v0 - 168);
  *(v0 - 168) = 0;
  if (v1)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v0 - 168, v1);
  }

  JUMPOUT(0x274D78D98);
}

void xgboost::predictor::CPUPredictor::PredictInteractionContributions(uint64_t a1, uint64_t (***a2)(void), std::vector<unsigned int> **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (**a2)(a2);
  v10 = *(*(a4 + 8) + 4);
  std::vector<float>::resize(*a3, (v10 + 1) * *v9 * (v10 + 1) * *(*(a4 + 8) + 8));
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

void xgboost::predictor::CPUPredictor::InitThreadTemp(int a1, uint64_t *a2)
{
  if (((a2[1] - *a2) >> 5) < a1)
  {
    *__p = 0u;
    v3 = 0u;
    std::vector<xgboost::RegTree::FVec>::resize(a2, a1, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_274D791A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::RegTree::FVec>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 32 * a2;
      if (v4 != v7)
      {
        v8 = a1[1];
        do
        {
          v10 = *(v8 - 32);
          v8 -= 32;
          v9 = v10;
          if (v10)
          {
            *(v4 - 24) = v9;
            operator delete(v9);
          }

          v4 = v8;
        }

        while (v8 != v7);
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    std::vector<xgboost::RegTree::FVec>::__append(a1, v6, a3);
  }
}

uint64_t *std::vector<xgboost::RegTree::FVec>::__append(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 5)
  {
    if (a2)
    {
      v13 = 32 * a2;
      v14 = v7 + 32 * a2;
      do
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        result = std::vector<xgboost::RegTree::FVec::Entry>::__init_with_size[abi:ne200100]<xgboost::RegTree::FVec::Entry*,xgboost::RegTree::FVec::Entry*>(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
        *(v7 + 24) = *(a3 + 24);
        v7 += 32;
        v13 -= 32;
      }

      while (v13);
      v7 = v14;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 5);
    if (v9 >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 5;
    v11 = v6 - *result;
    if (v11 >> 4 > v9)
    {
      v9 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    v22 = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>>(result, v12);
    }

    v19 = 0;
    v20 = 32 * v10;
    v21 = (32 * v10);
    std::__split_buffer<xgboost::RegTree::FVec>::__construct_at_end(&v19, a2, a3);
    v15 = v5[1];
    v16 = v20 + *v5 - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>(v5, *v5, v15, v16);
    v17 = *v5;
    *v5 = v16;
    v18 = v5[2];
    *(v5 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<xgboost::RegTree::FVec>::~__split_buffer(&v19);
  }

  return result;
}

void sub_274D793A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<xgboost::RegTree::FVec>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__split_buffer<xgboost::RegTree::FVec>::__construct_at_end(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = 32 * a2;
    v7 = v4 + 32 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      result = std::vector<xgboost::RegTree::FVec::Entry>::__init_with_size[abi:ne200100]<xgboost::RegTree::FVec::Entry*,xgboost::RegTree::FVec::Entry*>(v4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      *(v4 + 24) = *(a3 + 24);
      v4 += 32;
      v6 -= 32;
    }

    while (v6);
    v4 = v7;
  }

  v3[2] = v4;
  return result;
}

uint64_t *std::vector<xgboost::RegTree::FVec::Entry>::__init_with_size[abi:ne200100]<xgboost::RegTree::FVec::Entry*,xgboost::RegTree::FVec::Entry*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::RegTree::FVec::Entry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D794AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::RegTree::FVec::Entry>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<xgboost::RegTree::FVec>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::RegTree::FVec>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<xgboost::RegTree::FVec>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void *xgboost::predictor::FVecFill<xgboost::predictor::SparsePageView<8ul>>(void *result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a5 + 32 * v9;
      if (*(v11 + 8) == *v11)
      {
        std::vector<xgboost::RegTree::FVec::Entry>::resize((*a5 + 32 * v9), v10);
        result = *v11;
        v12 = *(v11 + 8) - *v11;
        if (v12 >= 1)
        {
          result = memset(result, 255, v12);
        }

        *(v11 + 24) = 1;
      }

      v13 = (*(a4 + 16) + 8 * v9 + 8 * a2);
      v15 = *v13;
      v14 = v13[1];
      v16 = v14 - *v13;
      v17 = *(a4 + 32);
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        std::terminate();
      }

      if (v14 == v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v20 = (v17 + 8 * v15 + 4);
        do
        {
          v21 = *(v20 - 1);
          if (v21 < (*(v11 + 8) - *v11) >> 2)
          {
            *(*v11 + 4 * v21) = *v20;
            ++v19;
          }

          v20 += 2;
          --v16;
        }

        while (v16);
      }

      *(v11 + 24) = v19 != (*(v11 + 8) - *v11) >> 2;
      v9 = v9 + 1;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t xgboost::predictor::FVecDrop<xgboost::predictor::SparsePageView<8ul>>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    for (i = 0; i != result; ++i)
    {
      v5 = (*(a3 + 16) + 8 * i + 8 * a2);
      v6 = *v5;
      v7 = v5[1];
      v8 = v7 - *v5;
      v9 = *(a3 + 32);
      if (v8)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        std::terminate();
      }

      v11 = *a4 + 32 * i;
      if (v7 != v6)
      {
        v12 = (v9 + 8 * v6);
        do
        {
          v14 = *v12;
          v12 += 2;
          v13 = v14;
          if (v14 < ((*(v11 + 8) - *v11) >> 2))
          {
            *(*v11 + 4 * v13) = -1;
          }

          --v8;
        }

        while (v8);
      }

      *(v11 + 24) = 1;
    }
  }

  return result;
}

void std::vector<xgboost::RegTree::FVec::Entry>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<xgboost::RegTree::FVec::Entry>::__append(result, a2 - v2);
  }
}

void std::vector<xgboost::RegTree::FVec::Entry>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::RegTree::FVec>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<xgboost::RegTree::FVec>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::DenseAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 48);
  v7 = (*(**a2 + 32))();
  v8 = v7[2];
  v9 = **(a2 + 32) * v6;
  v10 = v9;
  if (v8)
  {
    v11 = 0;
    v12 = *v7 + 4 * v8 * a3;
    v10 = **(a2 + 32) * v6;
    do
    {
      v13 = *(v12 + 4 * v11);
      if (*(a2 + 8) != v13)
      {
        if (*(a2 + 16) <= v10)
        {
          std::terminate();
        }

        v14 = *(a2 + 24) + 8 * v10;
        *v14 = v11;
        *(v14 + 4) = v13;
        ++v10;
      }

      ++v11;
    }

    while (v8 != v11);
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(v19, (a2 + 16), v9, v10 - v9);
  v16 = *(a2 + 32);
  if (*v16 == 7)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v16 + 1;
  }

  *v16 = v17;
  v18 = v19[1];
  *a1 = v19[0];
  a1[1] = v18;
  return result;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::CSRAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 56);
  v7 = (*(**a2 + 32))();
  v8 = (*v7 + 8 * a3);
  v9 = *v8;
  v10 = **(a2 + 32) * v6;
  v11 = v10;
  v12 = v8[1] - *v8;
  if (v12)
  {
    v13 = (v7[1] + 4 * v9);
    v14 = (v7[2] + 4 * v9);
    v11 = **(a2 + 32) * v6;
    do
    {
      v16 = *v13++;
      v15 = v16;
      v17 = *v14;
      if (*(a2 + 8) != *v14)
      {
        if (*(a2 + 16) <= v11)
        {
          std::terminate();
        }

        v18 = (*(a2 + 24) + 8 * v11);
        *v18 = v15;
        v18[1] = v17;
        ++v11;
      }

      ++v14;
      --v12;
    }

    while (v12);
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(v23, (a2 + 16), v10, v11 - v10);
  v20 = *(a2 + 32);
  if (*v20 == 7)
  {
    v21 = 0;
  }

  else
  {
    v21 = *v20 + 1;
  }

  *v20 = v21;
  v22 = v23[1];
  *a1 = v23[0];
  a1[1] = v22;
  return result;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::ArrayAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 128);
  v7 = (*(**a2 + 32))();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 32);
  v12 = *(v7 + 48);
  v25 = *(v7 + 64);
  v24 = v12;
  v23 = v11;
  v22 = v10;
  v21[0] = v8;
  v21[1] = v9;
  v26 = a3;
  v13 = **(a2 + 32) * v6;
  v14 = v13;
  if (*(&v11 + 1))
  {
    v15 = 0;
    v14 = v13;
    do
    {
      v27 = v21;
      v28 = v26;
      v29 = v15;
      *&v10 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(v21, &v27, *&v10);
      if (*(a2 + 8) != *&v10)
      {
        if (*(a2 + 16) <= v14)
        {
          std::terminate();
        }

        v16 = (*(a2 + 24) + 8 * v14);
        *v16 = v15;
        v16[1] = v10;
        ++v14;
      }

      ++v15;
    }

    while (v15 < *(&v23 + 1));
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(&v27, (a2 + 16), v13, v14 - v13);
  v18 = *(a2 + 32);
  if (*v18 == 7)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18 + 1;
  }

  *v18 = v19;
  v20 = v28;
  *a1 = v27;
  a1[1] = v20;
  return result;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::CSRArrayAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 360);
  v7 = (*(**a2 + 32))();
  xgboost::data::CSRArrayAdapterBatch::GetLine(v20, v7, a3);
  v8 = **(a2 + 32) * v6;
  v9 = v8;
  if (v21)
  {
    v10 = 0;
    v9 = v8;
    do
    {
      xgboost::data::CSRArrayAdapterBatch::Line::GetElement(&v17, v20, v10);
      v11 = v19;
      if (*(a2 + 8) != v19)
      {
        if (*(a2 + 16) <= v9)
        {
          std::terminate();
        }

        v12 = (*(a2 + 24) + 8 * v9);
        *v12 = v18;
        v12[1] = v11;
        ++v9;
      }

      ++v10;
    }

    while (v10 < v21);
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(&v17, (a2 + 16), v8, v9 - v8);
  v14 = *(a2 + 32);
  if (*v14 == 7)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 1;
  }

  *v14 = v15;
  v16 = v18;
  *a1 = v17;
  a1[1] = v16;
  return result;
}