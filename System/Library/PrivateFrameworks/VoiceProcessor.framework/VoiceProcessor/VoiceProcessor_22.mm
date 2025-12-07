void sub_272634734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 40 * *(a1 + 16), 8);
  }

  return a1;
}

_DWORD *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::unregister_listener(unsigned int,unsigned int)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1)[2];
  v18 = *(*a1)[1];
  v19 = &v18;
  result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v1 + 328, v18, &v19);
  v4 = *(result + 37);
  v5 = *(result + 38);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v7 = result;
  if (v5)
  {
    v8 = *(result + 37);
    v9 = *(result + 38);
    do
    {
      if (v9 != 1 && !v8)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v9 >> 1;
      v11 = &v8[10 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 10;
      v9 += ~(v9 >> 1);
      if (v13 >= v2)
      {
        v9 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    while (v9);
  }

  else
  {
    v8 = *(result + 37);
  }

  v14 = v4 + 40 * v5;
  if (v8 != v14)
  {
    if (!v8)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (v2 >= *v8)
    {
      result = v8;
    }

    else
    {
      result = (v4 + 40 * v5);
    }

    if (result != v14)
    {
      if (v4 > result || result >= v14)
      {
        __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
      }

      v16 = (result + 10);
      while (v16 != v14)
      {
        v17 = (result + 10);
        v16 = boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>::operator=(result, (result + 10)) + 80;
        result = v17;
      }

      result = std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](v14 - 32);
      --*(v7 + 304);
    }
  }

  return result;
}

void vp::vx::io::Error::~Error(vp::vx::io::Error *this)
{
  if (*(this + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(this + 5), *(this + 2), *(this + 4) & 0x7FFFFFFFFFFFFFFFLL);
  }
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 104);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 96) < v3)
    {
      *(a1 + 96) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 96) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 104);
  if ((v6 & 8) != 0)
  {
    *(a1 + 96) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 96) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::resize(v2, v7);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 104) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

char *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__erase_external_with_move(char *__dst, unint64_t a2)
{
  if (a2)
  {
    v2 = __dst;
    v3 = __dst[23];
    v4 = v3;
    v5 = __dst;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = *__dst;
      v4 = *(__dst + 1);
    }

    if (v4 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = v4;
    }

    v7 = v4 - v6;
    if (v4 > a2)
    {
      __dst = memmove(v5, &v5[v6], v4 - v6);
      LOBYTE(v3) = v2[23];
    }

    if ((v3 & 0x80) != 0)
    {
      *(v2 + 1) = v7;
    }

    else
    {
      v2[23] = v7 & 0x7F;
    }

    v5[v7] = 0;
  }

  return __dst;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 184) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2881BF098;
  v2 = a1 + 24;
  *a1 = &unk_2881BF1B0;
  *(a1 + 136) = &unk_2881BF1D8;
  std::ios_base::init((a1 + 136), (a1 + 24));
  *(a1 + 272) = 0;
  *(a1 + 280) = -1;
  *a1 = &unk_2881BF070;
  *(a1 + 136) = &unk_2881BF0C0;
  *(a1 + 16) = &unk_2881BF098;
  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743CBDC0](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = &unk_2881BF248;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator((a1 + 112));
  *(a1 + 120) = 0;
  *(a1 + 128) = 24;
  std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_buf_ptrs[abi:ne200100](v2);
  return a1;
}

void sub_272634D08(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v2 + 112), *(v2 + 88), *(v2 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v1);
  _Unwind_Resume(a1);
}

void vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(vp::vx::io::Error_String_Stream_Writer *this)
{
  v2 = this + 32;
  v3 = *this;
  v4 = std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::view[abi:ne200100](this + 32);
  if (v5)
  {
    v6 = (this + 96);
    if (*(this + 119) < 0)
    {
      v6 = *v6;
    }

    v7 = v4 - v6;
  }

  else
  {
    v7 = 0;
  }

  v12 = *(this + 6);
  v8 = *(this + 15);
  v13 = *(this + 14);
  v14 = v8;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::resize(&v12, (v7 + v5));
  if (v7 == -1)
  {
    if (SHIBYTE(v13) < 0)
    {
      v9 = v12;
      *(&v12 + 1) = 0;
    }

    else
    {
      HIBYTE(v13) = 0;
      v9 = &v12;
    }

    *v9 = 0;
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__erase_external_with_move(&v12, v7);
  }

  std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_buf_ptrs[abi:ne200100](v2);
  v10 = *(v3 + 40);
  if (v10 == v14 || ((*(*v10 + 32))(v10) & 1) != 0)
  {
    if (*(v3 + 39) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v3 + 40), *(v3 + 16), *(v3 + 32) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v11 = v13;
    *(v3 + 16) = v12;
    *(v3 + 32) = v11;
    HIBYTE(v13) = 0;
    LOBYTE(v12) = 0;
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::operator=((v3 + 16), &v12);
    if (SHIBYTE(v13) < 0)
    {
      (*(*v14 + 24))(v14, v12, v13 & 0x7FFFFFFFFFFFFFFFLL, 1);
    }
  }

  *(this + 1) = &unk_2881BF070;
  *(this + 18) = &unk_2881BF0C0;
  *(this + 3) = &unk_2881BF098;
  *(this + 4) = &unk_2881BF248;
  if (*(this + 119) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(this + 15), *(this + 12), *(this + 14) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(this + 4) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(this + 5);
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](this + 144);
}

void vp::create(vp *this, int a2, const vp::Context *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_DEFAULT, "create VoiceProcessorV%u", buf, 8u);
  }

  if (a2 > 6)
  {
    if (a2 <= 8)
    {
      if (a2 != 7)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 9)
    {
      operator new();
    }

    if (a2 == 10)
    {
      vp::v10::create(this, a3);
    }
  }

  else
  {
    if (a2 > 4)
    {
      if (a2 != 5)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 3)
    {
      operator new();
    }

    if (a2 == 4)
    {
      operator new();
    }
  }

  v8 = vp::get_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_FAULT, "VoiceProcessorV%u is not supported", buf, 8u);
  }

  *this = 0;
}

void sub_272635520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t buf, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    __cxa_free_exception(v25);
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
    v27 = *(v24 + 2219);
    *(v24 + 2219) = 0;
    if (v27)
    {
      MEMORY[0x2743CBF70](v27, 0x1000C8077774924);
    }

    v28 = *(v24 + 2217);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    VoiceProcessorV8::~VoiceProcessorV8(v24);
    MEMORY[0x2743CBFA0](v24, 0x10F3C402A875634);
    v29 = __cxa_begin_catch(exception_object);
    log = vp::get_log(v29);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v23;
      _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "failed to create VoiceProcessorV%u due to uncaught exception", &buf, 8u);
    }

    *v22 = 0;
    __cxa_end_catch();
    JUMPOUT(0x272635470);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tovp::vx::io::nodes::Far_End_Voice_Proc_Node::~Far_End_Voice_Proc_Node(vp::vx::io::nodes::Far_End_Voice_Proc_Node *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[7];
  if (v2)
  {
    _Block_release(v2);
    v1[7] = 0;
  }

  v1[8] = &unk_2881C6630;
  v3 = v1[10];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[7];
  if (v2)
  {
    _Block_release(v2);
    v1[7] = 0;
  }

  v1[8] = &unk_2881C6630;
  v3 = v1[10];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::io::nodes::Far_End_Voice_Proc_Node::~Far_End_Voice_Proc_Node(vp::vx::io::nodes::Far_End_Voice_Proc_Node *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    _Block_release(v2);
    *(this + 7) = 0;
  }

  *(this + 8) = &unk_2881C6630;
  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 7);
  if (v2)
  {
    _Block_release(v2);
    *(this + 7) = 0;
  }

  *(this + 8) = &unk_2881C6630;
  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void vp::vx::io::nodes::Far_End_Voice_Proc_Node::process(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v23 = a4;
  if (*(a1 + 48) < a4)
  {
    v12 = 0x17005100000002;
    v13 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
    v15 = 0;
    v16 = 0;
    v14 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v17);
    vp::vx::io::operator<<<char const(&)[13]>(&v24, &v12, "frame count ");
    MEMORY[0x2743CBB40](v26, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " is larger than ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "maximum allowed block size", 26);
    MEMORY[0x2743CBB40](v26, *(a1 + 48));
  }

  else if (a2)
  {
    v12 = 0x17005800000003;
    v13 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
    v15 = 0;
    v16 = 0;
    v14 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v17);
    vp::vx::io::operator<<<char const(&)[17]>(&v24, &v12, "input data size ");
    MEMORY[0x2743CBB50](v26, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " does not match ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "expected data size ", 19);
    MEMORY[0x2743CBB40](v26, 0);
  }

  else
  {
    if (a3 == 1)
    {
      v9 = (*(*(a1 + 56) + 16))();
      if (v9)
      {
        v18[0] = 0x13006B00000000;
        v18[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
        v20 = 0;
        v21 = 0;
        v19 = 0;
        vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v22);
        std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v25);
        v24 = v18;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "far end voice callback failed with status ", 42);
        v12 = v24;
        std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](&v13, v25);
        vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v24);
        MEMORY[0x2743CBB30](&v15, v9);
        vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v12);
        v10 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v18);
        if (SHIBYTE(v21) < 0)
        {
          (*(*v22 + 24))(v22, v19, v21 & 0x7FFFFFFFFFFFFFFFLL, 1, v10);
        }
      }

      else
      {
        *a5 = 0;
        a5[48] = 1;
      }

      return;
    }

    v12 = 0x17005F00000003;
    v13 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
    v15 = 0;
    v16 = 0;
    v14 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v17);
    vp::vx::io::operator<<<char const(&)[18]>(&v24, &v12, "output data size ");
    MEMORY[0x2743CBB50](v26, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " does not match ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "expected data size ", 19);
    MEMORY[0x2743CBB40](v26, 1);
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v24);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v12);
  if (SHIBYTE(v16) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v17[0], v14, v16 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void sub_272635C40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  __clang_call_terminate(a1);
}

void vp::vx::io::operator<<<char const(&)[13]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_272635CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[17]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_272635D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[18]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_272635E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::nodes::Far_End_Voice_Proc_Node::get_expected_output_frame_count(uint64_t a1@<X8>)
{
  v3[0] = 0x1000470000000DLL;
  v3[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
  v5 = 0;
  v6 = 0;
  v4 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v7);
  v2 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v3);
  if (SHIBYTE(v6) < 0)
  {
    (*(*v7 + 24))(v7, v4, v6 & 0x7FFFFFFFFFFFFFFFLL, 1, v2);
  }
}

void vp::vx::io::nodes::Far_End_Voice_Proc_Node::get_required_input_frame_count(uint64_t a1@<X8>)
{
  v3[0] = 0x10003E0000000DLL;
  v3[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
  v5 = 0;
  v6 = 0;
  v4 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v7);
  v2 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v3);
  if (SHIBYTE(v6) < 0)
  {
    (*(*v7 + 24))(v7, v4, v6 & 0x7FFFFFFFFFFFFFFFLL, 1, v2);
  }
}

__n128 vp::vx::io::nodes::Far_End_Voice_Proc_Node::get_terminal_format@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a2)
    {
      v7 = 0x18003300000009;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
      v10 = 0;
      v11 = 0;
      v9 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v12);
      result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a4, &v7);
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }

    result = *(a1 + 8);
    v6 = *(a1 + 24);
    *a4 = result;
    *(a4 + 16) = v6;
    *(a4 + 32) = *(a1 + 40);
    *(a4 + 48) = 1;
  }

  else
  {
    v7 = 0x18002C00000009;
    v8 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/nodes/Far_End_Voice_Proc_Node.cpp";
    v10 = 0;
    v11 = 0;
    v9 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v12);
    result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a4, &v7);
    if (SHIBYTE(v11) < 0)
    {
LABEL_4:
      (*(*v12 + 24))(v12, v9, v11 & 0x7FFFFFFFFFFFFFFFLL, 1, result);
    }
  }

  return result;
}

void vp::vx::database::v1::fbs::CreatePropertyList(CFMutableArrayRef *a1, uint64_t *a2, int *a3)
{
  v4 = (a3 - *a3);
  v5 = *v4;
  if (v5 < 5 || !v4[2])
  {
    goto LABEL_103;
  }

  v7 = *(a3 + v4[2]);
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      if (v5 >= 7 && (v16 = v4[3]) != 0)
      {
        v17 = (a3 + v16 + *(a3 + v16));
      }

      else
      {
        v17 = 0;
      }

      v34 = (v17 - *v17);
      v35 = *v34;
      if (v35 >= 5)
      {
        v36 = v34[2];
        if (v34[2])
        {
          if (v35 >= 7)
          {
            v37 = v34[3];
            if (v34[3])
            {
              v38 = *(v17 + v36);
              v39 = (v17 + v36 + v38);
              v40 = *(v17 + v37);
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], *v39, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              value = Mutable;
              v42 = *v39;
              v43 = *(v17 + v37 + v40);
              if (v42)
              {
                v44 = v43 == 0;
              }

              else
              {
                v44 = 1;
              }

              if (!v44)
              {
                v45 = 0;
                v46 = v38;
                v47 = 4 * v43 - 4;
                v48 = v17 + v37 + v40 + 4;
                v49 = 4 * v42 - 4;
                v77 = v17 + v36 + v46;
                do
                {
                  v50 = v39[v45 / 4 + 1];
                  vp::vx::database::v1::fbs::CreatePropertyList(&cf, a2, (v48 + v45 + *(v48 + v45)));
                  v51 = cf;
                  if (cf)
                  {
                    v52 = value;
                    v53 = &v77[v45 + v50 - *(&v39[v45 / 4 + 1] + v50)];
                    if (*(v53 + 2) >= 5u && (v54 = *(v53 + 4)) != 0)
                    {
                      v55 = v50 + v54 + *&v77[v45 + 4 + v50 + v54];
                      vp::vx::database::v1::runtime::String_Pool::intern(&theArray, a2, &v77[v45 + 8 + v55], *&v77[v45 + 4 + v55]);
                      v56 = theArray;
                    }

                    else
                    {
                      v56 = 0;
                    }

                    CFDictionarySetValue(v52, v56, v51);
                    if (v56)
                    {
                      CFRelease(v56);
                    }

                    CFRelease(v51);
                  }

                  if (v49 == v45)
                  {
                    break;
                  }

                  v44 = v47 == v45;
                  v45 += 4;
                }

                while (!v44);
                Mutable = value;
              }

              if (Mutable)
              {
                CFRetain(Mutable);
                v57 = CFGetTypeID(Mutable);
                v58 = Mutable;
                if (v57 != CFDictionaryGetTypeID())
                {
                  CFRelease(Mutable);
                  v58 = 0;
                }

                CFRelease(Mutable);
                if (v58)
                {
                  CFRetain(v58);
                  *a1 = v58;
                  CFRelease(v58);
                  return;
                }
              }
            }
          }
        }
      }

      goto LABEL_103;
    }

    if (v7 != 5)
    {
      if (v7 == 6)
      {
        if (v5 < 7)
        {
          v13 = 0;
        }

        else
        {
          v13 = v4[3];
          if (v13)
          {
            v13 = (v13 + a3 + *(v13 + a3));
          }
        }

        v60 = (v13 - *v13);
        if (*v60 >= 5u)
        {
          v61 = v60[2];
          if (v61)
          {
            v62 = v13 + v61;
            v63 = *v62;
            theArray = 0;
            vp::vx::database::v1::runtime::String_Pool::intern(&theArray, a2, &v62[v63 + 4], *&v62[v63]);
            v64 = theArray;
            if (theArray)
            {
              CFRetain(theArray);
              *a1 = v64;
              CFRelease(v64);
              return;
            }
          }
        }
      }

      goto LABEL_103;
    }

    if (v5 < 7)
    {
      v22 = 0;
    }

    else
    {
      v22 = v4[3];
      if (v22)
      {
        v22 = (v22 + a3 + *(v22 + a3));
      }
    }

    v65 = (v22 - *v22);
    if (*v65 >= 5u && v65[2])
    {
      v66 = *(v22 + v65[2]);
      if (v66 > 3)
      {
        switch(v66)
        {
          case 4u:
            theArray = *(v22 + v65[3] + *(v22 + v65[3]));
            v67 = CFNumberCreate(0, kCFNumberLongLongType, &theArray);
            value = v67;
            if (!v67)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }

            break;
          case 5u:
            LODWORD(theArray) = *(v22 + v65[3] + *(v22 + v65[3]));
            v67 = CFNumberCreate(0, kCFNumberFloatType, &theArray);
            value = v67;
            if (!v67)
            {
              v76 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v76, "Could not construct");
            }

            break;
          case 6u:
            theArray = *(v22 + v65[3] + *(v22 + v65[3]));
            v67 = CFNumberCreate(0, kCFNumberDoubleType, &theArray);
            value = v67;
            if (!v67)
            {
              v69 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v69, "Could not construct");
            }

            break;
          default:
            goto LABEL_103;
        }
      }

      else
      {
        switch(v66)
        {
          case 1u:
            LOBYTE(theArray) = *(v22 + v65[3] + *(v22 + v65[3]));
            v67 = CFNumberCreate(0, kCFNumberCharType, &theArray);
            value = v67;
            if (!v67)
            {
              v70 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v70, "Could not construct");
            }

            break;
          case 2u:
            LOWORD(theArray) = *(v22 + v65[3] + *(v22 + v65[3]));
            v67 = CFNumberCreate(0, kCFNumberShortType, &theArray);
            value = v67;
            if (!v67)
            {
              v72 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v72, "Could not construct");
            }

            break;
          case 3u:
            LODWORD(theArray) = *(v22 + v65[3] + *(v22 + v65[3]));
            v67 = CFNumberCreate(0, kCFNumberIntType, &theArray);
            value = v67;
            if (!v67)
            {
              v68 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v68, "Could not construct");
            }

            break;
          default:
            goto LABEL_103;
        }
      }

      v73 = v67;
      CFRetain(v67);
      *a1 = v73;
      CFRelease(v73);
      return;
    }

LABEL_103:
    *a1 = 0;
    return;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v18 = (a3 + v4[3] + *(a3 + v4[3]));
      v19 = (v18 - *v18);
      if (*v19 >= 5u && (v20 = v19[2]) != 0)
      {
        if (*(v18 + v20))
        {
          v21 = MEMORY[0x277CBED28];
        }

        else
        {
          v21 = MEMORY[0x277CBED10];
        }
      }

      else
      {
        v21 = MEMORY[0x277CBED10];
      }

      v59 = *v21;
      if (*v21)
      {
        CFRetain(*v21);
        *a1 = v59;
        CFRelease(v59);
        return;
      }
    }

    else if (v7 == 3)
    {
      v8 = (a3 + v4[3] + *(a3 + v4[3]));
      v9 = v8 + *(v8 - *v8 + 4);
      v10 = CFDataCreate(0, &v9[*v9 + 4], *&v9[*v9]);
      if (!v10)
      {
        v74 = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(v74);
      }

      v11 = v10;
      theArray = v10;
      v12 = CFGetTypeID(v10);
      if (v12 != CFDataGetTypeID())
      {
        v75 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v75, "Could not construct");
      }

      CFRetain(v11);
      *a1 = v11;
      CFRelease(v11);
      return;
    }

    goto LABEL_103;
  }

  if (v5 >= 7 && (v14 = v4[3]) != 0)
  {
    v15 = (a3 + v14 + *(a3 + v14));
  }

  else
  {
    v15 = 0;
  }

  cf = 0;
  v23 = (v15 - *v15);
  if (*v23 < 5u)
  {
    goto LABEL_103;
  }

  v24 = v23[2];
  if (!v23[2])
  {
    goto LABEL_103;
  }

  v25 = *(v15 + v24);
  v26 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(v15 + v24 + v25), MEMORY[0x277CBF128]);
  theArray = v26;
  v27 = *(v15 + v24 + v25);
  if (v27)
  {
    v28 = 4 * v27;
    v29 = (v15 + v25 + v24 + 4);
    do
    {
      vp::vx::database::v1::fbs::CreatePropertyList(&value, a2, (v29 + *v29));
      v30 = value;
      if (value)
      {
        CFArrayAppendValue(theArray, value);
        CFRelease(v30);
      }

      ++v29;
      v28 -= 4;
    }

    while (v28);
    v26 = theArray;
  }

  if (!v26)
  {
    cf = 0;
    goto LABEL_103;
  }

  CFRetain(v26);
  v31 = CFGetTypeID(v26);
  v32 = v26;
  if (v31 != CFArrayGetTypeID())
  {
    CFRelease(v26);
    v32 = 0;
  }

  cf = v32;
  CFRelease(v26);
  if (!v32)
  {
    goto LABEL_103;
  }

  CFRetain(v32);
  v33 = cf;
  *a1 = v32;
  if (v33)
  {
    CFRelease(v33);
  }
}

