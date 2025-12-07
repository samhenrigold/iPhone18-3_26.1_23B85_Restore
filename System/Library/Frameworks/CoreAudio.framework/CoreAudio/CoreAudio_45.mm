void sub_1DE563544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  v69 = STACK[0x440];
  if (STACK[0x440])
  {
    STACK[0x448] = v69;
    operator delete(v69);
  }

  if (STACK[0x428])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x428]);
  }

  v70 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v70;
    operator delete(v70);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&STACK[0x330]);
  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (STACK[0x248])
  {
    operator delete(STACK[0x248]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph5Graph13connect_nodesERKNSt3__110shared_ptrINS0_4NodeEEES7_NS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERNS1_15Resource_CountsEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *result, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(result + 1);
  v4 = *(a3 + 103);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 88);
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = v3[1];
  }

  if (v4 != v6 || ((v10 = *(a3 + 80), v8 = (a3 + 80), v9 = v10, v5 >= 0) ? (v11 = v8) : (v11 = v9), v7 >= 0 ? (v12 = v3) : (v12 = *v3), result = memcmp(v11, v12, v4), result))
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "Graph.cpp";
      v28 = 1024;
      v29 = 236;
      v30 = 2080;
      v31 = "connection.m_thread_group != group";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    std::logic_error::logic_error(&v18, "");
    v18.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5991430;
    v20 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v19);
    v32 = "auto AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)::(anonymous class)::operator()(Direction, const Graph_Wire::Connection &) const";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v34 = 236;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  return result;
}

void sub_1DE563CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a22);
  MEMORY[0x1E12C0F00](&a20);
  if (a11)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 113));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0,std::allocator<AMCP::Graph::Graph::connect_nodes(std::shared_ptr<AMCP::Graph::Node> const&,std::shared_ptr<AMCP::Graph::Node> const&,std::string,AMCP::Graph::Graph::Resource_Counts &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979ED8;
  a2[1] = v2;
  return result;
}

uint64_t *std::vector<AMCP::Wire_Identifier>::push_back[abi:ne200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x333333333333333)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v11;
    }

    v26 = v2;
    if (v13)
    {
      std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = 80 * v10;
    *(&v25 + 1) = 0;
    v15 = *a2;
    *(v14 + 16) = *(a2 + 2);
    *v14 = v15;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v16 = *(a2 + 3);
    *(v14 + 32) = *(a2 + 8);
    *(v14 + 24) = v16;
    v17 = *(a2 + 40);
    *(v14 + 56) = *(a2 + 7);
    *(v14 + 40) = v17;
    a2[3] = 0uLL;
    *(a2 + 5) = 0;
    v18 = *(a2 + 8);
    *(v14 + 72) = *(a2 + 18);
    *(v14 + 64) = v18;
    *&v25 = 80 * v10 + 80;
    v19 = v2[1];
    v20 = 80 * v10 + *v2 - v19;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(*v2, v19, v20);
    v21 = *v2;
    *v2 = v20;
    v22 = v2[2];
    v23 = v25;
    *(v2 + 1) = v25;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    v24[0] = v21;
    v24[1] = v21;
    result = std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(v24);
    v9 = v23;
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 3);
    *(v3 + 32) = *(a2 + 8);
    *(v3 + 24) = v6;
    v7 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 7);
    *(v3 + 40) = v7;
    a2[3] = 0uLL;
    *(a2 + 5) = 0;
    v8 = *(a2 + 8);
    *(v3 + 72) = *(a2 + 18);
    *(v3 + 64) = v8;
    v9 = v3 + 80;
  }

  v2[1] = v9;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<AMCP::Wire_Identifier>>,0>((v2 + 2));
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

std::string *std::vector<AMCP::Wire_Identifier>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AMCP::Wire_Identifier*>,std::__wrap_iter<AMCP::Wire_Identifier*>>(std::string *result, std::string *a2, std::string *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v8 = result;
    size = result->__r_.__value_.__l.__size_;
    v9 = result->__r_.__value_.__r.__words[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - size) >> 4)) >= a5)
    {
      v15 = size - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((size - a2) >> 4)) >= a5)
      {
        v17 = 5 * a5;
        std::vector<AMCP::Wire_Identifier>::__move_range(result, a2, result->__r_.__value_.__l.__size_, a2 + 80 * a5);
        v16 = (a3 + 16 * v17);
      }

      else
      {
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(a3 + v15, a4, size);
        v8[1] = result;
        if (v15 < 1)
        {
          return result;
        }

        std::vector<AMCP::Wire_Identifier>::__move_range(v8, a2, size, a2 + 80 * a5);
        v16 = (a3 + v15);
      }

      return std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(a3, v16, a2);
    }

    else
    {
      v11 = result->__r_.__value_.__r.__words[0];
      v12 = a5 - 0x3333333333333333 * ((size - result->__r_.__value_.__r.__words[0]) >> 4);
      if (v12 > 0x333333333333333)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x199999999999999)
      {
        v14 = 0x333333333333333;
      }

      else
      {
        v14 = v12;
      }

      v40 = v8;
      if (v14)
      {
        std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](v14);
      }

      v18 = 0;
      v19 = 16 * ((a2 - v11) >> 4);
      v36 = 0;
      v37 = v19;
      v38 = v19;
      v39 = 0;
      v20 = v19 + 80 * a5;
      v21 = 80 * a5;
      do
      {
        v22 = v19 + v18;
        v23 = a3 + v18;
        if (SHIBYTE(a3->__r_.__value_.__r.__words[v18 / 8 + 2]) < 0)
        {
          std::string::__init_copy_ctor_external((v19 + v18), *v23, *(v23 + 1));
        }

        else
        {
          v24 = *v23;
          *(v22 + 16) = *(v23 + 2);
          *v22 = v24;
        }

        v25 = v19 + v18;
        v26 = a3 + v18;
        v27 = *(&a3[1].__r_.__value_.__l.__data_ + v18);
        *(v25 + 32) = a3[1].__r_.__value_.__r.__words[v18 / 8 + 1];
        *(v25 + 24) = v27;
        if (a3[2].__r_.__value_.__s.__data_[v18 + 15] < 0)
        {
          std::string::__init_copy_ctor_external((v25 + 40), *(v26 + 5), *(v26 + 6));
        }

        else
        {
          v28 = *(v26 + 40);
          *(v25 + 56) = *(v26 + 7);
          *(v25 + 40) = v28;
        }

        v29 = v19 + v18;
        v30 = a3[2].__r_.__value_.__r.__words[v18 / 8 + 2];
        *(v29 + 72) = *(&a3[3].__r_.__value_.__l.__data_ + v18);
        *(v29 + 64) = v30;
        v18 += 80;
      }

      while (v21 != v18);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(a2, v8[1], v20);
      v31 = *v8;
      v32 = v20 + v8[1] - a2;
      v8[1] = a2;
      v33 = v37 + v31 - a2;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*>(v31, a2, v33);
      v34 = *v8;
      *v8 = v33;
      v8[1] = v32;
      v35 = v8[2];
      v8[2] = v39;
      v38 = v34;
      v39 = v35;
      v36 = v34;
      v37 = v34;
      return std::__split_buffer<AMCP::Wire_Identifier>::~__split_buffer(&v36);
    }
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = (a1 + v6);
      if (*(a1 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((a3 + v6), *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
      }

      v10 = a3 + v6;
      v11 = a1 + v6;
      v12 = *(a1 + v6 + 24);
      *(v10 + 32) = *(a1 + v6 + 32);
      *(v10 + 24) = v12;
      if (*(a1 + v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external((v10 + 40), *(v11 + 40), *(v11 + 48));
      }

      else
      {
        v13 = *(v11 + 40);
        *(v10 + 56) = *(v11 + 56);
        *(v10 + 40) = v13;
      }

      v14 = a3 + v6;
      v15 = *(a1 + v6 + 64);
      *(v14 + 72) = *(a1 + v6 + 72);
      *(v14 + 64) = v15;
      v6 += 80;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_1DE564398(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 80;
    std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<AMCP::Wire_Identifier>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v9 = *(v6 + 24);
      *(v7 + 32) = *(v6 + 32);
      *(v7 + 24) = v9;
      result = *(v6 + 40);
      *(v7 + 56) = *(v6 + 56);
      *(v7 + 40) = result;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v11 = *(v6 + 64);
      *(v7 + 72) = *(v6 + 72);
      *(v7 + 64) = v11;
      v6 += 80;
      v7 += 80;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v12 = 0;
    v13 = a4 - v4;
    do
    {
      v14 = v4 + v12;
      v15 = (v4 + v12 - 80);
      if (*(v4 + v12 - 57) < 0)
      {
        operator delete(*v15);
      }

      v16 = (v5 + v12 - 80);
      v17 = *v16;
      *(v4 + v12 - 64) = *(v5 + v12 - 64);
      *v15 = v17;
      *(v5 + v12 - 57) = 0;
      *v16 = 0;
      LODWORD(v16) = *(v5 + v12 - 48);
      *(v14 - 56) = *(v5 + v12 - 56);
      *(v14 - 48) = v16;
      v18 = (v14 - 40);
      if (*(v14 - 17) < 0)
      {
        operator delete(*v18);
      }

      v19 = v5 + v12;
      result = *(v5 + v12 - 40);
      *(v14 - 24) = *(v5 + v12 - 24);
      *v18 = result;
      *(v19 - 17) = 0;
      *(v19 - 40) = 0;
      v20 = v4 + v12;
      v21 = *(v5 + v12 - 16);
      *(v20 - 8) = *(v5 + v12 - 8);
      *(v20 - 16) = v21;
      v12 -= 80;
    }

    while (v13 != v12);
  }

  return result;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(std::string *__str, std::string *a2, std::string *this)
{
  v4 = __str;
  if (__str == a2)
  {
    return __str;
  }

  v5 = a2;
  do
  {
    std::string::operator=(this, v4);
    v6 = v4[1].__r_.__value_.__r.__words[1];
    this[1].__r_.__value_.__r.__words[0] = v4[1].__r_.__value_.__r.__words[0];
    LODWORD(this[1].__r_.__value_.__r.__words[1]) = v6;
    std::string::operator=((this + 40), (v4 + 40));
    data = v4[3].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__r.__words[2] = v4[2].__r_.__value_.__r.__words[2];
    LODWORD(this[3].__r_.__value_.__l.__data_) = data;
    this = (this + 80);
    v4 = (v4 + 80);
  }

  while (v4 != v5);
  return v5;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<AMCP::Wire_Identifier>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<AMCP::Wire_Identifier>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<AMCP::Wire_Identifier>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void AMCP::Graph::Graph::get_thread_group_id_from_upstream(uint64_t a1, void *a2, const void **a3, uint64_t a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, a3);
  if (v8 && *(v8 + 504) == 1)
  {
    v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v36 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      *v79 = 136315650;
      *&v79[4] = "Graph.cpp";
      *&v79[12] = 1024;
      *&v79[14] = 409;
      *&v79[18] = 2080;
      *&v79[20] = "not (not m_wire_index.is_connected(current_wire))";
      _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v79, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&__p, "", v44);
    std::logic_error::logic_error(&v70, &__p);
    v70.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(v73, &v70);
    *&v75[10] = 0;
    v76 = 0;
    v77 = 0;
    v78 = -1;
    *v73 = &unk_1F5991430;
    *&v75[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v79, v73);
    v80 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_upstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &) const";
    *&v81 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v81) = 409;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

  v9 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2 + 22, a3);
  if (!v9)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    return;
  }

  v11 = *(v9 + 5);
  v10 = *(v9 + 6);
  *&v72 = v11;
  *(&v72 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a4;
  v13 = *(a4 + 8);
  if (*a4 != v13)
  {
    while (*v12 != v11)
    {
      v12 += 2;
      if (v12 == v13)
      {
        goto LABEL_11;
      }
    }
  }

  if (v12 != v13)
  {
    v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v40 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *v79 = 136315650;
      *&v79[4] = "Graph.cpp";
      *&v79[12] = 1024;
      *&v79[14] = 417;
      *&v79[18] = 2080;
      *&v79[20] = "not (std::find(path.begin(), path.end(), source_node) == path.end())";
      _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Graph contains a cycle.", v79, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&__p, "Graph contains a cycle.", v49);
    std::logic_error::logic_error(&v70, &__p);
    v70.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(v73, &v70);
    *&v75[10] = 0;
    v76 = 0;
    v77 = 0;
    v78 = -1;
    *v73 = &unk_1F5991430;
    *&v75[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v79, v73);
    v80 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_upstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &) const";
    *&v81 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v81) = 417;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v52);
  }

LABEL_11:
  std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a4, &v72);
  if (*(v11 + 48) == 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_88;
  }

  if (*(v11 + 16) != 1)
  {
    if (*(v11 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v79, *(v11 + 24), *(v11 + 32));
    }

    else
    {
      *v79 = *(v11 + 24);
      *&v79[16] = *(v11 + 40);
    }

    *a1 = *v79;
    *(a1 + 16) = *&v79[16];
    *(a1 + 24) = 1;
    goto LABEL_88;
  }

  if (*(v11 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v79, *(v11 + 24), *(v11 + 32));
  }

  else
  {
    *v79 = *(v11 + 24);
    *&v79[16] = *(v11 + 40);
  }

  AMCP::Graph::Wire_Index::get_wires_for_node(&__p, a2 + 7, v79, 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 88) - *(v11 + 80)) >> 4), 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 64) - *(v11 + 56)) >> 4));
  if ((v79[23] & 0x80000000) != 0)
  {
    operator delete(*v79);
  }

  memset(&v70, 0, sizeof(v70));
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v14 = __p.__r_.__value_.__r.__words[2];
  if (!__p.__r_.__value_.__r.__words[2])
  {
    goto LABEL_82;
  }

  v15 = 0;
  do
  {
    if (*(v14 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, v14[2], v14[3]);
    }

    else
    {
      v64 = *(v14 + 2);
    }

    v65 = v14[5];
    v66 = *(v14 + 12);
    v16 = v14 + 7;
    if (*(v14 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v61, v14[7], v14[8]);
    }

    else
    {
      *&v61.__r_.__value_.__l.__data_ = *v16;
      v61.__r_.__value_.__r.__words[2] = v14[9];
    }

    v62 = v14[10];
    v63 = *(v14 + 22);
    *v79 = v64;
    memset(&v64, 0, sizeof(v64));
    *&v79[24] = v65;
    LODWORD(v80) = v66;
    v81 = *&v61.__r_.__value_.__l.__data_;
    v17 = v61.__r_.__value_.__r.__words[2];
    memset(&v61, 0, sizeof(v61));
    v84 = *(v14 + 22);
    v18 = v14[10];
    v82 = v17;
    v83 = v18;
    v19 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, v79);
    if (v19 && *(v19 + 504) == 1)
    {
      AMCP::Graph::Wire_Index::get_tgid_for_wire(&__str, (a2 + 7), v79);
      if (v15)
      {
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v23 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __str.__r_.__value_.__l.__size_;
        }

        if (size != v22 || ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v24 = &v70) : (v24 = v70.__r_.__value_.__r.__words[0]), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), v20 = memcmp(v24, p_str, size), v20))
        {
          v45 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v45 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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
            *v73 = 136315650;
            *&v73[4] = "Graph.cpp";
            v74 = 1024;
            *v75 = 449;
            *&v75[4] = 2080;
            *&v75[6] = "not (group == temp)";
            _os_log_error_impl(&dword_1DE1F9000, v48, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Node with Single_Thread policy should not have connected wires with different TIDs.", v73, 0x1Cu);
          }

          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v53, "Node with Single_Thread policy should not have connected wires with different TIDs.", v50);
          std::logic_error::logic_error(&v54, &v53);
          v54.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(v55, &v54);
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = -1;
          *v55 = &unk_1F5991430;
          *&v55[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v73, v55);
          v76 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_upstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &) const";
          v77 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
          v78 = 449;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v51);
        }

        if ((v23 & 0x80) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        std::string::operator=(&v70, &__str);
        if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_65:
          v15 = 1;
          goto LABEL_66;
        }
      }

      operator delete(__str.__r_.__value_.__l.__data_);
      goto LABEL_65;
    }

    if (v15)
    {
      goto LABEL_65;
    }

    v26 = *(v14 + 79);
    if (v26 >= 0)
    {
      v27 = *(v14 + 79);
    }

    else
    {
      v27 = v14[8];
    }

    v28 = *(a3 + 23);
    v29 = v28;
    if (v28 < 0)
    {
      v28 = a3[1];
    }

    if (v27 == v28 && (v26 >= 0 ? (v30 = v14 + 7) : (v30 = *v16), v29 >= 0 ? (v31 = a3) : (v31 = *a3), !memcmp(v30, v31, v27)))
    {
      v32 = v68;
      if (v68 >= v69)
      {
        v33 = std::vector<AMCP::Wire_Identifier>::__emplace_back_slow_path<AMCP::Wire_Identifier const&>(&v67, v79);
      }

      else
      {
        std::__construct_at[abi:ne200100]<AMCP::Wire_Identifier,AMCP::Wire_Identifier const&,AMCP::Wire_Identifier*>(v68, v79);
        v33 = (v32 + 80);
      }

      v15 = 0;
      v68 = v33;
    }

    else
    {
      v15 = 0;
    }

LABEL_66:
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81);
    }

    if ((v79[23] & 0x80000000) != 0)
    {
      operator delete(*v79);
    }

    v14 = *v14;
  }

  while (v14);
  if (v15)
  {
    *a1 = v70;
    memset(&v70, 0, sizeof(v70));
    v34 = 1;
    goto LABEL_83;
  }

  if (v67 != v68)
  {
    AMCP::Graph::Graph::get_thread_group_id_from_upstream(a1, a2, v67, a4);
    goto LABEL_84;
  }

LABEL_82:
  v34 = 0;
  *a1 = 0;
LABEL_83:
  *(a1 + 24) = v34;
LABEL_84:
  *v79 = &v67;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](v79);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(__p.__r_.__value_.__r.__words[2]);
  v35 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (v35)
  {
    operator delete(v35);
  }

LABEL_88:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE565174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  *(v61 - 192) = &a46;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100]((v61 - 192));
  if (a54 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(&a55);
  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  _Unwind_Resume(a1);
}

std::string *std::__construct_at[abi:ne200100]<AMCP::Wire_Identifier,AMCP::Wire_Identifier const&,AMCP::Wire_Identifier*>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
    *&this[1].__r_.__value_.__r.__words[2] = v6;
  }

  v7 = *(a2 + 8);
  LODWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 18);
  this[2].__r_.__value_.__r.__words[2] = v7;
  return this;
}

