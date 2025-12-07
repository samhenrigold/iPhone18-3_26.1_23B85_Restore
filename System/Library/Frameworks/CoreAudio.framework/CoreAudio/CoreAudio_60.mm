void sub_1DE68E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Writable_Range::Direct_Write_Range::get_audio_buffer_list(AMCP::DAL::Writable_Range::Direct_Write_Range *this, uint64_t a2, std::__shared_weak_count *a3)
{
  v3 = a2;
  v4 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    (*(*a2 + 56))(a2, &v3);
    a3 = v4;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    *this = 0;
    *(this + 4) = 0;
    if (!a3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a3);
}

void sub_1DE68E958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Writable_Range::get_direct_write_ranges(AMCP::DAL::Writable_Range *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  (*(**(a2 + 80) + 176))(&v25);
  v3 = v25;
  v4 = v26;
  if (v25 == v26)
  {
LABEL_28:
    v27 = &v25;
    std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__destroy_vector::operator()[abi:ne200100](&v27);
    return;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(this + 2);
    if (v5 < v6)
    {
      std::construct_at[abi:ne200100]<AMCP::DAL::Writable_Range::Direct_Write_Range,AMCP::DAL::Buffer_Time_Translator::Translation_Range const&,AMCP::DAL::Container const&,AMCP::DAL::Writable_Range::Direct_Write_Range*>(v5, v3, *(v3 + 96), *(v3 + 104));
      v5 += 112;
      goto LABEL_27;
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *this) >> 4);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x249249249249249)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *this) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    v10 = v9 >= 0x124924924924924 ? 0x249249249249249 : v8;
    if (v10)
    {
      break;
    }

    v11 = 0;
LABEL_16:
    v12 = v11 + 112 * v7;
    std::construct_at[abi:ne200100]<AMCP::DAL::Writable_Range::Direct_Write_Range,AMCP::DAL::Buffer_Time_Translator::Translation_Range const&,AMCP::DAL::Container const&,AMCP::DAL::Writable_Range::Direct_Write_Range*>(v12, v3, *(v3 + 96), *(v3 + 104));
    v13 = *this;
    v14 = *(this + 1);
    v15 = v12 + *this - v14;
    if (v14 != *this)
    {
      v16 = *this;
      v17 = v12 + *this - v14;
      do
      {
        *v17 = *v16;
        v18 = *(v16 + 16);
        *(v17 + 32) = *(v16 + 32);
        *(v17 + 16) = v18;
        *(v17 + 40) = *(v16 + 40);
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        v19 = *(v16 + 56);
        *(v17 + 72) = *(v16 + 72);
        *(v17 + 56) = v19;
        *(v17 + 80) = *(v16 + 80);
        *(v16 + 80) = 0;
        *(v16 + 88) = 0;
        *(v17 + 96) = *(v16 + 96);
        *(v16 + 96) = 0;
        *(v16 + 104) = 0;
        v16 += 112;
        v17 += 112;
      }

      while (v16 != v14);
      do
      {
        std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(v13);
        v13 += 14;
      }

      while (v13 != v14);
    }

    v20 = v11 + 112 * v10;
    v5 = v12 + 112;
    *&v21 = v12 + 112;
    *(&v21 + 1) = v20;
    v22 = *this;
    *this = v15;
    *&v23 = v22;
    *(&v23 + 1) = *(this + 2);
    *(this + 8) = v21;
    while (v23 != v22)
    {
      *&v23 = v23 - 112;
      v24 = v23;
      std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(v23);
      v23 = v24;
    }

    if (v22)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((*(&v23 + 1) - v22) >> 4)) > 0x249249249249249 || !*MEMORY[0x1E69E3C08])
      {
        goto LABEL_30;
      }

      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v22);
    }

LABEL_27:
    *(this + 1) = v5;
    v3 += 112;
    if (v3 == v4)
    {
      goto LABEL_28;
    }
  }

  if (v10 <= 0x249249249249249 && *MEMORY[0x1E69E3C08])
  {
    v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    goto LABEL_16;
  }

LABEL_30:
  __break(1u);
}

void sub_1DE68EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<AMCP::DAL::Writable_Range::Direct_Write_Range,AMCP::DAL::Buffer_Time_Translator::Translation_Range const&,AMCP::DAL::Container const&,AMCP::DAL::Writable_Range::Direct_Write_Range*>(uint64_t a1, uint64_t a2, unint64_t a3, std::__shared_weak_count *a4)
{
  v6.n128_u64[0] = a3;
  v6.n128_u64[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Writable_Range::Direct_Write_Range::Direct_Write_Range(a1, a2, &v6);
  if (v6.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6.n128_u64[1]);
  }

  return a1;
}

__n128 AMCP::DAL::Writable_Range::Direct_Write_Range::Direct_Write_Range(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result = *a3;
  *(a1 + 96) = *a3;
  *a3 = 0uLL;
  return result;
}

void AMCP::DAL::Writable_Range::commit_direct_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 104);
  v4 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 168))(a1, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE68ED74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::create_readable_range(AMCP::DAL *this, const AMCP::DAL::DAL_Time_Range *a2, AMCP::DAL::Ring_Buffer_Base *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  (*(*a3 + 64))(buf, a3);
  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(buf, a2);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v7 = v41;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (!v6)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "DAL_Timed_Segment.cpp";
      v37 = 1024;
      v38 = 268;
      v39 = 2080;
      v40 = "not (buffer.get_time_range().encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v26, "", v16);
    std::logic_error::logic_error(&v27, &v26);
    v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
    v41 = "Readable_Range AMCP::DAL::create_readable_range(const DAL_Time_Range &, Ring_Buffer_Base &)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
    v43 = 268;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  v17 = *a2;
  v8 = *(a2 + 3);
  v18 = *(a2 + 2);
  v19 = v8;
  v9 = *(a2 + 4);
  v20 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a2 + 40);
  v10 = *(a2 + 8);
  v22 = *(a2 + 7);
  v23 = v10;
  v11 = *(a2 + 9);
  v24 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Ring_Buffer_Base::create_readable_range(a3, &v17, this);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void HALS_IOUAObject::CacheCustomPropertyInfo(HALS_IOUAObject *this)
{
  *(this + 4) = *(this + 3);
  *&v43.mSelector = 0x676C6F6263757374;
  v43.mElement = 0;
  v2 = *(this + 1);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v3 + 4), &v43, *(this + 4));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (HasProperty)
  {
    v6 = *(this + 1);
    v7 = *(v6 + 736);
    v8 = *(v6 + 744);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(this + 4);
    if (HALS_IOUAUCDriver::GetHasProperty(*(v7 + 4), "tsucbolg", v9) && (PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v7 + 4), "tsucbolg", v9, 0, 0), (v44 = PropertySize) != 0))
    {
      std::vector<AudioServerPlugInCustomPropertyInfo>::vector[abi:ne200100](&__p, PropertySize / 0xC);
      HALS_IOUAUCDriver::GetPropertyData(*(v7 + 4), "tsucbolg", v9, 0, 0, __p, &v44);
      v11 = v44 / 0xC;
      v12 = v41;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v41 - __p) >> 2);
      v14 = v44 / 0xC - v13;
      if (v44 / 0xC > v13)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 2) < v14)
        {
          if (0x5555555555555556 * ((v42 - __p) >> 2) > v11)
          {
            v11 = 0x5555555555555556 * ((v42 - __p) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v42 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v11;
          }

          std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v15);
        }

        v39 = 12 * ((12 * v14 - 12) / 0xC) + 12;
        bzero(v41, v39);
        v38 = &v12[v39];
        goto LABEL_56;
      }

      if (v44 / 0xC < v13)
      {
        v38 = __p + 12 * v11;
LABEL_56:
        v41 = v38;
      }
    }

    else
    {
      __p = 0;
      v41 = 0;
      v42 = 0;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v16 = __p;
    v17 = v41;
    if (__p != v41)
    {
      do
      {
        v18 = *(v16 + 1);
        if (v18 == 1886155636 || v18 == 1667658612)
        {
          v20 = *(v16 + 2);
          v21 = !v20 || v20 == 1886155636;
          if (v21 || v20 == 1667658612)
          {
            v24 = *(this + 4);
            v23 = *(this + 5);
            if (v24 >= v23)
            {
              v27 = *(this + 3);
              v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v27) >> 2);
              v29 = v28 + 1;
              if (v28 + 1 > 0x1555555555555555)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v30 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v27) >> 2);
              if (2 * v30 > v29)
              {
                v29 = 2 * v30;
              }

              if (v30 >= 0xAAAAAAAAAAAAAAALL)
              {
                v31 = 0x1555555555555555;
              }

              else
              {
                v31 = v29;
              }

              if (v31)
              {
                std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v31);
              }

              v32 = 12 * v28;
              v33 = *v16;
              *(v32 + 8) = *(v16 + 2);
              *v32 = v33;
              v26 = 12 * v28 + 12;
              v34 = *(this + 3);
              v35 = *(this + 4) - v34;
              v36 = 12 * v28 - v35;
              memcpy((v32 - v35), v34, v35);
              v37 = *(this + 3);
              *(this + 3) = v36;
              *(this + 4) = v26;
              *(this + 5) = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              v25 = *v16;
              *(v24 + 8) = *(v16 + 2);
              *v24 = v25;
              v26 = v24 + 12;
            }

            *(this + 4) = v26;
          }
        }

        v16 += 12;
      }

      while (v16 != v17);
      v16 = __p;
    }

    if (v16)
    {
      v41 = v16;
      operator delete(v16);
    }
  }
}

void sub_1DE68F53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_IOUAObject::IsCustomProperty(HALS_IOUAObject *this, int a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      v2 += 3;
      if (v2 == v3)
      {
        v2 = *(this + 4);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void HALS_IOUAObject::~HALS_IOUAObject(HALS_IOUAObject *this, HALS_Object *a2)
{
  HALS_IOUAObject::~HALS_IOUAObject(this, a2);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987E68;
  v3 = *(this + 1);
  v4 = (v3 + 336);
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 != this)
  {
    HALS_ObjectMap::ReleaseObject(v3, a2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

void HALS_IOUAObject::HALS_IOUAObject(HALS_IOUAObject *this, HALS_IOUADriver *a2, int a3)
{
  *this = &unk_1F5987E68;
  *(this + 1) = a2;
  *(this + 4) = a3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v3 = (a2 + 336);
  if (!a2)
  {
    v3 = 0;
  }

  if (v3 != this)
  {
    HALS_ObjectMap::RetainObject(a2, a2);
  }
}

void sub_1DE68F6D8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_IOUAObject::IsPropertySettable(HALS_IOUAObject *this, const AudioObjectPropertyAddress *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (!(*(*this + 16))(this, a2->mSelector, a3, a4))
  {
    return 0;
  }

  v6 = *(this + 1);
  v7 = *(v6 + 736);
  v8 = *(v6 + 744);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IsPropertySettable = HALS_IOUAUCDriver::GetIsPropertySettable(*(v7 + 4), a2, *(this + 4));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return IsPropertySettable;
}

void sub_1DE68F798(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAObject::GetPropertyDataSize(HALS_IOUAObject *this, _DWORD *a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  result = (*(*this + 16))(this, *a2, a3, a4, a5, a6);
  if (result)
  {
    v9 = *(this + 3);
    v10 = *(this + 4);
    if (v9 != v10)
    {
      while (*v9 != *a2)
      {
        v9 += 3;
        if (v9 == v10)
        {
          goto LABEL_5;
        }
      }
    }

    if (v9 == v10)
    {
LABEL_5:
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "HALS_IOUAObject.cpp";
        v27 = 1024;
        v28 = 169;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Unknown Property", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v17, "Unknown property");
      std::runtime_error::runtime_error(&v18, &v17);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = -1;
      v18.__vftable = &unk_1F5992170;
      v19 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
      v29 = "UInt32 HALS_IOUAObject::GetPropertyDataSize(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, HALS_Client *) const";
      v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAObject.cpp";
      v31 = 169;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
    }

    v15 = HIDWORD(*v9);
    if (v15 == 1667658612)
    {
      return 8;
    }

    else
    {
      return 8 * (v15 == 1886155636);
    }
  }

  return result;
}

void sub_1DE68FA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v19 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v18)
  {
    __cxa_free_exception(v17);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v19 - 129));
  _Unwind_Resume(a1);
}

void HALS_IOUAObject::GetPropertyData(HALS_IOUAObject *this, unsigned int *a2, const AudioObjectPropertyAddress *a3, AMCP::Log::AMCP_Scope_Registry **a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v68 = *MEMORY[0x1E69E9840];
  v14 = (*(*this + 16))(this, *a2, a3, a4, a5, a6, a7, a8);
  if (!v14)
  {
    v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v40 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v42 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v43 = *v42;
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    else
    {
      v43 = *v42;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v60 = "HALS_IOUAObject.cpp";
      v61 = 1024;
      v62 = 193;
      _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Unknown Property", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v44, "Unknown property");
    std::runtime_error::runtime_error(&v51, &v44);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = -1;
    v51.__vftable = &unk_1F5992170;
    v52 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v51);
    v65 = "void HALS_IOUAObject::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAObject.cpp";
    v67 = 193;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
  }

  if (a5)
  {
    v15 = *a5;
    if (*a5)
    {
      CFRetain(*a5);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 1);
  v17 = *(v16 + 736);
  v18 = *(v16 + 744);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(this + 4);
  v20 = *a2;
  v21 = a2[2];
  if (v15)
  {
    CFRetain(v15);
    *&v58.mSelector = v20;
    v58.mElement = v21;
    v22 = IOCFSerialize(v15, 0);
    v57 = v22;
    if (!v22)
    {
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *v25;
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      else
      {
        v26 = *v25;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v60 = "HALS_IOUAUCDriver.cpp";
        v61 = 1024;
        v62 = 379;
        v63 = 2080;
        v64 = "(serialized_qualifer) == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to serialize CF qualifer", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v44, "Failed to serialize CF qualifer");
      std::runtime_error::runtime_error(&v51, &v44);
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = -1;
      v51.__vftable = &unk_1F5992170;
      v52 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v51);
      v65 = "CFTypeRef HALS_IOUAUCDriver::get_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef)";
      v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
      v67 = 379;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
    }
  }

  else
  {
    v22 = 0;
    v57 = 0;
    *&v58.mSelector = v20;
    v58.mElement = v21;
  }

  v49 = &v57;
  BytePtr = CFDataGetBytePtr(v22);
  Length = CFDataGetLength(v57);
  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v17 + 4), &v58, v19, BytePtr, Length);
  bufferSize = PropertySize;
  if (!PropertySize)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v34;
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v35 = *v34;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v60 = "HALS_IOUAUCDriver.cpp";
      v61 = 1024;
      v62 = 386;
      v63 = 2080;
      v64 = "out_size == 0";
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get_string_property size", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v44, "Failed to get_string_property size");
    std::runtime_error::runtime_error(&v51, &v44);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = -1;
    v51.__vftable = &unk_1F5992170;
    v52 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v51);
    v65 = "CFTypeRef HALS_IOUAUCDriver::get_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef)";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v67 = 386;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
  }

  buf[0] = 0;
  std::vector<std::byte>::vector[abi:ne200100](buffer, PropertySize, buf);
  HALS_IOUAUCDriver::GetPropertyData(*(v17 + 4), &v58, v19, BytePtr, Length, buffer[0], &bufferSize);
  errorString = 0;
  v30 = IOCFUnserializeBinary(buffer[0], bufferSize, *MEMORY[0x1E695E478], 0, &errorString);
  if (errorString)
  {
    v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v36 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v30);
    }

    v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v39 = *v38;
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    else
    {
      v39 = *v38;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v60 = "HALS_IOUAUCDriver.cpp";
      v61 = 1024;
      v62 = 393;
      v63 = 2080;
      v64 = "error";
      _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to deserialize string object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v45, "Failed to deserialize string object");
    std::runtime_error::runtime_error(&v51, &v45);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = -1;
    v51.__vftable = &unk_1F5992170;
    v52 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v51);
    v65 = "CFTypeRef HALS_IOUAUCDriver::get_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef)";
    v66 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v67 = 393;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v44);
  }

  v31 = v30;
  if (buffer[0])
  {
    buffer[1] = buffer[0];
    operator delete(buffer[0]);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::get_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&v49);
  *a4 = v31;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  a3->mSelector = 8;
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_1DE69048C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::runtime_error a11, uint64_t a12, uint64_t a13, std::runtime_error a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v32 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a30);
  std::runtime_error::~runtime_error(&a11);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a14);
  _Unwind_Resume(a1);
}

