uint64_t mlx_array_item_int8(_BYTE *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<signed char>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A864FB4(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 379, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A864F68);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_int16(_WORD *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<short>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A865140(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 388, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8650F4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_int32(_DWORD *a1, mlx::core::array *a2)
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

void sub_25A8652CC(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 397, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A865280);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_int64(uint64_t *a1, mlx::core::array *a2)
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

void sub_25A8653CC(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 406, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A865380);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_float32(float *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<float>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A8654C8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 415, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86547CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_float64(double *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<double>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A865650(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 424, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A865604);
  }

  _Unwind_Resume(a1);
}

double mlx::core::array::item<double>(mlx::core::array *a1)
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

uint64_t mlx_array_item_complex64(uint64_t a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<complex float >(a2);
  result = 0;
  *a1 = v3;
  *(a1 + 4) = v5;
  return result;
}

void sub_25A8657D8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 435, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86578CLL);
  }

  _Unwind_Resume(a1);
}

float mlx::core::array::item<complex float >(mlx::core::array *a1)
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

uint64_t mlx_array_item_float16(unsigned __int16 *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<half>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A865960(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 446, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A865914);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_item_bfloat16(__int16 *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<half>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

void sub_25A865AE8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 458, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A865A9CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_array_data_BOOL(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A865BD8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 469, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A865B8CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_uint8(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A865CC8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 477, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A865C7CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_uint16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A865DB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 485, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A865D6CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_uint32(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A865EA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 493, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A865E5CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_uint64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A865F98(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 501, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A865F4CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_int8(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866088(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 509, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A86603CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_int16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866178(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 517, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A86612CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_int32(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866268(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 525, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A86621CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_int64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866358(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 533, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A86630CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_float32(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866448(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 541, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A8663FCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_float64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866538(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 549, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A8664ECLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_complex64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866628(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 557, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A8665DCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_float16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866718(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 567, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A8666CCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_array_data_bfloat16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

void sub_25A866808(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 578, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A8667BCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _mlx_array_is_available(BOOL *a1, mlx::core::array *this)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  is_available = mlx::core::array::is_available(this);
  result = 0;
  *a1 = is_available;
  return result;
}

void sub_25A866908(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 588, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8668BCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t _mlx_array_wait(mlx::core::array *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::array::wait(a1);
  return 0;
}

void sub_25A8669F8(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 598, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A8669ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t _mlx_array_is_contiguous(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = *(*a2 + 168) & 1;
  return result;
}

void sub_25A866AF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 608, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A866AACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _mlx_array_is_row_contiguous(BOOL *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = (*(*a2 + 168) & 2) != 0;
  return result;
}

void sub_25A866BF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 617, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A866BACLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _mlx_array_is_col_contiguous(BOOL *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = (*(*a2 + 168) & 4) != 0;
  return result;
}

void sub_25A866CF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 626, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A866CACLL);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_25A866F08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A866F78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<unsigned char *>(int ***a1, unsigned __int8 *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = mlx::core::allocator::malloc((*(*a1 + 60) * (*a1)[6]));
  v4[0] = &unk_286BE3468;
  v4[1] = mlx::core::allocator::free;
  v4[3] = v4;
  mlx::core::array::set_data(a1, v3, v4);
}

void sub_25A867248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A8672EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A86735C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A8673CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<unsigned long long *>(int ***a1, unint64_t *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = mlx::core::allocator::malloc((*(*a1 + 60) * (*a1)[6]));
  v4[0] = &unk_286BE3468;
  v4[1] = mlx::core::allocator::free;
  v4[3] = v4;
  mlx::core::array::set_data(a1, v3, v4);
}

void sub_25A8676D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A867778(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<signed char *>(int ***a1, unsigned __int8 *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = mlx::core::allocator::malloc((*(*a1 + 60) * (*a1)[6]));
  v4[0] = &unk_286BE3468;
  v4[1] = mlx::core::allocator::free;
  v4[3] = v4;
  mlx::core::array::set_data(a1, v3, v4);
}

void sub_25A867A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A867AEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<short *>(int ***a1, __int16 *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = mlx::core::allocator::malloc((*(*a1 + 60) * (*a1)[6]));
  v4[0] = &unk_286BE3468;
  v4[1] = mlx::core::allocator::free;
  v4[3] = v4;
  mlx::core::array::set_data(a1, v3, v4);
}

void sub_25A867DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A867E94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A867F04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<long long *>(int ***a1, uint64_t *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = mlx::core::allocator::malloc((*(*a1 + 60) * (*a1)[6]));
  v4[0] = &unk_286BE3468;
  v4[1] = mlx::core::allocator::free;
  v4[3] = v4;
  mlx::core::array::set_data(a1, v3, v4);
}

void sub_25A86820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A8682B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868320(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868390(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868400(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868470(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx_random_bernoulli(uint64_t *a1, void *a2, int *a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, &a3[a4], a4);
    if (a5)
    {
      v9 = a5[1];
      v14 = *a5;
      v15 = v9;
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
      LOBYTE(v14) = 0;
    }

    v16 = v11;
    if (a6)
    {
      mlx::core::random::bernoulli(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v12, "expected a non-empty mlx_array");
  __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A868630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 27, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A8685A4);
  }

  _Unwind_Resume(a1);
}

void mlx_random_bits(uint64_t *a1, int *a2, unint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, &a2[a3], a3);
  if (a5)
  {
    v9 = a5[1];
    v13[0] = *a5;
    v13[1] = v9;
    if (v9)
    {
      v10 = v9 + 1;
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
    LOBYTE(v13[0]) = 0;
  }

  v14 = v11;
  if (a6)
  {
    mlx::core::random::bits(__p, a4, v13, *a6, *(a6 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A868874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 48, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A868824);
  }

  _Unwind_Resume(a1);
}

void mlx_random_categorical_shape(uint64_t *a1, uint64_t **a2, mlx::core::random *a3, int *a4, unint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, &a4[a5], a5);
    if (a6)
    {
      v11 = a6[1];
      v16 = *a6;
      v17 = v11;
      if (v11)
      {
        v12 = (v11 + 8);
        v13 = 1;
        atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
      LOBYTE(v16) = 0;
    }

    v18 = v13;
    if (a7)
    {
      mlx::core::random::categorical(a2, a3, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
  __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A868AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 71, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A868A64);
  }

  _Unwind_Resume(a1);
}

void mlx_random_categorical_num_samples(uint64_t *a1, uint64_t *a2, mlx::core::random *this, int a4, uint64_t *a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      v6 = a5[1];
      v11 = *a5;
      v12 = v6;
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
      LOBYTE(v11) = 0;
    }

    v13 = v8;
    if (a6)
    {
      mlx::core::random::categorical(a2, this);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v9, "expected a non-empty mlx_array");
  __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A868D4C(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 93, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A868CC0);
  }

  _Unwind_Resume(a1);
}

void mlx_random_categorical(uint64_t *a1, uint64_t **a2, mlx::core::random *this, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    if (a4)
    {
      v5 = a4[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }
    }

    if (a5)
    {
      mlx::core::random::categorical(a2, this);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v6, "expected a non-empty mlx_array");
  __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A868F8C(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 113, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A868F00);
  }

  _Unwind_Resume(a1);
}

void mlx_random_gumbel(uint64_t *a1, int *a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, &a2[a3], a3);
  if (a5)
  {
    v10 = a5[1];
    v14 = *a5;
    v15 = v10;
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
    LOBYTE(v14) = 0;
  }

  v16 = v12;
  if (a6)
  {
    mlx::core::random::gumbel(__p, v9 & 0xFFFFFFFFFFLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8691C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 134, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A869178);
  }

  _Unwind_Resume(a1);
}

void sub_25A86931C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 143, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A86930CLL);
  }

  _Unwind_Resume(a1);
}

void mlx_random_laplace(uint64_t *a1, int *a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, float a7, float a8)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, &a2[a3], a3);
  if (a5)
  {
    v12 = a5[1];
    v16[0] = *a5;
    v16[1] = v12;
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
    LOBYTE(v16[0]) = 0;
  }

  v17 = v14;
  if (a6)
  {
    mlx::core::random::laplace(__p, v11 & 0xFFFFFFFFFFLL, v16, *a6, *(a6 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A869528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 168, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A8694D4);
  }

  _Unwind_Resume(a1);
}

void mlx_random_multivariate_normal(uint64_t *a1, int ***a2, uint64_t a3, int *a4, unint64_t a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, &a4[a5], a5);
    if (a7)
    {
      v14 = a7[1];
      v19[0] = *a7;
      v19[1] = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v19[0]) = 0;
    }

    v20 = v16;
    if (a8)
    {
      mlx::core::random::multivariate_normal(a2, a3, __p, v13 & 0xFFFFFFFFFFLL, v19, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8697DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 193, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A869730);
  }

  _Unwind_Resume(a1);
}

void mlx_random_normal(uint64_t *a1, int *a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, float a7, float a8)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, &a2[a3], a3);
  if (a5)
  {
    v12 = a5[1];
    v16[0] = *a5;
    v16[1] = v12;
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
    LOBYTE(v16[0]) = 0;
  }

  v17 = v14;
  if (a6)
  {
    mlx::core::random::normal(__p, v11 & 0xFFFFFFFFFFLL, v16, *a6, *(a6 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A869A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 218, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A8699F4);
  }

  _Unwind_Resume(a1);
}

void mlx_random_permutation(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a2)
  {
    if (a4)
    {
      v5 = a4[1];
      v10[0] = *a4;
      v10[1] = v5;
      if (v5)
      {
        v6 = v5 + 1;
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
    if (a5)
    {
      mlx::core::random::permutation(a2, a3, v10, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "expected a non-empty mlx_array");
  __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A869C84(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 238, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A869BF8);
  }

  _Unwind_Resume(a1);
}

void mlx_random_permutation_arange(uint64_t *a1, int a2, uint64_t **a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3[1];
    v8[0] = *a3;
    v8[1] = v4;
    if (v4)
    {
      v5 = v4 + 1;
      v6 = 1;
      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    LOBYTE(v8[0]) = 0;
  }

  v9 = v6;
  if (a4)
  {
    mlx::core::random::permutation(a2, v8, *a4, *(a4 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A869E80(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 256, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A869E30);
  }

  _Unwind_Resume(a1);
}

void mlx_random_randint(uint64_t *a1, void *a2, void *a3, int *a4, unint64_t a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, &a4[a5], a5);
    if (a7)
    {
      v14 = a7[1];
      v19[0] = *a7;
      v19[1] = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v19[0]) = 0;
    }

    v20 = v16;
    if (a8)
    {
      mlx::core::random::randint(a2, a3, __p, v13 & 0xFFFFFFFFFFLL, v19, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A86A118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 281, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A86A06CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_random_split_num(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4)
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

  mlx::core::random::split(a2, a3, *a4, *(a4 + 8) | 0x100000000, &v10);
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

void sub_25A86A394(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlx::core::array::~array(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 305, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A86A328);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_random_split(void **a1, void **a2, uint64_t *a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_20;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_20:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::random::split(a3, *a4, *(a4 + 8) | 0x100000000, &v16);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v16;
  if (*v6 != v16)
  {
    v8 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[1];
    *v6 = v7;
    v6[1] = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v10 = *a2;
  if (!*a2)
  {
    operator new();
  }

  v11 = v17;
  if (*v10 != v17)
  {
    v12 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v10[1];
    *v10 = v11;
    v10[1] = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  mlx::core::array::~array(&v17);
  mlx::core::array::~array(&v16);
  return 0;
}

void sub_25A86A5E0(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 323, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86A574);
  }

  _Unwind_Resume(a1);
}

void mlx_random_truncated_normal(uint64_t *a1, void *a2, void *a3, int *a4, unint64_t a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, &a4[a5], a5);
    if (a7)
    {
      v14 = a7[1];
      v19 = *a7;
      v20 = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v19) = 0;
    }

    v21 = v16;
    if (a8)
    {
      mlx::core::random::truncated_normal(a2, a3, __p, v13 & 0xFFFFFFFFFFLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A86A874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 348, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A86A7C8);
  }

  _Unwind_Resume(a1);
}

void mlx_random_uniform(uint64_t *a1, void *a2, void *a3, int *a4, unint64_t a5, int a6, uint64_t *a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, &a4[a5], a5);
    if (a7)
    {
      v14 = a7[1];
      v19[0] = *a7;
      v19[1] = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v19[0]) = 0;
    }

    v20 = v16;
    if (a8)
    {
      mlx::core::random::uniform(a2, a3, __p, v13 & 0xFFFFFFFFFFLL, v19, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A86AB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a15);
  if (a11 == 1)
  {
    mlx::core::array::~array(&a9);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/random.cpp", 373, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A86AA98);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_compile(uint64_t *a1, uint64_t a2, char a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v7, a2);
  mlx::core::compile(v7, a3, v8);
  if (!*a1)
  {
    operator new();
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](*a1, v8);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v7);
  return 0;
}

void sub_25A86AD2C(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/compile.cpp", 17, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86ACC0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_detail_compile(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, unint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v14, a2);
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, a5, &a5[a6], a6);
  mlx::core::detail::compile(v14, a3, a4, __p, v15);
  if (!*a1)
  {
    operator new();
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](*a1, v15);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v15);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v14);
  return 0;
}

void sub_25A86AF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a12);
  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = (*(*v18 + 16))(v18);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/compile.cpp", 38, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A86AED0);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A86B358(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx_string_new_data(const char *a1)
{
  v2 = strlen(a1);
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5 = v2;
      if (v2)
      {
        memcpy(&__dst, a1, v2);
      }

      *(&__dst + v3) = 0;
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_25A86B454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    v18 = (*(*v17 + 16))(v17);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/string.cpp", 15, v18, v19, v20, v21, v22, v23);
    __cxa_end_catch();
    JUMPOUT(0x25A86B438);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_string_set(std::string **a1, std::string *__str)
{
  if (!__str)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::string::operator=(v2, __str);
  return 0;
}

void sub_25A86B5B0(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x1012C40EC159624);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/string.cpp", 24, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86B564);
  }

  _Unwind_Resume(a1);
}

char *mlx_string_data(char *result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void sub_25A86B6C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/string.cpp", 34, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A86B67CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_string_free(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    MEMORY[0x25F851760](a1, 0x1012C40EC159624);
  }

  return 0;
}

void mlx_map_string_to_array_new()
{
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  operator new();
}

void sub_25A86B804(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 14, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A86B7F0);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_map_string_to_array_set(unint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    *(v2 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *> *>>(v2, *(a2 + 16), 0);
  }

  return 0;
}

void sub_25A86B940(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x10A0C408EF24B1CLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 25, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86B8F4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_map_string_to_array_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(a1);
    MEMORY[0x25F851760](v1, 0x10A0C408EF24B1CLL);
  }

  return 0;
}

uint64_t mlx_map_string_to_array_insert(void *a1, char *a2, uint64_t *a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if (!a3)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "expected a non-empty mlx_array");
    __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unordered_map<std::string,mlx::core::array>::insert_or_assign[abi:ne200100]<mlx::core::array&>(a1, __p, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_25A86BB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 49, v19, v20, v21, v22, v23, v24);
    __cxa_end_catch();
    JUMPOUT(0x25A86BA74);
  }

  _Unwind_Resume(a1);
}

const void **std::unordered_map<std::string,mlx::core::array>::insert_or_assign[abi:ne200100]<mlx::core::array&>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::string,mlx::core::array&>(a1, a2, a2, a3);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    mlx::core::array::operator=(v4 + 5, a3);
  }

  return v5;
}

uint64_t mlx_map_string_to_array_get(void **a1, void *a2, char *__s)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_4;
    }

    return 2;
  }

  if (!v5)
  {
    return 2;
  }

LABEL_4:
  if (!*a1)
  {
    operator new();
  }

  mlx::core::array::operator=(*a1, v6 + 5);
  return 0;
}