void sub_1DE565438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Graph::get_thread_group_id_from_downstream(std::string *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, a3);
  if (v10 && *(v10 + 504) == 1)
  {
    v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v47 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = *v49;
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    else
    {
      v50 = *v49;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *v86 = 136315650;
      *&v86[4] = "Graph.cpp";
      *&v86[12] = 1024;
      *&v86[14] = 477;
      *&v86[18] = 2080;
      *&v86[20] = "not (not m_wire_index.is_connected(current_wire))";
      _os_log_error_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v86, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v73, "", v55);
    std::logic_error::logic_error(&v77, &v73);
    v77.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v78, &v77);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = -1;
    v78.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v78.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v86, &v78);
    v87 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_downstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &, const std::set<Wire_Identifier> &) const";
    *&v88 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v88) = 477;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v76);
  }

  v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2 + 22, (a3 + 40));
  if (!v11)
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  v12 = *(v11 + 5);
  v13 = *(v11 + 6);
  v77.__vftable = v12;
  v77.__imp_.__imp_ = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  v15 = *(a4 + 8);
  if (*a4 != v15)
  {
    while (*v14 != v12)
    {
      v14 += 2;
      if (v14 == v15)
      {
        goto LABEL_11;
      }
    }
  }

  if (v14 != v15)
  {
    v51 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v51 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v53 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v52 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      v54 = *v53;
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    else
    {
      v54 = *v53;
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *v86 = 136315650;
      *&v86[4] = "Graph.cpp";
      *&v86[12] = 1024;
      *&v86[14] = 485;
      *&v86[18] = 2080;
      *&v86[20] = "not (std::find(path_to_context.begin(), path_to_context.end(), dest_node) == path_to_context.end())";
      _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Graph contains a cycle.", v86, 0x1Cu);
    }

    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v73, "Graph contains a cycle.", v56);
    std::logic_error::logic_error(&v75, &v73);
    v75.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v78, &v75);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = -1;
    v78.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v78.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v86, &v78);
    v87 = "std::optional<Thread_Group_ID> AMCP::Graph::Graph::get_thread_group_id_from_downstream(const Wire_Identifier &, std::vector<std::shared_ptr<Node>> &, const std::set<Wire_Identifier> &) const";
    *&v88 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    DWORD2(v88) = 485;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v76);
  }

LABEL_11:
  std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a4, &v77);
  v16 = *(v12 + 16);
  if (!v16)
  {
    if (*(v12 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v86, *(v12 + 24), *(v12 + 32));
    }

    else
    {
      *v86 = *(v12 + 24);
      *&v86[16] = *(v12 + 40);
    }

    *&a1->__r_.__value_.__l.__data_ = *v86;
    a1->__r_.__value_.__r.__words[2] = *&v86[16];
    a1[1].__r_.__value_.__s.__data_[0] = 1;
    goto LABEL_120;
  }

  if (*(v12 + 48) != 1 && v16 == 1)
  {
    if (*(v12 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v86, *(v12 + 24), *(v12 + 32));
    }

    else
    {
      *v86 = *(v12 + 24);
      *&v86[16] = *(v12 + 40);
    }

    AMCP::Graph::Wire_Index::get_wires_for_node(&v73, a2 + 7, v86, 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 88) - *(v12 + 80)) >> 4), 0x6DB6DB6DB6DB6DB7 * ((*(v12 + 64) - *(v12 + 56)) >> 4));
    if ((v86[23] & 0x80000000) != 0)
    {
      operator delete(*v86);
    }

    if (v74)
    {
      v59 = a4;
      v60 = v13;
      v61 = a1;
      v17 = v73.__r_.__value_.__r.__words[2];
      if (v73.__r_.__value_.__r.__words[2])
      {
        while (1)
        {
          if (*(v17 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v78, v17[2], v17[3]);
          }

          else
          {
            v78 = *(v17 + 2);
          }

          v79 = v17[5];
          LODWORD(v80) = *(v17 + 12);
          if (*(v17 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&v83, v17[7], v17[8]);
          }

          else
          {
            v83 = *(v17 + 7);
          }

          v84 = v17[10];
          v85 = *(v17 + 22);
          *v86 = v78;
          memset(&v78, 0, sizeof(v78));
          *&v86[24] = v79;
          LODWORD(v87) = v80;
          v88 = *&v83.__r_.__value_.__l.__data_;
          v18 = v83.__r_.__value_.__r.__words[2];
          memset(&v83, 0, sizeof(v83));
          v91 = *(v17 + 22);
          v19 = v17[10];
          v89 = v18;
          v90 = v19;
          v20 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a2 + 12, v86);
          if (v20)
          {
            v21 = *(v20 + 504);
          }

          else
          {
            v21 = 0;
          }

          if (SHIBYTE(v89) < 0)
          {
            operator delete(v88);
          }

          if ((v86[23] & 0x80000000) != 0)
          {
            operator delete(*v86);
          }

          if (v21)
          {
            break;
          }

          v17 = *v17;
          if (!v17)
          {
            v22 = v73.__r_.__value_.__r.__words[2];
            goto LABEL_45;
          }
        }

        if (*(v17 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v70, v17[2], v17[3]);
        }

        else
        {
          v70 = *(v17 + 2);
        }

        v71 = v17[5];
        v72 = *(v17 + 12);
        if (*(v17 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v69, v17[7], v17[8]);
        }

        else
        {
          v69 = *(v17 + 7);
        }

        *v86 = *&v70.__r_.__value_.__l.__data_;
        v34 = v70.__r_.__value_.__r.__words[2];
        memset(&v70, 0, sizeof(v70));
        *&v86[16] = v34;
        *&v86[24] = v71;
        LODWORD(v87) = v72;
        v88 = *&v69.__r_.__value_.__l.__data_;
        v35 = v69.__r_.__value_.__r.__words[2];
        memset(&v69, 0, sizeof(v69));
        v36 = v17[10];
        v91 = *(v17 + 22);
        v89 = v35;
        v90 = v36;
        AMCP::Graph::Wire_Index::get_tgid_for_wire(&v78, (a2 + 7), v86);
        *v61 = v78;
        v61[1].__r_.__value_.__s.__data_[0] = 1;
        if ((SHIBYTE(v89) & 0x80000000) == 0)
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      v22 = 0;
LABEL_45:
      v67 = a5;
      p_p = &__p;
      if (*(v12 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        __p = *(v12 + 24);
      }

      if (v22)
      {
        v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v57 = a5;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        do
        {
          v25 = *(v22 + 39);
          v26 = v25;
          v27 = v22[3];
          if ((v25 & 0x80u) != 0)
          {
            v25 = v22[3];
          }

          if (v25 == size)
          {
            v28 = v22[2];
            v29 = v26 >= 0 ? v22 + 2 : v22[2];
            if (!memcmp(v29, p_p, size))
            {
              if (v26 < 0)
              {
                std::string::__init_copy_ctor_external(&v78, v28, v27);
              }

              else
              {
                v78 = *(v22 + 2);
              }

              v79 = v22[5];
              LODWORD(v80) = *(v22 + 12);
              if (*(v22 + 79) < 0)
              {
                std::string::__init_copy_ctor_external(&v83, v22[7], v22[8]);
              }

              else
              {
                v83 = *(v22 + 7);
              }

              v84 = v22[10];
              v85 = *(v22 + 22);
              *v86 = v78;
              memset(&v78, 0, sizeof(v78));
              *&v86[24] = v79;
              LODWORD(v87) = v80;
              v88 = *&v83.__r_.__value_.__l.__data_;
              v30 = v83.__r_.__value_.__r.__words[2];
              memset(&v83, 0, sizeof(v83));
              v91 = *(v22 + 22);
              v31 = v22[10];
              v89 = v30;
              v90 = v31;
              v32 = std::__tree<AMCP::Wire_Identifier>::find<AMCP::Wire_Identifier>(v67, v86);
              if (SHIBYTE(v89) < 0)
              {
                operator delete(v88);
              }

              if ((v86[23] & 0x80000000) != 0)
              {
                operator delete(*v86);
              }

              if (v67 + 8 != v32)
              {
                break;
              }
            }
          }

          v22 = *v22;
        }

        while (v22);
        a5 = v57;
        v33 = v58;
      }

      else
      {
        v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v33 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        goto LABEL_107;
      }

      v22 = v73.__r_.__value_.__r.__words[2];
      if (*(v12 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v66, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v66 = *(v12 + 24);
      }

      v37 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      if (v22)
      {
        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v38 = v66.__r_.__value_.__l.__size_;
        }

        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v66;
        }

        else
        {
          v39 = v66.__r_.__value_.__r.__words[0];
        }

        do
        {
          v40 = *(v22 + 39);
          v41 = v40;
          if ((v40 & 0x80u) != 0)
          {
            v40 = v22[3];
          }

          if (v40 == v38)
          {
            v42 = v41 >= 0 ? v22 + 2 : v22[2];
            if (!memcmp(v42, v39, v38))
            {
              break;
            }
          }

          v22 = *v22;
        }

        while (v22);
      }

      if (v37 < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
LABEL_107:
        if (*(v22 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v63, v22[2], v22[3]);
        }

        else
        {
          v63 = *(v22 + 2);
        }

        v64 = v22[5];
        v65 = *(v22 + 12);
        if (*(v22 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v62, v22[7], v22[8]);
        }

        else
        {
          v62 = *(v22 + 7);
        }

        *v86 = *&v63.__r_.__value_.__l.__data_;
        v43 = v63.__r_.__value_.__r.__words[2];
        memset(&v63, 0, sizeof(v63));
        *&v86[16] = v43;
        *&v86[24] = v64;
        LODWORD(v87) = v65;
        v88 = *&v62.__r_.__value_.__l.__data_;
        v44 = v62.__r_.__value_.__r.__words[2];
        memset(&v62, 0, sizeof(v62));
        v45 = v22[10];
        v91 = *(v22 + 22);
        v89 = v44;
        v90 = v45;
        AMCP::Graph::Graph::get_thread_group_id_from_downstream(v61, a2, v86, v59, a5);
        v13 = v60;
        if ((SHIBYTE(v89) & 0x80000000) == 0)
        {
LABEL_115:
          if ((v86[23] & 0x80000000) != 0)
          {
            operator delete(*v86);
          }

          goto LABEL_118;
        }

LABEL_114:
        operator delete(v88);
        goto LABEL_115;
      }

      v61->__r_.__value_.__s.__data_[0] = 0;
      v61[1].__r_.__value_.__s.__data_[0] = 0;
      v13 = v60;
    }

    else
    {
      a1->__r_.__value_.__s.__data_[0] = 0;
      a1[1].__r_.__value_.__s.__data_[0] = 0;
    }

LABEL_118:
    std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(v73.__r_.__value_.__r.__words[2]);
    v46 = v73.__r_.__value_.__r.__words[0];
    v73.__r_.__value_.__r.__words[0] = 0;
    if (v46)
    {
      operator delete(v46);
    }

    goto LABEL_120;
  }

  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
LABEL_120:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1DE566034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(&a48);
  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<AMCP::Wire_Identifier>::find<AMCP::Wire_Identifier>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(v3 + 32, v3 + 72, a2, a2 + 40);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v2 == v5 || (std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a2, a2 + 40, v5 + 32, v5 + 72) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 24;
  v17 = a1;
  v18 = a1 + 24;
  v9 = a1 + 32;
  v19 = a1 + 32;
  v10 = a3 + 24;
  v11 = a3 + 32;
  v14 = a3;
  v15 = a3 + 24;
  v16 = a3 + 32;
  if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14) & 0x80) == 0)
  {
    v17 = a3;
    v18 = v10;
    v19 = v11;
    v14 = a1;
    v15 = v8;
    v16 = v9;
    v12 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14);
    if ((v12 & 0x80) != 0)
    {
      return (v12 >> 7) & 1;
    }

    v17 = a2;
    v18 = a2 + 24;
    v19 = a2 + 32;
    v14 = a4;
    v15 = a4 + 24;
    v16 = a4 + 32;
    if ((std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14) & 0x80) == 0)
    {
      v17 = a4;
      v18 = a4 + 24;
      v19 = a4 + 32;
      v14 = a2;
      v15 = a2 + 24;
      v16 = a2 + 32;
      v12 = std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(&v17, &v14);
      return (v12 >> 7) & 1;
    }
  }

  return 255;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<std::string const&,unsigned long const&,AMCP::Direction const&,std::string const&,unsigned long const&,AMCP::Direction const&,0ul,1ul,2ul>(uint64_t a1, uint64_t a2)
{
  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, *a2);
  if (!result)
  {
    v5 = **(a1 + 8);
    v6 = **(a2 + 8);
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = **(a1 + 16);
      v8 = **(a2 + 16);
      if (v7 < v8)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      if (v7 == v8)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

void AMCP::Graph::Graph::connect_downstream_nodes(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*(*a3 + 48) != 1 && *(v5 + 16) == 1)
  {
    if (*(v5 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v49, *(v5 + 24), *(v5 + 32));
      v5 = *a3;
    }

    else
    {
      v49 = *(v5 + 24);
    }

    AMCP::Graph::Wire_Index::get_wires_for_node(&v56, a1 + 7, &v49, 0, 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 64) - *(v5 + 56)) >> 4));
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v11 = v57;
    if (v57)
    {
      do
      {
        if (v11[39] < 0)
        {
          std::string::__init_copy_ctor_external(&v46, *(v11 + 2), *(v11 + 3));
        }

        else
        {
          v46 = *(v11 + 16);
        }

        v47 = *(v11 + 5);
        v48 = *(v11 + 12);
        if (v11[79] < 0)
        {
          std::string::__init_copy_ctor_external(&v43, *(v11 + 7), *(v11 + 8));
        }

        else
        {
          v43 = *(v11 + 56);
        }

        v44 = *(v11 + 10);
        v45 = *(v11 + 22);
        v49 = v46;
        memset(&v46, 0, sizeof(v46));
        v50 = v47;
        v51 = v48;
        v52 = *&v43.__r_.__value_.__l.__data_;
        v12 = v43.__r_.__value_.__r.__words[2];
        memset(&v43, 0, sizeof(v43));
        v55 = *(v11 + 22);
        v13 = *(v11 + 10);
        v53 = v12;
        v54 = v13;
        v14 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a1 + 12, &v49);
        if (v14 && *(v14 + 504) == 1)
        {
          AMCP::Graph::Wire_Index::get_tgid_for_wire(__p, (a1 + 7), &v49);
          v16 = v42;
          if ((v42 & 0x80u) == 0)
          {
            v17 = v42;
          }

          else
          {
            v17 = __p[1];
          }

          v18 = *(a2 + 23);
          v19 = v18;
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(a2 + 8);
          }

          if (v17 != v18 || ((v42 & 0x80u) == 0 ? (v20 = __p) : (v20 = __p[0]), v19 >= 0 ? (v21 = a2) : (v21 = *a2), v15 = memcmp(v20, v21, v17), v15))
          {
            if (*(*a3 + 48) != 1)
            {
              v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v26 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v15);
              }

              v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
                v29 = *v28;
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              else
              {
                v29 = *v28;
              }

              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v59 = "Graph.cpp";
                v60 = 1024;
                v61 = 552;
                v62 = 2080;
                v63 = "not (tgid == group || current_node->get_thread_policy() == Node_Thread_Policy::Node_Is_Shared_Across_Threads)";
                _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Conflicting TGIDs", buf, 0x1Cu);
              }

              __cxa_allocate_exception(0x40uLL);
              caulk::make_string(&v33, "Conflicting TGIDs", v30);
              std::logic_error::logic_error(&v34, &v33);
              v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v35, &v34);
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = -1;
              v35.__vftable = &unk_1F5991430;
              v36 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
              v64 = "void AMCP::Graph::Graph::connect_downstream_nodes(const Thread_Group_ID &, const std::shared_ptr<Node> &, const std::set<Wire_Identifier> &, Resource_Counts &)";
              v65 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
              v66 = 552;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
            }
          }

          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v22 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, v11 + 7);
          if (v22)
          {
            v23 = v22;
            if (a4 + 8 != std::__tree<AMCP::Wire_Identifier>::find<AMCP::Wire_Identifier>(a4, &v49))
            {
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 8));
              }

              else
              {
                v31 = *a2;
              }

              AMCP::Graph::Graph::connect_nodes(a1, a3, v23 + 5, &v31, a5);
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v31.__r_.__value_.__l.__data_);
              }

              AMCP::Graph::Graph::connect_downstream_nodes(a1, a2, v23 + 5, a4, a5);
            }
          }
        }

        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        v11 = *v11;
      }

      while (v11);
      v24 = v57;
    }

    else
    {
      v24 = 0;
    }

    std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(v24);
    v25 = v56;
    v56 = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }
}

void AMCP::Graph::Graph::calculate_tgid_and_connect(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>((a1 + 96), a2);
  if (!v6 || (v6[63] & 1) == 0)
  {
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((a1 + 176), a2);
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((a1 + 176), a2 + 5);
    if (!v7)
    {
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v8);
      }

      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v12;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v24[0]) = 136315650;
        *(v24 + 4) = "Graph.cpp";
        WORD2(v24[1]) = 1024;
        *(&v24[1] + 6) = 607;
        WORD1(v24[2]) = 2080;
        *(&v24[2] + 4) = "not (has_src)";
        _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Origins must have source nodes", v24, 0x1Cu);
      }

      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&__p, "Origins must have source nodes", v14);
      std::logic_error::logic_error(&v17, &__p);
      v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v19, &v17);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = -1;
      v19.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v19.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v24, &v19);
      v24[4] = "void AMCP::Graph::Graph::calculate_tgid_and_connect(Wire_Identifier, const std::set<Wire_Identifier> &, Resource_Counts &)";
      v24[5] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
      v25 = 607;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
    }

    if (v8 && (0x6DB6DB6DB6DB6DB7 * ((*(v7[5] + 64) - *(v7[5] + 56)) >> 4)) > a2[3] && (0x6DB6DB6DB6DB6DB7 * ((*(*(v8 + 5) + 88) - *(*(v8 + 5) + 80)) >> 4)) > a2[8])
    {
      v9 = *(v8 + 6);
      v24[0] = *(v8 + 5);
      v24[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v17.__vftable = 0;
      v17.__imp_.__imp_ = 0;
      v18 = 0;
      std::vector<std::shared_ptr<AMCP::Graph::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<AMCP::Graph::Node> const*,std::shared_ptr<AMCP::Graph::Node> const*>(&v17, v24, &v24[2]);
    }
  }
}

void sub_1DE5674D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, void *a42, void *a43, int a44, __int16 a45, char a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v56 - 160);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a49);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v55)
  {
    __cxa_free_exception(v54);
  }

  if (a32 == 1 && a31 < 0)
  {
    operator delete(a26);
  }

  *(v56 - 160) = &a34;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v56 - 160));
  if (a48 == 1 && a47 < 0)
  {
    operator delete(a42);
  }

  *(v56 - 160) = &a39;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v56 - 160));
  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph::connect_path<std::__wrap_iter<std::shared_ptr<AMCP::Graph::Node> *>>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  if (a3 + 2 != a4)
  {
    v11 = a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      AMCP::Graph::Graph::connect_nodes(a1, v11, v11 + 2, &__p, a6);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      a3 = v11 + 2;
      v12 = v11 + 4;
      v11 += 2;
    }

    while (v12 != a4);
  }

  AMCP::Graph::Graph::connect_downstream_nodes(a1, a2, a3, a5, a6);
}

