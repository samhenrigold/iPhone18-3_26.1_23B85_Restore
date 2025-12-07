void HALS_IODSPInfo::AddStream(std::vector<char> *a1, __int128 *a2)
{
  end = a1->__end_;
  value = a1->__end_cap_.__value_;
  if (end >= value)
  {
    v12 = (end - a1->__begin_) >> 7;
    v13 = v12 + 1;
    if ((v12 + 1) >> 57)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = value - a1->__begin_;
    if (v14 >> 6 > v13)
    {
      v13 = v14 >> 6;
    }

    if (v14 >= 0x7FFFFFFFFFFFFF80)
    {
      v15 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::allocator<HALS_IODSPInfo::EngineStreamInfo>::allocate_at_least[abi:ne200100](v15);
    }

    v16 = (v12 << 7);
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[3];
    v16[2] = a2[2];
    v16[3] = v19;
    *v16 = v17;
    v16[1] = v18;
    v20 = a2[4];
    v21 = a2[5];
    v22 = a2[7];
    v16[6] = a2[6];
    v16[7] = v22;
    v16[4] = v20;
    v16[5] = v21;
    v11 = ((v12 << 7) + 128);
    v23 = a1->__end_ - a1->__begin_;
    v24 = v16 - v23;
    memcpy(v16 - v23, a1->__begin_, v23);
    begin = a1->__begin_;
    a1->__begin_ = v24;
    a1->__end_ = v11;
    a1->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(end + 2) = a2[2];
    *(end + 3) = v7;
    *end = v5;
    *(end + 1) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[7];
    *(end + 6) = a2[6];
    *(end + 7) = v10;
    *(end + 4) = v8;
    *(end + 5) = v9;
    v11 = end + 128;
  }

  a1->__end_ = v11;
  v26 = a1[7].__begin_;
  v27 = a1[7].__end_;
  v28 = v11 - a1->__begin_;
  v29 = (v28 >> 3) & 0xFFFFFFFF0 | 8;
  __x = 0;
  v30 = v27 - v26;
  if (v29 <= v30)
  {
    if (v29 < v30)
    {
      a1[7].__end_ = &v26[v29];
    }
  }

  else
  {
    std::vector<char>::__append(a1 + 7, v29 - v30, &__x);
    v26 = a1[7].__begin_;
  }

  *v26 = v28 >> 7;
}

void std::allocator<HALS_IODSPInfo::EngineStreamInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CAVolumeCurve::GetMaximumRaw(CAVolumeCurve *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v3 = *(this + 1);
  std::__advance[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CARawPoint,CADBPoint>,std::__tree_node<std::__value_type<CARawPoint,CADBPoint>,void *> *,long>>>(&v3, v1 - 1);
  return *(v3 + 8);
}

void **std::__advance[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CARawPoint,CADBPoint>,std::__tree_node<std::__value_type<CARawPoint,CADBPoint>,void *> *,long>>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
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
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

double CAVolumeCurve::GetMaximumDB(CAVolumeCurve *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0.0;
  }

  v3 = *(this + 1);
  std::__advance[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CARawPoint,CADBPoint>,std::__tree_node<std::__value_type<CARawPoint,CADBPoint>,void *> *,long>>>(&v3, v1 - 1);
  LODWORD(result) = *(v3 + 10);
  return result;
}

void CAVolumeCurve::AddRange(CAVolumeCurve *this, signed int a2, signed int a3, double a4, float a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v6 = (this + 16);
  if (v5 == (this + 16))
  {
    goto LABEL_26;
  }

  do
  {
    v7 = *(v5 + 7);
    v8 = *(v5 + 8) > a2 && v7 < a3;
    v9 = v8;
    if (v8 || v7 <= a2)
    {
      v11 = v5;
    }

    else
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }
    }

    if (v11 == v6)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      break;
    }

    v5 = v11;
  }

  while (v7 > a2);
  if ((v9 & 1) == 0)
  {
LABEL_26:
    v14 = *v6;
    if (!*v6)
    {
LABEL_32:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v14 + 28);
        if (v16 <= a2)
        {
          break;
        }

        v14 = *v15;
        if (!*v15)
        {
          goto LABEL_32;
        }
      }

      if (v16 >= a2)
      {
        break;
      }

      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_32;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "CAVolumeCurve.cpp";
    v19 = 1024;
    v20 = 214;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAVolumeCurve::AddRange: new point overlaps", buf, 0x12u);
  }
}

uint64_t CAVolumeCurve::ConvertDBToRaw(CAVolumeCurve *this, float a2)
{
  v4 = *(this + 1);
  if (*(this + 3))
  {
    v5 = v4[9];
  }

  else
  {
    v5 = 0.0;
  }

  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  if (v5 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= *&MaximumDB)
  {
    *&MaximumDB = v7;
  }

  result = *(v4 + 7);
  if (v4 != (this + 16))
  {
    do
    {
      v9 = *(v4 + 8) - *(v4 + 7);
      v10 = v4[10];
      if (*&MaximumDB > v10)
      {
        result = (v9 + result);
      }

      else
      {
        v11 = llroundf((*&MaximumDB - v4[9]) / ((v10 - v4[9]) / v9));
        v12 = __OFADD__(result, v11);
        v13 = result + v11;
        v14 = ((result | v11) >> 31) ^ 0x7FFFFFFF;
        if (v12)
        {
          result = v14;
        }

        else
        {
          result = v13;
        }
      }

      v15 = *(v4 + 1);
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
          v16 = *(v4 + 2);
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v17 = *&MaximumDB <= v10 || v16 == (this + 16);
      v4 = v16;
    }

    while (!v17);
  }

  return result;
}

uint64_t CAVolumeCurve::ConvertRawToDB(CAVolumeCurve *this, int a2)
{
  v4 = *(this + 1);
  if (*(this + 3))
  {
    v5 = *(v4 + 7);
  }

  else
  {
    v5 = 0;
  }

  result = CAVolumeCurve::GetMaximumRaw(this);
  if (v5 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= result)
  {
    v7 = result;
  }

  v8 = v7 - v5;
  v9 = *(v4 + 9);
  v10 = this + 16;
  v11 = v8 < 1 || v4 == v10;
  if (!v11)
  {
    do
    {
      v12 = *(v4 + 8) - *(v4 + 7);
      if (v8 >= v12)
      {
        v13 = *(v4 + 8) - *(v4 + 7);
      }

      else
      {
        v13 = v8;
      }

      v14 = *(v4 + 1);
      v15 = v4;
      if (v14)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = *(v15 + 2);
          v11 = *v16 == v15;
          v15 = v16;
        }

        while (!v11);
      }

      v9 = v9 + (v13 * ((*(v4 + 10) - *(v4 + 9)) / v12));
      v8 -= v13;
      if (v8 < 1)
      {
        break;
      }

      v4 = v16;
    }

    while (v16 != v10);
  }

  return result;
}

float CAVolumeCurve::ConvertRawToScalar(CAVolumeCurve *this, int a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(*(this + 1) + 28);
  }

  else
  {
    v5 = 0;
  }

  MaximumRaw = CAVolumeCurve::GetMaximumRaw(this);
  if (v5 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= MaximumRaw)
  {
    v7 = MaximumRaw;
  }

  if (v4)
  {
    v8 = *(*(this + 1) + 36);
  }

  else
  {
    v8 = 0.0;
  }

  v9 = (v7 - v5) / (MaximumRaw - v5);
  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  if (*(this + 32) != 1 || (*&MaximumDB - v8) <= 30.0)
  {
    return v9;
  }

  v11 = *(this + 10) / *(this + 11);

  return powf(v9, v11);
}

uint64_t CAVolumeCurve::ConvertScalarToRaw(CAVolumeCurve *this, float a2)
{
  v3 = 0.0;
  v4 = fmaxf(a2, 0.0);
  v5 = *(this + 3);
  MaximumRaw = CAVolumeCurve::GetMaximumRaw(this);
  if (v5)
  {
    v7 = *(this + 1);
    LODWORD(v5) = *(v7 + 28);
    v3 = *(v7 + 36);
  }

  v8 = fminf(v4, 1.0);
  MaximumDB = CAVolumeCurve::GetMaximumDB(this);
  v10 = *&MaximumDB - v3;
  if (*(this + 32) == 1 && v10 > 30.0)
  {
    v8 = powf(v8, *(this + 11) / *(this + 10));
  }

  v12 = llroundf(v8 * (MaximumRaw - v5));
  v13 = __OFADD__(v5, v12);
  v14 = v5 + v12;
  v15 = ((v5 | v12) >> 31) ^ 0x7FFFFFFF;
  if (v13)
  {
    return v15;
  }

  else
  {
    return v14;
  }
}

uint64_t std::optional<AMCP::DAL::DAL_Time_Range>::~optional(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  return a1;
}

void AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(AMCP::DAL::DAL_Time_Range *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void AMCP::DAL::Synchronizer_Source::receive_data(AMCP::DAL::Synchronizer_Source *this, const AMCP::DAL::DAL_Time_Range *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = this + 280;
  host_time = AMCP::DAL::DAL_Time::get_host_time((this + 280));
  if (!host_time)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 48;
      *&buf[18] = 2080;
      *&buf[20] = "not (is_anchored())";
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data on unanchored source", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v52);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v44, "Synchronizer::receive_data on unanchored source", v36);
    std::logic_error::logic_error(&v45, &v44);
    v45.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v46, &v45);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = -1;
    v46.__vftable = &unk_1F5991430;
    v47 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v46);
    *&buf[32] = "void AMCP::DAL::Synchronizer_Source::receive_data(const DAL_Time_Range &)";
    *&v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    DWORD2(v54) = 48;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  if (*(this + 136) == 1)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(host_time);
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
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 49;
      *&buf[18] = 2080;
      *&buf[20] = "not (not m_removal_pending)";
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data on removed source", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v52);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v44, "Synchronizer::receive_data on removed source", v37);
    std::logic_error::logic_error(&v45, &v44);
    v45.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v46, &v45);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = -1;
    v46.__vftable = &unk_1F5991430;
    v47 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v46);
    *&buf[32] = "void AMCP::DAL::Synchronizer_Source::receive_data(const DAL_Time_Range &)";
    *&v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    DWORD2(v54) = 49;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  if ((*(this + 184) & 1) == 0)
  {
    v6 = AMCP::DAL::DAL_Time::operator<((this + 56), (this + 96)) ? (this + 96) : v4;
    v7 = AMCP::DAL::DAL_Time::operator==(a2, v6);
    if (!v7)
    {
      v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v38 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
        *buf = 136315650;
        *&buf[4] = "Synchronizer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 50;
        *&buf[18] = 2080;
        *&buf[20] = "not (m_did_overload or range_is_continuous(range_to_commit))";
        _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data not contiguous", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v52);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v44, "Synchronizer::receive_data not contiguous", v42);
      std::logic_error::logic_error(&v45, &v44);
      v45.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v46, &v45);
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = -1;
      v46.__vftable = &unk_1F5991430;
      v47 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v46);
      *&buf[32] = "void AMCP::DAL::Synchronizer_Source::receive_data(const DAL_Time_Range &)";
      *&v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
      DWORD2(v54) = 50;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
    }
  }

  if (!AMCP::DAL::DAL_Time::operator<((this + 56), (this + 96)) && round(AMCP::DAL::DAL_Time::get_sample_time((this + 56))) == 0.0)
  {
    *(this + 14) = *a2;
    *(this + 8) = *(a2 + 1);
    *(this + 9) = *(a2 + 2);
    v9 = *(a2 + 3);
    v8 = *(a2 + 4);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(this + 11);
    *(this + 10) = v9;
    *(this + 11) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    *(this + 24) = *(a2 + 10);
    *(this + 13) = *(a2 + 6);
    *(this + 14) = *(a2 + 7);
    v12 = *(a2 + 8);
    v11 = *(a2 + 9);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 16);
    *(this + 15) = v12;
    *(this + 16) = v11;
    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    goto LABEL_26;
  }

  if (AMCP::DAL::DAL_Time::operator<((this + 96), (a2 + 40)))
  {
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, (this + 56), (a2 + 40));
    *(this + 56) = *buf;
    *(this + 9) = *&buf[16];
    v14 = *&buf[24];
    *&buf[24] = 0;
    *&buf[32] = 0;
    v15 = *(this + 11);
    *(this + 5) = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    *(this + 6) = v54;
    *(this + 14) = v55;
    v16 = v56;
    v56 = 0uLL;
    v17 = *(this + 16);
    *(this + 120) = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      if (*(&v56 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
      }
    }

    v13 = *&buf[32];
    if (*&buf[32])
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  if (*(this + 272) == 1)
  {
    *(this + 48) = *a2;
    *(this + 25) = *(a2 + 1);
    *(this + 26) = *(a2 + 2);
    v19 = *(a2 + 3);
    v18 = *(a2 + 4);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(this + 28);
    *(this + 27) = v19;
    *(this + 28) = v18;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    *(this + 58) = *(a2 + 10);
    *(this + 30) = *(a2 + 6);
    *(this + 31) = *(a2 + 7);
    v22 = *(a2 + 8);
    v21 = *(a2 + 9);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = *(this + 33);
    *(this + 32) = v22;
    *(this + 33) = v21;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v24 = *a2;
    *(this + 26) = *(a2 + 2);
    *(this + 12) = v24;
    *(this + 27) = *(a2 + 3);
    v25 = *(a2 + 4);
    *(this + 28) = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(a2 + 40);
    *(this + 31) = *(a2 + 7);
    *(this + 232) = v26;
    *(this + 32) = *(a2 + 8);
    v27 = *(a2 + 9);
    *(this + 33) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 272) = 1;
  }

  *(this + 184) = 0;
}

void sub_1DE2C4D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 144);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 145));
  _Unwind_Resume(a1);
}

void std::__optional_destruct_base<AMCP::DAL::DAL_Time_Range,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    *(a1 + 80) = 0;
  }
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(uint64_t a1, uint64_t a2)
{
  if (!AMCP::DAL::DAL_Time::operator<(a2, (a2 + 40)))
  {
    return !AMCP::DAL::DAL_Time::operator<(a1, (a1 + 40));
  }

  result = AMCP::DAL::DAL_Time::operator==(a2, a1);
  if (result)
  {

    return AMCP::DAL::DAL_Time::operator==((a2 + 40), (a1 + 40));
  }

  return result;
}

void std::vector<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::DAL::Source_ID const,AMCP::DAL::Synchronizer_Source>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::DAL::Source_ID const,AMCP::DAL::Synchronizer_Source>,0>(uint64_t a1)
{
  AMCP::DAL::Synchronizer_Source::~Synchronizer_Source((a1 + 48));
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void AMCP::DAL::Synchronizer_Source::~Synchronizer_Source(AMCP::DAL::Synchronizer_Source *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 272) == 1)
  {
    v3 = *(this + 33);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(this + 28);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = *(this + 22);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::DAL::Synchronizer::Synchronizer(uint64_t a1, unint64_t *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  v3 = *a2;
  *(a1 + 48) = *a2;
  v4 = a2[1];
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a2;
    v5 = a2[1];
    *&v26 = *a2;
    *(&v26 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v3 = *a2;
      v6 = a2[1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v26 = v3;
  }

  *buf = 2;
  *&v28[4] = 0;
  *&v28[12] = 0;
  v7 = *(&v26 + 1);
  *&v28[20] = v26;
  v26 = 0uLL;
  *&v8 = v3;
  *(&v8 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v7;
  LODWORD(v20.__vftable) = 2;
  v20.__imp_.__imp_ = 0;
  v21 = 0;
  v22 = v8;
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range((a1 + 64), buf, &v20);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  if (!*(a1 + 48))
  {
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

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v28 = "Synchronizer.cpp";
      *&v28[8] = 1024;
      *&v28[10] = 124;
      *&v28[14] = 2080;
      *&v28[16] = "not (m_timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0uLL;
    v23 = 0;
    v24 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    *&v28[28] = "AMCP::DAL::Synchronizer::Synchronizer(const Timebase_Ref &)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v30 = 124;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  return a1;
}

void sub_1DE2C5458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v32 = *(v30 - 152);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v26 + 56);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::~__hash_table(v27);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>(void *a1, const void **a2)
{
  v4 = *a2;
  v5 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 1));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47)) + 3864292196u)) + 3864292196u;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = v7 & (*&v6 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v7)
    {
      if (std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](i + 4, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = *a2;
  v5 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 1));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47)) + 3864292196u)) + 3864292196u;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = v7 & (*&v6 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v7 == v13)
    {
      if (std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](i + 4, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](_DWORD *a1, const void **a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  v6[3] = v2;
  v6[4] = v3;
  v6[0] = a2 + 1;
  v6[1] = a2 + 4;
  v6[2] = a2 + 5;
  v5[0] = a1 + 2;
  v5[1] = a1 + 8;
  v5[2] = a1 + 10;
  return std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v6, v5);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::DAL::Source_ID const,AMCP::DAL::Synchronizer_Source>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(const void ***a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = (*a1)[1];
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v2[1];
  }

  if (v4 == v5 && (v3 >= 0 ? (v9 = *a1) : (v9 = **a1), v6 >= 0 ? (v10 = *a2) : (v10 = *v2), !memcmp(v9, v10, v4) && *a1[1] == **(a2 + 8)))
  {
    return *a1[2] == **(a2 + 16);
  }

  else
  {
    return 0;
  }
}