void sub_2726369A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<vp::vx::database::v1::fbs::plist::Object>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

uint64_t vp::vx::database::v1::fbs::BuildPropertyList(vp::vx::database::v1::fbs *this, CFTypeRef *a2, const applesauce::CF::TypeRef *a3)
{
  if (!*a2)
  {
    return 0;
  }

  v5 = CFGetTypeID(*a2);
  if (v5 == CFArrayGetTypeID())
  {
    v6 = applesauce::CF::TypeRef::operator applesauce::CF::ArrayRef(&theArray, a2);
    BOOLean = std::pmr::get_default_resource(v6);
    v64 = &v66;
    v65 = xmmword_2727566A0;
    v7 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v9 = Count;
      v10 = theArray;
      if (theArray)
      {
        v11 = CFArrayGetCount(theArray);
        if (!v9)
        {
          goto LABEL_32;
        }

LABEL_22:
        v35 = 0;
        do
        {
          if (v7 == v10 && v11 == v35)
          {
            break;
          }

          applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&cf, v7, v35);
          v37 = vp::vx::database::v1::fbs::BuildPropertyList(this, &cf, v36);
          v61 = v37;
          v38 = v65;
          v39 = v64 + 4 * v65;
          if (v65 == *(&v65 + 1))
          {
            boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>>>(&v67, &BOOLean, v39, &v61);
            boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object> *,false>::operator*(v67);
          }

          else
          {
            *v39 = v37;
            *&v65 = v38 + 1;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          ++v35;
        }

        while (v9 != v35);
        goto LABEL_32;
      }

      v11 = 0;
      if (Count)
      {
        goto LABEL_22;
      }
    }

LABEL_32:
    v40 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<vp::vx::database::v1::fbs::plist::Object>(this, v64, v65);
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
    v41 = v40;
    *(this + 70) = 1;
    v42 = *(this + 5);
    v43 = *(this + 6);
    v44 = *(this + 4);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 4, v41);
    LODWORD(v42) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v44 - v43 + v42);
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
    v45 = v42;
    *(this + 70) = 1;
    LODWORD(v43) = *(this + 8);
    LODWORD(v44) = *(this + 12);
    LODWORD(v42) = *(this + 10);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v45);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 1);
    v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v43 - v44 + v42);
    if (*(&v65 + 1))
    {
      boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>::deallocate(&BOOLean, v64);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    return v19;
  }

  if (!*a2)
  {
    return 0;
  }

  v12 = CFGetTypeID(*a2);
  if (v12 == CFBooleanGetTypeID())
  {
    applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a2);
    Value = CFBooleanGetValue(BOOLean);
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
    v14 = Value != 0;
    *(this + 70) = 1;
    v15 = *(this + 5);
    v16 = *(this + 6);
    v17 = *(this + 4);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, v14);
    LODWORD(v15) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v17 - v16 + v15);
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
    v18 = v15;
    *(this + 70) = 1;
    LODWORD(v16) = *(this + 8);
    LODWORD(v17) = *(this + 12);
    LODWORD(v15) = *(this + 10);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v18);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 2);
    v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v16 - v17 + v15);
    v20 = BOOLean;
    if (!BOOLean)
    {
      return v19;
    }

LABEL_46:
    CFRelease(v20);
    return v19;
  }

  if (!*a2)
  {
    return 0;
  }

  v21 = CFGetTypeID(*a2);
  if (v21 != CFDataGetTypeID())
  {
    if (*a2)
    {
      v46 = CFGetTypeID(*a2);
      if (v46 == CFDictionaryGetTypeID())
      {
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&BOOLean, a2);
        v19 = vp::vx::database::v1::fbs::BuildPropertyList(this, &BOOLean, v47);
        v20 = BOOLean;
        if (!BOOLean)
        {
          return v19;
        }

        goto LABEL_46;
      }

      if (*a2)
      {
        v48 = CFGetTypeID(*a2);
        if (v48 == CFNumberGetTypeID())
        {
          applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&BOOLean, a2);
          v19 = vp::vx::database::v1::fbs::BuildPropertyList(this, &BOOLean, v49);
          applesauce::CF::NumberRef::~NumberRef(&BOOLean);
          return v19;
        }

        if (*a2)
        {
          v50 = CFGetTypeID(*a2);
          if (v50 == CFStringGetTypeID())
          {
            applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&BOOLean, a2);
            v52 = vp::vx::database::v1::fbs::BuildString(this, &BOOLean, v51);
            apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
            v53 = v52;
            *(this + 70) = 1;
            v54 = *(this + 5);
            v55 = *(this + 6);
            v56 = *(this + 4);
            apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 4, v53);
            LODWORD(v54) = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v56 - v55 + v54);
            apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
            v57 = v54;
            *(this + 70) = 1;
            LODWORD(v55) = *(this + 8);
            LODWORD(v56) = *(this + 12);
            LODWORD(v54) = *(this + 10);
            apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v57);
            apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 6);
            v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v55 - v56 + v54);
            v20 = BOOLean;
            if (!BOOLean)
            {
              return v19;
            }

            goto LABEL_46;
          }
        }
      }
    }

    return 0;
  }

  applesauce::CF::TypeRef::operator applesauce::CF::DataRef(&BOOLean, a2);
  if (!BOOLean || (BytePtr = CFDataGetBytePtr(BOOLean), !BOOLean))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Length = CFDataGetLength(BOOLean);
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(this, Length, 1uLL);
  if (Length)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, Length);
    v24 = (*(this + 6) - Length);
    *(this + 6) = v24;
    memcpy(v24, BytePtr, Length);
  }

  v25 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(this, Length);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v26 = *(this + 8);
  v27 = *(this + 12);
  v28 = *(this + 10);
  if (v25)
  {
    v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(this, v25);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(this, 4, v29);
  }

  v30 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v26 - v27 + v28);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  v31 = v30;
  *(this + 70) = 1;
  v32 = *(this + 8);
  v33 = *(this + 12);
  v34 = *(this + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v31);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 3);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v32 - v33 + v34);
  v20 = BOOLean;
  if (BOOLean)
  {
    goto LABEL_46;
  }

  return v19;
}

void sub_272637188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = v14 + a3 - v15;
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 4, a3, v18 - a3);
    }
  }

  if (v15)
  {
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v19 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::ArrayRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFArrayGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFArrayGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_272637590(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DataRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDataGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2726376E8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::database::v1::fbs::BuildPropertyList(vp::vx::database::v1::fbs *this, CFDictionaryRef *a2, const applesauce::CF::DictionaryRef *a3)
{
  default_resource = std::pmr::get_default_resource(this);
  v57 = &v59;
  v58 = xmmword_2727566A0;
  v52 = std::pmr::get_default_resource(default_resource);
  v53 = &v55;
  v54 = xmmword_2727566A0;
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v46, *a2);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v40, *a2);
  v41 = (v43 - v42) >> 3;
  while (1)
  {
    if (v46 && v47 != (v49 - v48) >> 3)
    {
      v5 = v40;
      goto LABEL_8;
    }

    v5 = v40;
    if (!v40 || v41 == (v43 - v42) >> 3)
    {
      break;
    }

LABEL_8:
    if (v46 == v5 && v47 == v41)
    {
      break;
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::dereference(&v38, &v46);
    v7 = vp::vx::database::v1::fbs::BuildString(this, &v38, v6);
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
    v8 = v7;
    *(this + 70) = 1;
    v9 = *(this + 5);
    v10 = *(this + 6);
    v11 = *(this + 4);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 4, v8);
    v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v11 - v10 + v9);
    v37 = v12;
    v13 = v58;
    v14 = v57 + 4 * v58;
    if (v58 == *(&v58 + 1))
    {
      boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>>>(&v60, &default_resource, v14, &v37);
      boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String> *,false>::operator*(v60);
    }

    else
    {
      *v14 = v12;
      *&v58 = v13 + 1;
    }

    v15 = vp::vx::database::v1::fbs::BuildPropertyList(this, &cf, v14);
    v37 = v15;
    v16 = v54;
    v17 = v53 + 4 * v54;
    if (v54 == *(&v54 + 1))
    {
      boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>>>(&v60, &v52, v17, &v37);
      boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object> *,false>::operator*(v60);
    }

    else
    {
      *v17 = v15;
      *&v54 = v16 + 1;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    ++v47;
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  v19 = v57;
  v18 = v58;
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(this, v58, 4uLL);
  if (v18)
  {
    v20 = v19 - 4;
    v21 = v18;
    do
    {
      v22 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(this, *&v20[4 * v21]);
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, v22);
      --v21;
    }

    while (v21);
  }

  v23 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(this, v18);
  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<vp::vx::database::v1::fbs::plist::Object>(this, v53, v54);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  v25 = v24;
  *(this + 70) = 1;
  v26 = *(this + 8);
  v27 = *(this + 12);
  v28 = *(this + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v25);
  if (v23)
  {
    v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(this, v23);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(this, 4, v29);
  }

  v30 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v26 - v27 + v28);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  v31 = v30;
  *(this + 70) = 1;
  v32 = *(this + 8);
  v33 = *(this + 12);
  v34 = *(this + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v31);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 4);
  v35 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v32 - v33 + v34);
  if (*(&v54 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>::deallocate(&v52, v53);
  }

  if (*(&v58 + 1))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>::deallocate(&default_resource, v57);
  }

  return v35;
}

void sub_272637AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v65 + 88))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::Object>,vp::Allocator<void>,void>::deallocate(&a30, *(v65 + 72));
  }

  if (*(v65 + 376))
  {
    boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>::deallocate(&a65, *(v65 + 360));
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::database::v1::fbs::BuildPropertyList(vp::vx::database::v1::fbs *this, CFNumberRef *a2, const applesauce::CF::NumberRef *a3)
{
  Type = CFNumberGetType(*a2);
  result = 0;
  if (Type > kCFNumberSInt32Type)
  {
    if (Type != kCFNumberSInt64Type)
    {
      if (Type == kCFNumberFloat32Type)
      {
        if (*a2)
        {
          v27 = applesauce::CF::convert_to<float,0>(*a2);
          apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
          apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
          apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
          v28 = *(this + 6);
          *(v28 - 4) = v27;
          v28 -= 4;
          *(this + 6) = v28;
          v29 = (*(this + 8) - v28 + *(this + 10));
          apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
          *(this + 70) = 1;
          v10 = *(this + 10);
          v11 = *(this + 8) - *(this + 12);
          apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v29);
          v12 = this;
          v13 = 5;
          goto LABEL_26;
        }
      }

      else
      {
        if (Type != kCFNumberFloat64Type)
        {
          return result;
        }

        if (*a2)
        {
          v14 = applesauce::CF::convert_to<double,0>(*a2);
          apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
          apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 8uLL);
          apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 8uLL);
          v15 = *(this + 6);
          *(v15 - 8) = v14;
          v15 -= 8;
          *(this + 6) = v15;
          v16 = (*(this + 8) - v15 + *(this + 10));
          apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
          *(this + 70) = 1;
          v10 = *(this + 10);
          v11 = *(this + 8) - *(this + 12);
          apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v16);
          v12 = this;
          v13 = 6;
          goto LABEL_26;
        }
      }

      goto LABEL_129;
    }

    v20 = *a2;
    if (v20)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v20))
      {
        switch(CFNumberGetType(v20))
        {
          case kCFNumberSInt8Type:
            LOBYTE(valuePtr) = 0;
            Value = CFNumberGetValue(v20, kCFNumberSInt8Type, &valuePtr);
            goto LABEL_67;
          case kCFNumberSInt16Type:
            LOWORD(valuePtr) = 0;
            v44 = CFNumberGetValue(v20, kCFNumberSInt16Type, &valuePtr);
            goto LABEL_58;
          case kCFNumberSInt32Type:
            LODWORD(valuePtr) = 0;
            v44 = CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr);
            goto LABEL_90;
          case kCFNumberSInt64Type:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberSInt64Type, &valuePtr);
            goto LABEL_77;
          case kCFNumberFloat32Type:
            LODWORD(valuePtr) = 0;
            v41 = CFNumberGetValue(v20, kCFNumberFloat32Type, &valuePtr);
            goto LABEL_43;
          case kCFNumberFloat64Type:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberFloat64Type, &valuePtr);
            goto LABEL_62;
          case kCFNumberCharType:
            LOBYTE(valuePtr) = 0;
            Value = CFNumberGetValue(v20, kCFNumberCharType, &valuePtr);
LABEL_67:
            if (Value)
            {
              v48 = LOBYTE(valuePtr);
            }

            else
            {
              v48 = 0;
            }

            v49 = SLOBYTE(valuePtr) < 0 && Value != 0;
            if (!Value)
            {
              goto LABEL_131;
            }

            v36 = v48 | (v49 << 63 >> 63 << 8);
            goto LABEL_82;
          case kCFNumberShortType:
            LOWORD(valuePtr) = 0;
            v44 = CFNumberGetValue(v20, kCFNumberShortType, &valuePtr);
LABEL_58:
            v45 = LOBYTE(valuePtr);
            v46 = SLOWORD(valuePtr);
            goto LABEL_91;
          case kCFNumberIntType:
            LODWORD(valuePtr) = 0;
            v44 = CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
LABEL_90:
            v45 = LOBYTE(valuePtr);
            v46 = SLODWORD(valuePtr);
LABEL_91:
            v61 = v46 & 0xFFFFFFFFFFFFFF00 | v45;
            if (v44)
            {
              v36 = v61;
            }

            else
            {
              v36 = 0;
            }

            if (!v44)
            {
              goto LABEL_131;
            }

            goto LABEL_82;
          case kCFNumberLongType:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberLongType, &valuePtr);
            goto LABEL_77;
          case kCFNumberLongLongType:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberLongLongType, &valuePtr);
            goto LABEL_77;
          case kCFNumberFloatType:
            LODWORD(valuePtr) = 0;
            v41 = CFNumberGetValue(v20, kCFNumberFloatType, &valuePtr);
LABEL_43:
            v43 = *&valuePtr;
            goto LABEL_78;
          case kCFNumberDoubleType:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberDoubleType, &valuePtr);
            goto LABEL_62;
          case kCFNumberCFIndexType:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberCFIndexType, &valuePtr);
            goto LABEL_77;
          case kCFNumberNSIntegerType:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberNSIntegerType, &valuePtr);
LABEL_77:
            v43 = *&valuePtr;
            goto LABEL_78;
          case kCFNumberCGFloatType:
            valuePtr = 0.0;
            v41 = CFNumberGetValue(v20, kCFNumberCGFloatType, &valuePtr);
LABEL_62:
            v43 = valuePtr;
LABEL_78:
            if (v41)
            {
              v36 = v43;
            }

            else
            {
              v36 = 0;
            }

            if (v41)
            {
              goto LABEL_82;
            }

            goto LABEL_131;
          default:
            goto LABEL_131;
        }
      }

      v35 = CFBooleanGetTypeID();
      if (v35 == CFGetTypeID(v20))
      {
        v36 = CFBooleanGetValue(v20);
LABEL_82:
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 8uLL);
        apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 8uLL);
        v50 = *(this + 6);
        *(v50 - 8) = v36;
        v50 -= 8;
        *(this + 6) = v50;
        v51 = (*(this + 8) - v50 + *(this + 10));
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        *(this + 70) = 1;
        v52 = *(this + 10);
        v53 = *(this + 8) - *(this + 12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v51);
        v54 = this;
        v55 = 4;
        goto LABEL_124;
      }

LABEL_131:
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::convert_error(exception);
LABEL_132:
    }

