void sub_248ECCDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  di_log::logger<di_log::log_printer<2751ul>>::~logger(va);
  __cxa_end_catch();
  JUMPOUT(0x248ECCDC4);
}

void *di_log::logger<di_log::log_printer<2734ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2734ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF04A0;
  a1[45] = &unk_285BF05A0;
  a1[46] = &unk_285BF05C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF04A0;
  a1[45] = &unk_285BF0528;
  a1[46] = &unk_285BF0550;
  return a1;
}

void sub_248ECCF24(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2734ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2734ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2751ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2751ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF06C0;
  a1[45] = &unk_285BF07C0;
  a1[46] = &unk_285BF07E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF06C0;
  a1[45] = &unk_285BF0748;
  a1[46] = &unk_285BF0770;
  return a1;
}

void sub_248ECD090(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2751ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2751ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<2767ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<2767ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF08E0;
  a1[45] = &unk_285BF09E0;
  a1[46] = &unk_285BF0A08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF08E0;
  a1[45] = &unk_285BF0968;
  a1[46] = &unk_285BF0990;
  return a1;
}

void sub_248ECD1FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<2767ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2767ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::details::dir::dir(std::__thread_struct *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = di_asif::details::dir_base::dir_base(a1, a2, a4, a5, a10);
  *v15 = &unk_285BEC4E0;
  v15[12] = &unk_285BF30F8;
  v15[13] = v15;
  v15[15] = v15 + 12;
  v15[16] = a3;
  std::vector<ref::tagged_weak_ptr<di_asif::details::table,unsigned long long>>::vector[abi:ne200100](v15 + 17, (v15[11] + a3 - 1) / v15[11]);
  std::vector<unsigned long long>::vector[abi:ne200100](&a1[20], (a1[11].__p_ + a3 - 1) / a1[11].__p_);
  a1[23].__p_ = v12;
  v16 = (v12 - 1 + (v11 - 1 + v10) / v11 * v11 + (v11 + 7 + 8 * ((a1[16].__p_ + a1[11].__p_ - 1) / a1[11].__p_)) / v11 * v11 * a7) / v12;
  a1[24].__p_ = 850045863;
  *&a1[25].__p_ = 0u;
  *&a1[27].__p_ = 0u;
  *&a1[29].__p_ = 0u;
  a1[33].__p_ = 0;
  a1[31].__p_ = 0;
  a1[32].__p_ = &a1[33];
  a1[34].__p_ = 0;
  a1[35].__p_ = (v16 * v12);
  v18[3] = 0;
  ref::Allocator<di_asif::details::table,unsigned long long>::Allocator(&a1[36], 4uLL, 0, v18);
}

void sub_248ECD760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, uint64_t a19, __int16 a23, char a24, char a25)
{
  v27 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v25);
  MEMORY[0x24C1ED730](v27, 0x1020C407A7143E5);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](&a19);
  std::__function::__value_func<int ()(di_asif::details::ContextASIF &)>::~__value_func[abi:ne200100](v23 + 8);
  std::mutex::~mutex((v22 + 3800));
  std::deque<std::atomic<DiskImage::Context *>>::~deque[abi:ne200100]((v22 + 3752));
  std::mutex::~mutex((v22 + 3688));
  std::condition_variable::~condition_variable((v22 + 3632));
  std::thread::~thread(a10);
  std::mutex::~mutex((v22 + 3536));
  ref::Allocator<di_asif::details::map_element,unsigned long long>::~Allocator(v22 + 2088);
  ref::Allocator<di_asif::details::table,unsigned long long>::~Allocator(v24 + 104);
  space_allocators::FixedSize::~FixedSize(v24);
  v28 = *(v22 + 160);
  if (v28)
  {
    *(v22 + 168) = v28;
    operator delete(v28);
  }

  v29 = *(v22 + 136);
  if (v29)
  {
    *(v22 + 144) = v29;
    operator delete(v29);
  }

  std::__function::__value_func<int ()(di_asif::details::map_element &)>::~__value_func[abi:ne200100](a14);
  _Unwind_Resume(a1);
}

uint64_t di_asif::details::dir_base::dir_base(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  *a1 = &unk_285BF0AF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 26) = a4;
  *(a1 + 28) = a3;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3 >> 3;
  v6 = a3 / a4;
  v7 = 4 * a3;
  if (v7 < v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 / v6;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  v9 = di_asif::details::dir_base::calc_num_real_elements(a1);
  v10 = (*(a1 + 56) + v9) / (*(a1 + 56) + 1);
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  v11 = v9 - v10;
  v12 = v11 * *(a1 + 28);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

unint64_t di_asif::details::dir::load<std::__wrap_iter<unsigned long long *>>(uint64_t a1, void **a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v34[4] = *MEMORY[0x277D85DE8];
  v9 = a3 + 8 * a4 + 7;
  v10 = v9 / a3 * a3;
  if (v9 == v9 % a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v9 / a3 * a3, 0x8B7C732DuLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v24 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v24, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  v25 = &unk_285BED4C8;
  v28 = &v25;
  v33 = v11;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v34, &v25);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v25);
  v12 = v33;
  v13 = *(details::get_dummy_shared_ptr() + 1);
  v25 = v12;
  v26 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v10;
  v28 = a2;
  v29 = v10;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = (*(*a1 + 128))(a1, &v25);
  if (v10 != v14)
  {
    v19 = __cxa_allocate_exception(0x40uLL);
    v20 = v19;
    if (v14 >= 0)
    {
      v21 = 4294967291;
    }

    else
    {
      v21 = v14;
    }

    *v19 = &unk_285BF4E60;
    v22 = std::generic_category();
    v20[1] = v21;
    v20[2] = v22;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    v20[7] = "Can't load asif dir table";
  }

  v15 = *v12;
  if (v6)
  {
    v16 = v12 + 1;
    do
    {
      v17 = *v16++;
      *a5++ = bswap64(v17);
      --v6;
    }

    while (v6);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v33, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v34);
  return bswap64(v15);
}

void sub_248ECDB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v22 + 8);
  _Unwind_Resume(a1);
}

unint64_t di_asif::details::dir::get_version(unint64_t this, Backend *a2)
{
  v4 = *(details::get_dummy_shared_ptr() + 1);
  v10 = &v18;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  v12 = 8;
  v13 = a2;
  v14 = 8;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  LODWORD(this) = (*(*this + 128))(this, &v10);
  if (this != 8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = exception;
    if ((this & 0x80000000) == 0)
    {
      this = 4294967291;
    }

    else
    {
      this = this;
    }

    *exception = &unk_285BF4E60;
    v9 = std::generic_category();
    v8[1] = this;
    v8[2] = v9;
    *(v8 + 24) = 0;
    *(v8 + 48) = 0;
    v8[7] = "Can't load asif dir version";
  }

  v5 = bswap64(v18);
  v18 = v5;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v5;
}

void sub_248ECDCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

di_asif::details::ContextMetadata *di_asif::details::ContextMetadata::ContextMetadata(di_asif::details::ContextMetadata *this, DiskImageASIF *a2, const di_asif::details::ContextASIF *a3)
{
  *this = &unk_285BE5728;
  *(this + 1) = a2;
  (*(**(a2 + 2) + 80))(*(a2 + 2));
  *this = &unk_285BEC520;
  LODWORD(v13) = *(a2 + 34);
  v6 = smart_enums::validators::is_valid<Wrapper<di_asif::metadata_read_only_flags_t,std::integral_constant<BOOL,false>,be_type>,unsigned int>("metadata_read_only_flags", &v13, smart_enums::validators::flags<unsigned int>);
  v7 = v6;
  if (!v6)
  {
    std::allocate_shared[abi:ne200100]<ReadOnlyBackend,std::allocator<ReadOnlyBackend>,std::shared_ptr<Backend>,0>();
  }

  v8 = *(a3 + 2);
  v9 = *(a3 + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = 1;
  }

  v11 = *(this + 3);
  *(this + 2) = v8;
  *(this + 3) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((v7 & 1) == 0 && v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return this;
}

void sub_248ECDE20(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_248ECDE6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x248ECDE64);
}

void *di_asif::details::operator<<(void *result, int *a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 == 2)
    {
      v3 = "unmapped";
      v4 = 8;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }

    if (v2 == 3)
    {
      v3 = "has_bitmap";
      v4 = 10;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = "uninit";
      v4 = 6;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }

    if (v2 == 1)
    {
      v3 = "fully";
      v4 = 5;
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, v3, v4);
    }
  }

  return result;
}

uint64_t di_asif::details::dir::trim_last_unused_extents(di_asif::details::dir *this, di_asif::details::ContextASIF *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this + 16))(this);
  v5[0] = &unk_285BEC9A8;
  v5[1] = a2;
  v5[3] = v5;
  space_allocators::FixedSize::trim_largest(v3, v5);
  return std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v5);
}

void sub_248ECE058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void space_allocators::FixedSize::trim_largest(void *a1, uint64_t a2)
{
  if (a1[11])
  {
    v4 = 0;
    v5 = (a1 + 10);
    do
    {
      v6 = *v5;
      v7 = *v5;
      v8 = v5;
      if (*v5)
      {
        do
        {
          v9 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (v10);
      }

      if ((v9[4] + *a1) != a1[12])
      {
        break;
      }

      v11 = v5;
      if (v6)
      {
        do
        {
          v12 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v12 = v11[2];
          v10 = *v12 == v11;
          v11 = v12;
        }

        while (v10);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer(a1 + 9, v12);
      operator delete(v12);
      v13 = a1[11];
      a1[12] -= *a1;
      v4 = 1;
    }

    while (v13);
    if ((v4 & 1) != 0 && *(a2 + 24))
    {
      v14 = std::function<int ()(unsigned long long)>::operator()(a2, a1[12]);
      if (v14)
      {
        v15 = v14;
        *&v16 = "space_allocators::FixedSize::trim_largest(const size_changed_fn_t &)";
        *(&v16 + 1) = 41;
        v17 = 16;
        di_log::logger<di_log::log_printer<158ul>>::logger(v18, &v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "trim largest: size change callback failed with ", 47);
        MEMORY[0x24C1ED390](&v19, v15);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<158ul>>::~logger_buf(v18);
        MEMORY[0x24C1ED6A0](&v20);
      }
    }
  }
}

void sub_248ECE1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<158ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void di_asif::header::header(di_asif::header *this, Backend *a2)
{
  *(this + 92) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  if ((*(*a2 + 40))(a2) > 0x1FF)
  {
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = (*(*a2 + 40))(a2);
  *exception = &unk_285BF0D58;
  exception[1] = "asif_header";
  exception[2] = 512;
  exception[3] = v4;
}

uint64_t di_asif::header::init(di_asif::header *this, const char *a2)
{
  v4 = *a2;
  LODWORD(v17[0]) = 2003069043;
  smart_enums::validators::value<unsigned int>("header_signature", v4, v17, 1);
  *this = 2003069043;
  *(this + 1) = bswap32(*(a2 + 1));
  *(this + 2) = bswap32(*(a2 + 2));
  v5 = bswap32(*(a2 + 3));
  LODWORD(v17[0]) = 1;
  smart_enums::validators::flags<unsigned int>("header_flags", v5, v17, 1);
  *(this + 3) = v5;
  *(this + 2) = bswap64(*(a2 + 2));
  *(this + 3) = bswap64(*(a2 + 3));
  *(this + 2) = *(a2 + 2);
  *(this + 6) = bswap64(*(a2 + 6));
  *(this + 7) = bswap64(*(a2 + 7));
  *(this + 16) = bswap32(*(a2 + 16));
  *(this + 34) = bswap32(*(a2 + 34)) >> 16;
  di_asif::header::total_segments_t::total_segments_t(v17, *(a2 + 35));
  *(this + 35) = v17[0];
  *(this + 9) = bswap64(*(a2 + 9));
  *(this + 5) = *(a2 + 5);
  *(this + 24) = bswap32(*(a2 + 24));
  v6 = bswap32(*(a2 + 25));
  result = smart_enums::validators::flags<unsigned int>("metadata_flags_t", v6, 0, 0);
  *(this + 25) = v6;
  *(this + 26) = bswap32(*(a2 + 26));
  v8 = *(this + 1);
  if (v8 >= 2)
  {
    if (v8 <= 4)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v13 = "Legacy shadow file format is not supported by DiskImages2 framework";
      v14 = 161;
      goto LABEL_24;
    }

LABEL_15:
    v15 = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Unsupported ASIF version ", 25);
    MEMORY[0x24C1ED3A0](v17, *(this + 1));
    DiskImagesRuntimeException::DiskImagesRuntimeException(v15, v17, 0xA1u);
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  if ((*(this + 2) - 1048577) <= 0xFFF0004E)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Invalid ASIF header size";
LABEL_20:
    v14 = 152;
    goto LABEL_24;
  }

  v9 = *(this + 34);
  if (!*(this + 34))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Shadow block size is invalid (0)";
    goto LABEL_20;
  }

  v10 = *(this + 16);
  if (v10 < v9 || v10 % v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max_write size in header exceed the limit";
LABEL_23:
    v14 = 22;
LABEL_24:
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v13, v14);
  }

  if (v10 >= 0x4000001)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF max chunk size in header exceeds the limit";
    goto LABEL_23;
  }

  if ((v9 & 0x1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "ASIF block size isn't multiple of 512";
    goto LABEL_20;
  }

  v11 = *(this + 7);
  if (v11 >= 0xFFFFFFFFFFFFFFFFLL / v9)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Max sector count is too large";
    goto LABEL_23;
  }

  if (v11 < *(this + 6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = "Sector count is too large";
    goto LABEL_23;
  }

  return result;
}