void AMCP::DAL::Synchronizer::_sweep_and_remove_sources(AMCP::DAL::Synchronizer *this)
{
  v2 = this + 24;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = (this + 8);
    do
    {
      if (v3[200] == 1)
      {
        AMCP::DAL::Synchronizer_Source::get_source_id(__p, (v3 + 64));
        has_pending_range = AMCP::DAL::Synchronizer::_has_pending_range(this, __p);
        v6 = has_pending_range;
        if (SBYTE7(v36) < 0)
        {
          operator delete(__p[1]);
          if (!v6)
          {
LABEL_8:
            v8 = *(this + 16);
            v9 = *(v3 + 1);
            v10 = vcnt_s8(v8);
            v10.i16[0] = vaddlv_u8(v10);
            if (v10.u32[0] > 1uLL)
            {
              if (v9 >= *&v8)
              {
                v9 %= *&v8;
              }
            }

            else
            {
              v9 &= *&v8 - 1;
            }

            v7 = *v3;
            v11 = *(*v4 + 8 * v9);
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11 != v3);
            if (v12 == v2)
            {
              goto LABEL_55;
            }

            v13 = *(v12 + 1);
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= *&v8)
              {
                v13 %= *&v8;
              }
            }

            else
            {
              v13 &= *&v8 - 1;
            }

            v14 = *v3;
            if (v13 == v9)
            {
LABEL_27:
              if (v14)
              {
                goto LABEL_28;
              }
            }

            else
            {
LABEL_55:
              if (!v7)
              {
                goto LABEL_26;
              }

              v15 = *(v7 + 8);
              if (v10.u32[0] > 1uLL)
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

              v14 = *v3;
              if (v15 != v9)
              {
LABEL_26:
                *(*v4 + 8 * v9) = 0;
                v14 = *v3;
                goto LABEL_27;
              }

LABEL_28:
              v16 = *(v14 + 8);
              if (v10.u32[0] > 1uLL)
              {
                if (v16 >= *&v8)
                {
                  v16 %= *&v8;
                }
              }

              else
              {
                v16 &= *&v8 - 1;
              }

              if (v16 != v9)
              {
                *(*v4 + 8 * v16) = v12;
                v14 = *v3;
              }
            }

            *v12 = v14;
            *v3 = 0;
            --*(this + 4);
            __p[0] = v3;
            __p[1] = v2 - 16;
            LOBYTE(v35) = 1;
            *(&v35 + 1) = 0;
            HIDWORD(v35) = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>>>>::~unique_ptr[abi:ne200100](__p);
            goto LABEL_35;
          }
        }

        else if (!has_pending_range)
        {
          goto LABEL_8;
        }
      }

      v7 = *v3;
LABEL_35:
      v3 = v7;
    }

    while (v7);
  }

  if (!*(this + 4))
  {
    *&v17 = *(this + 6);
    v18 = *(this + 7);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *(this + 7);
      v30 = 2;
      v31 = 0;
      v32 = 0;
      v33 = v19;
      *&v17 = *(this + 6);
      *(&v17 + 1) = v20;
      v21 = v20 == 0;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v20 = 0;
      v30 = 2;
      v31 = 0;
      v32 = 0;
      v33 = v17;
      v21 = 1;
      *(&v17 + 1) = 0;
    }

    v26 = 2;
    v27 = 0;
    v28 = 0;
    v29 = v17;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(__p, &v30, &v26);
    *(this + 4) = *__p;
    *(this + 10) = v35;
    v22 = v36;
    v36 = 0uLL;
    v23 = *(this + 12);
    *(this + 88) = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    *(this + 104) = v37;
    *(this + 15) = v38;
    v24 = v39;
    v39 = 0uLL;
    v25 = *(this + 17);
    *(this + 8) = v24;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      if (*(&v39 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
      }
    }

    if (*(&v36 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
    }

    if (!v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    *(this + 168) = 1;
  }
}

void sub_1DE2C5CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((v27 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Synchronizer_Source::get_source_id(AMCP::DAL::Synchronizer_Source *this, uint64_t a2)
{
  *this = *a2;
  v4 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
  }

  *(this + 4) = *(a2 + 32);
  *(this + 10) = *(a2 + 40);
}

BOOL AMCP::DAL::Synchronizer::_has_pending_range(uint64_t a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v3)
  {
    return 0;
  }

  v11 = *(v3 + 15);
  v4 = v3[18];
  v12 = v3[17];
  v13 = v4;
  v5 = v3[19];
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(v3 + 10);
  v6 = v3[23];
  v16 = v3[22];
  v17 = v6;
  v7 = v3[24];
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (AMCP::DAL::DAL_Time::operator<((a1 + 104), &v15))
  {
    sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v11);
    v9 = round(sample_time) < round(AMCP::DAL::DAL_Time::get_sample_time(&v15));
  }

  else
  {
    v9 = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v9;
}

void AMCP::DAL::Synchronizer::_get_latest_common_pending_time(AMCP::DAL::Synchronizer *this, uint64_t a2)
{
  AMCP::DAL::Synchronizer::_get_pending_time_range(v19, a2);
  *this = v22;
  v4 = v24;
  *(this + 2) = v23;
  *(this + 3) = v4;
  v5 = v25;
  *(this + 4) = v25;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  for (i = *(a2 + 24); i; i = *i)
  {
    if (AMCP::DAL::DAL_Time::get_host_time((i + 43)))
    {
      *v19 = *(i + 43);
      v8 = i[46];
      v7 = i[47];
      *&v19[16] = i[45];
      v20 = v8;
      v21 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AMCP::DAL::DAL_Time::operator<((i + 15), (i + 20)) && (i[25] & 1) == 0)
      {
        v9 = i[19];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(i + 40);
        v11 = *(i + 21);
        v12 = i[23];
        v13 = i[24];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v19[8] = v11;
        *v19 = v10;
        v14 = v21;
        v20 = v12;
        v21 = v13;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }

      if (AMCP::DAL::DAL_Time::operator<(v19, (a2 + 104)))
      {
        v15 = v21;
      }

      else
      {
        v16 = AMCP::DAL::DAL_Time::operator<(v19, this);
        v15 = v21;
        if (v16)
        {
          *this = *v19;
          *(this + 8) = *&v19[8];
          v17 = v20;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = *(this + 4);
          *(this + 3) = v17;
          *(this + 4) = v15;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }
}

void sub_1DE2C6014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(v13 + 32);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Synchronizer::_emit(void *a1, uint64_t a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = (a3 + 5);
  if (AMCP::DAL::DAL_Time::operator<(a3, (a3 + 5)))
  {
    if (AMCP::DAL::DAL_Time::operator<((a1 + 8), (a1 + 13)))
    {
      v7 = AMCP::DAL::DAL_Time::operator==(a3, (a1 + 13));
      if (!v7)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
        }

        v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v24;
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        else
        {
          v25 = *v24;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v38 = "Synchronizer.cpp";
          v39 = 1024;
          v40 = 535;
          v41 = 2080;
          v42 = "not (is_contiguous)";
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s emitting gap range", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v28, "emitting gap range", v26);
        std::logic_error::logic_error(&v29, &v28);
        v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v30, &v29);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = -1;
        v30.__vftable = &unk_1F5991430;
        v31 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
        v43 = "void AMCP::DAL::Synchronizer::_emit(const Source_ID &, const DAL::DAL_Time_Range &)";
        v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
        v45 = 535;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
      }
    }

    AMCP::DAL::DAL_Time::get_sample_time(a3);
    AMCP::DAL::DAL_Time::get_sample_time(v6);
    AMCP::DAL::DAL_Time::operator-(buf, v6, a3);
    if ((buf[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(buf);
    }

    kdebug_trace();
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (AMCP::DAL::DAL_Time::operator<((a1 + 8), (a1 + 13)) || round(AMCP::DAL::DAL_Time::get_sample_time((a1 + 8))) != 0.0)
    {
      if (AMCP::DAL::DAL_Time::operator<(a3, (a1 + 8)))
      {
        v17 = a3;
      }

      else
      {
        v17 = a1 + 8;
      }

      if (AMCP::DAL::DAL_Time::operator<((a1 + 13), v6))
      {
        v18 = v6;
      }

      else
      {
        v18 = (a1 + 13);
      }

      caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::set((a1 + 8), v17, v18);
    }

    else
    {
      *(a1 + 16) = *a3;
      a1[9] = a3[1];
      a1[10] = a3[2];
      v9 = a3[3];
      v8 = a3[4];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = a1[12];
      a1[11] = v9;
      a1[12] = v8;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      *(a1 + 26) = *(a3 + 10);
      a1[14] = a3[6];
      a1[15] = a3[7];
      v12 = a3[8];
      v11 = a3[9];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = a1[17];
      a1[16] = v12;
      a1[17] = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    v20 = a1[18];
    v19 = a1[19];
    while (v20 != v19)
    {
      v21 = *(v20 + 24);
      if (!v21)
      {
        goto LABEL_42;
      }

      (*(*v21 + 48))(v21, a2, a3);
      v20 += 32;
    }
  }

  else
  {
    v15 = a1[18];
    v14 = a1[19];
    while (v15 != v14)
    {
      v16 = *(v15 + 24);
      if (!v16)
      {
LABEL_42:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v16 + 48))(v16, a2, a3);
      v15 += 32;
    }
  }
}

void sub_1DE2C64D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  _Unwind_Resume(exception_object);
}

void caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a1 + 40) = *a3;
  *(a1 + 48) = *(a3 + 8);
  v8 = *(a3 + 24);
  *(a1 + 56) = *(a3 + 16);
  v9 = *(a3 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 72);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void AMCP::DAL::Synchronizer::_get_pending_time_range(AMCP::DAL::Synchronizer *this, uint64_t a2)
{
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(this, (a2 + 48));
  if (!*(a2 + 32))
  {
    return;
  }

  v4 = *(a2 + 24);
  v5 = *(v4 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *(v4 + 160);
  v6 = *(v4 + 184);
  v33 = *(v4 + 176);
  v7 = *(v4 + 192);
  if (!v7)
  {
    v38 = *(v4 + 160);
    v39 = *(v4 + 176);
    v40 = v6;
    v41 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = v32;
  v39 = v33;
  v40 = v6;
  v41 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (v5)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_7:
  for (i = *(a2 + 24); i; i = *i)
  {
    v32 = *(i + 15);
    v9 = i[18];
    v33 = i[17];
    *&v34 = v9;
    v10 = i[19];
    *(&v34 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v35 = *(i + 10);
    v11 = i[23];
    v36 = i[22];
    v12 = i[24];
    *&v37 = v11;
    *(&v37 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = AMCP::DAL::DAL_Time::operator<(&v38, &v35);
    v14 = &v35;
    if (!v13)
    {
      v14 = &v38;
    }

    LODWORD(v38) = *v14;
    v15 = &v35 + 8;
    if (!v13)
    {
      v15 = &v38 + 8;
    }

    *(&v38 + 1) = *v15;
    v16 = &v36;
    if (!v13)
    {
      v16 = &v39;
    }

    v39 = *v16;
    if (v13)
    {
      v17 = &v37;
    }

    else
    {
      v17 = &v40;
    }

    v18 = *v17;
    if (v13)
    {
      v19 = &v37 + 1;
    }

    else
    {
      v19 = &v41;
    }

    v20 = *v19;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v41;
    v40 = v18;
    v41 = v20;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (*(&v37 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
    }

    if (*(&v34 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
    }
  }

  v28 = *(a2 + 104);
  v22 = *(a2 + 128);
  v29 = *(a2 + 120);
  v30 = v22;
  v23 = *(a2 + 136);
  v31 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v32, &v28, &v38);
  *this = v32;
  *(this + 2) = v33;
  v24 = v34;
  v34 = 0uLL;
  v25 = *(this + 4);
  *(this + 24) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  *(this + 40) = v35;
  *(this + 7) = v36;
  v26 = v37;
  v37 = 0uLL;
  v27 = *(this + 9);
  *(this + 4) = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (*(&v37 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
    }
  }

  if (*(&v34 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }
}

void sub_1DE2C68DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(v29);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronizer::receive_data(uint64_t a1, const void **a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1);
  v6 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (!AMCP::DAL::DAL_Time::get_host_time((v6 + 43)))
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
      v31 = *a2;
      if (*(a2 + 31) >= 0)
      {
        v32 = (a2 + 1);
      }

      else
      {
        v32 = a2[1];
      }

      *buf = 136316162;
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 189;
      *&buf[18] = 2080;
      *&buf[20] = "not (_is_anchored(source_id))";
      *&buf[28] = 1024;
      *&buf[30] = v31;
      *&buf[34] = 2080;
      *&buf[36] = v32;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data on unanchored source: %u  '%s'", buf, 0x2Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v54);
    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 31) >= 0)
    {
      v34 = (a2 + 1);
    }

    else
    {
      v34 = a2[1];
    }

    caulk::make_string(&v53, "Synchronizer::receive_data on unanchored source: %u  '%s'", v33, *a2, v34);
    std::logic_error::logic_error(&v52, &v53);
    v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v59, &v52);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = -1;
    v59.__vftable = &unk_1F5991430;
    v60 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
    *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v66 = 189;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v58);
  }

  v7 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *buf = *(v7 + 43);
  v8 = v7[46];
  *&buf[16] = v7[45];
  *&buf[24] = v8;
  v9 = v7[47];
  *&buf[32] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = AMCP::DAL::DAL_Time::operator<((a3 + 40), buf);
  v11 = *&buf[32];
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v10)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 190;
      *&buf[18] = 2080;
      *&buf[20] = "not (received_range.end() >= _get_anchor_time(source_id))";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data older than anchor", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v54);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v53, "Synchronizer::receive_data older than anchor", v35);
    std::logic_error::logic_error(&v52, &v53);
    v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v59, &v52);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = -1;
    v59.__vftable = &unk_1F5991430;
    v60 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
    *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v66 = 190;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v58);
  }

  AMCP::DAL::Synchronizer::_check_sources_for_overloads(a1);
  if (!std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2))
  {
    goto LABEL_90;
  }

  v12 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = v12;
  if (*(v12 + 336) == 1)
  {
    v14 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==((v12 + 32), a3);
    if (!v14 && (v13[42] & 1) != 0)
    {
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v14);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v18 = *v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Synchronizer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 110;
        *&buf[18] = 2080;
        *&buf[20] = "not (m_current_range == range_to_commit or not m_current_range)";
        _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer_Source has seen two different ranges in the same cycle", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v54);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v53, "Synchronizer_Source has seen two different ranges in the same cycle", v50);
      std::logic_error::logic_error(&v52, &v53);
      v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v59, &v52);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = -1;
      v59.__vftable = &unk_1F5991430;
      v60 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
      *&buf[32] = "BOOL AMCP::DAL::Synchronizer_Source::is_unique_range(const DAL_Time_Range &) const";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
      v66 = 110;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v58);
    }
  }

  else
  {
LABEL_90:
    if (AMCP::DAL::DAL_Time::operator<((a1 + 64), (a1 + 104)))
    {
      v19 = AMCP::DAL::DAL_Time::operator<((a1 + 104), (a3 + 40));
      if (!v19)
      {
        v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v36 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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
          *&buf[4] = "Synchronizer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 204;
          *&buf[18] = 2080;
          *&buf[20] = "not (received_range.end() > m_emitted_time_range.end())";
          _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data end of range already emitted", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v54);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v53, "Synchronizer::receive_data end of range already emitted", v44);
        std::logic_error::logic_error(&v52, &v53);
        v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v59, &v52);
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = -1;
        v59.__vftable = &unk_1F5991430;
        v60 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
        *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
        v66 = 204;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v58);
      }

      v20 = AMCP::DAL::DAL_Time::operator<(a3, (a1 + 104));
      if (v20)
      {
        v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v40 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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
          *buf = 136315650;
          *&buf[4] = "Synchronizer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 205;
          *&buf[18] = 2080;
          *&buf[20] = "not (received_range.start() >= m_emitted_time_range.end())";
          _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronizer::receive_data start of range already emitted", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v54);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v53, "Synchronizer::receive_data start of range already emitted", v45);
        std::logic_error::logic_error(&v52, &v53);
        v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v59, &v52);
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = -1;
        v59.__vftable = &unk_1F5991430;
        v60 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
        *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
        v66 = 205;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v58);
      }
    }

    if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2))
    {
      v21 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((a1 + 8), a2);
      if (!v21)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      if ((v21[25] & 1) == 0 && (v21[31] & 1) == 0)
      {
        AMCP::DAL::Synchronizer_Source::receive_data((v21 + 8), a3);
        AMCP::DAL::Synchronizer::_get_latest_common_pending_time(&v56, a1);
        v22 = AMCP::DAL::DAL_Time::operator<(&v56, (a1 + 104));
        if (v22)
        {
          v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v46 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
          }

          v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            v49 = *v48;
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          else
          {
            v49 = *v48;
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Synchronizer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 216;
            *&buf[18] = 2080;
            *&buf[20] = "not (m_emitted_time_range.end() <= emit_end_time)";
            _os_log_error_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid time in Synchronizer", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v58, "Invalid time in Synchronizer", v51);
          std::logic_error::logic_error(&v54, &v58);
          v54.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v59, &v54);
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = -1;
          v59.__vftable = &unk_1F5991430;
          v60 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
          *&buf[32] = "void AMCP::DAL::Synchronizer::receive_data(const Source_ID &, const DAL_Time_Range &)";
          *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
          v66 = 216;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
        }

        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, (a1 + 104), &v56);
        AMCP::DAL::Synchronizer::_emit(a1, a2, buf);
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }
      }
    }

    AMCP::DAL::Synchronizer::_sweep_and_remove_sources(a1);
  }

  os_unfair_lock_unlock(a1);
}

