void sub_25907E8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULConfigurationDO,ULConfigurationMO_deprecated>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>(v5, 0, v9, a2, a3);
}

void sub_25907EDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_25907EF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25907EFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25907F0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25907F224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25907F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  *(v28 - 112) = a13;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100]((v28 - 112));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v21 = 0uLL;
  v22 = 0;
  std::vector<ULConfigurationDO>::reserve(&v21, [v3 count]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v34 count:16];
  if (v4)
  {
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v17 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULConfigurationDO>::push_back[abi:ne200100](&v21, __p);
      v9 = 1;
LABEL_19:
      if (v33 == 1)
      {
        CLMicroLocationProto::Configuration::~Configuration((v32 + 8));
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[1]);
        }
      }

      if (!v9)
      {

        goto LABEL_27;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v17 objects:v34 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }
    }

    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v30 = 0u;
    v31 = 0u;
    *__p = 0u;
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_25:

  *a2 = v21;
  a2[2] = v22;
  v22 = 0;
  v21 = 0uLL;
LABEL_27:
  __p[0] = &v21;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_25907FCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void sub_25907FFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ULConfigurationDO>::__vdeallocate(char **a1)
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
        v3 -= 112;
        std::__destroy_at[abi:ne200100]<ULConfigurationDO,0>(v3);
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

uint64_t std::optional<ULConfigurationDO>::~optional(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    CLMicroLocationProto::Configuration::~Configuration((a1 + 56));
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t *std::vector<ULConfigurationDO>::__init_with_size[abi:ne200100]<ULConfigurationDO*,ULConfigurationDO*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULConfigurationDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259080144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULConfigurationDO>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULConfigurationDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULConfigurationDO>,ULConfigurationDO*,ULConfigurationDO*,ULConfigurationDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *(a4 + v7) = *(a2 + v7);
      v9 = (a4 + v7 + 8);
      if (*(a2 + v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      v12 = *(v8 + 32);
      *(v11 + 48) = *(v8 + 48);
      *(v11 + 32) = v12;
      CLMicroLocationProto::Configuration::Configuration((a4 + v7 + 56), (a2 + v7 + 56));
      v7 += 112;
    }

    while (v8 + 112 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_259080268(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 112;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULConfigurationDO,0>(v4);
      v4 -= 112;
      v5 += 112;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9ULDBUtils17insertDataObjectsI17ULConfigurationDO28ULConfigurationMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI17ULConfigurationDO28ULConfigurationMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_1();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULDBUtils::convertManagedObjectsToDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 112;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_34()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<ULConfigurationMO_deprecated * ()(ULConfigurationDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULConfigurationMO_deprecated * ()(ULConfigurationDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZN9ULDBUtils16fetchDataObjectsI17ULConfigurationDO28ULConfigurationMO_deprecatedEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULConfigurationDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

uint64_t *std::vector<ULConfigurationDO>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULConfigurationDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_259080A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULConfigurationDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULConfigurationDO>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULConfigurationDO>::__emplace_back_slow_path<ULConfigurationDO>(a1, a2);
  }

  else
  {
    std::vector<ULConfigurationDO>::__construct_one_at_end[abi:ne200100]<ULConfigurationDO>(a1, a2);
    result = v3 + 112;
  }

  a1[1] = result;
  return result;
}

CLMicroLocationProto::Configuration *std::vector<ULConfigurationDO>::__construct_one_at_end[abi:ne200100]<ULConfigurationDO>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v4 = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 32);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 32) = v5;
  result = CLMicroLocationProto::Configuration::Configuration((v3 + 56), (a2 + 56));
  *(a1 + 8) = v3 + 112;
  return result;
}

void sub_259080AD0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULConfigurationDO>::__emplace_back_slow_path<ULConfigurationDO>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULConfigurationDO>>(a1, v6);
  }

  v7 = 112 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  CLMicroLocationProto::Configuration::Configuration((v7 + 56), (a2 + 56));
  *&v18 = v18 + 112;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULConfigurationDO>,ULConfigurationDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULConfigurationDO>::~__split_buffer(&v16);
  return v15;
}

void sub_259080C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULConfigurationDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_259080E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULMeasurementDO,ULMeasurementMO_deprecated>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI15ULMeasurementDO26ULMeasurementMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A55C20;
    v17 = a2;
    std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_259080F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULMeasurementDO,ULMeasurementMO_deprecated>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI15ULMeasurementDO26ULMeasurementMO_deprecatedEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_259081184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULMeasurementDO,ULMeasurementMO_deprecated>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULMeasurementDO,ULMeasurementMO_deprecated>(v5, 0, v9, a2, a3);
}

void sub_259081A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::DatabaseSelectionLimit>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71820 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A718B0 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71910 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71A18 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71B38 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71BB0 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

void sub_259081D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_259081FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2590826D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_35()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<ULMeasurementDO>::__vdeallocate(char **a1)
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
        v5 = v3 - 120;
        CLMicroLocationProto::Measurement::~Measurement((v3 - 88));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void ___ZN9ULDBUtils17insertDataObjectsI15ULMeasurementDO26ULMeasurementMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMeasurementStore deleteRecordsOlderThan:orNewerThan:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI15ULMeasurementDO26ULMeasurementMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 120;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN9ULDBUtils16fetchDataObjectsI15ULMeasurementDO26ULMeasurementMO_deprecatedEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULMeasurementDO,ULMeasurementMO_deprecated>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULMeasurementDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULMeasurementDO,ULMeasurementMO_deprecated>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v23 = 0uLL;
  v24 = 0;
  std::vector<ULMeasurementDO>::reserve(&v23, [v3 count]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v34 count:16];
  if (v4)
  {
    v5 = *v20;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v20 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v19 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((BYTE8(v33) & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v23 + 1);
      if (*(&v23 + 1) >= v24)
      {
        v10 = std::vector<ULMeasurementDO>::__emplace_back_slow_path<ULMeasurementDO>(&v23, v31);
      }

      else
      {
        ULMeasurementDO::ULMeasurementDO(*(&v23 + 1), v31);
        v10 = v9 + 120;
      }

      *(&v23 + 1) = v10;
      v17 = 1;
LABEL_22:
      if (BYTE8(v33) == 1)
      {
        CLMicroLocationProto::Measurement::~Measurement(v32);
      }

      if (!v17)
      {

        goto LABEL_29;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v19 objects:v34 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    v33 = 0u;
    memset(v32, 0, sizeof(v32));
    memset(v31, 0, sizeof(v31));
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN9ULDBUtils17insertDataObjectsI15ULMeasurementDO26ULMeasurementMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 entity];
      v13 = [v12 name];
      *buf = 68289283;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2113;
      v30 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN9ULDBUtils17insertDataObjectsI15ULMeasurementDO26ULMeasurementMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v15 = [v8 entity];
      v16 = [v15 name];
      *buf = 68289283;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2113;
      v30 = v16;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v17 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_27:

  *a2 = v23;
  a2[2] = v24;
  v24 = 0;
  v23 = 0uLL;
LABEL_29:
  *&v31[0] = &v23;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](v31);
}

void sub_2590832EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULMeasurementDO>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x222222222222223)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULMeasurementDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_259083460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULMeasurementDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULMeasurementDO>::__emplace_back_slow_path<ULMeasurementDO>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMeasurementDO>>(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  ULMeasurementDO::ULMeasurementDO(120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = a1[1];
  v8 = 120 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMeasurementDO>,ULMeasurementDO*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ULMeasurementDO>::~__split_buffer(&v13);
  return v12;
}

void sub_259083590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULMeasurementDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_259083754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ULRecordingEventMO_deprecated * ()(ULRecordingEventDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI18ULRecordingEventDO29ULRecordingEventMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A55D08;
    v17 = a2;
    std::__function::__value_func<ULRecordingEventMO_deprecated * ()(ULRecordingEventDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULRecordingEventMO_deprecated * ()(ULRecordingEventDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_2590838B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULRecordingEventMO_deprecated * ()(ULRecordingEventDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI18ULRecordingEventDO29ULRecordingEventMO_deprecatedEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_259083AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULRecordingEventDO,ULRecordingEventMO_deprecated>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>(v5, 0, v9, a2, a3);
}

void sub_25908462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  *(v28 - 144) = a12;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100]((v28 - 144));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v21 = 0uLL;
  v22 = 0;
  std::vector<ULRecordingEventDO>::reserve(&v21, [v3 count]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v36 count:16];
  if (v4)
  {
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v17 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((BYTE8(v35) & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULRecordingEventDO>::push_back[abi:ne200100](&v21, &v29);
      v9 = 1;
LABEL_19:
      if (BYTE8(v35) == 1)
      {
        CLMicroLocationProto::RecordingEvent::~RecordingEvent(v34);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[1]);
        }
      }

      if (!v9)
      {

        goto LABEL_27;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v17 objects:v36 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }
    }

    v35 = 0u;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    *__p = 0u;
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_25:

  *a2 = v21;
  a2[2] = v22;
  v22 = 0;
  v21 = 0uLL;
LABEL_27:
  *&v29 = &v21;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v29);
}

void sub_259084C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void sub_259086114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (*(v15 + 47) < 0)
  {
    operator delete(*(v15 + 24));
  }

  a11 = &a15;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULRecordingEventDO>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x108421084210843)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULRecordingEventDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_259086274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULRecordingEventDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_2590867CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259086B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_259086DEC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_36()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULRecordingEventDO::~ULRecordingEventDO(ULRecordingEventDO *this)
{
  CLMicroLocationProto::RecordingEvent::~RecordingEvent(&this[5]);
  if (this[2].var0.data[15] < 0)
  {
    operator delete(*&this[1].var0.data[8]);
  }
}

void std::vector<ULRecordingEventDO>::__vdeallocate(char **a1)
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
        v3 -= 248;
        std::__destroy_at[abi:ne200100]<ULRecordingEventDO,0>(v3);
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