void sub_1DE567870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Graph::connect_path<std::reverse_iterator<std::__wrap_iter<std::shared_ptr<AMCP::Graph::Node> *>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = a4;
  if (a4 - 16 != a6)
  {
    v14 = a4;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      v10 = v14 - 16;
      AMCP::Graph::Graph::connect_nodes(a1, (v14 - 16), (v14 - 32), &__p, a8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v14 -= 16;
    }

    while (v10 - 16 != a6);
  }

  AMCP::Graph::Graph::connect_downstream_nodes(a1, a2, (v10 - 16), a7, a8);
}

void sub_1DE56796C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<AMCP::Graph::Node>>,std::shared_ptr<AMCP::Graph::Node>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

uint64_t *std::__tree<AMCP::Wire_Identifier>::__emplace_unique_key_args<AMCP::Wire_Identifier,AMCP::Wire_Identifier>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = std::__tree<AMCP::Wire_Identifier>::__find_equal<AMCP::Wire_Identifier>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void std::__tree<AMCP::Wire_Identifier>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<AMCP::Wire_Identifier>::destroy(*a1);
    std::__tree<AMCP::Wire_Identifier>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>((a1 + 4));

    operator delete(a1);
  }
}

void *std::__tree<AMCP::Wire_Identifier>::__find_equal<AMCP::Wire_Identifier>(uint64_t a1, void *a2, uint64_t a3)
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
        if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>(a3, a3 + 40, (v4 + 4), (v4 + 9)) & 0x80) == 0)
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

      if ((std::__tuple_compare_three_way[abi:ne200100]<AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,AMCP::Terminal_Identifier const&,0ul,1ul>((v7 + 4), (v7 + 9), a3, a3 + 40) & 0x80) == 0)
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

uint64_t std::unique_ptr<std::__tree_node<AMCP::Wire_Identifier,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<AMCP::Wire_Identifier,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::deque<std::shared_ptr<AMCP::Graph::Node>>::push_back(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x100)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v13);
    }

    a1[4] = v8 - 256;
    v15 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v15);
    v5 = a1[1];
    v7 = a1[5];
    v9 = v7 + a1[4];
  }

  v14 = *a2;
  *(*(v5 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9) = *a2;
  if (*(&v14 + 1))
  {
    atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = a1[5];
  }

  a1[5] = v7 + 1;
}

void sub_1DE5680F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph::find_nodes_connected_to_context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  v3[3] = v4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a3, *(a3 + 8));
  }

  else
  {
    v5 = *a3;
  }

  v3[0] = v3;
  v3[1] = v3;
  v3[2] = 0;
  std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(&v5);
}

void sub_1DE569088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a11);
  std::__tree<AMCP::Wire_Identifier>::destroy(a65);
  _Unwind_Resume(a1);
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void **std::__list_imp<std::string>::clear(void **result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 1);
    v3 = *result;
    v3[1] = v2;
    *v2 = v3;
    v1[2] = 0;
    while (result != v1)
    {
      v4 = result[1];
      std::__list_imp<std::string>::__delete_node[abi:ne200100](result);
      result = v4;
    }
  }

  return result;
}

void AMCP::Graph::Graph::update_context(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, a2);
  if (v5)
  {
    v6 = *(v5 + 5);
    v7 = *(v5 + 6);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (!*(v6 + 16))
    {
      AMCP::Graph::Graph::find_nodes_connected_to_context(&v24, a1, a2);
    }

    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      v32 = 136315906;
      v33 = "Graph.cpp";
      v34 = 1024;
      v35 = 1013;
      v36 = 2080;
      v37 = "not (root->get_node_type() == AMCP::Node_Type::IOContext)";
      v38 = 2080;
      *v39 = v19;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Root node must be an IOContextNode: %s", &v32, 0x26u);
    }

    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    caulk::make_string(&v24, "Root node must be an IOContextNode: %s", v20, v21);
    std::logic_error::logic_error(&v25, &v24);
    v25.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v26, &v25);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v31) = -1;
    v26.__vftable = &unk_1F5991430;
    v27 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v32, &v26);
    *&v39[2] = "void AMCP::Graph::Graph::update_context(const Graph_Node_UID &, const std::function<Timebase_Ref (const Graph_Node_UID &)> &, std::vector<std::string> &, Resource_Counts &)";
    v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v41 = 1013;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v23);
  }

  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v32 = 136315906;
    v33 = "Graph.cpp";
    v34 = 1024;
    v35 = 1011;
    v36 = 2080;
    v37 = "not (m_nodes_by_uid.find(root_node) != m_nodes_by_uid.end())";
    v38 = 2080;
    *v39 = v16;
    _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Root node not found in graph: %s", &v32, 0x26u);
  }

  __cxa_allocate_exception(0x40uLL);
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  caulk::make_string(&v24, "Root node not found in graph: %s", v17, v18);
  std::logic_error::logic_error(&v25, &v24);
  v25.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
  std::logic_error::logic_error(&v26, &v25);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  LODWORD(v31) = -1;
  v26.__vftable = &unk_1F5991430;
  v27 = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v32, &v26);
  *&v39[2] = "void AMCP::Graph::Graph::update_context(const Graph_Node_UID &, const std::function<Timebase_Ref (const Graph_Node_UID &)> &, std::vector<std::string> &, Resource_Counts &)";
  v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
  v41 = 1011;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(v23);
}

void sub_1DE56C364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a65);
  if (STACK[0x238])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x238]);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  AMCP::Graph::calculate_clocks(std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::unordered_set<std::string>,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0::~$_0(v67 - 256);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a33);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(&a39);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a44);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::calculate_clocks(std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::unordered_set<std::string>,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 16);
  return a1;
}

const void **std::vector<std::shared_ptr<AMCP::Graph::Node>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void AMCP::Graph::topological_sort(__int128 *a1, uint64_t a2, void *a3, void *a4, const void **a5, void *a6)
{
  v11 = *a1;
  if (*(*a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v11[1];
  }

  v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a6, &v30);
  v13 = v12;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if (v13)
    {
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  v14 = *a1;
  v15 = *(*a1 + 24 * a2 + 64) - *(*a1 + 24 * a2 + 56);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = 0;
  v26 = 0x6DB6DB6DB6DB6DB7 * (v15 >> 4);
  do
  {
    v17 = *a1;
    if (*(*a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, v17[1].__r_.__value_.__l.__data_, v17[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = v17[1];
    }

    *&v30.__r_.__value_.__l.__data_ = *&v29.__r_.__value_.__l.__data_;
    v18 = v29.__r_.__value_.__r.__words[2];
    memset(&v29, 0, sizeof(v29));
    v30.__r_.__value_.__r.__words[2] = v18;
    v31 = v16;
    v32 = a2;
    AMCP::Graph::Wire_Index::get_wires_for_terminal(&v33, a4, &v30);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v19 = v33;
    v20 = v34;
    v21 = v33;
    if (v33 != v34)
    {
      while (1)
      {
        v22 = *v21;
        if (*(*v21 + 408) == 1)
        {
          break;
        }

LABEL_32:
        v21 += 8;
        if (v21 == v20)
        {
          goto LABEL_33;
        }
      }

      if (a2 == 1)
      {
        if (*(v22 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *v22, *(v22 + 8));
          goto LABEL_25;
        }

        *&v30.__r_.__value_.__l.__data_ = *v22;
        v23 = *(v22 + 16);
      }

      else
      {
        if (*(v22 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *(v22 + 40), *(v22 + 48));
          goto LABEL_25;
        }

        *&v30.__r_.__value_.__l.__data_ = *(v22 + 40);
        v23 = *(v22 + 56);
      }

      v30.__r_.__value_.__r.__words[2] = v23;
LABEL_25:
      __p = v30;
      v24 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, &__p);
      if (v24)
      {
        v25 = v24[6];
        v30.__r_.__value_.__r.__words[0] = v24[5];
        v30.__r_.__value_.__l.__size_ = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::Graph::topological_sort(&v30, a2, a3, a4, a5, a6);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_32;
    }

LABEL_33:
    if (v19)
    {
      operator delete(v19);
    }

    ++v16;
  }

  while (v16 != v26);
  v14 = *a1;
LABEL_37:
  if (*(v14 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *(v14 + 24), *(v14 + 32));
  }

  else
  {
    v30 = *(v14 + 24);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a6, &v30, &v30);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a5, a1);
}

void sub_1DE56CDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest>::__on_zero_shared(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = pthread_self();
  is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v2, v3);
  if (is_thread_configured_for_realtime)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
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
      *buf = 136315650;
      *&buf[4] = "Manifest.cpp";
      v28 = 1024;
      v29 = 135;
      v30 = 2080;
      v31 = "not (not AMCP::Utility::is_thread_configured_for_realtime(pthread_self()))";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v15);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v32 = "AMCP::Graph::Manifest::~Manifest()";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v34 = 135;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  if (*(a1 + 24))
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
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
      *buf = 136315650;
      *&buf[4] = "Manifest.cpp";
      v28 = 1024;
      v29 = 138;
      v30 = 2080;
      v31 = "not (m_processing_state == Processing_State::Idle)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to delete an active manifiest", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "Attempt to delete an active manifiest", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v32 = "AMCP::Graph::Manifest::~Manifest()";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v34 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table(a1 + 56);
  *buf = a1 + 32;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1DE56D298(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979F68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v9 = v2[5];
        *(v6 + 12) = *(v2 + 12);
        v6[5] = v9;
        if (v6 != v2)
        {
          v11 = v2[7];
          v10 = v2[8];
          v12 = v10 - v11;
          v13 = v6[7];
          if (v6[9] - v13 < (v10 - v11))
          {
            v14 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 4);
            std::vector<AMCP::Wire_Identifier>::__vdeallocate(v6 + 7);
            if (v14 <= 0x333333333333333)
            {
              v15 = 0x999999999999999ALL * ((v6[9] - v6[7]) >> 4);
              if (v15 <= v14)
              {
                v15 = v14;
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v6[9] - v6[7]) >> 4) >= 0x199999999999999)
              {
                v16 = 0x333333333333333;
              }

              else
              {
                v16 = v15;
              }

              std::vector<AMCP::Wire_Identifier>::__vallocate[abi:ne200100](v6 + 7, v16);
            }

            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v17 = v6[8] - v13;
          if (v17 >= v12)
          {
            std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(v2[7], v2[8], v13);
            v20 = v19;
            for (j = v6[8]; j != v20; std::__destroy_at[abi:ne200100]<AMCP::Wire_Identifier,0>(j))
            {
              j -= 80;
            }

            v6[8] = v20;
          }

          else
          {
            v18 = std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Identifier *,AMCP::Wire_Identifier *,AMCP::Wire_Identifier *>(v2[7], (v11 + v17), v13);
            v6[8] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Identifier>,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(v18, v10, v6[8]);
          }
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56D5E0()
{
  if (*(v0 + 39) < 0)
  {
    operator delete(*(v0 + 16));
  }

  JUMPOUT(0x1DE56D5FCLL);
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,void *> *>>(void *a1, void **a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v9 = v2[5];
        *(v6 + 12) = *(v2 + 12);
        v6[5] = v9;
        std::string::operator=((v6 + 7), (v2 + 7));
        v10 = v2[10];
        *(v6 + 22) = *(v2 + 22);
        v6[10] = v10;
        std::string::operator=(v6 + 4, v2 + 4);
        v11 = v2[15];
        *(v6 + 32) = *(v2 + 32);
        v6[15] = v11;
        std::string::operator=((v6 + 17), (v2 + 17));
        v12 = v2[20];
        *(v6 + 42) = *(v2 + 42);
        v6[20] = v12;
        if (v6 == v2)
        {
          v15 = *(v2 + 14);
          v16 = *(v2 + 15);
          *(v6 + 256) = *(v2 + 256);
          *(v6 + 14) = v15;
          *(v6 + 15) = v16;
        }

        else
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6 + 22, v2[22], v2[23], (v2[23] - v2[22]) >> 2);
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6 + 25, v2[25], v2[26], (v2[26] - v2[25]) >> 2);
          v13 = *(v2 + 14);
          v14 = *(v2 + 15);
          *(v6 + 256) = *(v2 + 256);
          *(v6 + 14) = v13;
          *(v6 + 15) = v14;
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v6 + 11, v2[33], v2[34], 0xAAAAAAAAAAAAAAABLL * ((v2[34] - v2[33]) >> 3));
        }

        if (*(v6 + 504) == *(v2 + 504))
        {
          if (*(v6 + 504))
          {
            AMCP::Graph::Graph_Wire::Connection::operator=((v6 + 36), (v2 + 36));
          }
        }

        else
        {
          if (*(v6 + 504))
          {
            v17 = v6[60];
            if (v17)
            {
              v6[61] = v17;
              operator delete(v17);
            }

            v18 = v6[57];
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v19 = v6[49];
            if (v19)
            {
              v6[50] = v19;
              operator delete(v19);
            }

            if (*(v6 + 391) < 0)
            {
              operator delete(v6[46]);
            }

            if (*(v6 + 351) < 0)
            {
              operator delete(v6[41]);
            }

            if (*(v6 + 311) < 0)
            {
              operator delete(v6[36]);
            }

            v20 = 0;
          }

          else
          {
            AMCP::Graph::Graph_Wire::Connection::Connection(v6 + 12, (v2 + 36));
            v20 = 1;
          }

          *(v6 + 504) = v20;
        }

        v21 = v2[64];
        v22 = v2[65];
        if (v22)
        {
          atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
        }

        v6[64] = v21;
        v23 = v6[65];
        v6[65] = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        v24 = v2[66];
        v25 = v2[67];
        if (v25)
        {
          atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
        }

        v6[66] = v24;
        v26 = v6[67];
        v6[67] = v25;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56DAA8(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  AMCP::Wire_Identifier::~Wire_Identifier((v1 + 16));
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 16), (v2 + 2));
        v9 = v2[5];
        *(v6 + 12) = *(v2 + 12);
        *(v6 + 5) = v9;
        std::string::operator=((v6 + 56), (v2 + 7));
        v10 = v2[10];
        *(v6 + 22) = *(v2 + 22);
        *(v6 + 10) = v10;
        v12 = v2[12];
        v11 = v2[13];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = *(v6 + 13);
        *(v6 + 12) = v12;
        *(v6 + 13) = v11;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56DD68(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *>>(void *a1, __int128 *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v10[0] = v6 + 2;
        v10[1] = v6 + 5;
        std::pair<std::string &,std::shared_ptr<AMCP::Graph::Node> &>::operator=[abi:ne200100]<std::string const,std::shared_ptr<AMCP::Graph::Node>,0>(v10, (v2 + 1));
        v8 = *v6;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void sub_1DE56DEF4(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__deallocate_node(v1);
  __cxa_rethrow();
}

void sub_1DE56DF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        *(v6 + 4) = *(v2 + 4);
        std::string::operator=(v6 + 1, v2 + 1);
        v8 = *v6;
        v9 = *(v6 + 4);
        v6[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_prepare(a1, v9, v6 + 4);
        std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_perform(a1, v6, inserted);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *,long>>(uint64_t **result, __int128 *a2, __int128 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v14[0] = (v8 + 4);
          v14[1] = (v8 + 7);
          std::pair<std::string &,std::shared_ptr<AMCP::Graph::Node> &>::operator=[abi:ne200100]<std::string const,std::shared_ptr<AMCP::Graph::Node>,0>(v14, (v9 + 2));
          v10 = v17;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, v14, v17 + 4);
          std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v5, v14[0], leaf_high, v10);
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = *(v9 + 1);
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          v8 = v17;
          if (v17)
          {
            v13 = a2 == a3;
          }

          else
          {
            v13 = 1;
          }

          v9 = a2;
        }

        while (!v13);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void sub_1DE56E2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph_State_Data::~Graph_State_Data(AMCP::Graph::Graph_State_Data *this)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(*(this + 29));
  std::__tree<std::__value_type<unsigned int,std::vector<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::vector<unsigned int>>>>::destroy(*(this + 26));
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(this + 20);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(this);
}

