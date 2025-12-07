void sub_25A84C5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2866, v21, v22, v23, v24, v25, v26);
    __cxa_end_catch();
    JUMPOUT(0x25A84C544);
  }

  _Unwind_Resume(a1);
}

void mlx_slice_update_dynamic(uint64_t *a1, char ***a2, void *a3, uint64_t a4, int *a5, unint64_t a6, uint64_t a7)
{
  if (a2 && a3 && a4)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a5, &a5[a6], a6);
    if (a7)
    {
      mlx::core::slice_update(a2, a3, a4, __p, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84C8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2889, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84C7DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_softmax_axes(uint64_t *a1, const void ***a2, int *a3, unint64_t a4, int a5, uint64_t a6)
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

  mlx::core::softmax(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
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

void sub_25A84CAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2910, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84CA48);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_softmax_axis(uint64_t *a1, const void ***a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_12;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = *a5;
  v9 = *(a5 + 8);
  v16 = a3;
  v18 = 0;
  v19 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v16, &__p, 1uLL);
  mlx::core::softmax(a2, &__p, a4, v8, v9 | 0x100000000, &v15);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v11 = v15;
  v15 = 0uLL;
  v12 = *(v10 + 8);
  *v10 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  mlx::core::array::~array(&v15);
  return 0;
}

void sub_25A84CCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2927, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84CC80);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_softmax(uint64_t *a1, const void ***a2, int a3, uint64_t a4)
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

  mlx::core::softmax(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
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

void sub_25A84CEB0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2942, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84CE44);
  }

  _Unwind_Resume(a1);
}

void mlx_sort_axis(uint64_t *a1, const void ***a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::sort(a2, a3, *a4, *(a4 + 8) | 0x100000000);
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

void sub_25A84D054(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2953, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84CFE8);
  }

  _Unwind_Resume(a1);
}

void mlx_sort(uint64_t *a1, const void ***a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sort(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A84D1F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2963, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84D188);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_split(char ***a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_8;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::split(&v9, this, a3, a4, *a5, *(a5 + 8) | 0x100000000);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v6 = v9;
  v6[2] = v10;
  v9 = 0uLL;
  v10 = 0;
  v11 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
  return 0;
}

void sub_25A84D3B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 2980, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A84D34CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_split_sections(char ***a1, uint64_t **a2, int *a3, unint64_t a4, uint64_t a5, uint64_t a6)
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
  if (!a6)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::split(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v17);
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v10 = v17;
  v10[2] = v18;
  v17 = 0uLL;
  v18 = 0;
  v19 = &v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A84D5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    v17 = (*(*v16 + 16))(v16);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3001, v17, v18, v19, v20, v21, v22);
    __cxa_end_catch();
    JUMPOUT(0x25A84D54CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_sqrt(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::sqrt(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A84D7B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3011, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84D744);
  }

  _Unwind_Resume(a1);
}

void mlx_square(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::square(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A84D950(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3022, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84D8E4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_squeeze_axes(uint64_t *a1, std::string::size_type *a2, int *a3, unint64_t a4, uint64_t a5)
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

  mlx::core::squeeze(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v17);
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

void sub_25A84DB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3041, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84DAB8);
  }

  _Unwind_Resume(a1);
}

void mlx_squeeze_axis(uint64_t *a1, std::string::size_type *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::squeeze(a2, a3, *a4, *(a4 + 8) | 0x100000000);
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

void sub_25A84DD18(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3055, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84DCACLL);
  }

  _Unwind_Resume(a1);
}

void mlx_squeeze(uint64_t *a1, uint64_t **this, uint64_t a3)
{
  if (this)
  {
    if (a3)
    {
      mlx::core::squeeze(this, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A84DEB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3066, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84DE4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_stack_axis(uint64_t *a1, const void ****a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::stack(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
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

void sub_25A84E05C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3082, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84DFF0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_stack(uint64_t *a1, const void ****a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_10;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::stack(a2, *a3, *(a3 + 8) | 0x100000000, &v9);
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

void sub_25A84E1FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3094, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84E190);
  }

  _Unwind_Resume(a1);
}

void mlx_std_axes(uint64_t *a1, std::string::size_type *a2, int *a3, unint64_t a4, char a5, int a6, uint64_t a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, &a3[a4], a4);
    if (a7)
    {
      mlx::core::std(a2, __p, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84E408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3117, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84E378);
  }

  _Unwind_Resume(a1);
}

void mlx_std_axis(uint64_t *a1, std::string::size_type *a2, int a3, char a4, int a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::std(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
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

void sub_25A84E5E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3135, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84E578);
  }

  _Unwind_Resume(a1);
}

void mlx_std(uint64_t *a1, std::string::size_type *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::std(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
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

void sub_25A84E78C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3151, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84E720);
  }

  _Unwind_Resume(a1);
}

void mlx_stop_gradient(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::stop_gradient(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A84E92C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3162, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84E8C0);
  }

  _Unwind_Resume(a1);
}

void mlx_subtract(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::subtract(a2, a3, *a4, *(a4 + 8) | 0x100000000);
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

void sub_25A84EAF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3178, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84EA68);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_sum_axes(uint64_t *a1, std::string::size_type *a2, int *a3, unint64_t a4, char a5, uint64_t a6)
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

  mlx::core::sum(a2, &__p, a5, *a6, *(a6 + 8) | 0x100000000, &v19);
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

void sub_25A84ECF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3199, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A84EC64);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_sum_axis(uint64_t *a1, std::string::size_type *a2, int a3, char a4, uint64_t a5)
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

  mlx::core::sum(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
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

void sub_25A84EEC8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3215, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84EE5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_sum(uint64_t *a1, std::string::size_type *a2, uint64_t a3, uint64_t a4)
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

  mlx::core::sum(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
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

void sub_25A84F06C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3226, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84F000);
  }

  _Unwind_Resume(a1);
}

void mlx_swapaxes(uint64_t *a1, std::string::size_type *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::swapaxes(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
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

void sub_25A84F214(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3243, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84F1A8);
  }

  _Unwind_Resume(a1);
}

void mlx_take_axis(uint64_t *a1, const void ***a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::take(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
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

void sub_25A84F3DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3263, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84F354);
  }

  _Unwind_Resume(a1);
}