uint64_t *std::vector<ULRecordingEventDO>::__init_with_size[abi:ne200100]<ULRecordingEventDO*,ULRecordingEventDO*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULRecordingEventDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259086F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULRecordingEventDO>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULRecordingEventDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULRecordingEventDO>,ULRecordingEventDO*,ULRecordingEventDO*,ULRecordingEventDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      *(v9 + 16) = *(a2 + v7 + 16);
      *v9 = v10;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external((v9 + 24), *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v11 = *(v8 + 24);
        *(v9 + 40) = *(v8 + 40);
        *(v9 + 24) = v11;
      }

      v12 = a4 + v7;
      v13 = *(v8 + 48);
      *(v12 + 60) = *(v8 + 60);
      *(v12 + 48) = v13;
      CLMicroLocationProto::RecordingEvent::RecordingEvent((a4 + v7 + 80), (a2 + v7 + 80));
      v14 = *(v8 + 224);
      *(v12 + 240) = *(v8 + 240);
      *(v12 + 224) = v14;
      v7 += 248;
    }

    while (v8 + 248 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2590870C8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 248;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULRecordingEventDO,0>(v4);
      v4 -= 248;
      v5 += 248;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_259088774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ULRecordingEventDO a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ULRecordingEventDO a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = bswap64(*a2);
  v7 = bswap64(*result);
  if (v6 == v7 && (v6 = bswap64(a2[1]), v7 = bswap64(result[1]), v6 == v7))
  {
    v8 = 0;
  }

  else if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  v9 = bswap64(*a3);
  v10 = bswap64(*a2);
  if (v9 != v10 || (v9 = bswap64(a3[1]), v10 = bswap64(a2[1]), v9 != v10))
  {
    if (v9 < v10)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    if (v11 < 0)
    {
      std::swap[abi:ne200100]<ULRecordingEventDO>(a2, a3);
      v14 = bswap64(*a2);
      v15 = bswap64(*v5);
      if (v14 != v15 || (v14 = bswap64(a2[1]), v15 = bswap64(v5[1]), v14 != v15))
      {
        v18 = v14 < v15 ? -1 : 1;
        if (v18 < 0)
        {
          result = v5;
          v17 = a2;
          goto LABEL_34;
        }
      }
    }

    return;
  }

  v11 = 0;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v11 < 0)
  {
LABEL_27:
    v17 = a3;
LABEL_34:

    std::swap[abi:ne200100]<ULRecordingEventDO>(result, v17);
    return;
  }

  std::swap[abi:ne200100]<ULRecordingEventDO>(result, a2);
  v12 = bswap64(*a3);
  v13 = bswap64(*a2);
  if (v12 != v13 || (v12 = bswap64(a3[1]), v13 = bswap64(a2[1]), v12 != v13))
  {
    v16 = v12 < v13 ? -1 : 1;
    if (v16 < 0)
    {
      result = a2;
      goto LABEL_27;
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(a1, a2, a3);
  v10 = bswap64(*a4);
  v11 = bswap64(*a3);
  if (v10 != v11 || (v10 = bswap64(a4[1]), v11 = bswap64(a3[1]), v10 != v11))
  {
    v12 = v10 < v11 ? -1 : 1;
    if (v12 < 0)
    {
      std::swap[abi:ne200100]<ULRecordingEventDO>(a3, a4);
      v13 = bswap64(*a3);
      v14 = bswap64(*a2);
      if (v13 != v14 || (v13 = bswap64(a3[1]), v14 = bswap64(a2[1]), v13 != v14))
      {
        v15 = v13 < v14 ? -1 : 1;
        if (v15 < 0)
        {
          std::swap[abi:ne200100]<ULRecordingEventDO>(a2, a3);
          v16 = bswap64(*a2);
          v17 = bswap64(*a1);
          if (v16 != v17 || (v16 = bswap64(a2[1]), v17 = bswap64(a1[1]), v16 != v17))
          {
            v18 = v16 < v17 ? -1 : 1;
            if (v18 < 0)
            {
              std::swap[abi:ne200100]<ULRecordingEventDO>(a1, a2);
            }
          }
        }
      }
    }
  }

  v19 = bswap64(*a5);
  v20 = bswap64(*a4);
  if (v19 != v20 || (v19 = bswap64(a5[1]), v20 = bswap64(a4[1]), v19 != v20))
  {
    v21 = v19 < v20 ? -1 : 1;
    if (v21 < 0)
    {
      std::swap[abi:ne200100]<ULRecordingEventDO>(a4, a5);
      v22 = bswap64(*a4);
      v23 = bswap64(*a3);
      if (v22 != v23 || (v22 = bswap64(a4[1]), v23 = bswap64(a3[1]), v22 != v23))
      {
        v24 = v22 < v23 ? -1 : 1;
        if (v24 < 0)
        {
          std::swap[abi:ne200100]<ULRecordingEventDO>(a3, a4);
          v25 = bswap64(*a3);
          v26 = bswap64(*a2);
          if (v25 != v26 || (v25 = bswap64(a3[1]), v26 = bswap64(a2[1]), v25 != v26))
          {
            v27 = v25 < v26 ? -1 : 1;
            if (v27 < 0)
            {
              std::swap[abi:ne200100]<ULRecordingEventDO>(a2, a3);
              v28 = bswap64(*a2);
              v29 = bswap64(*a1);
              if (v28 == v29 && (v28 = bswap64(a2[1]), v29 = bswap64(a1[1]), v28 == v29))
              {
                v30 = 0;
              }

              else if (v28 < v29)
              {
                v30 = -1;
              }

              else
              {
                v30 = 1;
              }

              if (v30 < 0)
              {

                std::swap[abi:ne200100]<ULRecordingEventDO>(a1, a2);
              }
            }
          }
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *>(unint64_t *a1, unint64_t *a2)
{
  v3 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v4 = 0xEF7BDEF7BDEF7BDFLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = bswap64(*(a2 - 31));
        v6 = bswap64(*a1);
        if (v5 == v6)
        {
          v5 = bswap64(*(a2 - 30));
          v6 = bswap64(a1[1]);
          if (v5 == v6)
          {
            return 1;
          }
        }

        v27 = v5 < v6 ? -1 : 1;
        if ((v27 & 0x80000000) == 0)
        {
          return 1;
        }

        v28 = (a2 - 31);
        goto LABEL_46;
      }

      goto LABEL_12;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(a1, a1 + 31, a2 - 31);
      return 1;
    case 4:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(a1, a1 + 31, a1 + 62);
      v24 = *(a2 - 31);
      v23 = a2 - 31;
      v25 = bswap64(v24);
      v26 = bswap64(v3[62]);
      if (v25 == v26)
      {
        v25 = bswap64(v23[1]);
        v26 = bswap64(v3[63]);
        if (v25 == v26)
        {
          return 1;
        }
      }

      v29 = v25 < v26 ? -1 : 1;
      if ((v29 & 0x80000000) == 0)
      {
        return 1;
      }

      std::swap[abi:ne200100]<ULRecordingEventDO>(v3 + 31, v23);
      v30 = bswap64(v3[62]);
      v31 = bswap64(v3[31]);
      if (v30 == v31 && (v30 = bswap64(v3[63]), v31 = bswap64(v3[32]), v30 == v31))
      {
        v32 = 0;
      }

      else
      {
        v32 = v30 < v31 ? -1 : 1;
      }

      if ((v32 & 0x80000000) == 0)
      {
        return 1;
      }

      std::swap[abi:ne200100]<ULRecordingEventDO>((v3 + 31), v3 + 31);
      v33 = bswap64(v3[31]);
      v34 = bswap64(*v3);
      if (v33 == v34 && (v33 = bswap64(v3[32]), v34 = bswap64(v3[1]), v33 == v34))
      {
        v35 = 0;
      }

      else
      {
        v35 = v33 < v34 ? -1 : 1;
      }

      if ((v35 & 0x80000000) == 0)
      {
        return 1;
      }

      v28 = (v3 + 31);
      a1 = v3;
LABEL_46:
      std::swap[abi:ne200100]<ULRecordingEventDO>(a1, v28);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(a1, a1 + 31, a1 + 62, a1 + 93, a2 - 31);
      return 1;
  }

LABEL_12:
  v7 = a1 + 62;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[ULRecordingEventStore fetchRecordingEventTriggersForLearningMeasurements:atLoiGroupId:]::$_1 &,ULRecordingEventDO *,0>(a1, a1 + 31, a1 + 62);
  v8 = v3 + 93;
  if (v3 + 93 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = bswap64(*v8);
    v12 = bswap64(*v7);
    if (v11 != v12 || (v11 = bswap64(v8[1]), v12 = bswap64(v7[1]), v11 != v12))
    {
      v13 = v11 < v12 ? -1 : 1;
      if (v13 < 0)
      {
        v37 = *v8;
        v38 = v8[2];
        __p = *(v8 + 3);
        v40 = v8[5];
        v8[3] = 0;
        v8[4] = 0;
        v8[5] = 0;
        *v41 = *(v8 + 3);
        *&v41[12] = *(v8 + 60);
        CLMicroLocationProto::RecordingEvent::RecordingEvent(v42, (v8 + 10));
        v43 = *(v8 + 14);
        v44 = *(v8 + 240);
        v14 = v9;
        while (1)
        {
          v15 = v3 + v14;
          *(v3 + v14 + 744) = *(v3 + v14 + 496);
          *(v3 + v14 + 760) = *(v3 + v14 + 512);
          v16 = (v3 + v14 + 768);
          if (*(v3 + v14 + 791) < 0)
          {
            operator delete(*v16);
          }

          *(v3 + v14 + 784) = *(v15 + 67);
          *v16 = *(v15 + 520);
          v15[543] = 0;
          v15[520] = 0;
          *(v15 + 792) = *(v15 + 34);
          *(v15 + 804) = *(v15 + 556);
          CLMicroLocationProto::RecordingEvent::CopyFrom((v15 + 824), (v15 + 576));
          v17 = v3 + v14;
          *(v3 + v14 + 968) = *(v3 + v14 + 720);
          *(v3 + v14 + 984) = *(v3 + v14 + 736);
          if (v14 == -496)
          {
            break;
          }

          v18 = bswap64(v37);
          v19 = bswap64(*(v17 + 31));
          if (v18 == v19 && (v18 = bswap64(*(&v37 + 1)), v19 = bswap64(*(v17 + 32)), v18 == v19))
          {
            v20 = 0;
          }

          else if (v18 < v19)
          {
            v20 = -1;
          }

          else
          {
            v20 = 1;
          }

          v14 -= 248;
          if ((v20 & 0x80000000) == 0)
          {
            v21 = v3 + v14 + 744;
            goto LABEL_33;
          }
        }

        v21 = v3;
LABEL_33:
        *v21 = v37;
        *(v21 + 16) = v38;
        v22 = (v17 + 520);
        if (*(v21 + 47) < 0)
        {
          operator delete(*v22);
        }

        *v22 = __p;
        *(v17 + 67) = v40;
        *(v17 + 34) = *v41;
        *(v17 + 556) = *&v41[12];
        CLMicroLocationProto::RecordingEvent::CopyFrom((v17 + 576), v42);
        *(v17 + 45) = v43;
        v17[736] = v44;
        CLMicroLocationProto::RecordingEvent::~RecordingEvent(v42);
        if (++v10 == 8)
        {
          return v8 + 31 == a2;
        }
      }
    }

    v7 = v8;
    v9 += 248;
    v8 += 31;
    if (v8 == a2)
    {
      return 1;
    }
  }
}

void std::swap[abi:ne200100]<ULRecordingEventDO>(__int128 *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(a1 + 2);
  *__p = *(a1 + 24);
  v11 = *(a1 + 5);
  *(a1 + 24) = 0uLL;
  *(a1 + 5) = 0;
  *v12 = a1[3];
  *&v12[12] = *(a1 + 60);
  CLMicroLocationProto::RecordingEvent::RecordingEvent(v13, (a1 + 5));
  v14 = a1[14];
  v15 = *(a1 + 240);
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 3));
  }

  v5 = *(a2 + 24);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v6 = a2[3];
  *(a1 + 60) = *(a2 + 60);
  a1[3] = v6;
  CLMicroLocationProto::RecordingEvent::CopyFrom((a1 + 5), (a2 + 5));
  v7 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  a1[14] = v7;
  *a2 = v8;
  *(a2 + 2) = v9;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 24) = *__p;
  *(a2 + 5) = v11;
  a2[3] = *v12;
  *(a2 + 60) = *&v12[12];
  CLMicroLocationProto::RecordingEvent::CopyFrom((a2 + 5), v13);
  a2[14] = v14;
  *(a2 + 240) = v15;
  CLMicroLocationProto::RecordingEvent::~RecordingEvent(v13);
}

void sub_259089334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void ___ZN9ULDBUtils17insertDataObjectsI18ULRecordingEventDO29ULRecordingEventMO_deprecatedEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRecordingEventStore deleteRecordingEventsFromRecordingUUIDs:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULDBUtils::convertManagedObjectsToDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 248;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULRecordingEventMO_deprecated * ()(ULRecordingEventDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULRecordingEventMO_deprecated * ()(ULRecordingEventDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZN9ULDBUtils16fetchDataObjectsI18ULRecordingEventDO29ULRecordingEventMO_deprecatedEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULRecordingEventDO,ULRecordingEventMO_deprecated>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULRecordingEventDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULRecordingEventDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

uint64_t std::vector<ULRecordingEventDO>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULRecordingEventDO>::__emplace_back_slow_path<ULRecordingEventDO>(a1, a2);
  }

  else
  {
    std::vector<ULRecordingEventDO>::__construct_one_at_end[abi:ne200100]<ULRecordingEventDO>(a1, a2);
    result = v3 + 248;
  }

  a1[1] = result;
  return result;
}

__n128 std::vector<ULRecordingEventDO>::__construct_one_at_end[abi:ne200100]<ULRecordingEventDO>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  v6 = *(a2 + 24);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 24) = v6;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  v7 = a2[3];
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 48) = v7;
  CLMicroLocationProto::RecordingEvent::RecordingEvent((v4 + 80), (a2 + 5));
  result = a2[14];
  *(v4 + 240) = *(a2 + 240);
  *(v4 + 224) = result;
  *(a1 + 8) = v4 + 248;
  return result;
}

void sub_259089BB0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULRecordingEventDO>::__emplace_back_slow_path<ULRecordingEventDO>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULRecordingEventDO>>(a1, v6);
  }

  v7 = 248 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 60) = *(a2 + 60);
  *(v7 + 48) = v10;
  CLMicroLocationProto::RecordingEvent::RecordingEvent((v7 + 80), (a2 + 5));
  v11 = a2[14];
  *(v7 + 240) = *(a2 + 240);
  *(v7 + 224) = v11;
  *&v20 = v20 + 248;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRecordingEventDO>,ULRecordingEventDO*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ULRecordingEventDO>::~__split_buffer(&v18);
  return v17;
}