void HALS_IOUAObject::SetPropertyData(HALS_IOUAObject *this, unsigned int *a2, const AudioObjectPropertyAddress *a3, CFTypeRef *a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = (*(*this + 16))(this, *a2, a3, a4, a5, a6, a7, a8);
  if (!v12)
  {
    v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v35 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v38 = *v37;
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    else
    {
      v38 = *v37;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOUAObject.cpp";
      v53 = 1024;
      v54 = 214;
      _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Unknown Property", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v43, "Unknown property");
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v57 = "void HALS_IOUAObject::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAObject.cpp";
    v59 = 214;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  if (a4)
  {
    v13 = *a4;
    if (*a4)
    {
      CFRetain(*a4);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 1);
  v15 = *(v14 + 736);
  v16 = *(v14 + 744);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(this + 4);
  v18 = *a2;
  v19 = a2[2];
  if (v13)
  {
    CFRetain(v13);
  }

  v20 = *&a3->mSelector;
  if (v20)
  {
    CFRetain(v20);
  }

  *&v51.mSelector = v18;
  v51.mElement = v19;
  v21 = IOCFSerialize(v20, 0);
  theData = v21;
  if (!v21)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOUAUCDriver.cpp";
      v53 = 1024;
      v54 = 404;
      v55 = 2080;
      v56 = "(data_serialized_data) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to serialized data CF object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&p_theData);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v43, "Failed to serialized data CF object");
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v57 = "void HALS_IOUAUCDriver::set_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef, applesauce::CF::TypeRef)";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v59 = 404;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  p_theData = &theData;
  BytePtr = CFDataGetBytePtr(v21);
  Length = CFDataGetLength(theData);
  v40 = 0;
  if (v13)
  {
    v24 = IOCFSerialize(v13, 0);
    v40 = v24;
    if (!v24)
    {
      v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v31 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v34 = *v33;
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      else
      {
        v34 = *v33;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_IOUAUCDriver.cpp";
        v53 = 1024;
        v54 = 414;
        v55 = 2080;
        v56 = "(qualifier_serialized_data) == nullptr";
        _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to serialized qualifier CF object", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v43, "Failed to serialized qualifier CF object");
      std::runtime_error::runtime_error(&v44, &v43);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = -1;
      v44.__vftable = &unk_1F5992170;
      v45 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
      v57 = "void HALS_IOUAUCDriver::set_custom_property_value(AudioObjectID, AudioObjectPropertyAddress, applesauce::CF::TypeRef, applesauce::CF::TypeRef)";
      v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
      v59 = 414;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
    }

    *buf = &v40;
    v25 = CFDataGetBytePtr(v24);
    if (v40)
    {
      v26 = CFDataGetLength(v40);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    *buf = &v40;
  }

  HALS_IOUAUCDriver::SetPropertyData(v15, &v51, v17, v25, v26, BytePtr, Length);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::set_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef,applesauce::CF::TypeRef)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(buf);
  CFRelease(theData);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_1DE690E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, std::runtime_error a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a31);
  std::runtime_error::~runtime_error(&a30);
  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 176));
  _Unwind_Resume(a1);
}

uint64_t HALS_Object::GetPropertyTypeInfo(HALS_Object *this, HALB_Info *a2, BOOL *a3, unsigned int *a4)
{
  v12 = 0;
  *a3 = HALB_Info::GetPropertyDataType(a2, &v12, a3);
  v11 = 0;
  result = HALB_Info::GetPropertyQualifierDataType(a2, &v11, v7);
  *a4 = result;
  if (v12 != 1 || (v11 & 1) == 0)
  {
    v9 = *(this + 4);
    v13 = 0x676C6F6263757374;
    LODWORD(v14) = 0;
    result = (*(*this + 96))(this, v9, &v13, 0);
    if (result)
    {
      v10 = *(this + 4);
      v13 = 0x676C6F6263757374;
      LODWORD(v14) = 0;
      result = (*(*this + 112))(this, v10, &v13, 0, 0, 0);
      if (result >= 0xC)
      {
        v12 = 0;
        operator new[]();
      }
    }
  }

  return result;
}

void HALS_Object::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (*(*a1 + 96))(a1, a2, a3, a8, a5, a6, a7);
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  if (v8)
  {
    v10 = 1852797029;
  }

  else
  {
    v10 = 2003332927;
  }

  exception[2] = v10;
}

uint64_t HALS_Object::GetPropertyData(uint64_t result, uint64_t a2, int *a3, unsigned int a4, int *a5, uint64_t *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HALS_Object.cpp";
      v17 = 1024;
      v18 = 459;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetPropertyData: no where to put the return value", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v12 = 1852797029;
LABEL_38:
    exception[2] = v12;
  }

  v8 = *a3;
  if (*a3 <= 1869638758)
  {
    if (v8 == 1650682995)
    {
      if (a4 > 3)
      {
        v9 = *(result + 24);
        if (v9 == *(result + 20))
        {
          result = HALB_Info::GetBaseClass(*(result + 24));
          v9 = result;
        }

        goto LABEL_19;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v15 = 136315394;
      v16 = "HALS_Object.cpp";
      v17 = 1024;
      v18 = 466;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyBaseClass";
      goto LABEL_36;
    }

    if (v8 != 1668047219)
    {
      goto LABEL_27;
    }

    if (a4 > 3)
    {
      v9 = *(result + 20);
      goto LABEL_19;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v15 = 136315394;
    v16 = "HALS_Object.cpp";
    v17 = 1024;
    v18 = 473;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyClass";
    goto LABEL_36;
  }

  if (v8 == 1869638759)
  {
    if (a4 > 7)
    {
      if (*(result + 40) == 1)
      {
        *a6 = @"com.apple.audio.V5";
      }

      else
      {
        result = *(result + 32);
        *a6 = result;
        if (result)
        {
          result = CFRetain(result);
        }
      }

      v10 = 8;
      goto LABEL_23;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v12 = 561211770;
      goto LABEL_38;
    }

    v15 = 136315394;
    v16 = "HALS_Object.cpp";
    v17 = 1024;
    v18 = 487;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyCreator";
LABEL_36:
    _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, v14, &v15, 0x12u);
    goto LABEL_37;
  }

  if (v8 != 1870098020)
  {
    if (v8 == 1937007734)
    {
      if (a4 > 3)
      {
        v9 = *(result + 28);
LABEL_19:
        *a6 = v9;
        v10 = 4;
        goto LABEL_23;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v15 = 136315394;
      v16 = "HALS_Object.cpp";
      v17 = 1024;
      v18 = 480;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_Object::GetPropertyData: bad property data size for kAudioObjectPropertyOwner";
      goto LABEL_36;
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v12 = 2003332927;
    goto LABEL_38;
  }

  v10 = 0;
LABEL_23:
  *a5 = v10;
  return result;
}

uint64_t HALS_Object::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 4;
  if (*a3 > 1819107690)
  {
    if (v3 <= 1869638758)
    {
      if (v3 == 1819107691 || v3 == 1819111268)
      {
        return 8;
      }

      v7 = 1819173229;
LABEL_22:
      if (v3 == v7)
      {
        return 8;
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 2003332927;
    }

    if (v3 > 1936618860)
    {
      if (v3 == 1936618861)
      {
        return 8;
      }

      if (v3 != 1937007734)
      {
        goto LABEL_27;
      }

      return result;
    }

    if (v3 != 1869638759)
    {
      if (v3 == 1870098020)
      {
        return 0;
      }

      goto LABEL_27;
    }

    return 8;
  }

  if (v3 <= 1768187245)
  {
    if (v3 != 1650682995 && v3 != 1668047219)
    {
      v7 = 1719105134;
      goto LABEL_22;
    }

    return result;
  }

  if (v3 > 1818454125)
  {
    if (v3 != 1818454126)
    {
      v5 = 28270;
      goto LABEL_21;
    }

    return 8;
  }

  if (v3 != 1768187246)
  {
    v5 = 25454;
LABEL_21:
    v7 = v5 | 0x6C630000;
    goto LABEL_22;
  }

  return result;
}

uint64_t HALS_Object::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 > 1819107690)
  {
    if (v4 <= 1869638758)
    {
      v5 = v4 == 1819107691 || v4 == 1819111268;
      v6 = 1819173229;
    }

    else if (v4 > 1936618860)
    {
      v5 = v4 == 1936618861;
      v6 = 1937007734;
    }

    else
    {
      v5 = v4 == 1869638759;
      v6 = 1870098020;
    }

LABEL_20:
    if (v5 || v4 == v6)
    {
      return result;
    }

LABEL_24:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (v4 <= 1768187245)
  {
    v5 = v4 == 1650682995 || v4 == 1668047219;
    v6 = 1719105134;
    goto LABEL_20;
  }

  if (v4 > 1818454125)
  {
    v5 = v4 == 1818454126;
    v6 = 1818455662;
    goto LABEL_20;
  }

  if (v4 == 1768187246)
  {
    return 1;
  }

  if (v4 != 1818452846)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t HALS_Object::CopyResourceBundle(HALS_Object *this, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_Object.cpp";
      v11 = 1024;
      v12 = 229;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::CopyResourceBundle: this object's owner doesn't exist", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v5 = (*(*v3 + 88))(v3);
  HALS_ObjectMap::ReleaseObject(v4, v6);
  return v5;
}

void sub_1DE691B58(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Object::GetMIGDispatchQueue(HALS_Object *this, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 217;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: ownerless objects must implement their own dispatch queue", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 219;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v5 = (*(*v3 + 72))(v3);
  HALS_ObjectMap::ReleaseObject(v4, v6);
  return v5;
}

{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 209;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: ownerless objects must implement their own dispatch queue", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 211;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetMIGDispatchQueue: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v5 = (*(*v3 + 72))(v3);
  HALS_ObjectMap::ReleaseObject(v4, v6);
  return v5;
}

void sub_1DE691D88(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE691FC0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Object::GetCommandGate(HALS_Object *this, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 194;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: ownerless objects must implement their own command gate", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 196;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v5 = (*(*v3 + 56))(v3);
  HALS_ObjectMap::ReleaseObject(v4, v6);
  return v5;
}

{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 186;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: ownerless objects must implement their own command gate", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Object.cpp";
      v12 = 1024;
      v13 = 188;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::GetCommandGate: this object's owner doesn't exist", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 560947818;
  }

  v5 = (*(*v3 + 56))(v3);
  HALS_ObjectMap::ReleaseObject(v4, v6);
  return v5;
}

void sub_1DE6921F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE692430(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Object::MonitorCommandGate(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 28);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "HALS_Object.cpp";
      v13 = 1024;
      v14 = 202;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Object::MonitorCommandGate: ownerless objects must implement their own command gate monitoring.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v4 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v5 = v4;
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 48))(v4, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  HALS_ObjectMap::ReleaseObject(v5, v7);
}

void sub_1DE6925D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_Object::IsActive(HALS_Object *this, unsigned int a2)
{
  v2 = *(this + 2);
  v3 = v2 != 0;
  v4 = *(this + 7);
  if (v4)
  {
    v5 = HALS_ObjectMap::CopyObjectByObjectID(v4);
    v7 = v5;
    if (v2)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v3 = 0;
    }

    else
    {
      v3 = (*(*v5 + 40))(v5);
    }

    HALS_ObjectMap::ReleaseObject(v7, v6);
  }

  return v3;
}

void HALS_Object::~HALS_Object(HALS_Object *this)
{
  HALS_Object::~HALS_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987EA8;
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (v3)
  {
    v4 = HALS_ObjectMap::sObjectInfoListMutex;
    v5 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    HALS_ObjectMap::_UnmapObject(v3);
    HALB_Mutex::Locker::~Locker(&v4);
  }
}

void HALS_Object::Deactivate(HALS_Object *this)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN11HALS_Object10DeactivateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_17409;
  v2[4] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v2);
}

void sub_1DE692838(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*(*v1 + 32))(v1);
  JUMPOUT(0x1DE692828);
}

void sub_1DE69286C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE692828);
}

void HALS_Object::Activate(HALS_Object *this, HALS_Object *a2)
{
  HALS_ObjectMap::RetainObject(this, a2);
  v4 = this;
  while (v4)
  {
    v5 = *(v4 + 5);
    v6 = *(v4 + 6);
    if (v5 == v6)
    {
      if (v5 == 1634757735 || v5 == 1953656941)
      {
        goto LABEL_21;
      }
    }

    else if (v5 == 1634757735 || v5 == 1953656941 || v6 == 1634757735 || v6 == 1953656941)
    {
LABEL_21:
      v13 = *(v4 + 6);
      if (v13)
      {
        CFRetain(v13);
        v14 = *(v4 + 6);
      }

      else
      {
        v14 = 0;
      }

      *(this + 4) = v14;
      break;
    }

    v11 = HALS_ObjectMap::CopyObjectByObjectID(*(v4 + 7));
    v12 = v4;
    v4 = v11;
    HALS_ObjectMap::ReleaseObject(v12, v11);
  }

  HALS_ObjectMap::RetainObject(this, v3);
  v16 = this;
  while (v16)
  {
    v17 = *(v16 + 5);
    if (v17 <= 1701078389)
    {
      if (v17 == 1633773415 || v17 == 1633969526)
      {
LABEL_50:
        *(this + 40) = (*(*v16 + 232))(v16);
        break;
      }
    }

    else if (v17 == 1701078390 || v17 == 1701733488 || v17 == 1919182198)
    {
      goto LABEL_50;
    }

    v21 = *(v16 + 6);
    if (v17 != v21)
    {
      if (v21 <= 1701078389)
      {
        if (v21 == 1633773415 || v21 == 1633969526)
        {
          goto LABEL_50;
        }
      }

      else if (v21 == 1701078390 || v21 == 1701733488 || v21 == 1919182198)
      {
        goto LABEL_50;
      }
    }

    v22 = HALS_ObjectMap::CopyObjectByObjectID(*(v16 + 7));
    v23 = v16;
    v16 = v22;
    HALS_ObjectMap::ReleaseObject(v23, v22);
  }

  *(this + 2) = 1;
  HALS_ObjectMap::ReleaseObject(v16, v15);
  HALS_ObjectMap::ReleaseObject(v4, v24);
}

void HALS_Object::HALS_Object(HALS_Object *this, int a2, int a3, uint64_t a4, HALS_Object *a5)
{
  *this = &unk_1F5987EA8;
  *(this + 2) = 0;
  *(this + 6) = 1;
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v13 = HALS_ObjectMap::sObjectInfoListMutex;
  v14 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
  v9 = HALS_ObjectMap::sNextObjectID++;
  HALB_Mutex::Locker::~Locker(&v13);
  *(this + 4) = v9;
  *(this + 5) = a2;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  *(this + 6) = v11;
  if (a4)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = 0;
  }

  *(this + 7) = v12;
  *(this + 4) = &stru_1F5992518;
  *(this + 40) = 0;
  *(this + 11) = 0;
  HALS_ObjectMap::MapObject(v9, this, v10);
}

const __CFString *HALS_Object::CopyLocalizedString(HALS_Object *this, const AudioObjectPropertyAddress *a2, const __CFString *a3)
{
  IsLocalizedStringProperty = HALB_Info::IsLocalizedStringProperty(a2->mSelector, a2);
  if (a3 && IsLocalizedStringProperty)
  {
    v7 = (*(*this + 88))(this);
    v13[0] = &unk_1F5967B10;
    v13[1] = v7;
    v14 = 1;
    if (v7)
    {
      v8 = (*(*this + 192))(this, a2);
      v10 = HALB_CFBundle::CopyLocalizedString(v13, a3, v8, a3, v9);
      v11 = v10;
      if (v10 == a3)
      {
        CFRelease(v10);
      }
    }

    else
    {
      v11 = a3;
    }

    HALB_CFBundle::~HALB_CFBundle(v13);
    return v11;
  }

  return a3;
}

void sub_1DE692CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_CFBundle::~HALB_CFBundle(va);
  _Unwind_Resume(a1);
}

void HALS_Object::PropertiesChanged(HALS_Object *this, HALS_NotificationManager *a2, uint64_t a3, uint64_t a4, AudioObjectPropertyAddress *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = *((*(*this + 56))(this) + 72);
  if (v9 == pthread_self() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "HALS_Object.cpp";
    v13 = 1024;
    v14 = 646;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Object::PropertiesChanged: Notifications are being sent from inside the command gate.", &v11, 0x12u);
  }

  HALS_NotificationManager::PropertiesChanged(a2, a3, a4, a5, v10);
}

void HALS_Object::PropertiesChanged_Sync(HALS_Object *this, HALS_NotificationManager *a2, uint64_t a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = *((*(*this + 56))(this) + 72);
  if (v9 == pthread_self() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "HALS_Object.cpp";
    v13 = 1024;
    v14 = 655;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Object::PropertiesChanged_Sync: Notifications are being sent from inside the command gate.", &v11, 0x12u);
  }

  HALS_NotificationManager::PropertiesChanged_Sync(a2, a3, a4, a5, v10);
}

uint64_t HALS_Object::IsObjectClassInClassIDList(HALS_Object *this, int *a2, const unsigned int *a3, HALS_Object *a4)
{
  v4 = this;
  result = 1;
  if (v4)
  {
    v6 = a2;
    if (a2)
    {
      v7 = v4;
      v8 = a3[5];
      v9 = a3[6];
      v10 = 1;
      do
      {
        v12 = *v6++;
        v11 = v12;
        IsSubClass = HALB_Info::IsSubClass(v8, v12);
        v14 = IsSubClass;
        result = IsSubClass | (v8 != v9);
        if (v8 != v9 && !v14)
        {
          result = HALB_Info::IsSubClass(v9, v11);
        }

        if (result)
        {
          break;
        }
      }

      while (v10++ < v7);
    }
  }

  return result;
}