void sub_1DE2C7814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v37 - 144));
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  os_unfair_lock_unlock(v36);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronizer::_check_sources_for_overloads(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (!v2)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315650;
      *&buf[4] = "Synchronizer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 494;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v26, "", v21);
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
    v36 = "void AMCP::DAL::Synchronizer::_check_sources_for_overloads(const DAL_Time &)";
    *&v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    DWORD2(v37) = 494;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  if ((*(*v2 + 120))(v2))
  {
    (*(**(a1 + 48) + 32))(buf);
    v3 = *buf;
    v4 = (*(**(a1 + 48) + 144))(*(a1 + 48), 0);
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = v3 + v4;
      v7 = round(v6);
      do
      {
        if (AMCP::DAL::DAL_Time::get_host_time((v5 + 43)))
        {
          *buf = *(v5 + 15);
          v8 = v5[18];
          *&buf[16] = v5[17];
          *&buf[24] = v8;
          v9 = v5[19];
          v36 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = *(v5 + 10);
          v10 = v5[23];
          v38 = v5[22];
          v11 = v5[24];
          v39 = v10;
          v40 = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v37);
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (round(sample_time) < v7 && (v5[25] & 1) == 0)
          {
            v13 = v5[19];
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *buf = *(v5 + 10);
            v14 = v5[23];
            *&buf[16] = v5[22];
            v15 = v5[24];
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              v28 = *buf;
              v29 = *&buf[16];
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            else
            {
              v28 = *(v5 + 10);
              v29 = v5[22];
            }

            v30 = v14;
            v31 = v15;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *&v16 = v14;
            *(&v16 + 1) = v15;
            LODWORD(v22) = 2;
            v23 = *&v6;
            v24 = v16;
            AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v28, &v22);
            AMCP::DAL::Synchronizer_Source::receive_data((v5 + 8), buf);
            if (v40)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v40);
            }

            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            if (*(&v24 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
            }

            *(v5 + 248) = 1;
            std::__optional_destruct_base<AMCP::DAL::DAL_Time_Range,false>::reset[abi:ne200100]((v5 + 32));
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }
          }
        }

        v5 = *v5;
      }

      while (v5);
    }
  }
}

void sub_1DE2C7E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a37);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__split_buffer<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void non-virtual thunk toHALS_PlugInDevice::~HALS_PlugInDevice(HALS_PlugInDevice *this, unsigned int a2)
{
  HALS_PlugInDevice::~HALS_PlugInDevice((this - 1456), a2);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInDevice::~HALS_PlugInDevice((this - 1456), a2);
}

void HALS_PlugInDevice::~HALS_PlugInDevice(HALS_PlugInDevice *this, unsigned int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5964468;
  v3 = (this + 1456);
  *(this + 182) = &unk_1F5964870;
  v4 = *(this + 394);
  if (v4)
  {
    v5 = HALS_ObjectMap::CopyObjectByObjectID(v4);
    v6 = v5;
    if (v5)
    {
      if (v5 != *(this + 196))
      {
        v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v7 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v5);
        }

        v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v9;
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        else
        {
          v10 = *v9;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v21 = *(this + 394);
          v22 = *(this + 196);
          *buf = 136316162;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 94;
          v27 = 1024;
          v28 = v21;
          v29 = 2048;
          v30 = v6;
          v31 = 2048;
          v32 = v22;
          _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d IO Engine ID %u object from map %p is not the same as cached object %p", buf, 0x2Cu);
        }
      }

      (*(*v6 + 8))(v6);
      HALS_ObjectMap::ObjectIsDead(*(this + 196), v15);
    }

    else
    {
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
        v23 = *(this + 394);
        v24 = *(this + 196);
        *buf = 136315906;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 102;
        v27 = 1024;
        v28 = v23;
        v29 = 2048;
        v30 = v24;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d IO Engine ID %u is not valid, ptr %p", buf, 0x22u);
      }
    }

    HALS_ObjectMap::ReleaseObject(v6, v16);
  }

  *(this + 196) = 0;
  *(this + 394) = 0;
  v25[0] = 0;
  v25[1] = 0;
  HALS_System::GetInstance(buf, 0, v25);
  if (*buf)
  {
    HALS_IOContext_Manager::destroy_engine_for_device(*(*buf + 1744), this);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1584));
  v18 = *(this + 193);
  if (v18)
  {
    *(this + 194) = v18;
    operator delete(v18);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v20 = *(this + i + 1520);
    if (v20)
    {
      *(this + i + 1528) = v20;
      operator delete(v20);
    }
  }

  HALS_PlugInObject::~HALS_PlugInObject(v3, v17);
  HALS_Device::~HALS_Device(this);
}

{
  HALS_PlugInDevice::~HALS_PlugInDevice(this, a2);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE2C83B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInDevice::ExecuteWorkSyncOnConfigChangeQueue(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN17HALS_PlugInDevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_27_998;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = atomic_load((a1 + 1616));
  if (v3)
  {
    atomic_store(1u, (a1 + 1617));
  }

  dispatch_sync(*(a1 + 1584), block);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
}

uint64_t ___ZN17HALS_PlugInDevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE2C84F8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_PlugInDevice::ConfigChange_HostedDSP(HALS_PlugInDevice *this, BOOL a2, uint64_t a3)
{
  v3 = 0x115CuLL;
  v4 = 0;
  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(this, &v3, a3);
}

void HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(uint64_t a1, __int128 *a2, int a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 1476);
  v5 = *(*(a1 + 1464) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN17HALS_PlugInDevice32HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEbj_block_invoke;
  block[3] = &__block_descriptor_tmp_25_1002;
  v9 = v5;
  v10 = v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  v11 = a3;
  v12 = v4;
  AMCP::Utility::Dispatch_Queue::async(a1 + 1584, block);
}

void ___ZN17HALS_PlugInDevice32HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEbj_block_invoke(uint64_t a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 56));
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 60));
  if (v4)
  {
    v5 = *(a1 + 64);
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2386;
      v35 = 2080;
      v36 = v4 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange: %s  --->", buf, 0x1Cu);
    }

    v30 = 0u;
    v31 = 0u;
    v7 = *(v4 + 4);
    strcpy(v32, "bgfcbolg");
    v32[9] = 0;
    *&v32[10] = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v7, v5, 1, v32, v6);
    memset(v29, 0, sizeof(v29));
    v28[0] = 0;
    v28[1] = 0;
    HALS_System::GetInstance(buf, 0, v28);
    v8 = *buf;
    v9 = (*(*v4 + 208))(v4);
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
      cf = v10;
      v11 = CFGetTypeID(v10);
      if (v11 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = 0;
    }

    HALS_System::GetRawDeviceListUsingClockDevice(v8, v29, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v18 = *(v4 + 196);
    memset(__p, 0, sizeof(__p));
    if (v18)
    {
      (*(*v18 + 224))(v18, __p);
    }

    v25[0] = 0;
    v25[1] = 0;
    HALS_System::GetInstance(buf, 0, v25);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*buf + 1744), v4);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v24[0] = 0;
    v24[1] = 0;
    HALS_System::GetInstance(buf, 0, v24);
    v20 = HALS_System::CopyClientByObjectID(*buf, v5);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    HALS_ObjectMap::RetainObject(v20, v19);
    HALS_ObjectMap::RetainObject(v20, v21);
    v33 = 0;
    operator new();
  }

  v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v13)
    {
      v15 = *(a1 + 60);
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2364;
      v35 = 1024;
      LODWORD(v36) = v15;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange: Device %u is no longer valid, calling abort config change", buf, 0x18u);
    }

    if (*(a1 + 48) == 1)
    {
      v16 = *(v3 + 52);
      v17 = *(v3 + 53);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 96))(v16, *(a1 + 68), *(a1 + 32), *(a1 + 40));
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }
  }

  else if (v13)
  {
    v22 = *(a1 + 60);
    *buf = 136315650;
    *&buf[4] = "HALS_PlugInDevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2374;
    v35 = 1024;
    LODWORD(v36) = v22;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange: Failed to perform or abort config change request for device %u", buf, 0x18u);
  }

  HALS_ObjectMap::ReleaseObject(0, v14);
  HALS_ObjectMap::ReleaseObject(v3, v23);
}

void sub_1DE2C94D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a2)
  {
    _Block_object_dispose(&a19, 8);
    HALS_DeviceState::~HALS_DeviceState((v52 - 192));
    HALS_ObjectMap::ReleaseObject(v51, v54);
    HALS_ObjectMap::ReleaseObject(v51, v55);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE2C8FBCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE2C9730(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40)
{
  if (a2)
  {
    if (a27)
    {
      operator delete(a27);
    }

    if (a33)
    {
      operator delete(a33);
    }

    *(v40 - 192) = &a36;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100]((v40 - 192));
    if (a39)
    {
      a40 = a39;
      operator delete(a39);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE2C9384);
  }

  JUMPOUT(0x1DE2C96B0);
}

void sub_1DE2C9788(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE2C9790);
  }

  JUMPOUT(0x1DE2C96B0);
}

uint64_t std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ___ZN17HALS_PlugInDevice33_HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEj_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 40))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void HALS_PlugInDevice::UpdateStreams(HALS_PlugInDevice *this, BOOL *a2)
{
  *a2 = 0;
  v3 = *(this + 183);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 369);
  v8 = 0x6F75747073746D23;
  LODWORD(v9) = 0;
  v7 = (*(*v4 + 560))(v4, v6, 0, &v8, 0, 0) >> 2;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v10 = v7;
  operator new[]();
}

void sub_1DE2C9E6C(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2C9B18);
}

void sub_1DE2C9E8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  MEMORY[0x1E12C1700](v46, v44, a3, a4, a5, a6, a7, a8);
  MEMORY[0x1E12C1700](v45, v44);
  _Unwind_Resume(a1);
}

void HALS_PlugInDevice::UpdateControls(HALS_PlugInDevice *this, BOOL *a2)
{
  *a2 = 0;
  v3 = *(this + 183);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 369);
  v8 = 0x676C6F626374726CLL;
  LODWORD(v9) = 0;
  v7 = (*(*v4 + 560))(v4, v6, 0, &v8, 0, 0) >> 2;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v10 = v7;
  operator new[]();
}

void sub_1DE2CA304(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CA0F4);
}

__n128 __Block_byref_object_copy__9(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN17HALS_PlugInDevice14UpdateControlsERb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v40 = *(*(a1 + 32) + 8);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v2 + 1544);
  v6 = *(v2 + 1552);
  if (v5 == v6)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v5;
      *(v9 + 13) = 0;
      if (*(v9 + 60) == 1)
      {
        v7 = v9;
      }

      else
      {
        v8 |= *(v9 + 20) == 1702259059;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      v11 = *(v2 + 1544);
      v12 = *(v3 + 4 * i);
      v13 = *(v2 + 1552) - v11;
      if (v13)
      {
        v14 = v13 >> 3;
        while (*(*v11 + 92) != v12)
        {
          v11 += 8;
          if (!--v14)
          {
            goto LABEL_15;
          }
        }

        *(*v11 + 13) = 1;
      }

      else
      {
LABEL_15:
        if (v12)
        {
          v15 = *(v2 + 1464);
          v16 = *(v15 + 416);
          v17 = *(v15 + 424);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HALS_UCPlugInBase::Object_GetClass(v16, v12);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v18 = *(v2 + 1464);
          v19 = *(v18 + 416);
          v20 = *(v18 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HALS_UCPlugInBase::Object_GetBaseClass(v19, v12);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          operator new();
        }
      }
    }
  }

  if ((v8 & 1) == 0 && *(v2 + 1504) != *(v2 + 1496))
  {
    if ((*(v2 + 464) & 0x1FFFFFFFFLL) != 0x100000001 || !v7)
    {
      operator new();
    }

    *(v7 + 13) = 1;
  }

  v21 = (v2 + 1544);
  v22 = *(v2 + 1552);
  v23 = *(v2 + 1544);
  if (v22 == v23)
  {
    v26 = a1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = a1;
    do
    {
      v27 = *&v23[8 * v24];
      if (*(v27 + 13))
      {
        ++v25;
      }

      else
      {
        *(v4 + 24) = 1;
        (*(*v27 + 8))(v27);
        HALS_ObjectMap::ObjectIsDead(v27, v28);
        v23 = *(v2 + 1544);
        v29 = &v23[8 * v24];
        v30 = *(v2 + 1552);
        v31 = v30 - (v29 + 8);
        if (v30 != v29 + 8)
        {
          memmove(v29, v29 + 8, v30 - (v29 + 8));
          v23 = *v21;
        }

        v22 = &v29[v31];
        *(v2 + 1552) = &v29[v31];
      }

      v24 = v25;
    }

    while (v25 < ((v22 - v23) >> 3));
  }

  v33 = *(v40 + 40);
  v32 = *(v40 + 48);
  if (v32 != v33)
  {
    do
    {
      v34 = *v33++;
      v41 = v34;
      *(v4 + 24) = 1;
      std::vector<HALS_Device *>::push_back[abi:ne200100](v2 + 1544, &v41);
    }

    while (v33 != v32);
    v23 = *(v2 + 1544);
    v22 = *(v2 + 1552);
  }

  if (v23 != v22)
  {
    v35 = v23;
    while (*(*v35 + 20) != 1702259059)
    {
      v35 += 8;
      if (v35 == v22)
      {
        goto LABEL_52;
      }
    }

    *(v2 + 464) = *(*v35 + 60);
    *(v2 + 468) = 1;
  }

LABEL_52:
  v36 = *(*(v26 + 48) + 8);
  if (v21 != (v36 + 40))
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v36 + 40), v23, v22, (v22 - v23) >> 3);
  }

  v37 = *(v36 + 40);
  v38 = *(v36 + 48);
  while (v37 != v38)
  {
    v39 = *v37++;
    HALS_ObjectMap::RetainObject(v39, v23);
  }
}