void sub_248ECE9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_248ECE9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

__n128 di_asif::header::header(di_asif::header *this, const char *a2)
{
  *(this + 92) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = v2;
  result = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  *(this + 92) = *(a2 + 92);
  *(this + 4) = v5;
  *(this + 5) = v6;
  *(this + 3) = result;
  return result;
}

char *di_asif::header::write(di_asif::header *this, char *a2)
{
  *a2 = *this;
  *(a2 + 1) = bswap32(*(this + 1));
  *(a2 + 2) = bswap32(*(this + 2));
  *(a2 + 3) = bswap32(*(this + 3));
  *(a2 + 2) = bswap64(*(this + 2));
  *(a2 + 3) = bswap64(*(this + 3));
  *(a2 + 2) = *(this + 2);
  *(a2 + 6) = bswap64(*(this + 6));
  *(a2 + 7) = bswap64(*(this + 7));
  *(a2 + 16) = bswap32(*(this + 16));
  *(a2 + 34) = bswap32(*(this + 34)) >> 16;
  *(a2 + 35) = *(this + 35);
  *(a2 + 9) = bswap64(*(this + 9));
  *(a2 + 5) = *(this + 5);
  *(a2 + 24) = bswap32(*(this + 24));
  *(a2 + 25) = bswap32(*(this + 25));
  *(a2 + 26) = bswap32(*(this + 26));
  return a2 + 108;
}

uint64_t di_asif::header::header(uint64_t a1, _DWORD *a2, _OWORD *a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned int a7)
{
  *a1 = 2003069043;
  LODWORD(v28) = 2003069043;
  smart_enums::validators::value<unsigned int>("header_signature", 2003069043, &v28, 1);
  *(a1 + 4) = 1;
  *(a1 + 8) = (a7 + 511) / a7 * a7;
  *(a1 + 12) = *a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  v14 = a7;
  *(a1 + 64) = a6;
  *(a1 + 68) = a7;
  di_asif::header::total_segments_t::total_segments_t((a1 + 70), 0);
  *(a1 + 100) = 0;
  *(a1 + 86) = 0u;
  *(a1 + 70) = 0u;
  v15 = !is_mul_ok(a5, a7);
  v16 = a5 * a7;
  if (!is_mul_ok(a5, a7))
  {
    v16 = -1;
  }

  v28 = v16;
  v29 = v15;
  v17 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  v18 = !is_mul_ok(a4, v14);
  v19 = a4 * v14;
  if (!is_mul_ok(a4, v14))
  {
    v19 = -1;
  }

  v28 = v19;
  v29 = v18;
  v20 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  v28 = 2 * a6;
  v29 = 0;
  v21 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  v22 = v20 + v21;
  v23 = __CFADD__(v20, v21);
  if (__CFADD__(v20, v21))
  {
    v24 = -1;
  }

  else
  {
    v24 = v20 + v21;
  }

  if (__CFADD__(v20, v21))
  {
    v22 = v24;
  }

  v28 = v22;
  v29 = v23;
  v25 = safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(&v28);
  if (v25 <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = v25;
  }

  *(a1 + 56) = v26 / v14;
  *(a1 + 32) = *a3;
  return a1;
}

uint64_t safe_number<unsigned long long>::operator unsigned long long<unsigned long long>(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Overflow detected", 0x54u);
  }

  return *a1;
}

void *di_log::logger<di_log::log_printer<3061ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3061ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0D90;
  a1[45] = &unk_285BF0E90;
  a1[46] = &unk_285BF0EB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0D90;
  a1[45] = &unk_285BF0E18;
  a1[46] = &unk_285BF0E40;
  return a1;
}

void sub_248ECF240(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3061ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3061ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

di_asif::meta_header *di_asif::meta_header::meta_header(di_asif::meta_header *this, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  *this = 1635018093;
  LODWORD(v7[0]) = 1635018093;
  smart_enums::validators::value<unsigned int>("header_signature", 1635018093, v7, 1);
  *(this + 1) = 1;
  LODWORD(v7[0]) = 1;
  smart_enums::validators::value<unsigned int>("version_t", 1, v7, 1);
  *(this + 2) = 512;
  v7[0] = 0x100000000200;
  smart_enums::validators::value<unsigned int>("header_size_t", 512, v7, 2);
  *(this + 12) = a2;
  *(this + 20) = a3;
  return this;
}

uint64_t di_asif::meta_header::write_header(di_asif::meta_header *this, di_asif::details::ContextASIF *a2, di_asif::details::dir *a3, uint64_t a4)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v35[0] = 0x100000000200;
  smart_enums::validators::value<unsigned int>("header_size_t", 512, v35, 2);
  v8 = *(a3 + 13);
  v9 = v8 + 511;
  v10 = (v8 + 511) / v8 * v8;
  v35[0] = 0x100000000200;
  smart_enums::validators::value<unsigned int>("header_size_t", (v8 + 511) / v8 * v8, v35, 2);
  *(this + 2) = v10;
  if (v9 == v9 - v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v10, 0x8B7C732DuLL);
    if (!v11)
    {
      exception = __cxa_allocate_exception(8uLL);
      v23 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v23, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  v35[0] = &unk_285BED4C8;
  v35[3] = v35;
  v37 = v11;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v38, v35);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v35);
  v12 = v37;
  *v37 = *this;
  v12[1] = bswap32(*(this + 1));
  v12[2] = bswap32(*(this + 2));
  *(v12 + 3) = bswap64(*(this + 12));
  *(v12 + 5) = bswap64(*(this + 20));
  v13 = v37;
  v14 = *(this + 2);
  v15 = v37 + v14 - (v12 + 7);
  if (v15 >= 1)
  {
    bzero(v12 + 7, v15);
    v14 = *(this + 2);
  }

  v16 = *(details::get_dummy_shared_ptr() + 1);
  *&v27 = v13;
  *(&v27 + 1) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v14;
  v29 = a4;
  v30 = v14;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sg_vec::sg_vec(v35, &v27);
  if (*(&v27 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
  }

  sg_vec_ref::begin(v36, &v27);
  sg_vec_ref::end(v36, &v24);
  v17 = di_asif::details::dir::do_io(a3, a2, &v27, &v24, 0);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (*(&v27 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
  }

  if (v17 < 0)
  {
    v18 = v17;
    if (v17)
    {
      v20 = __cxa_allocate_exception(0x40uLL);
      *v20 = &unk_285BF4E60;
      v21 = std::generic_category();
      v20[1] = v18;
      v20[2] = v21;
      *(v20 + 24) = 0;
      *(v20 + 48) = 0;
      v20[7] = "Failed to write metadata header";
    }
  }

  sg_vec::~sg_vec(v35);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v37, 0);
  return std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v38);
}

void sub_248ECF69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec::~sg_vec(&a65);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v66 - 128), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v65 + 8);
  _Unwind_Resume(a1);
}

di_asif::meta_header *di_asif::meta_header::meta_header(di_asif::meta_header *this, di_asif::details::ContextASIF *a2, di_asif::details::dir *a3, uint64_t a4)
{
  v8 = 0;
  v43[4] = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  v9 = *(a3 + 13);
  v10 = v9 + 511;
  v11 = (v9 + 511) % v9;
  v12 = v10 - v11;
  if (v10 != v11)
  {
    v8 = malloc_type_valloc(v10 - v11, 0x8B7C732DuLL);
    if (!v8)
    {
      exception = __cxa_allocate_exception(8uLL);
      v27 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v27, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  v40[0] = &unk_285BED4C8;
  v40[3] = v40;
  v42 = v8;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v43, v40);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v40);
  v13 = v42;
  v14 = *(details::get_dummy_shared_ptr() + 1);
  *&v31 = v13;
  *(&v31 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = v12;
  v33 = a4;
  v34 = v12;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sg_vec::sg_vec(v40, &v31);
  if (*(&v31 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
  }

  sg_vec_ref::end(v41, &v31);
  v15 = *(a3 + 16);
  v16 = v39;
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(&v31 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
  }

  if (v16 > v15)
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    *v22 = &unk_285BF4E60;
    v23 = std::generic_category();
    v22[1] = 152;
    v22[2] = v23;
    *(v22 + 24) = 0;
    *(v22 + 48) = 0;
    v22[7] = "Metadata offset is invalid";
  }

  sg_vec_ref::begin(v41, &v31);
  sg_vec_ref::end(v41, &v28);
  v17 = di_asif::details::dir::do_io(a3, a2, &v31, &v28, 1);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(&v31 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
  }

  if (v17 < 0 && v17)
  {
    v24 = __cxa_allocate_exception(0x40uLL);
    *v24 = &unk_285BF4E60;
    v25 = std::generic_category();
    v24[1] = v17;
    v24[2] = v25;
    *(v24 + 24) = 0;
    *(v24 + 48) = 0;
    v24[7] = "ASIF meta header failed to read";
  }

  di_asif::meta_header::init(this, v42, a3);
  if (v12 != 28)
  {
    v18 = v42 + 28;
    do
    {
      if (*v18)
      {
        v20 = __cxa_allocate_exception(0x40uLL);
        *v20 = &unk_285BF4E60;
        v21 = std::generic_category();
        v20[1] = 152;
        v20[2] = v21;
        *(v20 + 24) = 0;
        *(v20 + 48) = 0;
        v20[7] = "ASIF meta header trailer isn't equal to zero";
      }

      ++v18;
    }

    while (v18 != &v42[v12]);
  }

  sg_vec::~sg_vec(v40);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v42, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v43);
  return this;
}

void sub_248ECFABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a9);
  sg_vec_ns::details::sg_vec_iterator::~sg_vec_iterator(&a37);
  sg_vec::~sg_vec(&a65);
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v66 - 128), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v65 + 8);
  _Unwind_Resume(a1);
}