void HostStreamModifierList::revert_modifiers(HostStreamModifierList *this, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  AHAL_DSP::IHostModifiers::find_as<HALS_DSPHostModifier_StreamLatencyFrames>(buf, this);
  if (*buf)
  {
    v19 = *(*buf + 12);
    HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::set_requested(*buf, &v19);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 3));
  v5 = v4;
  if (v4)
  {
    HALS_Stream::ApplyHostedDSPModifiersForClient(v4[8], *(this + 2), a2);
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *v8;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 0;
    v12 = 0;
    v13 = 47;
    do
    {
      v14 = &aLibraryCachesC_196[v11];
      if (v13 == 47)
      {
        v12 = &aLibraryCachesC_196[v11];
      }

      v13 = v14[1];
      if (!v14[1])
      {
        break;
      }
    }

    while (v11++ < 0xFFF);
    if (v12)
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    v17 = *(this + 2);
    v18 = *(this + 3);
    *buf = 136315906;
    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = 67;
    v21 = 1024;
    v22 = v17;
    v23 = 1024;
    v24 = v18;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Client ID: %d) (Stream ID: %d) Host requests to REVERT modifiers.", buf, 0x1Eu);
  }

  HALS_ObjectMap::ReleaseObject(v5, v10);
}

void AHAL_DSP::IHostModifiers::find_as<HALS_DSPHostModifier_StreamLatencyFrames>(void *a1, uint64_t a2)
{
  (*(*a2 + 16))(&v7, a2);
  v3 = v7;
  v4 = v8;
  if (v7 == v8)
  {
LABEL_5:
    v9 = &v7;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v9);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      if (*v3)
      {
        if (v5)
        {
          break;
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *(v3 + 8);
    *a1 = v5;
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = &v7;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v9);
  }
}

uint64_t HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_StreamLatencyFrames,unsigned int>::set_requested(uint64_t a1, int *a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *a2;
  v5 = 12;
  if (*(a1 + 20))
  {
    v5 = 16;
  }

  if (v4 != *(a1 + v5))
  {
    *(a1 + 16) = v4;
    *(a1 + 20) = 1;
    atomic_exchange((a1 + 8), 1u);
  }

  std::mutex::unlock((a1 + 24));
  v6 = *(*a1 + 64);

  return v6(a1);
}

void HostStreamModifierList::apply_modifiers(HostStreamModifierList *this, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 3));
  v5 = v4;
  if (v4)
  {
    HALS_Stream::ApplyHostedDSPModifiersForClient(v4[8], *(this + 2), a2);
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *v8;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 0;
    v12 = 0;
    v13 = 47;
    do
    {
      v14 = &aLibraryCachesC_196[v11];
      if (v13 == 47)
      {
        v12 = &aLibraryCachesC_196[v11];
      }

      v13 = v14[1];
      if (!v14[1])
      {
        break;
      }
    }

    while (v11++ < 0xFFF);
    if (v12)
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    v17 = *(this + 2);
    v18 = *(this + 3);
    v19 = 136315906;
    v20 = v16;
    v21 = 1024;
    v22 = 58;
    v23 = 1024;
    v24 = v17;
    v25 = 1024;
    v26 = v18;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Client ID: %d) (Stream ID: %d) Host requests to apply modifiers.", &v19, 0x1Eu);
  }

  HALS_ObjectMap::ReleaseObject(v5, v10);
}

void HostStreamModifierList::execute(HostStreamModifierList *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 0;
    v7 = 0;
    v8 = 47;
    do
    {
      v9 = &aLibraryCachesC_196[v6];
      if (v8 == 47)
      {
        v7 = &aLibraryCachesC_196[v6];
      }

      v8 = v9[1];
      if (!v9[1])
      {
        break;
      }
    }

    while (v6++ < 0xFFF);
    if (v7)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    v12 = *(this + 2);
    v13 = 136315650;
    v14 = v11;
    v15 = 1024;
    v16 = 50;
    v17 = 1024;
    v18 = v12;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Client ID: %d) DSP requests to execute modifiers.", &v13, 0x18u);
  }
}

void HostStreamModifierList::requestable_modifiers(HostStreamModifierList *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>>::__init_with_size[abi:ne200100]<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*,std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*>(a2, *(this + 2), *(this + 3), (*(this + 3) - *(this + 2)) >> 4);
}

void HostStreamModifierList::~HostStreamModifierList(HostStreamModifierList *this)
{
  *this = &unk_1F5987F88;
  v1 = (this + 16);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987F88;
  v1 = (this + 16);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void HALS_DSPHostPerClientStreamEdits::~HALS_DSPHostPerClientStreamEdits(HALS_DSPHostPerClientStreamEdits *this)
{
  *this = &unk_1F5987FC8;
  std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(*(this + 12));
  std::mutex::~mutex((this + 24));

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987FC8;
  std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(*(this + 12));
  std::mutex::~mutex((this + 24));
}

void std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientStreamEdits::PerClientStreamEdits>>>::destroy(a1[1]);
    v2 = a1[13];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostModifier_StreamLatencyFrames>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostPerClientStreamEdits::get_modifiers_for_client(HALS_DSPHostPerClientStreamEdits *this, uint64_t a2, unsigned int a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  std::mutex::lock((a2 + 24));
  v8 = *(a2 + 96);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a2 + 96;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a2 + 96 && *(v9 + 32) <= a3)
  {
    v14 = *(v9 + 96);
    v13 = *(v9 + 104);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *this = v14;
    *(this + 1) = v13;
  }

  else
  {
LABEL_9:
    if (a4)
    {
      operator new();
    }
  }

  std::mutex::unlock((a2 + 24));
}

void sub_1DE693C30(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::mutex::unlock((v1 + 24));
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HostStreamModifierList>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_DSPHostPerClientStreamEdits::update_stream_with_modifiers(HALS_DSPHostPerClientStreamEdits *this, unsigned int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v32);
  std::mutex::lock((this + 24));
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 96;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == this + 96 || *(v5 + 8) > a2)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v18 = *(v5 + 12);
  v19 = *(v5 + 13);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AHAL_DSP::IHostModifiers::find_as<HALS_DSPHostModifier_StreamLatencyFrames>(buf, v18);
  v9 = *buf;
  if (*buf)
  {
    v20 = *(v5 + 10);
    std::mutex::lock((*buf + 24));
    if ((*(*v9 + 72))(v9, 1, 3))
    {
      v21 = *(v9 + 16);
      std::mutex::unlock((v9 + 24));
      if ((v21 & 0x100000000) != 0)
      {
        *(v5 + 10) = v21;
        v9 = v20 != v21;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "added DSP latency of ", 21);
        v22 = MEMORY[0x1E12C1210](&v33, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " frames", 7);
        goto LABEL_31;
      }
    }

    else
    {
      std::mutex::unlock((v9 + 24));
    }

    v9 = 0;
  }

LABEL_31:
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

LABEL_10:
  std::mutex::unlock((this + 24));
  v10 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](buf, v32);
  if (SHIBYTE(v40) < 0)
  {
    v11 = *&buf[8];
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else if (!HIBYTE(v40))
  {
    goto LABEL_20;
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v23 = 0;
    v24 = 0;
    v25 = 47;
    do
    {
      v26 = &aLibraryCachesC_196[v23];
      if (v25 == 47)
      {
        v24 = &aLibraryCachesC_196[v23];
      }

      v25 = v26[1];
      if (!v26[1])
      {
        break;
      }

      v7 = v23++ >= 0xFFF;
    }

    while (!v7);
    v27 = *(*(this + 1) + 16);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v30, v32);
    if (v24)
    {
      v28 = v24 + 1;
    }

    else
    {
      v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostPerClientStreamEdits.cpp";
    }

    if (v31 >= 0)
    {
      v29 = v30;
    }

    else
    {
      v29 = v30[0];
    }

    *buf = 136315906;
    *&buf[4] = v28;
    *&buf[12] = 1024;
    *&buf[14] = 171;
    v39 = 1024;
    v40 = v27;
    v41 = 2080;
    v42 = v29;
    _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] (Stream ID: %d) DSP modified stream: %s", buf, 0x22u);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

LABEL_20:
  v32[0] = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(v32 + *(v32[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v33 = v16;
  v34 = MEMORY[0x1E69E5548] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](&v37);
  return v9;
}

void sub_1DE69415C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = v29;
  std::mutex::unlock((v32 + 24));
  v34 = *(v31 - 104);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::mutex::unlock((v28 + 24));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12);
  MEMORY[0x1E12C15F0](&a28);
  _Unwind_Resume(a1);
}

CFNumberRef PropertyListDeepImmutableCopy(const __CFString *cf)
{
  v1 = cf;
  v24 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return v1;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
    if (CStringPtr)
    {
      v4 = CStringPtr;
      v5 = *MEMORY[0x1E695E478];

      return CFStringCreateWithCString(v5, v4, 0x8000100u);
    }

    Length = CFStringGetLength(v1);
    v22 = 0;
    std::vector<unsigned short>::vector[abi:ne200100](buf, Length, &v22);
    v26.length = (*&buf[8] - *buf) >> 1;
    v26.location = 0;
    CFStringGetCharacters(v1, v26, *buf);
    v1 = CFStringCreateWithCharacters(*MEMORY[0x1E695E478], *buf, (*&buf[8] - *buf) >> 1);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    return v1;
  }

  if (v2 == CFArrayGetTypeID())
  {

    return ArrayDeepImmutableCopy(v1);
  }

  else if (v2 == CFDictionaryGetTypeID())
  {

    return DictionaryDeepImmutableCopy(v1);
  }

  else if (v2 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v1);
    v9 = CFDataGetLength(v1);
    v10 = *MEMORY[0x1E695E478];

    return CFDataCreate(v10, BytePtr, v9);
  }

  else
  {
    if (v2 == CFNumberGetTypeID())
    {
      ByteSize = CFNumberGetByteSize(v1);
      Type = CFNumberGetType(v1);
      MEMORY[0x1EEE9AC00](Type);
      v13 = &v21 - ((ByteSize + 15) & 0xFFFFFFFFFFFFFFF0);
      CFNumberGetValue(v1, Type, v13);
      return CFNumberCreate(*MEMORY[0x1E695E478], Type, v13);
    }

    if (v2 == CFBooleanGetTypeID())
    {
      CFRetain(v1);
      return v1;
    }

    TypeID = CFDateGetTypeID();
    if (v2 != TypeID)
    {
      v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v17 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(TypeID);
      }

      v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *v19;
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      else
      {
        v20 = *v19;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "CFDeepCopy.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 126;
        _os_log_debug_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_DEBUG, "%32s:%-5d Not a supported property list type. Can not make a deep copy for this type.", buf, 0x12u);
      }

      return 0;
    }

    MEMORY[0x1E12C0240](v1);
    v16 = *MEMORY[0x1E695E478];

    return CFDateCreate(v16, v15);
  }
}

void sub_1DE6945C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 64);
  if (v3)
  {
    *(v1 - 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef ArrayDeepImmutableCopy(const __CFArray *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count)
  {
    v3 = Count;
    MEMORY[0x1EEE9AC00](Count);
    v5 = (&callBacks - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v4 >= 0x200)
    {
      v6 = 512;
    }

    else
    {
      v6 = v4;
    }

    bzero(&callBacks - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v3 < 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v10 = PropertyListDeepImmutableCopy(ValueAtIndex);
        v5[v8] = v10;
        if (v10)
        {
          ++v8;
        }

        ++v7;
      }

      while (v3 != v7);
    }

    v14 = *(MEMORY[0x1E695E9C8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9C8];
    *&callBacks.release = v14;
    callBacks.equal = *(MEMORY[0x1E695E9C8] + 32);
    callBacks.retain = 0;
    return CFArrayCreate(*MEMORY[0x1E695E478], v5, v8, &callBacks);
  }

  else
  {
    v11 = *MEMORY[0x1E695E478];
    v12 = MEMORY[0x1E695E9C8];

    return CFArrayCreate(v11, 0, 0, v12);
  }
}

CFDictionaryRef DictionaryDeepImmutableCopy(const __CFDictionary *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(a1);
  if (Count)
  {
    v3 = Count;
    v4 = 8 * Count;
    MEMORY[0x1EEE9AC00](Count);
    v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = (&valueCallBacks - v5);
    if (v4 >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = v4;
    }

    bzero(&valueCallBacks - v5, v7);
    MEMORY[0x1EEE9AC00](v8);
    v9 = (&valueCallBacks - v5);
    bzero(&valueCallBacks - v5, v7);
    MEMORY[0x1EEE9AC00](v10);
    bzero(&valueCallBacks - v5, v7);
    MEMORY[0x1EEE9AC00](v11);
    bzero(&valueCallBacks - v5, v7);
    CFDictionaryGetKeysAndValues(a1, (&valueCallBacks - v5), (&valueCallBacks - v5));
    if (v3 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = *v6++;
        v14 = PropertyListDeepImmutableCopy(v13);
        *(&valueCallBacks.version + 8 * v12 - v5) = v14;
        v15 = *v9++;
        v16 = PropertyListDeepImmutableCopy(v15);
        *(&valueCallBacks.version + 8 * v12 - v5) = v16;
        if (v14)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          ++v12;
        }

        --v3;
      }

      while (v3);
    }

    v22 = *(MEMORY[0x1E695E9E0] + 16);
    *&keyCallBacks.version = *MEMORY[0x1E695E9E0];
    *&keyCallBacks.release = v22;
    *&keyCallBacks.equal = *(MEMORY[0x1E695E9E0] + 32);
    v23 = *(MEMORY[0x1E695E9F0] + 16);
    *&valueCallBacks.version = *MEMORY[0x1E695E9F0];
    *&valueCallBacks.release = v23;
    v24 = *(MEMORY[0x1E695E9F0] + 32);
    keyCallBacks.retain = 0;
    valueCallBacks.equal = v24;
    valueCallBacks.retain = 0;
    return CFDictionaryCreate(*MEMORY[0x1E695E478], (&valueCallBacks - v5), (&valueCallBacks - v5), v12, &keyCallBacks, &valueCallBacks);
  }

  else
  {
    v18 = *MEMORY[0x1E695E478];
    v19 = MEMORY[0x1E695E9E0];
    v20 = MEMORY[0x1E695E9F0];

    return CFDictionaryCreate(v18, 0, 0, 0, v19, v20);
  }
}

void AMCP::Graph::File_Task::~File_Task(std::__shared_weak_count ***this)
{
  AMCP::Graph::File_Task::~File_Task(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59880D8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  std::unique_ptr<AMCP::DAL::File>::reset[abi:ne200100](this + 1, 0);
}

std::__shared_weak_count **std::unique_ptr<AMCP::DAL::File>::reset[abi:ne200100](std::__shared_weak_count ***a1, std::__shared_weak_count **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AMCP::DAL::File::~File(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph9File_Task12create_procsERKNS_19Terminal_IdentifierERKN2CA17StreamDescriptionEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::__shared_weak_count **std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::operator()(std::__shared_weak_count **result)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = result[1];
  v2 = LODWORD(v1[4].__vftable) - 1;
  LODWORD(v1[4].__vftable) = v2;
  if (!v2)
  {
    p_shared_owners = &v1->__shared_owners_;
    if (!v1->__shared_owners_)
    {
      v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v4 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(p_shared_owners);
      }

      v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *v6;
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      else
      {
        v7 = *v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        AMCP::Terminal_Identifier_to_string(&__p, &v1->__shared_weak_owners_);
        v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        v22 = "Graph_File_Task.cpp";
        v23 = 1024;
        v24 = 116;
        v25 = 2080;
        v26 = "not (m_file != nullptr)";
        v27 = 2080;
        *v28 = v8;
        _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s stop_processing called on a file that does not exists: %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
      __cxa_allocate_exception(0x40uLL);
      AMCP::Terminal_Identifier_to_string(&v12, &v1->__shared_weak_owners_);
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v12;
      }

      else
      {
        v10 = v12.__r_.__value_.__r.__words[0];
      }

      caulk::make_string(&v13, "stop_processing called on a file that does not exists: %s", v9, v10);
      std::logic_error::logic_error(&v14, &v13);
      v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&__p, &v14);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = -1;
      __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
      *&v28[2] = "void AMCP::Graph::File_Task::stop_processing()";
      v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
      v30 = 116;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
    }

    return std::unique_ptr<AMCP::DAL::File>::reset[abi:ne200100](p_shared_owners, 0);
  }

  return result;
}

