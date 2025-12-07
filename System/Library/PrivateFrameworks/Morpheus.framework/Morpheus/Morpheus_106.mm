uint64_t std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t mlx_stream_tostring(std::string **a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::operator<<(&v10, a2);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v5 - locale;
  if (v4)
  {
    memmove(&__p, locale, v4);
  }

LABEL_15:
  __p.__r_.__value_.__s.__data_[v4] = 0;
  if (!*a1)
  {
    operator new();
  }

  std::string::operator=(*a1, &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v18);
  return 0;
}

void sub_25A833CD0(_Unwind_Exception *a1, int a2, void *__p, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  MEMORY[0x25F851760](v25, 0x1012C40EC159624, __p, a4, a5, a6, a7, a8);
  operator delete(a9);
  std::ostringstream::~ostringstream(&a12, MEMORY[0x277D82828]);
  MEMORY[0x25F8516C0](va);
  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = (*(*v28 + 16))(v28);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 18, v29, v30, v31, v32, v33, v34);
    __cxa_end_catch();
    JUMPOUT(0x25A833C70);
  }

  _Unwind_Resume(a1);
}

void mlx_stream_new_device(mlx::core::metal **a1)
{
  if (a1)
  {
    mlx::core::new_stream(*a1);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A833E5C(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 31, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A833E10);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_stream_set(uint64_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  v4 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v4;
  return result;
}

void sub_25A833FA0(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 39, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A833F54);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_stream_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x1000C403E1C8BA9);
  }

  return 0;
}

BOOL mlx_stream_equal(_DWORD *a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *a1 == *a2;
}

uint64_t mlx_stream_get_device(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  *v2 = *(a2 + 4);
  return result;
}

void sub_25A8341A8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 61, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A83415CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_stream_get_index(_DWORD *a1, _DWORD *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = *a2;
  return result;
}

void sub_25A8342A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 69, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A834254);
  }

  _Unwind_Resume(exception_object);
}

void mlx_synchronize(uint64_t a1)
{
  if (a1)
  {
    mlx::core::synchronize(*a1, *(a1 + 8));
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83439C(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 78, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A834350);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_get_default_stream(uint64_t *a1, mlx::core::metal **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = mlx::core::default_stream(*a2);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  *v5 = v4;
  *(v5 + 8) = v3;
  return result;
}

void sub_25A8344DC(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 88, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A834490);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_set_default_stream(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::set_default_stream(*a1, *(a1 + 8));
  return 0;
}

void sub_25A8345D8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/stream.cpp", 96, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A83458CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_set_error_handler(void (*a1)(const char *, void *), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(&v6, a2, a3);
  }

  get_error_handler_data(a1, a2);
  v5 = qword_27FA06058;
  qword_27FA06050 = 0;
  qword_27FA06058 = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = mlx_error_handler_default_;
  }

  get_error_handler(void)::handler = v4;
}

void get_error_handler_data(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(_MergedGlobals_4, memory_order_acquire) & 1) == 0)
  {
    get_error_handler_data();
  }
}

uint64_t std::shared_ptr<void>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _mlx_error(const char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v20[3] = *MEMORY[0x277D85DE8];
  va_copy(&v20[1], va);
  va_copy(&v20[2], va);
  vsnprintf(0, 0, a3, va);
  v11 = snprintf(0, 0, " at %s:%d", a1, a2);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v16 = vsnprintf(v20 - v13, v15, a3, va);
  v17 = snprintf(&v14[v16], v12 + 1, " at %s:%d", a1, a2);
  v18 = get_error_handler(void)::handler;
  get_error_handler_data(v17, v19);
  v18(v14, qword_27FA06050);
  JUMPOUT(0x25A8349ECLL);
}

void sub_25A834AA0(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<void *,void (*)(void *),std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,void (*)(void *),std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void mlx_fast_affine_dequantize(uint64_t *a1, uint64_t **a2, uint64_t **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 && a3 && a4)
  {
    if (a7)
    {
      mlx::core::fast::affine_dequantize(a2, a3, a4, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A834CBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 30, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A834C18);
  }

  _Unwind_Resume(a1);
}

void mlx_fast_affine_quantize(void **a1, void **a2, void **a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    if (a7)
    {
      mlx::core::fast::affine_quantize(a4, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A834F9C(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 52, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A834F30);
  }

  _Unwind_Resume(a1);
}

void mlx_fast_layer_norm(uint64_t *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, float a6)
{
  if (a2)
  {
    if (a3)
    {
      v6 = a3[1];
      v16[0] = *a3;
      v16[1] = v6;
      if (v6)
      {
        v7 = (v6 + 8);
        v8 = 1;
        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
      LOBYTE(v16[0]) = 0;
    }

    v17 = v8;
    if (a4)
    {
      v9 = a4[1];
      v14[0] = *a4;
      v14[1] = v9;
      if (v9)
      {
        v10 = (v9 + 8);
        v11 = 1;
        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
      LOBYTE(v14[0]) = 0;
    }

    v15 = v11;
    if (a5)
    {
      mlx::core::fast::layer_norm(a2, v16, v14, *a5, *(a5 + 8) | 0x100000000, a6);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v12, "expected a non-empty mlx_array");
  __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8351F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, char a13, uint64_t a14, char a15, int a16, char a17)
{
  mlx::core::array::~array(&a17);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (a15 == 1)
  {
    mlx::core::array::~array(&a13);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 76, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A835168);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fast_metal_kernel_config_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = (result + 72);
    std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    v3 = v1;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x25F851760](v1, 0x1020C40D394AB39);
  }

  return result;
}

void mlx_fast_metal_kernel_new(char *__s, const void ***a2, void *a3, char *a4, char *a5, char a6, char a7)
{
  v14[7] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v14, __s);
  if (a2)
  {
    if (a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, a4);
      std::string::basic_string[abi:ne200100]<0>(&__p, a5);
      operator new();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A835580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  __cxa_free_exception(v27);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = (*(*v30 + 16))(v30);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 184, v31, v32, v33, v34, v35, v36);
    __cxa_end_catch();
    JUMPOUT(0x25A8354F0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fast_metal_kernel_free(uint64_t result)
{
  if (result)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::~__value_func[abi:ne200100](result);

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t mlx_fast_metal_kernel_config_add_output_arg(uint64_t a1, int *a2, unint64_t a3, int a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a2, &a2[a3], a3);
  std::vector<std::vector<int>>::push_back[abi:ne200100](a1, &__p);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v8 >= v7)
  {
    v10 = *(a1 + 24);
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(a1 + 24, v14);
    }

    v15 = (8 * v11);
    *v15 = v6 & 0xFFFFFFFFFFLL;
    v9 = 8 * v11 + 8;
    v16 = *(a1 + 24);
    v17 = *(a1 + 32) - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = *(a1 + 24);
    *(a1 + 24) = v18;
    *(a1 + 32) = v9;
    *(a1 + 40) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = v6 & 0xFFFFFFFFFFLL;
    v9 = (v8 + 1);
  }

  result = 0;
  *(a1 + 32) = v9;
  return result;
}

void sub_25A835854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(exception_object);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 204, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8357FCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fast_metal_kernel_config_set_grid(_DWORD *a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  a1[12] = a2;
  a1[13] = a3;
  a1[14] = a4;
  return result;
}

void sub_25A835970(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 218, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A835924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fast_metal_kernel_config_set_thread_group(_DWORD *a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  a1[15] = a2;
  a1[16] = a3;
  a1[17] = a4;
  return result;
}

void sub_25A835A68(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 232, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A835A1CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fast_metal_kernel_config_set_init_value(uint64_t a1, float a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *(a1 + 96) = a2;
  *(a1 + 100) = 1;
  return result;
}

void sub_25A835B64(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 243, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A835B18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fast_metal_kernel_config_set_verbose(uint64_t a1, char a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *(a1 + 104) = a2;
  return result;
}

void sub_25A835C58(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 254, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A835C0CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fast_metal_kernel_config_add_template_arg_dtype(uint64_t a1, char *a2, int a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, a2);
  v6 = v10;
  v17[0] = v11;
  *(v17 + 7) = *(&v11 + 7);
  v7 = HIBYTE(v11);
  v11 = 0uLL;
  v10 = 0;
  __p = v6;
  *v13 = v17[0];
  *&v13[7] = *(v17 + 7);
  v14 = v7;
  v15 = v5 & 0xFFFFFFFFFFLL;
  v16 = 2;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100]((a1 + 72), &__p);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  return 0;
}

void sub_25A835E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(exception_object);
    v22 = (*(*v21 + 16))(v21);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 267, v22, v23, v24, v25, v26, v27);
    __cxa_end_catch();
    JUMPOUT(0x25A835D94);
  }

  _Unwind_Resume(exception_object);
}

const void **std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100](const void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>>(result, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 3);
    *(v13 + 32) = *(a2 + 8);
    *(v13 + 24) = v15;
    v8 = 40 * v9 + 40;
    v16 = result[1] - *result;
    v17 = (v13 - v16);
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::~__split_buffer(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = *(a2 + 3);
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 3) = v7;
    v8 = (v4 + 40);
  }

  v3[1] = v8;
  return result;
}