void sub_25A86BD10(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 68, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86BCBCLL);
  }

  _Unwind_Resume(a1);
}

void mlx_map_string_to_array_iterator_new(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_map_string_to_array_iterator_next(void *a1, void **a2, void **a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array_iterator");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *a3;
  if (!*a3)
  {
    return 2;
  }

  v5 = (v4 + 16);
  if (*(v4 + 39) < 0)
  {
    v5 = *v5;
  }

  *a1 = v5;
  if (!*a2)
  {
    operator new();
  }

  mlx::core::array::operator=(*a2, *a3 + 5);
  result = 0;
  *a3 = **a3;
  return result;
}

void sub_25A86BF84(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v2);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 103, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86BF38);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_map_string_to_array_iterator_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x20C4093837F09);
  }

  return 0;
}

void mlx_map_string_to_string_new()
{
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  operator new();
}

void sub_25A86C0A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a9);
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = (*(*v11 + 16))(v11);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 123, v12, v13, v14, v15, v16, v17);
    __cxa_end_catch();
    JUMPOUT(0x25A86C08CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_map_string_to_string_set(unint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    *(v2 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(v2, *(a2 + 16), 0);
  }

  return 0;
}

void sub_25A86C1DC(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x25F851760](v2, 0x10A0C408EF24B1CLL);
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    v6 = (*(*v5 + 16))(v5);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 134, v6, v7, v8, v9, v10, v11);
    __cxa_end_catch();
    JUMPOUT(0x25A86C190);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx_map_string_to_string_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a1);
    MEMORY[0x25F851760](v1, 0x10A0C408EF24B1CLL);
  }

  return 0;
}

uint64_t mlx_map_string_to_string_insert(void *a1, char *a2, char *a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v9, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  std::unordered_map<std::string,std::string>::insert_or_assign[abi:ne200100]<std::string>(a1, v9, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return 0;
}

void sub_25A86C378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(exception_object);
    v21 = (*(*v20 + 16))(v20);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 158, v21, v22, v23, v24, v25, v26);
    __cxa_end_catch();
    JUMPOUT(0x25A86C328);
  }

  _Unwind_Resume(exception_object);
}

const void **std::unordered_map<std::string,std::string>::insert_or_assign[abi:ne200100]<std::string>(void *a1, uint64_t *a2, __int128 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string,std::string>(a1, a2, a2, a3);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    if (*(v4 + 63) < 0)
    {
      operator delete(v4[5]);
    }

    v7 = *a3;
    v5[7] = *(a3 + 2);
    *(v5 + 5) = v7;
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  return v5;
}

uint64_t mlx_map_string_to_string_get(void *a1, void *a2, char *__s)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_4;
    }

    return 2;
  }

  if (!v5)
  {
    return 2;
  }

LABEL_4:
  v7 = v6 + 5;
  if (*(v6 + 63) < 0)
  {
    v7 = *v7;
  }

  result = 0;
  *a1 = v7;
  return result;
}

void sub_25A86C570(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 177, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A86C520);
  }

  _Unwind_Resume(exception_object);
}