void sub_1DE694E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v35 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a33);
  MEMORY[0x1E12C0F00](&a31);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v35 - 129));
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59882B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F59882B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F59882B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph9File_Task12create_procsERKNS_19Terminal_IdentifierERKN2CA17StreamDescriptionEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::operator()(AMCP::Log::AMCP_Scope_Registry *result)
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = *(result + 1);
  v2 = *(v1 + 96);
  *(v1 + 96) = v2 + 1;
  if (!v2)
  {
    if (!*(v1 + 8))
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "write");
      *&v32[4] = 0u;
      v33 = 0u;
      v32[4] = 1;
      v34 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v35, "write time stamps");
      v36 = 0u;
      v37 = 0u;
      LOBYTE(v36) = 1;
      v38 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v39, "create unique name");
      v40 = 0u;
      v41 = 0u;
      LOBYTE(v40) = 1;
      v42 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      get_audio_capture_folder(v18);
      std::string::basic_string[abi:ne200100]<0>(v43, "file location");
      v44 = *v18;
      v45 = v19;
      v46 = 0;
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
      v47 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      AMCP::DAL::generate_time_stamp(&v21);
      v3 = std::string::append(&v21, "_wire_output_", 0xDuLL);
      v4 = v3->__r_.__value_.__r.__words[0];
      v62.__vftable = v3->__r_.__value_.__l.__size_;
      *(&v62.__vftable + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
      v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
      v3->__r_.__value_.__l.__size_ = 0;
      v3->__r_.__value_.__r.__words[2] = 0;
      v3->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v48, "name");
      *&v49[7] = *(&v62.__vftable + 7);
      v48[3] = v4;
      *v49 = v62.__vftable;
      v50 = v5;
      v62.__vftable = 0;
      *(&v62.__vftable + 7) = 0;
      v51 = 0;
      v52 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      AMCP::Terminal_Identifier_to_string(&__p, (v1 + 16));
      std::string::basic_string[abi:ne200100]<0>(v53, "wire id");
      v54 = __p;
      v55 = 0;
      memset(&__p, 0, sizeof(__p));
      v56 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      asbd_to_dictionary(&cf, (v1 + 56));
      std::string::basic_string[abi:ne200100]<0>(v57, "asbd");
      memset(&v57[4], 0, 24);
      v57[3] = cf;
      cf = 0;
      v57[7] = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v58, "write time stamps");
      v59 = 0u;
      v60 = 0u;
      LOBYTE(v59) = 1;
      v61 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      v17[0] = buf;
      v17[1] = 8;
      AMCP::DAL::DAL_Settings::DAL_Settings(&v22, v17);
      v6 = 128;
      while (1)
      {
        v7 = &buf[v6 * 4];
        v8 = *&v26[v6];
        if (v8)
        {
          v8(0, v7 - 40, 0, 0);
        }

        if (*(v7 - 41) < 0)
        {
          operator delete(*(v7 - 8));
        }

        v6 -= 16;
        if (!(v6 * 4))
        {
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v19) < 0)
          {
            operator delete(v18[0]);
          }

          operator new();
        }
      }
    }

    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&v22, (v1 + 16));
      v13 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v28 = "Graph_File_Task.cpp";
      v29 = 1024;
      v30 = 94;
      v31 = 2080;
      *v32 = "not (m_file == nullptr)";
      *&v32[8] = 2080;
      *&v32[10] = v13;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s start_processing called on a file that exists: %s", buf, 0x26u);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&cf);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&__p, (v1 + 16));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v21, "start_processing called on a file that exists: %s", v14, p_p);
    std::logic_error::logic_error(&v62, &v21);
    v62.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v62);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26[0] = -1;
    v22.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v22.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    *&v32[12] = "void AMCP::Graph::File_Task::start_processing()";
    *&v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    DWORD2(v33) = 94;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v17);
  }

  return result;
}

void sub_1DE6956F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, char a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5988238;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5988238;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5988238;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph9File_Task12create_procsERKNS_19Terminal_IdentifierERKN2CA17StreamDescriptionEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  if (!*(v5 + 8))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&__p, (v5 + 16));
      v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v40 = "Graph_File_Task.cpp";
      v41 = 1024;
      v42 = 79;
      v43 = 2080;
      v44 = "not (m_file != nullptr)";
      v45 = 2080;
      *v46 = v20;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s io_proc called on a file that does not exists: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v30, (v5 + 16));
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v30;
    }

    else
    {
      v22 = v30.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v31, "io_proc called on a file that does not exists: %s", v21, v22);
    std::logic_error::logic_error(&v32, &v31);
    v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v32);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v46[2] = "void AMCP::Graph::File_Task::io_proc(const IO_Proc_Cycle_Info &, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    v48 = 79;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
  }

  if (a4[1] - *a4 != 88)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&__p, (v5 + 16));
      v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v40 = "Graph_File_Task.cpp";
      v41 = 1024;
      v42 = 80;
      v43 = 2080;
      v44 = "not (sources.size() == 1)";
      v45 = 2080;
      *v46 = v23;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Expecting only one input to a file writer node: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v30, (v5 + 16));
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v30;
    }

    else
    {
      v25 = v30.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v31, "Expecting only one input to a file writer node: %s", v24, v25);
    std::logic_error::logic_error(&v32, &v31);
    v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v32);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v46[2] = "void AMCP::Graph::File_Task::io_proc(const IO_Proc_Cycle_Info &, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    v48 = 80;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
  }

  if (*a5 != a5[1])
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&__p, (v5 + 16));
      v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v40 = "Graph_File_Task.cpp";
      v41 = 1024;
      v42 = 81;
      v43 = 2080;
      v44 = "not (dests.empty())";
      v45 = 2080;
      *v46 = v26;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Expecting no output from a file writer node: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v30, (v5 + 16));
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v30;
    }

    else
    {
      v28 = v30.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v31, "Expecting no output from a file writer node: %s", v27, v28);
    std::logic_error::logic_error(&v32, &v31);
    v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v32);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v46[2] = "void AMCP::Graph::File_Task::io_proc(const IO_Proc_Cycle_Info &, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_File_Task.cpp";
    v48 = 81;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
  }

  AMCP::DAL::create_timestamp_data(buf, (a3 + 80), *(*a4 + 24), *(*a4 + 32));
  (*(***(v5 + 8) + 16))(**(v5 + 8), buf, *a4);
  return std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(buf);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59881A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59881A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0,std::allocator<AMCP::Graph::File_Task::create_procs(AMCP::Terminal_Identifier const&,CA::StreamDescription const&)::$_0>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59881A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::Graph::File_Task>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::IOAudio1::Control::~Control(AMCP::IOAudio1::Control *this)
{
  AMCP::IOAudio1::Control::~Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5988338;
  AMCP::Core::Broker::destroy_core(*(*(*(*(this + 1) + 16) + 32) + 16), *(this + 4));
  *(this + 4) = 0;
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](this + 3, 0);
  AMCP::Utility::Mach_Port::reset((this + 32));
  AMCP::Utility::Mach_Port::~Mach_Port((this + 32));
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](this + 3, 0);

  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(this);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0,std::allocator<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio17ControlC1ERNS0_6DeviceERKN10applesauce5iokit16io_object_holderEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0,std::allocator<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, unsigned int a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v7 = AMCP::Utility::Mach_Port::receive_message(*(v6 + 32), 0x30u, &v21, 1);
  v8 = v7;
  AMCP::Utility::Kernel_Error_Category::get(v7);
  if (!v8)
  {
    if (DWORD2(v22) == 1)
    {
      v14 = *(*(v6 + 8) + 16);
      if (*(v6 + 20))
      {
        v15 = IOObjectRetain(*(v6 + 20));
        if (v15)
        {
          v18 = v15;
          exception = __cxa_allocate_exception(0x20uLL);
          v20 = std::system_category();
          MEMORY[0x1E12C10C0](exception, v18, v20, "Error on Retain");
          __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
        }

        v14 = *(*(v6 + 8) + 16);
      }

      v16 = *(v14 + 40);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v30[1] = 0;
      operator new();
    }

    if (!DWORD2(v22))
    {
      AMCP::Core::Broker::fetch_core(&v25, *(*(*(*(v6 + 8) + 16) + 32) + 16), *(v6 + 16));
      v9 = v25;
      if (v25)
      {
        *__p = 0u;
        *v30 = 0u;
        v31 = 1065353216;
        v10 = *(v6 + 20);
        if (!v10)
        {
          v17 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v17, "cannot create io_object_proxy from null io_object");
          __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::iokit::get_properties(&cf, v10);
        simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v9);
        AMCP::IOAudio1::update_control_value(simple_required, __p, (v6 + 20), &cf);
        v27 = v9 + 48;
        LOBYTE(v28) = 1;
        caulk::concurrent::shared_spin_lock::lock((v9 + 48));
        v12 = v30[0];
        if (v30[0])
        {
          do
          {
            std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v9 + 8), (v12[4] + 40), v12 + 4);
            v12 = *v12;
          }

          while (v12);
        }

        caulk::concurrent::shared_spin_lock::unlock((v9 + 48));
        v27 = 0x676C6F626F776E72;
        v28 = 0;
        *(v9 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v9, &v27, &AMCP::k_object_id_unknown);
        AMCP::Core::Conductor::notify_control_value_observers(*(*(*(*(v6 + 8) + 16) + 32) + 32), *(v6 + 16));
        if (cf)
        {
          CFRelease(cf);
        }

        std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v30[0]);
        v13 = __p[0];
        __p[0] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }
  }
}

void sub_1DE696AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __cxa_free_exception(v19);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio17Control28handle_range_changed_messageEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v14, *(*(a1 + 16) + 16), *(a1 + 8));
  v2 = v14;
  if (v14)
  {
    *__p = 0u;
    *v12 = 0u;
    v13 = 1065353216;
    v5 = *(a1 + 12);
    v4 = (a1 + 12);
    v3 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::iokit::get_properties(&cf, v3);
    simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v2);
    AMCP::IOAudio1::update_control_value(simple_required, __p, v4, &cf);
    AMCP::IOAudio1::update_control_range(simple_required, __p, &cf);
    v16 = v2 + 48;
    LOBYTE(v17) = 1;
    caulk::concurrent::shared_spin_lock::lock((v2 + 48));
    v7 = v12[0];
    if (v12[0])
    {
      do
      {
        std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v2 + 8), (v7[4] + 40), v7 + 4);
        v7 = *v7;
      }

      while (v7);
    }

    caulk::concurrent::shared_spin_lock::unlock((v2 + 48));
    v16 = 0x676C6F626F776E72;
    v17 = 0;
    *(v2 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v2, &v16, &AMCP::k_object_id_unknown);
    if (cf)
    {
      CFRelease(cf);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v12[0]);
    v8 = __p[0];
    __p[0] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1DE696CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  __cxa_free_exception(v19);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a12);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void AMCP::IOAudio1::update_control_value(unsigned int a1, float *a2, io_object_t *a3, CFDictionaryRef *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (AMCP::is_base_of(0x6C65766C, a1))
  {
    if (*a4)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v39, *a4, @"IOAudioLevelControlMinValue");
      if (!v39)
      {
        goto LABEL_45;
      }

      v7 = applesauce::CF::convert_to<int,0>(v39);
      if (v39)
      {
        CFRelease(v39);
      }

      if (!*a4)
      {
        goto LABEL_45;
      }

      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v39, *a4, @"IOAudioLevelControlMinDB");
      if (!v39)
      {
        goto LABEL_45;
      }

      v8 = applesauce::CF::convert_to<int,0>(v39);
      if (v8 >= 0)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = -1.0;
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (!*a4)
      {
        goto LABEL_45;
      }

      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v39, *a4, @"IOAudioLevelControlMaxValue");
      if (!v39)
      {
        goto LABEL_45;
      }

      v10 = applesauce::CF::convert_to<int,0>(v39);
      if (v39)
      {
        CFRelease(v39);
      }

      if (*a4 && (applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v39, *a4, @"IOAudioLevelControlMaxDB"), v39))
      {
        v11 = applesauce::CF::convert_to<int,0>(v39);
        if (v11 >= 0)
        {
          v12 = 1.0;
        }

        else
        {
          v12 = -1.0;
        }

        if (v39)
        {
          CFRelease(v39);
        }

        *&v39 = v9 * (vcvts_n_f32_u32((v8 * v9), 0x10uLL) + (((v8 * v9) >> 16) & 0x7FFF));
        HIDWORD(v39) = v7;
        v40 = v12 * (vcvts_n_f32_u32((v11 * v12), 0x10uLL) + (((v11 * v12) >> 16) & 0x7FFF));
        v41 = v10;
        AMCP::Utility::Level_Map::Level_Map(&__p, &v39, 2uLL);
        if (*a4)
        {
          applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v39, *a4, @"IOAudioControlValue");
          if (v39)
          {
            v13 = applesauce::CF::convert_to<int,0>(v39);
            if (v39)
            {
              CFRelease(v39);
            }

            AMCP::Utility::Level_Map::calculate_decibel_from_raw(&__p, v13);
            v33 = 0uLL;
            v34 = 0;
            std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(&v33, __p, v37, (v37 - __p) >> 3);
            v14 = *a3;
            v35 = v14;
            if (!v14 || (v15 = IOObjectRetain(v14), !v15))
            {
              v31 = 0x676C6F626C637376;
              v32 = 0;
              std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v30, &v31);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            v21 = MEMORY[0x1E69E52D0];
            v23 = std::system_category();
            MEMORY[0x1E12C10C0](exception, v15, v23, "Error on Retain");
            v22 = MEMORY[0x1E69E53B8];
LABEL_50:
            __cxa_throw(exception, v22, v21);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        v21 = MEMORY[0x1E69E5288];
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      else
      {
LABEL_45:
        exception = __cxa_allocate_exception(0x10uLL);
        v21 = MEMORY[0x1E69E5288];
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v21 = MEMORY[0x1E69E5288];
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v22 = MEMORY[0x1E69E5408];
    goto LABEL_50;
  }

  if (AMCP::is_base_of(0x746F676C, a1))
  {
    v39 = @"IOAudioControlValue";
    AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a4, &v39);
    v16 = *a3;
    if (!v16 || (v17 = IOObjectRetain(v16), !v17))
    {
      __p = 0x676C6F626263766CLL;
      LODWORD(v37) = 0;
      std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v38, &__p);
    }

    v24 = __cxa_allocate_exception(0x20uLL);
    v25 = std::system_category();
    MEMORY[0x1E12C10C0](v24, v17, v25, "Error on Retain");
    __cxa_throw(v24, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  if (AMCP::is_base_of(0x736C6374, a1))
  {
    if (*a4)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(&v39, *a4, @"IOAudioControlValue");
      if (v39)
      {
        applesauce::CF::convert_to<unsigned int,0>(v39);
        if (v39)
        {
          CFRelease(v39);
        }

        v18 = *a3;
        if (!v18 || (v19 = IOObjectRetain(v18), !v19))
        {
          __p = 0x676C6F6273636369;
          LODWORD(v37) = 0;
          std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v38, &__p);
        }

        v26 = __cxa_allocate_exception(0x20uLL);
        v27 = MEMORY[0x1E69E52D0];
        v29 = std::system_category();
        MEMORY[0x1E12C10C0](v26, v19, v29, "Error on Retain");
        v28 = MEMORY[0x1E69E53B8];
LABEL_57:
        __cxa_throw(v26, v28, v27);
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      v27 = MEMORY[0x1E69E5288];
      std::runtime_error::runtime_error(v26, "Could not construct");
    }

    else
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      v27 = MEMORY[0x1E69E5288];
      std::runtime_error::runtime_error(v26, "Could not construct");
    }

    v28 = MEMORY[0x1E69E5408];
    goto LABEL_57;
  }
}