void mlx_take(uint64_t *a1, const void ***a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::take(a2, a3, *a4, *(a4 + 8) | 0x100000000);
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

void sub_25A84F5A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3279, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84F51CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_take_along_axis(uint64_t *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::take_along_axis(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
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

void sub_25A84F770(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3299, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84F6E8);
  }

  _Unwind_Resume(a1);
}

void mlx_tan(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::tan(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A84F914(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3308, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84F8A8);
  }

  _Unwind_Resume(a1);
}

void mlx_tanh(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::tanh(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A84FAB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3318, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84FA48);
  }

  _Unwind_Resume(a1);
}

void mlx_tensordot(uint64_t *a1, uint64_t **a2, uint64_t **a3, int *a4, unint64_t a5, int *a6, unint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(v16, 0, sizeof(v16));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, a4, &a4[a5], a5);
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a6, &a6[a7], a7);
    if (a8)
    {
      mlx::core::tensordot(a2, a3, v16, __p, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A84FD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3342, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A84FC64);
  }

  _Unwind_Resume(a1);
}

void mlx_tensordot_axis(uint64_t *a1, uint64_t **a2, uint64_t **a3, unsigned int a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::tensordot(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
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

void sub_25A84FF28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3359, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A84FEA0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_tile(uint64_t *a1, const void ***a2, int *a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(&__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a3, &a3[a4], a4);
  if (!a5)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "expected a non-empty mlx_stream");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::tile(a2, &__p, *a5, *(a5 + 8) | 0x100000000, &v15);
  v8 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v9 = v15;
  v15 = 0uLL;
  v10 = *(v8 + 8);
  *v8 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::~array(&v15);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return 0;
}

void sub_25A850120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3378, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A850094);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_topk_axis(uint64_t *a1, uint64_t **this, uint64_t a3, uint64_t a4, uint64_t a5)
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

  mlx::core::topk(this, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
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

void sub_25A8502F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3393, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A850288);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_topk(uint64_t *a1, const void ***a2, uint64_t a3, uint64_t a4)
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

  mlx::core::topk(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
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

void sub_25A850498(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3404, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A85042CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_trace(uint64_t *a1, uint64_t **a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a2)
  {
    if (a7)
    {
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

void sub_25A850654(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3428, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8505E8);
  }

  _Unwind_Resume(a1);
}

void mlx_transpose_axes(uint64_t *a1, std::string::size_type *a2, int *a3, unint64_t a4, uint64_t a5)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, &a3[a4], a4);
    if (a5)
    {
      mlx::core::transpose(a2, __p, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v7, "expected a non-empty mlx_array");
  __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A850848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3447, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A8507BCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_transpose(uint64_t *a1, std::string::size_type *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::transpose(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A850A14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3458, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8509A8);
  }

  _Unwind_Resume(a1);
}

void mlx_tri(uint64_t *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (a6)
  {
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A850BAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3475, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A850B5CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_tril(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2[1];
    v7[0] = *a2;
    v7[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      mlx::core::tril(v7, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_array");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A850D8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = (*(*v13 + 16))(v13);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3486, v14, v15, v16, v17, v18, v19);
    __cxa_end_catch();
    JUMPOUT(0x25A850D00);
  }

  _Unwind_Resume(a1);
}

void mlx_triu(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2[1];
    v7[0] = *a2;
    v7[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      mlx::core::triu(v7, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_array");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A850F94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = (*(*v13 + 16))(v13);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3497, v14, v15, v16, v17, v18, v19);
    __cxa_end_catch();
    JUMPOUT(0x25A850F08);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_unflatten(uint64_t *a1, std::string::size_type *a2, uint64_t a3, int *a4, unint64_t a5, uint64_t a6)
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
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a4, &a4[a5], a5);
  if (!a6)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "expected a non-empty mlx_stream");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::unflatten(a2, a3, &__p, *a6, *(a6 + 8) | 0x100000000, &v19);
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

void sub_25A8511B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3518, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A851128);
  }

  _Unwind_Resume(a1);
}

void mlx_var_axes(uint64_t *a1, std::string::size_type *a2, int *a3, unint64_t a4, char a5, int a6, uint64_t a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, &a3[a4], a4);
    if (a7)
    {
      mlx::core::var(a2, __p, a5, a6, *a7, *(a7 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8513EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3541, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A85135CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_var_axis(uint64_t *a1, std::string::size_type *a2, int a3, char a4, int a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      mlx::core::var(a2, a3, a4, a5, *a6, *(a6 + 8) | 0x100000000);
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

void sub_25A8515C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3559, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A85155CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_var(uint64_t *a1, std::string::size_type *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      mlx::core::var(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
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

void sub_25A851770(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3575, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A851704);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_view(uint64_t *a1, void *a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  LODWORD(v12) = v4;
  BYTE4(v12) = BYTE4(v4);
  if (!a4)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "expected a non-empty mlx_stream");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::view(a2, &v12, *a4, *(a4 + 8) | 0x100000000, &v13);
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
  return 0;
}

void sub_25A85194C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3591, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A8518C0);
  }

  _Unwind_Resume(a1);
}

void mlx_where(uint64_t *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (a2 && a3 && a4)
  {
    if (a5)
    {
      mlx::core::where(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
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

void sub_25A851B38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3611, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A851A94);
  }

  _Unwind_Resume(a1);
}

void mlx_zeros(uint64_t *a1, int *a2, unint64_t a3, int a4, uint64_t a5)
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

void sub_25A851CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3630, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A851CACLL);
  }

  _Unwind_Resume(a1);
}

void mlx_zeros_like(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::zeros_like(a2, *a3, *(a3 + 8) | 0x100000000);
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

void sub_25A851EB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/ops.cpp", 3641, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A851E48);
  }

  _Unwind_Resume(a1);
}

void mlx_vector_array_new()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_25A851FBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 14, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A851FA8);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_array_set(uint64_t ***a1, uint64_t **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return 0;
}

void sub_25A85210C(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x20C40960023A9);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 25, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8520C0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_array_free(void **a1)
{
  if (a1)
  {
    v3 = a1;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x25F851760](a1, 0x20C40960023A9);
  }

  return 0;
}

void sub_25A8522C0(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 51, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A852254);
  }

  _Unwind_Resume(a1);
}

void mlx_vector_array_new_value(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1[1];
    v5[0] = *a1;
    v5[1] = v1;
    if (v1)
    {
      atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = 0uLL;
    v4 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v3, v5, &v6, 1uLL);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A852470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 60, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A852400);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_vector_array_set_data(uint64_t ***a1, __int128 **a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      std::vector<mlx::core::array>::push_back[abi:ne200100](&v9, *a2++);
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &v9)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v6, v9, v10, (v10 - v9) >> 4);
  }

  v12 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v12);
  return 0;
}