uint64_t std::pair<std::string &,std::shared_ptr<AMCP::Graph::Node> &>::operator=[abi:ne200100]<std::string const,std::shared_ptr<AMCP::Graph::Node>,0>(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  data = a2[1].__r_.__value_.__l.__data_;
  size = a2[1].__r_.__value_.__l.__size_;
  if (size)
  {
    atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[1];
  *v4 = data;
  v4[1] = size;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v35 = a2 + 2;
  v36 = std::hash<AMCP::Wire_Identifier>::operator()((a2 + 2));
  a2[1] = v36;
  v4 = *(a1 + 8);
  v5 = (*(a1 + 24) + 1);
  v6 = *(a1 + 32);
  v34 = a2;
  if (!v4 || (v6 * v4) < v5)
  {
    v7 = 1;
    if (v4 >= 3)
    {
      v7 = (v4 & (v4 - 1)) != 0;
    }

    v8 = v7 | (2 * v4);
    v9 = vcvtps_u32_f32(v5 / v6);
    if (v8 <= v9)
    {
      prime = v9;
    }

    else
    {
      prime = v8;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v4 = *(a1 + 8);
    }

    if (prime > v4)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v4)
    {
      v11 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v4 < 3 || (v12 = vcnt_s8(v4), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
      {
        v11 = std::__next_prime(v11);
      }

      else
      {
        v13 = 1 << -__clz(v11 - 1);
        if (v11 >= 2)
        {
          v11 = v13;
        }
      }

      if (prime <= v11)
      {
        prime = v11;
      }

      if (prime >= v4)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v14 = *a1;
        *a1 = 0;
        if (v14)
        {
          operator delete(v14);
        }

        v4 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v15 = vcnt_s8(v4);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v36;
    if (v4 <= v36)
    {
      v17 = v36 % v4;
    }
  }

  else
  {
    v17 = (v4 - 1) & v36;
  }

  v30 = *a1;
  v18 = *(*a1 + 8 * v17);
  if (v18)
  {
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      v21 = a2;
      v22 = a2 + 5;
      v23 = a2 + 6;
      v32 = v21 + 10;
      v33 = v21 + 7;
      v31 = v21 + 11;
      do
      {
        v24 = v19;
        v25 = v19[1];
        if (v16 > 1)
        {
          v26 = v25;
          if (v25 >= v4)
          {
            v26 = v25 % v4;
          }
        }

        else
        {
          v26 = v25 & (v4 - 1);
        }

        if (v26 != v17)
        {
          break;
        }

        if (v25 == v36)
        {
          v40 = (v24 + 2);
          v41 = v24 + 5;
          v42 = v24 + 6;
          v37 = v35;
          v38 = v22;
          v39 = v23;
          v27 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v40, &v37);
          if (v27)
          {
            v40 = (v24 + 7);
            v41 = v24 + 10;
            v42 = v24 + 11;
            v37 = v33;
            v38 = v32;
            v39 = v31;
            v27 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v40, &v37);
          }
        }

        else
        {
          v27 = 0;
        }

        if ((v20 & (v27 != (v20 & 1))) != 0)
        {
          break;
        }

        v20 |= v27 != (v20 & 1);
        v19 = *v24;
        v18 = v24;
      }

      while (*v24);
    }
  }

  v28 = v34[1];
  if (v16 > 1)
  {
    if (v28 >= v4)
    {
      v28 %= v4;
    }
  }

  else
  {
    v28 &= v4 - 1;
  }

  if (!v18)
  {
    *v34 = *(a1 + 16);
    *(a1 + 16) = v34;
    v30[v28] = a1 + 16;
    if (!*v34)
    {
      goto LABEL_66;
    }

    v29 = *(*v34 + 8);
    if (v16 > 1)
    {
      if (v29 >= v4)
      {
        v29 %= v4;
      }
    }

    else
    {
      v29 &= v4 - 1;
    }

LABEL_65:
    *(*a1 + 8 * v29) = v34;
    goto LABEL_66;
  }

  *v34 = *v18;
  *v18 = v34;
  if (*v34)
  {
    v29 = *(*v34 + 8);
    if (v16 > 1)
    {
      if (v29 >= v4)
      {
        v29 %= v4;
      }
    }

    else
    {
      v29 &= v4 - 1;
    }

    if (v29 != v28)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__node_insert_multi(uint64_t a1, uint64_t *a2)
{
  v31 = a2 + 2;
  v32 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 2));
  a2[1] = v32;
  v4 = *(a1 + 8);
  v5 = (*(a1 + 24) + 1);
  v6 = *(a1 + 32);
  v30 = a2;
  if (!v4 || (v6 * v4) < v5)
  {
    v7 = 1;
    if (v4 >= 3)
    {
      v7 = (v4 & (v4 - 1)) != 0;
    }

    v8 = v7 | (2 * v4);
    v9 = vcvtps_u32_f32(v5 / v6);
    if (v8 <= v9)
    {
      prime = v9;
    }

    else
    {
      prime = v8;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v4 = *(a1 + 8);
    }

    if (prime > v4)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v4)
    {
      v11 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v4 < 3 || (v12 = vcnt_s8(v4), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
      {
        v11 = std::__next_prime(v11);
      }

      else
      {
        v13 = 1 << -__clz(v11 - 1);
        if (v11 >= 2)
        {
          v11 = v13;
        }
      }

      if (prime <= v11)
      {
        prime = v11;
      }

      if (prime >= v4)
      {
        v4 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v14 = *a1;
        *a1 = 0;
        if (v14)
        {
          operator delete(v14);
        }

        v4 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v15 = vcnt_s8(v4);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v32;
    if (v4 <= v32)
    {
      v17 = v32 % v4;
    }
  }

  else
  {
    v17 = (v4 - 1) & v32;
  }

  v18 = *(*a1 + 8 * v17);
  v29 = *a1;
  if (v18)
  {
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      v21 = a2 + 5;
      v22 = a2 + 6;
      do
      {
        v23 = v19;
        v24 = v19[1];
        if (v16 > 1)
        {
          v25 = v24;
          if (v24 >= v4)
          {
            v25 = v24 % v4;
          }
        }

        else
        {
          v25 = v24 & (v4 - 1);
        }

        if (v25 != v17)
        {
          break;
        }

        if (v24 == v32)
        {
          v34[0] = (v23 + 2);
          v34[1] = (v23 + 5);
          v34[2] = (v23 + 6);
          v33[0] = v31;
          v33[1] = v21;
          v33[2] = v22;
          v26 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v34, v33);
        }

        else
        {
          v26 = 0;
        }

        if ((v20 & (v26 != (v20 & 1))) != 0)
        {
          break;
        }

        v20 |= v26 != (v20 & 1);
        v19 = *v23;
        v18 = v23;
      }

      while (*v23);
    }
  }

  v27 = v30[1];
  if (v16 > 1)
  {
    if (v27 >= v4)
    {
      v27 %= v4;
    }
  }

  else
  {
    v27 &= v4 - 1;
  }

  if (!v18)
  {
    *v30 = *(a1 + 16);
    *(a1 + 16) = v30;
    v29[v27] = a1 + 16;
    if (!*v30)
    {
      goto LABEL_65;
    }

    v28 = *(*v30 + 8);
    if (v16 > 1)
    {
      if (v28 >= v4)
      {
        v28 %= v4;
      }
    }

    else
    {
      v28 &= v4 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v28) = v30;
    goto LABEL_65;
  }

  *v30 = *v18;
  *v18 = v30;
  if (*v30)
  {
    v28 = *(*v30 + 8);
    if (v16 > 1)
    {
      if (v28 >= v4)
      {
        v28 %= v4;
      }
    }

    else
    {
      v28 &= v4 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

uint64_t *std::vector<AMCP::Wire_Identifier>::__init_with_size[abi:ne200100]<AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AMCP::Wire_Identifier>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE56EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<AMCP::Wire_Identifier>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::allocator<AMCP::Wire_Identifier>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t **AMCP::Graph::Graph::restore_graph_state_from_snapshot(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
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
      *buf = 136315650;
      v24 = "Graph.cpp";
      v25 = 1024;
      v26 = 1221;
      v27 = 2080;
      v28 = "not (state)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v14, "", v12);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v29 = "void AMCP::Graph::Graph::restore_graph_state_from_snapshot(const Graph_State &)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v31 = 1221;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  v5 = (a1 + 56);
  if (v5 != v2)
  {
    *(a1 + 88) = *(v2 + 32);
    std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,void *> *>>(v5, *(v2 + 16));
    *(a1 + 128) = *(v2 + 72);
    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,void *> *>>((a1 + 96), *(v2 + 56));
    *(a1 + 168) = *(v2 + 112);
    std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,void *> *>>((a1 + 136), *(v2 + 96));
    v2 = *a2;
  }

  if (a1 + 176 != v2 + 120)
  {
    *(a1 + 208) = *(v2 + 152);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *>>((a1 + 176), *(v2 + 136));
    v2 = *a2;
  }

  if (a1 + 216 != v2 + 160)
  {
    *(a1 + 248) = *(v2 + 192);
    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *> *>>((a1 + 216), *(v2 + 176));
    v2 = *a2;
  }

  result = (a1 + 256);
  if (a1 + 256 != v2 + 224)
  {
    v7 = *(v2 + 224);

    return std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,void *> *,long>>(result, v7, (v2 + 232));
  }

  return result;
}

void sub_1DE56F2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

BOOL HALS_PDPUCPlugIn::ObjectIsPropertySettable(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = (this)(a2, a3, &v18);
  if (v4)
  {
    v5.i32[0] = a3->mSelector;
    v7 = vrev64_s16(*&vmovl_u8(v5));
    v8 = vuzp1_s8(v7, v7);
    v16 = v8.i32[0];
    v17 = 0;
    v8.i32[0] = a3->mScope;
    v9 = vrev64_s16(*&vmovl_u8(v8));
    v14 = vuzp1_s8(v9, v9).u32[0];
    v15 = 0;
    v13[0] = HIBYTE(v4);
    v13[1] = BYTE2(v4);
    v13[2] = BYTE1(v4);
    v12 = v4;
    v13[3] = v4;
    v13[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v20 = "HALS_PDPUCPlugIn.cpp";
      v21 = 1024;
      v22 = 137;
      v23 = 2080;
      v24 = &v16;
      v25 = 2080;
      v26 = &v14;
      v27 = 2048;
      v28 = mElement;
      v29 = 1024;
      v30 = v12;
      v31 = 2080;
      v32 = v13;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectIsPropertySettable: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v12;
  }

  return v18 != 0;
}

uint64_t HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v6 = (this)(a2, a3, a4, a5, &v20);
  if (v6)
  {
    v7.i32[0] = a3->mSelector;
    v9 = vrev64_s16(*&vmovl_u8(v7));
    v10 = vuzp1_s8(v9, v9);
    v18 = v10.i32[0];
    v19 = 0;
    v10.i32[0] = a3->mScope;
    v11 = vrev64_s16(*&vmovl_u8(v10));
    v16 = vuzp1_s8(v11, v11).u32[0];
    v17 = 0;
    v15[0] = HIBYTE(v6);
    v15[1] = BYTE2(v6);
    v15[2] = BYTE1(v6);
    v14 = v6;
    v15[3] = v6;
    v15[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v22 = "HALS_PDPUCPlugIn.cpp";
      v23 = 1024;
      v24 = 145;
      v25 = 2080;
      v26 = &v18;
      v27 = 2080;
      v28 = &v16;
      v29 = 2048;
      v30 = mElement;
      v31 = 1024;
      v32 = v14;
      v33 = 2080;
      v34 = v15;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectGetPropertyDataSize: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v14;
  }

  return v20;
}

uint64_t HALS_PDPUCPlugIn::ObjectGetPropertyData(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, unsigned int *a6, void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  result = (this)(a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v10 = vrev64_s16(*&vmovl_u8(v9));
    v11 = vuzp1_s8(v10, v10);
    v19 = v11.i32[0];
    v20 = 0;
    v11.i32[0] = a3->mScope;
    v12 = vrev64_s16(*&vmovl_u8(v11));
    v17 = vuzp1_s8(v12, v12).u32[0];
    v18 = 0;
    v16[0] = BYTE3(result);
    v16[1] = BYTE2(result);
    v16[2] = BYTE1(result);
    v15 = result;
    v16[3] = result;
    v16[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v22 = "HALS_PDPUCPlugIn.cpp";
      v23 = 1024;
      v24 = 152;
      v25 = 2080;
      v26 = &v19;
      v27 = 2080;
      v28 = &v17;
      v29 = 2048;
      v30 = mElement;
      v31 = 1024;
      v32 = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectGetPropertyData: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v15;
  }

  return result;
}

uint64_t HALS_PDPUCPlugIn::ObjectSetPropertyData(HALS_PDPUCPlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  result = (this)(a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9.i32[0] = a3->mSelector;
    v10 = vrev64_s16(*&vmovl_u8(v9));
    v11 = vuzp1_s8(v10, v10);
    v19 = v11.i32[0];
    v20 = 0;
    v11.i32[0] = a3->mScope;
    v12 = vrev64_s16(*&vmovl_u8(v11));
    v17 = vuzp1_s8(v12, v12).u32[0];
    v18 = 0;
    v16[0] = BYTE3(result);
    v16[1] = BYTE2(result);
    v16[2] = BYTE1(result);
    v15 = result;
    v16[3] = result;
    v16[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      mElement = a3->mElement;
      *buf = 136316674;
      v22 = "HALS_PDPUCPlugIn.cpp";
      v23 = 1024;
      v24 = 158;
      v25 = 2080;
      v26 = &v19;
      v27 = 2080;
      v28 = &v17;
      v29 = 2048;
      v30 = mElement;
      v31 = 1024;
      v32 = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PDPUCPlugIn::ObjectSetPropertyData: got an error from the plug-in for property [%s/%s/%lu], Error: %d (%s)", buf, 0x40u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v15;
  }

  return result;
}

uint64_t get_terminal(std::string **a1, const void **a2)
{
  v3 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (SHIBYTE((*a1)[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v48, v4[1].__r_.__value_.__l.__data_, v4[1].__r_.__value_.__l.__size_);
  }

  else
  {
    *v48 = *&v4[1].__r_.__value_.__l.__data_;
    *&v48[16] = *(&v4[1].__r_.__value_.__l + 2);
  }

  v5 = v48[23];
  if (v48[23] >= 0)
  {
    v6 = v48[23];
  }

  else
  {
    v6 = *&v48[8];
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a2[1];
  }

  if (v6 != v7)
  {
    v11 = 0;
    if ((v48[23] & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v48[23] >= 0)
  {
    v9 = v48;
  }

  else
  {
    v9 = *v48;
  }

  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  a1 = memcmp(v9, v10, v6);
  v11 = a1 == 0;
  if (v5 < 0)
  {
LABEL_19:
    operator delete(*v48);
  }

LABEL_20:
  if (!v11)
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
      v24 = *v3;
      if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, v24[1].__r_.__value_.__l.__data_, v24[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v42 = v24[1];
      }

      v25 = &v42;
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v42.__r_.__value_.__r.__words[0];
      }

      if (*(a2 + 23) >= 0)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a2;
      }

      *v48 = 136316162;
      *&v48[4] = "GraphCommon.cpp";
      *&v48[12] = 1024;
      *&v48[14] = 24;
      *&v48[18] = 2080;
      *&v48[20] = "not (node->get_uid() == key.m_node)";
      v49 = 2080;
      *v50 = v25;
      *&v50[8] = 2080;
      v51 = v26;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid connection: '%s' and '%s'", v48, 0x30u);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    v28 = *v3;
    if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, v28[1].__r_.__value_.__l.__data_, v28[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v28[1];
    }

    v35 = &v39;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v39.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    caulk::make_string(&v40, "Invalid connection: '%s' and '%s'", v27, v35, v36);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v42.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v42.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v48, &v42);
    *&v50[2] = "Terminal &get_terminal(const std::shared_ptr<Node> &, const Terminal_Identifier &)";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v52 = 24;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v12 = *v3;
  v13 = *(a2 + 8);
  v14 = a2[3];
  if (v14 >= 0x6DB6DB6DB6DB6DB7 * (((*v3)[v13 + 2].__r_.__value_.__r.__words[2] - (*v3)[v13 + 2].__r_.__value_.__l.__size_) >> 4))
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      v29 = a2[3];
      v30 = *v3;
      if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, v30[1].__r_.__value_.__l.__data_, v30[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v42 = v30[1];
      }

      v31 = &v42;
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v42.__r_.__value_.__r.__words[0];
      }

      *v48 = 136316162;
      *&v48[4] = "GraphCommon.cpp";
      *&v48[12] = 1024;
      *&v48[14] = 27;
      *&v48[18] = 2080;
      *&v48[20] = "not (key.m_terminal_index < size)";
      v49 = 2048;
      *v50 = v29;
      *&v50[8] = 2080;
      v51 = v31;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid terminal index: terminal %zu of node '%s'", v48, 0x30u);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    v33 = a2[3];
    v34 = *v3;
    if (SHIBYTE((*v3)[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, v34[1].__r_.__value_.__l.__data_, v34[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v34[1];
    }

    v37 = &v39;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v39.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v40, "Invalid terminal index: terminal %zu of node '%s'", v32, v33, v37);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v42.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v42.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v48, &v42);
    *&v50[2] = "Terminal &get_terminal(const std::shared_ptr<Node> &, const Terminal_Identifier &)";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v52 = 27;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  return AMCP::Graph::Node::get_nth_terminal(v12, v14, v13);
}

void sub_1DE570160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33)
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

uint64_t get_terminal_for_key(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, a1);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      AMCP::Terminal_Identifier_to_string(&__p, a1);
      v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v37 = "GraphCommon.cpp";
      v38 = 1024;
      v39 = 37;
      v40 = 2080;
      v41 = "not (found != nodes.end())";
      v42 = 2080;
      *v43 = v20;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing node for connection in when building manifest: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v27, a1);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v27;
    }

    else
    {
      v22 = v27.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v28, "Missing node for connection in when building manifest: %s", v21, v22);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v29);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v43[2] = "Terminal &get_terminal_for_key(const Terminal_Identifier &, const AMCP::Graph::Node_Map &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v45 = 37;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  v4 = v3;
  v5 = v3[5];
  v6 = v4[6];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 3 * v7 + 8) - *(v5 + 3 * v7 + 7)) >> 4);
  v9 = *(a1 + 24);
  if (v9 > v8)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      AMCP::Terminal_Identifier_to_string(&__p, a1);
      v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136316162;
      v37 = "GraphCommon.cpp";
      v38 = 1024;
      v39 = 41;
      v40 = 2080;
      v41 = "not (key.m_terminal_index <= num_other_terminals)";
      v42 = 2080;
      *v43 = v23;
      *&v43[8] = 2048;
      v44 = v8;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing terminal for connection in when building manifest - index: %s  terminals: %zu", buf, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v27, a1);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v27;
    }

    else
    {
      v25 = v27.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v28, "Missing terminal for connection in when building manifest - index: %s  terminals: %zu", v24, v25, v8);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v29);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v43[2] = "Terminal &get_terminal_for_key(const Terminal_Identifier &, const AMCP::Graph::Node_Map &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphCommon.cpp";
    v45 = 41;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  nth_terminal = AMCP::Graph::Node::get_nth_terminal(v5, v9, v7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return nth_terminal;
}

void sub_1DE5707EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, char a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOPrewarmManager::Start(void *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = *a1;
    v3 = a1;
  }

  else
  {
    if (a2)
    {
      goto LABEL_7;
    }

    v3 = a1 + 1;
    v2 = a1[1];
  }

  if (v2 != -1)
  {
    *v3 = v2 + 1;
  }

LABEL_7:
  if (a1[1])
  {
    return 2;
  }

  else
  {
    return *a1 != 0;
  }
}

void HALS_IOPrewarmManager::GetState(HALS_IOPrewarmManager *this, unint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2[1])
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
  }

  v4 = 0;
  if (*a2)
  {
    v5 = 0;
    v6 = *(this + 2);
    do
    {
      if (v4 >= v6)
      {
        v7 = v4;
        v8 = v4 >> 2;
        v9 = v8 + 1;
        if ((v8 + 1) >> 62)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if (v6 >> 1 > v9)
        {
          v9 = v6 >> 1;
        }

        if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v10);
        }

        v11 = (4 * v8);
        v6 = 0;
        *v11 = 1;
        v4 = (v11 + 1);
        memcpy(0, 0, v7);
        *this = 0;
        *(this + 1) = v4;
        *(this + 2) = 0;
      }

      else
      {
        *v4 = 1;
        v4 += 4;
      }

      *(this + 1) = v4;
      ++v5;
    }

    while (v5 < *a2);
  }
}

void sub_1DE570B84(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceManager::ObjectPropertiesChanged()
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "HALS_DeviceManager.cpp";
    v3 = 1024;
    v4 = 1102;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DeviceManager::ObjectsPropertiesChanged: unimplemented", &v1, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void HALS_DeviceManager::ObjectsPublishedAndDied()
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "HALS_DeviceManager.cpp";
    v3 = 1024;
    v4 = 1095;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DeviceManager::ObjectsPublishedAndDied: unimplemented", &v1, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void HALS_DeviceManager::CreateObject()
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "HALS_DeviceManager.cpp";
    v3 = 1024;
    v4 = 1088;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DeviceManager::CreateObject: unimplemented", &v1, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1970171760;
}