void sub_259089D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULRecordingEventDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULRecordingEventDO>::~optional(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    CLMicroLocationProto::RecordingEvent::~RecordingEvent((a1 + 80));
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

void sub_25908A210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULAnchorAppearanceMapDO,ULAnchorAppearanceMapMO>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI23ULAnchorAppearanceMapDO23ULAnchorAppearanceMapMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A55DF0;
    v17 = a2;
    std::__function::__value_func<ULAnchorAppearanceMapMO * ()(ULAnchorAppearanceMapDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULAnchorAppearanceMapMO * ()(ULAnchorAppearanceMapDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_25908A3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULAnchorAppearanceMapMO * ()(ULAnchorAppearanceMapDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULAnchorAppearanceMapDO,ULAnchorAppearanceMapMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI23ULAnchorAppearanceMapDO23ULAnchorAppearanceMapMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_25908A5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULAnchorAppearanceMapDO,ULAnchorAppearanceMapMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULAnchorAppearanceMapDO,ULAnchorAppearanceMapMO>(v5, 0, v9, a2, a3);
}

void sub_25908A930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULAnchorAppearanceMapDO>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25908AA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULAnchorAppearanceMapDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_37()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>,ULAnchorAppearanceMapDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = *(v6 + v7);
      *(v8 + 16) = *(v6 + v7 + 16);
      *v8 = v9;
      CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration((a4 + v7 + 24), (v6 + v7 + 24));
      v7 += 56;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v6 + 24));
      v6 += 56;
    }
  }
}

void sub_25908AC98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(v5);
      v5 = (v6 - 56);
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ULAnchorAppearanceMapDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULAnchorAppearanceMapDO>::__vdeallocate(char **a1)
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
        v5 = v3 - 56;
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v3 - 32));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 56;
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ___ZN9ULDBUtils17insertDataObjectsI23ULAnchorAppearanceMapDO23ULAnchorAppearanceMapMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULAnchorAppearanceMapStore insertDataObjects:atLoiUUID:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULAnchorAppearanceMapStore insertDataObjects:atLoiUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 56;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULAnchorAppearanceMapMO * ()(ULAnchorAppearanceMapDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULAnchorAppearanceMapMO * ()(ULAnchorAppearanceMapDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 __Block_byref_object_copy__5(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN9ULDBUtils16fetchDataObjectsI23ULAnchorAppearanceMapDO23ULAnchorAppearanceMapMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULAnchorAppearanceMapDO,ULAnchorAppearanceMapMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULAnchorAppearanceMapDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULAnchorAppearanceMapDO,ULAnchorAppearanceMapMO>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v23 = 0uLL;
  v24 = 0;
  std::vector<ULAnchorAppearanceMapDO>::reserve(&v23, [v3 count]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v4)
  {
    v5 = *v20;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v20 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v19 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((BYTE8(v32) & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v23 + 1);
      if (*(&v23 + 1) >= v24)
      {
        v10 = std::vector<ULAnchorAppearanceMapDO>::__emplace_back_slow_path<ULAnchorAppearanceMapDO>(&v23, v31);
      }

      else
      {
        ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(*(&v23 + 1), v31);
        v10 = v9 + 56;
      }

      *(&v23 + 1) = v10;
      v17 = 1;
LABEL_22:
      if (BYTE8(v32) == 1)
      {
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((&v31[1] + 8));
      }

      if (!v17)
      {

        goto LABEL_29;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v19 objects:v33 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    v32 = 0u;
    memset(v31, 0, sizeof(v31));
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapStore insertDataObjects:atLoiUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 entity];
      v13 = [v12 name];
      *buf = 68289283;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2113;
      v30 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapStore insertDataObjects:atLoiUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v15 = [v8 entity];
      v16 = [v15 name];
      *buf = 68289283;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2113;
      v30 = v16;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v17 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_27:

  *a2 = v23;
  a2[2] = v24;
  v24 = 0;
  v23 = 0uLL;
LABEL_29:
  *&v31[0] = &v23;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](v31);
}

void sub_25908B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULAnchorAppearanceMapDO>::__emplace_back_slow_path<ULAnchorAppearanceMapDO>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>>(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>,ULAnchorAppearanceMapDO*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ULAnchorAppearanceMapDO>::~__split_buffer(&v13);
  return v12;
}

void sub_25908B9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULAnchorAppearanceMapDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25908BE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULAssociatedStateDO,ULAssociatedStateMO>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI19ULAssociatedStateDO19ULAssociatedStateMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A55ED8;
    v17 = a2;
    std::__function::__value_func<ULAssociatedStateMO * ()(ULAssociatedStateDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULAssociatedStateMO * ()(ULAssociatedStateDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_25908BFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULAssociatedStateMO * ()(ULAssociatedStateDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULAssociatedStateDO,ULAssociatedStateMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI19ULAssociatedStateDO19ULAssociatedStateMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_25908C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULAssociatedStateDO,ULAssociatedStateMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULAssociatedStateDO,ULAssociatedStateMO>(v5, 0, v9, a2, a3);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_38()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZN9ULDBUtils17insertDataObjectsI19ULAssociatedStateDO19ULAssociatedStateMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULAssociatedStateStore insertDataObjects:atLoiUUID:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULAssociatedStateStore insertDataObjects:atLoiUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 72;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULAssociatedStateMO * ()(ULAssociatedStateDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULAssociatedStateMO * ()(ULAssociatedStateDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 __Block_byref_object_copy__6(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN9ULDBUtils16fetchDataObjectsI19ULAssociatedStateDO19ULAssociatedStateMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULAssociatedStateDO,ULAssociatedStateMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULAssociatedStateDO>::__vdeallocate(v6 + 48);
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULAssociatedStateDO,ULAssociatedStateMO>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v26 = 0uLL;
  v27 = 0;
  std::vector<ULAssociatedStateDO>::reserve(&v26, [v3 count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v4)
  {
    v5 = *v23;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((BYTE8(v35[3]) & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v26 + 1);
      if (*(&v26 + 1) >= v27)
      {
        v13 = std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<ULAssociatedStateDO>(&v26, __p);
      }

      else
      {
        v10 = *__p;
        *(*(&v26 + 1) + 16) = *&v35[0];
        *v9 = v10;
        __p[1] = 0;
        *&v35[0] = 0;
        __p[0] = 0;
        v11 = *(&v35[2] + 8);
        v12 = *(&v35[1] + 8);
        *(v9 + 24) = *(v35 + 8);
        *(v9 + 40) = v12;
        *(v9 + 56) = v11;
        v13 = v9 + 72;
      }

      *(&v26 + 1) = v13;
      v20 = 1;
LABEL_22:
      if (BYTE8(v35[3]) == 1 && SBYTE7(v35[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v20)
      {

        goto LABEL_30;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    memset(v35, 0, sizeof(v35));
    *__p = 0u;
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAssociatedStateStore insertDataObjects:atLoiUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v8 entity];
      v16 = [v15 name];
      *buf = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2113;
      v33 = v16;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAssociatedStateStore insertDataObjects:atLoiUUID:];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v17))
    {
      v18 = [v8 entity];
      v19 = [v18 name];
      *buf = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2113;
      v33 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v20 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_28:

  *a2 = v26;
  a2[2] = v27;
  v27 = 0;
  v26 = 0uLL;
LABEL_30:
  __p[0] = &v26;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_25908D314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  __p = &a21;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void *std::vector<ULAssociatedStateDO>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULAssociatedStateDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25908D48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<ULAssociatedStateDO>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAssociatedStateDO>>(a1, v6);
  }

  v7 = 72 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 56);
  v10 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v10;
  *(v7 + 56) = v9;
  *&v19 = 72 * v2 + 72;
  v11 = *(a1 + 8);
  v12 = 72 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(&v17);
  return v16;
}

void sub_25908D5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ULAssociatedStateDO>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<ULAssociatedStateDO>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void ULDBUtils::fetchDataObjects<ULBLEMeasurementDO,ULBLEMeasurementMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI18ULBLEMeasurementDO18ULBLEMeasurementMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_25908D910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULBLEMeasurementDO,ULBLEMeasurementMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULBLEMeasurementDO,ULBLEMeasurementMO>(v5, 0, v9, a2, a3);
}

__n128 __Block_byref_object_copy__7(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN9ULDBUtils16fetchDataObjectsI18ULBLEMeasurementDO18ULBLEMeasurementMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULBLEMeasurementDO,ULBLEMeasurementMO>(v5, &v9);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  if (v7)
  {
    v6[7] = v7;
    operator delete(v7);
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  *(v6 + 3) = v9;
  v6[8] = v10;
  v8 = [*(a1 + 48) managedObjectContext];
  [v8 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULBLEMeasurementDO,ULBLEMeasurementMO>(void *a1@<X0>, void *a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  std::vector<ULBLEMeasurementDO>::reserve(__p, [v3 count]);
  v29 = a2;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v5)
  {
    v6 = *v31;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = v8;
        if (!v8)
        {
          v43 = 0;
          memset(v42, 0, sizeof(v42));
LABEL_28:
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULBLEMeasurementDO,ULBLEMeasurementMO>();
          }

          v23 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v9 entity];
            v25 = [v24 name];
            *buf = 68289283;
            v37 = 0;
            v38 = 2082;
            v39 = "";
            v40 = 2113;
            v41 = v25;
            _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULBLEMeasurementDO,ULBLEMeasurementMO>();
          }

          v26 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v26))
          {
            v27 = [v9 entity];
            v28 = [v27 name];
            *buf = 68289283;
            v37 = 0;
            v38 = 2082;
            v39 = "";
            v40 = 2113;
            v41 = v28;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          *v29 = 0;
          v29[1] = 0;
          v29[2] = 0;

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_38;
        }

        objc_msgSend_convertToDO(v8);
        if ((v43 & 1) == 0)
        {
          goto LABEL_28;
        }

        v10 = __p[1];
        if (__p[1] >= v35)
        {
          v11 = (__p[1] - __p[0]) >> 5;
          if ((v11 + 1) >> 59)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v12 = (v35 - __p[0]) >> 4;
          if (v12 <= v11 + 1)
          {
            v12 = v11 + 1;
          }

          if (v35 - __p[0] >= 0x7FFFFFFFFFFFFFE0)
          {
            v13 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULBLEMeasurementDO>>(__p, v13);
          }

          ULBLEMeasurementDO::ULBLEMeasurementDO(32 * v11, v42);
          v15 = __p[0];
          v16 = __p[1];
          v17 = (v14 + __p[0] - __p[1]);
          if (__p[1] != __p[0])
          {
            v18 = __p[0];
            v19 = (v14 + __p[0] - __p[1]);
            do
            {
              v20 = *v18;
              v21 = v18[1];
              v18 += 2;
              *v19 = v20;
              v19[1] = v21;
              v19 += 2;
            }

            while (v18 != v16);
          }

          v22 = (v14 + 32);
          __p[0] = v17;
          __p[1] = (v14 + 32);
          v35 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          __p[1] = v22;
        }

        else
        {
          ULBLEMeasurementDO::ULBLEMeasurementDO(__p[1], v42);
          __p[1] = v10 + 32;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  *v29 = *__p;
  v29[2] = v35;
LABEL_38:
}

void sub_25908E074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<ULBLEMeasurementDO>::reserve(char **a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULBLEMeasurementDO>>(a1, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_39()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_25908E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A55FC0;
    v17 = a2;
    std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_25908E508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_25908E700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(v5, 0, v9, a2, a3);
}

void std::vector<ULBluetoothIdentityDO>::__vdeallocate(char **a1)
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
        v3 -= 72;
        std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v3);
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

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v14 = **a1;
  v4 = *(*a1 + 2);
  *v13 = *(*a1 + 3);
  *&v13[7] = *(*a1 + 31);
  v5 = *(*a1 + 39);
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 2) = 0;
  v7 = v2 + 5;
  v6 = *(v2 + 5);
  *v12 = *(v2 + 6);
  *&v12[7] = *(v2 + 55);
  v8 = *(v2 + 63);
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 7) = 0;
  v9 = *(v2 + 8);
  *v2 = *v3;
  v10 = *(v3 + 16);
  *(v2 + 4) = *(v3 + 32);
  v2[1] = v10;
  *(v3 + 39) = 0;
  *(v3 + 16) = 0;
  if (*(v2 + 63) < 0)
  {
    operator delete(*v7);
  }

  v11 = *(v3 + 40);
  *(v2 + 7) = *(v3 + 56);
  *v7 = v11;
  *(v3 + 63) = 0;
  *(v3 + 40) = 0;
  *(v2 + 8) = *(v3 + 64);
  *v3 = v14;
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  *(v3 + 16) = v4;
  *(v3 + 24) = *v13;
  *(v3 + 31) = *&v13[7];
  *(v3 + 39) = v5;
  if (*(v3 + 63) < 0)
  {
    operator delete(*(v3 + 40));
  }

  *(v3 + 40) = v6;
  *(v3 + 48) = *v12;
  *(v3 + 55) = *&v12[7];
  *(v3 + 63) = v8;
  *(v3 + 64) = v9;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,0>(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v8 = a2[8];
  v9 = a3[8];
  if (v8 >= *(a1 + 64))
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v17, &v16);
      if (v17[8] < v18[8])
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v10, v11);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v18, &v17);
    if (v16[8] < v17[8])
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 64) < a3[8])
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v13, &v12);
    if (v13[8] < a2[8])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v14, &v13);
      if (v14[8] < *(a1 + 64))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v15, &v14);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *>(double *a1, double *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v4 = 0x8E38E38E38E38E39 * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        *v37 = a1;
        *&v39 = a1 + 9;
        *v38 = a2 - 9;
        v9 = a1[17];
        v10 = *(a2 - 1);
        if (v9 < a1[8])
        {
          v5 = v37;
          if (v10 >= v9)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v37, &v39);
            if (*(*v38 + 64) >= *(v39 + 64))
            {
              return 1;
            }

            v5 = &v39;
          }

          v6 = v38;
          goto LABEL_28;
        }

        if (v10 >= v9)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v39, v38);
        v7 = *(v39 + 64);
        v8 = *(*v37 + 64);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,0>(a1, a1 + 9, a1 + 18, (a2 - 9));
        return 1;
      case 5:
        *&v39 = a1 + 9;
        *v38 = a1 + 18;
        v36 = a1 + 27;
        *v37 = a1;
        v35 = a2 - 9;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,0>(a1, a1 + 9, a1 + 18, (a1 + 27));
        if (*(a2 - 1) >= a1[35])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v36, &v35);
        if (v36[8] >= a1[26])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v38, &v36);
        if (*(*v38 + 64) >= a1[17])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v39, v38);
        v7 = *(v39 + 64);
        v8 = a1[8];
        break;
      default:
        goto LABEL_18;
    }

    if (v7 < v8)
    {
      v5 = v37;
      v6 = &v39;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v33 = a2 - 9;
    if (*(a2 - 1) < a1[8])
    {
      v5 = &v34;
      v6 = &v33;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v5, v6);
    }

    return 1;
  }