__n128 __Block_byref_object_copy__1020(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__1021(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN17HALS_PlugInDevice13UpdateStreamsEPb_block_invoke(void *a1)
{
  v1 = 0;
  v2 = a1[9];
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v5 = *(v3 + 40);
  *(*(a1[4] + 8) + 48) = *(*(a1[4] + 8) + 40);
  *(v3 + 48) = v5;
  v14 = v2;
  v6 = v2 + 1496;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = *(v6 + 24 * v1);
    v10 = *(v6 + 24 * v1 + 8) - v9;
    if ((v10 & 0x7FFFFFFF8) != 0)
    {
      v11 = v10 >> 3;
      v12 = (v10 >> 3);
      do
      {
        if (!v11)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v13 = *v9++;
        *(v13 + 13) = 0;
        --v11;
        --v12;
      }

      while (v12);
    }

    v7 = 0;
    *(v4 + 40 + v1) = 0;
    v1 = 1;
    if ((v8 & 1) == 0)
    {
      HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(*(v14 + 448));
      operator new();
    }
  }
}

void HALS_PlugInDevice::_CopyStreamList(uint64_t result, char *a2, void **a3)
{
  v4 = (result + 24 * a2 + 1496);
  if (v4 == a3)
  {
    v13 = a3[1];
  }

  else
  {
    v5 = *v4;
    v6 = *(result + 24 * a2 + 1504);
    v7 = v6 - *v4;
    v8 = a3[2];
    v9 = *a3;
    if (v8 - *a3 < v7)
    {
      v10 = v7 >> 3;
      if (v9)
      {
        a3[1] = v9;
        operator delete(v9);
        v8 = 0;
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      if (!(v10 >> 61))
      {
        v11 = v8 >> 2;
        if (v8 >> 2 <= v10)
        {
          v11 = v7 >> 3;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
        }
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = a3[1];
    v15 = v14 - v9;
    if (v14 - v9 >= v7)
    {
      if (v6 != v5)
      {
        memmove(v9, v5, v7);
      }

      v13 = &v9[v7];
    }

    else
    {
      if (v14 != v9)
      {
        memmove(*a3, v5, v14 - v9);
        v14 = a3[1];
      }

      a2 = &v5[v15];
      v16 = v6 - &v5[v15];
      if (v16)
      {
        memmove(v14, a2, v16);
      }

      v13 = &v14[v16];
    }

    a3[1] = v13;
  }

  for (i = *a3; i != v13; ++i)
  {
    v18 = *i;
    HALS_ObjectMap::RetainObject(v18, a2);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,false>(uint64_t result, const HALS_Stream **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  v123 = a2;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = StreamLessThan(*v8, *v9);
      if (result)
      {
        v77 = *v9;
        *v9 = *v8;
        goto LABEL_103;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = v9 + 1;
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = *v84;
            v85 = v84[1];
            v84 = v80;
            result = StreamLessThan(v85, v86);
            if (result)
            {
              v87 = *v84;
              v88 = v83;
              while (1)
              {
                *(v9 + v88 + 8) = *(v9 + v88);
                if (!v88)
                {
                  break;
                }

                result = StreamLessThan(v87, *(v9 + v88 - 8));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  v89 = (v9 + v88 + 8);
                  goto LABEL_125;
                }
              }

              v89 = v9;
LABEL_125:
              *v89 = v87;
            }

            v80 = v84 + 1;
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v118 = *v7;
          v117 = v7[1];
          v7 = v80;
          result = StreamLessThan(v117, v118);
          if (result)
          {
            v119 = *v7;
            v120 = v7;
            do
            {
              v121 = v120;
              v122 = *--v120;
              *v121 = v122;
              result = StreamLessThan(v119, *(v121 - 2));
            }

            while ((result & 1) != 0);
            *v120 = v119;
          }

          v80 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v90 = v11 >> 1;
      v91 = v11 >> 1;
      do
      {
        v92 = v91;
        if (v90 >= v91)
        {
          v93 = (2 * v91) | 1;
          v94 = &v7[v93];
          if (2 * v91 + 2 < v10 && StreamLessThan(*v94, v94[1]))
          {
            ++v94;
            v93 = 2 * v92 + 2;
          }

          v95 = &v7[v92];
          result = StreamLessThan(*v94, *v95);
          if ((result & 1) == 0)
          {
            v96 = *v95;
            do
            {
              v97 = v95;
              v95 = v94;
              *v97 = *v94;
              if (v90 < v93)
              {
                break;
              }

              v98 = (2 * v93) | 1;
              v94 = &v7[v98];
              v99 = 2 * v93 + 2;
              if (v99 < v10)
              {
                v100 = StreamLessThan(*v94, v94[1]);
                if (v100)
                {
                  ++v94;
                }

                a2 = v123;
                if (v100)
                {
                  v98 = v99;
                }
              }

              result = StreamLessThan(*v94, v96);
              v93 = v98;
            }

            while (!result);
            *v95 = v96;
          }
        }

        v91 = v92 - 1;
      }

      while (v92);
      while (2)
      {
        v101 = 0;
        v102 = *v7;
        v103 = v7;
        do
        {
          v104 = &v103[v101];
          v105 = v104 + 1;
          v106 = (2 * v101) | 1;
          v107 = 2 * v101 + 2;
          if (v107 >= v10)
          {
            v101 = (2 * v101) | 1;
          }

          else
          {
            v109 = v104[2];
            v108 = v104 + 2;
            result = StreamLessThan(*(v108 - 1), v109);
            if (result)
            {
              v105 = v108;
              v101 = v107;
            }

            else
            {
              v101 = v106;
            }
          }

          *v103 = *v105;
          v103 = v105;
        }

        while (v101 <= ((v10 - 2) >> 1));
        if (v105 == --a2)
        {
LABEL_158:
          *v105 = v102;
        }

        else
        {
          *v105 = *a2;
          *a2 = v102;
          v110 = (v105 - v7 + 8) >> 3;
          v111 = v110 < 2;
          v112 = v110 - 2;
          if (!v111)
          {
            v113 = v112 >> 1;
            v114 = &v7[v112 >> 1];
            result = StreamLessThan(*v114, *v105);
            if (result)
            {
              v102 = *v105;
              do
              {
                v115 = v105;
                v105 = v114;
                *v115 = *v114;
                if (!v113)
                {
                  break;
                }

                v113 = (v113 - 1) >> 1;
                v114 = &v7[v113];
                result = StreamLessThan(*v114, v102);
              }

              while ((result & 1) != 0);
              goto LABEL_158;
            }
          }
        }

        v111 = v10-- <= 2;
        if (v111)
        {
          return result;
        }

        continue;
      }
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = StreamLessThan(*v7, v7[v12]);
      v17 = StreamLessThan(*v8, *v7);
      if (v16)
      {
        v18 = v7[v12];
        if (v17)
        {
          v7[v12] = *v8;
          *v8 = v18;
        }

        else
        {
          v7[v12] = *v7;
          *v7 = v18;
          if (StreamLessThan(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (StreamLessThan(*v7, v7[v12]))
        {
          v22 = v7[v12];
          v7[v12] = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = StreamLessThan(v7[v12], *v7);
    v14 = StreamLessThan(*v8, v7[v12]);
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = v7[v12];
        v7[v12] = v15;
        if (StreamLessThan(*v8, v15))
        {
          v23 = v7[v12];
          v7[v12] = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = v7[v12];
      v7[v12] = *v8;
      *v8 = v19;
      if (StreamLessThan(v7[v12], *v7))
      {
        v20 = *v7;
        *v7 = v7[v12];
        v7[v12] = v20;
      }
    }

    v24 = v12 - 1;
    v25 = StreamLessThan(v7[v12 - 1], v7[1]);
    v26 = StreamLessThan(*(a2 - 2), v7[v12 - 1]);
    if (v25)
    {
      v27 = v7[1];
      if (v26)
      {
        v7[1] = *(a2 - 2);
        *(a2 - 2) = v27;
      }

      else
      {
        v7[1] = v7[v24];
        v7[v24] = v27;
        if (StreamLessThan(*(a2 - 2), v27))
        {
          v31 = v7[v24];
          v7[v24] = *(a2 - 2);
          *(a2 - 2) = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = v7[v24];
      v7[v24] = *(a2 - 2);
      *(a2 - 2) = v28;
      if (StreamLessThan(v7[v24], v7[1]))
      {
        v29 = v7[1];
        v7[1] = v7[v24];
        v7[v24] = v29;
      }
    }

    v32 = v12 + 1;
    v33 = StreamLessThan(v7[v12 + 1], v7[2]);
    v34 = StreamLessThan(*(a2 - 3), v7[v12 + 1]);
    if (v33)
    {
      v35 = v7[2];
      if (v34)
      {
        v7[2] = *(a2 - 3);
        *(a2 - 3) = v35;
      }

      else
      {
        v7[2] = v7[v32];
        v7[v32] = v35;
        if (StreamLessThan(*(a2 - 3), v35))
        {
          v38 = v7[v32];
          v7[v32] = *(a2 - 3);
          *(a2 - 3) = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = v7[v32];
      v7[v32] = *(a2 - 3);
      *(a2 - 3) = v36;
      if (StreamLessThan(v7[v32], v7[2]))
      {
        v37 = v7[2];
        v7[2] = v7[v32];
        v7[v32] = v37;
      }
    }

    v39 = StreamLessThan(v7[v12], v7[v24]);
    v40 = StreamLessThan(v7[v32], v7[v12]);
    if (!v39)
    {
      v42 = v7[v12];
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = v7[v32];
      v7[v12] = v43;
      v7[v32] = v42;
      v44 = StreamLessThan(v43, v7[v24]);
      v42 = v7[v12];
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = v7[v24];
      v7[v24] = v42;
      v7[v12] = v45;
      goto LABEL_53;
    }

    v41 = v7[v24];
    if (v40)
    {
      v7[v24] = v7[v32];
      v7[v32] = v41;
      v42 = v7[v12];
    }

    else
    {
      v7[v24] = v7[v12];
      v7[v12] = v41;
      v46 = StreamLessThan(v7[v32], v41);
      v42 = v7[v12];
      if (v46)
      {
        v45 = v7[v32];
        v7[v12] = v45;
        v7[v32] = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    v7[v12] = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = StreamLessThan(*(v7 - 1), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50[1];
        ++v50;
      }

      while (StreamLessThan(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = *--v53;
        }

        while (!StreamLessThan(v55, v48));
      }

      else
      {
        do
        {
          v54 = *--v53;
        }

        while (!StreamLessThan(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = *v56;
          *v56 = *v57;
          *v57 = v58;
          do
          {
            v51 = v56;
            v59 = v56[1];
            ++v56;
          }

          while (StreamLessThan(v59, v48));
          do
          {
            v60 = *--v57;
          }

          while (!StreamLessThan(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = *v51;
      }

      *v51 = v48;
      a2 = v123;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **>(v7, v51);
      v9 = v51 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **>(v51 + 1, v123);
      if (result)
      {
        a2 = v51;
        if (v61)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = v51 + 1;
      }
    }

    else
    {
      result = StreamLessThan(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9[1];
          ++v9;
          result = StreamLessThan(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = (v7 + 1);
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 += 8;
          result = StreamLessThan(v48, *v9);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = *--v64;
          result = StreamLessThan(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = *v9;
        *v9 = *v64;
        *v64 = v66;
        do
        {
          v67 = v9[1];
          ++v9;
        }

        while (!StreamLessThan(v48, v67));
        do
        {
          v68 = *--v64;
          result = StreamLessThan(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(v9, v9 + 1, v9 + 2, v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
      result = StreamLessThan(*v8, v9[3]);
      if (!result)
      {
        return result;
      }

      v70 = v9[3];
      v9[3] = *v8;
      *v8 = v70;
      result = StreamLessThan(v9[3], v9[2]);
      if (!result)
      {
        return result;
      }

      v72 = v9[2];
      v71 = v9[3];
      v73 = v9[1];
      v9[2] = v71;
      v9[3] = v72;
      result = StreamLessThan(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9[1];
      v74 = v9[2];
      v76 = *v9;
      v9[1] = v74;
      v9[2] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = StreamLessThan(v9[1], *v9);
  result = StreamLessThan(*v8, v9[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v116 = v9[1];
    v9[1] = *v8;
    *v8 = v116;
    v76 = *v9;
    v74 = v9[1];
LABEL_164:
    result = StreamLessThan(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = *v9;
  if (result)
  {
    *v9 = *v8;
    *v8 = v79;
  }

  else
  {
    *v9 = v9[1];
    v9[1] = v79;
    result = StreamLessThan(*v8, v79);
    if (result)
    {
      v77 = v9[1];
      v9[1] = *v8;
LABEL_103:
      *v8 = v77;
    }
  }

  return result;
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(const HALS_Stream **a1, const HALS_Stream **a2, const HALS_Stream **a3, const HALS_Stream **a4)
{
  v8 = StreamLessThan(*a2, *a1);
  v9 = StreamLessThan(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (StreamLessThan(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (StreamLessThan(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = StreamLessThan(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = StreamLessThan(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = StreamLessThan(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **>(const HALS_Stream **a1, const HALS_Stream **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = StreamLessThan(a1[1], *a1);
        v14 = StreamLessThan(*(a2 - 1), a1[1]);
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v15;
          if (!StreamLessThan(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = a1[1];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,HALS_PlugInDevice::_UpdateStreams(unsigned int,unsigned int *,unsigned int,unsigned int *,std::vector<HALS_PlugInStream *> &,std::vector<HALS_PlugInStream *> &,std::array<BOOL,2ul> &)::$_0 &,HALS_PlugInStream **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        if (!StreamLessThan(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v6 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!StreamLessThan(a1[3], a1[2]))
        {
          return 1;
        }

        v8 = a1[2];
        v7 = a1[3];
        v9 = a1[1];
        a1[2] = v7;
        a1[3] = v8;
        if (!StreamLessThan(v7, v9))
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (StreamLessThan(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (StreamLessThan(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = StreamLessThan(a1[1], *a1);
  v17 = a1 + 2;
  v18 = StreamLessThan(a1[2], a1[1]);
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = a1[2];
      a1[2] = v19;
    }

    else
    {
      v24 = a1[2];
      *a1 = a1[1];
      a1[1] = v19;
      if (StreamLessThan(v24, v19))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = a1[1];
    v21 = a1[2];
    v23 = *a1;
    a1[1] = v21;
    a1[2] = v22;
    if (StreamLessThan(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (StreamLessThan(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = (a1 + v29);
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!StreamLessThan(v28, v30[1]))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN17HALS_PlugInDevice33_HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::operator()(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1752122448 || *(a1 + 8) == 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::destroy_deallocate(HALS_ObjectMap **a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(a1[1], a2);

  operator delete(a1);
}

void std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::__clone(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5964910;
  *(a2 + 1) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__func(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5964910;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0,std::allocator<HALS_PlugInDevice::_HandlePlugIn_RequestConfigChange(HALS_PlugInDevice::ConfigChangePayload,unsigned int)::$_0>,HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__func(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5964910;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);
  return a1;
}

void HALS_PlugInDevice::ConfigChange_HardwareReferenceStream(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN17HALS_PlugInDevice36ConfigChange_HardwareReferenceStreamEPK11HALS_Clientj_block_invoke;
  block[3] = &__block_descriptor_tmp_8_1026;
  v5 = v3;
  v6 = a3;
  block[4] = a1;
  block[5] = a2;
  AMCP::Utility::Dispatch_Queue::async(a1 + 1584, block);
}

void ___ZN17HALS_PlugInDevice36ConfigChange_HardwareReferenceStreamEPK11HALS_Clientj_block_invoke(uint64_t a1, unsigned int a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 48));
  if (v5)
  {
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 558;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  --->", buf, 0x1Cu);
    }

    memset(buf, 0, 32);
    memset(v46, 0, sizeof(v46));
    v7 = *(v3 + 16);
    strcpy(v47, "bgfcbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v7, 0, 1, v47, v6);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v8 = *(v3 + 1568);
    if (v8)
    {
      (*(*v8 + 224))(v8, &v43);
    }

    v42[0] = 0;
    v42[1] = 0;
    HALS_System::GetInstance(v47, 0, v42);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*v47 + 1744), v3);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    strcpy(v47, "ffidbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v9);
    strcpy(v47, "egfcbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v10);
    strcpy(v47, "#mtsbolg");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v11);
    strcpy(v47, "#mtstpni");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v12);
    strcpy(v47, "cntltpni");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v13);
    strcpy(v47, "tfastpni");
    v47[9] = 0;
    *&v47[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(buf, v47, v14);
    memset(v47, 0, 24);
    HALS_Device::CopyStreamList(v3, 1, v47);
    v16 = *v47;
    v17 = *&v47[8];
    while (1)
    {
      if (v16 == v17)
      {
        v19 = 0;
        goto LABEL_16;
      }

      v18 = *v16;
      if ((*v16)[14] == 1)
      {
        break;
      }

      if (HALS_Stream::IsHardwareReferenceStream(v18))
      {
        v18 = *v16;
        break;
      }

      ++v16;
    }

    v19 = v18[4];
LABEL_16:
    v20 = HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(v47, v15);
    memset(v47, 0, 24);
    *&v47[24] = v19;
    __p = 0x676C6F627363686ELL;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v20, &__p, v21);
    __p = 0x676C6F6273666D74;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v22);
    __p = 0x676C6F6273666D61;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v23);
    __p = 0x676C6F6270667420;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v24);
    __p = 0x676C6F6270667461;
    LODWORD(v39) = 0;
    CAPropertyAddressList::AppendUniqueItem(v47, &__p, v25);
    std::vector<CAPropertyAddressList>::push_back[abi:ne200100](v46, v47);
    v26 = *(a1 + 52);
    __p = 0;
    v39 = 0;
    v40 = 0;
    v41 = v26;
    *&v37.mSelector = 0x676C6F626263766CLL;
    v37.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(&__p, &v37, v27);
    std::vector<CAPropertyAddressList>::push_back[abi:ne200100](v46, &__p);
    v28 = *(v3 + 1568);
    if (v28)
    {
      (*(*v28 + 960))(v28);
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (*v47)
    {
      operator delete(*v47);
    }

    v36[0] = 0;
    v36[1] = 0;
    HALS_System::GetInstance(v47, 0, v36);
    HALS_IOContext_Manager::rebuild_engine_for_device(*(*v47 + 1744), v3);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 136315650;
      *&v47[4] = "HALS_PlugInDevice.cpp";
      *&v47[12] = 1024;
      *&v47[14] = 620;
      *&v47[18] = 2080;
      *&v47[20] = v3 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  --- sending notifications", v47, 0x1Cu);
    }

    v29 = *(v3 + 1568);
    if (v29)
    {
      (*(*v29 + 248))(v29, buf);
    }

    kdebug_trace();
    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = *(v30 + 16);
    }

    else
    {
      v31 = 0;
    }

    HALS_NotificationManager::GroupPropertiesChanged(1, *(v3 + 16), v31, buf, v46, &v43);
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 136315650;
      *&v47[4] = "HALS_PlugInDevice.cpp";
      *&v47[12] = 1024;
      *&v47[14] = 636;
      *&v47[18] = 2080;
      *&v47[20] = v3 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  --- restarting IO", v47, 0x1Cu);
    }

    v32 = *(v3 + 1568);
    if (v32)
    {
      (*(*v32 + 240))(v32);
      (*(**(v3 + 1568) + 232))(*(v3 + 1568), &v43);
    }

    v35[0] = 0;
    v35[1] = 0;
    HALS_System::GetInstance(v47, 0, v35);
    v33 = *(*v47 + 1744);
    os_unfair_lock_lock(v33 + 4);
    os_unfair_lock_unlock(v33 + 4);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    v34[0] = 0;
    v34[1] = 0;
    HALS_System::GetInstance(v47, 0, v34);
    HALS_IOContext_Manager::resume_contexts_for_device(*(*v47 + 1744), v3);
    if (*&v47[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v47[8]);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    *v47 = v46;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v47);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 653;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 164;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInDevice::ConfigChange_HardwareReferenceStream: %s  <---", buf, 0x1Cu);
    }

    kdebug_trace();
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void sub_1DE2CC87C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser((v27 - 144), a2);
    v29 = __cxa_begin_catch(a1);
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v29);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v32;
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v33 = *v32;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *(v27 - 144) = 136315394;
      *(v26 + 4) = "HALS_PlugInDevice.cpp";
      *(v27 - 132) = 1024;
      *(v26 + 14) = 615;
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception trying to notify about reference stream", (v27 - 144), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2CC510);
  }

  _Unwind_Resume(a1);
}

void sub_1DE2CC9EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x1DE2CCA08);
  }

  _Unwind_Resume(a1);
}

void sub_1DE2CCA58(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE2CCA60);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<CAPropertyAddressList>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v25 = a1;
    if (v11)
    {
      std::allocator<CAPropertyAddressList>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (32 * v8);
    v22 = 0;
    v23 = v12;
    v24 = v12;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(v12, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
    v12[3] = *(a2 + 24);
    *&v24 = v24 + 32;
    v14 = *a1;
    v13 = a1[1];
    v26[0] = a1;
    v26[1] = &v28;
    v26[2] = &v29;
    v27 = 0;
    v15 = v23 + v14 - v13;
    v28 = v15;
    v29 = v15;
    if (v14 == v13)
    {
      v27 = 1;
    }

    else
    {
      v16 = (v23 + v14 - v13);
      v17 = v14;
      do
      {
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(v16, *v17, *(v17 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 8) - *v17) >> 2));
        v16[3] = *(v17 + 24);
        v17 += 32;
        v16 = (v29 + 32);
        v29 += 32;
      }

      while (v17 != v13);
      v27 = 1;
      do
      {
        v18 = *v14;
        if (*v14)
        {
          *(v14 + 8) = v18;
          operator delete(v18);
        }

        v14 += 32;
      }

      while (v14 != v13);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CAPropertyAddressList>,CAPropertyAddressList*>>::~__exception_guard_exceptions[abi:ne200100](v26);
    v19 = *a1;
    *a1 = v15;
    v20 = a1[2];
    v21 = v24;
    *(a1 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v22 = v19;
    v23 = v19;
    result = std::__split_buffer<CAPropertyAddressList>::~__split_buffer(&v22);
    v7 = v21;
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(v5, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
    v5[3] = *(a2 + 24);
    v7 = v5 + 4;
    a1[1] = v5 + 4;
  }

  a1[1] = v7;
  return result;
}

void sub_1DE2CCC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<CAPropertyAddressList>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<CAPropertyAddressList>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE2CCD58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<CAPropertyAddressList>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CAPropertyAddressList>,CAPropertyAddressList*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
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
  }

  return a1;
}

void HALS_PlugInDevice::PerformNonDriverConfigChange(HALS_PlugInDevice *this, BOOL a2, int a3)
{
  v3 = 0uLL;
  v4 = 0;
  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(this, &v3, a3);
}

void HALS_PlugInDevice::_SetDSPForClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x115CuLL;
  v4 = 0;
  if (a3)
  {
    LODWORD(a3) = *(a3 + 16);
  }

  HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(a1, &v3, a3);
}

uint64_t HALS_PlugInDevice::InformOffloadsAvailableOnDevice(HALS_PlugInDevice *this, int a2, HALS_Client *a3, const DSP_Host_OffloadDictionary *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = 0;
  HALS_System::GetInstance(buf, 0, v36);
  v8 = *(*buf + 1800);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v9 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  v10 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  only_airpods_studio_voice_mic = AMCP::Feature_Flags::auacc_read_only_airpods_studio_voice_mic(v10);
  if (only_airpods_studio_voice_mic)
  {
    v12 = *(this + 183);
    if (v12)
    {
      v13 = *(v12 + 416);
      only_airpods_studio_voice_mic = *(v12 + 424);
      if (only_airpods_studio_voice_mic)
      {
        atomic_fetch_add_explicit(&only_airpods_studio_voice_mic->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](only_airpods_studio_voice_mic);
      }

      if (v13)
      {
        {
          if (a2)
          {
            v34 = 1768845428;
          }

          else
          {
            v34 = 1869968496;
          }

          HALS_PlugInDevice::InformOffloadsAvailableOnDevice(BOOL,HALS_Client *,DSP_Host_OffloadDictionary const&)::kAopaOffloadAvailable = 1685278561;
          *algn_1ECDAB164 = v34;
          dword_1ECDAB168 = 0;
        }

        v14 = *(this + 183);
        v15 = *(v14 + 416);
        v16 = *(v14 + 424);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a3)
        {
          v17 = *(a3 + 60);
        }

        else
        {
          v17 = 0;
        }

        v26 = (*(*v15 + 544))(v15, *(this + 369), v17, &HALS_PlugInDevice::InformOffloadsAvailableOnDevice(BOOL,HALS_Client *,DSP_Host_OffloadDictionary const&)::kAopaOffloadAvailable);
        v27 = v26;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v27)
        {
          DSP_Host_OffloadDictionary::deep_copy(&v35, a4);
        }

        v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v28 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v26);
        }

        v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v31 = *v30;
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        else
        {
          v31 = *v30;
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v33 = *(this + 4);
          *buf = 136315650;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2253;
          v38 = 1024;
          v39 = v33;
          _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp][offloads] Device ignores available DSP offloads property (Device ID: %d)", buf, 0x18u);
        }

        return 0;
      }
    }

    if (v9 == 1)
    {
      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
      }

      v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *v24;
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      else
      {
        v21 = *v24;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2240;
        v25 = "%32s:%-5d [hal_dsp][offloads] The owning plugin or UC plugin is null, nothing to set available offloads on.";
        goto LABEL_41;
      }
    }
  }

  else if (v9 == 1)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(only_airpods_studio_voice_mic);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_PlugInDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2231;
      v25 = "%32s:%-5d [hal_dsp][offloads] Inform available offloads not called, feature flag is not set.";
LABEL_41:
      _os_log_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_DEFAULT, v25, buf, 0x12u);
    }
  }

  return 0;
}

void sub_1DE2CD784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

const void *std::stringbuf::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t HALS_PlugInDevice::GetDefaultChannelLayoutPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, AudioChannelLayout *a4, _DWORD *a5, HALS_Device *a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, unsigned int a12)
{
  *a6 = 0;
  *(a6 + 2) = a12;
  if (a12)
  {
    v14 = (a6 + 16);
    v15 = a12;
    do
    {
      *(v14 - 1) = -1;
      *v14 = 0;
      v14[1] = 0;
      v14 = (v14 + 20);
      --v15;
    }

    while (v15);
  }

  *a5 = a10;
  v16 = *(a3 + 4);
  v22[0] = 1936879204;
  v22[1] = v16;
  v22[2] = 1735159650;
  v17 = *(a1 + 1464);
  v18 = *(v17 + 416);
  v19 = *(v17 + 424);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a9)
  {
    v20 = *(a9 + 240);
  }

  else
  {
    v20 = 0;
  }

  (*(*v18 + 568))(v18, *(a1 + 1476), v20, v22, 0, 0);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return HALS_Device::ThrowIfInvalidACL(a6, a4, a12);
}

void sub_1DE2CDA48(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CDA20);
}

void HALS_PlugInDevice::_ClientDescriptionChanged(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1464);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 1476);
  if (a2)
  {
    v8 = *(a2 + 240);
  }

  else
  {
    v8 = 0;
  }

  v25 = 0x676C6F6263646573;
  v26 = 0;
  v9 = (*(*v5 + 544))(v5, v7, v8, &v25);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9)
  {
    v10 = (*(*a1 + 736))(a1);
    if (*(a1 + 552) == v10)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v25 = Mutable;
      LOWORD(v26) = 257;
      CACFDictionary::AddUInt32(&v25, @"kind", 0);
      v24 = Mutable;
      v17 = *(a1 + 1464);
      v18 = *(v17 + 416);
      v19 = *(v17 + 424);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a1 + 1476);
      if (a2)
      {
        v21 = *(a2 + 240);
      }

      else
      {
        v21 = 0;
      }

      v22 = 0x676C6F6263646573;
      v23 = 0;
      (*(*v18 + 576))(v18, v20, v21, &v22, 0, 0, 8, &v24);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      CACFDictionary::~CACFDictionary(&v25);
    }

    else
    {
      v22 = *(v10 + 8);
      v11 = *(a1 + 1464);
      v12 = *(v11 + 416);
      v13 = *(v11 + 424);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(a1 + 1476);
      if (a2)
      {
        v15 = *(a2 + 240);
      }

      else
      {
        v15 = 0;
      }

      v25 = 0x676C6F6263646573;
      v26 = 0;
      (*(*v12 + 576))(v12, v14, v15, &v25, 0, 0, 8, &v22);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }
}

void sub_1DE2CDCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_PlugInDevice::_CopyControlByDescription(HALS_PlugInDevice *this, HALS_Object *a2, int a3, int a4)
{
  for (i = *(this + 193); i != *(this + 194); ++i)
  {
    v5 = *i;
    if (*(*i + 5) == a2 && *(v5 + 12) == a3 && *(v5 + 13) == a4)
    {
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v5, a2);
  return v5;
}

HALS_ObjectMap *HALS_PlugInDevice::_CopyControlByIndex(HALS_PlugInDevice *this, HALS_Object *a2)
{
  v2 = *(this + 193);
  if (a2 >= ((*(this + 194) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_PlugInDevice::_CopyControls(HALS_PlugInDevice *this, HALS_Device::BasicControlList *a2)
{
  v2 = *(this + 193);
  for (i = *(this + 194); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_PlugInDevice::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1504) - *(v4 + 1496)) >> 3);
  v6 = *(v4 + 1496);
  for (i = *(v4 + 1504); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
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
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

void std::vector<HALS_Stream *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t HALS_PlugInDevice::_GetTotalNumberChannels(HALS_PlugInDevice *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 187);
  if (v3 == *(v2 + 188))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1496;
  do
  {
    v6 = *v3++;
    v7 = v6[4];
    v11 = 0x676C6F6270667420;
    v12 = 0;
    v13 = 0;
    (*(*v6 + 120))(v6, v7, &v11, 40, &v13, v9, 0, 0, 0);
    v4 = (v10 + v4);
  }

  while (v3 != *(v5 + 1));
  return v4;
}

uint64_t HALS_PlugInDevice::_CopyDefaultElementName(HALS_PlugInDevice *this, int a2, int a3)
{
  v14[0] = 1818454126;
  v14[1] = a2;
  v14[2] = a3;
  v4 = *(this + 183);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 544))(v5, *(this + 369), 0, v14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(this + 183);
  v9 = *(v8 + 416);
  v10 = *(v8 + 424);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 369);
  v16 = 0;
  v15 = 0;
  (*(*v9 + 568))(v9, v11, 0, v14, 0, 0, 8, &v15, &v16);
  v12 = v16;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v12;
}

void sub_1DE2CE288(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_Device::MaximumPastData(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F62646D7064;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

uint64_t HALS_Device::AvailablePastData(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6264617064;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

BOOL HALS_Device::SupportsPastData(HALS_Device *this)
{
  v2 = *(this + 4);
  v8 = 0x676C6F6264737064;
  v9 = 0;
  v3 = (*(*this + 96))(this, v2, &v8, 0);
  result = 0;
  if (v3)
  {
    v5 = *(this + 4);
    v6 = 0x676C6F6264737064;
    v7 = 0;
    v11 = 0;
    v10 = 0;
    (*(*this + 120))(this, v5, &v6, 4, &v10, &v11, 0, 0, 0);
    return v11 != 0;
  }

  return result;
}

uint64_t HALS_PlugInDevice::_CopyIOEngine(HALS_PlugInDevice *this, HALS_Object *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v4 == v3 || v4 == 1701733488)
  {
    if (v4 == 1701733488 || v4 != v3)
    {
LABEL_13:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "HALS_PlugInDevice.cpp";
        v11 = 1024;
        v12 = 909;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::_GetIOEngine: EndPoints shouldn't need engines", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }
  }

  else if (v3 == 1701733488)
  {
    goto LABEL_13;
  }

  HALS_ObjectMap::RetainObject(*(this + 196), a2);
  return *(this + 196);
}

HALS_ObjectMap *HALS_PlugInDevice::_CopyStreamByIndex(HALS_PlugInDevice *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 188);
  v5 = *(v3 + 187);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

BOOL HALS_PlugInDevice::IsClockStable(HALS_PlugInDevice *this)
{
  v5 = 0x676C6F6263737462;
  v6 = 0;
  if (!(*(*this + 96))(this, *(this + 4), &v5, 0))
  {
    return 1;
  }

  v3 = 4;
  v4 = 0;
  (*(*this + 120))(this, *(this + 4), &v5, 4, &v3, &v4, 0, 0, 0);
  return v4 != 0;
}

void sub_1DE2CE710(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CE6ECLL);
}

uint64_t HALS_PlugInDevice::GetClockAlgorithm(HALS_PlugInDevice *this)
{
  v2 = 1768518246;
  v7 = 1768518246;
  v5 = 0x676C6F62636C6F6BLL;
  v6 = 0;
  if ((*(*this + 96))(this, *(this + 4), &v5, 0))
  {
    v4 = 4;
    (*(*this + 120))(this, *(this + 4), &v5, 4, &v4, &v7, 0, 0, 0);
    return v7;
  }

  return v2;
}

void sub_1DE2CE7EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CE7D4);
}

uint64_t HALS_Device::GetClockDomain(HALS_Device *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F62636C6B64;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

uint64_t HALS_PlugInDevice::create_mcp_engine(HALS_PlugInDevice *this)
{
  v1 = *(this + 183);
  v3 = *(this + 369);
  return (*(**(v1 + 416) + 144))(*(v1 + 416), v1, this, &v3);
}

uint64_t HALS_PlugInDevice::DoAnyQueuesHaveWorkAfterFlush(HALS_PlugInDevice *this)
{
  v1 = atomic_load(this + 817);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 1153), (v2))
  {
    v3 = atomic_load(this + 1617);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void HALS_PlugInDevice::FlushAllQueues(HALS_PlugInDevice *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1584));
}

BOOL HALS_PlugInDevice::CanBeAggregated(HALS_PlugInDevice *this)
{
  if (g_static_start_options != 1)
  {
    return 1;
  }

  v7 = v1;
  v8 = v2;
  v5 = 0x676C6F6264767362;
  v6 = 0;
  v4 = 0;
  (*(*this + 120))(this, *(this + 4), &v5, 4, &v4 + 4, &v4, 0, 0, 0);
  return (v4 & 0x100) == 0;
}

void sub_1DE2CE9E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2CE9BCLL);
}

const void *HALS_Device::CopyDeviceUID(HALS_Device *this)
{
  result = *(this + 13);
  if (result)
  {
    CFRetain(result);
    return *(this + 13);
  }

  return result;
}

void HALS_PlugInDevice::SetPropertyData(HALS_PlugInDevice *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, uint64_t a4, float *a5, uint64_t a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v63 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, a2))
  {
    v18 = atomic_load(this + 40);
    if (a8)
    {
      v19 = a8[20].mSelector;
    }

    else
    {
      v19 = getpid();
    }

    if (v18 != -1 && v18 != v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v59 = 136315394;
        v60 = "HALS_PlugInDevice.cpp";
        v61 = 1024;
        v62 = 2131;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: the given process does not own hog mode", &v59, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560492391;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector > 1702392684)
  {
    if (mSelector <= 1818850161)
    {
      if (mSelector == 1702392685)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v59 = 136315394;
            v60 = "HALS_PlugInDevice.cpp";
            v61 = 1024;
            v62 = 2198;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyExternalSecureMute", &v59, 0x12u);
          }

          v53 = __cxa_allocate_exception(0x10uLL);
          *v53 = off_1F5991DD8;
          v53[2] = 561211770;
        }

        v30 = *(this + 183);
        v22 = *(v30 + 416);
        v23 = *(v30 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a8)
        {
          v25 = a8[20].mSelector;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_90;
      }

      if (mSelector != 1818850145)
      {
LABEL_68:
        if (!HALS_Device::HasProperty(this, v17, a3, a8))
        {
          if (!(*(*(this + 182) + 24))(this + 1456, a3->mSelector))
          {
            return;
          }

          v37 = *(this + 183);
          v38 = *(v37 + 416);
          v23 = *(v37 + 424);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (a8)
          {
            v39 = a8[20].mSelector;
          }

          else
          {
            v39 = 0;
          }

          (*(*v38 + 576))(v38, *(this + 369), v39, a3, a6, a7, a4, a5);
          goto LABEL_106;
        }

        goto LABEL_99;
      }
    }

    else if (mSelector != 1818850162)
    {
      if (mSelector == 1886546294)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v59 = 136315394;
            v60 = "HALS_PlugInDevice.cpp";
            v61 = 1024;
            v62 = 2157;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioEndPointDevicePropertyIsPrivate", &v59, 0x12u);
          }

          v58 = __cxa_allocate_exception(0x10uLL);
          *v58 = off_1F5991DD8;
          v58[2] = 561211770;
        }

        v36 = *(this + 183);
        v22 = *(v36 + 416);
        v23 = *(v36 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a8)
        {
          v25 = a8[20].mSelector;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_90;
      }

      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v59 = 136315394;
            v60 = "HALS_PlugInDevice.cpp";
            v61 = 1024;
            v62 = 2137;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", &v59, 0x12u);
          }

          v55 = __cxa_allocate_exception(0x10uLL);
          *v55 = off_1F5991DD8;
          v55[2] = 561211770;
        }

        v26 = *(this + 183);
        v22 = *(v26 + 416);
        v23 = *(v26 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a8)
        {
          v25 = a8[20].mSelector;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

    if (a4 <= 0xB)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v59 = 136315394;
        v60 = "HALS_PlugInDevice.cpp";
        v61 = 1024;
        v62 = 2165;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioObjectPropertyListenerAdded or kAudioObjectPropertyListenerRemoved", &v59, 0x12u);
      }

      v51 = __cxa_allocate_exception(0x10uLL);
      *v51 = off_1F5991DD8;
      v51[2] = 561211770;
    }

    v28 = *(this + 183);
    v22 = *(v28 + 416);
    v23 = *(v28 + 424);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(this + 369);
    if (a8)
    {
      v25 = a8[20].mSelector;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_90;
  }

  if (mSelector <= 1685087595)
  {
    if (mSelector == 1633906541)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v59 = 136315394;
          v60 = "HALS_PlugInDevice.cpp";
          v61 = 1024;
          v62 = 2144;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioEndPointDevicePropertyComposition", &v59, 0x12u);
        }

        v52 = __cxa_allocate_exception(0x10uLL);
        *v52 = off_1F5991DD8;
        v52[2] = 561211770;
      }

      v29 = *(this + 183);
      v22 = *(v29 + 416);
      v23 = *(v29 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(this + 369);
      if (a8)
      {
        v25 = a8[20].mSelector;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_90;
    }

    if (mSelector == 1634169456)
    {
      v27 = *(this + 183);
      v22 = *(v27 + 416);
      v23 = *(v27 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(this + 369);
      if (a8)
      {
        v25 = a8[20].mSelector;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_90;
    }

    goto LABEL_68;
  }

  if (mSelector == 1685087596)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v59 = 136315394;
        v60 = "HALS_PlugInDevice.cpp";
        v61 = 1024;
        v62 = 2172;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyEnableListening", &v59, 0x12u);
      }

      v56 = __cxa_allocate_exception(0x10uLL);
      *v56 = off_1F5991DD8;
      v56[2] = 561211770;
    }

    v31 = *(this + 183);
    v22 = *(v31 + 416);
    v23 = *(v31 + 424);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(this + 369);
    if (a8)
    {
      v25 = a8[20].mSelector;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_90;
  }

  if (mSelector != 1685414763)
  {
    if (mSelector == 1702248804)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v59 = 136315394;
          v60 = "HALS_PlugInDevice.cpp";
          v61 = 1024;
          v62 = 2205;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::SetPropertyData: bad property data size for kAudioDevicePropertyExternalVoiceActivityDetectionEnable", &v59, 0x12u);
        }

        v54 = __cxa_allocate_exception(0x10uLL);
        *v54 = off_1F5991DD8;
        v54[2] = 561211770;
      }

      v21 = *(this + 183);
      v22 = *(v21 + 416);
      v23 = *(v21 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(this + 369);
      if (a8)
      {
        v25 = a8[20].mSelector;
      }

      else
      {
        v25 = 0;
      }

LABEL_90:
      (*(*v22 + 576))(v22, v24, v25, a3, 0, 0, a4, a5);
LABEL_106:
      if (v23)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      return;
    }

    goto LABEL_68;
  }

  if (a4 <= 0xF)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v59 = 136315394;
      v60 = "HALS_PlugInDevice.cpp";
      v61 = 1024;
      v62 = 2180;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::_SetPropertyData: bad property data size for kAudioDevicePropertyProcessDuck", &v59, 0x12u);
    }

    v57 = __cxa_allocate_exception(0x10uLL);
    *v57 = off_1F5991DD8;
    v57[2] = 561211770;
  }

  v32 = *(this + 183);
  v33 = *(v32 + 416);
  v34 = *(v32 + 424);
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a8)
  {
    v35 = a8[20].mSelector;
  }

  else
  {
    v35 = 0;
  }

  v40 = (*(*v33 + 544))(v33, *(this + 369), v35, a3);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v40)
  {
    v41 = *(this + 183);
    v42 = *(v41 + 416);
    v43 = *(v41 + 424);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a8)
    {
      v44 = a8[20].mSelector;
    }

    else
    {
      v44 = 0;
    }

    v45 = (*(*v42 + 552))(v42, *(this + 369), v44, a3);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v45)
    {
      v46 = *(this + 183);
      v47 = *(v46 + 416);
      v23 = *(v46 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a8)
      {
        v48 = a8[20].mSelector;
      }

      else
      {
        v48 = 0;
      }

      (*(*v47 + 576))(v47, *(this + 369), v48, a3, 0, 0, 16, a5);
      goto LABEL_106;
    }
  }

LABEL_99:

  HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1DE2CF890(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInDevice::GetPropertyData(HALS_PlugInDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, AudioChannelLayout *a4, unsigned int *a5, char *a6, uint64_t a7, int *a8, AudioObjectPropertyAddress *a9)
{
  v294 = *MEMORY[0x1E69E9840];
  v289[0] = 0;
  v16 = (*(*this + 704))(this, a9);
  v18 = a3;
  mSelector = a3->mSelector;
  mScope = a3->mScope;
  if (a3->mSelector <= 1751737453)
  {
    if (mSelector > 1684107363)
    {
      if (mSelector <= 1685278577)
      {
        if (mSelector > 1684893795)
        {
          if (mSelector > 1685222500)
          {
            if (mSelector == 1685222501)
            {
              if (a4 <= 3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v292 = 1024;
                  v293 = 2070;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyWantsDisplayRouting", buf, 0x12u);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                *exception = off_1F5991DD8;
                exception[2] = 561211770;
              }

              v148 = *(this + 183);
              v22 = *(v148 + 416);
              v23 = *(v148 + 424);
              v25 = a6;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = *(this + 369);
              if (a9)
              {
                v26 = a9[20].mSelector;
              }

              else
              {
                v26 = 0;
              }

              goto LABEL_443;
            }

            if (mSelector == 1685276755)
            {
              if (a4 <= 3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v292 = 1024;
                  v293 = 1968;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsHeySiri", buf, 0x12u);
                }

                v253 = __cxa_allocate_exception(0x10uLL);
                *v253 = off_1F5991DD8;
                v253[2] = 561211770;
              }

              v84 = *(this + 183);
              v22 = *(v84 + 416);
              v23 = *(v84 + 424);
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = *(this + 369);
              v25 = a6;
              if (a9)
              {
                v26 = a9[20].mSelector;
              }

              else
              {
                v26 = 0;
              }

              goto LABEL_443;
            }
          }

          else
          {
            if (mSelector == 1684893796)
            {
              if (a4 <= 3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v292 = 1024;
                  v293 = 1952;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyMaximumPastData", buf, 0x12u);
                }

                v274 = __cxa_allocate_exception(0x10uLL);
                *v274 = off_1F5991DD8;
                v274[2] = 561211770;
              }

              v144 = *(this + 183);
              v22 = *(v144 + 416);
              v23 = *(v144 + 424);
              v25 = a6;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = *(this + 369);
              if (a9)
              {
                v26 = a9[20].mSelector;
              }

              else
              {
                v26 = 0;
              }

              goto LABEL_443;
            }

            if (mSelector == 1685087596)
            {
              if (a4 <= 3)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_PlugInDevice.cpp";
                  v292 = 1024;
                  v293 = 1960;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyEnableListening", buf, 0x12u);
                }

                v238 = __cxa_allocate_exception(0x10uLL);
                *v238 = off_1F5991DD8;
                v238[2] = 561211770;
              }

              v21 = *(this + 183);
              v22 = *(v21 + 416);
              v23 = *(v21 + 424);
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = *(this + 369);
              v25 = a6;
              if (a9)
              {
                v26 = a9[20].mSelector;
              }

              else
              {
                v26 = 0;
              }

LABEL_443:
              *buf = 0;
              LODWORD(__p) = 0;
              (*(*v22 + 568))(v22, v24, v26, v18, 0, 0, 4, &__p, buf);
              goto LABEL_444;
            }
          }

          goto LABEL_321;
        }

        if (mSelector == 1684107364)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 1941;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAvailablePastData", buf, 0x12u);
            }

            v271 = __cxa_allocate_exception(0x10uLL);
            *v271 = off_1F5991DD8;
            v271[2] = 561211770;
          }

          v138 = *(this + 183);
          v22 = *(v138 + 416);
          v23 = *(v138 + 424);
          v25 = a6;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = *(this + 369);
          if (a9)
          {
            v26 = a9[20].mSelector;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_443;
        }

        if (mSelector != 1684301171)
        {
          if (mSelector == 1684434036)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1609;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultDevice", buf, 0x12u);
              }

              v248 = __cxa_allocate_exception(0x10uLL);
              *v248 = off_1F5991DD8;
              v248[2] = 561211770;
            }

            v63 = a3;
            v64 = (*(*this + 544))(this, mScope == 1768845428, a9, a3);
            v65 = a6;
            *a6 = v64 != 0;
            if (!v64)
            {
              goto LABEL_447;
            }

            v66 = *(this + 183);
            v67 = *(v66 + 416);
            v68 = *(v66 + 424);
            if (v68)
            {
              atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (a9)
            {
              v69 = a9[20].mSelector;
            }

            else
            {
              v69 = 0;
            }

            v210 = (*(*v67 + 544))(v67, *(this + 369), v69, a3);
            v211 = v210;
            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v68);
              if ((v211 & 1) == 0)
              {
                goto LABEL_447;
              }
            }

            else if (!v210)
            {
              goto LABEL_447;
            }

            v214 = *(this + 183);
            v91 = *(v214 + 416);
            v23 = *(v214 + 424);
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v170 = *(this + 369);
            v171 = v63;
            if (a9)
            {
              v172 = a9[20].mSelector;
            }

            else
            {
              v172 = 0;
            }

            goto LABEL_520;
          }

LABEL_321:
          if (HALS_Device::HasProperty(this, v17, a3, a9))
          {

            HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
            return;
          }

          if (!(*(*(this + 182) + 24))(this + 1456, a3->mSelector))
          {
            return;
          }

          v165 = *(this + 183);
          v111 = *(v165 + 416);
          v112 = *(v165 + 424);
          if (v112)
          {
            atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (a9)
          {
            v113 = a9[20].mSelector;
          }

          else
          {
            v113 = 0;
          }

          goto LABEL_339;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1984;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceDescription", buf, 0x12u);
          }

          v262 = __cxa_allocate_exception(0x10uLL);
          *v262 = off_1F5991DD8;
          v262[2] = 561211770;
        }

        v116 = *(this + 183);
        v48 = *(v116 + 416);
        v49 = *(v116 + 424);
        v51 = a6;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = *(this + 369);
        if (a9)
        {
          v52 = a9[20].mSelector;
        }

        else
        {
          v52 = 0;
        }

LABEL_415:
        *buf = 0;
        LODWORD(__p) = 0;
        (*(*v48 + 568))(v48, v50, v52, v18, 0, 0, 8, &__p, buf);
        *v51 = *buf;
        if (v49)
        {
LABEL_416:
          v193 = v49;
          goto LABEL_417;
        }

        goto LABEL_418;
      }

      if (mSelector > 1702392684)
      {
        if (mSelector <= 1735356004)
        {
          if (mSelector == 1702392685)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 2100;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyExternalSecureMute", buf, 0x12u);
              }

              v276 = __cxa_allocate_exception(0x10uLL);
              *v276 = off_1F5991DD8;
              v276[2] = 561211770;
            }

            v146 = *(this + 183);
            v22 = *(v146 + 416);
            v23 = *(v146 + 424);
            v25 = a6;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            if (a9)
            {
              v26 = a9[20].mSelector;
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_443;
          }

          if (mSelector != 1735354734)
          {
            goto LABEL_321;
          }

LABEL_188:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 1601;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
            }

            v237 = __cxa_allocate_exception(0x10uLL);
            *v237 = off_1F5991DD8;
            v237[2] = 561211770;
          }

          *a6 = (*(**(this + 196) + 688))(*(this + 196));
          goto LABEL_447;
        }

        if (mSelector == 1735356005)
        {
          goto LABEL_188;
        }

        if (mSelector != 1751412337)
        {
          goto LABEL_321;
        }

        goto LABEL_171;
      }

      if (mSelector != 1685278578)
      {
        if (mSelector == 1685287012)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 1925;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsPastData", buf, 0x12u);
            }

            v263 = __cxa_allocate_exception(0x10uLL);
            *v263 = off_1F5991DD8;
            v263[2] = 561211770;
          }

          v120 = *(this + 183);
          v22 = *(v120 + 416);
          v23 = *(v120 + 424);
          v25 = a6;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = *(this + 369);
          if (a9)
          {
            v26 = a9[20].mSelector;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_443;
        }

        if (mSelector == 1702248804)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 2108;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyExternalVoiceActivityDetectionEnable", buf, 0x12u);
            }

            v250 = __cxa_allocate_exception(0x10uLL);
            *v250 = off_1F5991DD8;
            v250[2] = 561211770;
          }

          v70 = *(this + 183);
          v22 = *(v70 + 416);
          v23 = *(v70 + 424);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = *(this + 369);
          v25 = a6;
          if (a9)
          {
            v26 = a9[20].mSelector;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_443;
        }

        goto LABEL_321;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 2045;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDSPOffloadRequested", buf, 0x12u);
        }

        v272 = __cxa_allocate_exception(0x10uLL);
        *v272 = off_1F5991DD8;
        v272[2] = 561211770;
      }

      v139 = *(this + 183);
      v140 = *(v139 + 416);
      v141 = *(v139 + 424);
      v105 = a6;
      if (v141)
      {
        atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v142 = *(this + 369);
      if (a9)
      {
        v143 = a9[20].mSelector;
      }

      else
      {
        v143 = 0;
      }

      *buf = *&a3->mSelector;
      v197 = a3;
      *&buf[8] = a3->mElement;
      v198 = (*(*v140 + 544))(v140, v142, v143, buf);
      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }

      if (!v198)
      {
        *a6 = 0;
        goto LABEL_418;
      }

      v199 = *(this + 183);
      v200 = *(v199 + 416);
      v49 = *(v199 + 424);
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = *&v197->mSelector;
      *&buf[8] = v197->mElement;
      __p = 0;
      v290[0] = 0;
      (*(*v200 + 568))(v200);
      v221 = 0;