void sub_25A85264C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  MEMORY[0x25F851760](v12, 0x20C40960023A9);
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 76, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A8525FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_array_set_value(char ***a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = a2[1];
  v10[0] = *a2;
  v10[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = 0uLL;
  v8 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v7, v10, &v11, 1uLL);
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
  mlx::core::array::~array(v10);
  return 0;
}

void sub_25A85285C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, char a14)
{
  a13 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a13);
  mlx::core::array::~array(&a14);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    v17 = (*(*v16 + 16))(v16);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 89, v17, v18, v19, v20, v21, v22);
    __cxa_end_catch();
    JUMPOUT(0x25A8527F0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_array_append_data(void *a1, __int128 **a2, uint64_t a3)
{
  if (a3)
  {
    if (a1)
    {
      v4 = a3;
      while (*a2)
      {
        std::vector<mlx::core::array>::push_back[abi:ne200100](a1, *a2++);
        if (!--v4)
        {
          return 0;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0;
}

void sub_25A8529D8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 104, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A852970);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_array_append_value(void *a1, __int128 *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_6;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::vector<mlx::core::array>::push_back[abi:ne200100](a1, a2);
  return 0;
}

void sub_25A852AF0(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 116, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A852A88);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_array_get(__int128 **a1, uint64_t *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 >= (a2[1] - *a2) >> 4)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *a1;
  if (!v3)
  {
    operator new();
  }

  mlx::core::array::operator=(v3, (*a2 + 16 * a3));
  return 0;
}

void sub_25A852C54(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 127, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A852BFCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_array_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return (a1[1] - *a1) >> 4;
}

void sub_25A852D48(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 137, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A852CFCLL);
  }

  _Unwind_Resume(exception_object);
}

void mlx_vector_vector_array_new()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_25A852E38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 146, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A852E24);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_vector_array_set(void ****a1, uint64_t ***a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<std::vector<mlx::core::array>>::__assign_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  return 0;
}

void sub_25A852FA0(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x20C40960023A9);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 157, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A852F54);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_vector_array_free(void ***a1)
{
  if (a1)
  {
    v3 = a1;
    std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x25F851760](a1, 0x20C40960023A9);
  }

  return 0;
}

void sub_25A853154(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 184, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8530E8);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](uint64_t a1, void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<mlx::core::array>>::__emplace_back_slow_path<std::vector<mlx::core::array> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<mlx::core::array>>::__construct_one_at_end[abi:ne200100]<std::vector<mlx::core::array> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void mlx_vector_vector_array_new_value(void **a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(v4, 0, sizeof(v4));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v4, *a1, a1[1], (a1[1] - *a1) >> 4);
    v2 = 0uLL;
    v3 = 0;
    std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*>(&v2, v4, &v5, 1uLL);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A853350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    v17 = (*(*v16 + 16))(v16);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 194, v17, v18, v19, v20, v21, v22);
    __cxa_end_catch();
    JUMPOUT(0x25A8532E0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_vector_array_set_data(void ****a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      if (!*a2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](&v9, *a2++);
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &v9)
  {
    std::vector<std::vector<mlx::core::array>>::__assign_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(v6, v9, v10, 0xAAAAAAAAAAAAAAABLL * (v10 - v9));
  }

  v12 = &v9;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&v12);
  return 0;
}

void sub_25A85354C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void ***a12)
{
  MEMORY[0x25F851760](v12, 0x20C40960023A9);
  a12 = &a9;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 210, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A8534FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_vector_array_set_value(void ****a1, void **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v9, 0, sizeof(v9));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v9, *a2, a2[1], (a2[1] - *a2) >> 4);
  v6 = 0uLL;
  v7 = 0;
  std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*>(&v6, v9, &v10, 1uLL);
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<std::vector<mlx::core::array>>::__vdeallocate(*a1);
  *v3 = v6;
  v3[2] = v7;
  v6 = 0uLL;
  v7 = 0;
  v8 = &v6;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v8);
  return 0;
}

void sub_25A85376C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char a13)
{
  a12 = &a9;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(a1);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 225, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A853700);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_vector_array_append_data(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (a1)
    {
      v4 = a3;
      while (*a2)
      {
        std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](a1, *a2++);
        if (!--v4)
        {
          return 0;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    }

    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0;
}

void sub_25A8538F0(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 241, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A853888);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_vector_array_append_value(uint64_t a1, void **a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    goto LABEL_6;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::vector<std::vector<mlx::core::array>>::push_back[abi:ne200100](a1, a2);
  return 0;
}

void sub_25A853A08(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 253, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8539A0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_vector_array_get(uint64_t *a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = (*a2 + 24 * a3);
  v4 = *a1;
  if (!v4)
  {
    operator new();
  }

  if (v4 != v3)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v4, *v3, v3[1], (v3[1] - *v3) >> 4);
  }

  return 0;
}

void sub_25A853B8C(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x20C40960023A9);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 266, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A853B38);
  }

  _Unwind_Resume(a1);
}

unint64_t mlx_vector_vector_array_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
}

void sub_25A853CB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 276, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A853C64);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_vector_int_set(uint64_t **a1, char **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return 0;
}

void sub_25A853EAC(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x10C402FEFCB83);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 296, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A853E60);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_int_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x25F851760](a1, 0x10C402FEFCB83);
  }

  return 0;
}

void sub_25A85403C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 320, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A853FECLL);
  }

  _Unwind_Resume(exception_object);
}

void mlx_vector_int_new_value(int a1)
{
  v1 = a1;
  v3 = 0;
  v2 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v2, &v1, &v2, 1uLL);
  operator new();
}

void sub_25A854138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 329, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A854128);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_vector_int_set_data(void ***a1, int *a2, uint64_t a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      std::vector<int>::push_back[abi:ne200100](&__p, a2++);
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &__p)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, __p, v9, (v9 - __p) >> 2);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A854294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x25F851760](v11, 0x10C402FEFCB83);
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 343, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A854280);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_int_set_value(uint64_t *a1, int a2)
{
  v6 = a2;
  v8 = 0;
  v7 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v7, &v6, &v7, 1uLL);
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v4 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v4;
    operator delete(v4);
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  *v3 = v7;
  *(v3 + 16) = v8;
  return 0;
}