uint64_t di_asif::meta_header::init(di_asif::meta_header *this, const char *a2, di_asif::details::dir *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  LODWORD(v18[0]) = 1635018093;
  smart_enums::validators::value<unsigned int>("header_signature", v6, v18, 1);
  *this = 1635018093;
  v7 = bswap32(*(a2 + 1));
  LODWORD(v18[0]) = 1;
  smart_enums::validators::value<unsigned int>("version_t", v7, v18, 1);
  *(this + 1) = 1;
  v8 = bswap32(*(a2 + 2));
  v18[0] = 0x100000000200;
  result = smart_enums::validators::value<unsigned int>("header_size_t", v8, v18, 2);
  *(this + 2) = v8;
  v10 = bswap64(*(a2 + 12));
  *(this + 12) = v10;
  *(this + 20) = bswap64(*(a2 + 20));
  v11 = *(a3 + 13);
  if (v10 > *(a3 + 7) - v11 + (v11 + 511) % v11 - 511)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "ASIF meta header size exceeds its maximum", 0x98u);
  }

  if (v8 % v11)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(v14, "ASIF meta header is unaligned", 0x98u);
  }

  if (v10 % v11)
  {
    v16 = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(v16, "ASIF meta header data is unaligned", 0x98u);
  }

  return result;
}

uint64_t di_asif::Metadata::read_num_blocks(di_asif::Metadata *this, di_asif::details::ContextMetadata *a2)
{
  if (!*(*this + 72))
  {
    return 0;
  }

  di_asif::Metadata::read_metadata_headers(&v4, this, a2);
  v2 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 2);
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2;
}

void sub_248ED00DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<3167ul>>::~logger(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_248ED00FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  di_log::logger<di_log::log_printer<3164ul>>::~logger(va);
  __cxa_end_catch();
  JUMPOUT(0x248ED0118);
}

di_asif::meta_header *di_asif::Metadata::read_metadata_headers@<X0>(uint64_t *__return_ptr a1@<X8>, di_asif::Metadata *this@<X0>, di_asif::details::ContextASIF *a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *(this + 1);
  v16 = *(*this + 72) * v6[7];
  result = std::vector<di_asif::meta_header>::__emplace_back_slow_path<di_asif::details::ContextASIF &,di_asif::details::dir &,unsigned long long>(a1, a3, v6, &v16);
LABEL_2:
  for (i = result; ; i = (i + 28))
  {
    a1[1] = i;
    v9 = *(i - 1);
    if (!v9)
    {
      break;
    }

    v11 = *this;
    v10 = *(this + 1);
    v12 = v9 * *(v10 + 28);
    v16 = v12;
    v13 = *(v10 + 26);
    if (v12 < *(v11 + 48) * v13 || *(v11 + 56) * v13 <= v12)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &unk_285BF4E60;
      v15 = std::generic_category();
      exception[1] = 152;
      exception[2] = v15;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "ASIF: metadata header out of range";
    }

    if (i >= a1[2])
    {
      result = std::vector<di_asif::meta_header>::__emplace_back_slow_path<di_asif::details::ContextASIF &,di_asif::details::dir &,unsigned long long const&>(a1, a3, v10, &v16);
      goto LABEL_2;
    }

    result = di_asif::meta_header::meta_header(i, a3, v10, v12);
  }

  return result;
}

void sub_248ED0268(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<3167ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3167ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF0FB0;
  a1[45] = &unk_285BF10B0;
  a1[46] = &unk_285BF10D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF0FB0;
  a1[45] = &unk_285BF1038;
  a1[46] = &unk_285BF1060;
  return a1;
}

void sub_248ED039C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3167ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3167ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<3164ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3164ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF11D0;
  a1[45] = &unk_285BF12D0;
  a1[46] = &unk_285BF12F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF11D0;
  a1[45] = &unk_285BF1258;
  a1[46] = &unk_285BF1280;
  return a1;
}

void sub_248ED0508(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3164ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3164ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void di_asif::Metadata::read(di_asif::details::dir **this@<X0>, di_asif::details::ContextMetadata *a2@<X1>, CFMutableDictionaryRef *a3@<X8>)
{
  v31[90] = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    di_asif::Metadata::read_metadata_entries(&v23, this, a2);
    v6 = v23;
    v7 = v24;
    if (v23 != v24)
    {
      do
      {
        sg_vec::sg_vec(&keys, v6);
        v8 = this[1];
        sg_vec_ref::begin(v31, &values);
        sg_vec_ref::end(v31, &v20);
        v9 = di_asif::details::dir::do_io(v8, a2, &values, &v20, 1);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v9 < 0 && v9)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          *exception = &unk_285BF4E60;
          v19 = std::generic_category();
          exception[1] = v9;
          exception[2] = v19;
          *(exception + 24) = 0;
          *(exception + 48) = 0;
          exception[7] = "ASIF: failed to deserialize metadata";
        }

        sg_vec::~sg_vec(&keys);
        v6 += 14;
      }

      while (v6 != v7);
      v6 = v23;
      v7 = v24;
    }

    if (v6 == v7)
    {
      goto LABEL_21;
    }

    v10 = 0;
    do
    {
      v10 += *(v6 + 4);
      v6 += 14;
    }

    while (v6 != v7);
    if (!v10)
    {
LABEL_21:
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = v10;
      v12 = malloc_type_valloc(v10, 0x8B7C732DuLL);
      if (!v12)
      {
        v13 = __cxa_allocate_exception(8uLL);
        v14 = std::bad_alloc::bad_alloc(v13);
        __cxa_throw(v14, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }
    }

    values = &unk_285BED4C8;
    p_values = &values;
    keys = v12;
    std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v30, &values);
    std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&values);
    v15 = v23;
    v16 = v24;
    if (v23 != v24)
    {
      v17 = 0;
      do
      {
        memcpy(keys + v17, v15->__vftable, v15->__shared_weak_owners_);
        v17 += LODWORD(v15->__shared_weak_owners_);
        v15 = (v15 + 112);
      }

      while (v15 != v16);
    }

    cf::deserialize_from_xml_plist(keys, v11, a3);
    std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&keys, 0);
    std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v30);
    keys = &v23;
    std::vector<sg_entry>::__destroy_vector::operator()[abi:ne200100](&keys);
  }

  else
  {
    keys = @"internal metadata";
    v30[0] = @"user metadata";
    cf::make_empty_dict(&v20);
    cf::make_empty_dict(&v23);
    values = v20;
    v26 = v23;
    cf::make_dict(&keys, &values, 2, a3);
    CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v23);
    CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v20);
  }
}

void sub_248ED087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37)
{
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&a37);
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&a9);
  _Unwind_Resume(a1);
}

const void **di_asif::Metadata::default_metadata@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  keys[2] = *MEMORY[0x277D85DE8];
  keys[0] = @"internal metadata";
  keys[1] = @"user metadata";
  cf::make_empty_dict(&v5);
  cf::make_empty_dict(&v4);
  values[0] = v5;
  values[1] = v4;
  cf::make_dict(keys, values, 2, a1);
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v4);
  return CFAutoRelease<__CFDictionary *>::~CFAutoRelease(&v5);
}

void sub_248ED0B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(va);
  CFAutoRelease<__CFDictionary *>::~CFAutoRelease(va1);
  _Unwind_Resume(a1);
}

void di_asif::Metadata::read_metadata_entries(uint64_t *__return_ptr a1@<X8>, di_asif::Metadata *this@<X0>, di_asif::details::ContextASIF *a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  di_asif::Metadata::read_metadata_headers(&v9, this, a3);
  if (v10 != v9)
  {
    v4 = *(v9 + 12);
    if (!(v4 % *(*(this + 1) + 26)))
    {
      if (v4)
      {
        if (!malloc_type_valloc(v4, 0x4DC0432DuLL))
        {
          exception = __cxa_allocate_exception(8uLL);
          v8 = std::bad_alloc::bad_alloc(exception);
          __cxa_throw(v8, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
        }
      }

      operator new();
    }

    v5 = __cxa_allocate_exception(0x40uLL);
    *v5 = &unk_285BF4E60;
    v6 = std::generic_category();
    v5[1] = 152;
    v5[2] = v6;
    *(v5 + 24) = 0;
    *(v5 + 48) = 0;
    v5[7] = "Unaligned metadata entry size";
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void sub_248ED0E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<sg_entry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_248ED0E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  std::vector<sg_entry>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_248ED0E2C(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

void sub_248ED0E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_end_catch();
  if (a14)
  {
    operator delete(a14);
  }

  JUMPOUT(0x248ED0E64);
}

void *di_log::logger<di_log::log_printer<3203ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3203ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF13F0;
  a1[45] = &unk_285BF14F0;
  a1[46] = &unk_285BF1518;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF13F0;
  a1[45] = &unk_285BF1478;
  a1[46] = &unk_285BF14A0;
  return a1;
}

void sub_248ED0F7C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3203ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3203ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<3200ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3200ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF1610;
  a1[45] = &unk_285BF1710;
  a1[46] = &unk_285BF1738;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF1610;
  a1[45] = &unk_285BF1698;
  a1[46] = &unk_285BF16C0;
  return a1;
}

void sub_248ED10E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3200ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3200ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

const void **di_asif::Metadata::write(const void **this, Backend **a2, CFPropertyListRef propertyList)
{
  v66[4] = *MEMORY[0x277D85DE8];
  if (propertyList)
  {
    v4 = this;
    v5 = *this;
    v6 = this[1];
    v7 = v6[7];
    v8 = *(*this + 9) * v7;
    v9 = *(v6 + 13);
    if (!v8)
    {
      v8 = (*(v5 + 7) * v9 - v7) / v7 * v7;
    }

    if (v8 < *(v5 + 6) * v9)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Not enough space for metadata", 0x1Cu);
    }

    cf::serialize_to_xml_plist(v63, propertyList);
    v10 = v63[1];
    cf = v63[0];
    v63[0] = 0;
    CFAutoRelease<__CFData const*>::~CFAutoRelease(v63);
    v11 = *v4;
    v12 = v4[1];
    v13 = *(v12 + 7);
    v14 = *(v12 + 13);
    v15 = v13 - (v14 + 511) + (v14 + 511) % v14;
    v16 = v10 + v15 - 1;
    v48 = v16 / v15;
    v49 = v10;
    if (v16 / v15 * v13 > v8 + v13 - *(*v4 + 6) * v14)
    {
      v43 = __cxa_allocate_exception(0x40uLL);
      *v43 = &unk_285BF4E60;
      v44 = std::generic_category();
      v43[1] = 28;
      v43[2] = v44;
      *(v43 + 24) = 0;
      *(v43 + 48) = 0;
      v43[7] = "Not enough space for metadata";
    }

    if (v15 <= v16)
    {
      v17 = 0;
      v18 = v48 - 1;
      v45 = v10 % v15;
      v46 = v8;
      v47 = a2;
      do
      {
        if (v18 == v17)
        {
          v19 = 0;
          v20 = v4[1];
          v21 = v8 - v18 * *(v20 + 7);
          v22 = v45;
        }

        else
        {
          v20 = v4[1];
          v23 = *(v20 + 7);
          v21 = v8 - v17 * v23;
          v19 = (v21 - v23) / v23;
          v22 = v15;
        }

        v24 = v22 - 1;
        di_asif::meta_header::meta_header(v61, (v22 - 1 + *(v20 + 13)) / *(v20 + 13) * *(v20 + 13), v19);
        di_asif::meta_header::write_header(v61, a2, v4[1], v21);
        if (v49 - v22 >= v17 * v15)
        {
          v25 = v17 * v15;
        }

        else
        {
          v25 = v49 - v22;
        }

        v26 = *(v4[1] + 13);
        v27 = v24 + v26;
        v28 = (v24 + v26) % v26;
        v29 = (v27 - v28);
        if (v27 != v28)
        {
          v29 = malloc_type_valloc(v29, 0x8B7C732DuLL);
          if (!v29)
          {
            v39 = __cxa_allocate_exception(8uLL);
            v40 = std::bad_alloc::bad_alloc(v39);
            __cxa_throw(v40, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
          }
        }

        v63[0] = &unk_285BED4C8;
        v63[3] = v63;
        v65 = v29;
        std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v66, v63);
        std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v63);
        v30 = v65;
        BytePtr = CFDataGetBytePtr(cf);
        memcpy(v30, &BytePtr[v25], v22);
        v32 = *(v4[1] + 13);
        if (v22 % v32)
        {
          bzero(&v65[v22], v32 - v22 % v32);
          v32 = *(v4[1] + 13);
        }

        v33 = v65;
        v34 = *(details::get_dummy_shared_ptr() + 1);
        *&v53 = v33;
        *(&v53 + 1) = v34;
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        v54 = (v24 + v32) / v32 * v32;
        v55 = v32 + 511 + v21 - (v32 + 511) % v32;
        v56 = v54;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        sg_vec::sg_vec(v63, &v53);
        if (*(&v53 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
        }

        v35 = v4[1];
        sg_vec_ref::begin(v64, &v53);
        a2 = v47;
        sg_vec_ref::end(v64, v50);
        v36 = di_asif::details::dir::do_io(v35, v47, &v53, v50, 0);
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        if (*(&v53 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
        }

        if (v36 < 0 && v36)
        {
          v37 = __cxa_allocate_exception(0x40uLL);
          *v37 = &unk_285BF4E60;
          v38 = std::generic_category();
          v37[1] = v36;
          v37[2] = v38;
          *(v37 + 24) = 0;
          *(v37 + 48) = 0;
          v37[7] = "Failed to write metadata";
        }

        sg_vec::~sg_vec(v63);
        std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v65, 0);
        std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v66);
        ++v17;
        v18 = v48 - 1;
        v8 = v46;
      }

      while (v17 < v48);
      v11 = *v4;
    }

    if (!*(v11 + 9))
    {
      *(v11 + 9) = v8 / *(v4[1] + 7);
      di_asif::header::write_header(v11, a2[2]);
    }

    return CFAutoRelease<__CFData const*>::~CFAutoRelease(&cf);
  }

  return this;
}