LABEL_511:
      *v105 = v221;
      if (!v49)
      {
        goto LABEL_418;
      }

      goto LABEL_416;
    }

    if (mSelector > 1635087470)
    {
      if (mSelector > 1668049763)
      {
        if (mSelector > 1668510817)
        {
          if (mSelector == 1668510818)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1690;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockIsStable", buf, 0x12u);
              }

              v266 = __cxa_allocate_exception(0x10uLL);
              *v266 = off_1F5991DD8;
              v266[2] = 561211770;
            }

            v128 = *(this + 183);
            v22 = *(v128 + 416);
            v23 = *(v128 + 424);
            v25 = a6;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            if (a9)
            {
              v26 = a9[20].mSelector;
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_443;
          }

          if (mSelector == 1668641652)
          {
            v77 = a4 / 0xC;
            if (*(this + 372) < a4 / 0xC)
            {
              v77 = *(this + 372);
            }

            if (v77)
            {
              v78 = 0;
              v79 = 0;
              do
              {
                if (v79 < *(this + 372))
                {
                  v80 = &a6[v78];
                  v81 = (*(this + 185) + v78);
                  v82 = *v81;
                  *(v80 + 2) = *(v81 + 2);
                  *v80 = v82;
                }

                ++v79;
                v78 += 12;
              }

              while (12 * v77 != v78);
            }

            v62 = 12 * v77;
            goto LABEL_448;
          }
        }

        else
        {
          if (mSelector == 1668049764)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1592;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockDomain", buf, 0x12u);
              }

              v265 = __cxa_allocate_exception(0x10uLL);
              *v265 = off_1F5991DD8;
              v265[2] = 561211770;
            }

            v127 = *(this + 183);
            v22 = *(v127 + 416);
            v23 = *(v127 + 424);
            v25 = a6;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            if (a9)
            {
              v26 = a9[20].mSelector;
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_443;
          }

          if (mSelector == 1668050795)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1682;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockAlgorithm", buf, 0x12u);
              }

              v240 = __cxa_allocate_exception(0x10uLL);
              *v240 = off_1F5991DD8;
              v240[2] = 561211770;
            }

            v34 = *(this + 183);
            v22 = *(v34 + 416);
            v23 = *(v34 + 424);
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v24 = *(this + 369);
            v25 = a6;
            if (a9)
            {
              v26 = a9[20].mSelector;
            }

            else
            {
              v26 = 0;
            }

            goto LABEL_443;
          }
        }

        goto LABEL_321;
      }

      if (mSelector == 1635087471)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 2008;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAllowsAutoRoute", buf, 0x12u);
          }

          v261 = __cxa_allocate_exception(0x10uLL);
          *v261 = off_1F5991DD8;
          v261[2] = 561211770;
        }

        v115 = *(this + 183);
        v22 = *(v115 + 416);
        v23 = *(v115 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = a9[20].mSelector;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_443;
      }

      if (mSelector != 1667330160)
      {
        if (mSelector == 1667658618)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 1976;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyCalculateBufferFrameSize", buf, 0x12u);
            }

            v245 = __cxa_allocate_exception(0x10uLL);
            *v245 = off_1F5991DD8;
            v245[2] = 561211770;
          }

          v53 = *(this + 183);
          v54 = *(v53 + 416);
          v23 = *(v53 + 424);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v55 = *(this + 369);
          v25 = a6;
          if (a9)
          {
            v56 = a9[20].mSelector;
          }

          else
          {
            v56 = 0;
          }

          *buf = 0;
          LODWORD(__p) = 0;
          (*(*v54 + 568))(v54, v55, v56, v18, a7, a8, 4, &__p, buf);