void sub_1DE697D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    __cxa_free_exception(v27);
    operator delete(v28);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IOAudio1::update_control_range(unsigned int a1, float *a2, CFDictionaryRef *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (AMCP::is_base_of(0x6C65766C, a1))
  {
    cf[0] = @"IOAudioControlValueIsReadOnly";
    v6 = 0x676C6F626372646FLL;
    LODWORD(v7) = 0;
    LOBYTE(__p) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a3, cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>(cf, &v6, &__p);
  }

  if (AMCP::is_base_of(0x746F676C, a1))
  {
    cf[0] = @"IOAudioControlValueIsReadOnly";
    v6 = 0x676C6F626372646FLL;
    LODWORD(v7) = 0;
    LOBYTE(__p) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a3, cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>(cf, &v6, &__p);
  }

  if (AMCP::is_base_of(0x736C6374, a1))
  {
    cf[0] = @"IOAudioControlValueIsReadOnly";
    v6 = 0x676C6F626372646FLL;
    LODWORD(v7) = 0;
    LOBYTE(__p) = AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(a3, cf);
    AMCP::Core::Operation_Utilities::make_typed_property<BOOL,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<BOOL>(AMCP::Address const&,BOOL const&)::{lambda(void)#1}>(cf, &v6, &__p);
  }
}

void sub_1DE698A08(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::Utility::Level_Map::Level_Map(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<long>::__vallocate[abi:ne200100](a1, a3);
  }

  __assert_rtn("Level_Map", "Level_Map.h", 49, "data_is_valid()");
}

void sub_1DE698D0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE698E28(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(uint64_t *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE698EC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

void AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6[17] = *MEMORY[0x1E69E9840];
  memset(v6, 0, 24);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(v6, a3, a4, (a4 - a3) >> 4);
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE6990FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyINSt3__16vectorINS3_5tupleIJjjN10applesauce2CF9StringRefEEEENS3_9allocatorIS9_EEEEEENS3_10shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a2, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 4);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 1;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v2);

  operator delete(a1);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F598A9E8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 4);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A9E8;
  v1 = (a1 + 8);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Address const&,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> const&)::{lambda(void)#1}>,std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F598A9E8;
  v3 = (a1 + 8);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_rangeERNS_4Core13Operation_SetERKN10applesauce2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float AMCP::Utility::Level_Map::calculate_scalar_from_decibel(float **this, float a2)
{
  v2 = 0.0;
  if (**this < a2)
  {
    if (*(this[1] - 2) <= a2)
    {
      return 1.0;
    }

    else
    {
      v4 = AMCP::Utility::Level_Map::calculate_raw_from_decibel(this, a2);
      v5 = *(*this + 1);
      if (v4 > v5)
      {
        v6 = *(this[1] - 1);
        v2 = 1.0;
        if (v6 > v4)
        {
          return (v4 - v5) / (v6 - v5);
        }
      }
    }
  }

  return v2;
}

uint64_t AMCP::Utility::Level_Map::calculate_raw_from_decibel(float **this, float a2)
{
  v2 = *this;
  if (**this >= a2)
  {
    return *(v2 + 1);
  }

  v3 = this[1];
  if (*(v3 - 2) <= a2)
  {
    return *(v3 - 1);
  }

  if (v3 == v2)
  {
    v5 = this[1];
  }

  else
  {
    v4 = (v3 - v2) >> 3;
    v5 = *this;
    do
    {
      v6 = v4 >> 1;
      v7 = &v5[2 * (v4 >> 1)];
      v9 = *v7;
      v8 = v7 + 2;
      v4 += ~(v4 >> 1);
      if (v9 < a2)
      {
        v5 = v8;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 == v5)
  {
    v11 = "search_result != m_map.end()";
    v12 = 261;
    goto LABEL_18;
  }

  if (v2 == v5)
  {
    v11 = "search_result != m_map.begin()";
    v12 = 265;
LABEL_18:
    __assert_rtn("find_span_for_decibel", "Level_Map.h", v12, v11);
  }

  return (*(v5 - 1) + (((a2 - *(v5 - 2)) / (*v5 - *(v5 - 2))) * (*(v5 + 1) - *(v5 - 1))));
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t *std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F59887F0;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F59887F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F59887F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_rangeERNS_4Core13Operation_SetERKN10applesauce2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float AMCP::Utility::Level_Map::calculate_decibel_from_raw(AMCP::Utility::Level_Map *this, int a2)
{
  v2 = *this;
  if (*(*this + 4) >= a2)
  {
    return *v2;
  }

  v3 = *(this + 1);
  if (*(v3 - 4) <= a2)
  {
    return *(v3 - 8);
  }

  if (v3 == v2)
  {
    v5 = *(this + 1);
  }

  else
  {
    v4 = (v3 - v2) >> 3;
    v5 = *this;
    do
    {
      v6 = v4 >> 1;
      v7 = v5 + 8 * (v4 >> 1);
      v8 = *(v7 + 4);
      v9 = v7 + 8;
      v4 += ~(v4 >> 1);
      if (v8 < a2)
      {
        v5 = v9;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  if (v3 == v5)
  {
    v11 = "search_result != m_map.end()";
    v12 = 238;
    goto LABEL_18;
  }

  if (v2 == v5)
  {
    v11 = "search_result != m_map.begin()";
    v12 = 242;
LABEL_18:
    __assert_rtn("find_span_for_raw", "Level_Map.h", v12, v11);
  }

  return *(v5 - 8) + (((a2 - *(v5 - 4)) / (*(v5 + 4) - *(v5 - 4))) * (*v5 - *(v5 - 8)));
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t *std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5988770;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(a2 + 1, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 3);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F5988770;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_range(AMCP::Core::Operation_Set &,applesauce::CF::DictionaryRef const&)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F5988770;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1}>,CA::ValueRange ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN2CA10ValueRangeEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ValueRange>(AMCP::Address const&,CA::ValueRange const&)::{lambda(void)#1}>,CA::ValueRange ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598A1E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L29update_selector_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*a2 != *(a2 + 8))
  {
    if (!*(a1 + 8))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v11 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
    if (!v11)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    LODWORD(valuePtr) = **a2;
    v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v5 = v4;
    cf = v4;
    if (!v4)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(v4);
    valuePtr = v5;
    applesauce::iokit::io_object_proxy::set_properties(*(a1 + 8), v11, &valuePtr);
    CFRelease(v5);
    CFRelease(cf);
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void sub_1DE699DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy_deallocate(unsigned int *a1)
{
  std::__function::__alloc_func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy[abi:ne200100](a1[2]);

  operator delete(a1);
}

uint64_t std::__function::__alloc_func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::destroy[abi:ne200100](uint64_t result)
{
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59886F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  if (result)
  {
    result = IOObjectRetain(result);
    if (result)
    {
      v3 = result;
      exception = __cxa_allocate_exception(0x20uLL);
      v5 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v3, v5, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return result;
}

void sub_1DE69A010(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59886F0;
  v1 = *(a1 + 8);
  if (v1)
  {
    IOObjectRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(std::vector<unsigned int> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59886F0;
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L29update_selector_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,std::vector<unsigned int> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v3, &vars0, 1uLL);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_selector_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,std::vector<unsigned int> ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988670;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L28update_BOOLean_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
  if (!v11)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
    __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v5 = v4;
  cf = v4;
  if (!v4)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v4);
  valuePtr = v5;
  applesauce::iokit::io_object_proxy::set_properties(*(a1 + 8), v11, &valuePtr);
  CFRelease(v5);
  CFRelease(cf);
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_1DE69A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::destroy_deallocate(unsigned int *a1)
{
  std::__function::__alloc_func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::destroy[abi:ne200100](a1[2]);

  operator delete(a1);
}

uint64_t std::__function::__alloc_func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::destroy[abi:ne200100](uint64_t result)
{
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59885F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  if (result)
  {
    result = IOObjectRetain(result);
    if (result)
    {
      v3 = result;
      exception = __cxa_allocate_exception(0x20uLL);
      v5 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v3, v5, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return result;
}

void sub_1DE69A63C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59885F0;
  v1 = *(a1 + 8);
  if (v1)
  {
    IOObjectRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(BOOL const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59885F0;
  v2 = *(a1 + 8);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L28update_BOOLean_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_BOOLean_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,BOOL ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988570;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  v3 = AMCP::Utility::Level_Map::calculate_raw_from_decibel((a1 + 8), *a2);
  if (!*(a1 + 40))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  v12 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
  if (!v12)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = v4;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v6 = v5;
  cf = v5;
  if (!v5)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v5);
  valuePtr = v6;
  applesauce::iokit::io_object_proxy::set_properties(*(a1 + 40), v12, &valuePtr);
  CFRelease(v6);
  CFRelease(cf);
  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1DE69A9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::destroy_deallocate(_DWORD *__p)
{
  v2 = __p[10];
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(__p + 1);
  if (v3)
  {
    *(__p + 2) = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59884F0;
  result = AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3::$_3(a2 + 8, a1 + 8);
  *(a2 + 44) = 0;
  return result;
}

uint64_t AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3::$_3(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v8 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v5, v8, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return a1;
}

void sub_1DE69AC08(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59884F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_3>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59884F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_2>,float ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988470;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::operator()(uint64_t a1, float *a2)
{
  if (!*(a1 + 40))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_object_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *a2;
  v4 = *(*(a1 + 16) - 4);
  v5 = *(*(a1 + 8) + 4);
  v13 = CFStringCreateWithBytes(0, "IOAudioControlValue", 19, 0x8000100u, 0);
  if (!v13)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = v5 + (fmaxf(fminf(v3, 1.0), 0.0) * (v4 - v5));
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v7 = v6;
  cf = v6;
  if (!v6)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(v6);
  valuePtr = v7;
  applesauce::iokit::io_object_proxy::set_properties(*(a1 + 40), v13, &valuePtr);
  CFRelease(v7);
  CFRelease(cf);
  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_1DE69B074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::destroy_deallocate(_DWORD *__p)
{
  v2 = __p[10];
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(__p + 1);
  if (v3)
  {
    *(__p + 2) = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59883F0;
  result = AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1::$_1(a2 + 8, a1 + 8);
  *(a2 + 44) = 0;
  return result;
}

uint64_t AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<std::tuple<float,int>>::__init_with_size[abi:ne200100]<std::tuple<float,int>*,std::tuple<float,int>*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v8 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v5, v8, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  return a1;
}

void sub_1DE69B2AC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59883F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_1>,void ()(float const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F59883F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,float ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio1L27update_volume_control_valueERNS_4Core13Operation_SetERKN10applesauce5iokit16io_object_holderERKNS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0,std::allocator<AMCP::IOAudio1::update_volume_control_value(AMCP::Core::Operation_Set &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef const&)::$_0>,float ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5988370;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(__p + 3);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  result = *(a1 + 12);
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5988A58;
  v5 = *(a1 + 8);
  result = *(a1 + 12);
  *(a2 + 8) = v5;
  *(a2 + 12) = result;
  if (result)
  {
    result = IOObjectRetain(result);
    if (result)
    {
      v7 = result;
      exception = __cxa_allocate_exception(0x20uLL);
      v9 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v7, v9, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  v6 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DE69B760(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5988A58;
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 12);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0,std::allocator<AMCP::IOAudio1::Control::handle_range_changed_message(void)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5988A58;
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 12);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0,std::allocator<AMCP::IOAudio1::Control::Control(AMCP::IOAudio1::Device &,applesauce::iokit::io_object_holder const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5988870;
  a2[1] = v2;
  return result;
}

void AMCP::IOAudio1::Control::build_core(AMCP::IOAudio1::Control *this)
{
  v40 = *MEMORY[0x1E69E9840];
  *(this + 4) = AMCP::Core::Broker::reserve_id(*(*(*(*(this + 1) + 16) + 32) + 16));
  *__p = 0u;
  *v20 = 0u;
  v21 = 1065353216;
  v2 = *(this + 5);
  if (v2)
  {
    applesauce::iokit::get_properties(&v18, v2);
    if (v18)
    {
      applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlType");
      if (*buf)
      {
        v3 = applesauce::CF::convert_to<unsigned int,0>(*buf);
        if (*buf)
        {
          CFRelease(*buf);
        }

        if (v18)
        {
          applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlSubType");
          if (*buf)
          {
            applesauce::CF::convert_to<unsigned int,0>(*buf);
            v4 = *buf;
            if (*buf)
            {
              CFRelease(*buf);
            }

            if (v3 == 1953458028 || v3 == 1936483188 || v3 == 1818588780)
            {
              if (v18)
              {
                applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlUsage");
                if (*buf)
                {
                  applesauce::CF::convert_to<unsigned int,0>(*buf);
                  if (*buf)
                  {
                    CFRelease(*buf);
                  }

                  if (v18)
                  {
                    applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(buf, v18, @"IOAudioControlChannelNumber");
                    if (*buf)
                    {
                      applesauce::CF::convert_to<unsigned int,0>(*buf);
                      if (*buf)
                      {
                        CFRelease(*buf);
                      }

                      v25.__vftable = 0x676C6F6269646E74;
                      LODWORD(v25.__imp_.__imp_) = 0;
                      LODWORD(cf) = *(this + 4);
                      AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(buf, &v25, &cf);
                    }

                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "Could not construct");
                    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }

                  v12 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v12, "Could not construct");
                  __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v11 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v11, "Could not construct");
                __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v10 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v10, "Could not construct");
              __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v14 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v4);
            }

            v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              v17 = *v16;
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            else
            {
              v17 = *v16;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "IOAudio1_Control.cpp";
              v33 = 1024;
              v34 = 148;
              v35 = 2080;
              v36 = "stock_class_id == k_class_id_unknown";
              _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v31);
            __cxa_allocate_exception(0x40uLL);
            std::runtime_error::runtime_error(&v24, "failed to identify the control");
            std::runtime_error::runtime_error(&v25, &v24);
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = -1;
            v25.__vftable = &unk_1F5992170;
            v26 = &unk_1F5992198;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v25);
            v37 = "std::tuple<Class_ID, Class_ID> AMCP::IOAudio1::calculate_control_class_info(uint32_t, uint32_t)";
            v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio1/IOAudio1_Control.cpp";
            LODWORD(v39) = 148;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
          }

          v9 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v9, "Could not construct");
          __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v8 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v8, "Could not construct");
        __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "cannot create io_object_proxy from null io_object");
  __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE69C42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, std::runtime_error a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a27);
  if (v30)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 161));
  applesauce::CF::DictionaryRef::~DictionaryRef(&a12);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a13);
  _Unwind_Resume(a1);
}

void AMCP::IOAudio1::Control::create_from_service_list(const void **a1, uint64_t a2, io_object_t *a3, io_object_t *a4)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_1DE69CB04(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  STACK[0x278] = v1;
  std::vector<std::unique_ptr<AMCP::IOAudio1::Stream>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x278]);
  _Unwind_Resume(a1);
}

void sub_1DE69CB54()
{
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](v1, 0);
  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(v0);
  JUMPOUT(0x1DE69CE10);
}

void sub_1DE69CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a42);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x278]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x3C8]);
  AMCP::Utility::Mach_Port::~Mach_Port((v42 + 32));
  JUMPOUT(0x1DE69CDFCLL);
}

void sub_1DE69CB6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 buf, __int128 a32)
{
  if (a2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if (a2 == 2)
    {
      v35 = v33;
      if ((v34 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v33);
      }

      v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        v38 = *v37;
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      else
      {
        v38 = *v37;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v42 = (*(*v35 + 16))(v35);
        LODWORD(buf) = 136315650;
        *(&buf + 4) = "IOAudio1_Control.cpp";
        WORD6(buf) = 1024;
        *(&buf + 14) = 207;
        WORD1(a32) = 2080;
        *(&a32 + 4) = v42;
        _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to a driver's control: %s", &buf, 0x1Cu);
      }

      __cxa_rethrow();
    }

    if ((v34 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v33);
    }

    v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v41 = *v40;
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    else
    {
      v41 = *v40;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "IOAudio1_Control.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 212;
      _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to a driver's control", &buf, 0x12u);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1DE69CE34);
}

void sub_1DE69CD34()
{
  __cxa_end_catch();
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x278]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x3C8]);
  AMCP::Utility::Mach_Port::~Mach_Port((v0 + 32));
  JUMPOUT(0x1DE69CDFCLL);
}

void sub_1DE69CD54(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE69CE34);
}

void sub_1DE69CD64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x278]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x3C8]);
  AMCP::Utility::Mach_Port::~Mach_Port((v33 + 32));
  JUMPOUT(0x1DE69CDFCLL);
}