LABEL_129:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_132;
  }

  if (Type == kCFNumberSInt8Type)
  {
    v17 = *a2;
    if (v17)
    {
      v18 = CFNumberGetTypeID();
      if (v18 == CFGetTypeID(v17))
      {
        switch(CFNumberGetType(v17))
        {
          case kCFNumberSInt8Type:
            LOBYTE(valuePtr) = 0;
            v19 = CFNumberGetValue(v17, kCFNumberSInt8Type, &valuePtr);
            goto LABEL_84;
          case kCFNumberSInt16Type:
            LOWORD(valuePtr) = 0;
            v19 = CFNumberGetValue(v17, kCFNumberSInt16Type, &valuePtr);
            goto LABEL_84;
          case kCFNumberSInt32Type:
            LODWORD(valuePtr) = 0;
            v19 = CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr);
            goto LABEL_84;
          case kCFNumberSInt64Type:
            valuePtr = 0.0;
            v19 = CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr);
            goto LABEL_84;
          case kCFNumberFloat32Type:
            v42 = applesauce::CF::details::handle_case<float,signed char>(v17, kCFNumberFloat32Type);
            goto LABEL_60;
          case kCFNumberFloat64Type:
            v42 = applesauce::CF::details::handle_case<double,signed char>(v17, kCFNumberFloat64Type);
            goto LABEL_60;
          case kCFNumberCharType:
            LOBYTE(valuePtr) = 0;
            v19 = CFNumberGetValue(v17, kCFNumberCharType, &valuePtr);
            goto LABEL_84;
          case kCFNumberShortType:
            LOWORD(valuePtr) = 0;
            v19 = CFNumberGetValue(v17, kCFNumberShortType, &valuePtr);
            goto LABEL_84;
          case kCFNumberIntType:
            LODWORD(valuePtr) = 0;
            v19 = CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
            goto LABEL_84;
          case kCFNumberLongType:
            valuePtr = 0.0;
            v19 = CFNumberGetValue(v17, kCFNumberLongType, &valuePtr);
            goto LABEL_84;
          case kCFNumberLongLongType:
            valuePtr = 0.0;
            v19 = CFNumberGetValue(v17, kCFNumberLongLongType, &valuePtr);
            goto LABEL_84;
          case kCFNumberFloatType:
            v42 = applesauce::CF::details::handle_case<float,signed char>(v17, kCFNumberFloatType);
            goto LABEL_60;
          case kCFNumberDoubleType:
            v42 = applesauce::CF::details::handle_case<double,signed char>(v17, kCFNumberDoubleType);
            goto LABEL_60;
          case kCFNumberCFIndexType:
            valuePtr = 0.0;
            v19 = CFNumberGetValue(v17, kCFNumberCFIndexType, &valuePtr);
            goto LABEL_84;
          case kCFNumberNSIntegerType:
            valuePtr = 0.0;
            v19 = CFNumberGetValue(v17, kCFNumberNSIntegerType, &valuePtr);
LABEL_84:
            v47 = v19 != 0;
            if (v19)
            {
              v34 = LOBYTE(valuePtr);
            }

            else
            {
              v34 = 0;
            }

            goto LABEL_87;
          case kCFNumberCGFloatType:
            v42 = applesauce::CF::details::handle_case<double,signed char>(v17, kCFNumberCGFloatType);
LABEL_60:
            v34 = v42;
            v47 = HIBYTE(v42);
LABEL_87:
            if (v47)
            {
              goto LABEL_88;
            }

            goto LABEL_131;
          default:
            goto LABEL_131;
        }
      }

      v33 = CFBooleanGetTypeID();
      if (v33 == CFGetTypeID(v17))
      {
        v34 = CFBooleanGetValue(v17);
LABEL_88:
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 1uLL);
        apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 1uLL);
        v56 = (*(this + 6) - 1);
        *(this + 6) = v56;
        *v56 = v34;
        v57 = (*(this + 8) - *(this + 12) + *(this + 10));
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        *(this + 70) = 1;
        v58 = *(this + 10);
        v59 = *(this + 8) - *(this + 12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v57);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 1);
        v60 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v59 + v58);
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        *(this + 70) = 1;
        goto LABEL_125;
      }

      goto LABEL_131;
    }

    goto LABEL_129;
  }

  if (Type == kCFNumberSInt16Type)
  {
    v23 = *a2;
    if (v23)
    {
      v24 = CFNumberGetTypeID();
      if (v24 == CFGetTypeID(v23))
      {
        switch(CFNumberGetType(v23))
        {
          case kCFNumberSInt8Type:
            LOBYTE(valuePtr) = 0;
            v26 = CFNumberGetValue(v23, kCFNumberSInt8Type, &valuePtr);
            goto LABEL_114;
          case kCFNumberSInt16Type:
            LOWORD(valuePtr) = 0;
            v62 = CFNumberGetValue(v23, kCFNumberSInt16Type, &valuePtr);
            goto LABEL_118;
          case kCFNumberSInt32Type:
            LODWORD(valuePtr) = 0;
            v62 = CFNumberGetValue(v23, kCFNumberSInt32Type, &valuePtr);
            goto LABEL_118;
          case kCFNumberSInt64Type:
            valuePtr = 0.0;
            v62 = CFNumberGetValue(v23, kCFNumberSInt64Type, &valuePtr);
            goto LABEL_118;
          case kCFNumberFloat32Type:
            LODWORD(valuePtr) = 0;
            v63 = CFNumberGetValue(v23, kCFNumberFloat32Type, &valuePtr);
            goto LABEL_99;
          case kCFNumberFloat64Type:
            valuePtr = 0.0;
            v63 = CFNumberGetValue(v23, kCFNumberFloat64Type, &valuePtr);
            goto LABEL_108;
          case kCFNumberCharType:
            LOBYTE(valuePtr) = 0;
            v26 = CFNumberGetValue(v23, kCFNumberCharType, &valuePtr);
LABEL_114:
            v66 = v26 != 0;
            LOBYTE(v65) = LOBYTE(valuePtr);
            v25 = SLOBYTE(valuePtr) >> 7;
            if (!v26)
            {
              LOBYTE(v65) = 0;
            }

            break;
          case kCFNumberShortType:
            LOWORD(valuePtr) = 0;
            v62 = CFNumberGetValue(v23, kCFNumberShortType, &valuePtr);
            goto LABEL_118;
          case kCFNumberIntType:
            LODWORD(valuePtr) = 0;
            v62 = CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
            goto LABEL_118;
          case kCFNumberLongType:
            valuePtr = 0.0;
            v62 = CFNumberGetValue(v23, kCFNumberLongType, &valuePtr);
            goto LABEL_118;
          case kCFNumberLongLongType:
            valuePtr = 0.0;
            v62 = CFNumberGetValue(v23, kCFNumberLongLongType, &valuePtr);
            goto LABEL_118;
          case kCFNumberFloatType:
            LODWORD(valuePtr) = 0;
            v63 = CFNumberGetValue(v23, kCFNumberFloatType, &valuePtr);
LABEL_99:
            v64 = *&valuePtr;
            goto LABEL_109;
          case kCFNumberDoubleType:
            valuePtr = 0.0;
            v63 = CFNumberGetValue(v23, kCFNumberDoubleType, &valuePtr);
            goto LABEL_108;
          case kCFNumberCFIndexType:
            valuePtr = 0.0;
            v62 = CFNumberGetValue(v23, kCFNumberCFIndexType, &valuePtr);
            goto LABEL_118;
          case kCFNumberNSIntegerType:
            valuePtr = 0.0;
            v62 = CFNumberGetValue(v23, kCFNumberNSIntegerType, &valuePtr);
LABEL_118:
            v65 = LOWORD(valuePtr) | 0x10000;
            if (!v62)
            {
              v65 = 0;
            }

            goto LABEL_120;
          case kCFNumberCGFloatType:
            valuePtr = 0.0;
            v63 = CFNumberGetValue(v23, kCFNumberCGFloatType, &valuePtr);
LABEL_108:
            v64 = valuePtr;
LABEL_109:
            if (v63)
            {
              v65 = v64 | 0x10000;
            }

            else
            {
              v65 = 0;
            }

LABEL_120:
            v25 = v65 >> 8;
            v66 = HIWORD(v65);
            break;
          default:
            v66 = 0;
            LOBYTE(v65) = 0;
            break;
        }

        v40 = (v66 << 16) | (v25 << 8) | v65;
      }

      else
      {
        v37 = CFBooleanGetTypeID();
        if (v37 == CFGetTypeID(v23))
        {
          v38 = CFBooleanGetValue(v23);
          v39 = 0x10000;
        }

        else
        {
          v38 = 0;
          v39 = 0;
        }

        v40 = v39 | v38;
      }

      if (HIWORD(v40))
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 2uLL);
        apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 2uLL);
        v67 = *(this + 6);
        *(v67 - 2) = v40;
        v67 -= 2;
        *(this + 6) = v67;
        v68 = (*(this + 8) - v67 + *(this + 10));
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        *(this + 70) = 1;
        v52 = *(this + 10);
        v53 = *(this + 8) - *(this + 12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v68);
        v54 = this;
        v55 = 2;
LABEL_124:
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(v54, 4, v55);
        v60 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v53 + v52);
        apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
        *(this + 70) = 1;
LABEL_125:
        v69 = *(this + 10);
        v70 = *(this + 8) - *(this + 12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v60);
        apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 5);
        return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v70 + v69);
      }

      goto LABEL_131;
    }

    goto LABEL_129;
  }

  if (Type != kCFNumberSInt32Type)
  {
    return result;
  }

  if (!*a2)
  {
    goto LABEL_129;
  }

  v7 = applesauce::CF::convert_to<int,0>(*a2);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
  v8 = *(this + 6);
  *(v8 - 4) = v7;
  v8 -= 4;
  *(this + 6) = v8;
  v9 = (*(this + 8) - v8 + *(this + 10));
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v10 = *(this + 10);
  v11 = *(this + 8) - *(this + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v9);
  v12 = this;
  v13 = 3;
LABEL_26:
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(v12, 4, v13);
  v30 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v11 + v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v31 = *(this + 10);
  v32 = *(this + 8) - *(this + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(this, 6, v30);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(this, 4, 5);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(this, v32 + v31);
}

uint64_t vp::vx::database::v1::fbs::BuildString(vp::vx::database::v1::fbs *this, CFStringRef *a2, const applesauce::CF::StringRef *a3)
{
  if (!*a2)
  {
    return 0;
  }

  default_resource = std::pmr::get_default_resource(this);
  buffer = &v18;
  v17 = xmmword_2727566B0;
  Length = CFStringGetLength(*a2);
  v6 = Length;
  v7 = Length + 1;
  if ((Length + 1) > 0x100)
  {
    v8 = (*(*default_resource + 16))(default_resource, v7, 1);
    if (buffer)
    {
      *&v17 = 0;
      boost::container::small_vector_allocator<char,vp::Allocator<void>,void>::deallocate(&default_resource, buffer);
    }

    *&v17 = 0;
    *(&v17 + 1) = v7;
    buffer = v8;
    bzero(v8, v7);
    v7 += v17;
    goto LABEL_14;
  }

  v10 = buffer;
  if (v7 <= v17)
  {
    if (Length == -1)
    {
      goto LABEL_14;
    }

    v11 = buffer;
    v12 = v7;
  }

  else
  {
    if (v17)
    {
      bzero(buffer, v17);
      v10 = &buffer[v17];
    }

    v11 = v10;
    v12 = v7 - v17;
  }

  bzero(v11, v12);
LABEL_14:
  *&v17 = v7;
  CFStringGetCString(*a2, buffer, v6 + 2, 0x600u);
  v13 = strlen(buffer);
  SharedString = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateSharedString(this, buffer, v13);
  if (*(&v17 + 1))
  {
    boost::container::small_vector_allocator<char,vp::Allocator<void>,void>::deallocate(&default_resource, buffer);
  }

  return SharedString;
}

void sub_272638924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    boost::container::small_vector_allocator<char,vp::Allocator<void>,void>::deallocate(&a9, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateSharedString(apple::aiml::flatbuffers2::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  if (!*(this + 11))
  {
    operator new();
  }

  v7 = *(this + 5);
  v6 = *(this + 6);
  v8 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 1uLL);
  v9 = (*(this + 6) - 1);
  *(this + 6) = v9;
  *v9 = 0;
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a3);
    v10 = (*(this + 6) - a3);
    *(this + 6) = v10;
    memcpy(v10, a2, a3);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  v12 = *(this + 5);
  v11 = *(this + 6);
  v13 = *(this + 4);
  v14 = v13 - v11 + v12;
  v15 = *(this + 11);
  v16 = *(v15 + 8);
  if (!v16)
  {
LABEL_39:
    operator new();
  }

  v50 = *(this + 4);
  v51 = *(this + 5);
  v52 = *(this + 6);
  v53 = v7;
  v54 = v8;
  v55 = v6;
  v58 = v13 - v11 + v12;
  v17 = *(*(v15 + 24) + 40) + *(*(v15 + 24) + 32);
  v56 = this;
  v57 = -v14;
  v18 = (v17 - v14);
  v21 = *v18;
  v19 = v18 + 1;
  v20 = v21;
  v22 = v15 + 8;
  v23 = *(v15 + 8);
  do
  {
    v24 = *(v23 + 28);
    v25 = *(v17 - v24);
    if (v20 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v20;
    }

    v27 = memcmp((v17 - v24 + 4), v19, v26);
    v28 = v25 < v20;
    if (v27)
    {
      v28 = v27 < 0;
    }

    v29 = !v28;
    if (v28)
    {
      v30 = 8;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v22 = v23;
    }

    v23 = *(v23 + v30);
  }

  while (v23);
  if (v15 + 8 == v22)
  {
    goto LABEL_26;
  }

  v31 = *(v22 + 28);
  v32 = *(v17 - v31);
  if (v32 >= v20)
  {
    v33 = v20;
  }

  else
  {
    v33 = v32;
  }

  v34 = memcmp(v19, (v17 - v31 + 4), v33);
  v35 = v20 < v32;
  if (v34)
  {
    v35 = v34 < 0;
  }

  if (v35)
  {
LABEL_26:
    v36 = v58;
    v37 = *(*(v15 + 24) + 40) + *(*(v15 + 24) + 32);
    v38 = (v37 + v57 + 4);
    v39 = *(v37 + v57);
    while (1)
    {
      while (1)
      {
        v40 = v16;
        v41 = *(v16 + 28);
        v42 = (v37 - v41 + 4);
        v43 = *(v37 - v41);
        if (v43 >= v39)
        {
          v44 = v39;
        }

        else
        {
          v44 = v43;
        }

        v45 = memcmp(v38, (v37 - v41 + 4), v44);
        v46 = v39 < v43;
        if (v45)
        {
          v46 = v45 < 0;
        }

        if (!v46)
        {
          break;
        }

        v16 = *v40;
        if (!*v40)
        {
          goto LABEL_39;
        }
      }

      v47 = memcmp(v42, v38, v44);
      v48 = v43 < v39;
      if (v47)
      {
        v48 = v47 < 0;
      }

      if (!v48)
      {
        break;
      }

      v16 = v40[1];
      if (!v16)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    *(v56 + 6) = v52 + (v50 + v55 - (v54 + v53 + v52) + v51);
    return v31;
  }

  return v36;
}

void *boost::container::small_vector_allocator<char,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

uint64_t applesauce::CF::details::handle_case<float,signed char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    LOBYTE(v3) = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::details::handle_case<double,signed char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    LOBYTE(v3) = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::StringRef,applesauce::CF::TypeRef>::dereference(void *a1, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
  }

  result = applesauce::CF::StringRef::from_get(&v11, *(v4 + 8 * v2));
  v7 = a2[1];
  v8 = a2[5];
  v9 = *(v8 + 8 * v7);
  if (v9)
  {
    result = CFRetain(*(v8 + 8 * v7));
  }

  *a1 = v11;
  a1[1] = v9;
  return result;
}

_DWORD *boost::container::vector<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>*,apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = v14 + a3 - v15;
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 4, a3, v18 - a3);
    }
  }

  if (v15)
  {
    result = boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v19 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String> *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

uint64_t std::pair<applesauce::CF::StringRef,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *boost::container::small_vector_allocator<apple::aiml::flatbuffers2::Offset<vp::vx::database::v1::fbs::plist::String>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::database::v1::syntax::conditions::Feature_Enabled::Parser::parse_condition(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  __dst.__r_.__value_.__s.__data_[0] = 0;
  v38 = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v36 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = a1[1];
    v6 = *(v3 + 88);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    *&v34 = v6;
    *(&v34 + 1) = v5;
    v7 = v5 == 0;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
    v6 = *(v3 + 88);
    v34 = v6;
    v7 = 1;
  }

  v8 = v5;
  if (v6)
  {
    v8 = v5;
    while (1)
    {
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v6 + 16);
        v10 = strlen(v9);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v9 = *(v6 + 16);
        v10 = strlen(v9);
      }

      v12 = vp::vx::database::v1::syntax::constexpr_hash(v9, v10, v11);
      if (v12 == 0xBE4552A6EE3BD8C7)
      {
        break;
      }

      if (v12 == 0x224FEDC17B2B31E3)
      {
        vp::xml::Node::children(&v32, &v34);
        v15 = v32;
        v14 = v33;
        v30 = v32;
        v31 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v14;
        if (v15)
        {
          while (1)
          {
            v16 = v31;
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              v17 = *(v15 + 2);
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }

            else
            {
              v17 = *(v15 + 2);
            }

            if (v17 == 3)
            {
              break;
            }

            v13.n128_f64[0] = vp::xml::Node_Iterator::increment(&v30, v13);
            v15 = v30;
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          v21 = vp::xml::Node::content(v15, v16);
          std::optional<std::string>::operator=[abi:ne200100]<std::string_view,void>(&__dst, v21, v22);
        }

LABEL_34:
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          v14 = v33;
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      v8 = *(&v34 + 1);
      v25 = v34;
      if (v34)
      {
        if (*(&v34 + 1))
        {
          atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
          v6 = *(v25 + 48);
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          *&v26 = v6;
          *(&v26 + 1) = v8;
          v29 = v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          v34 = v29;
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        else
        {
          v6 = *(v34 + 48);
          v34 = v6;
        }

        if (v6)
        {
          continue;
        }
      }

      goto LABEL_43;
    }

    vp::xml::Node::children(&v32, &v34);
    v19 = v32;
    v14 = v33;
    v30 = v32;
    v31 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v14;
    if (v19)
    {
      while (1)
      {
        v16 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = *(v19 + 2);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v20 = *(v19 + 2);
        }

        if (v20 == 3)
        {
          break;
        }

        v18.n128_f64[0] = vp::xml::Node_Iterator::increment(&v30, v18);
        v19 = v30;
        if (!v30)
        {
LABEL_31:
          v16 = v31;
          goto LABEL_34;
        }
      }

      v23 = vp::xml::Node::content(v19, v16);
      std::optional<std::string>::operator=[abi:ne200100]<std::string_view,void>(&__p, v23, v24);
    }

    goto LABEL_34;
  }

LABEL_43:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v27 = v36;
  if (v38 == 1 && (v36 & 1) != 0)
  {
    operator new();
  }

  v28 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  *a2 = 0;
  if ((v27 & 1) != 0 && v28 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38 == 1 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string_view,void>(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(__dst, __src, __len);
  }

  else
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    *(&__dst->__r_.__value_.__s + 23) = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    __dst->__r_.__value_.__s.__data_[__len] = 0;
    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

uint64_t vp::vx::database::v1::syntax::conditions::Feature_Enabled::evaluate(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v4 = *v4;
  }

  v5 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v5 = *v5;
  }

  return (*(*v3 + 16))(v3, v4, v5);
}

uint64_t vp::vx::database::v1::syntax::conditions::Feature_Enabled::build(vp::vx::database::v1::syntax::conditions::Feature_Enabled *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v4 = *(this + 39);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(this + 2);
    v4 = *(this + 3);
  }

  else
  {
    v5 = this + 16;
  }

  SharedString = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateSharedString(a2, v5, v4);
  v7 = *(this + 63);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = *(this + 5);
    v7 = *(this + 6);
  }

  else
  {
    v8 = this + 40;
  }

  v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateSharedString(a2, v8, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v10 = v9;
  *(a2 + 70) = 1;
  v11 = *(a2 + 8);
  v12 = *(a2 + 12);
  v13 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 6, v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, SharedString);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v11 - v12 + v13);
  v15 = v14;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::conditions::Feature_Enabled>(*(a2 + 4), *(a2 + 5), v14, 4u);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::conditions::Feature_Enabled>(*(a2 + 4), *(a2 + 5), v15, 6u);
  v16 = *(this + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v17 = *(a2 + 8);
  v18 = *(a2 + 12);
  v19 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v15);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 2);
  v20 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v17 - v18 + v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v20);
  return v20;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::conditions::Feature_Enabled>(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = (a2 + result - a3 - *(a2 + result - a3));
  if (*v4 <= a4 || !*(v4 + a4))
  {
    __assert_rtn("Required", "flatbuffers.h", 2702, "ok");
  }

  return result;
}