LABEL_444:
          *v25 = *buf;
          if (!v23)
          {
LABEL_447:
            v62 = 4;
            goto LABEL_448;
          }

          goto LABEL_445;
        }

        goto LABEL_321;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 1530;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyConfigurationApplication", buf, 0x12u);
        }

        v256 = __cxa_allocate_exception(0x10uLL);
        *v256 = off_1F5991DD8;
        v256[2] = 561211770;
      }

      v102 = *(this + 183);
      v103 = *(v102 + 416);
      v104 = *(v102 + 424);
      v105 = a6;
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v106 = a9[20].mSelector;
      }

      else
      {
        v106 = 0;
      }

      v173 = a3;
      v174 = (*(*v103 + 544))(v103, *(this + 369), v106);
      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      if (!v174)
      {
        *a6 = CFRetain(@"com.apple.audio.AudioMIDISetup");
        goto LABEL_418;
      }

      v175 = *(this + 183);
      v176 = *(v175 + 416);
      v49 = *(v175 + 424);
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v177 = *(this + 369);
      v178 = v173;
      if (a9)
      {
        v179 = a9[20].mSelector;
      }

      else
      {
        v179 = 0;
      }

      goto LABEL_500;
    }

    if (mSelector <= 1634038356)
    {
      if (mSelector != 1633903475)
      {
        if (mSelector == 1633906541)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 1894;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioEndPointDevicePropertyComposition", buf, 0x12u);
            }

            v258 = __cxa_allocate_exception(0x10uLL);
            *v258 = off_1F5991DD8;
            v258[2] = 561211770;
          }

          v108 = *(this + 183);
          v48 = *(v108 + 416);
          v49 = *(v108 + 424);
          v51 = a6;
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v50 = *(this + 369);
          if (a9)
          {
            v52 = a9[20].mSelector;
          }

          else
          {
            v52 = 0;
          }

          goto LABEL_415;
        }

        if (mSelector != 1634038341)
        {
          goto LABEL_321;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 2089;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDeviceEngineReplacerIsEnabled", buf, 0x12u);
          }

          v243 = __cxa_allocate_exception(0x10uLL);
          *v243 = off_1F5991DD8;
          v243[2] = 561211770;
        }

        v43 = *(this + 183);
        v44 = *(v43 + 416);
        v45 = *(v43 + 424);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a9)
        {
          v46 = a9[20].mSelector;
        }

        else
        {
          v46 = 0;
        }

        v65 = a6;
        v180 = a3;
        v181 = (*(*v44 + 544))(v44, *(this + 369), v46);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if ((v181 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 2091;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: does not support property kAudioDeviceEngineReplacerIsEnabled", buf, 0x12u);
          }

          v281 = __cxa_allocate_exception(0x10uLL);
          *v281 = off_1F5991DD8;
          v281[2] = 1970171760;
        }

        v182 = *(this + 183);
        v91 = *(v182 + 416);
        v23 = *(v182 + 424);
        v171 = v180;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v170 = *(this + 369);
        if (a9)
        {
          v172 = a9[20].mSelector;
        }

        else
        {
          v172 = 0;
        }