uint64_t *AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(uint64_t *a1, void *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  v4 = a1 + 16;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "source format");
  v5 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v6)
  {
    v45 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v45 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v47 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v46 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      v48 = *v47;
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    else
    {
      v48 = *v47;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 39;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (settings.has_key(kFormatConversion_Source_Format))";
      _os_log_error_impl(&dword_1DE1F9000, v48, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context requires a source format", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v70);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v75, "PCM_Operation_Context requires a source format", v61);
    std::logic_error::logic_error(&v72, &v75);
    v72.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v76, &v72);
    v78 = 0uLL;
    v79 = 0;
    v80 = -1;
    v76.__vftable = &unk_1F5991430;
    v77 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v76);
    v82 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v84 = 39;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v73);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dest format");
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v8 = v7;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v8)
  {
    v49 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v49 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      v52 = *v51;
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    else
    {
      v52 = *v51;
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 40;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (settings.has_key(kFormatConversion_Dest_Format))";
      _os_log_error_impl(&dword_1DE1F9000, v52, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context requires a dest format", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v70);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v75, "PCM_Operation_Context requires a dest format", v62);
    std::logic_error::logic_error(&v72, &v75);
    v72.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v76, &v72);
    v78 = 0uLL;
    v79 = 0;
    v80 = -1;
    v76.__vftable = &unk_1F5991430;
    v77 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v76);
    v82 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v84 = 40;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v73);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "size bias");
  v9 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  v10 = v9;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v10)
  {
    v53 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v53 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v54 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      v56 = *v55;
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    else
    {
      v56 = *v55;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 41;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (settings.has_key(kFormatConversion_Size_Bias))";
      _os_log_error_impl(&dword_1DE1F9000, v56, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context requires a size bias", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v70);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v75, "PCM_Operation_Context requires a size bias", v63);
    std::logic_error::logic_error(&v72, &v75);
    v72.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v76, &v72);
    v78 = 0uLL;
    v79 = 0;
    v80 = -1;
    v76.__vftable = &unk_1F5991430;
    v77 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v76);
    v82 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v84 = 41;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v73);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "source timebase");
  v74 = 0uLL;
  AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Timebase>>(&v76, a2, __p, &v74);
  v11 = a1[8];
  *(a1 + 7) = v76;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v74.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74.n128_u64[1]);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dest timebase");
  v74 = 0uLL;
  AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Timebase>>(&v76, a2, __p, &v74);
  v12 = a1[10];
  *(a1 + 9) = v76;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v74.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74.n128_u64[1]);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v76, "source format");
  v13 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v76);
  if (v13)
  {
    AMCP::Thing::convert_to<CA::StreamDescription>(__p, (v13 + 5));
  }

  else
  {
    v82 = 0;
    memset(__p, 0, sizeof(__p));
  }

  v14 = *&__p[2];
  *(a1 + 11) = *__p;
  *(a1 + 13) = v14;
  a1[15] = v82;
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76.__vftable);
  }

  std::string::basic_string[abi:ne200100]<0>(&v76, "dest format");
  v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v76);
  if (v15)
  {
    AMCP::Thing::convert_to<CA::StreamDescription>(__p, (v15 + 5));
  }

  else
  {
    v82 = 0;
    memset(__p, 0, sizeof(__p));
  }

  v16 = *&__p[2];
  *v4 = *__p;
  *(v4 + 1) = v16;
  v4[4] = v82;
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76.__vftable);
  }

  v17 = *(a1 + 16);
  v18 = *(a1 + 11);
  v20 = *(a1 + 38);
  v19 = *(a1 + 39);
  v67 = *(a1 + 28);
  v68 = *(a1 + 29);
  std::string::basic_string[abi:ne200100]<0>(__p, "change clock with drift correction disabled");
  v21 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v21)
  {
    v69 = AMCP::Thing::convert_to<BOOL>((v21 + 5));
  }

  else
  {
    v69 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v22 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v22)
  {
    v22 = AMCP::Thing::convert_to<BOOL>(v22 + 40);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v69 & v23) == 1)
  {
    v57 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v57 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v22);
    }

    v59 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v58 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      v60 = *v59;
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    else
    {
      v60 = *v59;
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "PCM_Operation_Context.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 54;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = "not (!change_clock_without_resampling || !needs_resampling)";
      _os_log_error_impl(&dword_1DE1F9000, v60, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Contradictory resampling settings.", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v70);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v75, "Contradictory resampling settings.", v64);
    std::logic_error::logic_error(&v72, &v75);
    v72.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v76, &v72);
    v78 = 0uLL;
    v79 = 0;
    v80 = -1;
    v76.__vftable = &unk_1F5991430;
    v77 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v76);
    v82 = "AMCP::DAL::PCM_Operation_Context::PCM_Operation_Context(const DAL_Settings &)";
    v83 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v84 = 54;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v73);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "volume processing");
  v24 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "map channels");
  v65 = v20;
  v66 = v19;
  if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p))
  {
    v25 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v76, "convert format");
    v25 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v76) != 0;
    if (SHIBYTE(v77) < 0)
    {
      operator delete(v76.__vftable);
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix channels to mono");
  v26 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (!v24)
    {
      goto LABEL_78;
    }

LABEL_55:
    std::string::basic_string[abi:ne200100]<0>(__p, "volume processing");
    if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p))
    {
      std::string::basic_string[abi:ne200100]<0>(&v76, "volume connection");
      v27 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v76) != 0;
      if (SHIBYTE(v77) < 0)
      {
        operator delete(v76.__vftable);
      }
    }

    else
    {
      v27 = 0;
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (!v27)
      {
LABEL_77:
        LODWORD(__p[0]) = 0;
        std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100]((a1 + 21), __p);
        goto LABEL_78;
      }
    }

    else if (!v27)
    {
      goto LABEL_77;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "volume connection");
    v74 = 0uLL;
    AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(&v76, a2, __p, &v74);
    v28 = a1[2];
    *(a1 + 1) = v76;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v74.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74.n128_u64[1]);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(__p, a1[1]);
    v29 = v85;
    v30 = v86;
    v31 = v87;
    v32 = *(a1 + 7);
    v33 = a1[8];
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v76.__vftable) = 0;
    v76.__imp_.__imp_ = 0;
    v77 = 0;
    v78 = v32;
    if (v31)
    {
      v76.__imp_.__imp_ = v29;
      LODWORD(v76.__vftable) = 2;
      v34 = 3;
      if ((v31 & 2) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v34 = 1;
      if ((v31 & 2) == 0)
      {
LABEL_76:
        AMCP::DAL::DAL_Time::get_sample_time(&v76);
        operator new();
      }
    }

    v77 = v30;
    LODWORD(v76.__vftable) = v34;
    goto LABEL_76;
  }

  if (v24)
  {
    goto LABEL_55;
  }

LABEL_78:
  if (!v26)
  {
    goto LABEL_97;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix channels to mono");
  if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v76, "mix map");
    v35 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &v76) != 0;
    if (SHIBYTE(v77) < 0)
    {
      operator delete(v76.__vftable);
    }
  }

  else
  {
    v35 = 0;
  }

  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (!v35)
    {
      goto LABEL_96;
    }

LABEL_87:
    std::string::basic_string[abi:ne200100]<0>(__p, "mix map");
    v36 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
    if (v36)
    {
      AMCP::Thing::convert_to<std::vector<unsigned int>>(&v70, (v36 + 5));
    }

    else
    {
      v70 = 0uLL;
      v71 = 0;
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v70 != *(&v70 + 1))
    {
      operator new();
    }

    if (v70)
    {
      *(&v70 + 1) = v70;
      operator delete(v70);
    }

    goto LABEL_96;
  }

  operator delete(__p[0]);
  if (v35)
  {
    goto LABEL_87;
  }

LABEL_96:
  LODWORD(__p[0]) = 3;
  std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100]((a1 + 21), __p);
LABEL_97:
  if ((v23 & v25) == 1)
  {
    v37 = a1 + 7;
    v38 = v17 / v18;
    v39 = (v65 * v66) / (v67 * v68);
    if (v39 >= v38)
    {
      v40 = a1 + 11;
    }

    else
    {
      v40 = v4;
    }

    v41 = *(v40 + 1);
    *__p = *v40;
    *&__p[2] = v41;
    v82 = v40[4];
    if (v39 >= v38)
    {
      v37 = a1 + 9;
    }

    v42 = 16;
    if (v39 < v38)
    {
      v42 = 11;
    }

    __p[0] = a1[v42];
    v43 = v37[1];
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v23)
  {
    AMCP::DAL::PCM_Operation_Context::configure_resampler(a1, a2, (a1 + 11), v4);
    LODWORD(__p[0]) = 1;
    std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100]((a1 + 21), __p);
  }

  else if (v25)
  {
    AMCP::DAL::PCM_Operation_Context::configure_audio_converter(a1, a2, (a1 + 11), v4);
    LODWORD(__p[0]) = 2;
    std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100]((a1 + 21), __p);
  }

  if (v69 && a1[21] == a1[22])
  {
    LODWORD(__p[0]) = 4;
    std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100]((a1 + 21), __p);
  }

  return a1;
}

void sub_1DE69EC70(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  v62 = v60[21];
  if (v62)
  {
    v60[22] = v62;
    operator delete(v62);
  }

  v63 = v60[10];
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v64 = v60[8];
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = v60[5];
  v60[5] = 0;
  if (v65)
  {
    std::default_delete<AMCP::DAL::DAL_Stereo_To_Mono_Mixer>::operator()[abi:ne200100](v65);
  }

  v66 = v60[4];
  v60[4] = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66, a2, a3, a4, a5, a6, a7, a8);
  }

  v67 = v60[3];
  v60[3] = 0;
  if (v67)
  {
    MEMORY[0x1E12C1730](v67, 0x1000C40D9C97D19, a3, a4, a5, a6, a7, a8);
  }

  v68 = v60[2];
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  v69 = *v60;
  *v60 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AMCP::DAL::PCM_Operation_Context::Processing_Type>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(uint64_t a1, void *a2, const AudioStreamBasicDescription *a3, const AudioStreamBasicDescription *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "map channels");
  v8 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, buf);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "convert format");
    v8 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, &__p);
    v9 = v8 != 0;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p.__vftable);
    }
  }

  if (SBYTE3(v46) < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      return;
    }
  }

  else if (!v9)
  {
    return;
  }

  if (a3->mSampleRate != a4->mSampleRate)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      v43 = 1024;
      v44 = 173;
      v45 = 2080;
      v46 = "not (source_fmt.mSampleRate == dest_fmt.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s format conersion can only apply to formats with the same sample rates", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "format conersion can only apply to formats with the same sample rates", v28);
    std::logic_error::logic_error(&v31, &v35);
    v31.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v31);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    __p.__vftable = &unk_1F5991430;
    v37 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    v47 = "void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v49 = 173;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v10 = AudioConverterNew(a3, a4, (a1 + 48));
  if (v10)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      v43 = 1024;
      v44 = 175;
      v45 = 2080;
      v46 = "not (err == noErr)";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context::configure_audio_converter: failed to create the AudioConverter", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "PCM_Operation_Context::configure_audio_converter: failed to create the AudioConverter", v29);
    std::logic_error::logic_error(&v31, &v35);
    v31.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v31);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    __p.__vftable = &unk_1F5991430;
    v37 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    v47 = "void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v49 = 175;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "channel map");
  v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, buf);
  v12 = v11;
  if (SBYTE3(v46) < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "channel map");
  v13 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, buf);
  if (v13)
  {
    AMCP::Thing::convert_to<std::vector<int>>(&v35, (v13 + 5));
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  if (SBYTE3(v46) < 0)
  {
    operator delete(*buf);
  }

  v14 = v35.__r_.__value_.__r.__words[0];
  if (v35.__r_.__value_.__r.__words[0] != v35.__r_.__value_.__l.__size_)
  {
    v15 = AudioConverterSetProperty(*(a1 + 48), 0x63686D70u, (LODWORD(v35.__r_.__value_.__r.__words[1]) - LODWORD(v35.__r_.__value_.__l.__data_)) & 0xFFFFFFFC, v35.__r_.__value_.__l.__data_);
    if (v15)
    {
      v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v24 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v15);
      }

      v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = *v26;
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      else
      {
        v27 = *v26;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "PCM_Operation_Context.cpp";
        v43 = 1024;
        v44 = 184;
        v45 = 2080;
        v46 = "not (err == noErr)";
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context::configure_audio_converter: failed to set the channel map on the converter", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v34, "PCM_Operation_Context::configure_audio_converter: failed to set the channel map on the converter", v30);
      std::logic_error::logic_error(&v32, &v34);
      v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&__p, &v32);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = -1;
      __p.__vftable = &unk_1F5991430;
      v37 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
      v47 = "void AMCP::DAL::PCM_Operation_Context::configure_audio_converter(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
      v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
      v49 = 184;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
    }
  }

  if (v14)
  {
    operator delete(v14);
  }
}

void sub_1DE69F9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::PCM_Operation_Context::configure_resampler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v7)
  {
    v7 = AMCP::Thing::convert_to<BOOL>(v7 + 40);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (SBYTE3(v41) < 0)
  {
    operator delete(*__p);
    if (!v8)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  v9 = *(a3 + 12);
  if ((v9 & 0x20) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a3 + 28);
  }

  v11 = *(a4 + 12);
  if ((v11 & 0x20) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(a4 + 28);
  }

  if (v10 != v12)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "PCM_Operation_Context.cpp";
      v38 = 1024;
      v39 = 148;
      v40 = 2080;
      v41 = "not (source_fmt.GetNumberInterleavedChannels() == dest_fmt.GetNumberInterleavedChannels())";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s resample source and dest must have the same numnber of interleaved channels", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "resample source and dest must have the same numnber of interleaved channels", v25);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v30);
    v42 = "void AMCP::DAL::PCM_Operation_Context::configure_resampler(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v44 = 148;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  if ((v9 & 0x20) != 0)
  {
    v13 = *(a3 + 28);
  }

  else
  {
    v13 = 1;
  }

  if ((v11 & 0x20) != 0)
  {
    v14 = *(a4 + 28);
  }

  else
  {
    v14 = 1;
  }

  if (v13 != v14)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "PCM_Operation_Context.cpp";
      v38 = 1024;
      v39 = 149;
      v40 = 2080;
      v41 = "not (source_fmt.GetNumberChannelStreams() == dest_fmt.GetNumberChannelStreams())";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s resample source and dest must have the same numnber of noninterleaved channels", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "resample source and dest must have the same numnber of noninterleaved channels", v26);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v30);
    v42 = "void AMCP::DAL::PCM_Operation_Context::configure_resampler(const DAL_Settings &, const CA::StreamDescription &, const CA::StreamDescription &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v44 = 149;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "resampler type");
  v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, __p);
  if (v15)
  {
    v16 = AMCP::Thing::convert_to<AMCP::Resampler_Type>((v15 + 5));
  }

  else
  {
    v16 = 2;
  }

  if (SBYTE3(v41) < 0)
  {
    operator delete(*__p);
    if (v16)
    {
      goto LABEL_27;
    }

LABEL_31:
    operator new();
  }

  if (!v16)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (v16 == 1)
  {
    operator new();
  }

  if (v16 == 2)
  {
    operator new();
  }
}

void sub_1DE6A09AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&__p);
  MEMORY[0x1E12C1730](v50, 0x10A1C40B03752CALL);
  _Unwind_Resume(a1);
}

void std::default_delete<AMCP::DAL::DAL_Stereo_To_Mono_Mixer>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void AMCP::DAL::PCM_Operation_Context::~PCM_Operation_Context(AMCP::DAL::PCM_Operation_Context *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    std::default_delete<AMCP::DAL::DAL_Stereo_To_Mono_Mixer>::operator()[abi:ne200100](v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    MEMORY[0x1E12C1730](v8, 0x1000C40D9C97D19);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

double AMCP::DAL::PCM_Operation_Context::apply(uint64_t is_format_equivalent_besides_sample_rate, uint64_t **a2, double *a3, uint64_t ***a4, uint64_t a5, double a6, double a7)
{
  v9 = a7;
  v10 = a6;
  v12 = is_format_equivalent_besides_sample_rate;
  v219 = *MEMORY[0x1E69E9840];
  v183 = a3[1] - *a3;
  v13 = a6 + v183;
  v15 = *(is_format_equivalent_besides_sample_rate + 168);
  v14 = *(is_format_equivalent_besides_sample_rate + 176);
  v16 = v15;
  if (v15 != v14)
  {
    v16 = *(is_format_equivalent_besides_sample_rate + 168);
    while (*v16 != 4)
    {
      v16 += 4;
      if (v16 == v14)
      {
        goto LABEL_13;
      }
    }
  }

  if (v16 != v14)
  {
    if (*(is_format_equivalent_besides_sample_rate + 88) != *(is_format_equivalent_besides_sample_rate + 128))
    {
      v161 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v161 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
      }

      v163 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v162 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v162)
      {
        atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
        v164 = *v163;
        std::__shared_weak_count::__release_shared[abi:ne200100](v162);
      }

      else
      {
        v164 = *v163;
      }

      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        *__B = 136315650;
        *&__B[4] = "PCM_Operation_Context.cpp";
        *&__B[12] = 1024;
        *&__B[14] = 219;
        *&__B[18] = 2080;
        *&__B[20] = "not (m_source_format.mSampleRate == m_dest_format.mSampleRate)";
        _os_log_error_impl(&dword_1DE1F9000, v164, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s direct copies should never have different sample rates", __B, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v189);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v188, "direct copies should never have different sample rates", v173);
      std::logic_error::logic_error(&v187, &v188);
      v187.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v202, &v187);
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = -1;
      v202.__vftable = &unk_1F5991430;
      v203 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v202);
      *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
      v216 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
      v217 = 219;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v201);
    }

    if (v14 - v15 != 4)
    {
      v165 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v165 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
      }

      v167 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v166 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v166)
      {
        atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
        v168 = *v167;
        std::__shared_weak_count::__release_shared[abi:ne200100](v166);
      }

      else
      {
        v168 = *v167;
      }

      if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
      {
        *__B = 136315650;
        *&__B[4] = "PCM_Operation_Context.cpp";
        *&__B[12] = 1024;
        *&__B[14] = 220;
        *&__B[18] = 2080;
        *&__B[20] = "not (m_order_of_operations.size() == 1)";
        _os_log_error_impl(&dword_1DE1F9000, v168, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Change Clock operation should be processed only independently", __B, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v189);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v188, "Change Clock operation should be processed only independently", v174);
      std::logic_error::logic_error(&v187, &v188);
      v187.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v202, &v187);
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = -1;
      v202.__vftable = &unk_1F5991430;
      v203 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v202);
      *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
      v216 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
      v217 = 220;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v201);
    }

    v17 = *a4;
    v18 = a4[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(a2, v17, a6, a7);
    v19 = v10;
    if (v18)
    {
      goto LABEL_184;
    }

    return v19;
  }