void HALS_DeviceManager::ClientDied(HALS_DeviceManager *this, HALS_Client *a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v33, 1, 0);
  v3 = v33;
  v31 = v34;
  if (v33 != v34)
  {
    v30 = MEMORY[0x1E69E9820];
    v4 = a2;
    do
    {
      v5 = *v3;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2000000000;
      v40 = 0;
      v36[0] = v30;
      v36[1] = 0x40000000;
      v36[2] = ___ZN11HALS_Device10ClientDiedEP11HALS_Client_block_invoke;
      v36[3] = &unk_1E8678B38;
      v36[4] = &v37;
      v36[5] = v5;
      v36[6] = v4;
      v6 = (*(*v5 + 64))(v5);
      HALB_CommandGate::ExecuteCommand(v6, v36);
      if (*(v38 + 24) == 1)
      {
        if (a2)
        {
          v7 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        v8 = v5[4];
        *&v41.mSelector = 0x676C6F6263646573;
        v41.mElement = 0;
        HALS_Object::PropertiesChanged(v5, v8, v7, 1, &v41);
      }

      if (a2)
      {
        v9 = *(a2 + 4);
      }

      else
      {
        v9 = 0;
      }

      v10 = 0;
      v11 = 1;
      do
      {
        v12 = v11;
        NumberStreams = HALS_IODevice::GetNumberStreams(v5, v10 & 1);
        if (NumberStreams)
        {
          for (i = 0; i != NumberStreams; ++i)
          {
            v15 = HALS_IODevice::CopyStreamByIndex(v5, v10 & 1, i);
            v17 = v15;
            if (v15)
            {
              v18 = *(v15 + 64);
              std::mutex::lock((v18 + 24));
              v19 = *(v18 + 96);
              if (v19)
              {
                v20 = v18 + 96;
                v21 = *(v18 + 96);
                do
                {
                  v22 = *(v21 + 32);
                  v23 = v22 >= v9;
                  v24 = v22 < v9;
                  if (v23)
                  {
                    v20 = v21;
                  }

                  v21 = *(v21 + 8 * v24);
                }

                while (v21);
                if (v20 != v18 + 96 && *(v20 + 32) <= v9)
                {
                  v25 = *(v20 + 8);
                  v26 = v20;
                  if (v25)
                  {
                    do
                    {
                      v27 = v25;
                      v25 = *v25;
                    }

                    while (v25);
                  }

                  else
                  {
                    do
                    {
                      v27 = v26[2];
                      v28 = *v27 == v26;
                      v26 = v27;
                    }

                    while (!v28);
                  }

                  if (*(v18 + 88) == v20)
                  {
                    *(v18 + 88) = v27;
                  }

                  --*(v18 + 104);
                  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v19, v20);
                  v29 = *(v20 + 104);
                  if (v29)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
                  }

                  operator delete(v20);
                }
              }

              std::mutex::unlock((v18 + 24));
            }

            HALS_ObjectMap::ReleaseObject(v17, v16);
          }
        }

        v11 = 0;
        v10 = 1;
      }

      while ((v12 & 1) != 0);
      _Block_object_dispose(&v37, 8);
      ++v3;
      v4 = a2;
    }

    while (v3 != v31);
  }

  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v33, v2);
}

void sub_1DE571118(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::CopyDeviceList(HALS_DeviceManager *this, HALS_DeviceManager::BasicDeviceList *a2, char a3, HALS_Client *a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__11571;
  v19 = __Block_byref_object_dispose__11572;
  memset(v20, 0, sizeof(v20));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZNK18HALS_DeviceManager14CopyDeviceListERNS_15BasicDeviceListEbP11HALS_Client_block_invoke;
  v14[3] = &unk_1E8676C78;
  v14[4] = &v15;
  v14[5] = this;
  v7 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v7, v14);
  v9 = v16[5];
  v10 = v16[6];
  while (v9 != v10)
  {
    if (a3)
    {
      IsHidden = 0;
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      IsHidden = HALS_Device::IsHidden(*v9);
      if (a4)
      {
LABEL_5:
        v12 = (*(**v9 + 496))(*v9, a4);
        goto LABEL_8;
      }
    }

    v12 = 1;
LABEL_8:
    if (!IsHidden && (v12 & 1) != 0)
    {
      HALS_ObjectMap::RetainObject(*v9, v8);
      std::vector<HALS_Device *>::push_back[abi:ne200100](a2, v9);
    }

    ++v9;
  }

  _Block_object_dispose(&v15, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v20, v13);
}

void sub_1DE5712DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v13 + 40), v15);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

__n128 __Block_byref_object_copy__11571(void *a1, uint64_t a2)
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

void sub_1DE5713E0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_DeviceManager::HandleOwnedObjectGroupPropertiesChanged(HALS_DeviceManager *this, HALS_ObjectMap *a2, unsigned int a3, unsigned int a4, const unsigned int *a5, const unsigned int *a6, unsigned int a7, const AudioObjectPropertyAddress *a8, BOOL a9)
{
  v13 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  v15 = v13;
  if (v13)
  {
    v16 = *(v13 + 5);
    if (v16 <= 1701078389)
    {
      v17 = v16 == 1633773415;
      v18 = 1633969526;
    }

    else
    {
      v17 = v16 == 1701078390 || v16 == 1701733488;
      v18 = 1919182198;
    }

    if (!v17 && v16 != v18)
    {
      v20 = *(v13 + 6);
      if (v16 == v20)
      {
        goto LABEL_14;
      }

      if (v20 <= 1701078389)
      {
        if (v20 != 1633773415)
        {
          v21 = 1633969526;
LABEL_22:
          if (v20 != v21)
          {
            goto LABEL_14;
          }
        }
      }

      else if (v20 != 1701078390 && v20 != 1919182198)
      {
        v21 = 1701733488;
        goto LABEL_22;
      }
    }

    HALS_DeviceManager::HandleOwnedObjectPropertiesChanged(this, v13, a3, a7, a8, a9);
  }

LABEL_14:
  HALS_ObjectMap::ReleaseObject(v15, v14);
}

void HALS_DeviceManager::HandleOwnedObjectPropertiesChanged(HALS_DeviceManager *this, const HALS_Object *a2, unsigned int a3, unsigned int a4, const AudioObjectPropertyAddress *a5, int a6)
{
  v7 = *(a2 + 5);
  if (v7 <= 1701078389)
  {
    v8 = v7 == 1633773415;
    v9 = 1633969526;
  }

  else
  {
    v8 = v7 == 1701078390 || v7 == 1701733488;
    v9 = 1919182198;
  }

  if (!v8 && v7 != v9)
  {
    v15 = *(a2 + 6);
    if (v7 == v15)
    {
      return;
    }

    if (v15 <= 1701078389)
    {
      if (v15 != 1633773415)
      {
        v16 = 1633969526;
LABEL_37:
        if (v15 != v16)
        {
          return;
        }
      }
    }

    else if (v15 != 1701078390 && v15 != 1919182198)
    {
      v16 = 1701733488;
      goto LABEL_37;
    }
  }

  i = a5;
  if (a4)
  {
    v12 = 12 * a4;
    for (i = a5; i->mSelector != 1751412337 && i->mSelector != 1751737454; ++i)
    {
      v12 -= 12;
      if (!v12)
      {
        return;
      }
    }
  }

  if (i != &a5[a4])
  {
    if (i->mSelector != 1751412337)
    {
      std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](1uLL);
    }

    if (HALS_Device::IsHidden(a2))
    {
      HALS_Device::ClearDeviceArrivalTime(a2);
    }

    else
    {
      HALS_Device::UpdateDeviceArrivalTime(a2);
    }

    v17[0] = 0;
    v17[1] = 0;
    HALS_System::GetInstance(&v18, 0, v17);
    HALS_System::CheckForDefaultDeviceChanges(v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}

void sub_1DE5717C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceManager::GetPropertyData(HALS_DeviceManager *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, unsigned int a7, const __CFString **a8, HALS_Client *a9)
{
  v9 = a6;
  v116 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    if (mSelector > 1969841249)
    {
      switch(mSelector)
      {
        case 1969841250:
          if (a7 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 928;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: the qualifier is the wrong size for kAudioPlugInPropertyTranslateUIDToBox", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 1852797029;
          }

          if (!a8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 929;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: no qualifier data for kAudioPlugInPropertyTranslateUIDToBox", buf, 0x12u);
            }

            v92 = __cxa_allocate_exception(0x10uLL);
            *v92 = off_1F5991DD8;
            v92[2] = 1852797029;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 934;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: bad property data size for kAudioPlugInPropertyTranslateUIDToBox", buf, 0x12u);
            }

            v96 = __cxa_allocate_exception(0x10uLL);
            *v96 = off_1F5991DD8;
            v96[2] = 561211770;
          }

          v16 = HALS_DeviceManager::CopyBoxByUID(this, *a8, a9);
          if (v16)
          {
            v18 = *(v16 + 4);
          }

          else
          {
            v18 = 0;
          }

          break;
        case 1969841251:
          if (a7 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 970;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: the qualifier is the wrong size for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
            }

            v90 = __cxa_allocate_exception(0x10uLL);
            *v90 = off_1F5991DD8;
            v90[2] = 1852797029;
          }

          if (!a8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 971;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: no qualifier data for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
            }

            v94 = __cxa_allocate_exception(0x10uLL);
            *v94 = off_1F5991DD8;
            v94[2] = 1852797029;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 976;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: bad property data size for kAudioPlugInPropertyTranslateUIDToClockDevice", buf, 0x12u);
            }

            v98 = __cxa_allocate_exception(0x10uLL);
            *v98 = off_1F5991DD8;
            v98[2] = 561211770;
          }

          v16 = HALS_DeviceManager::CopyClockDeviceByUID(this, *a8, a3);
          if (v16)
          {
            v18 = *(v16 + 4);
          }

          else
          {
            v18 = 0;
          }

          break;
        case 1969841252:
          if (a7 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 886;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: the qualifier is the wrong size for kAudioHardwarePropertyTranslateUIDToDevice", buf, 0x12u);
            }

            v87 = __cxa_allocate_exception(0x10uLL);
            *v87 = off_1F5991DD8;
            v87[2] = 1852797029;
          }

          if (!a8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 887;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: no qualifier data for kAudioHardwarePropertyTranslateUIDToDevice", buf, 0x12u);
            }

            v91 = __cxa_allocate_exception(0x10uLL);
            *v91 = off_1F5991DD8;
            v91[2] = 1852797029;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 892;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToDevice", buf, 0x12u);
            }

            v95 = __cxa_allocate_exception(0x10uLL);
            *v95 = off_1F5991DD8;
            v95[2] = 561211770;
          }

          v16 = HALS_DeviceManager::CopyDeviceByUID(this, *a8, a9);
          if (v16)
          {
            v18 = *(v16 + 4);
          }

          else
          {
            v18 = 0;
          }

          break;
        default:
          goto LABEL_78;
      }

      *v9 = v18;
      *a5 = 4;
      HALS_ObjectMap::ReleaseObject(v16, v17);
      return;
    }

    if (mSelector != 1870098020)
    {
      v14 = 1885956452;
LABEL_26:
      if (mSelector == v14)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_DeviceManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 828;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetPropertyData: bad property data size for kAudioPlugInPropertyBundleID", buf, 0x12u);
          }

          v86 = __cxa_allocate_exception(0x10uLL);
          *v86 = off_1F5991DD8;
          v86[2] = 561211770;
        }

        v25 = *(this + 6);
        if (v25)
        {
          CFRetain(v25);
          v26 = *(this + 6);
        }

        else
        {
          v26 = 0;
        }

        *v9 = v26;
        *a5 = 8;
        return;
      }

      goto LABEL_78;
    }

    memset(buf, 0, sizeof(buf));
    HALS_DeviceManager::CopyBoxList(this, buf, a9);
    v112 = 0;
    v113 = 0;
    v114 = 0;
    HALS_DeviceManager::CopyDeviceList(this, &v112, 0, a9);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    HALS_DeviceManager::CopyClockDeviceList(this, &v109);
    v108 = a4 >> 2;
    v102 = a5;
    if (a7 < 4 || !a8)
    {
      v55 = *&buf[8];
      if (*buf == *&buf[8])
      {
        LODWORD(v35) = 0;
      }

      else
      {
        v35 = 0;
        if (v108 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = a4 >> 2;
        }

        v57 = v56 - 1;
        v58 = *buf + 8;
        do
        {
          v59 = v35;
          *(v9 + v35++) = *(*(v58 - 8) + 16);
          if (v57 == v59)
          {
            break;
          }

          v60 = v58 == v55;
          v58 += 8;
        }

        while (!v60);
      }

      v61 = v113;
      if (v112 != v113)
      {
        v35 = v35;
        v62 = v112 + 1;
        do
        {
          *(v9 + v35++) = *(*(v62 - 1) + 4);
          if (v35 >= v108)
          {
            break;
          }

          v60 = v62++ == v61;
        }

        while (!v60);
      }

      v63 = v110;
      if (v109 != v110)
      {
        v35 = v35;
        v64 = v109 + 1;
        do
        {
          *(v9 + v35++) = *(*(v64 - 1) + 4);
          if (v35 >= v108)
          {
            break;
          }

          v60 = v64++ == v63;
        }

        while (!v60);
      }

      *a5 = 4 * v35;
LABEL_110:
      *v102 = 4 * v35;
      HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v109, v33);
      HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v112, v65);
      goto LABEL_111;
    }

    v106 = a7 >> 2;
    v34 = *buf;
    v103 = *&buf[8];
    if (*buf == *&buf[8])
    {
      LODWORD(v35) = 0;
      goto LABEL_113;
    }

    LODWORD(v35) = 0;
    do
    {
      v36 = *v34;
      v37 = *(*v34 + 20);
      v38 = *(*v34 + 24);
      v40 = v106;
      v39 = a8;
      while (1)
      {
        v42 = *v39++;
        v41 = v42;
        IsSubClass = HALB_Info::IsSubClass(v37, v42);
        if (v37 != v38 && !IsSubClass)
        {
          if (HALB_Info::IsSubClass(v38, v41))
          {
            break;
          }

          goto LABEL_47;
        }

        if (IsSubClass || v37 != v38)
        {
          break;
        }

LABEL_47:
        if (!--v40)
        {
          goto LABEL_50;
        }
      }

      *(v9 + v35) = *(v36 + 16);
      LODWORD(v35) = v35 + 1;
LABEL_50:
      if (v35 >= v108)
      {
        break;
      }

      ++v34;
    }

    while (v34 != v103);
LABEL_113:
    v67 = v112;
    v66 = v113;
    v104 = v113;
LABEL_114:
    if (v67 != v66)
    {
      v68 = *v67;
      v69 = *(*v67 + 5);
      v70 = *(*v67 + 6);
      v72 = v106;
      v71 = a8;
      while (1)
      {
        v74 = *v71++;
        v73 = v74;
        v75 = HALB_Info::IsSubClass(v69, v74);
        if (v69 == v70 || v75)
        {
          if (v75 || v69 != v70)
          {
LABEL_123:
            *(v9 + v35) = *(v68 + 4);
            LODWORD(v35) = v35 + 1;
LABEL_124:
            if (v35 >= v108)
            {
              break;
            }

            ++v67;
            v66 = v104;
            goto LABEL_114;
          }
        }

        else if (HALB_Info::IsSubClass(v70, v73))
        {
          goto LABEL_123;
        }

        if (!--v72)
        {
          goto LABEL_124;
        }
      }
    }

    v77 = v109;
    v76 = v110;
    v105 = v110;
LABEL_127:
    if (v77 == v76)
    {
      goto LABEL_110;
    }

    v78 = *v77;
    v79 = *(*v77 + 5);
    v80 = *(*v77 + 6);
    v82 = v106;
    v81 = a8;
    while (1)
    {
      v84 = *v81++;
      v83 = v84;
      v85 = HALB_Info::IsSubClass(v79, v84);
      if (v79 == v80 || v85)
      {
        if (v85 || v79 != v80)
        {
LABEL_136:
          *(v9 + v35) = *(v78 + 4);
          LODWORD(v35) = v35 + 1;
LABEL_137:
          if (v35 >= v108)
          {
            goto LABEL_110;
          }

          ++v77;
          v76 = v105;
          goto LABEL_127;
        }
      }

      else if (HALB_Info::IsSubClass(v80, v83))
      {
        goto LABEL_136;
      }

      if (!--v82)
      {
        goto LABEL_137;
      }
    }
  }

  if (mSelector <= 1684370978)
  {
    if (mSelector != 1651472419)
    {
      if (mSelector == 1668049699)
      {
        memset(buf, 0, sizeof(buf));
        HALS_DeviceManager::CopyClockDeviceList(this, buf);
        v20 = *buf;
        v21 = (*&buf[8] - *buf) >> 3;
        v22 = a4 >> 2;
        if (v21 < v22)
        {
          v22 = (*&buf[8] - *buf) >> 3;
        }

        if (v22)
        {
          v23 = v22;
          do
          {
            if (!v21)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v24 = *v20++;
            *v9 = *(v24 + 16);
            v9 = (v9 + 4);
            --v21;
            --v23;
          }

          while (v23);
        }

        *a5 = 4 * v22;
        HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(buf, v19);
        return;
      }

LABEL_78:

      HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
      return;
    }

    memset(buf, 0, sizeof(buf));
    HALS_DeviceManager::CopyBoxList(this, buf, a9);
    v28 = *buf;
    v29 = (*&buf[8] - *buf) >> 3;
    v30 = a4 >> 2;
    if (v29 < v30)
    {
      v30 = (*&buf[8] - *buf) >> 3;
    }

    if (v30)
    {
      v31 = v30;
      do
      {
        if (!v29)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v32 = *v28++;
        *v9 = *(v32 + 16);
        v9 = (v9 + 4);
        --v29;
        --v31;
      }

      while (v31);
    }

    *a5 = 4 * v30;
LABEL_111:
    HALS_DeviceManager::BasicBoxList::~BasicBoxList(buf, v27);
    return;
  }

  if (mSelector == 1684370979)
  {
    memset(buf, 0, sizeof(buf));
    HALS_DeviceManager::CopyDeviceList(this, buf, 0, a9);
    v45 = *buf;
    v46 = (*&buf[8] - *buf) >> 3;
    v47 = a4 >> 2;
    if (v46 < v47)
    {
      v47 = (*&buf[8] - *buf) >> 3;
    }

    if (v47)
    {
      v48 = v47;
      do
      {
        if (!v46)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v49 = *v45++;
        *v9 = *(v49 + 16);
        v9 = (v9 + 4);
        --v46;
        --v48;
      }

      while (v48);
    }

    *a5 = 4 * v47;
    HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(buf, v44);
  }

  else
  {
    if (mSelector != 1685416292)
    {
      v14 = 1819173229;
      goto LABEL_26;
    }

    if (a4 <= 0x1F)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 851;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: wrong data size for kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
      }

      v89 = __cxa_allocate_exception(0x10uLL);
      *v89 = off_1F5991DD8;
      v89[2] = 561211770;
    }

    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 852;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: translation data is NULL", buf, 0x12u);
      }

      v93 = __cxa_allocate_exception(0x10uLL);
      *v93 = off_1F5991DD8;
      v93[2] = 1852797029;
    }

    if (*(a6 + 2) != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 858;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: wrong data size for input to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
      }

      v97 = __cxa_allocate_exception(0x10uLL);
      *v97 = off_1F5991DD8;
      v97[2] = 561211770;
    }

    if (!*a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 859;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: input to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
      }

      v99 = __cxa_allocate_exception(0x10uLL);
      *v99 = off_1F5991DD8;
      v99[2] = 1852797029;
    }

    if (*(a6 + 6) != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 863;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: wrong data size for output to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
      }

      v100 = __cxa_allocate_exception(0x10uLL);
      *v100 = off_1F5991DD8;
      v100[2] = 561211770;
    }

    v51 = a6[2];
    if (!v51)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_DeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 864;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::GetPropertyData: output to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
      }

      v101 = __cxa_allocate_exception(0x10uLL);
      *v101 = off_1F5991DD8;
      v101[2] = 1852797029;
    }

    v52 = HALS_DeviceManager::CopyDeviceByUID(this, **a6, a9);
    if (v52)
    {
      v54 = *(v52 + 4);
    }

    else
    {
      v54 = 0;
    }

    *v51 = v54;
    *a5 = a4;
    HALS_ObjectMap::ReleaseObject(v52, v53);
  }
}