uint64_t mlx_fast_metal_kernel_config_add_template_arg_int(uint64_t a1, char *a2, int a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, a2);
  v5 = v9;
  v16[0] = v10;
  *(v16 + 7) = *(&v10 + 7);
  v6 = HIBYTE(v10);
  v10 = 0uLL;
  v9 = 0;
  __p = v5;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v6;
  v14 = a3;
  v15 = 0;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100]((a1 + 72), &__p);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  return 0;
}

void sub_25A836138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(exception_object);
    v22 = (*(*v21 + 16))(v21);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 280, v22, v23, v24, v25, v26, v27);
    __cxa_end_catch();
    JUMPOUT(0x25A8360CCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fast_metal_kernel_config_add_template_arg_BOOL(uint64_t a1, char *a2, char a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, a2);
  v5 = v9;
  v16[0] = v10;
  *(v16 + 7) = *(&v10 + 7);
  v6 = HIBYTE(v10);
  v10 = 0uLL;
  v9 = 0;
  __p = v5;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v6;
  v14 = a3;
  v15 = 1;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::push_back[abi:ne200100]((a1 + 72), &__p);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  return 0;
}

void sub_25A836324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(exception_object);
    v22 = (*(*v21 + 16))(v21);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 293, v22, v23, v24, v25, v26, v27);
    __cxa_end_catch();
    JUMPOUT(0x25A8362B8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fast_metal_kernel_apply(char ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_fast_metal_kernel_config");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v24, 0, sizeof(v24));
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v24, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3));
  __p = 0;
  v26 = 0;
  v27 = 0;
  std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype*,mlx::core::Dtype*>(&__p, *(a4 + 24), *(a4 + 32), (*(a4 + 32) - *(a4 + 24)) >> 3);
  v10 = *(a4 + 64);
  *v28 = *(a4 + 48);
  *&v28[16] = v10;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(&v29, *(a4 + 72), *(a4 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 80) - *(a4 + 72)) >> 3));
  v11 = *(a4 + 96);
  v33 = *(a4 + 104);
  v32 = v11;
  if (!a2)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "expected a non-empty mlx_fast_metal_kernel");
    goto LABEL_14;
  }

  if (!a3)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "expected a non-empty mlx_vector_array");
LABEL_14:
    __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = *v28;
  v13 = *&v28[8];
  v14 = *&v28[12];
  v15 = *&v28[20];
  memset(v21, 0, sizeof(v21));
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(v21, v29, v30, 0xCCCCCCCCCCCCCCCDLL * ((v30 - v29) >> 3));
  if (!a5)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "expected a non-empty mlx_stream");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::operator()(a2, a3, v24, &__p, v12, v13, v14, v15, v21, v32, v33, *a5, *(a5 + 8) | 0x100000000);
  v16 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v16 = v22;
  v16[2] = v23;
  v22 = 0uLL;
  v23 = 0;
  v34[0] = &v22;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v34);
  v34[0] = v21;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](v34);
  *&v22 = &v29;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  *&v22 = v24;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v22);
  return 0;
}

void sub_25A8366FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  *(v25 - 96) = &a17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v25 - 96));
  *(v25 - 96) = &a14;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100]((v25 - 96));
  mlx_fast_metal_kernel_config_cpp_::~mlx_fast_metal_kernel_config_cpp_(&a21);
  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = (*(*v28 + 16))(v28);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 320, v29, v30, v31, v32, v33, v34);
    __cxa_end_catch();
    JUMPOUT(0x25A83660CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v19 = a5;
  v20 = a6;
  v17 = a7;
  v18 = a8;
  v16[0] = a12;
  v16[1] = a13;
  v15 = a11;
  v13 = *(a1 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v13 + 48))(v13, a2, a3, a4, &v19, &v17, a9, &a10, &v15, v16);
}