LABEL_13:
  if (v15 == v14)
  {
    v19 = a6;
    goto LABEL_180;
  }

  v20 = 0;
  v180 = a7 - a6;
  v184 = 1;
  v19 = a6;
  do
  {
    v21 = *&v15[4 * v20];
    if (v21 <= 1)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          is_format_equivalent_besides_sample_rate = *(v12 + 32);
          if (is_format_equivalent_besides_sample_rate)
          {
            v22 = ((v14 - v15) >> 2) - 1;
            v23 = *v12;
            if (*v12)
            {
              if (v20 == v22)
              {
                if (!v20 || ((v24 = *(v23 + 11)) == 0 ? memset(__B, 0, sizeof(__B)) : (*__B = *(v24 + 8), *&__B[16] = *(v24 + 24), *&__B[32] = *(v24 + 40)), is_format_equivalent_besides_sample_rate = AMCP::DAL::is_format_equivalent_besides_sample_rate(v12 + 128, __B), (is_format_equivalent_besides_sample_rate & 1) == 0))
                {
                  v157 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                  if ((v157 & 1) == 0)
                  {
                    AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
                  }

                  v159 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                  v158 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                  if (v158)
                  {
                    atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
                    v160 = *v159;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v158);
                  }

                  else
                  {
                    v160 = *v159;
                  }

                  if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                  {
                    *__B = 136315650;
                    *&__B[4] = "PCM_Operation_Context.cpp";
                    *&__B[12] = 1024;
                    *&__B[14] = 269;
                    *&__B[18] = 2080;
                    *&__B[20] = "not (intermediate_buffer_is_source)";
                    _os_log_error_impl(&dword_1DE1F9000, v160, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s multi processing operations requires an intermediate buffer", __B, 0x1Cu);
                  }

                  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v189);
                  __cxa_allocate_exception(0x40uLL);
                  caulk::make_string(&v188, "multi processing operations requires an intermediate buffer", v178);
                  std::logic_error::logic_error(&v187, &v188);
                  v187.__vftable = (MEMORY[0x1E69E55A8] + 16);
                  std::logic_error::logic_error(&v202, &v187);
                  v204 = 0;
                  v205 = 0;
                  v206 = 0;
                  v207 = -1;
                  v202.__vftable = &unk_1F5991430;
                  v203 = &unk_1F5991458;
                  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v202);
                  *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
                  v216 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
                  v217 = 269;
                  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v201);
                }

                v139 = *(v23 + 12);
                if (v139)
                {
                  atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v24);
                AMCP::DAL::PCM_Data_Handler::get_other_data<float>(__B, v24, v19, v13);
                if (v139)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v139);
                }

                v140 = *(v12 + 32);
                v141 = a4[1];
                v197 = *a4;
                v198 = v141;
                if (v141)
                {
                  atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
                }

                v19 = (*(*v140 + 16))(v140, __B, &v197, a5, v13 - v19, v10, v9);
                v13 = v142;
                v138 = v198;
                if (v198)
                {
LABEL_173:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v138);
                }

                goto LABEL_174;
              }

              v67 = *(v23 + 12);
              v195 = *(v23 + 11);
              v196 = v67;
              if (v67)
              {
                atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
              }

              v19 = (*(*is_format_equivalent_besides_sample_rate + 16))(is_format_equivalent_besides_sample_rate, a2, &v195, a5, v183, 0.0, v180);
              v13 = v68;
              is_format_equivalent_besides_sample_rate = v196;
              if (!v196)
              {
LABEL_175:
                v184 = 0;
                goto LABEL_176;
              }
            }

            else
            {
              if (v20 != v22)
              {
                v149 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v149 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
                }

                v151 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v150 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v150)
                {
                  atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
                  v152 = *v151;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v150);
                }

                else
                {
                  v152 = *v151;
                }

                if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                {
                  *__B = 136315650;
                  *&__B[4] = "PCM_Operation_Context.cpp";
                  *&__B[12] = 1024;
                  *&__B[14] = 260;
                  *&__B[18] = 2080;
                  *&__B[20] = "not (is_last_command)";
                  _os_log_error_impl(&dword_1DE1F9000, v152, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not intermediate buffer requires k_resampling to be the last command", __B, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v189);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string(&v188, "not intermediate buffer requires k_resampling to be the last command", v176);
                std::logic_error::logic_error(&v187, &v188);
                v187.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v202, &v187);
                v204 = 0;
                v205 = 0;
                v206 = 0;
                v207 = -1;
                v202.__vftable = &unk_1F5991430;
                v203 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v202);
                *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
                v216 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
                v217 = 260;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v201);
              }

              v62 = a4[1];
              v199 = *a4;
              v200 = v62;
              if (v62)
              {
                atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
              }

              v19 = (*(*is_format_equivalent_besides_sample_rate + 16))(is_format_equivalent_besides_sample_rate, a2, &v199, a5, v183, v10, v9);
              v13 = v63;
              is_format_equivalent_besides_sample_rate = v200;
              if (!v200)
              {
                goto LABEL_175;
              }
            }

            goto LABEL_77;
          }
        }

        goto LABEL_176;
      }

      if (!*(v12 + 24))
      {
        goto LABEL_176;
      }

      v42 = *a3;
      v41 = a3[1];
      caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(&v202, *(v12 + 8));
      if (v214)
      {
LABEL_110:
        v96 = *(v12 + 24);
        v97 = *(v96 + 56);
        v98 = v97 + *(v96 + 64);
        v99 = round(v97);
        v100 = round(v98);
        if (v99 < v100)
        {
          v101 = round(v212);
          v102 = round(v213);
          if (v101 < v102)
          {
            if (v99 < v101)
            {
              v97 = v212;
            }

            if (v102 < v100)
            {
              v98 = v213;
            }

            v99 = round(v97);
            v100 = round(v98);
          }

          else
          {
            v100 = v102;
            v99 = v101;
            v98 = v213;
            v97 = v212;
          }
        }

        if (v99 < v100)
        {
          if ((*(v96 + 12) & 0x20) != 0)
          {
            v110 = 1;
          }

          else
          {
            v110 = *(v96 + 28);
          }

          v111 = v212;
          v112 = *a2;
          v114 = a2[1];
          v113 = *a2;
          if (round(v212) < v99 && v113 != v114)
          {
            v116 = v110 * vcvtmd_s64_f64(v97 - v212);
            do
            {
              v117 = *v113;
              *__B = *(v96 + 48);
              is_format_equivalent_besides_sample_rate = MEMORY[0x1E12C2970](v117, 1, __B, v117, 1, v116);
              v113 += 2;
            }

            while (v113 != v114);
            v112 = *a2;
          }

          v119 = *(&v112 + 1);
          v118 = v112;
          if (v112 != *(&v112 + 1))
          {
            v120 = vcvtmd_s64_f64(v97) - vcvtmd_s64_f64(v111);
            v121 = v120 * v110;
            v122 = (v120 + vcvtmd_s64_f64(v98 - v97)) * v110;
            v123 = 4 * v110 * v120;
            v124 = v112;
            do
            {
              v125 = *(v96 + 48);
              if (v121 < v122)
              {
                v126 = (*v124 + v123);
                v127 = v121;
                do
                {
                  v128 = v126;
                  for (i = v110; i; --i)
                  {
                    *v128 = v125 * *v128;
                    ++v128;
                  }

                  v130 = *(v96 + 72);
                  v131 = v125 + v130;
                  if (v130 <= 0.0 || (v125 = *(v96 + 52), v131 < v125))
                  {
                    if (v130 >= 0.0)
                    {
                      v125 = v131;
                    }

                    else
                    {
                      v125 = v131;
                      if (v131 <= *(v96 + 52))
                      {
                        v125 = *(v96 + 52);
                      }
                    }
                  }

                  v127 += v110;
                  v126 += v110;
                }

                while (v127 < v122);
              }

              v124 += 2;
            }

            while (v124 != *(&v112 + 1));
            *(v96 + 48) = v125;
            if (v100 < round(v213))
            {
              v132 = v110 * vcvtmd_s64_f64(v213 - v98);
              v133 = v110 * vcvtmd_s64_f64(v98 - v111);
              do
              {
                v134 = *v118 + 4 * v133;
                *__B = *(v96 + 48);
                is_format_equivalent_besides_sample_rate = MEMORY[0x1E12C2970](v134, 1, __B, v134, 1, v132);
                v118 += 2;
              }

              while (v118 != v119);
            }
          }
        }

        else
        {
          v104 = *(v96 + 48);
          v103 = v96 + 48;
          v105 = v104;
          if (v104 != 1.0)
          {
            v106 = *a2;
            v107 = a2[1];
            if (v105 == 0.0)
            {
              while (v106 != v107)
              {
                v108 = *v106;
                v109 = v106[1];
                v106 += 2;
                bzero(v108, 4 * v109);
              }
            }

            else
            {
              while (v106 != v107)
              {
                is_format_equivalent_besides_sample_rate = MEMORY[0x1E12C2970](*v106, 1, v103, *v106, 1, v106[1]);
                v106 += 2;
              }
            }
          }
        }

        goto LABEL_176;
      }

      v43 = v9;
      v44 = *&v202.__vftable;
      imp = v202.__imp_.__imp_;
      v46 = v203;
      v47 = v208;
      v48 = *(v12 + 56);
      v49 = *(v12 + 64);
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      *__B = 0;
      *&__B[8] = 0;
      *&__B[16] = 0;
      *&__B[24] = v48;
      if (v47)
      {
        *&__B[8] = imp;
        *__B = 2;
        v50 = 3;
        if ((v47 & 2) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v50 = 1;
        if ((v47 & 2) == 0)
        {
LABEL_80:
          sample_time = AMCP::DAL::DAL_Time::get_sample_time(__B);
          if (*&__B[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&__B[32]);
          }

          v72 = *(v12 + 56);
          v73 = v209;
          v74 = v210;
          v75 = v211;
          v76 = *(v12 + 64);
          if (v76)
          {
            atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
          }

          *__B = 0;
          *&__B[8] = 0;
          *&__B[16] = 0;
          *&__B[24] = v72;
          if (v75)
          {
            *&__B[8] = v73;
            *__B = 2;
            v77 = 3;
            if ((v75 & 2) == 0)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v77 = 1;
            if ((v75 & 2) == 0)
            {
LABEL_89:
              v78 = AMCP::DAL::DAL_Time::get_sample_time(__B);
              if (*&__B[32])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&__B[32]);
              }

              v79 = round(sample_time);
              v80 = round(v42);
              if (v79 < v80)
              {
                v85 = round(sample_time + v78);
                if (v79 < v85)
                {
                  v86 = round(v41);
                  if (v86 >= v85)
                  {
                    v87 = sample_time + v78;
                  }

                  else
                  {
                    v87 = v41;
                  }

                  v85 = round(v87);
                  if (v80 >= v86)
                  {
                    v85 = v86;
                  }
                }

                else
                {
                  v80 = v79;
                }

                v81 = *(v12 + 24);
                if (v80 >= v85)
                {
                  v88 = fmaxf(fminf(v44, 1.0), 0.0);
                  *(v81 + 52) = v88;
                  v89 = *(v81 + 40);
                  *(v81 + 56) = v42;
                  *(v81 + 64) = v89;
                  v90 = (v88 - *(v81 + 48)) / v89;
                  v91 = ceil(v90 * 1000000.0);
                  v92 = floor(v90 * 1000000.0);
                  if (v90 <= 0.0)
                  {
                    v93 = v92;
                  }

                  else
                  {
                    v93 = v91;
                  }

                  v94 = v93 / 1000000.0;
                  *(v81 + 72) = v94;
                  goto LABEL_107;
                }

                v84 = v78 - (v42 - sample_time);
                v82 = v44;
                v83 = v42;
              }

              else
              {
                v81 = *(v12 + 24);
                v82 = v44;
                v83 = sample_time;
                v84 = v78;
              }

              AMCP::DAL::DAL_Volume_Processor::set_ramp(v81, v82, v83, v84);
LABEL_107:
              v95 = *(v12 + 8);
              caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(__B, v95);
              v9 = v43;
              if ((v218 & 1) == 0)
              {
                v218 = 1;
                caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v95, __B);
              }

              v10 = a6;
              goto LABEL_110;
            }
          }

          *&__B[16] = v74;
          *__B = v77;
          goto LABEL_89;
        }
      }

      *&__B[16] = v46;
      *__B = v50;
      goto LABEL_80;
    }

    if (v21 == 2)
    {
      if (!*(v12 + 48))
      {
        goto LABEL_176;
      }

      v51 = ((v14 - v15) >> 2) - 1;
      v52 = *v12;
      if (*v12)
      {
        if (v20 == v51)
        {
          v53 = *(v52 + 11);
          if (v53)
          {
            v191 = *(v53 + 8);
            v192 = *(v53 + 24);
            v193 = *(v53 + 40);
            if (!v20)
            {
              goto LABEL_194;
            }
          }

          else
          {
            v193 = 0;
            v191 = 0u;
            v192 = 0u;
            if (!v20)
            {
              goto LABEL_194;
            }
          }

          is_format_equivalent_besides_sample_rate = AMCP::DAL::is_format_equivalent_besides_sample_rate(v12 + 88, &v191);
          if ((is_format_equivalent_besides_sample_rate & 1) == 0)
          {
LABEL_194:
            v153 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v153 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
            }

            v155 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v154 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v154)
            {
              atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
              v156 = *v155;
              std::__shared_weak_count::__release_shared[abi:ne200100](v154);
            }

            else
            {
              v156 = *v155;
            }

            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              *__B = 136315650;
              *&__B[4] = "PCM_Operation_Context.cpp";
              *&__B[12] = 1024;
              *&__B[14] = 301;
              *&__B[18] = 2080;
              *&__B[20] = "not (intermediate_buffer_is_source)";
              _os_log_error_impl(&dword_1DE1F9000, v156, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s multi processing operations requires an intermediate buffer", __B, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v190);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v201, "multi processing operations requires an intermediate buffer", v177);
            std::logic_error::logic_error(&v189, &v201);
            v189.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v202, &v189);
            v204 = 0;
            v205 = 0;
            v206 = 0;
            v207 = -1;
            v202.__vftable = &unk_1F5991430;
            v203 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v202);
            *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
            v216 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
            v217 = 301;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v187);
          }

          v135 = *(v52 + 12);
          if (v135)
          {
            atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v53);
          AMCP::DAL::PCM_Data_Handler::get_other_data<float>(__B, v53, v19, v13);
          if (v135)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v135);
          }

          v136 = a4[1];
          v186[0] = *a4;
          v186[1] = v136;
          if (v136)
          {
            atomic_fetch_add_explicit((v136 + 8), 1uLL, memory_order_relaxed);
          }

          v19 = AMCP::DAL::PCM_Operation_Context::convert_audio_format(v12, __B, &v191, v186, v13 - v19, v10, v9);
          v13 = v137;
          if (v136)
          {
            v138 = v136;
            goto LABEL_173;
          }

LABEL_174:
          is_format_equivalent_besides_sample_rate = std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](__B);
          goto LABEL_175;
        }

        v70 = *a3;
        v69 = a3[1];
        v64 = *(v52 + 12);
        v185[0] = *(v52 + 11);
        v185[1] = v64;
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
        }

        v65 = AMCP::DAL::PCM_Operation_Context::convert_audio_format(v12, a2, (v12 + 88), v185, v183, 0.0, v69 - v70);
      }

      else
      {
        if (v20 != v51)
        {
          v145 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v145 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
          }

          v147 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v146 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v146)
          {
            atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
            v148 = *v147;
            std::__shared_weak_count::__release_shared[abi:ne200100](v146);
          }

          else
          {
            v148 = *v147;
          }

          if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
          {
            *__B = 136315650;
            *&__B[4] = "PCM_Operation_Context.cpp";
            *&__B[12] = 1024;
            *&__B[14] = 291;
            *&__B[18] = 2080;
            *&__B[20] = "not (is_last_command)";
            _os_log_error_impl(&dword_1DE1F9000, v148, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s not intermediate buffer requires k_format_conversion to be the last command", __B, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v189);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v188, "not intermediate buffer requires k_format_conversion to be the last command", v175);
          std::logic_error::logic_error(&v187, &v188);
          v187.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v202, &v187);
          v204 = 0;
          v205 = 0;
          v206 = 0;
          v207 = -1;
          v202.__vftable = &unk_1F5991430;
          v203 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v202);
          *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
          v216 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
          v217 = 291;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v201);
        }

        v64 = a4[1];
        v194[0] = *a4;
        v194[1] = v64;
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
        }

        v65 = AMCP::DAL::PCM_Operation_Context::convert_audio_format(v12, a2, (v12 + 88), v194, v183, v10, v9);
      }

      v19 = v65;
      v13 = v66;
      if (!v64)
      {
        goto LABEL_175;
      }

      is_format_equivalent_besides_sample_rate = v64;