void sub_25A8543EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 353, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A8543DCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_vector_int_append_data(const void **a1, int *a2, uint64_t a3)
{
  if (a3)
  {
    if (!a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = a3;
    do
    {
      std::vector<int>::push_back[abi:ne200100](a1, a2++);
      --v4;
    }

    while (v4);
  }

  return 0;
}

void sub_25A854508(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 366, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A8544BCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_vector_int_append_value(const void **a1, int a2)
{
  v4 = a2;
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::vector<int>::push_back[abi:ne200100](a1, &v4);
  return 0;
}

void sub_25A85460C(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 376, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8545BCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_int_get(_DWORD *a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3 >= (a2[1] - *a2) >> 2)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  *a1 = *(*a2 + 4 * a3);
  return 0;
}

void sub_25A85471C(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 387, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8546C4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_int_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_int");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return (a1[1] - *a1) >> 2;
}

void sub_25A854810(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 397, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A8547C4);
  }

  _Unwind_Resume(exception_object);
}

void mlx_vector_string_new()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_25A854900(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 406, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A8548ECLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_string_set(std::vector<std::string> **a1, std::string **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return 0;
}

void sub_25A854A68(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x20C40960023A9);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 417, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A854A1CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_string_free(void **a1)
{
  if (a1)
  {
    v3 = a1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x25F851760](a1, 0x20C40960023A9);
  }

  return 0;
}

void sub_25A854C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 443, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A854BCCLL);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void mlx_vector_string_new_value(char *__s)
{
  v4 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v1, __p, &v4, 1uLL);
  operator new();
}

void sub_25A854ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = (*(*v20 + 16))(v20);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 452, v21, v22, v23, v24, v25, v26);
    __cxa_end_catch();
    JUMPOUT(0x25A854E9CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_string_set_data(std::string ***a1, char **a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, *a2);
      std::vector<std::string>::push_back[abi:ne200100](&v10, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      ++a2;
      --v4;
    }

    while (v4);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v6 != &v10)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v6, v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3));
  }

  __p[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return 0;
}

void sub_25A855090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x25F851760](v15, 0x20C40960023A9);
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 468, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A85507CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_string_set_value(std::vector<std::string> **a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = 0uLL;
  v6 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v5, __p, &v10, 1uLL);
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<std::string>::__vdeallocate(*a1);
  *&v3->__begin_ = v5;
  v3->__end_cap_.__value_ = v6;
  v5 = 0uLL;
  v6 = 0;
  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_25A855254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = (*(*v20 + 16))(v20);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 480, v21, v22, v23, v24, v25, v26);
    __cxa_end_catch();
    JUMPOUT(0x25A855228);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_vector_string_append_data(uint64_t a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    if (!a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = a3;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, *a2);
      std::vector<std::string>::push_back[abi:ne200100](a1, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      ++a2;
      --v4;
    }

    while (v4);
  }

  return 0;
}

void sub_25A8553C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 495, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A855378);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_vector_string_append_value(uint64_t a1, char *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  std::vector<std::string>::push_back[abi:ne200100](a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_25A855504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 507, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A8554B4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_vector_string_get(unint64_t *a1, void *a2, unint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *a2 + 24 * a3;
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  *a1 = v3;
  return 0;
}

void sub_25A855654(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 518, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8555FCLL);
  }

  _Unwind_Resume(a1);
}

unint64_t mlx_vector_string_size(void *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
}