void sub_248ED16D4(_Unwind_Exception *a1)
{
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&STACK[0x218]);
  CFAutoRelease<__CFData const*>::~CFAutoRelease(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void DiskImageASIF::get_used_extents(DiskImageASIF *this@<X0>, void *a2@<X8>)
{
  v18 = 0;
  v19 = 0;
  v17 = &v18;
  if (*di_asif::header::get_dir_offset((this + 32), *(this + 26)))
  {
    v4 = (*(*this + 144))(this);
    v5 = *(this + 83);
    v6 = *(this + 84);
    if (v5 == v6)
    {
      v9 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(v5 + 8 * v8) * *(this + 24);
        v16 = v10;
        if (v10)
        {
          di_asif::details::dir::get_extents_for_table<std::insert_iterator<std::set<unsigned long long>>>(this + 63, v4, v8, v10, &v17, v17);
          std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(&v17, &v16, &v16);
          ++v9;
        }

        else if (*(this + 392) == 1)
        {
          v14 = 0;
          v15 = *(this + 73);
          analytics_collector_t::operator+=(this + 29, &v14);
        }

        v8 = (v8 + 1);
        v7 += 8;
      }

      while (v5 + v7 != v6);
    }

    if (*(this + 392))
    {
      analytics_collector_t::table_counter_add(this + 232, v9);
    }

    v11 = v18;
    *a2 = v17;
    a2[1] = v11;
    v12 = a2 + 1;
    v13 = v19;
    a2[2] = v19;
    if (!v13)
    {
      *a2 = v12;
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v11[2] = v12;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
    if (v4)
    {
LABEL_16:
      (*(*v4 + 40))(v4);
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }

LABEL_17:
  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(&v17, v18);
}

void sub_248ED1950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    (*(*v13 + 40))(v13, a2, a3, a4, a5, a6, a7, a8);
  }

  std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

atomic_ullong *di_asif::details::dir::get_extents_for_table<std::insert_iterator<std::set<unsigned long long>>>(uint64_t *a1, di_asif::details::ContextASIF *a2, std::unique_lock<std::mutex>::mutex_type *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  di_asif::details::dir::load_create_table(&v11, a1, a2, a3, a4, 0, 1);
  if (v11 && (v11[520] & 1) == 0)
  {
    if (v11[400])
    {
      v9 = (v11 + 40);
    }

    else
    {
      v9 = 0;
    }

    di_asif::details::table::get_table_extents<std::insert_iterator<std::set<unsigned long long>>>(v9, a2, a5, a6);
  }

  return ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(&v11);
}

void sub_248ED1B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ref::tagged_ptr<di_asif::details::table,unsigned long long>::reset(va);
  _Unwind_Resume(a1);
}

uint64_t DiskImageASIF::insert_free_extents_to_allocator(uint64_t result, void *a2, unint64_t a3, unsigned int a4)
{
  v7 = result;
  if (a2[2])
  {
    v8 = a2 + 1;
    v9 = a2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (v11);
    }

    v12 = v10[4] + a4;
    result = (*(*(result + 504) + 16))();
    if (*(result + 96) <= v12)
    {
      *(result + 96) = v12;
    }
  }

  v15 = *a2;
  v13 = a2 + 1;
  v14 = v15;
  if (v15 != v13)
  {
    do
    {
      v16 = v14[4];
      atomic_fetch_add((v7 + 512), 1uLL);
      v22 = a3;
      v23 = a4;
      if ((v16 - a3) % a4)
      {
        v17 = (v16 - a3) / a4 + 1;
      }

      else
      {
        v17 = (v16 - a3) / a4;
      }

      *&v20 = a3;
      *(&v20 + 1) = v17;
      v21 = a4;
      result = di_asif::details::dir::insert_space_no_update<boost::range_detail::integer_iterator_with_step<unsigned long long>>(v7 + 504, &v22, &v20);
      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v14[2];
          v11 = *v19 == v14;
          v14 = v19;
        }

        while (!v11);
      }

      a3 = v16 + a4;
      v14 = v19;
    }

    while (v19 != v13);
  }

  return result;
}

uint64_t di_asif::details::dir::insert_space_no_update<boost::range_detail::integer_iterator_with_step<unsigned long long>>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = (*(*a1 + 16))(a1);
  v9 = *a2;
  v10 = *(a2 + 2);
  v7 = *a3;
  v8 = *(a3 + 2);
  v12 = 0;
  space_allocators::FixedSize::insert<boost::range_detail::integer_iterator_with_step<unsigned long long>>(v5, &v9, &v7, v11);
  return std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](v11);
}

void sub_248ED1D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<int ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void DiskImageASIF::DiskImageASIF(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v22[5] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *a1 = &unk_285BEC560;
  LODWORD(v22[0]) = *(a3 + 96);
  if (smart_enums::validators::is_valid<Wrapper<di_asif::header_read_only_flags,std::integral_constant<BOOL,false>,be_type>,unsigned int>("header read-only flags", v22, smart_enums::validators::flags<unsigned int>))
  {
    v12 = *a2;
    *(a1 + 16) = *a2;
    v13 = a2[1];
    *(a1 + 24) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = *(a1 + 16);
    }

    *(a1 + 32) = 2003069043;
    *(a1 + 36) = *(a3 + 4);
    *(a1 + 44) = *(a3 + 12);
    v14 = *(a3 + 16);
    v15 = *(a3 + 32);
    v16 = *(a3 + 48);
    *(a1 + 94) = *(a3 + 62);
    *(a1 + 64) = v15;
    *(a1 + 80) = v16;
    *(a1 + 48) = v14;
    *(a1 + 102) = 0;
    v17 = *(a3 + 72);
    *(a1 + 120) = *(a3 + 88);
    *(a1 + 104) = v17;
    *(a1 + 128) = *(a3 + 96);
    *(a1 + 132) = *(a3 + 100);
    *(a1 + 136) = *(a3 + 104);
    *(a1 + 144) = 850045863;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0;
    *(a1 + 208) = a4;
    v18 = *a6;
    *(a1 + 224) = *(a6 + 2);
    *(a1 + 216) = v18;
    *(a1 + 232) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 496) = 0;
    v19 = *(a3 + 56);
    v20 = *(a3 + 68);
    v21 = *(a3 + 64);
    v22[0] = &unk_285BF1888;
    v22[1] = a1;
    v22[3] = v22;
    di_asif::details::dir::dir((a1 + 504), a1, v19 * v20, v21, v20, a5, 2, v12, v22, a1 + 232);
  }

  std::allocate_shared[abi:ne200100]<ReadOnlyBackend,std::allocator<ReadOnlyBackend>,std::shared_ptr<Backend>,0>();
}

void sub_248ED20EC(_Unwind_Exception *a1)
{
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  di_asif::details::dir::~dir(v4);
  if (*(v1 + 496) == 1)
  {
    DiskImageASIF::telemetry_t::~telemetry_t((v1 + 400));
  }

  std::optional<analytics_collector_t>::~optional(v3);
  std::mutex::~mutex(v2);
  v7 = *(v1 + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void sub_248ED21C4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x248ED21BCLL);
}

void DiskImageASIF::telemetry_t::start_telemetry(DiskImageASIF::telemetry_t *this)
{
  v2 = (this + 32);
  v3 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<DiskImageASIF::telemetry_t::start_telemetry(void)::$_0 &&>>);
  }
}

uint64_t std::optional<analytics_collector_t>::~optional(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    *a1 = &unk_285BE59A0;
    std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100]((a1 + 24), 0);
    std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](a1 + 32);
  }

  return a1;
}

void DiskImageASIF::DiskImageASIF(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t *a7, _OWORD *a8, __int128 *a9)
{
  v20[5] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *a1 = &unk_285BEC560;
  *(a1 + 16) = *a6;
  v16 = a6[1];
  *(a1 + 24) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a7 + 1);
  LODWORD(v19) = v17;
  LODWORD(v20[0]) = 1;
  smart_enums::validators::flags<unsigned int>("header_flags", v17, v20, 1);
  di_asif::header::header(a1 + 32, &v19, a8, a4, a5, a3, a2);
  *(a1 + 144) = 850045863;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v18 = *a7;
  *(a1 + 224) = *(a7 + 2);
  *(a1 + 216) = v18;
  *(a1 + 232) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 496) = 0;
  v20[0] = &unk_285BF1888;
  v20[1] = a1;
  v20[3] = v20;
  di_asif::details::dir::dir((a1 + 504), a1, a2 * a5, a3, a2, a2 + 511 - (a2 + 511) % a2, 2, 0, v20, a1 + 232);
}

{
  DiskImageASIF::DiskImageASIF(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_248ED260C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  di_asif::details::dir::~dir(v16);
  if (*(v13 + 496) == 1)
  {
    DiskImageASIF::telemetry_t::~telemetry_t((v13 + 400));
  }

  std::optional<analytics_collector_t>::~optional(v15);
  std::mutex::~mutex(v14);
  v18 = *(v13 + 24);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void sub_248ED2A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a17);
  v20 = a18;
  a18 = 0;
  if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  _Unwind_Resume(a1);
}