void vp::vx::database::v1::syntax::conditions::Feature_Enabled::~Feature_Enabled(void **this)
{
  *this = &unk_2881B7640;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B7640;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void vp::vx::database::v1::runtime::File_Manager::load_property_list(vp::vx::database::v1::runtime::File_Manager *this@<X0>, std::__fs::filesystem::path *a2@<X1>, void *a3@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(&__dst, this, "vp::vx::database::v1::runtime::File_Manager]", 43);
    v7 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
    v8 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
    size = __dst.__pn_.__r_.__value_.__l.__size_;
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v8 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = size;
      }

      p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
      if (v8 >= 0)
      {
        p_dst = &__dst;
      }

      if (v11)
      {
        v13 = " ";
      }

      else
      {
        v13 = "";
      }

      v14 = SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]);
      v15 = a2->__pn_.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = p_dst;
      if (v14 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = v15;
      }

      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v13;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v77 = v16;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEBUG, "%s%swill load %s file", &buf, 0x20u);
      LOBYTE(v8) = *(&__dst.__pn_.__r_.__value_.__s + 23);
    }

    if ((v8 & 0x80) != 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  v17 = std::__fs::filesystem::hash_value(a2);
  v19 = *(this + 40);
  if (v19)
  {
    v20 = v17;
    v21 = vcnt_s8(v19);
    v21.i16[0] = vaddlv_u8(v21);
    v22 = v21.u32[0];
    if (v21.u32[0] > 1uLL)
    {
      v23 = v17;
      if (v17 >= *&v19)
      {
        v23 = v17 % *&v19;
      }
    }

    else
    {
      v23 = (*&v19 - 1) & v17;
    }

    v24 = *(*(this + 4) + 8 * v23);
    if (v24)
    {
      for (i = *v24; i; i = *i)
      {
        v26 = i[1];
        if (v26 == v20)
        {
          v18.__data_ = a2;
          if (std::__fs::filesystem::operator==[abi:ne200100]((i + 2), v18))
          {
            v67 = i[5];
            cf = v67;
            if (v67)
            {
              v67 = CFRetain(v67);
            }

            v43 = vp::get_log(v67);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              v44 = vp::get_log_context_info(&__dst, this, "vp::vx::database::v1::runtime::File_Manager]", 43);
              v45 = HIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
              v46 = SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]);
              v47 = __dst.__pn_.__r_.__value_.__l.__size_;
              v48 = vp::get_log(v44);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                if (v46 >= 0)
                {
                  v49 = v45;
                }

                else
                {
                  v49 = v47;
                }

                v50 = __dst.__pn_.__r_.__value_.__r.__words[0];
                if (v46 >= 0)
                {
                  v50 = &__dst;
                }

                if (v49)
                {
                  v51 = " ";
                }

                else
                {
                  v51 = "";
                }

                v52 = SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]);
                v53 = a2->__pn_.__r_.__value_.__r.__words[0];
                LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                *(buf.__r_.__value_.__r.__words + 4) = v50;
                if (v52 >= 0)
                {
                  v54 = a2;
                }

                else
                {
                  v54 = v53;
                }

                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v51;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v77 = v54;
                _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_DEBUG, "%s%sdid load %s file", &buf, 0x20u);
                LOBYTE(v46) = *(&__dst.__pn_.__r_.__value_.__s + 23);
              }

              if ((v46 & 0x80) != 0)
              {
                operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
              }
            }

            *a3 = cf;
            return;
          }
        }

        else
        {
          if (v22 > 1)
          {
            if (v26 >= *&v19)
            {
              v26 %= *&v19;
            }
          }

          else
          {
            v26 &= *&v19 - 1;
          }

          if (v26 != v23)
          {
            break;
          }
        }
      }
    }
  }

  v28 = std::__fs::filesystem::path::__root_directory(a2);
  data = v28.__data_;
  if (v28.__size_)
  {
    goto LABEL_34;
  }

  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 1), *(this + 2));
  }

  else
  {
    __p = *(this + 8);
  }

  v39 = std::__fs::filesystem::path::__root_directory((this + 8));
  if (v39.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v39.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = v39.__size_;
  if (v39.__size_)
  {
    memmove(&__dst, v39.__data_, v39.__size_);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v39.__size_] = 0;
  v73 = __dst;
  while (1)
  {
    v40 = std::__fs::filesystem::path::__parent_path(&__p);
    data = v40.__data_;
    if (!v40.__size_)
    {
      break;
    }

    std::__fs::filesystem::operator/[abi:ne200100](&__dst, &__p, a2);
    data = std::__fs::filesystem::__status(&__dst, 0);
    if (v75 && v75 != 255)
    {
      if ((SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        buf = __dst.__pn_;
        LOBYTE(v77) = 1;
        break;
      }

      std::string::__init_copy_ctor_external(&buf, __dst.__pn_.__r_.__value_.__l.__data_, __dst.__pn_.__r_.__value_.__l.__size_);
      v42 = 1;
      goto LABEL_83;
    }

    v41.__data_ = &v73;
    data = std::__fs::filesystem::operator==[abi:ne200100](&__p, v41);
    if (data)
    {
      v42 = 0;
      buf.__r_.__value_.__s.__data_[0] = 0;
LABEL_83:
      LOBYTE(v77) = v42;
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }

      break;
    }

    std::__fs::filesystem::path::parent_path[abi:ne200100](&v72, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v72;
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v73.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v40.__size_)
  {
LABEL_34:
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = a2->__pn_;
    }

    LOBYTE(v77) = 1;
LABEL_40:
    v29 = vp::get_log(data);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = vp::get_log_context_info(&__p, this, "vp::vx::database::v1::runtime::File_Manager]", 43);
      v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v32 = __p.__r_.__value_.__l.__size_;
      v33 = vp::get_log(v30);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        if ((v31 & 0x80u) == 0)
        {
          v34 = v31;
        }

        else
        {
          v34 = v32;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v34)
        {
          v36 = " ";
        }

        else
        {
          v36 = "";
        }

        LODWORD(__dst.__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__dst.__pn_.__r_.__value_.__r.__words + 4) = p_p;
        p_buf = &buf;
        WORD2(__dst.__pn_.__r_.__value_.__r.__words[1]) = 2080;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 6) = v36;
        HIWORD(__dst.__pn_.__r_.__value_.__r.__words[2]) = 2080;
        v79 = p_buf;
        _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_INFO, "%s%sload %s file", &__dst, 0x20u);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &buf;
    }

    else
    {
      v38 = buf.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&__dst, v38);
    applesauce::CF::make_DataRef(&__p, &__dst);
    if (__p.__r_.__value_.__r.__words[0])
    {
      if (CFPropertyListCreateWithData(0, __p.__r_.__value_.__l.__data_, 0, 0, 0))
      {
        if (__p.__r_.__value_.__r.__words[0])
        {
          CFRelease(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
        }

        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v68 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v68, "Could not construct");
  }

  if (v77)
  {
    goto LABEL_40;
  }

  v55 = vp::get_log(data);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = vp::get_log_context_info(&__p, this, "vp::vx::database::v1::runtime::File_Manager]", 43);
    v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v58 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v59 = __p.__r_.__value_.__l.__size_;
    v60 = vp::get_log(v56);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      if (v58 >= 0)
      {
        v61 = v57;
      }

      else
      {
        v61 = v59;
      }

      v62 = __p.__r_.__value_.__r.__words[0];
      if (v58 >= 0)
      {
        v62 = &__p;
      }

      if (v61)
      {
        v63 = " ";
      }

      else
      {
        v63 = "";
      }

      v64 = SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]);
      v65 = a2->__pn_.__r_.__value_.__r.__words[0];
      LODWORD(__dst.__pn_.__r_.__value_.__l.__data_) = 136315650;
      *(__dst.__pn_.__r_.__value_.__r.__words + 4) = v62;
      if (v64 >= 0)
      {
        v66 = a2;
      }

      else
      {
        v66 = v65;
      }

      WORD2(__dst.__pn_.__r_.__value_.__r.__words[1]) = 2080;
      *(&__dst.__pn_.__r_.__value_.__r.__words[1] + 6) = v63;
      HIWORD(__dst.__pn_.__r_.__value_.__r.__words[2]) = 2080;
      v79 = v66;
      _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_DEFAULT, "%s%sfailed to find %s file", &__dst, 0x20u);
      LOBYTE(v58) = *(&__p.__r_.__value_.__s + 23);
    }

    if ((v58 & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *a3 = 0;
  if (v77 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_27263A7C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::__fs::filesystem::path,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 5);
    if (v3)
    {
      CFRelease(v3);
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void vp::vx::database::v1::runtime::File_Manager::~File_Manager(void **this)
{
  vp::vx::database::v1::runtime::File_Manager::~File_Manager(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::database::v1::runtime::File_Manager]", 43);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[6];
  if (v11)
  {
    do
    {
      v12 = *v11;
      v13 = *(v11 + 5);
      if (v13)
      {
        CFRelease(v13);
      }

      if (v11[39] < 0)
      {
        operator delete(*(v11 + 2));
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v14 = this[4];
  this[4] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void sub_27263AA0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::database::v1::syntax::Flags::Boolean::parse_flag(vp::vx::database::v1::syntax::Flags::Boolean *this@<X0>, const vp::xml::Node *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(v7 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *(v7 + 8);
  }

  if (v8 != 1)
  {
    goto LABEL_16;
  }

  vp::xml::Node::children(&v17, a2);
  v11 = v17;
  v10 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = 0;
  }

  v19 = v11;
  v12 = v10;
  if (v11)
  {
    do
    {
      v9.n128_f64[0] = vp::xml::Node_Iterator::increment(&v19, v9);
    }

    while (v19);
    v12 = v20;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!v11)
  {
    if (*(this + 16))
    {
      v14 = MEMORY[0x277CBED28];
    }

    else
    {
      v14 = MEMORY[0x277CBED10];
    }

    v15 = *(this + 1);
    if (v15)
    {
      CFRetain(v15);
    }

    v16 = *v14;
    if (v16)
    {
      CFRetain(v16);
      *a3 = v15;
      *(a3 + 8) = v16;
      *(a3 + 16) = 1;
      CFRelease(v16);
      return;
    }

    *a3 = v15;
    *(a3 + 8) = 0;
    v13 = 1;
  }

  else
  {
LABEL_16:
    v13 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v13;
}

void vp::vx::database::v1::syntax::Flags::Boolean::~Boolean(vp::vx::database::v1::syntax::Flags::Boolean *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t (***non-virtual thunk tovp::vx::database::v1::syntax::Flags::flag_parser(uint64_t a1, vp::vx::database::v1::syntax *this, char *a3))()
{
  if (vp::vx::database::v1::syntax::constexpr_hash(this, a3, a3) == 0x83C0A029D22AC629)
  {
    return (a1 + 16);
  }

  else
  {
    return vp::vx::database::v1::syntax::Flag::Parser::null(void)::s_null;
  }
}

uint64_t (***vp::vx::database::v1::syntax::Flags::flag_parser(uint64_t a1, vp::vx::database::v1::syntax *this, char *a3))()
{
  if (vp::vx::database::v1::syntax::constexpr_hash(this, a3, a3) == 0x83C0A029D22AC629)
  {
    return (a1 + 24);
  }

  else
  {
    return vp::vx::database::v1::syntax::Flag::Parser::null(void)::s_null;
  }
}

void non-virtual thunk tovp::vx::database::v1::syntax::Flags::~Flags(vp::vx::database::v1::syntax::Flags *this)
{
  *(this - 1) = &unk_2881B76F0;
  *this = &unk_2881B7720;
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *(this - 1) = &unk_2881B76F0;
  *this = &unk_2881B7720;
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

double vp::vx::database::v1::syntax::Flags::create_flag@<D0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = -v6;
  v8 = (a2 - v6);
  if (*v8 >= 5u && (v9 = v8[2]) != 0 && (v10 = (a2 + v9 + *(a2 + v9)), v11 = (v10 - *v10), *v11 >= 5u) && (v12 = v11[2]) != 0)
  {
    v13 = v10 + v12;
    v14 = *(v10 + v12);
    *&v18 = 0;
    vp::vx::database::v1::runtime::String_Pool::intern(&v18, v5, &v13[v14 + 4], *&v13[v14]);
    v7 = -*a2;
  }

  else
  {
    *&v18 = 0;
  }

  v15 = (a2 + v7);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    vp::vx::database::v1::fbs::CreatePropertyList(&v18 + 1, v5, (a2 + v16 + *(a2 + v16)));
  }

  else
  {
    *(&v18 + 1) = 0;
  }

  result = *&v18;
  *a3 = v18;
  *(a3 + 16) = 1;
  return result;
}

std::pmr *vp::vx::components::GM_Coex_Noise_Mitigator::get_dsp_parameter_override@<X0>(std::pmr *result@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *(result + 1);
  *(a3 + 24) = 0;
  if (a2 == 1735222127)
  {
    v13 = 0;
    v14 = 0;
    valuePtr = std::pmr::get_default_resource(result);
    vp::vx::data_flow::State<void>::get_value((v4 + 168), &valuePtr);
    v5 = *vp::vx::data_flow::Value::view_storage(&valuePtr);
    vp::vx::data_flow::Value::~Value(&valuePtr);
    v7 = 0.0;
    if (v5 == 1)
    {
      default_resource = std::pmr::get_default_resource(v6);
      v13 = 0;
      v14 = 0;
      valuePtr = default_resource;
      vp::vx::data_flow::State<void>::get_value((v4 + 192), &valuePtr);
      v9 = *vp::vx::data_flow::Value::view_storage(&valuePtr);
      vp::vx::data_flow::Value::~Value(&valuePtr);
      v7 = 0.0;
      if (v9)
      {
        v7 = 1.0;
      }
    }

    *&valuePtr = v7;
    v10 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a3);
    *(a3 + 24) = 1;
    *a3 = v10;
  }

  return result;
}

void sub_27263B068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881B7960[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISB_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJS8_SB_SG_EEEEEEDcSK_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void vp::vx::components::GM_Coex_Noise_Mitigator::configure(vp::vx::components::GM_Coex_Noise_Mitigator *this)
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&v46, v1, "vp::vx::components::GM_Coex_Noise_Mitigator_Impl]", 48);
    v4 = HIBYTE(v47);
    v5 = SHIBYTE(v47);
    v6 = v47;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = v46;
      if (v5 >= 0)
      {
        v9 = &v46;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v47);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(v46);
    }
  }

  v11 = *(v1 + 24);
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11)) == 0 || (v13 = v12, v14 = *(v1 + 16), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = *(v1 + 56);
  if (!v15 || (v16 = std::__shared_weak_count::lock(v15), (v17 = v16) == 0) || (v18 = *(v1 + 48), atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed), !v18))
  {
LABEL_28:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v19 = *(v14 + 8);
  if (v19)
  {
    dispatch_retain(*(v14 + 8));
  }

  v20 = *(v1 + 64);
  *(v1 + 64) = v19;
  if (v20)
  {
    dispatch_release(v20);
  }

  (*(*v18 + 16))(&v46, v18, 60);
  v21 = v46;
  v38 = v46;
  v39 = v47;
  v47 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v46);
  v46 = &unk_2881B7898;
  LOBYTE(v47) = 0;
  v48 = &v46;
  v32 = v21;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v46);
  v22 = *buf;
  v40 = *buf;
  v30 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v46);
  v35 = v22;
  v41 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v40);
  vp::vx::data_flow::State<void>::~State(&v38);
  vp::vx::data_flow::State<void>::~State((v1 + 168));
  *(v1 + 168) = v22;
  *(v1 + 176) = v30;
  v36 = 0;
  v37 = 0;
  buf[0] = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v46, v14, buf);
  vp::vx::data_flow::State<void>::~State((v1 + 192));
  *(v1 + 192) = v46;
  *(v1 + 200) = v47;
  v47 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v46);
  v23 = *(v1 + 88);
  v25 = *v1;
  v24 = *(v1 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
  }

  *buf = &unk_2881B78E0;
  *&buf[8] = v25;
  *&buf[16] = v24;
  v43 = buf;
  (*(*v23 + 16))(v23, buf);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](buf);
  v46 = &unk_2881B7928;
  LOBYTE(v47) = 0;
  v48 = &v46;
  v26 = *(v1 + 192);
  v44 = *(v1 + 168);
  v45 = v26;
  vp::vx::data_flow::State_Manager::create_state(&v40, (v14 + 48), &v46);
  v27 = v40;
  v38 = v40;
  v31 = v41;
  v41 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v40);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v46);
  v32 = v27;
  v39 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v38);
  LODWORD(v46) = v27;
  v47 = v31;
  v33 = 0;
  v34 = 0;
  v28 = boost::container::flat_map<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>,std::less<vp::vx::Graph_Parameter_ID>,vp::Allocator<std::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>>::priv_subscript((v1 + 112), 0x676D636Fu);
  v29 = vp::vx::data_flow::State<void>::~State(v28);
  *v29 = v46;
  *(v29 + 2) = v47;
  v47 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v46);
  vp::vx::data_flow::State<void>::~State(&v32);
  vp::vx::data_flow::State<void>::~State(&v35);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
}

void sub_27263B594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  vp::vx::data_flow::State<void>::~State((v7 - 104));
  vp::vx::data_flow::State<void>::~State(va);
  vp::vx::data_flow::State<void>::~State(va1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

float *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components28GM_Coex_Noise_Mitigator_Impl9configureEvEUlbbE_JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  if (*vp::vx::data_flow::Value::view_storage(v3[1]) & *v6)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components28GM_Coex_Noise_Mitigator_Impl9configureEvEUlbbE_JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7928;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1},std::allocator<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::operator()(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 8))
      {
        v5 = *(a1 + 16);
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void applesauce::dispatch::v1::async<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}::operator() const(BOOL)::{lambda(void)#1}>(dispatch_queue_s *,vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}::operator() const(BOOL)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6[0] = std::pmr::get_default_resource(v3);
        v6[1] = 0;
        v6[2] = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
        *vp::vx::data_flow::Value::allocate_storage(v6) = *(a1 + 16);
        vp::vx::data_flow::State<void>::set_value((v5 + 192), v6);
        vp::vx::data_flow::Value::~Value(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::default_delete<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}::operator() const(BOOL)::{lambda(void)#1}>::operator()[abi:ne200100](a1);
}

void sub_27263B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  std::default_delete<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}::operator() const(BOOL)::{lambda(void)#1}>::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void std::default_delete<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}::operator() const(BOOL)::{lambda(void)#1}>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void std::__function::__func<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1},std::allocator<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1},std::allocator<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1},std::allocator<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B78E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1},std::allocator<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_2881B78E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1},std::allocator<vp::vx::components::GM_Coex_Noise_Mitigator_Impl::configure(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_2881B78E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components28GM_Coex_Noise_Mitigator_Impl9configureEvEUlNS3_11Chat_FlavorEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2) == 1;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components28GM_Coex_Noise_Mitigator_Impl9configureEvEUlNS3_11Chat_FlavorEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7898;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::components::GM_Coex_Noise_Mitigator::set_state_owner(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 56);
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void vp::vx::components::GM_Coex_Noise_Mitigator::set_state_observer(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 40);
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void vp::vx::components::GM_Coex_Noise_Mitigator::set_state_manager(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 24);
  *(v2 + 16) = v4;
  *(v2 + 24) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void vp::vx::components::GM_Coex_Noise_Mitigator::~GM_Coex_Noise_Mitigator(std::__shared_weak_count **this)
{
  vp::vx::components::GM_Coex_Noise_Mitigator::~GM_Coex_Noise_Mitigator(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v18 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::GM_Coex_Noise_Mitigator]", 43);
    v4 = v13;
    v5 = v13;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v13;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[2];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void vp::vx::IO_Parameter_Setter_Delegate_Factory::~IO_Parameter_Setter_Delegate_Factory(vp::vx::IO_Parameter_Setter_Delegate_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 1);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

void *boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 8);
    do
    {
      --v2;
      v3 = vp::vx::data_flow::State<void>::~State(v3) + 8;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 32 * v4, 8);
  }

  return a1;
}

void std::__shared_ptr_emplace<vp::vx::components::GM_Coex_Noise_Mitigator_Impl>::__on_zero_shared(int *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 14);
  if (v2)
  {
    v2 = (*(*v2 + 24))(v2);
  }

  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, (a1 + 6), "vp::vx::components::GM_Coex_Noise_Mitigator_Impl]", 48);
    v5 = v21;
    v6 = v21;
    v7 = __p[1];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      v10 = __p[0];
      if (v6 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v6) = v21;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(a1 + 54);
  vp::vx::data_flow::State<void>::~State(a1 + 48);
  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(a1 + 17);
  *(a1 + 21) = &unk_2881C6630;
  v12 = *(a1 + 23);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(a1 + 15);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(a1 + 13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(a1 + 11);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(a1 + 10);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(a1 + 6);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(a1 + 4);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }
}

void std::__shared_ptr_emplace<vp::vx::components::GM_Coex_Noise_Mitigator_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B7988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void virtual thunk tovp::vx::dsp::v2::Graph::~Graph(vp::vx::dsp::v2::Graph *this)
{
  vp::vx::dsp::v2::Graph::~Graph((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::dsp::v2::Graph::~Graph((this + *(*this - 24)));
}

void vp::vx::dsp::v2::Graph::~Graph(vp::vx::dsp::v2::Graph *this)
{
  *this = &unk_2881B79C8;
  *(this + 5) = &unk_2881B7B68;
  *(this + 1) = &unk_2881B7AC0;
  v3 = *(this + 3);
  v2 = *(this + 4);
  *(v3 + 52) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = &unk_2881B7B10;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v4 = *(this + 4);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  *(this + 5) = &unk_2881C6630;
  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

{
  vp::vx::dsp::v2::Graph::~Graph(this);

  JUMPOUT(0x2743CBFA0);
}

void non-virtual thunk tovp::vx::dsp::v2::Graph::~Graph(vp::vx::dsp::v2::Graph *this)
{
  vp::vx::dsp::v2::Graph::~Graph((this - 16));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::dsp::v2::Graph::~Graph((this - 16));
}

{
  vp::vx::dsp::v2::Graph::~Graph((this - 8));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::dsp::v2::Graph::~Graph((this - 8));
}

void vp::vx::dsp::v2::Graph::set_property(vp::vx::dsp::v2::Graph *this@<X0>, void *a2@<X1>, const vp::Blob *a3@<X2>, _BYTE *a4@<X8>)
{
  CA::DSP::Graph::SetProperty(&v5, *(*(this + 3) + 24), a2, *a3, *(a3 + 2));
  vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a4, "get DSP property", &v5);
  if ((v6 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
  }
}

const void **CA::DSP::Graph::SetProperty(CA::DSP::Graph *this, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v6 = 0;
  if (!CADSPGraphSetProperty())
  {
    v6 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

void vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(_BYTE *a1, const char *a2, uint64_t a3)
{
  if (*(a3 + 8) == 1)
  {
    *a1 = 0;
    a1[48] = 1;
  }

  else
  {
    v18[0] = 0x17005A00000000;
    v18[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
    v20 = 0;
    v21 = 0;
    v19 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v22);
    std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](&v16);
    v15 = v18;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "failed to ", 10);
    v6 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, a2, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " with error ", 12);
    Code = CA::DSP::RealTimeError::GetCode(*a3);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    Status = CA::DSP::RealTimeError::GetStatus(*a3);
    if (Status)
    {
      v11 = Status;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", status ", 9);
      caulk::string_from_4cc(&__p, v11);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v12, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v18);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v15);
    if (SHIBYTE(v21) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v22, v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

const void **CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void vp::vx::dsp::v2::Graph::get_property(vp::Mutable_Blob *a2@<X2>, _BYTE *a4@<X8>)
{
  v10[0] = *(a2 + 1);
  v8 = 0;
  v6 = 0;
  if (CADSPGraphGetProperty())
  {
    v7 = 0;
  }

  else
  {
    v7 = v8 == 0;
  }

  if (v7)
  {
    v6 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v8 = v6;
  }

  v12 = v6;
  if (v6)
  {
    v12 = 0;
    v11 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    *&v10[1] = 0;
    v12 = 0;
    v8 = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10[1]);
    vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a4, "get DSP property info", &v8);
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v11 = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v12);
    v9 = 1;
    vp::Mutable_Blob::set_size(a2, v10[0]);
    vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a4, "get DSP property info", &v8);
  }
}