void sub_25A855754(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/vector.cpp", 528, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A855708);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::vector<mlx::core::array>>::__assign_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(void ***a1, uint64_t **a2, uint64_t **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a4)
  {
    std::vector<std::vector<mlx::core::array>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * (a1[2] - *a1);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<mlx::core::array> *,std::vector<mlx::core::array> *,std::vector<mlx::core::array> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<mlx::core::array> *,std::vector<mlx::core::array> *,std::vector<mlx::core::array> *>(&v15, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<mlx::core::array>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(uint64_t a1, void **a2, void **a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t **std::__copy_impl::operator()[abi:ne200100]<std::vector<mlx::core::array> *,std::vector<mlx::core::array> *,std::vector<mlx::core::array> *>(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array>*,std::vector<mlx::core::array>*>(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A855CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<mlx::core::array>>::__construct_one_at_end[abi:ne200100]<std::vector<mlx::core::array> const&>(uint64_t a1, void **a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<mlx::core::array>>::__emplace_back_slow_path<std::vector<mlx::core::array> const&>(char **a1, void **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>((24 * v2), *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<mlx::core::array>>::~__split_buffer(&v14);
  return v8;
}

void sub_25A855E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<mlx::core::array>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<mlx::core::array>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<mlx::core::array>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<mlx::core::array>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t *std::vector<std::vector<mlx::core::array>>::__init_with_size[abi:ne200100]<std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<mlx::core::array>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A855F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<mlx::core::array>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array> const*,std::vector<mlx::core::array> const*,std::vector<mlx::core::array>*>(uint64_t a1, void **a2, void **a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<mlx::core::array>>,std::vector<mlx::core::array>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void mlx_load_reader(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v7[0] = v4;
    v7[1] = v3;
    if (a3)
    {
      mlx::core::load(v7, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_io_reader");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A856330(_Unwind_Exception *a1, int a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 18, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A8562A4);
  }

  _Unwind_Resume(a1);
}

void mlx_load(uint64_t *a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  if (a3)
  {
    mlx::core::load();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8564F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 28, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A8564A0);
  }

  _Unwind_Resume(a1);
}

void mlx_load_safetensors_reader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *(a3 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      mlx::core::load_safetensors();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_io_reader");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A856750(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x25F851760](v5, 0x10A0C408EF24B1CLL);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(va);
  if (a2 == 1)
  {
    v8 = __cxa_begin_catch(a1);
    v9 = (*(*v8 + 16))(v8);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 46, v9, v10, v11, v12, v13, v14);
    __cxa_end_catch();
    JUMPOUT(0x25A8566C4);
  }

  _Unwind_Resume(a1);
}

void mlx_load_safetensors(int a1, int a2, char *__s, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  if (a4)
  {
    mlx::core::load_safetensors();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8569B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  MEMORY[0x25F851760](v17, 0x10A0C408EF24B1CLL);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v16);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(&a16);
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = (*(*v20 + 16))(v20);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 64, v21, v22, v23, v24, v25, v26);
    __cxa_end_catch();
    JUMPOUT(0x25A856960);
  }

  _Unwind_Resume(a1);
}

void mlx_save_writer(uint64_t *a1, void *a2, mlx::core *a3)
{
  if (a1)
  {
    v3 = *a1;
    v4 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v9[0] = v3;
    v9[1] = v4;
    if (a2)
    {
      v5 = a2[1];
      v8[0] = *a2;
      v8[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      mlx::core::save(v9, v8, a3);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v6, "expected a non-empty mlx_io_writer");
  __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A856B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a2 == 1)
  {
    v15 = __cxa_begin_catch(exception_object);
    v16 = (*(*v15 + 16))(v15);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 73, v16, v17, v18, v19, v20, v21);
    __cxa_end_catch();
    JUMPOUT(0x25A856B08);
  }

  _Unwind_Resume(exception_object);
}

void mlx_save(char *__s, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  if (a2)
  {
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    mlx::core::save(&__p, v5);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A856D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(exception_object);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 82, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A856CC8);
  }

  _Unwind_Resume(exception_object);
}

void mlx_save_safetensors_writer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v4;
    v12 = v5;
    if (a2)
    {
      std::unordered_map<std::string,mlx::core::array>::unordered_map(v10, a2);
      if (a3)
      {
        std::unordered_map<std::string,std::string>::unordered_map(&v9, a3);
        mlx::core::save_safetensors();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v6, "expected a non-empty mlx_io_writer");
  __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A856F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  __cxa_free_exception(v14);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(&a14);
  if (*(v15 - 40))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v15 - 40));
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 97, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A856E50);
  }

  _Unwind_Resume(a1);
}

void mlx_save_safetensors(char *__s, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v9, __s);
  if (a2)
  {
    std::unordered_map<std::string,mlx::core::array>::unordered_map(v8, a2);
    if (a3)
    {
      std::unordered_map<std::string,std::string>::unordered_map(v7, a3);
      mlx::core::save_safetensors();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v5, "expected a non-empty mlx_map_string_to_array");
  __cxa_throw(v5, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A857114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(&a15);
  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/io.cpp", 112, v20, v21, v22, v23, v24, v25);
    __cxa_end_catch();
    JUMPOUT(0x25A857088);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,mlx::core::array &>::operator=[abi:ne200100]<std::string const,mlx::core::array,0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_multi<std::pair<std::string const,mlx::core::array> const&>(a1);
  }
}

void sub_25A8572D0(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 2);
  a2[1] = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_prepare(a1, v4, a2 + 2);
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t std::pair<std::string &,mlx::core::array &>::operator=[abi:ne200100]<std::string const,mlx::core::array,0>(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  data = a2[1].__r_.__value_.__l.__data_;
  if (*v4 != data)
  {
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
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_prepare(unint64_t a1, unint64_t a2, const void **a3)
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
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__rehash<false>(unint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__do_rehash<false>(void **a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  a1[1] = 0;
}

void sub_25A857920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 2), (v4 + 2));
        std::string::operator=((v8 + 5), (v4 + 5));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>(a1);
  }
}

void sub_25A857A98(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void sub_25A857B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_25A857C30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_25A857F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx_fft_fft(uint64_t *a1, int ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  mlx::core::fft::fft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
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

void sub_25A8580A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 22, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A85803CLL);
  }

  _Unwind_Resume(a1);
}

void mlx::core::fft::fft(int ***a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, int ***a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::fftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A858210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_fft2(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::fftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A8583DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 44, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A85834CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fft_fftn(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::fftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A85865C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 66, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A8585CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fft_ifft(uint64_t *a1, int ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  mlx::core::fft::ifft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
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

void sub_25A858850(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 82, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8587E4);
  }

  _Unwind_Resume(a1);
}

void mlx::core::fft::ifft(int ***a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, int ***a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::ifftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A8589B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_ifft2(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::ifftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A858B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 104, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A858AF4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fft_ifftn(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::ifftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A858E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 126, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A858D74);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fft_irfft(uint64_t *a1, int ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  mlx::core::fft::irfft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
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

void sub_25A858FF8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 142, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A858F8CLL);
  }

  _Unwind_Resume(a1);
}

void mlx::core::fft::irfft(int ***a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, int ***a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::irfftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A859160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_irfft2(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::irfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A85932C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 164, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A85929CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fft_irfftn(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::irfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A8595AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 186, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A85951CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fft_rfft(uint64_t *a1, int ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  mlx::core::fft::rfft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
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

void sub_25A8597A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 202, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A859734);
  }

  _Unwind_Resume(a1);
}

void mlx::core::fft::rfft(int ***a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, int ***a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::rfftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A859908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_rfft2(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::rfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A859AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 224, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A859A44);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_fft_rfftn(uint64_t *a1, int ***a2, int *a3, unint64_t a4, int *a5, unint64_t a6, uint64_t a7)
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

  mlx::core::fft::rfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
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

void sub_25A859D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/fft.cpp", 246, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A859CC4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_device_tostring(std::string **a1, _DWORD *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
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

void sub_25A85A100(_Unwind_Exception *a1, int a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  MEMORY[0x25F851760](v22, 0x1012C40EC159624);
  operator delete(__p);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x25F8516C0](va);
  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = (*(*v25 + 16))(v25);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/device.cpp", 17, v26, v27, v28, v29, v30, v31);
    __cxa_end_catch();
    JUMPOUT(0x25A85A0A0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_device_set(void **a1, void *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  *v2 = *a2;
  return result;
}

void sub_25A85A360(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/device.cpp", 40, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85A314);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_device_get_index(_DWORD *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = *(a2 + 4);
  return result;
}

void sub_25A85A458(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/device.cpp", 50, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A85A40CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_device_get_type(_DWORD *a1, int *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  return result;
}

void sub_25A85A55C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/device.cpp", 60, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A85A510);
  }

  _Unwind_Resume(exception_object);
}

BOOL mlx_device_equal(_DWORD *a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return mlx::core::operator==(a1, a2);
}

uint64_t mlx_get_default_device(mlx::core *a1)
{
  v2 = mlx::core::default_device(a1);
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  **a1 = *v2;
  return result;
}

uint64_t mlx_set_default_device(mlx::core::metal *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::set_default_device(a1);
  return 0;
}

void sub_25A85A7C4(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/device.cpp", 84, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85A778);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_device_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x1000C4000313F17);
  }

  return 0;
}

uint64_t mlx_version(uint64_t *a1)
{
  mlx::core::version(&v5);
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  v3 = v5;
  *(v2 + 16) = v6;
  *v2 = v3;
  return 0;
}

void sub_25A85A908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/version.cpp", 11, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A85A8F8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_closure_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

void sub_25A85AA4C(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x1020C40A5B76CDFLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 23, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85AA00);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09600;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_25A85ABD0(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 58, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85ABA0);
  }

  _Unwind_Resume(a1);
}