void DiskImageASIF::telemetry_t::~telemetry_t(DiskImageASIF::telemetry_t *this)
{
  gcd::gcd_queue::sync(this + 5, this + 6);
  gcd::gcd_timer_source::~gcd_timer_source(this + 7);
  gcd::gcd_block::~gcd_block(this + 6);
  gcd::gcd_group::~gcd_group(this + 5);
}

uint64_t DIAnalytics::sendEvent(uint64_t *a1, uint64_t a2)
{
  v10[19] = MEMORY[0x277D85DD0];
  v10[20] = 0x40000000;
  v10[21] = ___ZN11DIAnalytics9sendEventERKNSt3__117basic_string_viewIcNS0_11char_traitsIcEEEERKNS0_3mapINS0_12basic_stringIcS3_NS0_9allocatorIcEEEENS0_7variantIJSB_yEEENS0_4lessISB_EENS9_INS0_4pairIKSB_SD_EEEEEE_block_invoke;
  v10[22] = &__block_descriptor_tmp_1511;
  v10[23] = a2;
  v4 = analytics_send_event_lazy();
  *&v6 = "void DIAnalytics::sendEvent(const std::string_view &, const std::map<std::string, data_t> &)";
  *(&v6 + 1) = 27;
  v7 = 0;
  di_log::logger<di_log::log_printer<39ul>>::logger(v8, &v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "sendEvent of type ", 18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, *a1, a1[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " with ", 6);
  MEMORY[0x24C1ED3C0](&v9, *(a2 + 16));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " elements returned ", 19);
  MEMORY[0x24C1ED380](&v9, v4);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<39ul>>::~logger_buf(v8);
  return MEMORY[0x24C1ED6A0](v10);
}

void sub_248ED2CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  di_log::logger<di_log::log_printer<39ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void sub_248ED2D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::__tree<std::__value_type<std::string,std::variant<std::string,unsigned long long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<std::string,unsigned long long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<std::string,unsigned long long>>>>::destroy(&a9, a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DiskImageASIF::telemetry_t::create_event_map<DiskImageASIF::telemetry_t::defrag_fields>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v2[0] = a1;
  v2[1] = a2;
  v4 = v2;
  boost::hana::unpack_t::operator()<boost::hana::basic_tuple<boost::hana::string<(char)116,(char)101,(char)108,(char)101,(char)109,(char)101,(char)116,(char)114,(char)121,(char)73,(char)68>,boost::hana::string<(char)116,(char)101,(char)108,(char)101,(char)109,(char)101,(char)116,(char)114,(char)121,(char)73,(char)110,(char)100,(char)101,(char)120>,boost::hana::string<(char)110,(char)117,(char)109,(char)67,(char)104,(char)117,(char)110,(char)99,(char)107,(char)115,(char)68,(char)101,(char)102,(char)114,(char)97,(char)103,(char)101,(char)100>>,boost::hana::detail::on_each<std::map<std::string,std::variant<std::string,unsigned long long>> DiskImageASIF::telemetry_t::create_event_map<DiskImageASIF::telemetry_t::defrag_fields>(DiskImageASIF::telemetry_t::defrag_fields const&)::{lambda(DiskImageASIF::telemetry_t::defrag_fields)#1} *>>(&boost::hana::unpack, &v3, &v4);
}

uint64_t DiskImageASIF::get_dir_latest_offset(DiskImageASIF *this, Backend *a2, const di_asif::header *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = *di_asif::header::get_dir_offset(a2, v5);
    if (v11)
    {
      version = di_asif::details::dir::get_version(this, v11);
      if ((v6 & (v7 >= version)) != 0)
      {
        v6 = 1;
      }

      else
      {
        v6 = 1;
        v8 = v5;
        v7 = version;
      }
    }

    v9 = 0;
    v5 = 1;
  }

  while ((v10 & 1) != 0);
  return v8;
}

uint64_t DiskImageASIF::void_stackable_identifier(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = (a1 + 4384);
  v5[0] = a1;
  v5[1] = &v6;
  v5[2] = a2;
  if (atomic_load_explicit(v3, memory_order_acquire) != -1)
  {
    v8 = v5;
    v7 = &v8;
    std::__call_once(v3, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<DiskImageASIF::void_stackable_identifier(std::shared_ptr<Backend> &)::$_0 &&>>);
  }

  if (v6 < 0)
  {
    return v6;
  }

  else
  {
    return -v6;
  }
}

uint64_t DiskImageASIF::flush(uint64_t a1, Backend **a2, int a3)
{
  std::mutex::lock((a1 + 144));
  v6 = *di_asif::header::get_dir_offset((a1 + 32), *(a1 + 208));
  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 100);
    v9 = *(a1 + 208);
    v10 = *(a1 + 632);
    v11 = *(a1 + 592);
    dir_offset = di_asif::header::get_dir_offset((a1 + 32), v9);
    v7 = (v8 + 511 - (v8 + 511) % v8 + (8 * ((v10 + v11 - 1) / v11) + v8 + 7) / v8 * v8 * v9);
    *dir_offset = v7;
  }

  v13 = di_asif::details::dir::flush((a1 + 504), a2, v7, v6 == 0);
  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    *&v20 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v20 + 1) = 24;
    v21 = 16;
    di_log::logger<di_log::log_printer<3573ul>>::logger(v22, &v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Root dir flush failed, error ", 29);
    MEMORY[0x24C1ED390](&v23, v14);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(v22);
LABEL_22:
    MEMORY[0x24C1ED6A0](&v24);
    goto LABEL_23;
  }

  if (v13 == 1)
  {
    v15 = *(a1 + 208);
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    *(a1 + 208) = v16;
  }

  if (!v6)
  {
    v14 = (*(*a2[2] + 16))(a2[2], 0);
    if (!v14)
    {
      di_asif::header::write_header((a1 + 32), a2[2]);
    }

    *&v20 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v20 + 1) = 24;
    v21 = 16;
    di_log::logger<di_log::log_printer<3585ul>>::logger(v22, &v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Backend barrier failed after dir offset changed, error ", 55);
    MEMORY[0x24C1ED390](&v23, v14);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(v22);
    goto LABEL_22;
  }

  v14 = (*(*a2[2] + 16))(a2[2], 2 * (a3 == 2));
  if ((v14 & 0x80000000) != 0)
  {
    *&v20 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&v20 + 1) = 24;
    v21 = 16;
    di_log::logger<di_log::log_printer<3596ul>>::logger(v22, &v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Final asif ", 11);
    if (a3 == 2)
    {
      v17 = "flush";
    }

    else
    {
      v17 = "barrier";
    }

    if (a3 == 2)
    {
      v18 = 5;
    }

    else
    {
      v18 = 7;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v17, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, " failed, error ", 15);
    MEMORY[0x24C1ED390](&v23, v14);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(v22);
    goto LABEL_22;
  }

LABEL_23:
  std::mutex::unlock((a1 + 144));
  return v14;
}

void sub_248ED3300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a2 == 1)
  {
    v59 = __cxa_begin_catch(a1);
    *&a9 = "int DiskImageASIF::flush(DiskImage::Context &, di_flush_mode)";
    *(&a9 + 1) = 24;
    a11 = 16;
    di_log::logger<di_log::log_printer<3600ul>>::logger(&a13, &a9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a58, "Error during ASIF flush: ", 25);
    operator<<(&a58, v59);
    di_log::logger<di_log::log_printer<3600ul>>::~logger(&a13);
    __cxa_end_catch();
    JUMPOUT(0x248ED32D4);
  }

  std::mutex::unlock((v57 + 144));
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<3573ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3573ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF1B40;
  a1[45] = &unk_285BF1C40;
  a1[46] = &unk_285BF1C68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF1B40;
  a1[45] = &unk_285BF1BC8;
  a1[46] = &unk_285BF1BF0;
  return a1;
}

void sub_248ED3524(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3573ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3573ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<3585ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3585ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF1D60;
  a1[45] = &unk_285BF1E60;
  a1[46] = &unk_285BF1E88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF1D60;
  a1[45] = &unk_285BF1DE8;
  a1[46] = &unk_285BF1E10;
  return a1;
}

void sub_248ED3690(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3585ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3585ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<3590ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3590ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF1F80;
  a1[45] = &unk_285BF2080;
  a1[46] = &unk_285BF20A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF1F80;
  a1[45] = &unk_285BF2008;
  a1[46] = &unk_285BF2030;
  return a1;
}

void sub_248ED37FC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3590ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3590ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<3596ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3596ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF21A0;
  a1[45] = &unk_285BF22A0;
  a1[46] = &unk_285BF22C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF21A0;
  a1[45] = &unk_285BF2228;
  a1[46] = &unk_285BF2250;
  return a1;
}

void sub_248ED3968(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3596ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3596ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<3600ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<3600ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF23C0;
  a1[45] = &unk_285BF24C0;
  a1[46] = &unk_285BF24E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF23C0;
  a1[45] = &unk_285BF2448;
  a1[46] = &unk_285BF2470;
  return a1;
}

void sub_248ED3AD4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<3600ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<3600ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248ED3D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  __cxa_free_exception(v12);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a11);
  v14 = a12;
  a12 = 0;
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  _Unwind_Resume(a1);
}

void sub_248ED3E7C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1ED730](v2, 0xA1C4030951706);
  if (v1)
  {
    (*(*v1 + 40))(v1);
  }

  _Unwind_Resume(a1);
}

void sub_248ED412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a11);
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  _Unwind_Resume(a1);
}

void sub_248ED43C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, uint64_t a17)
{
  __cxa_free_exception(v17);
  CFAutoRelease<__CFDictionary const*>::~CFAutoRelease(&a16);
  v19 = a17;
  a17 = 0;
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  _Unwind_Resume(a1);
}

const __CFString *DiskImageASIF::get_stackable_source_identifier(di_asif::details::dir **this)
{
  if (*(this + 7) == 0)
  {
    DiskImageASIF::internal_metadata_get_key_uuid(this, @"source uuid");
  }

  return this[14];
}

void DiskImageASIF::~DiskImageASIF(DiskImageASIF *this)
{
  *this = &unk_285BEC560;
  di_asif::details::dir::~dir((this + 504));
  if (*(this + 496) == 1)
  {
    DiskImageASIF::telemetry_t::~telemetry_t((this + 400));
  }

  if (*(this + 392) == 1)
  {
    *(this + 29) = &unk_285BE59A0;
    std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](this + 32, 0);
    std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](this + 264);
  }

  std::mutex::~mutex((this + 144));
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_285BEC560;
  di_asif::details::dir::~dir((this + 504));
  if (*(this + 496) == 1)
  {
    DiskImageASIF::telemetry_t::~telemetry_t((this + 400));
  }

  if (*(this + 392) == 1)
  {
    *(this + 29) = &unk_285BE59A0;
    std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](this + 32, 0);
    std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](this + 264);
  }

  std::mutex::~mutex((this + 144));
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x24C1ED730);
}

uint64_t DiskImageASIF::set_size(DiskImageASIF *this, uint64_t a2)
{
  v4 = DiskImage::set_size_unmap_data(this, a2);
  if (!v4)
  {
    v5 = (*(*this + 24))(this);
    v6 = (a2 + v5 - 1) / v5;
    if (v6 <= *(this + 11))
    {
      v7 = (*(*this + 144))(this);
      di_asif::details::ContextMetadata::ContextMetadata(v10, this, v7);
      v8 = *(this + 11);
      if (v8 - v6 >= di_asif::Metadata::read_num_blocks((this + 4368), v10))
      {
        *(this + 10) = v6;
        di_asif::header::write_header((this + 32), *(this + 2));
      }

      v4 = 4294967269;
      v10[0] = &unk_285BE5728;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      (*(*v7 + 40))(v7);
    }

    else
    {
      return 4294967269;
    }
  }

  return v4;
}