void mlx_fast_rms_norm(uint64_t *a1, const void ***a2, uint64_t *a3, uint64_t a4, float a5)
{
  if (a2)
  {
    if (a3)
    {
      v5 = a3[1];
      v10[0] = *a3;
      v10[1] = v5;
      if (v5)
      {
        v6 = (v5 + 8);
        v7 = 1;
        atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      LOBYTE(v10[0]) = 0;
    }

    v11 = v7;
    if (a4)
    {
      mlx::core::fast::rms_norm(a2, v10, *a4, *(a4 + 8) | 0x100000000, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "expected a non-empty mlx_array");
  __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A836A28(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  if (v15 == 1)
  {
    mlx::core::array::~array(va);
  }

  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 342, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A83699CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_fast_rope(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5, int a6, void *a7, uint64_t a8, float a9)
{
  if (a2)
  {
    if (a7)
    {
      v9 = a7[1];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }
    }

    if (a8)
    {
      if ((a5 & 0x100000000) != 0)
      {
        v10 = a5;
      }

      else
      {
        v10 = 0;
      }

      mlx::core::fast::rope(a2, a3, a4, v10 | a5 & 0x100000000, a6);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A836C84(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  if (v15 == 1)
  {
    mlx::core::array::~array(va);
  }

  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 372, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A836BF8);
  }

  _Unwind_Resume(a1);
}

void mlx_fast_scaled_dot_product_attention(uint64_t *a1, int ***a2, std::string::size_type *a3, std::string::size_type *a4, char *__s, uint64_t ***a6, uint64_t a7, float a8)
{
  if (a2 && a3 && a4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    if (a6)
    {
      if (a7)
      {
        mlx::core::fast::scaled_dot_product_attention(a2, a3, a4, __p, a6, *a7, *(a7 + 8) | 0x100000000, a8);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
  __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A836F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  mlx::core::array::~array(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fast.cpp", 398, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A836E40);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<std::vector<int>> const&,std::vector<mlx::core::Dtype> const&,std::tuple<int,int,int>,std::tuple<int,int,int>,std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::optional<float>,BOOL,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A83726C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 8);
      v4[1].__r_.__value_.__r.__words[0] = v9;
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v14 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>,std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void mlx_fast_metal_kernel_config_cpp_::~mlx_fast_metal_kernel_config_cpp_(mlx_fast_metal_kernel_config_cpp_ *this)
{
  v3 = (this + 72);
  std::vector<std::pair<std::string,std::variant<int,BOOL,mlx::core::Dtype>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void mlx_export_function(char *__s, uint64_t a2, void **a3, char a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (a2)
  {
    if (a3)
    {
      mlx::core::export_function(__p, a2, a3, a4);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8375F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 18, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A837588);
  }

  _Unwind_Resume(a1);
}

void mlx_export_function_kwargs(char *__s, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        mlx::core::export_function(__p, a2, a3, a4, a5);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_kwargs");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83778C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 37, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A837704);
  }

  _Unwind_Resume(a1);
}

void mlx_function_exporter_new(char *__s, uint64_t a2, char a3)
{
  __p[18] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (a2)
  {
    mlx::core::exporter(__p, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A837958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 51, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A8378E8);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_function_exporter_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    std::__tree<int>::destroy(a1 + 72, *(a1 + 80));
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 40);
    mlx::core::io::FileWriter::~FileWriter(a1);
    MEMORY[0x25F851760]();
  }

  return 0;
}

void mlx_function_exporter_apply(uint64_t a1, void **a2)
{
  if (a1)
  {
    if (a2)
    {
      mlx::core::FunctionExporter::operator()(a1, a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_function_exporter");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A837B40(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 71, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A837AD8);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_function_exporter_apply_kwargs(uint64_t a1, void **a2, uint64_t a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_function_exporter");
    goto LABEL_8;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_8;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::FunctionExporter::operator()(a1, a2, a3);
  return 0;
}

void sub_25A837C74(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 85, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A837BF0);
  }

  _Unwind_Resume(a1);
}

void sub_25A837D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(exception_object);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 95, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A837D64);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_imported_function_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    MEMORY[0x25F851760](a1, 0x20C40A4A59CD2);
  }

  return 0;
}

uint64_t mlx_imported_function_apply(char ***a1, char **a2, char **a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_imported_function");
    goto LABEL_8;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::ImportedFunction::operator()(a2, a3, &v7);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v4 = v7;
  v4[2] = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v9);
  return 0;
}

void sub_25A837F80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 116, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A837F14);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_imported_function_apply_kwargs(char ***a1, char **a2, char **a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_imported_function");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::ImportedFunction::operator()(a2, a3, a4, &v8);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v5 = v8;
  v5[2] = v9;
  v8 = 0uLL;
  v9 = 0;
  v10 = &v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  return 0;
}

void sub_25A83815C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/export.cpp", 132, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A8380D4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::FunctionExporter::FunctionExporter(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286BE60E0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  v4 = (a2 + 80);
  v5 = *(a2 + 80);
  *(a1 + 80) = v5;
  v6 = a1 + 80;
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 72) = v4;
    *v4 = 0;
    *(a2 + 88) = 0;
  }

  else
  {
    *(a1 + 72) = v6;
  }

  v8 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v8;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

void mlx_abs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::abs(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8383C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 15, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A838358);
  }

  _Unwind_Resume(a1);
}

void mlx_add(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::add(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A838588(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 31, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A838500);
  }

  _Unwind_Resume(a1);
}