void mlx_closure_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2, a3);
  }

  operator new();
}

void sub_25A85ADC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

void sub_25A85ADE8(void *a1, int a2)
{
  __cxa_end_catch();
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = (*(*v4 + 16))(v4);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 91, v5, v6, v7, v8, v9, v10);
    __cxa_end_catch();
    JUMPOUT(0x25A85AD90);
  }

  JUMPOUT(0x25A85ADD0);
}

uint64_t mlx_closure_apply(char ***a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    goto LABEL_9;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(&v8);
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

void sub_25A85B000(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 104, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A85AF8CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_closure_new_unary(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09760;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_25A85B148(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 131, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85B118);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_kwargs_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_kwargs");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

void sub_25A85B290(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x1020C40A5B76CDFLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 151, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85B244);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_kwargs_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_kwargs_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C097E0;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_25A85B414(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 196, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85B3E4);
  }

  _Unwind_Resume(a1);
}

void mlx_closure_kwargs_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2, a3);
  }

  operator new();
}

void sub_25A85B60C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

void sub_25A85B62C(void *a1, int a2)
{
  __cxa_end_catch();
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = (*(*v4 + 16))(v4);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 240, v5, v6, v7, v8, v9, v10);
    __cxa_end_catch();
    JUMPOUT(0x25A85B5D4);
  }

  JUMPOUT(0x25A85B614);
}

uint64_t mlx_closure_kwargs_apply(char ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_kwargs");
    goto LABEL_11;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_11;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(&v9);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v6 = v9;
  v6[2] = v10;
  v9 = 0uLL;
  v10 = 0;
  v11 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
  return 0;
}

void sub_25A85B868(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 257, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A85B7D8);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_value_and_grad_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_value_and_grad");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

void sub_25A85B9C8(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x1020C40A5B76CDFLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 278, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85B97CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_value_and_grad_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_value_and_grad_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09940;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_25A85BB4C(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 321, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85BB1CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_closure_value_and_grad_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2, a3);
  }

  operator new();
}

void sub_25A85BD44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

void sub_25A85BD64(void *a1, int a2)
{
  __cxa_end_catch();
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = (*(*v4 + 16))(v4);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 367, v5, v6, v7, v8, v9, v10);
    __cxa_end_catch();
    JUMPOUT(0x25A85BD0CLL);
  }

  JUMPOUT(0x25A85BD4CLL);
}

uint64_t mlx_closure_value_and_grad_apply(uint64_t ***a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_value_and_grad");
    goto LABEL_15;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_15:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a3 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(&v11);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v7 != &v11)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v7, v11, v12, (v12 - v11) >> 4);
  }

  v8 = *a2;
  if (!*a2)
  {
    operator new();
  }

  if (v8 != &v13)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v8, v13, v14, (v14 - v13) >> 4);
  }

  v15 = &v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = &v11;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v15);
  return 0;
}

void sub_25A85BFF0(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x25F851760](v3, 0x20C40960023A9);
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 385, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A85BF7CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_custom_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

void sub_25A85C16C(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x1020C40A5B76CDFLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 406, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85C120);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_custom_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_custom_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09AA0;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_25A85C2F0(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 454, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85C2C0);
  }

  _Unwind_Resume(a1);
}

void mlx_closure_custom_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2, a3);
  }

  operator new();
}

void sub_25A85C4E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

void sub_25A85C508(void *a1, int a2)
{
  __cxa_end_catch();
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = (*(*v4 + 16))(v4);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 501, v5, v6, v7, v8, v9, v10);
    __cxa_end_catch();
    JUMPOUT(0x25A85C4B0);
  }

  JUMPOUT(0x25A85C4F0);
}

uint64_t mlx_closure_custom_apply(char ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom");
    goto LABEL_11;
  }

  if (!a3 || !a4 || !a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a2 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(&v10);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v7 = v10;
  v7[2] = v11;
  v10 = 0uLL;
  v11 = 0;
  v12 = &v10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v12);
  return 0;
}

void sub_25A85C768(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = (*(*v14 + 16))(v14);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 520, v15, v16, v17, v18, v19, v20);
    __cxa_end_catch();
    JUMPOUT(0x25A85C6BCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_custom_jvp_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_jvp");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(v2, a2);
  return 0;
}

void sub_25A85C8CC(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x1020C40A5B76CDFLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 541, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85C880);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_custom_jvp_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_custom_jvp_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09C00;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_25A85CA50(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 592, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85CA20);
  }

  _Unwind_Resume(a1);
}

void mlx_closure_custom_jvp_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2, a3);
  }

  operator new();
}

void sub_25A85CC48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

void sub_25A85CC68(void *a1, int a2)
{
  __cxa_end_catch();
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = (*(*v4 + 16))(v4);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 643, v5, v6, v7, v8, v9, v10);
    __cxa_end_catch();
    JUMPOUT(0x25A85CC10);
  }

  JUMPOUT(0x25A85CC50);
}

uint64_t mlx_closure_custom_jvp_apply(char ***a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_jvp");
    goto LABEL_13;
  }

  if (!a3 || !a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_13:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, &a5[a6], a6);
  v8 = *(a2 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(&v15);
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
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_25A85CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    v17 = (*(*v16 + 16))(v16);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 663, v17, v18, v19, v20, v21, v22);
    __cxa_end_catch();
    JUMPOUT(0x25A85CE50);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_custom_vmap_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_vmap");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(v2, a2);
  return 0;
}

void sub_25A85D060(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x1020C40A5B76CDFLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 684, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85D014);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_closure_custom_vmap_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_custom_vmap_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09D60;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void sub_25A85D1E4(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 738, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A85D1B4);
  }

  _Unwind_Resume(a1);
}

void mlx_closure_custom_vmap_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2, a3);
  }

  operator new();
}

void sub_25A85D3DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