void sub_248ED492C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    (*(*v12 + 40))(v12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DiskImageASIF::read(DiskImageASIF *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v8 = ((*(a4 + 26) - *(a3 + 26)) & ~((*(a4 + 26) - *(a3 + 26)) >> 63)) + *(a3 + 3);
  v9 = *(this + 10);
  if (v8 > (*(*this + 24))(this) * v9)
  {
    return -34;
  }

  else
  {
    return di_asif::details::dir::do_io((this + 504), a2, a3, a4, 1);
  }
}

uint64_t DiskImageASIF::write(DiskImageASIF *this, DiskImage::Context *a2, const sg_vec_ns::details::sg_vec_iterator *a3, const sg_vec_ns::details::sg_vec_iterator *a4)
{
  v8 = ((*(a4 + 26) - *(a3 + 26)) & ~((*(a4 + 26) - *(a3 + 26)) >> 63)) + *(a3 + 3);
  v9 = *(this + 10);
  if (v8 > (*(*this + 24))(this) * v9)
  {
    return -34;
  }

  v10 = DiskImageASIF::void_stackable_identifier(this, a2 + 16);
  if (v10)
  {
    return v10;
  }

  else
  {
    return di_asif::details::dir::do_io((this + 504), a2, a3, a4, 0);
  }
}

uint64_t DiskImageASIF::unmap(void *a1, di_asif::details::ContextASIF *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = (a3 + 8);
    v9 = a4;
    while (1)
    {
      v10 = *v8 + *(v8 - 1);
      v11 = (*(*a1 + 24))(a1) * v10;
      v12 = a1[10];
      if (v11 > (*(*a1 + 24))(a1) * v12)
      {
        return 4294967262;
      }

      v8 += 2;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = DiskImageASIF::void_stackable_identifier(a1, a2 + 16);
    if (!result)
    {
      return di_asif::details::dir::unmap((a1 + 63), a2, a3, a4);
    }
  }

  return result;
}

uint64_t DiskImageASIF::_terminate(uint64_t this)
{
  *(this + 1704) |= 2u;
  *(this + 3328) |= 2u;
  return this;
}

void di_asif::details::ContextMetadata::~ContextMetadata(di_asif::details::ContextMetadata *this)
{
  *this = &unk_285BE5728;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_285BE5728;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1ED730);
}

uint64_t *std::vector<ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_248ED4F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ref::tagged_weak_ptr<di_asif::details::map_element,unsigned long long>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<std::atomic<DiskImage::Context *> *>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<iovec>::__throw_length_error[abi:ne200100]();
}

uint64_t space_allocators::FixedSize::allocate(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  if (*(a1 + 88))
  {
    v4 = *(a1 + 72);
    v5 = v4[4];
    std::__tree<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<_di_plugin_t>>>>::__remove_node_pointer((a1 + 72), v4);
    operator delete(v4);
    std::mutex::unlock((a1 + 8));
  }

  else
  {
    v5 = *(a1 + 96);
    *(a1 + 96) = *a1 + v5;
    std::mutex::unlock((a1 + 8));
    if (*(a2 + 24))
    {
      v7 = std::function<int ()(unsigned long long)>::operator()(a2, *a1 + v5);
      if (v7)
      {
        v8 = v7;
        *&v9 = "space_allocators::FixedSize::allocate(const size_changed_fn_t &)";
        *(&v9 + 1) = 37;
        v10 = 16;
        di_log::logger<di_log::log_printer<137ul>>::logger(v11, &v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "allocated: size change callback failed with ", 44);
        MEMORY[0x24C1ED390](&v12, v8);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v11);
        MEMORY[0x24C1ED6A0](&v13);
      }
    }
  }

  return v5;
}

void sub_248ED5074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<137ul>>::~logger(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<int ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *di_log::logger<di_log::log_printer<137ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<137ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEC700;
  a1[45] = &unk_285BEC800;
  a1[46] = &unk_285BEC828;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEC700;
  a1[45] = &unk_285BEC788;
  a1[46] = &unk_285BEC7B0;
  return a1;
}

void sub_248ED51E0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<137ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<137ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEC898;
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

void sub_248ED52F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEC898;
  di_log::logger_buf<di_log::log_printer<137ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<137ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<137ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<137ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<137ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<137ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<137ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<137ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<137ul>::log((a1 + 72), __p);
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

void sub_248ED589C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<137ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 137;
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
      v26 = 137;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN7di_asif7details8dir_base18write_zeroed_chunkERNS3_11ContextASIFEmEUlT_E_NS_9allocatorIS8_EEFiyEE7__cloneEPNS0_6__baseISB_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285BEC918;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN7di_asif7details8dir_base18write_zeroed_chunkERNS3_11ContextASIFEmEUlT_E_NS_9allocatorIS8_EEFiyEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN7di_asif7details8dir_base18write_zeroed_chunkERNS0_11ContextASIFEmEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZZN7di_asif7details8dir_base18write_zeroed_chunkERNS0_11ContextASIFEmENKUlT_E_clIyEEDaS4_(uint64_t a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(v5 + 2);
  if (v4)
  {
    v4 = malloc_type_valloc(v4, 0x8B7C732DuLL);
    if (!v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v12, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  v13 = &unk_285BED4C8;
  v16 = &v13;
  v21 = v4;
  std::__function::__value_func<void ()(char *)>::__value_func[abi:ne200100](v22, &v13);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](&v13);
  bzero(v21, *(a1 + 8));
  v7 = v21;
  v8 = *(a1 + 8);
  v9 = *(details::get_dummy_shared_ptr() + 1);
  v13 = v7;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v8;
  v16 = (a2 - v8);
  v17 = v8;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LODWORD(v6) = (*(*v6 + 120))(v6, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(a1 + 8) == v6)
  {
    v6 = 0;
  }

  else
  {
    if (v6 >= 0)
    {
      v6 = 4294967291;
    }

    else
    {
      v6 = v6;
    }

    DiskImage::Context::terminate_di(*a1);
  }

  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100](&v21, 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v22);
  return v6;
}

void sub_248ED5D54(_Unwind_Exception *a1)
{
  std::unique_ptr<char,std::function<void ()(char *)>>::reset[abi:ne200100]((v2 - 96), 0);
  std::__function::__value_func<void ()(char *)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN7di_asif7details8dir_base15trim_backend_fnERNS3_11ContextASIFEEUlT_E_NS_9allocatorIS8_EEFiyEE7__cloneEPNS0_6__baseISB_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285BEC9A8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN7di_asif7details8dir_base15trim_backend_fnERNS3_11ContextASIFEEUlT_E_NS_9allocatorIS8_EEFiyEEclEOy(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 8) + 16);
  if ((*(*v4 + 40))(v4) > v3 && (*(*v4 + 56))(v4, v3))
  {
    DiskImage::Context::terminate_di(*(a1 + 8));
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN7di_asif7details8dir_base15trim_backend_fnERNS3_11ContextASIFEEUlT_E_NS_9allocatorIS8_EEFiyEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN7di_asif7details8dir_base15trim_backend_fnERNS0_11ContextASIFEEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void space_allocators::FixedSize::insert(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2;
  std::mutex::lock((a1 + 8));
  std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(a1 + 72, &v6, &v6);
  v5 = *a1 + v6;
  if (*(a1 + 96) <= v5)
  {
    *(a1 + 96) = v5;
  }

  space_allocators::FixedSize::trim_largest(a1, a3);
  std::mutex::unlock((a1 + 8));
}

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<497ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<497ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<497ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<497ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<497ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BECBC8;
  di_log::logger_buf<di_log::log_printer<497ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<497ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<497ul>::log((a1 + 72), __p);
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

void sub_248ED65BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<497ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<497ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 497;
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
      v26 = 497;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<528ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<528ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<528ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<528ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<528ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BECDE8;
  di_log::logger_buf<di_log::log_printer<528ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<528ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<528ul>::log((a1 + 72), __p);
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

void sub_248ED6D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<528ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<528ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 528;
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
      v26 = 528;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *di_asif::details::table_entry_data::table_entry_data(void *this, di_asif::details::table *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  atomic_load((*(a2 + 7) + 16 * a3 + 8));
  v3 = atomic_load((*(a2 + 7) + 16 * a3 + 8));
  if ((v3 & 0x3F80000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "ASIF: data entry - invalid reserved bits", 0x16u);
  }

  return this;
}

void *di_asif::details::table_entry_map::table_entry_map(void *this, di_asif::details::table *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a3;
  v3 = atomic_load((*(a2 + 7) + 16 * a3 + 8));
  if ((v3 & 0x3F80000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "ASIF: data entry - invalid reserved bits", 0x16u);
  }

  return this;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<637ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<637ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<637ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<637ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<637ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BED008;
  di_log::logger_buf<di_log::log_printer<637ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<637ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<637ul>::log((a1 + 72), __p);
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

void sub_248ED75C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<637ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<637ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 637;
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
      v26 = 637;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<644ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<644ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<644ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<644ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<644ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BED228;
  di_log::logger_buf<di_log::log_printer<644ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<644ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<644ul>::log((a1 + 72), __p);
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

void sub_248ED7D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<644ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<644ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 644;
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
      v26 = 644;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<656ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<656ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<656ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<656ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<656ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BED448;
  di_log::logger_buf<di_log::log_printer<656ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<656ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<656ul>::log((a1 + 72), __p);
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

void sub_248ED84F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<656ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<656ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 656;
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
      v26 = 656;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t std::vector<ref::details::ref_cnt_set_handle>::__emplace_back_slow_path<ref::details::ref_cnt_set_handle>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<iovec>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<ref::details::ref_cnt_set_handle>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v15 = 0;
  v16 = 32 * v2;
  v17 = (32 * v2);
  v8 = ref::details::ref_cnt_handle::ref_cnt_handle(32 * v2, a2);
  *v8 = &unk_285BF4C70;
  v8[3] = *(a2 + 24);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ref::details::ref_cnt_set_handle>,ref::details::ref_cnt_set_handle*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ref::details::ref_cnt_set_handle>::~__split_buffer(&v15);
  return v14;
}

void sub_248ED8938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ref::details::ref_cnt_set_handle>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ref::details::ref_cnt_set_handle>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ref::details::ref_cnt_set_handle>,ref::details::ref_cnt_set_handle*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = (a4 + v7);
      result = ref::details::ref_cnt_handle::ref_cnt_handle(a4 + v7, v8);
      *v9 = &unk_285BF4C70;
      v9[3] = v8[3];
      v8 += 4;
      v7 += 32;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v11 = v6;
      v12 = v6;
      do
      {
        v13 = *v12;
        v12 += 4;
        result = (*v13)(v6);
        v11 += 4;
        v6 = v12;
      }

      while (v12 != a3);
    }
  }

  return result;
}

void sub_248ED8A68(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ref::details::ref_cnt_set_handle>,ref::details::ref_cnt_set_handle*>(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ref::details::ref_cnt_set_handle>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ref::details::ref_cnt_set_handle>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<973ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<973ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<973ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<973ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<973ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BED6E8;
  di_log::logger_buf<di_log::log_printer<973ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<973ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<973ul>::log((a1 + 72), __p);
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

void sub_248ED9100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<973ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<973ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 973;
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
      v26 = 973;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<998ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<998ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<998ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<998ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<998ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BED908;
  di_log::logger_buf<di_log::log_printer<998ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<998ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<998ul>::log((a1 + 72), __p);
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

void sub_248ED9898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<998ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<998ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 998;
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
      v26 = 998;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_asif::details::do_barrier_or_throw(di_asif::details *this, di_asif::details::ContextASIF *a2)
{
  result = (*(**(this + 2) + 16))(*(this + 2), 0);
  if (result)
  {
    v4 = result;
    DiskImage::Context::terminate_di(this);
    exception = __cxa_allocate_exception(0x40uLL);
    if (v4 < 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = -v4;
    }

    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "Can't flush asif table, backend barrier failed", v6);
  }

  return result;
}

void *di_log::logger<di_log::log_printer<265ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<265ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BED990;
  a1[45] = &unk_285BEDA90;
  a1[46] = &unk_285BEDAB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BED990;
  a1[45] = &unk_285BEDA18;
  a1[46] = &unk_285BEDA40;
  return a1;
}