LABEL_18:
  v11 = a1 + 18;
  *v37 = a1;
  *&v39 = a1 + 9;
  *v38 = a1 + 18;
  v12 = a1[17];
  v13 = a1[26];
  if (v12 < a1[8])
  {
    v14 = v37;
    if (v13 >= v12)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v37, &v39);
      if (*(*v38 + 64) >= *(v39 + 64))
      {
        goto LABEL_33;
      }

      v14 = &v39;
    }

    v15 = v38;
    goto LABEL_32;
  }

  if (v13 < v12)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v39, v38);
    if (*(v39 + 64) < *(*v37 + 64))
    {
      v14 = v37;
      v15 = &v39;
LABEL_32:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v14, v15);
    }
  }

LABEL_33:
  v16 = a1 + 27;
  if (a1 + 27 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = v16[8];
    if (v19 < v11[8])
    {
      v39 = *v16;
      v20 = *(v16 + 2);
      *v38 = v16[3];
      *&v38[7] = *(v16 + 31);
      v21 = *(v16 + 39);
      v16[2] = 0.0;
      v16[3] = 0.0;
      v22 = *(v16 + 40);
      *v37 = *(v16 + 41);
      *&v37[14] = *(v16 + 55);
      v31 = *(v16 + 63);
      v32 = v22;
      v16[4] = 0.0;
      v16[5] = 0.0;
      v23 = v17;
      v16[6] = 0.0;
      v16[7] = 0.0;
      while (1)
      {
        v24 = v23;
        v25 = (a1 + v23);
        *(a1 + v23 + 216) = *(a1 + v23 + 144);
        if (*(a1 + v23 + 255) < 0)
        {
          operator delete(v25[29]);
        }

        *(v25 + 29) = *(v25 + 10);
        v25[31] = v25[22];
        *(v25 + 183) = 0;
        *(v25 + 160) = 0;
        if (*(v25 + 279) < 0)
        {
          operator delete(v25[32]);
        }

        v26 = a1 + v24;
        *(v25 + 16) = *(a1 + v24 + 184);
        v27 = *(a1 + v24 + 208);
        v25[34] = *(a1 + v24 + 200);
        v26[207] = 0;
        v26[184] = 0;
        *(v26 + 35) = v27;
        if (v24 == -144)
        {
          break;
        }

        v23 = v24 - 72;
        if (v19 >= *(v26 + 17))
        {
          v28 = a1 + v23 + 216;
          goto LABEL_45;
        }
      }

      v28 = a1;
LABEL_45:
      *v28 = v39;
      if (*(v28 + 39) < 0)
      {
        operator delete(*(v26 + 20));
      }

      *(v26 + 20) = v20;
      v29 = a1 + v24;
      *(v29 + 21) = *v38;
      *(v29 + 175) = *&v38[7];
      v26[183] = v21;
      if (*(v28 + 63) < 0)
      {
        operator delete(*(v26 + 23));
      }

      v26[184] = v32;
      *(v29 + 185) = *v37;
      *(v29 + 199) = *&v37[14];
      v26[207] = v31;
      *(v28 + 64) = v19;
      if (++v18 == 8)
      {
        return v16 + 9 == a2;
      }
    }

    v11 = v16;
    v17 += 72;
    v16 += 9;
    if (v16 == a2)
    {
      return 1;
    }
  }
}

void ___ZN9ULDBUtils17insertDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_1();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 72;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_40()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN9ULDBUtils16fetchDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULBluetoothIdentityDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v21 = 0uLL;
  v22 = 0;
  std::vector<ULBluetoothIdentityDO>::reserve(&v21, [v3 count]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v34 count:16];
  if (v4)
  {
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v17 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((BYTE8(v33) & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULBluetoothIdentityDO>::push_back[abi:ne200100](&v21, &v29);
      v9 = 1;
LABEL_19:
      if (BYTE8(v33) == 1)
      {
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v30[0]);
        }
      }

      if (!v9)
      {

        goto LABEL_29;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v17 objects:v34 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    v32 = 0u;
    v33 = 0u;
    *v30 = 0u;
    *__p = 0u;
    v29 = 0u;
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN9ULDBUtils17insertDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN9ULDBUtils17insertDataObjectsI21ULBluetoothIdentityDO21ULBluetoothIdentityMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_27:

  *a2 = v21;
  a2[2] = v22;
  v22 = 0;
  v21 = 0uLL;
LABEL_29:
  *&v29 = &v21;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&v29);
}

void sub_259091044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

uint64_t *std::vector<ULBluetoothIdentityDO>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590911A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULBluetoothIdentityDO>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULBluetoothIdentityDO>::__emplace_back_slow_path<ULBluetoothIdentityDO>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v5;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(v3 + 64) = *(a2 + 64);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ULBluetoothIdentityDO>::__emplace_back_slow_path<ULBluetoothIdentityDO>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>>(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(v7 + 64) = *(a2 + 64);
  *&v18 = 72 * v2 + 72;
  v10 = a1[1];
  v11 = 72 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULBluetoothIdentityDO>,ULBluetoothIdentityDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(&v16);
  return v15;
}

void sub_2590913A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULBluetoothIdentityDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULBluetoothIdentityDO>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