uint64_t vp::Mutable_Blob::set_size(uint64_t this, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 8) < a2)
  {
    v4 = 0;
    memset(v7, 0, sizeof(v7));
    v2 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v5 = 134217984;
    v6 = 0;
    _os_log_send_and_compose_impl(v3, &v4, v7, 80, &dword_2724B4000, v2, 16, "assertion failure: in_size <= m_capacity -> %llu", &v5);
    _os_crash_msg();
    __break(1u);
  }

  *(this + 16) = a2;
  return this;
}

void sub_27263C82C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::dsp::v2::Graph::get_property_info(uint64_t a3@<X8>)
{
  v19 = 0;
  v14[0] = 0;
  v4 = 0;
  if (CADSPGraphGetPropertyInfo())
  {
    v5 = 0;
  }

  else
  {
    v5 = v14[0] == 0;
  }

  if (v5)
  {
    v4 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v14[0] = v4;
  }

  v16 = v4;
  if (v4)
  {
    v16 = 0;
    LOBYTE(v22) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v21 = 0;
    v18 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
    __p.__r_.__value_.__s.__data_[8] = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v21);
    __p.__r_.__value_.__r.__words[0] = 0;
    v14[0] = v4;
    v15 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p.__r_.__value_.__l.__data_);
    v21 = 0x17005A00000000;
    v22 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
    v24 = 0;
    v25 = 0;
    v23 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
    std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](&v19);
    v18 = &v21;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "failed to ", 10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "get DSP property info", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " with error ", 12);
    Code = CA::DSP::RealTimeError::GetCode(v4);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    Status = CA::DSP::RealTimeError::GetStatus(v14[0]);
    if (Status)
    {
      v11 = Status;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", status ", 9);
      caulk::string_from_4cc(&__p, v11);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v12, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, &v21);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v18);
    if (SHIBYTE(v25) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, v23, v25 & 0x7FFFFFFFFFFFFFFFLL);
    }

    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v14);
  }

  else
  {
    v6 = v19;
    LOBYTE(v22) = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
    v14[0] = HIDWORD(v6);
    v14[1] = ((v6 >> 1) & 1);
    v15 = 1;
    *a3 = *v14;
    *(a3 + 48) = 1;
  }
}

uint64_t vp::vx::dsp::v2::Graph::get_property_ids@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v4[0] = a1;
  v4[1] = &v5;
  v4[2] = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 0x40000000;
  v8 = ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK2vp2vx3dsp2v25Graph16get_property_idsENS4_2io9DirectionEE3__0EEvOT__block_invoke;
  v9 = &__block_descriptor_tmp_183;
  v10 = v4;
  CADSPGraphEnumerateProperties();
  return std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
}

uint64_t ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK2vp2vx3dsp2v25Graph16get_property_idsENS4_2io9DirectionEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  CA::DSP::Graph::GetPropertyDirection(&v17, *(*(*v3 + 24) + 24), a2);
  if (v17 == (**(v3 + 8) != 0))
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  if ((v18 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
  }

  if (v4)
  {
    v5 = *(v3 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v14);
      }

      *(4 * v11) = v2;
      v8 = 4 * v11 + 4;
      memcpy(0, v9, v10);
      v15 = *v5;
      *v5 = 0;
      *(v5 + 8) = v8;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7 = v2;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }

  return 0;
}

const void **CA::DSP::Graph::GetPropertyDirection(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(&v7, MEMORY[0x277CEFA58], a2, a3);
  v5 = v8;
  if (v8 == 1)
  {
    *this = v7;
    *(this + 8) = v5;
  }

  else
  {
    v6 = v7;
    v7 = 0;
    v9 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = v5;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *, const void **), uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v11 = 0;
  v5 = a2(a3, a4, &v12, &v11);
  v6 = v11;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v6 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v8 = 0;
    v10 = 0;
    *a1 = v6;
  }

  else
  {
    *a1 = v12;
    v8 = 1;
  }

  *(a1 + 8) = v8;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
}

uint64_t vp::vx::dsp::v2::Graph::has_property(uint64_t a1, uint64_t a2, int a3)
{
  if (!CA::DSP::Graph::HasProperty(*(*(a1 + 24) + 24)))
  {
    return 0;
  }

  CA::DSP::Graph::GetPropertyDirection(&v8, *(*(a1 + 24) + 24), a2);
  if (v8 == (a3 != 0))
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if ((v9 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  return v6;
}

void vp::vx::dsp::v2::Graph::set_parameter(vp::vx::dsp::v2::Graph *this@<X0>, float a2@<S0>, _BYTE *a3@<X8>, uint64_t a4@<X1>)
{
  CA::DSP::Graph::SetParameter(&v5, *(*(this + 3) + 24), a2, a4);
  vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a3, "set DSP parameter", &v5);
  if ((v6 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
  }
}

const void **CA::DSP::Graph::SetParameter(CA::DSP::Graph *this, uint64_t a2, float a3, uint64_t a4)
{
  v10 = 0;
  v5 = 0;
  if (!CADSPGraphSetParameter())
  {
    v5 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v10 = v5;
  }

  v9 = v5;
  if (v5)
  {
    v9 = 0;
    v8 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    v7 = 0;
    v10 = 0;
    *this = v5;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  else
  {
    v8 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = 1;
  }

  return result;
}

const void **vp::vx::dsp::v2::Graph::get_parameter@<X0>(uint64_t a3@<X8>)
{
  v22[0] = 0;
  __p.__r_.__value_.__r.__words[0] = 0;
  Parameter = CADSPGraphGetParameter();
  v5 = 0;
  if (Parameter)
  {
    v6 = 0;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0] == 0;
  }

  if (v6)
  {
    v5 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    __p.__r_.__value_.__r.__words[0] = v5;
  }

  v18 = v5;
  if (v5)
  {
    v18 = 0;
    v24 = v5;
    LOBYTE(v25) = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
    v9 = v24;
    v24 = 0;
    v21 = 0;
    v18 = v9;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v21);
    v19 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v24);
    v24 = 0x17005A00000000;
    v25 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
    v27 = 0;
    v28 = 0;
    v26 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v29);
    std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v22);
    v21 = &v24;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "failed to ", 10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "get DSP parameter", 17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " with error ", 12);
    v10 = v18;
    Code = CA::DSP::RealTimeError::GetCode(v18);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    Status = CA::DSP::RealTimeError::GetStatus(v10);
    if (Status)
    {
      v15 = Status;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", status ", 9);
      caulk::string_from_4cc(&__p, v15);
      v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v16, v17);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, &v24);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v21);
    if (SHIBYTE(v28) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v29, v26, v28 & 0x7FFFFFFFFFFFFFFFLL);
    }

    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
  }

  else
  {
    v7 = v22[0];
    LODWORD(v24) = v22[0];
    LOBYTE(v25) = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v18);
    LODWORD(v18) = v7;
    v19 = 1;
    *a3 = v7;
    *(a3 + 48) = 1;
  }

  return result;
}

uint64_t vp::vx::dsp::v2::Graph::get_parameter_ids@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v4[0] = a1;
  v4[1] = &v5;
  v4[2] = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 0x40000000;
  v8 = ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK2vp2vx3dsp2v25Graph17get_parameter_idsENS4_2io9DirectionEE3__0EEvOT__block_invoke;
  v9 = &__block_descriptor_tmp_7834;
  v10 = v4;
  CADSPGraphEnumerateParameters();
  return std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
}

uint64_t ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK2vp2vx3dsp2v25Graph17get_parameter_idsENS4_2io9DirectionEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  CA::DSP::Graph::GetParameterDirection(&v17, *(*(*v3 + 24) + 24), a2);
  if (v17 == (**(v3 + 8) != 0))
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  if ((v18 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
  }

  if (v4)
  {
    v5 = *(v3 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = v7 - *v5;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<float>::allocate_at_least[abi:ne200100](v14);
      }

      *(4 * v11) = v2;
      v8 = 4 * v11 + 4;
      memcpy(0, v9, v10);
      v15 = *v5;
      *v5 = 0;
      *(v5 + 8) = v8;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7 = v2;
      v8 = (v7 + 1);
    }

    *(v5 + 8) = v8;
  }

  return 0;
}

const void **CA::DSP::Graph::GetParameterDirection(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(&v7, MEMORY[0x277CEFA48], a2, a3);
  v5 = v8;
  if (v8 == 1)
  {
    *this = v7;
    *(this + 8) = v5;
  }

  else
  {
    v6 = v7;
    v7 = 0;
    v9 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = v5;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

uint64_t vp::vx::dsp::v2::Graph::has_parameter(uint64_t a1, uint64_t a2, int a3)
{
  if (!CA::DSP::Graph::HasParameter(*(*(a1 + 24) + 24)))
  {
    return 0;
  }

  CA::DSP::Graph::GetParameterDirection(&v8, *(*(a1 + 24) + 24), a2);
  if (v8 == (a3 != 0))
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if ((v9 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  return v6;
}

uint64_t vp::vx::dsp::v2::Graph::kernel@<X0>(uint64_t this@<X0>, void *a2@<X8>)
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

void vp::vx::dsp::v2::Graph::disconnect(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (*(v3 + 72) == 1)
  {
    vp::rpb::Connection::~Connection((v3 + 56));
    *(v3 + 72) = 0;
  }

  *a2 = 0;
  a2[48] = 1;
}

void vp::vx::dsp::v2::Graph::connect(uint64_t a1@<X0>, id *a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(*(a1 + 24) + 88) != 1)
  {
    goto LABEL_43;
  }

  vp::rpb::Server::get_shared_instance(&v27);
  if (v27)
  {
    __p.__r_.__value_.__r.__words[0] = 0;
    RemoteProcessingBlockHost = CADSPGraphCreateRemoteProcessingBlockHost();
    if (RemoteProcessingBlockHost)
    {
      v32[0] = 0;
      v29 = RemoteProcessingBlockHost;
      v30[0] = 1;
      CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v32);
    }

    else
    {
      v20 = __p.__r_.__value_.__r.__words[0];
      if (!__p.__r_.__value_.__r.__words[0])
      {
        v20 = CADSPErrorCreate();
        __p.__r_.__value_.__r.__words[0] = v20;
      }

      v25 = 0;
      v32[0] = 0;
      v29 = v20;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v32);
      v30[0] = 0;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v25);
    }

    if (v30[0] == 1)
    {
      v7 = v29;
      v29 = 0;
      v32[0] = v7;
      v8 = v7;
      v25 = v8;
      CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(v32);
      v26 = 1;
      if (v30[0])
      {
        CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(&v29);
        goto LABEL_10;
      }
    }

    else
    {
      v8 = v29;
      v29 = 0;
      v25 = v8;
      v26 = 0;
    }

    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v29);
LABEL_10:
    v9 = v26;
    if (v26 == 1)
    {
      v10 = *(a1 + 24);
      v11 = *(v10 + 80);
      if (v11)
      {
        CFRetain(*(v10 + 80));
        CFRetain(v11);
        v24 = v11;
        vp::rpb::Object::add_user_info(&v25, &v24);
        CFRelease(v11);
        CFRetain(v11);
        v23 = v11;
        vp::rpb::Object::add_user_info(a2, &v23);
        CFRelease(v11);
        CFRelease(v11);
      }

      vp::rpb::Server::add_host(v27, &v25, a2);
      v12 = *(a1 + 24);
      if (*(v12 + 72) == 1)
      {
        vp::rpb::Connection::~Connection((v12 + 56));
        *(v12 + 72) = 0;
      }

      v29 = v27;
      v32[0] = v8;
      vp::rpb::Connection::Connection(v12 + 56, &v29, v32);
      vp::objc::ID::~ID(v32);
      vp::objc::ID::~ID(&v29);
      *(v12 + 72) = 1;
    }

    else
    {
      v21 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      v22 = 0;
      v32[0] = 0x17005A00000000;
      v32[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
      v34 = 0;
      v35 = 0;
      v33 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v36);
      std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v30);
      v29 = v32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "failed to ", 10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "connect RPB", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " with error ", 12);
      Code = CA::DSP::Error::GetCode(v21);
      caulk::string_from_4cc(&__p, Code);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      Status = CA::DSP::Error::GetStatus(v21);
      if (Status)
      {
        v17 = Status;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", status ", 9);
        caulk::string_from_4cc(&__p, v17);
        v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v18, v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a3, v32);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v29);
      if (SHIBYTE(v35) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v36, v33, v35 & 0x7FFFFFFFFFFFFFFFLL);
      }

      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v21);
    }

    if (v26 == 1)
    {
      vp::objc::ID::~ID(&v25);
      if (!v9)
      {
LABEL_40:
        vp::objc::ID::~ID(&v27);
        return;
      }
    }

    else
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v25);
      if (!v9)
      {
        goto LABEL_40;
      }
    }
  }

  vp::objc::ID::~ID(&v27);
LABEL_43:
  *a3 = 0;
  a3[48] = 1;
}

const void **CA::DSP::ReferenceCounted<__RPBHost *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void vp::vx::dsp::v2::Graph::reset(_BYTE *a2@<X8>)
{
  v6 = 0;
  v3 = 0;
  if (CADSPGraphReset())
  {
    v4 = 0;
  }

  else
  {
    v4 = v6 == 0;
  }

  if (v4)
  {
    v3 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v6 = v3;
  }

  v10 = v3;
  if (v3)
  {
    v10 = 0;
    v9 = 0;
    v5 = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v10 = 0;
    v6 = v3;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v5);
    v7 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a2, "reset", &v6);
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
  }

  else
  {
    v9 = 1;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v7 = 1;
    vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a2, "reset", &v6);
  }
}

void vp::vx::dsp::v2::Graph::process(void *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v5 = a4;
  v73[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1[3] + 36);
  v11 = (*(*a1 + 48))(a1, 0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v15 = &v64 - v13;
  v16 = v12;
  if (v12)
  {
    v17 = (&v64 - v13);
    v18 = v12;
    do
    {
      v19 = *a2;
      a2 = (a2 + 24);
      v14 = v19;
      *v17 = v19;
      v17 = (v17 + 24);
      --v18;
    }

    while (v18);
  }

  v20 = (*(*a1 + 48))(a1, 1, v14);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  v24 = v21;
  if (v21)
  {
    v25 = (&v64 - v22);
    v26 = v21;
    do
    {
      v27 = *a3;
      a3 = (a3 + 24);
      *v25 = v27;
      v25 = (v25 + 24);
      --v26;
    }

    while (v26);
  }

  switch(v10)
  {
    case 0:
      if (v16)
      {
        v50 = 0;
        v51 = vdupq_n_s64(v16 - 1);
        v52 = (v15 + 64);
        do
        {
          v53 = vdupq_n_s64(v50);
          v54 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_2727564E0)));
          if (vuzp1_s16(v54, *v51.i8).u8[0])
          {
            *(v52 - 12) = v5;
          }

          if (vuzp1_s16(v54, *&v51).i8[2])
          {
            *(v52 - 6) = v5;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_2727564D0)))).i32[1])
          {
            *v52 = v5;
            v52[6] = v5;
          }

          v50 += 4;
          v52 += 24;
        }

        while (((v16 + 3) & 0x1FFFFFFFCLL) != v50);
      }

      if (v21)
      {
        v55 = 0;
        v56 = vdupq_n_s64(v21 - 1);
        v57 = (v23 + 64);
        do
        {
          v58 = vdupq_n_s64(v55);
          v59 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v58, xmmword_2727564E0)));
          if (vuzp1_s16(v59, *v56.i8).u8[0])
          {
            *(v57 - 12) = v5;
          }

          if (vuzp1_s16(v59, *&v56).i8[2])
          {
            *(v57 - 6) = v5;
          }

          if (vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v58, xmmword_2727564D0)))).i32[1])
          {
            *v57 = v5;
            v57[6] = v5;
          }

          v55 += 4;
          v57 += 24;
        }

        while (((v21 + 3) & 0x1FFFFFFFCLL) != v55);
      }

      goto LABEL_68;
    case 2:
      vp::vx::dsp::v2::Graph::get_required_input_frame_count(&v67, a1, v5, 0);
      if (v72)
      {
        if (v16)
        {
          v39 = 0;
          v40 = v67;
          v41 = vdupq_n_s64(v16 - 1);
          v42 = v15 + 64;
          do
          {
            v43 = vdupq_n_s64(v39);
            v44 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_2727564E0)));
            if (vuzp1_s16(v44, *v41.i8).u8[0])
            {
              *(v42 - 12) = v40;
            }

            if (vuzp1_s16(v44, *&v41).i8[2])
            {
              *(v42 - 6) = v40;
            }

            if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_2727564D0)))).i32[1])
            {
              *v42 = v40;
              v42[6] = v40;
            }

            v39 += 4;
            v42 += 24;
          }

          while (((v16 + 3) & 0x1FFFFFFFCLL) != v39);
        }

        if (v24)
        {
          v45 = 0;
          v46 = vdupq_n_s64(v24 - 1);
          v47 = (v23 + 64);
          do
          {
            v48 = vdupq_n_s64(v45);
            v49 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v48, xmmword_2727564E0)));
            if (vuzp1_s16(v49, *v46.i8).u8[0])
            {
              *(v47 - 12) = v5;
            }

            if (vuzp1_s16(v49, *&v46).i8[2])
            {
              *(v47 - 6) = v5;
            }

            if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v48, xmmword_2727564D0)))).i32[1])
            {
              *v47 = v5;
              v47[6] = v5;
            }

            v45 += 4;
            v47 += 24;
          }

          while (((v24 + 3) & 0x1FFFFFFFCLL) != v45);
        }

        goto LABEL_68;
      }

      break;
    case 3:
      vp::vx::dsp::v2::Graph::get_expected_output_frame_count(&v67, a1, v5, 0);
      if (v72)
      {
        if (v16)
        {
          v28 = 0;
          v29 = vdupq_n_s64(v16 - 1);
          v30 = (v15 + 64);
          do
          {
            v31 = vdupq_n_s64(v28);
            v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_2727564E0)));
            if (vuzp1_s16(v32, *v29.i8).u8[0])
            {
              *(v30 - 12) = v5;
            }

            if (vuzp1_s16(v32, *&v29).i8[2])
            {
              *(v30 - 6) = v5;
            }

            if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_2727564D0)))).i32[1])
            {
              *v30 = v5;
              v30[6] = v5;
            }

            v28 += 4;
            v30 += 24;
          }

          while (((v16 + 3) & 0x1FFFFFFFCLL) != v28);
        }

        if (v24)
        {
          v33 = 0;
          v34 = v67;
          v35 = vdupq_n_s64(v24 - 1);
          v36 = v23 + 64;
          do
          {
            v37 = vdupq_n_s64(v33);
            v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_2727564E0)));
            if (vuzp1_s16(v38, *v35.i8).u8[0])
            {
              *(v36 - 12) = v34;
            }

            if (vuzp1_s16(v38, *&v35).i8[2])
            {
              *(v36 - 6) = v34;
            }

            if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_2727564D0)))).i32[1])
            {
              *v36 = v34;
              v36[6] = v34;
            }

            v33 += 4;
            v36 += 24;
          }

          while (((v24 + 3) & 0x1FFFFFFFCLL) != v33);
        }

        goto LABEL_68;
      }

      break;
    default:
LABEL_68:
      v65 = 0;
      v60 = CADSPGraphProcessPCMData();
      v61 = v65;
      if (v60)
      {
        v62 = 0;
      }

      else
      {
        v62 = v65 == 0;
      }

      if (v62)
      {
        v61 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
        v65 = v61;
      }

      v73[0] = v61;
      if (v61)
      {
        v73[0] = 0;
        v68 = 0;
        v63 = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v73);
        v67 = 0;
        v73[0] = 0;
        v65 = v61;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v63);
        v66 = 0;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v67);
        vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a5, "process", &v65);
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v65);
      }

      else
      {
        v68 = 1;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v73);
        v66 = 1;
        vp::vx::dsp::v2::detail::expect<void,CA::DSP::RealTimeError>(a5, "process", &v65);
      }

      return;
  }

  _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(a5, &v67);
  if (SHIBYTE(v70) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v71, v69, v70 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void sub_27263E230(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::dsp::v2::Graph::get_expected_output_frame_count(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if ((*(a2[3] + 32) & 0x80000000) != 0)
  {
    v8 = (*(*a2 + 48))(a2, 0);
    v34 = &v34;
    v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
    v12 = &v34 - v11;
    v13 = v9;
    if (v9)
    {
      v14 = (v9 + 3) & 0x1FFFFFFFCLL;
      v10 = vdupq_n_s64(v9 - 1);
      v15 = v12 + 8;
      v16 = 1;
      do
      {
        v17 = vdupq_n_s64(v16 - 1);
        v18 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v17, xmmword_2727564E0)));
        if (vuzp1_s16(v18, v10.n128_u64[0]).u8[0])
        {
          *(v15 - 2) = a3;
        }

        if (vuzp1_s16(v18, *&v10).i8[2])
        {
          *(v15 - 1) = a3;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(*&v10, vorrq_s8(v17, xmmword_2727564D0)))).i32[1])
        {
          *v15 = a3;
          v15[1] = a3;
        }

        v16 += 4;
        v15 += 4;
        v14 -= 4;
      }

      while (v14);
    }

    v19 = (*(*a2 + 48))(a2, 1, v10);
    MEMORY[0x28223BE20](v19);
    v21 = (&v34 - v20);
    v23 = v22;
    v24 = 4 * v22;
    if (v22)
    {
      bzero(&v34 - v20, v24);
    }

    v25 = a2[3];
    v43 = a3 | (*(v25 + 40) << 32);
    v44 = 1;
    CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v37, MEMORY[0x277CEFA30], *(v25 + 24), v12, v13, v21, v23, &v43, a4 == 1);
    v26 = v38;
    if (v38)
    {
      v27 = *v21;
      if (v23 != 1)
      {
        v30 = v21 + 1;
        v31 = v24 - 4;
        v29 = a1;
        do
        {
          v33 = *v30++;
          v32 = v33;
          if (v33 < v27)
          {
            v27 = v32;
          }

          v31 -= 4;
        }

        while (v31);
        LODWORD(v37) = v27;
        LOBYTE(v38) = 1;
        goto LABEL_23;
      }

      LODWORD(v37) = *v21;
      LOBYTE(v38) = 1;
    }

    else
    {
      v28 = v37;
      v37 = 0;
      v35 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v35);
      v36 = v26;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v37);
      v35 = 0;
      v37 = v28;
      LOBYTE(v38) = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v35);
    }

    v29 = a1;
LABEL_23:
    vp::vx::dsp::v2::detail::expect<unsigned int,CA::DSP::RealTimeError>(v29, "get expected output frame count", &v37);
    if ((v38 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v37);
    }

    return;
  }

  v37 = 0x1401600000000DLL;
  v38 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
  v40 = 0;
  v41 = 0;
  v39 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v42);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, &v37);
  if (SHIBYTE(v41) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v42, v39, v41 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::dsp::v2::Graph::get_required_input_frame_count(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if ((*(a2[3] + 32) & 0x80000000) != 0)
  {
    v8 = (*(*a2 + 48))(a2, 0);
    v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
    v11 = (&v33 - v9);
    v13 = v12;
    v14 = 4 * v12;
    if (v12)
    {
      bzero(&v33 - v9, v14);
    }

    v15 = (*(*a2 + 48))(a2, 1, v10);
    MEMORY[0x28223BE20](v15);
    v18 = &v33 - v17;
    if (v16)
    {
      v19 = (v16 + 3) & 0x1FFFFFFFCLL;
      v20 = vdupq_n_s64(v16 - 1);
      v21 = v18 + 8;
      v22 = 1;
      do
      {
        v23 = vdupq_n_s64(v22 - 1);
        v24 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_2727564E0)));
        if (vuzp1_s16(v24, *v20.i8).u8[0])
        {
          *(v21 - 2) = a3;
        }

        if (vuzp1_s16(v24, *&v20).i8[2])
        {
          *(v21 - 1) = a3;
        }

        if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_2727564D0)))).i32[1])
        {
          *v21 = a3;
          v21[1] = a3;
        }

        v22 += 4;
        v21 += 4;
        v19 -= 4;
      }

      while (v19);
    }

    v25 = a2[3];
    v42 = a3 | (*(v25 + 40) << 32);
    v43 = 1;
    CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v36, MEMORY[0x277CEFA40], *(v25 + 24), v11, v13, v18, v16, &v42, a4 == 1);
    v26 = v37;
    if (v37)
    {
      v27 = *v11;
      if (v13 != 1)
      {
        v28 = v11 + 1;
        v29 = v14 - 4;
        do
        {
          v31 = *v28++;
          v30 = v31;
          if (v27 <= v31)
          {
            v27 = v30;
          }

          v29 -= 4;
        }

        while (v29);
      }

      LODWORD(v36) = v27;
      LOBYTE(v37) = 1;
    }

    else
    {
      v32 = v36;
      v36 = 0;
      v34 = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v34);
      v35 = v26;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v36);
      v34 = 0;
      v36 = v32;
      LOBYTE(v37) = 0;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v34);
    }

    vp::vx::dsp::v2::detail::expect<unsigned int,CA::DSP::RealTimeError>(a1, "get required input frame count", &v36);
    if ((v37 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v36);
    }
  }

  else
  {
    v36 = 0x1401440000000DLL;
    v37 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
    v39 = 0;
    v40 = 0;
    v38 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v41);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, &v36);
    if (SHIBYTE(v40) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v41, v38, v40 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, const void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v16 = 0;
  v10 = a2(a3, a4, a5, a6, a7, a8, a9, &v16);
  v11 = v16;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v16 == 0;
  }

  if (v12)
  {
    v11 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v16 = v11;
  }

  v15 = v11;
  if (v11)
  {
    v13 = 0;
    v15 = 0;
    *a1 = v11;
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 8) = v13;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
}

void vp::vx::dsp::v2::detail::expect<unsigned int,CA::DSP::RealTimeError>(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a3 + 8) == 1)
  {
    *a1 = *a3;
    *(a1 + 48) = 1;
  }

  else
  {
    v18[0] = 0x17005A00000000;
    v18[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
    v20 = 0;
    v21 = 0;
    v19 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v22);
    std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](&v16);
    v15 = v18;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "failed to ", 10);
    v6 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, a2, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " with error ", 12);
    Code = CA::DSP::RealTimeError::GetCode(*a3);
    caulk::string_from_4cc(&__p, Code);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    Status = CA::DSP::RealTimeError::GetStatus(*a3);
    if (Status)
    {
      v11 = Status;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", status ", 9);
      caulk::string_from_4cc(&__p, v11);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v12, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v18);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v15);
    if (SHIBYTE(v21) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v22, v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

void vp::vx::dsp::v2::Graph::get_terminal_format(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if ((*(*a1 + 48))(a1, a3) <= a2)
  {
    *v15 = 0x14012C00000009;
    *&v15[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/dsp/v2/Graph.cpp";
    memset(&v15[16], 0, 24);
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v15[40]);
    v8 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a4, v15);
    if ((v15[39] & 0x80000000) != 0)
    {
      (*(**&v15[40] + 24))(*&v15[40], *&v15[16], *&v15[32] & 0x7FFFFFFFFFFFFFFFLL, 1, v8);
    }
  }

  else
  {
    CA::DSP::Graph::GetModel(&v10, *(a1[3] + 24));
    memset(&v15[24], 0, 44);
    if (CADSPGraphGetAudioStreamConfigurationForPort())
    {
      v6 = v15[24];
      *&v14[15] = *&v15[56];
      v13 = *&v15[25];
      *v14 = *&v15[41];
      *&v15[1] = *&v15[25];
      *&v15[17] = *&v15[41];
      *&v15[32] = *&v14[15];
      v7 = v15;
    }

    else
    {
      v6 = 0;
      v7 = v11;
    }

    v15[0] = v6;
    v9 = *(v7 + 1);
    *a4 = *v7;
    *(a4 + 16) = v9;
    *(a4 + 32) = *(v7 + 4);
    *(a4 + 48) = 1;
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v10);
  }
}

void sub_27263ED3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::Graph::GetModel(CA::DSP::Graph *this, uint64_t a2)
{
  Model = CADSPGraphGetModel();
  v4 = Model;
  if (Model)
  {
    CFRetain(Model);
  }

  v6 = 0;
  *this = v4;
  return CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v6);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t vp::vx::dsp::v2::Graph::as_property_controller(vp::vx::dsp::v2::Graph *this)
{
  return this + 16;
}

{
  return this + 16;
}

uint64_t vp::vx::dsp::v2::Graph::as_parameter_controller(vp::vx::dsp::v2::Graph *this)
{
  return this + 8;
}

{
  return this + 8;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::default_delete<vp::vx::dsp::v2::Kernel>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(v1 + 72) == 1)
    {
      vp::rpb::Connection::~Connection((v1 + 56));
    }

    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted((v1 + 24));
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<vp::vx::dsp::v2::Kernel  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void vp::vx::dsp::v2::Kernel::build(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v9 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      *&v7 = v9;
      *(&v7 + 1) = v6;
      v10 = v7;
      v8 = (*(*a2 + 16))(a2, 64, 8);
      v11 = v10;
      vp::vx::dsp::v2::Graph::Graph(v8, &v11);
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_27263F0D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t default_resource)
{
  std::unique_ptr<vp::vx::dsp::v2::Graph,vp::Allocator_Delete<vp::vx::dsp::v2::Graph>>::reset[abi:ne200100](&a11, 0);
  v14 = __cxa_begin_catch(a1);
  a11 = 0;
  default_resource = std::pmr::get_default_resource(v14);
  *(v12 + 16) = 0u;
  __cxa_end_catch();
  JUMPOUT(0x27263F070);
}

void *std::unique_ptr<vp::vx::dsp::v2::Graph,vp::Allocator_Delete<vp::vx::dsp::v2::Graph>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void vp::vx::dsp::v2::Kernel::~Kernel(vp::vx::dsp::v2::Kernel *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 72) == 1)
  {
    vp::rpb::Connection::~Connection(this + 7);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 3);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 72) == 1)
  {
    vp::rpb::Connection::~Connection(this + 7);
  }

  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(this + 3);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void vp::vx::io::Graph::~Graph(id *this)
{
  vp::vx::io::Graph::~Graph(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v34 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B7BE8;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    vp::vx::io::get_log_context_info(__p, this, "vp::vx::io::Graph]", 17);
    v3 = v29;
    v4 = v29;
    v5 = __p[1];
    v7 = vp::get_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      v9 = __p[0];
      if (v4 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v31 = v9;
      v32 = 2080;
      v33 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v4) = v29;
    }

    if ((v4 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::objc::ID::~ID(this + 35);
  vp::objc::ID::~ID(this + 34);
  vp::rpb::Connection::~Connection(this + 32);
  v11 = this[31];
  if (v11)
  {
    (*(*this[28] + 24))(this[28], this[29], 28 * v11, 4);
  }

  v12 = this[24];
  if (v12)
  {
    v13 = this[25];
    v14 = this[24];
    if (v13 != v12)
    {
      do
      {
        shared_weak_owners = v13[-1].__shared_weak_owners_;
        if (shared_weak_owners)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](shared_weak_owners);
        }

        v13 = (v13 - 16);
      }

      while (v13 != v12);
      v14 = this[24];
    }

    this[25] = v12;
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Wire>>>::deallocate[abi:ne200100](this[27], v14, (this[26] - v14) >> 4);
  }

  v16 = this[23];
  if (v16)
  {
    (*(*this[20] + 24))(this[20], this[21], 16 * v16, 4);
  }

  v17 = this[19];
  if (v17)
  {
    (*(*this[16] + 24))(this[16], this[17], 16 * v17, 4);
  }

  v18 = this[12];
  if (v18)
  {
    v19 = this[13];
    v20 = this[12];
    if (v19 != v18)
    {
      do
      {
        v21 = v19[-1].__shared_weak_owners_;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        v19 = (v19 - 16);
      }

      while (v19 != v18);
      v20 = this[12];
    }

    this[13] = v18;
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Port>>>::deallocate[abi:ne200100](this[15], v20, (this[14] - v20) >> 4);
  }

  v22 = this[8];
  if (v22)
  {
    v23 = this[9];
    v24 = this[8];
    if (v23 != v22)
    {
      do
      {
        vp::vx::io::Node_Socket::~Node_Socket(&v23[-13].__shared_owners_);
      }

      while (v23 != v22);
      v24 = this[8];
    }

    this[9] = v22;
    std::allocator_traits<vp::Allocator<vp::vx::io::Node_Socket>>::deallocate[abi:ne200100](this[11], v24, 0x86BCA1AF286BCA1BLL * ((this[10] - v24) >> 4));
  }

  v25 = this[7];
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = this[5];
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  *this = &unk_2881C6630;
  v27 = this[2];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_27263F754(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::io::Graph::get_buffered_frame_count(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (0x86BCA1AF286BCA1BLL * ((a3 - a2) >> 4) <= a4)
  {
    v12[0] = 0x10003100000006;
    v12[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v14 = 0;
    v15 = 0;
    v13 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v16);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v12);
LABEL_14:
    if (SHIBYTE(v15) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v16, v13, v15 & 0x7FFFFFFFFFFFFFFFLL);
    }

    return;
  }

  v6 = (a2 + 304 * a4);
  if (!*v6)
  {
    _os_crash();
    __break(1u);
    return;
  }

  v7 = a5;
  v8 = (*(**v6 + 48))(*v6, a5);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      vp::vx::io::Node_Socket::get_terminal_buffered_frame_count(v12, v6, v7, v10);
      if ((v17 & 1) == 0)
      {
        break;
      }

      if (LODWORD(v12[0]) < v11)
      {
        v11 = v12[0];
      }

      if (v9 == ++v10)
      {
        goto LABEL_11;
      }
    }

    _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEINSt3__110unique_ptrINS1_5GraphENS7_14default_deleteIS9_EEEEEEv(a1, v12);
    goto LABEL_14;
  }

  v11 = -1;
LABEL_11:
  *a1 = v11;
  *(a1 + 48) = 1;
}

void vp::vx::io::Graph::get_format(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= ((a3 - a2) >> 4))
  {
    v5[0] = 0x10005400000007;
    v5[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v7 = 0;
    v8 = 0;
    v6 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v9);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v5);
    if (SHIBYTE(v8) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v9, v6, v8 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    (*(**(a2 + 16 * a4) + 48))(*(a2 + 16 * a4));
    *(a1 + 48) = 1;
  }
}

void vp::vx::io::Graph::get_required_input_frame_count(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (0x86BCA1AF286BCA1BLL * ((a3 - a2) >> 4) > a4)
  {
    v7 = (a2 + 304 * a4);
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (*(*v9 + 40))(v9);
    v11 = 1;
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
LABEL_17:
          if (!v8)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v13 = (*(*v9 + 32))(v9);
        if (v13 && a5 % v13)
        {
          LODWORD(a5) = v13 + a5 - a5 % v13;
        }
      }

      v11 = 0;
      *a1 = a5;
LABEL_16:
      *(a1 + 48) = 1;
      goto LABEL_17;
    }

    if (v10 == 2)
    {
      if (!a5)
      {
        v11 = 0;
        *a1 = 0;
        goto LABEL_16;
      }

      (*(*v9 + 64))(v9, a5);
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_17;
      }

      v15 = 0x1C006D0000000DLL;
      v16 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
      v18 = 0;
      v19 = 0;
      v17 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
      v12 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, &v15);
      if (SHIBYTE(v19) < 0)
      {
        (*(*v20 + 24))(v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL, 1, v12);
      }
    }

    v11 = 0;
    if (!v8)
    {
LABEL_19:
      if (!v11)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    goto LABEL_19;
  }

LABEL_20:
  v15 = 0x10007000000006;
  v16 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
  v18 = 0;
  v19 = 0;
  v17 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
  v14 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, &v15);
  if (SHIBYTE(v19) < 0)
  {
    (*(*v20 + 24))(v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL, 1, v14);
  }
}

{
  if (a4 >= ((a3 - a2) >> 4))
  {
    v6[0] = 0x10007900000008;
    v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v8 = 0;
    v9 = 0;
    v7 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v6);
    if (SHIBYTE(v9) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    *a1 = (*(**(a2 + 16 * a4) + 16))(*(a2 + 16 * a4), a5);
    *(a1 + 48) = 1;
  }
}

double vp::vx::io::Graph::copy_input(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioBufferList *a5, const AudioTimeStamp *a6, uint64_t a7)
{
  if (a4 >= ((a3 - a2) >> 4))
  {
    v15 = 0x10009500000007;
LABEL_9:
    v16[0] = v15;
    v16[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
    *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
    goto LABEL_10;
  }

  v11 = (*(**(a2 + 16 * a4) + 64))(*(a2 + 16 * a4));
  if (!v11)
  {
    v15 = 0x1400930000000DLL;
    goto LABEL_9;
  }

  v12 = v11;
  vp::vx::io::validate_nonnull(v16, a5, a6, a7);
  if (v21)
  {
    v13 = *(*v12 + 96);

    v13(v12, a5, a6, a7);
    return result;
  }

  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
  if (v21)
  {
    return result;
  }

LABEL_10:
  if (SHIBYTE(v19) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

double vp::vx::io::Graph::copy_output(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioBufferList *a5, const AudioTimeStamp *a6, uint64_t a7)
{
  if (a4 >= ((a3 - a2) >> 4))
  {
    v15 = 0x1000CD00000007;
LABEL_9:
    v16[0] = v15;
    v16[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
    *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
    goto LABEL_10;
  }

  v11 = (*(**(a2 + 16 * a4) + 72))(*(a2 + 16 * a4));
  if (!v11)
  {
    v15 = 0x1400CB0000000DLL;
    goto LABEL_9;
  }

  v12 = v11;
  vp::vx::io::validate_nonnull(v16, a5, a6, a7);
  if (v21)
  {
    v13 = *(*v12 + 96);

    v13(v12, a5, a6, a7);
    return result;
  }

  *&result = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v16).n128_u64[0];
  if (v21)
  {
    return result;
  }

LABEL_10:
  if (SHIBYTE(v19) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

_BYTE *vp::vx::io::Graph::notify(_BYTE *result, void *a2, void *a3, uint64_t a4)
{
  v4 = result;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      v8 = v7[5];
      v9 = v7[6];
      while (v8 != v9)
      {
        v10 = *v8;
        v8 += 2;
        result = (*(*v10 + 16))(v10, a4, *v7);
      }

      v7 += 38;
    }

    while (v7 != a3);
  }

  *v4 = 0;
  v4[48] = 1;
  return result;
}

void vp::vx::io::Graph::process(_BYTE *a1, void *a2, unsigned int a3, unsigned int a4)
{
  v5 = a2[8];
  if (0x86BCA1AF286BCA1BLL * ((a2[9] - v5) >> 4) > a3)
  {
    if (!a4)
    {
LABEL_61:
      *a1 = 0;
      a1[48] = 1;
      return;
    }

    v8 = (v5 + 304 * a3);
    v9 = a2[5];
    if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
    {
      v41 = v10;
      v11 = a2[4];
      if (v11)
      {
        v12 = (***v8)();
        if (!v12 || (v13 = v8[26], v14 = v8[27], v13 == v14))
        {
LABEL_18:
          LOBYTE(v42[0]) = 0;
          v46 = 1;
        }

        else
        {
          v15 = v12;
          while (1)
          {
            v16 = *v13;
            if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v11, *v13))
            {
              v17 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v11, v16);
              if (v17)
              {
                (*(*v15 + 32))(v47, v15, v16, *(v17 + 5));
              }

              else
              {
                v58 = 0x1300410000000ALL;
                v59 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Parameter_Exchange.cpp";
                v61 = 0;
                v62 = 0;
                v60 = 0;
                vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v63);
                vp::vx::io::operator<<<char const(&)[47]>(v52, &v58, "parameter exchange does not support parameter ");
                MEMORY[0x2743CBB40](&v54, v16);
                vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v52);
                _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, &v58);
                if (SHIBYTE(v62) < 0)
                {
                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v63[0], v60, v62 & 0x7FFFFFFFFFFFFFFFLL);
                }
              }

              if ((v51 & 1) == 0)
              {
                break;
              }
            }

            if (++v13 == v14)
            {
              goto LABEL_18;
            }
          }

          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v42, v47);
          if ((v51 & 1) == 0 && SHIBYTE(v49) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v50, v48, v49 & 0x7FFFFFFFFFFFFFFFLL);
          }

          if ((v46 & 1) == 0)
          {
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v42);
            if ((v46 & 1) == 0 && SHIBYTE(v44) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v45, v43, v44 & 0x7FFFFFFFFFFFFFFFLL);
            }

            v28 = 1;
            v39 = v41;