void mlx_addmm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v17 = a7;
  v18 = a6;
  if (a2)
  {
    v7 = *(a2 + 8);
    v16[0] = *a2;
    v16[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v8 = *(a3 + 8);
      v15[0] = *a3;
      v15[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      if (a4)
      {
        v9 = *(a4 + 8);
        v14[0] = *a4;
        v14[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        if (a5)
        {
          mlx::core::addmm(v16, v15, v14, &v18, &v17, *a5, *(a5 + 8) | 0x100000000);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_array");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v10, "expected a non-empty mlx_array");
  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83883C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a13);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 55, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A838738);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_all_axes(uint64_t *a1, uint64_t **a2, int *a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::all(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A838AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 76, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A838A20);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_all_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::all(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A838C84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 92, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A838C18);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_all(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::all(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void sub_25A838E28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 103, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A838DBCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_allclose(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::allclose(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, a6, a7);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A838FF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 127, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A838F68);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_any_axes(uint64_t *a1, uint64_t a2, int *a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::any(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A8391F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 148, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A839164);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_any_axis(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::any(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A8393C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 164, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83935CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_any(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::any(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void sub_25A83956C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 175, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A839500);
  }

  _Unwind_Resume(a1);
}

void mlx_arange(uint64_t *a1, int a2, uint64_t a3, double a4, double a5, double a6)
{
  if (a3)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8396F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 193, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8396A4);
  }

  _Unwind_Resume(a1);
}

void mlx_arccos(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arccos(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A839890(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 204, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A839824);
  }

  _Unwind_Resume(a1);
}

void mlx_arccosh(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arccosh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A839A30(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 215, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8399C4);
  }

  _Unwind_Resume(a1);
}

void mlx_arcsin(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arcsin(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A839BD0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 226, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A839B64);
  }

  _Unwind_Resume(a1);
}

void mlx_arcsinh(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arcsinh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A839D70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 237, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A839D04);
  }

  _Unwind_Resume(a1);
}

void mlx_arctan(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arctan(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A839F10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 248, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A839EA4);
  }

  _Unwind_Resume(a1);
}

void mlx_arctan2(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::arctan2(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83A0D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 264, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83A04CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_arctanh(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::arctanh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83A278(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 275, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83A20CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_argmax_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::argmax(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83A420(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 292, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83A3B4);
  }

  _Unwind_Resume(a1);
}

void mlx_argmax(uint64_t *a1, const void ***a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argmax(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83A5C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 307, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83A558);
  }

  _Unwind_Resume(a1);
}

void mlx_argmin_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::argmin(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83A76C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 324, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83A700);
  }

  _Unwind_Resume(a1);
}

void mlx_argmin(uint64_t *a1, const void ***a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argmin(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83A910(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 339, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83A8A4);
  }

  _Unwind_Resume(a1);
}

void mlx_argpartition_axis(uint64_t *a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this)
  {
    if (a5)
    {
      mlx::core::argpartition(this, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83AAB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 356, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83AA4CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_argpartition(uint64_t *a1, const void ***a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argpartition(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83AC5C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 371, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83ABF0);
  }

  _Unwind_Resume(a1);
}

void mlx_argsort_axis(uint64_t *a1, const void ***a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::argsort(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83AE00(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 385, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83AD94);
  }

  _Unwind_Resume(a1);
}

void mlx_argsort(uint64_t *a1, const void ***a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::argsort(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83AFA0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 396, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83AF34);
  }

  _Unwind_Resume(a1);
}

void mlx_array_equal(uint64_t *a1, const void ***a2, const void ***a3, char a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::array_equal(a2, a3, *a5, *(a5 + 8) | 0x100000000, &v6);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83B168(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 416, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83B0E0);
  }

  _Unwind_Resume(a1);
}

void mlx_as_strided(uint64_t *a1, void *a2, int *a3, unint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = a2[1];
    v17[0] = *a2;
    v17[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v16, 0, sizeof(v16));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a3, &a3[a4], a4);
    memset(__p, 0, sizeof(__p));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, a5, &a5[a6], a6);
    if (a8)
    {
      mlx::core::as_strided(v17, v16, __p, a7, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83B3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  mlx::core::array::~array(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  mlx::core::array::~array(&a15);
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 440, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A83B334);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_astype(uint64_t *a1, void *a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (!a4)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "expected a non-empty mlx_stream");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v13;
  v13 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v13);
  mlx::core::array::~array(v12);
  return 0;
}

void sub_25A83B60C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = (*(*v13 + 16))(v13);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 456, v14, v15, v16, v17, v18, v19);
    __cxa_end_catch();
    JUMPOUT(0x25A83B580);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_atleast_1d(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::atleast_1d(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void sub_25A83B7D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 467, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83B764);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_atleast_2d(uint64_t *a1, const void ***a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::atleast_2d(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void sub_25A83B970(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 478, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83B904);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_atleast_3d(uint64_t *a1, const void ***a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::atleast_3d(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void sub_25A83BB10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 489, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83BAA4);
  }

  _Unwind_Resume(a1);
}

void mlx_bitwise_and(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::bitwise_and(a2, a3, *a4, (*(a4 + 8) | 0x100000000));
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83BCD4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 505, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83BC4CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_bitwise_invert(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::bitwise_invert(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83BE78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 516, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83BE0CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_bitwise_or(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::bitwise_or(a2, a3, *a4, (*(a4 + 8) | 0x100000000));
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83C03C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 532, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83BFB4);
  }

  _Unwind_Resume(a1);
}

void mlx_bitwise_xor(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::bitwise_xor(a2, a3, *a4, (*(a4 + 8) | 0x100000000));
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83C204(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 548, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83C17CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_block_masked_mm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (a2)
  {
    v8 = *(a2 + 8);
    v29[0] = *a2;
    v29[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v9 = *(a3 + 8);
      v28[0] = *a3;
      v28[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      if (a5)
      {
        v10 = a5[1];
        v26[0] = *a5;
        v26[1] = v10;
        if (v10)
        {
          v11 = (v10 + 8);
          v12 = 1;
          atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
        LOBYTE(v26[0]) = 0;
      }

      v27 = v12;
      if (a6)
      {
        v13 = a6[1];
        v24[0] = *a6;
        v24[1] = v13;
        if (v13)
        {
          v14 = (v13 + 8);
          v15 = 1;
          atomic_fetch_add_explicit(v14, 1uLL, memory_order_relaxed);
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        LOBYTE(v24[0]) = 0;
      }

      v25 = v15;
      if (a7)
      {
        v16 = a7[1];
        v22[0] = *a7;
        v22[1] = v16;
        if (v16)
        {
          v17 = (v16 + 8);
          v18 = 1;
          atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
        LOBYTE(v22[0]) = 0;
      }

      v23 = v18;
      if (a8)
      {
        mlx::core::block_masked_mm(v29, v28, a4, v26, v24, v22, *a8, *(a8 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "expected a non-empty mlx_array");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v19, "expected a non-empty mlx_array");
  __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83C534(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  v24 = va_arg(va3, void);
  mlx::core::array::~array((v3 - 48));
  if (v16 == 1)
  {
    mlx::core::array::~array(va);
  }

  if (v20 == 1)
  {
    mlx::core::array::~array(va1);
  }

  if (v24 == 1)
  {
    mlx::core::array::~array(va2);
  }

  mlx::core::array::~array(va3);
  mlx::core::array::~array((v3 - 64));
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 577, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A83C46CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_broadcast_arrays(char ***a1, char **a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_8;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::broadcast_arrays(a2, *a3, *(a3 + 8) | 0x100000000, &v7);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v4 = v7;
  v4[2] = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v9);
  return 0;
}

void sub_25A83C778(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 592, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A83C70CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_broadcast_to(uint64_t *a1, const void ***a2, int *a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::broadcast_to(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A83C974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 611, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A83C8E8);
  }

  _Unwind_Resume(a1);
}

void mlx_ceil(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::ceil(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83CB44(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 621, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83CAD8);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_clip(uint64_t *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3)
  {
    v6 = a3[1];
    v20[0] = *a3;
    v20[1] = v6;
    if (v6)
    {
      v7 = (v6 + 8);
      v8 = 1;
      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    LOBYTE(v20[0]) = 0;
  }

  v21 = v8;
  if (a4)
  {
    v9 = a4[1];
    v18[0] = *a4;
    v18[1] = v9;
    if (v9)
    {
      v10 = (v9 + 8);
      v11 = 1;
      atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v18[0]) = 0;
  }

  v19 = v11;
  if (!a5)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::clip(a2, v20, v18, *a5, *(a5 + 8) | 0x100000000, &v22);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v22;
  v22 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v22);
  if (v19 == 1)
  {
    mlx::core::array::~array(v18);
  }

  if (v21 == 1)
  {
    mlx::core::array::~array(v20);
  }

  return 0;
}

void sub_25A83CD9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, char a13, uint64_t a14, char a15, int a16, char a17)
{
  mlx::core::array::~array(&a17);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (a15 == 1)
  {
    mlx::core::array::~array(&a13);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 643, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A83CD10);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_concatenate_axis(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v13, 0, sizeof(v13));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v13, *a2, a2[1], (a2[1] - *a2) >> 4);
  if (!a4)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::concatenate(v13, a3, *a4, *(a4 + 8) | 0x100000000, &v14);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v8 = v14;
  v14 = 0uLL;
  v9 = *(v7 + 8);
  *v7 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  mlx::core::array::~array(&v14);
  v15 = v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v15);
  return 0;
}

void sub_25A83CFD8(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  *(v3 - 40) = va;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 659, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A83CF4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_concatenate(uint64_t *a1, void **a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v11, 0, sizeof(v11));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v11, *a2, a2[1], (a2[1] - *a2) >> 4);
  if (!a3)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "expected a non-empty mlx_stream");
    __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::concatenate(v11, *a3, *(a3 + 8) | 0x100000000, &v12);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v12;
  v12 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v12);
  v13 = v11;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v13);
  return 0;
}

void sub_25A83D1F4(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  mlx::core::array::~array(va1);
  *(v3 - 40) = va;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 674, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A83D168);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_conjugate(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::conjugate(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void sub_25A83D3C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 685, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83D354);
  }

  _Unwind_Resume(a1);
}

void mlx_contiguous(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::contiguous(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83D564(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 701, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83D4F8);
  }

  _Unwind_Resume(a1);
}

void mlx_conv1d(uint64_t *a1, uint64_t **a2, int ***a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    if (a8)
    {
      mlx::core::conv1d(a2, a3, a4, a5, a6, a7, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83D738(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 727, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83D6B0);
  }

  _Unwind_Resume(a1);
}

void mlx_conv2d(uint64_t *a1, uint64_t **a2, int ***a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11)
{
  if (a2 && a3)
  {
    v15 = a4 | (a5 << 32);
    v14 = a6 | (a7 << 32);
    v13 = a8 | (a9 << 32);
    if (a11)
    {
      mlx::core::conv2d(a2, a3, &v15, &v14, &v13, a10, *a11, *(a11 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83D95C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v8 = __cxa_begin_catch(a1);
    v9 = (*(*v8 + 16))(v8);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 756, v9, v10, v11, v12, v13, v14);
    __cxa_end_catch();
    JUMPOUT(0x25A83D8B4);
  }

  _Unwind_Resume(a1);
}

void mlx_conv3d(uint64_t *a1, uint64_t **a2, int ***a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, uint64_t a14)
{
  if (a2 && a3)
  {
    v20 = a4 | (a5 << 32);
    v21 = a6;
    v18 = a7 | (a8 << 32);
    v19 = a9;
    v16 = a10 | (a11 << 32);
    v17 = a12;
    if (a14)
    {
      mlx::core::conv3d(a2, a3, &v20, &v18, &v16, a13, *a14, *(a14 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
  __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83DB90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(a1);
    v11 = (*(*v10 + 16))(v10);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 788, v11, v12, v13, v14, v15, v16);
    __cxa_end_catch();
    JUMPOUT(0x25A83DAE8);
  }

  _Unwind_Resume(a1);
}

void mlx_conv_general(uint64_t *a1, uint64_t **a2, int ***a3, int *a4, unint64_t a5, int *a6, unint64_t a7, int *a8, unint64_t a9, int *a10, unint64_t a11, int *a12, unint64_t a13, unsigned int a14, char a15, uint64_t a16)
{
  if (a2)
  {
    v19 = a2[1];
    v30[0] = *a2;
    v30[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v20 = a3[1];
      v29[0] = *a3;
      v29[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
      }

      memset(v28, 0, sizeof(v28));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v28, a4, &a4[a5], a5);
      memset(v27, 0, sizeof(v27));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v27, a6, &a6[a7], a7);
      memset(v26, 0, sizeof(v26));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v26, a8, &a8[a9], a9);
      memset(v25, 0, sizeof(v25));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v25, a10, &a10[a11], a11);
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a12, &a12[a13], a13);
      if (a16)
      {
        mlx::core::conv_general(v30, v29, v28, v27, v26, v25, __p, a14, a15, *a16, *(a16 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "expected a non-empty mlx_array");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v21, "expected a non-empty mlx_array");
  __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83DEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  mlx::core::array::~array((v25 - 64));
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  mlx::core::array::~array((v25 - 96));
  mlx::core::array::~array((v25 - 80));
  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = (*(*v28 + 16))(v28);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 827, v29, v30, v31, v32, v33, v34);
    __cxa_end_catch();
    JUMPOUT(0x25A83DE20);
  }

  _Unwind_Resume(a1);
}

void mlx_conv_transpose1d(uint64_t *a1, uint64_t **a2, uint64_t **a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a2 && a3)
  {
    if (a9)
    {
      mlx::core::conv_transpose1d(a2, a3, a4, a5, a6, a7, a8, a8, *a9, *(a9 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83E1A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 855, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A83E118);
  }

  _Unwind_Resume(a1);
}

void mlx_conv_transpose2d(uint64_t *a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13)
{
  if (a2 && a3)
  {
    v18 = a4 | (a5 << 32);
    v17 = a6 | (a7 << 32);
    v15 = a10 | (a11 << 32);
    v16 = a8 | (a9 << 32);
    if (a13)
    {
      mlx::core::conv_transpose2d(a2, a3, &v18, &v17, &v16, &v15, a12, a8, *a13, *(a13 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83E3D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(a1);
    v11 = (*(*v10 + 16))(v10);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 887, v11, v12, v13, v14, v15, v16);
    __cxa_end_catch();
    JUMPOUT(0x25A83E32CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_conv_transpose3d(uint64_t *a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, unsigned int a14, int a15, unsigned int a16, uint64_t a17)
{
  if (a2 && a3)
  {
    v25 = a4 | (a5 << 32);
    v26 = a6;
    v23 = a7 | (a8 << 32);
    v24 = a9;
    v21 = a10 | (a11 << 32);
    v22 = a12;
    v19 = a13 | (a14 << 32);
    v20 = a15;
    if (a17)
    {
      mlx::core::conv_transpose3d(a2, a3, &v25, &v23, &v21, &v19, a16, a8, *a17, *(a17 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83E624(_Unwind_Exception *a1, int a2)
{
  mlx::core::array::~array((v2 - 48));
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 924, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A83E57CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_copy(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2[1];
    v6[0] = *a2;
    v6[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      mlx::core::copy(v6, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v4, "expected a non-empty mlx_array");
  __cxa_throw(v4, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83E808(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = (*(*v13 + 16))(v13);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 934, v14, v15, v16, v17, v18, v19);
    __cxa_end_catch();
    JUMPOUT(0x25A83E77CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_cos(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::cos(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83E9CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 943, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83E960);
  }

  _Unwind_Resume(a1);
}

void mlx_cosh(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::cosh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83EB6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 953, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83EB00);
  }

  _Unwind_Resume(a1);
}

void mlx_cummax(uint64_t *a1, const void ***a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cummax(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83ED18(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 971, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83ECACLL);
  }

  _Unwind_Resume(a1);
}

void mlx_cummin(uint64_t *a1, const void ***a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cummin(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83EEC4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 989, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83EE58);
  }

  _Unwind_Resume(a1);
}

void mlx_cumprod(uint64_t *a1, const void ***a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cumprod(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83F070(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1007, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83F004);
  }

  _Unwind_Resume(a1);
}

void mlx_cumsum(uint64_t *a1, const void ***a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::cumsum(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83F21C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1025, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83F1B0);
  }

  _Unwind_Resume(a1);
}

void mlx_degrees(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::degrees(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83F3BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1036, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83F350);
  }

  _Unwind_Resume(a1);
}

void mlx_depends(void ***a1, uint64_t **a2, uint64_t **a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::depends(a2, a3);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83F56C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1052, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A83F500);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_dequantize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_12;
  }

  if (!a7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::dequantize();
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v13;
  v13 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v13);
  return 0;
}

void sub_25A83F764(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1076, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83F6C0);
  }

  _Unwind_Resume(a1);
}

void mlx_diag(uint64_t *a1, uint64_t **a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::diag(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83F910(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1087, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83F8A4);
  }

  _Unwind_Resume(a1);
}

void mlx_diagonal(uint64_t *a1, uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::diagonal(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83FABC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1105, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83FA50);
  }

  _Unwind_Resume(a1);
}

void mlx_divide(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::divide(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83FC80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1121, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A83FBF8);
  }

  _Unwind_Resume(a1);
}

void mlx_divmod(void ***a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::divmod(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A83FE64(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1137, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A83FDDCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_einsum(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_12;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::einsum(__p, a3, *a4, *(a4 + 8) | 0x100000000, &v14);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v8 = v14;
  v14 = 0uLL;
  v9 = *(v7 + 8);
  *v7 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  mlx::core::array::~array(&v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_25A840030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  mlx::core::array::~array(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1155, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A83FFC4);
  }

  _Unwind_Resume(a1);
}

void mlx_equal(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A840210(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1171, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A840188);
  }

  _Unwind_Resume(a1);
}

void mlx_erf(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::erf(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8403B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1180, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A840348);
  }

  _Unwind_Resume(a1);
}

void mlx_erfinv(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::erfinv(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A840554(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1191, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8404E8);
  }

  _Unwind_Resume(a1);
}

void mlx_exp(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::exp(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8406F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1200, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A840688);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_expand_dims_axes(uint64_t *a1, uint64_t **a2, int *a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::expand_dims(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A8408E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1219, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84085CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_expand_dims(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::expand_dims(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A840ABC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1234, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A840A50);
  }

  _Unwind_Resume(a1);
}

void mlx_expm1(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::expm1(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A840C5C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1245, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A840BF0);
  }

  _Unwind_Resume(a1);
}

void mlx_eye(uint64_t *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (a6)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A840DF4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1262, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A840DA4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_flatten(uint64_t *a1, const void ***this, uint64_t a3, int a4, uint64_t a5)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::flatten(&v11, this, a3, a4, *a5, *(a5 + 8) | 0x100000000);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A840F98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1279, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A840F2CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_floor(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::floor(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A841138(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1290, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8410CCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_floor_divide(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::floor_divide(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8412FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1306, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A841274);
  }

  _Unwind_Resume(a1);
}

void mlx_full(uint64_t *a1, int *a2, unint64_t a3, void *a4, int a5, uint64_t a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, &a2[a3], a3);
  if (a4)
  {
    v9 = a4[1];
    *&v12 = *a4;
    *(&v12 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v10, "expected a non-empty mlx_array");
  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A841524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  mlx::core::array::~array(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1327, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A841498);
  }

  _Unwind_Resume(a1);
}

void mlx_gather(uint64_t *a1, uint64_t **a2, __int128 **a3, int *a4, unint64_t a5, int *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a3)
    {
      memset(v16, 0, sizeof(v16));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a4, &a4[a5], a5);
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a6, &a6[a7], a7);
      if (a8)
      {
        mlx::core::gather(a2, a3, v16, __p, *a8, *(a8 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_vector_array");
  }

  else
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  }

  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8417C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1351, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A841714);
  }

  _Unwind_Resume(a1);
}

void mlx_gather_mm(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, uint64_t a7)
{
  if (a2)
  {
    v7 = *(a2 + 8);
    v23[0] = *a2;
    v23[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v8 = *(a3 + 8);
      v22[0] = *a3;
      v22[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      if (a4)
      {
        v9 = a4[1];
        v20[0] = *a4;
        v20[1] = v9;
        if (v9)
        {
          v10 = (v9 + 8);
          v11 = 1;
          atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
        LOBYTE(v20[0]) = 0;
      }

      v21 = v11;
      if (a5)
      {
        v12 = a5[1];
        v18[0] = *a5;
        v18[1] = v12;
        if (v12)
        {
          v13 = (v12 + 8);
          v14 = 1;
          atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
        LOBYTE(v18[0]) = 0;
      }

      v19 = v14;
      if (a7)
      {
        mlx::core::gather_mm(v23, v22, v20, v18, a6, *a7, *(a7 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "expected a non-empty mlx_array");
    __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v15 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v15, "expected a non-empty mlx_array");
  __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A841AF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, char a13, uint64_t a14, char a15, int a16, char a17, uint64_t a18, char a19)
{
  mlx::core::array::~array((v19 - 48));
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (a15 == 1)
  {
    mlx::core::array::~array(&a13);
  }

  mlx::core::array::~array(&a17);
  mlx::core::array::~array(&a19);
  if (a2 == 1)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = (*(*v22 + 16))(v22);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1377, v23, v24, v25, v26, v27, v28);
    __cxa_end_catch();
    JUMPOUT(0x25A841A28);
  }

  _Unwind_Resume(a1);
}

void mlx_gather_qmm(uint64_t *a1, int ***a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, unsigned int a9, int a10, char a11, uint64_t a12)
{
  if (a2 && a3 && a4 && a5)
  {
    if (a6)
    {
      v12 = a6[1];
      v22[0] = *a6;
      v22[1] = v12;
      if (v12)
      {
        v13 = (v12 + 8);
        v14 = 1;
        atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
      LOBYTE(v22[0]) = 0;
    }

    v23 = v14;
    if (a7)
    {
      v15 = a7[1];
      v20[0] = *a7;
      v20[1] = v15;
      if (v15)
      {
        v16 = (v15 + 8);
        v17 = 1;
        atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
      LOBYTE(v20[0]) = 0;
    }

    v21 = v17;
    if (a12)
    {
      mlx::core::gather_qmm(a2, a3, a4, a5, v22, v20, a8, a9, a10, a11, *a12, *(a12 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v18, "expected a non-empty mlx_array");
  __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A841E4C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, int a16, char a17, uint64_t a18, char a19)
{
  mlx::core::array::~array((v19 - 48));
  if (a15 == 1)
  {
    mlx::core::array::~array(&a13);
  }

  if (a19)
  {
    mlx::core::array::~array(&a17);
  }

  if (a2 == 1)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = (*(*v22 + 16))(v22);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1413, v23, v24, v25, v26, v27, v28);
    __cxa_end_catch();
    JUMPOUT(0x25A841D6CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_greater(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::greater(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84205C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1429, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A841FD4);
  }

  _Unwind_Resume(a1);
}

void mlx_greater_equal(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::greater_equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A842224(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1445, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84219CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_hadamard_transform(uint64_t *a1, const void ***a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::hadamard_transform(a2, a3 & ((a3 >> 1) >> 31) | a3 & 0x100000000, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8423DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1464, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A842370);
  }

  _Unwind_Resume(a1);
}

void mlx_identity(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  if (a4)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84256C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1476, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84251CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_imag(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::imag(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A842708(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1486, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84269CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_inner(uint64_t *a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::inner(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8428CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1502, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A842844);
  }

  _Unwind_Resume(a1);
}

void mlx_isclose(uint64_t *a1, void *a2, void *a3, int a4, uint64_t a5, double a6, double a7)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::isclose(a6, a7);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A842A98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1526, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A842A10);
  }

  _Unwind_Resume(a1);
}

void mlx_isfinite(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::isfinite(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A842C3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1537, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A842BD0);
  }

  _Unwind_Resume(a1);
}

void mlx_isinf(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::isinf(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A842DDC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1548, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A842D70);
  }

  _Unwind_Resume(a1);
}

void mlx_isnan(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::isnan(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A842F7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1559, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A842F10);
  }

  _Unwind_Resume(a1);
}

void mlx_isneginf(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::isneginf(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84311C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1570, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8430B0);
  }

  _Unwind_Resume(a1);
}

void mlx_isposinf(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::isposinf(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8432BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1581, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A843250);
  }

  _Unwind_Resume(a1);
}

void mlx_kron(uint64_t *a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::kron(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A843480(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1597, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8433F8);
  }

  _Unwind_Resume(a1);
}

void mlx_left_shift(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::left_shift(a2, a3, *a4, (*(a4 + 8) | 0x100000000));
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A843648(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1613, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8435C0);
  }

  _Unwind_Resume(a1);
}

void mlx_less(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::less(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A843810(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1629, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A843788);
  }

  _Unwind_Resume(a1);
}

void mlx_less_equal(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::less_equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8439D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1645, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A843950);
  }

  _Unwind_Resume(a1);
}

void mlx_linspace(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  if (a4)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A843B6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1663, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A843B1CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_log(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A843D08(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1672, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A843C9CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_log10(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log10(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A843EA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1683, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A843E3CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_log1p(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log1p(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A844048(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1694, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A843FDCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_log2(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::log2(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8441E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1704, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84417CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_logaddexp(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::logaddexp(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8443AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1720, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A844324);
  }

  _Unwind_Resume(a1);
}

void mlx_logcumsumexp(uint64_t *a1, const void ***a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::logcumsumexp(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84455C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1738, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8444F0);
  }

  _Unwind_Resume(a1);
}

void mlx_logical_and(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::logical_and(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A844720(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1754, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A844698);
  }

  _Unwind_Resume(a1);
}

void mlx_logical_not(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::logical_not(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8448C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1765, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A844858);
  }

  _Unwind_Resume(a1);
}

void mlx_logical_or(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::logical_or(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A844A88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1781, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A844A00);
  }

  _Unwind_Resume(a1);
}

void mlx_logsumexp_axes(uint64_t *a1, void *a2, int *a3, unint64_t a4, char a5, uint64_t a6)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, &a3[a4], a4);
    if (a6)
    {
      mlx::core::logsumexp(a2, __p, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v9, "expected a non-empty mlx_array");
  __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A844C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1802, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A844BFCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_logsumexp_axis(uint64_t *a1, void *a2, int a3, char a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::logsumexp(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A844E60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1819, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A844DF4);
  }

  _Unwind_Resume(a1);
}

void mlx_logsumexp(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::logsumexp(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A845004(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1834, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A844F98);
  }

  _Unwind_Resume(a1);
}

void mlx_matmul(uint64_t *a1, const void ***a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::matmul(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8451C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1850, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A845140);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_max_axes(uint64_t *a1, uint64_t a2, int *a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::max(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A8453C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1871, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84533CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_max_axis(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::max(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A8455A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1887, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A845534);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_max(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::max(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void sub_25A845744(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1898, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8456D8);
  }

  _Unwind_Resume(a1);
}

void mlx_maximum(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::maximum(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A845908(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1914, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A845880);
  }

  _Unwind_Resume(a1);
}

void mlx_mean_axes(uint64_t *a1, std::string::size_type *a2, int *a3, unint64_t a4, char a5, uint64_t a6)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, &a3[a4], a4);
    if (a6)
    {
      mlx::core::mean(a2, __p, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v9, "expected a non-empty mlx_array");
  __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A845B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1935, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A845A7CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_mean_axis(uint64_t *a1, std::string::size_type *a2, int a3, char a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::mean(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A845CE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1951, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A845C74);
  }

  _Unwind_Resume(a1);
}

void mlx_mean(uint64_t *a1, std::string::size_type *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::mean(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A845E84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1962, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A845E18);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_meshgrid(char ***a1, const void ****a2, char a3, char *__s, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  if (!a5)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::meshgrid(a2, a3, __p, *a5, *(a5 + 8) | 0x100000000, &v15);
  v9 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v9 = v15;
  v9[2] = v16;
  v15 = 0uLL;
  v16 = 0;
  v17 = &v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_25A84608C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  *(v16 - 40) = &a16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 1982, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A846000);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_min_axes(uint64_t *a1, uint64_t **a2, int *a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::min(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A8462C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2003, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A846234);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_min_axis(uint64_t *a1, uint64_t **a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::min(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A846498(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2019, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84642CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_min(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::min(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void sub_25A84663C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2030, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8465D0);
  }

  _Unwind_Resume(a1);
}

void mlx_minimum(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::minimum(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A846800(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2046, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A846778);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_moveaxis(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::moveaxis(a2, *a5, *(a5 + 8) | 0x100000000, &v11, a3, a4);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A8469AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2063, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A846940);
  }

  _Unwind_Resume(a1);
}

void mlx_multiply(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::multiply(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A846B70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2079, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A846AE8);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_nan_to_num(uint64_t *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, float a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::nan_to_num(a2, a3 & ((a3 >> 1) >> 31) | a3 & 0x100000000, a4 & ((a4 >> 1) >> 31) | a4 & 0x100000000, *a5, *(a5 + 8) | 0x100000000, &v12);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v8 = v12;
  v12 = 0uLL;
  v9 = *(v7 + 8);
  *v7 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  mlx::core::array::~array(&v12);
  return 0;
}

void sub_25A846D38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2103, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A846CCCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_negative(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::negative(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A846ED8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2114, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A846E6CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_not_equal(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::not_equal(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84709C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2130, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A847014);
  }

  _Unwind_Resume(a1);
}

void mlx_number_of_elements(uint64_t *a1, mlx::core::array *a2, int *a3, unint64_t a4, int a5, int a6, uint64_t a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, &a3[a4], a4);
    if (a7)
    {
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8472B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2153, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A847228);
  }

  _Unwind_Resume(a1);
}

void mlx_ones(uint64_t *a1, int *a2, unint64_t a3, int a4, uint64_t a5)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, &a2[a3], a3);
  if (a5)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8474A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2172, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A847450);
  }

  _Unwind_Resume(a1);
}

void mlx_ones_like(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::ones_like(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A847658(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2183, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8475ECLL);
  }

  _Unwind_Resume(a1);
}

void mlx_outer(uint64_t *a1, const void ***a2, const void ***a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::outer(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84781C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2199, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A847794);
  }

  _Unwind_Resume(a1);
}

void mlx_pad(uint64_t *a1, uint64_t **a2, int *a3, unint64_t a4, int *a5, unint64_t a6, int *a7, unint64_t a8, void *a9, char *__s, uint64_t a11)
{
  if (a2)
  {
    memset(v22, 0, sizeof(v22));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v22, a3, &a3[a4], a4);
    memset(v21, 0, sizeof(v21));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v21, a5, &a5[a6], a6);
    memset(v20, 0, sizeof(v20));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v20, a7, &a7[a8], a8);
    if (a9)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      if (a11)
      {
        mlx::core::pad(a2, v22, v21, v20, a9, __p, *a11, *(a11 + 8) | 0x100000000);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v16, "expected a non-empty mlx_array");
  __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A847AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  mlx::core::array::~array((v22 - 64));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = (*(*v25 + 16))(v25);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2228, v26, v27, v28, v29, v30, v31);
    __cxa_end_catch();
    JUMPOUT(0x25A847A28);
  }

  _Unwind_Resume(a1);
}

void mlx_pad_symmetric(uint64_t *a1, uint64_t **a2, int a3, void *a4, char *__s, uint64_t a6)
{
  if (a2 && a4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    if (a6)
    {
      mlx::core::pad(a2, a3, a4, __p, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v10, "expected a non-empty mlx_array");
  __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A847DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  mlx::core::array::~array(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2250, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A847D00);
  }

  _Unwind_Resume(a1);
}

void mlx_partition_axis(uint64_t *a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this)
  {
    if (a5)
    {
      mlx::core::partition(this, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A847F88(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2266, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A847F1CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_partition(uint64_t *a1, const void ***a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::partition(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84812C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2277, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8480C0);
  }

  _Unwind_Resume(a1);
}

void mlx_power(uint64_t *a1, const void ***a2, const void ***a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::power(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8482F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2293, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A848268);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_prod_axes(uint64_t *a1, std::string::size_type *a2, int *a3, unint64_t a4, char a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::prod(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A8484F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2314, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A848464);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_prod_axis(uint64_t *a1, std::string::size_type *a2, int a3, char a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::prod(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A8486C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2330, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84865CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_prod(uint64_t *a1, std::string::size_type *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::prod(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void sub_25A84886C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2341, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A848800);
  }

  _Unwind_Resume(a1);
}

void mlx_put_along_axis(uint64_t *a1, mlx::core::array *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  if (a2 && a3 && a4)
  {
    if (a6)
    {
      mlx::core::put_along_axis(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A848A58(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2363, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8489B4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_quantize(void **a1, void **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_27;
  }

  if (!a7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_27:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::quantize();
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*v10 != v21)
  {
    v11 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v10[1];
    *v10 = v21;
    v10[1] = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  v13 = *a2;
  if (!*a2)
  {
    operator new();
  }

  if (*v13 != v23)
  {
    v14 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v13[1];
    *v13 = v23;
    v13[1] = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v16 = *a3;
  if (!*a3)
  {
    operator new();
  }

  if (*v16 != v25)
  {
    v17 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = v16[1];
    *v16 = v25;
    v16[1] = v17;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  mlx::core::array::~array(&v25);
  mlx::core::array::~array(&v23);
  mlx::core::array::~array(&v21);
  return 0;
}

void sub_25A848D38(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2385, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A848CCCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_quantized_matmul(uint64_t *a1, void *a2, char ***a3, const void ***a4, const void ***a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v9 = a2[1];
    v21[0] = *a2;
    v21[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (a3)
    {
      v10 = a3[1];
      v20[0] = *a3;
      v20[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      }

      if (a4)
      {
        v11 = a4[1];
        v19[0] = *a4;
        v19[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
        }

        if (a5)
        {
          v12 = a5[1];
          v18[0] = *a5;
          v18[1] = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
          }

          if (a9)
          {
            mlx::core::quantized_matmul(v21, v20, v19, v18, a6, a7, a8, a8, *a9, *(a9 + 8) | 0x100000000);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "expected a non-empty mlx_array");
        __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "expected a non-empty mlx_array");
      __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A849054(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  va_copy(va3, va2);
  v20 = va_arg(va3, void);
  v22 = va_arg(va3, void);
  mlx::core::array::~array((v4 - 48));
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va3);
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    v8 = (*(*v7 + 16))(v7);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2413, v8, v9, v10, v11, v12, v13);
    __cxa_end_catch();
    JUMPOUT(0x25A848F14);
  }

  _Unwind_Resume(a1);
}

void mlx_radians(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::radians(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A849290(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2424, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A849224);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_real(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::real(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v9;
  v9 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v9);
  return 0;
}

void sub_25A849430(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2434, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8493C4);
  }

  _Unwind_Resume(a1);
}

void mlx_reciprocal(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::reciprocal(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8495D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2445, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A849564);
  }

  _Unwind_Resume(a1);
}

void mlx_remainder(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::remainder(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A849794(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2461, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84970CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_repeat_axis(uint64_t *a1, uint64_t *a2, std::vector<int>::value_type a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::repeat(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void sub_25A849940(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2478, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8498D4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_repeat(uint64_t *a1, const void ***a2, std::vector<int>::value_type a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::repeat(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

void sub_25A849AE4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2493, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A849A78);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_reshape(uint64_t *a1, const void ***a2, int *a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::reshape(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A849CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2512, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A849C4CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_right_shift(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::right_shift(a2, a3, *a4, (*(a4 + 8) | 0x100000000));
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A849EC8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2528, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A849E40);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_roll_axis(uint64_t *a1, mlx::core::array *a2, int *a3, unint64_t a4, int a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::roll(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v19;
  v19 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v19);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A84A0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2549, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84A03CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_roll_axes(uint64_t *a1, mlx::core::array *a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, &a3[a4], a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, &a5[a6], a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::roll(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

void sub_25A84A32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2571, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A84A29CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_roll(uint64_t *a1, const void ***a2, int *a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::roll(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v17;
  v17 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A84A56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2590, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84A4E0);
  }

  _Unwind_Resume(a1);
}

void mlx_round(uint64_t *a1, void *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::round(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84A740(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2602, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84A6D4);
  }

  _Unwind_Resume(a1);
}

void mlx_rsqrt(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::rsqrt(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84A8E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2613, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84A874);
  }

  _Unwind_Resume(a1);
}

void mlx_scatter(uint64_t *a1, uint64_t **a2, char **a3, uint64_t **a4, int *a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, &a5[a6], a6);
      if (a7)
      {
        mlx::core::scatter(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84AB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2636, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84AA64);
  }

  _Unwind_Resume(a1);
}

void mlx_scatter_add(uint64_t *a1, uint64_t **a2, char **a3, uint64_t **a4, int *a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, &a5[a6], a6);
      if (a7)
      {
        mlx::core::scatter_add(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84ADB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2659, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84ACE8);
  }

  _Unwind_Resume(a1);
}

void mlx_scatter_add_axis(uint64_t *a1, mlx::core::array *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  if (a2 && a3 && a4)
  {
    if (a6)
    {
      mlx::core::scatter_add_axis(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84AFD4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2681, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84AF30);
  }

  _Unwind_Resume(a1);
}

void mlx_scatter_max(uint64_t *a1, uint64_t **a2, char **a3, uint64_t **a4, int *a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, &a5[a6], a6);
      if (a7)
      {
        mlx::core::scatter_max(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2704, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84B160);
  }

  _Unwind_Resume(a1);
}

void mlx_scatter_min(uint64_t *a1, uint64_t **a2, char **a3, uint64_t **a4, int *a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, &a5[a6], a6);
      if (a7)
      {
        mlx::core::scatter_min(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84B4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2727, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84B3E4);
  }

  _Unwind_Resume(a1);
}

void mlx_scatter_prod(uint64_t *a1, uint64_t **a2, char **a3, uint64_t **a4, int *a5, unint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
      goto LABEL_9;
    }

    if (a4)
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, &a5[a6], a6);
      if (a7)
      {
        mlx::core::scatter_prod(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "expected a non-empty mlx_stream");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_9:
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84B730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2750, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84B668);
  }

  _Unwind_Resume(a1);
}

void mlx_sigmoid(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sigmoid(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84B908(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2761, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84B89CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_sign(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sign(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84BAA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2771, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84BA3CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_sin(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sin(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84BC48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2780, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84BBDCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_sinh(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sinh(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84BDE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2790, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84BD7CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_slice(uint64_t *a1, char ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, int *a7, unint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v27, a3, &a3[a4], a4);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v24, a5, &a5[a6], a6);
  __p = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a7, &a7[a8], a8);
  if (!a9)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "expected a non-empty mlx_stream");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::slice(a2, &v27, &v24, &__p, *a9, *(a9 + 8) | 0x100000000, &v30);
  v15 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v16 = v30;
  v30 = 0uLL;
  v17 = *(v15 + 8);
  *v15 = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  mlx::core::array::~array(&v30);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return 0;
}

void sub_25A84C054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  mlx::core::array::~array((v17 - 64));
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = (*(*v20 + 16))(v20);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2815, v21, v22, v23, v24, v25, v26);
    __cxa_end_catch();
    JUMPOUT(0x25A84BFC4);
  }

  _Unwind_Resume(a1);
}

void mlx_slice_dynamic(uint64_t *a1, uint64_t **a2, uint64_t *a3, int *a4, unint64_t a5, int *a6, unint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(v16, 0, sizeof(v16));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a4, &a4[a5], a5);
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a6, &a6[a7], a7);
    if (a8)
    {
      mlx::core::slice(a2, a3, v16, __p, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84C314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2839, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A84C268);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_slice_update(uint64_t *a1, char ***a2, void *a3, int *a4, unint64_t a5, int *a6, unint64_t a7, int *a8, unint64_t a9, uint64_t a10)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v28, a4, &a4[a5], a5);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v25, a6, &a6[a7], a7);
  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a8, &a8[a9], a9);
  if (!a10)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "expected a non-empty mlx_stream");
    __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::slice_update(a2, a3, &v28, &v25, &__p, *a10, *(a10 + 8) | 0x100000000, &v31);
  v16 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v17 = v31;
  v31 = 0uLL;
  v18 = *(v16 + 8);
  *v16 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  mlx::core::array::~array(&v31);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return 0;
}