void sub_25A85D3FC(void *a1, int a2)
{
  __cxa_end_catch();
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    v5 = (*(*v4 + 16))(v4);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 792, v5, v6, v7, v8, v9, v10);
    __cxa_end_catch();
    JUMPOUT(0x25A85D3A4);
  }

  JUMPOUT(0x25A85D3E4);
}

uint64_t mlx_closure_custom_vmap_apply(uint64_t ***a1, void ***a2, uint64_t a3, uint64_t a4, int *a5, unint64_t a6)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_vmap");
    goto LABEL_19;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_19:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, &a5[a6], a6);
  v9 = *(a3 + 24);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v10 != &v17)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v10, v17, v18, (v18 - v17) >> 4);
  }

  v11 = *a2;
  if (!*a2)
  {
    operator new();
  }

  if (v11 != &v19)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11, v19, v20, (v20 - v19) >> 2);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  __p = &v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  return 0;
}

void sub_25A85D6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  MEMORY[0x25F851760](v13, 0x10C402FEFCB83);
  std::pair<std::vector<mlx::core::array>,std::vector<int>>::~pair(&a13);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    v17 = (*(*v16 + 16))(v16);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/closure.cpp", 813, v17, v18, v19, v20, v21, v22);
    __cxa_end_catch();
    JUMPOUT(0x25A85D64CLL);
  }

  _Unwind_Resume(a1);
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85DA88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85DD60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E038(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E3A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E680(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E958(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<mlx_closure_new_func::$_0,std::allocator<mlx_closure_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09600;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_new_func::$_0,std::allocator<mlx_closure_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C096E0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C096E0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C096E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_new_unary::$_0,std::allocator<mlx_closure_new_unary::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09760;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlx_closure_new_unary::$_0,std::allocator<mlx_closure_new_unary::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "closure: expected unary input");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t std::__function::__func<mlx_closure_new_unary::$_0,std::allocator<mlx_closure_new_unary::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

mlx::core::array *mlx_array_free_(mlx::core::array *result)
{
  if (result)
  {
    mlx::core::array::~array(result);

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func::$_0,std::allocator<mlx_closure_kwargs_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C097E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func::$_0,std::allocator<mlx_closure_kwargs_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_kwargs_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_kwargs_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C098C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C098C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C098C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func::$_0,std::allocator<mlx_closure_value_and_grad_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09940;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func::$_0,std::allocator<mlx_closure_value_and_grad_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_value_and_grad_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_value_and_grad_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09A20;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09A20;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09A20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_custom_new_func::$_0,std::allocator<mlx_closure_custom_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09AA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_custom_new_func::$_0,std::allocator<mlx_closure_custom_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_custom_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_custom_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09B80;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09B80;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09B80;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func::$_0,std::allocator<mlx_closure_custom_jvp_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09C00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func::$_0,std::allocator<mlx_closure_custom_jvp_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_custom_jvp_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_custom_jvp_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09CE0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09CE0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09CE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func::$_0,std::allocator<mlx_closure_custom_vmap_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09D60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func::$_0,std::allocator<mlx_closure_custom_vmap_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_custom_vmap_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_custom_vmap_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09E40;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09E40;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09E40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A861578(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::unordered_map<std::string,std::variant<std::string,unsigned long>>::unordered_map(v35, a1);
  std::string::basic_string[abi:ne200100]<0>(v33, "architecture");
  *(v26 - 24) = v33;
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33, &std::piecewise_construct, (v26 - 24));
  if (*(v27 + 16))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v28 = (v27 + 5);
  if (*(v27 + 63) < 0)
  {
    v28 = *v28;
  }

  strncpy(v25, v28, 0x100uLL);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "max_buffer_length");
  *(v26 - 24) = v33;
  v29 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33, &std::piecewise_construct, (v26 - 24));
  if (*(v29 + 16) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(v25 + 256) = v29[5];
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "max_recommended_working_set_size");
  *(v26 - 24) = v33;
  v30 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33, &std::piecewise_construct, (v26 - 24));
  if (*(v30 + 16) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(v25 + 264) = v30[5];
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "memory_size");
  *(v26 - 24) = v33;
  v31 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33, &std::piecewise_construct, (v26 - 24));
  if (*(v31 + 16) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(v25 + 272) = v31[5];
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::~__hash_table(v35);
}

uint64_t mlx_metal_is_available(mlx::core::metal *a1)
{
  is_available = mlx::core::metal::is_available(a1);
  result = 0;
  *a1 = is_available;
  return result;
}

uint64_t mlx_metal_start_capture(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  mlx::core::metal::start_capture();
  if (v3 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_25A861858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/metal.cpp", 39, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A861848);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::variant<std::string,unsigned long>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<std::string,unsigned long>> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<std::string,unsigned long>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__construct_node_hash<std::pair<std::string const,std::variant<std::string,unsigned long>> const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_25A861C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::string,unsigned long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::variant<std::string,unsigned long>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_25A861D6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,unsigned long>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,unsigned long>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286C09EC0[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_286C09EB0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEmEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSD_mEEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEmEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJSD_mEEEEEEDcSN_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::string,unsigned long>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::string,unsigned long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_25A862234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx_array_tostring(std::string **a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = a2[1];
  v11[0] = *a2;
  v11[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::operator<<(&v12, v11);
  mlx::core::array::~array(v11);
  if ((v19 & 0x10) != 0)
  {
    v6 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v6 = v15;
    }

    locale = v14[4].__locale_;
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v5 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_17;
    }

    locale = v14[1].__locale_;
    v6 = v14[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v6 - locale;
  if (v5)
  {
    memmove(&__p, locale, v5);
  }

LABEL_17:
  __p.__r_.__value_.__s.__data_[v5] = 0;
  if (!*a1)
  {
    operator new();
  }

  std::string::operator=(*a1, &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v20);
  return 0;
}

void sub_25A862540(_Unwind_Exception *a1, int a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  MEMORY[0x25F851760](v24, 0x1012C40EC159624);
  operator delete(__p);
  std::ostringstream::~ostringstream(&a11, MEMORY[0x277D82828]);
  MEMORY[0x25F8516C0](va);
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = (*(*v27 + 16))(v27);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 22, v28, v29, v30, v31, v32, v33);
    __cxa_end_catch();
    JUMPOUT(0x25A8624E0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_free(mlx::core::array *a1)
{
  if (a1)
  {
    mlx::core::array::~array(a1);
    MEMORY[0x25F851760]();
  }

  return 0;
}

uint64_t mlx_array_set(uint64_t **a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v3 = *a2;
  if (*v2 != *a2)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = v2[1];
    *v2 = v3;
    v2[1] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return 0;
}

void sub_25A862770(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 50, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A862720);
  }

  _Unwind_Resume(a1);
}

void sub_25A862894(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 59, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A862884);
  }

  _Unwind_Resume(a1);
}