LABEL_77:
      std::__shared_weak_count::__release_shared[abi:ne200100](is_format_equivalent_besides_sample_rate);
      goto LABEL_175;
    }

    if (v21 == 3)
    {
      v25 = *(v12 + 40);
      if (v25)
      {
        v26 = a3[1] - *a3;
        if ((*(v25 + 12) & 0x20) != 0)
        {
          v54 = *(v25 + 40);
          v55 = *(v25 + 48) - v54;
          *__B = (v55 >> 2);
          v56 = &(*a2)[2 * *v54];
          v57 = vcvtmd_s64_f64(v26);
          if (v55 >= 5)
          {
            v58 = 1;
            do
            {
              MEMORY[0x1E12C2930]((*a2)[2 * v54[v58++]], 1, *v56, 1, *v56, 1, v57);
              v54 = *(v25 + 40);
            }

            while (v58 < (*(v25 + 48) - v54) >> 2);
          }

          vDSP_vsdiv(*v56, 1, __B, *v56, 1, v57);
          v59 = *(v25 + 40);
          if ((*(v25 + 48) - v59) >= 5)
          {
            v60 = 4 * v57;
            v61 = 1;
            do
            {
              is_format_equivalent_besides_sample_rate = memcpy((*a2)[2 * *(v59 + 4 * v61++)], *v56, v60);
              v59 = *(v25 + 40);
            }

            while (v61 < (*(v25 + 48) - v59) >> 2);
          }
        }

        else
        {
          v27 = *(v25 + 28);
          v28 = v27 * vcvtmd_s64_f64(v26);
          if (v28 >= 1)
          {
            v29 = 0;
            v30 = *(v25 + 40);
            v31 = (*(v25 + 48) - v30) >> 2;
            v32 = v31;
            v33 = *v30;
            v34 = **a2;
            do
            {
              is_format_equivalent_besides_sample_rate = v29 + v33;
              if (v31 <= 1)
              {
                *(v34 + 4 * is_format_equivalent_besides_sample_rate) = *(v34 + 4 * is_format_equivalent_besides_sample_rate) / v32;
              }

              else
              {
                v35 = *(v34 + 4 * is_format_equivalent_besides_sample_rate);
                v36 = 1;
                v37 = v34 + 4 * v29;
                do
                {
                  v35 = *(v37 + 4 * v30[v36]) + v35;
                  *(v34 + 4 * is_format_equivalent_besides_sample_rate) = v35;
                  ++v36;
                }

                while (v31 != v36);
                v38 = v35 / v32;
                *(v34 + 4 * is_format_equivalent_besides_sample_rate) = v38;
                is_format_equivalent_besides_sample_rate = (v30 + 1);
                v39 = v31 - 1;
                do
                {
                  v40 = *is_format_equivalent_besides_sample_rate;
                  is_format_equivalent_besides_sample_rate += 4;
                  *(v37 + 4 * v40) = v38;
                  --v39;
                }

                while (v39);
              }

              v29 += v27;
            }

            while (v29 < v28);
          }
        }
      }
    }

LABEL_176:
    ++v20;
    v15 = *(v12 + 168);
    v14 = *(v12 + 176);
  }

  while (v20 < (v14 - v15) >> 2);
  if ((v184 & 1) == 0)
  {
    return v19;
  }

LABEL_180:
  if (*(v12 + 88) != *(v12 + 128))
  {
    v169 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v169 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_format_equivalent_besides_sample_rate);
    }

    v171 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v170 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v170)
    {
      atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      v172 = *v171;
      std::__shared_weak_count::__release_shared[abi:ne200100](v170);
    }

    else
    {
      v172 = *v171;
    }

    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      *__B = 136315650;
      *&__B[4] = "PCM_Operation_Context.cpp";
      *&__B[12] = 1024;
      *&__B[14] = 318;
      *&__B[18] = 2080;
      *&__B[20] = "not (m_source_format.mSampleRate == m_dest_format.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v172, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s direct copies should never have different sample rates", __B, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v189);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v188, "direct copies should never have different sample rates", v179);
    std::logic_error::logic_error(&v187, &v188);
    v187.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v202, &v187);
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v207 = -1;
    v202.__vftable = &unk_1F5991430;
    v203 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__B, &v202);
    *&__B[32] = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::apply(const Sample_Group<float> &, const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &) const";
    v216 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v217 = 318;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v201);
  }

  v143 = *a4;
  v18 = a4[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(a2, v143, v10, v9);
  v10 = v19;
  if (v18)
  {
LABEL_184:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    return v10;
  }

  return v19;
}

void sub_1DE6A27B4(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(uint64_t *a1, uint64_t **a2, double a3, double a4)
{
  v40 = *MEMORY[0x1E69E9840];
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(a2);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v29, a2, a3, a4);
  v9 = v29;
  v11 = *a1;
  v10 = a1[1];
  if (v30 - v29 != v10 - *a1)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "PCM_Operation_Context.cpp";
      v33 = 1024;
      v34 = 430;
      v35 = 2080;
      v36 = "not (dest_data.size() == samples.size())";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s source and dest layout must be the same!", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "source and dest layout must be the same!", v18);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v37 = "void AMCP::DAL::PCM_Operation_Context::copy_directly_to_destination(const Sample_Group<float> &, Container, Sample_Time_Range) const";
    v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v39 = 430;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  while (v11 != v10 && v9 != v30)
  {
    v12 = *(v9 + 8);
    if (v12 >= *(v11 + 8))
    {
      v12 = *(v11 + 8);
    }

    if (v12)
    {
      memcpy(*v9, *v11, 4 * v12);
      v10 = a1[1];
    }

    v11 += 16;
    v9 += 16;
  }

  return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v29);
}

double AMCP::DAL::PCM_Operation_Context::convert_audio_format(AudioConverterRef *a1, void *a2, double *a3, uint64_t *a4, double a5, double a6, double a7)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1[6])
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *v21;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 372;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_audio_converter)";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&outOutputData, "", v31);
    std::logic_error::logic_error(&v39, &outOutputData);
    v39.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v39);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    v50 = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::convert_audio_format(const Sample_Group<float> &, Sample_Time, const CA::StreamDescription &, Container, Sample_Time_Range) const";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v52 = 372;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v14 = *a4;
  if (*a4)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    v15 = 0.0;
  }

  if (*a3 != v15)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 373;
      *&buf[18] = 2080;
      *&buf[20] = "not (source_format.mSampleRate == dest_container.get_format().mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&outOutputData, "", v32);
    std::logic_error::logic_error(&v39, &outOutputData);
    v39.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v39);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    v50 = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::convert_audio_format(const Sample_Group<float> &, Sample_Time, const CA::StreamDescription &, Container, Sample_Time_Range) const";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v52 = 373;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a4);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v39, v14, a6, a7);
  AMCP::DAL::create_abl(&v47, a2, a3);
  v16 = *a4;
  if (*a4)
  {
    *buf = *(v16 + 8);
    *&buf[16] = *(v16 + 24);
    v50 = *(v16 + 40);
  }

  else
  {
    v50 = 0;
    memset(buf, 0, sizeof(buf));
  }

  AMCP::DAL::create_abl(&outOutputData, &v39, buf);
  v17 = AudioConverterConvertComplexBuffer(a1[6], vcvtmd_s64_f64(a5), v47, outOutputData.__r_.__value_.__l.__data_);
  if (v17)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Operation_Context.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 381;
      *&buf[18] = 2080;
      *&buf[20] = "not (the_error == noErr)";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s PCM_Operation_Context::convert_audio_format: AudioConverterConvertComplexBuffer failed", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "PCM_Operation_Context::convert_audio_format: AudioConverterConvertComplexBuffer failed", v33);
    std::logic_error::logic_error(&v37, &v36);
    v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v37);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    v50 = "Sample_Time_Range AMCP::DAL::PCM_Operation_Context::convert_audio_format(const Sample_Group<float> &, Sample_Time, const CA::StreamDescription &, Container, Sample_Time_Range) const";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Operation_Context.cpp";
    v52 = 381;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&outOutputData, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&outOutputData.__r_.__value_.__l.__size_);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v47, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&v48);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v39);
  return a6;
}

void sub_1DE6A3534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&a39, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&a40);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((v44 - 216), 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v44 - 208);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device::~Device(AMCP::IO_Core::Device *this)
{
  AMCP::IO_Core::Node::~Node(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::IO_Core::Device_Node_State::for_each_stream_connection(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = (result + 40 * a2 + 24);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = *(a3 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v5 + 48))(v5, v4 + 7);
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t AMCP::IO_Core::Device_Node_State::for_each_stream_connection(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v4 = result + 8;
  do
  {
    for (i = *(v4 + 40 * *(v7 + v3) + 16); i; i = *i)
    {
      v6 = *(a2 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v6 + 48))(v6, i + 7);
    }

    v3 += 4;
  }

  while (v3 != 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State14prepare_deviceEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::prepare_device(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 208))
  {
    if (!*(a2 + 272))
    {
      operator new();
    }
  }
}

void sub_1DE6A399C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State37set_cycle_meta_data_for_audio_captureERKNS_5Graph18IO_Proc_Cycle_InfoEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 208))
  {
    return;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 10);
  if (*(a2 + 264) == 1)
  {
    host_time = AMCP::DAL::DAL_Time::get_host_time(v4);
    if (host_time <= AMCP::DAL::DAL_Time::get_host_time((a2 + 224)))
    {
      return;
    }

    if (*(a2 + 264))
    {
      *(a2 + 224) = *(v3 + 20);
      *(a2 + 232) = v3[11];
      v6 = v3[13];
      *(a2 + 240) = v3[12];
      v7 = v3[14];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a2 + 256);
      *(a2 + 248) = v6;
      *(a2 + 256) = v7;
      if (v8)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      return;
    }

    v4 = (v3 + 10);
  }

  v9 = *v4;
  *(a2 + 240) = *(v4 + 2);
  *(a2 + 224) = v9;
  v10 = v3[14];
  *(a2 + 248) = v3[13];
  *(a2 + 256) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 264) = 1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::set_cycle_meta_data_for_audio_capture(AMCP::Graph::IO_Proc_Cycle_Info const&)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5988CE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State14end_processingEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::end_processing(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 280);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State16register_buffersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 192);
  v6 = *(a2 + 200);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 56))(&v7);
  if (v7)
  {
    (*(*v7 + 56))(&v9);
  }

  else
  {
    v9 = 0;
    v10[3] = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  (*(*v4 + 384))(v4, *(a2 + 48), *(a2 + 40), *(v9 + 12), *(v9 + 16));
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v9, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE6A3ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_5;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5988DE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988DE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::register_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988DE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core17Device_Node_State18unregister_buffersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::operator()(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 192);
  v6 = *(a2 + 200);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 56))(&v7);
  if (v7)
  {
    (*(*v7 + 56))(&v9);
  }

  else
  {
    v9 = 0;
    v10[3] = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  (*(*v4 + 392))(v4, *(a2 + 48), *(a2 + 40), *(v9 + 12), *(v9 + 16));
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v9, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE6A429C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (!v11)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  goto LABEL_5;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5988E60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988E60;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0,std::allocator<AMCP::IO_Core::Device_Node_State::unregister_buffers(void)::$_0>,void ()(AMCP::IO_Core::Stream_Connection &)>::~__func(void *a1)
{
  *a1 = &unk_1F5988E60;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Multi_Reader_Ring_Buffer  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN4AMCP3DAL24Multi_Reader_Ring_BufferEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Multi_Reader_Ring_Buffer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::Multi_Reader_Ring_Buffer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v8;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v6;
    }

    atomic_store(v2, this + 2);
  }

  return v3 == 0;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5988F30;
  pthread_mutex_destroy((this + 24));
}

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5988F30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "CAMutex.cpp";
      v9 = 1024;
      v10 = 56;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  return this;
}

void HALS_OverloadMessage::perform(HALS_OverloadMessage *this, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  *__p = 0u;
  v18 = 0;
  v19 = &unk_1F5991008;
  v20 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v3 = *(this + 1);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(v3);
  v6 = v4;
  if (v4)
  {
    v36.__loc_.__locale_ = 0x676C6F6261697273;
    LODWORD(v36.__ct_) = 0;
    v7 = (*(*v4 + 112))(v4, v3, &v36, 0, 0, 0);
    v8 = v7;
    __p[1] = __p[0];
    if (v7)
    {
      if (v7 >= 8)
      {
        v9 = v7 >> 3;
        v10 = v18 - __p[0];
        if (v9 > (v18 - __p[0]) >> 3)
        {
          v11 = v10 >> 2;
          if (v10 >> 2 <= v9)
          {
            v11 = v7 >> 3;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v12);
        }

        bzero(__p[0], 8 * v9);
        __p[1] = __p[0] + 8 * v9;
      }

      LODWORD(v33[0]) = 0;
      (*(*v6 + 120))(v6, v3, &v36, v8, v33, __p[0], 0, 0, 0);
    }
  }

  HALS_ObjectMap::ReleaseObject(v6, v5);
  v13 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 1));
  if (v13)
  {
    v16 = v13;
    v31 = &unk_1F5991008;
    v32 = HALS_IOContext::CopyDescription(v13);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v34, v32, @"grid-in");
    if (v35)
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v36, "[a-fA-F0-9:]{17}|[a-fA-F0-9]{12}|[a-fA-F0-9.]{5}|[a-fA-F0-9-]{4}");
    }

    OS::CF::UntypedObject::~UntypedObject(v34);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v15, v32, @"grid-out");
    if (v35)
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v36, "[a-fA-F0-9:]{17}|[a-fA-F0-9]{12}|[a-fA-F0-9.]{5}|[a-fA-F0-9-]{4}");
    }

    OS::CF::UntypedObject::~UntypedObject(v34);
    OS::CF::UntypedObject::~UntypedObject(&v31);
    v13 = v16;
  }

  HALS_ObjectMap::ReleaseObject(v13, v14);
  HALS_OverloadMessage::OverloadDictionary::AssembleDictionary(__p, this);
}

void sub_1DE6A573C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, char a58)
{
  OS::CF::UntypedObject::~UntypedObject((v58 - 240));
  OS::CF::UntypedObject::~UntypedObject((v58 - 224));
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v58 - 192));
  OS::CF::UntypedObject::~UntypedObject((v58 - 208));
  OS::CF::UntypedObject::~UntypedObject(&a41);
  HALS_ObjectMap::ReleaseObject(a11, v60);
  HALS_OverloadMessage::OverloadDictionary::~OverloadDictionary(&a17);
  _Unwind_Resume(a1);
}

void sub_1DE6A58B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6A58C4);
  }

  JUMPOUT(0x1DE6A58CCLL);
}

void sub_1DE6A7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4B0] = &STACK[0x498];
  std::vector<IOContextInfo>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  _Block_object_dispose(&STACK[0x500], 8);
  STACK[0x4B0] = a23;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4B0]);
  if (STACK[0x490])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x490]);
  }

  if (STACK[0x480])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x480]);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  OS::CF::UntypedObject::~UntypedObject(&a32);
  OS::CF::UntypedObject::~UntypedObject(&a34);
  OS::CF::UntypedObject::~UntypedObject(&a36);
  OS::CF::UntypedObject::~UntypedObject(&a38);
  OS::CF::UntypedObject::~UntypedObject(&a40);
  OS::CF::UntypedObject::~UntypedObject(&a42);
  OS::CF::UntypedObject::~UntypedObject(&a44);
  OS::CF::UntypedObject::~UntypedObject(&a46);
  OS::CF::UntypedObject::~UntypedObject(&a48);
  OS::CF::UntypedObject::~UntypedObject(&a50);
  OS::CF::UntypedObject::~UntypedObject(&a52);
  OS::CF::UntypedObject::~UntypedObject(&a54);
  OS::CF::UntypedObject::~UntypedObject(&a56);
  OS::CF::UntypedObject::~UntypedObject(&a58);
  OS::CF::UntypedObject::~UntypedObject(&a62);
  OS::CF::UntypedObject::~UntypedObject(&a64);
  OS::CF::UntypedObject::~UntypedObject(&a65);
  OS::CF::UntypedObject::~UntypedObject(&a66);
  OS::CF::UntypedObject::~UntypedObject(&a67);
  OS::CF::UntypedObject::~UntypedObject(&a68);
  OS::CF::UntypedObject::~UntypedObject(&a69);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x200]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x210]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x220]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x230]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x240]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x250]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x260]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x270]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x280]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x290]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2A0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2B0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2C0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2D0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2E0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x2F0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x300]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x310]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x320]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x330]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x340]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x350]);
  MEMORY[0x1E12C1730](a10, 0x1020C40374504DCLL);
  _Unwind_Resume(a1);
}

std::string *OverloadReasonSet::getOverloadReasonList(std::string *this, void *a2)
{
  v2 = this;
  if (*a2)
  {
    v4 = 0;
    *&this->__r_.__value_.__l.__data_ = 0uLL;
    this->__r_.__value_.__r.__words[2] = 0;
    while (((*a2 >> v4) & 1) == 0)
    {
LABEL_12:
      if (++v4 == 64)
      {
        return this;
      }
    }

    if ((SHIBYTE(v2->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!v2->__r_.__value_.__l.__size_)
      {
LABEL_9:
        v5 = "PageFaultsOnIOThread";
        if ((v4 - 1) <= 5u)
        {
          v5 = off_1E8678678[(v4 - 1)];
        }

        v6 = strlen(v5);
        this = std::string::append(v2, v5, v6);
        goto LABEL_12;
      }
    }

    else if (!*(&v2->__r_.__value_.__s + 23))
    {
      goto LABEL_9;
    }

    std::string::append(v2, ",", 1uLL);
    goto LABEL_9;
  }

  return std::string::basic_string[abi:ne200100]<0>(this, "Unknown");
}