LABEL_520:
        *buf = 0;
        LODWORD(__p) = 0;
        (*(*v91 + 568))(v91, v170, v172, v171, 0, 0, 4, &__p, buf);
        v222 = *buf;
        goto LABEL_521;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 1992;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAccessEntitlementName", buf, 0x12u);
        }

        v268 = __cxa_allocate_exception(0x10uLL);
        *v268 = off_1F5991DD8;
        v268[2] = 561211770;
      }

      v131 = *(this + 183);
      v132 = *(v131 + 416);
      v100 = *(v131 + 424);
      v101 = a6;
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "sccabolg");
      buf[9] = 0;
      *&buf[10] = 0;
      __p = 0;
      v290[0] = 0;
      (*(*v132 + 568))(v132);
LABEL_404:
      *v101 = __p;
      if (v100)
      {
        v193 = v100;
LABEL_417:
        std::__shared_weak_count::__release_shared[abi:ne200100](v193);
        goto LABEL_418;
      }

      goto LABEL_418;
    }

    if (mSelector == 1634038357)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 2078;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDeviceEngineReplacerUID", buf, 0x12u);
        }

        v269 = __cxa_allocate_exception(0x10uLL);
        *v269 = off_1F5991DD8;
        v269[2] = 561211770;
      }

      v133 = *(this + 183);
      v134 = *(v133 + 416);
      v135 = *(v133 + 424);
      v105 = a6;
      if (v135)
      {
        atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v136 = a9[20].mSelector;
      }

      else
      {
        v136 = 0;
      }

      v194 = a3;
      v195 = (*(*v134 + 544))(v134, *(this + 369), v136);
      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v135);
      }

      if ((v195 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 2080;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: does not support property kAudioDeviceEngineReplacerUID", buf, 0x12u);
        }

        v282 = __cxa_allocate_exception(0x10uLL);
        *v282 = off_1F5991DD8;
        v282[2] = 1970171760;
      }

      v196 = *(this + 183);
      v176 = *(v196 + 416);
      v49 = *(v196 + 424);
      v178 = v194;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v177 = *(this + 369);
      if (a9)
      {
        v179 = a9[20].mSelector;
      }

      else
      {
        v179 = 0;
      }

LABEL_500:
      *buf = 0;
      LODWORD(__p) = 0;
      (*(*v176 + 568))(v176, v177, v179, v178, 0, 0, 8, &__p, buf);
      v221 = *buf;
      goto LABEL_511;
    }

    if (mSelector == 1634169456)
    {
      v110 = *(this + 183);
      v111 = *(v110 + 416);
      v112 = *(v110 + 424);
      if (v112)
      {
        atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v113 = a9[20].mSelector;
      }

      else
      {
        v113 = 0;
      }

LABEL_339:
      (*(*v111 + 568))(v111, *(this + 369), v113, a3, a7, a8, a4, a5, a6);
      if (v112)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v112);
      }

      return;
    }

    if (mSelector != 1634429294)
    {
      goto LABEL_321;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v292 = 1024;
        v293 = 1561;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyRelatedDevices", buf, 0x12u);
      }

      v247 = __cxa_allocate_exception(0x10uLL);
      *v247 = off_1F5991DD8;
      v247[2] = 561211770;
    }

    v58 = *(this + 183);
    v59 = *(v58 + 416);
    v60 = *(v58 + 424);
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v61 = a9[20].mSelector;
    }

    else
    {
      v61 = 0;
    }

    v152 = a6;
    v183 = a3;
    v184 = (*(*v59 + 544))(v59, *(this + 369), v61);
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    if (v184)
    {
      v185 = *(this + 183);
      v186 = *(v185 + 416);
      v187 = *(v185 + 424);
      if (v187)
      {
        atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v188 = a9[20].mSelector;
      }

      else
      {
        v188 = 0;
      }

      (*(*v186 + 568))(v186, *(this + 369), v188, v183, a7, a8, a4, a5, a6);
      if (v187)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v187);
      }

      v216 = *a5;
      if (v216 >= 4)
      {
        v217 = v216 >> 2;
        do
        {
          v218 = HALS_PlugIn::CopyObjectByUCID(*(this + 183), *v152);
          if (v218)
          {
            v220 = *(v218 + 4);
          }

          else
          {
            v220 = 0;
          }

          *v152 = v220;
          HALS_ObjectMap::ReleaseObject(v218, v219);
          ++v152;
          --v217;
        }

        while (v217);
      }

      return;
    }

    v189 = *(this + 4);
LABEL_458:
    *v152 = v189;
    goto LABEL_447;
  }

  v27 = v17;
  v28 = *&v16;
  if (mSelector <= 1851878763)
  {
    if (mSelector <= 1818850161)
    {
      if (mSelector <= 1818452845)
      {
        if (mSelector != 1751737454)
        {
          if (mSelector == 1768124270)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1878;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyIcon", buf, 0x12u);
              }

              v259 = __cxa_allocate_exception(0x10uLL);
              *v259 = off_1F5991DD8;
              v259[2] = 561211770;
            }

            v109 = *(this + 183);
            v48 = *(v109 + 416);
            v49 = *(v109 + 424);
            v51 = a6;
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = *(this + 369);
            if (a9)
            {
              v52 = a9[20].mSelector;
            }

            else
            {
              v52 = 0;
            }
          }

          else
          {
            if (mSelector != 1768777573)
            {
              goto LABEL_321;
            }

            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1886;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyRawImageData", buf, 0x12u);
              }

              v244 = __cxa_allocate_exception(0x10uLL);
              *v244 = off_1F5991DD8;
              v244[2] = 561211770;
            }

            v47 = *(this + 183);
            v48 = *(v47 + 416);
            v49 = *(v47 + 424);
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = *(this + 369);
            v51 = a6;
            if (a9)
            {
              v52 = a9[20].mSelector;
            }

            else
            {
              v52 = 0;
            }
          }

          goto LABEL_415;
        }