void sub_259091B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, char a18)
{
  operator delete(v19);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULCustomLoiDO,ULCustomLoiMO>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI13ULCustomLoiDO13ULCustomLoiMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A560C8;
    v17 = a2;
    std::__function::__value_func<ULCustomLoiMO * ()(ULCustomLoiDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULCustomLoiMO * ()(ULCustomLoiDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_259091D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULCustomLoiMO * ()(ULCustomLoiDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULCustomLoiDO,ULCustomLoiMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI13ULCustomLoiDO13ULCustomLoiMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_259091F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULCustomLoiDO,ULCustomLoiMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULCustomLoiDO,ULCustomLoiMO>(v5, 0, v9, a2, a3);
}

void std::vector<ULCustomLoiDO>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
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

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULCustomLoiDO>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_41()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZN9ULDBUtils17insertDataObjectsI13ULCustomLoiDO13ULCustomLoiMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 40;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULCustomLoiMO * ()(ULCustomLoiDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULCustomLoiMO * ()(ULCustomLoiDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 __Block_byref_object_copy__9(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__9(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN9ULDBUtils16fetchDataObjectsI13ULCustomLoiDO13ULCustomLoiMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULCustomLoiDO,ULCustomLoiMO>(v5, &v9);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  if (v7)
  {
    v6[7] = v7;
    operator delete(v7);
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  *(v6 + 3) = v9;
  v6[8] = v10;
  v8 = [*(a1 + 48) managedObjectContext];
  [v8 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULCustomLoiDO,ULCustomLoiMO>(void *a1@<X0>, void *a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  std::vector<ULCustomLoiDO>::reserve(__p, [v3 count]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v30 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = v8;
        if (!v8)
        {
          v29 = 0u;
          memset(v28, 0, sizeof(v28));
LABEL_12:
          if (onceToken_MicroLocation_Default != -1)
          {
            [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
          }

          v10 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = [v9 entity];
            v12 = [v11 name];
            *buf = 68289283;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2113;
            v27 = v12;
            _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            [ULCustomLoiStore insertDataObjects:forServiceUUID:atLoiUUID:];
          }

          v13 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v13))
          {
            v14 = [v9 entity];
            v15 = [v14 name];
            *buf = 68289283;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2113;
            v27 = v15;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_22;
        }

        objc_msgSend_convertToDO(v8, v16);
        if ((BYTE8(v29) & 1) == 0)
        {
          goto LABEL_12;
        }

        std::vector<ULCustomLoiDO>::push_back[abi:ne200100](__p, v28);
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  *a2 = *__p;
  a2[2] = v21;
LABEL_22:
}

void sub_2590935D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<ULCustomLoiDO>::reserve(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULCustomLoiDO>>(a1, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2590937A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULEventLogDO,ULEventLogMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI12ULEventLogDO12ULEventLogMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_25909396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void sub_259093C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ULEventLogDO>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<ULEventLogDO>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_42()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

__n128 __Block_byref_object_copy__10(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN9ULDBUtils16fetchDataObjectsI12ULEventLogDO12ULEventLogMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULEventLogDO,ULEventLogMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULEventLogDO>::__vdeallocate(v6 + 48);
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULEventLogDO,ULEventLogMO>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v27 = 0uLL;
  v28 = 0;
  std::vector<ULEventLogDO>::reserve(&v27, [v3 count]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v4)
  {
    v5 = *v24;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v23 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((v22 & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v27 + 1);
      if (*(&v27 + 1) >= v28)
      {
        v11 = std::vector<ULEventLogDO>::__emplace_back_slow_path<ULEventLogDO>(&v27, __p);
      }

      else
      {
        v10 = *__p;
        *(*(&v27 + 1) + 16) = v21;
        *v9 = v10;
        __p[1] = 0;
        *&v21 = 0;
        __p[0] = 0;
        *(v9 + 24) = *(&v21 + 1);
        v11 = v9 + 32;
      }

      *(&v27 + 1) = v11;
      v18 = 1;
LABEL_22:
      if (v22 == 1 && SBYTE7(v21) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v18)
      {

        goto LABEL_30;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    v22 = 0;
    *__p = 0u;
    v21 = 0u;
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN9ULDBUtils17insertDataObjectsI12ULEventLogDO12ULEventLogMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 entity];
      v14 = [v13 name];
      *buf = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v14;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ___ZN9ULDBUtils17insertDataObjectsI12ULEventLogDO12ULEventLogMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v15))
    {
      v16 = [v8 entity];
      v17 = [v16 name];
      *buf = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v17;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v18 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_28:

  *a2 = v27;
  a2[2] = v28;
  v28 = 0;
  v27 = 0uLL;
LABEL_30:
  __p[0] = &v27;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_259094468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  __p = &a30;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void *std::vector<ULEventLogDO>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULEventLogDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590945B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULEventLogDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULEventLogDO>::__emplace_back_slow_path<ULEventLogDO>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULEventLogDO>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULEventLogDO>,ULEventLogDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULEventLogDO>::~__split_buffer(&v16);
  return v15;
}

void sub_2590946D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULEventLogDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_259094898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ULHomeSlamAnalyticEventMO * ()(ULHomeSlamAnalyticEventDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULHomeSlamAnalyticEventDO,ULHomeSlamAnalyticEventMO>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A56278;
    v17 = a2;
    std::__function::__value_func<ULHomeSlamAnalyticEventMO * ()(ULHomeSlamAnalyticEventDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULHomeSlamAnalyticEventMO * ()(ULHomeSlamAnalyticEventDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_2590949F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULHomeSlamAnalyticEventMO * ()(ULHomeSlamAnalyticEventDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULHomeSlamAnalyticEventDO,ULHomeSlamAnalyticEventMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__11;
  v27 = __Block_byref_object_dispose__11;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_259094BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULHomeSlamAnalyticEventDO,ULHomeSlamAnalyticEventMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULHomeSlamAnalyticEventDO,ULHomeSlamAnalyticEventMO>(v5, 0, v9, a2, a3);
}

void sub_259095198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<ULHomeSlamAnalyticEventDO>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULHomeSlamAnalyticEventDO>>(a1, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }
}

void sub_259095428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN9ULDBUtils17insertDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_1();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 16;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_43()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<ULHomeSlamAnalyticEventMO * ()(ULHomeSlamAnalyticEventDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULHomeSlamAnalyticEventMO * ()(ULHomeSlamAnalyticEventDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 __Block_byref_object_copy__11(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN9ULDBUtils16fetchDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULHomeSlamAnalyticEventDO,ULHomeSlamAnalyticEventMO>(v5, &v9);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  if (v7)
  {
    v6[7] = v7;
    operator delete(v7);
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  *(v6 + 3) = v9;
  v6[8] = v10;
  v8 = [*(a1 + 48) managedObjectContext];
  [v8 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULHomeSlamAnalyticEventDO,ULHomeSlamAnalyticEventMO>(void *a1@<X0>, void *a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v33 = 0;
  v24 = a1;
  std::vector<ULHomeSlamAnalyticEventDO>::reserve(__p, [v24 count]);
  v25 = a2;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = v24;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v4)
  {
    v5 = *v29;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = v7;
        if (!v7 || (objc_msgSend_convertToDO(v7), (v27 & 1) == 0))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ___ZN9ULDBUtils17insertDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
          }

          v18 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v8 entity];
            v20 = [v19 name];
            *buf = 68289283;
            v35 = 0;
            v36 = 2082;
            v37 = "";
            v38 = 2113;
            v39 = v20;
            _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ___ZN9ULDBUtils17insertDataObjectsI25ULHomeSlamAnalyticEventDO25ULHomeSlamAnalyticEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
          }

          v21 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v21))
          {
            v22 = [v8 entity];
            v23 = [v22 name];
            *buf = 68289283;
            v35 = 0;
            v36 = 2082;
            v37 = "";
            v38 = 2113;
            v39 = v23;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          *v25 = 0;
          v25[1] = 0;
          v25[2] = 0;

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_33;
        }

        v9 = __p[1];
        if (__p[1] >= v33)
        {
          v11 = (__p[1] - __p[0]) >> 4;
          v12 = v11 + 1;
          if ((v11 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v13 = v33 - __p[0];
          if ((v33 - __p[0]) >> 3 > v12)
          {
            v12 = v13 >> 3;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULHomeSlamAnalyticEventDO>>(__p, v14);
          }

          v15 = (16 * v11);
          *v15 = v26;
          v10 = (16 * v11 + 16);
          v16 = (16 * v11 - (__p[1] - __p[0]));
          memcpy(v15 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
          v17 = __p[0];
          __p[0] = v16;
          __p[1] = v10;
          v33 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *__p[1] = v26;
          v10 = v9 + 16;
        }

        __p[1] = v10;
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  *v25 = *__p;
  v25[2] = v33;
LABEL_33:
}

void sub_259095EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_259096640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13)
{
  operator delete(v14);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULLabelDO,ULLabelMO>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI9ULLabelDO9ULLabelMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A56380;
    v17 = a2;
    std::__function::__value_func<ULLabelMO * ()(ULLabelDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULLabelMO * ()(ULLabelDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_259096870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULLabelMO * ()(ULLabelDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void sub_259096BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void sub_259096CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  *(v14 - 24) = &a13;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULLabelDOAndObjectID,ULLabelMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULLabelDOAndObjectID,ULLabelMO>(v5, 0, v9, a2, a3);
}

void sub_25909736C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULLabelDOAndObjectID,ULLabelMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__12;
  v27 = __Block_byref_object_dispose__12;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI20ULLabelDOAndObjectID9ULLabelMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_259097594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_44()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t *std::vector<ULLabelDOAndObjectID>::__init_with_size[abi:ne200100]<ULLabelDOAndObjectID*,ULLabelDOAndObjectID*>(uint64_t *result, ULLabelDO *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULLabelDOAndObjectID>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259097694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULLabelDOAndObjectID>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULLabelDOAndObjectID>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULLabelDOAndObjectID>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

ULLabelDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULLabelDOAndObjectID>,ULLabelDOAndObjectID*,ULLabelDOAndObjectID*,ULLabelDOAndObjectID*>(int a1, ULLabelDO *a2, ULLabelDO *a3, ULLabelDO *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      ULLabelDO::ULLabelDO(this, v6);
      this[3].var1 = v6[3].var1;
      v6 = (v6 + 136);
      this = (this + 136);
      v7 -= 136;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_2590977BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 136;
    do
    {
      std::__destroy_at[abi:ne200100]<ULLabelDOAndObjectID,0>(v4);
      v4 -= 136;
      v2 += 136;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<ULLabelDOAndObjectID,0>(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    *(a1 + 112) = -1;
  }

  if (*(a1 + 95) < 0)
  {
    v2 = *(a1 + 72);

    operator delete(v2);
  }
}

void std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 136;
        std::__destroy_at[abi:ne200100]<ULLabelDOAndObjectID,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<ULLabelDOAndObjectID>::__vdeallocate(char **a1)
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
        v3 -= 136;
        std::__destroy_at[abi:ne200100]<ULLabelDOAndObjectID,0>(v3);
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

void ___ZN9ULDBUtils17insertDataObjectsI9ULLabelDO9ULLabelMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v10;
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v11))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 68289283;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2113;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v15, 0x1Cu);
      }

      v14 = [*(a1 + 32) managedObjectContext];
      [v14 reset];

      return;
    }

    v3 += 128;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULLabelMO * ()(ULLabelDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<ULLabelMO * ()(ULLabelDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 __Block_byref_object_copy__12(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZN9ULDBUtils16fetchDataObjectsI20ULLabelDOAndObjectID9ULLabelMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULLabelDOAndObjectID,ULLabelMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULLabelDOAndObjectID>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULLabelDOAndObjectID,ULLabelMO>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v24 = 0uLL;
  v25 = 0;
  std::vector<ULLabelDOAndObjectID>::reserve(&v24, [v3 count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v38 count:16];
  if (v4)
  {
    v5 = *v21;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v20 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((BYTE8(v37) & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v24 + 1);
      if (*(&v24 + 1) >= v25)
      {
        v11 = std::vector<ULLabelDOAndObjectID>::__emplace_back_slow_path<ULLabelDOAndObjectID>(&v24, v32);
      }

      else
      {
        ULLabelDO::ULLabelDO(*(&v24 + 1), v32);
        v10 = v37;
        *&v37 = 0;
        *(v9 + 128) = v10;
        v11 = v9 + 136;
      }

      *(&v24 + 1) = v11;
      v18 = 1;
LABEL_22:
      if (BYTE8(v37) == 1)
      {

        if (BYTE8(v36) == 1)
        {
          LODWORD(v36) = -1;
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[1]);
        }
      }

      if (!v18)
      {

        goto LABEL_32;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v20 objects:v38 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__p = 0u;
    memset(v32, 0, sizeof(v32));
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 entity];
      v14 = [v13 name];
      *buf = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = v14;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v15))
    {
      v16 = [v8 entity];
      v17 = [v16 name];
      *buf = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = v17;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v18 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_30:

  *a2 = v24;
  a2[2] = v25;
  v25 = 0;
  v24 = 0uLL;
LABEL_32:
  *&v32[0] = &v24;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](v32);
}

void sub_25909850C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

ULLabelDO **std::vector<ULLabelDOAndObjectID>::reserve(ULLabelDO **result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULLabelDOAndObjectID>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25909866C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULLabelDOAndObjectID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULLabelDOAndObjectID>,ULLabelDOAndObjectID*>(int a1, ULLabelDO *a2, ULLabelDO *a3, ULLabelDO *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      ULLabelDO::ULLabelDO(this, v8);
      this[3].var1 = v8[3].var1;
      v8 = (v8 + 136);
      this = (this + 136);
      v7 -= 136;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<ULLabelDOAndObjectID,0>(v6);
      v6 = (v6 + 136);
    }
  }
}

void sub_25909870C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 136;
    do
    {
      std::__destroy_at[abi:ne200100]<ULLabelDOAndObjectID,0>(v4);
      v4 -= 136;
      v2 += 136;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ULLabelDOAndObjectID>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::__destroy_at[abi:ne200100]<ULLabelDOAndObjectID,0>(i - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<ULLabelDOAndObjectID>::__emplace_back_slow_path<ULLabelDOAndObjectID>(uint64_t a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULLabelDOAndObjectID>>(a1, v6);
  }

  v15 = 0;
  v16 = 136 * v2;
  v17 = 136 * v2;
  v7 = ULLabelDO::ULLabelDO(136 * v2, a2);
  v8 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(v7 + 128) = v8;
  *&v17 = v17 + 136;
  v9 = *(a1 + 8);
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULLabelDOAndObjectID>,ULLabelDOAndObjectID*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULLabelDOAndObjectID>::~__split_buffer(&v15);
  return v14;
}

void sub_2590988AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULLabelDOAndObjectID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULLabelDOAndObjectID>::~optional(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {

    if (*(a1 + 120) == 1)
    {
      *(a1 + 112) = -1;
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }
  }

  return a1;
}

void sub_259098ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ULLoiMO * ()(ULLoiDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULLoiDO,ULLoiMO>(void *a1, void *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v7 = [v5 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3321888768;
    v14[2] = ___ZN9ULDBUtils17insertDataObjectsI7ULLoiDO7ULLoiMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v14[3] = &unk_286A564C8;
    v17 = a2;
    std::__function::__value_func<ULLoiMO * ()(ULLoiDO const&)>::__value_func[abi:ne200100](v18, a3);
    v15 = v6;
    v16 = &v10;
    [v7 performBlockAndWait:v14];

    v8 = *(v11 + 24);
    std::__function::__value_func<ULLoiMO * ()(ULLoiDO const&)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(&v10, 8);
  }

  return v8 & 1;
}

void sub_259098C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULLoiMO * ()(ULLoiDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULLoiDO,ULLoiMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI7ULLoiDO7ULLoiMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_259098E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  *(v22 - 96) = v21;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100]((v22 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULLoiDO,ULLoiMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v10[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  ULDBUtils::fetchDataObjects<ULLoiDO,ULLoiMO>(v5, 0, v9, a2, a3);
}

void sub_259099488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_259099680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25909986C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  *(v19 - 72) = v18;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100]((v19 - 72));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULLoiDO,ULLoiMO>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v26 = 0uLL;
  v27 = 0;
  std::vector<ULLoiDO>::reserve(&v26, [v3 count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v38 count:16];
  if (v4)
  {
    v5 = *v23;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      objc_msgSend_convertToDO(v7);
      if ((v37 & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v26 + 1);
      if (*(&v26 + 1) >= v27)
      {
        v13 = std::vector<ULLoiDO>::__emplace_back_slow_path<ULLoiDO>(&v26, &v34);
      }

      else
      {
        v10 = v34;
        v11 = v35;
        *(*(&v26 + 1) + 32) = __p[0];
        *v9 = v10;
        *(v9 + 16) = v11;
        v12 = *&__p[1];
        *(v9 + 56) = __p[3];
        *(v9 + 40) = v12;
        memset(&__p[1], 0, 24);
        v13 = v9 + 64;
      }

      *(&v26 + 1) = v13;
      v20 = 1;
LABEL_22:
      if (v37 == 1 && SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      if (!v20)
      {

        goto LABEL_30;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v22 objects:v38 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    v37 = 0;
    memset(__p, 0, sizeof(__p));
    v34 = 0u;
    v35 = 0u;
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULLoiDO,ULLoiMO>();
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v8 entity];
      v16 = [v15 name];
      *buf = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2113;
      v33 = v16;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULLoiDO,ULLoiMO>();
    }

    v17 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v17))
    {
      v18 = [v8 entity];
      v19 = [v18 name];
      *buf = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2113;
      v33 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v20 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_28:

  *a2 = v26;
  a2[2] = v27;
  v27 = 0;
  v26 = 0uLL;
LABEL_30:
  *&v34 = &v26;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v34);
}

void sub_259099E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  a29 = &a21;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void sub_25909A2A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25909A4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a11 = &a15;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void *std::vector<ULLoiDO>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULLoiDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25909A5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ULLoiDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_25909A7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a11 = &a15;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_25909ADA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a22, 8);

  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  a22 = v31 - 112;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void sub_25909B39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25909B6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__25(uint64_t a1)
{
}

{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<ULLoiDO>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULLoiDO>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::vector<ULLoiDO>::__init_with_size[abi:ne200100]<ULLoiDO*,ULLoiDO*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULLoiDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25909B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULLoiDO>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULLoiDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULLoiDO>,ULLoiDO*,ULLoiDO*,ULLoiDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 40);
      v8 = *(v6 - 24);
      *(v4 + 32) = *(v6 - 1);
      *v4 = v7;
      *(v4 + 16) = v8;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 40), *v6, *(v6 + 1));
        v4 = v15;
      }

      else
      {
        v9 = *v6;
        *(v4 + 56) = *(v6 + 2);
        *(v4 + 40) = v9;
      }

      v10 = v6 - 40;
      v4 += 64;
      v15 = v4;
      v6 += 4;
    }

    while (v10 + 64 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULLoiDO>,ULLoiDO*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,false>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v127 = a2 - 4;
  v10 = a2 - 6;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 4;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v105 = *(a2 - 2);
        v104 = a2 - 2;
        v106 = bswap64(v105);
        v107 = bswap64(*v11);
        if (v106 == v107 && (v106 = bswap64(v104[1]), v107 = bswap64(v11[1]), v106 == v107))
        {
          v108 = 0;
        }

        else if (v106 < v107)
        {
          v108 = -1;
        }

        else
        {
          v108 = 1;
        }

        if (v108 < 0)
        {
          v147 = *v11;
          *v11 = *v104;
          result = v147;
          *v104 = v147;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,0>(v11, v11 + 2, v11 + 4, a2 - 2, result).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,0>(v11, v11 + 2, v11 + 4, v11 + 6, result).n128_u64[0];
      v100 = *(a2 - 2);
      v99 = a2 - 2;
      v101 = bswap64(v100);
      v102 = bswap64(v11[6]);
      if (v101 == v102 && (v101 = bswap64(v99[1]), v102 = bswap64(v11[7]), v101 == v102))
      {
        v103 = 0;
      }

      else if (v101 < v102)
      {
        v103 = -1;
      }

      else
      {
        v103 = 1;
      }

      if (v103 < 0)
      {
        result = *(v11 + 3);
        *(v11 + 3) = *v99;
        *v99 = result;
        v118 = bswap64(v11[6]);
        v119 = bswap64(v11[4]);
        if (v118 == v119 && (v118 = bswap64(v11[7]), v119 = bswap64(v11[5]), v118 == v119))
        {
          v120 = 0;
        }

        else
        {
          v120 = v118 < v119 ? -1 : 1;
        }

        if (v120 < 0)
        {
          result = *(v11 + 2);
          *(v11 + 2) = *(v11 + 3);
          *(v11 + 3) = result;
          v121 = bswap64(v11[4]);
          v122 = bswap64(v11[2]);
          if (v121 == v122 && (v121 = bswap64(v11[5]), v122 = bswap64(v11[3]), v121 == v122))
          {
            v123 = 0;
          }

          else
          {
            v123 = v121 < v122 ? -1 : 1;
          }

          if (v123 < 0)
          {
            result = *(v11 + 1);
            *(v11 + 1) = *(v11 + 2);
            *(v11 + 2) = result;
            v124 = bswap64(v11[2]);
            v125 = bswap64(*v11);
            if (v124 == v125 && (v124 = bswap64(v11[3]), v125 = bswap64(v11[1]), v124 == v125))
            {
              v126 = 0;
            }

            else
            {
              v126 = v124 < v125 ? -1 : 1;
            }

            if (v126 < 0)
            {
              v150 = *v11;
              *v11 = *(v11 + 1);
              result = v150;
              *(v11 + 1) = v150;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(v11, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(v11, a2);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,boost::uuids::uuid *>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[2 * (v14 >> 1)];
    v16 = v15;
    if (v14 >= 0x81)
    {
      v17 = bswap64(*v15);
      v18 = bswap64(*v11);
      if (v17 == v18 && (v17 = bswap64(v15[1]), v18 = bswap64(v11[1]), v17 == v18))
      {
        v19 = 0;
      }

      else if (v17 < v18)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      v23 = bswap64(*v9);
      v24 = bswap64(*v15);
      if (v23 == v24 && (v23 = bswap64(*(a2 - 1)), v24 = bswap64(v15[1]), v23 == v24))
      {
        v25 = 0;
        if (v19 < 0)
        {
          goto LABEL_25;
        }

LABEL_43:
        if (v25 < 0)
        {
          v131 = *v15;
          *v15 = *v9;
          *v9 = v131;
          v33 = bswap64(*v15);
          v34 = bswap64(*v11);
          if (v33 != v34 || (v33 = bswap64(v15[1]), v34 = bswap64(v11[1]), v33 != v34))
          {
            v39 = v33 < v34 ? -1 : 1;
            if (v39 < 0)
            {
              v135 = *v11;
              *v11 = *v15;
              *v15 = v135;
            }
          }
        }
      }

      else
      {
        if (v23 < v24)
        {
          v25 = -1;
        }

        else
        {
          v25 = 1;
        }

        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

LABEL_25:
        if (v25 < 0)
        {
          v133 = *v11;
          *v11 = *v9;
        }

        else
        {
          v129 = *v11;
          *v11 = *v15;
          *v15 = v129;
          v26 = bswap64(*v9);
          v27 = bswap64(*v15);
          if (v26 == v27)
          {
            v26 = bswap64(*(a2 - 1));
            v27 = bswap64(v15[1]);
            if (v26 == v27)
            {
              goto LABEL_77;
            }
          }

          v37 = v26 < v27 ? -1 : 1;
          if ((v37 & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          v133 = *v15;
          *v15 = *v9;
        }

        *v9 = v133;
      }

LABEL_77:
      v41 = v11 + 2;
      v42 = v15 - 2;
      v43 = bswap64(*(v15 - 2));
      v44 = bswap64(v11[2]);
      if (v43 == v44 && (v43 = bswap64(*(v15 - 1)), v44 = bswap64(v11[3]), v43 == v44))
      {
        v45 = 0;
      }

      else if (v43 < v44)
      {
        v45 = -1;
      }

      else
      {
        v45 = 1;
      }

      v46 = bswap64(*v127);
      v47 = bswap64(*v42);
      if (v46 == v47 && (v46 = bswap64(*(a2 - 3)), v47 = bswap64(*(v15 - 1)), v46 == v47))
      {
        v48 = 0;
        if (v45 < 0)
        {
          goto LABEL_86;
        }

LABEL_94:
        if (v48 < 0)
        {
          v137 = *v42;
          *v42 = *v127;
          *v127 = v137;
          v52 = bswap64(*v42);
          v53 = bswap64(*v41);
          if (v52 != v53 || (v52 = bswap64(*(v15 - 1)), v53 = bswap64(v11[3]), v52 != v53))
          {
            v56 = v52 < v53 ? -1 : 1;
            if (v56 < 0)
            {
              v57 = *v41;
              *v41 = *v42;
              *v42 = v57;
            }
          }
        }
      }

      else
      {
        if (v46 < v47)
        {
          v48 = -1;
        }

        else
        {
          v48 = 1;
        }

        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

LABEL_86:
        if (v48 < 0)
        {
          v55 = *v41;
          *v41 = *v127;
        }

        else
        {
          v49 = *v41;
          *v41 = *v42;
          *v42 = v49;
          v50 = bswap64(*v127);
          v51 = bswap64(*v42);
          if (v50 == v51)
          {
            v50 = bswap64(*(a2 - 3));
            v51 = bswap64(*(v15 - 1));
            if (v50 == v51)
            {
              goto LABEL_112;
            }
          }

          v54 = v50 < v51 ? -1 : 1;
          if ((v54 & 0x80000000) == 0)
          {
            goto LABEL_112;
          }

          v138 = *v42;
          *v42 = *v127;
          v55 = v138;
        }

        *v127 = v55;
      }

LABEL_112:
      v58 = v11 + 4;
      v60 = v15[2];
      v59 = v15 + 2;
      v61 = bswap64(v60);
      v62 = bswap64(v11[4]);
      if (v61 == v62 && (v61 = bswap64(v59[1]), v62 = bswap64(v11[5]), v61 == v62))
      {
        v63 = 0;
      }

      else if (v61 < v62)
      {
        v63 = -1;
      }

      else
      {
        v63 = 1;
      }

      v64 = bswap64(*v10);
      v65 = bswap64(*v59);
      if (v64 == v65 && (v64 = bswap64(*(a2 - 5)), v65 = bswap64(v59[1]), v64 == v65))
      {
        v66 = 0;
        if (v63 < 0)
        {
          goto LABEL_121;
        }

LABEL_129:
        if (v66 < 0)
        {
          v139 = *v59;
          *v59 = *v10;
          *v10 = v139;
          v70 = bswap64(*v59);
          v71 = bswap64(*v58);
          if (v70 != v71 || (v70 = bswap64(v59[1]), v71 = bswap64(v11[5]), v70 != v71))
          {
            v74 = v70 < v71 ? -1 : 1;
            if (v74 < 0)
            {
              v75 = *v58;
              *v58 = *v59;
              *v59 = v75;
            }
          }
        }
      }

      else
      {
        if (v64 < v65)
        {
          v66 = -1;
        }

        else
        {
          v66 = 1;
        }

        if ((v63 & 0x80000000) == 0)
        {
          goto LABEL_129;
        }

LABEL_121:
        if (v66 < 0)
        {
          v73 = *v58;
          *v58 = *v10;
        }

        else
        {
          v67 = *v58;
          *v58 = *v59;
          *v59 = v67;
          v68 = bswap64(*v10);
          v69 = bswap64(*v59);
          if (v68 == v69)
          {
            v68 = bswap64(*(a2 - 5));
            v69 = bswap64(v59[1]);
            if (v68 == v69)
            {
              goto LABEL_145;
            }
          }

          v72 = v68 < v69 ? -1 : 1;
          if ((v72 & 0x80000000) == 0)
          {
            goto LABEL_145;
          }

          v140 = *v59;
          *v59 = *v10;
          v73 = v140;
        }

        *v10 = v73;
      }

LABEL_145:
      v76 = bswap64(*v16);
      v77 = bswap64(*v42);
      if (v76 == v77 && (v76 = bswap64(v16[1]), v77 = bswap64(v42[1]), v76 == v77))
      {
        v78 = 0;
      }

      else if (v76 < v77)
      {
        v78 = -1;
      }

      else
      {
        v78 = 1;
      }

      v79 = bswap64(*v59);
      v80 = bswap64(*v16);
      if (v79 == v80 && (v79 = bswap64(v59[1]), v80 = bswap64(v16[1]), v79 == v80))
      {
        v81 = 0;
        if (v78 < 0)
        {
          goto LABEL_154;
        }

LABEL_162:
        if (v81 < 0)
        {
          v142 = *v16;
          *v16 = *v59;
          *v59 = v142;
          v84 = bswap64(*v16);
          v85 = bswap64(*v42);
          if (v84 != v85 || (v84 = bswap64(v16[1]), v85 = bswap64(v42[1]), v84 != v85))
          {
            v87 = v84 < v85 ? -1 : 1;
            if (v87 < 0)
            {
              v144 = *v42;
              *v42 = *v16;
              *v16 = v144;
            }
          }
        }
      }

      else
      {
        if (v79 < v80)
        {
          v81 = -1;
        }

        else
        {
          v81 = 1;
        }

        if ((v78 & 0x80000000) == 0)
        {
          goto LABEL_162;
        }

LABEL_154:
        if (v81 < 0)
        {
          v143 = *v42;
          *v42 = *v59;
        }

        else
        {
          v141 = *v42;
          *v42 = *v16;
          *v16 = v141;
          v82 = bswap64(*v59);
          v83 = bswap64(*v16);
          if (v82 == v83)
          {
            v82 = bswap64(v59[1]);
            v83 = bswap64(v16[1]);
            if (v82 == v83)
            {
              goto LABEL_178;
            }
          }

          v86 = v82 < v83 ? -1 : 1;
          if ((v86 & 0x80000000) == 0)
          {
            goto LABEL_178;
          }

          v143 = *v16;
          *v16 = *v59;
        }

        *v59 = v143;
      }

LABEL_178:
      v145 = *v11;
      *v11 = *v16;
      *v16 = v145;
      goto LABEL_179;
    }

    v20 = bswap64(*v11);
    v21 = bswap64(*v16);
    if (v20 == v21 && (v20 = bswap64(v11[1]), v21 = bswap64(v16[1]), v20 == v21))
    {
      v22 = 0;
    }

    else if (v20 < v21)
    {
      v22 = -1;
    }

    else
    {
      v22 = 1;
    }

    v28 = bswap64(*v9);
    v29 = bswap64(*v11);
    if (v28 == v29 && (v28 = bswap64(*(a2 - 1)), v29 = bswap64(v11[1]), v28 == v29))
    {
      v30 = 0;
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v28 < v29)
      {
        v30 = -1;
      }

      else
      {
        v30 = 1;
      }

      if ((v22 & 0x80000000) == 0)
      {
LABEL_51:
        if (v30 < 0)
        {
          v132 = *v11;
          *v11 = *v9;
          *v9 = v132;
          v35 = bswap64(*v11);
          v36 = bswap64(*v16);
          if (v35 != v36 || (v35 = bswap64(v11[1]), v36 = bswap64(v16[1]), v35 != v36))
          {
            v40 = v35 < v36 ? -1 : 1;
            if (v40 < 0)
            {
              v136 = *v16;
              *v16 = *v11;
              *v11 = v136;
            }
          }
        }

        goto LABEL_179;
      }
    }

    if (v30 < 0)
    {
      v134 = *v16;
      *v16 = *v9;
    }

    else
    {
      v130 = *v16;
      *v16 = *v11;
      *v11 = v130;
      v31 = bswap64(*v9);
      v32 = bswap64(*v11);
      if (v31 == v32)
      {
        v31 = bswap64(*(a2 - 1));
        v32 = bswap64(v11[1]);
        if (v31 == v32)
        {
          goto LABEL_179;
        }
      }

      v38 = v31 < v32 ? -1 : 1;
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_179;
      }

      v134 = *v11;
      *v11 = *v9;
    }

    *v9 = v134;
LABEL_179:
    if ((a5 & 1) == 0)
    {
      v88 = bswap64(*(v11 - 2));
      v89 = bswap64(*v11);
      if (v88 == v89 && (v88 = bswap64(*(v11 - 1)), v89 = bswap64(v11[1]), v88 == v89))
      {
        v90 = 0;
      }

      else
      {
        v90 = v88 < v89 ? -1 : 1;
      }

      if ((v90 & 0x80000000) == 0)
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::uuids::uuid *,std::__less<void,void> &>(v11, a2);
        goto LABEL_192;
      }
    }

    v91 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::uuids::uuid *,std::__less<void,void> &>(v11, a2);
    if ((v92 & 1) == 0)
    {
      goto LABEL_190;
    }

    v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(v11, v91, result);
    v11 = v91 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(v91 + 2, a2, v94))
    {
      a4 = -v13;
      a2 = v91;
      if (v93)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v93)
    {
LABEL_190:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,false>(a1, v91, a3, -v13, a5 & 1, result);
      v11 = v91 + 2;
LABEL_192:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v95 = v11 + 2;
  v96 = bswap64(v11[2]);
  v97 = bswap64(*v11);
  if (v96 == v97 && (v96 = bswap64(v11[3]), v97 = bswap64(v11[1]), v96 == v97))
  {
    v98 = 0;
  }

  else if (v96 < v97)
  {
    v98 = -1;
  }

  else
  {
    v98 = 1;
  }

  v109 = bswap64(*v9);
  v110 = bswap64(*v95);
  if (v109 == v110 && (v109 = bswap64(*(a2 - 1)), v110 = bswap64(v11[3]), v109 == v110))
  {
    v111 = 0;
    if (v98 < 0)
    {
      goto LABEL_221;
    }
  }

  else
  {
    if (v109 < v110)
    {
      v111 = -1;
    }

    else
    {
      v111 = 1;
    }

    if (v98 < 0)
    {
LABEL_221:
      if (v111 < 0)
      {
        v149 = *v11;
        *v11 = *v9;
        result = v149;
      }

      else
      {
        v146 = *v11;
        *v11 = *v95;
        result = v146;
        *v95 = v146;
        v112 = bswap64(*v9);
        v113 = bswap64(v11[2]);
        if (v112 == v113 && (v112 = bswap64(*(a2 - 1)), v113 = bswap64(v11[3]), v112 == v113))
        {
          v114 = 0;
        }

        else if (v112 < v113)
        {
          v114 = -1;
        }

        else
        {
          v114 = 1;
        }

        if ((v114 & 0x80000000) == 0)
        {
          return result;
        }

        result = *v95;
        *v95 = *v9;
      }

      *v9 = result;
      return result;
    }
  }

  if (v111 < 0)
  {
    result = *v95;
    *v95 = *v9;
    *v9 = result;
    v115 = bswap64(v11[2]);
    v116 = bswap64(*v11);
    if (v115 == v116 && (v115 = bswap64(v11[3]), v116 = bswap64(v11[1]), v115 == v116))
    {
      v117 = 0;
    }

    else
    {
      v117 = v115 < v116 ? -1 : 1;
    }

    if (v117 < 0)
    {
      v148 = *v11;
      *v11 = *v95;
      result = v148;
      *v95 = v148;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, __n128 result)
{
  v5 = bswap64(*a2);
  v6 = bswap64(*a1);
  if (v5 == v6 && (v5 = bswap64(a2[1]), v6 = bswap64(a1[1]), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = bswap64(*a3);
  v9 = bswap64(*a2);
  if (v8 != v9 || (v8 = bswap64(a3[1]), v9 = bswap64(a2[1]), v8 != v9))
  {
    if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    if (v10 < 0)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v13 = bswap64(*a2);
      v14 = bswap64(*a1);
      if (v13 != v14 || (v13 = bswap64(a2[1]), v14 = bswap64(a1[1]), v13 != v14))
      {
        v16 = v13 < v14 ? -1 : 1;
        if (v16 < 0)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }

    goto LABEL_34;
  }

  v10 = 0;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v10 < 0)
  {
    result = *a1;
    *a1 = *a3;
    goto LABEL_33;
  }

  result = *a1;
  *a1 = *a2;
  *a2 = result;
  v11 = bswap64(*a3);
  v12 = bswap64(*a2);
  if (v11 != v12 || (v11 = bswap64(a3[1]), v12 = bswap64(a2[1]), v11 != v12))
  {
    v15 = v11 < v12 ? -1 : 1;
    if (v15 < 0)
    {
      result = *a2;
      *a2 = *a3;
LABEL_33:
      *a3 = result;
    }
  }

LABEL_34:
  v17 = bswap64(*a4);
  v18 = bswap64(*a3);
  if (v17 != v18 || (v17 = bswap64(a4[1]), v18 = bswap64(a3[1]), v17 != v18))
  {
    v19 = v17 < v18 ? -1 : 1;
    if (v19 < 0)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      v20 = bswap64(*a3);
      v21 = bswap64(*a2);
      if (v20 != v21 || (v20 = bswap64(a3[1]), v21 = bswap64(a2[1]), v20 != v21))
      {
        v22 = v20 < v21 ? -1 : 1;
        if (v22 < 0)
        {
          result = *a2;
          *a2 = *a3;
          *a3 = result;
          v23 = bswap64(*a2);
          v24 = bswap64(*a1);
          if (v23 != v24 || (v23 = bswap64(a2[1]), v24 = bswap64(a1[1]), v23 != v24))
          {
            if (v23 < v24)
            {
              v25 = -1;
            }

            else
            {
              v25 = 1;
            }

            if (v25 < 0)
            {
              result = *a1;
              *a1 = *a2;
              *a2 = result;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = bswap64(v4[2]);
        v7 = bswap64(*v4);
        if (v6 != v7 || (v6 = bswap64(v5[1]), v7 = bswap64(v4[1]), v6 != v7))
        {
          v8 = v6 < v7 ? -1 : 1;
          if (v8 < 0)
          {
            v15 = *v5;
            v9 = v3;
            while (1)
            {
              v10 = result + v9;
              *(result + v9 + 16) = *(result + v9);
              if (!v9)
              {
                break;
              }

              v11 = bswap64(v15);
              v12 = bswap64(*(v10 - 2));
              if (v11 == v12 && (v11 = bswap64(*(&v15 + 1)), v12 = bswap64(*(v10 - 1)), v11 == v12))
              {
                v13 = 0;
              }

              else if (v11 < v12)
              {
                v13 = -1;
              }

              else
              {
                v13 = 1;
              }

              v9 -= 16;
              if ((v13 & 0x80000000) == 0)
              {
                v14 = (result + v9 + 16);
                goto LABEL_21;
              }
            }

            v14 = result;
LABEL_21:
            *v14 = v15;
          }
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result - 2;
      do
      {
        v4 = v2;
        v5 = bswap64(*v2);
        v6 = bswap64(*result);
        if (v5 != v6 || (v5 = bswap64(v4[1]), v6 = bswap64(result[1]), v5 != v6))
        {
          v7 = v5 < v6 ? -1 : 1;
          if (v7 < 0)
          {
            v12 = *v4;
            v8 = v3;
            do
            {
              *(v8 + 2) = *(v8 + 1);
              v9 = bswap64(v12);
              v10 = bswap64(*v8);
              if (v9 == v10 && (v9 = bswap64(*(&v12 + 1)), v10 = bswap64(v8[1]), v9 == v10))
              {
                v11 = 0;
              }

              else if (v9 < v10)
              {
                v11 = -1;
              }

              else
              {
                v11 = 1;
              }

              v8 -= 2;
            }

            while (v11 < 0);
            *(v8 + 2) = v12;
          }
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::uuids::uuid *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v32 = *a1;
  v2 = bswap64(*a1);
  v3 = bswap64(*(a2 - 16));
  if (v2 != v3 || (v2 = bswap64(*(&v32 + 1)), v3 = bswap64(*(a2 - 8)), v2 != v3))
  {
    v10 = v2 < v3 ? -1 : 1;
    if (v10 < 0)
    {
      v4 = bswap64(v32);
      v5 = a1;
      while (1)
      {
        v6 = v5[2];
        v5 += 2;
        v7 = bswap64(v6);
        if (v4 != v7)
        {
          break;
        }

        v8 = bswap64(*(&v32 + 1));
        v7 = bswap64(v5[1]);
        if (v8 != v7)
        {
          goto LABEL_9;
        }

        v9 = 0;
LABEL_12:
        if (v9 < 0)
        {
          goto LABEL_27;
        }
      }

      v8 = v4;
LABEL_9:
      if (v8 < v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_12;
    }
  }

  v11 = a1 + 2;
  do
  {
    v5 = v11;
    if (v11 >= a2)
    {
      break;
    }

    v12 = bswap64(v32);
    v13 = bswap64(*v5);
    if (v12 == v13 && (v12 = bswap64(*(&v32 + 1)), v13 = bswap64(v5[1]), v12 == v13))
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 < v13 ? -1 : 1;
    }

    v11 = v5 + 2;
  }

  while ((v14 & 0x80000000) == 0);
LABEL_27:
  if (v5 < a2)
  {
    v15 = bswap64(v32);
    do
    {
      v16 = *(a2 - 16);
      a2 -= 16;
      v17 = bswap64(v16);
      if (v15 == v17)
      {
        v18 = bswap64(*(&v32 + 1));
        v17 = bswap64(*(a2 + 8));
        if (v18 == v17)
        {
          break;
        }
      }

      else
      {
        v18 = v15;
      }

      if (v18 < v17)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19 < 0);
  }

  if (v5 >= a2)
  {
    goto LABEL_57;
  }

  do
  {
    v33 = *v5;
    *v5 = *a2;
    *a2 = v33;
    v20 = bswap64(v32);
    do
    {
      while (1)
      {
        v21 = v5[2];
        v5 += 2;
        v22 = bswap64(v21);
        if (v20 != v22)
        {
          break;
        }

        v23 = bswap64(*(&v32 + 1));
        v22 = bswap64(v5[1]);
        if (v23 != v22)
        {
          goto LABEL_43;
        }
      }

      v23 = v20;
LABEL_43:
      if (v23 < v22)
      {
        v24 = -1;
      }

      else
      {
        v24 = 1;
      }
    }

    while ((v24 & 0x80000000) == 0);
    v25 = bswap64(v32);
    do
    {
      v26 = *(a2 - 16);
      a2 -= 16;
      v27 = bswap64(v26);
      if (v25 == v27)
      {
        v28 = bswap64(*(&v32 + 1));
        v27 = bswap64(*(a2 + 8));
        if (v28 == v27)
        {
          break;
        }
      }

      else
      {
        v28 = v25;
      }

      if (v28 < v27)
      {
        v29 = -1;
      }

      else
      {
        v29 = 1;
      }
    }

    while (v29 < 0);
  }

  while (v5 < a2);
LABEL_57:
  v30 = v5 - 2;
  if (v5 - 2 != a1)
  {
    *a1 = *v30;
  }

  *v30 = v32;
  return v5;
}

unint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::uuids::uuid *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v32 = *a1;
  v3 = bswap64(*a1);
  do
  {
    v4 = bswap64(a1[v2 + 2]);
    if (v4 == v3)
    {
      v4 = bswap64(a1[v2 + 3]);
      v5 = bswap64(*(&v32 + 1));
      if (v4 == v5)
      {
        v6 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v5 = v3;
    }

    if (v4 < v5)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

LABEL_9:
    v2 += 2;
  }

  while (v6 < 0);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 != 2)
  {
    v9 = bswap64(v32);
    while (1)
    {
      v10 = *(a2 - 16);
      a2 -= 16;
      v11 = bswap64(v10);
      if (v11 != v9)
      {
        break;
      }

      v11 = bswap64(*(a2 + 8));
      v12 = bswap64(*(&v32 + 1));
      if (v11 != v12)
      {
LABEL_16:
        if (v11 < v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (v13 < 0)
        {
          goto LABEL_29;
        }
      }
    }

    v12 = v9;
    goto LABEL_16;
  }

  do
  {
    if (v7 >= a2)
    {
      break;
    }

    v14 = *(a2 - 16);
    a2 -= 16;
    v15 = bswap64(v14);
    v16 = bswap64(v32);
    if (v15 == v16 && (v15 = bswap64(*(a2 + 8)), v16 = bswap64(*(&v32 + 1)), v15 == v16))
    {
      v17 = 0;
    }

    else
    {
      v17 = v15 < v16 ? -1 : 1;
    }
  }

  while ((v17 & 0x80000000) == 0);
LABEL_29:
  if (v7 >= a2)
  {
    goto LABEL_51;
  }

  v18 = v7;
  v19 = a2;
  while (2)
  {
    v20 = *v18;
    *v18 = *v19;
    *v19 = v20;
    v21 = bswap64(v32);
    do
    {
      v22 = v18[2];
      v18 += 2;
      v23 = bswap64(v22);
      if (v23 == v21)
      {
        v23 = bswap64(v18[1]);
        v24 = bswap64(*(&v32 + 1));
        if (v23 == v24)
        {
          break;
        }
      }

      else
      {
        v24 = v21;
      }

      if (v23 < v24)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }

    while (v25 < 0);
    v26 = bswap64(v32);
    do
    {
      while (2)
      {
        v27 = *(v19 - 16);
        v19 -= 16;
        v28 = bswap64(v27);
        if (v28 == v26)
        {
          v28 = bswap64(*(v19 + 8));
          v29 = bswap64(*(&v32 + 1));
          if (v28 == v29)
          {
            continue;
          }
        }

        else
        {
          v29 = v26;
        }

        break;
      }

      if (v28 < v29)
      {
        v30 = -1;
      }

      else
      {
        v30 = 1;
      }
    }

    while ((v30 & 0x80000000) == 0);
    if (v18 < v19)
    {
      continue;
    }

    break;
  }

  v8 = v18 - 2;
LABEL_51:
  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v32;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(unint64_t *a1, unint64_t *a2, __n128 a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        if (v5 == 5)
        {
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
          v10 = *(a2 - 2);
          v9 = a2 - 2;
          v11 = bswap64(v10);
          v12 = bswap64(a1[6]);
          if (v11 != v12 || (v11 = bswap64(v9[1]), v12 = bswap64(a1[7]), v11 != v12))
          {
            v47 = v11 < v12 ? -1 : 1;
            if (v47 < 0)
            {
              v48 = *(a1 + 3);
              *(a1 + 3) = *v9;
              *v9 = v48;
              v49 = bswap64(a1[6]);
              v50 = bswap64(a1[4]);
              if (v49 == v50 && (v49 = bswap64(a1[7]), v50 = bswap64(a1[5]), v49 == v50))
              {
                v51 = 0;
              }

              else
              {
                v51 = v49 < v50 ? -1 : 1;
              }

              if (v51 < 0)
              {
                v52 = *(a1 + 2);
                *(a1 + 2) = *(a1 + 3);
                *(a1 + 3) = v52;
                v53 = bswap64(a1[4]);
                v54 = bswap64(a1[2]);
                if (v53 == v54 && (v53 = bswap64(a1[5]), v54 = bswap64(a1[3]), v53 == v54))
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v53 < v54 ? -1 : 1;
                }

                if (v55 < 0)
                {
                  v73 = *(a1 + 1);
                  *(a1 + 1) = *(a1 + 2);
                  *(a1 + 2) = v73;
                  v74 = bswap64(a1[2]);
                  v75 = bswap64(*a1);
                  if (v74 == v75 && (v74 = bswap64(a1[3]), v75 = bswap64(a1[1]), v74 == v75))
                  {
                    v76 = 0;
                  }

                  else
                  {
                    v76 = v74 < v75 ? -1 : 1;
                  }

                  if (v76 < 0)
                  {
                    v77 = *a1;
                    *a1 = *(a1 + 1);
                    *(a1 + 1) = v77;
                  }
                }
              }
            }
          }

          return 1;
        }

        goto LABEL_16;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    }

    v13 = a1 + 2;
    v14 = a2 - 2;
    v15 = bswap64(a1[2]);
    v16 = bswap64(*a1);
    if (v15 == v16 && (v15 = bswap64(a1[3]), v16 = bswap64(a1[1]), v15 == v16))
    {
      v17 = 0;
    }

    else if (v15 < v16)
    {
      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    v23 = bswap64(*v14);
    v24 = bswap64(*v13);
    if (v23 == v24 && (v23 = bswap64(*(a2 - 1)), v24 = bswap64(a1[3]), v23 == v24))
    {
      v25 = 0;
      if (v17 < 0)
      {
LABEL_26:
        if (v25 < 0)
        {
          v56 = *a1;
          *a1 = *v14;
        }

        else
        {
          v26 = *a1;
          *a1 = *v13;
          *v13 = v26;
          v27 = bswap64(*v14);
          v28 = bswap64(a1[2]);
          if (v27 == v28 && (v27 = bswap64(*(a2 - 1)), v28 = bswap64(a1[3]), v27 == v28))
          {
            v29 = 0;
          }

          else if (v27 < v28)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          if ((v29 & 0x80000000) == 0)
          {
            return 1;
          }

          v56 = *v13;
          *v13 = *v14;
        }

        *v14 = v56;
        return 1;
      }
    }

    else
    {
      if (v23 < v24)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      if (v17 < 0)
      {
        goto LABEL_26;
      }
    }

    if (v25 < 0)
    {
      v30 = *v13;
      *v13 = *v14;
      *v14 = v30;
      v31 = bswap64(a1[2]);
      v32 = bswap64(*a1);
      if (v31 == v32 && (v31 = bswap64(a1[3]), v32 = bswap64(a1[1]), v31 == v32))
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 < v32 ? -1 : 1;
      }

      if (v33 < 0)
      {
        v57 = *a1;
        *a1 = *v13;
        *v13 = v57;
      }
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2 - 2;
    v7 = bswap64(*(a2 - 2));
    v8 = bswap64(*a1);
    if (v7 != v8 || (v7 = bswap64(*(a2 - 1)), v8 = bswap64(a1[1]), v7 != v8))
    {
      if (v7 < v8)
      {
        v45 = -1;
      }

      else
      {
        v45 = 1;
      }

      if (v45 < 0)
      {
        v46 = *a1;
        *a1 = *v6;
        *v6 = v46;
      }
    }

    return 1;
  }

LABEL_16:
  v18 = a1 + 4;
  v19 = a1 + 2;
  v20 = bswap64(a1[2]);
  v21 = bswap64(*a1);
  if (v20 == v21 && (v20 = bswap64(a1[3]), v21 = bswap64(a1[1]), v20 == v21))
  {
    v22 = 0;
  }

  else if (v20 < v21)
  {
    v22 = -1;
  }

  else
  {
    v22 = 1;
  }

  v34 = bswap64(*v18);
  v35 = bswap64(*v19);
  if (v34 != v35 || (v34 = bswap64(a1[5]), v35 = bswap64(a1[3]), v34 != v35))
  {
    if (v34 < v35)
    {
      v36 = -1;
    }

    else
    {
      v36 = 1;
    }

    if (v22 < 0)
    {
      goto LABEL_44;
    }

LABEL_52:
    if (v36 < 0)
    {
      v41 = *v19;
      *v19 = *v18;
      *v18 = v41;
      v42 = bswap64(a1[2]);
      v43 = bswap64(*a1);
      if (v42 == v43 && (v42 = bswap64(a1[3]), v43 = bswap64(a1[1]), v42 == v43))
      {
        v44 = 0;
      }

      else
      {
        v44 = v42 < v43 ? -1 : 1;
      }

      if (v44 < 0)
      {
        v59 = *a1;
        *a1 = *v19;
        *v19 = v59;
      }
    }

    goto LABEL_99;
  }

  v36 = 0;
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_44:
  if (v36 < 0)
  {
    v58 = *a1;
    *a1 = *v18;
    goto LABEL_98;
  }

  v37 = *a1;
  *a1 = *v19;
  *v19 = v37;
  v38 = bswap64(a1[4]);
  v39 = bswap64(a1[2]);
  if (v38 == v39 && (v38 = bswap64(a1[5]), v39 = bswap64(a1[3]), v38 == v39))
  {
    v40 = 0;
  }

  else if (v38 < v39)
  {
    v40 = -1;
  }

  else
  {
    v40 = 1;
  }

  if (v40 < 0)
  {
    v58 = *v19;
    *v19 = *v18;
LABEL_98:
    *v18 = v58;
  }

LABEL_99:
  v60 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v61 = 0;
  v62 = 0;
  while (1)
  {
    v63 = bswap64(*v60);
    v64 = bswap64(*v18);
    if (v63 != v64 || (v63 = bswap64(v60[1]), v64 = bswap64(v18[1]), v63 != v64))
    {
      v65 = v63 < v64 ? -1 : 1;
      if (v65 < 0)
      {
        v78 = *v60;
        v66 = v61;
        while (1)
        {
          v67 = a1 + v66;
          *(a1 + v66 + 48) = *(a1 + v66 + 32);
          if (v66 == -32)
          {
            break;
          }

          v68 = bswap64(v78);
          v69 = bswap64(*(v67 + 2));
          if (v68 == v69 && (v68 = bswap64(*(&v78 + 1)), v69 = bswap64(*(v67 + 3)), v68 == v69))
          {
            v70 = 0;
          }

          else if (v68 < v69)
          {
            v70 = -1;
          }

          else
          {
            v70 = 1;
          }

          v66 -= 16;
          if ((v70 & 0x80000000) == 0)
          {
            v71 = (a1 + v66 + 48);
            goto LABEL_118;
          }
        }

        v71 = a1;
LABEL_118:
        *v71 = v78;
        if (++v62 == 8)
        {
          return v60 + 2 == a2;
        }
      }
    }

    v18 = v60;
    v61 += 16;
    v60 += 2;
    if (v60 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,boost::uuids::uuid *>(char *a1, char *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = bswap64(*v12);
        v14 = bswap64(*a1);
        if (v13 != v14 || (v13 = bswap64(v12[1]), v14 = bswap64(*(a1 + 1)), v13 != v14))
        {
          v15 = v13 < v14 ? -1 : 1;
          if (v15 < 0)
          {
            v16 = *v12;
            *v12 = *a1;
            *a1 = v16;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, a4, v8, a1);
          }
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = (a2 - 16);
      do
      {
        v21 = *a1;
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, a4, v8);
        if (v17 == v18)
        {
          *v18 = v21;
        }

        else
        {
          *v18 = *v17;
          *v17 = v21;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 4);
        }

        v17 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}