LABEL_59:
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
LABEL_60:
            if (v28)
            {
              return;
            }

            goto LABEL_61;
          }
        }

        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v41 = 0;
      v11 = 0;
    }

    v19 = a2[7];
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        v40 = a1;
        v21 = a2[6];
        if (v21)
        {
          v22 = (*(**v8 + 16))();
          if (!v22 || (v23 = v8[32], v24 = v8[33], v23 == v24))
          {
LABEL_34:
            LOBYTE(v42[0]) = 0;
            v46 = 1;
            a1 = v40;
          }

          else
          {
            v25 = v22;
            while (1)
            {
              v26 = *v23;
              if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v21, *v23))
              {
                v27 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v21, v26);
                if (v27)
                {
                  vp::Blob::Blob(v52, v27[3], v27[7]);
                  (*(*v25 + 40))(v47, v25, v26, v52);
                }

                else
                {
                  v58 = 0x1300480000000ALL;
                  v59 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
                  v61 = 0;
                  v62 = 0;
                  v60 = 0;
                  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v63);
                  vp::vx::io::operator<<<char const(&)[45]>(v52, &v58, "property exchange does not support property ");
                  MEMORY[0x2743CBB40](&v54, v26);
                  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v52);
                  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, &v58);
                  if (SHIBYTE(v62) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v63[0], v60, v62 & 0x7FFFFFFFFFFFFFFFLL);
                  }
                }

                if ((v51 & 1) == 0)
                {
                  break;
                }
              }

              if (++v23 == v24)
              {
                goto LABEL_34;
              }
            }

            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v42, v47);
            if ((v51 & 1) == 0 && SHIBYTE(v49) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v50, v48, v49 & 0x7FFFFFFFFFFFFFFFLL);
            }

            a1 = v40;
            if ((v46 & 1) == 0)
            {
              _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v40, v42);
              if ((v46 & 1) == 0 && SHIBYTE(v44) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v45, v43, v44 & 0x7FFFFFFFFFFFFFFFLL);
              }

              v28 = 1;
              a1 = v40;
              v39 = v41;
              goto LABEL_57;
            }
          }

          v28 = 1;
        }

        else
        {
          v28 = 0;
        }

LABEL_39:
        vp::vx::io::Node_Socket::process(v52, v8, a4);
        if ((v57 & 1) == 0)
        {
          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v52);
          if ((v57 & 1) == 0 && SHIBYTE(v55) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v28 = 1;
LABEL_98:
          v39 = v41;
          if (!v20)
          {
LABEL_58:
            if (!v39)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

LABEL_57:
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          goto LABEL_58;
        }

        if (v18)
        {
          v29 = (***v8)();
          if (!v29 || (v30 = v8[29], v31 = v8[30], v30 == v31))
          {
LABEL_47:
            LOBYTE(v47[0]) = 0;
            v51 = 1;
          }

          else
          {
            v32 = v29;
            while (1)
            {
              v33 = *v30;
              if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v11, *v30))
              {
                vp::vx::io::Parameter_Exchange::get_parameter(v52, v11, v33, v32);
                if ((v57 & 1) == 0)
                {
                  break;
                }
              }

              if (++v30 == v31)
              {
                goto LABEL_47;
              }
            }

            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, v52);
            if ((v57 & 1) == 0 && SHIBYTE(v55) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
            }

            if ((v51 & 1) == 0)
            {
              goto LABEL_72;
            }
          }
        }

        if (!v28)
        {
          goto LABEL_98;
        }

        v34 = (*(**v8 + 16))();
        if (!v34 || (v35 = v8[35], v36 = v8[36], v35 == v36))
        {
LABEL_55:
          LOBYTE(v47[0]) = 0;
          v51 = 1;
          v39 = v41;
        }

        else
        {
          v37 = v34;
          while (1)
          {
            v38 = *v35;
            if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v21, *v35))
            {
              vp::vx::io::Property_Exchange::get_property(v52, v21, v38, v37);
              if ((v57 & 1) == 0)
              {
                break;
              }
            }

            if (++v35 == v36)
            {
              goto LABEL_55;
            }
          }

          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v47, v52);
          if ((v57 & 1) == 0 && SHIBYTE(v55) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v39 = v41;
          if ((v51 & 1) == 0)
          {
LABEL_72:
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v47);
            if ((v51 & 1) == 0 && SHIBYTE(v49) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v50, v48, v49 & 0x7FFFFFFFFFFFFFFFLL);
            }

            v28 = 1;
            goto LABEL_98;
          }
        }

        v28 = 0;
        if (!v20)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v28 = 0;
    }

    else
    {
      v28 = 0;
      v20 = 0;
    }

    v21 = 0;
    goto LABEL_39;
  }

  v52[0] = 0x10010300000006;
  v52[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
  v54 = 0;
  v55 = 0;
  v53 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v56);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v52);
  if (SHIBYTE(v55) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v56, v53, v55 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::Graph::reset(vp::vx::io::Graph *this, void *a2)
{
  v4 = a2[8];
  v5 = a2[9];
  while (v4 != v5)
  {
    vp::vx::io::Node_Socket::reset(v8, v4);
    if ((v11 & 1) == 0)
    {
LABEL_11:
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v8);
      if ((v11 & 1) == 0 && SHIBYTE(v9) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v10, v8[2], v9 & 0x7FFFFFFFFFFFFFFFLL);
      }

      return;
    }

    v4 += 304;
  }

  v7 = a2[12];
  v6 = a2[13];
  while (v7 != v6)
  {
    (*(**v7 + 88))(v8);
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

    v7 += 16;
  }

  *this = 0;
  *(this + 48) = 1;
}