void sub_25A862990(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 68, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A86297CLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A862AB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 76, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A862AA4);
  }

  _Unwind_Resume(a1);
}

void sub_25A862BB0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 85, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A862B9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_25A862CDC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 93, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A862CC8);
  }

  _Unwind_Resume(a1);
}

void sub_25A862DF4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 105, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A862DE4);
  }

  _Unwind_Resume(a1);
}

void sub_25A862EFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  mlx::core::array::~array(va);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    v7 = (*(*v6 + 16))(v6);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 117, v7, v8, v9, v10, v11, v12);
    __cxa_end_catch();
    JUMPOUT(0x25A862EE4);
  }

  _Unwind_Resume(a1);
}

void sub_25A862FEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 128, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A862FD8);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_set_complex(uint64_t *a1, float a2, float a3)
{
  v9 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  mlx::core::array::array(v8, &v9, 0x80000000DLL);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = *v8;
  v8[0] = 0;
  v8[1] = 0;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(v8);
  return 0;
}

void sub_25A86310C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 141, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8630FCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_array_new_complex(float a1, float a2)
{
  v3 = __PAIR64__(LODWORD(a2), LODWORD(a1));
  mlx::core::array::array(v2, &v3, 0x80000000DLL);
  operator new();
}

void sub_25A863200(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 151, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A8631ECLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_set_data(uint64_t *a1, unsigned __int8 *a2, char *__src, uint64_t a4, int a5)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(&v29, __src, &__src[4 * a4], a4);
  switch(v12)
  {
    case 0:
      memset(v27, 0, sizeof(v27));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v27, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<BOOL *>(&v28, a2, v27, v12 & 0xFFFFFFFFFFLL);
    case 1:
      memset(v26, 0, sizeof(v26));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v26, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<unsigned char *>(&v28, a2, v26, v12 & 0xFFFFFFFFFFLL);
    case 2:
      memset(v25, 0, sizeof(v25));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v25, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<unsigned short *>(&v28, a2, v25, v12 & 0xFFFFFFFFFFLL);
    case 3:
      memset(v24, 0, sizeof(v24));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v24, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<unsigned int *>(&v28, a2, v24, v12 & 0xFFFFFFFFFFLL);
    case 4:
      memset(v23, 0, sizeof(v23));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v23, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<unsigned long long *>(&v28, a2, v23, v12 & 0xFFFFFFFFFFLL);
    case 5:
      memset(v22, 0, sizeof(v22));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v22, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<signed char *>(&v28, a2, v22, v12 & 0xFFFFFFFFFFLL);
    case 6:
      memset(v21, 0, sizeof(v21));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v21, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<short *>(&v28, a2, v21, v12 & 0xFFFFFFFFFFLL);
    case 7:
      memset(v20, 0, sizeof(v20));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v20, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<int *>(&v28, a2, v20, v12 & 0xFFFFFFFFFFLL);
    case 8:
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<long long *>(&v28, a2, __p, v12 & 0xFFFFFFFFFFLL);
    case 9:
      memset(v18, 0, sizeof(v18));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v18, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<half *>(&v28, a2, v18, v12 & 0xFFFFFFFFFFLL);
    case 10:
      memset(v17, 0, sizeof(v17));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v17, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<float *>(&v28, a2, v17, v12 & 0xFFFFFFFFFFLL);
    case 11:
      memset(v16, 0, sizeof(v16));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v16, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<double *>(&v28, a2, v16, v12 & 0xFFFFFFFFFFLL);
    case 12:
      memset(v15, 0, sizeof(v15));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<mlx::core::_MLX_BFloat16 *>(&v28, a2, v15, v12 & 0xFFFFFFFFFFLL);
    case 13:
      memset(v14, 0, sizeof(v14));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v14, v29, v30, (v30 - v29) >> 2);
      mlx::core::array::array<mlx::core::complex64_t *>(&v28, a2, v14, v12 & 0xFFFFFFFFFFLL);
    default:
      _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 229, "unknown data type", v7, v8, v9, v10, v11);
      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      return 1;
  }
}

void sub_25A863B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  mlx::core::array::~array((v34 - 80));
  if (__p)
  {
    operator delete(__p);
  }

  v37 = *(v34 - 56);
  if (v37)
  {
    *(v34 - 48) = v37;
    operator delete(v37);
  }

  if (a2 == 1)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = (*(*v38 + 16))(v38);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 233, v39, v40, v41, v42, v43, v44);
    __cxa_end_catch();
    JUMPOUT(0x25A863B50);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_new_data(unsigned __int8 *a1, char *__src, uint64_t a3, int a4)
{
  v5 = 0;
  if (mlx_array_set_data(&v5, a1, __src, a3, a4))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t mlx_array_itemsize(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 60);
}

void sub_25A863FEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 259, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A863FA0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_size(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 48);
}

void sub_25A8640DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 267, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A864090);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_nbytes(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 60) * *(*a1 + 48);
}

void sub_25A8641D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 275, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A864188);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_ndim(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return (*(*a1 + 8) - **a1) >> 2;
}

void sub_25A8642CC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 283, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A864280);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_shape(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return **a1;
}

void sub_25A8643BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 291, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A864370);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_strides(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 24);
}

void sub_25A8644AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 299, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A864460);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_dim(uint64_t **a1, unsigned int a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return mlx::core::array::shape(a1, a2);
}

void sub_25A864598(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 307, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86454CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_dtype(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_25A864694(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 315, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A864648);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_eval(mlx::core::array *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::array::eval(a1);
  return 0;
}

void sub_25A864784(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 324, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A864738);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_BOOL(_BYTE *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<BOOL>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A864884(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 334, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A864838);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::array::item<BOOL>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_uint8(_BYTE *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<BOOL>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A864A10(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 343, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8649C4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_uint16(_WORD *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned short>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A864B10(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 352, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A864AC4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::array::item<unsigned short>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_uint32(_DWORD *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned int>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A864C9C(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 361, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A864C50);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::array::item<unsigned int>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_uint64(uint64_t *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned long long>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A864E28(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 370, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A864DDCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::array::item<unsigned long long>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}