void sub_248ED9C78(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<265ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<265ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEDB28;
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

void sub_248ED9D90(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEDB28;
  di_log::logger_buf<di_log::log_printer<265ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<265ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<265ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<265ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<265ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<265ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<265ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<265ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<265ul>::log((a1 + 72), __p);
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

void sub_248EDA334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<265ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 265;
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
      v26 = 265;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t std::function<void ()(char const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1260ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1260ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1260ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1260ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1260ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEDD48;
  di_log::logger_buf<di_log::log_printer<1260ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1260ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1260ul>::log((a1 + 72), __p);
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

void sub_248EDAAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1260ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1260ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1260;
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
      v26 = 1260;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1282ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1282ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1282ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1282ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1282ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEDF68;
  di_log::logger_buf<di_log::log_printer<1282ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1282ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1282ul>::log((a1 + 72), __p);
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

void sub_248EDB27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1282ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1282ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1282;
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
      v26 = 1282;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1291ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1291ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1291ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1291ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1291ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEE188;
  di_log::logger_buf<di_log::log_printer<1291ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1291ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1291ul>::log((a1 + 72), __p);
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

void sub_248EDBA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1291ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1291ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1291;
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
      v26 = 1291;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1313ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1313ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1313ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1313ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1313ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEE3A8;
  di_log::logger_buf<di_log::log_printer<1313ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1313ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1313ul>::log((a1 + 72), __p);
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

void sub_248EDC1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1313ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1313ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1313;
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
      v26 = 1313;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1337ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1337ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1337ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1337ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1337ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEE5C8;
  di_log::logger_buf<di_log::log_printer<1337ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1337ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1337ul>::log((a1 + 72), __p);
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

void sub_248EDC944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1337ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1337ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1337;
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
      v26 = 1337;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1375ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1375ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1375ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1375ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1375ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEE7E8;
  di_log::logger_buf<di_log::log_printer<1375ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1375ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1375ul>::log((a1 + 72), __p);
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

void sub_248EDD0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1375ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1375ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1375;
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
      v26 = 1375;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = v3 + 448 * v2;
    do
    {
      v5 = *a1;
      if (*a1)
      {
        if (*(v5 + 224))
        {
          v6 = (v5 + 40);
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v7 = v3 + 224;
      di_asif::details::map_element::zero_range_in_sg(v6, *(a1 + 8), v3, (v3 + 224));
      v3 = v7 + 224;
    }

    while (v7 + 224 != v4);
  }

  boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::~vector(a1 + 16);
  ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::reset(a1);
  return a1;
}

uint64_t boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 232;
    do
    {
      v4 = *(v3 + 176);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v5 = *(v3 - 48);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = *(v3 - 224);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v3 += 448;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::container::allocator_traits<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>>::destroy<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>(uint64_t a1, void *a2)
{
  v3 = a2[51];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a2[29];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a2[23];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a2[1];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1626ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1626ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1626ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1626ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1626ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEEA08;
  di_log::logger_buf<di_log::log_printer<1626ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1626ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1626ul>::log((a1 + 72), __p);
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

void sub_248EDDA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1626ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1626ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1626;
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
      v26 = 1626;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize_ios(uint64_t a1)
{
  (*(**(*(a1 + 7672) + 16) + 152))(*(*(a1 + 7672) + 16));
  returned_io_size = Backend::get_returned_io_size(a1 + 7680, v2);
  v4 = *(a1 + 8520);
  if (v4 == returned_io_size)
  {
    sg_vec_ns::details::sg_vec_iterator::operator=(a1 + 7216, a1 + 7440);
    *(a1 + 7688) = 0;
    v5 = *(a1 + 8120);
    if (v5)
    {
      v6 = *(a1 + 8112);
      v7 = v6;
      v8 = v6;
      do
      {
        --v5;
        v9 = *v8;
        v8 += 3;
        (*v9)(v7);
        v6 += 3;
        v7 = v8;
      }

      while (v5);
    }

    *(a1 + 8120) = 0;
    if (*(a1 + 8104) == 1)
    {
      *(a1 + 8104) = 0;
    }

    *(a1 + 8520) = 0;
  }

  else
  {
    *(a1 + 8520) = 0;
    if (returned_io_size < 0)
    {
      v10 = returned_io_size;
    }

    else
    {
      v10 = -5;
    }

    return --v10;
  }

  return v4;
}

void *di_log::logger<di_log::log_printer<1594ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<1594ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BEEA90;
  a1[45] = &unk_285BEEB90;
  a1[46] = &unk_285BEEBB8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BEEA90;
  a1[45] = &unk_285BEEB18;
  a1[46] = &unk_285BEEB40;
  return a1;
}

void sub_248EDDE68(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<1594ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<1594ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BEEC28;
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

void sub_248EDE018(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEEC28;
  di_log::logger_buf<di_log::log_printer<1594ul>>::_sync(a1);
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

void di_log::logger<di_log::log_printer<1594ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1594ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1594ul>>::overflow(_BYTE *a1, int a2)
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

void non-virtual thunk todi_log::logger<di_log::log_printer<1594ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1594ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1594ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1594ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1594ul>::log((a1 + 72), __p);
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

void sub_248EDE5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *di_log::log_printer<1594ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1594;
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
      v26 = 1594;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize(uint64_t a1)
{
  v2 = di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::data_entries_vectorizer_t::finalize_ios(a1);
  if (*(a1 + 7208) == 1)
  {
    di_asif::details::table::read(di_asif::details::ContextASIF &,sg_vec_ns::details::sg_vec_iterator const&,sg_vec_ns::details::sg_vec_iterator const&)::bitmap_handle_t::~bitmap_handle_t(a1);
    *(a1 + 7208) = 0;
  }

  return v2;
}

unint64_t *ref::tagged_ptr<di_asif::details::map_element,unsigned long long>::tagged_ptr(unint64_t *a1, unint64_t *a2)
{
  *a1 = 0;
  v3 = atomic_load(a2);
  if (v3)
  {
    v4 = atomic_load(v3);
    if (!v4)
    {
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }

    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v6 = v3[41];
    if (v6)
    {
      v3[42] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::wait_for_ready(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::reset_val(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::wait_for_ready(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = atomic_load((a1 + 24));
  if (v3 == 2)
  {
    v4 = atomic_load(a1);
    return v4 > 1;
  }

  else
  {
    atomic_fetch_add((a1 + 8), 1uLL);
    v6 = atomic_load(v2);
    if (v6 != 2 && (*(a1 + 344) & 1) == 0)
    {
      v10 = 1;
      v9 = &v10;
      v14 = 5;
      v12[0] = (a1 + 24);
      v12[1] = &v10;
      v13 = 5;
      v11[0] = a1 + 24;
      v11[1] = &v14;
      v11[2] = &v9;
      std::__libcpp_thread_poll_with_backoff[abi:ne200100]<void std::__atomic_wait_unless[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const const&,std::memory_order,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state&&)::{lambda(void)#1},std::__atomic_wait_backoff_impl<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}> &>(v11, v12, 0);
    }

    atomic_fetch_add((a1 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v7 = atomic_load(a1);
    if (v7 < 2)
    {
      return 0;
    }

    else
    {
      v8 = atomic_load(v2);
      return v8 == 2;
    }
  }
}

BOOL std::__libcpp_thread_poll_with_backoff[abi:ne200100]<void std::__atomic_wait_unless[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const const&,std::memory_order,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state&&)::{lambda(void)#1},std::__atomic_wait_backoff_impl<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}> &>(uint64_t a1, void **a2, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep a3)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = 0;
  while (1)
  {
    v8 = *a1;
    v9 = **(a1 + 8);
    if ((v9 - 1) >= 2)
    {
      explicit = v9 == 5 ? atomic_load(v8) : *v8;
    }

    else
    {
      explicit = atomic_load_explicit(v8, memory_order_acquire);
    }

    v11 = ***(a1 + 16);
    if (explicit != v11)
    {
      break;
    }

    if (v7 <= 0x3F)
    {
      ++v7;
    }

    else
    {
      v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - v6.__d_.__rep_;
      if (a3 && v12.__d_.__rep_ > a3 || std::__atomic_wait_backoff_impl<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}>::operator()[abi:ne200100](a2, v12.__d_.__rep_))
      {
        return explicit != v11;
      }
    }
  }

  return explicit != v11;
}

uint64_t std::__atomic_wait_backoff_impl<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}>::operator()[abi:ne200100](void **a1, uint64_t a2)
{
  if (a2 < 4001)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v4 = *a1;
  if (std::__atomic_wait_backoff_impl<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}>::__update_monitor_val_and_poll[abi:ne200100](a1, *a1, v6))
  {
    return 1;
  }

  std::__libcpp_atomic_wait(v4, v6[0]);
  return 0;
}

BOOL std::__atomic_wait_backoff_impl<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false>,void std::__atomic_wait[abi:ne200100]<std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state>(std::__atomic_base<ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,false> const &,ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state,std::memory_order)::{lambda(ref::details::ctrl_blk<di_asif::details::map_element,unsigned long long>::ready_state const&)#1}>::__update_monitor_val_and_poll[abi:ne200100](uint64_t a1, void *a2, std::__cxx_contention_t *a3)
{
  *a3 = std::__libcpp_atomic_monitor(a2);
  v4 = *a1;
  v5 = *(a1 + 16);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 5)
    {
      explicit = atomic_load(v4);
    }

    else
    {
      explicit = *v4;
    }
  }

  else
  {
    explicit = atomic_load_explicit(v4, memory_order_acquire);
  }

  return explicit != **(a1 + 8);
}

uint64_t std::__optional_destruct_base<di_asif::details::map_element,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 184) == 1)
  {
    v1 = result;
    std::mutex::~mutex((result + 120));
    *(v1 + 32) = &unk_285BE59A0;
    std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100]((v1 + 56), 0);
    result = std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](v1 + 64);
    *(v1 + 184) = 0;
  }

  return result;
}

void boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::assign<boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>>(uint64_t *a1, const char *a2, uint64_t *a3)
{
  v4 = *a3 - *a2;
  v5 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 6);
  if (v5 <= a1[2])
  {
    v12 = *a2;
    boost::container::copy_assign_range_alloc_n<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(a1, &v12, v5, *a1, a1[1]);
    a1[1] = v5;
  }

  else
  {
    if (v5 >= 0x4924924924924ALL)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
    }

    v8 = operator new(v4);
    v9 = *a1;
    if (*a1)
    {
      boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(a1);
      if (a1 + 3 != v9)
      {
        operator delete(v9);
      }
    }

    a1[1] = 0;
    a1[2] = v5;
    *a1 = v8;
    v10 = *a2;
    v11 = *a3;
    v12 = v10;
    a1[1] += 0x6DB6DB6DB6DB6DB7 * ((boost::container::uninitialized_copy_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(a1, &v12, &v11, v8) - v8) >> 6);
  }
}

void boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::priv_destroy_all(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1 + 232;
    do
    {
      v4 = *(v3 + 176);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v5 = *(v3 - 48);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = *(v3 - 224);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v3 += 448;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

void boost::container::copy_assign_range_alloc_n<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v8 = a3 - a5;
  if (a3 <= a5)
  {
    if (a3)
    {
      v12 = *a2;
      v13 = a3;
      do
      {
        --v13;
        sg_vec_ns::details::sg_vec_iterator::operator=(a4, v12);
        sg_vec_ns::details::sg_vec_iterator::operator=(a4 + 224, v12 + 224);
        a4 += 448;
        v12 += 448;
      }

      while (v13);
    }

    if (v5 != a3)
    {
      v14 = (a4 + 232);
      do
      {
        v15 = v14[22];
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (*v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v14);
        }

        v16 = *(v14 - 6);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v17 = *(v14 - 28);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v14 += 56;
      }

      while (!__CFADD__(v8++, 1));
    }
  }

  else
  {
    v10 = *a2;
    if (a5)
    {
      do
      {
        --v5;
        sg_vec_ns::details::sg_vec_iterator::operator=(a4, v10);
        sg_vec_ns::details::sg_vec_iterator::operator=(a4 + 224, v10 + 224);
        v10 += 448;
        a4 += 448;
      }

      while (v5);
    }

    *a2 = v10;
    v19 = v10;
    boost::container::uninitialized_copy_alloc_n<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(a1, &v19, v8, a4);
  }
}

uint64_t boost::container::uninitialized_copy_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v6 = *a2;
  if (v6 != *a3)
  {
    v8 = 0;
    do
    {
      std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]((a4 + v8), v6);
      v6 = *a2 + 448;
      *a2 = v6;
      v8 += 448;
    }

    while (v6 != *a3);
    a4 += v8;
  }

  return a4;
}

void sub_248EDEED8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::container::uninitialized_copy_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>();
  }

  __cxa_rethrow();
}