void sub_1DE572ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DeviceManager::CopyBoxList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_DeviceManager11CopyBoxListERNS_12BasicBoxListEP11HALS_Client_block_invoke;
  v4[3] = &__block_descriptor_tmp_11615;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

void HALS_DeviceManager::CopyClockDeviceList(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK18HALS_DeviceManager19CopyClockDeviceListERNS_20BasicClockDeviceListEP11HALS_Client_block_invoke;
  v3[3] = &__block_descriptor_tmp_7_11614;
  v3[4] = a1;
  v3[5] = a2;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void HALS_DeviceManager::BasicBoxList::~BasicBoxList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

HALS_ObjectMap *HALS_DeviceManager::CopyDeviceByUID(HALS_DeviceManager *this, const __CFString *a2, HALS_Client *a3)
{
  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v10, 1, a3);
  for (i = v10; i != v11; ++i)
  {
    v6 = *i;
    v7 = (*(**i + 208))(*i);
    if (v7 && CFStringCompare(v7, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v10, v8);
  return v6;
}

void sub_1DE572E0C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_DeviceManager::CopyBoxByUID(HALS_DeviceManager *this, const __CFString *a2, HALS_Client *a3)
{
  if (!a2)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  HALS_DeviceManager::CopyBoxList(this, &v11, a3);
  v6 = v11;
  v5 = v12;
  while (v6 != v5)
  {
    v7 = *v6;
    v8 = *(*v6 + 9);
    if (v8)
    {
      if (CFStringCompare(v8, a2, 0) == kCFCompareEqualTo)
      {
        goto LABEL_9;
      }

      v5 = v12;
    }

    ++v6;
  }

  v7 = 0;
LABEL_9:
  HALS_ObjectMap::RetainObject(v7, v4);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v11, v9);
  return v7;
}

void sub_1DE572EBC(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va, a2);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_DeviceManager::CopyClockDeviceByUID(HALS_DeviceManager *this, const __CFString *a2, HALS_Client *a3)
{
  if (!a2)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v10);
  for (i = v10; i != v11; ++i)
  {
    v6 = *i;
    v7 = (*(**i + 208))(*i);
    if (v7 && CFStringCompare(v7, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v10, v8);
  return v6;
}

void sub_1DE572F90(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  _Unwind_Resume(a1);
}

uint64_t HALS_DeviceManager::GetPropertyDataSize(HALS_DeviceManager *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    if (mSelector <= 1969841249)
    {
      if (mSelector == 1870098020)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        HALS_DeviceManager::CopyBoxList(this, &v63, a6);
        v14 = v63;
        v13 = v64;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        HALS_DeviceManager::CopyDeviceList(this, &v60, 0, a6);
        v16 = v60;
        v15 = v61;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        HALS_DeviceManager::CopyClockDeviceList(this, &v57);
        v18 = v57;
        v55 = v58;
        v19 = ((v15 - v16) >> 3) + ((v13 - v14) >> 3) + ((v58 - v57) >> 3);
        if (a4 >= 4 && a5)
        {
          v20 = a4 >> 2;
          v21 = v63;
          v53 = v64;
          for (i = a5; v21 != v53; a5 = i)
          {
            v22 = *(*v21 + 5);
            v23 = *(*v21 + 6);
            v24 = a5;
            v25 = 1;
            do
            {
              v27 = *v24++;
              v26 = v27;
              IsSubClass = HALB_Info::IsSubClass(v22, v27);
              v29 = IsSubClass;
              v30 = IsSubClass || v22 != v23;
              if (v22 != v23 && !v29)
              {
                v30 = HALB_Info::IsSubClass(v23, v26);
              }

              if (v30)
              {
                break;
              }

              v31 = v25++ >= v20;
            }

            while (!v31);
            v19 -= v30 ^ 1;
            ++v21;
          }

          v32 = v60;
          for (j = v61; v32 != j; a5 = i)
          {
            v33 = *(*v32 + 5);
            v34 = *(*v32 + 6);
            v35 = 1;
            do
            {
              v37 = *a5++;
              v36 = v37;
              v38 = HALB_Info::IsSubClass(v33, v37);
              v39 = v38;
              v40 = v38 || v33 != v34;
              if (v33 != v34 && !v39)
              {
                v40 = HALB_Info::IsSubClass(v34, v36);
              }

              if (v40)
              {
                break;
              }

              v31 = v35++ >= v20;
            }

            while (!v31);
            v19 -= v40 ^ 1;
            ++v32;
          }

          while (v18 != v55)
          {
            v41 = *(*v18 + 5);
            v42 = *(*v18 + 6);
            v43 = a5;
            v44 = 1;
            do
            {
              v46 = *v43++;
              v45 = v46;
              v47 = HALB_Info::IsSubClass(v41, v46);
              v48 = v47;
              v49 = v47 || v41 != v42;
              if (v41 != v42 && !v48)
              {
                v49 = HALB_Info::IsSubClass(v42, v45);
              }

              if (v49)
              {
                break;
              }

              v31 = v44++ >= v20;
            }

            while (!v31);
            v19 -= v49 ^ 1;
            ++v18;
          }
        }

        v9 = (4 * v19);
        HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v57, v17);
        HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v60, v50);
        HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v63, v51);
        return v9;
      }

      if (mSelector == 1885956452)
      {
        return 8;
      }
    }

    else if (mSelector == 1969841250 || mSelector == 1969841251 || mSelector == 1969841252)
    {
      return 4;
    }

    goto LABEL_52;
  }

  if (mSelector <= 1684370978)
  {
    if (mSelector == 1651472419)
    {
      NumberBoxes = HALS_DeviceManager::GetNumberBoxes(this, a6);
    }

    else
    {
      if (mSelector != 1668049699)
      {
        goto LABEL_52;
      }

      NumberBoxes = HALS_DeviceManager::GetNumberClockDevices(this, a2);
    }

    return (4 * NumberBoxes);
  }

  if (mSelector == 1684370979)
  {
    NumberBoxes = HALS_DeviceManager::GetNumberDevices(this, a6, a3);
    return (4 * NumberBoxes);
  }

  if (mSelector == 1685416292)
  {
    return 32;
  }

LABEL_52:

  return HALS_Object::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE5733C0(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, HALS_ObjectMap **);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, HALS_ObjectMap **);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va1, v9);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va2, v10);
  _Unwind_Resume(a1);
}

unint64_t HALS_DeviceManager::GetNumberDevices(HALS_DeviceManager *this, HALS_Client *a2, HALS_Client *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v6, 0, a2);
  v3 = (v7 - v6) >> 3;
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v6, v4);
  return v3;
}

void sub_1DE573448(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

unint64_t HALS_DeviceManager::GetNumberBoxes(HALS_DeviceManager *this, HALS_Client *a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  HALS_DeviceManager::CopyBoxList(this, &v5, a2);
  v2 = (v6 - v5) >> 3;
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v5, v3);
  return v2;
}

void sub_1DE5734AC(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va, a2);
  _Unwind_Resume(a1);
}

unint64_t HALS_DeviceManager::GetNumberClockDevices(HALS_DeviceManager *this, HALS_Client *a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v5);
  v2 = (v6 - v5) >> 3;
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v5, v3);
  return v2;
}

void sub_1DE57350C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  _Unwind_Resume(a1);
}

uint64_t HALS_DeviceManager::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1685416291)
  {
    v4 = (v3 - 1969841250) < 3 || v3 == 1685416292;
    v5 = 1885956452;
  }

  else
  {
    v4 = v3 == 1651472419 || v3 == 1668049699;
    v5 = 1684370979;
  }

  if (v4 || v3 == v5)
  {
    return 0;
  }

  else
  {
    return HALS_Object::IsPropertySettable(a1, a2, a3);
  }
}

BOOL HALS_DeviceManager::HasProperty(HALS_DeviceManager *this, HALS_Client *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  result = 1;
  if (a3->mSelector <= 1869638758)
  {
    if (mSelector > 1668049698)
    {
      if (mSelector <= 1685416291)
      {
        if (mSelector != 1668049699)
        {
          v7 = 1684370979;
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      if (mSelector == 1685416292)
      {
        return result;
      }

      v7 = 1819173229;
      goto LABEL_26;
    }

    if (mSelector == 1650682995)
    {
      return result;
    }

    if (mSelector != 1651472419)
    {
      v7 = 1668047219;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (mSelector > 1937007733)
  {
    if (mSelector > 1969841250)
    {
      if (mSelector == 1969841251)
      {
LABEL_28:
        NumberClockDevices = HALS_DeviceManager::GetNumberClockDevices(this, a2);
        return NumberClockDevices != 0;
      }

      v7 = 1969841252;
LABEL_26:
      if (mSelector == v7)
      {
        return result;
      }

      return 0;
    }

    if (mSelector == 1937007734)
    {
      return result;
    }

    if (mSelector == 1969841250)
    {
LABEL_29:
      NumberClockDevices = HALS_DeviceManager::GetNumberBoxes(this, a4);
      return NumberClockDevices != 0;
    }

    return 0;
  }

  if (mSelector != 1869638759 && mSelector != 1870098020 && mSelector != 1885956452)
  {
    return 0;
  }

  return result;
}

void HALS_DeviceManager::BasicIODeviceList::~BasicIODeviceList(HALS_ObjectMap ***this, HALS_Object *a2)
{
  v3 = *this;
  if (*this != this[1])
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != this[1]);
    v3 = *this;
  }

  if (v3)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

__CFString *HALS_DeviceManager::HALS_DeviceManager(__CFString *a1, uint64_t a2, const __CFString *a3, int a4, HALS_Object *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(a1, 1634757735, 0, a2, a5);
  *v10 = &unk_1F597A098;
  *(v10 + 48) = a3;
  *(v10 + 56) = 1;
  *(v10 + 320) = a2;
  *(v10 + 328) = a4;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_DeviceManager.cpp";
      v15 = 1024;
      v16 = 74;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_DeviceManager::HALS_DeviceManager: all device managers have to have a bundle ID", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v13 = 256;
  CACFString::GetCString(a3, a1 + 2, &v13, v9);
  return a1;
}

void sub_1DE5738F0(_Unwind_Exception *a1)
{
  CACFString::~CACFString(v2);
  HALS_Object::~HALS_Object(v1);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::~HALS_DeviceManager(HALS_DeviceManager *this)
{
  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

void HALS_DeviceManager::LogState(uint64_t a1, uint64_t a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a2 + 16), "    ", 4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Device Manager ", 15);
  v7 = MEMORY[0x1E12C1210](v6, *(a1 + 16));
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v178, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v178);
  std::ostream::put();
  std::ostream::flush();
  *v119 = 128;
  CACFString::GetCString(*(a1 + 48), __s, v119, v9);
  v10 = 2;
  do
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
    --v10;
  }

  while (v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Bundle ID:               ", 25);
  v11 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, __s, v11);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v12 = std::locale::use_facet(&v178, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v178);
  std::ostream::put();
  std::ostream::flush();
  v116 = 0;
  v117 = 0;
  v118 = 0;
  HALS_DeviceManager::CopyBoxList(a1, &v116, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number of Boxes:         ", 25);
  v13 = MEMORY[0x1E12C1220](v4, v117 - v116);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v178, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v178);
  std::ostream::put();
  std::ostream::flush();
  v114 = a2;
  v15 = v116;
  v115 = v117;
  if (v116 != v117)
  {
    v16 = MEMORY[0x1E69E5318];
    do
    {
      v17 = *v15;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Box ", 4);
      v18 = MEMORY[0x1E12C1210](v4, v17[4]);
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v19 = std::locale::use_facet(&v128, v16);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v128);
      std::ostream::put();
      std::ostream::flush();
      v20 = v17[4];
      v141 = 0x676C6F626C6E616DLL;
      v142 = 0;
      v143 = 0;
      (*(*v17 + 120))(v17, v20, &v141, 8, &v142 + 4, &v143, 0, 0, 0);
      v161 = &unk_1F5991188;
      v162 = v143;
      OS::CF::String::AsCString(&v161, &v178, 128);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Name:                 ", 22);
      v21 = strlen(&v178);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v178, v21);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v22 = std::locale::use_facet(&v129, v16);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v129);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "UID:                  ", 22);
      v23 = strlen(v17 + 88);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, (v17 + 22), v23);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v24 = std::locale::use_facet(&v130, v16);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v130);
      std::ostream::put();
      std::ostream::flush();
      v25 = v17[4];
      strcpy(v144, "nartbolg");
      HIBYTE(v144[4]) = 0;
      v144[5] = 0;
      v145 = 0;
      (*(*v17 + 120))(v17, v25, v144, 4, &v145, &v145 + 4, 0, 0, 0);
      LOBYTE(v144[0]) = HIBYTE(v145);
      HIBYTE(v144[0]) = BYTE6(v145);
      LOBYTE(v144[1]) = BYTE5(v145);
      HIBYTE(v144[1]) = BYTE4(v145);
      LOBYTE(v144[2]) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Transport Type:       ", 22);
      v26 = strlen(v144);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v144, v26);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v27 = std::locale::use_facet(&v131, v16);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v131);
      std::ostream::put();
      std::ostream::flush();
      v28 = v17[4];
      v146 = 0x676C6F6262686175;
      v147 = 0;
      v148 = 0;
      (*(*v17 + 120))(v17, v28, &v146, 4, &v148, &v148 + 4, 0, 0, 0);
      v29 = HIDWORD(v148);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Has Audio:            ", 22);
      if (v29)
      {
        v30 = "yes";
      }

      else
      {
        v30 = "no";
      }

      if (v29)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v30, v31);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v32 = std::locale::use_facet(&v132, v16);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v132);
      std::ostream::put();
      std::ostream::flush();
      v33 = v17[4];
      v149 = 0x676C6F6262687669;
      v150 = 0;
      v151 = 0;
      (*(*v17 + 120))(v17, v33, &v149, 4, &v151, &v151 + 4, 0, 0, 0);
      v34 = HIDWORD(v151);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Has Video:            ", 22);
      if (v34)
      {
        v35 = "yes";
      }

      else
      {
        v35 = "no";
      }

      if (v34)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v35, v36);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v37 = std::locale::use_facet(&v133, v16);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v133);
      std::ostream::put();
      std::ostream::flush();
      v38 = v17[4];
      v152 = 0x676C6F6262686D69;
      v153 = 0;
      v154 = 0;
      (*(*v17 + 120))(v17, v38, &v152, 4, &v154, &v154 + 4, 0, 0, 0);
      v39 = HIDWORD(v154);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Has MIDI:             ", 22);
      if (v39)
      {
        v40 = "yes";
      }

      else
      {
        v40 = "no";
      }

      if (v39)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v40, v41);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v42 = std::locale::use_facet(&v134, v16);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&v134);
      std::ostream::put();
      std::ostream::flush();
      v43 = v17[4];
      v155 = 0x676C6F626270726FLL;
      v156 = 0;
      v157 = 0;
      (*(*v17 + 120))(v17, v43, &v155, 4, &v157, &v157 + 4, 0, 0, 0);
      v44 = HIDWORD(v157);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Is Protected:         ", 22);
      if (v44)
      {
        v45 = "yes";
      }

      else
      {
        v45 = "no";
      }

      if (v44)
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v45, v46);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v47 = std::locale::use_facet(&v135, v16);
      (v47->__vftable[2].~facet_0)(v47, 10);
      std::locale::~locale(&v135);
      std::ostream::put();
      std::ostream::flush();
      v48 = v17[4];
      v158 = 0x676C6F6262786F6ELL;
      v159 = 0;
      v160 = 0;
      (*(*v17 + 120))(v17, v48, &v158, 4, &v160, &v160 + 4, 0, 0, 0);
      v49 = HIDWORD(v160);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Is Acquired:          ", 22);
      if (v49)
      {
        v50 = "yes";
      }

      else
      {
        v50 = "no";
      }

      if (v49)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v50, v51);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v52 = std::locale::use_facet(&v136, v16);
      (v52->__vftable[2].~facet_0)(v52, 10);
      std::locale::~locale(&v136);
      std::ostream::put();
      std::ostream::flush();
      if (v49)
      {
        v53 = v17[4];
        __p = 0x676C6F6262647623;
        LODWORD(v124) = 0;
        v54 = (*(*v17 + 112))(v17, v53, &__p, 0, 0, 0);
        LODWORD(v120) = 0;
        std::vector<unsigned int>::vector[abi:ne200100](&__p, v54 >> 2, &v120);
        v55 = v17[4];
        v120 = 0x676C6F6262647623;
        LODWORD(v121) = 0;
        v126 = 0;
        (*(*v17 + 120))(v17, v55, &v120, v54 & 0xFFFFFFFC, &v126, __p, 0, 0, 0);
        v56 = v126;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number Devices:       ", 22);
        v57 = MEMORY[0x1E12C1210](v4, v56 >> 2);
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v58 = std::locale::use_facet(&v137, v16);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(&v137);
        std::ostream::put();
        std::ostream::flush();
        v60 = __p;
        v59 = v124;
        while (v60 != v59)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Device: ", 8);
          v61 = MEMORY[0x1E12C1210](v4, *v60);
          std::ios_base::getloc((v61 + *(*v61 - 24)));
          v62 = std::locale::use_facet(&v138, v16);
          (v62->__vftable[2].~facet_0)(v62, 10);
          std::locale::~locale(&v138);
          std::ostream::put();
          std::ostream::flush();
          ++v60;
        }

        v63 = v17[4];
        v120 = 0x676C6F6262636C23;
        LODWORD(v121) = 0;
        v64 = (*(*v17 + 112))(v17, v63, &v120, 0, 0, 0);
        LODWORD(v174) = 0;
        std::vector<unsigned int>::vector[abi:ne200100](&v120, v64 >> 2, &v174);
        v65 = v17[4];
        v174 = 0x676C6F6262636C23;
        v175 = 0;
        v127 = 0;
        (*(*v17 + 120))(v17, v65, &v174, v64 & 0xFFFFFFFC, &v127, v120, 0, 0, 0);
        v66 = v127;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number Clock Devices: ", 22);
        v67 = MEMORY[0x1E12C1210](v4, v66 >> 2);
        std::ios_base::getloc((v67 + *(*v67 - 24)));
        v68 = std::locale::use_facet(&v139, v16);
        (v68->__vftable[2].~facet_0)(v68, 10);
        std::locale::~locale(&v139);
        std::ostream::put();
        std::ostream::flush();
        v70 = v120;
        v69 = v121;
        if (v120 != v121)
        {
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Device: ", 8);
            v71 = MEMORY[0x1E12C1210](v4, *v70);
            std::ios_base::getloc((v71 + *(*v71 - 24)));
            v72 = std::locale::use_facet(&v140, v16);
            (v72->__vftable[2].~facet_0)(v72, 10);
            std::locale::~locale(&v140);
            std::ostream::put();
            std::ostream::flush();
            ++v70;
          }

          while (v70 != v69);
          v70 = v120;
        }

        if (v70)
        {
          v121 = v70;
          operator delete(v70);
        }

        if (__p)
        {
          v124 = __p;
          operator delete(__p);
        }
      }

      OS::CF::UntypedObject::~UntypedObject(&v161);
      ++v15;
    }

    while (v15 != v115);
  }

  __p = 0;
  v124 = 0;
  v125 = 0;
  HALS_DeviceManager::CopyDeviceList(a1, &__p, 1, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number of Devices:       ", 25);
  v73 = MEMORY[0x1E12C1220](v4, (v124 - __p) >> 3);
  std::ios_base::getloc((v73 + *(*v73 - 24)));
  v74 = std::locale::use_facet(&v178, MEMORY[0x1E69E5318]);
  (v74->__vftable[2].~facet_0)(v74, 10);
  std::locale::~locale(&v178);
  std::ostream::put();
  std::ostream::flush();
  v75 = __p;
  v76 = v124;
  while (v75 != v76)
  {
    HALS_Device::LogState(*v75++, v114);
  }

  v120 = 0;
  v121 = 0;
  v122 = 0;
  HALS_DeviceManager::CopyClockDeviceList(a1, &v120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Number of Clock Devices: ", 25);
  v77 = MEMORY[0x1E12C1220](v4, (v121 - v120) >> 3);
  std::ios_base::getloc((v77 + *(*v77 - 24)));
  v78 = std::locale::use_facet(&v178, MEMORY[0x1E69E5318]);
  (v78->__vftable[2].~facet_0)(v78, 10);
  std::locale::~locale(&v178);
  std::ostream::put();
  std::ostream::flush();
  v80 = v120;
  v81 = v121;
  if (v120 != v121)
  {
    v82 = MEMORY[0x1E69E5318];
    do
    {
      v83 = *v80;
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v84 = std::locale::use_facet(&v163, v82);
      (v84->__vftable[2].~facet_0)(v84, 10);
      std::locale::~locale(&v163);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Clock Device ", 13);
      v85 = MEMORY[0x1E12C1210](v4, v83[4]);
      std::ios_base::getloc((v85 + *(*v85 - 24)));
      v86 = std::locale::use_facet(&v164, v82);
      (v86->__vftable[2].~facet_0)(v86, 10);
      std::locale::~locale(&v164);
      std::ostream::put();
      std::ostream::flush();
      v87 = v83[4];
      v178.__locale_ = 0x676C6F626C6E616DLL;
      v179 = 0;
      *v173 = 0;
      v172 = 0;
      (*(*v83 + 120))(v83, v87, &v178, 8, &v172, v173, 0, 0, 0);
      v161 = &unk_1F5991188;
      v162 = *v173;
      OS::CF::String::AsCString(&v161, &v178, 128);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Name:                ", 21);
      v88 = strlen(&v178);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v178, v88);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v89 = std::locale::use_facet(&v165, v82);
      (v89->__vftable[2].~facet_0)(v89, 10);
      std::locale::~locale(&v165);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "UID:                 ", 21);
      v90 = strlen(v83 + 120);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, (v83 + 30), v90);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v91 = std::locale::use_facet(&v166, v82);
      (v91->__vftable[2].~facet_0)(v91, 10);
      std::locale::~locale(&v166);
      std::ostream::put();
      std::ostream::flush();
      TransportType = HALS_IODevice::GetTransportType(v83);
      v173[0] = HIBYTE(TransportType);
      v173[1] = BYTE2(TransportType);
      v173[2] = BYTE1(TransportType);
      v173[3] = TransportType;
      v173[4] = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Transport Type:      ", 21);
      v93 = strlen(v173);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v173, v93);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v94 = std::locale::use_facet(&v167, v82);
      (v94->__vftable[2].~facet_0)(v94, 10);
      std::locale::~locale(&v167);
      std::ostream::put();
      std::ostream::flush();
      v95 = v83[4];
      v174 = 0x676C6F626869646ELL;
      v175 = 0;
      v176 = 0;
      (*(*v83 + 120))(v83, v95, &v174, 4, &v176, &v176 + 4, 0, 0, 0);
      v96 = HIDWORD(v176);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Is Hidden:           ", 21);
      if (v96)
      {
        v97 = "yes";
      }

      else
      {
        v97 = "no";
      }

      if (v96)
      {
        v98 = 3;
      }

      else
      {
        v98 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v97, v98);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v99 = std::locale::use_facet(&v168, v82);
      (v99->__vftable[2].~facet_0)(v99, 10);
      std::locale::~locale(&v168);
      std::ostream::put();
      std::ostream::flush();
      v100 = (*(*v83 + 328))(v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Clock Domain:        ", 21);
      v101 = MEMORY[0x1E12C1210](v4, v100);
      std::ios_base::getloc((v101 + *(*v101 - 24)));
      v102 = std::locale::use_facet(&v169, v82);
      (v102->__vftable[2].~facet_0)(v102, 10);
      std::locale::~locale(&v169);
      std::ostream::put();
      std::ostream::flush();
      v103 = (*(*v83 + 312))(v83, 1);
      v104 = (*(*v83 + 312))(v83, 0);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Latency              In: ", 25);
      v105 = MEMORY[0x1E12C1210](v4, v103);
      v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, " Out: ", 6);
      v107 = MEMORY[0x1E12C1210](v106, v104);
      std::ios_base::getloc((v107 + *(*v107 - 24)));
      v108 = std::locale::use_facet(&v170, v82);
      (v108->__vftable[2].~facet_0)(v108, 10);
      std::locale::~locale(&v170);
      std::ostream::put();
      std::ostream::flush();
      v109 = (*(*v83 + 272))(v83);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Nominal Sample Rate: ", 21);
      v110 = MEMORY[0x1E12C11E0](v4, v109);
      std::ios_base::getloc((v110 + *(*v110 - 24)));
      v111 = std::locale::use_facet(&v171, v82);
      (v111->__vftable[2].~facet_0)(v111, 10);
      std::locale::~locale(&v171);
      std::ostream::put();
      std::ostream::flush();
      OS::CF::UntypedObject::~UntypedObject(&v161);
      ++v80;
    }

    while (v80 != v81);
  }

  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v120, v79);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&__p, v112);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v116, v113);
}