LABEL_171:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1853;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyIsHidden", buf, 0x12u);
          }

          v235 = __cxa_allocate_exception(0x10uLL);
          *v235 = off_1F5991DD8;
          v235[2] = 561211770;
        }

        *buf = *&a3->mSelector;
        *&buf[8] = a3->mElement;
        *buf = 1751737454;
        if (!(*(*this + 96))(this, a2, buf, a9))
        {
          goto LABEL_447;
        }

        v92 = *(this + 183);
        v93 = *(v92 + 416);
        v94 = *(v92 + 424);
        if (v94)
        {
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v95 = *(this + 369);
        v96 = a9 ? a9[20].mSelector : 0;
        LODWORD(__p) = 0;
        v290[0] = 0;
        (*(*v93 + 568))(v93, v95, v96, buf, 0, 0, 4, v290, &__p);
        *a6 = __p;
        if (!v94)
        {
          goto LABEL_447;
        }

        goto LABEL_515;
      }

      if (mSelector == 1818452846)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1501;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyElementCategoryName", buf, 0x12u);
          }

          v270 = __cxa_allocate_exception(0x10uLL);
          *v270 = off_1F5991DD8;
          v270[2] = 561211770;
        }

        v137 = *(this + 183);
        v48 = *(v137 + 416);
        v49 = *(v137 + 424);
        v51 = a6;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = *(this + 369);
        if (a9)
        {
          v52 = a9[20].mSelector;
        }

        else
        {
          v52 = 0;
        }

        goto LABEL_415;
      }

      if (mSelector == 1818455662)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1509;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyElementNumberName", buf, 0x12u);
          }

          v260 = __cxa_allocate_exception(0x10uLL);
          *v260 = off_1F5991DD8;
          v260[2] = 561211770;
        }

        v114 = *(this + 183);
        v48 = *(v114 + 416);
        v49 = *(v114 + 424);
        v51 = a6;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = *(this + 369);
        if (a9)
        {
          v52 = a9[20].mSelector;
        }

        else
        {
          v52 = 0;
        }

        goto LABEL_415;
      }

      if (mSelector != 1818850145)
      {
        goto LABEL_321;
      }
    }

    else
    {
      if (mSelector > 1819173228)
      {
        if (mSelector > 1819634019)
        {
          if (mSelector != 1819634020)
          {
            if (mSelector != 1836411236)
            {
              goto LABEL_321;
            }

            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1545;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyModelUID", buf, 0x12u);
              }

              v252 = __cxa_allocate_exception(0x10uLL);
              *v252 = off_1F5991DD8;
              v252[2] = 561211770;
            }

            v83 = *(this + 183);
            v48 = *(v83 + 416);
            v49 = *(v83 + 424);
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = *(this + 369);
            v51 = a6;
            if (a9)
            {
              v52 = a9[20].mSelector;
            }

            else
            {
              v52 = 0;
            }

            goto LABEL_415;
          }

          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 2000;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyLegacyUIDList", buf, 0x12u);
            }

            v267 = __cxa_allocate_exception(0x10uLL);
            *v267 = off_1F5991DD8;
            v267[2] = 561211770;
          }

          v129 = *(this + 183);
          v130 = *(v129 + 416);
          v94 = *(v129 + 424);
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(buf, "diulbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          __p = 0;
          v290[0] = 0;
          (*(*v130 + 568))(v130);
          *a6 = 0;
          if (!v94)
          {
            goto LABEL_447;
          }

LABEL_515:
          v204 = v94;
          goto LABEL_446;
        }

        if (mSelector != 1819173229)
        {
          if (mSelector == 1819569763)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_PlugInDevice.cpp";
                v292 = 1024;
                v293 = 1633;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyLatency", buf, 0x12u);
              }

              v241 = __cxa_allocate_exception(0x10uLL);
              *v241 = off_1F5991DD8;
              v241[2] = 561211770;
            }

            v35 = *(this + 183);
            v36 = *(v35 + 416);
            v37 = *(v35 + 424);
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v38 = *(this + 369);
            if (a9)
            {
              v39 = a9[20].mSelector;
            }

            else
            {
              v39 = 0;
            }

            *buf = 0;
            LODWORD(__p) = 0;
            (*(*v36 + 568))(v36, v38, v39, a3, 0, 0, 4, &__p, buf);
            v190 = *buf;
            if (v37)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v37);
            }

            if ((*(*this + 448))(this))
            {
              v190 += HALS_Device::GetStreamDSPLatency(this, (mScope == 1768845428));
            }

            if (v27)
            {
              v190 = (v28 / (*(*this + 272))(this) * v190);
            }

            if (a9)
            {
              DSPLatencyForClient = HALS_Device::GetDSPLatencyForClient(this, mScope == 1768845428, a9);
              if ((DSPLatencyForClient & 0x100000000) != 0)
              {
                v190 += DSPLatencyForClient;
              }
            }

            *a6 = v190;
            goto LABEL_447;
          }

          goto LABEL_321;
        }

        goto LABEL_184;
      }

      if (mSelector != 1818850162)
      {
        if (mSelector == 1819107691)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 1493;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
            }

            v257 = __cxa_allocate_exception(0x10uLL);
            *v257 = off_1F5991DD8;
            v257[2] = 561211770;
          }

          v107 = *(this + 183);
          v48 = *(v107 + 416);
          v49 = *(v107 + 424);
          v51 = a6;
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v50 = *(this + 369);
          if (a9)
          {
            v52 = a9[20].mSelector;
          }

          else
          {
            v52 = 0;
          }
        }

        else
        {
          if (mSelector != 1819111268)
          {
            goto LABEL_321;
          }

          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInDevice.cpp";
              v292 = 1024;
              v293 = 1485;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyModelName", buf, 0x12u);
            }

            v246 = __cxa_allocate_exception(0x10uLL);
            *v246 = off_1F5991DD8;
            v246[2] = 561211770;
          }

          v57 = *(this + 183);
          v48 = *(v57 + 416);
          v49 = *(v57 + 424);
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v50 = *(this + 369);
          v51 = a6;
          if (a9)
          {
            v52 = a9[20].mSelector;
          }

          else
          {
            v52 = 0;
          }
        }

        goto LABEL_415;
      }
    }

    if (a4 <= 0xB)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v292 = 1024;
        v293 = 1917;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyListenerAdded or kAudioObjectPropertyListenerRemoved", buf, 0x12u);
      }

      v234 = __cxa_allocate_exception(0x10uLL);
      *v234 = off_1F5991DD8;
      v234[2] = 561211770;
    }

    *(a6 + 2) = 0;
    *a6 = 0;
    v62 = 12;
    goto LABEL_448;
  }

  if (mSelector > 1920168546)
  {
    if (mSelector <= 1936290670)
    {
      if (mSelector == 1920168547)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1870;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyResourceBundle", buf, 0x12u);
          }

          v273 = __cxa_allocate_exception(0x10uLL);
          *v273 = off_1F5991DD8;
          v273[2] = 561211770;
        }

        *a6 = HALS_PlugInObject::CopyResourceBundlePath(this + 1456, a9);
        goto LABEL_418;
      }

      if (mSelector == 1935763060)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1698;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v264 = __cxa_allocate_exception(0x10uLL);
          *v264 = off_1F5991DD8;
          v264[2] = 561211770;
        }

        v121 = *(this + 183);
        v122 = *(v121 + 416);
        v123 = *(v121 + 424);
        v124 = a6;
        if (v123)
        {
          atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v125 = *(this + 369);
        if (a9)
        {
          v126 = a9[20].mSelector;
        }

        else
        {
          v126 = 0;
        }

        *buf = 0;
        LODWORD(__p) = 0;
        (*(*v122 + 568))(v122, v125, v126, a3, 0, 0, 4, &__p, buf);
        v192 = *buf;
        if (v123)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v123);
        }

        if (v27)
        {
          v192 = (v28 / (*(*this + 272))(this) * v192);
          v124 = a6;
        }

        *v124 = v192;
        goto LABEL_447;
      }

      if (mSelector != 1936092276)
      {
        goto LABEL_321;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 1621;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultSystemDevice", buf, 0x12u);
        }

        v251 = __cxa_allocate_exception(0x10uLL);
        *v251 = off_1F5991DD8;
        v251[2] = 561211770;
      }

      v71 = a3;
      v72 = (*(*this + 544))(this, mScope == 1768845428, a9);
      v65 = a6;
      *a6 = v72 != 0;
      if (!v72)
      {
        goto LABEL_447;
      }

      v73 = *(this + 183);
      v74 = *(v73 + 416);
      v75 = *(v73 + 424);
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v76 = a9[20].mSelector;
      }

      else
      {
        v76 = 0;
      }

      v212 = (*(*v74 + 544))(v74, *(this + 369), v76, a3);
      v213 = v212;
      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        if ((v213 & 1) == 0)
        {
          goto LABEL_447;
        }
      }

      else if (!v212)
      {
        goto LABEL_447;
      }

      v215 = *(this + 183);
      v91 = *(v215 + 416);
      v23 = *(v215 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v170 = *(this + 369);
      v171 = v71;
      if (a9)
      {
        v172 = a9[20].mSelector;
      }

      else
      {
        v172 = 0;
      }

      goto LABEL_520;
    }

    if (mSelector <= 1936879203)
    {
      if (mSelector == 1936290671)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1933;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsIsolatedIO", buf, 0x12u);
          }

          v277 = __cxa_allocate_exception(0x10uLL);
          *v277 = off_1F5991DD8;
          v277[2] = 561211770;
        }

        v147 = *(this + 183);
        v22 = *(v147 + 416);
        v23 = *(v147 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = a9[20].mSelector;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_443;
      }

      if (mSelector != 1936876644)
      {
        goto LABEL_321;
      }

      v284 = a3;
      TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
      v41 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
      v42 = caulk::numeric::exceptional_add<unsigned int>(v41);
      v289[0] = v42;
      if (v42 > a4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 1751;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDefaultChannelLayout", buf, 0x12u);
        }

        v242 = __cxa_allocate_exception(0x10uLL);
        *v242 = off_1F5991DD8;
        v242[2] = 561211770;
      }

      BYTE4(v283) = mScope == 1768845428;
      LODWORD(v283) = TotalNumberChannelsForClient;
      (*(*this + 936))(this, a2, v284, a4, a5, a6, a7, a8, a9, v42, v289, v283);
      return;
    }

    if (mSelector != 1936879204)
    {
      if (mSelector == 1953653102)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1553;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyTransportType", buf, 0x12u);
          }

          v255 = __cxa_allocate_exception(0x10uLL);
          *v255 = off_1F5991DD8;
          v255[2] = 561211770;
        }

        v97 = *(this + 183);
        v22 = *(v97 + 416);
        v23 = *(v97 + 424);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        v25 = a6;
        if (a9)
        {
          v26 = a9[20].mSelector;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_443;
      }

      goto LABEL_321;
    }

    v155 = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
    v156 = caulk::numeric::exceptional_mul<unsigned int>(v155);
    v157 = caulk::numeric::exceptional_add<unsigned int>(v156);
    if (v157 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v292 = 1024;
        v293 = 1714;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyPreferredChannelLayout", buf, 0x12u);
      }

      v280 = __cxa_allocate_exception(0x10uLL);
      *v280 = off_1F5991DD8;
      v280[2] = 561211770;
    }

    v158 = v157;
    *a6 = 0;
    *(a6 + 2) = v155;
    if (v155)
    {
      v159 = v155;
      v160 = a6 + 16;
      do
      {
        *(v160 - 1) = -1;
        *v160 = 0;
        *(v160 + 1) = 0;
        v160 += 20;
        --v159;
      }

      while (v159);
    }

    *a5 = v157;
    v161 = *(this + 183);
    v162 = *(v161 + 416);
    v163 = *(v161 + 424);
    if (v163)
    {
      atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v164 = a9[20].mSelector;
    }

    else
    {
      v164 = 0;
    }

    (*(*v162 + 568))(v162, *(this + 369), v164, a3, 0, 0, v158);
    if (v163)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v163);
    }

    v288[0] = 0;
    v288[1] = 0;
    HALS_System::GetInstance(&__p, 0, v288);
    *buf = HALS_SettingsManager::ReadSetting(*(__p + 222), *(this + 15));
    *&buf[8] = 1;
    if (v287)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v287);
    }

    __p = 0;
    LOWORD(v287) = 1;
    if (mScope == 1768845428)
    {
      v208 = @"input.surround";
    }

    else
    {
      if (a3->mScope != 1869968496)
      {
LABEL_470:
        HALS_Device::ThrowIfInvalidACL(a6, a4, v155);
        CACFDictionary::~CACFDictionary(&__p);
        CACFDictionary::~CACFDictionary(buf);
        return;
      }

      v208 = @"output.surround";
    }

    CACFDictionary::GetCACFDictionary(buf, v208, &__p);
    if (__p)
    {
      HALS_Device::ConstructLayoutFromDictionary(&__p, a6, v209);
    }

    goto LABEL_470;
  }

  if (mSelector > 1886546293)
  {
    if (mSelector > 1919251301)
    {
      if (mSelector != 1919251302)
      {
        if (mSelector != 1919512167)
        {
          goto LABEL_321;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1667;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
          }

          v254 = __cxa_allocate_exception(0x10uLL);
          *v254 = off_1F5991DD8;
          v254[2] = 561211770;
        }

        v85 = a3;
        v86 = *(this + 183);
        v87 = *(v86 + 416);
        v88 = *(v86 + 424);
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v89 = (*(*v87 + 24))(v87);
        v65 = a6;
        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        v90 = *(this + 183);
        v91 = *(v90 + 416);
        v23 = *(v90 + 424);
        if (v89)
        {
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(buf, "zisfbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          LODWORD(__p) = 0;
          v290[0] = 0;
          (*(*v91 + 568))(v91);
          v222 = 0;
LABEL_521:
          *v65 = v222;
          if (!v23)
          {
            goto LABEL_447;
          }

LABEL_445:
          v204 = v23;
LABEL_446:
          std::__shared_weak_count::__release_shared[abi:ne200100](v204);
          goto LABEL_447;
        }

        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v170 = *(this + 369);
        v171 = v85;
        if (a9)
        {
          v172 = a9[20].mSelector;
        }

        else
        {
          v172 = 0;
        }

        goto LABEL_520;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 2031;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyWantsStreamFormatsRestored", buf, 0x12u);
        }

        v279 = __cxa_allocate_exception(0x10uLL);
        *v279 = off_1F5991DD8;
        v279[2] = 561211770;
      }

      v149 = *(this + 183);
      v150 = *(v149 + 416);
      v151 = *(v149 + 424);
      v152 = a6;
      if (v151)
      {
        atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v153 = *(this + 369);
      if (a9)
      {
        v154 = a9[20].mSelector;
      }

      else
      {
        v154 = 0;
      }

      strcpy(buf, "fserbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v205 = (*(*v150 + 544))(v150, v153, v154, buf);
      if (v151)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      }

      if (v205)
      {
        v206 = *(this + 183);
        v207 = *(v206 + 416);
        v94 = *(v206 + 424);
        if (v94)
        {
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "fserbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        LODWORD(__p) = 0;
        v290[0] = 0;
        (*(*v207 + 568))(v207);
LABEL_514:
        *v152 = __p;
        if (!v94)
        {
          goto LABEL_447;
        }

        goto LABEL_515;
      }
    }

    else
    {
      if (mSelector == 1886546294)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInDevice.cpp";
            v292 = 1024;
            v293 = 1908;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioEndPointDevicePropertyIsPrivate", buf, 0x12u);
          }

          v275 = __cxa_allocate_exception(0x10uLL);
          *v275 = off_1F5991DD8;
          v275[2] = 561211770;
        }

        v145 = *(this + 183);
        v22 = *(v145 + 416);
        v23 = *(v145 + 424);
        v25 = a6;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = *(this + 369);
        if (a9)
        {
          v26 = a9[20].mSelector;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_443;
      }

      if (mSelector != 1919251299)
      {
        goto LABEL_321;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInDevice.cpp";
          v292 = 1024;
          v293 = 2016;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyWantsControlsRestored", buf, 0x12u);
        }

        v239 = __cxa_allocate_exception(0x10uLL);
        *v239 = off_1F5991DD8;
        v239[2] = 561211770;
      }

      v29 = *(this + 183);
      v30 = *(v29 + 416);
      v31 = *(v29 + 424);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *(this + 369);
      if (a9)
      {
        v33 = a9[20].mSelector;
      }

      else
      {
        v33 = 0;
      }

      v152 = a6;
      strcpy(buf, "cserbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v201 = (*(*v30 + 544))(v30, v32, v33, buf);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (v201)
      {
        v202 = *(this + 183);
        v203 = *(v202 + 416);
        v94 = *(v202 + 424);
        if (v94)
        {
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "cserbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        LODWORD(__p) = 0;
        v290[0] = 0;
        (*(*v203 + 568))(v203);
        goto LABEL_514;
      }
    }

    v189 = 1;
    goto LABEL_458;
  }

  if (mSelector == 1851878764)
  {
LABEL_184:
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v292 = 1024;
        v293 = 1477;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
      }

      v236 = __cxa_allocate_exception(0x10uLL);
      *v236 = off_1F5991DD8;
      v236[2] = 561211770;
    }

    v98 = *(this + 183);
    v99 = *(v98 + 416);
    v100 = *(v98 + 424);
    v101 = a6;
    if (v100)
    {
      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    strcpy(buf, "manlbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    __p = 0;
    v290[0] = 0;
    (*(*v99 + 568))(v99);
    goto LABEL_404;
  }

  if (mSelector != 1853059619)
  {
    if (mSelector != 1853059700)
    {
      goto LABEL_321;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInDevice.cpp";
        v292 = 1024;
        v293 = 1759;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
      }

      v249 = __cxa_allocate_exception(0x10uLL);
      *v249 = off_1F5991DD8;
      v249[2] = 561211770;
    }

    if ((v17 & 1) == 0)
    {
      v166 = *(this + 183);
      v167 = *(v166 + 416);
      v49 = *(v166 + 424);
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v168 = *(this + 369);
      if (a9)
      {
        v169 = a9[20].mSelector;
      }

      else
      {
        v169 = 0;
      }

      *buf = 0;
      LODWORD(__p) = 0;
      (*(*v167 + 568))(v167, v168, v169, a3, 0, 0, 8, &__p, buf);
      *a6 = *buf;
      if (!v49)
      {
        goto LABEL_418;
      }

      goto LABEL_416;
    }

    *a6 = v16;
LABEL_418:
    v62 = 8;
LABEL_448:
    *a5 = v62;
    return;
  }

  NumberStreams = HALS_IODevice::GetNumberStreams(this, 0);
  if (NumberStreams || HALS_IODevice::GetNumberStreams(this, 1))
  {
    v118 = HALS_IODevice::CopyStreamByIndex(this, NumberStreams == 0, 0);
    if (v118)
    {
      NumberAvailablePhysicalFormats = HALS_Stream::GetNumberAvailablePhysicalFormats(v118);
    }

    else
    {
      NumberAvailablePhysicalFormats = 0;
    }

    v290[0] = NumberAvailablePhysicalFormats;
    operator new[]();
  }

  strcpy(buf, "#rsnbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  if (a9)
  {
    v223 = a9[20].mSelector;
  }

  else
  {
    v223 = 0;
  }

  v224 = *(this + 183);
  v225 = *(v224 + 416);
  v226 = *(v224 + 424);
  if (v226)
  {
    atomic_fetch_add_explicit(&v226->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v227 = (*(*v225 + 544))(v225, *(this + 369), v223, buf);
  if (v226)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v226);
  }

  if (!v227)
  {
    if ((v27 & 1) == 0)
    {
      v231 = *(this + 183);
      v232 = *(v231 + 416);
      v233 = *(v231 + 424);
      if (v233)
      {
        atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      __p = 0x676C6F626E737274;
      LODWORD(v287) = 0;
      *v290 = 0;
      v289[1] = 0;
      (*(*v232 + 568))(v232);
      v28 = 0.0;
      if (v233)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v233);
      }
    }

    if (a4 < 0x10)
    {
      v62 = 0;
    }

    else
    {
      *a6 = v28;
      *(a6 + 1) = v28;
      v62 = 16;
    }

    goto LABEL_448;
  }

  v228 = *(this + 183);
  v229 = *(v228 + 416);
  v230 = *(v228 + 424);
  if (v230)
  {
    atomic_fetch_add_explicit(&v230->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v229 + 568))(v229, *(this + 369), v223, buf, 0, 0, a4, a5, a6);
  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }
}