sg_vec_ns::details::sg_vec_iterator *std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100](sg_vec_ns::details::sg_vec_iterator *a1, uint64_t a2)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(a1, a2);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((v4 + 224), (a2 + 224));
  return a1;
}

uint64_t boost::container::uninitialized_copy_alloc_n<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = 0;
    v8 = *a2;
    do
    {
      std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]((a4 + v7), v8);
      v8 = *a2 + 448;
      *a2 = v8;
      v7 += 448;
      --v5;
    }

    while (v5);
    a4 += v7;
  }

  return a4;
}

void sub_248EDEFB8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::container::uninitialized_copy_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>();
  }

  __cxa_rethrow();
}

void boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>>(void **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >= 0x4924924924924ALL)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(448 * v11);
  boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

uint64_t std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = sg_entry::sg_entry(a1, a2);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 120) = *(a2 + 120);
  *(v4 + 128) = *(a2 + 128);
  v5 = *(a2 + 136);
  v6 = *(a2 + 152);
  *(v4 + 168) = *(a2 + 168);
  *(v4 + 152) = v6;
  *(v4 + 136) = v5;
  *(v4 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(v4 + 192) = *(a2 + 192);
  v7 = *(a2 + 208);
  *(v4 + 216) = *(a2 + 216);
  *(v4 + 208) = v7;
  sg_entry::sg_entry(v4 + 224, a2 + 224);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  v8 = *(a2 + 360);
  v9 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 360) = v8;
  *(a1 + 376) = v9;
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a1 + 416) = *(a2 + 416);
  v10 = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 432) = v10;
  return a1;
}

const char *boost::container::vector_alloc_holder<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0x49249249249249;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x49249249249249 - v4 < &a2[v3 - v4])
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
  if (v8 < 0x49249249249249)
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

void boost::container::vector<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>>(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>>(a1, *a1, a4, *a1 + 448 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 232);
      do
      {
        v13 = v12[22];
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (*v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v12);
        }

        v14 = *(v12 - 6);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v15 = *(v12 - 28);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        v12 += 56;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v16 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v16;
  a1[2] = a3;
}

void sub_248EDF2E4(_Unwind_Exception *exception_object)
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

uint64_t boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(a1, a2, a3, a5);
  std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100](v12, a7);
  return boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(a1, a3, a4, v12 + 448 * a6);
}

uint64_t boost::container::uninitialized_move_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100](a4 + v7, v6);
      v6 += 448;
      v7 += 448;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_248EDF410(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    boost::container::uninitialized_copy_alloc<boost::container::small_vector_allocator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>,boost::container::new_allocator<void>,void>,boost::container::vec_iterator<std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*,true>,std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>*>();
  }

  __cxa_rethrow();
}

sg_vec_ns::details::sg_vec_iterator *std::pair<sg_vec_ns::details::sg_vec_iterator,sg_vec_ns::details::sg_vec_iterator>::pair[abi:ne200100]<true,0>(sg_vec_ns::details::sg_vec_iterator *a1, const sg_vec_ns::details::sg_vec_iterator *a2, const sg_vec_ns::details::sg_vec_iterator *a3)
{
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator(a1, a2);
  sg_vec_ns::details::sg_vec_iterator::sg_vec_iterator((v5 + 224), a3);
  return a1;
}

void boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<lw_future<int>,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >= 0x555555555555556)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(24 * v11);
  boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

void boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>(a1, *a1, a4, *a1 + 24 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = v10;
      v13 = v10;
      do
      {
        --v11;
        v14 = *v13;
        v13 += 3;
        (*v14)(v10);
        v12 += 24;
        v10 = v13;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v15 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v15;
  a1[2] = a3;
}

void sub_248EDF618(_Unwind_Exception *exception_object)
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

uint64_t boost::container::uninitialized_move_and_insert_alloc<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle*,boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,ref::details::ref_cnt_handle*,ref::details::ref_cnt_handle>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = a5;
  if (a2 != a3)
  {
    v13 = a2;
    v14 = 0;
    do
    {
      ref::details::ref_cnt_handle::ref_cnt_handle(a5 + v14, v13);
      v13 += 24;
      v14 += 24;
    }

    while (v13 != v11);
    v12 = a5 + v14;
  }

  result = ref::details::ref_cnt_handle::ref_cnt_handle(v12, a7);
  if (v11 != a4)
  {
    v16 = 0;
    v17 = v12 + 24 * a6;
    do
    {
      result = ref::details::ref_cnt_handle::ref_cnt_handle(v17, v11);
      v11 += 24;
      v17 += 24;
      v16 -= 24;
    }

    while (v11 != a4);
  }

  return result;
}

void sub_248EDF6FC(_Unwind_Exception *exception_object)
{
  if (v2 != v1)
  {
    v4 = v1;
    v5 = v1;
    do
    {
      v6 = *v5;
      v5 += 3;
      (*v6)(v1);
      v4 += 3;
      v1 = v5;
    }

    while (v5 != v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::container::vector<ref::details::ref_cnt_handle,boost::container::small_vector_allocator<ref::details::ref_cnt_handle,boost::container::new_allocator<void>,void>,void>::~vector(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1;
    v5 = *a1;
    do
    {
      --v2;
      v6 = *v5;
      v5 += 3;
      (*v6)(v4);
      v3 += 3;
      v4 = v5;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<1698ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<1698ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<1698ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<1698ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<1698ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEEE48;
  di_log::logger_buf<di_log::log_printer<1698ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<1698ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<1698ul>::log((a1 + 72), __p);
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

void sub_248EDFD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<1698ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<1698ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 1698;
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
      v26 = 1698;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t ref::ref_cnt::get(ref::ref_cnt *this)
{
  while (1)
  {
    v2 = *this;
    if ((*this & 0x8000000000000000) == 0)
    {
      break;
    }

    v3 = *this;
LABEL_7:
    v4 = v3 != -1;
    if (v3 != -1 || (ref::ref_cnt::wait_fn(this, 0) & 1) == 0)
    {
      return v4;
    }
  }

  v3 = *this;
  while (1)
  {
    atomic_compare_exchange_strong(this, &v3, v2 + 1);
    if (v3 == v2)
    {
      return 1;
    }

    v2 = v3;
    if (v3 < 0)
    {
      goto LABEL_7;
    }
  }
}

uint64_t ref::ref_cnt::wait_fn(ref::ref_cnt *this, const void *a2)
{
  v2 = atomic_load(this);
  v3 = v2 == 0;
  v4 = v2 != -1;
  if (a2)
  {
    v4 = v3;
  }

  if (!v4)
  {
    v5 = a2;
    v17.__m_ = ref::details::_get_tagged_ptr_lock(this, a2);
    v17.__owns_ = 1;
    std::mutex::lock(v17.__m_);
    tagged_ptr_cond = ref::details::_get_tagged_ptr_cond(this, v7);
    v9 = atomic_load(this);
    v10 = v9 == 0;
    v11 = v9 != -1;
    if (v5)
    {
      v11 = v10;
    }

    if (!v11)
    {
      v12 = tagged_ptr_cond;
      do
      {
        std::condition_variable::wait(v12, &v17);
        v13 = atomic_load(this);
        v14 = v13 == 0;
        v15 = v13 != -1;
        if (v5)
        {
          v15 = v14;
        }
      }

      while (!v15);
    }

    if (v17.__owns_)
    {
      std::mutex::unlock(v17.__m_);
    }
  }

  return 1;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<2098ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2098ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2098ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2098ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2098ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEF068;
  di_log::logger_buf<di_log::log_printer<2098ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2098ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2098ul>::log((a1 + 72), __p);
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

void sub_248EE0688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2098ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2098ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 2098;
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
      v26 = 2098;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *lock_free::bitmap_dynamically_allocated_t::bitmap_dynamically_allocated_t(void *a1, uint64_t a2, char a3)
{
  a1[2] = a2;
  *a1 = &unk_285BE59A0;
  v5 = ((a2 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8;
  di_utils::fixed_vector_buffer_t<unsigned long long>::fixed_vector_buffer_t(a1 + 3, v5);
  v6 = a1[3];
  a1[8] = v6;
  a1[9] = v5;
  if ((a3 & 1) == 0 && v5)
  {
    bzero(v6, 8 * v5);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *di_utils::fixed_vector_buffer_t<unsigned long long>::fixed_vector_buffer_t(uint64_t *a1, uint64_t a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[4] = 0;
  v3 = malloc_type_valloc(8 * a2, 0x100004000313F17uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v6, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v7[0] = &unk_285BEF0E8;
  v7[3] = v7;
  v8 = v3;
  std::__function::__value_func<void ()(unsigned long long *)>::__value_func[abi:ne200100](v9, v7);
  std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::operator=[abi:ne200100](a1, &v8);
  std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](&v8, 0);
  std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_248EE0A58(_Unwind_Exception *a1)
{
  std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](v1, 0);
  std::__function::__value_func<void ()(unsigned long long *)>::~__value_func[abi:ne200100]((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<unsigned long long,std::function<void ()(unsigned long long *)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(unsigned long long *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t std::__function::__func<di_utils::fixed_vector_buffer_t<unsigned long long>::fixed_vector_buffer_t(unsigned long)::{lambda(unsigned long long *)#1},std::allocator<di_utils::fixed_vector_buffer_t<unsigned long long>::fixed_vector_buffer_t(unsigned long)::{lambda(unsigned long long *)#1}>,void ()(unsigned long long *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned long long *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(unsigned long long *)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned long long *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void non-virtual thunk todi_log::logger<di_log::log_printer<2353ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2353ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2353ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2353ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2353ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEF318;
  di_log::logger_buf<di_log::log_printer<2353ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2353ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2353ul>::log((a1 + 72), __p);
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

void sub_248EE12C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2353ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2353ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 2353;
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
      v26 = 2353;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<2363ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2363ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2363ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2363ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2363ul>>::overflow(_BYTE *a1, int a2)
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

uint64_t di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BEF538;
  di_log::logger_buf<di_log::log_printer<2363ul>>::_sync(a1);
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

uint64_t di_log::logger_buf<di_log::log_printer<2363ul>>::_sync(uint64_t a1)
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
        di_log::log_printer<2363ul>::log((a1 + 72), __p);
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

void sub_248EE1A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<2363ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<2363ul>::log(uint64_t *a1, uint64_t *a2)
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
    v26 = 2363;
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
      v26 = 2363;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<2429ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<2429ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<2429ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<2429ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<2429ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<2429ul>>::overflow(_BYTE *a1, int a2)
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