void vp::vx::io::Graph::reset(vp::vx::io::Node_Socket *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (0x86BCA1AF286BCA1BLL * ((a3 - a2) >> 4) <= a4)
  {
    v6[0] = 0x10011B00000006;
    v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
    v8 = 0;
    v9 = 0;
    v7 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(this, v6);
    if (SHIBYTE(v9) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v5 = a2 + 304 * a4;

    vp::vx::io::Node_Socket::reset(this, v5);
  }
}

void vp::vx::io::Graph::connect(_BYTE *a1, id *a2, id *a3)
{
  v258 = a3;
  v252 = a1;
  v303[5] = *MEMORY[0x277D85DE8];
  caulk::autorelease_pool::autorelease_pool(&v291);
  vp::rpb::Server::get_shared_instance(&v290);
  if (!v290)
  {
    v293.__r_.__value_.__r.__words[0] = 0;
    memset(v303, 0, 32);
    v301 = 0u;
    v302 = 0u;
    v300 = 0u;
    v237 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v238 = 3;
    }

    else
    {
      v238 = 2;
    }

    LODWORD(v296) = 134217984;
    *(&v296 + 4) = 0;
    v244 = 12;
    _os_log_send_and_compose_impl(v238, &v293, &v300, 80, &dword_2724B4000, v237, 16, "assertion failure: server.is_valid() -> %llu", &v296);
    _os_crash_msg();
    __break(1u);
LABEL_343:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = a2[12];
  if (a2[13] == v4)
  {
    v254 = 0;
    v251 = &v245;
    v259 = v292;
    v260 = v292;
    v261 = 0;
    v249 = 1;
    v250 = 1;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v261 = 0;
    v7 = 1;
    do
    {
      v8 = &v4[16 * v5];
      v9 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = (*(*v9 + 40))(v9);
      if (v11)
      {
        v12 = v261;
      }

      else
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = (v12 + 1);
      }

      else
      {
        v13 = v261;
      }

      v261 = v13;
      if (v11)
      {
        v6 = v6;
      }

      else
      {
        v6 = (v12 + 1);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v5 = v7;
      v4 = a2[12];
      ++v7;
    }

    while (v5 < (a2[13] - v4) >> 4);
    MEMORY[0x28223BE20](v11);
    v15 = &v245 - v14;
    v250 = v6 == 0;
    v260 = (&v245 - v14);
    if (v6)
    {
      bzero(v15, 8 * v6);
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x28223BE20](v15);
    v254 = v6;
    v251 = &v245;
    v259 = (&v245 - v16);
    if (v17)
    {
      bzero(&v245 - v16, 8 * v17);
      v249 = 0;
    }

    else
    {
      v261 = 0;
      v249 = 1;
    }
  }

  v18 = a2[12];
  if (a2[13] != v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = &v18[16 * v19];
      v24 = *v23;
      v25 = v23[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v24 + 48))(&v300, v24);
      vp::rpb::Terminal::Terminal(&v296, &v300);
      v26 = (*(*v24 + 40))(v24);
      if (v26)
      {
        v27 = v21;
      }

      else
      {
        v27 = v20;
      }

      v28 = v260;
      if (v26)
      {
        v28 = v259;
        v21 = v27 + 1;
      }

      else
      {
        v20 = v27 + 1;
      }

      vp::objc::ID::operator=(&v28[v27], &v296);
      vp::objc::ID::~ID(&v296);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v19 = v22;
      v18 = a2[12];
      ++v22;
    }

    while (v19 < (a2[13] - v18) >> 4);
  }

  v29 = a2[1];
  v30 = a2[2];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = v29[23];
  if ((v31 & 0x80u) == 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = *v29;
  }

  if (v32)
  {
    v33 = *(v29 + 1);
    if ((v31 & 0x80u) == 0)
    {
      v34 = v31;
    }

    else
    {
      v34 = v33;
    }

    v35 = CFStringCreateWithBytes(0, v32, v34, 0x8000100u, 0);
    v288 = v35;
    if (!v35)
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v36, "Could not construct");
    }
  }

  else
  {
    v35 = 0;
    v288 = 0;
  }

  v37 = objc_alloc(MEMORY[0x277D46110]);
  v38 = v35;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v300, v260, v254);
  v39 = v300;
  vp::rpb::Array<vp::rpb::Terminal>::Array(&v296, v259, v261);
  v40 = v296;
  v289 = [v37 initWithName:v38 inputs:v39 outputs:v40];

  vp::objc::ID::~ID(&v296);
  vp::objc::ID::~ID(&v300);

  if (v38)
  {
    CFRelease(v38);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v247 = 0x86BCA1AF286BCA1BLL * ((a2[9] - a2[8]) >> 4);
  MEMORY[0x28223BE20](v41);
  v248 = v43;
  v253 = v44;
  v263 = (&v245 - v45);
  v268 = a2;
  if (v43 == v44)
  {
LABEL_136:
    if (a2[25] != a2[24])
    {
      v102 = 0;
      v103 = 0;
      do
      {
        v104 = boost::container::flat_map<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<std::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_subscript((a2 + 28), v103);
        vp::rpb::Wire::Wire(&v300, &v263[*v104], v104[2], &v263[v104[3]], v104[5]);
        v105 = *(a2[24] + 2 * v102);
        v106 = v105 + *(*v105 - 24);
        v107 = *(v106 + 1);
        v108 = *(v106 + 2);
        if (v108)
        {
          atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v109 = *(v107 + 23);
        if ((v109 & 0x80u) == 0)
        {
          v110 = v107;
        }

        else
        {
          v110 = *v107;
        }

        if (v110)
        {
          v111 = *(v107 + 8);
          if ((v109 & 0x80u) == 0)
          {
            v112 = v109;
          }

          else
          {
            v112 = v111;
          }

          v113 = CFStringCreateWithBytes(0, v110, v112, 0x8000100u, 0);
          v285 = v113;
          if (!v113)
          {
            v241 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v241, "Could not construct");
          }
        }

        else
        {
          v113 = 0;
          v285 = 0;
        }

        v114 = v300;
        v115 = v113;
        [v114 setName:v115];

        if (v115)
        {
          CFRelease(v115);
        }

        if (v108)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v108);
        }

        vp::rpb::Host::add_wire(v289, &v300);
        vp::objc::ID::~ID(&v300);
        v102 = (v103 + 1);
        v103 = v102;
      }

      while (v102 < (a2[25] - a2[24]) >> 4);
    }

    vp::rpb::Host::new_delegate(&v287);
    v116 = objc_alloc_init(RPBItem_Delegate);
    v284 = v116;

    v117 = a2[5];
    if (v117)
    {
      v118 = std::__shared_weak_count::lock(v117);
      if (v118)
      {
        v246 = v118;
        v119 = a2[4];
        if (v119)
        {
          v256 = &v301 + 8;
          v300 = 0uLL;
          *&v301 = 0;
          default_resource = std::pmr::get_default_resource(v118);
          v245 = &v302;
          v255 = &v303[1];
          *(&v301 + 1) = default_resource;
          v302 = 0uLL;
          v303[0] = 0;
          v121 = std::pmr::get_default_resource(default_resource);
          v122 = 0;
          v303[1] = v121;
          v299 = 0x100000000;
          v123 = a2[8];
          v124 = a2[9];
          v267 = v119;
          while (1)
          {
            if (v124 == v123)
            {
              v124 = v123;
            }

            else
            {
              v125 = 0;
              v126 = 0;
              v257 = v122;
              v127 = *(&v299 + v122);
              v271 = 32 * (v127 != 0);
              v128 = 40;
              if (!v127)
              {
                v128 = 8;
              }

              v272 = v128;
              v129 = 24;
              if (v127)
              {
                v130 = 24;
              }

              else
              {
                v130 = 0;
              }

              v262 = v130;
              if (v127)
              {
                v129 = 56;
              }

              v265 = v129;
              v131 = v256;
              if (v127)
              {
                v131 = v255;
              }

              v266 = v131;
              do
              {
                LODWORD(v264) = v126;
                v132 = &v123[304 * v125 + v262];
                v133 = *(v132 + 26);
                *&v270 = *(v132 + 27);
                if (v270 != v133)
                {
                  v269 = &v263[v125];
                  do
                  {
                    v134 = *v133;
                    if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v119, *v133))
                    {
                      v135 = *(&v300 + v271);
                      v136 = *(&v300 + v272);
                      if (v135 == v136)
                      {
                        goto LABEL_177;
                      }

                      v137 = 1;
                      do
                      {
                        v138 = *v135;
                        v135 += 8;
                        v137 &= v138 != v134;
                      }

                      while (v135 != v136);
                      if (v137)
                      {
LABEL_177:
                        *(&v296 + 1) = 0;
                        *&v297 = 0;
                        WORD4(v297) = 0;
                        LODWORD(v296) = v134;
                        caulk::string_from_4cc(&v293, v134);
                        if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v139 = &v293;
                        }

                        else
                        {
                          v139 = v293.__r_.__value_.__r.__words[0];
                        }

                        if (v139)
                        {
                          if ((v293.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            size = HIBYTE(v293.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            size = v293.__r_.__value_.__l.__size_;
                          }

                          v141 = CFStringCreateWithBytes(0, v139, size, 0x8000100u, 0);
                          v283 = v141;
                          if (!v141)
                          {
                            goto LABEL_343;
                          }
                        }

                        else
                        {
                          v141 = 0;
                        }

                        *(&v296 + 1) = v141;
                        v283 = 0;
                        if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v293.__r_.__value_.__l.__data_);
                        }

                        BYTE8(v297) = 1;
                        v142 = v272;
                        v143 = *(&v300 + v272);
                        v144 = &v301;
                        if (v127)
                        {
                          v144 = v303;
                        }

                        v145 = *v144;
                        if (v143 >= v145)
                        {
                          v146 = *(&v300 + v271);
                          v147 = (v143 - v146) >> 5;
                          if ((v147 + 1) >> 59)
                          {
                            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                          }

                          v148 = v145 - v146;
                          v149 = v148 >> 4;
                          if (v148 >> 4 <= (v147 + 1))
                          {
                            v149 = v147 + 1;
                          }

                          if (v148 >= 0x7FFFFFFFFFFFFFE0)
                          {
                            v150 = 0x7FFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v150 = v149;
                          }

                          if (v150)
                          {
                            v151 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](v266, v150);
                          }

                          else
                          {
                            v151 = 0;
                          }

                          v152 = (v151 + 32 * v147);
                          std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::construct[abi:ne200100]<vp::rpb::Parameter_Info,vp::rpb::Parameter_Info const&,0>(v152, &v296);
                          v153 = *(&v300 + v272);
                          v154 = *(&v300 + v271);
                          v155 = v152 + v154 - v153;
                          if (v153 != v154)
                          {
                            v156 = *(&v300 + v271);
                            v157 = v152 + v154 - v153;
                            do
                            {
                              *v157 = *v156;
                              *(v157 + 1) = *(v156 + 8);
                              *(v156 + 8) = 0;
                              *(v157 + 2) = *(v156 + 16);
                              *(v156 + 16) = 0;
                              *(v157 + 12) = *(v156 + 24);
                              v156 += 32;
                              v157 += 32;
                            }

                            while (v156 != v153);
                            do
                            {
                              std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(v154);
                              v154 += 32;
                            }

                            while (v154 != v153);
                          }

                          v158 = v151 + 32 * v150;
                          v159 = v152 + 8;
                          *&v160 = v152 + 8;
                          *(&v160 + 1) = v158;
                          v161 = *(&v300 + v271);
                          *(&v300 + v271) = v155;
                          v162 = &v301;
                          if (v127)
                          {
                            v162 = v303;
                          }

                          *&v163 = v161;
                          *(&v163 + 1) = *v162;
                          *(&v300 + v272) = v160;
                          v119 = v267;
                          a2 = v268;
                          while (v163 != v161)
                          {
                            *&v163 = v163 - 32;
                            v273 = v163;
                            std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(v163);
                            v163 = v273;
                          }

                          if (v161)
                          {
                            std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::deallocate[abi:ne200100](*(&v300 + v265), v161, (*(&v163 + 1) - v161) >> 5);
                          }

                          v164 = v297;
                          *(&v300 + v272) = v159;
                          if (v164)
                          {
                            CFRelease(v164);
                          }
                        }

                        else
                        {
                          std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::construct[abi:ne200100]<vp::rpb::Parameter_Info,vp::rpb::Parameter_Info const&,0>(*(&v300 + v272), &v296);
                          *(&v300 + v142) = v143 + 32;
                        }

                        if (*(&v296 + 1))
                        {
                          CFRelease(*(&v296 + 1));
                        }
                      }
                    }

                    if (v127 == 1)
                    {
                      LODWORD(v296) = v134;
                      *(&v296 + 4) = 2;
                      LODWORD(v293.__r_.__value_.__l.__data_) = v134;
                      *(v293.__r_.__value_.__r.__words + 4) = 2;
                      vp::rpb::Host::add_parameter_wire(v289, v269, &v296, &v293);
                    }

                    else if (!v127)
                    {
                      LODWORD(v296) = v134;
                      *(&v296 + 4) = 1;
                      LODWORD(v293.__r_.__value_.__l.__data_) = v134;
                      *(v293.__r_.__value_.__r.__words + 4) = 1;
                      vp::rpb::Host::add_parameter_wire(v289, &v296, v269, &v293);
                    }

                    ++v133;
                  }

                  while (v133 != v270);
                }

                v125 = (v264 + 1);
                v123 = a2[8];
                v124 = a2[9];
                v126 = v264 + 1;
              }

              while (0x86BCA1AF286BCA1BLL * ((v124 - v123) >> 4) > v125);
              v122 = v257;
            }

            v122 += 4;
            if (v122 == 8)
            {
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>>::Direction_Pair(&v296, &v300);
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>>::Direction_Pair(&v282, &v296);
              v295 = 0;
              operator new();
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v246);
      }
    }

    v165 = a2[7];
    if (v165)
    {
      v166 = std::__shared_weak_count::lock(v165);
      if (v166)
      {
        v262 = v166;
        *&v273 = a2[6];
        if (v273)
        {
          v265 = &v301 + 8;
          v300 = 0uLL;
          *&v301 = 0;
          v167 = std::pmr::get_default_resource(v166);
          v257 = &v302;
          v264 = &v303[1];
          *(&v301 + 1) = v167;
          v302 = 0uLL;
          v303[0] = 0;
          v168 = std::pmr::get_default_resource(v167);
          v169 = 0;
          v303[1] = v168;
          v299 = 0x100000000;
          v170 = a2[8];
          v171 = a2[9];
          while (1)
          {
            if (v171 == v170)
            {
              v171 = v170;
            }

            else
            {
              v172 = 0;
              v173 = 0;
              v266 = v169;
              v174 = *(&v299 + v169);
              if (v174)
              {
                v175 = 40;
              }

              else
              {
                v175 = 8;
              }

              v176 = 24;
              if (!v174)
              {
                v176 = 0;
              }

              v267 = v176;
              v177 = v265;
              if (v174)
              {
                v177 = v264;
              }

              v271 = v177;
              do
              {
                LODWORD(v269) = v173;
                v178 = &v170[304 * v172 + v267];
                v180 = *(v178 + 32);
                v179 = *(v178 + 33);
                if (v179 != v180)
                {
                  v272 = &v263[v172];
                  do
                  {
                    v181 = *v180;
                    if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v273, *v180))
                    {
                      v182 = *(&v300 + 4 * (v174 != 0));
                      v183 = *(&v300 + v175);
                      if (v182 == v183)
                      {
                        goto LABEL_248;
                      }

                      v184 = 1;
                      do
                      {
                        v185 = *v182;
                        v182 += 8;
                        v184 &= v185 != v181;
                      }

                      while (v182 != v183);
                      if (v184)
                      {
LABEL_248:
                        *&v293.__r_.__value_.__r.__words[1] = 0uLL;
                        v294 = 0;
                        LODWORD(v293.__r_.__value_.__l.__data_) = v181;
                        caulk::string_from_4cc(&v296, v181);
                        if ((SBYTE7(v297) & 0x80u) == 0)
                        {
                          v186 = &v296;
                        }

                        else
                        {
                          v186 = v296;
                        }

                        if (v186)
                        {
                          if ((SBYTE7(v297) & 0x80u) == 0)
                          {
                            v187 = BYTE7(v297);
                          }

                          else
                          {
                            v187 = *(&v296 + 1);
                          }

                          v188 = CFStringCreateWithBytes(0, v186, v187, 0x8000100u, 0);
                          v283 = v188;
                          if (!v188)
                          {
                            v240 = __cxa_allocate_exception(0x10uLL);
                            std::runtime_error::runtime_error(v240, "Could not construct");
                          }
                        }

                        else
                        {
                          v188 = 0;
                        }

                        v293.__r_.__value_.__l.__size_ = v188;
                        v283 = 0;
                        if (SBYTE7(v297) < 0)
                        {
                          operator delete(v296);
                        }

                        LOBYTE(v294) = 1;
                        v189 = *(&v300 + v175);
                        v190 = &v301;
                        if (v174)
                        {
                          v190 = v303;
                        }

                        v191 = *v190;
                        if (v189 >= v191)
                        {
                          v192 = *(&v300 + 4 * (v174 != 0));
                          v193 = (v189 - v192) >> 5;
                          if ((v193 + 1) >> 59)
                          {
                            std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                          }

                          v194 = v191 - v192;
                          v195 = v194 >> 4;
                          if (v194 >> 4 <= (v193 + 1))
                          {
                            v195 = v193 + 1;
                          }

                          if (v194 >= 0x7FFFFFFFFFFFFFE0)
                          {
                            v196 = 0x7FFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v196 = v195;
                          }

                          v298 = v271;
                          if (v196)
                          {
                            v197 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](v271, v196);
                          }

                          else
                          {
                            v197 = 0;
                          }

                          *&v296 = v197;
                          *(&v296 + 1) = v197 + 32 * v193;
                          *&v297 = *(&v296 + 1);
                          *(&v297 + 1) = v197 + 32 * v196;
                          std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::construct[abi:ne200100]<vp::rpb::Property_Info,vp::rpb::Property_Info const&,0>(*(&v296 + 1), &v293);
                          *&v297 = v297 + 32;
                          v198 = *(&v300 + v175);
                          v199 = *(&v300 + 4 * (v174 != 0));
                          v200 = *(&v296 + 1) + v199 - v198;
                          std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::rpb::Property_Info>,vp::rpb::Property_Info*>(v271, v199, v198, v200);
                          v201 = *(&v300 + 4 * (v174 != 0));
                          *(&v300 + 4 * (v174 != 0)) = v200;
                          *(&v296 + 1) = v201;
                          v202 = &v301;
                          if (v174)
                          {
                            v202 = v303;
                          }

                          v203 = *v202;
                          v270 = v297;
                          *(&v300 + v175) = v297;
                          *(&v297 + 1) = v203;
                          *&v297 = v201;
                          *&v296 = v201;
                          std::__split_buffer<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info> &>::~__split_buffer(&v296);
                          v204 = v293.__r_.__value_.__r.__words[2];
                          *(&v300 + v175) = v270;
                          if (v204)
                          {
                            CFRelease(v204);
                          }
                        }

                        else
                        {
                          std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::construct[abi:ne200100]<vp::rpb::Property_Info,vp::rpb::Property_Info const&,0>(*(&v300 + v175), &v293);
                          *(&v300 + v175) = v189 + 32;
                        }

                        if (v293.__r_.__value_.__l.__size_)
                        {
                          CFRelease(v293.__r_.__value_.__l.__size_);
                        }
                      }
                    }

                    if (v174 == 1)
                    {
                      LODWORD(v296) = v181;
                      *(&v296 + 4) = 2;
                      LODWORD(v293.__r_.__value_.__l.__data_) = v181;
                      *(v293.__r_.__value_.__r.__words + 4) = 2;
                      vp::rpb::Host::add_property_wire(v289, v272, &v296, &v293);
                    }

                    else if (!v174)
                    {
                      LODWORD(v296) = v181;
                      *(&v296 + 4) = 1;
                      LODWORD(v293.__r_.__value_.__l.__data_) = v181;
                      *(v293.__r_.__value_.__r.__words + 4) = 1;
                      vp::rpb::Host::add_property_wire(v289, &v296, v272, &v293);
                    }

                    ++v180;
                  }

                  while (v180 != v179);
                }

                v172 = (v269 + 1);
                v170 = v268[8];
                v171 = v268[9];
                v173 = v269 + 1;
              }

              while (0x86BCA1AF286BCA1BLL * ((v171 - v170) >> 4) > v172);
              v169 = v266;
            }

            v169 = (v169 + 4);
            if (v169 == 8)
            {
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>>::Direction_Pair(&v296, &v300);
              vp::vx::io::Direction_Pair<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>>::Direction_Pair(&v281, &v296);
              v292[16] = 0;
              operator new();
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v262);
      }
    }

    v280 = v287;
    vp::rpb::Host::set_delegate(v289, &v280);
    vp::objc::ID::~ID(&v280);
    v279 = v116;
    v205 = *v258;
    v206 = v279;
    [v205 setDelegate:v206];

    vp::objc::ID::~ID(&v279);
    v207 = v290;
    vp::rpb::Server::add_host(v290, &v289, v258);
    v208 = a2[8];
    if (a2[9] != v208)
    {
      v209 = 0;
      v210 = 1;
      do
      {
        v211 = 304 * v209;
        v278 = v263[v209];
        v212 = *&v208[v211];
        *&v296 = v278;
        (*(*v212 + 96))(&v300, v212, &v296);
        vp::objc::ID::~ID(&v296);
        if ((v303[0] & 1) == 0 && SBYTE7(v302) < 0)
        {
          (*(**(&v302 + 1) + 24))(*(&v302 + 1), v301, v302 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        vp::objc::ID::~ID(&v278);
        v209 = v210;
        v208 = a2[8];
      }

      while (0x86BCA1AF286BCA1BLL * ((a2[9] - v208) >> 4) > v210++);
    }

    v214 = a2[24];
    if (a2[25] == v214)
    {
LABEL_325:
      v275 = v207;
      v274 = v289;
      vp::rpb::Connection::Connection(&v300, &v275, &v274);
      vp::objc::ID::operator=(a2 + 32, &v300);
      vp::objc::ID::operator=(a2 + 33, &v300 + 1);
      vp::rpb::Connection::~Connection(&v300);
      vp::objc::ID::~ID(&v274);
      vp::objc::ID::~ID(&v275);
      vp::objc::ID::operator=(a2 + 34, &v287);
      vp::objc::ID::operator=(a2 + 35, &v284);
      v227 = v252;
      *v252 = 0;
      v227[48] = 1;
      vp::objc::ID::~ID(&v284);
      vp::objc::ID::~ID(&v287);
      goto LABEL_326;
    }

    v215 = 0;
    v216 = 1;
    while (1)
    {
      v217 = 16 * v215;
      v218 = v214[2 * v215] + *(*v214[2 * v215] - 24);
      v219 = *(v218 + 8);
      v220 = *(v218 + 16);
      if (v220)
      {
        atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v221 = *(v219 + 23);
      if ((v221 & 0x80u) == 0)
      {
        v222 = v219;
      }

      else
      {
        v222 = *v219;
      }

      if (v222)
      {
        v223 = *(v219 + 8);
        if ((v221 & 0x80u) == 0)
        {
          v224 = v221;
        }

        else
        {
          v224 = v223;
        }

        v225 = CFStringCreateWithBytes(0, v222, v224, 0x8000100u, 0);
        *&v296 = v225;
        if (!v225)
        {
          v242 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v242, "Could not construct");
        }

        if (!v220)
        {
          goto LABEL_310;
        }
      }

      else
      {
        v225 = 0;
        *&v296 = 0;
        if (!v220)
        {
          goto LABEL_310;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v220);
LABEL_310:
      vp::rpb::Item::get_sub_host(&v300, *v258);
      if (v225)
      {
        CFRetain(v225);
      }

      v277 = v225;
      vp::rpb::Host::find_wire_by_name(&v293, v300, &v277);
      if (v225)
      {
        CFRelease(v225);
      }

      vp::objc::ID::~ID(&v300);
      if (v293.__r_.__value_.__r.__words[0])
      {
        v226 = *(a2[24] + v217);
        v276 = v293.__r_.__value_.__l.__data_;
        (*(*v226 + 32))(&v300, v226, &v276);
        if ((v303[0] & 1) == 0 && SBYTE7(v302) < 0)
        {
          (*(**(&v302 + 1) + 24))(*(&v302 + 1), v301, v302 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        vp::objc::ID::~ID(&v276);
      }

      vp::objc::ID::~ID(&v293.__r_.__value_.__l.__data_);
      if (v225)
      {
        CFRelease(v225);
      }

      v215 = v216;
      v214 = a2[24];
      ++v216;
      if (v215 >= (a2[25] - v214) >> 4)
      {
        goto LABEL_325;
      }
    }
  }

  bzero(v263, v42);
  v46 = 0;
  LODWORD(v271) = 0;
  v47 = v253;
  while (2)
  {
    v48 = &v47[304 * v46];
    v49 = v48[1];
    *&v273 = *v48;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v266 = v49;
    v50 = (*(*v273 + 48))(v273, 0);
    v265 = &v245;
    v51 = v50;
    v53.n128_f64[0] = MEMORY[0x28223BE20](v50);
    v54 = (&v245 - v52);
    if (v55)
    {
      bzero(&v245 - v52, 8 * v51);
    }

    v255 = v46;
    v264 = v51;
    v56 = (*(*v273 + 48))(v273, 1, v53);
    v57 = v56;
    v59.n128_f64[0] = MEMORY[0x28223BE20](v56);
    v60 = (&v245 - v58);
    if (v61)
    {
      bzero(&v245 - v58, 8 * v57);
    }

    v267 = v60;
    v262 = v57;
    v62 = v273;
    v257 = (*(*v273 + 48))(v273, 0, v59);
    v63 = (*(*v62 + 48))(v62, 1);
    v64 = 0;
    v256 = v63;
    v293.__r_.__value_.__r.__words[0] = 0x100000000;
    while (1)
    {
      v269 = v64;
      v65 = *(&v293.__r_.__value_.__l.__data_ + v64);
      if ((*(*v273 + 48))(v273, v65))
      {
        break;
      }

LABEL_103:
      v64 = (v269 + 4);
      if (v269 == 4)
      {
        v81 = v273 + *(*v273 - 24);
        v82 = *(v81 + 8);
        v83 = *(v81 + 16);
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v84 = *(v82 + 23);
        if ((v84 & 0x80u) == 0)
        {
          v85 = v82;
        }

        else
        {
          v85 = *v82;
        }

        if (v85)
        {
          v86 = *(v82 + 8);
          if ((v84 & 0x80u) == 0)
          {
            v87 = v84;
          }

          else
          {
            v87 = v86;
          }

          v88 = CFStringCreateWithBytes(0, v85, v87, 0x8000100u, 0);
          v286 = v88;
          if (!v88)
          {
            v243 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v243, "Could not construct");
          }
        }

        else
        {
          v88 = 0;
          v286 = 0;
        }

        v89 = objc_alloc(MEMORY[0x277D46118]);
        v90 = v88;
        vp::rpb::Array<vp::rpb::Terminal>::Array(&v300, v54, v257);
        v91 = v300;
        vp::rpb::Array<vp::rpb::Terminal>::Array(&v296, v267, v256);
        v92 = v296;
        v293.__r_.__value_.__r.__words[0] = [v89 initWithName:v90 inputs:v91 outputs:v92];

        vp::objc::ID::~ID(&v296);
        vp::objc::ID::~ID(&v300);

        if (v90)
        {
          CFRelease(v90);
        }

        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        vp::objc::ID::operator=(&v263[v255], &v293.__r_.__value_.__l.__data_);
        vp::rpb::Host::add_item(v289, &v293.__r_.__value_.__l.__data_);
        vp::objc::ID::~ID(&v293.__r_.__value_.__l.__data_);
        v93 = 1;
        goto LABEL_121;
      }
    }

    v66 = 0;
    v67 = v260;
    if (v65)
    {
      v67 = v259;
    }

    *&v270 = v67;
    v68 = v267;
    if (!v65)
    {
      v68 = v54;
    }

    v272 = v68;
    while (1)
    {
      v69 = v54;
      *&v296 = __PAIR64__(v65, v271);
      DWORD2(v296) = v66;
      v71 = a2[21];
      v70 = a2[22];
      if (v71)
      {
        v72 = 1;
      }

      else
      {
        v72 = v70 == 0;
      }

      if (!v72)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v73 = a2[21];
      if (v70)
      {
        v74 = a2[22];
        do
        {
          if (v74 != 1 && !v73)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (!v73)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (vp::vx::io::operator<(&v73[4 * (v74 >> 1)], &v296))
          {
            v73 += 4 * (v74 >> 1) + 4;
            v74 += ~(v74 >> 1);
          }

          else
          {
            v74 >>= 1;
          }
        }

        while (v74);
      }

      v75 = &v71[16 * v70];
      a2 = v268;
      v54 = v69;
      if (v73 == v75)
      {
        break;
      }

      if (!v73)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v76 = vp::vx::io::operator<(&v296, v73) ? v75 : v73;
      if (v76 == v75)
      {
        break;
      }

      v77 = v76[3];
      if (v77)
      {
        v78 = 0;
        LODWORD(v79) = 0;
        v80 = 16 * v77;
        do
        {
          if ((*(**(a2[12] + v78) + 40))(*(a2[12] + v78)) == v65)
          {
            v79 = (v79 + 1);
          }

          else
          {
            v79 = v79;
          }

          v78 += 16;
        }

        while (v80 != v78);
      }

      else
      {
        v79 = 0;
      }

      vp::objc::ID::operator=(&v272[v66], (v270 + 8 * v79));
LABEL_102:
      if (++v66 >= (*(*v273 + 48))(v273, v65))
      {
        goto LABEL_103;
      }
    }

    (*(*v273 + 56))(&v300);
    if (v303[0])
    {
      vp::rpb::Terminal::Terminal(&v287, &v300);
      vp::objc::ID::operator=(&v272[v66], &v287);
      vp::objc::ID::~ID(&v287);
      if ((v303[0] & 1) == 0 && SBYTE7(v302) < 0)
      {
        (*(**(&v302 + 1) + 24))(*(&v302 + 1), v301, v302 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      goto LABEL_102;
    }

    v101 = _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(v252, &v300);
    if ((v303[0] & 1) == 0 && SBYTE7(v302) < 0)
    {
      (*(**(&v302 + 1) + 24))(*(&v302 + 1), v301, v302 & 0x7FFFFFFFFFFFFFFFLL, 1, v101);
    }

    v93 = 0;
LABEL_121:
    if (v262)
    {
      v94 = -8 * v262;
      v95 = (v267 + 8 * v262 - 8);
      do
      {
        vp::objc::ID::~ID(v95);
        v95 = (v96 - 8);
        v94 += 8;
      }

      while (v94);
    }

    if (v264)
    {
      v97 = -8 * v264;
      v98 = &v54[v264 - 1];
      do
      {
        vp::objc::ID::~ID(v98);
        v98 = (v99 - 8);
        v97 += 8;
      }

      while (v97);
    }

    if (v266)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v266);
    }

    if (v93)
    {
      v47 = a2[8];
      v100 = 0x86BCA1AF286BCA1BLL * ((a2[9] - v47) >> 4);
      LODWORD(v271) = v271 + 1;
      v46 = v271;
      if (v100 <= v271)
      {
        goto LABEL_136;
      }

      continue;
    }

    break;
  }

LABEL_326:
  if (v248 != v253)
  {
    v228 = -8 * v247;
    v229 = &v263[v247 - 1];
    do
    {
      vp::objc::ID::~ID(v229);
      v229 = (v230 - 8);
      v228 += 8;
    }

    while (v228);
  }

  vp::objc::ID::~ID(&v289);
  if ((v249 & 1) == 0)
  {
    v231 = -8 * v261;
    v232 = &v259[v261 - 1];
    do
    {
      vp::objc::ID::~ID(v232);
      v232 = (v233 - 8);
      v231 += 8;
    }

    while (v231);
  }

  if (!v250)
  {
    v234 = -8 * v254;
    v235 = &v260[v254 - 1];
    do
    {
      vp::objc::ID::~ID(v235);
      v235 = (v236 - 8);
      v234 += 8;
    }

    while (v234);
  }

  vp::objc::ID::~ID(&v290);
  caulk::autorelease_pool::~autorelease_pool(&v291);
}

void sub_272642A70(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unsigned int *boost::container::flat_map<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<std::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_subscript(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = v3;
  if (v4)
  {
    v6 = v3;
    v7 = *(a1 + 16);
    do
    {
      if (v7 != 1 && !v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v8 = v7 >> 1;
      v9 = &v6[7 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 7;
      v7 += ~(v7 >> 1);
      if (v11 >= a2)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  v12 = &v3[7 * v4];
  if (v6 == v12)
  {
    goto LABEL_18;
  }

  if (!v6)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v6 > a2)
  {
LABEL_18:
    v21[0] = a2;
    v21[1] = -1;
    v22 = 0;
    v23 = -1;
    v13 = v3 > v6 || v6 > v12;
    v24 = 0;
    if (v13)
    {
      __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
    }

    __src = 0;
    if (v6 == v12)
    {
      v14 = v12;
    }

    else
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v14 = v6;
      if (*v6 <= a2)
      {
        v20 = v12;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(v6, &v20, a2, &__src))
        {
          goto LABEL_37;
        }

LABEL_31:
        boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_commit<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>(&v20, a1, __src, v21);
        v6 = v20;
LABEL_32:
        if (!v6)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        return v6 + 1;
      }
    }

    __src = v6;
    if (v14 == v3)
    {
      goto LABEL_31;
    }

    if (!v14)
    {
      __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
    }

    v16 = *(v14 - 7);
    v15 = v14 - 7;
    v17 = v16 > a2;
    if (v16 < a2)
    {
      goto LABEL_31;
    }

    if (v17)
    {
      v20 = v15;
      if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(v3, &v20, a2, &__src))
      {
        goto LABEL_31;
      }
    }

    else
    {
      __src = v15;
    }

LABEL_37:
    v6 = __src;
    if (!*(a1 + 8) && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }

    goto LABEL_32;
  }

  return v6 + 1;
}

void sub_272642F40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *vp::vx::io::Direction_Pair<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>>::Direction_Pair(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a2[3];
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = a2[7];
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(a1 + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 5);
  return a1;
}

void sub_272642FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_DWORD *std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::construct[abi:ne200100]<vp::rpb::Parameter_Info,vp::rpb::Parameter_Info const&,0>(_DWORD *result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = CFRetain(*(a2 + 8));
  }

  *(v3 + 1) = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    result = CFRetain(*(a2 + 16));
  }

  *(v3 + 2) = v5;
  *(v3 + 12) = *(a2 + 24);
  return result;
}