void mlx_map_string_to_string_iterator_new(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_map_string_to_string_iterator_next(void *a1, void *a2, void **a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string_iterator");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *a3;
  if (!*a3)
  {
    return 2;
  }

  v4 = v3 + 2;
  if (*(v3 + 39) < 0)
  {
    v4 = *v4;
  }

  *a1 = v4;
  v5 = *a3 + 5;
  if (*(*a3 + 63) < 0)
  {
    v5 = *v5;
  }

  result = 0;
  *a2 = v5;
  *a3 = **a3;
  return result;
}

void sub_25A86C7A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(exception_object);
    v3 = (*(*v2 + 16))(v2);
    _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/map.cpp", 212, v3, v4, v5, v6, v7, v8);
    __cxa_end_catch();
    JUMPOUT(0x25A86C75CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_map_string_to_string_iterator_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x20C4093837F09);
  }

  return 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::string,mlx::core::array&>(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
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

void sub_25A86CAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string,std::string>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

void sub_25A86CD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::Abs::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Abs has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Add::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Add has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::AddMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AddMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Arange::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Arange has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcCos::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcCos has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcCosh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcCosh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcSin::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcSin has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcSinh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcSinh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcTan::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTan has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcTan2::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTan2 has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcTanh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTanh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArgPartition::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgPartition has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArgReduce::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgReduce has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArgSort::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgSort has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::AsType::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AsType has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::AsStrided::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AsStrided has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BitwiseBinary::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BitwiseBinary has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BitwiseInvert::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BitwiseInvert has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BlockMaskedMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BlockMaskedMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Broadcast::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Broadcast has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BroadcastAxes::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BroadcastAxes has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Ceil::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Ceil has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Compiled::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Compiled has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Concatenate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Concatenate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Conjugate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Conjugate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Contiguous::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Contiguous has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Convolution::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Convolution has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Copy::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Copy has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Cos::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cos has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Cosh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cosh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::CustomTransforms::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "CustomTransforms has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Depends::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Depends has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Divide::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Divide has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::DivMod::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "DivMod has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::DynamicSlice::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "DynamicSlice has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::DynamicSliceUpdate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "DynamicSliceUpdate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::NumberOfElements::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NumberOfElements has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Remainder::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Remainder has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Equal::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Equal has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Erf::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Erf has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ErfInv::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ErfInv has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Exp::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Exp has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ExpandDims::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ExpandDims has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Expm1::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Expm1 has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::FFT::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "FFT has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Flatten::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Flatten has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Floor::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Floor has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Full::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Full has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Gather::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Gather has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GatherAxis::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherAxis has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GatherMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GatherQMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherQMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Greater::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Greater has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GreaterEqual::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GreaterEqual has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Hadamard::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Hadamard has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Imag::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Imag has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Less::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Less has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LessEqual::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LessEqual has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Load::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Load has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Log::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Log has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Log1p::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Log1p has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogicalNot::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalNot has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogicalAnd::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalAnd has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogicalOr::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalOr has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogAddExp::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogAddExp has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogSumExp::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogSumExp has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LUF::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LUF has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Matmul::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Matmul has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Maximum::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Maximum has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Minimum::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Minimum has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Multiply::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Multiply has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Negative::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Negative has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::NotEqual::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NotEqual has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Pad::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Pad has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Partition::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Partition has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Power::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Power has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::QRF::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QRF has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::QuantizedMatmul::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QuantizedMatmul has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::RandomBits::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RandomBits has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Real::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Real has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Reduce::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Reduce has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Reshape::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Reshape has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Round::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Round has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Scan::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Scan has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Scatter::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Scatter has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ScatterAxis::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ScatterAxis has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Select::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Select has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sigmoid::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sigmoid has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sign::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sign has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sin::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sin has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sinh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sinh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Slice::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Slice has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::SliceUpdate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SliceUpdate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Softmax::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Softmax has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sort::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sort has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Split::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Split has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Square::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Square has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Squeeze::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Squeeze has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sqrt::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sqrt has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::StopGradient::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "StopGradient has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Subtract::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Subtract has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::SVD::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SVD has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Tan::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Tan has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Tanh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Tanh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Transpose::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Transpose has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Unflatten::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Unflatten has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Inverse::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Inverse has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Cholesky::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cholesky has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Eigh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Eigh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::View::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "View has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNorm::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LayerNorm has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNormVJP::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LayerNormVJP has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNorm::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RMSNorm has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNormVJP::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RMSNormVJP has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RoPE::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RoPE has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::ScaledDotProductAttention::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ScaledDotProductAttention has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::AffineQuantize::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AffineQuantize has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::CustomKernel::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "CustomKernel has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::AllReduce::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AllReduce has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::AllGather::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AllGather has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::Send::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Send has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::Recv::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Recv has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNorm::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNorm::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A86FA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fast::RMSNorm::~RMSNorm(mlx::core::fast::RMSNorm *this)
{
  *this = &unk_286C09EE0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C09EE0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::RMSNormVJP::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNormVJP::~RMSNormVJP(mlx::core::fast::RMSNormVJP *this)
{
  *this = &unk_286C09F58;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C09F58;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::LayerNorm::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNorm::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A86FE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fast::LayerNorm::~LayerNorm(mlx::core::fast::LayerNorm *this)
{
  *this = &unk_286C09FD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C09FD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::LayerNormVJP::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNormVJP::~LayerNormVJP(mlx::core::fast::LayerNormVJP *this)
{
  *this = &unk_286C0A048;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C0A048;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::RoPE::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RoPE::output_shapes(uint64_t **a1@<X1>, uint64_t *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v7, 1uLL);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_25A8701B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fast::RoPE::~RoPE(mlx::core::fast::RoPE *this)
{
  *this = &unk_286C0A0C0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C0A0C0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::CustomKernel::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Custom Metal kernels only run on GPU.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::CustomKernel::~CustomKernel(mlx::core::fast::CustomKernel *this)
{
  *this = &unk_286C0A138;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_286C0A138;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Fence::Fence(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_25A8704F0(void *a1)
{
  __cxa_begin_catch(a1);
  mlx::core::Fence::Fence(mlx::core::Stream)::$_0::operator()(v1);
  __cxa_rethrow();
}

void sub_25A870504(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Fence::wait(int **a1, uint64_t a2, int a3)
{
  v15 = 0;
  v16 = a2;
  v17 = a3;
  v4 = mlx::core::operator==(&v16 + 1, &v15);
  if (v4)
  {
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }

    v6 = mlx::core::scheduler::scheduler(v4);
    v7 = *(v6[1] + 8 * v16);
    std::mutex::lock(v7);
    if (*(v7 + 160) != 1)
    {
      v8 = *(v7 + 72);
      v9 = *(v7 + 80);
      v10 = 16 * (v9 - v8) - 1;
      if (v9 == v8)
      {
        v10 = 0;
      }

      if (v10 == *(v7 + 104) + *(v7 + 96))
      {
        std::deque<std::function<void ()(void)>>::__add_back_capacity((v7 + 64));
        v8 = *(v7 + 72);
        v9 = *(v7 + 80);
      }

      if (v9 == v8)
      {
        v12 = 0;
      }

      else
      {
        v11 = *(v7 + 104) + *(v7 + 96);
        v12 = *(v8 + ((v11 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v11 & 0x7F);
      }

      *(v12 + 24) = 0;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "[Fence::wait] Invalid stream.");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8706F8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Fence::update(int **a1, uint64_t a2, int a3)
{
  v16 = a2;
  v17 = a3;
  ++**a1;
  v15 = 0;
  v4 = mlx::core::operator==(&v16 + 1, &v15);
  if (v4)
  {
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }

    v6 = mlx::core::scheduler::scheduler(v4);
    v7 = *(v6[1] + 8 * v16);
    std::mutex::lock(v7);
    if (*(v7 + 160) != 1)
    {
      v8 = *(v7 + 72);
      v9 = *(v7 + 80);
      v10 = 16 * (v9 - v8) - 1;
      if (v9 == v8)
      {
        v10 = 0;
      }

      if (v10 == *(v7 + 104) + *(v7 + 96))
      {
        std::deque<std::function<void ()(void)>>::__add_back_capacity((v7 + 64));
        v8 = *(v7 + 72);
        v9 = *(v7 + 80);
      }

      if (v9 == v8)
      {
        v12 = 0;
      }

      else
      {
        v11 = *(v7 + 104) + *(v7 + 96);
        v12 = *(v8 + ((v11 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v11 & 0x7F);
      }

      *(v12 + 24) = 0;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "[Fence::update] Invalid stream.");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A870930(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::Fence::Fence(mlx::core::Stream)::$_0::operator()(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::condition_variable::~condition_variable((result + 72));
    std::mutex::~mutex((v1 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

void std::__shared_ptr_pointer<mlx::core::FenceImpl *,mlx::core::Fence::Fence(mlx::core::Stream)::$_0,std::allocator<mlx::core::FenceImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<mlx::core::FenceImpl *,mlx::core::Fence::Fence(mlx::core::Stream)::$_0,std::allocator<mlx::core::FenceImpl>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::condition_variable::~condition_variable((v1 + 72));
    std::mutex::~mutex((v1 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mlx::core::FenceImpl *,mlx::core::Fence::Fence(mlx::core::Stream)::$_0,std::allocator<mlx::core::FenceImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A210;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A210;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A210;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  m = (v2 + 8);
  v5.__m_ = (v2 + 8);
  v5.__owns_ = 1;
  std::mutex::lock((v2 + 8));
  v4 = *(a1 + 8);
  if (*(v2 + 4) >= v4)
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((v2 + 72), &v5);
  }

  while (*(v2 + 4) < v4);
  if (v5.__owns_)
  {
    m = v5.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }
}

uint64_t std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A290;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A290;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A290;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  std::mutex::lock((v2 + 8));
  *(v2 + 4) = *(a1 + 8);
  std::condition_variable::notify_all((v2 + 72));

  std::mutex::unlock((v2 + 8));
}

uint64_t std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Event::Event(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  operator new();
}

{
  mlx::core::Event::Event(a1, a2, a3);
}

void sub_25A87107C(void *a1)
{
  __cxa_begin_catch(a1);
  mlx::core::Fence::Fence(mlx::core::Stream)::$_0::operator()(v1);
  __cxa_rethrow();
}

void sub_25A871090(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Event::wait(mlx::core::Event *this)
{
  v2 = *(this + 2);
  v4.__m_ = (v2 + 8);
  v4.__owns_ = 1;
  std::mutex::lock((v2 + 8));
  v3 = *(this + 4);
  if (*v2 >= v3)
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((v2 + 72), &v4);
  }

  while (*v2 < v3);
  if (v4.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v4.__m_);
  }
}

void mlx::core::Event::wait(mlx::core::scheduler *a1, int a2)
{
  v2 = *(a1 + 3);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(mlx::core::scheduler::scheduler(a1)[1] + 8 * a2);
  std::mutex::lock(v3);
  if (*(v3 + 160) != 1)
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = 16 * (v5 - v4) - 1;
    if (v5 == v4)
    {
      v6 = 0;
    }

    if (v6 == *(v3 + 104) + *(v3 + 96))
    {
      std::deque<std::function<void ()(void)>>::__add_back_capacity((v3 + 64));
      v4 = *(v3 + 72);
      v5 = *(v3 + 80);
    }

    if (v5 == v4)
    {
      v8 = 0;
    }

    else
    {
      v7 = *(v3 + 104) + *(v3 + 96);
      v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
    }

    *(v8 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8712FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Event::signal(mlx::core::scheduler *a1, int a2)
{
  v2 = *(a1 + 3);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(mlx::core::scheduler::scheduler(a1)[1] + 8 * a2);
  std::mutex::lock(v3);
  if (*(v3 + 160) != 1)
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = 16 * (v5 - v4) - 1;
    if (v5 == v4)
    {
      v6 = 0;
    }

    if (v6 == *(v3 + 104) + *(v3 + 96))
    {
      std::deque<std::function<void ()(void)>>::__add_back_capacity((v3 + 64));
      v4 = *(v3 + 72);
      v5 = *(v3 + 80);
    }

    if (v5 == v4)
    {
      v8 = 0;
    }

    else
    {
      v7 = *(v3 + 104) + *(v3 + 96);
      v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
    }

    *(v8 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A871510(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Event::is_signaled(mlx::core::Event *this)
{
  v2 = *(this + 2);
  std::mutex::lock((v2 + 8));
  v3 = *v2 >= *(this + 4);
  std::mutex::unlock((v2 + 8));
  return v3;
}

void std::__shared_ptr_pointer<mlx::core::EventCounter *,mlx::core::Event::Event(mlx::core::Stream)::$_0,std::allocator<mlx::core::EventCounter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<mlx::core::EventCounter *,mlx::core::Event::Event(mlx::core::Stream)::$_0,std::allocator<mlx::core::EventCounter>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::condition_variable::~condition_variable((v1 + 72));
    std::mutex::~mutex((v1 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mlx::core::EventCounter *,mlx::core::Event::Event(mlx::core::Stream)::$_0,std::allocator<mlx::core::EventCounter>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A370;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A370;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A370;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  return result;
}

void std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A3F0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A3F0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A3F0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  return result;
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  std::mutex::lock((v2 + 8));
  *v2 = *(a1 + 40);
  std::mutex::unlock((v2 + 8));

  std::condition_variable::notify_all((v2 + 72));
}

uint64_t std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::metal::eval(mlx::core::metal *this, mlx::core::array *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::eval] Cannot eval on GPU without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::metal::finalize()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::finalize] Cannot finalize GPU without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::metal::synchronize()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::synchronize] Cannot synchronize GPU without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::metal::device_info(mlx::core::metal *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::device_info] Cannot get device info without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *mlx::core::allocator::common_allocator(mlx::core::allocator *this)
{
  {
    mlx::core::allocator::CommonAllocator::CommonAllocator(&mlx::core::allocator::common_allocator(void)::allocator_);
    __cxa_atexit(mlx::core::allocator::CommonAllocator::~CommonAllocator, &mlx::core::allocator::common_allocator(void)::allocator_, &dword_25A232000);
  }

  return &mlx::core::allocator::common_allocator(void)::allocator_;
}

void mlx::core::allocator::CommonAllocator::~CommonAllocator(mlx::core::allocator::CommonAllocator *this)
{
  *this = &unk_286C0A470;
  std::mutex::~mutex((this + 32));
}

{
  *this = &unk_286C0A470;
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::allocator::Buffer::raw_ptr(mlx::core::allocator::Buffer *this)
{
  if (*this)
  {
    return *this + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::allocator::CommonAllocator::malloc(mlx::core::allocator::CommonAllocator *this, uint64_t a2)
{
  v4 = malloc_type_malloc(a2 + 8, 0x100004000313F17uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a2;
  }

  std::mutex::lock((this + 32));
  v6 = *(this + 3);
  v7 = *(this + 2) + a2;
  if (v7 > v6)
  {
    v6 = *(this + 2) + a2;
  }

  *(this + 2) = v7;
  *(this + 3) = v6;
  std::mutex::unlock((this + 32));
  return v5;
}

void mlx::core::allocator::CommonAllocator::free(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 16))(a1);
  free(a2);
  std::mutex::lock((a1 + 32));
  *(a1 + 16) -= v4;

  std::mutex::unlock((a1 + 32));
}

uint64_t mlx::core::allocator::CommonAllocator::size(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *a2;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reset_peak_memory(mlx::core *this)
{
  mlx::core::allocator::common_allocator(this);
  std::mutex::lock(&stru_27FA06080);
  qword_27FA06078 = 0;

  std::mutex::unlock(&stru_27FA06080);
}

uint64_t mlx::core::set_memory_limit(mlx::core *this)
{
  mlx::core::allocator::common_allocator(this);
  std::mutex::lock(&stru_27FA06080);
  v2 = qword_27FA06068;
  qword_27FA06068 = this;
  std::mutex::unlock(&stru_27FA06080);
  return v2;
}

mlx::core::allocator::CommonAllocator *mlx::core::allocator::CommonAllocator::CommonAllocator(mlx::core::allocator::CommonAllocator *this)
{
  *this = &unk_286C0A470;
  v4 = 8;
  v5 = 0;
  sysctlbyname("hw.memsize", &v5, &v4, 0, 0);
  v2 = (v5 * 0.8);
  *(this + 1) = v2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 850045863;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  if (!v2)
  {
    *(this + 1) = 0x200000000;
  }

  return this;
}

uint64_t sub_25A87210C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7894115;
  }

  else
  {
    v3 = 0x7961727261;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7894115;
  }

  else
  {
    v5 = 0x7961727261;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A8721A8()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A872220(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A872284(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8722F8@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25A872358(uint64_t *a1@<X8>)
{
  v2 = 7894115;
  if (!*v1)
  {
    v2 = 0x7961727261;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A87238C()
{
  if (*v0)
  {
    return 7894115;
  }

  else
  {
    return 0x7961727261;
  }
}

uint64_t sub_25A8723BC@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A872438(uint64_t a1)
{
  v2 = sub_25A872E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A872474(uint64_t a1)
{
  v2 = sub_25A872E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8724FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04470, &qword_25A9F7FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A872E30();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for MorpheusArray();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A93E450(v8, 0);
    v12 = 1;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 48) = v11[0];
    sub_25A872F24(a1, v11);
    v3 = sub_25A8963D8(v11);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A87272C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = *(v1 + 40);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v37 = MEMORY[0x277D84F90];

    sub_25A937550(0, v7, 0);
    v8 = v37;
    result = swift_beginAccess();
    v10 = 0;
    v11 = (v6 + 40);
    v25 = v7;
    v26 = v4;
    while (v10 < *(v6 + 16))
    {
      v27 = v11;
      v28 = v10;
      v12 = v6;
      v13 = *v11;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v16 = *(v4 + 32);
      v17 = v3;
      v18 = *(v13 + 48);
      swift_unknownObjectRetain();
      v18(Strong, v16, ObjectType, v13);
      (*(v13 + 64))(v34, ObjectType, v13);
      v3 = v17;
      if (v17)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(v34, &v29);
      v6 = v12;
      if (v31)
      {
        sub_25A872CE0(&v29);
        sub_25A872C84(v34, &v29);
        v19 = v25;
        v4 = v26;
        if (v31 == 1)
        {
          v32 = v29;
          v33 = v30;
          sub_25A92DE50(&v32, v35);
          sub_25A872D84(&v32);
        }

        else
        {
          sub_25A872CE0(&v29);
          v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v20 = swift_allocObject();
          v35[0] = v20;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
        }

        sub_25A872CE0(v34);
      }

      else
      {
        v32 = v29;
        v33 = v30;
        sub_25A92DE50(&v32, v35);
        sub_25A872D84(&v32);
        sub_25A872CE0(v34);
        v19 = v25;
        v4 = v26;
      }

      sub_25A92D814(v35, v36);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      v37 = v8;
      v22 = *(v8 + 16);
      v21 = *(v8 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25A937550((v21 > 1), v22 + 1, 1);
        v8 = v37;
      }

      ++v10;
      *(v8 + 16) = v22 + 1;
      result = sub_25A872D74(v36, (v8 + 32 * v22 + 32));
      v11 = v27 + 2;
      if (v19 == v28 + 1)
      {

        v5 = a1;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    if (*(v4 + 48))
    {
      if (*(v4 + 48) == 1)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
        *(v5 + 24) = result;
        *v5 = v8;
      }

      else
      {

        *v5 = 0u;
        *(v5 + 16) = 0u;
      }
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      result = swift_allocObject();
      *(result + 16) = v8;
      *(v5 + 24) = v23;
      *v5 = result;
    }

    *(v5 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A872A68()
{
  v1 = *(v0 + 40);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v3 = MEMORY[0x25F850440](v1, v2);

  return v3;
}

uint64_t sub_25A872AD8()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A872B4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A872B6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

_DWORD *sub_25A872C20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25A872D34()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_25A872D74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25A872D84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25A872E30()
{
  result = qword_27FA04478;
  if (!qword_27FA04478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04478);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_25A872ED0()
{
  result = qword_27FA04480;
  if (!qword_27FA04480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04480);
  }

  return result;
}

uint64_t sub_25A872F24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_25A872FC4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MorpheusArray.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MorpheusArray.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A873188()
{
  result = qword_27FA04490;
  if (!qword_27FA04490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04490);
  }

  return result;
}

unint64_t sub_25A8731E0()
{
  result = qword_27FA04498;
  if (!qword_27FA04498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04498);
  }

  return result;
}

unint64_t sub_25A873238()
{
  result = qword_27FA044A0;
  if (!qword_27FA044A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044A0);
  }

  return result;
}

id NSNumber.swiftValue.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = v1;
  [v18 objCType];
  v3 = v18;
  v4 = sub_25A997F88();
  v6 = v5;
  v7 = v4 == 99 && v5 == 0xE100000000000000;
  if (v7 || (v8 = v4, (sub_25A9989E8() & 1) != 0))
  {

    result = [v18 BOOLValue];
    v10 = MEMORY[0x277D839B0];
LABEL_7:
    *(a1 + 24) = v10;
    *a1 = result;
    return result;
  }

  v11 = v8 == 105 && v6 == 0xE100000000000000;
  if (v11 || (sub_25A9989E8() & 1) != 0)
  {
    goto LABEL_13;
  }

  if (v8 == 115 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 shortValue];
    v13 = MEMORY[0x277D84958];
LABEL_19:
    *(a1 + 24) = v13;
    *a1 = result;
    return result;
  }

  if (v8 == 108 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {
LABEL_13:

    result = [v18 intValue];
    v12 = MEMORY[0x277D849A8];
LABEL_14:
    *(a1 + 24) = v12;
    *a1 = result;
    return result;
  }

  if (v8 == 113 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 integerValue];
    v14 = MEMORY[0x277D83B88];
LABEL_28:
    *(a1 + 24) = v14;
    *a1 = result;
    return result;
  }

  if (v8 == 67 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 unsignedCharValue];
    v10 = MEMORY[0x277D84B78];
    goto LABEL_7;
  }

  if (v8 == 73 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    goto LABEL_36;
  }

  if (v8 == 83 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 unsignedShortValue];
    v13 = MEMORY[0x277D84C58];
    goto LABEL_19;
  }

  if (v8 == 76 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {
LABEL_36:

    result = [v18 unsignedIntValue];
    v12 = MEMORY[0x277D84CC0];
    goto LABEL_14;
  }

  if (v8 == 81 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 unsignedIntegerValue];
    v14 = MEMORY[0x277D83E88];
    goto LABEL_28;
  }

  if (v8 == 102 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 floatValue];
    *(a1 + 24) = MEMORY[0x277D83A90];
    *a1 = v15;
    return result;
  }

  if (v8 == 100 && v6 == 0xE100000000000000)
  {

LABEL_57:
    result = [v18 doubleValue];
    *(a1 + 24) = MEMORY[0x277D839F8];
    *a1 = v17;
    return result;
  }

  v16 = sub_25A9989E8();

  if (v16)
  {
    goto LABEL_57;
  }

  *(a1 + 24) = sub_25A873A9C();
  *a1 = v18;

  return v18;
}

double NSNumber.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25A873994(a1, a2, v3, sub_25A91BDDC, &v8);
  if (v9)
  {
    sub_25A872D74(&v8, v10);
    sub_25A872D74(v10, a3);
  }

  else
  {
    sub_25A872D84(&v8);
    if (a1 == 0x61765F7466697773 && a2 == 0xEB0000000065756CLL || (sub_25A9989E8() & 1) != 0)
    {
      NSNumber.swiftValue.getter(a3);
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

double sub_25A8738BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v14[0] = a3;
  v14[1] = a4;
  v8 = sub_25A91BC08();
  swift_beginAccess();
  v9 = *(v8 + 16);

  if (*(v9 + 16) && (v10 = sub_25A8F3600(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 16 * v10);

    v12(v14);
  }

  else
  {

    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

double sub_25A873994@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v14 = a3;
  v8 = a4();
  swift_beginAccess();
  v9 = *(v8 + 16);

  if (*(v9 + 16) && (v10 = sub_25A8F3600(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 16 * v10);

    v12(&v14);
  }

  else
  {

    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

unint64_t sub_25A873A9C()
{
  result = qword_27FA044A8;
  if (!qword_27FA044A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA044A8);
  }

  return result;
}

uint64_t _sSo8NSNumberC8MorpheusE3has9attributeSbSS_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A91CC94(&unk_286C0D928);
  sub_25A873BC0(&unk_286C0D948);
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91BDDC();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_25A873C14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73656D616ELL;
  }

  else
  {
    v3 = 0x656C75646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x73656D616ELL;
  }

  else
  {
    v5 = 0x656C75646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A873CB4()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A873D30(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A873D98(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A873E10@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25A873E70(uint64_t *a1@<X8>)
{
  v2 = 0x656C75646F6DLL;
  if (*v1)
  {
    v2 = 0x73656D616ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A873EA8()
{
  if (*v0)
  {
    return 0x73656D616ELL;
  }

  else
  {
    return 0x656C75646F6DLL;
  }
}

uint64_t sub_25A873EDC@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A873F40(uint64_t a1)
{
  v2 = sub_25A8750CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A873F7C(uint64_t a1)
{
  v2 = sub_25A8750CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A874004(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA044B8, &qword_25A9F8208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8750CC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ImportFrom();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v1[5] = sub_25A9988F8();
    v1[6] = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v1[8] = sub_25A8F4D24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA044C8, &unk_25A9F8210);
    v13 = 1;
    sub_25A875120();
    sub_25A998938();
    v1[7] = v12[0];
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8742AC@<X0>(int64_t a1@<X8>)
{
  v5 = v1;
  v7 = v1[5];
  v8 = v1[6];

  sub_25A98F0EC(v7, v8, v106);
  v9 = v2;

  if (v2)
  {
    return result;
  }

  v11 = v1[7];
  v86 = *(v11 + 16);
  if (!v86)
  {
LABEL_72:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_0Tm(v106);
  }

  v87 = v11 + 32;

  v12 = 0;
  v83 = a1;
  v109 = v5;
  v85 = v11;
  while (1)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v91 = v12;
    v13 = v87 + 40 * v12;
    v4 = *v13;
    ObjectType = *(v13 + 8);
    v14 = *(v13 + 32);
    if (*(v13 + 24))
    {
      v92 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (*(v13 + 32))
      {
        goto LABEL_9;
      }
    }

    else
    {

      v92 = v4;
      v15 = ObjectType;
      if (v14)
      {
LABEL_9:
        v16 = v109;
        v17 = v109[6];
        *&v97 = v109[5];
        *(&v97 + 1) = v17;
        swift_bridgeObjectRetain_n();

        MEMORY[0x25F850290](46, 0xE100000000000000);

        MEMORY[0x25F850290](v4, ObjectType);

        swift_bridgeObjectRelease_n();
        sub_25A98F0EC(v97, *(&v97 + 1), &v102);

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = v16[4];
          ObjectType = swift_getObjectType();
          v19 = *(&v103 + 1);
          v20 = __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
          *(&v98 + 1) = v19;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v97);
          v22 = v20;
          a1 = v83;
          (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v22, v19);
          (*(v18 + 64))(v92, v15, &v97, ObjectType, v18);

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(&v97);
        }

        else
        {
        }

        v11 = v85;
        goto LABEL_64;
      }
    }

    v84 = v9;
    v23 = v107;
    v24 = v108;
    __swift_project_boxed_opaque_existential_1(v106, v107);
    v25 = *(v24 + 40);
    swift_bridgeObjectRetain_n();

    v90 = v25(v23, v24);
    v26 = v4 == 42 && ObjectType == 0xE100000000000000;
    if (v26 || (sub_25A9989E8() & 1) != 0)
    {

      v27 = v109;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_41:
        v57 = *(v90 + 32);
        swift_beginAccess();
        ObjectType = *(v57 + 16);
        v58 = 1 << *(ObjectType + 32);
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        else
        {
          v59 = -1;
        }

        v60 = v59 & *(ObjectType + 64);
        a1 = (v58 + 63) >> 6;

        v61 = 0;
        while (v60)
        {
          v62 = v61;
LABEL_56:
          v64 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
          v65 = v64 | (v62 << 6);
          sub_25A874FB0(*(ObjectType + 48) + 40 * v65, v95);
          sub_25A87500C(*(ObjectType + 56) + 32 * v65, v94);
          v97 = v95[0];
          v98 = v95[1];
          *&v99 = v96;
          sub_25A872D74(v94, (&v99 + 8));
          v4 = v62;
LABEL_57:
          v104[0] = v99;
          v104[1] = v100;
          v105 = v101;
          v102 = v97;
          v103 = v98;
          if (!*(&v98 + 1))
          {

            a1 = v83;
            v9 = v84;
            v11 = v85;
            v12 = v91;
            goto LABEL_5;
          }

          sub_25A872D74((v104 + 8), v95);
          v97 = v102;
          v98 = v103;
          *&v99 = *&v104[0];
          if (swift_dynamicCast())
          {
            v66 = v94[0];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v67 = v109[4];
              v68 = swift_getObjectType();
              (*(v67 + 64))(v66, *(&v66 + 1), v95, v68, v67);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v95);
          v61 = v4;
        }

        if (a1 <= v61 + 1)
        {
          v63 = v61 + 1;
        }

        else
        {
          v63 = a1;
        }

        v4 = v63 - 1;
        while (1)
        {
          v62 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            break;
          }

          if (v62 >= a1)
          {
            v60 = 0;
            v101 = 0;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            goto LABEL_57;
          }

          v60 = *(ObjectType + 64 + 8 * v62);
          ++v61;
          if (v60)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_71:

        goto LABEL_72;
      }

      v28 = v27[4];
      v29 = swift_getObjectType();
      v30 = (*(v28 + 8))(v29, v28);
      swift_unknownObjectRelease();
      swift_beginAccess();
      v31 = *(v90 + 40);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v30 + 40);
      *&v97 = v33;
      *(v30 + 40) = 0x8000000000000000;
      v34 = v31 + 64;
      v35 = -1 << *(v31 + 32);
      if (-v35 < 64)
      {
        v36 = ~(-1 << -v35);
      }

      else
      {
        v36 = -1;
      }

      v37 = v36 & *(v31 + 64);
      v82 = v30;
      v38 = (63 - v35) >> 6;
      v89 = v31;

      v39 = 0;
      v88 = v31 + 64;
      while (v37)
      {
        v93 = isUniquelyReferenced_nonNull_native;
        v40 = v39;
LABEL_31:
        v42 = __clz(__rbit64(v37)) | (v40 << 6);
        v43 = (*(v89 + 48) + 16 * v42);
        ObjectType = *v43;
        v44 = v43[1];
        v4 = *(*(v89 + 56) + 8 * v42);

        v46 = sub_25A8F3600(ObjectType, v44);
        isa = v33[2].isa;
        v48 = (v45 & 1) == 0;
        v49 = isa + v48;
        if (__OFADD__(isa, v48))
        {
          goto LABEL_82;
        }

        v50 = v45;
        if (v33[3].isa >= v49)
        {
          if ((v93 & 1) == 0)
          {
            sub_25A96944C();
          }
        }

        else
        {
          sub_25A9684BC(v49, v93 & 1);
          v51 = sub_25A8F3600(ObjectType, v44);
          if ((v50 & 1) != (v52 & 1))
          {
            result = sub_25A998AA8();
            __break(1u);
            return result;
          }

          v46 = v51;
        }

        v37 &= v37 - 1;
        v33 = v97;
        if (v50)
        {

          *(v33[7].isa + v46) = v4;
        }

        else
        {
          *(v97 + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v53 = (v33[6].isa + 16 * v46);
          *v53 = ObjectType;
          v53[1] = v44;
          *(v33[7].isa + v46) = v4;
          v54 = v33[2].isa;
          v55 = __OFADD__(v54, 1);
          v56 = (v54 + 1);
          if (v55)
          {
            goto LABEL_83;
          }

          v33[2].isa = v56;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v39 = v40;
        v34 = v88;
      }

      v41 = v39;
      while (1)
      {
        v40 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v40 >= v38)
        {
          sub_25A874FA8(v89);

          *(v82 + 40) = v33;
          swift_endAccess();

          goto LABEL_41;
        }

        v37 = *(v34 + 8 * v40);
        ++v41;
        if (v37)
        {
          v93 = isUniquelyReferenced_nonNull_native;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_79;
    }

    LexicalContext.attribute(for:)(v4, ObjectType, &v97);
    a1 = v83;
    if (!*(&v98 + 1))
    {
      break;
    }

    sub_25A872D74(&v97, &v102);
    v69 = v109;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v70 = v69[4];
      v71 = swift_getObjectType();
      (*(v70 + 64))(v92, v15, &v102, v71, v70);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v11 = v85;

LABEL_64:
    __swift_destroy_boxed_opaque_existential_0Tm(&v102);
LABEL_5:
    if (++v12 == v86)
    {
      goto LABEL_71;
    }
  }

  sub_25A872D84(&v97);
  if (qword_27FA043C0 == -1)
  {
    goto LABEL_76;
  }

LABEL_84:
  swift_once();
LABEL_76:
  v72 = sub_25A997BD8();
  __swift_project_value_buffer(v72, qword_27FA0FCE8);

  v73 = v109;

  v33 = sub_25A997BB8();
  v74 = sub_25A9983A8();

  if (os_log_type_enabled(v33, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v102 = v76;
    *v75 = 136315394;
    v78 = v73[5];
    v77 = v73[6];

    v79 = sub_25A98CC90(v78, v77, &v102);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;

    v80 = sub_25A98CC90(v4, ObjectType, &v102);

    *(v75 + 14) = v80;
    _os_log_impl(&dword_25A232000, v33, v74, "Failed to from %s import %s.", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F852800](v76, -1, -1);
    MEMORY[0x25F852800](v75, -1, -1);
    goto LABEL_80;
  }

LABEL_79:

LABEL_80:

  sub_25A874F54();
  swift_allocError();
  *v81 = 115;
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_0Tm(v106);
}

uint64_t sub_25A874D6C()
{
  sub_25A9985F8();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  MEMORY[0x25F850290](v1, v2);

  MEMORY[0x25F850290](0x2074726F706D6920, 0xE800000000000000);

  v4 = MEMORY[0x25F850440](v3, &type metadata for Alias);
  v6 = v5;

  MEMORY[0x25F850290](v4, v6);

  return 0x206D6F7266;
}

uint64_t sub_25A874E50()
{
}

uint64_t sub_25A874E88()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25A874F54()
{
  result = qword_27FA044B0;
  if (!qword_27FA044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044B0);
  }

  return result;
}

uint64_t sub_25A87500C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_25A8750CC()
{
  result = qword_27FA044C0;
  if (!qword_27FA044C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044C0);
  }

  return result;
}

unint64_t sub_25A875120()
{
  result = qword_27FA044D0;
  if (!qword_27FA044D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA044C8, &unk_25A9F8210);
    sub_25A8751EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25A8751EC()
{
  result = qword_27FA044D8;
  if (!qword_27FA044D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044D8);
  }

  return result;
}

unint64_t sub_25A875254()
{
  result = qword_27FA044E0;
  if (!qword_27FA044E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044E0);
  }

  return result;
}

unint64_t sub_25A8752AC()
{
  result = qword_27FA044E8;
  if (!qword_27FA044E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044E8);
  }

  return result;
}

unint64_t sub_25A875304()
{
  result = qword_27FA044F0;
  if (!qword_27FA044F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044F0);
  }

  return result;
}

uint64_t sub_25A875358(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7894115;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7894115;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A8753F4()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A87546C(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8754D0(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A875544@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25A8755A4(uint64_t *a1@<X8>)
{
  v2 = 7894115;
  if (!*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A8755D8()
{
  if (*v0)
  {
    return 7894115;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_25A875608@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A87566C(uint64_t a1)
{
  v2 = sub_25A875B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8756A8(uint64_t a1)
{
  v2 = sub_25A875B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A875730(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA044F8, &unk_25A9F83B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A875B6C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Starred();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A9097C0(v8, 0);
    *(v1 + 48) = v10;
    v13 = 1;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 56) = v12[0];
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A875960@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v1 + 32);
  v9 = *(v5 + 48);
  swift_unknownObjectRetain();
  v9(Strong, v8, ObjectType, v5);
  swift_unknownObjectRelease();
  v10 = *(v1 + 48);
  v11 = swift_getObjectType();
  v12 = *(v10 + 64);
  swift_unknownObjectRetain();
  v12(v14, v11, v10);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A91185C(v15);
    sub_25A872CE0(v14);
    sub_25A92DE50(v15, a1);
    result = sub_25A872D84(v15);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A875A98()
{
  MEMORY[0x25F850290](42, 0xE100000000000000);
  swift_getObjectType();
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A875B08()
{
  sub_25A872F88(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A875B6C()
{
  result = qword_27FA04500;
  if (!qword_27FA04500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04500);
  }

  return result;
}

unint64_t sub_25A875BD4()
{
  result = qword_27FA04508;
  if (!qword_27FA04508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04508);
  }

  return result;
}

unint64_t sub_25A875C2C()
{
  result = qword_27FA04510;
  if (!qword_27FA04510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04510);
  }

  return result;
}

unint64_t sub_25A875C84()
{
  result = qword_27FA04518;
  if (!qword_27FA04518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04518);
  }

  return result;
}

uint64_t sub_25A875CE0()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A875D44(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A875D90@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25A9988C8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25A875E10@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25A9988C8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25A875E74(uint64_t a1)
{
  v2 = sub_25A876410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A875EB0(uint64_t a1)
{
  v2 = sub_25A876410();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_25A875F38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04520, "8U\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A876410();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for JoinedStr();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 40) = sub_25A93E50C(v8);
    sub_25A872F24(a1, v12);
    v9 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

uint64_t sub_25A8760F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = 0xE000000000000000;
  v29 = 0;
  v30 = 0xE000000000000000;
  v6 = *(*(v1 + 40) + 16);

  v21 = v6;
  if (v6)
  {
    v19 = a1;
    v20 = result;
    v8 = 0;
    v9 = (result + 40);
    while (v8 < *(result + 16))
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = v31;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = *(v12 + 32);
      v15 = v3;
      v16 = *(v10 + 48);
      swift_unknownObjectRetain();
      v16(Strong, v14, ObjectType, v10);
      v27 = 0;
      v28 = 0xE000000000000000;
      (*(v10 + 64))(v25, ObjectType, v10);
      v3 = v15;
      if (v15)
      {
        swift_unknownObjectRelease();
      }

      sub_25A872C84(v25, v22);
      if (!v23 || (sub_25A872CE0(v22), sub_25A872C84(v25, v22), v23 == 1))
      {
        v24[0] = v22[0];
        v24[1] = v22[1];
        sub_25A92DE50(v24, v26);
        sub_25A872D84(v24);
      }

      else
      {
        sub_25A872CE0(v22);
        v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        v17 = swift_allocObject();
        v26[0] = v17;
        *(v17 + 16) = 0u;
        *(v17 + 32) = 0u;
      }

      sub_25A872CE0(v25);
      ++v8;
      sub_25A9987C8();
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F850290](v27, v28);
      swift_unknownObjectRelease();

      v9 += 2;
      result = v20;
      if (v21 == v8)
      {
        v18 = v29;
        v5 = v30;
        a1 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = 0;
LABEL_13:

    *(a1 + 24) = MEMORY[0x277D837D0];
    *a1 = v18;
    *(a1 + 8) = v5;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A87636C()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A8763D0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A876410()
{
  result = qword_27FA04528;
  if (!qword_27FA04528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinedStr.StrideCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for JoinedStr.StrideCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25A876550()
{
  result = qword_27FA04530;
  if (!qword_27FA04530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04530);
  }

  return result;
}

unint64_t sub_25A8765A8()
{
  result = qword_27FA04538;
  if (!qword_27FA04538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04538);
  }

  return result;
}

unint64_t sub_25A876600()
{
  result = qword_27FA04540;
  if (!qword_27FA04540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04540);
  }

  return result;
}

uint64_t sub_25A876654(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28783;
  if (v2 != 1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746567726174;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28783;
  if (*a2 != 1)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746567726174;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A876734()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8767C4(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A876840(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8768CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8784A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8768FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE200000000000000;
  v5 = 28783;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A876948()
{
  v1 = 28783;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

unint64_t sub_25A876990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8784A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8769C4(uint64_t a1)
{
  v2 = sub_25A8781F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A876A00(uint64_t a1)
{
  v2 = sub_25A8781F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A876A88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045E8, &qword_25A9F8798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8781F4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for AugAssign();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A9097E8(v8, 0);
    v1[6] = v10;
    LOBYTE(v14[0]) = 1;
    v1[7] = sub_25A9988F8();
    v1[8] = v11;
    v1[9] = sub_25A9097E8(v8, 2);
    v1[10] = v12;
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A876CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v11 = v1[10];
  v12 = swift_getObjectType();
  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = v1[4];
  v15 = *(v11 + 48);
  swift_unknownObjectRetain();
  v15(v13, v14, v12, v11);
  swift_unknownObjectRelease();
  v16 = v1[6];
  v17 = swift_getObjectType();
  v18 = *(v16 + 64);
  swift_unknownObjectRetain();
  v18(&v92, v17, v16);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A911924(&v97);
  sub_25A872CE0(&v92);
  if (*(&v98 + 1))
  {
    v103[0] = v99;
    v103[1] = v100;
    v104 = v101;
    v102[0] = v97;
    v102[1] = v98;
    v95 = 0u;
    v96 = 0u;
    sub_25A87500C(v103 + 8, &v97);
    if (swift_dynamicCast())
    {
      v20 = v92;
      sub_25A872F24(v102, &v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04550, &unk_25A9FBFB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045D8, &unk_25A9FBFC0);
      if (swift_dynamicCast())
      {
        sub_25A87817C(&v89, &v97);
        v21 = *(&v98 + 1);
        v22 = v99;
        __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
        (*(v22 + 8))(&v92, v20, *(&v20 + 1), v21, v22);

        goto LABEL_16;
      }

      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      sub_25A878194(&v89, &qword_27FA045E0, &qword_25A9F8790);
    }

    sub_25A872F24(v102, &v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04550, &unk_25A9FBFB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04558, &qword_25A9F8700);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      sub_25A878194(&v89, &qword_27FA04560, &unk_25A9F8708);
LABEL_18:
      sub_25A8780B8(&v95, &v97);
      if (!*(&v98 + 1))
      {
        sub_25A878194(&v97, &qword_27FA04458, &unk_25A9F7FB0);
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v39 = sub_25A997BD8();
        __swift_project_value_buffer(v39, qword_27FA0FCE8);
        swift_retain_n();
        v40 = sub_25A997BB8();
        v41 = sub_25A9983A8();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&v97 = v43;
          *v42 = 136315394;
          v44 = v1[5];
          swift_getObjectType();
          *&v92 = v44;
          v45 = sub_25A998968();
          v47 = sub_25A98CC90(v45, v46, &v97);

          *(v42 + 4) = v47;
          *(v42 + 12) = 2048;
          v48 = v4[2];

          *(v42 + 14) = v48;

          _os_log_impl(&dword_25A232000, v40, v41, "AugAssign> Invalid target %s: line %ld", v42, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
          MEMORY[0x25F852800](v43, -1, -1);
          MEMORY[0x25F852800](v42, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        *v52 = 109;
        swift_willThrow();
        goto LABEL_64;
      }

      sub_25A872D74(&v97, &v89);
      v36 = v1[10];
      v37 = swift_getObjectType();
      v38 = *(v36 + 64);
      swift_unknownObjectRetain();
      v38(&v97, v37, v36);
      swift_unknownObjectRelease();
      sub_25A896580(v88);
      sub_25A872CE0(&v97);
      v50 = v1[7];
      v49 = v1[8];

      v51 = sub_25A901A8C(v50, v49);
      if (v51 > 3)
      {
        if (v51 > 5)
        {
          if (v51 != 6)
          {
            if (qword_27FA043C0 != -1)
            {
              swift_once();
            }

            v57 = sub_25A997BD8();
            __swift_project_value_buffer(v57, qword_27FA0FCE8);

            v58 = sub_25A997BB8();
            v59 = sub_25A9983A8();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              *&v97 = v61;
              *v60 = 136315394;
              v62 = v4[7];
              v63 = v4[8];

              v64 = sub_25A98CC90(v62, v63, &v97);

              *(v60 + 4) = v64;
              *(v60 + 12) = 2048;
              *(v60 + 14) = v4[2];

              _os_log_impl(&dword_25A232000, v58, v59, "AugAssign> Invalid binary operator %s: line %ld", v60, 0x16u);
              __swift_destroy_boxed_opaque_existential_0Tm(v61);
              MEMORY[0x25F852800](v61, -1, -1);
              MEMORY[0x25F852800](v60, -1, -1);
            }

            else
            {
            }

            sub_25A874F54();
            swift_allocError();
            *v85 = 109;
            goto LABEL_63;
          }

          sub_25A87500C(&v89, v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04568, &qword_25A9F8718);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          v65 = &unk_27FA04570;
          v66 = &unk_25A9F8720;
        }

        else if (v51 == 4)
        {
          sub_25A87500C(&v89, v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04588, &qword_25A9F8738);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          v65 = &unk_27FA04590;
          v66 = &unk_25A9F8740;
        }

        else
        {
          sub_25A87500C(&v89, v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04578, &qword_25A9F8728);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          v65 = &unk_27FA04580;
          v66 = &unk_25A9F8730;
        }
      }

      else if (v51 > 1)
      {
        if (v51 == 2)
        {
          sub_25A87500C(&v89, v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045A8, &qword_25A9F8758);
          if (swift_dynamicCast())
          {
            goto LABEL_46;
          }

          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          v65 = &unk_27FA045B0;
          v66 = &unk_25A9F8760;
        }

        else
        {
          sub_25A87500C(&v89, v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04598, &qword_25A9F8748);
          if (swift_dynamicCast())
          {
LABEL_46:
            sub_25A87817C(&v92, &v97);
            sub_25A872F24(v102, &v92);
            v53 = *(&v93 + 1);
            v54 = v94;
            __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
            sub_25A87500C(v103 + 8, v87);
            v55 = *(&v98 + 1);
            v56 = v99;
            __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
            (*(v56 + 8))(v86, v88, v55, v56);
            (*(v54 + 8))(v87, v86, v53, v54);
            __swift_destroy_boxed_opaque_existential_0Tm(v86);
            __swift_destroy_boxed_opaque_existential_0Tm(v87);
            __swift_destroy_boxed_opaque_existential_0Tm(v88);
            __swift_destroy_boxed_opaque_existential_0Tm(&v89);
            sub_25A878194(&v95, &qword_27FA04458, &unk_25A9F7FB0);
            sub_25A878128(v102);
            __swift_destroy_boxed_opaque_existential_0Tm(&v92);
            result = __swift_destroy_boxed_opaque_existential_0Tm(&v97);
            *(a1 + 32) = 0;
            *a1 = 0u;
            *(a1 + 16) = 0u;
            return result;
          }

          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          v65 = &unk_27FA045A0;
          v66 = &unk_25A9F8750;
        }
      }

      else if (v51)
      {
        sub_25A87500C(&v89, v87);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045B8, &qword_25A9F8768);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        v65 = &unk_27FA045C0;
        v66 = &unk_25A9F8770;
      }

      else
      {
        sub_25A87500C(&v89, v87);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045C8, &qword_25A9F8778);
        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }

        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        v65 = &unk_27FA045D0;
        v66 = &unk_25A9F8780;
      }

      sub_25A878194(&v92, v65, v66);
      sub_25A874F54();
      swift_allocError();
      *v67 = 109;
      swift_willThrow();
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v68 = sub_25A997BD8();
      __swift_project_value_buffer(v68, qword_27FA0FCE8);
      swift_retain_n();
      v69 = sub_25A997BB8();
      v70 = sub_25A9983A8();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v97 = v72;
        *v71 = 136315906;
        v73 = v4[5];
        swift_getObjectType();
        *&v92 = v73;
        v74 = sub_25A998968();
        v76 = sub_25A98CC90(v74, v75, &v97);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2080;
        v78 = v4[7];
        v77 = v4[8];

        v79 = sub_25A98CC90(v78, v77, &v97);

        *(v71 + 14) = v79;
        *(v71 + 22) = 2080;
        v80 = v4[9];
        swift_getObjectType();
        *&v92 = v80;
        v81 = sub_25A998968();
        v83 = sub_25A98CC90(v81, v82, &v97);

        *(v71 + 24) = v83;
        *(v71 + 32) = 2048;
        v84 = v4[2];

        *(v71 + 34) = v84;

        _os_log_impl(&dword_25A232000, v69, v70, "AugAssign> target: %s, op: %s and value: %s are not supported. line %ld", v71, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F852800](v72, -1, -1);
        MEMORY[0x25F852800](v71, -1, -1);
      }

      else
      {
      }

LABEL_63:
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      __swift_destroy_boxed_opaque_existential_0Tm(&v89);
LABEL_64:
      sub_25A878194(&v95, &qword_27FA04458, &unk_25A9F7FB0);
      return sub_25A878128(v102);
    }

    sub_25A87817C(&v89, &v97);
    v34 = *(&v98 + 1);
    v35 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    (*(v35 + 8))(&v92, v103 + 8, v34, v35);
LABEL_16:
    sub_25A878194(&v95, &qword_27FA04458, &unk_25A9F7FB0);
    v95 = v92;
    v96 = v93;
    __swift_destroy_boxed_opaque_existential_0Tm(&v97);
    goto LABEL_18;
  }

  sub_25A878194(&v97, &qword_27FA04548, &unk_25A9F86F0);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v23 = sub_25A997BD8();
  __swift_project_value_buffer(v23, qword_27FA0FCE8);
  swift_retain_n();
  v24 = sub_25A997BB8();
  v25 = sub_25A9983A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v102[0] = v27;
    *v26 = 136315394;
    v28 = v1[5];
    swift_getObjectType();
    *&v97 = v28;
    v29 = sub_25A998968();
    v31 = sub_25A98CC90(v29, v30, v102);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2048;
    v32 = v4[2];

    *(v26 + 14) = v32;

    _os_log_impl(&dword_25A232000, v24, v25, "AugAssign> Invalid target %s: line %ld", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x25F852800](v27, -1, -1);
    MEMORY[0x25F852800](v26, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v33 = 109;
  return swift_willThrow();
}

uint64_t sub_25A877F20()
{
  swift_getObjectType();
  sub_25A9989B8();
  MEMORY[0x25F850290](32, 0xE100000000000000);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  MEMORY[0x25F850290](v1, v2);

  MEMORY[0x25F850290](8253, 0xE200000000000000);
  swift_getObjectType();
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A877FEC()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_25A878024()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8780B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25A87817C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25A878194(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25A8781F4()
{
  result = qword_27FA045F0;
  if (!qword_27FA045F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA045F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExprContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExprContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A8783A4()
{
  result = qword_27FA045F8;
  if (!qword_27FA045F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA045F8);
  }

  return result;
}

unint64_t sub_25A8783FC()
{
  result = qword_27FA04600;
  if (!qword_27FA04600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04600);
  }

  return result;
}

unint64_t sub_25A878454()
{
  result = qword_27FA04608;
  if (!qword_27FA04608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04608);
  }

  return result;
}

unint64_t sub_25A8784A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8784F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365756C6176;
  }

  else
  {
    v3 = 1937335659;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365756C6176;
  }

  else
  {
    v5 = 1937335659;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A878590()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A878608(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A87866C(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8786E0@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25A878740(uint64_t *a1@<X8>)
{
  v2 = 1937335659;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A878774()
{
  if (*v0)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1937335659;
  }
}

uint64_t sub_25A8787A4@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A878808(uint64_t a1)
{
  v2 = sub_25A8795F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A878844(uint64_t a1)
{
  v2 = sub_25A8795F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8788CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04628, &qword_25A9F8920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8795F4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for MorpheusDict();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A93E5C8(v8, 0);
    *(v1 + 48) = sub_25A93E5C8(v8, 1);
    sub_25A872F24(a1, v11);
    v3 = sub_25A8963D8(v11);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A878AD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_17:
    v70 = v5;
    v21 = *(v2 + 48);
    v22 = *(v21 + 16);
    v23 = MEMORY[0x277D84F90];
    if (!v22)
    {
      goto LABEL_35;
    }

    v85 = MEMORY[0x277D84F90];

    sub_25A937550(0, v22, 0);
    v23 = v85;
    swift_beginAccess();
    v24 = 0;
    v25 = (v21 + 40);
    v26 = v67;
    v62 = v22;
    v64 = v21;
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        goto LABEL_59;
      }

      v27 = v23;
      v28 = *v25;
      v68 = v25;
      v29 = v26;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v32 = *(v2 + 32);
      v33 = *(v28 + 48);
      swift_unknownObjectRetain();
      v33(Strong, v32, ObjectType, v28);
      (*(v28 + 64))(&v79, ObjectType, v28);
      v26 = v29;
      if (v29)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(&v79, &v76);
      v34 = v27;
      if (v78)
      {
        sub_25A872CE0(&v76);
        sub_25A872C84(&v79, &v76);
        v21 = v64;
        v2 = v65;
        if (v78 == 1)
        {
          v71 = v76;
          v72 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v35 = v62;
          if ((swift_dynamicCast() & 1) == 0)
          {
            v83 = 0u;
            v84 = 0u;
          }

          goto LABEL_30;
        }

        sub_25A872CE0(&v76);
      }

      else
      {
        v71 = v76;
        v72 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        v21 = v64;
        v2 = v65;
        if (swift_dynamicCast())
        {
          goto LABEL_29;
        }
      }

      v83 = 0u;
      v84 = 0u;
LABEL_29:
      v35 = v62;
LABEL_30:
      sub_25A872CE0(&v79);
      sub_25A92DE50(&v83, &v73);
      swift_unknownObjectRelease();
      sub_25A878194(&v83, &qword_27FA04458, &unk_25A9F7FB0);
      v85 = v34;
      v37 = v34[2];
      v36 = v34[3];
      v38 = v34;
      if (v37 >= v36 >> 1)
      {
        sub_25A937550((v36 > 1), v37 + 1, 1);
        v38 = v85;
      }

      ++v24;
      v38[2] = v37 + 1;
      sub_25A872D74(&v73, &v38[4 * v37 + 4]);
      v25 = v68 + 2;
      v23 = v38;
      if (v35 == v24)
      {

LABEL_35:
        v39 = sub_25A98E540(MEMORY[0x277D84F90]);
        v40 = v70;
        v66 = *(v70 + 16);
        if (!v66)
        {
LABEL_55:

LABEL_57:
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
          v60 = swift_allocObject();
          *(v60 + 16) = MEMORY[0x277D84F98];
          result = swift_beginAccess();
          *(v60 + 16) = v39;
          *(a1 + 24) = v59;
          *a1 = v60;
          *(a1 + 32) = 0;
          return result;
        }

        v41 = 0;
        v42 = v70 + 32;
        v43 = v23;
        v44 = (v23 + 4);
        while (2)
        {
          if (v41 >= *(v40 + 16))
          {
            goto LABEL_60;
          }

          sub_25A879530(v42, &v76);
          v45 = v43[2];
          if (v41 == v45)
          {

            sub_25A878194(&v76, &qword_27FA04610, &qword_25A9FDA50);
            goto LABEL_57;
          }

          if (v41 >= v45)
          {
            goto LABEL_61;
          }

          v79 = v76;
          v80 = v77;
          v81 = v78;
          sub_25A87500C(v44, v82);
          sub_25A879530(&v79, &v73);
          if (*(&v74 + 1))
          {
            v76 = v73;
            v77 = v74;
            v78 = v75;
            sub_25A874FB0(&v76, &v73);
            sub_25A92D814(v82, &v83);
            sub_25A872D74(&v83, &v71);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85 = v39;
            v48 = sub_25A8F35BC(&v73);
            v49 = v39[2];
            v50 = (v47 & 1) == 0;
            v51 = v49 + v50;
            if (__OFADD__(v49, v50))
            {
              goto LABEL_62;
            }

            v52 = v47;
            if (v39[3] >= v51)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v39 = v85;
                if ((v47 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                sub_25A968DB8();
                v39 = v85;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
              sub_25A9679D0(v51, isUniquelyReferenced_nonNull_native);
              v53 = sub_25A8F35BC(&v73);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_64;
              }

              v48 = v53;
              v39 = v85;
              if ((v52 & 1) == 0)
              {
LABEL_47:
                v39[(v48 >> 6) + 8] |= 1 << v48;
                sub_25A874FB0(&v73, v39[6] + 40 * v48);
                sub_25A872D74(&v71, (v39[7] + 32 * v48));
                v55 = v39[2];
                v56 = __OFADD__(v55, 1);
                v57 = v55 + 1;
                if (v56)
                {
                  goto LABEL_63;
                }

                v39[2] = v57;
LABEL_52:
                sub_25A8795A0(&v73);
                sub_25A8795A0(&v76);
LABEL_38:
                ++v41;
                sub_25A878194(&v79, &qword_27FA04618, &qword_25A9F8918);
                v42 += 40;
                v44 += 32;
                v40 = v70;
                if (v66 == v41)
                {
                  goto LABEL_55;
                }

                continue;
              }
            }

            v58 = (v39[7] + 32 * v48);
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            sub_25A872D74(&v71, v58);
            goto LABEL_52;
          }

          break;
        }

        sub_25A878194(&v73, &qword_27FA04610, &qword_25A9FDA50);
        goto LABEL_38;
      }
    }
  }

  *&v71 = MEMORY[0x277D84F90];

  sub_25A937630(0, v4, 0);
  v69 = v71;
  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 40);
  v63 = v3;
  while (v6 < *(v3 + 16))
  {
    v8 = v4;
    v9 = *v7;
    v10 = swift_getObjectType();
    v11 = swift_unknownObjectWeakLoadStrong();
    v12 = *(v2 + 32);
    v13 = *(v9 + 48);
    swift_unknownObjectRetain();
    v13(v11, v12, v10, v9);
    (*(v9 + 64))(&v76, v10, v9);
    if (v67)
    {

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_25A872C84(&v76, &v73);
    if (v75)
    {
      sub_25A872CE0(&v73);
      LOBYTE(v75) = v78;
      v73 = v76;
      v74 = v77;
      v2 = v65;
      v4 = v8;
      if (v78 != 1)
      {
        sub_25A872CE0(&v73);
        v79 = 0u;
        v80 = 0u;
        v81 = 0;
        goto LABEL_12;
      }

      v83 = v76;
      v84 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }

LABEL_10:
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      goto LABEL_12;
    }

    sub_25A872CE0(&v76);
    v83 = v73;
    v84 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v2 = v65;
    v4 = v8;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v14 = v69;
    *&v71 = v69;
    v16 = *(v69 + 16);
    v15 = *(v69 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_25A937630((v15 > 1), v16 + 1, 1);
      v14 = v71;
    }

    ++v6;
    *(v14 + 16) = v16 + 1;
    v69 = v14;
    v17 = v14 + 40 * v16;
    v18 = v79;
    v19 = v80;
    *(v17 + 64) = v81;
    *(v17 + 32) = v18;
    *(v17 + 48) = v19;
    v7 += 2;
    v3 = v63;
    if (v4 == v6)
    {

      v5 = v69;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A879338()
{
  sub_25A9985F8();

  v1 = *(v0 + 40);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v3 = MEMORY[0x25F850440](v1, v2);
  v5 = v4;

  MEMORY[0x25F850290](v3, v5);

  MEMORY[0x25F850290](0x7365756C6176202CLL, 0xEA0000000000203ALL);

  v7 = MEMORY[0x25F850440](v6, v2);
  v9 = v8;

  MEMORY[0x25F850290](v7, v9);

  MEMORY[0x25F850290](41, 0xE100000000000000);
  return 0x79656B2874636964;
}

uint64_t sub_25A879474()
{
}

uint64_t sub_25A8794A4()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A879530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04610, &qword_25A9FDA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25A8795F4()
{
  result = qword_27FA04630;
  if (!qword_27FA04630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04630);
  }

  return result;
}

unint64_t sub_25A87965C()
{
  result = qword_27FA04638;
  if (!qword_27FA04638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04638);
  }

  return result;
}

unint64_t sub_25A8796B4()
{
  result = qword_27FA04640;
  if (!qword_27FA04640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04640);
  }

  return result;
}

unint64_t sub_25A87970C()
{
  result = qword_27FA04648;
  if (!qword_27FA04648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04648);
  }

  return result;
}

uint64_t sub_25A879760()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A8797BC(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A879804@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25A9988C8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25A87987C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25A9988C8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25A8798D4(uint64_t a1)
{
  v2 = sub_25A87B2A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A879910(uint64_t a1)
{
  v2 = sub_25A87B2A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A879998(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04650, &qword_25A9F8AB0);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  type metadata accessor for LexicalContext();
  v7 = swift_allocObject();
  v7[2] = 0x6E776F6E6B6E55;
  v7[3] = 0xE700000000000000;
  v8 = MEMORY[0x277D84F90];
  v9 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v10 + 16) = v9;
  v7[4] = v10;
  v7[5] = sub_25A98E67C(v8);
  *(v2 + 48) = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A87B2A8();
  v11 = v26;
  sub_25A998BF8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    type metadata accessor for LexicalBlock();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v22 = v4;
  *(v2 + 40) = sub_25A9428F4(v6);
  sub_25A872F24(a1, v25);
  v13 = sub_25A8963D8(v25);
  v2 = v13;
  v21 = v6;
  v14 = *(v13 + 40);
  v15 = *(v14 + 16);

  v26 = v14;

  v23 = v15;
  if (!v15)
  {
LABEL_9:

    (*(v24 + 8))(v21, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    return v2;
  }

  v16 = 0;
  v17 = (v26 + 40);
  while (v16 < *(v26 + 16))
  {
    ++v16;
    v18 = *v17;
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 48);

    swift_unknownObjectRetain();
    v20(v2, &off_286C0F948, ObjectType, v18);
    result = swift_unknownObjectRelease();
    v17 += 2;
    if (v23 == v16)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_25A879CE8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{

  LexicalContext.attribute(for:)(a1, a2, &v16);

  if (v17)
  {
    sub_25A872D74(&v16, a3);
  }

  else
  {
    sub_25A872D84(&v16);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      (*(v8 + 48))(a1, a2, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v10 = sub_25A997BD8();
      __swift_project_value_buffer(v10, qword_27FA0FCE8);

      v11 = sub_25A997BB8();
      v12 = sub_25A9983A8();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_25A98CC90(a1, a2, &v15);
        _os_log_impl(&dword_25A232000, v11, v12, "LexicalBlock> Can't locate name %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x25F852800](v14, -1, -1);
        MEMORY[0x25F852800](v13, -1, -1);
      }

      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_25A879EEC(uint64_t a1, void *a2)
{

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6 = LexicalContext.has(attribute:)(v5);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      v7 = (*(v8 + 56))(a1, a2, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t sub_25A879FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = a1;
  v9[1] = a2;
  sub_25A87500C(v9, v8);

  if (swift_dynamicCast())
  {

    sub_25A998578();
    sub_25A87500C(a3, v7);
    sub_25A874FB0(v8, &v6);
    sub_25A8780B8(v7, v5);
    swift_beginAccess();
    sub_25A8F2E14(v5, &v6);
    swift_endAccess();

    sub_25A872D84(v7);
    sub_25A8795A0(v8);
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_25A87A108(uint64_t a1, uint64_t a2)
{
  swift_retain_n();
  v4 = &off_286C0F948;
  v18 = v2;
  while (1)
  {
    ObjectType = swift_getObjectType();
    v6 = v4[1];
    v7 = v6(ObjectType, v4);
    v8 = *(v7 + 32);
    *&v20[0] = a1;
    *(&v20[0] + 1) = a2;

    sub_25A998578();
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16))
    {
      break;
    }

LABEL_6:
    sub_25A8795A0(v21);
    memset(v20, 0, sizeof(v20));
    sub_25A872D84(v20);
    swift_beginAccess();
    if (*(*(v7 + 40) + 16))
    {

      sub_25A8F3600(a1, a2);
      v13 = v12;

      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v14 = (v4[2])(ObjectType, v4);
    v4 = v15;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v14)
    {
      v16 = *(v18 + 48);

      return v16;
    }

    swift_unknownObjectRetain();
  }

  v10 = sub_25A8F35BC(v21);
  if ((v11 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_25A87500C(*(v9 + 56) + 32 * v10, v20);

  sub_25A8795A0(v21);

  sub_25A872D84(v20);

LABEL_14:
  v16 = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_25A87A380@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v5 = *(v2 + 40);
  v6 = *(v5 + 16);

  v22 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 64);
      swift_unknownObjectRetain();
      v12(v17, ObjectType, v10);
      swift_unknownObjectRelease();
      if (v4)
      {

        return sub_25A872CE0(&v19);
      }

      sub_25A872CE0(&v19);
      v19 = v17[0];
      v20 = v17[1];
      v21 = v18;
      sub_25A872C84(&v19, v17);
      if (v18)
      {

        result = sub_25A872CE0(v17);
        v13 = v20;
        *a2 = v19;
        *(a2 + 16) = v13;
        *(a2 + 32) = v21;
        return result;
      }

      ++v8;
      result = sub_25A872CE0(v17);
      v9 += 2;
      if (v22 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    sub_25A872C84(&v19, a2);
    sub_25A87A508(a1 & 1, v15);
    return sub_25A872CE0(&v19);
  }

  return result;
}

uint64_t sub_25A87A508(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 48);
    v3 = *(v2 + 32);
    swift_beginAccess();
    v4 = MEMORY[0x277D84F98];
    *(v3 + 16) = MEMORY[0x277D84F98];

    swift_beginAccess();
    *(v2 + 40) = v4;
  }

  return result;
}

uint64_t sub_25A87A5A4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];

    sub_25A9375A0(0, v2, 0);
    v3 = v18;
    v4 = v1 + 40;
    do
    {
      swift_getObjectType();
      v5 = sub_25A998968();
      v19 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_25A9375A0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v19;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v12 = v3[2];
  if (v12)
  {
    v13 = v3 + 5;
    do
    {
      v16 = *(v13 - 1);
      v17 = *v13;
      swift_bridgeObjectRetain_n();
      MEMORY[0x25F850290](10, 0xE100000000000000);

      MEMORY[0x25F850290](v16, v17);

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  v14 = _sSS8MorpheusE3lenSiyF_0();
  if (v14 >= 1)
  {
    sub_25A87A744(v14);
  }

  return 0;
}

uint64_t sub_25A87A744(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_25A997F38();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_25A87A7AC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v70 = v1;
  v71 = v5;
  while (v4)
  {
    v7 = v6;
LABEL_16:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_25A87500C(*(a1 + 56) + 32 * v11, &v82);
    *&v90 = v14;
    *(&v90 + 1) = v13;
    sub_25A872D74(&v82, &v91);

LABEL_17:
    v93 = v90;
    v94[0] = v91;
    v94[1] = v92;
    v15 = *(&v90 + 1);
    if (!*(&v90 + 1))
    {
    }

    v16 = v93;
    sub_25A872D74(v94, v89);
    sub_25A87500C(v89, &v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
    if (swift_dynamicCast())
    {
      v73 = v16;
      v17 = v82;
      swift_getObjectType();
      (*(*(&v17 + 1) + 64))(&v90);
      if (v75)
      {
        swift_unknownObjectRelease();

        return __swift_destroy_boxed_opaque_existential_0Tm(v89);
      }

      sub_25A872C84(&v90, &v82);
      if (v84)
      {
        sub_25A872CE0(&v82);
        v84 = v92;
        v82 = v90;
        v83 = v91;
        if (v92 != 1)
        {
          sub_25A872CE0(&v82);
          v85 = 0u;
          v86 = 0u;
          goto LABEL_41;
        }

        v18 = v90;
        v19 = v91;
      }

      else
      {
        sub_25A872CE0(&v90);
        v18 = v82;
        v19 = v83;
      }

      v80 = v18;
      v81 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v85 = 0u;
        v86 = 0u;
      }

      if (*(&v86 + 1))
      {
        sub_25A872D74(&v85, &v87);
        sub_25A92D814(&v87, &v85);
        v32 = *(v72 + 48);
        *(&v81 + 1) = MEMORY[0x277D837D0];
        *&v80 = v16;
        *(&v80 + 1) = v15;
        sub_25A87500C(&v80, &v90);

        if (swift_dynamicCast())
        {
          v33 = *(v32 + 32);

          sub_25A998578();
          sub_25A87500C(&v85, v79);
          sub_25A874FB0(&v90, &v82);
          sub_25A8780B8(v79, &v77);
          swift_beginAccess();
          if (v78)
          {
            sub_25A872D74(&v77, v76);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v95 = *(v33 + 16);
            v35 = v95;
            *(v33 + 16) = 0x8000000000000000;
            v36 = sub_25A8F35BC(&v82);
            v38 = v35[2];
            v39 = (v37 & 1) == 0;
            v28 = __OFADD__(v38, v39);
            v40 = v38 + v39;
            if (v28)
            {
              goto LABEL_77;
            }

            v41 = v37;
            if (v35[3] >= v40)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v67 = v36;
                sub_25A968DB8();
                v36 = v67;
              }
            }

            else
            {
              sub_25A9679D0(v40, isUniquelyReferenced_nonNull_native);
              v36 = sub_25A8F35BC(&v82);
              if ((v41 & 1) != (v42 & 1))
              {
                goto LABEL_79;
              }
            }

            v61 = v95;
            v1 = v70;
            if (v41)
            {
              v62 = (v95[7] + 32 * v36);
              __swift_destroy_boxed_opaque_existential_0Tm(v62);
              sub_25A872D74(v76, v62);
              sub_25A8795A0(&v82);
            }

            else
            {
              v95[(v36 >> 6) + 8] |= 1 << v36;
              v63 = v36;
              sub_25A874FB0(&v82, v61[6] + 40 * v36);
              sub_25A872D74(v76, (v61[7] + 32 * v63));
              sub_25A8795A0(&v82);
              v64 = v61[2];
              v28 = __OFADD__(v64, 1);
              v65 = v64 + 1;
              if (v28)
              {
                goto LABEL_78;
              }

              v61[2] = v65;
            }

            *(v33 + 16) = v61;
          }

          else
          {
            sub_25A872D84(&v77);
            sub_25A9699B4(&v82, v76);
            sub_25A872D84(v76);
            sub_25A8795A0(&v82);
          }

          swift_endAccess();
          swift_unknownObjectRelease();

          sub_25A872D84(v79);
          sub_25A8795A0(&v90);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v85);
        __swift_destroy_boxed_opaque_existential_0Tm(&v87);
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        __swift_destroy_boxed_opaque_existential_0Tm(&v80);
        v5 = v71;
      }

      else
      {
LABEL_41:
        sub_25A872D84(&v85);
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v43 = sub_25A997BD8();
        __swift_project_value_buffer(v43, qword_27FA0FCE8);
        swift_unknownObjectRetain();

        v44 = sub_25A997BB8();
        v45 = sub_25A9983A8();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *&v90 = v69;
          *v46 = 136315394;
          *&v82 = v17;
          v47 = sub_25A998968();
          v49 = sub_25A98CC90(v47, v48, &v90);

          *(v46 + 4) = v49;
          *(v46 + 12) = 2080;
          v50 = sub_25A98CC90(v73, v15, &v90);

          *(v46 + 14) = v50;
          _os_log_impl(&dword_25A232000, v44, v45, "Operation: %s did not return value type, ignore the input %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F852800](v69, -1, -1);
          MEMORY[0x25F852800](v46, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        v1 = v70;
        v5 = v71;
      }
    }

    else
    {
      v20 = *(v72 + 48);
      v88 = MEMORY[0x277D837D0];
      *&v87 = v16;
      *(&v87 + 1) = v15;
      sub_25A87500C(&v87, &v90);

      if (swift_dynamicCast())
      {
        v21 = *(v20 + 32);

        sub_25A998578();
        sub_25A87500C(v89, &v85);
        sub_25A874FB0(&v90, &v82);
        sub_25A8780B8(&v85, &v80);
        swift_beginAccess();
        if (*(&v81 + 1))
        {
          sub_25A872D74(&v80, v79);
          v22 = swift_isUniquelyReferenced_nonNull_native();
          *&v76[0] = *(v21 + 16);
          v23 = *&v76[0];
          *(v21 + 16) = 0x8000000000000000;
          v24 = sub_25A8F35BC(&v82);
          v26 = *(v23 + 16);
          v27 = (v25 & 1) == 0;
          v28 = __OFADD__(v26, v27);
          v29 = v26 + v27;
          if (v28)
          {
            goto LABEL_75;
          }

          v30 = v25;
          if (*(v23 + 24) >= v29)
          {
            if ((v22 & 1) == 0)
            {
              v66 = v24;
              sub_25A968DB8();
              v24 = v66;
            }
          }

          else
          {
            sub_25A9679D0(v29, v22);
            v24 = sub_25A8F35BC(&v82);
            if ((v30 & 1) != (v31 & 1))
            {
              goto LABEL_79;
            }
          }

          v56 = *&v76[0];
          v5 = v71;
          if (v30)
          {
            v57 = (*(*&v76[0] + 56) + 32 * v24);
            __swift_destroy_boxed_opaque_existential_0Tm(v57);
            sub_25A872D74(v79, v57);
            sub_25A8795A0(&v82);
          }

          else
          {
            *(*&v76[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
            v58 = v24;
            sub_25A874FB0(&v82, v56[6] + 40 * v24);
            sub_25A872D74(v79, (v56[7] + 32 * v58));
            sub_25A8795A0(&v82);
            v59 = v56[2];
            v28 = __OFADD__(v59, 1);
            v60 = v59 + 1;
            if (v28)
            {
              goto LABEL_76;
            }

            v56[2] = v60;
          }

          *(v21 + 16) = v56;
        }

        else
        {
          sub_25A872D84(&v80);
          v51 = sub_25A8F35BC(&v82);
          if (v52)
          {
            v53 = v51;
            v54 = swift_isUniquelyReferenced_nonNull_native();
            v55 = *(v21 + 16);
            *&v76[0] = v55;
            *(v21 + 16) = 0x8000000000000000;
            if (!v54)
            {
              sub_25A968DB8();
              v55 = *&v76[0];
            }

            sub_25A8795A0(*(v55 + 48) + 40 * v53);
            sub_25A872D74((*(v55 + 56) + 32 * v53), v79);
            sub_25A969C84(v53, v55);
            sub_25A8795A0(&v82);
            *(v21 + 16) = v55;
          }

          else
          {
            sub_25A8795A0(&v82);
            memset(v79, 0, sizeof(v79));
          }

          sub_25A872D84(v79);
        }

        swift_endAccess();

        sub_25A872D84(&v85);
        sub_25A8795A0(&v90);
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        v1 = v70;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v89);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v87);
    }
  }

  if (v5 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 - 1;
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      v4 = 0;
      v91 = 0u;
      v92 = 0u;
      v6 = v9;
      v90 = 0u;
      goto LABEL_17;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}