void sub_1DE575B9C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, HALS_ObjectMap **);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va1, a2);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va, v13);
  _Unwind_Resume(a1);
}

void HALS_DeviceManager::CopyRawDeviceList(HALS_DeviceManager *this, HALS_DeviceManager::BasicDeviceList *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4002000000;
  v12 = __Block_byref_object_copy__11571;
  v13 = __Block_byref_object_dispose__11572;
  memset(v14, 0, sizeof(v14));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZNK18HALS_DeviceManager17CopyRawDeviceListERNS_15BasicDeviceListE_block_invoke;
  v8[3] = &unk_1E8676CA0;
  v8[4] = &v9;
  v8[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v8);
  v5 = v10[5];
  v6 = v10[6];
  while (v5 != v6)
  {
    HALS_ObjectMap::RetainObject(*v5, v4);
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, v5++);
  }

  _Block_object_dispose(&v9, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v14, v7);
}

void sub_1DE575D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v13 + 40), v15);
  _Unwind_Resume(a1);
}

void sub_1DE575DF8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_ObjectMap *HALS_DeviceManager::CopyDeviceByObjectID(HALS_DeviceManager *this, int a2, HALS_Client *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v11, 1, a3);
  v5 = v11;
  while (v5 != v12)
  {
    v7 = *v5++;
    v6 = v7;
    if (*(v7 + 4) == a2 && v6 != 0)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v11, v9);
  return v6;
}

void sub_1DE575E90(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

void AMCP::DAL::PCM_Data_Handler::get_data(uint64_t *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *a1;
  v8 = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a1);
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v8);
  v10 = round(length_in_frames);
  if (v10 <= 0.0)
  {
    goto LABEL_38;
  }

  v11 = round(a3);
  v12 = round(a4);
  v13 = v11;
  v14 = v12;
  if (v11 < v12)
  {
    v15 = 0.0;
    if (v11 > 0.0)
    {
      v15 = a3;
    }

    if (v12 >= v10)
    {
      v16 = length_in_frames;
    }

    else
    {
      v16 = a4;
    }

    v14 = round(v16);
    v13 = round(v15);
  }

  if (v13 >= v14)
  {
LABEL_38:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v17 = *(v7 + 56);
    v18 = *(v7 + 64);
    if (v17 != v18)
    {
      v19 = 0;
      v20 = v11 >= v12;
      v21 = v11 > 0.0 || v11 >= v12;
      v22 = 0.0;
      if (v21)
      {
        v22 = a3;
      }

      if (v12 < v10)
      {
        v20 = 1;
      }

      v23 = vcvtmd_s64_f64(v22);
      if (v20)
      {
        length_in_frames = a4;
      }

      v24 = vcvtmd_s64_f64(length_in_frames - v22);
      do
      {
        if ((*(v7 + 20) & 0x20) != 0)
        {
          v25 = 1;
        }

        else
        {
          v25 = *(v7 + 36);
        }

        v26 = *v17 + (*(v7 + 32) * v23);
        v27 = v25 * v24;
        v28 = *(a2 + 16);
        if (v19 >= v28)
        {
          v29 = (v19 - *a2) >> 4;
          if ((v29 + 1) >> 60)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v30 = v28 - *a2;
          v31 = v30 >> 3;
          if (v30 >> 3 <= (v29 + 1))
          {
            v31 = v29 + 1;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFF0)
          {
            v32 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v31;
          }

          v40[4] = a2;
          if (v32)
          {
            v32 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v32);
          }

          else
          {
            v33 = 0;
          }

          v34 = (v32 + 16 * v29);
          v35 = v32 + 16 * v33;
          *v34 = v26;
          v34[1] = v27;
          v19 = v34 + 2;
          v36 = *(a2 + 8) - *a2;
          v37 = v34 - v36;
          memcpy(v34 - v36, *a2, v36);
          v38 = *a2;
          *a2 = v37;
          *(a2 + 8) = v19;
          v39 = *(a2 + 16);
          *(a2 + 16) = v35;
          v40[2] = v38;
          v40[3] = v39;
          v40[0] = v38;
          v40[1] = v38;
          std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(v40);
        }

        else
        {
          *v19 = v26;
          v19[1] = v27;
          v19 += 2;
        }

        *(a2 + 8) = v19;
        v17 += 3;
      }

      while (v17 != v18);
    }
  }
}

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(uint64_t result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v1 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *v3;
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    else
    {
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "Container.h";
      v18 = 1024;
      v19 = 121;
      v20 = 2080;
      v21 = "not ((m_impl.get()) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to call Container::GetContainerData on a null Container", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v7, "Attempt to call Container::GetContainerData on a null Container", v5);
    std::logic_error::logic_error(&v8, &v7);
    v8.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v9, &v8);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v9.__vftable = &unk_1F5991430;
    v10 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v9);
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::PCM_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  return result;
}

void sub_1DE576310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::PCM_Data_Handler::get_length_in_frames(AMCP::DAL::PCM_Data_Handler *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(this + 7);
  if (v1 == *(this + 8))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "PCM_Data_Handler.cpp";
      v20 = 1024;
      v21 = 111;
      v22 = 2080;
      v23 = "not (not m_samples.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad format for PCM data", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v9, "Bad format for PCM data", v7);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual Sample_Time AMCP::DAL::PCM_Data_Handler::get_length_in_frames() const";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v26 = 111;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return (*(v1 + 8) / *(this + 8));
}

void sub_1DE576630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void *AMCP::DAL::PCM_Data_Handler::dal_operation_get_property(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "expected output samples for input samples");
  v5 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  v6 = v5;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    std::string::basic_string[abi:ne200100]<0>(__p, "expected output samples for input samples");
    v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
    if (v7)
    {
      v8 = AMCP::Thing::convert_to<unsigned long long>((v7 + 5));
    }

    else
    {
      v8 = 0;
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    result = *(v4 + 32);
    if (result)
    {
      return (*(*result + 32))(result, v8, __p);
    }

    return result;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "actual input samples consumed");
  v9 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  v10 = v9;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else if (v9)
  {
LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(__p, "actual input samples consumed");
    v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
    if (v11)
    {
      v12 = AMCP::Thing::convert_to<unsigned long long>((v11 + 5));
    }

    else
    {
      v12 = 0;
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    result = *(v4 + 32);
    if (result)
    {
      (*(*result + 32))(result, v12, __p);
      return __p[0];
    }

    return result;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "required input samples for output samples");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  v15 = v14;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(__p, "required input samples for output samples");
    v16 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
    if (v16)
    {
      v17 = AMCP::Thing::convert_to<unsigned long long>((v16 + 5));
    }

    else
    {
      v17 = 0;
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    result = *(v4 + 32);
    if (result)
    {
      return (*(*result + 24))(result, v17);
    }

    return result;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "get latency");
  v18 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v18)
  {
    return 0;
  }

  result = *(v4 + 32);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_1DE576980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::DAL::PCM_Data_Handler::dal_operation_apply(AMCP::DAL::PCM_Data_Handler *a1, double *a2, uint64_t ***a3, uint64_t a4, uint64_t *a5, double a6, double a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v15 = round(AMCP::DAL::PCM_Data_Handler::get_length_in_frames(a1));
  if (v15 <= 0.0 || (v16 = a2[1], v17 = round(*a2), v18 = round(v16), v17 < v18) && (v17 >= 0.0 ? (v19 = v15 < v18) : (v19 = 1), v19))
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "PCM_Data_Handler.cpp";
      v43 = 1024;
      v44 = 258;
      v45 = 2080;
      v46 = "not (Sample_Time_Range(0_S, get_length_in_frames()).encompasses(source_range))";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v32, "", v29);
    std::logic_error::logic_error(&v33, &v32);
    v33.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v34, &v33);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v34);
    v47 = "virtual Sample_Time_Range AMCP::DAL::PCM_Data_Handler::dal_operation_apply(const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &, DAL_Operation_Context_Ref) const";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v49 = 258;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v20 = *a5;
  AMCP::DAL::PCM_Data_Handler::get_container_data(buf, a1, *a2, v16);
  v21 = *a3;
  v22 = a3[1];
  v30[0] = v21;
  v30[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = AMCP::DAL::PCM_Operation_Context::apply(v20, buf, a2, v30, a4, a6, a7);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
  return v23;
}

void sub_1DE576CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((v27 - 144));
  _Unwind_Resume(a1);
}

void AMCP::DAL::PCM_Data_Handler::get_container_data(caulk::rt_safe_memory_resource *a1, AMCP::DAL::PCM_Data_Handler *this, double a3, double a4)
{
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(this);
  v9 = round(length_in_frames);
  if (v9 <= 0.0)
  {
    goto LABEL_26;
  }

  v10 = round(a3);
  v11 = round(a4);
  v12 = v10;
  v13 = v11;
  if (v10 < v11)
  {
    v14 = 0.0;
    if (v10 > 0.0)
    {
      v14 = a3;
    }

    if (v11 >= v9)
    {
      v15 = length_in_frames;
    }

    else
    {
      v15 = a4;
    }

    v13 = round(v15);
    v12 = round(v14);
  }

  if (v12 >= v13)
  {
LABEL_26:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    v16 = *(this + 7);
    v17 = *(this + 8);
    if (v16 != v17)
    {
      v18 = v10 >= v11;
      v19 = v10 > 0.0 || v10 >= v11;
      v20 = 0.0;
      if (v19)
      {
        v20 = a3;
      }

      if (v11 < v9)
      {
        v18 = 1;
      }

      if (v18)
      {
        length_in_frames = a4;
      }

      v21 = vcvtmd_s64_f64(v20);
      v22 = vcvtmd_s64_f64(length_in_frames - v20);
      do
      {
        if ((*(this + 20) & 0x20) != 0)
        {
          v23 = 1;
        }

        else
        {
          v23 = *(this + 9);
        }

        v24 = *v16;
        v16 += 3;
        *&v25 = v24 + (*(this + 8) * v21);
        *(&v25 + 1) = (v23 * v22);
        caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(a1, &v25);
      }

      while (v16 != v17);
    }
  }
}

caulk::rt_safe_memory_resource *caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(caulk::rt_safe_memory_resource *result, _OWORD *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
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

    v18[4] = v3;
    if (v10)
    {
      v10 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v10 + 16 * v7);
    v13 = v10 + 16 * v11;
    *v12 = *a2;
    v6 = v12 + 1;
    v14 = *(v3 + 1) - *v3;
    v15 = v12 - v14;
    memcpy(v12 - v14, *v3, v14);
    v16 = *v3;
    *v3 = v15;
    *(v3 + 1) = v6;
    v17 = *(v3 + 2);
    *(v3 + 2) = v13;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(v18);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void sub_1DE577054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<AMCP::DAL::PCM_Operation_Context>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

AMCP::DAL::PCM_Operation_Context **std::unique_ptr<AMCP::DAL::PCM_Operation_Context>::~unique_ptr[abi:ne200100](AMCP::DAL::PCM_Operation_Context **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AMCP::DAL::PCM_Operation_Context::~PCM_Operation_Context(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_Operation_Context *,std::shared_ptr<AMCP::DAL::DAL_Operation_Context>::__shared_ptr_default_delete<AMCP::DAL::DAL_Operation_Context,AMCP::DAL::PCM_Operation_Context>,std::allocator<AMCP::DAL::PCM_Operation_Context>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL21DAL_Operation_ContextEE27__shared_ptr_default_deleteIS3_NS2_21PCM_Operation_ContextEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

AMCP::DAL::PCM_Operation_Context *std::__shared_ptr_pointer<AMCP::DAL::PCM_Operation_Context *,std::shared_ptr<AMCP::DAL::DAL_Operation_Context>::__shared_ptr_default_delete<AMCP::DAL::DAL_Operation_Context,AMCP::DAL::PCM_Operation_Context>,std::allocator<AMCP::DAL::PCM_Operation_Context>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AMCP::DAL::PCM_Operation_Context::~PCM_Operation_Context(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_Operation_Context *,std::shared_ptr<AMCP::DAL::DAL_Operation_Context>::__shared_ptr_default_delete<AMCP::DAL::DAL_Operation_Context,AMCP::DAL::PCM_Operation_Context>,std::allocator<AMCP::DAL::PCM_Operation_Context>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *AMCP::DAL::PCM_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::PCM_Data_Handler *this)
{
  {
    AMCP::DAL::PCM_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F597A2A0;
  }

  return &AMCP::DAL::PCM_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::PCM_Buffer_Time_Translator::translate_range(const AMCP::DAL::DAL_Time_Range *a1@<X1>, const AMCP::DAL::DAL_Time_Range *a2@<X2>, unint64_t *a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  AMCP::DAL::DAL_Time::operator-(&v34, (a1 + 40), a1);
  v6 = AMCP::DAL::DAL_Time_Delta::operator<(&v34, buf);
  if (*(&v36 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
  }

  v7 = v41;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v6)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PCM_Data_Handler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 445;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length() <= ref_range.length())";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v32, "", v30);
    std::logic_error::logic_error(&v33, &v32);
    v33.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v34, &v33);
    v36 = 0uLL;
    v37 = 0;
    v38 = -1;
    v34.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v34);
    v41 = "virtual rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::PCM_Buffer_Time_Translator::translate_range(const DAL_Time_Range &, const DAL_Time_Range &) const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    LODWORD(v43) = 445;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v9 = *&buf[8];
  v10 = fmod(round(sample_time), *&buf[8]);
  if (round(v10) >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9 + v10;
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v12 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 40));
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v13 = *&buf[8];
  v14 = fmod(round(v12), *&buf[8]);
  if (round(v14) >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13 + v14;
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v16 = round(v15);
  if (round(v11) < v16)
  {
    *buf = v11;
    *&buf[8] = v15;
    *&buf[16] = *a2;
    v17 = *(a2 + 3);
    v41 = *(a2 + 2);
    v42 = v17;
    v18 = *(a2 + 4);
    v43 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v44 = *(a2 + 40);
    v19 = *(a2 + 8);
    v45 = *(a2 + 7);
    v46 = v19;
    v20 = *(a2 + 9);
    v47 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(a3, buf);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    v21 = v43;
    if (!v43)
    {
      return;
    }

LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    return;
  }

  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v22 = *&buf[8];
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v23 = v22 - v11 + round(AMCP::DAL::DAL_Time::get_sample_time(a2));
  v24 = *(a2 + 24);
  v25 = *(a2 + 4);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v34.__vftable) = 2;
  *&v34.__imp_.__imp_ = v23;
  v35 = 0;
  v36 = v24;
  *buf = v11;
  *&buf[8] = v22;
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&buf[16], a2, &v34);
  caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(a3, buf);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v16 > 0.0)
  {
    *buf = 0;
    *&buf[8] = v15;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&buf[16], &v34, (a2 + 40));
    caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(a3, buf);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }
  }

  if (v25)
  {
    v21 = v25;
    goto LABEL_46;
  }
}

void sub_1DE577708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&a35);
  _Unwind_Resume(a1);
}

uint64_t caulk::rt::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range>::push_back(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    v5 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = v5;
    *(v3 + 80) = *(a2 + 80);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

AMCP::DAL::PCM_Data_Handler *AMCP::DAL::PCM_Data_Handler::erase_range(AMCP::DAL::PCM_Data_Handler *this, double a2, double a3)
{
  v3 = a3 - a2;
  if (round(a3 - a2) > 0.0)
  {
    v4 = this;
    AMCP::DAL::PCM_Data_Handler::get_container_data(&v8, this, a2, a3);
    if (v9 != v8)
    {
      v5 = 0;
      v6 = *(v4 + 8) * vcvtmd_s64_f64(v3);
      if (((v9 - v8) >> 4) <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = (v9 - v8) >> 4;
      }

      do
      {
        bzero(*(v8 + v5), v6);
        v5 += 16;
        --v7;
      }

      while (v7);
    }

    return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  return this;
}

void AMCP::DAL::PCM_Data_Handler::mix(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t ***a2, double a3, double a4, double a5)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) != 1819304813 || (v6 = *(a1 + 5), (v6 & 0x40) != 0))
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v55 = "PCM_Data_Handler.cpp";
      v56 = 1024;
      v57 = 385;
      v58 = 2080;
      v59 = "not (get_format().IsMixable())";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format is not mixable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v47, "Format is not mixable", v35);
    std::logic_error::logic_error(&v43, &v47);
    v43.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v48, &v43);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -1;
    v48.__vftable = &unk_1F5991430;
    v49 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v48);
    v60 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v62 = 385;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v46);
  }

  v8 = *a2;
  if (!*a2 || (*(v8 + 4) == 1819304813 ? (v9 = (*(v8 + 5) & 0x40) == 0) : (v9 = 0), !v9))
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      v55 = "PCM_Data_Handler.cpp";
      v56 = 1024;
      v57 = 386;
      v58 = 2080;
      v59 = "not (dest_container.get_format().IsMixable())";
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format is not mixable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v47, "Format is not mixable", v36);
    std::logic_error::logic_error(&v43, &v47);
    v43.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v48, &v43);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -1;
    v48.__vftable = &unk_1F5991430;
    v49 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v48);
    v60 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v62 = 386;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v46);
  }

  if ((~v6 & 9) != 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v55 = "PCM_Data_Handler.cpp";
      v56 = 1024;
      v57 = 387;
      v58 = 2080;
      v59 = "not ((get_format().mFormatFlags & kAudioFormatFlagIsFloat) and (get_format().mFormatFlags & kAudioFormatFlagIsPacked))";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We only support mixing 32bit float format samples", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v47, "We only support mixing 32bit float format samples", v22);
    std::logic_error::logic_error(&v43, &v47);
    v43.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v48, &v43);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -1;
    v48.__vftable = &unk_1F5991430;
    v49 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v48);
    v60 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v62 = 387;
    std::vector<void *>::vector[abi:ne200100](v46);
  }

  v17 = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v8);
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v17);
  if (round(a3 + length_in_frames - a5) < round(a4))
  {
    a4 = a3 + length_in_frames - a5;
  }

  if (round(a3) < round(a4))
  {
    AMCP::DAL::PCM_Data_Handler::get_container_data(&v47, a1, a3, a4);
    v19 = *a2;
    AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(v19);
    AMCP::DAL::PCM_Data_Handler::get_other_data<float>(v46, v19, a5, length_in_frames);
    if ((*(a1 + 20) & 0x20) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = *(a1 + 9);
    }

    v23 = v47.__r_.__value_.__l.__size_ - v47.__r_.__value_.__r.__words[0];
    if (v47.__r_.__value_.__l.__size_ - v47.__r_.__value_.__r.__words[0] != v46[1] - v46[0])
    {
      v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v37 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v20);
      }

      v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        v40 = *v39;
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      else
      {
        v40 = *v39;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v55 = "PCM_Data_Handler.cpp";
        v56 = 1024;
        v57 = 399;
        v58 = 2080;
        v59 = "not (source.size() == dest.size())";
        _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v43, "", v41);
      std::logic_error::logic_error(&v44, &v43);
      v44.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v48, &v44);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = -1;
      v48.__vftable = &unk_1F5991430;
      v49 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v48);
      v60 = "virtual void AMCP::DAL::PCM_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
      v61 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
      v62 = 399;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
    }

    if (v47.__r_.__value_.__l.__size_ != v47.__r_.__value_.__r.__words[0])
    {
      v24 = 0;
      v25 = v21 * vcvtmd_s64_f64(a4 - a3);
      if ((v23 >> 4) <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v23 >> 4;
      }

      do
      {
        MEMORY[0x1E12C2930](*(v46[0] + v24), 1, *(v47.__r_.__value_.__r.__words[0] + v24), 1, *(v46[0] + v24), 1, v25);
        v24 += 16;
        --v26;
      }

      while (v26);
    }

    std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v46);
    std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v47);
  }
}

void AMCP::DAL::PCM_Data_Handler::get_other_data<float>(caulk::rt_safe_memory_resource *a1, uint64_t **this, double a3, double a4)
{
  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(this);
  v9 = round(length_in_frames);
  if (v9 <= 0.0)
  {
    goto LABEL_26;
  }

  v10 = round(a3);
  v11 = round(a4);
  v12 = v10;
  v13 = v11;
  if (v10 < v11)
  {
    v14 = 0.0;
    if (v10 > 0.0)
    {
      v14 = a3;
    }

    if (v11 >= v9)
    {
      v15 = length_in_frames;
    }

    else
    {
      v15 = a4;
    }

    v13 = round(v15);
    v12 = round(v14);
  }

  if (v12 >= v13)
  {
LABEL_26:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    v16 = this[7];
    v17 = this[8];
    if (v16 != v17)
    {
      v18 = v10 >= v11;
      v19 = v10 > 0.0 || v10 >= v11;
      v20 = 0.0;
      if (v19)
      {
        v20 = a3;
      }

      if (v11 < v9)
      {
        v18 = 1;
      }

      if (v18)
      {
        length_in_frames = a4;
      }

      v21 = vcvtmd_s64_f64(v20);
      v22 = vcvtmd_s64_f64(length_in_frames - v20);
      do
      {
        if ((*(this + 20) & 0x20) != 0)
        {
          v23 = 1;
        }

        else
        {
          v23 = *(this + 9);
        }

        v24 = *v16;
        v16 += 3;
        *&v25 = v24 + (*(this + 8) * v21);
        *(&v25 + 1) = v23 * v22;
        caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(a1, &v25);
      }

      while (v16 != v17);
    }
  }
}

void AMCP::DAL::PCM_Data_Handler::copy(AMCP::DAL::PCM_Data_Handler *a1, double *a2, AMCP::DAL::PCM_Data_Handler **a3, uint64_t a4, double a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a3);
  v10 = *(a4 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (round(AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v9)) <= 0.0)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      *buf = 136315650;
      v49 = "PCM_Data_Handler.cpp";
      v50 = 1024;
      v51 = 307;
      v52 = 2080;
      v53 = "not (dest_handler->get_length_in_frames() > 0_S)";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "", v33);
    std::logic_error::logic_error(&v37, &v39);
    v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v41, &v37);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5991430;
    v42 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v41);
    *&v55[2] = "void AMCP::DAL::PCM_Data_Handler::copy_data(const Sample_Time_Range &, PCM_Data_Handler *, Sample_Time, DAL_Operation_Context_Ref) const";
    v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v57[0] = 307;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  length_in_frames = AMCP::DAL::PCM_Data_Handler::get_length_in_frames(v9);
  AMCP::DAL::PCM_Data_Handler::get_container_data(&v37, a1, *a2, a2[1]);
  if (v37.__vftable == v37.__imp_.__imp_)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v13);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v49 = "PCM_Data_Handler.cpp";
      v50 = 1024;
      v51 = 311;
      v52 = 2080;
      v53 = "not (not source.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "", v34);
    std::logic_error::logic_error(&v36, &v39);
    v36.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v41, &v36);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5991430;
    v42 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v41);
    *&v55[2] = "void AMCP::DAL::PCM_Data_Handler::copy_data(const Sample_Time_Range &, PCM_Data_Handler *, Sample_Time, DAL_Operation_Context_Ref) const";
    v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v57[0] = 311;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v36, v9, a5, length_in_frames);
  v16 = v37.__vftable;
  imp = v37.__imp_.__imp_;
  v17 = v36.__vftable;
  if (v37.__imp_.__imp_ - v37.__vftable != v36.__imp_.__imp_ - v36.__vftable)
  {
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
    }

    v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v32 = *v31;
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    else
    {
      v32 = *v31;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v49 = "PCM_Data_Handler.cpp";
      v50 = 1024;
      v51 = 324;
      v52 = 2080;
      v53 = "not (source.size() == destination.size())";
      v54 = 2080;
      *v55 = "static void AMCP::DAL::PCM_Data_Handler::copy_samples(const Sample_Group<T> &, Sample_Group<T> &, const CA::StreamDescription &) [T = float]";
      *&v55[8] = 2048;
      v56 = (v37.__imp_.__imp_ - v37.__vftable) >> 4;
      LOWORD(v57[0]) = 2048;
      *(v57 + 2) = (v36.__imp_.__imp_ - v36.__vftable) >> 4;
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s %s: sample layout does not match (source=%zu streams, dest=%zu streams)!", buf, 0x3Au);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "%s: sample layout does not match (source=%zu streams, dest=%zu streams)!", v35, "static void AMCP::DAL::PCM_Data_Handler::copy_samples(const Sample_Group<T> &, Sample_Group<T> &, const CA::StreamDescription &) [T = float]", (v37.__imp_.__imp_ - v37.__vftable) >> 4, (v36.__imp_.__imp_ - v36.__vftable) >> 4);
    std::logic_error::logic_error(&v40, &v39);
    v40.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v41, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5991430;
    v42 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v41);
    *&v55[2] = "static void AMCP::DAL::PCM_Data_Handler::copy_samples(const Sample_Group<T> &, Sample_Group<T> &, const CA::StreamDescription &) [T = float]";
    v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v57[0] = 324;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  while (v16 != imp && v17 != v36.__imp_.__imp_)
  {
    v18 = v17->~logic_error_0;
    if (v18 >= v16->~logic_error_0)
    {
      v18 = v16->~logic_error_0;
    }

    if (v18)
    {
      v19 = *(a1 + 8) * v18;
      if ((*(a1 + 5) & 0x20) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = *(a1 + 9);
      }

      memcpy(v17->~logic_error, v16->~logic_error, v19 / v20);
      imp = v37.__imp_.__imp_;
    }

    v16 = (v16 + 16);
    v17 = (v17 + 16);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v36);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v37);
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE578FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34)
{
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::PCM_Data_Handler::get_audio_buffer_list@<X0>(uint64_t ***a1@<X1>, caulk::rt_safe_memory_resource **a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *a1;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a1);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(v15, v8, a3, a4);
  v9 = *a1;
  if (*a1)
  {
    v10 = *(v9 + 24);
    v12 = *(v9 + 8);
    v13 = v10;
    v14 = *(v9 + 40);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  AMCP::DAL::create_abl(a2, v15, &v12);
  return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v15);
}

uint64_t AMCP::DAL::create_abl(caulk::rt_safe_memory_resource **a1, void *a2, uint64_t a3)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v6 = AMCP::Utility::AudioBufferList_Create(((a2[1] - *a2) >> 4));
  v16[0] = &unk_1F59915B8;
  v16[3] = v16;
  *a1 = v6;
  std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((a1 + 1), v16);
  result = std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v16);
  v8 = a2[1] - *a2;
  if (v8)
  {
    v9 = v8 >> 4;
    v10 = *(a3 + 24);
    LODWORD(v11) = *(a3 + 28);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    if ((*(a3 + 12) & 0x20) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = (*a1 + 16);
    v13 = (*a2 + 8);
    do
    {
      v14 = *(v13 - 1);
      v15 = v10 * (*v13 / v11);
      *(v12 - 2) = v11;
      *(v12 - 1) = v15;
      *v12 = v14;
      v12 += 2;
      v13 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

caulk::rt_safe_memory_resource *AMCP::DAL::PCM_Data_Handler::get_audio_buffer_list@<X0>(uint64_t *a1@<X1>, caulk::rt_safe_memory_resource **a2@<X8>)
{
  v4 = *a1;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a1);
  AMCP::DAL::sample_group_from_samples<float>(v11, (v4 + 56));
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 24);
    v8 = *(v5 + 8);
    v9 = v6;
    v10 = *(v5 + 40);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  AMCP::DAL::create_abl(a2, v11, &v8);
  return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v11);
}

caulk::rt_safe_memory_resource *AMCP::DAL::sample_group_from_samples<float>(caulk::rt_safe_memory_resource *result, uint64_t **a2)
{
  v2 = result;
  *result = 0;
  *(result + 1) = 0;
  *(result + 2) = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
    if (v5 >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v19 = v2;
    v7 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v5);
    v9 = v7 + 16 * v8;
    v10 = *(v2 + 1) - *v2;
    v11 = v7 - v10;
    memcpy((v7 - v10), *v2, v10);
    v12 = *v2;
    *v2 = v11;
    *(v2 + 1) = v7;
    v13 = *(v2 + 2);
    *(v2 + 2) = v9;
    v17 = v12;
    v18 = v13;
    *&v16 = v12;
    *(&v16 + 1) = v12;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(&v16);
    v3 = *a2;
    v4 = a2[1];
  }

  while (v3 != v4)
  {
    v14 = *v3;
    v15 = v3[1];
    v3 += 3;
    *&v16 = v14;
    *(&v16 + 1) = v15 >> 2;
    result = caulk::rt::vector<AMCP::DAL::Audio_Samples<float>>::emplace_back<AMCP::DAL::Audio_Samples<float>>(v2, &v16);
  }

  return result;
}

void AMCP::DAL::PCM_Data_Handler::adopt(void *a1, uint64_t *a2)
{
  v7 = a1[7];
  v5 = a1[8];
  v6 = a1 + 7;
  while (v5 != v7)
  {
    AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v5 - 24));
  }

  a1[8] = v7;
  v18[0] = a2;
  v18[1] = 0;
  v8 = *a2;
  if (*a2 < 0)
  {
    std::terminate();
  }

  v17[0] = a2;
  v17[1] = v8;
  v9 = a1[9];
  if (v7 >= v9)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 3);
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v6) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    v19[4] = v6;
    if (v14)
    {
      v14 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = v14 + 24 * v11;
    v19[0] = v14;
    v19[1] = v16;
    v19[3] = v14 + 24 * v15;
    AMCP::DAL::Audio_Samples_Data::Audio_Samples_Data<gsl::details::span_iterator<gsl::span<std::byte,-1l>,false>>(v16, v18, v17);
    v19[2] = v16 + 24;
    std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__swap_out_circular_buffer(v6, v19);
    v10 = a1[8];
    std::__split_buffer<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data> &>::~__split_buffer(v19);
  }

  else
  {
    AMCP::DAL::Audio_Samples_Data::Audio_Samples_Data<gsl::details::span_iterator<gsl::span<std::byte,-1l>,false>>(v7, v18, v17);
    v10 = v7 + 24;
  }

  a1[8] = v10;
}

BOOL AMCP::DAL::PCM_Data_Handler::dal_operation_is_supported(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      return 1;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    return 1;
  }

  if (*a2 != 26989 || *(a2 + 2) != 120)
  {
    return 1;
  }

  return *(a1 + 16) == 1819304813 && (*(a1 + 20) & 0x40) == 0;
}

void AMCP::DAL::PCM_Data_Handler::~PCM_Data_Handler(AMCP::DAL::PCM_Data_Handler *this)
{
  *this = &unk_1F597A1D0;
  v1 = (this + 56);
  std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597A1D0;
  v1 = (this + 56);
  std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(AMCP::Log::AMCP_Scope_Registry *a1, double a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (round(a2) >= round(a3))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      *&buf[4] = "PCM_Data_Handler.cpp";
      v25 = 1024;
      v26 = 178;
      v27 = 2080;
      v28 = "not (range.end() > range.start())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v15, "", v13);
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    v29 = "static gsl::span<std::byte> AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(const Container &, Sample_Time_Range)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/PCM_Data_Handler.cpp";
    v31 = 178;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(a1);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(buf, a1, a2, a3);
  v6 = *(a1 + 8) * vcvtmd_s64_f64(a3 - a2);
  if (v6)
  {
    v7 = **buf == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    std::terminate();
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
  return v6;
}

void sub_1DE579A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  _Unwind_Resume(a1);
}